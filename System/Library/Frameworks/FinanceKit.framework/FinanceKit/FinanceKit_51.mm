uint64_t BankConnectOfflineLab.SharingPreference.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A938);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7663964();
  sub_1B78023C8();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B7801E08();
    v13 = 1;
    v11 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for BankConnectOfflineLab.SharingPreference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

unint64_t sub_1B7663C6C()
{
  result = qword_1EB99A940;
  if (!qword_1EB99A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A940);
  }

  return result;
}

unint64_t sub_1B7663CC4()
{
  result = qword_1EB99A948;
  if (!qword_1EB99A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A948);
  }

  return result;
}

unint64_t sub_1B7663D1C()
{
  result = qword_1EB99A950;
  if (!qword_1EB99A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A950);
  }

  return result;
}

uint64_t sub_1B7663E84()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B7663EE4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B751F290;
}

uint64_t sub_1B7664030()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactionChangesObserver);
  swift_beginAccess();
  *(v1 + 32) = &protocol witness table for TransactionsAndGroupsProvider;
  swift_unknownObjectWeakAssign();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:sel_contextDidMergeChangesObjectIDsNotificationWithNotification_ name:*MEMORY[0x1E695D348] object:*(v1 + 16)];

  return _s10FinanceKit29TransactionsAndGroupsProviderC09didChangeC0yyF_0();
}

uint64_t _s10FinanceKit29TransactionsAndGroupsProviderC09didChangeC0yyF_0()
{
  v1 = v0;
  v2 = sub_1B7800398();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B78003C8();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B78000B8();
  v49 = *(v5 - 8);
  *&v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B77FF988();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FED28();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = &v0[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_formatterConfiguration];
  v45 = *(type metadata accessor for FormatterConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v13 = sub_1B77FFC68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7808C50;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A68], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A78], v13);
  v20 = v12;
  v21 = v1;
  sub_1B7545E58(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = swift_deallocClassInstance();
  (*&v1[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_now])(v22);
  sub_1B77FFB68();

  (*(v7 + 8))(v9, v47);
  v23 = *&v1[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_context];
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v24 = v50;
  v25 = __swift_project_value_buffer(v50, qword_1EDAF65B0);
  v26 = v48;
  v27 = v49 + 16;
  v28 = (*(v49 + 16))(v48, v25, v24);
  MEMORY[0x1EEE9AC00](v28);
  *(&v38 - 4) = v23;
  *(&v38 - 3) = v26;
  *(&v38 - 2) = v20;
  *(&v38 - 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA00);
  sub_1B7801468();
  (*(v27 - 8))(v26, v24);
  v29 = v55;
  sub_1B7205540(0, &qword_1EDAFC530);
  v50 = aBlock;
  v30 = sub_1B7801328();
  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  *(v31 + 24) = v50;
  *(v31 + 40) = v29;
  v57 = sub_1B76684D4;
  v58 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = sub_1B72A58C8;
  v56 = &block_descriptor_19;
  v32 = _Block_copy(&aBlock);
  v33 = v21;
  v34 = v39;
  sub_1B78003B8();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1B76684E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA10);
  sub_1B7205294();
  v35 = v41;
  v36 = v44;
  sub_1B78018B8();
  MEMORY[0x1B8CA5660](0, v34, v35, v32);
  _Block_release(v32);

  (*(v43 + 8))(v35, v36);
  (*(v40 + 8))(v34, v42);

  return (*(v51 + 8))(v20, v52);
}

id TransactionsAndGroupsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransactionsAndGroupsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionsAndGroupsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7664B2C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v22[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v22];

  if (v6)
  {
    v7 = v22[0];
    v8 = sub_1B77FEC78();
    if (v9 & 1) != 0 || (v10 = v8, v11 = sub_1B77FEC58(), (v12))
    {
      v13 = sub_1B7800098();
      v14 = sub_1B78011D8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        MEMORY[0x1B8CA7A40](v15, -1, -1);
      }

      sub_1B7668540();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v17 = v11;
      v18 = sub_1B7664F44(v10, v11);
      if (!v2)
      {
        v19 = v18;
        v20 = sub_1B76652B4(v10, v17);
        v21 = sub_1B7665598();
        *a2 = v19;
        a2[1] = v20;
        a2[2] = v21;
      }
    }

    sub_1B7664D6C(a1);
  }

  else
  {
    v16 = v22[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

void sub_1B7664D6C(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v1 = [a1 setQueryGenerationFromToken:0 error:v13];
  v2 = v13[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v13[0];
    v5 = sub_1B77FF318();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      sub_1B7205418(v10, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B7664F44(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier);
  v11 = *(v4 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier + 8);
  sub_1B77FFA68();
  v12 = type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  v13 = sub_1B77FFCC8();
  v14 = 100 * a2;
  if ((a2 * 100) >> 64 != (100 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v41 = v12;
  v15 = v14 + a1;
  if (__OFADD__(v14, a1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = v14 + a1;
  v16 = sub_1B7802068();
  v18 = v17;
  sub_1B76685B0(v9, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
  v19 = sub_1B76675EC(v10, v11, v16, v18);

  v20 = sub_1B7667744(v19, 0, 1);

  v21 = *(v4 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_context);
  type metadata accessor for ManagedInternalTransaction();
  v13 = sub_1B7801498();
  v42 = v3;
  if (!v3)
  {
    v38 = v21;
    v39 = v20;
    v35 = v15;
    v36 = v11;
    v40 = v4;
    v37 = v10;
    v44 = v13;
    if (!(v13 >> 62))
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = *(v40 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_fixedNumberOfLatestTransactions);
      v4 = v38;
      if (v22 >= v23)
      {
LABEL_17:
        v31 = v39;
        goto LABEL_18;
      }

      goto LABEL_7;
    }

LABEL_13:
    v34 = v13;
    v32 = sub_1B7801958();
    v23 = *(v40 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_fixedNumberOfLatestTransactions);
    if (v32 >= v23)
    {
LABEL_16:
      v13 = v34;
      goto LABEL_17;
    }

    v22 = sub_1B7801958();
    v13 = v34;
    v4 = v38;
LABEL_7:
    v34 = v13;
    v24 = v23 - v22;
    if (!__OFSUB__(v23, v22))
    {
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      v43 = v35;
      v25 = sub_1B7802068();
      v27 = v26;
      sub_1B76685B0(v9, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
      v28 = sub_1B76678D0(v37, v36, v25, v27);

      v20 = sub_1B7667744(v28, v24, 0);

      v29 = v42;
      v30 = sub_1B7801498();
      if (v29)
      {

        goto LABEL_4;
      }

      sub_1B7244874(v30);

      v13 = v44;
      v31 = v39;
LABEL_18:
      v4 = ManagedTransactionExporter.financeKitTransactions(from:classifyIfNecessary:)(v13, 1);

      return v4;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_4:

  return v4;
}

uint64_t sub_1B76652B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B7667A28(*(v2 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier), *(v2 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier + 8), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60);
  v6 = sub_1B7801498();
  if (!v3)
  {
    v7 = sub_1B72B4004(v6);

    v4 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v23 = MEMORY[0x1E69E7CC0];
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_25:

      return v4;
    }

    v11 = 0;
    v19 = v5;
LABEL_8:
    v12 = v11;
    while (1)
    {
      if (v12 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = *(v9 + 32 + 8 * v12);
      if (*(v13 + 16))
      {

        v14 = sub_1B724548C(0x646E4168746E6F6DLL, 0xEC00000072616559);
        if (v15)
        {
          sub_1B719BDE4(*(v13 + 56) + 32 * v14, v22);
          if (swift_dynamicCast())
          {
            if (*(v13 + 16))
            {
              v16 = sub_1B724548C(0x746E756F63, 0xE500000000000000);
              if (v17)
              {
                sub_1B719BDE4(*(v13 + 56) + 32 * v16, v22);
                if (swift_dynamicCast())
                {
                  sub_1B7665AF8(v20, v21, v20);

                  MEMORY[0x1B8CA4F20](v18);
                  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1B7800C58();
                  }

                  v11 = v12 + 1;
                  result = sub_1B7800C88();
                  v4 = v23;
                  v5 = v19;
                  if (v10 - 1 == v12)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_8;
                }
              }
            }
          }
        }
      }

      if (v10 == ++v12)
      {
        v5 = v19;
        goto LABEL_25;
      }
    }
  }

  return v4;
}

uint64_t sub_1B7665598()
{
  v2 = *(v0 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AA38);
  result = sub_1B7801468();
  if (v1)
  {
    return v2;
  }

  v4 = v15[0];
  v2 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *(v15[0] + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *(v4 + 32 + 8 * v7);
      if (*(v8 + 16))
      {
        break;
      }

LABEL_6:
      if (v5 == ++v7)
      {
        goto LABEL_17;
      }
    }

    v9 = sub_1B724548C(1918985593, 0xE400000000000000);
    if ((v10 & 1) == 0 || (sub_1B719BDE4(*(v8 + 56) + 32 * v9, v15), (swift_dynamicCast() & 1) == 0) || !*(v8 + 16) || (v11 = sub_1B724548C(0x746E756F63, 0xE500000000000000), (v12 & 1) == 0) || (sub_1B719BDE4(*(v8 + 56) + 32 * v11, v15), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_6;
    }

    sub_1B7666828(v14, v14);

    MEMORY[0x1B8CA4F20](v13);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    v6 = v7 + 1;
    result = sub_1B7800C88();
    v2 = v16;
  }

  while (v5 - 1 != v7);
LABEL_17:

  return v2;
}

uint64_t sub_1B76657E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7800DA8();
  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactions;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactions));

  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v8 + 8) = a2;

  os_unfair_lock_unlock(v8);
  v9 = a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_monthlyTransactionGroups;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_monthlyTransactionGroups));

  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v9 + 8) = a3;

  os_unfair_lock_unlock(v9);
  v10 = a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_yearlyTransactionGroups;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_yearlyTransactionGroups));

  sub_1B7800D98();
  sub_1B7800CD8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v10 + 8) = a4;

  os_unfair_lock_unlock(v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v12 = Strong;
  sub_1B7205540(0, &qword_1EB99AA20);
  v13 = sub_1B7800C18();
  sub_1B7205540(0, &qword_1EB99AA28);
  v14 = sub_1B7800C18();
  v15 = sub_1B7800C18();
  [v12 didUpdateLatestTransactions:v13 monthlyTransactionGroups:v14 yearlyTransactionGroups:v15];

  return swift_unknownObjectRelease();
}

unsigned __int8 *sub_1B7665AF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v103 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v84 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v104 = &v84 - v18;
  v19 = sub_1B77FED28();
  v20 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v84 - v22;
  v26 = HIBYTE(a2) & 0xF;
  v27 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v28 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v96 = &v84 - v22;
    v97 = v23;
    v52 = v24;

    v30 = sub_1B75D5E88(a1, a2, 10);
    v54 = v53;

    v24 = v52;
    v25 = v96;
    v23 = v97;
    if (v54)
    {
      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v106[0] = a1;
    v106[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v26)
      {
        if (--v26)
        {
          v30 = 0;
          v40 = v106 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v26)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_88:
      __break(1u);
      return result;
    }

    if (a1 != 45)
    {
      if (v26)
      {
        v30 = 0;
        v45 = v106;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v26)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v26)
    {
      if (--v26)
      {
        v30 = 0;
        v34 = v106 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v26)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_86;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v82 = v23;
    v83 = v24;
    result = sub_1B7801B48();
    v24 = v83;
    v23 = v82;
  }

  v29 = *result;
  if (v29 == 43)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v30 = 0;
        if (result)
        {
          v37 = result + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_61;
            }

            v39 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_61;
            }

            v30 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_61;
            }

            ++v37;
            if (!--v26)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_87;
  }

  if (v29 == 45)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v30 = 0;
        if (result)
        {
          v31 = result + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_61;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_61;
            }

            v30 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              goto LABEL_61;
            }

            ++v31;
            if (!--v26)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v26) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v27)
  {
    v30 = 0;
    if (result)
    {
      while (1)
      {
        v43 = *result - 48;
        if (v43 > 9)
        {
          goto LABEL_61;
        }

        v44 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_61;
        }

        v30 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v27)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v30 = 0;
  LOBYTE(v26) = 1;
LABEL_62:
  v107 = v26;
  if (v26)
  {
LABEL_63:
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v48 = sub_1B78000B8();
    __swift_project_value_buffer(v48, qword_1EDAF65B0);
    v49 = sub_1B7800098();
    v50 = sub_1B78011D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B7198000, v49, v50, "Could not decode monthAndYear into an integer", v51, 2u);
      MEMORY[0x1B8CA7A40](v51, -1, -1);
    }

    return [objc_allocWithZone(FKPaymentTransactionGroup) init];
  }

LABEL_69:
  v93 = v24;
  v94 = a1;
  v97 = v23;
  v98 = v19;
  v95 = a2;
  v99 = v11;
  v55 = sub_1B77FFC88();
  v56 = *(v55 - 8);
  v91 = *(v56 + 56);
  v92 = v55;
  v90 = v56 + 56;
  v91(v104, 1, 1);
  v57 = sub_1B77FFCF8();
  v58 = *(v57 - 8);
  v89 = *(v58 + 56);
  v87 = v58 + 56;
  v89(v105, 1, 1, v57);
  v86 = v30 / 100;
  v85 = v30 % 100;
  sub_1B77FECD8();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBF8();
  v59 = v99;
  v88 = *(v99 + 48);
  v60 = v88(v9, 1, v10);
  v96 = v25;
  if (v60 == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v61 = sub_1B78000B8();
    __swift_project_value_buffer(v61, qword_1EDAF65B0);
    v62 = sub_1B7800098();
    v63 = sub_1B78011D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134218240;
      *(v64 + 4) = v85;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v86;
      _os_log_impl(&dword_1B7198000, v62, v63, "Failed to make group start date from %ld & %ld.", v64, 0x16u);
      MEMORY[0x1B8CA7A40](v64, -1, -1);
    }

    v65 = v101;
    sub_1B77FF978();
  }

  else
  {
    v65 = v101;
    (*(v59 + 32))(v101, v9, v10);
  }

  (v91)(v104, 1, 1, v92);
  v89(v105, 1, 1, v57);
  v66 = v93;
  sub_1B77FECD8();
  v67 = v100;
  sub_1B77FFC08();
  v68 = *(v97 + 8);
  v68(v66, v98);
  v69 = v88(v67, 1, v10);
  v70 = v102;
  if (v69 == 1)
  {
    sub_1B7205418(v67, &qword_1EB98EBD0);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v71 = sub_1B78000B8();
    __swift_project_value_buffer(v71, qword_1EDAF65B0);
    v72 = sub_1B7800098();
    v73 = sub_1B78011D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134218240;
      *(v74 + 4) = v85;
      *(v74 + 12) = 2048;
      *(v74 + 14) = v86;
      _os_log_impl(&dword_1B7198000, v72, v73, "Failed to make group end date from %ld & %ld.", v74, 0x16u);
      MEMORY[0x1B8CA7A40](v74, -1, -1);
    }

    sub_1B77FF978();
    v75 = v99;
  }

  else
  {
    v75 = v99;
    (*(v99 + 32))(v102, v67, v10);
  }

  v76 = objc_allocWithZone(FKPaymentTransactionGroup);
  v77 = sub_1B77FF8B8();
  v78 = sub_1B77FF8B8();
  v79 = sub_1B7800838();
  v80 = [v76 initWithStartDate:v77 endDate:v78 transactionCount:v103 type:0 bankConnectSectionIdentifier:v79];

  v81 = *(v75 + 8);
  v81(v70, v10);
  v81(v65, v10);
  v68(v96, v98);
  return v80;
}

void sub_1B7666764(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B7667F44(*(a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier), *(a1 + OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60);
  v5 = sub_1B7801498();
  if (v2)
  {
  }

  else
  {
    v6 = sub_1B72B4004(v5);

    if (v6)
    {
      *a2 = v6;
    }

    else
    {
      *a2 = MEMORY[0x1E69E7CC0];
    }
  }
}

id sub_1B7666828(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - v6;
  v8 = sub_1B77FF988();
  v64 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v60 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v52 - v17;
  v63 = sub_1B77FED28();
  v65 = *(v63 - 8);
  v19 = MEMORY[0x1EEE9AC00](v63);
  v57 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v52 - v21;
  v23 = sub_1B77FFC88();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v55 = v24 + 56;
  v56 = v25;
  v25(v18, 1, 1, v23);
  v26 = sub_1B77FFCF8();
  v27 = *(v26 - 8);
  v54 = *(v27 + 56);
  v52[3] = v27 + 56;
  v54(v15, 1, 1, v26);
  v62 = a1;
  sub_1B77FECD8();
  v28 = &v59[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_formatterConfiguration];
  v52[1] = *(type metadata accessor for FormatterConfiguration() + 20);
  v52[2] = v28;
  v59 = v22;
  sub_1B77FFBF8();
  v29 = v64;
  v53 = *(v64 + 48);
  if (v53(v7, 1, v8) == 1)
  {
    v52[0] = v8;
    sub_1B7205418(v7, &qword_1EB98EBD0);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1B78000B8();
    __swift_project_value_buffer(v30, qword_1EDAF65B0);
    v31 = sub_1B7800098();
    v32 = sub_1B78011D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v62;
      _os_log_impl(&dword_1B7198000, v31, v32, "Failed to make group start date for %ld", v33, 0xCu);
      MEMORY[0x1B8CA7A40](v33, -1, -1);
    }

    sub_1B77FF978();
    v34 = v52[0];
  }

  else
  {
    (*(v29 + 32))(v12, v7, v8);
    v34 = v8;
  }

  v56(v18, 1, 1, v23);
  v54(v15, 1, 1, v26);
  v35 = v57;
  sub_1B77FECD8();
  v36 = v58;
  sub_1B77FFC08();
  v37 = *(v65 + 8);
  v65 += 8;
  v37(v35, v63);
  v38 = v12;
  if (v53(v36, 1, v34) == 1)
  {
    sub_1B7205418(v36, &qword_1EB98EBD0);
    v39 = v64;
    v40 = v60;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v41 = sub_1B78000B8();
    __swift_project_value_buffer(v41, qword_1EDAF65B0);
    v42 = sub_1B7800098();
    v43 = sub_1B78011D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v62;
      _os_log_impl(&dword_1B7198000, v42, v43, "Failed to make group end date for %ld", v44, 0xCu);
      MEMORY[0x1B8CA7A40](v44, -1, -1);
    }

    sub_1B77FF978();
  }

  else
  {
    v39 = v64;
    v40 = v60;
    (*(v64 + 32))(v60, v36, v34);
  }

  v66 = v62;
  sub_1B7802068();
  v45 = objc_allocWithZone(FKPaymentTransactionGroup);
  v46 = sub_1B77FF8B8();
  v47 = sub_1B77FF8B8();
  v48 = sub_1B7800838();

  v49 = [v45 initWithStartDate:v46 endDate:v47 transactionCount:v61 type:1 bankConnectSectionIdentifier:v48];

  v50 = *(v39 + 8);
  v50(v40, v34);
  v50(v38, v34);
  v37(v59, v63);
  return v49;
}

id sub_1B7667094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v9 = off_1EDAF9E38;
  v10 = *(off_1EDAF9E38 + 2);
  v11 = *(v10 + 16);

  v12 = [v11 newBackgroundContext];
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v13 = off_1EDAF9CE0;
  type metadata accessor for ManagedTransactionExporter();
  v14 = swift_allocObject();
  v14[5] = type metadata accessor for BankConnectService();
  v14[6] = &protocol witness table for BankConnectService;
  v14[2] = v13;
  v15 = *(v9[2] + 16);

  v16 = [v15 viewContext];
  type metadata accessor for TransactionChangesObserver();
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TransactionsAndGroupsProvider();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactions];
  *v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 1) = MEMORY[0x1E69E7CC0];
  v22 = &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_monthlyTransactionGroups];
  *v22 = 0;
  *(v22 + 1) = v21;
  v23 = &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_yearlyTransactionGroups];
  *v23 = 0;
  *(v23 + 1) = v21;
  swift_unknownObjectWeakInit();
  v24 = &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_primaryAccountIdentifier];
  *v24 = a1;
  *(v24 + 1) = a2;
  *&v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_store] = v10;
  *&v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_context] = v12;
  sub_1B7519EB8(v8, &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_formatterConfiguration]);
  v25 = &v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_now];
  *v25 = sub_1B7663FD8;
  v25[1] = 0;
  *&v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_fixedNumberOfLatestTransactions] = a3;
  *&v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactionExporter] = v14;
  *&v19[OBJC_IVAR____TtC10FinanceKit29TransactionsAndGroupsProvider_transactionChangesObserver] = v17;
  v28.receiver = v19;
  v28.super_class = v18;

  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_1B76685B0(v8, type metadata accessor for FormatterConfiguration);
  return v26;
}

