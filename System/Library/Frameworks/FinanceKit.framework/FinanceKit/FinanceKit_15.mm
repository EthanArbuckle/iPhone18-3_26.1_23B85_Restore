uint64_t sub_1B72FC8AC()
{
  v1 = v0[12];
  v0[24] = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1B7198000, v3, v4, "Fetching updates failed: %@", v5, 0xCu);
    sub_1B7205418(v6, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1B72FCA38;
  v11 = v0[15];
  v10 = v0[16];

  return sub_1B72FDF78(v11, v10);
}

uint64_t sub_1B72FCA38()
{

  return MEMORY[0x1EEE6DFA0](sub_1B72FCB34, 0, 0);
}

uint64_t sub_1B72FCB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72FCBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B72FCBD8, 0, 0);
}

uint64_t sub_1B72FCBD8()
{
  v1 = sub_1B7800098();
  v2 = sub_1B78011F8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B7198000, v1, v2, "Returning updated accounts information.", v3, 2u);
    MEMORY[0x1B8CA7A40](v3, -1, -1);
  }

  v4 = v0[5];
  v5 = v0[3];

  v5(v4);
  v6 = v0[1];

  return v6();
}

void sub_1B72FCD74()
{
  v1 = OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask;
  if (*(v0 + OBJC_IVAR____TtC10FinanceKit23BankConnectOsloProvider_processingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    sub_1B7800E68();
  }

  *(v0 + v1) = 0;

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  oslog = sub_1B7800098();
  v3 = sub_1B78011F8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, oslog, v3, "Listening tasks stopped, changes are no longer being listened too.", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }
}

id BankConnectOsloProvider.__deallocating_deinit()
{
  sub_1B72FCD74();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectOsloProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B72FCF98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B72FFE20, 0, 0);
}

uint64_t sub_1B72FCFC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B72FCFF8, 0, 0);
}

uint64_t sub_1B72FCFF8()
{
  v1 = !*(*(v0 + 32) + 16) && !*(*(v0 + 24) + 16) && *(*(v0 + 40) + 16) == 0;
  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1B72FD044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1B72FD0E4;

  return sub_1B72FE594(a4, a5);
}

uint64_t sub_1B72FD0E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B72FD230, 0, 0);
}

uint64_t sub_1B72FD254(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B72FD27C, 0, 0);
}

uint64_t sub_1B72FD27C()
{
  v1 = [*(v0 + 16) isEqual_];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B72FD2E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F698);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991CE8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991CF0);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *a1;
  sub_1B728216C(&qword_1EB991CF8, &qword_1EB98F698);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v8 + 8))(v10, v7);
  v34 = v19;
  v35 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D00);
  sub_1B728216C(&qword_1EB991D08, &qword_1EB991CE8);
  sub_1B728216C(&qword_1EB991D10, &qword_1EB991D00);
  sub_1B77FF018();
  (*(v12 + 8))(v14, v11);
  v36 = 0;
  v20 = v30;
  sub_1B77FF2C8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D18);
  v22 = v31;
  v31[3] = v21;
  v22[4] = sub_1B72FF9BC();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_1B728216C(&qword_1EB991D98, &qword_1EB991CF0);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0);
  v23 = v28;
  v24 = v32;
  sub_1B77FF0A8();
  (*(v33 + 8))(v20, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t sub_1B72FD7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v23[1] = a2;
  v29 = a1;
  v34 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D90);
  v33 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = v23 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D70);
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D60);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F698);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D50);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v17 = v23 - v16;
  sub_1B728216C(&qword_1EB991CF8, &qword_1EB98F698);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v13 + 8))(v15, v12);
  v35 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB991DA0, &qword_1EB991D90);
  v18 = v27;
  sub_1B77FF2D8();
  sub_1B728216C(&qword_1EB991DA8, &qword_1EB991D70);
  sub_1B728216C(&qword_1EB991DB0, &qword_1EB991D80);
  v19 = v28;
  sub_1B77FF028();
  (*(v33 + 8))(v5, v18);
  (*(v30 + 8))(v7, v19);
  sub_1B728216C(&qword_1EB991DB8, &qword_1EB991D50);
  sub_1B728216C(&qword_1EB991DC0, &qword_1EB991D60);
  v20 = v24;
  v21 = v31;
  sub_1B77FF098();
  (*(v32 + 8))(v11, v21);
  return (*(v26 + 8))(v17, v20);
}

id BankConnectOsloProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B72FDE30(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B78000B8() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B723838C;

  return sub_1B72FC0DC(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1B72FDF78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B72FDF98, 0, 0);
}

uint64_t sub_1B72FDF98()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Removing all account information.", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = [objc_opt_self() makeErrorResponse];
  v5();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B72FE0E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B78000B8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1B7201BB0;

  return sub_1B72FCBB4(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1B72FE224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72FE26C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7201BB0;

  return sub_1B72FD044(a1, a2, v6, v7, v8);
}

id sub_1B72FE330(uint64_t a1)
{
  v21 = type metadata accessor for InternalAccount();
  v2 = MEMORY[0x1EEE9AC00](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v11 = MEMORY[0x1E69E7CC8];
    do
    {
      sub_1B72FF884(v9, v7, type metadata accessor for InternalAccount);
      v12 = &v7[*(v21 + 32)];
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        sub_1B7205540(0, &unk_1EDAF6430);
        sub_1B72FF884(v7, v4, type metadata accessor for InternalAccount);

        v15 = FKAccount.init(from:)(v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v11;
        sub_1B7392AD4(v15, v14, v13, isUniquelyReferenced_nonNull_native);

        v11 = v22;
      }

      sub_1B72FF8EC(v7, type metadata accessor for InternalAccount);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v17 = objc_allocWithZone(FKBankConnectOsloProviderResponse);
  sub_1B7205540(0, &unk_1EDAF6430);
  v18 = sub_1B7800708();

  v19 = [v17 initWithDictionary_];

  return v19;
}

uint64_t sub_1B72FE594(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for BankConnectConsent();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for InternalAccount();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F130);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for InternalAccountQuery();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F128);
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72FE7C8, 0, 0);
}

uint64_t sub_1B72FE7C8()
{
  v33 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[14];
  v9 = v0[9];
  v10 = swift_task_alloc();
  v0[29] = v10;
  *(v10 + 16) = v9;
  v0[8] = v8;
  sub_1B77FFD38();
  v11 = *(v3 + 16);
  v11(v7, v1, v2);
  (*(v3 + 56))(v7, 0, 1, v2);
  *v4 = MEMORY[0x1E69E7CC0];
  sub_1B7205588(v7, v4 + *(v5 + 20), &qword_1EB98F130);
  sub_1B7205588(v7, v6, &qword_1EB98F130);
  if ((*(v3 + 48))(v6, 1, v2) == 1)
  {
    v12 = v0[19];
    sub_1B7205418(v0[20], &qword_1EB98F130);
    sub_1B7205418(v12, &qword_1EB98F130);
    v13 = 0;
  }

  else
  {
    v14 = v0[26];
    v15 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[20];
    (*(v16 + 32))(v15, v0[19], v17);
    sub_1B7205540(0, &qword_1EDAFAF30);
    v11(v14, v15, v17);
    v13 = sub_1B71F8678(v14);
    (*(v16 + 8))(v15, v17);
    sub_1B7205418(v18, &qword_1EB98F130);
  }

  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[21];
  *(v19 + v21[8]) = v13;
  v22 = v19 + v21[6];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v19 + v21[7];
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1B72FF94C(v19, v20, type metadata accessor for InternalAccountQuery);
  static DeviceInfo.deviceType.getter(v32);
  if (v32[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    v25 = v0[28];
    v27 = v0[24];
    v26 = v0[25];
    sub_1B72FF8EC(v0[23], type metadata accessor for InternalAccountQuery);
    (*(v26 + 8))(v25, v27);

    v28 = v0[1];

    return v28();
  }

  else
  {
    v0[30] = *(v0[10] + 16);
    v30 = swift_task_alloc();
    v0[31] = v30;
    *v30 = v0;
    v30[1] = sub_1B72FEBF8;
    v31 = v0[23];

    return sub_1B73A1550((v0 + 2), v31);
  }
}

uint64_t sub_1B72FEBF8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1B72FF124;
  }

  else
  {
    sub_1B72FF8EC(*(v2 + 184), type metadata accessor for InternalAccountQuery);
    v3 = sub_1B72FED28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B72FED28()
{
  v22 = v0;
  v2 = v0 + 16;
  v1 = *(v0 + 16);
  *(v0 + 304) = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 264) = v1;
  *(v0 + 272) = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 120);
    *v21 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    sub_1B7205540(0, &qword_1EDAFAF30);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = *(v0 + 144);
      sub_1B72FF884(v6, v8, type metadata accessor for InternalAccount);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1B7807CD0;
      v10 = sub_1B77FF9B8();
      *(v9 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
      *(v9 + 64) = sub_1B726E47C();
      *(v9 + 32) = v10;
      sub_1B78010E8();
      sub_1B72FF8EC(v8, type metadata accessor for InternalAccount);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v6 += v7;
      --v4;
    }

    while (v4);
    v2 = v0 + 16;
  }

  sub_1B7205540(0, &qword_1EDAFAF30);
  v11 = sub_1B7800C18();

  v12 = [objc_opt_self() orPredicateWithSubpredicates_];
  *(v0 + 280) = v12;

  static DeviceInfo.deviceType.getter(v21);
  if (v21[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();

    v14 = *(v0 + 224);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    sub_1B7201CF8(*(v0 + 264), *(v0 + 304));

    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 288) = v19;
    *v19 = v0;
    v19[1] = sub_1B72FF260;
    v20 = MEMORY[0x1E69E7CC0];

    return sub_1B73AC948(v2 + 24, v12, v20, 0, 1, 0, 1);
  }
}

uint64_t sub_1B72FF124()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  sub_1B72FF8EC(v0[23], type metadata accessor for InternalAccountQuery);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B72FF260()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1B72FF740;
  }

  else
  {

    v3 = sub_1B72FF37C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B72FF37C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);

  sub_1B7201CF8(v2, v4);

  v27 = *(v1 + 16);
  if (v27)
  {
    v6 = 0;
    v26 = *(v0 + 120);
    v7 = *(v0 + 96);
    v31 = *(v0 + 88);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *(v0 + 272);
      if (v6 >= *(v8 + 16))
      {
LABEL_23:
        __break(1u);
        return result;
      }

      v28 = *(v26 + 72);
      v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      result = sub_1B72FF884(v8 + v29 + v28 * v6, *(v0 + 136), type metadata accessor for InternalAccount);
      v9 = *(v3 + 16);
      if (!v9)
      {
LABEL_3:
        result = sub_1B72FF8EC(*(v0 + 136), type metadata accessor for InternalAccount);
        goto LABEL_4;
      }

      v10 = 0;
      v11 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1B72FF884(v11 + *(v7 + 72) * v10, *(v0 + 104), type metadata accessor for BankConnectConsent);
        v12 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
        v13 = *(v0 + 104);
        if (v12)
        {
          break;
        }

        result = sub_1B72FF8EC(v13, type metadata accessor for BankConnectConsent);
LABEL_9:
        if (v9 == ++v10)
        {
          goto LABEL_3;
        }
      }

      v14 = *(v13 + *(v31 + 44));
      result = sub_1B72FF8EC(v13, type metadata accessor for BankConnectConsent);
      if (v14)
      {
        goto LABEL_9;
      }

      sub_1B72FF94C(*(v0 + 136), *(v0 + 128), type metadata accessor for InternalAccount);
      v15 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B71FD914(0, *(v25 + 16) + 1, 1);
        v15 = v25;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B71FD914(v16 > 1, v17 + 1, 1);
        v15 = v25;
      }

      v18 = *(v0 + 128);
      *(v15 + 16) = v17 + 1;
      v25 = v15;
      result = sub_1B72FF94C(v18, v15 + v29 + v17 * v28, type metadata accessor for InternalAccount);
LABEL_4:
      if (++v6 == v27)
      {
        goto LABEL_19;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v19 = *(v0 + 264);
  v20 = *(v0 + 224);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 304);

  v30 = sub_1B72FE330(v25);

  sub_1B7201CF8(v19, v23);

  (*(v21 + 8))(v20, v22);

  v24 = *(v0 + 8);

  return v24(v30);
}

uint64_t sub_1B72FF740()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_1B7201CF8(*(v0 + 264), *(v0 + 304));

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B72FF884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72FF8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B72FF94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B72FF9BC()
{
  result = qword_1EB991D20;
  if (!qword_1EB991D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D18);
    sub_1B72FFA48();
    sub_1B72D7CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991D20);
  }

  return result;
}

unint64_t sub_1B72FFA48()
{
  result = qword_1EB991D28;
  if (!qword_1EB991D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991CF0);
    sub_1B72FFB90(&qword_1EB991D30, &qword_1EB991CE8);
    sub_1B72FFAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991D28);
  }

  return result;
}

unint64_t sub_1B72FFAEC()
{
  result = qword_1EB991D40;
  if (!qword_1EB991D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D00);
    sub_1B72FFB90(&qword_1EB991D48, &qword_1EB991D50);
    sub_1B72FFC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991D40);
  }

  return result;
}

uint64_t sub_1B72FFB90(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B728216C(&qword_1EB991D38, &qword_1EB98F698);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72FFC28()
{
  result = qword_1EB991D58;
  if (!qword_1EB991D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D60);
    sub_1B72FFCE0();
    sub_1B728216C(&qword_1EB991D88, &qword_1EB991D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991D58);
  }

  return result;
}

unint64_t sub_1B72FFCE0()
{
  result = qword_1EB991D68;
  if (!qword_1EB991D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D70);
    sub_1B72FFDB4(&qword_1EB991D78);
    sub_1B72FFDB4(&qword_1EB99E260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991D68);
  }

  return result;
}

