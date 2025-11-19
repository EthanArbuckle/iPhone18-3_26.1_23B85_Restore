uint64_t sub_23BB57E34()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 440);

  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23BB57ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_23BBDD888();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  sub_23BBDD308();
  v4[16] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](sub_23BB57FC8, v7, v6);
}

uint64_t sub_23BB57FC8()
{
  OUTLINED_FUNCTION_4_11();
  sub_23BBDDC18();
  sub_23BBDDB18();
  OUTLINED_FUNCTION_13_25(&unk_23BC00820);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_23BB58090;
  v3 = OUTLINED_FUNCTION_10_23();

  return v5(v3);
}

uint64_t sub_23BB58090()
{
  OUTLINED_FUNCTION_41_0();
  v2 = *v1;
  OUTLINED_FUNCTION_7_38();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  v7 = *(v2 + 144);
  v8 = *(v2 + 136);
  if (v0)
  {
    v9 = sub_23BB58450;
  }

  else
  {
    v9 = sub_23BB58218;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

void sub_23BB58218()
{
  v3 = *(v1 + 96);

  sub_23BB592CC();
  OUTLINED_FUNCTION_140();
  v4 = OUTLINED_FUNCTION_12_3();
  v5 = type metadata accessor for SubscriptionEntitlementValidator(v4);
  v6 = v3 + v5[8];
  v7 = *v6;
  v8 = *(v6 + 16);
  v9 = *(v6 + 8);
  *(v1 + 16) = *v6;
  *(v1 + 24) = v9;
  *(v1 + 32) = v8;
  *(v1 + 80) = v0;
  *(v1 + 88) = 0;
  sub_23BB59498(v7, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2040);
  sub_23BBDBF78();
  sub_23BB586E0(*(v1 + 16), *(v1 + 24));

  sub_23BB52F1C();
  if (qword_27E197818 != -1)
  {
    OUTLINED_FUNCTION_2_43();
  }

  v10 = *(v1 + 96);
  v11 = type metadata accessor for SKLogger();
  v12 = __swift_project_value_buffer(v11, qword_27E1A1F60);
  v13 = (v10 + v5[12]);
  v14 = *v13;
  v15 = *(v13 + 2);
  *(v1 + 40) = v14;
  *(v1 + 56) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628);
  sub_23BBDBF68();
  sub_23BBDD598();
  OUTLINED_FUNCTION_46_3();
  sub_23BBD9988();
  OUTLINED_FUNCTION_44_5();
  if (OUTLINED_FUNCTION_48_7())
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_8_38(4.8752e-34);
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_45_4(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29[0], v29[1], v29[2]);
    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_12_29();
    *(v12 + 14) = sub_23BA5AB90(0xD00000000000002ALL, v2 | 0x8000000000000000, v29);
    OUTLINED_FUNCTION_11_24(&dword_23B970000, v24, v25, "%{public}s%{public}s");
    OUTLINED_FUNCTION_38_5();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_32_7();
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_56_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BB58450()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BB584B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_23BBDC758();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB585B4, 0, 0);
}

uint64_t sub_23BB585B4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[9];
  sub_23BBDCAE8();
  sub_23BBDC798();
  sub_23B9846E8(v1, &qword_27E19A5D8);
  v2 = sub_23BBDC738();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  if (v4)
  {
    if (v2 == v0[3] && v4 == v0[4])
    {
      v8 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_17_0();
      v8 = sub_23BBDDA88();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8 & 1);
}

void sub_23BB586E0(id a1, char a2)
{
  if (!a2)
  {
  }
}

void sub_23BB586F0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_23BB58750()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_14_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;

  return sub_23BB54150();
}

uint64_t sub_23BB58808()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BB5883C()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23B9F3414;
  v3 = OUTLINED_FUNCTION_10_23();

  return v4(v3);
}

uint64_t sub_23BB588E0()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_10_23();

  return v4(v3);
}

uint64_t objectdestroyTm_12()
{
  type metadata accessor for SubscriptionEntitlementValidator(0);
  OUTLINED_FUNCTION_19_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v3 + v4);
  v6 = OUTLINED_FUNCTION_17_14(v0[6]);
  sub_23B9CEC50(v6, v7);
  v8 = v3 + v0[7];

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8) + 32);
  v10 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v11 = OUTLINED_FUNCTION_156();
  if (!__swift_getEnumTagSinglePayload(v11, v12, v10))
  {
    type metadata accessor for Subscription();
    v13 = OUTLINED_FUNCTION_156();
    if (!__swift_getEnumTagSinglePayload(v13, v14, v15))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v16 + 8))(v9);
    }
  }

  v17 = OUTLINED_FUNCTION_18_20(v0[8]);
  sub_23BB586E0(v17, v18);

  OUTLINED_FUNCTION_42_6();

  v19 = OUTLINED_FUNCTION_18_20(v0[10]);
  sub_23B9CEC50(v19, v20);

  v21 = (v3 + v0[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE0);
  OUTLINED_FUNCTION_53_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for Subscription();
    v23 = OUTLINED_FUNCTION_156();
    if (!__swift_getEnumTagSinglePayload(v23, v24, v25))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v26 + 8))(v21);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88);

  v27 = OUTLINED_FUNCTION_17_14(v0[13]);
  sub_23B97B450(v27, v28);

  return swift_deallocObject();
}

uint64_t sub_23BB58C18()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_14_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;

  return sub_23BB57354();
}

uint64_t sub_23BB58D28(uint64_t *a1)
{
  OUTLINED_FUNCTION_14_26();

  return sub_23BB558CC(a1);
}

id sub_23BB58D8C(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return result;
  }

  return result;
}

uint64_t sub_23BB58DEC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB58E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23BBDD878();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23BB58F44, 0, 0);
}

uint64_t sub_23BB58F44()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[9];
  v2 = sub_23BBDD888();
  v3 = sub_23BB59B4C(&qword_27E1A2050, MEMORY[0x277D85928]);
  sub_23BBDDAF8();
  sub_23BB59B4C(&qword_27E1A2058, MEMORY[0x277D858F8]);
  sub_23BBDD898();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_70();
  v5(v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_23BB590CC;
  v7 = v0[11];

  return MEMORY[0x2822008C8](v7, v0 + 2, v2, v3);
}

uint64_t sub_23BB590CC()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_38();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_31_1();
  v6(v9);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23BB59268, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_1_16();

    return v10();
  }
}

uint64_t sub_23BB59268()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

unint64_t sub_23BB592CC()
{
  result = qword_27E1A2048;
  if (!qword_27E1A2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2048);
  }

  return result;
}

uint64_t sub_23BB59320(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB59378(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB593CC()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BB59400()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_18(v2);
  *v3 = v4;
  v3[1] = sub_23B9F36B4;
  v5 = OUTLINED_FUNCTION_10_23();

  return sub_23BB584B4(v5, v6, v1);
}

id sub_23BB59498(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_23BB594A8()
{
  type metadata accessor for SubscriptionEntitlementValidator(0);
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0[5];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = OUTLINED_FUNCTION_17_14(v0[6]);
  sub_23B9CEC50(v6, v7);
  v8 = v1 + v3 + v0[7];

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8) + 32);
  v10 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v11 = OUTLINED_FUNCTION_156();
  if (!__swift_getEnumTagSinglePayload(v11, v12, v10))
  {
    type metadata accessor for Subscription();
    v13 = OUTLINED_FUNCTION_156();
    if (!__swift_getEnumTagSinglePayload(v13, v14, v15))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v16 + 8))(v9);
    }
  }

  v17 = OUTLINED_FUNCTION_18_20(v0[8]);
  sub_23BB586E0(v17, v18);

  OUTLINED_FUNCTION_42_6();

  v19 = OUTLINED_FUNCTION_18_20(v0[10]);
  sub_23B9CEC50(v19, v20);

  v21 = (v1 + v3 + v0[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE0);
  OUTLINED_FUNCTION_53_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for Subscription();
    v23 = OUTLINED_FUNCTION_156();
    if (!__swift_getEnumTagSinglePayload(v23, v24, v25))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v26 + 8))(v21);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88);

  v27 = OUTLINED_FUNCTION_17_14(v0[13]);
  sub_23B97B450(v27, v28);

  return swift_deallocObject();
}

uint64_t sub_23BB59744()
{
  OUTLINED_FUNCTION_41_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_26();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_18(v7);
  *v8 = v9;
  v8[1] = sub_23B9F3414;

  return sub_23BB57ED4(v2, v5, v6, v0 + v4);
}

unint64_t sub_23BB59834()
{
  result = qword_27E1A2060;
  if (!qword_27E1A2060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2008);
    sub_23BB598F0();
    sub_23BB59B4C(&qword_27E197890, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2060);
  }

  return result;
}

unint64_t sub_23BB598F0()
{
  result = qword_27E1A2068;
  if (!qword_27E1A2068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1FF8);
    sub_23BB599AC();
    sub_23BB59B4C(&qword_27E1991C8, _s16TaskViewModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2068);
  }

  return result;
}

unint64_t sub_23BB599AC()
{
  result = qword_27E1A2070;
  if (!qword_27E1A2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1FF0);
    sub_23BB59A68();
    sub_23BB59B4C(&qword_27E1A0968, _s16TaskViewModifierVMa_0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2070);
  }

  return result;
}

unint64_t sub_23BB59A68()
{
  result = qword_27E1A2078;
  if (!qword_27E1A2078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1FE8);
    sub_23B97B518(qword_27E1A2080, &qword_27E1A2000);
    sub_23B97B518(&qword_27E19E6C0, &qword_27E19E608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2078);
  }

  return result;
}