uint64_t type metadata accessor for TransactionsAndGroupsProvider()
{
  result = qword_1EB99A9C0;
  if (!qword_1EB99A9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76673F0()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1B76675EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  *(v8 + 32) = _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(a1, a2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  *(v8 + 40) = sub_1B78010E8();
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

id sub_1B7667744(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for ManagedInternalTransaction();
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v6 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v7 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  [v6 setPredicate_];
  swift_getKeyPath();
  _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(0);

  sub_1B7205540(0, &qword_1EDAF6470);
  v8 = sub_1B7800C18();

  [v6 setSortDescriptors_];

  [v6 setReturnsObjectsAsFaults_];
  v9 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  if ((a3 & 1) == 0)
  {
    [v6 setFetchLimit_];
  }

  return v6;
}

id sub_1B76678D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  *(v8 + 32) = _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(a1, a2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  *(v8 + 40) = sub_1B78010E8();
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

uint64_t sub_1B7667A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7801458();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for ManagedInternalTransaction.MonthYearFormatter();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalTransaction();
  v12 = [swift_getObjCClassFromMetadata() entityName];
  if (!v12)
  {
    sub_1B7800868();
    v12 = sub_1B7800838();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  result = sub_1B77FFCC8();
  v15 = 100 * a4;
  if ((a4 * 100) >> 64 == (100 * a4) >> 63)
  {
    v16 = __OFADD__(v15, a3);
    v17 = v15 + a3;
    if (!v16)
    {
      v40 = v17;
      v18 = sub_1B7802068();
      v20 = v19;
      sub_1B76685B0(v11, type metadata accessor for ManagedInternalTransaction.MonthYearFormatter);
      v21 = sub_1B76678D0(a1, a2, v18, v20);

      [v13 setPredicate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
      v22 = swift_allocObject();
      v39 = xmmword_1B7807CD0;
      v23 = MEMORY[0x1E69E6158];
      *(v22 + 16) = xmmword_1B7807CD0;
      *(v22 + 56) = v23;
      strcpy((v22 + 32), "monthAndYear");
      *(v22 + 45) = 0;
      *(v22 + 46) = -5120;
      v24 = sub_1B7800C18();

      [v13 setPropertiesToGroupBy_];

      [v13 setResultType_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B780B190;
      sub_1B7205540(0, &qword_1EDAF6470);
      swift_getKeyPath();
      *(v25 + 32) = sub_1B7801288();
      v26 = sub_1B7800C18();

      [v13 setSortDescriptors_];

      v27 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
      sub_1B7801448();
      sub_1B78014B8();
      v28 = v27;
      v29 = sub_1B7800838();
      [v28 setName_];

      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      v31 = sub_1B7205540(0, &qword_1EB990580);
      swift_getKeyPath();
      v32 = sub_1B7801138();
      *(v30 + 56) = v31;
      *(v30 + 32) = v32;
      v33 = sub_1B7800838();
      v34 = sub_1B7800C18();

      v35 = [objc_opt_self() expressionForFunction:v33 arguments:v34];

      [v28 setExpression_];
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1B7808C50;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      strcpy((v36 + 32), "monthAndYear");
      *(v36 + 45) = 0;
      *(v36 + 46) = -5120;
      *(v36 + 88) = sub_1B7205540(0, &qword_1EB99AA60);
      *(v36 + 64) = v28;
      v37 = v28;
      v38 = sub_1B7800C18();

      [v13 setPropertiesToFetch_];

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B7667F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7801458();
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for ManagedInternalTransaction();
  v5 = [swift_getObjCClassFromMetadata() entityName];
  if (!v5)
  {
    sub_1B7800868();
    v5 = sub_1B7800838();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  v7 = _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(a1, a2);
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v9;
  *(v8 + 32) = 1918985593;
  *(v8 + 40) = 0xE400000000000000;
  v10 = sub_1B7800C18();

  [v6 setPropertiesToGroupBy_];

  [v6 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v11 + 32) = sub_1B7801288();
  v12 = sub_1B7800C18();

  [v6 setSortDescriptors_];

  v13 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  sub_1B7801448();
  sub_1B78014B8();
  v14 = v13;
  v15 = sub_1B7800838();
  [v14 setName_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7807CD0;
  v17 = sub_1B7205540(0, &qword_1EB990580);
  swift_getKeyPath();
  v18 = sub_1B7801138();
  *(v16 + 56) = v17;
  *(v16 + 32) = v18;
  v19 = sub_1B7800838();
  v20 = sub_1B7800C18();

  v21 = [objc_opt_self() expressionForFunction:v19 arguments:v20];

  [v14 setExpression_];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B7808C50;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 32) = 1918985593;
  *(v22 + 40) = 0xE400000000000000;
  *(v22 + 88) = sub_1B7205540(0, &qword_1EB99AA60);
  *(v22 + 64) = v14;
  v23 = v14;
  v24 = sub_1B7800C18();

  [v6 setPropertiesToFetch_];

  return v6;
}

id sub_1B766835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  *(v8 + 32) = _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(a1, a2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  *(v8 + 40) = sub_1B78010E8();
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

unint64_t sub_1B76684E8()
{
  result = qword_1EB98F6A8;
  if (!qword_1EB98F6A8)
  {
    sub_1B7800398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F6A8);
  }

  return result;
}

unint64_t sub_1B7668540()
{
  result = qword_1EB99AA30;
  if (!qword_1EB99AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA30);
  }

  return result;
}

uint64_t sub_1B76685B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B7668624()
{
  result = qword_1EB99AA68;
  if (!qword_1EB99AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA68);
  }

  return result;
}

id CNMutablePostalAddress.init(rawAddress:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[8];
  v6 = a1[10];
  v7 = a1[12];
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B723E0F4();
    sub_1B78007C8();

    v9 = sub_1B7800838();

    [v8 setStreet_];
  }

  if (v2)
  {

    v10 = sub_1B7800838();

    [v8 setCity_];
  }

  if (v3)
  {

    v11 = sub_1B7800838();

    [v8 setSubLocality_];
  }

  if (v4)
  {

    v12 = sub_1B7800838();

    [v8 setState_];
  }

  if (v5)
  {

    v13 = sub_1B7800838();

    [v8 setSubAdministrativeArea_];
  }

  if (v6)
  {

    v14 = sub_1B7800838();

    [v8 setPostalCode_];
  }

  if (v7)
  {
    v15 = sub_1B7800838();

    [v8 setISOCountryCode_];
  }

  else
  {
  }

  return v8;
}

void RawAddress.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v91 = a2;
  v3 = [a1 street];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v16 = 0;
LABEL_13:
    v28 = [v2 city];
    v29 = sub_1B7800868();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = [v2 city];
      v34 = sub_1B7800868();
      v89 = v35;
      v90 = v34;
    }

    else
    {
      v89 = 0;
      v90 = 0;
    }

    v36 = [v2 subLocality];
    v37 = sub_1B7800868();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = [v2 subLocality];
      v42 = sub_1B7800868();
      v87 = v43;
      v88 = v42;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v44 = [v2 state];
    v45 = sub_1B7800868();
    v47 = v46;

    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v49 = [v2 state];
      v50 = sub_1B7800868();
      v85 = v51;
      v86 = v50;
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }

    v52 = [v2 subAdministrativeArea];
    v53 = sub_1B7800868();
    v55 = v54;

    v56 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v56 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v57 = [v2 subAdministrativeArea];
      v58 = sub_1B7800868();
      v59 = v2;
      v61 = v60;
    }

    else
    {
      v58 = 0;
      v59 = v2;
      v61 = 0;
    }

    v62 = [v59 postalCode];
    v63 = sub_1B7800868();
    v65 = v64;

    v66 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      v67 = [v59 postalCode];
      v68 = sub_1B7800868();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v59 ISOCountryCode];
    v72 = sub_1B7800868();
    v74 = v73;

    v75 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v75 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
      v76 = [v59 ISOCountryCode];
      v77 = sub_1B7800868();
      v79 = v78;
    }

    else
    {

      v77 = 0;
      v79 = 0;
    }

    v81 = v90;
    v80 = v91;
    *v91 = v16;
    v80[1] = v81;
    v82 = v88;
    v80[2] = v89;
    v80[3] = v82;
    v83 = v86;
    v80[4] = v87;
    v80[5] = v83;
    v80[6] = v85;
    v80[7] = v58;
    v80[8] = v61;
    v80[9] = v68;
    v80[10] = v70;
    v80[11] = v77;
    v80[12] = v79;
    return;
  }

  v8 = [v2 street];
  v9 = sub_1B7800868();
  v11 = v10;

  v92[0] = 10;
  v92[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v12);
  v84[2] = v92;
  v13 = sub_1B7292F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B766A090, v84, v9, v11, &v85);
  v14 = *(v13 + 16);
  if (!v14)
  {

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v90 = v2;
  v92[0] = MEMORY[0x1E69E7CC0];
  sub_1B71FDB50(0, v14, 0);
  v15 = 0;
  v16 = v92[0];
  v17 = (v13 + 56);
  while (v15 < *(v13 + 16))
  {
    v18 = *(v17 - 3);
    v19 = *(v17 - 2);
    v20 = *(v17 - 1);
    v21 = *v17;

    v22 = MEMORY[0x1B8CA4C70](v18, v19, v20, v21);
    v24 = v23;

    v92[0] = v16;
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1B71FDB50((v25 > 1), v26 + 1, 1);
      v16 = v92[0];
    }

    ++v15;
    *(v16 + 16) = v26 + 1;
    v27 = v16 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v17 += 4;
    if (v14 == v15)
    {

      v2 = v90;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t RawAddress.addressLines.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawAddress.locality.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RawAddress.locality.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RawAddress.subLocality.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawAddress.subLocality.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawAddress.administrativeArea.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RawAddress.administrativeArea.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RawAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RawAddress.subAdministrativeArea.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t RawAddress.postalCode.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t RawAddress.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t RawAddress.countryCode.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t RawAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

__n128 RawAddress.init(addressLines:locality:subLocality:administrativeArea:subAdministrativeArea:postalCode:countryCode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t sub_1B7669268()
{
  v1 = *v0;
  v2 = 0x4C73736572646461;
  v3 = 0x6F436C6174736F70;
  if (v1 != 5)
  {
    v3 = 0x437972746E756F63;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7974696C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6C61636F4C627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7669364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B766A62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B766938C(uint64_t a1)
{
  v2 = sub_1B766A390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76693C8(uint64_t a1)
{
  v2 = sub_1B766A390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawAddress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AA70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v19[11] = v1[2];
  v19[12] = v8;
  v11 = v1[5];
  v19[9] = v1[4];
  v19[10] = v10;
  v12 = v1[7];
  v19[7] = v1[6];
  v19[8] = v11;
  v13 = v1[8];
  v14 = v1[9];
  v19[5] = v12;
  v19[6] = v13;
  v15 = v1[10];
  v16 = v1[11];
  v19[3] = v14;
  v19[4] = v15;
  v17 = v1[12];
  v19[1] = v16;
  v19[2] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B766A390();

  sub_1B78023F8();
  v27 = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B721523C(&qword_1EB98F960);
  sub_1B7801F38();
  if (v2)
  {
  }

  else
  {

    v25 = 1;
    sub_1B7801EF8();
    v24 = 2;
    sub_1B7801EF8();
    v23 = 3;
    sub_1B7801EF8();
    v22 = 4;
    sub_1B7801EF8();
    v21 = 5;
    sub_1B7801EF8();
    v20 = 6;
    sub_1B7801EF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawAddress.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[10];
  v10 = v0[8];
  v6 = v0[12];
  if (!*v0)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1B7802318();
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  sub_1B7802318();
  MEMORY[0x1B8CA6620](*(v1 + 16));
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v1 + 40;
    do
    {

      sub_1B7800798();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1B7802318();
  sub_1B7800798();
  if (v3)
  {
LABEL_7:
    sub_1B7802318();
    sub_1B7800798();
    goto LABEL_11;
  }

LABEL_10:
  sub_1B7802318();
LABEL_11:
  if (v4)
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1B7802318();
    if (v10)
    {
LABEL_13:
      sub_1B7802318();
      sub_1B7800798();
      if (v5)
      {
        goto LABEL_14;
      }

LABEL_20:
      sub_1B7802318();
      if (v6)
      {
        goto LABEL_15;
      }

      return sub_1B7802318();
    }
  }

  sub_1B7802318();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_1B7802318();
  sub_1B7800798();
  if (!v6)
  {
    return sub_1B7802318();
  }

LABEL_15:
  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t RawAddress.hashValue.getter()
{
  sub_1B78022F8();
  RawAddress.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AA80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B766A390();
  sub_1B78023C8();
  if (v2)
  {
    v45 = v2;
    v44 = 0;
    v43 = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v43;
    v65 = 0;
    v66 = 0;
    v64 = v44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    LOBYTE(v47) = 0;
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801DB8();
    v42 = v54;
    LOBYTE(v54) = 1;
    v41 = sub_1B7801D78();
    v40 = v11;
    LOBYTE(v54) = 2;
    v12 = sub_1B7801D78();
    v39 = v13;
    LOBYTE(v54) = 3;
    v37 = sub_1B7801D78();
    v38 = v14;
    LOBYTE(v54) = 4;
    v15 = sub_1B7801D78();
    v36 = v16;
    LOBYTE(v54) = 5;
    v17 = sub_1B7801D78();
    v44 = v18;
    v67 = 6;
    v19 = sub_1B7801D78();
    v45 = 0;
    v43 = v17;
    v21 = v20;
    v22 = v19;
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    *&v47 = v42;
    *(&v47 + 1) = v41;
    v24 = v40;
    *&v48 = v40;
    *(&v48 + 1) = v12;
    v35 = v12;
    v25 = v39;
    *&v49 = v39;
    v26 = v37;
    v27 = a2;
    v28 = v38;
    *(&v49 + 1) = v37;
    *&v50 = v38;
    *(&v50 + 1) = v15;
    v34 = v15;
    v29 = v36;
    *&v51 = v36;
    *(&v51 + 1) = v17;
    v30 = v44;
    *&v52 = v44;
    *(&v52 + 1) = v22;
    v53 = v21;
    *(v27 + 96) = v21;
    v31 = v52;
    *(v27 + 64) = v51;
    *(v27 + 80) = v31;
    v32 = v48;
    *v27 = v47;
    *(v27 + 16) = v32;
    v33 = v50;
    *(v27 + 32) = v49;
    *(v27 + 48) = v33;
    sub_1B74C6B2C(&v47, &v54);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = v23;
    v55 = v41;
    v56 = v24;
    v57 = v35;
    v58 = v25;
    v59 = v26;
    v60 = v28;
    v61 = v34;
    v62 = v29;
    v63 = v43;
    v64 = v30;
    v65 = v22;
    v66 = v21;
  }

  return sub_1B730446C(&v54);
}

uint64_t sub_1B7669FDC()
{
  sub_1B78022F8();
  RawAddress.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B766A020()
{
  sub_1B78022F8();
  RawAddress.hash(into:)();
  return sub_1B7802368();
}

BOOL _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[10];
  v62 = a1[9];
  v63 = a1[12];
  v14 = *a2;
  v16 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v24 = a2[10];
  v60 = a1[11];
  v61 = a2[11];
  v64 = a2[12];
  if (v4)
  {
    if (!v14)
    {
      return 0;
    }

    v53 = a1[5];
    v55 = a1[6];
    v49 = a2[8];
    v51 = a2[7];
    v47 = a1[7];
    v48 = a1[8];
    v45 = a2[10];
    v46 = a2[9];
    v25 = a1[10];
    v57 = a2[5];
    v26 = a2[6];
    v27 = a1[4];
    v28 = a1[3];
    v29 = a2[4];
    v30 = a2[3];
    v31 = a1[2];
    v32 = a1[1];
    v33 = a2[2];
    v34 = a2[1];
    v35 = sub_1B731D168(v4, v14);
    v16 = v34;
    v15 = v33;
    v6 = v32;
    v5 = v31;
    v17 = v30;
    v18 = v29;
    v8 = v28;
    v7 = v27;
    v19 = v26;
    v10 = v55;
    v20 = v57;
    v13 = v25;
    v24 = v45;
    v23 = v46;
    v11 = v47;
    v12 = v48;
    v21 = v49;
    v22 = v51;
    v9 = v53;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v6 != v16 || v5 != v15)
    {
      v50 = v17;
      v52 = v7;
      v56 = v13;
      v58 = v19;
      v54 = v8;
      v36 = sub_1B78020F8();
      v17 = v50;
      v7 = v52;
      v8 = v54;
      v13 = v56;
      v19 = v58;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v17 || v7 != v18)
    {
      v59 = v20;
      v37 = v19;
      v38 = v13;
      v39 = sub_1B78020F8();
      v19 = v37;
      v20 = v59;
      v13 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v10)
  {
    if (!v19)
    {
      return 0;
    }

    if (v9 != v20 || v10 != v19)
    {
      v40 = v13;
      v41 = sub_1B78020F8();
      v13 = v40;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v12)
  {
    if (!v21)
    {
      return 0;
    }

    if (v11 != v22 || v12 != v21)
    {
      v42 = v13;
      v43 = sub_1B78020F8();
      v13 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v13)
  {
    if (!v24 || (v62 != v23 || v13 != v24) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v63)
  {
    return v64 && (v60 == v61 && v63 == v64 || (sub_1B78020F8() & 1) != 0);
  }

  return !v64;
}

unint64_t sub_1B766A390()
{
  result = qword_1EB99AA78;
  if (!qword_1EB99AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA78);
  }

  return result;
}

unint64_t sub_1B766A3E8()
{
  result = qword_1EB99AA88;
  if (!qword_1EB99AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA88);
  }

  return result;
}

uint64_t sub_1B766A43C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B766A498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B766A528()
{
  result = qword_1EB99AA90;
  if (!qword_1EB99AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA90);
  }

  return result;
}

unint64_t sub_1B766A580()
{
  result = qword_1EB99AA98;
  if (!qword_1EB99AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AA98);
  }

  return result;
}

unint64_t sub_1B766A5D8()
{
  result = qword_1EB99AAA0;
  if (!qword_1EB99AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AAA0);
  }

  return result;
}

uint64_t sub_1B766A62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73736572646461 && a2 == 0xEC00000073656E69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7889130 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7885080 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t RelativeDateFormatStyle.format(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  (*(a3 + 16))(a1, v9, a2, a3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t *PIIStringProcessor.__allocating_init(regexCollectionProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1B766B31C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PIIStringProcessor.redact(from:forCountryCodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a4;
  v40 = a3;
  v37 = a1;
  v38 = a2;
  v43 = type metadata accessor for PIIRedactionRegex(0);
  v5 = *(v43 - 8);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = v4[5];
  v15 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
  result = (*(v15 + 16))(v14, v15);
  v17 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v41 = v11;
    while (v18 < *(v17 + 16))
    {
      v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v21 = *(v5 + 72);
      sub_1B766BE28(v17 + v20 + v21 * v18, v13, type metadata accessor for PIIRedactionRegex);
      v22 = *&v13[*(v43 + 32)];
      if (*(v22 + 16) && (sub_1B766AE30(v40, v22) & 1) != 0)
      {
        result = sub_1B766B484(v13);
      }

      else
      {
        sub_1B766B420(v13, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B71FDA64(0, *(v19 + 16) + 1, 1);
          v19 = v44;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B71FDA64(v24 > 1, v25 + 1, 1);
          v19 = v44;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + v20 + v25 * v21;
        v11 = v41;
        result = sub_1B766B420(v41, v26);
      }

      if (v42 == ++v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v27 = *(v19 + 16);
    if (v27)
    {
      v29 = v37;
      v28 = v38;
      v44 = v37;
      v45 = v38;
      v30 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v31 = *(v5 + 72);

      v32 = 0;
      do
      {
        sub_1B766BE28(v30, v8, type metadata accessor for PIIRedactionRegex);
        v32 = v32 || sub_1B766B4E0(&v44, v8);
        sub_1B766B484(v8);
        v30 += v31;
        --v27;
      }

      while (v27);

      if (v32)
      {
        v29 = v44;
        v28 = v45;
      }

      else
      {
      }

      v35 = v39;
      *v39 = v29;
      v35[1] = v28;
      *(v35 + 16) = v32;
    }

    else
    {

      v33 = v38;
      v34 = v39;
      *v39 = v37;
      v34[1] = v33;
      *(v34 + 16) = 0;
    }
  }

  return result;
}

uint64_t *PIIStringProcessor.init(regexCollectionProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B729B62C(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B766AE30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_1B78022F8();

      sub_1B7800798();
      v19 = sub_1B7802368();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_1B78020F8() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B766B018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
LABEL_13:
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = *(*(v4 + 48) + (__clz(__rbit64(v14)) | (v13 << 6)));
      sub_1B78022F8();
      v17 = v16 ? 0xEE00617461642D6CLL : 0xED0000617461446CLL;
      sub_1B7800798();

      v24 = v9;
      result = sub_1B7802368();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v23 = v4;
        v20 = ~v18;
        while (1)
        {
          if (*(*(v6 + 48) + v19))
          {
            v21 = 0xEE00617461642D6CLL;
          }

          else
          {
            v21 = 0xED0000617461446CLL;
          }

          if (v21 == v17)
          {

            return 0;
          }

          v22 = sub_1B78020F8();

          if (v22)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            v4 = v23;
            v9 = v24;
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t PIIStringProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t *sub_1B766B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

uint64_t sub_1B766B420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIIRedactionRegex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B766B484(uint64_t a1)
{
  v2 = type metadata accessor for PIIRedactionRegex(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B766B4E0(uint64_t *a1, uint64_t a2)
{
  v78 = sub_1B77FFE28();
  v81 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v59 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAB0);
  MEMORY[0x1EEE9AC00](v64);
  v82 = (&v59 - v7);
  v8 = sub_1B77FFE38();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAB8);
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v12;
  v13 = type metadata accessor for SendableRegex(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C50);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = *a1;
  v21 = a1[1];
  v73 = a1;
  v83 = v20;
  v84 = v21;
  v72 = type metadata accessor for PIIRedactionRegex(0);
  v22 = *(v72 + 24);
  v74 = a2;
  sub_1B766BE28(a2 + v22, v15, type metadata accessor for SendableRegex);

  sub_1B77FFE88();
  v23 = *(v17 + 8);
  v23(v15, v16);
  sub_1B766BE90();
  sub_1B766BEE4();
  v24 = sub_1B78007A8();
  v25 = v19;
  v26 = v24;
  v23(v25, v16);

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v67;
    v29 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v69 = v67 + 16;
    v70 = (v80 + 8);
    v68 = (v67 + 8);
    v75 = (v81 + 8);
    v76 = (v81 + 16);
    v59 = v27;
    v30 = v66;
    v63 = v10;
    v62 = v11;
    v61 = v26;
    v60 = v29;
    while (v27 <= *(v26 + 16))
    {
      v34 = *(v28 + 72);
      v71 = v27 - 1;
      (*(v28 + 16))(v30, v29 + v34 * (v27 - 1), v11);
      sub_1B77FFEB8();
      v35 = sub_1B77FFE08();
      v36 = *v70;
      (*v70)(v10, v8);
      if (v35 < 2)
      {
        sub_1B77FFEA8();
        v31 = (v74 + *(v72 + 28));
        v33 = *v31;
        v32 = v31[1];
        v83 = v33;
        v84 = v32;
        sub_1B766BF48();
        sub_1B7800968();
        (*v68)(v30, v11);
        v27 = v71;
        if (!v71)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1B77FFEB8();
        v27 = sub_1B766C00C(&qword_1EB99AAD8);
        sub_1B7801048();
        v37 = v83;
        if (v83 < 1)
        {
          goto LABEL_20;
        }

        v83 = 1;
        v84 = v37;
        v38 = v65;
        v81 = v27;
        sub_1B7801088();
        v36(v10, v8);
        v39 = v82;
        sub_1B766BF9C(v38, v82);
        v40 = *(v64 + 36);
        v41 = *(v38 + 8);
        *(v39 + v40) = v41;
        sub_1B7205418(v38, &qword_1EB99AAE0);
        v42 = *v39;
        if (v41 != *v39)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAE0);
          v80 = v82[1];
          v79 = sub_1B766C00C(&qword_1EB99AAE8);
          do
          {
            while (1)
            {
              v46 = v82;
              sub_1B78007B8();
              v47 = *(v46 + v40);
              v85 = v47;
              v83 = v42;
              v84 = v80;
              sub_1B7801028();
              v48 = v8;
              v49 = sub_1B7801098();
              v50 = v77;
              v51 = v78;
              (*v76)(v77);
              v49(&v83, 0);
              sub_1B77FFE18();
              v53 = v52;
              (*v75)(v50, v51);
              if (v53)
              {
                break;
              }

              v43 = (v74 + *(v72 + 28));
              v45 = *v43;
              v44 = v43[1];
              v83 = v45;
              v84 = v44;
              sub_1B766BF48();
              sub_1B7800968();
              v8 = v48;
              if (v47 == v42)
              {
                goto LABEL_16;
              }
            }

            if (qword_1EB98EAB8 != -1)
            {
              swift_once();
            }

            v54 = sub_1B78000B8();
            __swift_project_value_buffer(v54, qword_1EB994978);
            v55 = sub_1B7800098();
            v56 = sub_1B78011D8();
            v8 = v48;
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_1B7198000, v55, v56, "Range of a match group is not available", v57, 2u);
              MEMORY[0x1B8CA7A40](v57, -1, -1);
            }
          }

          while (v47 != v42);
        }

LABEL_16:
        sub_1B7205418(v82, &qword_1EB99AAB0);
        v30 = v66;
        v11 = v62;
        (*v68)(v66, v62);
        v10 = v63;
        v28 = v67;
        v26 = v61;
        v29 = v60;
        v27 = v71;
        if (!v71)
        {
LABEL_17:

          v27 = v59;
          return v27 != 0;
        }
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return v27 != 0;
}

uint64_t sub_1B766BE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B766BE90()
{
  result = qword_1EB99AAC0;
  if (!qword_1EB99AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AAC0);
  }

  return result;
}

unint64_t sub_1B766BEE4()
{
  result = qword_1EB99AAC8;
  if (!qword_1EB99AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AAC8);
  }

  return result;
}

unint64_t sub_1B766BF48()
{
  result = qword_1EB99AAD0;
  if (!qword_1EB99AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AAD0);
  }

  return result;
}

uint64_t sub_1B766BF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B766C00C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B77FFE38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawBankConnectData.DoubleString.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t RawBankConnectData.DoubleString.value.setter(uint64_t result, uint64_t a2, int a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t RawBankConnectData.DoubleString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v8 = sub_1B7802118();
    v10 = v9;
    v11 = sub_1B77FFAF8();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = sub_1B78016B8();
    v14 = v13;
    v16 = v15;
    sub_1B72AA778(v7);
    if (v16 & 0x100000000) != 0 || (sub_1B7801698())
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1B7801A78();

      v22 = 39;
      v23 = 0xE100000000000000;
      MEMORY[0x1B8CA4D30](v8, v10);

      MEMORY[0x1B8CA4D30](0xD000000000000016, 0x80000001B7877650);
      sub_1B7801B18();
      swift_allocError();
      sub_1B7801AC8();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v25 = v16 >> 16;

      v20 = HIDWORD(v14);
      v21 = HIWORD(v14);
      __swift_destroy_boxed_opaque_existential_1(v24);
      *a2 = v12;
      *(a2 + 8) = v14;
      v18 = v21;
      *(a2 + 12) = v20;
      *(a2 + 14) = v18;
      *(a2 + 16) = v16;
      *(a2 + 18) = v25;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.DoubleString.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023E8();
  sub_1B78015C8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1B7802158();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t RawBankConnectData.DoubleString.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7801688();
  return sub_1B7802368();
}

uint64_t sub_1B766C484(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023E8();
  sub_1B78015C8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1B7802158();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1B766C564()
{
  sub_1B78022F8();
  sub_1B7801688();
  return sub_1B7802368();
}

uint64_t sub_1B766C5CC()
{
  sub_1B78022F8();
  sub_1B7801688();
  return sub_1B7802368();
}

unint64_t sub_1B766C628()
{
  result = qword_1EB99AAF0;
  if (!qword_1EB99AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AAF0);
  }

  return result;
}

uint64_t CredentialCenterKeyVault.accessGroupName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CredentialCenterKeyVault.serviceName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *CredentialCenterKeyVault.__allocating_init(accessGroupName:serviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *CredentialCenterKeyVault.init(accessGroupName:serviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

void CredentialCenterKeyVault.currentKey()(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CredentialCenterKey();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = CredentialCenterKeyVault.keys()();
  if (!v1)
  {
    v15 = 0;
    if (*(v10 + 16))
    {
      v13[0] = v4;
      v13[4] = v10;
      v14 = a1;
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AAF8);
      v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB00);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B7807CD0;
      swift_getKeyPath();
      sub_1B766E568(&qword_1EB9905B8, MEMORY[0x1E69695A8]);
      sub_1B77FED98();
      v16 = v11;
      v13[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB08);
      v13[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB10);
      sub_1B728216C(&qword_1EB99AB18, &qword_1EB99AB08);
      sub_1B728216C(&qword_1EB99AB20, &qword_1EB99AB10);
      sub_1B728216C(&qword_1EB99AB28, &qword_1EB99AB00);
      v12 = sub_1B7800AD8();

      if (*(v12 + 16))
      {
        sub_1B766D020(v12 + ((*(v13[0] + 80) + 32) & ~*(v13[0] + 80)), v7);

        sub_1B766D084(v7, v9);
        sub_1B766D084(v9, v14);
        return;
      }

      a1 = v14;
    }

    else
    {
    }

    CredentialCenterKeyVault.createKey()(a1);
  }
}

uint64_t type metadata accessor for CredentialCenterKey()
{
  result = qword_1EB99AB50;
  if (!qword_1EB99AB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CredentialCenterKeyVault.keys()()
{
  v62[40] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for CredentialCenterKey();
  v51 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B781F810;
  v56 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = v56;
  v58 = inited + 32;
  v55 = *MEMORY[0x1E697B008];
  v4 = v55;
  type metadata accessor for CFString(0);
  *(inited + 40) = v4;
  v54 = *MEMORY[0x1E697ABD0];
  v5 = v54;
  *(inited + 64) = v6;
  *(inited + 72) = v5;
  v57 = v6;
  v7 = v0[2];
  v53 = v0[3];
  v8 = v53;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v10 = *MEMORY[0x1E697AE88];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  v11 = v0[4];
  v12 = v0[5];
  v13 = MEMORY[0x1E697AEB0];
  *(inited + 120) = v11;
  *(inited + 128) = v12;
  v14 = *v13;
  *(inited + 144) = v9;
  *(inited + 152) = v14;
  v15 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v16 = *MEMORY[0x1E697B260];
  *(inited + 184) = v15;
  *(inited + 192) = v16;
  v17 = *MEMORY[0x1E697B268];
  v18 = MEMORY[0x1E697B318];
  *(inited + 200) = *MEMORY[0x1E697B268];
  v19 = *v18;
  *(inited + 224) = v6;
  *(inited + 232) = v19;
  v20 = MEMORY[0x1E697B310];
  *(inited + 240) = 1;
  v21 = *v20;
  *(inited + 264) = v15;
  *(inited + 272) = v21;
  *(inited + 304) = v15;
  *(inited + 280) = 1;
  v22 = v56;
  v23 = v55;
  v24 = v54;

  v25 = v10;

  v26 = v14;
  v27 = v16;
  v28 = v17;
  v29 = v19;
  v30 = v21;
  sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
  swift_arrayDestroy();
  v62[0] = 0;
  sub_1B766E568(&qword_1EB98EFC8, type metadata accessor for CFString);
  v31 = sub_1B7800708();

  v32 = SecItemCopyMatching(v31, v62);

  v33 = MEMORY[0x1E69E7CC0];
  if (v32 == -25300)
  {
    goto LABEL_20;
  }

  if (v32)
  {
    v42 = SecCopyErrorMessageString(v32, 0);
    if (v42)
    {
      v43 = v42;
      v33 = sub_1B7800868();
      v45 = v44;
    }

    else
    {
      LODWORD(v61) = v32;
      v33 = sub_1B7802068();
      v45 = v48;
    }

    sub_1B766E428();
    swift_allocError();
    *v46 = v33;
    *(v46 + 8) = v45;
    v47 = 2;
    goto LABEL_18;
  }

  if (!v62[0] || (v61 = v62[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB38), (swift_dynamicCast() & 1) == 0))
  {
    v33 = 0x80000001B78891A0;
    sub_1B766E428();
    swift_allocError();
    *v46 = 0xD000000000000029;
    *(v46 + 8) = 0x80000001B78891A0;
    v47 = 1;
LABEL_18:
    *(v46 + 16) = v47;
    swift_willThrow();
    goto LABEL_20;
  }

  v34 = v60;
  v35 = *(v60 + 16);
  if (v35)
  {
    v61 = v33;
    sub_1B71FE6F4(0, v35, 0);
    v36 = 0;
    v33 = v61;
    v37 = v51;
    v38 = v52;
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
      }

      sub_1B766D588(v39, v59);
      if (v38)
      {
        break;
      }

      v61 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1B71FE6F4(v40 > 1, v41 + 1, 1);
        v33 = v61;
      }

      ++v36;
      *(v33 + 16) = v41 + 1;
      sub_1B766D084(v59, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v41);
      if (v35 == v36)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  swift_unknownObjectRelease();
  return v33;
}

uint64_t sub_1B766D020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialCenterKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B766D084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialCenterKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CredentialCenterKeyVault.createKey()(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1B78004E8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B78004C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_1B77FFA08();
  sub_1B78004D8();
  sub_1B78004B8();
  sub_1B7800488();
  v61 = v2;
  (*(v7 + 8))(v9, v6);
  v10 = v67;
  v11 = v68;
  v12 = (a1 + *(type metadata accessor for CredentialCenterKey() + 20));
  v64 = v12;
  *v12 = v10;
  v12[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7856360;
  v62 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = v62;
  v66 = inited + 32;
  v14 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 40) = v14;
  v15 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v16;
  *(inited + 72) = v15;
  v65 = v16;
  v63 = v3;
  v17 = *(v3 + 24);
  v18 = MEMORY[0x1E69E6158];
  *(inited + 80) = *(v3 + 16);
  *(inited + 88) = v17;
  v19 = *MEMORY[0x1E697ABD8];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = *MEMORY[0x1E697ABE0];
  *(inited + 120) = *MEMORY[0x1E697ABE0];
  v21 = *MEMORY[0x1E697AD00];
  *(inited + 144) = v16;
  *(inited + 152) = v21;
  v22 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v23 = *MEMORY[0x1E697AC30];
  *(inited + 184) = v22;
  *(inited + 192) = v23;
  v24 = v62;
  v25 = v14;
  v26 = v15;

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  v31 = sub_1B77FF9A8();
  v32 = MEMORY[0x1E697AE88];
  *(inited + 200) = v31;
  *(inited + 208) = v33;
  v34 = *v32;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = v34;
  v36 = *(v63 + 40);
  *(inited + 240) = *(v63 + 32);
  *(inited + 248) = v36;
  v37 = *MEMORY[0x1E697AEB0];
  *(inited + 264) = v35;
  *(inited + 272) = v37;
  *(inited + 280) = 1;
  v38 = *MEMORY[0x1E697B3C0];
  v39 = MEMORY[0x1E69E6370];
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 312) = v38;
  v40 = *v64;
  v41 = v64[1];
  v42 = MEMORY[0x1E697B318];
  *(inited + 320) = *v64;
  *(inited + 328) = v41;
  v43 = *v42;
  *(inited + 344) = MEMORY[0x1E6969080];
  *(inited + 352) = v43;
  v44 = MEMORY[0x1E697B310];
  *(inited + 360) = 1;
  v45 = *v44;
  *(inited + 384) = v39;
  *(inited + 392) = v45;
  *(inited + 424) = v39;
  *(inited + 400) = 1;
  v46 = v34;

  v47 = v37;
  v48 = v38;
  sub_1B720ABEC(v40, v41);
  v49 = v43;
  v50 = v45;
  sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
  swift_arrayDestroy();
  sub_1B766E568(&qword_1EB98EFC8, type metadata accessor for CFString);
  v51 = sub_1B7800708();

  v52 = SecItemAdd(v51, 0);

  if (v52)
  {
    v53 = SecCopyErrorMessageString(v52, 0);
    if (v53)
    {
      v54 = v53;
      v55 = sub_1B7800868();
      v57 = v56;
    }

    else
    {
      LODWORD(v67) = v52;
      v55 = sub_1B7802068();
      v57 = v58;
    }

    sub_1B766E428();
    swift_allocError();
    *v59 = v55;
    *(v59 + 8) = v57;
    *(v59 + 16) = 2;
    swift_willThrow();
    sub_1B766E47C(v69);
  }
}

int *sub_1B766D588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E697AC30];
  if (!*(a1 + 16) || (v12 = sub_1B72635A0(*MEMORY[0x1E697AC30]), (v13 & 1) == 0) || (sub_1B719BDE4(*(a1 + 56) + 32 * v12, v27), (swift_dynamicCast() & 1) == 0))
  {

    sub_1B766E428();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    swift_willThrow();
    return v11;
  }

  sub_1B77FF998();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1B72BB9C8(v6);
    sub_1B766E428();
    swift_allocError();
    *v14 = 0xD00000000000001DLL;
    *(v14 + 8) = 0x80000001B7889250;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 16))(a2, v10, v7);
  v17 = *MEMORY[0x1E697B3C0];
  if (*(a1 + 16) && (v18 = sub_1B72635A0(*MEMORY[0x1E697B3C0]), (v19 & 1) != 0))
  {
    sub_1B719BDE4(*(a1 + 56) + 32 * v18, v27);

    if (swift_dynamicCast())
    {
      (*(v8 + 8))(v10, v7);
      v20 = v26[0];
      v21 = v26[1];
      result = type metadata accessor for CredentialCenterKey();
      v22 = (a2 + result[5]);
      *v22 = v20;
      v22[1] = v21;
      return result;
    }
  }

  else
  {
  }

  sub_1B766E428();
  swift_allocError();
  *v23 = v17;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  swift_willThrow();
  v24 = *(v8 + 8);
  v25 = v17;
  v24(v10, v7);
  return (v24)(a2, v7);
}

uint64_t CredentialCenterKeyVault.key(with:)@<X0>(uint64_t a1@<X8>)
{
  result[45] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78100C0;
  v48 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v3 = *MEMORY[0x1E697B008];
  v46 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  v4 = MEMORY[0x1E697ABD0];
  *(inited + 40) = v3;
  v47 = *v4;
  *(inited + 64) = v5;
  *(inited + 72) = v47;
  v6 = v1[3];
  v7 = MEMORY[0x1E69E6158];
  *(inited + 80) = v1[2];
  *(inited + 88) = v6;
  v8 = *MEMORY[0x1E697AE88];
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  v9 = v1[4];
  v10 = v1[5];
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  v11 = *MEMORY[0x1E697AEB0];
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  v12 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v13 = *MEMORY[0x1E697B260];
  *(inited + 184) = v12;
  *(inited + 192) = v13;
  v14 = *MEMORY[0x1E697B270];
  *(inited + 200) = *MEMORY[0x1E697B270];
  v15 = *MEMORY[0x1E697B318];
  *(inited + 224) = v5;
  *(inited + 232) = v15;
  *(inited + 240) = 1;
  v16 = *MEMORY[0x1E697B310];
  *(inited + 264) = v12;
  *(inited + 272) = v16;
  *(inited + 280) = 1;
  v17 = *MEMORY[0x1E697AC30];
  *(inited + 304) = v12;
  *(inited + 312) = v17;
  v18 = v48;
  v19 = v46;
  v20 = v47;

  v21 = v8;

  v22 = v11;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = sub_1B77FF9A8();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 320) = v28;
  *(inited + 328) = v29;
  sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
  swift_arrayDestroy();
  result[0] = 0;
  sub_1B766E568(&qword_1EB98EFC8, type metadata accessor for CFString);
  v30 = sub_1B7800708();

  v31 = SecItemCopyMatching(v30, result);

  if (v31 == -25300)
  {
    v32 = a1;
    v33 = 1;
    goto LABEL_8;
  }

  if (v31)
  {
    v35 = SecCopyErrorMessageString(v31, 0);
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B7800868();
      v39 = v38;
    }

    else
    {
      v37 = sub_1B7802068();
      v39 = v41;
    }

    v40 = 2;
    goto LABEL_14;
  }

  if (!result[0] || (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB40), (swift_dynamicCast() & 1) == 0))
  {
    v39 = 0x80000001B78891D0;
    v40 = 1;
    v37 = 0xD000000000000025;
LABEL_14:
    sub_1B766E428();
    swift_allocError();
    *v42 = v37;
    *(v42 + 8) = v39;
    *(v42 + 16) = v40;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v32 = a1;
  sub_1B766D588(v49, a1);
  if (!v45)
  {
    v33 = 0;
LABEL_8:
    v34 = type metadata accessor for CredentialCenterKey();
    (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
  }

  return swift_unknownObjectRelease();
}

uint64_t CredentialCenterKey.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B78004E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B78004C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA08();
  sub_1B78004D8();
  sub_1B78004B8();
  sub_1B7800488();
  (*(v4 + 8))(v6, v3);
  v7 = v11[2];
  v8 = v11[3];
  result = type metadata accessor for CredentialCenterKey();
  v10 = (a1 + *(result + 20));
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t CredentialCenterKeyVault.deinit()
{

  return v0;
}

uint64_t CredentialCenterKeyVault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CredentialCenterKey.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CredentialCenterKey.symmetricKey.getter()
{
  v1 = type metadata accessor for CredentialCenterKey();
  sub_1B720ABEC(*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  return sub_1B78004A8();
}

uint64_t static CredentialCenterKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CredentialCenterKey() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_1B73FC434(v5, v6, v8, v9);
}

uint64_t CredentialCenterKey.hash(into:)()
{
  sub_1B77FFA18();
  sub_1B766E568(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  type metadata accessor for CredentialCenterKey();

  return sub_1B77FF5C8();
}

uint64_t CredentialCenterKey.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B766E568(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  type metadata accessor for CredentialCenterKey();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B766E1D0()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B766E568(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B766E278()
{
  sub_1B77FFA18();
  sub_1B766E568(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();

  return sub_1B77FF5C8();
}

uint64_t sub_1B766E314()
{
  sub_1B78022F8();
  sub_1B77FFA18();
  sub_1B766E568(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
  sub_1B7800768();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B766E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_1B73FC434(v7, v8, v10, v11);
}

unint64_t sub_1B766E428()
{
  result = qword_1EB99AB30;
  if (!qword_1EB99AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB30);
  }

  return result;
}

uint64_t sub_1B766E47C(uint64_t a1)
{
  v2 = type metadata accessor for CredentialCenterKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B766E568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B766E6A0()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FinanceStore.setOrderNotificationsEnabled(_:for:)(char a1, uint64_t *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 88) = a1;
  *(v3 + 24) = type metadata accessor for FinanceStore.Message();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = *(a2 + 1);
  *(v3 + 64) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B766E7C4, 0, 0);
}

uint64_t sub_1B766E7C4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  *v4 = *(v0 + 40);
  *(v4 + 8) = v3;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B766E8B8;
  v7 = *(v0 + 32);

  return sub_1B7267E08(v7);
}

uint64_t sub_1B766E8B8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B766EA1C, 0, 0);
}

uint64_t sub_1B766EA1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void ManagedInternalAccount.id.getter()
{
  v1 = [v0 publicAccountObject];
  v2 = [v1 id];

  sub_1B77FF9E8();
}

void ManagedInternalAccount.accountType.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 publicAccountObject];
  ManagedAccount.accountType.getter(a1);
}

void ManagedInternalAccount.accountStatus.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v2 accountStatusValue];
  if (!v4)
  {
    v7 = 4;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v4 integerValue];
  if (v6 < 4)
  {
    v7 = v6;

LABEL_5:
    *a1 = v7;
    return;
  }

  sub_1B7801A78();

  v8 = [v5 description];
  v9 = sub_1B7800868();
  v11 = v10;

  MEMORY[0x1B8CA4D30](v9, v11);

  sub_1B7801C88();
  __break(1u);
}