uint64_t sub_1B72FFDB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991D80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RecurringPaymentQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DC8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5D8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for RecurringPaymentQuery();
  sub_1B73000DC(a2, a7 + v22[5]);
  v23 = a7 + v22[6];
  *v23 = a3;
  v23[8] = a4 & 1;
  v24 = a7 + v22[7];
  *v24 = v27;
  v24[8] = v28 & 1;
  sub_1B73000DC(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B730014C(a2);
    result = sub_1B730014C(v14);
    v26 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v26 = sub_1B71F9E90(v19);
    sub_1B730014C(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v26;
  return result;
}

uint64_t type metadata accessor for RecurringPaymentQuery()
{
  result = qword_1EB991DD0;
  if (!qword_1EB991DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B73000DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B730014C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B73001DC()
{
  sub_1B729D930(319, &qword_1EB991DE0, &qword_1EB991DE8, &unk_1B78205D0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB991DF0, &qword_1EB98F5D8, &unk_1B7809360, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t RawBankConnectData.AccountParty.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.AccountParty.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.AccountParty.number.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.AccountParty.number.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.AccountParty.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawBankConnectData.AccountParty.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RawBankConnectData.AccountParty.fullLegalName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RawBankConnectData.AccountParty.fullLegalName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RawBankConnectData.AccountParty.emailAddress.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t RawBankConnectData.AccountParty.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t RawBankConnectData.AccountParty.addresses.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

double RawBankConnectData.AccountParty.init(id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 4;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 525;
  *(a3 + 74) = 32;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

char *RawBankConnectData.AccountParty.fraudAttributes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DF8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = v0[6];
  v11 = v0[8];
  v50 = v0[7];
  v51 = v11;
  v12 = v0[10];
  v52 = v0[11];
  v13 = v0[12];
  v14 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  if (v10)
  {

    sub_1B77FEEB8();
    v49 = v12;
    v15 = sub_1B77FEEA8();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 0, 1, v15);
    sub_1B73028C0(v9, v7);
    v17 = *(v16 + 48);
    if (v17(v7, 1, v15) == 1)
    {
      sub_1B7302930(v7);
    }

    else
    {
      v18 = sub_1B77FEE58();
      v20 = v19;
      (*(v16 + 8))(v7, v15);
      if (v20)
      {
        v48 = v18;
        v14 = sub_1B723EC14(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v22 = *(v14 + 2);
        v21 = *(v14 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v47 = v22 + 1;
          v45 = sub_1B723EC14((v21 > 1), v22 + 1, 1, v14);
          v23 = v47;
          v14 = v45;
        }

        *(v14 + 2) = v23;
        v24 = &v14[24 * v22];
        *(v24 + 4) = v48;
        *(v24 + 5) = v20;
        v24[48] = 8;
        v60 = v14;
LABEL_9:
        sub_1B73028C0(v9, v4);
        if (v17(v4, 1, v15) == 1)
        {
          sub_1B7302930(v9);
          v25 = v4;
        }

        else
        {
          v26 = sub_1B77FEE68();
          v28 = v27;
          (*(v16 + 8))(v4, v15);
          if (v28)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1B723EC14(0, *(v14 + 2) + 1, 1, v14);
            }

            v30 = *(v14 + 2);
            v29 = *(v14 + 3);
            if (v30 >= v29 >> 1)
            {
              v14 = sub_1B723EC14((v29 > 1), v30 + 1, 1, v14);
            }

            sub_1B7302930(v9);
            *(v14 + 2) = v30 + 1;
            v31 = &v14[24 * v30];
            *(v31 + 4) = v26;
            *(v31 + 5) = v28;
            v31[48] = 9;
            v60 = v14;
            goto LABEL_19;
          }

          v25 = v9;
        }

        sub_1B7302930(v25);
LABEL_19:
        v12 = v49;
        goto LABEL_20;
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_20:
  v33 = v51;
  v32 = v52;
  if (v51)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1B723EC14(0, *(v14 + 2) + 1, 1, v14);
    }

    v35 = *(v14 + 2);
    v34 = *(v14 + 3);
    if (v35 >= v34 >> 1)
    {
      v14 = sub_1B723EC14((v34 > 1), v35 + 1, 1, v14);
    }

    *(v14 + 2) = v35 + 1;
    v36 = &v14[24 * v35];
    *(v36 + 4) = v50;
    *(v36 + 5) = v33;
    v36[48] = 10;
    v60 = v14;
  }

  if (v32)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1B723EC14(0, *(v14 + 2) + 1, 1, v14);
    }

    v38 = *(v14 + 2);
    v37 = *(v14 + 3);
    if (v38 >= v37 >> 1)
    {
      v14 = sub_1B723EC14((v37 > 1), v38 + 1, 1, v14);
    }

    *(v14 + 2) = v38 + 1;
    v39 = &v14[24 * v38];
    *(v39 + 4) = v12;
    *(v39 + 5) = v32;
    v39[48] = 7;
    v60 = v14;
  }

  if (v13 && *(v13 + 16))
  {
    v40 = *(v13 + 112);
    v57 = *(v13 + 96);
    v58 = v40;
    v59 = *(v13 + 128);
    v41 = *(v13 + 48);
    v53 = *(v13 + 32);
    v54 = v41;
    v42 = *(v13 + 80);
    v55 = *(v13 + 64);
    v56 = v42;
    v43 = sub_1B7355B54();
    sub_1B7244380(v43);
  }

  return v60;
}

unint64_t sub_1B7300BD8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x52746E756F636361;
    v6 = 0x6464416C69616D65;
    if (a1 != 8)
    {
      v6 = 0x6573736572646461;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7274536C6167656CLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7079547974726170;
    v3 = 1701667182;
    if (a1 != 3)
    {
      v3 = 0x6167654C6C6C7566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7265626D756ELL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B7300D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7303778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7300D70(uint64_t a1)
{
  v2 = sub_1B7302D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7300DAC(uint64_t a1)
{
  v2 = sub_1B7302D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.AccountParty.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991E00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v29 = *(v1 + 32);
  v8 = *(v1 + 40);
  v23 = *(v1 + 48);
  v24 = v8;
  v9 = *(v1 + 56);
  v21 = *(v1 + 64);
  v22 = v9;
  LODWORD(v9) = *(v1 + 72);
  v19 = *(v1 + 73);
  v20 = v9;
  v18 = *(v1 + 74);
  v10 = *(v1 + 88);
  v16 = *(v1 + 80);
  v17 = v10;
  v15 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7302D68();
  sub_1B78023F8();
  LOBYTE(v28) = 0;
  v11 = v27;
  sub_1B7801F78();
  if (!v11)
  {
    v13 = v29;
    LOBYTE(v28) = 1;
    sub_1B7801EF8();
    LOBYTE(v28) = v13;
    v30 = 2;
    sub_1B7302DBC();
    sub_1B7801F38();
    LOBYTE(v28) = 3;
    sub_1B7801EF8();
    LOBYTE(v28) = 4;
    sub_1B7801EF8();
    LOBYTE(v28) = v20;
    v30 = 5;
    sub_1B7302E10();
    sub_1B7801F38();
    LOBYTE(v28) = 6;
    sub_1B7801F08();
    LOBYTE(v28) = v18;
    v30 = 7;
    sub_1B7302E64();
    sub_1B7801F38();
    LOBYTE(v28) = 8;
    sub_1B7801EF8();
    v28 = v15;
    v30 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991E28);
    sub_1B7303008(&qword_1EB991E30, sub_1B7302EB8);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.AccountParty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991E40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7302D68();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    LOBYTE(v46[0]) = 0;
    v9 = sub_1B7801DF8();
    v38 = v10;
    LOBYTE(v46[0]) = 1;
    *&v37 = sub_1B7801D78();
    *(&v37 + 1) = v11;
    LOBYTE(v40[0]) = 2;
    sub_1B7302F0C();
    sub_1B7801DB8();
    v12 = LOBYTE(v46[0]);
    LOBYTE(v46[0]) = 3;
    v34 = sub_1B7801D78();
    v35 = v12;
    v36 = v13;
    LOBYTE(v46[0]) = 4;
    v33 = sub_1B7801D78();
    v39 = v14;
    LOBYTE(v40[0]) = 5;
    sub_1B7302F60();
    sub_1B7801DB8();
    v15 = LOBYTE(v46[0]);
    LOBYTE(v46[0]) = 6;
    v31 = sub_1B7801D88();
    v32 = v15;
    LOBYTE(v40[0]) = 7;
    sub_1B7302FB4();
    sub_1B7801DB8();
    v30 = LOBYTE(v46[0]);
    LOBYTE(v46[0]) = 8;
    v29 = sub_1B7801D78();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991E28);
    v58 = 9;
    sub_1B7303008(&qword_1EB991E60, sub_1B7303080);
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    v18 = v59;
    *&v40[0] = v9;
    v19 = v38;
    *(&v40[0] + 1) = v38;
    v40[1] = v37;
    v20 = *(&v37 + 1);
    LOBYTE(v41) = v35;
    *(&v41 + 1) = v34;
    *&v42 = v36;
    *(&v42 + 1) = v33;
    v21 = v39;
    *&v43 = v39;
    BYTE8(v43) = v32;
    BYTE9(v43) = v31;
    BYTE10(v43) = v30;
    *&v44 = v29;
    *(&v44 + 1) = v17;
    v45 = v59;
    v22 = v37;
    *a2 = v40[0];
    *(a2 + 16) = v22;
    v23 = v41;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    *(a2 + 96) = v18;
    *(a2 + 64) = v25;
    *(a2 + 80) = v26;
    *(a2 + 32) = v23;
    *(a2 + 48) = v24;
    sub_1B73030D4(v40, v46);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v46[0] = v9;
    v46[1] = v19;
    v46[2] = v37;
    v46[3] = v20;
    v47 = v35;
    v48 = v34;
    v49 = v36;
    v50 = v33;
    v51 = v21;
    v52 = v32;
    v53 = v31;
    v54 = v30;
    v55 = v29;
    v56 = v17;
    v57 = v18;
    return sub_1B730310C(v46);
  }
}

uint64_t RawBankConnectData.AccountRole.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7802178();

  v4 = 0;
  v5 = 14;
  switch(v2)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v4 = 1;
      goto LABEL_25;
    case 2:
      v4 = 2;
      goto LABEL_25;
    case 3:
      v4 = 3;
      goto LABEL_25;
    case 4:
      v4 = 4;
      goto LABEL_25;
    case 5:
      v4 = 5;
      goto LABEL_25;
    case 6:
      v4 = 6;
      goto LABEL_25;
    case 7:
      v4 = 7;
      goto LABEL_25;
    case 8:
      v4 = 8;
      goto LABEL_25;
    case 9:
      v4 = 9;
      goto LABEL_25;
    case 10:
      v4 = 10;
      goto LABEL_25;
    case 11:
      v4 = 11;
      goto LABEL_25;
    case 12:
      v4 = 12;
      goto LABEL_25;
    case 13:
      v4 = 13;
LABEL_25:
      v5 = v4;
      break;
    case 14:
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    default:
      v5 = 32;
      break;
  }

  *a1 = v5;
  return result;
}

unint64_t RawBankConnectData.AccountRole.rawValue.getter()
{
  result = 0x5453494E494D4441;
  switch(*v0)
  {
    case 1:
      result = 0x49434946454E4542;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x5245544E415247;
      break;
    case 4:
      result = 0x55475F4C4147454CLL;
      break;
    case 5:
      result = 0x41505F524548544FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x415049434E495250;
      break;
    case 8:
      result = 0x4F544345544F5250;
      break;
    case 9:
      v2 = 9;
      goto LABEL_9;
    case 0xA:
    case 0x1B:
      result = 0x5241444E4F434553;
      break;
    case 0xB:
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0x524F4C54544553;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x5A49524F48545541;
      break;
    case 0xF:
      result = 0x5353454E49535542;
      break;
    case 0x10:
      result = 0x454E45425F524F46;
      break;
    case 0x11:
      result = 0xD000000000000016;
      break;
    case 0x12:
      result = 0xD000000000000027;
      break;
    case 0x14:
      result = 0xD000000000000029;
      break;
    case 0x15:
      result = 0xD000000000000024;
      break;
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x17:
      result = 0xD000000000000010;
      break;
    case 0x18:
      result = 0x5F5952414D495250;
      break;
    case 0x19:
      v2 = 5;
LABEL_9:
      result = v2 | 0xD000000000000012;
      break;
    case 0x1A:
      result = 0xD000000000000012;
      break;
    case 0x1C:
      result = 0x4E574F5F454C4F53;
      break;
    case 0x1D:
      result = 0x45455453555254;
      break;
    case 0x1E:
      result = 0xD000000000000019;
      break;
    case 0x1F:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B7301E90@<X0>(unint64_t *a1@<X8>)
{
  result = RawBankConnectData.AccountRole.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RawBankConnectData.LegalStructure.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RawBankConnectData.LegalStructure.rawValue.getter()
{
  result = 4409667;
  switch(*v0)
  {
    case 1:
      result = 5196099;
      break;
    case 2:
      result = 0x59544952414843;
      break;
    case 3:
      result = 1347374915;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x5544495649444E49;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xA:
      result = 0xD00000000000001CLL;
      break;
    case 0xB:
      result = 1162628947;
      break;
    case 0xC:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7302164(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1B78022F8();
  a3(v4);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B73021EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1B7800798();
}

uint64_t sub_1B730226C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B78022F8();
  a4(v5);
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B73022E4@<X0>(unint64_t *a1@<X8>)
{
  result = RawBankConnectData.LegalStructure.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B73023E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t RawBankConnectData.PartyType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t RawBankConnectData.PartyType.rawValue.getter()
{
  v1 = 0x45544147454C4544;
  v2 = 1162628947;
  if (*v0 != 2)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    v1 = 0x544E494F4ALL;
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

uint64_t sub_1B7302564()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B730261C()
{
  sub_1B7800798();
}

uint64_t sub_1B73026C0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7302780(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x45544147454C4544;
  v4 = 0xE400000000000000;
  v5 = 1162628947;
  if (*v1 != 2)
  {
    v5 = 0x4E574F4E4B4E55;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x544E494F4ALL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1B73028C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7302930(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s10FinanceKit18RawBankConnectDataO12AccountPartyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v35 = *(a1 + 56);
  v39 = *(a1 + 64);
  v36 = *(a1 + 72);
  v31 = *(a1 + 74);
  v32 = *(a1 + 73);
  v25 = *(a1 + 80);
  v29 = *(a1 + 88);
  v27 = *(a1 + 96);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v34 = *(a2 + 56);
  v38 = *(a2 + 64);
  v37 = *(a2 + 72);
  v33 = *(a2 + 73);
  v30 = *(a2 + 74);
  v24 = *(a2 + 80);
  v28 = *(a2 + 88);
  v26 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v4 == 4)
  {
    if (v9 != 4)
    {
      return 0;
    }
  }

  else if (v9 == 4 || (sub_1B72C228C(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10 || (v5 != v11 || v6 != v10) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v39)
  {
    if (!v38 || (v35 != v34 || v39 != v38) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if (v36 == 13)
  {
    if (v37 != 13)
    {
      return 0;
    }
  }

  else
  {
    if (v37 == 13)
    {
      return 0;
    }

    v12 = RawBankConnectData.LegalStructure.rawValue.getter();
    v14 = v13;
    if (v12 == RawBankConnectData.LegalStructure.rawValue.getter() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_1B78020F8();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v33 != 2 && ((v33 ^ v32) & 1) == 0)
  {
LABEL_43:
    if (v31 == 32)
    {
      if (v30 != 32)
      {
        return 0;
      }
    }

    else
    {
      if (v30 == 32)
      {
        return 0;
      }

      v18 = RawBankConnectData.AccountRole.rawValue.getter();
      v20 = v19;
      if (v18 == RawBankConnectData.AccountRole.rawValue.getter() && v20 == v21)
      {
      }

      else
      {
        v22 = sub_1B78020F8();

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v29)
    {
      if (!v28 || (v25 != v24 || v29 != v28) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    if (v27)
    {
      if (!v26)
      {
        return 0;
      }

      v23 = sub_1B731FEC0(v27, v26);

      return (v23 & 1) != 0;
    }

    return !v26;
  }

  return result;
}

unint64_t sub_1B7302D68()
{
  result = qword_1EB991E08;
  if (!qword_1EB991E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E08);
  }

  return result;
}

unint64_t sub_1B7302DBC()
{
  result = qword_1EB991E10;
  if (!qword_1EB991E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E10);
  }

  return result;
}

unint64_t sub_1B7302E10()
{
  result = qword_1EB991E18;
  if (!qword_1EB991E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E18);
  }

  return result;
}

unint64_t sub_1B7302E64()
{
  result = qword_1EB991E20;
  if (!qword_1EB991E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E20);
  }

  return result;
}

unint64_t sub_1B7302EB8()
{
  result = qword_1EB991E38;
  if (!qword_1EB991E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E38);
  }

  return result;
}

unint64_t sub_1B7302F0C()
{
  result = qword_1EB991E48;
  if (!qword_1EB991E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E48);
  }

  return result;
}

unint64_t sub_1B7302F60()
{
  result = qword_1EB991E50;
  if (!qword_1EB991E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E50);
  }

  return result;
}

unint64_t sub_1B7302FB4()
{
  result = qword_1EB991E58;
  if (!qword_1EB991E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E58);
  }

  return result;
}

uint64_t sub_1B7303008(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991E28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7303080()
{
  result = qword_1EB991E68;
  if (!qword_1EB991E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E68);
  }

  return result;
}

unint64_t sub_1B7303140()
{
  result = qword_1EB991E70;
  if (!qword_1EB991E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E70);
  }

  return result;
}

unint64_t sub_1B73031C8()
{
  result = qword_1EB991E88;
  if (!qword_1EB991E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991E88);
  }

  return result;
}

unint64_t sub_1B7303250()
{
  result = qword_1EB991EA0;
  if (!qword_1EB991EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EA0);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B7303300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B7303348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11AccountRoleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11AccountRoleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FoundInMailItem.OrderDetails.ShippingDetails.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FoundInMailItem.OrderDetails.ShippingDetails.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7303674()
{
  result = qword_1EB991EB8;
  if (!qword_1EB991EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EB8);
  }

  return result;
}

unint64_t sub_1B73036CC()
{
  result = qword_1EB991EC0;
  if (!qword_1EB991EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EC0);
  }

  return result;
}

unint64_t sub_1B7303724()
{
  result = qword_1EB991EC8;
  if (!qword_1EB991EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EC8);
  }

  return result;
}

uint64_t sub_1B7303778(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547974726170 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6167654C6C6C7566 && a2 == 0xED0000656D614E6CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274536C6167656CLL && a2 == 0xEE00657275746375 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78795A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x52746E756F636361 && a2 == 0xEB00000000656C6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1B7303AC4()
{
  result = qword_1EB991ED0;
  if (!qword_1EB991ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991ED0);
  }

  return result;
}

unint64_t sub_1B7303B18()
{
  result = qword_1EB991ED8;
  if (!qword_1EB991ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991ED8);
  }

  return result;
}

unint64_t sub_1B7303B6C()
{
  result = qword_1EB991EE0;
  if (!qword_1EB991EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EE0);
  }

  return result;
}

void static CNPostalAddressValueTransformer.register()()
{
  v1 = objc_opt_self();
  v2 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991EE8);
  sub_1B7800908();
  v3 = sub_1B7800838();

  [v1 setValueTransformer:v2 forName:v3];
}

id CNPostalAddressValueTransformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CNPostalAddressValueTransformer.transformedValue(_:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B7303F28(a1, &v16);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v4 = v9;
      v3 = v10;
      v5 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      sub_1B720ABEC(v9, v10);
      v6 = sub_1B77EEC00();
      sub_1B720A388(v9, v10);
      [v6 setRequiresSecureCoding_];
      sub_1B7800868();
      sub_1B73043C4();
      sub_1B78012C8();

      v7 = v16;
      if (v16 != 1)
      {
        sub_1B7205540(0, &qword_1EB990D70);
        v9 = v7;
        v12 = v19;
        v13 = v20;
        v14 = v21;
        v15 = v22;
        v10 = v17;
        v11 = v18;
        v8 = CNMutablePostalAddress.init(rawAddress:)(&v9);
        [v8 copy];

        sub_1B7801848();
        sub_1B720A388(v4, v3);

        swift_unknownObjectRelease();
        return;
      }

      sub_1B720A388(v9, v10);
    }
  }

  else
  {
    sub_1B726990C(&v16);
  }

  *a2 = 0u;
  a2[1] = 0u;
}