uint64_t sub_23BB59B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_43()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_38(float a1)
{
  *v1 = a1;

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_11_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_23_13()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_27_9()
{
}

void OUTLINED_FUNCTION_28_9()
{

  sub_23BBCC1C0(v0, v2, v1);
}

void OUTLINED_FUNCTION_32_7()
{

  JUMPOUT(0x23EEB6DC0);
}

void OUTLINED_FUNCTION_33_7(float a1)
{
  *v1 = a1;

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_6()
{
}

void OUTLINED_FUNCTION_42_6()
{
  v3 = v1 + *(v0 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  sub_23BB586F0(v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return sub_23BBDBF58();
}

uint64_t OUTLINED_FUNCTION_44_5()
{
}

unint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_23BA5AB90(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_46_3()
{
}

uint64_t OUTLINED_FUNCTION_47_5()
{
}

BOOL OUTLINED_FUNCTION_48_7()
{

  return os_log_type_enabled(v0, v1);
}

void sub_23BB59F68()
{
  sub_23BB5ADF4(319, &qword_27E19B388, type metadata accessor for Subscription, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23BB5AE54(319, &qword_27E1A0048, &qword_27E19EF20, &unk_23BBF7380, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23BB5AEB4(319, &qword_27E1A2108, &type metadata for AnySubscriptionStoreControlStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23BB5AE54(319, &qword_27E19B390, &qword_27E19B398, &unk_23BBF7C40, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_23BB5AEB4(319, &qword_27E1991B8, MEMORY[0x277CDF388], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_23BB5AE54(319, &qword_27E1A2110, &qword_27E1A2118, &unk_23BC008F0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_23BB5ADF4(319, &qword_27E1A05C8, type metadata accessor for SubscriptionStorePolicyConfiguration, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_23BB5ADF4(319, &qword_27E19B3C0, type metadata accessor for PurchaseAction, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_23BB5AE54(319, &qword_27E1A2120, &qword_27E1A2128, &unk_23BC008F8, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        sub_23BB5AEB4(319, &qword_27E19A3B8, &type metadata for SubscriptionStoreButtonLabel, MEMORY[0x277CDF468]);
                        if (v11 <= 0x3F)
                        {
                          sub_23BB5AEB4(319, &qword_27E19C440, &_s26AuxiliaryButtonsVisibilityVN, MEMORY[0x277CDF468]);
                          if (v12 <= 0x3F)
                          {
                            sub_23BB5AE54(319, &qword_27E199FE8, &qword_27E199FF0, &unk_23BBE9530, MEMORY[0x277CDF468]);
                            if (v13 <= 0x3F)
                            {
                              sub_23BB5AE54(319, &qword_27E19B3A0, &qword_27E19B3A8, &unk_23BBEC7B0, MEMORY[0x277CDF468]);
                              if (v14 <= 0x3F)
                              {
                                sub_23BB5AE54(319, &qword_27E19B3B0, &qword_27E19B3B8, &unk_23BC00900, MEMORY[0x277CDF468]);
                                if (v15 <= 0x3F)
                                {
                                  sub_23BB5AE54(319, &qword_27E19B3C8, &qword_27E19B2F0, &unk_23BC02CB0, MEMORY[0x277CE10B8]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_23BB5AE54(319, &qword_27E19B3D0, &qword_27E19A9E8, &unk_23BBEC6B0, MEMORY[0x277CE10B8]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_23BB5AEB4(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                                      if (v18 <= 0x3F)
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
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB5A46C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_23BBDCDB8();
  v5 = *(v4 - 8);
  v39 = *(v5 + 84);
  if (v39 <= 0xFD)
  {
    v6 = 253;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = v6 - 1;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v37 = v4;
  v38 = *(a3 + 16);
  v9 = *(v38 - 8);
  v40 = v8;
  v41 = *(v9 + 84);
  if (v41 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_23BBD9728() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v11 + 80) & 0xF8 | 7;
  v14 = *(sub_23BBDB328() - 8);
  if (((*(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = ((*(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v5 + 64);
  v17 = *(v9 + 80);
  if (((((v12 + ((v12 + v13 + 1) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = ((((v12 + ((v12 + v13 + 1) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v5 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = ((((((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 < a2)
  {
    v22 = *(v14 + 80) & 0xF8 | 7;
    v23 = ((((((v15 + ((v22 + v18 + ((v13 + ((((*(v9 + 64) + ((v21 + v17 + ((v19 + 40) & ~v20)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13) + 1) & ~v22) + 281) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v10 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = *(a1 + v23);
        if (!v28)
        {
          break;
        }

        goto LABEL_37;
      case 2:
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_37;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB5A89CLL);
      case 4:
        v28 = *(a1 + v23);
        if (!v28)
        {
          break;
        }

LABEL_37:
        v30 = v28 - 1;
        if (v24)
        {
          v30 = 0;
          LODWORD(v24) = *a1;
        }

        return v10 + (v24 | v30) + 1;
      default:
        break;
    }
  }

  if (v10 == 0x7FFFFFFF)
  {
    v31 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  else
  {
    v32 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 25) & ~v20;
    if (v40 >= v41)
    {
      if (v39 < 0xFD)
      {
        v35 = *(((v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v35 >= 2)
        {
          v36 = (v35 + 2147483646) & 0x7FFFFFFF;
        }

        else
        {
          v36 = -1;
        }

        if ((v36 + 1) >= 2)
        {
          EnumTagSinglePayload = v36;
        }

        else
        {
          EnumTagSinglePayload = 0;
        }
      }

      else
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, v39, v37);
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

    else
    {
      v33 = (v32 + v17 + v21) & ~v17;

      return __swift_getEnumTagSinglePayload(v33, v41, v38);
    }
  }
}

void sub_23BB5A8B0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v41 = sub_23BBDCDB8();
  v6 = *(v41 - 8);
  v42 = *(v6 + 84);
  if (v42 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v44 = v7;
  v43 = v7 - 1;
  if ((v7 - 1) <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7 - 1;
  }

  v45 = *(a4 + 16);
  v9 = *(v45 - 8);
  v46 = *(v9 + 84);
  v47 = v8;
  if (v46 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_23BBD9728() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v11 + 80) & 0xF8 | 7;
  v14 = *(sub_23BBDB328() - 8);
  if (((*(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = ((*(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = *(v6 + 64);
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 40) & ~(v16 | 7);
  v21 = ((((v19 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v22 = *(v9 + 80);
  v23 = (v13 + ((((*(v9 + 64) + ((v21 + v22 + v20) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13;
  v24 = ((((v12 + ((v12 + v13 + 1) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v25 = *(v14 + 80) & 0xF8 | 7;
  v26 = ((((((v15 + ((v25 + v24 + v23 + 1) & ~v25) + 281) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v29 = 0;
  }

  else
  {
    if (((((((v15 + ((v25 + v24 + v23 + 1) & ~v25) + 281) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a3 - v10 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  if (a2 > v10)
  {
    if (v26)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v10;
    }

    if (v26)
    {
      bzero(a1, v26);
      *a1 = ~v10 + a2;
    }

    switch(v29)
    {
      case 1:
        *(a1 + v26) = v30;
        return;
      case 2:
        *(a1 + v26) = v30;
        return;
      case 3:
        goto LABEL_73;
      case 4:
        *(a1 + v26) = v30;
        return;
      default:
        return;
    }
  }

  v31 = v19 + 9;
  switch(v29)
  {
    case 1:
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 2:
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 3:
LABEL_73:
      __break(1u);
      JUMPOUT(0x23BB5ADB4);
    case 4:
      *(a1 + v26) = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return;
      }

LABEL_46:
      if (v10 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v32 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v32 = a2 - 1;
        }

        *a1 = v32;
        return;
      }

      v33 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17);
      v34 = v46;
      if (v47 >= v46)
      {
        if (v47 >= a2)
        {
          if (v43 >= a2)
          {
            v39 = a2 - v44;
            if (a2 < v44)
            {
              v36 = a2 + 1;
              v34 = v42;
              if (v42 < 0xFD)
              {
                v40 = &v33[v18 + 7] & 0xFFFFFFFFFFFFFFF8;
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

              v35 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17;
              v37 = v41;
              goto LABEL_51;
            }
          }

          else
          {
            v39 = a2 - v44;
          }

          bzero(v33, (v19 + 9));
          if (v31 <= 3)
          {
            *v33 = v39;
            return;
          }
        }

        else
        {
          v38 = (((v19 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
          if (v38 == -24)
          {
            return;
          }

          v39 = ~v47 + a2;
          bzero(v33, (v38 + 24));
        }

        *v33 = v39;
        return;
      }

      v35 = &v33[v22 + v21] & ~v22;
      v36 = a2;
      v37 = v45;
LABEL_51:

      __swift_storeEnumTagSinglePayload(v35, v36, v34, v37);
      return;
  }
}

void sub_23BB5ADF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_53_4();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23BB5AE54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_53_4();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23BB5AEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23BB5AF48()
{
  v1 = &unk_27E19FEF0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for SubscriptionStoreControlOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v46 = *(v0 + 16);

  v45 = 0;
  while (1)
  {
LABEL_9:
    v24 = *(v46 + 16);
    if (v45 == v24)
    {
      v25 = 1;
      v26 = v44;
    }

    else
    {
      v26 = v44;
      if (v45 >= v24)
      {
        goto LABEL_21;
      }

      v27 = v45;
      sub_23BB629E0(v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, v44, type metadata accessor for SubscriptionStoreControlConfigurationSection);
      v25 = 0;
      v45 = v27 + 1;
    }

    v28 = v26;
    v29 = v26;
    v30 = v43;
    __swift_storeEnumTagSinglePayload(v28, v25, 1, v43);
    v31 = v29;
    v32 = v42;
    sub_23B9A71D0(v31, v42, &qword_27E197B70);
    if (__swift_getEnumTagSinglePayload(v32, 1, v30) == 1)
    {
      break;
    }

    v33 = v32;
    v34 = v1;
    v35 = v41;
    sub_23BB65314(v33, v41, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v36 = *(v35 + 40);

    v37 = v35;
    v1 = v34;
    sub_23BB65094(v37, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v38 = v36;
    if (v36)
    {
      for (i = 0; ; ++i)
      {
        v22 = *(v38 + 16);
        if (i == v22)
        {
          __swift_storeEnumTagSinglePayload(v16, 1, 1, v5);
          result = sub_23B9846E8(v16, &qword_27E197BA0);
          goto LABEL_9;
        }

        if (i >= v22)
        {
          break;
        }

        sub_23BB629E0(v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v16, type metadata accessor for SubscriptionStoreControlOption);
        __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
        sub_23B9A71D0(v16, v19, &qword_27E197BA0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
        {

          goto LABEL_17;
        }

        sub_23BB65314(v19, v8, type metadata accessor for SubscriptionStoreControlOption);
        sub_23B9A721C(&v8[*(v5 + 20)], v4, v34);
        sub_23BB65094(v8, type metadata accessor for SubscriptionStoreControlOption);
        v23 = sub_23BBDCC88();
        if (__swift_getEnumTagSinglePayload(v4, 1, v23) != 1)
        {

          sub_23B9846E8(v4, &unk_27E19FEF0);

          return 1;
        }

        result = sub_23B9846E8(v4, v34);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

  __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
LABEL_17:

  return 0;
}

void sub_23BB5B4B4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v61 = a5;
  v56 = a4;
  v63 = a3;
  v64 = a1;
  v65 = a2;
  v57 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_7();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v55 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_5();
  v59 = v12;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v13);
  v58 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  v16 = OUTLINED_FUNCTION_13_0(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v66 = v23;
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_5();
  v54 = v24;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  v28 = 0;
  v29 = 0;
  v62 = 0;
  v60 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (!v29)
      {
        goto LABEL_10;
      }

      v30 = *(v29 + 16);
      if (v28 != v30)
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v18, 1, 1, v67);
      sub_23B9846E8(v18, &qword_27E197BA0);
LABEL_10:
      v38 = *(v63 + 16);
      if (v62 == v38)
      {
        v39 = 1;
        v41 = v58;
        v40 = v59;
      }

      else
      {
        v41 = v58;
        v40 = v59;
        if (v62 >= v38)
        {
          goto LABEL_26;
        }

        v42 = v62;
        sub_23BB629E0(v63 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v62, v58, type metadata accessor for SubscriptionStoreControlConfigurationSection);
        v39 = 0;
        v62 = v42 + 1;
      }

      v43 = v57;
      __swift_storeEnumTagSinglePayload(v41, v39, 1, v57);
      sub_23B9A71D0(v41, v40, &qword_27E197B70);
      if (__swift_getEnumTagSinglePayload(v40, 1, v43) == 1)
      {

        __swift_storeEnumTagSinglePayload(v21, 1, 1, v67);

        goto LABEL_22;
      }

      v44 = v40;
      v45 = v55;
      sub_23BB65314(v44, v55, type metadata accessor for SubscriptionStoreControlConfigurationSection);
      v56(&v68, v45);
      sub_23BB65094(v45, type metadata accessor for SubscriptionStoreControlConfigurationSection);
      v46 = v68;

      v28 = 0;
      v29 = v46;
    }

    if (v28 >= v30)
    {
      break;
    }

    v31 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v32 = *(v66 + 72);
    sub_23BB629E0(v29 + v31 + v32 * v28, v18, type metadata accessor for SubscriptionStoreControlOption);
    OUTLINED_FUNCTION_20_2();
    v33 = v67;
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v67);
    sub_23B9A71D0(v18, v21, &qword_27E197BA0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v33) == 1)
    {

LABEL_22:

      sub_23B9846E8(v21, &qword_27E197BA0);
      return;
    }

    sub_23BB65314(v21, v27, type metadata accessor for SubscriptionStoreControlOption);
    v37 = v64(v27);
    if (v5)
    {
      sub_23BB65094(v27, type metadata accessor for SubscriptionStoreControlOption);

      return;
    }

    if (v37)
    {
      sub_23BB65314(v27, v54, type metadata accessor for SubscriptionStoreControlOption);
      v47 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23BA92BA8();
        v47 = v69;
      }

      v49 = *(v47 + 16);
      v50 = v49 + 1;
      if (v49 >= *(v47 + 24) >> 1)
      {
        v60 = v49 + 1;
        v52 = v49;
        sub_23BA92BA8();
        v50 = v60;
        v49 = v52;
        v47 = v69;
      }

      ++v28;
      *(v47 + 16) = v50;
      v60 = v47;
      sub_23BB65314(v54, v47 + v31 + v49 * v32, type metadata accessor for SubscriptionStoreControlOption);
    }

    else
    {
      sub_23BB65094(v27, type metadata accessor for SubscriptionStoreControlOption);
      ++v28;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_23BB5BA94(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v5 = type metadata accessor for Subscription();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = *(v6 + 72);
    sub_23BB629E0(a3 + v13 + v14 * v11, v10, type metadata accessor for Subscription);
    v15 = v24(v10);
    if (v3)
    {
      sub_23BB65094(v10, type metadata accessor for Subscription);

      return;
    }

    if (v15)
    {
      sub_23BB65314(v10, v22, type metadata accessor for Subscription);
      v16 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23BA92C48();
        v16 = v26;
      }

      v18 = *(v16 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v16 + 24) >> 1)
      {
        v23 = v18 + 1;
        v21 = v18;
        sub_23BA92C48();
        v19 = v23;
        v18 = v21;
        v16 = v26;
      }

      ++v11;
      *(v16 + 16) = v19;
      v23 = v16;
      sub_23BB65314(v22, v16 + v13 + v18 * v14, type metadata accessor for Subscription);
    }

    else
    {
      sub_23BB65094(v10, type metadata accessor for Subscription);
      ++v11;
    }
  }

  __break(1u);
}

uint64_t sub_23BB5BD28()
{
  v1 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v54 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v15 - 8);
  v51 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v21);
  v50 = &v47 - v23;
  v24 = *(v0 + 16);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return 0;
  }

  v52 = v8;
  v49 = v22;

  v27 = 0;
  while (1)
  {
    if (v27 == v25)
    {
      v28 = 1;
      v27 = v25;
    }

    else
    {
      if (v27 >= v25)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      sub_23BB629E0(v24 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v27, v14, type metadata accessor for SubscriptionStoreControlConfigurationSection);
      v28 = 0;
      ++v27;
    }

    __swift_storeEnumTagSinglePayload(v14, v28, 1, v1);
    sub_23B9A71D0(v14, v11, &qword_27E197B70);
    if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
    {

      v33 = type metadata accessor for SubscriptionStoreControlOption(0);
      v34 = v50;
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v33);
      goto LABEL_13;
    }

    sub_23BB65314(v11, v3, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v29 = *(v3 + 5);

    sub_23BB65094(v3, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v30 = *(v29 + 16);
    v31 = type metadata accessor for SubscriptionStoreControlOption(0);
    v32 = v31;
    if (v30)
    {
      break;
    }

    __swift_storeEnumTagSinglePayload(v20, 1, 1, v31);
    result = sub_23B9846E8(v20, &qword_27E197BA0);
    v25 = *(v24 + 16);
  }

  v35 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v48 = *(*(v31 - 8) + 72);
  sub_23BB629E0(v29 + v35, v20, type metadata accessor for SubscriptionStoreControlOption);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v32);
  v34 = v50;
  sub_23B9A71D0(v20, v50, &qword_27E197BA0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
  {

LABEL_13:
    sub_23B9846E8(v34, &qword_27E197BA0);

    return 0;
  }

  v47 = v35;
  result = sub_23B9846E8(v34, &qword_27E197BA0);
  for (i = 1; ; i = 0)
  {
    v38 = v53;
    if (!v29)
    {
      goto LABEL_20;
    }

    v39 = *(v29 + 16);
    if (i != v39)
    {
      break;
    }

    v40 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v32);
    result = sub_23B9846E8(v40, &qword_27E197BA0);
LABEL_20:
    v41 = *(v24 + 16);
    if (v27 == v41)
    {
      v42 = 1;
      v43 = v52;
    }

    else
    {
      if (v27 >= v41)
      {
        goto LABEL_31;
      }

      v43 = v52;
      sub_23BB629E0(v24 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v27, v52, type metadata accessor for SubscriptionStoreControlConfigurationSection);
      v42 = 0;
      ++v27;
    }

    __swift_storeEnumTagSinglePayload(v43, v42, 1, v1);
    sub_23B9A71D0(v43, v38, &qword_27E197B70);
    if (__swift_getEnumTagSinglePayload(v38, 1, v1) == 1)
    {

      v45 = v49;
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v32);
      goto LABEL_29;
    }

    sub_23BB65314(v38, v3, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v44 = *(v3 + 5);

    sub_23BB65094(v3, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v29 = v44;
  }

  if (i >= v39)
  {
    goto LABEL_32;
  }

  v46 = v51;
  sub_23BB629E0(v29 + v47 + i * v48, v51, type metadata accessor for SubscriptionStoreControlOption);

  __swift_storeEnumTagSinglePayload(v46, 0, 1, v32);
  v45 = v49;
  sub_23B9A71D0(v46, v49, &qword_27E197BA0);
LABEL_29:

  v36 = __swift_getEnumTagSinglePayload(v45, 1, v32) == 1;
  sub_23B9846E8(v45, &qword_27E197BA0);
  return v36;
}

uint64_t sub_23BB5C410(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_23BB5C450(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_23BBDC9B8();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for PurchaseConfigurationEvent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9A721C(a1, v14, &qword_27E19B3F8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return sub_23B9846E8(v14, &qword_27E19B3F8);
  }

  sub_23BB65314(v14, v17, type metadata accessor for PurchaseConfigurationEvent);
  *(v2 + 16) = *v17;
  v19 = v15[10];
  v20 = sub_23BBD9828();
  (*(*(v20 - 8) + 16))(v11, &v17[v19], v20);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
  v21 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseTimestamp;
  swift_beginAccess();
  sub_23BA93F1C(v11, v2 + v21, &qword_27E198900);
  swift_endAccess();
  v22 = &v17[v15[11]];
  v24 = *v22;
  v23 = *(v22 + 1);
  v25 = (v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
  *v25 = v24;
  v25[1] = v23;

  sub_23B9A721C(&v17[v15[8]], v6, &qword_27E19D2A0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v28 = v30;
    v27 = v31;
    (*(v31 + 32))(v30, v6, v7);
    v26 = sub_23BBCB950();
    (*(v27 + 8))(v28, v7);
    goto LABEL_7;
  }

  sub_23B9846E8(v6, &qword_27E19D2A0);
  if (*&v17[v15[9]])
  {
    v26 = 3;
LABEL_7:
    *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseResult) = v26;
  }

  *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseStart) = v17[2];
  *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseOptions) = v17[1];
  *(v2 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseCompletion) = v17[3];
  return sub_23BB65094(v17, type metadata accessor for PurchaseConfigurationEvent);
}

void sub_23BB5C8A0()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2A0);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = sub_23BBDC9B8();
  OUTLINED_FUNCTION_7();
  v37[2] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v37[1] = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8);
  OUTLINED_FUNCTION_13_0(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_31_7();
  if (__swift_getEnumTagSinglePayload(v2, 1, v17) != 1)
  {
    OUTLINED_FUNCTION_16_20();
    *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_appliesSubscriptionOffer) = *v1;
    v19 = v17[10];
    v20 = sub_23BBD9828();
    OUTLINED_FUNCTION_4_1();
    (*(v21 + 16))(v14, &v1[v19], v20);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
    v25 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_46_4();
    sub_23BA93F1C(v14, v0 + v25, &qword_27E198900);
    swift_endAccess();
    v26 = &v1[v17[11]];
    v28 = *v26;
    v27 = v26[1];
    v29 = (v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID);
    *v29 = v28;
    v29[1] = v27;

    sub_23B9A721C(&v1[v17[8]], v0, &qword_27E19D2A0);
    v30 = OUTLINED_FUNCTION_76();
    if (__swift_getEnumTagSinglePayload(v30, v31, v6) == 1)
    {
      sub_23B9846E8(v0, &qword_27E19D2A0);
      if (!*&v1[v17[9]])
      {
LABEL_8:
        *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesInAppPurchaseStart) = v1[2];
        *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesInAppPurchaseOptions) = v1[1];
        OUTLINED_FUNCTION_15_24(v1[3]);
        goto LABEL_9;
      }

      v32 = 3;
    }

    else
    {
      v33 = OUTLINED_FUNCTION_27_10();
      v34(v33);
      v32 = sub_23BBCB950();
      v35 = OUTLINED_FUNCTION_36_4();
      v36(v35);
    }

    *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseResult) = v32;
    goto LABEL_8;
  }

  sub_23B9846E8(v2, &qword_27E19B3F8);
LABEL_9:
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB5CC10()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2A0);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = sub_23BBDC9B8();
  OUTLINED_FUNCTION_7();
  v35[2] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v35[1] = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8);
  OUTLINED_FUNCTION_13_0(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_31_7();
  if (__swift_getEnumTagSinglePayload(v2, 1, v17) != 1)
  {
    OUTLINED_FUNCTION_16_20();
    *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appliesSubscriptionOffer) = *v1;
    v19 = v17[10];
    v20 = sub_23BBD9828();
    OUTLINED_FUNCTION_4_1();
    (*(v21 + 16))(v14, &v1[v19], v20);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
    v25 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_46_4();
    sub_23BA93F1C(v14, v0 + v25, &qword_27E198900);
    swift_endAccess();
    v26 = &v1[v17[11]];
    v27 = v26[1];
    *(v0 + 16) = *v26;
    *(v0 + 24) = v27;

    sub_23B9A721C(&v1[v17[8]], v0, &qword_27E19D2A0);
    v28 = OUTLINED_FUNCTION_76();
    if (__swift_getEnumTagSinglePayload(v28, v29, v6) == 1)
    {
      sub_23B9846E8(v0, &qword_27E19D2A0);
      if (!*&v1[v17[9]])
      {
LABEL_8:
        *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart) = v1[2];
        *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions) = v1[1];
        OUTLINED_FUNCTION_15_24(v1[3]);
        goto LABEL_9;
      }

      v30 = 3;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_27_10();
      v32(v31);
      v30 = sub_23BBCB950();
      v33 = OUTLINED_FUNCTION_36_4();
      v34(v33);
    }

    *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult) = v30;
    goto LABEL_8;
  }

  sub_23B9846E8(v2, &qword_27E19B3F8);
LABEL_9:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB5CF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = a2[2];
  v15 = *(a2 + 24);
  *a7 = a1;
  *(a7 + 8) = v12;
  *(a7 + 16) = v13;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  v16 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23BB65314(a3, a7 + v16[10], type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
  (*(*(a6 - 8) + 32))(a7 + v16[11], a4, a6);
  *(a7 + v16[12]) = a5;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(v19);
  v20 = a7 + v16[16];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = v16[17];
  *(a7 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  swift_storeEnumTagMultiPayload();
  v22 = v16[18];
  *(a7 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(v23);
  v24 = a7 + v16[20];
  v46 = 0;
  *v24 = swift_getKeyPath();
  *(v24 + 73) = 0;
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_26_12(v26);
  v27 = a7 + v16[23];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  v28 = a7 + v16[24];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v29 = a7 + v16[25];
  v30 = swift_getKeyPath();
  LOBYTE(v40[0]) = 0;
  v31 = swift_getKeyPath();
  v45 = 0;
  v32 = swift_getKeyPath();
  v44 = 0;
  v33 = swift_getKeyPath();
  v43 = 0;
  v34 = swift_getKeyPath();
  v42 = 0;
  *v29 = v30;
  *(v29 + 8) = 0;
  *(v29 + 16) = v31;
  *(v29 + 24) = 0;
  *(v29 + 32) = v32;
  *(v29 + 40) = 0;
  *(v29 + 48) = v33;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 72) = v34;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  v35 = (a7 + v16[26]);
  *v35 = sub_23BA0F934();
  v35[1] = v36;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_23BB5D704(v40);
  v37 = a7 + v16[28];
  result = sub_23B9BE5CC();
  *v37 = result & 1;
  *(v37 + 8) = v39;
  return result;
}

void sub_23BB5D2B8()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  sub_23B9A721C(v6, v0, &qword_27E198320);
  v11 = sub_23BBDD368();
  v12 = OUTLINED_FUNCTION_76();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v0, &qword_27E198320);
  }

  else
  {
    sub_23BBDD358();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_23B9846E8(v6, &qword_27E198320);
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_23BBDD2D8();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_23BBDD048();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_23B9846E8(v6, &qword_27E198320);

LABEL_9:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB5D578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2160);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for SubscriptionViewPurchaseEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB16AF4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_23B9846E8(v2, &qword_27E1A2160);
  }

  sub_23BB65314(v2, v5, type metadata accessor for SubscriptionViewPurchaseEvent);
  if (qword_27E197798 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v7, qword_27E1BFD50);
  sub_23BB13BF0();
  return sub_23BB65094(v5, type metadata accessor for SubscriptionViewPurchaseEvent);
}

uint64_t sub_23BB5D704(uint64_t a1)
{
  sub_23B9A721C(a1, v3, &qword_27E19A9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8);
  sub_23BBDBF58();
  return sub_23B9846E8(a1, &qword_27E19A9E8);
}

uint64_t sub_23BB5D784(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *(v2 + *(type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0) + 28));

  return v3;
}

uint64_t sub_23BB5D7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  v18 = sub_23BB5D784(a1);
  if (v19)
  {
    *&v74[0] = v18;
    *(&v74[0] + 1) = v19;
    sub_23BB5DEF8(v74, v2, v17);
    *&v62 = 0;
  }

  else
  {
    *&v62 = 0;
    v20 = type metadata accessor for Subscription();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v20);
  }

  v22 = *v2;
  v21 = v2[1];
  v23 = v2 + *(a1 + 40);
  sub_23B9A721C(v23, v11, qword_27E197A68);
  v24 = type metadata accessor for Subscription();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v24);
  v71 = v17;
  v65 = v24;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9A721C(v17, v14, qword_27E197A68);
    if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
    {
      sub_23B9846E8(v11, qword_27E197A68);
    }
  }

  else
  {
    sub_23BB65314(v11, v14, type metadata accessor for Subscription);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  }

  v26 = sub_23BB5E0CC(v21, v14, v22);
  sub_23B9846E8(v14, qword_27E197A68);
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v66 = sub_23BB5E2CC(v2, v26);
  v67 = sub_23BB5E664(v26, v2);

  v29 = sub_23BB5E8D4(v2, v27, v28);
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  v64 = v32;
  v63 = *(v23 + *(type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0) + 20));
  v33 = v2 + *(a1 + 64);
  v34 = *v33;
  v35 = *(v33 + 1);
  if (v33[16] == 1)
  {
    sub_23B9794F0(*v33);
  }

  else
  {

    sub_23BBDD5A8();
    v36 = sub_23BBDB338();
    sub_23BBD9978();

    v37 = v68;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BB625C8(v34, v35, 0);
    (*(v69 + 8))(v37, v70);
    v35 = *(&v74[0] + 1);
    v34 = *&v74[0];
  }

  v38 = v71;
  if (v34)
  {
    *&v74[0] = v34;
    *(&v74[0] + 1) = v35;
    sub_23BB5F070(v74, v2, v27, v28, &v73);
    sub_23B979500(v34);
    v62 = v73;
    v39 = swift_allocObject();
    *(v39 + 16) = v62;
    *&v62 = sub_23BB629A0;
  }

  else
  {
    *&v62 = 0;
    v39 = 0;
  }

  v61 = sub_23BB5D784(a1);
  v60 = v40;
  sub_23BB5F5B4(v2, v38, v72);
  v41 = v2 + *(a1 + 60);
  v42 = *v41;
  if (v41[8] != 1)
  {

    sub_23BBDD5A8();
    v43 = sub_23BBDB338();
    sub_23BBD9978();

    v44 = v68;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v42, 0);
    (*(v69 + 8))(v44, v70);
    LOBYTE(v42) = v74[0];
  }

  v45 = v65;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  v47 = *(v46 + 60);
  __swift_storeEnumTagSinglePayload(a2 + v47, 1, 1, v45);
  v48 = v66;
  *a2 = *(v66 + 16) > 1uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2150);
  v49 = (type metadata accessor for SubscriptionStoreControlConfigurationSection(0) - 8);
  v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23BBE7F10;
  v52 = v51 + v50;
  sub_23BB62914();
  sub_23BBDD718();
  v53 = v51 + v50 + v49[8];
  v54 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
  v55 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  __swift_storeEnumTagSinglePayload(v53 + *(v55 + 20), 1, 1, v54);
  v56 = v74[1];
  *v52 = v74[0];
  *(v52 + 16) = v56;
  *(v52 + 32) = v75;
  *(v52 + 40) = v48;
  sub_23B9846E8(v71, qword_27E197A68);
  *(a2 + 8) = v67;
  *(a2 + 16) = v51;
  v57 = v64;
  *(a2 + 24) = sub_23BB6290C;
  *(a2 + 32) = v57;
  *(a2 + 40) = v63;
  *(a2 + 48) = v62;
  *(a2 + 56) = v39;
  v58 = v60;
  *(a2 + 64) = v61;
  *(a2 + 72) = v58;
  result = sub_23BA93F1C(v72, a2 + v47, qword_27E197A68);
  *(a2 + *(v46 + 64)) = v42;
  return result;
}

void sub_23BB5DEF8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = type metadata accessor for Subscription();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v12 = *(*a2 + 16);
  while (1)
  {
    if (v12 == v8)
    {
      v16 = 1;
      v17 = v19;
      goto LABEL_13;
    }

    if (v8 >= *(v11 + 16))
    {
      break;
    }

    sub_23BB629E0(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for Subscription);
    if (_s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() == v9 && v13 == v10)
    {

LABEL_12:
      v17 = v19;
      sub_23BB65314(v7, v19, type metadata accessor for Subscription);
      v16 = 0;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v17, v16, 1, v18);
      return;
    }

    v15 = sub_23BBDDA88();

    if (v15)
    {
      goto LABEL_12;
    }

    sub_23BB65094(v7, type metadata accessor for Subscription);
    ++v8;
  }

  __break(1u);
}

uint64_t sub_23BB5E0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9A721C(a2, v8, qword_27E197A68);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_23B9846E8(v8, qword_27E197A68);
  }

  else
  {
    v12 = sub_23BB65314(v8, v11, type metadata accessor for Subscription);
    if ((~a1 & 0xF) != 0)
    {
      MEMORY[0x28223BE20](v12);
      *&v15[-16] = v11;
      *&v15[-8] = a1;

      sub_23BB5BA94(sub_23BB650E8, &v15[-32], a3);
      a3 = v13;
      sub_23BB65094(v11, type metadata accessor for Subscription);
      return a3;
    }

    sub_23BB65094(v11, type metadata accessor for Subscription);
  }

  return a3;
}

uint64_t sub_23BB5E2CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SubscriptionStoreStaticView();
  v6 = v5;
  if (v4 != 1)
  {
    return sub_23BB5E39C(a2, v5);
  }

  v7 = a1 + *(v5 + 40);
  LOBYTE(v7) = *(v7 + *(type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0) + 20));
  v10 = a2;

  sub_23BB63B18(&v10, v7);
  v8 = sub_23BB5E39C(v10, v6);

  return v8;
}

uint64_t sub_23BB5E39C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2168);
  MEMORY[0x28223BE20](v24);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for SubscriptionStoreControlOption(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v27 = MEMORY[0x277D84F90];
    sub_23BA92BA8();
    v13 = v27;
    v14 = 0;
    v15 = *(type metadata accessor for Subscription() - 8);
    v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v23 = *(v15 + 72);
    do
    {
      v17 = v24;
      v18 = *(v24 + 48);
      sub_23BB629E0(v16, &v7[v18], type metadata accessor for Subscription);
      *v4 = v14;
      v19 = *(v17 + 48);
      sub_23BB65314(&v7[v18], v4 + v19, type metadata accessor for Subscription);
      sub_23BB61B6C(v14, v4 + v19, v26, *(v25 + 24), v11);
      sub_23B9846E8(v4, &qword_27E1A2168);
      v27 = v13;
      v20 = *(v13 + 16);
      if (v20 >= *(v13 + 24) >> 1)
      {
        sub_23BA92BA8();
        v13 = v27;
      }

      ++v14;
      *(v13 + 16) = v20 + 1;
      sub_23BB65314(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, type metadata accessor for SubscriptionStoreControlOption);
      v16 += v23;
    }

    while (v12 != v14);
  }

  return v13;
}

uint64_t sub_23BB5E664(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Subscription();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = *(*a2 + 16);
  if (v13 != v15)
  {
    v12 = MEMORY[0x277D84F90];
    if (v15)
    {
      v22 = MEMORY[0x277D84F90];
      sub_23BA92B88();
      v12 = v22;
      v16 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      v20[1] = v9 + 32;
      v21 = v17;
      do
      {
        sub_23BB629E0(v16, v7, type metadata accessor for Subscription);
        (*(v9 + 16))(v11, v7, v8);
        sub_23BB65094(v7, type metadata accessor for Subscription);
        v22 = v12;
        v18 = *(v12 + 16);
        if (v18 >= *(v12 + 24) >> 1)
        {
          sub_23BA92B88();
          v12 = v22;
        }

        *(v12 + 16) = v18 + 1;
        (*(v9 + 32))(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v11, v8);
        v16 += v21;
        --v15;
      }

      while (v15);
    }
  }

  return v12;
}

uint64_t (*sub_23BB5E8D4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v6 = type metadata accessor for SubscriptionStoreStaticView();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_23BB632CC;
}

uint64_t sub_23BB5EA5C(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v52 = a1;
  v4 = a3 - 8;
  v5 = *(a3 - 8);
  v49 = a2;
  v50 = v5;
  MEMORY[0x28223BE20](a1);
  v47 = v6;
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for SubscriptionStoreControlOption(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = (v3 + *(v4 + 112));
  v19 = *v17;
  v18 = v17[1];
  *&v54[0] = *v17;
  *(&v54[0] + 1) = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF68();
  if (v56[0])
  {
  }

  v41 = v13;
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v20;
  v44 = v18;
  v45 = v19;
  v22 = v53;
  v24 = v50;
  v23 = v51;
  sub_23B9A721C(v52, v11, &qword_27E197BA0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_23B9846E8(v11, &qword_27E197BA0);
  }

  v52 = type metadata accessor for SubscriptionStoreControlOption;
  v25 = v16;
  v40 = v16;
  sub_23BB65314(v11, v16, type metadata accessor for SubscriptionStoreControlOption);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v26 = v23;
  sub_23B9A721C(v54, v56, &qword_27E19A9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF78();
  sub_23B9846E8(v54, &qword_27E19A9E8);
  sub_23BBDD328();
  v27 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v27);
  v28 = v42;
  sub_23BB629E0(v25, v42, type metadata accessor for SubscriptionStoreControlOption);
  v29 = v48;
  (*(v24 + 16))(v48, v3, v23);
  sub_23BBDD308();
  v30 = v49;
  sub_23B9A721C(v49, v54, &qword_27E19D2A8);
  v31 = sub_23BBDD2F8();
  v32 = (*(v46 + 80) + 48) & ~*(v46 + 80);
  v33 = (v41 + *(v24 + 80) + v32) & ~*(v24 + 80);
  v34 = (v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 16) = v31;
  *(v35 + 24) = v36;
  *(v35 + 32) = *(v26 + 16);
  sub_23BB65314(v28, v35 + v32, v52);
  (*(v24 + 32))(v35 + v33, v29, v26);
  v37 = v35 + v34;
  v38 = *(v30 + 16);
  *v37 = *v30;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(v30 + 32);
  *(v37 + 48) = *(v30 + 48);
  sub_23BB5D2B8();
  *&v54[0] = v45;
  *(&v54[0] + 1) = v44;
  v56[0] = v39;
  sub_23BBDBF78();
  return sub_23BB65094(v40, type metadata accessor for SubscriptionStoreControlOption);
}

uint64_t sub_23BB5EF78(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_23BB629E0(a1, &v11 - v7, type metadata accessor for SubscriptionStoreControlOption);
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  a3(v8, a2);
  return sub_23B9846E8(v8, &qword_27E197BA0);
}

uint64_t sub_23BB5F070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v23 = a5;
  v9 = type metadata accessor for SubscriptionStoreStaticView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *a1;
  v16 = a1[1];
  v22 = v15;
  (*(v10 + 16))(v14, a2, v9, v12);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v14, v9);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v22;
  v19[1] = v16;
  v20 = v23;
  *v23 = sub_23BB62E30;
  v20[1] = v18;
}

void sub_23BB5F1F4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = type metadata accessor for Subscription();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v16 - 8);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = &v37 - v19;
  v20 = *a2;
  v21 = *(*a2 + 16);
  if (v21)
  {
    v38 = v12;
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v22 = 0;
    v23 = *a1;
    v44 = a1[1];
    v24 = *(a1 + 16);
    v25 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    while (v22 < *(v20 + 16))
    {
      sub_23BB629E0(v25 + *(v10 + 72) * v22, v15, type metadata accessor for Subscription);
      v26 = &v15[*(v45 + 20)];
      v27 = v26[8];
      if (v27 == 2)
      {
        v28 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        if (v24)
        {
          if (v28 == v23 && v44 == v29)
          {

LABEL_22:
            v33 = v43;
            sub_23BB65314(v15, v43, type metadata accessor for Subscription);
            v32 = 0;
            a5 = v41;
            v12 = v38;
            a3 = v39;
            goto LABEL_23;
          }

          v31 = sub_23BBDDA88();

          if (v31)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      else if ((v24 & 1) == 0 && *v26 == v23 && ((v44 ^ v27) & 1) == 0)
      {
        goto LABEL_22;
      }

      ++v22;
      sub_23BB65094(v15, type metadata accessor for Subscription);
      if (v21 == v22)
      {
        v32 = 1;
        a5 = v41;
        v12 = v38;
        a3 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = 1;
LABEL_20:
    v33 = v43;
LABEL_23:
    v34 = v45;
    __swift_storeEnumTagSinglePayload(v33, v32, 1, v45);
    v35 = v42;
    sub_23B9A721C(v33, v42, qword_27E197A68);
    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {
      sub_23B9846E8(v33, qword_27E197A68);
      v36 = 0;
    }

    else
    {
      sub_23BB65314(v35, v12, type metadata accessor for Subscription);
      v46 = sub_23BB6D6C0(v12, a3);
      v36 = sub_23BBDC0D8();
      sub_23BB65094(v12, type metadata accessor for Subscription);
      sub_23B9846E8(v33, qword_27E197A68);
    }

    *a5 = v36;
  }
}

uint64_t sub_23BB5F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23B9A721C(a1 + *(v9 + 40), v8, qword_27E197A68);
  v10 = type metadata accessor for Subscription();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_23B9846E8(v8, qword_27E197A68);
    if ((*(a1 + 8) & 1) == 0)
    {
      return sub_23B9A721C(a2, a3, qword_27E197A68);
    }

    v12 = a3;
    v13 = 1;
  }

  else
  {
    sub_23BB65314(v8, a3, type metadata accessor for Subscription);
    v12 = a3;
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v10);
}

uint64_t sub_23BB5F720@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_23BBDA928();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v3 + *(a1 + 52));
  v14 = *v13;
  v15 = *(v13 + 8);

  if ((v15 & 1) == 0)
  {
    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v14 = v25;
  }

  sub_23BB5D7CC(a1, v8);
  v25 = *(v3 + *(a1 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF68();
  v17 = v24;
  if (v24)
  {
  }

  v18 = v17 != 0;
  v19 = *(v3 + 24);
  v20 = (v19 & 5) == 0 || (v19 & 2) != 0;
  *a2 = v14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2130);
  result = sub_23B9A71D0(v8, a2 + v21[13], &qword_27E197BB0);
  *(a2 + v21[14]) = v18;
  *(a2 + v21[15]) = v20;
  return result;
}

void sub_23BB5F980()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v156 = v4;
  v143 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_5();
  v140 = v10;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_3(&v127 - v12);
  OUTLINED_FUNCTION_3_2();
  v159 = v13;
  v155 = *(v14 + 64);
  MEMORY[0x28223BE20](v15);
  v158 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2130);
  OUTLINED_FUNCTION_13_0(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = (&v127 - v19);
  v21 = *(v3 + 16);
  OUTLINED_FUNCTION_3_2();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v157 = *(v3 + 24);
  v28 = v157;
  v138 = sub_23BB62570();
  v172 = v21;
  v173 = &type metadata for AnySubscriptionStoreControlStyle;
  v174 = MEMORY[0x277CE11C8];
  v175 = v28;
  v176 = v138;
  v177 = MEMORY[0x277CE11C0];
  v29 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  OUTLINED_FUNCTION_7();
  v144 = v30;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(255);
  v131 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v132 = v34;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v36);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  v37 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v141 = v38;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2140);
  v142 = v37;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v146 = v41;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v43);
  v147 = v44;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v151 = v45;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v47);
  v152 = v48;
  v154 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v153 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_5();
  v148 = v51;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13_3(&v127 - v53);
  (*(v23 + 16))(v27, v1 + *(v3 + 44), v21);
  sub_23BB5F720(v3, v20);
  v54 = *(v1 + *(v3 + 48));

  v55 = v157;
  sub_23BAE69D8(v27, v20, v54, v21, &type metadata for AnySubscriptionStoreControlStyle, MEMORY[0x277CE11C8], v157, v138, MEMORY[0x277CE11C0], v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  WitnessTable = swift_getWitnessTable();
  v57 = v129;
  sub_23BB74EC8(v54 != 0, v29, WitnessTable);
  OUTLINED_FUNCTION_13_16();
  v58(v33, v29);
  v60 = v158;
  v59 = v159;
  v61 = *(v159 + 16);
  v137 = v159 + 16;
  v136 = v61;
  (v61)(v158, v1, v3);
  v62 = *(v59 + 80);
  v63 = v59;
  v64 = (v62 + 32) & ~v62;
  v135 = v62;
  v134 = v64 + v155;
  v65 = swift_allocObject();
  v155 = v21;
  *(v65 + 16) = v21;
  *(v65 + 24) = v55;
  v66 = *(v63 + 32);
  v138 = v64;
  v144 = v3;
  v67 = v3;
  v68 = v130;
  v159 = v63 + 32;
  v133 = v66;
  v66(v65 + v64, v60, v67);
  v69 = sub_23BB62644();
  v170 = WitnessTable;
  v171 = v69;
  v70 = v131;
  v71 = swift_getWitnessTable();
  OUTLINED_FUNCTION_39_5();
  sub_23BA90E78(v72, v73);

  OUTLINED_FUNCTION_13_16();
  v74 = v139;
  v75(v57, v70);
  swift_getKeyPath();
  v132 = v1;
  v76 = v140;
  sub_23BAC75B8(*v1, v74);
  sub_23B9A721C(v74, v76, qword_27E197A68);
  v77 = OUTLINED_FUNCTION_76();
  if (__swift_getEnumTagSinglePayload(v77, v78, v143) != 1)
  {
    sub_23BB65314(v76, v128, type metadata accessor for Subscription);
    swift_getKeyPath();
    sub_23B9FCDA8();
    v80 = v79;
    v82 = v81;

    v83 = sub_23B9D4CA8(v80, v82);

    if ((v83 & 1) == 0)
    {
      swift_getKeyPath();
      sub_23B9FCDA8();
      v84 = v86;
      v85 = v87;

      OUTLINED_FUNCTION_17_15();
      sub_23B9846E8(v74, qword_27E197A68);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_17_15();
  }

  sub_23B9846E8(v74, qword_27E197A68);
  v84 = 0;
  v85 = 0;
LABEL_6:
  v172 = v84;
  v173 = v85;
  OUTLINED_FUNCTION_13_6();
  v90 = sub_23B97B518(v88, v89);
  v168 = v71;
  v169 = v90;
  v143 = MEMORY[0x277CDFAD8];
  v91 = v142;
  v92 = swift_getWitnessTable();
  v93 = v145;
  sub_23BBDB748();

  OUTLINED_FUNCTION_13_16();
  v94(v68, v91);
  v95 = v144;
  v96 = (v132 + *(v144 + 112));
  v97 = *v96;
  v98 = *(v96 + 1);
  v166 = v97;
  v167 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF88();
  v99 = v172;
  v100 = v173;
  v101 = v174;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF68();
  OUTLINED_FUNCTION_1_15();
  v104 = sub_23B97B518(v102, v103);
  v164 = v92;
  v165 = v104;
  v105 = v147;
  v106 = swift_getWitnessTable();
  v107 = v149;
  sub_23BBD2090(v99, v100, v101, &v172, v105, v106);

  sub_23B9846E8(&v172, &qword_27E19A9E8);
  OUTLINED_FUNCTION_13_16();
  v108(v93, v105);
  v109 = v158;
  OUTLINED_FUNCTION_35_7();
  v136();
  v110 = swift_allocObject();
  v111 = v157;
  *(v110 + 16) = v155;
  *(v110 + 24) = v111;
  v133(v110 + v138, v109, v95);
  v112 = sub_23BA1653C();
  v162 = v106;
  v163 = v112;
  v113 = v152;
  v114 = swift_getWitnessTable();
  sub_23BBDBBF8();

  OUTLINED_FUNCTION_13_16();
  v115(v107, v113);
  v160 = v114;
  v161 = MEMORY[0x277CE0790];
  v116 = v154;
  swift_getWitnessTable();
  v117 = v150;
  OUTLINED_FUNCTION_35_7();
  sub_23B9D2D88(v118, v119, v120);
  v121 = *(v153 + 8);
  v122 = OUTLINED_FUNCTION_36_4();
  v121(v122);
  OUTLINED_FUNCTION_35_7();
  sub_23B9D2D88(v123, v124, v125);
  (v121)(v117, v116);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB6059C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23BB5D7CC(v3, v2);
  v4 = sub_23BB5BD28();
  sub_23B9846E8(v2, &qword_27E197BB0);
  return v4 & 1;
}

uint64_t sub_23BB60668(uint64_t a1)
{
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23BB607E8(v6);
  v7 = (a1 + *(v6 + 76));
  v8 = *v7;
  LOBYTE(v6) = *(v7 + 8);

  if ((v6 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v8, 0);
    result = (*(v3 + 8))(v5, v2);
    v8 = v11[1];
  }

  if (v8)
  {
    sub_23BB160D8();
  }

  return result;
}

uint64_t sub_23BB607E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - v4;
  v50 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  MEMORY[0x28223BE20](v50);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = sub_23BBDA928();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = v1;
  v16 = v1 + *(a1 + 76);
  v17 = *v16;
  v18 = *(v16 + 8);

  v19 = v17;
  HIDWORD(v52) = v18;
  if ((v18 & 1) == 0)
  {
    sub_23BBDD5A8();
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v17, 0);
    (*(v55 + 8))(v15, v56);
    v19 = __dst[0];
  }

  if (v19)
  {
    v22 = v53;
    v21 = v54;
    sub_23BB5D7CC(v53, v12);
    HIDWORD(v49) = sub_23BB5AF48();
    sub_23B9846E8(v12, &qword_27E197BB0);
    v23 = v21 + *(v22 + 52);
    v24 = *v23;
    v25 = *(v23 + 8);

    if ((v25 & 1) == 0)
    {
      sub_23BBDD5A8();
      v26 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v55 + 8))(v15, v56);
      v24 = __dst[0];
    }

    sub_23BB5D7CC(v53, v9);
    sub_23B9B79E0();
    sub_23BB165DC(BYTE4(v49) & 1, v24, v9, v6, v27, v28, v29, v30, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0]);

    sub_23BB65094(v6, type metadata accessor for SubscriptionStorePolicyConfiguration);
    sub_23B9846E8(v9, &qword_27E197BB0);
  }

  v31 = v17;
  v32 = BYTE4(v52);
  if ((v52 & 0x100000000) == 0)
  {
    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v17, 0);
    (*(v55 + 8))(v15, v56);
    v31 = __dst[0];
  }

  v35 = v53;
  v34 = v54;
  if (v31)
  {
    v36 = *(v53 + 80);
    memcpy(__dst, (v54 + v36), 0x4AuLL);
    if ((__dst[9] & 0x100) != 0)
    {
      memcpy(v59, (v54 + v36), sizeof(v59));
      memcpy(v57, (v54 + v36), 0x4AuLL);
      sub_23B9E6BA4(v57, v58);
    }

    else
    {

      sub_23BBDD5A8();
      v37 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9846E8(__dst, &qword_27E19A390);
      (*(v55 + 8))(v15, v56);
    }

    memcpy(v58, v59, 0x49uLL);
    sub_23BB167DC(v58);

    memcpy(v57, v58, 0x49uLL);
    sub_23B9E64A4(v57);
  }

  if ((v32 & 1) == 0)
  {
    sub_23BBDD5A8();
    v39 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v17, 0);
    result = (*(v55 + 8))(v15, v56);
    v17 = __dst[0];
  }

  if (v17)
  {
    v40 = v34 + *(v35 + 84);
    v41 = *v40;
    if (*(v40 + 8) == 1)
    {
      LOWORD(__dst[0]) = *v40;
      BYTE2(__dst[0]) = BYTE2(v41);
      BYTE3(__dst[0]) = BYTE3(v41);
      BYTE4(__dst[0]) = BYTE4(v41);
    }

    else
    {

      sub_23BBDD5A8();
      v42 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v41, 0);
      (*(v55 + 8))(v15, v56);
    }

    v43 = v34 + *(v35 + 88);
    v44 = *v43;
    v45 = *(v43 + 8);

    if ((v45 & 1) == 0)
    {
      sub_23BBDD5A8();
      v46 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(v44, 0);
      (*(v55 + 8))(v15, v56);
      v44 = __dst[0];
    }

    if (v44)
    {
    }

    v47 = v51;
    sub_23B9B79E0();
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v50);
    sub_23BB163B8();

    return sub_23B9846E8(v47, &qword_27E1A0BC0);
  }

  return result;
}

uint64_t sub_23BB60FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = sub_23BBDA928();
  v8[38] = v9;
  v8[39] = *(v9 - 8);
  v8[40] = swift_task_alloc();
  v10 = sub_23BBDC5F8();
  v8[41] = v10;
  v8[42] = *(v10 - 8);
  v8[43] = swift_task_alloc();
  type metadata accessor for PurchaseAction();
  v8[44] = swift_task_alloc();
  type metadata accessor for Subscription();
  v8[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  sub_23BBDD308();
  v8[48] = sub_23BBDD2F8();
  v12 = sub_23BBDD2D8();
  v8[49] = v12;
  v8[50] = v11;

  return MEMORY[0x2822009F8](sub_23BB611CC, v12, v11);
}

uint64_t sub_23BB611CC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v23 = *(v0 + 344);
  v22 = *(v0 + 328);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  sub_23BBCA338(v1);
  v6 = type metadata accessor for PurchaseConfigurationEvent(0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  sub_23BB629E0(v5, v2, type metadata accessor for Subscription);
  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v12 = v11;
  *(v0 + 408) = sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v14 = *(v13 + 8);
  *(v0 + 416) = v14;
  *(v0 + 424) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v2);
  v15 = (v1 + *(v6 + 44));

  *v15 = v10;
  v15[1] = v12;
  v16 = type metadata accessor for SubscriptionStoreStaticView();
  *(v0 + 432) = v16;
  memcpy((v0 + 16), (v4 + *(v16 + 100)), 0x59uLL);
  sub_23BA5DACC(v0 + 112);
  sub_23BB629E0(v5, v2, type metadata accessor for Subscription);
  sub_23B9B7654();
  v17 = type metadata accessor for SubscriptionStoreControlOption(0);
  *(v0 + 440) = v17;
  *(v0 + 108) = *(v17 + 20);
  (*(v3 + 104))(v23, *MEMORY[0x277CDD088], v22);
  v18 = swift_task_alloc();
  *(v0 + 448) = v18;
  v18[2] = v20;
  v18[3] = v21;
  v18[4] = v4;

  return MEMORY[0x2822009F8](sub_23BB613C0, 0, 0);
}

uint64_t sub_23BB613C0()
{
  *(v0 + 456) = sub_23BA5E908();
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_23BB614AC;

  return sub_23BA5EA98();
}

uint64_t sub_23BB614AC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  OUTLINED_FUNCTION_43_0();
  v24 = *(v4 + 416);
  OUTLINED_FUNCTION_43_0();
  v23 = *(v5 + 408);
  OUTLINED_FUNCTION_43_0();
  v22 = *(v6 + 360);
  OUTLINED_FUNCTION_43_0();
  v8 = *(v7 + 352);
  v9 = v1[43];
  v10 = v1[42];
  v11 = v1[41];
  v12 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v13 = v12;

  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v14 + 112));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v15 + 128));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v16 + 144));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v17 + 160));
  *(v2 + 25) = *(v2 + 11);
  *(v2 + 216) = *(v2 + 192);
  sub_23B9846E8((v2 + 25), &qword_27E19B400);

  (*(v10 + 8))(v9, v11);
  sub_23BB65094(v8, type metadata accessor for PurchaseAction);
  v24(v22, v23);
  OUTLINED_FUNCTION_43_0();
  v19 = *(v18 + 400);
  v20 = v1[49];

  return MEMORY[0x2822009F8](sub_23BB617B8, v20, v19);
}

uint64_t sub_23BB617B8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 272);

  v3 = (v2 + *(v1 + 76));
  v4 = *v3;
  v5 = *(v3 + 8);

  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v4, 0);
    (*(v8 + 8))(v7, v9);
    v6 = *(v0 + 240);
  }

  if (v6)
  {
    v11 = *(v0 + 440);
    v12 = *(v0 + 368);
    v13 = *(v0 + 264);
    sub_23B9A721C(*(v0 + 376), v12, &qword_27E19B3F8);
    v14 = *(v13 + *(v11 + 24));
    sub_23BB5C450(v12);
    sub_23B9846E8(v12, &qword_27E19B3F8);
    v15 = v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex;
    *v15 = v14;
    *(v15 + 8) = 0;
  }

  if ((v5 & 1) == 0)
  {
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 304);
    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v4, 0);
    (*(v17 + 8))(v16, v18);
    v4 = *(v0 + 248);
  }

  if (v4)
  {
    sub_23BB5D578();
  }

  v20 = *(v0 + 376);
  *(v0 + 224) = *(*(v0 + 272) + *(*(v0 + 432) + 104));
  *(v0 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF78();
  sub_23B9846E8(v20, &qword_27E19B3F8);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23BB61A70(uint64_t a1, uint64_t a2)
{
  sub_23BA160B0(a1, v9);
  v3 = type metadata accessor for SubscriptionStoreStaticView();
  sub_23B9A721C(v9, v8, &qword_27E19A9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF78();
  sub_23B9846E8(v9, &qword_27E19A9E8);
  v4 = (a2 + *(v3 + 112));
  v5 = *v4;
  v6 = *(v4 + 1);
  v9[0] = v5;
  v10 = v6;
  v8[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BB61B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v83 = a4;
  v94 = a5;
  v95 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v75 - v10;
  v11 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v75 - v14;
  v87 = sub_23BBDCB58();
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SubscriptionOfferManager();
  MEMORY[0x28223BE20](v84);
  v78 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BBDA928();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23BBDCDB8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F0);
  MEMORY[0x28223BE20](v25 - 8);
  v90 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v75 - v29;
  v85 = v22;
  v86 = v21;
  v31 = v22;
  v32 = v24;
  v33 = *(v31 + 16);
  v91 = a2;
  v33(v24, a2, v21, v28);
  v34 = type metadata accessor for SubscriptionStoreStaticView();
  v35 = a3 + v34[10];
  v36 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v37 = *(v35 + *(v36 + 28) + 16);
  v77 = *(v35 + *(v36 + 20));
  v38 = a3 + v34[23];
  v39 = *v38;
  v40 = *(v38 + 8);
  LODWORD(v38) = *(v38 + 16);
  v89 = v30;
  v83 = v37;
  if (v38 == 1)
  {

    v81 = v40;
    v82 = v39;
    sub_23BA15604(v39, v40, 1);
  }

  else
  {

    sub_23BA15604(v39, v40, 0);
    sub_23BBDD5A8();
    v41 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BA15630(v39, v40, 0);
    (*(v18 + 8))(v20, v17);
    v81 = v97;
    v82 = v96;
  }

  v42 = v17;
  v43 = v18;
  v44 = a3 + v34[24];
  v46 = *v44;
  v45 = *(v44 + 8);
  if (*(v44 + 16) == 1)
  {
    sub_23BA1569C(*v44);
  }

  else
  {

    sub_23BBDD5A8();
    v47 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BA15630(v46, v45, 0);
    (*(v18 + 8))(v20, v42);
    v46 = v96;
    v45 = v97;
  }

  v48 = a3 + v34[14];
  v49 = *v48;
  v50 = *(v48 + 8);

  if ((v50 & 1) == 0)
  {
    sub_23BBDD5A8();
    v51 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v49, 0);
    (*(v43 + 8))(v20, v42);
    v49 = v96;
  }

  v53 = v87;
  v52 = v88;
  sub_23BBDC8F8();
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    (*(v85 + 8))(v32, v86);

    sub_23BA1565C(v46);
    sub_23BA1565C(v82);

    sub_23B9846E8(v52, &qword_27E197B90);
    v54 = 1;
    v55 = v93;
    v56 = v89;
    v57 = v84;
  }

  else
  {
    v58 = v78;
    v59 = v79;
    v60 = *(v80 + 32);
    v60(v79, v52, v53);
    (*(v85 + 32))(v58, v32, v86);
    v57 = v84;
    v60((v58 + *(v84 + 20)), v59, v53);
    *(v58 + v57[6]) = v83;
    *(v58 + v57[7]) = v77;
    v61 = (v58 + v57[8]);
    v62 = v81;
    *v61 = v82;
    v61[1] = v62;
    v63 = (v58 + v57[9]);
    *v63 = v46;
    v63[1] = v45;
    *(v58 + v57[10]) = v49;
    v56 = v89;
    sub_23BB65314(v58, v89, type metadata accessor for SubscriptionOfferManager);
    v54 = 0;
    v55 = v93;
  }

  __swift_storeEnumTagSinglePayload(v56, v54, 1, v57);
  v64 = v92;
  sub_23BB629E0(v91, v92, type metadata accessor for Subscription);
  v65 = v90;
  sub_23B9A721C(v56, v90, &qword_27E19B3F0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v57) != 1)
  {
    if (*(v65 + v57[10]))
    {

      v68 = v76;
      sub_23BADCDAC(v67, v76);
      v69 = sub_23BBDCC88();
      if (__swift_getEnumTagSinglePayload(v68, 1, v69) != 1)
      {
        sub_23B9846E8(v56, &qword_27E19B3F0);

        (*(*(v69 - 8) + 32))(v55, v68, v69);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v69);
        goto LABEL_21;
      }

      sub_23BADD250();

      sub_23B9846E8(v56, &qword_27E19B3F0);
      if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
      {
LABEL_21:
        sub_23BB65094(v65, type metadata accessor for SubscriptionOfferManager);
        goto LABEL_22;
      }

      v70 = &unk_27E19FEF0;
      v71 = v68;
    }

    else
    {
      sub_23BADD438(v55);
      v70 = &qword_27E19B3F0;
      v71 = v56;
    }

    sub_23B9846E8(v71, v70);
    goto LABEL_21;
  }

  sub_23B9846E8(v56, &qword_27E19B3F0);
  sub_23B9846E8(v65, &qword_27E19B3F0);
  v66 = sub_23BBDCC88();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v66);
LABEL_22:
  v72 = v94;
  sub_23BB65314(v64, v94, type metadata accessor for Subscription);
  v73 = type metadata accessor for SubscriptionStoreControlOption(0);
  result = sub_23B9A71D0(v55, v72 + *(v73 + 20), &unk_27E19FEF0);
  *(v72 + *(v73 + 24)) = v95;
  return result;
}

unint64_t sub_23BB62570()
{
  result = qword_27E1A2138;
  if (!qword_27E1A2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2138);
  }

  return result;
}

uint64_t sub_23BB625C8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_23B979500(result);
  }

  else
  {
  }
}

uint64_t sub_23BB625D4()
{
  v0 = type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_32_8(*(v1 + 80));

  return sub_23BB6059C();
}

unint64_t sub_23BB62644()
{
  result = qword_27E19F270;
  if (!qword_27E19F270)
  {
    type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F270);
  }

  return result;
}

uint64_t sub_23BB626A4()
{
  v0 = type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_13_0(v0);
  v2 = OUTLINED_FUNCTION_32_8(*(v1 + 80));

  return sub_23BB60668(v2);
}

uint64_t sub_23BB62714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDCA68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_23BB62740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23B9FCC2C();
  v7 = v6;

  swift_getKeyPath();
  sub_23B9FCC2C();
  v9 = v8;

  if (v7 == v9)
  {
    v10 = type metadata accessor for Subscription();
    v11 = *(v10 + 20);
    v12 = *(a1 + v11 + 8);
    if (v12 == 2)
    {
      v13 = v10;
      v14 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v16 = v15;
      v11 = *(v13 + 20);
    }

    else
    {
      v14 = *(a1 + v11);
      v16 = v12 & 1;
    }

    v22 = a2 + v11;
    v23 = *(v22 + 8);
    if (v23 == 2)
    {
      v24 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v26 = v25;
    }

    else
    {
      v24 = *v22;
      v26 = v23 & 1;
    }

    v27 = v23 == 2;
    v28 = v12 == 2;
    v29 = sub_23BBA7A24(v14, v16, v28, v24, v26, v27);
    sub_23B979A38(v24, v26, v27);
    sub_23B979A38(v14, v16, v28);
    v21 = 4;
    if (v29)
    {
      v21 = 1;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_23B9FCC2C();
    v18 = v17;

    swift_getKeyPath();
    sub_23B9FCC2C();
    v20 = v19;

    v21 = 2;
    if (v18 < v20)
    {
      v21 = 8;
    }
  }

  return (v21 & a3) != 0;
}

unint64_t sub_23BB62914()
{
  result = qword_27E1A2158;
  if (!qword_27E1A2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2158);
  }

  return result;
}

uint64_t sub_23BB62968()
{

  return swift_deallocObject();
}

uint64_t sub_23BB629A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_23BB629E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BB62A3C()
{
  v3 = *(v1 + 16);
  type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_19_0();
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  v6 = v5 + v0[10];
  v7 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v8 + 8))(v6);
  }

  v9 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  v10 = v6 + *(v9 + 28);

  OUTLINED_FUNCTION_20_17();
  (*(v11 + 8))(v5 + v12, v3);

  v13 = OUTLINED_FUNCTION_18_14(v5 + v0[14]);
  j__swift_release(v13, v14);
  v15 = OUTLINED_FUNCTION_18_14(v5 + v0[15]);
  sub_23B97B450(v15, v16);
  v17 = OUTLINED_FUNCTION_19_25(v5 + v0[16]);
  sub_23BB625C8(v17, v18, v19);
  v20 = v5 + v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v21 = OUTLINED_FUNCTION_37_5();
    if (v21 == 1)
    {
    }

    else if (!v21)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v22 + 8))(v20);
    }

    type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v23 = OUTLINED_FUNCTION_16_17();
    if (v23 == 1)
    {
    }

    else if (!v23)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v24 + 8))(v20 + v2);
    }

    v25 = OUTLINED_FUNCTION_13_27(*(v10 + 24));
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    v27 = OUTLINED_FUNCTION_13_27(*(v10 + 28));
    if (v28)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
  }

  v29 = v5 + v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v30 + 8))(v29);
  }

  else
  {
  }

  v31 = OUTLINED_FUNCTION_18_14(v5 + v0[19]);
  j__swift_release(v31, v32);
  OUTLINED_FUNCTION_4_37(v5 + v0[20]);
  v33 = OUTLINED_FUNCTION_18_14(v5 + v0[21]);
  sub_23B97B450(v33, v34);
  v35 = OUTLINED_FUNCTION_18_14(v5 + v0[22]);
  j__swift_release(v35, v36);
  v37 = OUTLINED_FUNCTION_19_25(v5 + v0[23]);
  sub_23BA15630(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_19_25(v5 + v0[24]);
  sub_23BA15630(v40, v41, v42);
  v43 = v5 + v0[25];
  OUTLINED_FUNCTION_6_31();
  sub_23BA15630(*(v43 + 72), *(v43 + 80), *(v43 + 88));

  if (*(v5 + v0[27] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + v0[27]);
  }

  return swift_deallocObject();
}

void sub_23BB62E30(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_39_5();
  v5 = type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_25_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_23BB5F1F4(a1, (v2 + v10), v12, v13, a2);
}

uint64_t objectdestroyTm_13()
{
  v3 = *(v1 + 16);
  type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_19_0();
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  v6 = v5 + v0[10];
  v7 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v8 + 8))(v6);
  }

  v9 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  v10 = v6 + *(v9 + 28);

  OUTLINED_FUNCTION_20_17();
  (*(v11 + 8))(v5 + v12, v3);

  v13 = OUTLINED_FUNCTION_18_14(v5 + v0[14]);
  j__swift_release(v13, v14);
  v15 = OUTLINED_FUNCTION_18_14(v5 + v0[15]);
  sub_23B97B450(v15, v16);
  v17 = OUTLINED_FUNCTION_19_25(v5 + v0[16]);
  sub_23BB625C8(v17, v18, v19);
  v20 = v5 + v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v21 = OUTLINED_FUNCTION_37_5();
    if (v21 == 1)
    {
    }

    else if (!v21)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v22 + 8))(v20);
    }

    type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v23 = OUTLINED_FUNCTION_16_17();
    if (v23 == 1)
    {
    }

    else if (!v23)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v24 + 8))(v20 + v2);
    }

    v25 = OUTLINED_FUNCTION_13_27(*(v10 + 24));
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    v27 = OUTLINED_FUNCTION_13_27(*(v10 + 28));
    if (v28)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
  }

  v29 = v5 + v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v30 + 8))(v29);
  }

  else
  {
  }

  v31 = OUTLINED_FUNCTION_18_14(v5 + v0[19]);
  j__swift_release(v31, v32);
  OUTLINED_FUNCTION_4_37(v5 + v0[20]);
  v33 = OUTLINED_FUNCTION_18_14(v5 + v0[21]);
  sub_23B97B450(v33, v34);
  v35 = OUTLINED_FUNCTION_18_14(v5 + v0[22]);
  j__swift_release(v35, v36);
  v37 = OUTLINED_FUNCTION_19_25(v5 + v0[23]);
  sub_23BA15630(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_19_25(v5 + v0[24]);
  sub_23BA15630(v40, v41, v42);
  v43 = v5 + v0[25];
  OUTLINED_FUNCTION_6_31();
  sub_23BA15630(*(v43 + 72), *(v43 + 80), *(v43 + 88));

  if (*(v5 + v0[27] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + v0[27]);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB632CC(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  OUTLINED_FUNCTION_39_5();
  v4 = type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_13_0(v4);

  return sub_23BB5EA0C(a1, a2);
}

uint64_t sub_23BB63360()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = (type metadata accessor for SubscriptionStoreControlOption(0) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = v4 + *(*v3 + 64);
  OUTLINED_FUNCTION_35_7();
  type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_19_0();
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  v8 = v0 + v4;
  v9 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = v3[7];
  v13 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v8 + v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  v14 = v0 + v7;

  v15 = v0 + v7 + v1[10];
  v16 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v11(v15, v9);
  }

  type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  OUTLINED_FUNCTION_20_17();
  (*(v17 + 8))(v14 + v18, v2);

  v19 = OUTLINED_FUNCTION_9_26(v1[14]);
  j__swift_release(v19, v20);
  v21 = OUTLINED_FUNCTION_9_26(v1[15]);
  sub_23B97B450(v21, v22);
  v23 = OUTLINED_FUNCTION_19_25(v14 + v1[16]);
  sub_23BB625C8(v23, v24, v25);
  v26 = v14 + v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v27 = OUTLINED_FUNCTION_37_5();
    if (v27 == 1)
    {
    }

    else if (!v27)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v28 + 8))(v26);
    }

    v29 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v30 = v29[5];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v32 + 8))(v26 + v30);
    }

    v33 = OUTLINED_FUNCTION_13_27(v29[6]);
    if (v34)
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v35 = OUTLINED_FUNCTION_13_27(v29[7]);
    if (v36)
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  else
  {
  }

  v37 = v14 + v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  OUTLINED_FUNCTION_53_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v38 + 8))(v37);
  }

  else
  {
  }

  v39 = OUTLINED_FUNCTION_9_26(v1[19]);
  j__swift_release(v39, v40);
  OUTLINED_FUNCTION_4_37(v14 + v1[20]);
  v41 = OUTLINED_FUNCTION_9_26(v1[21]);
  sub_23B97B450(v41, v42);
  v43 = OUTLINED_FUNCTION_9_26(v1[22]);
  j__swift_release(v43, v44);
  v45 = OUTLINED_FUNCTION_19_25(v14 + v1[23]);
  sub_23BA15630(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_19_25(v14 + v1[24]);
  sub_23BA15630(v48, v49, v50);
  v51 = v14 + v1[25];
  OUTLINED_FUNCTION_6_31();
  sub_23BA15630(*(v51 + 72), *(v51 + 80), *(v51 + 88));

  if (*(v14 + v1[27] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v14 + v1[27]);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB63840(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_25_0(v7);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  OUTLINED_FUNCTION_35_7();
  v12 = type metadata accessor for SubscriptionStoreStaticView();
  OUTLINED_FUNCTION_25_0(v12);
  v14 = (v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = (*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[2];
  v18 = v1[3];
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_23BA15FB8;

  return sub_23BB60FD8(a1, v17, v18, v1 + v9, v1 + v14, v1 + v16, v6, v5);
}

uint64_t sub_23BB639CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_23_14(v1);

  return v3(v2);
}

uint64_t sub_23BB63A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_23_14(v1);

  return v3(v2);
}

void sub_23BB63B18(uint64_t *a1, char a2)
{
  v4 = *(type metadata accessor for Subscription() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23B9BC814();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_23BB63BD0(v8, a2 & 1);
  *a1 = v5;
}

void sub_23BB63BD0(unint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = sub_23BBDDA18();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Subscription();
        v8 = sub_23BBDD288();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for Subscription() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_23BB63F7C(v10, v11, a1, v6, a2 & 1);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_23BB63D0C(0, v4, 1, a1, a2 & 1);
  }
}

void sub_23BB63D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v37 = a5;
  v36 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_23BB629E0(v22, v17, type metadata accessor for Subscription);
      sub_23BB629E0(v23, v13, type metadata accessor for Subscription);
      v24 = sub_23BA543B4(v17, v13, v37 & 1);
      sub_23BB65094(v13, type metadata accessor for Subscription);
      sub_23BB65094(v17, type metadata accessor for Subscription);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_23BB65314(v22, v35, type metadata accessor for Subscription);
        swift_arrayInitWithTakeFrontToBack();
        sub_23BB65314(v25, v23, type metadata accessor for Subscription);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_23BB63F7C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v145 = a5;
  v131 = a1;
  v137 = type metadata accessor for Subscription();
  v143 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v132 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v124 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v124 - v15;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v124 - v19;
  MEMORY[0x28223BE20](v21);
  v144 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_106:
    v142 = *v131;
    if (v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_108;
    }

    goto LABEL_151;
  }

  v129 = &v124 - v22;
  v126 = a4;
  v127 = v20;
  v138 = v25;
  v134 = v24;
  v135 = v23;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v139 = v16;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v141 = v26;
      v31 = *v144;
      v32 = *(v143 + 72);
      v133 = v27 + 1;
      v130 = v27;
      v33 = v31 + v32 * v30;
      v34 = v129;
      sub_23BB629E0(v33, v129, type metadata accessor for Subscription);
      v142 = v31;
      v35 = v31 + v32 * v130;
      v36 = v130;
      v37 = v127;
      sub_23BB629E0(v35, v127, type metadata accessor for Subscription);
      LODWORD(v140) = sub_23BA543B4(v34, v37, v145 & 1);
      if (v6)
      {
        sub_23BB65094(v37, type metadata accessor for Subscription);
        sub_23BB65094(v129, type metadata accessor for Subscription);
        goto LABEL_120;
      }

      v38 = v33;
      v128 = v28;
      sub_23BB65094(v37, type metadata accessor for Subscription);
      sub_23BB65094(v129, type metadata accessor for Subscription);
      v39 = v36 + 2;
      v40 = v141;
      v41 = v142 + v32 * (v36 + 2);
      v30 = v133;
      while (1)
      {
        v42 = v39;
        if (v30 + 1 >= v40)
        {
          break;
        }

        v43 = v6;
        v44 = v32;
        v45 = v30;
        v46 = v138;
        sub_23BB629E0(v41, v138, type metadata accessor for Subscription);
        v47 = v139;
        sub_23BB629E0(v38, v139, type metadata accessor for Subscription);
        v48 = sub_23BA543B4(v46, v47, v145 & 1);
        v142 = v43;
        if (v43)
        {
          sub_23BB65094(v47, type metadata accessor for Subscription);
          sub_23BB65094(v46, type metadata accessor for Subscription);

          return;
        }

        v49 = v48;
        sub_23BB65094(v47, type metadata accessor for Subscription);
        sub_23BB65094(v46, type metadata accessor for Subscription);
        v32 = v44;
        v41 += v44;
        v38 += v44;
        v30 = v45 + 1;
        v39 = v42 + 1;
        v40 = v141;
        v6 = v142;
        if ((v140 ^ v49))
        {
          goto LABEL_11;
        }
      }

      v30 = v40;
LABEL_11:
      if (v140)
      {
        if (v30 < v130)
        {
          goto LABEL_145;
        }

        if (v130 >= v30)
        {
          v28 = v128;
          v29 = v130;
          goto LABEL_34;
        }

        if (v40 >= v42)
        {
          v50 = v42;
        }

        else
        {
          v50 = v40;
        }

        v51 = v32 * (v50 - 1);
        v52 = v32 * v50;
        v53 = v130 * v32;
        v133 = v30;
        v54 = v130;
        do
        {
          if (v54 != --v30)
          {
            v55 = *v144;
            if (!*v144)
            {
              goto LABEL_149;
            }

            sub_23BB65314(v55 + v53, v132, type metadata accessor for Subscription);
            v56 = v53 < v51 || v55 + v53 >= v55 + v52;
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_23BB65314(v132, v55 + v51, type metadata accessor for Subscription);
          }

          ++v54;
          v51 -= v32;
          v52 -= v32;
          v53 += v32;
        }

        while (v54 < v30);
        v28 = v128;
        v30 = v133;
      }

      else
      {
        v28 = v128;
      }

      v29 = v130;
    }