void ManagedInternalAccount.fullyQualifiedAccountIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 accountId];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [v1 institutionId];
  v8 = sub_1B7800868();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

void ManagedInternalAccount.accountNumber.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  AccountNumberSchemeType.init(rawValue:)([v2 accountNumberSchemeTypeValue]);
  if (v9 == 6)
  {
    sub_1B7801A78();

    [v2 accountNumberSchemeTypeValue];
    v8 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v8);

    sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v4 = [v2 accountNumberValue];
    v5 = sub_1B7800868();
    v7 = v6;

    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
  }
}

uint64_t ManagedInternalAccount.accountDescription.getter()
{
  v1 = [v0 publicAccountObject];
  v2 = [v1 accountDescription];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B7800868();

  return v3;
}

id ManagedInternalAccount.latestAccountBalanceObject.getter()
{
  v1 = sub_1B77FFA18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 managedObjectContext];
  if (result)
  {
    v6 = result;
    type metadata accessor for ManagedInternalAccountBalance();
    v7 = [v0 publicAccountObject];
    v8 = [v7 id];

    sub_1B77FF9E8();
    v9 = static ManagedInternalAccountBalance.latestAccountBalance(forAccountID:in:)();
    (*(v2 + 8))(v4, v1);

    return v9;
  }

  return result;
}