uint64_t sub_1B7303F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CNPostalAddressValueTransformer.reverseTransformedValue(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7303F28(a1, v14);
  if (v15)
  {
    sub_1B7205540(0, &qword_1EDAFAF20);
    if (swift_dynamicCast())
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      v4 = v13;
      RawAddress.init(_:)(v4, v11);
      sub_1B7800868();
      sub_1B7304418();
      sub_1B7801248();
      v9[4] = v11[4];
      v9[5] = v11[5];
      v10 = v12;
      v9[0] = v11[0];
      v9[1] = v11[1];
      v9[2] = v11[2];
      v9[3] = v11[3];
      sub_1B730446C(v9);

      v5 = [v3 encodedData];
      v6 = sub_1B77FF5B8();
      v8 = v7;

      *(a2 + 24) = MEMORY[0x1E6969080];
      *a2 = v6;
      *(a2 + 8) = v8;
      return;
    }
  }

  else
  {
    sub_1B726990C(v14);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

id sub_1B7304194(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  a4(v16, v15);

  sub_1B726990C(v15);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1B78020D8();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id CNPostalAddressValueTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNPostalAddressValueTransformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B73043C4()
{
  result = qword_1EB991EF0;
  if (!qword_1EB991EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991EF0);
  }

  return result;
}

unint64_t sub_1B7304418()
{
  result = qword_1EB991EF8[0];
  if (!qword_1EB991EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB991EF8);
  }

  return result;
}

id CacheKeyWrapper.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1B7304970(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id CacheKeyWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1B7304970(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t CacheKeyWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B7303F28(a1, v5);
  if (!v6)
  {
    sub_1B726990C(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1B7800828();

  return v2 & 1;
}

uint64_t sub_1B7304708(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = CacheKeyWrapper.isEqual(_:)(v8);

  sub_1B726990C(v8);
  return v6 & 1;
}

uint64_t sub_1B7304780(void *a1)
{
  v1 = a1;
  v2 = CacheKeyWrapper.hash.getter();

  return v2;
}

id CacheKeyWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CacheKeyWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B7304970(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B7304A5C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RelatedTransactionQuery.RelationshipStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t RelatedTransactionQuery.init(relatedTo:sameAccountOnly:sortDescriptors:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  v8 = type metadata accessor for RelatedTransactionQuery();
  result = sub_1B7304D10(a1, a4 + v8[7]);
  *(a4 + v8[8]) = a2;
  *a4 = a3;
  *(a4 + v8[9]) = 0;
  return result;
}

uint64_t RelatedTransactionQuery.init(relatedTo:relationshipStrategy:sameAccountOnly:sortDescriptors:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  v10 = type metadata accessor for RelatedTransactionQuery();
  result = sub_1B7304D10(a1, a5 + v10[7]);
  *(a5 + v10[8]) = a3;
  *a5 = a4;
  *(a5 + v10[9]) = v9;
  return result;
}

uint64_t type metadata accessor for RelatedTransactionQuery()
{
  result = qword_1EB991F88;
  if (!qword_1EB991F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7304D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7304D78()
{
  result = qword_1EB991F80;
  if (!qword_1EB991F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991F80);
  }

  return result;
}

uint64_t sub_1B7304DCC()
{
  v1 = type metadata accessor for RelatedTransactionQuery();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalTransaction();
  v4 = static ManagedInternalTransaction.existingTransaction(withTransactionID:in:)();
  if (v4)
  {
    v5 = v4;
    if (*(v0 + *(v1 + 36)))
    {
      v6 = sub_1B7305D44(v4);
    }

    else
    {
      v6 = sub_1B73051C8(v4);
    }

    v16 = v6;
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v7 = sub_1B78000B8();
    __swift_project_value_buffer(v7, qword_1EDAF6590);
    sub_1B730644C(v0, v3);
    v8 = sub_1B7800098();
    v9 = sub_1B78011D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      sub_1B77FFA18();
      sub_1B729D260();
      v12 = sub_1B7802068();
      v14 = v13;
      sub_1B73064B0(v3);
      v15 = sub_1B71A3EF8(v12, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1B7198000, v8, v9, "Could not find transaction: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
    }

    else
    {

      sub_1B73064B0(v3);
    }

    sub_1B7205540(0, &qword_1EDAFAF30);
    return sub_1B78010E8();
  }

  return v16;
}

id sub_1B73051C8(void *a1)
{
  v2 = v1;
  v4 = [a1 insightsObject];
  v5 = v4;
  v73 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = [v4 mapsInsightObject];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 brandObject];

      if (v8)
      {
        v9 = [v8 muid];

        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1B7807CD0;
        v11 = MEMORY[0x1E69E7738];
        *(v10 + 56) = MEMORY[0x1E69E76D8];
        *(v10 + 64) = v11;
        *(v10 + 32) = v9;
        sub_1B78010E8();
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
      }
    }

    v12 = [v5 mapsInsightObject];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 merchantObject];

      if (v14)
      {
        v15 = [v14 muid];

        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v16 = swift_allocObject();
        v17 = MEMORY[0x1E69E76D8];
        *(v16 + 16) = xmmword_1B7807CD0;
        v18 = MEMORY[0x1E69E7738];
        *(v16 + 56) = v17;
        *(v16 + 64) = v18;
        *(v16 + 32) = v15;
        sub_1B78010E8();
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
      }
    }
  }

  v19 = [a1 publicTransactionObject];
  v20 = [v19 merchantName];

  if (v20)
  {
    v21 = sub_1B7800868();
    v23 = v22;

    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B7807CD0;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1B721FF04();
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  if (v5)
  {
    v25 = [v5 applePayInsightObject];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 adamIdentifierValue];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 longLongValue];

        if (v29)
        {
          sub_1B7205540(0, &qword_1EDAFAF30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v30 = swift_allocObject();
          v31 = MEMORY[0x1E69E7360];
          *(v30 + 16) = xmmword_1B7807CD0;
          v32 = MEMORY[0x1E69E73D8];
          *(v30 + 56) = v31;
          *(v30 + 64) = v32;
          *(v30 + 32) = v29;
          sub_1B78010E8();
          MEMORY[0x1B8CA4F20]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
        }
      }

      else
      {
      }
    }

    v33 = [v5 applePayInsightObject];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 webMerchantIdentifier];

      if (v35)
      {
        v36 = sub_1B7800868();
        v38 = v37;

        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1B7807CD0;
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = sub_1B721FF04();
        *(v39 + 32) = v36;
        *(v39 + 40) = v38;
        sub_1B78010E8();
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
      }
    }

    v40 = [v5 applePayInsightObject];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 merchantRawCANL];

      if (v42)
      {
        v43 = sub_1B7800868();
        v45 = v44;

        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1B7807CD0;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = sub_1B721FF04();
        *(v46 + 32) = v43;
        *(v46 + 40) = v45;
        sub_1B78010E8();
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
      }
    }
  }

  v72 = v5;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B7807CD0;
  v71 = a1;
  v48 = [a1 publicTransactionObject];
  v49 = [v48 transactionDescription];

  v50 = sub_1B7800868();
  v52 = v51;

  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1B721FF04();
  *(v47 + 32) = v50;
  *(v47 + 40) = v52;
  sub_1B78010E8();
  MEMORY[0x1B8CA4F20]();
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7800C58();
  }

  sub_1B7800C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B780B190;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B7807CD0;
  v55 = type metadata accessor for RelatedTransactionQuery();
  v56 = sub_1B77FF9B8();
  v57 = sub_1B7205540(0, &qword_1EB9905A8);
  *(v54 + 56) = v57;
  v58 = sub_1B726E47C();
  *(v54 + 64) = v58;
  *(v54 + 32) = v56;
  *(v53 + 32) = sub_1B78010E8();
  if (*(v2 + *(v55 + 32)) == 1)
  {
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1B7807CD0;
    v60 = [v71 publicTransactionObject];
    v61 = [v60 accountId];

    *(v59 + 56) = v57;
    *(v59 + 64) = v58;
    *(v59 + 32) = v61;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B780C060;
  v63 = sub_1B7800C18();

  v64 = objc_opt_self();
  v65 = [v64 andPredicateWithSubpredicates_];

  *(v62 + 32) = v65;
  v66 = sub_1B7800C18();

  v67 = [v64 orPredicateWithSubpredicates_];

  *(v62 + 40) = v67;
  v68 = sub_1B7800C18();

  v69 = [v64 andPredicateWithSubpredicates_];

  return v69;
}

id sub_1B7305D44(void *a1)
{
  v2 = v1;
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = [a1 insightsObject];
  v12 = [v11 finHealthInsightObject];

  v13 = [v12 finHealthTransactionEntityGroupObject];
  if (v13)
  {
    v41 = a1;
    v46 = v12;
    v43 = v13;
    v14 = [v13 id];
    sub_1B77FF9E8();

    v44 = v5;
    v45 = v4;
    (*(v5 + 32))(v10, v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B780B190;
    sub_1B7205540(0, &qword_1EDAFAF30);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v17 = swift_allocObject();
    v47 = xmmword_1B7807CD0;
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = type metadata accessor for RelatedTransactionQuery();
    v19 = sub_1B77FF9B8();
    v20 = sub_1B7205540(0, &qword_1EB9905A8);
    v42 = v2;
    v21 = v20;
    *(v17 + 56) = v20;
    v22 = sub_1B726E47C();
    *(v17 + 64) = v22;
    *(v17 + 32) = v19;
    *(v15 + 32) = sub_1B78010E8();
    v48 = v15;
    v40[1] = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = v47;
    v24 = v10;
    v25 = sub_1B77FF9B8();
    v26 = v21;
    *(v23 + 56) = v21;
    *(v23 + 64) = v22;
    v27 = v22;
    *(v23 + 32) = v25;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v28 = *(v42 + *(v18 + 32));
    v29 = v46;
    if (v28 == 1)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = v47;
      v31 = [v41 publicTransactionObject];
      v32 = [v31 accountId];

      *(v30 + 56) = v26;
      *(v30 + 64) = v27;
      *(v30 + 32) = v32;
      sub_1B78010E8();
      MEMORY[0x1B8CA4F20]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    v33 = sub_1B7800C18();

    v34 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v44 + 8))(v24, v45);
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v35 = sub_1B78000B8();
    __swift_project_value_buffer(v35, qword_1EDAF6590);
    v36 = sub_1B7800098();
    v37 = sub_1B78011B8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B7198000, v36, v37, "Transaction has no grouping insight", v38, 2u);
      MEMORY[0x1B8CA7A40](v38, -1, -1);
    }

    sub_1B7205540(0, &qword_1EDAFAF30);
    v34 = sub_1B78010E8();
  }

  return v34;
}

void sub_1B7306324()
{
  sub_1B73063D8();
  if (v0 <= 0x3F)
  {
    sub_1B729D994();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InternalTransaction(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B73063D8()
{
  if (!qword_1EB991F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991FA0);
    v0 = sub_1B7800CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB991F98);
    }
  }
}

uint64_t sub_1B730644C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedTransactionQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73064B0(uint64_t a1)
{
  v2 = type metadata accessor for RelatedTransactionQuery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FinanceKit::BankConnectRefreshFailure_optional __swiftcall BankConnectRefreshFailure.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t BankConnectRefreshFailure.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000029;
  }
}

unint64_t sub_1B730661C()
{
  result = qword_1EB991FA8;
  if (!qword_1EB991FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991FA8);
  }

  return result;
}

unint64_t sub_1B7306670()
{
  if (*v0)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000029;
  }
}

unint64_t sub_1B73066B8()
{
  result = qword_1EB991FB0[0];
  if (!qword_1EB991FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB991FB0);
  }

  return result;
}

uint64_t sub_1B7306714()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7306778(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
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
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
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
    goto LABEL_23;
  }

LABEL_12:
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

void sub_1B7306884(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
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
        goto LABEL_37;
      }

      goto LABEL_34;
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
LABEL_37:
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
            goto LABEL_37;
          }
        }

LABEL_34:
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
      goto LABEL_37;
    }

    goto LABEL_34;
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

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t FinanceStore.orderViewModelsForTransaction(withID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7306A80, 0, 0);
}

uint64_t sub_1B7306A80()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1B7306B1C;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B7707C30(v2, v3);
}

uint64_t sub_1B7306B1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7306C30()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B7306CC4;

  return sub_1B77081E8();
}

uint64_t sub_1B7306CC4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t FinanceStore.orderViewModels(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7306DE4, 0, 0);
}

uint64_t sub_1B7306DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B722A3DC;
  v2 = *(v0 + 16);

  return sub_1B77086B4(v2);
}

uint64_t FinanceStore.orderStorageViewModel()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7306EA0, 0, 0);
}

uint64_t sub_1B7306EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B7306F3C;
  v2 = *(v0 + 16);

  return sub_1B7708A70(v2);
}