LABEL_34:
    v57 = v144[1];
    if (v30 >= v57)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v30, v29))
    {
      goto LABEL_141;
    }

    if (v30 - v29 >= v126)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v29, v126))
    {
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      return;
    }

    if (v29 + v126 >= v57)
    {
      v58 = v144[1];
    }

    else
    {
      v58 = v29 + v126;
    }

    if (v58 < v29)
    {
      goto LABEL_144;
    }

    if (v30 != v58)
    {
      v128 = v28;
      v102 = *v144;
      v103 = *(v143 + 72);
      v104 = *v144 + v103 * (v30 - 1);
      v105 = -v103;
      v130 = v29;
      v106 = v29 - v30;
      v124 = v103;
      v125 = v58;
      v107 = v102 + v30 * v103;
      v108 = v135;
      do
      {
        v133 = v30;
        v140 = v107;
        v141 = v106;
        v142 = v104;
        v109 = v104;
        while (1)
        {
          v110 = v134;
          sub_23BB629E0(v107, v134, type metadata accessor for Subscription);
          sub_23BB629E0(v109, v108, type metadata accessor for Subscription);
          v111 = sub_23BA543B4(v110, v108, v145 & 1);
          v112 = v108;
          if (v6)
          {
            sub_23BB65094(v108, type metadata accessor for Subscription);
            sub_23BB65094(v110, type metadata accessor for Subscription);
            goto LABEL_120;
          }

          v113 = v111;
          sub_23BB65094(v112, type metadata accessor for Subscription);
          sub_23BB65094(v110, type metadata accessor for Subscription);
          if ((v113 & 1) == 0)
          {
            break;
          }

          if (!v102)
          {
            goto LABEL_148;
          }

          v114 = v136;
          sub_23BB65314(v107, v136, type metadata accessor for Subscription);
          swift_arrayInitWithTakeFrontToBack();
          sub_23BB65314(v114, v109, type metadata accessor for Subscription);
          v109 += v105;
          v107 += v105;
          v56 = __CFADD__(v106++, 1);
          v108 = v135;
          if (v56)
          {
            goto LABEL_103;
          }
        }

        v108 = v135;
LABEL_103:
        v30 = v133 + 1;
        v104 = v142 + v124;
        v106 = v141 - 1;
        v107 = v140 + v124;
      }

      while (v133 + 1 != v125);
      v30 = v125;
      v28 = v128;
      v29 = v130;
    }