uint64_t ManagedInternalAccount.nextPaymentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountObject];
  v4 = [v3 nextPaymentDate];

  if (v4)
  {
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void ManagedInternalAccount.creditLimit.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountObject];
  ManagedAccount.creditLimit.getter(a1);
}

void ManagedInternalAccount.minimumPaymentAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountObject];
  ManagedAccount.minimumPaymentAmount.getter(a1);
}

void ManagedInternalAccount.overduePaymentAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 publicAccountObject];
  ManagedAccount.overduePaymentAmount.getter(a1);
}

id InternalAccount.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Actions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v193 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v192 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v191 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v136 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v136 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v136 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v136 - v20;
  v22 = sub_1B77FFA18();
  v185 = *(v22 - 8);
  v186 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v136 - v26;
  v28 = [a1 publicAccountObject];
  v29 = [v28 id];

  v183 = v27;
  sub_1B77FF9E8();

  v30 = [a1 accountId];
  v182 = sub_1B7800868();
  v181 = v31;

  v32 = [a1 institutionId];
  v180 = sub_1B7800868();
  v179 = v33;

  v34 = [a1 consentID];
  v184 = v25;
  sub_1B77FF9E8();

  v35 = [a1 fpanIds];
  v178 = sub_1B7800C38();

  v36 = [a1 externalAccountId];
  if (v36)
  {
    v37 = v36;
    v177 = sub_1B7800868();
    v176 = v38;
  }

  else
  {
    v177 = 0;
    v176 = 0;
  }

  v39 = &off_1E7CAF000;
  v40 = [a1 publicAccountObject];
  ManagedAccount.accountType.getter(&v204);

  v175 = v204;
  ManagedInternalAccount.accountNumber.getter(v202);
  v174 = v202[0];
  v173 = v202[1];
  v172 = v203;
  v41 = [a1 publicAccountObject];
  v42 = [v41 displayName];

  v171 = sub_1B7800868();
  v170 = v43;

  v44 = [a1 publicAccountObject];
  v45 = [v44 accountDescription];

  if (v45)
  {
    v169 = sub_1B7800868();
    v168 = v46;
  }

  else
  {
    v169 = 0;
    v168 = 0;
  }

  ManagedInternalAccount.accountStatus.getter(&v201);
  v167 = v201;
  ManagedInternalAccount.backgroundRefreshUserPreference.getter(&v200);
  v166 = v200;
  v47 = [a1 backgroundRefreshUserPreferenceChangedAt];
  if (v47)
  {
    v48 = v47;
    sub_1B77FF928();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = sub_1B77FF988();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v53 = 1;
  v194 = v51 + 56;
  v195 = v52;
  v52(v21, v49, 1, v50);
  v54 = [a1 backgroundRefreshReminderDismissedAt];
  if (v54)
  {
    v55 = v54;
    sub_1B77FF928();

    v53 = 0;
  }

  v188 = v19;
  v195(v19, v53, 1, v50);
  v56 = [a1 publicAccountObject];
  v57 = [v56 currency];

  v165 = sub_1B7800868();
  v164 = v58;

  v59 = [a1 publicAccountObject];
  v60 = [v59 creditLimitAmountValue];
  if (v60)
  {
    v61 = v60;
    [v60 decimalValue];
    v162 = *(&v196 + 1);
    v163 = v196;
    v161 = v197;
    v62 = [v59 currency];
    v160 = sub_1B7800868();
    v159 = v63;
  }

  else
  {

    v163 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    v159 = 0;
  }

  v64 = [a1 publicAccountObject];
  v65 = [v64 nextPaymentDate];

  if (v65)
  {
    sub_1B77FF928();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v187 = v21;
  v190 = v50;
  v195(v13, v66, 1, v50);
  v189 = v16;
  sub_1B7205340(v13, v16);
  v67 = [a1 publicAccountObject];
  v68 = [v67 minimumPaymentAmountValue];
  if (v68)
  {
    v69 = v68;
    [v68 decimalValue];
    v70 = v197;
    v71 = v196;
    v72 = [v67 currency];
    v73 = sub_1B7800868();
    v75 = v74;

    v76 = v73;
    v39 = &off_1E7CAF000;
    CurrencyAmount.init(_:currencyCode:)(v71, *(&v71 + 1), v70, v76, v75, &v196);

    v156 = v197;
    v157 = v196;
    v158 = v198;
  }

  else
  {

    v158 = 0;
    v157 = 0u;
    v156 = 0u;
  }

  v77 = [a1 v39[54]];
  v78 = [v77 overduePaymentAmountValue];
  if (v78)
  {
    v79 = v78;
    [v78 decimalValue];
    v80 = v197;
    v81 = *(&v196 + 1);
    v82 = v196;
    v83 = [v77 currency];
    v84 = sub_1B7800868();
    v86 = v85;

    CurrencyAmount.init(_:currencyCode:)(v82, v81, v80, v84, v86, &v196);
    v154 = v197;
    v155 = v196;
    v87 = v198;
  }

  else
  {

    v87 = 0;
    v155 = 0u;
    v154 = 0u;
  }

  v88 = v192;
  v89 = v190;
  v90 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  if (v90)
  {
    InternalAccountBalance.init(_:)(v90, v88);
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = type metadata accessor for InternalAccountBalance(0);
  v93 = *(v92 - 8);
  v94 = *(v93 + 56);
  v152 = v92;
  v151 = v94;
  v150 = v93 + 56;
  (v94)(v88, v91, 1);
  v95 = [a1 actionsObject];
  Actions.init(_:)(v95, v193);
  LODWORD(v190) = [a1 isAccountEnabled];
  v96 = [a1 isAccountMismatched];
  sub_1B7673840([a1 lastAccountRefreshFailureValue], &v196);
  v97 = v196;
  sub_1B7673840([a1 lastTransactionsRefreshFailureValue], &v199);
  v98 = v199;
  result = [a1 originTypeValue];
  v153 = result;
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    v100 = [a1 publicAccountObject];
    v101 = [v100 institutionName];

    v145 = sub_1B7800868();
    v144 = v102;

    v143 = [a1 thirdPartyShareable];
    v103 = [a1 publicAccountObject];
    v104 = [v103 openingDate];

    if (v104)
    {
      v105 = v191;
      sub_1B77FF928();

      v106 = 0;
    }

    else
    {
      v106 = 1;
      v105 = v191;
    }

    v195(v105, v106, 1, v89);
    v142 = [a1 loadingStatusValue];
    v107 = [a1 preferencesObject];
    v149 = v87;
    v148 = v96;
    v147 = v97;
    v146 = v98;
    if (v107)
    {
      v108 = v107;
      v141 = [v107 userSuppressedNotifications];
    }

    else
    {
      v141 = 0;
    }

    v109 = type metadata accessor for InternalAccount();
    v110 = (a2 + v109[8]);
    v111 = v109[12];
    v136 = v109[13];
    v112 = (a2 + v111);
    *(a2 + v136) = 4;
    v138 = v109[15];
    v113 = v195;
    v195((a2 + v138), 1, 1, v89);
    v137 = v109[16];
    v113(a2 + v137, 1, 1, v89);
    v114 = a2 + v109[18];
    *(v114 + 32) = 0;
    *v114 = 0u;
    *(v114 + 16) = 0u;
    v139 = v109[19];
    v113(a2 + v139, 1, 1, v89);
    v115 = a2 + v109[20];
    *(v115 + 32) = 0;
    *v115 = 0u;
    *(v115 + 16) = 0u;
    v116 = a2 + v109[21];
    *(v116 + 32) = 0;
    *v116 = 0u;
    *(v116 + 16) = 0u;
    v140 = v109[22];
    v151(a2 + v140, 1, 1, v152);
    v151 = v109[26];
    *(v151 + a2) = 2;
    v150 = v109[27];
    *(a2 + v150) = 2;
    v152 = v109[31];
    v113(a2 + v152, 1, 1, v89);
    v117 = v186;
    v118 = *(v185 + 32);
    v118(a2, v183, v186);
    v119 = (a2 + v109[5]);
    v120 = v181;
    *v119 = v182;
    v119[1] = v120;
    v121 = v179;
    v119[2] = v180;
    v119[3] = v121;
    v118(a2 + v109[6], v184, v117);
    *(a2 + v109[7]) = v178;
    v122 = v176;
    *v110 = v177;
    v110[1] = v122;
    *(a2 + v109[9]) = v175;
    v123 = a2 + v109[10];
    v124 = v173;
    *v123 = v174;
    *(v123 + 8) = v124;
    *(v123 + 16) = v172;
    v125 = (a2 + v109[11]);
    v126 = v170;
    *v125 = v171;
    v125[1] = v126;
    v127 = v168;
    *v112 = v169;
    v112[1] = v127;
    *(a2 + v136) = v167;
    *(a2 + v109[14]) = v166;
    sub_1B7213740(v187, a2 + v138, &qword_1EB98EBD0);
    sub_1B7213740(v188, a2 + v137, &qword_1EB98EBD0);
    v128 = (a2 + v109[17]);
    v129 = v164;
    *v128 = v165;
    v128[1] = v129;

    v130 = v162;
    *v114 = v163;
    *(v114 + 8) = v130;
    v131 = v160;
    *(v114 + 16) = v161;
    *(v114 + 24) = v131;
    *(v114 + 32) = v159;
    sub_1B7213740(v189, a2 + v139, &qword_1EB98EBD0);

    v132 = v156;
    *v115 = v157;
    *(v115 + 16) = v132;
    *(v115 + 32) = v158;

    v133 = v154;
    *v116 = v155;
    *(v116 + 16) = v133;
    *(v116 + 32) = v149;
    sub_1B7213740(v192, a2 + v140, &qword_1EB993A70);
    sub_1B7675BC8(v193, a2 + v109[23], type metadata accessor for Actions);
    *(a2 + v109[24]) = v190;
    *(a2 + v109[25]) = v148;
    *(v151 + a2) = v147;
    *(a2 + v150) = v146;
    *(a2 + v109[28]) = v153;
    v134 = (a2 + v109[29]);
    v135 = v144;
    *v134 = v145;
    v134[1] = v135;
    *(a2 + v109[30]) = v143;
    result = sub_1B7213740(v191, a2 + v152, &qword_1EB98EBD0);
    *(a2 + v109[32]) = v142;
    *(a2 + v109[33]) = v141;
  }

  return result;
}

id ManagedInternalAccount.__allocating_init(_:consent:context:)(uint64_t a1, void *a2, void *a3)
{
  v73 = a2;
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v68 - v10;
  v11 = type metadata accessor for InternalAccountBalance(0);
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v68 - v16;
  v17 = type metadata accessor for InternalAccount();
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  v25 = type metadata accessor for Actions();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(v3) initWithContext_];
  v29 = sub_1B7800838();
  [v28 setAccountId_];

  v30 = sub_1B7800838();
  [v28 setInstitutionId_];

  v31 = sub_1B77FF9B8();
  [v28 setConsentID_];

  v32 = sub_1B7800C18();
  [v28 setFpanIds_];

  if (*(a1 + v17[8] + 8))
  {
    v33 = sub_1B7800838();
  }

  else
  {
    v33 = 0;
  }

  [v28 setExternalAccountId_];

  v34 = *(a1 + v17[10] + 16);
  v35 = sub_1B7800838();
  [v28 setAccountNumberValue_];

  [v28 setAccountNumberSchemeTypeValue_];
  type metadata accessor for ManagedAccountActions();
  sub_1B7675B60(a1 + v17[23], v27, type metadata accessor for Actions);
  v36 = a3;
  v37 = sub_1B76A07E8(v27, v36);

  [v28 setActionsObject_];
  v38 = *(a1 + v17[33]);
  v39 = objc_allocWithZone(type metadata accessor for ManagedAccountPreferences());
  v40 = v36;
  v41 = [v39 initWithContext_];
  [v41 setUserSuppressedNotifications_];

  [v28 setPreferencesObject_];
  [v28 setBackgroundRefreshUserPreferenceValue_];
  sub_1B7205588(a1 + v17[15], v24, &qword_1EB98EBD0);
  v42 = v78;
  v43 = *(v79 + 48);
  v44 = 0;
  if (v43(v24, 1, v78) != 1)
  {
    v44 = sub_1B77FF8B8();
    (*(v79 + 8))(v24, v42);
  }

  [v28 setBackgroundRefreshUserPreferenceChangedAt_];

  sub_1B7205588(a1 + v17[16], v22, &qword_1EB98EBD0);
  if (v43(v22, 1, v42) == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1B77FF8B8();
    (*(v79 + 8))(v22, v42);
  }

  [v28 setBackgroundRefreshReminderDismissedAt_];

  if (*(a1 + v17[13]) == 4)
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_1B7801008();
  }

  [v28 setAccountStatusValue_];

  [v28 setOriginTypeValue_];
  [v28 setThirdPartyShareable_];
  [v28 setIsAccountEnabled_];
  [v28 setLoadingStatusValue_];
  type metadata accessor for ManagedAccount();
  v47 = v72;
  sub_1B7675B60(a1, v72, type metadata accessor for InternalAccount);
  v48 = v40;
  v49 = v73;
  v50 = sub_1B7297524(v47, v49, v48);

  [v28 setPublicAccountObject_];
  v51 = sub_1B7800838();
  v52 = [v49 mutableSetValueForKeyPath_];

  [v52 addObject_];
  v53 = v76;
  sub_1B7205588(a1 + v17[22], v76, &qword_1EB993A70);
  if ((*(v74 + 48))(v53, 1, v75) == 1)
  {

    sub_1B7675C30(a1, type metadata accessor for InternalAccount);
    sub_1B7205418(v53, &qword_1EB993A70);
  }

  else
  {
    v54 = v53;
    v55 = v77;
    sub_1B7675BC8(v54, v77, type metadata accessor for InternalAccountBalance);
    v56 = v70;
    sub_1B7675B60(v55, v70, type metadata accessor for InternalAccountBalance);
    v57 = v48;
    v76 = v28;
    v58 = v71;
    sub_1B77FF938();
    v59 = [objc_allocWithZone(type metadata accessor for ManagedInternalAccountBalance()) initWithContext_];
    v60 = sub_1B77FF8B8();
    [v59 setLastUpdatedAt_];

    type metadata accessor for ManagedAccountBalance();
    v61 = v69;
    sub_1B7675B60(v56, v69, type metadata accessor for InternalAccountBalance);
    v62 = v57;
    v63 = v76;
    v64 = sub_1B726602C(v61, v63, v62);

    [v59 setPublicAccountBalanceObject_];
    (*(v79 + 8))(v58, v78);
    sub_1B7675C30(v56, type metadata accessor for InternalAccountBalance);
    v65 = sub_1B7800838();
    v66 = [v63 mutableSetValueForKeyPath_];

    [v66 addObject_];
    sub_1B7675C30(v77, type metadata accessor for InternalAccountBalance);
    sub_1B7675C30(a1, type metadata accessor for InternalAccount);
  }

  return v28;
}