uint64_t sub_1B7306F3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B730703C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletOrderRowViewModel.OrderRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73070C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletOrderRowViewModel.OrderRow(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WalletOrderRowViewModel.receiptRow.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletOrderRowViewModel(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1B73071C4(v4, v5);
}

uint64_t sub_1B73071C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 WalletOrderRowViewModel.receiptRow.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for WalletOrderRowViewModel(0) + 20);
  sub_1B730726C(*v5, *(v5 + 8));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t sub_1B730726C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t WalletOrderRowViewModel.fullyQualifiedOrderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletOrderRowViewModel(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

__n128 WalletOrderRowViewModel.fullyQualifiedOrderIdentifier.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for WalletOrderRowViewModel(0) + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t sub_1B730740C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Order.DisplayStatusValuesFormatter(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v105 = &v100 - v9;
  v106 = type metadata accessor for Order.DisplayStatusValues(0);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v100 - v15;
  v103 = type metadata accessor for OrderTitleFormatter.Input(0);
  v17 = MEMORY[0x1EEE9AC00](v103);
  v104 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v100 - v19);
  v21 = type metadata accessor for OrderTitleFormatter(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a1;
  v24 = [a1 objectID];
  v25 = [v24 URIRepresentation];

  type metadata accessor for WalletOrderRowViewModel.OrderRow(0);
  sub_1B77FF478();

  v26 = ManagedECommerceOrderContent.fulfillments.getter();
  sub_1B77FFA68();
  v27 = type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  v108 = v27;
  sub_1B77FFCC8();
  v28 = *(v26 + 2);
  v112 = v23;
  v113 = v11;
  if (v28)
  {
    v105 = v12;
    v106 = a2;
    v29 = *(v26 + 4);
    v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);

    if (v28 == 1)
    {
      v31 = v106;
      v101 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v63 = [v30 lineItemObjects];
        type metadata accessor for ManagedOrderLineItem();
        sub_1B7308800();
        v64 = sub_1B7800FA8();

        v114 = sub_1B7519CE0(v64);
        v33 = 0;
        sub_1B74D29C8(&v114);

        v32 = v114;
      }

      else
      {
        v32 = ManagedOrderShippingFulfillment.lineItems.getter();
        v33 = 0;
      }

      v65 = [v31 createdDate];
      sub_1B77FF928();

      v66 = v32 >> 62;
      if (v32 >> 62)
      {
        v67 = sub_1B7801958();
      }

      else
      {
        v67 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v102 = a3;
      v100 = 0;
      if (v67)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1B8CA5DC0](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v68 = *(v32 + 32);
        }

        v69 = v68;
        v70 = [v68 title];

        v71 = sub_1B77FFA48();
        v72 = sub_1B741F7D4(v71);
        v74 = v73;

        v75 = v32 & 0xFFFFFFFFFFFFFF8;
        if (!v66)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v72 = 0;
        v74 = 0;
        v75 = v32 & 0xFFFFFFFFFFFFFF8;
        if (!v66)
        {
LABEL_19:
          v76 = *(v75 + 16);
LABEL_22:

          v77 = v103;
          v78 = v104;
          *v104 = v72;
          v78[1] = v74;
          v78[2] = v76;
          v79 = v105;
          v80 = v113;
          (*(v105 + 4))(v78 + *(v77 + 24), v107, v113);
          sub_1B77FF938();
          v81 = OrderTitleFormatter.format(_:now:)(v78, v16);
          v83 = v82;
          v84 = *(v79 + 1);
          v84(v16, v80);
          sub_1B7308858(v78, type metadata accessor for OrderTitleFormatter.Input);
          v85 = v102;
          *v102 = v81;
          v85[1] = v83;
          v86 = v101;
          if ((v101 & 0x8000000000000000) == 0)
          {
            v87 = ManagedOrderShippingFulfillment.lineItems.getter();
LABEL_26:
            v107 = v84;
            if (v87 >> 62)
            {
              v91 = sub_1B7801958();
            }

            else
            {
              v91 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v85[4] = v91;
            v114 = v86;
            v92 = v106;
            v93 = v111;
            v94 = v30;
            v95 = v109;
            Order.DisplayStatusValues.init(order:orderContent:contentItem:)(v93, v92, &v114, v109);
            v96 = v110;
            sub_1B77FFA68();
            sub_1B77FFBC8();
            sub_1B77FFCC8();
            sub_1B77FF938();
            v97 = Order.DisplayStatusValuesFormatter.format(_:now:)(v95, v16);
            v99 = v98;

            (v107)(v16, v113);
            sub_1B7308858(v96, type metadata accessor for Order.DisplayStatusValuesFormatter);
            sub_1B7308858(v95, type metadata accessor for Order.DisplayStatusValues);
            result = sub_1B7308858(v112, type metadata accessor for OrderTitleFormatter);
            v85[2] = v97;
            v85[3] = v99;
            return result;
          }

          v88 = v101;
          v89 = [v30 lineItemObjects];
          type metadata accessor for ManagedOrderLineItem();
          sub_1B7308800();
          v90 = sub_1B7800FA8();

          v114 = sub_1B7519CE0(v90);
          v33 = v100;
          sub_1B74D29C8(&v114);
          if (!v33)
          {

            v87 = v114;
            v86 = v88;
            goto LABEL_26;
          }

LABEL_36:

          __break(1u);
          return result;
        }
      }

      v76 = sub_1B7801958();
      goto LABEL_22;
    }

    v54 = v106;
    v55 = ManagedECommerceOrderContent.lineItems.getter();
    v56 = [v54 createdDate];
    sub_1B77FF928();

    OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v55, v16, v20);
    sub_1B77FF938();
    v57 = v112;
    v58 = OrderTitleFormatter.format(_:now:)(v20, v16);
    v60 = v59;
    (*(v105 + 1))(v16, v113);
    sub_1B7308858(v20, type metadata accessor for OrderTitleFormatter.Input);
    *a3 = v58;
    a3[1] = v60;
    v61 = ManagedECommerceOrderContent.lineItems.getter();
    if (v61 >> 62)
    {
      v62 = sub_1B7801958();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1B7308858(v57, type metadata accessor for OrderTitleFormatter);
    a3[3] = 0;
    a3[4] = v62;
    a3[2] = 0;
  }

  else
  {

    v34 = a3;
    v35 = a2;
    v36 = ManagedECommerceOrderContent.lineItems.getter();
    v37 = [v35 createdDate];
    sub_1B77FF928();

    OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v36, v16, v20);
    sub_1B77FF938();
    v38 = OrderTitleFormatter.format(_:now:)(v20, v16);
    v40 = v39;
    v41 = *(v12 + 8);
    v41(v16, v11);
    sub_1B7308858(v20, type metadata accessor for OrderTitleFormatter.Input);
    *v34 = v38;
    v34[1] = v40;
    v42 = ManagedECommerceOrderContent.lineItems.getter();
    if (v42 >> 62)
    {
      v43 = sub_1B7801958();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v34;
    v34[4] = v43;
    v45 = v35;
    v46 = v111;
    v47 = v105;
    Order.Fulfillment.DisplayStatus<>.init(order:orderContent:)(v46, v45, v105);
    v48 = v109;
    sub_1B73088B8(v47, v109);
    swift_storeEnumTagMultiPayload();
    v49 = v110;
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B77FF938();
    v50 = Order.DisplayStatusValuesFormatter.format(_:now:)(v48, v16);
    v52 = v51;

    v41(v16, v113);
    sub_1B7308858(v49, type metadata accessor for Order.DisplayStatusValuesFormatter);
    sub_1B7308858(v48, type metadata accessor for Order.DisplayStatusValues);
    result = sub_1B7308858(v112, type metadata accessor for OrderTitleFormatter);
    v44[2] = v50;
    v44[3] = v52;
  }

  return result;
}

double sub_1B7307E88@<D0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = [a1 payment];
  if (!v8)
  {

    goto LABEL_24;
  }

  v9 = v8;
  v10 = ManagedOrderPayment.transactions.getter();

  if (!a3)
  {

    goto LABEL_24;
  }

  v34 = a1;
  v35 = a4;
  v33 = a2;
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_22:
  v11 = sub_1B7801958();
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_5:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8CA5DC0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v16 = [v13 applePayTransactionIdentifier];
    if (v16)
    {
      v17 = v16;
      sub_1B7800868();

      sub_1B7205210();
      v18 = sub_1B78017F8();

      if (!v18)
      {
        break;
      }
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_23;
    }
  }

  v19 = [v14 receiptName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B7800868();
    v23 = v22;

    v24 = [v33 orderTypeIdentifier];
    v25 = sub_1B7800868();
    v27 = v26;

    v28 = [v33 orderIdentifier];
    v29 = sub_1B7800868();
    v31 = v30;

    *v35 = v25;
    v35[1] = v27;
    v35[2] = v29;
    v35[3] = v31;
    v35[4] = v21;
    v35[5] = v23;
    return result;
  }

LABEL_24:
  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t WalletOrderRowViewModel.OrderRow.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletOrderRowViewModel.OrderRow.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WalletOrderRowViewModel.OrderRow.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WalletOrderRowViewModel.OrderRow.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WalletOrderRowViewModel.OrderRow.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletOrderRowViewModel.OrderRow(0) + 28);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WalletOrderRowViewModel.OrderRow.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalletOrderRowViewModel.OrderRow(0) + 28);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WalletOrderRowViewModel.ReceiptRow.fullyQualifiedOrderID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 WalletOrderRowViewModel.ReceiptRow.fullyQualifiedOrderID.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t WalletOrderRowViewModel.ReceiptRow.receiptName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WalletOrderRowViewModel.ReceiptRow.receiptName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void sub_1B730857C()
{
  type metadata accessor for WalletOrderRowViewModel.OrderRow(319);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB992048);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7308640()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B77FF4F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B73086F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B7308740(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s18InsertionHistoryIDVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18InsertionHistoryIDVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1B7308800()
{
  result = qword_1EB98FFA0;
  if (!qword_1EB98FFA0)
  {
    type metadata accessor for ManagedOrderLineItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FFA0);
  }

  return result;
}

uint64_t sub_1B7308858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B73088B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for EndOfDeliveryWindowFormatter()
{
  result = qword_1EB992060;
  if (!qword_1EB992060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B73089CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_1EDAF93A8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_1B7800868();
  v11 = sub_1B78008A8();

  return v11;
}

uint64_t sub_1B7308B54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_1EDAF93A8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_1B7800868();
  v11 = sub_1B78008A8();

  return v11;
}