LABEL_43:
    if (v30 < v29)
    {
      goto LABEL_140;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B9B7D34();
      v28 = v115;
    }

    v60 = *(v28 + 16);
    v61 = v60 + 1;
    if (v60 >= *(v28 + 24) >> 1)
    {
      sub_23B9B7D34();
      v28 = v116;
    }

    *(v28 + 16) = v61;
    v62 = v28 + 32;
    v63 = (v28 + 32 + 16 * v60);
    v64 = v133;
    *v63 = v29;
    v63[1] = v64;
    v142 = *v131;
    if (!v142)
    {
      goto LABEL_150;
    }

    if (v60)
    {
      break;
    }

LABEL_92:
    v26 = v144[1];
    v27 = v133;
    if (v133 >= v26)
    {
      goto LABEL_106;
    }
  }

  while (1)
  {
    v65 = v61 - 1;
    v66 = (v62 + 16 * (v61 - 1));
    v67 = (v28 + 16 * v61);
    if (v61 >= 4)
    {
      v72 = v62 + 16 * v61;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_128;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_129;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_131;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_134;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_139;
        }

        if (v70 < v96)
        {
          v65 = v61 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (v61 == 3)
    {
      v68 = *(v28 + 32);
      v69 = *(v28 + 40);
      v78 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      v71 = v78;
LABEL_63:
      if (v71)
      {
        goto LABEL_130;
      }

      v83 = *v67;
      v82 = v67[1];
      v84 = __OFSUB__(v82, v83);
      v85 = v82 - v83;
      v86 = v84;
      if (v84)
      {
        goto LABEL_133;
      }

      v87 = v66[1];
      v88 = v87 - *v66;
      if (__OFSUB__(v87, *v66))
      {
        goto LABEL_136;
      }

      if (__OFADD__(v85, v88))
      {
        goto LABEL_138;
      }

      if (v85 + v88 >= v70)
      {
        if (v70 < v88)
        {
          v65 = v61 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v61 < 2)
    {
      goto LABEL_132;
    }

    v90 = *v67;
    v89 = v67[1];
    v78 = __OFSUB__(v89, v90);
    v85 = v89 - v90;
    v86 = v78;
LABEL_78:
    if (v86)
    {
      goto LABEL_135;
    }

    v92 = *v66;
    v91 = v66[1];
    v78 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v78)
    {
      goto LABEL_137;
    }

    if (v93 < v85)
    {
      goto LABEL_92;
    }

LABEL_85:
    if (v65 - 1 >= v61)
    {
      break;
    }

    if (!*v144)
    {
      goto LABEL_146;
    }

    v97 = v28;
    v98 = (v62 + 16 * (v65 - 1));
    v99 = *v98;
    v28 = v62 + 16 * v65;
    v100 = *(v28 + 8);
    sub_23BB64A08(*v144 + *(v143 + 72) * *v98, *v144 + *(v143 + 72) * *v28, *v144 + *(v143 + 72) * v100, v142, v145 & 1);
    if (v6)
    {
      goto LABEL_120;
    }

    if (v100 < v99)
    {
      goto LABEL_122;
    }

    v101 = *(v97 + 16);
    if (v65 > v101)
    {
      goto LABEL_123;
    }

    *v98 = v99;
    v98[1] = v100;
    if (v65 >= v101)
    {
      goto LABEL_124;
    }

    v61 = v101 - 1;
    sub_23B9BD698((v28 + 16), v101 - 1 - v65, (v62 + 16 * v65));
    v28 = v97;
    *(v97 + 16) = v101 - 1;
    if (v101 <= 2)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
  v28 = sub_23B9BD684(v28);
LABEL_108:
  v117 = (v28 + 16);
  v118 = *(v28 + 16);
  while (v118 >= 2)
  {
    if (!*v144)
    {
      goto LABEL_147;
    }

    v119 = v28;
    v120 = (v28 + 16 * v118);
    v121 = *v120;
    v122 = &v117[2 * v118];
    v28 = *(v122 + 1);
    sub_23BB64A08(*v144 + *(v143 + 72) * *v120, *v144 + *(v143 + 72) * *v122, *v144 + *(v143 + 72) * v28, v142, v145 & 1);
    if (v6)
    {
      break;
    }

    if (v28 < v121)
    {
      goto LABEL_125;
    }

    if (v118 - 2 >= *v117)
    {
      goto LABEL_126;
    }

    *v120 = v121;
    v120[1] = v28;
    v123 = *v117 - v118;
    if (*v117 < v118)
    {
      goto LABEL_127;
    }

    v118 = *v117 - 1;
    sub_23B9BD698(v122 + 16, v123, v122);
    *v117 = v118;
    v28 = v119;
  }

LABEL_120:
}

void sub_23BB64A08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v73 = a5;
  v72 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v14);
  v71 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_66;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_67;
  }

  v74 = v6;
  v25 = v21 / v20;
  v77 = a1;
  v76 = a4;
  v26 = v23 / v20;
  if (v21 / v20 < v23 / v20)
  {
    v69 = &v63 - v17;
    sub_23B9B8848(a1, v21 / v20, a4);
    v27 = a2;
    v70 = a4 + v25 * v20;
    v75 = v70;
    v28 = a4;
    while (1)
    {
      v29 = v71;
      if (v28 >= v70 || v27 >= a3)
      {
        goto LABEL_64;
      }

      v31 = a3;
      v32 = v27;
      v33 = v69;
      sub_23BB629E0(v27, v69, type metadata accessor for Subscription);
      sub_23BB629E0(v28, v29, type metadata accessor for Subscription);
      v34 = v74;
      v35 = sub_23BA543B4(v33, v29, v73 & 1);
      v74 = v34;
      if (v34)
      {
        sub_23BB65094(v29, type metadata accessor for Subscription);
        sub_23BB65094(v33, type metadata accessor for Subscription);
        goto LABEL_64;
      }

      v36 = v35;
      sub_23BB65094(v29, type metadata accessor for Subscription);
      sub_23BB65094(v33, type metadata accessor for Subscription);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = v32;
      v38 = v32 + v20;
      if (a1 < v32 || a1 >= v38)
      {
        swift_arrayInitWithTakeFrontToBack();
        v27 = v32 + v20;
LABEL_36:
        a3 = v31;
        goto LABEL_37;
      }

      a3 = v31;
      if (a1 != v37)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v27 = v38;
LABEL_37:
      a1 += v20;
      v77 = a1;
    }

    if (a1 < v28 || a1 >= v28 + v20)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != v28)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v76 = v28 + v20;
    v28 += v20;
    v27 = v32;
    goto LABEL_36;
  }

  v68 = v13;
  v69 = v18;
  sub_23B9B8848(a2, v23 / v20, a4);
  v70 = a4;
  v41 = a4 + v26 * v20;
  v42 = -v20;
  v43 = v41;
  v44 = v74;
  v65 = -v20;
  v66 = a1;