id ManagedInternalAccount.__allocating_init(_:consent:migratedAccountsProvider:context:)(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_1B7674D90(a1, a2, a3, a4);

  return v6;
}

id ManagedInternalAccount.__allocating_init(_:consent:migratedAccountsProvider:context:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v87 = a3;
  v5 = v4;
  v9 = sub_1B77FF988();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v84 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v75 - v14;
  v15 = sub_1B77FFA18();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(v5) initWithContext_];
  v85 = a1;
  v23 = [a1 accountIdentifier];
  if (!v23)
  {
    sub_1B7800868();
    v23 = sub_1B7800838();
  }

  [v22 setAccountId_];

  Institution.init(_:)([a2 institutionObject], v21);

  sub_1B7675C30(v21, type metadata accessor for Institution);
  v24 = sub_1B7800838();

  [v22 setInstitutionId_];

  v25 = [a2 id];
  sub_1B77FF9E8();

  v26 = sub_1B77FF9B8();
  (*(v16 + 8))(v18, v15);
  [v22 setConsentID_];

  type metadata accessor for ManagedAccountActions();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v22 setActionsObject_];

  type metadata accessor for ManagedAccountPreferences();
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v22 setPreferencesObject_];

  type metadata accessor for ManagedAccount();
  v29 = v87;
  sub_1B719B06C(v87, v88);
  v30 = v85;
  v31 = a2;
  v32 = a4;
  v33 = v86;
  v34 = sub_1B72972F4(v30, v31, v88, v32);
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v35 = v34;
    v86 = 0;
    [v22 setPublicAccountObject_];

    [v22 setIsAccountSyncable_];
    _s10FinanceKit22ManagedInternalAccountC6update_7consent09withAppleE0yAC_AA0C7ConsentCSo07FKAppleE0CtFZ_0(v22, v31, v30);
    v36 = sub_1B7800838();
    v37 = [v31 mutableSetValueForKeyPath_];

    [v37 addObject_];
    type metadata accessor for ManagedInternalAccountBalance();
    v38 = v30;
    v39 = v32;
    v40 = v22;
    v79 = v39;
    v41 = sub_1B7227028(v38, v40, v39);
    v42 = sub_1B7800838();
    v43 = [v40 mutableSetValueForKeyPath_];

    [v43 addObject_];
    v85 = v41;
    v44 = [v41 lastUpdatedAt];
    v45 = v82;
    sub_1B77FF928();

    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v46 = sub_1B78000B8();
    __swift_project_value_buffer(v46, qword_1EDAFAF58);
    v48 = v80;
    v47 = v81;
    v49 = *(v80 + 16);
    v49(v83, v45, v81);
    v49(v84, v45, v47);
    v50 = v38;
    v51 = sub_1B7800098();
    v52 = sub_1B78011F8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88[0] = v78;
      *v53 = 136315650;
      v54 = [v50 accountIdentifier];
      v76 = v52;
      v55 = v54;
      v56 = sub_1B7800868();
      v75 = v51;
      v57 = v56;
      v77 = v50;
      v58 = v47;
      v60 = v59;

      v61 = sub_1B71A3EF8(v57, v60, v88);

      *(v53 + 4) = v61;
      *(v53 + 12) = 2080;
      sub_1B76758B8(&qword_1EB991200, MEMORY[0x1E6969530]);
      v62 = v83;
      v63 = sub_1B7802068();
      v65 = v64;
      v66 = *(v48 + 8);
      v66(v62, v58);
      v67 = sub_1B71A3EF8(v63, v65, v88);

      *(v53 + 14) = v67;
      *(v53 + 22) = 2048;
      v68 = v84;
      sub_1B77FF908();
      v70 = v69;
      v66(v68, v58);
      *(v53 + 24) = v70;
      v71 = v75;
      _os_log_impl(&dword_1B7198000, v75, v76, "Inserted new balance for account: %s lastUpdateAt: %s (%f ms)", v53, 0x20u);
      v72 = v78;
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v72, -1, -1);
      MEMORY[0x1B8CA7A40](v53, -1, -1);

      __swift_destroy_boxed_opaque_existential_1(v87);
      v66(v82, v58);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v87);
      v73 = *(v48 + 8);
      v73(v84, v47);
      v73(v83, v47);
      v73(v45, v47);
    }
  }

  return v22;
}

void ManagedInternalAccount.setTransactionRelationship(_:)(uint64_t a1)
{
  v3 = sub_1B7800838();
  v4 = [v1 mutableSetValueForKeyPath_];

  [v4 addObject_];
}

id ManagedInternalAccount.originType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 originTypeValue];
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_1B76717BC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 originTypeValue];
  *a2 = result;
  return result;
}

id sub_1B7671804@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 thirdPartyShareable];
  *a2 = result;
  return result;
}

void ManagedInternalAccount.setAccountBalanceRelationship(_:)(uint64_t a1)
{
  v3 = sub_1B7800838();
  v4 = [v1 mutableSetValueForKeyPath_];

  [v4 addObject_];
}

void sub_1B76718E8(id *a1)
{
  v1 = [*a1 consentID];
  sub_1B77FF9E8();
}

void sub_1B7671948(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 fpanIds];
  v4 = sub_1B7800C38();

  *a2 = v4;
}

void sub_1B76719A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 externalAccountId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7671A0C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setExternalAccountId_];
}

void sub_1B7671A7C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B7671BB8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accountPaymentInformationData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B77FF5B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7671C20(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B77FF598();
  }

  v4 = v3;
  [v2 setAccountPaymentInformationData_];
}

id ManagedInternalAccount.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInternalAccount.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInternalAccount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7671DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - v5;
  if ([v0 originTypeValue] >= 5)
  {
    v23 = v0;
    v24 = [v23 description];
    v18 = sub_1B7800868();
    v20 = v25;

    sub_1B7269974();
    swift_allocError();
    v21 = 0xEF65756C61566570;
    v13 = 0x79546E696769726FLL;
  }

  else
  {
    v7 = [v0 institutionId];
    v8 = sub_1B7800868();
    v10 = v9;

    LOBYTE(v7) = sub_1B7431C4C(v8, v10);

    if ((v7 & 1) == 0)
    {
      return result;
    }

    v12 = [v0 earliestTransactionsRequestStartDate];
    if (v12)
    {
      v13 = 0xD000000000000024;
      v14 = v12;
      sub_1B77FF928();

      v15 = sub_1B77FF988();
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      sub_1B7205418(v6, &qword_1EB98EBD0);
      v16 = v0;
      v17 = [v16 description];
      v18 = sub_1B7800868();
      v20 = v19;

      v21 = 0x80000001B78895B0;
      sub_1B7269974();
      swift_allocError();
    }

    else
    {
      v26 = sub_1B77FF988();
      v27 = *(*(v26 - 8) + 56);
      v27(v6, 1, 1, v26);
      sub_1B7205418(v6, &qword_1EB98EBD0);
      v28 = [v0 earliestHistoricalTransactionsRequestStartDate];
      if (!v28)
      {
        v27(v4, 1, 1, v26);
        return sub_1B7205418(v4, &qword_1EB98EBD0);
      }

      v29 = v28;
      sub_1B77FF928();

      v27(v4, 0, 1, v26);
      sub_1B7205418(v4, &qword_1EB98EBD0);
      v30 = v0;
      v31 = [v30 description];
      v18 = sub_1B7800868();
      v20 = v32;

      v21 = 0x80000001B7889640;
      sub_1B7269974();
      swift_allocError();
      v13 = 0xD00000000000002ELL;
    }
  }

  *v22 = v18;
  *(v22 + 8) = v20;
  *(v22 + 16) = v13;
  *(v22 + 24) = v21;
  *(v22 + 32) = 0;
  return swift_willThrow();
}

uint64_t sub_1B767229C(SEL *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.super_class = swift_getObjectType();
  v7[0] = 0;
  v6.receiver = v1;
  if (objc_msgSendSuper2(&v6, *a1, v7))
  {
    v3 = v7[0];
    return sub_1B7671DE8();
  }

  else
  {
    v5 = v7[0];
    sub_1B77FF318();

    return swift_willThrow();
  }
}

uint64_t sub_1B7672370(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t ManagedInternalAccount.accountNumber.setter(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = sub_1B7800838();

  [v1 setAccountNumberValue_];

  [v1 setAccountNumberSchemeTypeValue_];
}

void static ManagedInternalAccount.update(_:with:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v57 - v7;
  v8 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFB08();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B77FFC88();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = [a1 accountId];
  v24 = sub_1B7800868();
  v26 = v25;

  v27 = [a2 accountID];
  v28 = sub_1B7800868();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {
  }

  else
  {
    v31 = sub_1B78020F8();

    if ((v31 & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  v32 = [a1 institutionId];
  v33 = sub_1B7800868();
  v35 = v34;

  v36 = [a2 institutionID];
  v37 = sub_1B7800868();
  v39 = v38;

  if (v33 == v37 && v35 == v39)
  {

    v40 = v68;
    v41 = v69;
    goto LABEL_9;
  }

  v42 = sub_1B78020F8();

  v40 = v68;
  v41 = v69;
  if ((v42 & 1) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

LABEL_9:
  [a1 setAccountMatchObject_];
  v43 = [a2 fpanID];
  [a1 setExternalAccountId_];

  ManagedAccountMatch.matchingType.getter(&v70);
  v44 = sub_1B7801008();
  [a1 setAccountMatchingTypeValue_];

  [a1 setIsAccountMismatched_];
  v45 = [a1 earliestAccountValidationStartDate];
  if (v45)
  {
    v46 = v45;
    sub_1B77FF928();

    (*(v14 + 56))(v22, 0, 1, v13);
    sub_1B7205418(v22, &qword_1EB98EBD0);
    return;
  }

  (*(v14 + 56))(v22, 1, 1, v13);
  sub_1B7205418(v22, &qword_1EB98EBD0);
  v47 = v63;
  sub_1B77FF938();
  v49 = v59;
  v48 = v60;
  v50 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x1E6969830], v61);
  sub_1B77FFB18();
  (*(v48 + 8))(v49, v50);
  (*(v41 + 56))(v64, 1, 1, v67);
  v51 = sub_1B77FFCF8();
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  v52 = v65;
  sub_1B77FECD8();
  v53 = v62;
  sub_1B77FFC08();
  if ((*(v14 + 48))(v53, 1, v13) == 1)
  {
    goto LABEL_16;
  }

  sub_1B7675C30(v52, type metadata accessor for Duration);
  (*(v41 + 8))(v40, v67);
  v54 = *(v14 + 8);
  v54(v47, v13);
  v55 = v58;
  (*(v14 + 32))(v58, v53, v13);
  v56 = sub_1B77FF8B8();
  v54(v55, v13);
  [a1 setEarliestAccountValidationStartDate_];
}

void ManagedInternalAccount.accountMatchingType.setter(_BYTE *a1)
{
  if (*a1 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B7801008();
  }

  v3 = v2;
  [v1 setAccountMatchingTypeValue_];
}

void static ManagedInternalAccount.migrate(_:to:)(void *a1, void *a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7800838();
  v9 = [a2 mutableSetValueForKeyPath_];

  [v9 addObject_];
  v10 = [a2 id];
  sub_1B77FF9E8();

  v11 = sub_1B77FF9B8();
  (*(v5 + 8))(v7, v4);
  [a1 setConsentID_];
}

id ManagedInternalAccount.backgroundRefreshUserPreference.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 backgroundRefreshUserPreferenceValue];
  if (result > 2)
  {
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000033, 0x80000001B7889300);
    [v2 backgroundRefreshUserPreferenceValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7672FD4(SEL *a1)
{
  v3 = [v1 publicAccountObject];
  v4 = [v3 *a1];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t ManagedInternalAccount.latestAccountBalance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  if (v2)
  {
    InternalAccountBalance.init(_:)(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for InternalAccountBalance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t ManagedInternalAccount.actions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 actionsObject];

  return Actions.init(_:)(v3, a1);
}

void ManagedInternalAccount.lastAccountRefreshFailure.getter(char *a1@<X8>)
{
  v3 = [v1 lastAccountRefreshFailureValue];

  sub_1B7673840(v3, a1);
}

void ManagedInternalAccount.lastTransactionsRefreshFailure.getter(char *a1@<X8>)
{
  v3 = [v1 lastTransactionsRefreshFailureValue];

  sub_1B7673840(v3, a1);
}

id ManagedInternalAccount.loadingStatus.getter@<X0>(_WORD *a1@<X8>)
{
  result = [v1 loadingStatusValue];
  *a1 = result;
  return result;
}

void ManagedInternalAccount.preferences.getter(unsigned __int8 *a1@<X8>)
{
  v3 = [v1 preferencesObject];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userSuppressedNotifications];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

id FKAccount.init(_:)(void *a1)
{
  v2 = type metadata accessor for InternalAccount();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  InternalAccount.init(_:)(v5, v4);
  v6 = FKAccount.init(from:)(v4);

  return v6;
}

id (*ManagedInternalAccount.loadingStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 loadingStatusValue];
  return sub_1B7673358;
}

void sub_1B7673370(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B7801008();
  }

  v4 = v3;
  [v2 setAccountStatusValue_];
}

id sub_1B76733DC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = sub_1B7800838();
  [v3 setAccountNumberValue_];

  return [v3 setAccountNumberSchemeTypeValue_];
}

uint64_t (*ManagedInternalAccount.accountNumber.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  ManagedInternalAccount.accountNumber.getter(a1);
  return sub_1B767349C;
}

uint64_t sub_1B767349C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);

  v5 = sub_1B7800838();
  v6 = *(a1 + 24);
  if (a2)
  {
    [v6 setAccountNumberValue_];

    [v6 setAccountNumberSchemeTypeValue_];
  }

  else
  {

    [v6 setAccountNumberValue_];

    [v6 setAccountNumberSchemeTypeValue_];
  }
}

void ManagedInternalAccount.accountMatchingType.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v2 accountMatchingTypeValue];
  if (!v4)
  {
    v7 = 5;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v4 integerValue];
  if (v6 < 5)
  {
    v7 = v6;

LABEL_5:
    *a1 = v7;
    return;
  }

  sub_1B7801A78();

  v8 = [v5 description];
  v9 = sub_1B7800868();
  v11 = v10;

  MEMORY[0x1B8CA4D30](v9, v11);

  sub_1B7801C88();
  __break(1u);
}

void sub_1B76736A4(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B7801008();
  }

  v4 = v3;
  [v2 setAccountMatchingTypeValue_];
}

void (*ManagedInternalAccount.accountMatchingType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedInternalAccount.accountMatchingType.getter((a1 + 8));
  return sub_1B7673764;
}

void sub_1B7673764(uint64_t a1)
{
  if (*(a1 + 8) == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B7801008();
  }

  v3 = v2;
  [*a1 setAccountMatchingTypeValue_];
}

id (*ManagedInternalAccount.backgroundRefreshUserPreference.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedInternalAccount.backgroundRefreshUserPreference.getter((a1 + 8));
  return sub_1B7673828;
}

void sub_1B7673840(void *a1@<X0>, char *a2@<X8>)
{
  if (!a1)
  {
    v5 = 2;
LABEL_8:
    *a2 = v5;
    return;
  }

  v4 = [a1 integerValue];
  if (v4 == 1)
  {
    v5 = 1;
LABEL_7:

    goto LABEL_8;
  }

  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  sub_1B7801A78();

  [a1 integerValue];
  v6 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v6);

  sub_1B7801C88();
  __break(1u);
}

void (*ManagedInternalAccount.lastAccountRefreshFailure.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_1B7673840([v1 lastAccountRefreshFailureValue], (a1 + 8));
  return sub_1B76739C4;
}

void sub_1B76739D0(_BYTE *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1B7801008();
  }

  v8 = v7;
  [v6 *a5];
}

void sub_1B7673A4C(_BYTE *a1, SEL *a2)
{
  if (*a1 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B7801008();
  }

  v5 = v4;
  [v2 *a2];
}

void (*ManagedInternalAccount.lastTransactionsRefreshFailure.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_1B7673840([v1 lastTransactionsRefreshFailureValue], (a1 + 8));
  return sub_1B7673B24;
}

void sub_1B7673B30(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + 8) == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1B7801008();
  }

  v6 = v5;
  [*a1 *a3];
}

id (*ManagedInternalAccount.originType.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  result = [v2 originTypeValue];
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = result;
    return sub_1B7673C0C;
  }

  return result;
}