uint64_t sub_1B7308CDC(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v3 = sub_1B77FF718();
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1B77FFCF8();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFAF8();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v75 - v13;
  v99 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v99);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FF7D8();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v75 - v18;
  v19 = sub_1B77FFC68();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B77FFB08();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B77FFC88();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, *MEMORY[0x1E6969830], v23);
  sub_1B77FFB18();
  (*(v24 + 8))(v26, v23);
  v31 = *(v20 + 104);
  v31(v22, *MEMORY[0x1E6969A78], v19);
  v95 = a1;
  v32 = sub_1B77FFC78();
  v33 = *(v20 + 8);
  v33(v22, v19);
  v76 = v28;
  v34 = v28;
  v35 = v30;
  v36 = *(v34 + 8);
  v77 = v27;
  v36(v30, v27);
  v96 = sub_1B730BD98(v32);
  if (v96 != 12)
  {
    v31(v22, *MEMORY[0x1E6969A68], v19);
    v37 = v98;
    v38 = sub_1B77FFC38();
    v33(v22, v19);
    if (v38)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v41 = v78;
      sub_1B730BCD0(v37, v78, type metadata accessor for FormatterConfiguration);
      v42 = sub_1B77FF648();
      (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
      v43 = sub_1B77FF628();
      (*(*(v43 - 8) + 56))(v84, 1, 1, v43);
      (*(v85 + 16))(v87, v41, v86);
      v44 = v99;
      (*(v76 + 16))(v35, v41 + *(v99 + 20), v77);
      (*(v88 + 16))(v89, v41 + *(v44 + 24), v90);
      sub_1B77FF368();
      v45 = v79;
      sub_1B77FF668();
      sub_1B730BD38(v41, type metadata accessor for FormatterConfiguration);
      v46 = v92;
      sub_1B77FF708();
      v47 = v80;
      sub_1B77FF688();
      (*(v93 + 8))(v46, v94);
      v48 = v83;
      v49 = *(v82 + 8);
      v49(v45, v83);
      v39 = sub_1B77FF788();
      v40 = v50;
      v49(v47, v48);
    }

    if (v96 > 5u)
    {
      if (v96 > 8u)
      {
        if (v96 == 9)
        {
          if (!v40)
          {
            if (qword_1EDAF93A8 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_83;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1B7807CD0;
          *(v58 + 56) = MEMORY[0x1E69E6158];
          *(v58 + 64) = sub_1B721FF04();
          *(v58 + 32) = v39;
          *(v58 + 40) = v40;
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_51;
          }
        }

        else if (v96 == 10)
        {
          if (!v40)
          {
            if (qword_1EDAF93A8 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_83;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1B7807CD0;
          *(v54 + 56) = MEMORY[0x1E69E6158];
          *(v54 + 64) = sub_1B721FF04();
          *(v54 + 32) = v39;
          *(v54 + 40) = v40;
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (!v40)
          {
            if (qword_1EDAF93A8 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_83;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1B7807CD0;
          *(v62 + 56) = MEMORY[0x1E69E6158];
          *(v62 + 64) = sub_1B721FF04();
          *(v62 + 32) = v39;
          *(v62 + 40) = v40;
          if (qword_1EDAF93A8 == -1)
          {
LABEL_51:
            v63 = qword_1EDAF93B0;
            v64 = sub_1B7800838();
            v65 = sub_1B7800838();
            v66 = sub_1B7800838();
            v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

            sub_1B7800868();
            v68 = sub_1B78008A8();

            return v68;
          }
        }
      }

      else if (v96 == 6)
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1B7807CD0;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_1B721FF04();
        *(v56 + 32) = v39;
        *(v56 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }

      else if (v96 == 7)
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1B7807CD0;
        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1B721FF04();
        *(v52 + 32) = v39;
        *(v52 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1B7807CD0;
        *(v60 + 56) = MEMORY[0x1E69E6158];
        *(v60 + 64) = sub_1B721FF04();
        *(v60 + 32) = v39;
        *(v60 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v96 > 2u)
    {
      if (v96 == 3)
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1B7807CD0;
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = sub_1B721FF04();
        *(v57 + 32) = v39;
        *(v57 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }

      else if (v96 == 4)
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1B7807CD0;
        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1B721FF04();
        *(v53 + 32) = v39;
        *(v53 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (!v40)
        {
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_75;
          }

          goto LABEL_83;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1B7807CD0;
        *(v61 + 56) = MEMORY[0x1E69E6158];
        *(v61 + 64) = sub_1B721FF04();
        *(v61 + 32) = v39;
        *(v61 + 40) = v40;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v96)
    {
      if (v96 == 1)
      {
        if (v40)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1B7807CD0;
          *(v51 + 56) = MEMORY[0x1E69E6158];
          *(v51 + 64) = sub_1B721FF04();
          *(v51 + 32) = v39;
          *(v51 + 40) = v40;
          if (qword_1EDAF93A8 == -1)
          {
            goto LABEL_51;
          }

          goto LABEL_77;
        }

        if (qword_1EDAF93A8 == -1)
        {
LABEL_75:
          v69 = qword_1EDAF93B0;
          v70 = sub_1B7800838();
          v71 = sub_1B7800838();
          v72 = sub_1B7800838();
          v73 = [v69 localizedStringForKey:v70 value:v71 table:v72];

          v68 = sub_1B7800868();
          return v68;
        }

LABEL_83:
        swift_once();
        goto LABEL_75;
      }

      if (!v40)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1B7807CD0;
      *(v59 + 56) = MEMORY[0x1E69E6158];
      *(v59 + 64) = sub_1B721FF04();
      *(v59 + 32) = v39;
      *(v59 + 40) = v40;
      if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!v40)
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1B7807CD0;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = sub_1B721FF04();
      *(v55 + 32) = v39;
      *(v55 + 40) = v40;
      if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_51;
      }
    }

LABEL_77:
    swift_once();
    goto LABEL_51;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B730AA10(uint64_t a1)
{
  v51 = a1;
  v1 = sub_1B77FF718();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v48 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFCF8();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B77FFC88();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1B77FFAF8();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v37 - v15;
  v37[1] = v37 - v15;
  v17 = type metadata accessor for FormatterConfiguration();
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1B77FF7D8();
  v21 = *(v38 - 8);
  v22 = MEMORY[0x1EEE9AC00](v38);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v37 - v25;
  sub_1B730BCD0(v44, v20, type metadata accessor for FormatterConfiguration);
  v27 = sub_1B77FF648();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = sub_1B77FF628();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  (*(v8 + 16))(v10, v20, v39);
  (*(v40 + 16))(v41, &v20[*(v18 + 28)], v42);
  (*(v45 + 16))(v43, &v20[*(v18 + 32)], v46);
  sub_1B77FF368();
  sub_1B77FF668();
  sub_1B730BD38(v20, type metadata accessor for FormatterConfiguration);
  v29 = v48;
  sub_1B77FF708();
  sub_1B77FF688();
  (*(v49 + 8))(v29, v50);
  v30 = *(v21 + 8);
  v31 = v38;
  v30(v24, v38);
  v32 = sub_1B77FF788();
  v34 = v33;
  v30(v26, v31);
  v35 = sub_1B7308B54(v32, v34);

  return v35;
}

uint64_t sub_1B730AFE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B730BC34();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B730BC88(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for EndOfDeliveryWindowFormatter();
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B730B19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920A0);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for EndOfDeliveryWindowFormatter();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v12 = *(v9 + 28);
  v11[v12] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B730BC34();
  v13 = v20;
  sub_1B78023C8();
  if (!v13)
  {
    v14 = v18;
    v22 = 0;
    sub_1B730BC88(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v21 = 1;
    v15 = sub_1B7801E08();
    (*(v14 + 8))(v7, v5);
    v11[v12] = v15 & 1;
    sub_1B730BCD0(v11, v17, type metadata accessor for EndOfDeliveryWindowFormatter);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B730BD38(v11, type metadata accessor for EndOfDeliveryWindowFormatter);
}

uint64_t sub_1B730B4AC(uint64_t a1)
{
  v2 = sub_1B730BC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B730B4E8(uint64_t a1)
{
  v2 = sub_1B730BC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B730B524@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = sub_1B7679424(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B730B63C()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B730BC88(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B730BC88(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B730BC88(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B730B7A8()
{
  sub_1B77FFAF8();
  sub_1B730BC88(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B730BC88(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B730BC88(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802318();
}

uint64_t sub_1B730B8FC()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B730BC88(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B730BC88(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B730BC88(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B730BB84(uint64_t a1)
{
  result = sub_1B730BC88(&qword_1EB992090, type metadata accessor for EndOfDeliveryWindowFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B730BBDC(uint64_t a1)
{
  result = sub_1B730BC88(&qword_1EB992098, type metadata accessor for EndOfDeliveryWindowFormatter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B730BC34()
{
  result = qword_1EB9920A8;
  if (!qword_1EB9920A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9920A8);
  }

  return result;
}

uint64_t sub_1B730BC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B730BCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B730BD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B730BD98(uint64_t a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_1B730BDC0()
{
  result = qword_1EB9920B8;
  if (!qword_1EB9920B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9920B8);
  }

  return result;
}

unint64_t sub_1B730BE18()
{
  result = qword_1EB9920C0;
  if (!qword_1EB9920C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9920C0);
  }

  return result;
}

unint64_t sub_1B730BE70()
{
  result = qword_1EB9920C8;
  if (!qword_1EB9920C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9920C8);
  }

  return result;
}

void *sub_1B730BEC4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1B7801C78();

    if (v3)
    {
      sub_1B7205540(0, &qword_1EDAFAF30);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1B72456B0(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t NSPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = sub_1B77FEF58();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF2B8();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v45[5] = a2;
  v45[6] = &v32 - v9;
  v33 = sub_1B77FFD28();
  sub_1B77FFD18();
  v11 = *(a3 + 8);
  v11(a2, a3);
  v13 = (*(v12 + 8))();
  v11(a2, a3);
  v15 = (*(v14 + 16))();
  v38 = v8;
  v36 = v10;
  sub_1B77FF2A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F210);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F218) - 8);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7807CD0;
  v19 = v18 + v17;
  v20 = (v19 + v16[14]);
  v21 = v35;
  (*(v5 + 16))(v19, v7, v35);
  v22 = objc_opt_self();

  v23 = v22;
  v24 = v33;
  *v20 = [v23 expressionForEvaluatedObject];
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  v25 = sub_1B720261C(v18);
  swift_setDeallocating();
  sub_1B7205418(v19, &qword_1EB98F218);
  v26 = v34;
  swift_deallocClassInstance();
  (*(v5 + 8))(v7, v21);
  v45[0] = 1;
  v45[1] = v25;
  v45[2] = v13;
  v45[3] = v15;
  v45[4] = 0;
  sub_1B77FFD08();
  v27 = v43;
  v28 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1B730DF10(v45, v27, *(v28 + 8));

  (*(*(v24 - 8) + 8))(v26, v24);

  __swift_destroy_boxed_opaque_existential_1(v42);
  v29 = v39;
  v40 = swift_dynamicCastUnknownClassUnconditional();
  (*(*(v29 - 8) + 32))(&v41, &v40, v29);
  v30 = v41;
  (*(v37 + 8))(v36, v38);
  return v30;
}

uint64_t sub_1B730C4A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v5);

  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    *v1 = v4 + 1;
    v7 = sub_1B7800838();
    v8 = [objc_opt_self() expressionForVariable_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[1];
    sub_1B7392604(v8, 0, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    v2[1] = v10;
    return 0x5F6C61636F6C5FLL;
  }

  return result;
}

id sub_1B730C5B8()
{
  v1 = sub_1B7802198();
  v2 = objc_opt_self();
  v3 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [v2 expressionForConditional:v0 trueExpression:v3 falseExpression:v4];

  return v5;
}

id sub_1B730C6AC()
{
  v1 = sub_1B7205540(0, &qword_1EB990580);
  v9[3] = v1;
  v9[0] = v0;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = sub_1B7800838();
  v5 = [v2 _newKeyPathExpressionForString_];

  if (!v5)
  {
    v1 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v5;
  v8[3] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  result = sub_1B7317810(v9, v8);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B730C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if ([v6 expressionType] == 1)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (*(a3 + 16))
    {
      sub_1B72456B0(a1);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    if (a4)
    {
      v13 = sub_1B730BEC4(a1, a4);
      if (v13)
      {

LABEL_8:
        if (*(a3 + 16))
        {
          sub_1B72456B0(a1);
          if (v14)
          {
          }
        }

        v20 = sub_1B7800838();

        v21 = [objc_opt_self() expressionForKeyPath_];

        if (a4)
        {
          sub_1B730BEC4(a1, a4);
        }

        return v21;
      }
    }

    goto LABEL_35;
  }

  if ([v6 expressionType] == 3)
  {
    if (a2)
    {
      sub_1B7801878();

      v15 = sub_1B7801D08();
      if (v15)
      {
        v16 = v15;
        if (a5 & 1) == 0 || *(a3 + 16) && (sub_1B72456B0(v15), (v17))
        {
LABEL_20:
          if (*(a3 + 16))
          {
            sub_1B72456B0(v16);
            if (v19)
            {
LABEL_22:
            }
          }

LABEL_39:
          v32 = sub_1B7800838();

          v21 = [objc_opt_self() expressionForKeyPath_];

          if (a4)
          {
            sub_1B730BEC4(v16, a4);
          }

          goto LABEL_48;
        }

        if (a4)
        {
          v18 = sub_1B730BEC4(v16, a4);
          if (v18)
          {

            goto LABEL_20;
          }
        }

        v45[0] = a1;

        v21 = sub_1B7800908();
        v42 = v41;
        sub_1B73182C4();
        swift_allocError();
        *v43 = v21;
        *(v43 + 8) = v42;
        *(v43 + 16) = 0;
        swift_willThrow();

LABEL_48:

        return v21;
      }

LABEL_47:
      v45[0] = a1;

      v21 = sub_1B7800908();
      v39 = v38;
      sub_1B73182C4();
      swift_allocError();
      *v40 = v21;
      *(v40 + 8) = v39;
      *(v40 + 16) = 0;
      swift_willThrow();
      goto LABEL_48;
    }
  }

  else if (a2 && (a5 & 1) != 0)
  {
    sub_1B7801878();

    v22 = sub_1B7801D08();
    if (v22)
    {
      v16 = v22;
      if (*(a3 + 16))
      {
        sub_1B72456B0(v22);
        if (v23)
        {
          if (*(a3 + 16))
          {
            sub_1B72456B0(v16);
            if (v24)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_39;
        }
      }
    }

    goto LABEL_47;
  }

  if ([v6 expressionType] == 20)
  {
LABEL_35:
    v45[0] = a1;
    sub_1B7801878();

    v21 = sub_1B7800908();
    v26 = v25;
    sub_1B73182C4();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0;
    swift_willThrow();
    return v21;
  }

  v28 = sub_1B7205540(0, &qword_1EB990580);
  v45[3] = v28;
  v45[0] = v6;
  v29 = *(a3 + 16);
  v30 = v6;
  if (v29)
  {
    sub_1B72456B0(a1);
    if (v31)
    {
    }
  }

  v33 = objc_opt_self();
  v34 = sub_1B7800838();

  v35 = [v33 _newKeyPathExpressionForString_];

  if (!v35)
  {
    v28 = 0;
    v44[1] = 0;
    v44[2] = 0;
  }

  v44[0] = v35;
  v44[3] = v28;
  v36 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  result = sub_1B7317810(v45, v44);
  if (result)
  {
    v21 = result;

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B730CCB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a1;
  *&v43 = sub_1B77FEDB8();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1B7801768();
  v37 = *(v38 - 8);
  v12 = MEMORY[0x1EEE9AC00](v38);
  v14 = &v35 - v13;
  v41 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9920E8);
  if (swift_dynamicCast())
  {
    v35 = v17;
    v36 = a4;
    sub_1B71E4C44(&v46, &v49);
    v20 = v50;
    v21 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v22 = v44;
    (*(v21 + 16))(v52, v39, v20, v21);
    if (!v22)
    {
      v44 = v52[1];
      v43 = v52[0];
      v29 = v53;
      result = __swift_destroy_boxed_opaque_existential_1(&v49);
      v30 = v43;
      v31 = v44;
      a4 = v36;
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1(&v49);
    v23 = 0;
    v39 = v22;
    a4 = v36;
    v17 = v35;
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_1B7205418(&v46, &qword_1EB9920F0);
    v39 = 0;
    v23 = v44;
  }

  sub_1B77FEDC8();
  v24 = v23;
  sub_1B77FEE38();
  v25 = v41;
  if (!v24)
  {
    (*(v40 + 8))(v10, v43);
    (*(v25 + 56))(v14, 0, 1, AssociatedTypeWitness);
    (*(v25 + 32))(v17, v14, AssociatedTypeWitness);
    v45[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v25 + 16))(boxed_opaque_existential_1, v17, AssociatedTypeWitness);
    sub_1B730D314(v45, &v46);
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (!*(&v47 + 1))
    {
      (*(v25 + 8))(v17, AssociatedTypeWitness);
      sub_1B7205418(&v46, &qword_1EB98FCB0);
      goto LABEL_8;
    }

    sub_1B72051F0(&v46, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v32 = sub_1B78020D8();
    v33 = v17;
    v34 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v49);
    result = (*(v25 + 8))(v33, AssociatedTypeWitness);
    v29 = 0;
    v31 = 0uLL;
    v30 = v34;
LABEL_14:
    *a4 = v30;
    *(a4 + 16) = v31;
    *(a4 + 32) = v29;
    return result;
  }

  (*(v40 + 8))(v10, v43);
  (*(v25 + 56))(v14, 1, 1, AssociatedTypeWitness);
  (*(v37 + 8))(v14, v38);
LABEL_8:
  if (!v39)
  {
    sub_1B73182C4();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 2;
  }

  return swift_willThrow();
}

uint64_t sub_1B730D314@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B719BDE4(a1, v80);
  sub_1B719BDE4(v80, &v73);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
  swift_dynamicCast();
  if (!v79)
  {
    *a2 = 0u;
    a2[1] = 0u;
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v64 = a2;
  sub_1B7205418(&v77, &qword_1EB98FCB0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v9 + 8))(v11, v8);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      sub_1B720A388(v77, *(&v77 + 1));
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992100);
    if (swift_dynamicCast())
    {
      sub_1B71E4C44(&v77, &v73);
      v17 = v75;
      v18 = v76;
      __swift_project_boxed_opaque_existential_1(&v73, v75);
      (*(v18 + 8))(v17, v18);
    }

    else
    {
      type metadata accessor for Decimal(0);
      if (swift_dynamicCast())
      {
        v73 = v77;
        v74 = v78;
        v19 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        v70 = v73;
        v71 = v74;
        v20 = [v19 initWithDecimal_];
        [v20 floatValue];
        v22 = v21;

        v23 = v64;
        *(v64 + 3) = MEMORY[0x1E69E6448];
        *v23 = v22;
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }

      v24 = MEMORY[0x1E69E6530];
      if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v80);
        v15 = a1;
        v16 = v64;
        return sub_1B719BDE4(v15, v16);
      }

      type metadata accessor for ComparisonResult(0);
      if (swift_dynamicCast())
      {
        v25 = v77;
        v26 = v64;
        *(v64 + 3) = v24;
        *v26 = v25;
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }

      if (swift_dynamicCast())
      {
        v27 = v77;
        v28 = v64;
        *(v64 + 3) = MEMORY[0x1E69E6158];
        *v28 = v27;
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992108);
      if (swift_dynamicCast())
      {
        sub_1B71E4C44(&v77, &v73);
        v30 = v75;
        v29 = v76;
        v31 = __swift_project_boxed_opaque_existential_1(&v73, v75);
        v32 = MEMORY[0x1EEE9AC00](v31);
        *(&v63 - 4) = v30;
        *(&v63 - 3) = v29;
        *(&v63 - 2) = sub_1B730D314;
        *(&v63 - 1) = 0;
        MEMORY[0x1EEE9AC00](v32);
        *(&v63 - 4) = v30;
        *(&v63 - 3) = v29;
        *(&v63 - 2) = sub_1B7318318;
        *(&v63 - 1) = v33;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
        v35 = v65;
        v36 = sub_1B730E48C(sub_1B7318338, (&v63 - 6), v30, v12, v34, v29, MEMORY[0x1E69E7288], &v70);
        v65 = v35;
        if (v35)
        {
          v65 = v70;
        }

        else
        {
          v52 = v36;
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992118);
          v54 = v64;
          *(v64 + 3) = v53;
          *v54 = v52;
        }

        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992110);
      if (!swift_dynamicCast())
      {
        v44 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        MEMORY[0x1EEE9AC00](v44);
        (*(v46 + 16))(&v63 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
        v47 = sub_1B7800928();
        v49 = v48;
        sub_1B73182C4();
        v50 = swift_allocError();
        *v51 = v47;
        *(v51 + 8) = v49;
        *(v51 + 16) = 1;
        v65 = v50;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }

      sub_1B71E4C44(&v77, &v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3F0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1B7808C50;
      v38 = v75;
      v39 = v76;
      __swift_project_boxed_opaque_existential_1(&v73, v75);
      (*(v39 + 8))(&v70, v68, v38, v39);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v40 = v72;
      v41 = __swift_project_boxed_opaque_existential_1(&v70, v72);
      v67 = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v41, v40);
      v43 = v65;
      sub_1B730D314(v66);
      v65 = v43;
      if (v43)
      {
        __swift_destroy_boxed_opaque_existential_1(v66);
        __swift_destroy_boxed_opaque_existential_1(&v70);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v66);
        __swift_destroy_boxed_opaque_existential_1(&v70);
        v55 = v75;
        v56 = v76;
        __swift_project_boxed_opaque_existential_1(&v73, v75);
        (*(v56 + 8))(&v70, v68, v55, v56);
        __swift_destroy_boxed_opaque_existential_1(&v70);
        v57 = v69;
        v58 = __swift_project_boxed_opaque_existential_1(v68, v69);
        v67 = v57;
        v59 = __swift_allocate_boxed_opaque_existential_1(v66);
        (*(*(v57 - 8) + 16))(v59, v58, v57);
        v60 = v65;
        sub_1B730D314(v66);
        v65 = v60;
        if (!v60)
        {
          __swift_destroy_boxed_opaque_existential_1(v66);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992118);
          v62 = v64;
          *(v64 + 3) = v61;
          *v62 = v37;
          goto LABEL_16;
        }

        __swift_destroy_boxed_opaque_existential_1(v66);
        __swift_destroy_boxed_opaque_existential_1(v68);
        sub_1B7205418(v37 + 32, &qword_1EB98FCB0);
      }

      *(v37 + 16) = 0;
    }

LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(&v73);
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

LABEL_12:
  v14 = v64;
  __swift_destroy_boxed_opaque_existential_1(v80);
  v15 = a1;
  v16 = v14;
  return sub_1B719BDE4(v15, v16);
}

id sub_1B730DE40(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B730CCB4(a1, a2, a3, v8);
  if (!v4)
  {
    v3 = v8[0];
    if (v9)
    {
      if (v9 == 1)
      {
        v3 = sub_1B730C5B8();
        sub_1B7318294(v8);
      }

      else
      {
        v7 = v8[2];
        v6 = v8[3];
        v10 = v8[1];
        sub_1B7205418(&v10, &qword_1EB9920D0);
        v11 = v7;
        sub_1B7205418(&v11, &qword_1EB9920D8);
        v12 = v6;
        sub_1B7205418(&v12, &qword_1EB9920E0);
      }
    }
  }

  return v3;
}

id sub_1B730DF10(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B730CCB4(a1, a2, a3, v13);
  if (!v4)
  {
    v3 = v13[0];
    if (!v14)
    {
      v11 = sub_1B7802198();
      v9 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v3 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v3 rightExpression:v9 modifier:0 type:4 options:0];
      sub_1B7318294(v13);
      goto LABEL_6;
    }

    if (v14 != 1)
    {
      v6 = v13[2];
      v5 = v13[3];
      v7 = v13[1];
      v8 = sub_1B7802198();
      v9 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v10 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v3 rightExpression:v9 modifier:0 type:4 options:0];

      v15 = v7;
      sub_1B7205418(&v15, &qword_1EB9920D0);
      v16 = v6;
      sub_1B7205418(&v16, &qword_1EB9920D8);
      v17 = v5;
      sub_1B7205418(&v17, &qword_1EB9920E0);
      v3 = v10;
LABEL_6:
    }
  }

  return v3;
}

id sub_1B730E0EC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B730CCB4(a1, a2, a3, &v6);
  if (!v4)
  {
    v3 = v6;
    if (v7)
    {
      if (v7 == 1)
      {
        v3 = sub_1B730C5B8();
        sub_1B7318294(&v6);
      }
    }
  }

  return v3;
}

unint64_t sub_1B730E174(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1B7801A78();

    v5 = 0xD00000000000002CLL;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1B7801A78();

    v5 = 0xD00000000000002DLL;
LABEL_5:
    v7 = v5;
    MEMORY[0x1B8CA4D30](a1, a2);
    MEMORY[0x1B8CA4D30](46, 0xE100000000000000);
    return v7;
  }

  return 0xD000000000000028;
}

uint64_t sub_1B730E280(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B78020F8();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B78020F8();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

uint64_t sub_1B730E300(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_1, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_1(a2);

  return (v12)(v10, v3 + v9, v6);
}

uint64_t sub_1B730E3B8(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1B730E48C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_1B7801768();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1B7800B08();
  v63 = sub_1B7801BD8();
  v58 = sub_1B7801BE8();
  sub_1B7801B88();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1B7800AE8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B78017B8();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_1B7801BC8();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1B78017B8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1B7801BC8();
      sub_1B78017B8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1B730EB80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13[3] = *(a1 + 16);
  __swift_allocate_boxed_opaque_existential_1(v13);
  MEMORY[0x1B8CA3510](a1);
  sub_1B730D314(v13, &v14);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  if (!v2)
  {
    v6 = v15;
    if (v15)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&v14, v15);
      v8 = *(v6 - 8);
      MEMORY[0x1EEE9AC00](v7);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_1B78020D8();
      (*(v8 + 8))(v10, v6);
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() expressionForConstantValue_];
    result = swift_unknownObjectRelease();
    *a2 = v12;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B730ED50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FEF58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B77FF2A8();
  v9 = *(a1 + 8);
  if (*(v9 + 16))
  {
    result = sub_1B7245720(v7);
    if (v10)
    {
      v11 = *(v5 + 8);
      v12 = *(*(v9 + 56) + 32 * result);
      result = v11(v7, v4);
      *a2 = v12;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B730EEA4(uint64_t a1)
{
  v2 = sub_1B77FEF58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  result = sub_1B77FF2A8();
  v10 = *(a1 + 8);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B7245720(v8);
  if ((v11 & 1) == 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(*(v10 + 56) + 32 * result + 8);
  v13 = *(v3 + 8);
  v14 = v12;
  v13(v8, v2);
  if (v12)
  {
    return v14;
  }

  result = sub_1B77FF2A8();
  if (!*(v10 + 16))
  {
    goto LABEL_10;
  }

  result = sub_1B7245720(v6);
  if (v15)
  {
    v14 = *(*(v10 + 56) + 32 * result);
    v13(v6, v2);
    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1B730F044(uint64_t a1)
{
  v2 = sub_1B77FEF58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B77FF2A8();
  v7 = *(a1 + 8);
  if (*(v7 + 16))
  {
    result = sub_1B7245720(v5);
    if (v8)
    {
      v9 = *(*(v7 + 56) + 32 * result + 16);
      v10 = *(v3 + 8);

      v10(v5, v2);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B730F158(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 16);
  v98 = *(a2 + 32);
  v8 = sub_1B77FF248();
  v9 = sub_1B7801768();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v85[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v24 = a1[4];
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_39;
  }

  v96 = v23;
  v87 = v22;
  v88 = v20;
  v93 = v21;
  v91 = a3;
  a1[4] = v26;
  v100 = a2;
  v105 = v3;
  MEMORY[0x1B8CA3580](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992148);
  v27 = swift_dynamicCast();
  v99 = a1;
  v89 = v16;
  if (v27)
  {
    v29 = *(&v103 + 1);
    v28 = v104;
    __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
    v30 = (*(v28 + 16))(a1, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(&v102);
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    sub_1B7205418(&v102, &unk_1EB992150);
    v30 = 0;
  }

  v92 = v8;
  MEMORY[0x1B8CA3580](v100);
  if (swift_dynamicCast())
  {
    v31 = *(&v103 + 1);
    v32 = v104;
    __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
    v33 = (*(v32 + 8))(v99, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v102);
    v34 = v30 == 0;
    v35 = v33 == 0;
    if (v30 && v33)
    {
      v37 = v92;
      v36 = v93;
      v38 = v94;
      goto LABEL_20;
    }
  }

  else
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    sub_1B7205418(&v102, &unk_1EB992150);
    v33 = 0;
    v34 = v30 == 0;
    v35 = 1;
  }

  v86 = v35;
  v39 = v33;
  v95 = v30;
  v40 = v97;
  MEMORY[0x1B8CA3580](v100);
  v41 = v101;
  v42 = sub_1B730E0EC(v99, v7, v98);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  (*(v96 + 8))(v40, v7);
  v101 = v41;
  if (v41)
  {

    return;
  }

  if (v34)
  {

    v95 = v46;
  }

  v38 = v94;
  v49 = v48;
  if (v86)
  {
    v50 = v92;
    if (v44)
    {
      v39 = v44;
    }

    else
    {
      v39 = v42;
      v42 = v42;
    }
  }

  else
  {

    v42 = v44;
    v50 = v92;
  }

  v36 = v93;
  v30 = v95;
  v33 = v39;
  v37 = v50;
LABEL_20:
  v51 = v99[4];
  v52 = v51 - 1;
  if (!v51)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v99[4] = v52;
  swift_getAssociatedTypeWitness();
  sub_1B77FF258();
  if ((*(v36 + 48))(v38, 1, v37) == 1)
  {

    (*(v87 + 8))(v38, v88);
    if ([v33 expressionType])
    {
      v53 = sub_1B77FF238();
      v54 = v101;
      v55 = sub_1B730C784(v53, v30, v99[2], v99[3], v52 == 0);
      v57 = v56;
      v59 = v58;
      v61 = v60;

      if (v54)
      {

        return;
      }

      v66 = 2;
      v33 = v55;
    }

    else
    {

      v57 = 0;
      v59 = 0;
      v61 = 0;
      v66 = 0;
    }

    goto LABEL_34;
  }

  v62 = v89;
  (*(v36 + 32))(v89, v38, v37);
  v63 = v90;
  (*(v36 + 16))(v90, v62, v37);
  v64 = (*(v36 + 88))(v63, v37);
  if (v64 == *MEMORY[0x1E6968D30])
  {
    v65 = sub_1B730C6AC();

    (*(v36 + 8))(v62, v37);
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v66 = 0;
LABEL_29:
    v33 = v65;
LABEL_34:
    v73 = v91;
    *v91 = v33;
    v73[1] = v57;
    v73[2] = v59;
    v73[3] = v61;
    *(v73 + 32) = v66;
    return;
  }

  if (v64 == *MEMORY[0x1E6968D40])
  {
    v67 = sub_1B730C6AC();

    *&v102 = 0;
    v68 = sub_1B7802198();
    v69 = v37;
    v70 = v33;
    v71 = v62;
    v72 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v65 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v67 rightExpression:v72 modifier:0 type:4 options:0];

    (*(v36 + 8))(v71, v69);
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v66 = 1;
    goto LABEL_29;
  }

  if (v64 == *MEMORY[0x1E6968D38])
  {

LABEL_36:
    *&v102 = sub_1B77FF238();
    v76 = sub_1B7800908();
    v78 = v77;
    sub_1B73182C4();
    swift_allocError();
    *v79 = v76;
    *(v79 + 8) = v78;
    *(v79 + 16) = 0;
    swift_willThrow();

    (*(v36 + 8))(v62, v37);
    return;
  }

  v74 = *MEMORY[0x1E6968D48];
  v75 = v64;

  if (v75 == v74)
  {
    goto LABEL_36;
  }

  *&v102 = sub_1B77FF238();
  v80 = sub_1B7800908();
  v82 = v81;
  sub_1B73182C4();
  swift_allocError();
  *v83 = v80;
  *(v83 + 8) = v82;
  *(v83 + 16) = 0;
  swift_willThrow();

  v84 = *(v36 + 8);
  v84(v62, v37);
  v84(v90, v37);
}

uint64_t sub_1B730FB34@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v160 = sub_1B77FEF58();
  v149 = *(v160 - 8);
  v8 = MEMORY[0x1EEE9AC00](v160);
  v163 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v164 = &v132 - v11;
  v12 = a2[2];
  v13 = 8 * v12;
  v134 = a3;
  if (v12 == 1)
  {
    TupleTypeMetadata = *(a2[4] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v15 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v16 = 0;
      v17 = a2[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v12 != v16)
      {
LABEL_9:
        v22 = v12 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v151 = TupleTypeMetadata;
  v136 = *(TupleTypeMetadata - 8);
  v27 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v154 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = a1;
  v162 = v12;
  v158 = a2;
  v140 = 8 * v12;
  v142 = &v132;
  v157 = v3;
  v159 = v4;
  if (v12 == 1)
  {
    swift_getAssociatedTypeWitness();
    v29 = sub_1B77FF2B8();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    v30 = (&v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v12)
    {
      v31 = v158[4] & 0xFFFFFFFFFFFFFFFELL;
      v32 = v158[6] & 0xFFFFFFFFFFFFFFFELL;
      v33 = v30;
      v34 = v162;
      do
      {
        v31 += 8;
        v32 += 8;
        swift_getAssociatedTypeWitness();
        *v33++ = sub_1B77FF2B8();
        --v34;
      }

      while (v34);
    }

    v12 = v162;
    v29 = swift_getTupleTypeMetadata();
    a2 = v158;
    v13 = v140;
  }

  v146 = &v132;
  v150 = v29;
  v135 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B77FEDB8();
  v145 = &v132;
  v155 = *(v36 - 8);
  v156 = v36;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = &v132;
  v147 = a2[3];
  v152 = *(v147 - 1);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = &v132;
  MEMORY[0x1EEE9AC00](v40);
  if (v12)
  {
    v43 = v158[4] & 0xFFFFFFFFFFFFFFFELL;
    v44 = v158[6] & 0xFFFFFFFFFFFFFFFELL;
    v45 = (&v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v46 = v162;
    do
    {
      v43 += 8;
      v44 += 8;
      *v45++ = swift_getAssociatedTypeWitness();
      --v46;
    }

    while (v46);
  }

  v47 = v162;
  v48 = sub_1B77FFD28();
  v138 = sub_1B7801768();
  v137 = *(v138 - 8);
  v49 = MEMORY[0x1EEE9AC00](v138);
  v51 = &v132 - v50;
  v141 = &v132;
  v148 = v48;
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v139 = &v132 - v53;
  v54 = v42;
  sub_1B77FEED8();
  sub_1B77FEDC8();
  v55 = v159;
  v56 = v147;
  sub_1B77FEE38();
  if (v55)
  {

    (*(v155 + 8))(v39, v156);
    v152[1](v54, v56);
    (*(v52 + 56))(v51, 1, 1, v148);
    (*(v137 + 8))(v51, v138);
    sub_1B73182C4();
    swift_allocError();
    *v57 = 0;
    *(v57 + 8) = 0;
    *(v57 + 16) = 2;
    return swift_willThrow();
  }

  (*(v155 + 8))(v39, v156);
  v152[1](v54, v56);
  v59 = v148;
  (*(v52 + 56))(v51, 0, 1, v148);
  v60 = (*(v52 + 32))(v139, v51, v59);
  v147 = &v132;
  v61 = v140;
  MEMORY[0x1EEE9AC00](v60);
  v159 = 0;
  v133 = v52;
  if (!v47)
  {
    sub_1B77FFD18();
    sub_1B77FEEC8();
    v85 = v161;
LABEL_52:
    v125 = v148;
    v126 = v139;
    sub_1B77FFD08();
    v127 = v166;
    v128 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    v129 = v159;
    sub_1B730CCB4(v85, v127, *(v128 + 8), v168);
    (*(v133 + 8))(v126, v125);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    (*(v136 + 8))(v154, v151);
    result = (*(v135 + 8))(v153, v150);
    if (!v129)
    {
      v130 = v168[1];
      v131 = v134;
      *v134 = v168[0];
      v131[1] = v130;
      *(v131 + 32) = v169;
    }

    return result;
  }

  v62 = 0;
  v63 = 32;
  v64 = v150;
  v65 = v153;
  v66 = v158;
  do
  {
    if (v47 == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(v64 + v63);
    }

    *(&v132 + 8 * v62++ - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0)) = &v65[v67];
    v63 += 16;
  }

  while (v47 != v62);
  v68 = sub_1B77FFD18();
  MEMORY[0x1EEE9AC00](v68);
  v69 = 0;
  v70 = 32;
  v71 = v151;
  v72 = v154;
  do
  {
    if (v47 == 1)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v71 + v70);
    }

    *(&v132 + 8 * v69++ - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0)) = &v72[v73];
    v70 += 16;
  }

  while (v47 != v69);
  sub_1B77FEEC8();
  v74 = (v66[4] & 0xFFFFFFFFFFFFFFFELL);
  v75 = (v66[6] & 0xFFFFFFFFFFFFFFFELL);
  v155 = v149 + 16;
  v152 = (v149 + 8);
  v76 = 32;
  v77 = v47;
  while (1)
  {
    v157 = v77;
    if (v47 == 1)
    {
      v86 = 0;
    }

    else
    {
      v86 = *(v150 + v76);
    }

    v158 = v74;
    v87 = *v74;
    v88 = *v75;
    swift_getAssociatedTypeWitness();
    v89 = sub_1B77FF2B8();
    v156 = &v132;
    v90 = *(v89 - 8);
    MEMORY[0x1EEE9AC00](v89);
    v92 = &v132 - v91;
    (*(v90 + 16))(&v132 - v91, &v153[v86], v89);
    sub_1B77FF2A8();
    v93 = (*(v90 + 8))(v92, v89);
    v94 = *(v87 - 8);
    MEMORY[0x1EEE9AC00](v93);
    v96 = &v132 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v96, &v154[v97], v87);
    v98 = v161;
    v99 = v159;
    v100 = sub_1B730DE40(v161, v87, v88);
    v159 = v99;
    if (v99)
    {
      (*(v94 + 8))(v96, v87);
      (*v152)(v164, v160);
      (*(v133 + 8))(v139, v148);
      (*(v136 + 8))(v154, v151);
      return (*(v135 + 8))(v153, v150);
    }

    v101 = v100;
    (*(v94 + 8))(v96, v87);
    v102 = *v155;
    v103 = v163;
    (*v155)(v163, v164, v160);
    v104 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v98[1];
    v106 = v165;
    v107 = sub_1B7245720(v103);
    v109 = v106[2];
    v110 = (v108 & 1) == 0;
    v111 = __OFADD__(v109, v110);
    v112 = v109 + v110;
    if (v111)
    {
      break;
    }

    v113 = v108;
    if (v106[3] < v112)
    {
      sub_1B7247984(v112, isUniquelyReferenced_nonNull_native);
      v107 = sub_1B7245720(v163);
      v47 = v162;
      if ((v113 & 1) != (v114 & 1))
      {
        goto LABEL_58;
      }

LABEL_46:
      v115 = v165;
      if (v113)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    v47 = v162;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    v124 = v107;
    sub_1B725BB1C();
    v107 = v124;
    v115 = v165;
    if (v113)
    {
LABEL_35:
      v78 = v115[7] + 32 * v107;
      v79 = *v78;
      v80 = *(v78 + 8);
      v81 = *(v78 + 24);
      *v78 = v104;
      *(v78 + 8) = 0;
      *(v78 + 16) = 0;
      *(v78 + 24) = 0;

      v82 = *v152;
      v83 = v160;
      (*v152)(v163, v160);
      v82(v164, v83);
      goto LABEL_36;
    }

LABEL_47:
    v115[(v107 >> 6) + 8] |= 1 << v107;
    v116 = v149;
    v117 = v107;
    v118 = v163;
    v119 = v160;
    v102(v115[6] + *(v149 + 72) * v107, v163, v160);
    v120 = (v115[7] + 32 * v117);
    v120[2] = 0;
    v120[3] = 0;
    *v120 = v104;
    v120[1] = 0;

    v121 = *(v116 + 8);
    v121(v118, v119);
    v121(v164, v119);
    v122 = v115[2];
    v111 = __OFADD__(v122, 1);
    v123 = v122 + 1;
    if (v111)
    {
      goto LABEL_57;
    }

    v115[2] = v123;
    v47 = v162;
LABEL_36:
    v84 = v157;
    v85 = v161;
    *(v161 + 1) = v115;
    v76 += 16;
    ++v75;
    v74 = v158 + 1;
    v77 = v84 - 1;
    if (!v77)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

void sub_1B7310C5C(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X2>, void (*a4)(void *)@<X3>, SEL *a5@<X4>, void *a6@<X8>)
{
  v30 = a6;
  v10 = a2[3];
  v34 = a4;
  v35 = v10;
  v31 = *(v10 - 8);
  v32 = a5;
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B780C060;
  v33 = v6;
  a3(a2);
  v20 = v36;
  v21 = sub_1B730DF10(a1, v15, a2[4]);
  (*(v16 + 8))(v18, v15);
  if (v20)
  {
    *(v19 + 16) = 0;
  }

  else
  {
    v23 = v31;
    v22 = v32;
    *(v19 + 32) = v21;
    v34(a2);
    v24 = a2[5];
    v25 = v35;
    v26 = sub_1B730DF10(a1, v35, v24);
    (*(v23 + 8))(v13, v25);
    *(v19 + 40) = v26;
    sub_1B7205540(0, &qword_1EDAFAF30);
    v27 = sub_1B7800C18();

    v28 = [objc_opt_self() *v22];

    v29 = v30;
    *v30 = v28;
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = 0;
    *(v29 + 32) = 1;
  }
}

double sub_1B7310F60@<D0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X3>, void (*a4)(void *)@<X4>, SEL *a5@<X5>, uint64_t a6@<X8>)
{
  sub_1B7310C5C(a1, a2, a3, a4, a5, v10);
  if (!v6)
  {
    result = *v10;
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    *(a6 + 32) = v11;
  }

  return result;
}

void sub_1B7310FB4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v43 = a2[3];
  v39 = *(v43 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  sub_1B77FF1B8();
  v14 = a2[4];
  v42 = a1;
  v15 = sub_1B730E0EC(a1, v10, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  if (!v4)
  {
    v37 = v21;
    v38 = v19;
    v23 = v39;
    v22 = v40;
    sub_1B77FF1C8();
    v24 = v43;
    v25 = sub_1B730E0EC(v42, v43, a2[5]);
    v41 = v26;
    v42 = v27;
    v36 = v28;
    (*(v23 + 8))(v46, v24);
    v29 = v22;
    if (![v15 expressionType])
    {
      if (![v15 constantValue])
      {
        v44 = 0u;
        v45 = 0u;
        sub_1B7205418(&v44, &qword_1EB98FCB0);
        v31 = v37;
        goto LABEL_11;
      }

      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205418(&v44, &qword_1EB98FCB0);
    }

    v30 = [v25 expressionType];
    v31 = v37;
    if (v30)
    {
LABEL_8:
      v32 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v15 rightExpression:v25 modifier:0 type:4 options:0];

LABEL_16:
      *v29 = v32;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 1;
      return;
    }

    if ([v25 constantValue])
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205418(&v44, &qword_1EB98FCB0);
      goto LABEL_8;
    }

    v44 = 0u;
    v45 = 0u;
    sub_1B7205418(&v44, &qword_1EB98FCB0);
LABEL_11:
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      if (!v42)
      {
        goto LABEL_8;
      }

      v31 = v42;
      v33 = 0;
      v42 = v31;
    }

    v34 = objc_opt_self();
    v35 = v33;
    v32 = [v34 notPredicateWithSubpredicate_];

    goto LABEL_16;
  }
}

void sub_1B7311428(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v42 = a2[3];
  v36 = *(v42 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v3;
  sub_1B77FF288();
  v14 = a2[4];
  v39 = a1;
  v15 = sub_1B730E0EC(a1, v10, v14);
  v17 = v16;
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  if (!v4)
  {
    v20 = v17;
    v35 = v19;
    v21 = v36;
    v22 = v37;
    v23 = v40;
    sub_1B77FF298();
    v24 = a2[5];
    v25 = v42;
    v26 = sub_1B730E0EC(v39, v42, v24);
    v28 = v27;
    v34 = v29;
    v38 = v30;
    v39 = 0;
    (*(v21 + 8))(v23, v25);
    if (![v15 expressionType])
    {
      if (![v15 constantValue])
      {
        goto LABEL_11;
      }

      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205418(v41, &qword_1EB98FCB0);
    }

    if ([v26 expressionType])
    {
LABEL_10:
      v31 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v15 rightExpression:v26 modifier:0 type:5 options:0];

LABEL_16:
      *v22 = v31;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 1;
      return;
    }

    if ([v26 constantValue])
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205418(v41, &qword_1EB98FCB0);
      goto LABEL_10;
    }

LABEL_11:
    memset(v41, 0, sizeof(v41));
    sub_1B7205418(v41, &qword_1EB98FCB0);
    if (v35)
    {
      v32 = v28;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      v32 = v28;
      v35 = v28;
    }

    v31 = v35;
    goto LABEL_16;
  }
}

void sub_1B7311834(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v38 = a2[3];
  v39 = a1;
  v37 = *(v38 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FF0B8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v44 = v3;
  sub_1B77FEEE8();
  v40 = v13;
  v19 = (*(v13 + 88))(v18, v12);
  if (v19 == *MEMORY[0x1E6968C10])
  {
    v40 = 0xE700000000000000;
    v34 = 0x3A6F743A646461;
    v20 = v39;
  }

  else
  {
    v20 = v39;
    if (v19 == *MEMORY[0x1E6968C20])
    {
      v40 = 0xEE003A7463617274;
      v21 = 0x6275733A6D6F7266;
    }

    else
    {
      if (v19 != *MEMORY[0x1E6968C18])
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD000000000000022, 0x80000001B7879DD0);
        sub_1B77FEEE8();
        sub_1B7801C48();
        (*(v40 + 8))(v16, v12);
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v40 = 0xEC0000003A79623ALL;
      v21 = 0x796C7069746C756DLL;
    }

    v34 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B7808C50;
  sub_1B77FEEF8();
  v23 = v41;
  v24 = sub_1B730DE40(v20, v8, a2[4]);
  (*(v9 + 8))(v11, v8);
  if (v23)
  {

    *(v22 + 16) = 0;
  }

  else
  {
    v25 = sub_1B7205540(0, &qword_1EB990580);
    *(v22 + 56) = v25;
    *(v22 + 32) = v24;
    v26 = v36;
    sub_1B77FEF08();
    v27 = a2[5];
    v28 = v38;
    v29 = sub_1B730DE40(v20, v38, v27);
    (*(v37 + 8))(v26, v28);
    *(v22 + 88) = v25;
    *(v22 + 64) = v29;
    v30 = sub_1B7800838();

    v31 = sub_1B7800C18();

    v32 = [objc_opt_self() expressionForFunction:v30 arguments:{v31, v34}];

    v33 = v35;
    *v35 = v32;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
    *(v33 + 32) = 0;
  }
}

void sub_1B7311DA0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7808C50;
  sub_1B77FEF48();
  v12 = sub_1B730DE40(a1, v7, *(a2 + 24));
  if (v3)
  {
    (*(v8 + 8))(v10, v7);
    *(v11 + 16) = 0;
  }

  else
  {
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    v14 = sub_1B7205540(0, &qword_1EB990580);
    *(v11 + 56) = v14;
    *(v11 + 32) = v13;
    v21[1] = -1;
    v15 = sub_1B7802198();
    v16 = objc_opt_self();
    v17 = [v16 expressionForConstantValue_];
    swift_unknownObjectRelease();
    *(v11 + 88) = v14;
    *(v11 + 64) = v17;
    v18 = sub_1B7800838();
    v19 = sub_1B7800C18();

    v20 = [v16 expressionForFunction:v18 arguments:v19];

    *a3 = v20;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_1B7312028(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v40 = a1;
  v33 = a3;
  v35 = *(a2[3] - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FF0C8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  sub_1B77FEF18();
  v32 = v12;
  v17 = (*(v12 + 88))(v16, v11);
  v18 = 0;
  if (v17 != *MEMORY[0x1E6968C40])
  {
    if (v17 == *MEMORY[0x1E6968C30])
    {
      v18 = 1;
    }

    else if (v17 == *MEMORY[0x1E6968C28])
    {
      v18 = 2;
    }

    else
    {
      if (v17 != *MEMORY[0x1E6968C38])
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD000000000000022, 0x80000001B7879DD0);
        v29 = v31;
        sub_1B77FEF18();
        sub_1B7801C48();
        (*(v32 + 8))(v29, v11);
        sub_1B7801C88();
        __break(1u);
        return;
      }

      v18 = 3;
    }
  }

  sub_1B77FEF28();
  v19 = v40;
  v20 = v37;
  v21 = sub_1B730DE40(v40, v7, a2[4]);
  (*(v8 + 8))(v10, v7);
  if (!v20)
  {
    v22 = v21;
    v23 = v34;
    sub_1B77FEF38();
    v24 = a2[5];
    v25 = v36;
    v26 = sub_1B730DE40(v19, v36, v24);
    (*(v35 + 8))(v23, v25);
    v27 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v22 rightExpression:v26 modifier:0 type:v18 options:0];

    v28 = v33;
    *v33 = v27;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 0;
    *(v28 + 32) = 1;
  }
}

void sub_1B731248C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF278();
  v11 = sub_1B730DF10(a1, v7, *(a2 + 24));
  (*(v8 + 8))(v10, v7);
  if (!v3)
  {
    v12 = [objc_opt_self() notPredicateWithSubpredicate_];

    *a3 = v12;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
  }
}

void sub_1B73125F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v38 = a1;
  v31 = a3;
  v34 = a2[3];
  v32 = *(v34 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v6 + 16);
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1B77FEF58();
  v9 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_1B77FF2B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  sub_1B77FF228();
  sub_1B77FF2A8();
  (*(v13 + 8))(v15, v12);
  v16 = v38;
  v17 = sub_1B730C4A0(v11);
  (*(v9 + 8))(v11, v37);
  v18 = v35;
  sub_1B77FF218();
  v19 = v40;
  v20 = sub_1B730DE40(v16, v18, v36);
  if (v19)
  {
    (*(v39 + 8))(v8, v18);
  }

  else
  {
    v37 = v17;
    v40 = v20;
    v21 = v32;
    (*(v39 + 8))(v8, v18);
    v22 = v33;
    sub_1B77FF208();
    v23 = v34;
    v24 = sub_1B730DF10(v16, v34, a2[5]);
    (*(v21 + 8))(v22, v23);
    v25 = sub_1B7800838();

    v26 = objc_opt_self();
    v27 = v40;
    v28 = [v26 expressionForSubquery:v40 usingIteratorVariable:v25 predicate:v24];

    v29 = v31;
    *v31 = v28;
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = 0;
    *(v29 + 32) = 0;
  }
}

void sub_1B7312A78(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v30 = a2[3];
  v27 = *(v30 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7808C50;
  v28 = v3;
  MEMORY[0x1B8CA3300](a2);
  v16 = a2[4];
  v29 = a1;
  v17 = sub_1B730DE40(a1, v11, v16);
  (*(v12 + 8))(v14, v11);
  if (v4)
  {
    *(v15 + 16) = 0;
  }

  else
  {
    v18 = v27;
    v19 = sub_1B7205540(0, &qword_1EB990580);
    *(v15 + 56) = v19;
    *(v15 + 32) = v17;
    MEMORY[0x1B8CA3310](a2);
    v20 = v30;
    v21 = sub_1B730DE40(v29, v30, a2[5]);
    (*(v18 + 8))(v9, v20);
    *(v15 + 88) = v19;
    *(v15 + 64) = v21;
    v22 = sub_1B7800838();
    v23 = sub_1B7800C18();

    v24 = [objc_opt_self() expressionForFunction:v22 arguments:v23];

    v25 = v26;
    *v26 = v24;
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = 0;
    *(v25 + 32) = 0;
  }
}

void sub_1B7312D90(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v28 = a2[3];
  v25 = *(v28 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B780C060;
  v26 = v3;
  MEMORY[0x1B8CA3280](a2);
  v16 = a2[4];
  v27 = a1;
  v17 = sub_1B730DE40(a1, v11, v16);
  (*(v12 + 8))(v14, v11);
  if (v4)
  {
    *(v15 + 16) = 0;
  }

  else
  {
    *(v15 + 32) = v17;
    v18 = v25;
    MEMORY[0x1B8CA3290](a2);
    v19 = v28;
    v20 = sub_1B730DE40(v27, v28, a2[5]);
    (*(v18 + 8))(v9, v19);
    *(v15 + 40) = v20;
    sub_1B7205540(0, &qword_1EB990580);
    v21 = sub_1B7800C18();

    v22 = [objc_opt_self() expressionForAggregate_];

    v23 = v24;
    *v24 = v22;
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = 0;
    *(v23 + 32) = 0;
  }
}

void sub_1B7313068(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v26 = a2[2];
  v25 = *(v26 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF068();
  v14 = sub_1B730DE40(a1, v10, a2[5]);
  (*(v11 + 8))(v13, v10);
  if (!v3)
  {
    v15 = v14;
    v16 = v24;
    MEMORY[0x1B8CA3390](a2);
    v17 = v26;
    v18 = sub_1B730DE40(a1, v26, a2[4]);
    (*(v25 + 8))(v8, v17);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = swift_conformsToProtocol2();
    if (AssociatedTypeWitness)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 10;
    }

    else
    {
      v22 = 100;
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v15 rightExpression:v18 modifier:0 type:v22 options:0];

    *v16 = v23;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 1;
  }
}

uint64_t sub_1B7313318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  a2[3] = *(a1 + 16);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return MEMORY[0x1B8CA34F0](a1);
}

uint64_t sub_1B7313358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  a2[3] = *(a1 + 24);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return MEMORY[0x1B8CA3500](a1);
}

uint64_t sub_1B73133A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = sub_1B7801C68();
  v57 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v56 - v7;
  v66 = sub_1B7801CE8();
  v59 = *(v66 - 8);
  v8 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v56 - v10;
  v70 = sub_1B7801C58();
  v63 = *(v70 - 8);
  v11 = MEMORY[0x1EEE9AC00](v70);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v56 - v13;
  v14 = sub_1B7800818();
  v67 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v68 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  v19 = sub_1B78010C8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v56 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v29;
  (*(v29 + 16))(v28, v71, a1);
  if (swift_dynamicCast())
  {
    (*(v20 + 32))(v23, v26, v19);
    v30 = v72;
    *(v72 + 24) = AssociatedTypeWitness;
    *(v30 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    v32 = *(*(AssociatedTypeWitness - 8) + 32);
    v32(boxed_opaque_existential_1, v23, AssociatedTypeWitness);
    v33 = *(v19 + 36);
    *(v30 + 64) = AssociatedTypeWitness;
    *(v30 + 72) = AssociatedConformanceWitness;
    v34 = __swift_allocate_boxed_opaque_existential_1((v30 + 40));
    v32(v34, &v23[v33], AssociatedTypeWitness);
    *(v30 + 80) = 0;
  }

  else
  {
    v35 = v72;
    if (swift_dynamicCast())
    {
      v36 = v68;
      (*(v67 + 32))(v68, v18, v14);
      v37 = v35;
      *(v35 + 24) = AssociatedTypeWitness;
      *(v35 + 32) = AssociatedConformanceWitness;
      v38 = __swift_allocate_boxed_opaque_existential_1(v35);
      v39 = *(*(AssociatedTypeWitness - 8) + 32);
      v39(v38, v36, AssociatedTypeWitness);
      v40 = *(v14 + 36);
      *(v37 + 64) = AssociatedTypeWitness;
      *(v37 + 72) = AssociatedConformanceWitness;
      v41 = __swift_allocate_boxed_opaque_existential_1((v37 + 40));
      v39(v41, &v36[v40], AssociatedTypeWitness);
      *(v37 + 80) = 1;
    }

    else
    {
      v43 = v69;
      v42 = v70;
      if (swift_dynamicCast())
      {
        v44 = v64;
        (*(v63 + 32))(v64, v43, v42);
        *(v35 + 24) = AssociatedTypeWitness;
        *(v35 + 32) = AssociatedConformanceWitness;
        v45 = __swift_allocate_boxed_opaque_existential_1(v35);
        (*(*(AssociatedTypeWitness - 8) + 32))(v45, v44, AssociatedTypeWitness);
        v46 = 2;
      }

      else
      {
        v48 = v65;
        v47 = v66;
        if (swift_dynamicCast())
        {
          v49 = v60;
          (*(v59 + 32))(v60, v48, v47);
          *(v35 + 24) = AssociatedTypeWitness;
          *(v35 + 32) = AssociatedConformanceWitness;
          v50 = __swift_allocate_boxed_opaque_existential_1(v35);
          (*(*(AssociatedTypeWitness - 8) + 32))(v50, v49, AssociatedTypeWitness);
          v46 = 3;
        }

        else
        {
          v52 = v61;
          v51 = v62;
          if (swift_dynamicCast())
          {
            v53 = v58;
            (*(v57 + 32))(v58, v52, v51);
            *(v35 + 24) = AssociatedTypeWitness;
            *(v35 + 32) = AssociatedConformanceWitness;
            v54 = __swift_allocate_boxed_opaque_existential_1(v35);
            (*(*(AssociatedTypeWitness - 8) + 32))(v54, v53, AssociatedTypeWitness);
            v46 = 4;
          }

          else
          {
            *(v35 + 48) = 0u;
            *(v35 + 64) = 0u;
            *(v35 + 16) = 0u;
            *(v35 + 32) = 0u;
            *v35 = 0u;
            v46 = -1;
          }
        }
      }

      *(v35 + 80) = v46;
    }
  }

  return (*(v73 + 8))(v28, a1);
}

uint64_t sub_1B7313B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CA3510](v5);
  sub_1B73133A0(v3, a2);
  return (*(v4 + 8))(v7, v3);
}

void sub_1B7313BF8(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v30 = a2[2];
  v31 = *(v30 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v27[2] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v33 = v27 - v10;
  v12 = *(v11 + 24);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v3;
  MEMORY[0x1B8CA3480](v16);
  v17 = a2[5];
  v29 = a1;
  v18 = v34;
  v19 = sub_1B730DE40(a1, v12, v17);
  if (v18)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v27[0] = v17;
    v34 = v19;
    v20 = *(v13 + 8);
    v27[1] = v12;
    v20(v15, v12);
    MEMORY[0x1B8CA3470](a2);
    v21 = v30;
    v22 = sub_1B730DE40(v29, v30, a2[4]);
    (*(v31 + 8))(v33, v21);
    v23 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v24 = v34;
    v25 = [v23 initWithLeftExpression:v34 rightExpression:v22 modifier:0 type:100 options:0];

    v26 = v28;
    *v28 = v25;
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = 0;
    *(v26 + 32) = 1;
  }
}

void sub_1B73148F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v41 = a1;
  v34 = a3;
  v37 = a2[3];
  v35 = *(v37 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v6 + 16);
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B77FEF58();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_1B77FF2B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  sub_1B77FF0F8();
  sub_1B77FF2A8();
  (*(v13 + 8))(v15, v12);
  v16 = v41;
  v17 = sub_1B730C4A0(v11);
  (*(v9 + 8))(v11, v40);
  v18 = v38;
  MEMORY[0x1B8CA3430](a2);
  v19 = v43;
  v20 = sub_1B730DE40(v16, v18, v39);
  if (v19)
  {
    (*(v42 + 8))(v8, v18);
  }

  else
  {
    v40 = v17;
    v43 = v20;
    v21 = v35;
    (*(v42 + 8))(v8, v18);
    v22 = v36;
    MEMORY[0x1B8CA3420](a2);
    v23 = v16;
    v24 = v37;
    v25 = sub_1B730DF10(v23, v37, a2[5]);
    (*(v21 + 8))(v22, v24);
    v26 = sub_1B7800838();

    v27 = objc_opt_self();
    v28 = v43;
    v29 = [v27 expressionForSubquery:v43 usingIteratorVariable:v26 predicate:v25];

    v30 = sub_1B730C6AC();
    v44 = 0;
    v31 = [v27 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v32 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v30 rightExpression:v31 modifier:0 type:5 options:0];

    v33 = v34;
    *v34 = v32;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
    *(v33 + 32) = 1;
  }
}

void sub_1B7314E14(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v44 = a1;
  v37 = a3;
  v4 = a2[2];
  v39 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v7 + 24);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B77FEF58();
  v10 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2[4];
  v40 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v13 = sub_1B77FF2B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  sub_1B77FF0F8();
  sub_1B77FF2A8();
  (*(v14 + 8))(v16, v13);
  v17 = v44;
  v18 = sub_1B730C4A0(v12);
  v19 = v12;
  v20 = v43;
  (*(v10 + 8))(v19, v42);
  MEMORY[0x1B8CA33F0](a2);
  v21 = v46;
  v22 = sub_1B730DF10(v17, v20, a2[5]);
  if (v21)
  {
    (*(v45 + 8))(v9, v20);
  }

  else
  {
    v23 = v22;
    v46 = v18;
    v24 = v39;
    (*(v45 + 8))(v9, v20);
    v25 = [objc_opt_self() notPredicateWithSubpredicate_];

    MEMORY[0x1B8CA3400](a2);
    v26 = v17;
    v27 = v40;
    v28 = sub_1B730DE40(v26, v40, v38);
    (*(v24 + 8))(v41, v27);
    v29 = v25;
    v30 = sub_1B7800838();

    v31 = objc_opt_self();
    v32 = [v31 expressionForSubquery:v28 usingIteratorVariable:v30 predicate:v29];

    v33 = sub_1B730C6AC();
    v47 = 0;
    v34 = [v31 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v35 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v33 rightExpression:v34 modifier:0 type:4 options:0];

    v36 = v37;
    *v37 = v35;
    v36[1] = 0;
    v36[2] = 0;
    v36[3] = 0;
    *(v36 + 32) = 1;
  }
}

double sub_1B7315398@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B73153E8(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

void sub_1B73153E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v11);
  v13 = sub_1B730DE40(a1, v7, *(a2 + 24));
  (*(v8 + 8))(v10, v7);
  if (!v3)
  {
    v14 = sub_1B730C6AC();

    *a3 = v14;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_1B731555C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v32 = a2[4];
  v31 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v9 + 24);
  v33 = *(v34 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  sub_1B77FEFA8();
  v18 = v36;
  v19 = sub_1B730DF10(a1, v14, a2[5]);
  (*(v15 + 8))(v17, v14);
  if (!v18)
  {
    v36 = v19;
    v21 = v31;
    v20 = v32;
    sub_1B77FEF88();
    v22 = v34;
    v23 = sub_1B730DE40(a1, v34, a2[6]);
    (*(v33 + 8))(v12, v22);
    v24 = v23;
    sub_1B77FEF98();
    v25 = sub_1B730DE40(a1, v20, a2[7]);
    (*(v21 + 8))(v8, v20);
    v26 = objc_opt_self();
    v27 = v36;
    v28 = [v26 expressionForConditional:v36 trueExpression:v23 falseExpression:v25];

    v29 = v30;
    *v30 = v28;
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = 0;
    *(v29 + 32) = 0;
  }
}

void sub_1B7315890(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v32 = a2[3];
  v34 = *(v32 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v3;
  MEMORY[0x1B8CA32D0](v15);
  v16 = sub_1B730DE40(a1, v11, a2[4]);
  (*(v12 + 8))(v14, v11);
  if (!v4)
  {
    v17 = v16;
    v18 = v30;
    sub_1B77FEFC8();
    v19 = v32;
    v20 = sub_1B730DE40(a1, v32, a2[5]);
    (*(v34 + 8))(v9, v19);
    v21 = v18;
    if (![v17 expressionType])
    {
      if (![v17 constantValue])
      {

        memset(v33, 0, sizeof(v33));
        sub_1B7205418(v33, &qword_1EB98FCB0);
        goto LABEL_6;
      }

      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205418(v33, &qword_1EB98FCB0);
    }

    v22 = objc_opt_self();
    v23 = [v22 expressionForConstantValue_];
    v24 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v25 = v17;
    v26 = [v24 initWithLeftExpression:v25 rightExpression:v23 modifier:0 type:5 options:0];

    v27 = v26;
    v28 = [v22 expressionForConditional:v27 trueExpression:v25 falseExpression:v20];

    v20 = v28;
LABEL_6:
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
  }
}

void sub_1B7315C28(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[4];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FEF58();
  v85 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FF2B8();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - v13;
  v14 = a2[2];
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v82 = v17;
  v83 = v16;
  v79 = v9;
  v80 = v7;
  v81 = v6;
  v78 = a3;
  a1[4] = v22;
  MEMORY[0x1B8CA3350](a2);
  v23 = a2[6];
  v84 = a1;
  v24 = v89;
  v25 = sub_1B730E0EC(a1, v14, v23);
  v27 = v26;
  v29 = v28;
  v30 = a2;
  v32 = v31;
  (*(v15 + 8))(v19, v14);
  if (!v24)
  {
    v75 = v25;
    v76 = v27;
    v89 = v30;
    v77 = v29;
    v33 = v84;
    v34 = v84[4];
    v21 = v34 != 0;
    v35 = v34 - 1;
    if (!v21)
    {
      goto LABEL_18;
    }

    v84[4] = v35;
    v36 = v87;
    sub_1B77FF048();
    v37 = v83;
    sub_1B77FF2A8();
    (*(v82 + 8))(v36, v37);
    v38 = v77;
    if (v77)
    {
      v39 = v76;
      v40 = v76;

      v41 = v75;
      v42 = v75;
      sub_1B7801868();
      v44 = v43;
      v45 = swift_conformsToProtocol2();
      if (v45)
      {
        v46 = v44 == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = v38;
      v48 = v81;
      if (!v46)
      {
        (*(v45 + 8))(v44, v45);
        sub_1B7801878();
        v49 = sub_1B7801D08();
        if (!v49)
        {
LABEL_19:
          __break(1u);
          return;
        }

        v47 = v49;

        v41 = v75;
      }
    }

    else
    {
      v39 = v76;
      v50 = v76;
      v41 = v75;
      v51 = v75;
      v47 = 0;
      v48 = v81;
    }

    v87 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v33[1];
    v53 = v47;
    v83 = v32;
    v54 = v88;
    sub_1B7392604(v41, v39, v53, v32, v88, isUniquelyReferenced_nonNull_native);
    v33[1] = v91;
    (*(v85 + 8))(v54, v79);
    v55 = v86;
    v56 = v89;
    sub_1B77FF058();
    v57 = sub_1B730E0EC(v33, v48, v56[7]);
    v90 = v58;
    v59 = v57;
    v88 = v61;
    v89 = v60;
    (*(v80 + 8))(v55, v48);
    v62 = objc_opt_self();
    v63 = v41;
    v64 = [v62 expressionForConstantValue_];
    v65 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v63 rightExpression:v64 modifier:0 type:5 options:0];

    v66 = v87;
    v67 = v87;
    if (!v83)
    {
      v67 = v65;
    }

    v68 = v66;
    v69 = v59;
    v70 = [v62 expressionForConstantValue_];
    v71 = [v62 expressionForConditional:v67 trueExpression:v69 falseExpression:v70];

    v72 = v78;
    v74 = v89;
    v73 = v90;
    *v78 = v71;
    v72[1] = v74;
    v72[2] = v73;
    v72[3] = 0;
    *(v72 + 32) = 2;
  }
}

void sub_1B7316298(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v38 = a2[3];
  v36 = *(v38 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7808C50;
  v37 = v3;
  MEMORY[0x1B8CA34A0](a2);
  v15 = v42;
  v16 = sub_1B730DE40(a1, v10, a2[4]);
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    *(v14 + 16) = 0;
  }

  else
  {
    v17 = v36;
    v18 = sub_1B7205540(0, &qword_1EB990580);
    *(v14 + 56) = v18;
    *(v14 + 32) = v16;
    MEMORY[0x1B8CA3490](a2);
    v19 = a2[5];
    v20 = v38;
    v21 = sub_1B730DE40(a1, v38, v19);
    (*(v17 + 8))(v8, v20);
    *(v14 + 88) = v18;
    *(v14 + 64) = v21;
    v22 = sub_1B7800838();
    v23 = sub_1B7800C18();

    v24 = objc_opt_self();
    v25 = [v24 expressionForFunction:v22 arguments:v23];

    if ([v25 expressionValueWithObject:0 context:0])
    {
      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B72051F0(&v39, v41);
      sub_1B730D314(v41, &v39);
      v27 = v40;
      if (v40)
      {
        v28 = __swift_project_boxed_opaque_existential_1(&v39, v40);
        v29 = *(v27 - 8);
        MEMORY[0x1EEE9AC00](v28);
        v31 = &v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v31);
        v32 = sub_1B78020D8();
        (*(v29 + 8))(v31, v27);
        __swift_destroy_boxed_opaque_existential_1(&v39);
      }

      else
      {
        v32 = 0;
      }

      v33 = v35;
      v34 = [v24 expressionForConstantValue_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v41);
      *v33 = v34;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0;
    }

    else
    {
      sub_1B73182C4();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 2;
      swift_willThrow();
    }
  }
}

double sub_1B7316744@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7316298(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

void sub_1B7316790(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v32 = a2[3];
  v29 = *(v32 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7808C50;
  v30 = v3;
  MEMORY[0x1B8CA3460](a2);
  v16 = a2[5];
  v31 = a1;
  v17 = sub_1B730DE40(a1, v11, v16);
  (*(v12 + 8))(v14, v11);
  if (v4)
  {
    *(v15 + 16) = 0;
  }

  else
  {
    v18 = v29;
    v19 = sub_1B7205540(0, &qword_1EB990580);
    *(v15 + 56) = v19;
    *(v15 + 32) = v17;
    sub_1B77FF138();
    v20 = a2[6];
    v21 = v32;
    v22 = sub_1B730DE40(v31, v32, v20);
    (*(v18 + 8))(v9, v21);
    *(v15 + 88) = v19;
    *(v15 + 64) = v22;
    v23 = sub_1B7800838();
    v24 = sub_1B7800C18();

    v25 = [objc_opt_self() expressionForFunction:v23 arguments:v24];

    if ([v25 expressionType])
    {
      sub_1B73182C4();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      v27 = v28;
      *v28 = v25;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = 0;
      *(v27 + 32) = 0;
    }
  }
}

void sub_1B7316B3C(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v26 = a5;
  v27 = a4;
  v29 = a2[3];
  v30 = a3;
  v31 = *(v29 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v18(v17);
  v19 = sub_1B730DE40(a1, v13, a2[4]);
  (*(v14 + 8))(v16, v13);
  if (!v6)
  {
    v20 = v26;
    v21 = v27;
    v30(a2);
    v22 = v29;
    v23 = sub_1B730DE40(a1, v29, a2[5]);
    (*(v31 + 8))(v11, v22);
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v19 rightExpression:v23 modifier:0 type:v21 options:0];

    *v20 = v24;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 1;
  }
}

double sub_1B7316DBC@<D0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  sub_1B7316B3C(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

id sub_1B7316E18@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() expressionForConstantValue_];
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1B7316E70(uint64_t a1)
{
  type metadata accessor for ComparisonResult(0);
  v12[3] = v3;
  v12[0] = a1;
  sub_1B730D314(v12, &v13);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v1)
  {
    v5 = v14;
    if (v14)
    {
      v6 = __swift_project_boxed_opaque_existential_1(&v13, v14);
      v7 = *(v5 - 8);
      MEMORY[0x1EEE9AC00](v6);
      v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_1B78020D8();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

void sub_1B7316FF4(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = sub_1B730DE40(a1, a3, a5);
  if (!v7)
  {
    v30 = v15;
    v29 = a7;
    v16 = sub_1B730DE40(a1, a4, a6);
    v17 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v30 rightExpression:v16 modifier:0 type:4 options:a2];

    v18 = sub_1B730DE40(a1, a3, a5);
    v19 = sub_1B730DE40(a1, a4, a6);
    v20 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v18 rightExpression:v19 modifier:0 type:0 options:a2];

    v21 = sub_1B7316E70(-1);
    v22 = sub_1B7316E70(1);
    v23 = objc_opt_self();
    v24 = v20;
    v25 = [v23 expressionForConditional:v24 trueExpression:v21 falseExpression:v22];

    v26 = sub_1B7316E70(0);
    v27 = v17;
    v28 = [v23 expressionForConditional:v27 trueExpression:v26 falseExpression:v25];

    *v29 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
  }
}

double sub_1B73172CC@<D0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  result = sub_1B7317320(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

double sub_1B7317320@<D0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(void *)@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v24 = a1;
  v25 = a4;
  v23 = a5;
  v7 = a2[3];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v17);
  a3(a2);
  v19 = v28;
  sub_1B7316FF4(v24, v25, v13, v7, a2[4], a2[5], v26);
  (*(v8 + 8))(v11, v7);
  (*(v14 + 8))(v16, v13);
  if (!v19)
  {
    result = *v26;
    v21 = v26[1];
    v22 = v23;
    *v23 = v26[0];
    v22[1] = v21;
    *(v22 + 32) = v27;
  }

  return result;
}

void sub_1B7317534(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v25 = a2[3];
  v26 = *(v25 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  MEMORY[0x1B8CA34B0](v15);
  v16 = a1;
  v17 = sub_1B730DE40(a1, v11, a2[4]);
  (*(v12 + 8))(v14, v11);
  if (!v4)
  {
    v18 = v23;
    MEMORY[0x1B8CA34C0](a2);
    v19 = v25;
    v20 = sub_1B730DE40(v16, v25, a2[5]);
    (*(v26 + 8))(v9, v19);
    v21 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v17 rightExpression:v20 modifier:0 type:99 options:11];

    *v18 = v21;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 1;
  }
}

double sub_1B731778C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
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

id sub_1B7317810(void *a1, void *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v10 = 0;
    v11 = a2[3];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1B78020D8();
  (*(v7 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = a2[3];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  v16 = sub_1B78020D8();
  (*(v13 + 8))(v15, v11);
  __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_6:
  v17 = [v2 initWithOperand:v10 andKeyPath:v16];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_1B7317A40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317A7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317AB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317AF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317B30(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317B6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317BA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317BE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317C20(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317C5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317C98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317CD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317D10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317D4C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317D88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317DC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317E00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317E3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317E78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317EB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317EF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317F2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317F68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317FA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7317FE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B731801C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7318058(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7318094(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B73180D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B731810C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7318148(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7318184(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B73181C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B73181FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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