LABEL_39:
  v45 = a2 + v42;
  v46 = a3;
  v63 = v43;
  v47 = v43;
  v71 = a2;
  v67 = a2 + v42;
  while (1)
  {
    if (v41 <= v70)
    {
      v77 = a2;
      v75 = v47;
      goto LABEL_64;
    }

    if (a2 <= a1)
    {
      v77 = a2;
      v75 = v63;
      goto LABEL_64;
    }

    v64 = v47;
    v48 = v45;
    v49 = v41;
    v50 = v41 + v42;
    v51 = v41 + v42;
    v52 = v68;
    v53 = v42;
    sub_23BB629E0(v51, v68, type metadata accessor for Subscription);
    v54 = v69;
    sub_23BB629E0(v48, v69, type metadata accessor for Subscription);
    v55 = sub_23BA543B4(v52, v54, v73 & 1);
    v74 = v44;
    if (v44)
    {
      break;
    }

    v56 = v55;
    v57 = &v46[v53];
    sub_23BB65094(v54, type metadata accessor for Subscription);
    sub_23BB65094(v52, type metadata accessor for Subscription);
    if (v56)
    {
      v60 = v46 < v71 || v57 >= v71;
      a1 = v66;
      v41 = v49;
      a3 = &v46[v53];
      if (v60)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v64;
        v42 = v65;
        v44 = v74;
      }

      else
      {
        v42 = v65;
        v43 = v64;
        v61 = v67;
        a2 = v67;
        v44 = v74;
        if (v46 != v71)
        {
          v43 = v64;
          v62 = v65;
          swift_arrayInitWithTakeBackToFront();
          v42 = v62;
          a2 = v61;
        }
      }

      goto LABEL_39;
    }

    v58 = v46 < v49 || v57 >= v49;
    a1 = v66;
    if (v58)
    {
      swift_arrayInitWithTakeFrontToBack();
      v46 += v53;
      v41 = v50;
      v47 = v50;
      a2 = v71;
      v44 = v74;
      v42 = v65;
      v45 = v67;
    }

    else
    {
      v47 = v50;
      v22 = v49 == v46;
      v46 += v53;
      v41 = v50;
      a2 = v71;
      v44 = v74;
      v42 = v65;
      v45 = v67;
      if (!v22)
      {
        v59 = v65;
        swift_arrayInitWithTakeBackToFront();
        v42 = v59;
        a2 = v71;
        v46 = v57;
        v41 = v50;
        v47 = v50;
      }
    }
  }

  sub_23BB65094(v54, type metadata accessor for Subscription);
  sub_23BB65094(v52, type metadata accessor for Subscription);
  v77 = v71;
  v75 = v64;