uint64_t ManagedInternalAccount.transactions.getter()
{
  v1 = type metadata accessor for InternalTransaction(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = sub_1B77FF338();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 transactionObjects];
  v13 = [v12 count];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B71FDEE0(0, v13 & ~(v13 >> 63), 0);
  v14 = v31;
  result = sub_1B78014D8();
  if (v13 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v23 = v7;
  v24 = v12;
  v25 = v9;
  if (v13)
  {
    sub_1B76758B8(&qword_1EB990510, MEMORY[0x1E6968EB0]);
    do
    {
      result = sub_1B78017B8();
      if (!v30)
      {
        goto LABEL_15;
      }

      sub_1B719BDE4(&v29, &v27);
      type metadata accessor for ManagedInternalTransaction();
      swift_dynamicCast();
      InternalTransaction.init(_:)(v26, v5);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v31 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B71FDEE0(v16 > 1, v17 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v17 + 1;
      sub_1B7675BC8(v5, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, type metadata accessor for InternalTransaction);
    }

    while (--v13);
  }

  sub_1B76758B8(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  v18 = v24;
  if (v28)
  {
    v19 = v23;
    do
    {
      sub_1B72051F0(&v27, &v29);
      sub_1B719BDE4(&v29, &v27);
      type metadata accessor for ManagedInternalTransaction();
      swift_dynamicCast();
      InternalTransaction.init(_:)(v26, v19);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v31 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B71FDEE0(v20 > 1, v21 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v21 + 1;
      sub_1B7675BC8(v19, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, type metadata accessor for InternalTransaction);
      sub_1B78017B8();
    }

    while (v28);
  }

  (*(v25 + 8))(v11, v8);
  sub_1B7205418(&v27, &qword_1EB98FCB0);
  return v14;
}

void *ManagedInternalAccount.recurringPayments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for RecurringPayment(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF338();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v0 preauthorizedPaymentObjects];
  sub_1B78014D8();
  sub_1B76758B8(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  if (v28)
  {
    v11 = (v5 + 56);
    v23 = v5;
    v12 = (v5 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v22 = v7;
    do
    {
      sub_1B72051F0(&v27, v26);
      sub_1B719BDE4(v26, v25);
      type metadata accessor for ManagedRecurringPreauthorizedPayment();
      if (swift_dynamicCast())
      {
        RecurringPayment.init(_:)(v24, v3);
        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      (*v11)(v3, v14, 1, v4);
      if ((*v12)(v3, 1, v4) == 1)
      {
        sub_1B7205418(v3, &qword_1EB99AB60);
      }

      else
      {
        sub_1B7675BC8(v3, v7, type metadata accessor for RecurringPayment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1B723F988(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_1B723F988(v15 > 1, v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v7 = v22;
        sub_1B7675BC8(v22, v17, type metadata accessor for RecurringPayment);
      }

      sub_1B78017B8();
    }

    while (v28);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v21 + 8))(v10, v8);
  return v13;
}

void *ManagedInternalAccount.scheduledPayments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AB68);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for ScheduledPayment();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF338();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v0 preauthorizedPaymentObjects];
  sub_1B78014D8();
  sub_1B76758B8(&qword_1EB990510, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  if (v28)
  {
    v11 = (v5 + 56);
    v23 = v5;
    v12 = (v5 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v22 = v7;
    do
    {
      sub_1B72051F0(&v27, v26);
      sub_1B719BDE4(v26, v25);
      type metadata accessor for ManagedScheduledPreauthorizedPayment();
      if (swift_dynamicCast())
      {
        ScheduledPayment.init(_:)(v24, v3);
        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      (*v11)(v3, v14, 1, v4);
      if ((*v12)(v3, 1, v4) == 1)
      {
        sub_1B7205418(v3, &qword_1EB99AB68);
      }

      else
      {
        sub_1B7675BC8(v3, v7, type metadata accessor for ScheduledPayment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1B723F9B0(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_1B723F9B0(v15 > 1, v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v7 = v22;
        sub_1B7675BC8(v22, v17, type metadata accessor for ScheduledPayment);
      }

      sub_1B78017B8();
    }

    while (v28);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v21 + 8))(v10, v8);
  return v13;
}

void ManagedInternalAccount.setPreauthorizedPaymentRelationship(_:)(uint64_t a1)
{
  v3 = sub_1B7800838();
  v4 = [v1 mutableSetValueForKeyPath_];

  [v4 addObject_];
}

uint64_t _s10FinanceKit22ManagedInternalAccountC6update_7consent07withRawE0yAC_AA0C7ConsentCAA0I15BankConnectDataO0E0OtFZ_0(void *a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for RawBankConnectData.Actions();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RawBankConnectData.Account(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  RawBankConnectData.Account.fpanIds.getter();
  v18 = sub_1B7800C18();

  [a1 setFpanIds_];

  sub_1B7675B60(a3, v17, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7675BC8(v17, v9, type metadata accessor for RawBankConnectData.AssetAccount);
    v19 = v9[40];

    sub_1B7675C30(v9, type metadata accessor for RawBankConnectData.AssetAccount);
    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_8:
    if (v19 == 2)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    goto LABEL_11;
  }

  sub_1B7675BC8(v17, v11, type metadata accessor for RawBankConnectData.LiabilityAccount);
  v19 = v11[40];

  sub_1B7675C30(v11, type metadata accessor for RawBankConnectData.LiabilityAccount);
  if (v19 > 1)
  {
    goto LABEL_8;
  }

  if (!v19)
  {
LABEL_4:
    v20 = 1;
    goto LABEL_11;
  }

LABEL_7:
  v20 = 2;
LABEL_11:

  v21 = sub_1B7800838();

  [a1 setAccountNumberValue_];

  [a1 setAccountNumberSchemeTypeValue_];

  RawBankConnectData.Account.accountStatus.getter(&v32);
  if (v32 == 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1B7801008();
  }

  [a1 setAccountStatusValue_];

  sub_1B7675B60(a3, v15, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7675BC8(v15, v11, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v23 = v11[*(v29 + 64)];
    v24 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v25 = v11;
  }

  else
  {
    sub_1B7675BC8(v15, v9, type metadata accessor for RawBankConnectData.AssetAccount);
    v23 = v9[*(v30 + 48)];
    v24 = type metadata accessor for RawBankConnectData.AssetAccount;
    v25 = v9;
  }

  sub_1B7675C30(v25, v24);
  [a1 setThirdPartyShareable_];
  v26 = [a1 publicAccountObject];
  _s10FinanceKit14ManagedAccountC6update_7consent07withRawD0yAC_AA0C7ConsentCAA0H15BankConnectDataO0D0OtFZ_0(v26, v31, a3);

  v27 = [a1 actionsObject];
  RawBankConnectData.Account.actions.getter(v7);
  _s10FinanceKit21ManagedAccountActionsC6update_5usingyAC_AA18RawBankConnectDataO0E0VtFZ_0(v27, v7);

  return sub_1B7675C30(v7, type metadata accessor for RawBankConnectData.Actions);
}

id sub_1B7674D90(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v86 = a3;
  v89 = a2;
  v6 = sub_1B77FF988();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFA18();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v78);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v77);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawBankConnectData.Account(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v79 = &v72 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v72 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - v28;
  v30 = objc_allocWithZone(v84);
  v84 = a4;
  v31 = [v30 initWithContext_];
  v87 = a1;
  sub_1B7675B60(a1, v29, type metadata accessor for RawBankConnectData.Account);
  v80 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7675BC8(v29, v15, type metadata accessor for RawBankConnectData.LiabilityAccount);

    v32 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v33 = v15;
  }

  else
  {
    sub_1B7675BC8(v29, v17, type metadata accessor for RawBankConnectData.AssetAccount);

    v32 = type metadata accessor for RawBankConnectData.AssetAccount;
    v33 = v17;
  }

  sub_1B7675C30(v33, v32);
  v34 = sub_1B7800838();

  [v31 setAccountId_];

  v35 = v89;
  Institution.init(_:)([v89 institutionObject], v13);

  sub_1B7675C30(v13, type metadata accessor for Institution);
  v36 = sub_1B7800838();

  [v31 setInstitutionId_];

  v37 = [v35 id];
  sub_1B77FF9E8();

  v38 = sub_1B77FF9B8();
  (*(v81 + 8))(v10, v82);
  [v31 setConsentID_];

  [v31 setOriginTypeValue_];
  v39 = v87;
  sub_1B7675B60(v87, v27, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7675BC8(v27, v15, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v40 = v15[*(v78 + 64)];
    v41 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v42 = v15;
  }

  else
  {
    sub_1B7675BC8(v27, v17, type metadata accessor for RawBankConnectData.AssetAccount);
    v40 = v17[*(v77 + 48)];
    v41 = type metadata accessor for RawBankConnectData.AssetAccount;
    v42 = v17;
  }

  sub_1B7675C30(v42, v41);
  v43 = v86;
  [v31 setThirdPartyShareable_];
  type metadata accessor for ManagedAccountActions();
  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v45 = v84;
  v46 = [v44 initWithContext_];
  [v31 setActionsObject_];

  type metadata accessor for ManagedAccountPreferences();
  v47 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v31 setPreferencesObject_];

  type metadata accessor for ManagedAccount();
  v48 = v83;
  sub_1B7675B60(v39, v83, type metadata accessor for RawBankConnectData.Account);
  sub_1B719B06C(v43, v88);
  v49 = v89;
  v50 = v45;
  v51 = v85;
  v52 = ManagedAccount.__allocating_init(_:consent:migratedAccountsProvider:context:)(v48, v49, v88, v50);
  if (v51)
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
    v53 = v39;
  }

  else
  {
    v54 = v52;
    [v31 setPublicAccountObject_];

    _s10FinanceKit22ManagedInternalAccountC6update_7consent07withRawE0yAC_AA0C7ConsentCAA0I15BankConnectDataO0E0OtFZ_0(v31, v49, v39);
    v55 = sub_1B7800838();
    v56 = [v49 mutableSetValueForKeyPath_];

    [v56 addObject_];
    v57 = v79;
    sub_1B7675B60(v39, v79, type metadata accessor for RawBankConnectData.Account);
    v58 = v50;
    v59 = v74;
    sub_1B77FF938();
    v60 = objc_allocWithZone(type metadata accessor for ManagedInternalAccountBalance());
    v61 = v31;
    v62 = [v60 &selRef_merchantZip];
    v63 = sub_1B77FF8B8();
    [v62 setLastUpdatedAt_];

    type metadata accessor for ManagedAccountBalance();
    v64 = v57;
    v65 = v73;
    sub_1B7675B60(v64, v73, type metadata accessor for RawBankConnectData.Account);
    v66 = v58;
    v67 = v61;
    v68 = sub_1B7266780(v65, v67, v66);

    [v62 setPublicAccountBalanceObject_];
    (*(v75 + 8))(v59, v76);
    sub_1B7675C30(v79, type metadata accessor for RawBankConnectData.Account);
    v69 = sub_1B7800838();
    v70 = [v67 mutableSetValueForKeyPath_];

    [v70 addObject_];
    __swift_destroy_boxed_opaque_existential_1(v86);
    v53 = v87;
  }

  sub_1B7675C30(v53, type metadata accessor for RawBankConnectData.Account);
  return v31;
}

void _s10FinanceKit22ManagedInternalAccountC6update_7consent09withAppleE0yAC_AA0C7ConsentCSo07FKAppleE0CtFZ_0(void *a1, void *a2, id a3)
{
  v6 = [a3 accountIdentifier];
  sub_1B7800868();

  v7 = sub_1B7800838();

  [a1 setAccountNumberValue_];

  [a1 setAccountNumberSchemeTypeValue_];

  [a1 setAccountNumberSchemeTypeValue_];
  [a3 status];
  v8 = sub_1B7801008();
  [a1 setAccountStatusValue_];

  v9 = [a3 type];
  if (v9 >= 3)
  {
    sub_1B7801C88();
    __break(1u);
  }

  else
  {
    [a1 setOriginTypeValue_];
    [a1 setThirdPartyShareable_];
    v10 = [a1 publicAccountObject];
    sub_1B729899C(v10, a2, a3);
  }
}

uint64_t sub_1B76758B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7675B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7675BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7675C30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InstitutionPrivacyLabels.init(fromRawPrivacyLabels:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v4 |= word_1B781A5C0[v6];
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

unint64_t sub_1B7675E20()
{
  result = qword_1EB99AB70;
  if (!qword_1EB99AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB70);
  }

  return result;
}

unint64_t sub_1B7675E78()
{
  result = qword_1EB99AB78;
  if (!qword_1EB99AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB78);
  }

  return result;
}

unint64_t sub_1B7675ECC()
{
  result = qword_1EB99AB80;
  if (!qword_1EB99AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB80);
  }

  return result;
}

unint64_t sub_1B7675F24()
{
  result = qword_1EB99AB88;
  if (!qword_1EB99AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB88);
  }

  return result;
}

char *ManagedAccountPaymentInfoImporter.insertOrUpdateAccountPaymentInfo(_:with:context:key:)(_OWORD *a1)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  result = sub_1B767646C(v5);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1B7801468();

    return *&v5[0];
  }

  return result;
}

uint64_t ManagedAccountPaymentInfoImporterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

void sub_1B767612C(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t *a3@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  sub_1B7801468();
  if (!v3)
  {
    v7 = sub_1B755015C(a1, a2);
    v9 = v8;
    v10 = sub_1B77FF598();
    [v11 setAccountPaymentInformationData_];

    *a3 = v7;
    a3[1] = v9;
  }
}

uint64_t static ManagedAccountPaymentInfoImporter.existingEnabledAccount(with:context:)()
{
  type metadata accessor for ManagedInternalAccount();
  result = sub_1B7801468();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1B7676284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v11 = static ManagedInternalAccount.existingAccount(with:in:)(&v19);
  if (!v5)
  {
    if (v11)
    {
      v12 = v11;
      if ([v11 isAccountEnabled])
      {
        *a5 = v12;
      }

      else
      {
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v14 = sub_1B78000B8();
        __swift_project_value_buffer(v14, qword_1EDAF65B0);
        v15 = sub_1B7800098();
        v16 = sub_1B78011B8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1B7198000, v15, v16, "Unable to update account, account is disabled", v17, 2u);
          MEMORY[0x1B8CA7A40](v17, -1, -1);
        }

        sub_1B76767A0();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();
      }
    }

    else
    {
      sub_1B76767A0();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

char *sub_1B767646C(uint64_t *a1)
{
  v1 = a1[4];
  v2 = *(a1 + 5);
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v24 = v2;
  if (!a1[1])
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v23 = *(a1 + 1);
  v25 = a1[9];
  v6 = a1[7];
  v7 = a1[8];
  v8 = *a1;
  v9 = a1[3];

  v10 = sub_1B723F2C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B723F2C4((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  *(v13 + 4) = v8;
  *(v13 + 40) = v23;
  *(v13 + 7) = v9;
  v13[64] = 0;
  v4 = v7;
  v3 = v6;
  v5 = v25;
  if (v24)
  {
LABEL_7:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B723F2C4(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    v16 = v24;
    if (v15 >= v14 >> 1)
    {
      v22 = sub_1B723F2C4((v14 > 1), v15 + 1, 1, v10);
      v16 = v24;
      v10 = v22;
    }

    *(v10 + 2) = v15 + 1;
    v17 = &v10[40 * v15];
    *(v17 + 4) = v1;
    *(v17 + 40) = v16;
    *(v17 + 7) = v3;
    v17[64] = 1;
  }

LABEL_12:
  if (v5)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B723F2C4(0, *(v10 + 2) + 1, 1, v10);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_1B723F2C4((v18 > 1), v19 + 1, 1, v10);
    }

    *(v10 + 2) = v19 + 1;
    v20 = &v10[40 * v19];
    *(v20 + 4) = v4;
    *(v20 + 5) = v5;
    *(v20 + 6) = 0;
    *(v20 + 7) = 0;
    v20[64] = 2;
  }

  return v10;
}

unint64_t sub_1B7676700()
{
  result = qword_1EB99AB90;
  if (!qword_1EB99AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB90);
  }

  return result;
}

unint64_t sub_1B76767A0()
{
  result = qword_1EB99AB98;
  if (!qword_1EB99AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AB98);
  }

  return result;
}

uint64_t BankConnectService.loadGrantedAccounts(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76768C8, 0, 0);
}

uint64_t sub_1B76768C8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t BankConnectService.scheduleHistoricalTransactionTask(for:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B7676A00, 0, 0);
}

uint64_t sub_1B7676A00()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B7676AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectService.loadGrantedAccounts(forConsentID:)(a1, a2);
}

uint64_t sub_1B7676B4C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return BankConnectService.scheduleHistoricalTransactionTask(for:)(a1);
}

uint64_t dispatch thunk of BankConnectConnectionFinanceDataLoading.loadGrantedAccounts(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectConnectionFinanceDataLoading.scheduleHistoricalTransactionTask(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t BankConnectSharedSymmetricKeyManagerError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t BankConnectSharedSymmetricKeyManager.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  result = sub_1B7677038(v10 - v4);
  if (!v1)
  {
    v7 = sub_1B78004C8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(v5, 1, v7) == 1)
    {
      sub_1B7677574(a1);
      result = v9(v5, 1, v7);
      if (result != 1)
      {
        return sub_1B7677904(v5);
      }
    }

    else
    {
      return (*(v8 + 32))(a1, v5, v7);
    }
  }

  return result;
}

uint64_t sub_1B7677038@<X0>(uint64_t a1@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v3 = sub_1B7800098();
  v4 = sub_1B78011B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7198000, v3, v4, "Attempting to obtain existing shared key.", v5, 2u);
    MEMORY[0x1B8CA7A40](v5, -1, -1);
  }

  v6 = sub_1B7677BD8();
  v7 = *MEMORY[0x1E697B318];
  v37 = MEMORY[0x1E69E6370];
  LOBYTE(v36) = 1;
  sub_1B72051F0(&v36, result);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v6;
  sub_1B7392994(result, v7, isUniquelyReferenced_nonNull_native);
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_1B72CE5E4();
  v9 = sub_1B7800708();

  v10 = SecItemCopyMatching(v9, result);

  v11 = sub_1B7800098();
  if (v10 == -25300)
  {
    v19 = sub_1B78011B8();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B7198000, v11, v19, "BankConnect shared key does not exist.", v20, 2u);
      MEMORY[0x1B8CA7A40](v20, -1, -1);
    }

    v18 = 1;
    goto LABEL_17;
  }

  if (v10)
  {
    v22 = sub_1B78011D8();
    if (os_log_type_enabled(v11, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v36 = v24;
      *v23 = 136315138;
      v25 = SecCopyErrorMessageString(v10, 0);
      if (v25)
      {
        v26 = v25;
        v27 = sub_1B7800868();
        v29 = v28;

        v30 = v27;
      }

      else
      {
        LODWORD(v34) = v10;
        v30 = sub_1B7802068();
        v29 = v31;
      }

      v32 = sub_1B71A3EF8(v30, v29, &v36);

      *(v23 + 4) = v32;
      _os_log_impl(&dword_1B7198000, v11, v22, "keychain error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:{0, v34}];
    goto LABEL_25;
  }

  v12 = sub_1B78011B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7198000, v11, v12, "Obtained existing shared key.", v13, 2u);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  if (!result[0] || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    sub_1B7677D74();
    swift_allocError();
LABEL_25:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v14 = v36;
  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B7198000, v15, v16, "Creating key with key data.", v17, 2u);
    MEMORY[0x1B8CA7A40](v17, -1, -1);
  }

  v36 = v14;
  sub_1B78004A8();
  v18 = 0;
LABEL_17:
  v21 = sub_1B78004C8();
  (*(*(v21 - 8) + 56))(a1, v18, 1, v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B7677574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B78004E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAF65B0);
  v4 = sub_1B7800098();
  v5 = sub_1B78011B8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "Creating new shared key", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  sub_1B78004D8();
  sub_1B78004B8();
  v7 = MEMORY[0x1E6969080];
  sub_1B7800488();
  v8 = v21;
  v9 = sub_1B7800098();
  v10 = sub_1B78011B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B7198000, v9, v10, "Adding newly created key to keychain.", v11, 2u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  sub_1B7677BD8();
  v12 = *MEMORY[0x1E697B3C0];
  v22 = v7;
  v21 = v8;
  sub_1B72051F0(&v21, v20);
  sub_1B720ABEC(v8, *(&v8 + 1));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B7392994(v20, v12, isUniquelyReferenced_nonNull_native);
  v14 = *MEMORY[0x1E697AD00];
  v22 = MEMORY[0x1E69E6370];
  LOBYTE(v21) = 1;
  sub_1B72051F0(&v21, v20);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B7392994(v20, v14, v15);
  type metadata accessor for CFString(0);
  sub_1B72CE5E4();
  v16 = sub_1B7800708();

  v17 = SecItemAdd(v16, 0);

  if (!v17)
  {
    return sub_1B720A388(v8, *(&v8 + 1));
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
  swift_willThrow();
  sub_1B720A388(v8, *(&v8 + 1));
  v18 = sub_1B78004C8();
  return (*(*(v18 - 8) + 8))(a1, v18);
}

uint64_t sub_1B7677904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7677988()
{
  result = qword_1EB99ABA8;
  if (!qword_1EB99ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ABA8);
  }

  return result;
}

uint64_t sub_1B76779DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  result = sub_1B7677038(&v10 - v4);
  if (!v1)
  {
    v7 = sub_1B78004C8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(v5, 1, v7) == 1)
    {
      sub_1B7677574(a1);
      result = v9(v5, 1, v7);
      if (result != 1)
      {
        return sub_1B7677904(v5);
      }
    }

    else
    {
      return (*(v8 + 32))(a1, v5, v7);
    }
  }

  return result;
}

unint64_t sub_1B7677BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B781A380;
  v1 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v2 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 40) = v2;
  v3 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v4;
  *(inited + 72) = v3;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001B7878970;
  v6 = *MEMORY[0x1E697AE88];
  *(inited + 104) = v5;
  *(inited + 112) = v6;
  *(inited + 120) = 0xD000000000000021;
  *(inited + 128) = 0x80000001B7881650;
  v7 = *MEMORY[0x1E697AC30];
  *(inited + 144) = v5;
  *(inited + 152) = v7;
  *(inited + 160) = 0xD00000000000002CLL;
  *(inited + 168) = 0x80000001B78899E0;
  v8 = *MEMORY[0x1E697ABD8];
  *(inited + 184) = v5;
  *(inited + 192) = v8;
  v9 = *MEMORY[0x1E697AC28];
  *(inited + 224) = v4;
  *(inited + 200) = v9;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = sub_1B7202C00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F470);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_1B7677D74()
{
  result = qword_1EB99ABB0;
  if (!qword_1EB99ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ABB0);
  }

  return result;
}

uint64_t Order.ShippingFulfillment.StatusValues.init(order:orderContent:fulfillment:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = a1;
  v20 = a2;
  v21 = ManagedOrderShippingFulfillment.status.getter();
  v22 = ManagedOrderShippingFulfillment.shippingType.getter();
  v38 = v18;
  Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)(v19, v20, v21, v22 & 1, v18);
  v39 = v15;
  ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v15);
  v23 = [a3 deliveryDate];
  if (v23)
  {
    v24 = v23;
    sub_1B77FF928();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_1B77FF988();
  v27 = *(*(v26 - 8) + 56);
  v28 = 1;
  v41 = v12;
  v27(v12, v25, 1, v26);
  v29 = [a3 shippedDate];
  if (v29)
  {
    v30 = v29;
    sub_1B77FF928();

    v28 = 0;
  }

  v27(v10, v28, 1, v26);
  v31 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v32 = v31[5];
  v33 = type metadata accessor for Order.FulfillmentWindow(0);
  v34 = v40;
  (*(*(v33 - 8) + 56))(v40 + v32, 1, 1, v33);
  v35 = v31[6];
  v27((v34 + v35), 1, 1, v26);
  v36 = v31[7];
  v27((v34 + v36), 1, 1, v26);
  sub_1B767D044(v38, v34);
  sub_1B7213740(v39, v34 + v32, &qword_1EB990828);
  sub_1B7213740(v41, v34 + v35, &qword_1EB98EBD0);
  return sub_1B7213740(v10, v34 + v36, &qword_1EB98EBD0);
}

uint64_t Order.ShippingFulfillment.StatusValues.init(orderContent:fulfillment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27[-v13];
  v15 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B767D800(a1, v17, type metadata accessor for RawECommerceOrderContent);
  v29 = *(a2 + 40);
  v18 = type metadata accessor for RawOrderShippingFulfillment();
  v28 = *(a2 + v18[18]);
  Order.Fulfillment.DisplayStatus<>.init(orderContent:shippingStatus:shippingType:)(v17, &v29, &v28, a3);
  RawOrderShippingFulfillment.estimatedDeliveryWindow.getter(v14);
  sub_1B767D0B4(a1, type metadata accessor for RawECommerceOrderContent);
  sub_1B7205588(a2 + v18[15], v11, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v18[17], v9, &qword_1EB98EBD0);
  sub_1B767D0B4(a2, type metadata accessor for RawOrderShippingFulfillment);
  v19 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v20 = v19[5];
  v21 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v21 - 8) + 56))(&a3[v20], 1, 1, v21);
  v22 = v19[6];
  v23 = sub_1B77FF988();
  v24 = *(*(v23 - 8) + 56);
  v24(&a3[v22], 1, 1, v23);
  v25 = v19[7];
  v24(&a3[v25], 1, 1, v23);
  sub_1B7213740(v14, &a3[v20], &qword_1EB990828);
  sub_1B7213740(v11, &a3[v22], &qword_1EB98EBD0);
  return sub_1B7213740(v9, &a3[v25], &qword_1EB98EBD0);
}

uint64_t Order.ShippingFulfillment.StatusFormatter.init(configuration:formatShippedAndDeliveryDates:useRelativeDateFormatting:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B7683770(a1, a4, type metadata accessor for FormatterConfiguration);
  result = type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t Order.ShippingFulfillment.StatusFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = type metadata accessor for EndOfDeliveryWindowFormatter();
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Order.FulfillmentWindow(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  sub_1B7205588(a1, &v25 - v12, &qword_1EB990820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if ((v14 - 2) < 2)
    {
      v20 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
      sub_1B7205588(a1 + *(v20 + 20), v6, &qword_1EB990828);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1B7205418(v6, &qword_1EB990828);
      }

      else
      {
        sub_1B7683770(v6, v10, type metadata accessor for Order.FulfillmentWindow);
        v21 = *(v28 + *(type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0) + 24));
        v22 = v26;
        sub_1B767D800(v28, v26, type metadata accessor for FormatterConfiguration);
        *(v22 + *(v25 + 20)) = v21;
        v18 = sub_1B7679424(v10, v27);
        v24 = v23;
        sub_1B767D0B4(v22, type metadata accessor for EndOfDeliveryWindowFormatter);
        sub_1B767D0B4(v10, type metadata accessor for Order.FulfillmentWindow);
        if (v24)
        {
          return v18;
        }
      }
    }

    else if (v14 == 4)
    {
      if (*(v28 + *(type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0) + 20)) == 1)
      {
        v16 = sub_1B767D13C(a1, v27);
LABEL_14:
        v18 = v16;
        if (v17)
        {
          return v18;
        }
      }
    }

    else
    {
      v15 = v28;
      if (v14 == 5 && *(v15 + *(type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0) + 20)) == 1)
      {
        v16 = sub_1B767D438(a1, v27);
        goto LABEL_14;
      }
    }
  }

  else
  {
    sub_1B7205418(v13, &qword_1EB990820);
  }

  v18 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();

  return v18;
}

uint64_t sub_1B7678898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FED28();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TimeWindow(0);
  v15 = MEMORY[0x1EEE9AC00](v95);
  v89 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82 - v17;
  v19 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FF988();
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v85 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v82 - v27;
  Order.FulfillmentWindow.endDate.getter(&v82 - v27);
  v93 = v9;
  v88 = Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
  v94 = a2;
  if ((sub_1B77FF8C8() & 1) == 0 && (sub_1B77FFB38() & 1) == 0)
  {
    (*(v98 + 8))(v28, v99);
    return 0;
  }

  sub_1B767D800(a1, v21, type metadata accessor for Order.FulfillmentWindow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = type metadata accessor for Order.FulfillmentWindow;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B767D800(v21, v18, type metadata accessor for TimeWindow);
    v31 = v95;
    sub_1B767D800(&v18[*(v95 + 20)], v14, type metadata accessor for Duration);
    sub_1B77FEC58();
    v33 = v32;
    sub_1B767D0B4(v18, type metadata accessor for TimeWindow);
    v34 = v97;
    v35 = *(v96 + 8);
    v35(v14, v97);
    if (v33)
    {
      v36 = v31;
      v37 = v89;
      sub_1B767D800(v21, v89, type metadata accessor for TimeWindow);
      sub_1B767D800(v37 + *(v36 + 20), v14, type metadata accessor for Duration);
      sub_1B77FEC78();
      LOBYTE(v36) = v38;
      sub_1B767D0B4(v37, type metadata accessor for TimeWindow);
      v35(v14, v34);
      v39 = v99;
      if (v36)
      {
        v30 = type metadata accessor for TimeWindow;
        goto LABEL_8;
      }
    }

    (*(v98 + 8))(v28, v99);
    sub_1B767D0B4(v21, type metadata accessor for TimeWindow);
    return 0;
  }

  v39 = v99;
LABEL_8:
  v40 = v28;
  sub_1B767D0B4(v21, v30);
  v41 = type metadata accessor for EndOfPickupWindowFormatter();
  v42 = v3;
  v43 = v98;
  if (*(v3 + *(v41 + 20)) != 1)
  {
    v52 = v92;
    sub_1B767D800(v3, v92, type metadata accessor for FormatterConfiguration);
    v53 = v91;
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v52, v53);
    *(v53 + *(v90 + 20)) = 0;
    v54 = FullDateFormatter.format(_:now:)(v28, v94);
    v55 = v39;
    v57 = v56;
    sub_1B767D0B4(v53, type metadata accessor for FullDateFormatter);
    v58 = sub_1B77C00C4(v54, v57);