LABEL_64:
  sub_23BB64FB4(&v77, &v76, &v75);
}

uint64_t sub_23BB64FB4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Subscription();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23BB65094(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB6510C()
{
  sub_23BB62570();
  type metadata accessor for SubscriptionStoreStaticViewContainer();
  type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(255);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2140);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23BB62644();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  sub_23B97B518(v0, &qword_27E1A00A8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_39_5();
  sub_23B97B518(v1, v2);
  OUTLINED_FUNCTION_36_4();
  swift_getWitnessTable();
  sub_23BA1653C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB65314(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_4_37(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 73);
  v11 = *(a1 + 72);
  v10 = *(a1 + 64);

  sub_23B9E66F8(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_6_31()
{
  j__swift_release(*v0, *(v0 + 8));
  j__swift_release(*(v0 + 16), *(v0 + 24));
  j__swift_release(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_23BA15630(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_24@<X0>(char a1@<W8>)
{
  *(v2 + v1) = a1;

  return sub_23BB65094(v3, type metadata accessor for PurchaseConfigurationEvent);
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return sub_23BB65314(v1, v0, type metadata accessor for PurchaseConfigurationEvent);
}

uint64_t OUTLINED_FUNCTION_17_15()
{

  return sub_23BB65094(v0, type metadata accessor for Subscription);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_23B9A721C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_5()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return type metadata accessor for PurchaseConfigurationEvent(0);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_beginAccess();
}

uint64_t sub_23BB65634@<X0>(_BYTE *a1@<X8>)
{
  v5 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_initializer);
  if (v5 == 3)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v6 = type metadata accessor for SKLogger();
    v7 = __swift_project_value_buffer(v6, qword_27E1BFC88);
    v8 = sub_23BBDD588();
    v9 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v9))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v11 = OUTLINED_FUNCTION_3_7(4.8752e-34, v10);
    OUTLINED_FUNCTION_22_16(v11);
    v12 = 0xD00000000000002CLL;
    goto LABEL_11;
  }

  v2 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon);
  if (v2 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v13 = type metadata accessor for SKLogger();
    v7 = __swift_project_value_buffer(v13, qword_27E1BFC88);
    v8 = sub_23BBDD588();
    v14 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v14))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v16 = OUTLINED_FUNCTION_3_7(4.8752e-34, v15);
    OUTLINED_FUNCTION_22_16(v16);
    v12 = 0xD000000000000037;
    goto LABEL_11;
  }

  v3 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_style);
  if (v3 == 5)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v23 = type metadata accessor for SKLogger();
    v7 = __swift_project_value_buffer(v23, qword_27E1BFC88);
    v8 = sub_23BBDD588();
    v24 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v24))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v26 = OUTLINED_FUNCTION_3_7(4.8752e-34, v25);
    OUTLINED_FUNCTION_22_16(v26);
    v17 = v3 | 0x8000000000000000;
    v12 = 0xD000000000000026;
    goto LABEL_12;
  }

  v27 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder);
  if (v27 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v28 = type metadata accessor for SKLogger();
    v7 = __swift_project_value_buffer(v28, qword_27E1BFC88);
    v8 = sub_23BBDD588();
    v29 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v29))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v31 = OUTLINED_FUNCTION_3_7(4.8752e-34, v30);
    OUTLINED_FUNCTION_22_16(v31);
    v12 = 0xD000000000000036;
    goto LABEL_11;
  }

  v32 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesIcon);
  if (v32 != 2)
  {
    v37 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productType;
    swift_beginAccess();
    v38 = type metadata accessor for ProductViewBaseEvent(0);
    sub_23BB67144(v1 + v37, &a1[v38[6]]);
    *a1 = 2;
    a1[1] = v5;
    a1[v38[7]] = v2 & 1;
    a1[v38[8]] = v3;
    a1[v38[9]] = v27 & 1;
    a1[v38[10]] = v32 & 1;
    OUTLINED_FUNCTION_20_2();
    return __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v33 = type metadata accessor for SKLogger();
  v7 = __swift_project_value_buffer(v33, qword_27E1BFC88);
  v8 = sub_23BBDD588();
  v34 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_13_4(v34))
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v36 = OUTLINED_FUNCTION_3_7(4.8752e-34, v35);
    OUTLINED_FUNCTION_22_16(v36);
    v12 = 0xD000000000000029;
LABEL_11:
    v17 = v3 | 0x8000000000000000;
LABEL_12:
    *(v5 + 14) = sub_23BA5AB90(v12, v17, v42);
    _os_log_impl(&dword_23B970000, v7, v8, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v2, -1, -1);
    MEMORY[0x23EEB6DC0](v5, -1, -1);
  }

LABEL_13:

  type metadata accessor for ProductViewBaseEvent(0);
  v18 = OUTLINED_FUNCTION_8_39();

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t sub_23BB65A90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  OUTLINED_FUNCTION_19_26(v6, v7, OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID);
  sub_23BBDCD28();
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productType;
  OUTLINED_FUNCTION_20_18();
  sub_23BB672C0(v5, v1 + v12, &qword_27E1A2190);
  return swift_endAccess();
}

uint64_t sub_23BB65B78()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23BB65BEC(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  OUTLINED_FUNCTION_13_0(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v16;
  v17 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v52 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v59 = a6;
  v60 = a7;
  v61 = a8;
  v62 = a9;
  v23 = type metadata accessor for ProductView.Storage();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = (&v51 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v29);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v51 - v31;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_appearTimestamp;
  OUTLINED_FUNCTION_20_18();
  sub_23BB672C0(v32, v9 + v37, &qword_27E198900);
  swift_endAccess();
  *(v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView) = v54 != 0;
  *(v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesIcon) = v55;
  sub_23B99BD04(v56);
  sub_23BB66FE0();
  (*(v25 + 16))(v28, v58, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v52;
      (*(v52 + 32))(v22, v28, v17);
      v40 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      OUTLINED_FUNCTION_19_26(v40, v41, OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID);
      *(v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_initializer) = 1;
      v42 = v53;
      sub_23BBDCD28();
      (*(v39 + 8))(v22, v17);
      sub_23BBDC8A8();
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      v47 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productType;
      OUTLINED_FUNCTION_20_18();
      sub_23BB672C0(v42, v10 + v47, &qword_27E1A2190);
      return swift_endAccess();
    }

    else
    {
      *(v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_initializer) = 2;
      return (*(v25 + 8))(v28, v23);
    }
  }

  else
  {
    v49 = v28[1];
    v50 = (v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID);
    *v50 = *v28;
    v50[1] = v49;

    *(v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_initializer) = 0;
  }

  return result;
}

uint64_t sub_23BB65F94(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_disappearTimestamp;
  OUTLINED_FUNCTION_20_18();
  sub_23BB672C0(v7, v2 + v12, &qword_27E198900);
  swift_endAccess();
  sub_23B99BD04(a2);
  return sub_23BB66FE0();
}

uint64_t sub_23BB66084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A21A0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_90_0();
  v3 = type metadata accessor for ProductViewDisappearEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_23BB66CA4(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    return sub_23B979910(v0, qword_27E1A21A0);
  }

  sub_23BB67260(v0, v7, type metadata accessor for ProductViewDisappearEvent);
  if (qword_27E197798 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v9 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v9, qword_27E1BFD50);
  sub_23BB13DA4();
  return sub_23BB67208(v7, type metadata accessor for ProductViewDisappearEvent);
}

uint64_t sub_23BB661DC()
{
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_appearTimestamp);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_disappearTimestamp);

  sub_23B979910(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productType, &qword_27E1A2190);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseTimestamp);
  return v0;
}

uint64_t sub_23BB66280()
{
  sub_23BB661DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ProductViewEventConfiguration()
{
  result = qword_27E1A2170;
  if (!qword_27E1A2170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB6632C()
{
  sub_23BB66480(319, &qword_27E1988E0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_23BB66480(319, &qword_27E1A2180, MEMORY[0x277CDD168]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BB66480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_23BB664D4()
{
  v1 = sub_23BBD9828();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_appliesSubscriptionOffer) = 3;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_displaysPromotionalIcon) = 2;
  v8 = (v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_environment);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_descriptionHidden) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_initializer) = 3;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_style) = 5;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesIcon) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesInAppPurchaseCompletion) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesInAppPurchaseOptions) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesInAppPurchaseStart) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 2;
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseResult) = 4;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_didSendAppearEvent) = 0;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView) = 0;
  return v0;
}

void sub_23BB66648()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2188);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  v4 = type metadata accessor for ProductViewAppearanceEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView) & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_didSendAppearEvent;
    if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_didSendAppearEvent) & 1) == 0)
    {
      sub_23BB667D0(v1);
      if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
      {
        sub_23B979910(v1, &qword_27E1A2188);
      }

      else
      {
        sub_23BB67260(v1, v8, type metadata accessor for ProductViewAppearanceEvent);
        *(v0 + v9) = 1;
        if (qword_27E197798 != -1)
        {
          OUTLINED_FUNCTION_6_4();
        }

        v10 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v10, qword_27E1BFD50);
        sub_23BB13F58();
        sub_23BB67208(v8, type metadata accessor for ProductViewAppearanceEvent);
      }
    }
  }
}

uint64_t sub_23BB667D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for ProductViewBaseEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView))
  {
    v9 = type metadata accessor for ProductViewAppearanceEvent();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }

  else
  {
    sub_23BB65634(v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_23B979910(v5, &qword_27E1988F0);
      v11 = type metadata accessor for ProductViewAppearanceEvent();
      v12 = a1;
      v13 = 1;
    }

    else
    {
      sub_23BB67260(v5, v8, type metadata accessor for ProductViewBaseEvent);
      v14 = sub_23BB1202C();
      v16 = v15;
      v18 = v17;
      v19 = v17 >> 8;
      v20 = HIWORD(v17);
      v21 = type metadata accessor for ProductViewAppearanceEvent();
      sub_23BB67260(v8, a1 + *(v21 + 20), type metadata accessor for ProductViewBaseEvent);
      *a1 = v14;
      *(a1 + 8) = v16;
      *(a1 + 16) = v18;
      *(a1 + 17) = v19;
      *(a1 + 18) = v20;
      v12 = a1;
      v13 = 0;
      v11 = v21;
    }

    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }
}