LABEL_15:
    (*(v43 + 8))(v28, v55);
    return v58;
  }

  if (sub_1B77FFB38())
  {
    v44 = v39;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v45 = qword_1EDAF93B0;
    v46 = sub_1B7800838();
    v47 = sub_1B7800838();
    v48 = sub_1B7800838();
    v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

    v50 = sub_1B7800868();
    (*(v43 + 8))(v28, v44);
    return v50;
  }

  if (sub_1B77FFB88())
  {
    if (v88)
    {
      v55 = v39;
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDAF93B0;
    }

    else
    {
      v55 = v39;
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDAF93B0;
    }

    v77 = sub_1B7800838();
    v78 = sub_1B7800838();
    v79 = sub_1B7800838();
    v80 = [v59 localizedStringForKey:v77 value:v78 table:v79];

    v58 = sub_1B7800868();
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v60 = sub_1B77FFC68();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1B7807CD0;
  (*(v61 + 104))(v63 + v62, *MEMORY[0x1E6969A48], v60);
  sub_1B7545E58(v63);
  swift_setDeallocating();
  (*(v61 + 8))(v63 + v62, v60);
  swift_deallocClassInstance();
  v64 = v85;
  v65 = v94;
  Date.noon.getter(v85);
  v66 = v86;
  Date.noon.getter(v86);
  v67 = v87;
  sub_1B77FFB58();
  v68 = v99;

  v69 = *(v43 + 8);
  v69(v66, v68);
  v69(v64, v68);
  v70 = sub_1B77FEC08();
  LOBYTE(v60) = v71;
  (*(v96 + 8))(v67, v97);
  if ((v60 & 1) == 0 && (v70 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v58 = sub_1B767ABC8(v40, v88 & 1);
    v69(v40, v68);
    return v58;
  }

  v72 = v84;
  sub_1B767D800(v42, v84, type metadata accessor for FormatterConfiguration);
  *(v72 + *(v83 + 20)) = 0;
  v73 = SingleDateFormatter.format(_:now:)(v40, v65);
  v75 = v74;
  sub_1B767D0B4(v72, type metadata accessor for SingleDateFormatter);
  if (v88)
  {
    v76 = sub_1B77BFF3C(v73, v75);
  }

  else
  {
    v76 = sub_1B77C00C4(v73, v75);
  }

  v81 = v76;

  v69(v40, v99);
  return v81;
}

uint64_t sub_1B7679424(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FED28();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TimeWindow(0);
  v14 = MEMORY[0x1EEE9AC00](v92);
  v87 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v81 - v16;
  v18 = type metadata accessor for Order.FulfillmentWindow(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B77FF988();
  v22 = *(v21 - 8);
  v97 = v21;
  v98 = v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v84 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - v27;
  Order.FulfillmentWindow.endDate.getter(&v81 - v27);
  v91 = v8;
  v29 = *(v8 + 20);
  v86 = Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
  v93 = a2;
  if ((sub_1B77FF8C8() & 1) == 0 && (sub_1B77FFB38() & 1) == 0)
  {
    (*(v98 + 8))(v28, v97);
    return 0;
  }

  v96 = v2;
  sub_1B767D800(a1, v20, type metadata accessor for Order.FulfillmentWindow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = type metadata accessor for Order.FulfillmentWindow;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B767D800(v20, v17, type metadata accessor for TimeWindow);
    v32 = v92;
    sub_1B767D800(&v17[*(v92 + 20)], v13, type metadata accessor for Duration);
    sub_1B77FEC58();
    v34 = v33;
    v35 = v95;
    v36 = *(v94 + 8);
    v36(v13, v95);
    if (v34)
    {
      sub_1B767D0B4(v17, type metadata accessor for TimeWindow);
      v37 = v32;
      v38 = v87;
      sub_1B767D800(v20, v87, type metadata accessor for TimeWindow);
      sub_1B767D800(v38 + *(v37 + 20), v13, type metadata accessor for Duration);
      sub_1B77FEC78();
      LOBYTE(v37) = v39;
      v36(v13, v35);
      if (v37)
      {
        sub_1B767D0B4(v38, type metadata accessor for TimeWindow);
        v31 = type metadata accessor for TimeWindow;
        goto LABEL_7;
      }

      v49 = sub_1B7308CDC(v28, v93);
      sub_1B767D0B4(v38, type metadata accessor for TimeWindow);
      (*(v98 + 8))(v28, v97);
      v55 = v20;
    }

    else
    {
      v49 = sub_1B730AA10(v28);
      sub_1B767D0B4(v17, type metadata accessor for TimeWindow);
      (*(v98 + 8))(v28, v97);
      v55 = v20;
    }

    sub_1B767D0B4(v55, type metadata accessor for TimeWindow);
    return v49;
  }

LABEL_7:
  v40 = v98;
  v41 = v96;
  sub_1B767D0B4(v20, v31);
  if (*(v41 + *(type metadata accessor for EndOfDeliveryWindowFormatter() + 20)) == 1)
  {
    v42 = v28;
    if (sub_1B77FFB38())
    {
      v43 = v97;
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDAF93B0;
      v45 = sub_1B7800838();
      v46 = sub_1B7800838();
      v47 = sub_1B7800838();
      v48 = [v44 localizedStringForKey:v45 value:v46 table:v47];

      v49 = sub_1B7800868();
      (*(v40 + 8))(v28, v43);
    }

    else
    {
      v56 = sub_1B77FFB88();
      v57 = v97;
      if (v56)
      {
        if (v86)
        {
          if (qword_1EDAF93A8 != -1)
          {
            swift_once();
          }

          v58 = qword_1EDAF93B0;
        }

        else
        {
          if (qword_1EDAF93A8 != -1)
          {
            swift_once();
          }

          v58 = qword_1EDAF93B0;
        }

        v77 = sub_1B7800838();
        v78 = sub_1B7800838();
        v79 = sub_1B7800838();
        v80 = [v58 localizedStringForKey:v77 value:v78 table:v79];

        v49 = sub_1B7800868();
        (*(v40 + 8))(v42, v57);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
        v60 = sub_1B77FFC68();
        v61 = *(v60 - 8);
        v98 = v29;
        v62 = v61;
        v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1B7807CD0;
        (*(v62 + 104))(v64 + v63, *MEMORY[0x1E6969A48], v60);
        sub_1B7545E58(v64);
        swift_setDeallocating();
        (*(v62 + 8))(v64 + v63, v60);
        swift_deallocClassInstance();
        v65 = v83;
        v66 = v93;
        Date.noon.getter(v83);
        v67 = v84;
        Date.noon.getter(v84);
        v68 = v85;
        sub_1B77FFB58();

        v69 = *(v40 + 8);
        v69(v67, v57);
        v69(v65, v57);
        v70 = sub_1B77FEC08();
        LOBYTE(v60) = v71;
        (*(v94 + 8))(v68, v95);
        if ((v60 & 1) != 0 || (v70 - 7) < 0xFFFFFFFFFFFFFFFBLL)
        {
          v72 = v82;
          sub_1B767D800(v41, v82, type metadata accessor for FormatterConfiguration);
          *(v72 + *(v81 + 20)) = 0;
          v73 = SingleDateFormatter.format(_:now:)(v42, v66);
          v75 = v74;
          sub_1B767D0B4(v72, type metadata accessor for SingleDateFormatter);
          if (v86)
          {
            v76 = sub_1B73089CC(v73, v75);
          }

          else
          {
            v76 = sub_1B7308B54(v73, v75);
          }

          v49 = v76;
        }

        else
        {
          v49 = sub_1B767B6B0(v42, v86 & 1);
        }

        v69(v42, v57);
      }
    }
  }

  else
  {
    v50 = v90;
    sub_1B767D800(v41, v90, type metadata accessor for FormatterConfiguration);
    v51 = v89;
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v50, v51);
    *(v51 + *(v88 + 20)) = 0;
    v52 = FullDateFormatter.format(_:now:)(v28, v93);
    v54 = v53;
    sub_1B767D0B4(v51, type metadata accessor for FullDateFormatter);
    v49 = sub_1B7308B54(v52, v54);

    (*(v40 + 8))(v28, v97);
  }

  return v49;
}

uint64_t sub_1B767A000(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF988();
  sub_1B76827B4(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
  v14 = sub_1B7800808();
  result = 0;
  if (v14)
  {
    if (*(v2 + *(type metadata accessor for ShippedDateFormatter(0) + 20)) == 1)
    {
      if (sub_1B77FFB98())
      {
        return ShippedDateFormatter.yesterdayFormatter.getter();
      }

      if (sub_1B77FFB38())
      {
        return ShippedDateFormatter.todayFormatter.getter();
      }

      sub_1B767D800(v2, v7, type metadata accessor for FormatterConfiguration);
      v7[*(v5 + 20)] = 0;
      v16 = SingleDateFormatter.format(_:now:)(a1, a2);
      v18 = v23;
      v19 = type metadata accessor for SingleDateFormatter;
      v20 = v7;
    }

    else
    {
      sub_1B767D800(v2, v10, type metadata accessor for FormatterConfiguration);
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v10, v13);
      v13[*(v11 + 20)] = 0;
      v16 = FullDateFormatter.format(_:now:)(a1, a2);
      v18 = v17;
      v19 = type metadata accessor for FullDateFormatter;
      v20 = v13;
    }

    sub_1B767D0B4(v20, v19);
    v21._countAndFlagsBits = v16;
    v21._object = v18;
    countAndFlagsBits = ShippedDateFormatter.defaultFormatter(_:)(v21)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_1B767A2F4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF988();
  sub_1B76827B4(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
  v14 = sub_1B7800808();
  result = 0;
  if (v14)
  {
    if (*(v2 + *(type metadata accessor for DeliveryDateFormatter(0) + 20)) == 1)
    {
      if (sub_1B77FFB98())
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

      if (sub_1B77FFB38())
      {
        if (qword_1EDAF93A8 == -1)
        {
LABEL_10:
          v23 = qword_1EDAF93B0;
          v24 = sub_1B7800838();
          v25 = sub_1B7800838();
          v26 = sub_1B7800838();
          v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

          v28 = sub_1B7800868();
          return v28;
        }

LABEL_13:
        swift_once();
        goto LABEL_10;
      }

      sub_1B767D800(v2, v7, type metadata accessor for FormatterConfiguration);
      v7[*(v5 + 20)] = 0;
      v16 = SingleDateFormatter.format(_:now:)(a1, a2);
      v18 = v29;
      v19 = type metadata accessor for SingleDateFormatter;
      v20 = v7;
    }

    else
    {
      sub_1B767D800(v2, v10, type metadata accessor for FormatterConfiguration);
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v10, v13);
      v13[*(v11 + 20)] = 0;
      v16 = FullDateFormatter.format(_:now:)(a1, a2);
      v18 = v17;
      v19 = type metadata accessor for FullDateFormatter;
      v20 = v13;
    }

    sub_1B767D0B4(v20, v19);
    v21._countAndFlagsBits = v16;
    v21._object = v18;
    countAndFlagsBits = DeliveryDateFormatter.defaultFormatter(_:)(v21)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_1B767A75C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SingleDateFormatter();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF988();
  sub_1B76827B4(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
  v14 = sub_1B7800808();
  result = 0;
  if (v14)
  {
    if (*(v2 + *(type metadata accessor for PickedUpDateFormatter(0) + 20)) == 1)
    {
      if (sub_1B77FFB98())
      {
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }

      if (sub_1B77FFB38())
      {
        if (qword_1EDAF93A8 == -1)
        {
LABEL_10:
          v22 = qword_1EDAF93B0;
          v23 = sub_1B7800838();
          v24 = sub_1B7800838();
          v25 = sub_1B7800838();
          v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

          v27 = sub_1B7800868();
          return v27;
        }

LABEL_13:
        swift_once();
        goto LABEL_10;
      }

      sub_1B767D800(v2, v7, type metadata accessor for FormatterConfiguration);
      v7[*(v5 + 20)] = 0;
      v16 = SingleDateFormatter.format(_:now:)(a1, a2);
      v18 = v28;
      v19 = type metadata accessor for SingleDateFormatter;
      v20 = v7;
    }

    else
    {
      sub_1B767D800(v2, v10, type metadata accessor for FormatterConfiguration);
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v10, v13);
      v13[*(v11 + 20)] = 0;
      v16 = FullDateFormatter.format(_:now:)(a1, a2);
      v18 = v17;
      v19 = type metadata accessor for FullDateFormatter;
      v20 = v13;
    }

    sub_1B767D0B4(v20, v19);
    v21 = sub_1B72A0B14(v16, v18);

    return v21;
  }

  return result;
}

uint64_t sub_1B767ABC8(uint64_t a1, int a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_1B77FFC68();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndOfPickupWindowFormatter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v82 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v82 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v91 = &v82 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v82 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v82 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v86 = &v82 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v82 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v83 = &v82 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v97 = &v82 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v82 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v82 - v37;
  v39 = type metadata accessor for WeekdayCustomFormatter();
  v40 = (v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v89 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B767D800(v2, v89, type metadata accessor for FormatterConfiguration);
  sub_1B767D800(v2, v38, type metadata accessor for EndOfPickupWindowFormatter);
  v92 = v36;
  sub_1B767D800(v38, v36, type metadata accessor for EndOfPickupWindowFormatter);
  v42 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v43 = swift_allocObject();
  v87 = v43;
  *(v43 + 16) = a2;
  sub_1B7683770(v38, v43 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v3, v33, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v33, v97, type metadata accessor for EndOfPickupWindowFormatter);
  v44 = swift_allocObject();
  v85 = v44;
  *(v44 + 16) = a2;
  sub_1B7683770(v33, v44 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v45 = v83;
  sub_1B767D800(v3, v83, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v45, v98, type metadata accessor for EndOfPickupWindowFormatter);
  v46 = swift_allocObject();
  v84 = v46;
  *(v46 + 16) = a2;
  sub_1B7683770(v45, v46 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v47 = v86;
  sub_1B767D800(v3, v86, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v47, v99, type metadata accessor for EndOfPickupWindowFormatter);
  v48 = swift_allocObject();
  v83 = v48;
  *(v48 + 16) = a2;
  sub_1B7683770(v47, v48 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v49 = v88;
  sub_1B767D800(v3, v88, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v49, v100, type metadata accessor for EndOfPickupWindowFormatter);
  v50 = swift_allocObject();
  v86 = v50;
  *(v50 + 16) = a2;
  sub_1B7683770(v49, v50 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v51 = v91;
  sub_1B767D800(v3, v91, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v51, v101, type metadata accessor for EndOfPickupWindowFormatter);
  v52 = swift_allocObject();
  *(v52 + 16) = a2;
  sub_1B7683770(v51, v52 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v53 = v3;
  v54 = v90;
  sub_1B767D800(v53, v90, type metadata accessor for EndOfPickupWindowFormatter);
  sub_1B767D800(v54, v102, type metadata accessor for EndOfPickupWindowFormatter);
  v55 = swift_allocObject();
  LODWORD(v91) = a2;
  *(v55 + 16) = a2;
  sub_1B7683770(v54, v55 + v42, type metadata accessor for EndOfPickupWindowFormatter);
  v56 = v89;
  v57 = (v89 + v40[7]);
  v58 = v87;
  *v57 = sub_1B76837D8;
  v57[1] = v58;
  v59 = (v56 + v40[8]);
  v60 = v84;
  v61 = v85;
  *v59 = sub_1B7683804;
  v59[1] = v61;
  v62 = (v56 + v40[9]);
  *v62 = sub_1B7683830;
  v62[1] = v60;
  v63 = (v56 + v40[10]);
  v64 = v83;
  *v63 = sub_1B768385C;
  v63[1] = v64;
  v65 = (v56 + v40[11]);
  v66 = v86;
  *v65 = sub_1B7683888;
  v65[1] = v66;
  v67 = (v56 + v40[12]);
  *v67 = sub_1B76838B4;
  v67[1] = v52;
  v68 = (v56 + v40[13]);
  *v68 = sub_1B7683A4C;
  v68[1] = v55;
  type metadata accessor for FormatterConfiguration();
  v70 = v93;
  v69 = v94;
  v71 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x1E6969AB0], v95);
  v72 = sub_1B77FFC78();
  (*(v69 + 8))(v70, v71);
  if (v72 == 1)
  {
    sub_1B767D0B4(v102, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v101, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v100, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v99, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v98, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v97, type metadata accessor for EndOfPickupWindowFormatter);
    v73 = v92;
    v74 = sub_1B7680C60(v91 & 1);
LABEL_7:
    v80 = v74;
LABEL_8:
    sub_1B767D0B4(v73, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v56, type metadata accessor for WeekdayCustomFormatter);
    return v80;
  }

  v73 = v97;
  v75 = v98;
  v77 = v99;
  v76 = v100;
  v78 = v101;
  v79 = v102;
  sub_1B767D0B4(v92, type metadata accessor for EndOfPickupWindowFormatter);
  if (v72 == 2)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v77, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v75, type metadata accessor for EndOfPickupWindowFormatter);
    v74 = sub_1B7680EE8(v91 & 1);
    goto LABEL_7;
  }

  sub_1B767D0B4(v73, type metadata accessor for EndOfPickupWindowFormatter);
  v73 = v75;
  if (v72 == 3)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v77, type metadata accessor for EndOfPickupWindowFormatter);
    v74 = sub_1B7681170(v91 & 1);
    goto LABEL_7;
  }

  sub_1B767D0B4(v75, type metadata accessor for EndOfPickupWindowFormatter);
  if (v72 == 4)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfPickupWindowFormatter);
    v80 = sub_1B76813F8(v91 & 1);
    v73 = v77;
    goto LABEL_8;
  }

  sub_1B767D0B4(v77, type metadata accessor for EndOfPickupWindowFormatter);
  if (v72 == 5)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfPickupWindowFormatter);
    v80 = sub_1B7681680(v91 & 1);
    v73 = v76;
    goto LABEL_8;
  }

  sub_1B767D0B4(v76, type metadata accessor for EndOfPickupWindowFormatter);
  if (v72 == 6)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
    v80 = sub_1B7681908(v91 & 1);
    v73 = v78;
    goto LABEL_8;
  }

  sub_1B767D0B4(v78, type metadata accessor for EndOfPickupWindowFormatter);
  if (v72 == 7)
  {
    v80 = sub_1B7681B90(v91 & 1);
    v73 = v79;
    goto LABEL_8;
  }

  sub_1B767D0B4(v79, type metadata accessor for EndOfPickupWindowFormatter);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B767B6B0(uint64_t a1, int a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_1B77FFC68();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndOfDeliveryWindowFormatter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v82 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v82 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v91 = &v82 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v82 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v82 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v86 = &v82 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v82 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v83 = &v82 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v97 = &v82 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v82 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v82 - v37;
  v39 = type metadata accessor for WeekdayCustomFormatter();
  v40 = (v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v89 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B767D800(v2, v89, type metadata accessor for FormatterConfiguration);
  sub_1B767D800(v2, v38, type metadata accessor for EndOfDeliveryWindowFormatter);
  v92 = v36;
  sub_1B767D800(v38, v36, type metadata accessor for EndOfDeliveryWindowFormatter);
  v42 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v43 = swift_allocObject();
  v87 = v43;
  *(v43 + 16) = a2;
  sub_1B7683770(v38, v43 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v3, v33, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v33, v97, type metadata accessor for EndOfDeliveryWindowFormatter);
  v44 = swift_allocObject();
  v85 = v44;
  *(v44 + 16) = a2;
  sub_1B7683770(v33, v44 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v45 = v83;
  sub_1B767D800(v3, v83, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v45, v98, type metadata accessor for EndOfDeliveryWindowFormatter);
  v46 = swift_allocObject();
  v84 = v46;
  *(v46 + 16) = a2;
  sub_1B7683770(v45, v46 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v47 = v86;
  sub_1B767D800(v3, v86, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v47, v99, type metadata accessor for EndOfDeliveryWindowFormatter);
  v48 = swift_allocObject();
  v83 = v48;
  *(v48 + 16) = a2;
  sub_1B7683770(v47, v48 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v49 = v88;
  sub_1B767D800(v3, v88, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v49, v100, type metadata accessor for EndOfDeliveryWindowFormatter);
  v50 = swift_allocObject();
  v86 = v50;
  *(v50 + 16) = a2;
  sub_1B7683770(v49, v50 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v51 = v91;
  sub_1B767D800(v3, v91, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v51, v101, type metadata accessor for EndOfDeliveryWindowFormatter);
  v52 = swift_allocObject();
  *(v52 + 16) = a2;
  sub_1B7683770(v51, v52 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v53 = v3;
  v54 = v90;
  sub_1B767D800(v53, v90, type metadata accessor for EndOfDeliveryWindowFormatter);
  sub_1B767D800(v54, v102, type metadata accessor for EndOfDeliveryWindowFormatter);
  v55 = swift_allocObject();
  LODWORD(v91) = a2;
  *(v55 + 16) = a2;
  sub_1B7683770(v54, v55 + v42, type metadata accessor for EndOfDeliveryWindowFormatter);
  v56 = v89;
  v57 = (v89 + v40[7]);
  v58 = v87;
  *v57 = sub_1B768363C;
  v57[1] = v58;
  v59 = (v56 + v40[8]);
  v60 = v84;
  v61 = v85;
  *v59 = sub_1B7683668;
  v59[1] = v61;
  v62 = (v56 + v40[9]);
  *v62 = sub_1B7683694;
  v62[1] = v60;
  v63 = (v56 + v40[10]);
  v64 = v83;
  *v63 = sub_1B76836C0;
  v63[1] = v64;
  v65 = (v56 + v40[11]);
  v66 = v86;
  *v65 = sub_1B76836EC;
  v65[1] = v66;
  v67 = (v56 + v40[12]);
  *v67 = sub_1B7683718;
  v67[1] = v52;
  v68 = (v56 + v40[13]);
  *v68 = sub_1B7683744;
  v68[1] = v55;
  type metadata accessor for FormatterConfiguration();
  v70 = v93;
  v69 = v94;
  v71 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x1E6969AB0], v95);
  v72 = sub_1B77FFC78();
  (*(v69 + 8))(v70, v71);
  if (v72 == 1)
  {
    sub_1B767D0B4(v102, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v101, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v100, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v99, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v98, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v97, type metadata accessor for EndOfDeliveryWindowFormatter);
    v73 = v92;
    v74 = sub_1B7680DA4(v91 & 1);
LABEL_7:
    v80 = v74;
LABEL_8:
    sub_1B767D0B4(v73, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v56, type metadata accessor for WeekdayCustomFormatter);
    return v80;
  }

  v73 = v97;
  v75 = v98;
  v77 = v99;
  v76 = v100;
  v78 = v101;
  v79 = v102;
  sub_1B767D0B4(v92, type metadata accessor for EndOfDeliveryWindowFormatter);
  if (v72 == 2)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v77, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v75, type metadata accessor for EndOfDeliveryWindowFormatter);
    v74 = sub_1B768102C(v91 & 1);
    goto LABEL_7;
  }

  sub_1B767D0B4(v73, type metadata accessor for EndOfDeliveryWindowFormatter);
  v73 = v75;
  if (v72 == 3)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v77, type metadata accessor for EndOfDeliveryWindowFormatter);
    v74 = sub_1B76812B4(v91 & 1);
    goto LABEL_7;
  }

  sub_1B767D0B4(v75, type metadata accessor for EndOfDeliveryWindowFormatter);
  if (v72 == 4)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v76, type metadata accessor for EndOfDeliveryWindowFormatter);
    v80 = sub_1B768153C(v91 & 1);
    v73 = v77;
    goto LABEL_8;
  }

  sub_1B767D0B4(v77, type metadata accessor for EndOfDeliveryWindowFormatter);
  if (v72 == 5)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
    sub_1B767D0B4(v78, type metadata accessor for EndOfDeliveryWindowFormatter);
    v80 = sub_1B76817C4(v91 & 1);
    v73 = v76;
    goto LABEL_8;
  }

  sub_1B767D0B4(v76, type metadata accessor for EndOfDeliveryWindowFormatter);
  if (v72 == 6)
  {
    sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
    v80 = sub_1B7681A4C(v91 & 1);
    v73 = v78;
    goto LABEL_8;
  }

  sub_1B767D0B4(v78, type metadata accessor for EndOfDeliveryWindowFormatter);
  if (v72 == 7)
  {
    v80 = sub_1B7681CD4(v91 & 1);
    v73 = v79;
    goto LABEL_8;
  }

  sub_1B767D0B4(v79, type metadata accessor for EndOfDeliveryWindowFormatter);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B767C198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD20);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = &v29 + *(v16 + 56) - v17;
  sub_1B7205588(a1, &v29 - v17, &qword_1EB990820);
  sub_1B7205588(a2, v19, &qword_1EB990820);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B7205588(v18, v14, &qword_1EB990820);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_11;
    }

    v23 = *v14 == *v19;
LABEL_9:
    sub_1B7205418(v18, &qword_1EB990820);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B7205588(v18, v9, &qword_1EB990820);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v31 + 8))(v9, v32);
      goto LABEL_11;
    }

    v25 = v30;
    v24 = v31;
    v26 = v32;
    (*(v31 + 32))(v30, v19, v32);
    v23 = sub_1B77FF918();
    v27 = *(v24 + 8);
    v27(v25, v26);
    v27(v9, v26);
    goto LABEL_9;
  }

  sub_1B7205588(v18, v12, &qword_1EB990820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:
    sub_1B7205418(v18, &qword_1EB99AD20);
    v23 = 0;
    return v23 & 1;
  }

  v21 = *v12 == *v19;
  v22 = v19[1] ^ v12[1] ^ 1;
  sub_1B7205418(v18, &qword_1EB990820);
  v23 = v21 & v22;
  return v23 & 1;
}

uint64_t sub_1B767C508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD30);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_1B7205588(a1, &v27 - v17, &qword_1EB990808);
  sub_1B7205588(a2, &v18[v19], &qword_1EB990808);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B7205588(v18, v14, &qword_1EB990808);
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = *v14 == v18[v19];
      goto LABEL_9;
    }

LABEL_11:
    sub_1B7205418(v18, &qword_1EB99AD30);
    v21 = 0;
    return v21 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B7205588(v18, v9, &qword_1EB990808);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = v28;
      v22 = v29;
      v24 = v30;
      (*(v29 + 32))(v28, &v18[v19], v30);
      v21 = sub_1B77FF918();
      v25 = *(v22 + 8);
      v25(v23, v24);
      v25(v9, v24);
      goto LABEL_9;
    }

    (*(v29 + 8))(v9, v30);
    goto LABEL_11;
  }

  sub_1B7205588(v18, v12, &qword_1EB990808);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_11;
  }

  v21 = sub_1B78022D8();
LABEL_9:
  sub_1B7205418(v18, &qword_1EB990808);
  return v21 & 1;
}

uint64_t sub_1B767C888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = sub_1B77FF988();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v41 = a5;
  v42 = a6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v37 - v24;
  v26 = *(v23 + 56);
  sub_1B7205588(a1, &v37 - v24, a3);
  sub_1B7205588(a2, &v25[v26], a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B7205588(v25, v21, a3);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = v25[v26];
      v29 = *v21;
      goto LABEL_7;
    }

LABEL_12:
    sub_1B7205418(v25, v41);
    v30 = 0;
    return v30 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B7205588(v25, v16, a3);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v39;
      v31 = v40;
      v33 = &v25[v26];
      v34 = v38;
      (*(v39 + 32))(v38, v33, v40);
      v30 = sub_1B77FF918();
      v35 = *(v32 + 8);
      v35(v34, v31);
      v35(v16, v31);
      goto LABEL_10;
    }

    (*(v39 + 8))(v16, v40);
    goto LABEL_12;
  }

  sub_1B7205588(v25, v19, a3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_12;
  }

  v28 = v25[v26];
  v29 = *v19;
LABEL_7:
  v30 = v29 == v28;
LABEL_10:
  sub_1B7205418(v25, a3);
  return v30 & 1;
}

uint64_t Order.ShippingFulfillment.StatusValues.init(displayStatus:deliveryWindow:deliveryDate:shippedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v10 = v9[5];
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = sub_1B77FF988();
  v14 = *(*(v13 - 8) + 56);
  v14(a5 + v12, 1, 1, v13);
  v15 = v9[7];
  v14(a5 + v15, 1, 1, v13);
  sub_1B767D044(a1, a5);
  sub_1B7213740(a2, a5 + v10, &qword_1EB990828);
  sub_1B7213740(a3, a5 + v12, &qword_1EB98EBD0);
  return sub_1B7213740(a4, a5 + v15, &qword_1EB98EBD0);
}

uint64_t sub_1B767D044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B767D0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B767D13C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DeliveryDateFormatter(0);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v15 + 24), v10, &qword_1EB98EBD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB98EBD0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = v21;
    sub_1B767D800(v21, v5, type metadata accessor for FormatterConfiguration);
    LOBYTE(v17) = *(v17 + *(type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0) + 24));
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v5, v7);
    v7[*(v20 + 20)] = v17;
    v18 = sub_1B767A2F4(v14, v22);
    (*(v12 + 8))(v14, v11);
    sub_1B767D0B4(v7, type metadata accessor for DeliveryDateFormatter);
    return v18;
  }
}

uint64_t sub_1B767D438(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ShippedDateFormatter(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v16 + 28), v11, &qword_1EB98EBD0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = &qword_1EB98EBD0;
    v18 = v11;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1B7205588(a1, v8, &qword_1EB990820);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v8[1];
      v21 = v27;
      v20 = v28;
      sub_1B767D800(v28, v27, type metadata accessor for FormatterConfiguration);
      LOBYTE(v20) = *(v20 + *(type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0) + 24));
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v21, v5);
      v22 = v26;
      v5[*(v26 + 20)] = v20;
      v5[*(v22 + 24)] = v19;
      v23 = sub_1B767A000(v15, v30);
      (*(v13 + 8))(v15, v12);
      sub_1B767D0B4(v5, type metadata accessor for ShippedDateFormatter);
      return v23;
    }

    (*(v13 + 8))(v15, v12);
    v17 = &qword_1EB990820;
    v18 = v8;
  }

  sub_1B7205418(v18, v17);
  return 0;
}

uint64_t sub_1B767D800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DeliveryDateFormatter.init(configuration:useRelativeDateFormatting:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A2B9C(a1, a3);
  result = type metadata accessor for DeliveryDateFormatter(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ShippedDateFormatter.init(configuration:useRelativeDateFormatting:shippingType:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A2B9C(a1, a4);
  result = type metadata accessor for ShippedDateFormatter(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_1B767D97C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B767D9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76833E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B767DA18(uint64_t a1)
{
  v2 = sub_1B7682760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767DA54(uint64_t a1)
{
  v2 = sub_1B7682760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingFulfillment.StatusFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682760();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
    v8[13] = 2;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.ShippingFulfillment.StatusFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t Order.ShippingFulfillment.StatusFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t Order.ShippingFulfillment.StatusFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABC8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682760();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
  v14 = v19;
  sub_1B7801E48();
  sub_1B7683770(v20, v13, type metadata accessor for FormatterConfiguration);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1B7801E08() & 1;
  v21 = 2;
  v15 = sub_1B7801E08();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15 & 1;
  sub_1B767D800(v13, v17, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B767D0B4(v13, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
}

uint64_t sub_1B767E2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.ShippingFulfillment.StatusFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B767E2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.ShippingFulfillment.StatusFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B767E3FC()
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t sub_1B767E55C()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t DeliveryDateFormatter.useRelativeDateFormatting.setter(char a1)
{
  result = type metadata accessor for DeliveryDateFormatter(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeliveryDateFormatter.yesterdayFormatter.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t DeliveryDateFormatter.todayFormatter.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

Swift::String __swiftcall DeliveryDateFormatter.defaultFormatter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1B721FF04();
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;
  v4 = qword_1EDAF93A8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDAF93B0;
  v6 = sub_1B7800838();
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_1B7800868();
  v10 = sub_1B78008A8();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}