uint64_t sub_23BB669D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988E8);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988F0);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ProductViewBaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  if (*(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView))
  {
    type metadata accessor for ProductViewPurchaseEvent();
    v21 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    sub_23BB65634(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      v25 = &qword_27E1988F0;
      v26 = v15;
    }

    else
    {
      OUTLINED_FUNCTION_5_37();
      sub_23BB67260(v15, v20, v27);
      sub_23BB12D18();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_23BB67260(v6, v11, type metadata accessor for MintViewBasePurchaseEvent);
        v28 = sub_23BB1202C();
        v30 = v29;
        v32 = v31;
        v33 = v31 >> 8;
        v34 = HIWORD(v31);
        v35 = type metadata accessor for ProductViewPurchaseEvent();
        OUTLINED_FUNCTION_5_37();
        sub_23BB67260(v20, a1 + v36, v37);
        sub_23BB67260(v11, a1 + *(v35 + 24), type metadata accessor for MintViewBasePurchaseEvent);
        *a1 = v28;
        *(a1 + 8) = v30;
        *(a1 + 16) = v32;
        *(a1 + 17) = v33;
        *(a1 + 18) = v34;
        OUTLINED_FUNCTION_20_2();
        v24 = v35;
        return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      }

      sub_23BB67208(v20, type metadata accessor for ProductViewBaseEvent);
      v25 = &qword_27E1988E8;
      v26 = v6;
    }

    sub_23B979910(v26, v25);
    type metadata accessor for ProductViewPurchaseEvent();
    v21 = OUTLINED_FUNCTION_8_39();
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_23BB66CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for MintDisappearBaseEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ProductViewBaseEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView) & 1) == 0)
  {
    sub_23BB65634(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      v17 = &qword_27E1988F0;
      v18 = v11;
    }

    else
    {
      sub_23BB67260(v11, v14, type metadata accessor for ProductViewBaseEvent);
      sub_23B99C49C(0, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        sub_23BB67260(v5, v8, type metadata accessor for MintDisappearBaseEvent);
        v22 = sub_23BB1202C();
        v24 = v23;
        v26 = v25;
        v27 = v25 >> 8;
        v28 = HIWORD(v25);
        v29 = type metadata accessor for ProductViewDisappearEvent();
        sub_23BB67260(v14, a1 + *(v29 + 20), type metadata accessor for ProductViewBaseEvent);
        sub_23BB67260(v8, a1 + *(v29 + 24), type metadata accessor for MintDisappearBaseEvent);
        *a1 = v22;
        *(a1 + 8) = v24;
        *(a1 + 16) = v26;
        *(a1 + 17) = v27;
        *(a1 + 18) = v28;
        v20 = a1;
        v21 = 0;
        v19 = v29;
        return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
      }

      sub_23BB67208(v14, type metadata accessor for ProductViewBaseEvent);
      v17 = &qword_27E198910;
      v18 = v5;
    }

    sub_23B979910(v18, v17);
    v19 = type metadata accessor for ProductViewDisappearEvent();
    v20 = a1;
    v21 = 1;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
  }

  v15 = type metadata accessor for ProductViewDisappearEvent();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
}

uint64_t sub_23BB66FE0()
{
  v1 = swift_dynamicCastMetatype();
  if (v1 || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || (result = swift_dynamicCastMetatype()) != 0)
  {
    result = swift_dynamicCastMetatype();
    v3 = result == 0;
    if (!(v1 | result))
    {
      result = swift_dynamicCastMetatype();
      if (result)
      {
        v3 = 3;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v3 = 2;
        }

        else
        {
          v3 = 4;
        }
      }
    }
  }

  else
  {
    v3 = 4;
  }

  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_style) = v3;
  return result;
}

uint64_t sub_23BB670CC()
{
  sub_23BB671B4();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB67144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BB671B4()
{
  result = qword_27E1A2198;
  if (!qword_27E1A2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2198);
  }

  return result;
}

uint64_t sub_23BB67208(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB67260(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BB672C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return swift_beginAccess();
}

uint64_t sub_23BB6739C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_5_38();
    while (a2 != v8)
    {
      *(v7 + 8 * v8) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * v8);
      ++v8;
    }

    v6 = OUTLINED_FUNCTION_7_39();
  }

  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(v12 + v16, v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_23BBDC3E8();
}

uint64_t StoreContent._identifiedContent.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 40))(a1, a2, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t Optional<A>._identifiedContent.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StoreContentAdapter();
  v2 = sub_23BBDD648();
  OUTLINED_FUNCTION_4_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB67B98, v2, a1);
}

uint64_t sub_23BB67708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v38 = a4;
  v32 = a3;
  v5 = type metadata accessor for StoreContentAdapter();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - v8;
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BBDD648();
  v37 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v32 - v22;
  (*(v10 + 16))(v12, v36, v9, v21);
  if (__swift_getEnumTagSinglePayload(v12, 1, a2) == 1)
  {
    (*(v10 + 8))(v12, v9);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
    swift_getWitnessTable();
  }

  else
  {
    (*(v13 + 32))(v16, v12, a2);
    v24 = v34;
    sub_23BB69DD4(a2, v34);
    (*(v13 + 8))(v16, a2);
    WitnessTable = swift_getWitnessTable();
    v26 = v33;
    sub_23B9D2D88(v24, v5, WitnessTable);
    v27 = v35;
    v28 = *(v35 + 8);
    v28(v24, v5);
    sub_23B9D2D88(v26, v5, WitnessTable);
    v28(v26, v5);
    (*(v27 + 32))(v19, v24, v5);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  }

  sub_23BB2F9F4();
  v29 = *(v37 + 8);
  v29(v19, v17);
  v39 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  sub_23B9D2D88(v23, v17, v30);
  return (v29)(v23, v17);
}

uint64_t _ConditionalContent<>._identifiedContent.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StoreContentAdapter();
  type metadata accessor for StoreContentAdapter();
  v2 = sub_23BBDACE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB6831C, v2, a1);
}

uint64_t sub_23BB67CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a1;
  v62 = a6;
  v53 = a5;
  v9 = type metadata accessor for StoreContentAdapter();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - v12;
  v55 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a4;
  v15 = type metadata accessor for StoreContentAdapter();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = *(a2 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v57 = a3;
  v26 = sub_23BBDACC8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - v28;
  v30 = sub_23BBDACE8();
  v60 = *(v30 - 8);
  v61 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v63 = &v48 - v32;
  (*(v27 + 16))(v29, v58, v26, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v55;
    v34 = v57;
    (*(v55 + 32))();
    v35 = v52;
    sub_23BB69DD4(v34, v52);
    WitnessTable = swift_getWitnessTable();
    v37 = v54;
    sub_23B9D2D88(v35, v9, WitnessTable);
    v38 = *(v56 + 8);
    v38(v35, v9);
    sub_23B9D2D88(v37, v9, WitnessTable);
    swift_getWitnessTable();
    sub_23BA82E14();
    v38(v35, v9);
    v38(v37, v9);
    (*(v33 + 8))(v59, v34);
  }

  else
  {
    v39 = *(v21 + 32);
    v49 = v25;
    v39(v24, v29, v25);
    sub_23BB69DD4(v25, v17);
    v40 = swift_getWitnessTable();
    sub_23B9D2D88(v17, v15, v40);
    v41 = *(v51 + 8);
    v41(v17, v15);
    sub_23B9D2D88(v20, v15, v40);
    swift_getWitnessTable();
    sub_23BA82D64();
    v41(v17, v15);
    v41(v20, v15);
    (*(v21 + 8))(v24, v49);
  }

  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v64 = v42;
  v65 = v43;
  v44 = v61;
  v45 = swift_getWitnessTable();
  v46 = v63;
  sub_23B9D2D88(v63, v44, v45);
  return (*(v60 + 8))(v46, v44);
}

uint64_t sub_23BB68348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_5_38();
    while (v5 != v10)
    {
      *(v9 + 8 * v10) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * v10);
      ++v10;
    }

    v8 = OUTLINED_FUNCTION_7_39();
  }

  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for TupleStoreContent();
  v39 = v35;
  OUTLINED_FUNCTION_3_2();
  v17 = v16;
  OUTLINED_FUNCTION_7_0();
  v19.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v21 = v35 - v20;
  if (v5)
  {
    v37 = v6;
    v38 = a4;
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 32;
    v35[1] = v22;
    v36 = v15;
    v24 = v5;
    do
    {
      if (v5 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v8 + v23);
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v6++;
      (*(*(v26 - 8) + 16))(v14 + v25, v28, v19);
      v23 += 16;
      --v24;
    }

    while (v24);
    v29 = OUTLINED_FUNCTION_9_27();
    v30(v29);
    (*(v17 + 32))(v38, v21, v36);
    do
    {
      OUTLINED_FUNCTION_1_4();
      result = (*(v31 + 8))();
      --v5;
    }

    while (v5);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_9_27();
    v34(v33);
    return (*(v17 + 32))(a4, v21, v15);
  }

  return result;
}

uint64_t TupleStoreContent._identifiedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = *(a1 + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    v6 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v7 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      ;
    }

    v6 = OUTLINED_FUNCTION_7_39();
  }

  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v81 = v14 - v13;
  v78 = a1;
  if (v4 == 1)
  {
    swift_getAssociatedTypeWitness();
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    for (j = 0; v4 != j; ++j)
    {
      *(&v64 + 8 * j - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getAssociatedTypeWitness();
    }

    OUTLINED_FUNCTION_7_39();
  }

  v71 = &v64;
  OUTLINED_FUNCTION_3_2();
  v69 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v80 = v19 - v18;
  v76 = v20;
  v21 = sub_23BBDC3D8();
  v70 = &v64;
  v68 = v21;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v66 = &v64 - v23;
  v67 = &v64;
  v25 = MEMORY[0x28223BE20](v24);
  v72 = 8 * v4;
  v65 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = (&v64 - v65);
  v73 = v10;
  v26 = *(v10 + 16);
  v77 = v6;
  v27 = v26(v81, v2, v6, v25);
  if (v4)
  {
    v28 = (*(v78 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v29 = (*(v78 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v30 = v77 + 32;
    v31 = (v76 + 32);
    v32 = v75;
    v33 = v4;
    v79 = v4;
    do
    {
      v85 = v33;
      v86 = v32;
      if (v4 == 1)
      {
        v84 = v80;
      }

      else
      {
        v84 = v80 + *v31;
      }

      v83 = &v64;
      v35 = *v28++;
      v34 = v35;
      v36 = *v29++;
      OUTLINED_FUNCTION_3_2();
      v38 = v37;
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_3_1();
      v42 = v41 - v40;
      (*(v38 + 16))(v41 - v40, v81 + v43, v34);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for IdentifiedStoreContent();
      v82 = &v64;
      OUTLINED_FUNCTION_7_0();
      v46 = MEMORY[0x28223BE20](v45);
      v48 = &v64 - v47;
      (*(v36 + 48))(v34, v36, v46);
      (*(v38 + 8))(v42, v34);
      OUTLINED_FUNCTION_1_4();
      v50 = v84;
      v27 = (*(v49 + 32))(v84, v48, AssociatedTypeWitness);
      v52 = v85;
      v51 = v86;
      *v86 = v50;
      v32 = v51 + 1;
      v30 += 16;
      v31 += 4;
      v33 = v52 - 1;
      v4 = v79;
    }

    while (v33);
  }

  v53 = v72;
  MEMORY[0x28223BE20](v27);
  v55 = &v64 - v65;
  v56 = 0;
  v57 = v77;
  while (v4 != v56)
  {
    v54 = swift_getAssociatedTypeWitness();
    *&v55[8 * v56++] = v54;
  }

  MEMORY[0x28223BE20](v54);
  v58 = &v64 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v60 = v73;
  while (v4 != v59)
  {
    swift_getAssociatedTypeWitness();
    *&v58[8 * v59++] = swift_getAssociatedConformanceWitness();
  }

  v61 = v66;
  sub_23BB6739C(v75, v4, v55);
  (*(v69 + 8))(v80, v76);
  (*(v60 + 8))(v81, v57);
  v62 = v68;
  swift_getWitnessTable();
  return sub_23BB6BA80(v61, v62, v74);
}

uint64_t sub_23BB68E00(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v4 != i; ++i)
    {
      *&v6[8 * i] = *((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    result = swift_getTupleTypeMetadata();
  }

  if (v3 <= 0x3F)
  {
    v8[7] = 0;
    v9 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB68F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    v5 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_3_1();
    v10 = v9 - v8;
    for (i = 0; v6 != i; ++i)
    {
      *(v10 + 8 * i) = *((*(v7 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    v5 = OUTLINED_FUNCTION_7_39();
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_23BB68FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    v6 = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_5_38();
    while (v7 != v9)
    {
      OUTLINED_FUNCTION_11_25(v8, v9);
    }

    v6 = OUTLINED_FUNCTION_7_39();
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_23BB6908C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_23BB69140()
{
  type metadata accessor for StoreContentAdapter();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  return swift_getWitnessTable();
}

uint64_t sub_23BB691A4()
{
  type metadata accessor for StoreContentAdapter();
  type metadata accessor for StoreContentAdapter();
  sub_23BBDACE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_6_32()
{

  sub_23BA9C4D4();
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return swift_getTupleTypeMetadata();
}

void sub_23BB69304()
{
  sub_23BBDD768();

  sub_23BBDD798();
  MEMORY[0x23EEB5890](0xD000000000000019, 0x800000023BBE18F0);
  MEMORY[0x23EEB5890](0x65726F7453796E41, 0xEF746E65746E6F43);
  sub_23BBDD908();
  __break(1u);
}

uint64_t sub_23BB693D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  if (swift_dynamicCast())
  {
    result = (*(v6 + 8))(a1, a2);
    v10 = v15;
    v18 = v15;
    v11 = v14;
    v16 = v13;
    v17 = v14;
    *a3 = v13;
    *(a3 + 16) = v11;
    *(a3 + 32) = v10;
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_23BB695E0(&v13);
    *(a3 + 24) = type metadata accessor for StoreContentBox();
    *(a3 + 32) = &off_284E64FB0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v6 + 32))(boxed_opaque_existential_1, a1, a2);
  }

  return result;
}

uint64_t sub_23BB69570@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_23BB695E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A2228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB69660(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23BB697AC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
      JUMPOUT(0x23BB699B0);
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

uint64_t sub_23BB699E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v12 - v5;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for IdentifiedStoreContent();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  (*(v1 + 48))(v2, v1, v8);
  (*(v4 + 32))(v6, v10, AssociatedTypeWitness);
  return sub_23BBDC0D8();
}

void sub_23BB69B68()
{
  sub_23BBDB018();
  if (v0 <= 0x3F)
  {
    sub_23B9B5B34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB69C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDB018();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 343);
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

uint64_t sub_23BB69CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDB018();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 343) = -a2;
  }

  return result;
}

uint64_t sub_23BB69DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1, v5);
  return sub_23BB6A318(v7, a1, a2);
}

uint64_t sub_23BB69EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_23BBDAFF8();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_23BB69F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v5 = type metadata accessor for IdentifiedStoreContent();
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v25 - v6;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995D8);
  v11 = sub_23BBDA358();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v25 - v14;
  sub_23BB1B1E8();
  v15 = v26;
  (*(v2 + 48))(v3, v2);
  (*(v7 + 8))(v10, v3);
  KeyPath = swift_getKeyPath();
  sub_23B9B7294();
  v17 = v25;
  v18 = v27;
  v19 = AssociatedConformanceWitness;
  sub_23BB1106C(KeyPath, v34, v27, AssociatedConformanceWitness);

  sub_23B9ED050(v34);
  (*(*(v18 - 8) + 8))(v15, v18);
  v20 = sub_23BB6A3A8();
  v32 = v19;
  v33 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v28;
  sub_23B9D2D88(v17, v11, WitnessTable);
  v23 = *(v29 + 8);
  v23(v17, v11);
  sub_23B9D2D88(v22, v11, WitnessTable);
  return (v23)(v22, v11);
}

uint64_t sub_23BB6A318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23BB69EAC(a1, a2);
  v4 = a3 + *(type metadata accessor for StoreContentAdapter() + 36);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 343) = 0;
  return result;
}

unint64_t sub_23BB6A3A8()
{
  result = qword_27E1995D0;
  if (!qword_27E1995D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995D0);
  }

  return result;
}

uint64_t sub_23BB6A430()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995D8);
  sub_23BBDA358();
  swift_getAssociatedConformanceWitness();
  sub_23BB6A3A8();
  return swift_getWitnessTable();
}

uint64_t static StoreContentBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v8 = 8 * a2;
  v28 = a5;
  v29 = a4;
  if (a2 != 1)
  {
    MEMORY[0x28223BE20](a1);
    for (i = 0; a2 != i; ++i)
    {
      *(&v27[i] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = v27;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v18 = (v14 + 32);
    v19 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = a2;
    do
    {
      if (a2 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *v18;
      }

      v23 = *v17++;
      v22 = v23;
      v24 = &v12[v21];
      v25 = *v7++;
      (*(*(v22 - 8) + 16))(&v12[v21], v25, v15);
      *v19++ = v24;
      v18 += 4;
      --v20;
    }

    while (v20);
  }

  return sub_23BB68348(v16, a2, a3, v28);
}

uint64_t static StoreContentBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBDD648();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t static StoreContentBuilder.buildEither<A, B>(first:)()
{
  OUTLINED_FUNCTION_1_56();
  OUTLINED_FUNCTION_4_1();
  v3 = MEMORY[0x28223BE20](v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_2_44();
}

uint64_t sub_23BB6A814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDACC8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static StoreContentBuilder.buildEither<A, B>(second:)()
{
  OUTLINED_FUNCTION_1_56();
  OUTLINED_FUNCTION_4_1();
  v3 = MEMORY[0x28223BE20](v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_2_44();
}

uint64_t static StoreContentBuilder.buildLimitedAvailability(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return sub_23BB693D8(v7, v3, a2);
}

_BYTE *storeEnumTagSinglePayload for StoreContentBuilder(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BB6AAA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BB6AAE8()
{
  result = qword_27E1A2330[0];
  if (!qword_27E1A2330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A2330);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_56()
{

  return sub_23BBDACC8();
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return sub_23BB6A814(v1, v0);
}

uint64_t sub_23BB6AB80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BB6AD58(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
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
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB6AFE4);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_23BB6B068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return sub_23BB6B56C(v14, v10, a2, a3, a4);
}

uint64_t sub_23BB6B220@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StoreContentAdapter();
  v2 = sub_23BBDA358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB6B64C, v2, a1);
}

uint64_t sub_23BB6B2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v29 = a6;
  v10 = type metadata accessor for StoreContentAdapter();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_23BBDA358();
  v27 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_23BB69DD4(a2, v12);
  v32 = a2;
  v33 = a3;
  v19 = a3;
  v20 = v26;
  v34 = a4;
  v35 = v26;
  v21 = *(type metadata accessor for ModifiedStoreContent() + 52);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x23EEB43C0](a1 + v21, v10, v19, WitnessTable);
  (*(v28 + 8))(v12, v10);
  v30 = WitnessTable;
  v31 = v20;
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v15, v13, v23);
  v24 = *(v27 + 8);
  v24(v15, v13);
  sub_23B9D2D88(v18, v13, v23);
  return (v24)(v18, v13);
}

uint64_t sub_23BB6B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ModifiedStoreContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_23BB6B65C()
{
  type metadata accessor for StoreContentAdapter();
  sub_23BBDA358();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB6B6F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23BB6B83C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
      JUMPOUT(0x23BB6BA40);
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

uint64_t sub_23BB6BAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_23BB6BB88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23BB6BBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BB6BC3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

void sub_23BB6BC9C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = v2[2];
  v3 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  if (v4)
  {
    v16 = a1;
    v8 = OUTLINED_FUNCTION_0_52();
    sub_23BB6C554(v8);

    v17 = v4;
    v18 = v7;
    v20 = v6;
    v21 = v3;
    v19 = v5;
    while (1)
    {
      v9 = v7[2];
      if (!v9)
      {
        break;
      }

      v11 = v7[5];
      v10 = v7[6];
      v12 = v7[3];
      v13 = v7[4];

      sub_23BB6C598(v17);
      v17 = v4;
      v18 = v7;
      v20 = v6;
      v21 = v3;
      v19 = v5;
      v4 = v9;
      v3 = v12;
      v6 = v13;
      v5 = v11;
      v7 = v10;
    }

    v14 = OUTLINED_FUNCTION_0_52();
    sub_23BB6C598(v14);
    a1 = v16;
    v15 = v17;
    v6 = v20;
    v3 = v21;
    v7 = v18;
    v5 = v19;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v15;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

__n128 sub_23BB6BD98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v10 = *(a3 - 1);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  (*(v10 + 32))(v12 + v11, a1, a3);
  v13 = swift_allocObject();
  result = *a2;
  v15 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;
  *(v13 + 48) = *(a2 + 32);
  *a5 = sub_23BB6C4B8;
  a5[1] = v12;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v13;
  return result;
}

uint64_t sub_23BB6BEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductViewStyleConfiguration();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnyProductViewStyle.WrapperView();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_23BA0EFA4(a1, v11);
  (*(v6 + 16))(v8, a2, a3);
  sub_23BB6C064(v11, v8, a3, v14);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BB6C064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23BB22040(a1, a4);
  type metadata accessor for AnyProductViewStyle.WrapperView();
  return sub_23BB6C0C8(a2, a3);
}

uint64_t sub_23BB6C0C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_23BBDAFF8();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_23BB6C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_23BB6C1B8();
  (*(v8 + 24))(v2, v3, v8);
  (*(v4 + 8))(v6, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_23B9D2D88(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v10 + 8);
  v17(v12, AssociatedTypeWitness);
  sub_23B9D2D88(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v17)(v15, AssociatedTypeWitness);
}

uint64_t sub_23BB6C438()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB6C4F4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB6C554(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BB6C598(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BB6C5DC()
{
  result = type metadata accessor for ProductViewStyleConfiguration();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDB018();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB6C678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductViewStyleConfiguration();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBDB018();
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB6C72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ProductViewStyleConfiguration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBDB018();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BB6C824()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for PackMuleView(uint64_t a1, int a2)
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

unint64_t sub_23BB6C8E4()
{
  result = qword_27E1A24B8;
  if (!qword_27E1A24B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A24C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A24B8);
  }

  return result;
}

__n128 sub_23BB6C948@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t EnvironmentValues.displayStoreKitMessage.getter@<X0>(void (**a1)()@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a1 = sub_23BB6CD78;
  a1[1] = v8;
  return result;
}

void sub_23BB6CAA4()
{
  v0 = type metadata accessor for SKLogger();
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23BBDA658();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 scene];

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_23BBDC848();

        return;
      }
    }
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27E1BFC88);
  sub_23B9EA228(v6, v2);
  v7 = sub_23BBD9988();
  v8 = sub_23BBD99A8();
  (*(*(v8 - 8) + 8))(v2, v8);
  v9 = sub_23BBDD598();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B970000, v7, v9, "Attempting to present a message without being in the hierarchy.", v10, 2u);
    MEMORY[0x23EEB6DC0](v10, -1, -1);
  }

  v11 = sub_23BBDC608();
  sub_23BB6CDF4();
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CDD0C8], v11);
  swift_willThrow();
}

uint64_t sub_23BB6CCF0()
{
  v1 = sub_23BBDA928();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_23BB6CDF4()
{
  result = qword_27E19BE90;
  if (!qword_27E19BE90)
  {
    sub_23BBDC608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BE90);
  }

  return result;
}

uint64_t sub_23BB6CE4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BB6CE6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_23BB6CEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3 & 1;
  return MEMORY[0x23EEB43C0](v6, a2, &type metadata for SafeAreaInsetViewModifier, a3);
}

uint64_t sub_23BB6CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_23BBDA9D8();
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v55 = *(v2 + 32);
  v7 = v55 | (v3 == 0.0);
  if (v55 & 1 | (v3 == 0.0))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v8 = v57;
    v9 = v58;
    v10 = v59;
    v11 = v60;
    v12 = v61;
    v13 = v62;
  }

  v14 = sub_23BBD9D58();
  v15 = MEMORY[0x23EEB3BE0]((2 * v14) | 1u);
  v16 = sub_23BBDA398();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24C8);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24D0) + 36);
  *v18 = v8;
  *(v18 + 8) = v9;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;
  *(v18 + 32) = v12;
  *(v18 + 40) = v13;
  *(v18 + 48) = v7 & 1;
  *(v18 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 73) = v15;
  *(v18 + 80) = v54;
  v19 = sub_23BBDA9D8();
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (!(v55 & 1 | (v6 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v20 = v63;
    v21 = v64;
    v22 = v65;
    v23 = v66;
    v24 = v67;
    v25 = v68;
  }

  v26 = sub_23BBD9D58();
  v27 = MEMORY[0x23EEB3BE0]((2 * v26) | 1u);
  v28 = sub_23BBDA398();
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24D8) + 36);
  *v29 = v20;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  *(v29 + 48) = v55 & 1 | (v6 == 0.0);
  *(v29 + 56) = v28;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 73) = v27;
  *(v29 + 80) = v19;
  v30 = sub_23BBDAB48();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (!(v55 & 1 | (v4 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v31 = v69;
    v32 = v70;
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v36 = v74;
  }

  v37 = sub_23BBD9D58();
  v38 = MEMORY[0x23EEB3BE0]((2 * v37));
  v39 = sub_23BBDA398();
  v40 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24E0) + 36);
  *v40 = v31;
  *(v40 + 8) = v32;
  *(v40 + 16) = v33;
  *(v40 + 24) = v34;
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  *(v40 + 48) = v55 & 1 | (v4 == 0.0);
  *(v40 + 56) = v39;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 73) = v38;
  *(v40 + 80) = v30;
  v41 = sub_23BBDAB48();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (!(v55 & 1 | (v5 == 0.0)))
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    v46 = v79;
    v47 = v80;
  }

  v48 = sub_23BBD9D58();
  v49 = MEMORY[0x23EEB3BE0]((2 * v48));
  v50 = sub_23BBDA398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A24E8);
  v52 = a2 + *(result + 36);
  *v52 = v42;
  *(v52 + 8) = v43;
  *(v52 + 16) = v44;
  *(v52 + 24) = v45;
  *(v52 + 32) = v46;
  *(v52 + 40) = v47;
  *(v52 + 48) = v55 & 1 | (v5 == 0.0);
  *(v52 + 56) = v50;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 73) = v49;
  *(v52 + 80) = v41;
  return result;
}

uint64_t sub_23BB6D40C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_23B97B518(&qword_27E1A2518, &qword_27E1A2520);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BB6D4EC()
{
  result = qword_27E1A2508;
  if (!qword_27E1A2508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A24D0);
    sub_23B97B518(&qword_27E1A2510, &qword_27E1A24C8);
    sub_23B97B518(&qword_27E1A2518, &qword_27E1A2520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2508);
  }

  return result;
}

uint64_t View.subscriptionOfferViewDetailAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for SubscriptionOfferViewDetailActionModifier);
}

uint64_t sub_23BB6D608()
{
  sub_23BBDA358();
  sub_23BB6D66C();
  return swift_getWitnessTable();
}

unint64_t sub_23BB6D66C()
{
  result = qword_27E1A2528[0];
  if (!qword_27E1A2528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A2528);
  }

  return result;
}

uint64_t sub_23BB6D6C0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, char *))
{
  v4 = sub_23BBDCB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21[-1] - v12;
  sub_23BBDC8F8();
  sub_23BA98A1C(v13, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    result = sub_23BB6DF48(v10);
    __break(1u);
  }

  else
  {
    sub_23BB6DF48(v13);
    (*(v5 + 32))(v7, v10, v4);
    a2(v21, a1, v7);
    (*(v5 + 8))(v7, v4);
    v14 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v15 = MEMORY[0x28223BE20](v14);
    (*(v17 + 16))(&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    v18 = sub_23BBDC0D8();
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v18;
  }

  return result;
}

uint64_t sub_23BB6D940()
{
  sub_23BB6E044();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB6D97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB6D940();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t View.subscriptionStoreControlIcon<A>(icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12 = sub_23BB6DADC(a1, a2, a4, a6);
  v16[0] = v12;
  v16[1] = v13;
  v14 = type metadata accessor for SubscriptionIconModifier();
  MEMORY[0x23EEB43C0](v16, a3, v14, a5);
  return sub_23BA16594(v12);
}

uint64_t (*sub_23BB6DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a3 != MEMORY[0x277CE1428])
  {
    return sub_23BB6DC44(a1, a2, a3, a4);
  }

  return 0;
}

uint64_t sub_23BB6DB30()
{
  type metadata accessor for SubscriptionIconModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BB6DB9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI23SubscriptionIconBuilderVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t (*sub_23BB6DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return sub_23BB6E0D0;
}

uint64_t sub_23BB6DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  a6[3] = a4;
  a6[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(a6);
  return a3(a1, a2);
}

uint64_t sub_23BB6DD00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  type metadata accessor for SubscriptionIconModifier();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0);
  v5 = sub_23BBDA358();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  swift_getKeyPath();
  v17[4] = a1;
  v17[5] = a2;
  sub_23B9794F0(a1);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  sub_23BA16594(a1);
  v13 = sub_23BB6DFE0();
  v17[2] = WitnessTable;
  v17[3] = v13;
  v14 = swift_getWitnessTable();
  sub_23B9D2D88(v8, v5, v14);
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_23B9D2D88(v11, v5, v14);
  return (v15)(v11, v5);
}

uint64_t sub_23BB6DF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB6DFB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB6D940();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23BB6DFE0()
{
  result = qword_27E1A25B8;
  if (!qword_27E1A25B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A25B8);
  }

  return result;
}

unint64_t sub_23BB6E044()
{
  result = qword_27E1A25C0;
  if (!qword_27E1A25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A25C0);
  }

  return result;
}

uint64_t sub_23BB6E098()
{

  return swift_deallocObject();
}

uint64_t sub_23BB6E0EC()
{
  type metadata accessor for SubscriptionIconModifier();
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25B0);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23BB6DFE0();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

_BYTE *storeEnumTagSinglePayload for AppStoreBadge(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB6E280);
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

uint64_t sub_23BB6E2D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_23BBDAF58();
  OUTLINED_FUNCTION_7();
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25C8);
  OUTLINED_FUNCTION_7();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v36 = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25E8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F8);
  v19 = sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0);
  v20 = sub_23BB6F078();
  v37 = v17;
  v38 = MEMORY[0x277CE1350];
  v39 = v18;
  v40 = v17;
  v41 = v19;
  v42 = MEMORY[0x277CE1340];
  v43 = v20;
  v44 = v19;
  OUTLINED_FUNCTION_0_54();
  swift_getOpaqueTypeConformance2();
  sub_23BB6F130();
  sub_23BBDBE98();
  sub_23BBDAF48();
  sub_23B97B518(&qword_27E1A2648, &qword_27E1A25C8);
  sub_23BB6F640(&qword_27E1A2650, MEMORY[0x277CDE1B0]);
  v21 = v28;
  v22 = v31;
  sub_23BBDB6E8();
  (*(v32 + 8))(v6, v22);
  (*(v29 + 8))(v10, v21);
  sub_23BBDB428();
  v23 = sub_23BBDB448();

  KeyPath = swift_getKeyPath();
  v25 = &v13[*(v30 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_23BB6F40C();
  sub_23BBDBA68();
  sub_23B979910(v13, &qword_27E1A25D0);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2660);
  sub_23BB6F584();
  sub_23BB6F688();
  sub_23BBDBC48();
  return sub_23B979910(v16, &qword_27E1A25D8);
}

uint64_t sub_23BB6E794(unsigned __int8 a1)
{
  v2 = sub_23BBDA9D8();
  __src[72] = 0;
  sub_23BB6E90C(a1, v6);
  *&__src[7] = v6[0];
  *&__src[23] = v6[1];
  *&__src[39] = v6[2];
  *&__src[55] = v6[3];
  v4[0] = v2;
  v4[1] = 0x4014000000000000;
  LOBYTE(v4[2]) = 0;
  memcpy(&v4[2] + 1, __src, 0x47uLL);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F8);
  sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0);
  sub_23BB6F078();
  sub_23BBDBC48();
  memcpy(__dst, v4, sizeof(__dst));
  return sub_23BB6F77C(__dst);
}

uint64_t sub_23BB6E90C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v3 - 8);
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1BF840;
  v5 = sub_23BBDB648();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if ((v20 - 1) <= 1)
  {
    sub_23BBDAA28();
    sub_23BBDAA18();
    sub_23BBDAA08();

    sub_23BBDAA18();
    sub_23BBDAA58();
    v12 = sub_23BBDB648();
    v13 = v16;
    v15 = v17;
    v14 = v18 & 1;
    sub_23BA51B84(v12, v16, v18 & 1);
  }

  sub_23BA51B84(v5, v7, v9 & 1);

  sub_23BB6F854(v12, v13, v14, v15);
  sub_23BA82038(v12, v13, v14, v15);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  sub_23BA82038(v12, v13, v14, v15);
  sub_23BA51C9C(v5, v7, v9 & 1);
}

uint64_t sub_23BB6EBC0@<X0>(void *__src@<X0>, _WORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x58uLL);
  a2[44] = 257;
  return sub_23BB6F7E4(__dst, &v5);
}

uint64_t sub_23BB6EC20@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x58uLL);
  return sub_23BB6F7E4(__dst, &v5);
}

void *sub_23BB6EC78@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_23BB6ED30(a1, __src);
  v3 = sub_23BBDC318();
  v5 = v4;
  result = memcpy(a2, __src, 0x68uLL);
  *(a2 + 104) = 0x403E000000000000;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0x403E000000000000;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0x403E000000000000;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0x403E000000000000;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0x403E000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0x403E000000000000;
  *(a2 + 192) = 0;
  *(a2 + 193) = 0;
  *(a2 + 200) = v3;
  *(a2 + 208) = v5;
  *(a2 + 216) = 256;
  return result;
}

void *sub_23BB6ED30@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = sub_23BBDBE48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  v8 = sub_23BBD9968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  if ((v3 - 1) > 1)
  {
    sub_23BB6F948(0xD000000000000012, 0x800000023BBE2F30, &v18, 30.0, 30.0);
    v14 = 1;
    v17[0] = 1;
  }

  else
  {
    if (qword_27E197650 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v8, qword_27E1BFBA8);
    (*(v9 + 16))(v11, v12, v8);
    sub_23BBDBE88();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_23BBDBE68();

    (*(v5 + 8))(v7, v4);
    v17[80] = 0;
    v16 = 0;
    v18.n128_u64[0] = v13;
    v18.n128_u64[1] = 0x3FF0000000000000;
    v19 = 0;
    memcpy(v20, v17, 0x4EuLL);
    v14 = 0;
  }

  v20[78] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199080);
  sub_23B9AA45C();
  sub_23BA3A7D4();
  sub_23BBDACD8();
  return memcpy(a2, __src, 0x61uLL);
}

double sub_23BB6F004@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BB6F714(a1, a2);
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2660) + 36);
  result = 0.0;
  *v3 = xmmword_23BC01710;
  *(v3 + 16) = xmmword_23BC01710;
  *(v3 + 32) = 0;
  return result;
}

unint64_t sub_23BB6F078()
{
  result = qword_27E1A2608;
  if (!qword_27E1A2608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25F8);
    sub_23B97B518(&qword_27E1A2600, &qword_27E1A25F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2608);
  }

  return result;
}

unint64_t sub_23BB6F130()
{
  result = qword_27E1A2610;
  if (!qword_27E1A2610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25E8);
    sub_23BB6F1E8();
    sub_23B97B518(&qword_27E19D248, &qword_27E19D250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2610);
  }

  return result;
}

unint64_t sub_23BB6F1E8()
{
  result = qword_27E1A2618;
  if (!qword_27E1A2618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2620);
    sub_23BB6F274();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2618);
  }

  return result;
}

unint64_t sub_23BB6F274()
{
  result = qword_27E1A2628;
  if (!qword_27E1A2628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2630);
    sub_23BB6F2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2628);
  }

  return result;
}

unint64_t sub_23BB6F2F8()
{
  result = qword_27E1A2638;
  if (!qword_27E1A2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2640);
    sub_23B9AA45C();
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2638);
  }

  return result;
}

uint64_t sub_23BB6F384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA808();
  *a1 = result;
  return result;
}

uint64_t sub_23BB6F3B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDA808();
  *a1 = result;
  return result;
}

unint64_t sub_23BB6F40C()
{
  result = qword_27E1A2658;
  if (!qword_27E1A2658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25C8);
    sub_23BBDAF58();
    sub_23B97B518(&qword_27E1A2648, &qword_27E1A25C8);
    sub_23BB6F640(&qword_27E1A2650, MEMORY[0x277CDE1B0]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2658);
  }

  return result;
}