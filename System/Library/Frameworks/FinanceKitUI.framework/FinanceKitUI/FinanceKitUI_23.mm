void sub_238694414(uint64_t a1, id *a2)
{
  sub_238759780();
  v5 = [swift_getObjCClassFromMetadata() entityName];
  if (!v5)
  {
    sub_23875EA80();
    v5 = sub_23875EA50();
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632E0;
  *(v7 + 32) = MEMORY[0x23EE5E1A0](a1);
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v7 + 40) = sub_23875EF80();
  *(v7 + 48) = sub_23875EF80();
  v8 = sub_23875EC60();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  [v6 setFetchLimit_];
  v10 = sub_23875F140();
  if (v2)
  {
    goto LABEL_13;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  v13 = v10;
  v14 = sub_23875F3A0();
  v10 = v13;
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EE63F70](0);
    goto LABEL_9;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_9:
    v12 = v11;

LABEL_12:
    v6 = *a2;
    *a2 = v12;
LABEL_13:

    return;
  }

  __break(1u);
}

uint64_t sub_2386946A8@<X0>(uint64_t a1@<X8>)
{
  sub_23875BC30();
  v2 = *(type metadata accessor for ConnectedCardsTimelineEntry(0) + 20);
  v3 = type metadata accessor for WidgetAccount(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_238694724(uint64_t a1, void *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = *v2;
  *(v3 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_238694754, 0, 0);
}

uint64_t sub_238694754()
{
  v7 = v0;
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  v6 = v0[5];
  sub_238691AF0(&v6, v2, v1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2386947C0(uint64_t a1, uint64_t *a2)
{
  v7 = *v2;
  v6 = v2[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238449A7C;

  return sub_238692368(a1, a2, v8, v7, v6);
}

uint64_t sub_23869487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3E60] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return MEMORY[0x282136598](a1, a2, a3);
}

uint64_t sub_238694930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3E68] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238449A7C;

  return MEMORY[0x2821365B0](a1, a2, a3);
}

uint64_t sub_2386949E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238694A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238694AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_238694B10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_238694414(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_238694B30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_238694B94(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23869311C(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_238694BB4()
{
  v0 = sub_23875B750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BD20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23875EA40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875B770();
  __swift_allocate_value_buffer(v9, qword_27DF136B8);
  __swift_project_value_buffer(v9, qword_27DF136B8);
  sub_23875E9F0();
  sub_23875BCD0();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23875B780();
}

uint64_t static SmallWalletCardsBalanceWidgetConfiguration.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DF08D60 != -1)
  {
    swift_once();
  }

  v2 = sub_23875B770();
  v3 = __swift_project_value_buffer(v2, qword_27DF136B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SmallWalletCardsBalanceWidgetConfiguration.init()@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v28 = sub_238757640();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136D0, &unk_23877D800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136A8, &unk_23877D7A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136D8, &qword_23877D810);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v27 - v18;
  v20 = sub_23875B770();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136E0, &qword_23877D818);
  sub_23875B740();
  (*(v21 + 56))(v19, 1, 1, v20);
  v23 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_2387575C0();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v8, 1, 1, v24);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v28);
  sub_23869526C();
  sub_23869816C(&qword_27DF136F0, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
  result = sub_2387575F0();
  *v29 = result;
  return result;
}

uint64_t type metadata accessor for WalletCardsBalanceWidgetAccountEntity()
{
  result = qword_27DF13790;
  if (!qword_27DF13790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23869526C()
{
  result = qword_27DF136E8;
  if (!qword_27DF136E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF136E8);
  }

  return result;
}

uint64_t sub_2386952E0()
{
  v1 = *(v0 + 16);
  sub_2387575D0();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_238695348()
{
  result = qword_27DF136F8;
  if (!qword_27DF136F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF136F8);
  }

  return result;
}

unint64_t sub_23869539C()
{
  result = qword_27DF13708;
  if (!qword_27DF13708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13710, qword_23877D828);
    sub_23869816C(&qword_27DF13700, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13708);
  }

  return result;
}

void sub_238695450(id *a1)
{
  v1 = [*a1 id];
  sub_23875BC90();
}

uint64_t sub_2386954B0(uint64_t *a1)
{
  *a1 = sub_238697434();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_238695538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238449A7C;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_2386955F0()
{
  result = qword_2814F09E0;
  if (!qword_2814F09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09E0);
  }

  return result;
}

unint64_t sub_238695648()
{
  result = qword_2814F09D0;
  if (!qword_2814F09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09D0);
  }

  return result;
}

unint64_t sub_2386956A0()
{
  result = qword_2814F09E8;
  if (!qword_2814F09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09E8);
  }

  return result;
}

uint64_t sub_2386957D0(uint64_t a1)
{
  v2 = sub_2386955F0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_238695810()
{
  result = qword_27DF13718;
  if (!qword_27DF13718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13718);
  }

  return result;
}

unint64_t sub_238695868()
{
  result = qword_27DF13720;
  if (!qword_27DF13720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13720);
  }

  return result;
}

uint64_t sub_238695904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136D8, &qword_23877D810);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_23875B770();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_238757670();
  __swift_allocate_value_buffer(v7, qword_27DF2F900);
  __swift_project_value_buffer(v7, qword_27DF2F900);
  sub_23875B740();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_238757660();
}

uint64_t sub_238695A70()
{
  sub_238758890();
  sub_238758880();
  v0 = sub_238758870();

  qword_27DF2F918 = v0;
  return result;
}

uint64_t sub_238695AB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137A0, qword_23877DE08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136D8, &qword_23877D810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_23875B770();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_23875EA30();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_23875EA20();
  sub_23875EA10();
  v14 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  v15 = (v0 + *(v14 + 24));
  v16 = *v15;
  v17 = v15[1];
  sub_23875EA00();
  sub_23875EA10();
  v18 = (v0 + *(v14 + 28));
  v19 = *v18;
  v20 = v18[1];
  sub_23875EA00();
  sub_23875EA10();
  sub_23875B760();
  (*(v10 + 56))(v8, 1, 1, v9);
  v21 = sub_238757600();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  return sub_238757610();
}

void sub_238695D34(void *a1@<X0>, size_t *a2@<X8>)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23875C1E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentQueryGenerationToken];
  v37[0] = 0;
  v11 = [a1 setQueryGenerationFromToken:v10 error:v37];

  v12 = v37[0];
  if (v11)
  {
    v33 = v6;
    v34 = v5;
    v36 = a2;
    sub_238759780();
    v35 = v2;
    v13 = v12;
    v14 = sub_238759710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2387632E0;
    sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
    *(v15 + 32) = sub_23875EF80();
    *(v15 + 40) = sub_23875EF80();

    sub_2384A5014(v16);

    v17 = sub_238759730();

    *(v15 + 48) = v17;
    v18 = sub_23875EC60();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v14 setPredicate_];
    v20 = v35;
    v21 = sub_23875F140();
    if (v20)
    {
      sub_23875C120();
      v22 = v20;
      v23 = sub_23875C1B0();
      v24 = sub_23875EFE0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_2383F8000, v23, v24, "Error fetching accounts for BankConnectWidgetQuery: %@", v25, 0xCu);
        sub_238439884(v26, &qword_27DF09930, &unk_2387638C0);
        MEMORY[0x23EE64DF0](v26, -1, -1);
        MEMORY[0x23EE64DF0](v25, -1, -1);
      }

      else
      {
      }

      v31 = v36;
      (*(v33 + 8))(v9, v34);
      v30 = MEMORY[0x277D84F90];
    }

    else
    {
      v30 = sub_238697E04(v21);

      v31 = v36;
    }

    *v31 = v30;
  }

  else
  {
    v29 = v37[0];
    sub_23875B730();

    swift_willThrow();
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238696160@<X0>(uint64_t *a1@<X8>)
{
  sub_238758890();
  sub_238758880();
  v2 = sub_238758870();

  *a1 = v2;
  return result;
}

uint64_t sub_2386961B0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2386961D4, 0, 0);
}

uint64_t sub_2386961D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_238758010();
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13710, qword_23877D828);
  sub_23875F120();

  v6 = v0[1];
  v5 = v0[2];

  return v6(v5);
}

uint64_t sub_2386962F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_2386963A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238580A3C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_23869646C()
{
  result = qword_27DF13728;
  if (!qword_27DF13728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13728);
  }

  return result;
}

uint64_t sub_2386964C0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_238696704();
  *v6 = v2;
  v6[1] = sub_238449A7C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_238696574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_238696704()
{
  result = qword_27DF13748;
  if (!qword_27DF13748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13748);
  }

  return result;
}

uint64_t sub_238696764@<X0>(void *a1@<X8>)
{
  if (qword_27DF08D70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27DF2F918;
}

uint64_t sub_23869681C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875BCB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23869694C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_238696A38(uint64_t a1)
{
  v2 = sub_23869816C(&qword_27DF136F0, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_238696B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_238449A7C;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_238696BC4(uint64_t a1)
{
  v2 = sub_23869816C(&qword_27DF13760, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_238696D40()
{
  result = sub_23875BCB0();
  if (v1 <= 0x3F)
  {
    result = sub_23875A9F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_238696DD4(size_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_238695D34(*(v1 + 16), a1);
}

uint64_t sub_238696DF4(uint64_t a1)
{
  v2 = sub_238759970();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875A9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875C1E0();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_238758BB0();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v50 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v44 = &v42 - v19;
  sub_238759860();

  v52 = sub_238759850();
  sub_23875C160();
  v20 = *(v6 + 16);
  v51 = a1;
  v21 = v5;
  v20(v9, a1, v5);
  v22 = sub_23875C1B0();
  v23 = sub_23875F000();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v10;
    v54 = v42;
    *v24 = 136315138;
    sub_23869816C(&qword_27DF0E960, MEMORY[0x277CC8058]);
    v25 = sub_23875F600();
    v27 = v26;
    (*(v6 + 8))(v9, v21);
    v28 = sub_2384615AC(v25, v27, &v54);
    v29 = v53;

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2383F8000, v22, v23, "Getting consent granting access to %s", v24, 0xCu);
    v30 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v10 = v43;
    MEMORY[0x23EE64DF0](v30, -1, -1);
    MEMORY[0x23EE64DF0](v24, -1, -1);

    v31 = v29;
  }

  else
  {

    (*(v6 + 8))(v9, v21);
    v31 = v53;
  }

  (*(v31 + 8))(v14, v10);
  v32 = v50;
  sub_238759840();
  v33 = v44;
  v34 = v45;
  v35 = v32;
  v36 = v46;
  (*(v45 + 32))(v44, v35, v46);
  v37 = v47;
  sub_238758B70();

  (*(v34 + 8))(v33, v36);
  v39 = v48;
  v38 = v49;
  v40 = (*(v48 + 88))(v37, v49);
  if (v40 == *MEMORY[0x277CC7B60])
  {
    return 1;
  }

  if (v40 != *MEMORY[0x277CC7B68])
  {
    (*(v39 + 8))(v37, v38);
  }

  return 0;
}

uint64_t sub_238697434()
{
  v1 = sub_23875C1E0();
  v80 = *(v1 - 8);
  v81 = v1;
  v2 = *(v80 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_238757FC0();
  v78 = *(v66 - 8);
  v5 = v78[8];
  MEMORY[0x28223BE20](v66);
  v73 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_23875A9F0();
  v68 = *(v71 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136A8, &unk_23877D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v62 - v11;
  v72 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  v69 = *(v72 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = v62 - v16;
  sub_238759780();
  v17 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238763E60;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v18 + 32) = sub_23875EF80();
  *(v18 + 40) = sub_23875EF80();
  v19 = sub_23875EC60();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v17 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath();
  *(v21 + 32) = sub_23875F040();
  v22 = sub_23875EC60();

  [v17 setSortDescriptors_];

  v23 = sub_238758890();
  v82 = sub_238758880();
  v24 = sub_238758A30();

  v65 = v17;
  v25 = sub_23875F140();
  if (v0)
  {

    sub_23875C120();
    v26 = v0;
    v27 = sub_23875C1B0();
    v28 = sub_23875EFE0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v0;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_2383F8000, v27, v28, "Failed to fetch connected accounts: %@", v29, 0xCu);
      sub_238439884(v30, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v30, -1, -1);
      MEMORY[0x23EE64DF0](v29, -1, -1);
    }

    (*(v80 + 8))(v4, v81);
    return MEMORY[0x277D84F90];
  }

  v34 = v25;
  v35 = v68;
  v36 = v78;
  v62[1] = 0;

  v77 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  if (v34 >> 62)
  {
    result = sub_23875F3A0();
  }

  else
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v72;
  v38 = v70;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v35;
    v40 = 0;
    v79 = v34 & 0xC000000000000001;
    v68 = v39 + 8;
    v81 = (v69 + 56);
    v63 = (v36 + 1);
    v64 = (v69 + 48);
    v78 = MEMORY[0x277D84F90];
    v74 = v34;
    v80 = result;
    while (1)
    {
      if (v79)
      {
        v41 = MEMORY[0x23EE63F70](v40, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = [v41 externalAccountId];
      if (v43)
      {
        v44 = v43;
        v45 = v23;
        v46 = [v77 passWithFPANIdentifier_];

        if (v46)
        {
          sub_2387596D0();
          sub_238758880();
          sub_238758870();

          v47 = sub_238696DF4(v38);

          (*v68)(v38, v71);
          if (v47)
          {
            v48 = [v46 localizedDescription];
            v67 = sub_23875EA80();
            v50 = v49;

            sub_238759760();
            v37 = v72;
            v51 = &v12[*(v72 + 20)];
            sub_2387596D0();
            sub_238759720();
            v52 = sub_238757FB0();
            v54 = v53;

            (*v63)(v73, v66);
            v55 = &v12[*(v37 + 24)];
            *v55 = v67;
            v55[1] = v50;
            v56 = &v12[*(v37 + 28)];
            *v56 = v52;
            v56[1] = v54;
            (*v81)(v12, 0, 1, v37);
LABEL_24:
            v57 = v75;
            sub_238698030(v12, v75);
            sub_2386980AC(v57, v76);
            v58 = v78;
            v23 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_238498B20(0, v58[2] + 1, 1, v58);
            }

            v34 = v74;
            v60 = v58[2];
            v59 = v58[3];
            v78 = v58;
            if (v60 >= v59 >> 1)
            {
              v78 = sub_238498B20(v59 > 1, v60 + 1, 1, v78);
            }

            sub_238698110(v75);
            v61 = v78;
            v78[2] = v60 + 1;
            sub_238698030(v76, v61 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v60);
            v38 = v70;
            goto LABEL_12;
          }

          v37 = v72;
          (*v81)(v12, 1, 1, v72);

          if ((*v64)(v12, 1, v37) != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {

          (*v81)(v12, 1, 1, v37);
        }

        v23 = v45;
        v34 = v74;
      }

      else
      {

        (*v81)(v12, 1, 1, v37);
      }

      sub_238439884(v12, &qword_27DF136A8, &unk_23877D7A0);
LABEL_12:
      if (v80 == ++v40)
      {
        goto LABEL_30;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_30:

  return v78;
}

size_t sub_238697E04(unint64_t a1)
{
  v2 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  v29 = *(v2 - 1);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_23875F3A0();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = MEMORY[0x277D84F90];
  result = sub_2385FEFA0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v30;
    v10 = a1;
    v26 = a1 & 0xC000000000000001;
    v27 = v6;
    v28 = a1;
    do
    {
      if (v26)
      {
        v11 = MEMORY[0x23EE63F70](v9, v10);
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
      }

      v12 = v11;
      sub_238759760();
      v13 = &v5[v2[5]];
      sub_2387596D0();
      v14 = sub_238759700();
      v16 = v15;
      v17 = [v12 accountNumberValue];
      v18 = sub_23875EA80();
      v20 = v19;

      v21 = &v5[v2[6]];
      *v21 = v14;
      v21[1] = v16;
      v22 = &v5[v2[7]];
      *v22 = v18;
      v22[1] = v20;
      v30 = v7;
      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2385FEFA0(v23 > 1, v24 + 1, 1);
        v7 = v30;
      }

      ++v9;
      *(v7 + 16) = v24 + 1;
      sub_238698030(v5, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24);
      v10 = v28;
    }

    while (v27 != v9);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_238698030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386980AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238698110(uint64_t a1)
{
  v2 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23869816C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386981C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_238698290;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_238698358;
  v4[3] = &block_descriptor_16;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_27DF137A8 = v2;
  return result;
}

id sub_238698290(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemGroupedBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2386982FC()
{
  if (qword_27DF08D78 != -1)
  {
    swift_once();
  }

  v0 = qword_27DF137A8;
  result = sub_23875DFB0();
  qword_27DF2F920 = result;
  return result;
}

id sub_238698358(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2386983D8@<D0>(_OWORD *a1@<X8>)
{
  sub_2384D5B2C();
  sub_23875CDC0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_238698428(__int128 *a1)
{
  v2 = *a1;
  sub_2384D5B2C();
  return sub_23875CDD0();
}

uint64_t static FKOrderTrackingSettingsViewControllerProvider.makeViewController()()
{
  v0 = type metadata accessor for OrderTrackingSettingsView.Model();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23869894C();
  sub_23869ACEC(&qword_27DF137B0, type metadata accessor for OrderTrackingSettingsView.Model);
  sub_23875C7A0();
  swift_getKeyPath();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137B8, &qword_23877DE88));
  return sub_23875D080();
}

uint64_t OrderTrackingSettingsView.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OrderTrackingSettingsView.Model();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23869894C();
  sub_23869ACEC(&qword_27DF137B0, type metadata accessor for OrderTrackingSettingsView.Model);
  *a1 = sub_23875C7A0();
  *(a1 + 8) = v5;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t type metadata accessor for OrderTrackingSettingsView.Model()
{
  result = qword_27DF13818;
  if (!qword_27DF13818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

FKOrderTrackingSettingsViewControllerProvider __swiftcall FKOrderTrackingSettingsViewControllerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2386988E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23869894C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isOrderTrackingEnabled;
  v12[15] = 0;
  sub_23875C290();
  v7 = *(v2 + 32);
  v7(v0 + v6, v5, v1);
  v8 = OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isExtractedOrderTrackingEnabled;
  v12[14] = 0;
  sub_23875C290();
  v7(v0 + v8, v5, v1);
  v9 = OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isAutomaticOrderIngestionEnabled;
  v12[13] = 0;
  sub_23875C290();
  v7(v0 + v9, v5, v1);
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v10 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model_cancellableSet) = v10;
  return v0;
}

uint64_t sub_238698AF8()
{
  v1[2] = v0;
  v2 = sub_23875C1E0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_23875BD20();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_23875ED50();
  v1[9] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v1[10] = v9;
  v1[11] = v8;

  return MEMORY[0x2822009F8](sub_238698C48, v9, v8);
}

uint64_t sub_238698C48()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_2387579D0();
  *(v0 + 96) = sub_2387579A0();
  v3 = PKOrderManagementDisabled() ^ 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v3;

  sub_23875C2E0();
  sub_23875BCC0();
  v4 = *(MEMORY[0x277CC6730] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_238698D6C;
  v6 = *(v0 + 64);

  return MEMORY[0x282116E20](v6);
}

uint64_t sub_238698D6C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 116) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_238698EF8, v8, v7);
}

uint64_t sub_238698EF8()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 113) = v1;

  sub_23875C2E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (*(v0 + 114) == 1)
  {
    v4 = *(v0 + 96);
    LOBYTE(v4) = sub_238757910();
    v5 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 115) = v4 & 1;

    sub_23875C2E0();
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  sub_2386991A8();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2386991A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13828, &qword_23877E0C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v7 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v8 = OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model_cancellableSet;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = v7;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  sub_23875C2A0();
  swift_endAccess();
  sub_23843A3E8(&qword_27DF13830, &qword_27DF13828, &qword_23877E0C8);
  sub_23875C360();
  v10 = *(v3 + 8);
  v10(v6, v2);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v12[0] == 1)
  {
    swift_beginAccess();
    sub_23875C2A0();
    swift_endAccess();
    sub_23875C360();
    v10(v6, v2);
    swift_beginAccess();
    sub_23875C210();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_2386994B0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PKSetOrderManagementDisabled();
}

uint64_t sub_23869954C(unsigned __int8 *a1)
{
  v2 = sub_23875C1E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387579D0();
  sub_2387579A0();
  sub_23875BBF0();
  sub_238757960();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_238699874()
{
  v1 = OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isOrderTrackingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isExtractedOrderTrackingEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model__isAutomaticOrderIngestionEnabled, v2);
  v4 = *(v0 + OBJC_IVAR____TtCV12FinanceKitUI25OrderTrackingSettingsView5Model_cancellableSet);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OrderTrackingSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = sub_23875CE00();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137C0, &qword_23877DE90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137C8, &qword_23877DE98);
  v11 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - v12;
  v14 = v1[1];
  v35 = *v1;
  v36 = v14;
  v37 = *(v1 + 32);
  v33 = &v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137D0, &qword_23877DEA0);
  sub_23843A3E8(&qword_27DF137D8, &qword_27DF137D0, &qword_23877DEA0);
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  v20 = sub_23875EA80();
  v22 = v21;

  v34[0] = v20;
  v34[1] = v22;
  sub_23843A3E8(&qword_27DF137E0, &qword_27DF137C0, &qword_23877DE90);
  sub_2384397A8();
  sub_23875DC70();

  (*(v7 + 8))(v10, v6);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v35;
  *(v23 + 32) = v24;
  *(v23 + 48) = v37;
  v25 = &v13[*(v30 + 36)];
  v26 = *(sub_23875C6E0() + 20);
  sub_23869AB74(&v35, v34);
  sub_23875ED60();
  *v25 = &unk_23877DEB0;
  *(v25 + 1) = v23;
  v27 = v32;
  (*(v2 + 104))(v5, *MEMORY[0x277CDDDC0], v32);
  sub_23869ABAC();
  sub_23875DE50();
  (*(v2 + 8))(v5, v27);
  return sub_238428FD0(v13);
}

uint64_t sub_238699DB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13838, &qword_23877E0D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13840, &qword_23877E0D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v27 - v14;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v16 = v28;
  *(&v27 - 2) = v28;
  sub_23869A3D4(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E920, &qword_23877E0E0);
  sub_23843A3E8(&qword_27DF0E940, &qword_27DF0E920, &qword_23877E0E0);
  sub_23875E3E0();
  v17 = *(v16 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v33[0] == 1)
  {
    MEMORY[0x28223BE20](v18);
    *(&v27 - 2) = v16;
    sub_23869A88C(v33);
    sub_23875E3E0();
    (*(v9 + 32))(v7, v12, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v9 + 56))(v7, v19, 1, v8);
  v20 = *(v9 + 16);
  v21 = v32;
  v20(v12, v32, v8);
  v22 = v31;
  sub_23869AF8C(v7, v31);
  v23 = v30;
  v20(v30, v12, v8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13848, &qword_23877E0E8);
  sub_23869AF8C(v22, &v23[*(v24 + 48)]);
  sub_238439884(v7, &qword_27DF13838, &qword_23877E0D0);
  v25 = *(v9 + 8);
  v25(v21, v8);
  sub_238439884(v22, &qword_27DF13838, &qword_23877E0D0);
  v25(v12, v8);
}

uint64_t sub_23869A22C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23869A3D4@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23869A580(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  v2 = a1[1];
  type metadata accessor for OrderTrackingSettingsView.Model();
  sub_23869ACEC(&qword_27DF137B0, type metadata accessor for OrderTrackingSettingsView.Model);
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  sub_23875E290();
}

uint64_t sub_23869A6E4@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23869A88C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23869AA34(uint64_t a1)
{
  v1[2] = sub_23875ED50();
  v1[3] = sub_23875ED40();
  v3 = *(a1 + 8);
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_2384E80A8;

  return sub_238698AF8();
}

uint64_t sub_23869AAE0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23869AA34(v0 + 16);
}

unint64_t sub_23869ABAC()
{
  result = qword_27DF137E8;
  if (!qword_27DF137E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF137C8, &qword_23877DE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF137C0, &qword_23877DE90);
    sub_23843A3E8(&qword_27DF137E0, &qword_27DF137C0, &qword_23877DE90);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    sub_23869ACEC(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF137E8);
  }

  return result;
}

uint64_t sub_23869ACEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for FKOrderTrackingSettingsViewControllerProvider()
{
  result = qword_27DF137F0;
  if (!qword_27DF137F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF137F0);
  }

  return result;
}

void sub_23869ADC4()
{
  sub_238461990();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23869AE64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23869AEE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_23869AF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13838, &qword_23877E0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23869B080()
{
  sub_23875AD40();
  if (v0 <= 0x3F)
  {
    sub_23869C248(319, &qword_2814F1158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23869C248(319, &qword_27DF0EDC8, type metadata accessor for OrderDetailsNote, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23869B17C(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for DropOffByFormatStyle(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_23875BC40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875AD40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0) + 20);
  (*(v16 + 104))(v19, *MEMORY[0x277CC8410], v15);
  v21 = sub_23875AD30();
  (*(v16 + 8))(v19, v15);
  result = 0;
  if (v21)
  {
    sub_23843981C(v2 + v20, v9, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_238439884(v9, &qword_27DF12E00, &unk_238763FC0);
      return 0;
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      v23 = sub_23875BE20();
      v24 = v26;
      (*(*(v23 - 8) + 16))(v26, v27, v23);
      v25 = sub_238689A30();
      sub_23869C2C8(v24, type metadata accessor for DropOffByFormatStyle);
      (*(v11 + 8))(v14, v10);
      return v25;
    }
  }

  return result;
}

uint64_t sub_23869B4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &qword_27DF0C2E0, &unk_23876EE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875BE20();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23869B6C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875D990();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875AD40();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for ReturnDetailsStatusLabel(0) + 20);
  v17 = sub_23875AD20();
  v41 = v18;
  v42 = v17;
  sub_23869B4C8(v15);
  v19 = sub_23869B17C(v15);
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  v22 = v40;
  (*(v40 + 16))(v10, v16, v7);
  v23 = (*(v22 + 88))(v10, v7);
  if (v23 != *MEMORY[0x277CC8410] && v23 != *MEMORY[0x277CC8420])
  {
    if (v23 == *MEMORY[0x277CC8408])
    {
      goto LABEL_8;
    }

    if (v23 == *MEMORY[0x277CC8418])
    {
      v25 = 2;
      goto LABEL_11;
    }

    if (v23 == *MEMORY[0x277CC8430])
    {
LABEL_8:
      v25 = 0;
      goto LABEL_11;
    }

    if (v23 == *MEMORY[0x277CC8428])
    {
      v25 = 1;
      goto LABEL_11;
    }

    (*(v22 + 8))(v10, v7);
  }

  v25 = 3;
LABEL_11:
  v26 = *(type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0) + 24);
  v27 = type metadata accessor for OrderDetailsStatusLabel();
  sub_23843981C(v16 + v26, a1 + v27[7], &qword_27DF0D5F8, &unk_23876D640);
  v28 = v41;
  *a1 = v42;
  *(a1 + 8) = v28;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v25;
  v29 = a1 + v27[8];
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *v29 = 2;
  *(v29 + 24) = 0;
  v30 = a1 + v27[9];
  v45 = 0;
  sub_23875E1A0();
  v31 = v47;
  *v30 = v46;
  *(v30 + 8) = v31;
  v32 = a1 + v27[10];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = v27[11];
  v46 = 0x403F000000000000;
  v34 = *MEMORY[0x277CE0A50];
  v35 = v44;
  v36 = *(v43 + 104);
  v36(v6, v34, v44);
  sub_23857414C();
  sub_23875C540();
  v37 = v27[12];
  v46 = 0x403C000000000000;
  v36(v6, v34, v35);
  sub_23875C540();
  v38 = v27[13];
  v46 = 0x4018000000000000;
  v36(v6, v34, v35);
  return sub_23875C540();
}

BOOL sub_23869BB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNote(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v45 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F5A0, qword_238772A58);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v45 - v13;
  v14 = sub_23875BC40();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  if ((sub_23875AD30() & 1) == 0)
  {
    return 0;
  }

  v49 = v5;
  v50 = v4;
  v46 = v8;
  v47 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v48 = a1;
  v26 = *(v47 + 20);
  v27 = *(v22 + 48);
  sub_23843981C(a1 + v26, v25, &qword_27DF12E00, &unk_238763FC0);
  sub_23843981C(a2 + v26, &v25[v27], &qword_27DF12E00, &unk_238763FC0);
  v28 = *(v15 + 48);
  if (v28(v25, 1, v14) != 1)
  {
    sub_23843981C(v25, v21, &qword_27DF12E00, &unk_238763FC0);
    if (v28(&v25[v27], 1, v14) != 1)
    {
      v32 = v52;
      (*(v15 + 32))(v52, &v25[v27], v14);
      sub_23869C328(&qword_27DF0DC38, MEMORY[0x277CC9578]);
      v33 = sub_23875E9E0();
      v34 = *(v15 + 8);
      v34(v32, v14);
      v34(v21, v14);
      sub_238439884(v25, &qword_27DF12E00, &unk_238763FC0);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v15 + 8))(v21, v14);
LABEL_7:
    v29 = &qword_27DF0DC30;
    v30 = &unk_23876E260;
    v31 = v25;
LABEL_15:
    sub_238439884(v31, v29, v30);
    return 0;
  }

  if (v28(&v25[v27], 1, v14) != 1)
  {
    goto LABEL_7;
  }

  sub_238439884(v25, &qword_27DF12E00, &unk_238763FC0);
LABEL_9:
  v35 = *(v47 + 24);
  v36 = v54;
  v37 = *(v53 + 48);
  sub_23843981C(v48 + v35, v54, &qword_27DF0D5F8, &unk_23876D640);
  sub_23843981C(a2 + v35, v36 + v37, &qword_27DF0D5F8, &unk_23876D640);
  v38 = v50;
  v39 = *(v49 + 48);
  if (v39(v36, 1, v50) == 1)
  {
    if (v39(v36 + v37, 1, v38) == 1)
    {
      sub_238439884(v36, &qword_27DF0D5F8, &unk_23876D640);
      return 1;
    }

    goto LABEL_14;
  }

  v40 = v51;
  sub_23843981C(v36, v51, &qword_27DF0D5F8, &unk_23876D640);
  if (v39(v36 + v37, 1, v38) == 1)
  {
    sub_23869C2C8(v40, type metadata accessor for OrderDetailsNote);
LABEL_14:
    v29 = &qword_27DF0F5A0;
    v30 = qword_238772A58;
    v31 = v36;
    goto LABEL_15;
  }

  v42 = v36 + v37;
  v43 = v46;
  sub_2385AC184(v42, v46);
  v44 = sub_23857EB54(v40, v43);
  sub_23869C2C8(v43, type metadata accessor for OrderDetailsNote);
  sub_23869C2C8(v40, type metadata accessor for OrderDetailsNote);
  sub_238439884(v36, &qword_27DF0D5F8, &unk_23876D640);
  return (v44 & 1) != 0;
}

void sub_23869C194()
{
  sub_23869C248(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReturnDetailsStatusLabel.ViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23869C248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23869C2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23869C328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23869C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23869C944();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23869C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23869C944();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23869C47C()
{
  sub_23869C944();
  sub_23875D6B0();
  __break(1u);
}

unint64_t sub_23869C4A8()
{
  result = qword_27DF13870;
  if (!qword_27DF13870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13870);
  }

  return result;
}

id sub_23869C4FC(char *a1)
{
  v2 = sub_238759940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C1E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  sub_238759930();
  v13 = sub_23875EA50();

  v14 = [v12 linkWithBundleIdentifier_];

  if (v14)
  {
    v15 = [v14 view];
    if (v15)
    {
      v16 = v15;
      [v15 setMaximumContentSizeCategory_];
    }

    (*(v3 + 8))(a1, v2);
  }

  else
  {
    v31 = v8;
    sub_23875C1A0();
    (*(v3 + 16))(v6, a1, v2);
    v17 = sub_23875C1B0();
    v18 = sub_23875EFE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v19 = 136315138;
      v28 = sub_238759930();
      v21 = v20;
      v30 = v7;
      v22 = *(v3 + 8);
      v22(v6, v2);
      v23 = sub_2384615AC(v28, v21, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2383F8000, v17, v18, "Expecting privacy bundle for identifier: %s", v19, 0xCu);
      v24 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x23EE64DF0](v24, -1, -1);
      MEMORY[0x23EE64DF0](v19, -1, -1);

      v22(a1, v2);
      (*(v31 + 8))(v11, v30);
    }

    else
    {

      v25 = *(v3 + 8);
      v25(a1, v2);
      v25(v6, v2);
      (*(v31 + 8))(v11, v7);
    }

    return 0;
  }

  return v14;
}

id sub_23869C878(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  result = [a5 viewIfLoaded];
  v10 = result;
  if (result)
  {
    HIDWORD(v11) = 0;
    if (a4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *&a3;
    }

    v13 = *&a1;
    if (a2)
    {
      v13 = 0.0;
    }

    LODWORD(v11) = 1144750080;
    if (a2)
    {
      *&v11 = 250.0;
    }

    [result systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v12 verticalFittingPriority:v11];
    v15 = v14;

    return v15;
  }

  return result;
}

unint64_t sub_23869C944()
{
  result = qword_27DF13878;
  if (!qword_27DF13878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13878);
  }

  return result;
}

void sub_23869C9E0()
{
  sub_2386A1E24(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2386A1E74(319, &qword_27DF0BB88, MEMORY[0x277CC6DC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2386A1E74(319, &qword_27DF138A0, type metadata accessor for OrderPaymentDestination, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2386A1E74(319, &qword_27DF138A8, type metadata accessor for OrderDetailsShippingAddress.ViewModel, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for OrderDetailsContactSection.ViewModel(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23869CBB4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B8, &unk_23877E368);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v19 - v14;
  sub_23843981C(v5, v19 - v14, &qword_27DF138B8, &unk_23877E368);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_2386A1B54(v15, v11, type metadata accessor for OrderPaymentViewModel);
  v20(v11);
  if (!v4)
  {
    sub_2386A1BBC(v11, type metadata accessor for OrderPaymentViewModel);
    v16 = 0;
LABEL_4:
    v17 = type metadata accessor for OrderPaymentDestination(0);
    return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
  }

  result = sub_2386A1BBC(v11, type metadata accessor for OrderPaymentViewModel);
  __break(1u);
  return result;
}

uint64_t sub_23869CE2C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v26 = a6;
  v24 = a2;
  v25 = a1;
  v12 = a3(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v24 - v19;
  sub_23843981C(v7, &v24 - v19, a4, a5);
  v21 = 1;
  if ((*(v13 + 48))(v20, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v16, v20, v12);
  v25(v16);
  if (!v8)
  {
    (*(v13 + 8))(v16, v12);
    v21 = 0;
LABEL_4:
    v22 = v26(0);
    return (*(*(v22 - 8) + 56))(a7, v21, 1, v22);
  }

  result = (*(v13 + 8))(v16, v12);
  __break(1u);
  return result;
}

void sub_23869D098(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v110 = a3;
  v107 = a1;
  v6 = sub_23875B940();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = (&v89 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138D8, &unk_23877E398);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v89 - v14;
  v15 = sub_23875AF50();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15);
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrderPaymentViewModel(0);
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  MEMORY[0x28223BE20](v18);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B8, &unk_23877E368);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v102 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v105 = &v89 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v89 - v31;
  v33 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v34 = v33[5];
  v35 = sub_238758090();
  v36 = *(*(v35 - 8) + 56);
  v36(a4 + v34, 1, 1, v35);
  v37 = v33[7];
  v38 = type metadata accessor for OrderPaymentDestination(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v100 = v38;
  v101 = v37;
  v98 = v39 + 56;
  v99 = v40;
  (v40)(a4 + v37, 1, 1);
  v111 = v33;
  v41 = v33[8];
  v42 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v91 = v42;
  v92 = v41;
  v90 = v44;
  v89 = v43 + 56;
  (v44)(a4 + v41, 1, 1);
  v45 = a2;
  v46 = [a2 orderNumber];
  if (v46)
  {
    v47 = v46;
    v48 = sub_23875EA80();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *a4 = v48;
  a4[1] = v50;
  v51 = v45;
  v52 = [v45 payment];
  if (v52)
  {
    v53 = v52;
    sub_238758FD0();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v102;
  v36(v32, v54, 1, v35);
  sub_2385309FC(v32, a4 + v34, &unk_27DF0B080, &unk_2387662A0);
  v56 = [v51 customerEmailAddress];
  if (v56)
  {
    v57 = v56;
    v58 = sub_23875EA80();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v62 = v110;
  v61 = v111;
  v63 = v105;
  v64 = (a4 + v111[6]);
  *v64 = v58;
  v64[1] = v60;
  v65 = v107;
  v66 = v51;
  v67 = v106;
  OrderPaymentViewModel.init(order:orderContent:)(v65, v66, v106);
  sub_23843981C(v67, v55, &qword_27DF138B8, &unk_23877E368);
  v68 = 1;
  v69 = (*(v103 + 48))(v55, 1, v104);
  v70 = v100;
  if (v69 != 1)
  {
    v71 = v55;
    v72 = v95;
    sub_2386A1B54(v71, v95, type metadata accessor for OrderPaymentViewModel);
    sub_2386A10E8(v72, v63, type metadata accessor for OrderPaymentViewModel);
    v73 = v63 + *(v70 + 20);
    sub_238757D40();
    sub_2386A1BBC(v72, type metadata accessor for OrderPaymentViewModel);
    v68 = 0;
  }

  sub_238439884(v67, &qword_27DF138B8, &unk_23877E368);
  v99(v63, v68, 1, v70);
  sub_2385309FC(v63, a4 + v101, &qword_27DF13880, &qword_23877E2E8);
  v74 = v108;
  if ((v62 & 0x8000000000000000) == 0)
  {
    v62;
    sub_23875AA10();
    v76 = v96;
    v75 = v97;
    if ((*(v96 + 48))(v74, 1, v97) == 1)
    {
      sub_238530974(v62);
      sub_238439884(v74, &qword_27DF138D8, &unk_23877E398);
    }

    else
    {
      v77 = v93;
      (*(v76 + 32))(v93, v74, v75);
      v110 = v65;
      v78 = v75;
      v79 = sub_23875AF40();
      v81 = v80;
      sub_23875AA00();
      v82 = v91;
      v83 = v94;
      v84 = v94 + *(v91 + 20);
      sub_23875ADA0();
      sub_238530974(v62);
      v85 = v78;
      v65 = v110;
      (*(v76 + 8))(v77, v85);
      *v83 = v79;
      v83[1] = v81;
      v61 = v111;
      v90(v83, 0, 1, v82);
      sub_2385309FC(v83, a4 + v92, &qword_27DF13888, &qword_23877E2F0);
    }
  }

  v86 = [v66 merchant];
  v87 = [v66 orderManagementURL];
  v88 = v109;
  sub_23875B8B0();

  sub_238560DD4(v86, v88, (a4 + v61[9]));
  sub_238530974(v62);
}

uint64_t sub_23869D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v187 = a3;
  v184 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v173 = v141 - v8;
  v169 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v9 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v176 = (v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23875B940();
  v174 = *(v11 - 8);
  v175 = v11;
  v12 = *(v174 + 64);
  MEMORY[0x28223BE20](v11);
  v183 = v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_238757CC0();
  v171 = *(v172 - 8);
  v14 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v170 = v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2387592C0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v150 = v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v151 = (v141 - v21);
  v149 = sub_23875AF50();
  v148 = *(v149 - 8);
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B0, &unk_23877E358);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v152 = v141 - v26;
  v154 = sub_238759D20();
  v153 = *(v154 - 8);
  v27 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v145 = v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v146 = v141 - v30;
  v155 = sub_23875A400();
  v179 = *(v155 - 8);
  v31 = *(v179 + 64);
  MEMORY[0x28223BE20](v155);
  v165 = (v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5A0, &qword_23876D5D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v163 = v141 - v35;
  v178 = sub_238759100();
  v166 = *(v178 - 1);
  v36 = *(v166 + 64);
  MEMORY[0x28223BE20](v178);
  v156 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v164 = v141 - v39;
  v40 = sub_238759B60();
  v181 = *(v40 - 8);
  v182 = v40;
  v41 = *(v181 + 64);
  MEMORY[0x28223BE20](v40);
  v160 = v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B8, &unk_23877E368);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v162 = v141 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v161 = v141 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB60, &unk_238771050);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v158 = v141 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138C0, &qword_23877E378);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = v141 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = v141 - v58;
  v168 = sub_23875A710();
  v167 = *(v168 - 8);
  v60 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v62 = v141 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v64 = v63[5];
  v65 = sub_238758090();
  v66 = *(*(v65 - 8) + 56);
  v157 = v64;
  v66(a4 + v64, 1, 1, v65);
  v67 = v63[7];
  v68 = type metadata accessor for OrderPaymentDestination(0);
  v69 = *(*(v68 - 8) + 56);
  v159 = v67;
  v69(a4 + v67, 1, 1, v68);
  v177 = v63;
  v70 = v63[8];
  v71 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v144 = v70;
  v143 = v71;
  v142 = v73;
  v141[1] = v72 + 56;
  (v73)(a4 + v70, 1, 1);
  v180 = v62;
  sub_238759A40();
  *a4 = sub_238759A70();
  a4[1] = v74;
  v75 = a4;
  v185 = a1;
  sub_238759B00();
  v76 = sub_238758760();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v55, 1, v76) == 1)
  {
    sub_238439884(v55, &qword_27DF138C0, &qword_23877E378);
    v78 = 1;
  }

  else
  {
    sub_238758740();
    (*(v77 + 8))(v55, v76);
    v78 = 0;
  }

  v66(v59, v78, 1, v65);
  v186 = v75;
  sub_2385309FC(v59, v75 + v157, &unk_27DF0B080, &unk_2387662A0);
  v79 = v158;
  v80 = v185;
  sub_238759B20();
  v81 = sub_2387588F0();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v79, 1, v81);
  v84 = v178;
  if (v83 == 1)
  {
    sub_238439884(v79, &qword_27DF0EB60, &unk_238771050);
    v85 = 0;
    v86 = 0;
  }

  else
  {
    v85 = sub_2387588E0();
    v86 = v87;
    (*(v82 + 8))(v79, v81);
  }

  v88 = v179;
  v89 = v166;
  v90 = v177;
  v91 = v186;
  v92 = (v186 + v177[6]);
  *v92 = v85;
  v92[1] = v86;
  v93 = v160;
  (*(v181 + 16))(v160, v80, v182);
  sub_23845C998(v187, v188);
  v94 = v162;
  v95 = sub_2386A9750(v93, v188, v162);
  MEMORY[0x28223BE20](v95);
  v139 = v180;
  v96 = v161;
  sub_23869CBB4(sub_2386A10C8, &v141[-4], v161);
  sub_238439884(v94, &qword_27DF138B8, &unk_23877E368);
  sub_2385309FC(v96, v91 + v159, &qword_27DF13880, &qword_23877E2E8);
  v97 = v163;
  sub_23843981C(v184, v163, &qword_27DF0D5A0, &qword_23876D5D0);
  v98 = (*(v89 + 48))(v97, 1, v84);
  v99 = v165;
  if (v98 == 1)
  {
    sub_238439884(v97, &qword_27DF0D5A0, &qword_23876D5D0);
LABEL_15:
    v117 = v170;
    sub_238759B30();
    sub_238759AC0();
    sub_23845C998(v187, v188);
    v179 = v90[9];
    v118 = v169;
    v119 = *(v169 + 28);
    v166 = *(v169 + 32);
    v120 = v176;
    v165 = (v176 + v119);
    v122 = v174;
    v121 = v175;
    v123 = *(v174 + 56);
    v123(v176 + v166, 1, 1, v175);
    v177 = v118[9];
    v123(v177 + v120, 1, 1, v121);
    v178 = (v120 + v118[10]);
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    sub_238757C60();
    v124 = sub_23875A360();
    v126 = v125;

    *v120 = v124;
    v120[1] = v126;
    v127 = v120 + v118[5];
    sub_238757CA0();
    v128 = v183;
    (*(v122 + 16))(v120 + v118[6], v183, v121);
    v129 = sub_238757C70();
    v130 = v165;
    *v165 = v129;
    v130[1] = v131;
    v132 = v173;
    sub_238757C90();
    sub_2385309FC(v132, v120 + v166, &qword_27DF0D040, &qword_2387676A0);
    sub_238757C50();
    sub_2385309FC(v132, v177 + v120, &qword_27DF0D040, &qword_2387676A0);
    v133 = sub_238757C80();
    v135 = v134;
    __swift_destroy_boxed_opaque_existential_1(v187);
    sub_238439884(v184, &qword_27DF0D5A0, &qword_23876D5D0);
    (*(v181 + 8))(v185, v182);
    (*(v122 + 8))(v128, v121);
    (*(v171 + 8))(v117, v172);
    v136 = v178;
    v137 = v179;
    *v178 = v133;
    v136[1] = v135;
    sub_2386A10E8(v120, v186 + v137, type metadata accessor for OrderDetailsContactSection.ViewModel);
    __swift_destroy_boxed_opaque_existential_1(v188);
    sub_2386A1BBC(v120, type metadata accessor for OrderDetailsContactSection.ViewModel);
    return (*(v167 + 8))(v180, v168);
  }

  v100 = v164;
  (*(v89 + 32))(v164, v97, v84);
  v101 = v156;
  (*(v89 + 16))(v156, v100, v84);
  v102 = (*(v89 + 88))(v101, v84);
  if (v102 == *MEMORY[0x277CC7728])
  {
    (*(v89 + 96))(v101, v84);
    v103 = v155;
    (*(v88 + 32))(v99, v101, v155);
    v104 = v152;
    sub_23875A3F0();
    v105 = v153;
    v106 = v154;
    if ((*(v153 + 48))(v104, 1, v154) == 1)
    {
      (*(v88 + 8))(v99, v103);
      (*(v89 + 8))(v164, v84);
      sub_238439884(v104, &qword_27DF138B0, &unk_23877E358);
    }

    else
    {
      v108 = v146;
      (*(v105 + 32))(v146, v104, v106);
      (*(v105 + 16))(v145, v108, v106);
      v109 = v147;
      sub_23875AF60();
      v110 = v105;
      v166 = sub_23875AF40();
      v163 = v111;
      sub_23875A390();
      v112 = v143;
      v113 = v151;
      v114 = v151 + *(v143 + 20);
      sub_23875AD90();
      (*(v148 + 8))(v109, v149);
      v115 = v108;
      v90 = v177;
      (*(v110 + 8))(v115, v106);
      (*(v179 + 8))(v99, v155);
      (*(v89 + 8))(v164, v178);
      v116 = v163;
      *v113 = v166;
      v113[1] = v116;
      v142(v113, 0, 1, v112);
      sub_2385309FC(v113, v186 + v144, &qword_27DF13888, &qword_23877E2F0);
    }

    goto LABEL_15;
  }

  if (v102 == *MEMORY[0x277CC7720])
  {
    v107 = *(v89 + 8);
    v107(v164, v84);
    v107(v101, v84);
    goto LABEL_15;
  }

  v140 = 0;
  v139 = 264;
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23869EB58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (*(v0 + 8))
  {
    return 1;
  }

  v9 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  if (*(v0 + *(v9 + 24) + 8))
  {
    return 1;
  }

  v11 = v9;
  sub_23843981C(v0 + *(v9 + 20), v8, &unk_27DF0B080, &unk_2387662A0);
  v12 = sub_238758090();
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12);
  sub_238439884(v8, &unk_27DF0B080, &unk_2387662A0);
  result = 1;
  if (v13 == 1)
  {
    sub_23843981C(v0 + *(v11 + 32), v4, &qword_27DF13888, &qword_23877E2F0);
    v14 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
    v15 = (*(*(v14 - 8) + 48))(v4, 1, v14) != 1;
    sub_238439884(v4, &qword_27DF13888, &qword_23877E2F0);
    return v15;
  }

  return result;
}

uint64_t sub_23869ED5C@<X0>(uint64_t a1@<X8>)
{
  sub_2386A10E8(v1, a1, type metadata accessor for OrderDetailsInfo.ViewModel);
  v3 = type metadata accessor for OrderDetailsInfo_iOS(0);
  v4 = a1 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = *(v3 + 24);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23869EE10@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_23875CEA0();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13908, &qword_23877E4B8);
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = v51 - v7;
  v8 = sub_23875CDB0();
  v53 = *(v8 - 8);
  v9 = *(v53 + 8);
  MEMORY[0x28223BE20](v8);
  v52 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13910, &qword_23877E4C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13918, &qword_23877E4C8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13920, &qword_23877E4D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v58 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  v29 = sub_23869EB58();
  v60 = v17;
  if (v29)
  {
    v51[1] = v51;
    MEMORY[0x28223BE20](v29);
    v51[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13940, &qword_23877E520);
    sub_23843A3E8(&qword_27DF13948, &qword_27DF13940, &qword_23877E520);
    sub_23875E3D0();
    (*(v19 + 32))(v28, v22, v18);
    (*(v19 + 56))(v28, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v28, 1, 1, v18);
  }

  v30 = type metadata accessor for OrderDetailsInfo_iOS(0);
  v31 = v1 + *(v30 + 20);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    sub_23875EFF0();
    v35 = sub_23875D730();
    sub_23875C110();

    v36 = v52;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v32, 0);
    v30 = (*(v53 + 1))(v36, v8);
    if (v63)
    {
      goto LABEL_6;
    }

LABEL_8:
    v52 = v51;
    MEMORY[0x28223BE20](v30);
    v51[-2] = v1;
    type metadata accessor for OrderDetailsContactSection(0);
    sub_2386A1ED8(&qword_27DF13928, type metadata accessor for OrderDetailsContactSection);
    v53 = v28;
    v37 = v54;
    sub_23875E3D0();
    v38 = v55;
    sub_23875CE90();
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13930, &qword_23877E4D8) + 36);
    v40 = v56;
    v41 = v57;
    (*(v56 + 16))(&v37[v39], v38, v57);
    v42 = *(v40 + 56);
    v42(&v37[v39], 0, 1, v41);
    KeyPath = swift_getKeyPath();
    v44 = &v37[*(v62 + 36)];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v40 + 32))(v44 + v45, v38, v41);
    v42(v44 + v45, 0, 1, v41);
    *v44 = KeyPath;
    v46 = v37;
    v28 = v53;
    v34 = v60;
    sub_2386A1F44(v46, v60);
    v33 = 0;
    goto LABEL_9;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v33 = 1;
  v34 = v60;
LABEL_9:
  (*(v61 + 56))(v34, v33, 1, v62);
  v47 = v58;
  sub_23843981C(v28, v58, &qword_27DF13920, &qword_23877E4D0);
  sub_23843981C(v34, v14, &qword_27DF13910, &qword_23877E4C0);
  v48 = v59;
  sub_23843981C(v47, v59, &qword_27DF13920, &qword_23877E4D0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13938, &qword_23877E518);
  sub_23843981C(v14, v48 + *(v49 + 48), &qword_27DF13910, &qword_23877E4C0);
  sub_238439884(v34, &qword_27DF13910, &qword_23877E4C0);
  sub_238439884(v28, &qword_27DF13920, &qword_23877E4D0);
  sub_238439884(v14, &qword_27DF13910, &qword_23877E4C0);
  return sub_238439884(v47, &qword_27DF13920, &qword_23877E4D0);
}

uint64_t sub_23869F580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = type metadata accessor for OrderTotalView(0);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v77 - v8;
  v9 = sub_238758090();
  KeyPath = *(v9 - 8);
  v83 = v9;
  v10 = *(KeyPath + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13950, &qword_23877E528);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v77 - v16;
  v17 = type metadata accessor for OrderDetailsShippingAddress(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v77 - v24;
  v26 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13958, &qword_23877E530);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v90 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v92 = &v77 - v35;
  sub_23875ED50();
  v85 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  sub_23843981C(a1 + v36[8], v25, &qword_27DF13888, &qword_23877E2F0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_238439884(v25, &qword_27DF13888, &qword_23877E2F0);
    v37 = 1;
    v39 = v83;
    v38 = v84;
    v40 = KeyPath;
    v41 = v92;
  }

  else
  {
    sub_2386A1B54(v25, v30, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
    sub_2386A10E8(v30, v21, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
    v42 = &v21[*(v17 + 20)];
    v93 = 1;
    sub_23875E1A0();
    sub_2386A1BBC(v30, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
    v43 = v95;
    *v42 = v94;
    *(v42 + 1) = v43;
    v41 = v92;
    sub_2386A1B54(v21, v92, type metadata accessor for OrderDetailsShippingAddress);
    v37 = 0;
    v39 = v83;
    v38 = v84;
    v40 = KeyPath;
  }

  (*(v18 + 56))(v41, v37, 1, v17);
  v44 = a1[1];
  if (v44)
  {
    v83 = *a1;
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
    v83 = 0;
  }

  v45 = v87;
  v46 = (a1 + v36[6]);
  v47 = v46[1];
  v84 = v44;
  v87 = v47;
  if (v47)
  {
    v81 = *v46;
    v48 = qword_2814F0880;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = qword_2814F1B90;
    v50 = sub_23875EA50();
    v51 = sub_23875EA50();
    v52 = sub_23875EA50();
    v53 = [v49 localizedStringForKey:v50 value:v51 table:v52];

    v54 = sub_23875EA80();
    v79 = v55;
    v80 = v54;
  }

  else
  {

    v79 = 0;
    v80 = 0;
    v81 = 0;
  }

  sub_23843981C(a1 + v36[5], v38, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_238439884(v38, &unk_27DF0B080, &unk_2387662A0);
    v56 = 1;
    v57 = v91;
  }

  else
  {
    v58 = *(v40 + 32);
    v59 = v77;
    v58(v77, v38, v39);
    v60 = v78;
    v58(v78, v59, v39);
    sub_23843981C(a1 + v36[7], &v60[*(v45 + 20)], &qword_27DF13880, &qword_23877E2E8);
    v61 = &v60[*(v45 + 24)];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    v62 = v60;
    v57 = v91;
    sub_2386A1B54(v62, v91, type metadata accessor for OrderTotalView);
    v56 = 0;
  }

  (*(v86 + 56))(v57, v56, 1, v45);
  v63 = v90;
  sub_23843981C(v92, v90, &qword_27DF13958, &qword_23877E530);
  v64 = v88;
  sub_23843981C(v57, v88, &qword_27DF13950, &qword_23877E528);
  v65 = v89;
  sub_23843981C(v63, v89, &qword_27DF13958, &qword_23877E530);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13960, &qword_23877E538);
  v67 = v65 + v66[12];
  v68 = v83;
  v69 = v84;
  *v67 = v83;
  *(v67 + 8) = v69;
  v71 = v81;
  v70 = KeyPath;
  *(v67 + 16) = KeyPath;
  *(v67 + 24) = 0;
  v72 = (v65 + v66[16]);
  v73 = v79;
  v74 = v80;
  *v72 = v80;
  v72[1] = v73;
  v75 = v87;
  v72[2] = v71;
  v72[3] = v75;
  sub_23843981C(v64, v65 + v66[20], &qword_27DF13950, &qword_23877E528);
  sub_2385C0814(v68, v69, v70, 0);
  sub_2385570E8(v74, v73);
  sub_238439884(v91, &qword_27DF13950, &qword_23877E528);
  sub_238439884(v92, &qword_27DF13958, &qword_23877E530);
  sub_238439884(v64, &qword_27DF13950, &qword_23877E528);
  sub_23855712C(v74, v73);
  sub_2385C08BC(v68, v69, v70, 0);
  sub_238439884(v90, &qword_27DF13958, &qword_23877E530);
}

uint64_t sub_23869FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  sub_2386A10E8(a1 + *(v4 + 36), a2, type metadata accessor for OrderDetailsContactSection.ViewModel);
  v5 = type metadata accessor for OrderDetailsContactSection(0);
  v6 = a2 + v5[5];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v5[6];
  sub_23875E1A0();
  *v7 = v10;
  *(v7 + 8) = v11;
  v8 = v5[7];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23869FFCC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  MEMORY[0x28223BE20](v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_2385A8F14();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875DB50();
}

uint64_t sub_2386A01D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = a4 & 1;
  *(v8 + 40) = v9;

  sub_2384BE900(a3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

void sub_2386A0348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_23875CDB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((a4 & 1) == 0)
  {
    sub_2384BE900(a3, 0);
    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(a3, 0);
    (*(v7 + 8))(v10, v6);
  }

  v12 = [objc_opt_self() generalPasteboard];
  v13 = sub_23875EA50();
  [v12 setString_];
}

uint64_t sub_2386A0548()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

uint64_t sub_2386A06E8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_23875BD20();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13988, &unk_23877E6D8);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v7 = (&v50 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v50 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13990, &qword_23877E6E8);
  v55 = *(v61 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = &v50 - v12;
  v13 = sub_23875CDB0();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v50 - v19;
  v21 = type metadata accessor for OrderPaymentDestination(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v56 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v25 = qword_2814F1B90;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

  v30 = sub_23875EA80();
  v32 = v31;

  v33 = type metadata accessor for OrderTotalView(0);
  v34 = v59;
  sub_23843981C(v59 + *(v33 + 20), v20, &qword_27DF13880, &qword_23877E2E8);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v35 = v56;
    sub_2386A1B54(v20, v56, type metadata accessor for OrderPaymentDestination);
    v36 = v34 + *(v33 + 24);
    v37 = *v36;
    if (*(v36 + 8) == 1)
    {
      if ((v37 & 1) == 0)
      {
LABEL_7:
        v38 = v35;
        v39 = v53;
        sub_2386A10E8(v38, v53, type metadata accessor for OrderPaymentDestination);
        v40 = type metadata accessor for OrderNavigationDestination(0);
        swift_storeEnumTagMultiPayload();
        v41 = (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
        MEMORY[0x28223BE20](v41);
        *(&v50 - 4) = v30;
        *(&v50 - 3) = v32;
        *(&v50 - 2) = v34;
        sub_2385A8F14();
        sub_2386A1ED8(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
        v42 = v54;
        sub_23875C760();

        v43 = v55;
        v44 = v61;
        (*(v55 + 16))(v7, v42, v61);
        swift_storeEnumTagMultiPayload();
        sub_23843A3E8(&qword_27DF13998, &qword_27DF13990, &qword_23877E6E8);
        sub_23875D1B0();
        (*(v43 + 8))(v42, v44);
        return sub_2386A1BBC(v56, type metadata accessor for OrderPaymentDestination);
      }
    }

    else
    {

      sub_23875EFF0();
      v46 = sub_23875D730();
      sub_23875C110();

      sub_23875CDA0();
      swift_getAtKeyPath();
      sub_2384348B8(v37, 0);
      (*(v51 + 8))(v16, v52);
      if ((v63 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_2386A1BBC(v35, type metadata accessor for OrderPaymentDestination);
    goto LABEL_10;
  }

  sub_238439884(v20, &qword_27DF13880, &qword_23877E2E8);
LABEL_10:
  sub_23875BCC0();
  v47 = sub_238758080();
  v49 = v48;
  (*(v57 + 8))(v4, v58);
  *v7 = v30;
  v7[1] = v32;
  v7[2] = v47;
  v7[3] = v49;
  swift_storeEnumTagMultiPayload();
  sub_23843A3E8(&qword_27DF13998, &qword_27DF13990, &qword_23877E6E8);
  sub_2385A8F14();
  return sub_23875D1B0();
}

uint64_t sub_2386A0EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23875BD20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875BCC0();
  v11 = sub_238758080();
  v13 = v12;
  (*(v7 + 8))(v10, v6);

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v11;
  a3[3] = v13;
  return result;
}

uint64_t sub_2386A1030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2386A10E8(a1, a3, type metadata accessor for OrderPaymentViewModel);
  v5 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v6 = sub_23875A710();
  return (*(*(v6 - 8) + 16))(a3 + v5, a2, v6);
}

uint64_t sub_2386A10E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386A1150(void *a1, void *a2)
{
  v4 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  v86 = *(v4 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = (&v78 - v9);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138C8, &qword_23877E380);
  v10 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v12 = &v78 - v11;
  v91 = type metadata accessor for OrderPaymentDestination(0);
  v89 = *(v91 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = &v78 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138D0, &unk_23877E388);
  v18 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v90 = &v78 - v19;
  v20 = sub_238758090();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v78 - v31;
  v33 = a1[1];
  v34 = a2[1];
  if (v33)
  {
    if (!v34 || (*a1 != *a2 || v33 != v34) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v34)
  {
    goto LABEL_15;
  }

  v80 = v4;
  v78 = v12;
  v79 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v35 = *(v79 + 20);
  v36 = a1;
  v37 = *(v29 + 48);
  v81 = v36;
  sub_23843981C(v36 + v35, v32, &unk_27DF0B080, &unk_2387662A0);
  v38 = a2 + v35;
  v39 = a2;
  sub_23843981C(v38, &v32[v37], &unk_27DF0B080, &unk_2387662A0);
  v40 = *(v21 + 48);
  if (v40(v32, 1, v20) == 1)
  {
    if (v40(&v32[v37], 1, v20) == 1)
    {
      sub_238439884(v32, &unk_27DF0B080, &unk_2387662A0);
      goto LABEL_18;
    }

LABEL_13:
    v41 = &qword_27DF0BC88;
    v42 = &qword_23876D250;
    v43 = v32;
LABEL_14:
    sub_238439884(v43, v41, v42);
    goto LABEL_15;
  }

  sub_23843981C(v32, v28, &unk_27DF0B080, &unk_2387662A0);
  if (v40(&v32[v37], 1, v20) == 1)
  {
    (*(v21 + 8))(v28, v20);
    goto LABEL_13;
  }

  (*(v21 + 32))(v24, &v32[v37], v20);
  sub_2386A1ED8(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
  v46 = sub_23875E9E0();
  v47 = *(v21 + 8);
  v47(v24, v20);
  v47(v28, v20);
  sub_238439884(v32, &unk_27DF0B080, &unk_2387662A0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v48 = v79;
  v49 = *(v79 + 24);
  v50 = v81;
  v51 = (v81 + v49);
  v52 = *(v81 + v49 + 8);
  v53 = (v39 + v49);
  v54 = v53[1];
  if (v52)
  {
    v55 = v80;
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v55 = v80;
    if (v54)
    {
      goto LABEL_15;
    }
  }

  v56 = v48[7];
  v57 = *(v88 + 48);
  v58 = v90;
  sub_23843981C(v50 + v56, v90, &qword_27DF13880, &qword_23877E2E8);
  v59 = v39 + v56;
  v60 = v58;
  sub_23843981C(v59, v58 + v57, &qword_27DF13880, &qword_23877E2E8);
  v61 = *(v89 + 48);
  v62 = v91;
  if (v61(v58, 1, v91) == 1)
  {
    if (v61(v58 + v57, 1, v62) == 1)
    {
      sub_238439884(v58, &qword_27DF13880, &qword_23877E2E8);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v63 = v87;
  sub_23843981C(v60, v87, &qword_27DF13880, &qword_23877E2E8);
  if (v61(v60 + v57, 1, v62) == 1)
  {
    sub_2386A1BBC(v63, type metadata accessor for OrderPaymentDestination);
LABEL_30:
    v41 = &qword_27DF138D0;
    v42 = &unk_23877E388;
    v43 = v60;
    goto LABEL_14;
  }

  v64 = v60 + v57;
  v65 = v84;
  sub_2386A1B54(v64, v84, type metadata accessor for OrderPaymentDestination);
  v66 = MEMORY[0x23EE5F1E0](v63 + *(v62 + 20), v65 + *(v62 + 20));
  sub_2386A1BBC(v65, type metadata accessor for OrderPaymentDestination);
  sub_2386A1BBC(v63, type metadata accessor for OrderPaymentDestination);
  sub_238439884(v60, &qword_27DF13880, &qword_23877E2E8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v67 = v48[8];
  v68 = *(v85 + 48);
  v69 = v78;
  sub_23843981C(v50 + v67, v78, &qword_27DF13888, &qword_23877E2F0);
  sub_23843981C(v39 + v67, v69 + v68, &qword_27DF13888, &qword_23877E2F0);
  v70 = *(v86 + 48);
  if (v70(v69, 1, v55) == 1)
  {
    if (v70(v69 + v68, 1, v55) == 1)
    {
      sub_238439884(v69, &qword_27DF13888, &qword_23877E2F0);
LABEL_35:
      v44 = sub_238561120((v50 + v48[9]), (v39 + v48[9]));
      return v44 & 1;
    }

    goto LABEL_38;
  }

  v71 = v83;
  sub_23843981C(v69, v83, &qword_27DF13888, &qword_23877E2F0);
  if (v70(v69 + v68, 1, v55) == 1)
  {
    sub_2386A1BBC(v71, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
LABEL_38:
    v41 = &qword_27DF138C8;
    v42 = &qword_23877E380;
    v43 = v69;
    goto LABEL_14;
  }

  v72 = v69 + v68;
  v73 = v82;
  sub_2386A1B54(v72, v82, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
  v74 = v71[1];
  v75 = v73[1];
  if (!v74)
  {
    if (!v75)
    {
      goto LABEL_44;
    }

LABEL_47:
    sub_2386A1BBC(v73, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
    sub_2386A1BBC(v71, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
    v41 = &qword_27DF13888;
    v42 = &qword_23877E2F0;
    v43 = v78;
    goto LABEL_14;
  }

  if (!v75 || (*v71 != *v73 || v74 != v75) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v76 = *(v55 + 20);
  v77 = sub_23875AD70();
  sub_2386A1BBC(v73, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
  sub_2386A1BBC(v71, type metadata accessor for OrderDetailsShippingAddress.ViewModel);
  sub_238439884(v78, &qword_27DF13888, &qword_23877E2F0);
  if (v77)
  {
    goto LABEL_35;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_2386A1B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386A1BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2386A1C64()
{
  result = type metadata accessor for OrderDetailsInfo.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2386A1D34()
{
  type metadata accessor for OrderDetailsInfo.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2386A1E24(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2386A1E74(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386A1E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2386A1E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2386A1ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386A1F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13908, &qword_23877E4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2386A2004()
{
  sub_238758090();
  if (v0 <= 0x3F)
  {
    sub_2386A1E74(319, &qword_27DF138A0, type metadata accessor for OrderPaymentDestination, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2386A1E24(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2386A2100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2386A2148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2386A2200()
{
  result = qword_27DF139A0;
  if (!qword_27DF139A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139A8, &unk_23877E6F0);
    sub_23843A3E8(&qword_27DF13998, &qword_27DF13990, &qword_23877E6E8);
    sub_2385A8F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF139A0);
  }

  return result;
}

uint64_t sub_2386A22B8()
{
  v1 = v0;
  v2 = sub_238758D30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CC74B0])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277CC7498])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277CC74A0])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277CC74C0])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277CC74B8])
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277CC74A8])
  {
    if (qword_2814F0880 == -1)
    {
LABEL_18:
      v9 = qword_2814F1B90;
      v10 = sub_23875EA50();
      v11 = sub_23875EA50();
      v12 = sub_23875EA50();
      v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

      v14 = sub_23875EA80();
      return v14;
    }

LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  v14 = sub_23875EA80();
  (*(v3 + 8))(v7, v2);
  return v14;
}

void sub_2386A2964()
{
  type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23859FD98(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2384BEA74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386A2A4C()
{
  sub_23859FD98(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2384C5F0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_2386A2B1C@<D0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v138 = a2;
  v5 = sub_2387581B0();
  v141 = *(v5 - 8);
  v142 = v5;
  v6 = *(v141 + 64);
  MEMORY[0x28223BE20](v5);
  v124 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_23875BC40();
  v132 = *(v133 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v125 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v145 = &v122 - v14;
  v135 = sub_2387580D0();
  v139 = *(v135 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x28223BE20](v135);
  v129 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v140 = &v122 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v137 = *(v146 - 8);
  v19 = *(v137 + 64);
  MEMORY[0x28223BE20](v146);
  v123 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v143 = &v122 - v22;
  MEMORY[0x28223BE20](v23);
  v136 = &v122 - v24;
  v25 = sub_23875ABE0();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v128 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v126 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v144 = &v122 - v32;
  MEMORY[0x28223BE20](v33);
  v148 = &v122 - v34;
  v131 = sub_23875BE40();
  v35 = *(v131 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v131);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_23875BE20();
  v39 = *(v130 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v130);
  v43 = &v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [a1 trackedOrderIdentifier];
  v45 = sub_23875EA80();
  v47 = v46;

  *a3 = v45;
  a3[1] = v47;
  v48 = [a1 orderContent];
  v49 = [v48 orderNumber];

  v50 = sub_23875EA80();
  v52 = v51;

  a3[2] = v50;
  a3[3] = v52;
  v53 = [a1 orderContent];
  v54 = [v53 merchantDisplayName];

  v55 = sub_23875EA80();
  v57 = v56;

  a3[4] = v55;
  a3[5] = v57;
  v149 = a3;
  v147 = a1;
  v58 = [a1 merchantEmailAddress];
  if (v58)
  {
    v59 = v58;
    v60 = sub_23875EA80();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = v149;
  v149[6] = v60;
  v63[7] = v62;
  v64 = v147;
  v65 = [v147 orderContent];
  sub_23875BDB0();
  sub_23875BE30();
  v66 = sub_23875A5F0();

  (*(v35 + 8))(v38, v131);
  (*(v39 + 8))(v43, v130);
  v67 = v140;
  v134 = v66;
  if (v66)
  {
    sub_23875ABF0();
    v68 = v148;
    sub_2387581A0();
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v68 = v148;
  }

  v70 = v146;
  v71 = v143;
  v72 = v132;
  v73 = v144;
  v74 = 1;
  (*(v141 + 56))(v68, v69, 1, v142);
  v75 = [v64 orderContent];
  sub_23875A5B0();

  sub_23843981C(v68, v73, &qword_27DF0BB68, &unk_2387774E0);
  v76 = [v64 isMarkedAsComplete];
  v77 = [v64 isMarkedAsCompleteModificationDate];
  v78 = v145;
  if (v77)
  {
    v79 = v77;
    sub_23875BBE0();

    v74 = 0;
  }

  v80 = v74;
  v81 = v133;
  (*(v72 + 56))(v78, v80, 1, v133);
  if (v76)
  {
    v82 = v127;
    sub_23843981C(v78, v127, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v72 + 48))(v82, 1, v81) != 1)
    {
      sub_238439884(v78, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v73, &qword_27DF0BB68, &unk_2387774E0);
      (*(v139 + 8))(v67, v135);
      v98 = *(v72 + 32);
      v99 = v125;
      v98(v125, v82, v81);
      v98(v71, v99, v81);
      v100 = v137;
      (*(v137 + 104))(v71, *MEMORY[0x277CC83B0], v70);
      goto LABEL_22;
    }

    sub_238439884(v82, &qword_27DF12E00, &unk_238763FC0);
  }

  v83 = *MEMORY[0x277CC6DF8];
  v84 = v139;
  v85 = *(v139 + 104);
  v86 = v129;
  v87 = v135;
  v85(v129, v83, v135);
  sub_2386A6194(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  sub_23875EC40();
  sub_23875EC40();
  v88 = *(v84 + 8);
  v88(v86, v87);
  if (v151 == v150)
  {
    sub_238439884(v145, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v144, &qword_27DF0BB68, &unk_2387774E0);
    v88(v67, v87);
    v85(v71, v83, v87);
    v89 = MEMORY[0x277CC83B8];
LABEL_19:
    v100 = v137;
    v70 = v146;
    (*(v137 + 104))(v71, *v89, v146);
    v64 = v147;
    goto LABEL_22;
  }

  v90 = v144;
  v91 = v126;
  sub_23843981C(v144, v126, &qword_27DF0BB68, &unk_2387774E0);
  v92 = v141;
  v93 = v142;
  if ((*(v141 + 48))(v91, 1, v142) != 1)
  {
    sub_238439884(v145, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v90, &qword_27DF0BB68, &unk_2387774E0);
    v88(v140, v87);
    v101 = *(v92 + 32);
    v102 = v124;
    v101(v124, v91, v93);
    v71 = v143;
    v101(v143, v102, v93);
    v89 = MEMORY[0x277CC83A8];
    goto LABEL_19;
  }

  sub_238439884(v91, &qword_27DF0BB68, &unk_2387774E0);
  v94 = v90;
  v95 = v129;
  v85(v129, *MEMORY[0x277CC6DF0], v87);
  v96 = v140;
  sub_23875EC40();
  sub_23875EC40();
  v88(v95, v87);
  sub_238439884(v145, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v94, &qword_27DF0BB68, &unk_2387774E0);
  if (v151 == v150)
  {
    v88(v96, v87);
    v97 = v123;
    v85(v123, *MEMORY[0x277CC6DE0], v87);
  }

  else
  {
    v97 = v123;
    (*(v139 + 32))(v123, v96, v87);
  }

  v70 = v146;
  v64 = v147;
  v100 = v137;
  v71 = v143;
  (*(v137 + 104))(v97, *MEMORY[0x277CC83B8], v146);
  (*(v100 + 32))(v71, v97, v70);
LABEL_22:
  v103 = *(v100 + 32);
  v104 = v136;
  v103(v136, v71, v70);
  v105 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v106 = v149;
  v103(v149 + v105[8], v104, v70);
  v107 = v64;
  v108 = [v107 trackedOrderIdentifier];
  v109 = sub_23875EA80();
  v111 = v110;

  v112 = [v107 orderContent];
  v113 = [v112 merchantDisplayName];

  v114 = sub_23875EA80();
  v116 = v115;

  v117 = [v107 orderContent];
  LOBYTE(v113) = sub_23875A5D0();

  LOBYTE(v117) = [v107 isMarkedAsComplete];
  v118 = v106 + v105[9];
  *v118 = v109;
  *(v118 + 8) = v111;
  *(v118 + 16) = v114;
  *(v118 + 24) = v116;
  *(v118 + 32) = v113 & 1;
  *(v118 + 33) = v117;
  sub_23846C8C4(v107, v138 & 1, &v151);

  sub_238439884(v148, &qword_27DF0BB68, &unk_2387774E0);
  v119 = (v106 + v105[10]);
  v120 = *v152;
  *v119 = v151;
  v119[1] = v120;
  result = *&v152[12];
  *(v119 + 28) = *&v152[12];
  return result;
}

uint64_t sub_2386A3974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v4 = qword_2814F0880;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_2386A3B18@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_23875C880();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139D0, &qword_23877E7B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139D8, &qword_23877E7B8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139E0, &qword_23877E7C0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v57 = &v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139E8, &qword_23877E7C8);
  v24 = *(v23 - 8);
  v60 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v59 = &v56 - v26;
  v56 = v1;
  sub_2386A3FD0(v1, v13);
  v58 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  v27 = v1 + *(v58 + 24);
  sub_2384D5138(v9);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF9D8], v2);
  LOBYTE(v27) = sub_23875C870();
  v28 = *(v3 + 8);
  v28(v6, v2);
  v28(v9, v2);
  if (v27)
  {
    v29 = 0x4028000000000000;
  }

  else
  {
    v29 = 0x4030000000000000;
  }

  sub_2384396E4(v13, v18, &qword_27DF139D0, &qword_23877E7B0);
  v30 = &v18[*(v15 + 44)];
  *v30 = 0x4028000000000000;
  *(v30 + 1) = v29;
  *(v30 + 2) = 0x4028000000000000;
  *(v30 + 3) = v29;
  v30[32] = 0;
  v31 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v33 = v56;
  v32 = v57;
  v34 = v56 + *(v31 + 36);
  v36 = *v34;
  v35 = *(v34 + 8);
  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  v39 = *(v34 + 32);
  LOBYTE(v34) = *(v34 + 33);
  v40 = &v57[*(v20 + 44)];
  *v40 = v36;
  *(v40 + 1) = v35;
  *(v40 + 2) = v37;
  *(v40 + 3) = v38;
  v40[32] = v39;
  v40[33] = v34;
  LOBYTE(v62[0]) = 0;

  sub_23875E1A0();
  v41 = *(&v66 + 1);
  v40[40] = v66;
  *(v40 + 6) = v41;
  v42 = *(type metadata accessor for ExtractedOrderListRowActionsModifier() + 24);
  *&v40[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2384396E4(v18, v32, &qword_27DF139D8, &qword_23877E7B8);
  v43 = (v33 + *(v31 + 40));
  *&v67[12] = *(v43 + 28);
  v44 = v43[1];
  v66 = *v43;
  *v67 = v44;
  v45 = (v33 + *(v58 + 20));
  v46 = *v45;
  v47 = *(v45 + 1);
  v64 = v46;
  v65 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v48 = v62[0];
  v49 = v62[1];
  v50 = v63;
  v51 = v59;
  v52 = &v59[*(v60 + 44)];
  v53 = *v67;
  *v52 = v66;
  *(v52 + 1) = v53;
  *(v52 + 28) = *&v67[12];
  *(v52 + 6) = v48;
  *(v52 + 7) = v49;
  v52[64] = v50;
  v54 = *(type metadata accessor for ExtractedOrderActionsContextMenu(0) + 24);
  *&v52[v54] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_2384396E4(v32, v51, &qword_27DF139E0, &qword_23877E7C0);
  sub_2384396E4(v51, v61, &qword_27DF139E8, &qword_23877E7C8);
  return sub_23846CF68(&v66, v62);
}

uint64_t sub_2386A3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139F0, &qword_23877E7F8);
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v33 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF139F8, &qword_23877E800);
  v5 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v36 = &v33 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A00, &qword_23877E808);
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A08, &qword_23877E810);
  v10 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A10, &qword_23877E818);
  v13 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v33 - v14;
  v16 = sub_23875C880();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A18, &qword_23877E820);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v33 - v23;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = v38 + *(type metadata accessor for ExtractedOrderArchiveMonthRow(0) + 24);
  sub_2384D5138(v20);
  LOBYTE(v25) = sub_23875C860();
  (*(v17 + 8))(v20, v16);
  if (v25)
  {
    *v12 = sub_23875D030();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A58, &unk_23877E838);
    sub_2386A4554(&v12[*(v26 + 44)]);
    *&v12[*(v34 + 36)] = 256;
    sub_2386A58AC();
    sub_23875DE00();
    sub_238439884(v12, &qword_27DF13A08, &qword_23877E810);
    v27 = &qword_27DF13A10;
    v28 = &qword_23877E818;
    sub_23843981C(v15, v9, &qword_27DF13A10, &qword_23877E818);
    swift_storeEnumTagMultiPayload();
    sub_2386A57F0();
    sub_2386A5964();
    sub_23875D1B0();
    v29 = v15;
  }

  else
  {
    *v4 = sub_23875CE60();
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A20, &qword_23877E828);
    sub_2386A5294(&v4[*(v30 + 44)]);
    sub_23843A3E8(&qword_27DF13A28, &qword_27DF139F0, &qword_23877E7F8);
    v31 = v36;
    sub_23875DE00();
    sub_238439884(v4, &qword_27DF139F0, &qword_23877E7F8);
    v27 = &qword_27DF139F8;
    v28 = &qword_23877E800;
    sub_23843981C(v31, v9, &qword_27DF139F8, &qword_23877E800);
    swift_storeEnumTagMultiPayload();
    sub_2386A57F0();
    sub_2386A5964();
    sub_23875D1B0();
    v29 = v31;
  }

  sub_238439884(v29, v27, v28);
  sub_2384396E4(v24, v42, &qword_27DF13A18, &qword_23877E820);
}

uint64_t sub_2386A4554@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - v5;
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v45 = &v41 - v12;
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A60, &qword_23877E848);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A68, &qword_23877E850);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v50 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v27 = sub_23875CE50();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A70, &qword_23877E858) + 44)];
  sub_2386A4AB0(v21);
  v43 = v27;
  sub_23843981C(v21, v18, &qword_27DF13A60, &qword_23877E848);
  sub_23843981C(v18, v28, &qword_27DF13A60, &qword_23877E848);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A78, &qword_23877E860) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_238439884(v21, &qword_27DF13A60, &qword_23877E848);
  sub_238439884(v18, &qword_27DF13A60, &qword_23877E848);

  v30 = v42;
  sub_2386A4E20();
  v31 = v45;
  sub_2386A4F94();
  sub_2386A510C();
  v32 = v50;
  sub_23843981C(v27, v50, &qword_27DF13A68, &qword_23877E850);
  v33 = v46;
  sub_23843981C(v30, v46, &qword_27DF0E838, &unk_23877A3B0);
  v34 = v48;
  sub_23843981C(v31, v48, &qword_27DF0E838, &unk_23877A3B0);
  v35 = v49;
  sub_23843981C(v10, v49, &qword_27DF0E838, &unk_23877A3B0);
  v36 = v32;
  v37 = v10;
  v38 = v47;
  sub_23843981C(v36, v47, &qword_27DF13A68, &qword_23877E850);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A80, &unk_23877E868);
  sub_23843981C(v33, v38 + v39[12], &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v34, v38 + v39[16], &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v35, v38 + v39[20], &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v37, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v31, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v30, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v43, &qword_27DF13A68, &qword_23877E850);
  sub_238439884(v35, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v34, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v33, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v50, &qword_27DF13A68, &qword_23877E850);
}

uint64_t sub_2386A4AB0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23875DFD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A88, &qword_23877E878);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - v8;
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v29 = 0;
  v30 = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v14 = v32;
  v15 = v33;
  *(v9 + 4) = v31;
  v9[40] = v14;
  *(v9 + 6) = v15;
  v29 = 0;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v16 = v32;
  v17 = v33;
  *(v9 + 7) = v31;
  v9[64] = v16;
  *(v9 + 9) = v17;
  v18 = *(type metadata accessor for ExtractedOrderMerchantIcon(0) + 32);
  *&v9[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v9 = v11;
  *(v9 + 1) = v10;
  *(v9 + 2) = v12;
  *(v9 + 3) = v13;
  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v2);
  v19 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510) + 36)];
  v22 = type metadata accessor for OrderImageStyleModifier();
  *&v21[*(v22 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v21[*(v22 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v21 = xmmword_23876D160;
  *(v21 + 2) = 0;
  v21[24] = 1;
  *(v21 + 4) = v19;
  v21[40] = 0;
  v23 = sub_23875D000();
  v24 = &v9[*(v27 + 36)];
  *v24 = v23;
  v24[1] = sub_23843480C;
  v24[2] = 0;
  sub_2386A5CDC();
  sub_23875DE00();
  return sub_238439884(v9, &qword_27DF13A88, &qword_23877E878);
}

uint64_t sub_2386A4E20()
{
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  sub_2384397A8();

  v1 = sub_23875DAA0();
  v3 = v2;
  v5 = v4;
  sub_23875D820();
  v6 = sub_23875DA60();
  v8 = v7;
  v10 = v9;

  sub_2384397FC(v1, v3, v5 & 1);

  sub_23875D890();
  v11 = sub_23875D9E0();
  v13 = v12;
  LOBYTE(v1) = v14;
  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875DE00();
  sub_2384397FC(v11, v13, v1 & 1);
}

uint64_t sub_2386A4F94()
{
  sub_2386A3974();
  sub_2384397A8();
  v0 = sub_23875DAA0();
  v2 = v1;
  v4 = v3;
  sub_23875D7F0();
  v5 = sub_23875DA60();
  v7 = v6;
  v9 = v8;

  sub_2384397FC(v0, v2, v4 & 1);

  sub_23875D440();
  v10 = sub_23875DA20();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875DE00();
  sub_2384397FC(v10, v12, v0 & 1);
}

uint64_t sub_2386A510C()
{
  v1 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  sub_23860B7C4(v0 + *(v1 + 32));
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D7F0();
  v7 = sub_23875DA60();
  v9 = v8;
  v11 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_23875D440();
  v12 = sub_23875DA20();
  v14 = v13;
  LOBYTE(v2) = v15;
  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875DE00();
  sub_2384397FC(v12, v14, v2 & 1);
}

uint64_t sub_2386A5294@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120F8, &qword_23877A478);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13A60, &qword_23877E848);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386A4AB0(v15);
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12100, &qword_23877E8F0);
  sub_2386A5528(&v8[*(v16 + 44)]);
  sub_23843981C(v15, v12, &qword_27DF13A60, &qword_23877E848);
  sub_23843981C(v8, v5, &qword_27DF120F8, &qword_23877A478);
  sub_23843981C(v12, a1, &qword_27DF13A60, &qword_23877E848);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13AA8, &qword_23877E8F8);
  sub_23843981C(v5, a1 + *(v17 + 48), &qword_27DF120F8, &qword_23877A478);
  sub_238439884(v8, &qword_27DF120F8, &qword_23877A478);
  sub_238439884(v15, &qword_27DF13A60, &qword_23877E848);
  sub_238439884(v5, &qword_27DF120F8, &qword_23877A478);
  sub_238439884(v12, &qword_27DF13A60, &qword_23877E848);
}

uint64_t sub_2386A5528@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v23 - v19;
  sub_23875ED50();
  v23[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386A4E20();
  sub_2386A4F94();
  sub_2386A510C();
  sub_23843981C(v20, v11, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v17, v8, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v14, v5, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v11, a1, &qword_27DF0E838, &unk_23877A3B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12110, &qword_23877A4C0);
  sub_23843981C(v8, a1 + *(v21 + 48), &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v5, a1 + *(v21 + 64), &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v14, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v17, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v20, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v5, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v8, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v11, &qword_27DF0E838, &unk_23877A3B0);
}

unint64_t sub_2386A57F0()
{
  result = qword_27DF13A30;
  if (!qword_27DF13A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13A10, &qword_23877E818);
    sub_2386A58AC();
    sub_2386A6194(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13A30);
  }

  return result;
}

unint64_t sub_2386A58AC()
{
  result = qword_27DF13A38;
  if (!qword_27DF13A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13A08, &qword_23877E810);
    sub_23843A3E8(&qword_27DF13A40, &qword_27DF13A48, &qword_23877E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13A38);
  }

  return result;
}

unint64_t sub_2386A5964()
{
  result = qword_27DF13A50;
  if (!qword_27DF13A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139F8, &qword_23877E800);
    sub_23843A3E8(&qword_27DF13A28, &qword_27DF139F0, &qword_23877E7F8);
    sub_2386A6194(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13A50);
  }

  return result;
}

uint64_t sub_2386A5A4C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_29;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23875F630() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = a1[7];
  v7 = a2[7];
  if (v6)
  {
    if (!v7 || (a1[6] != a2[6] || v6 != v7) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v7)
  {
LABEL_29:
    v21 = 0;
    return v21 & 1;
  }

  v8 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v9 = v8[8];
  sub_2387580D0();
  sub_2387581B0();
  sub_2386A6194(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
  sub_2386A6194(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);
  if ((sub_23875AC60() & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = v8[9];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = *(a1 + v10 + 32);
  v28 = *(a1 + v10 + 33);
  v16 = a2 + v10;
  v17 = *(v16 + 2);
  v18 = *(v16 + 3);
  v19 = v16[32];
  v20 = v16[33];
  if ((v11 != *v16 || v12 != *(v16 + 1)) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v13 == v17 && v14 == v18)
  {
    v21 = 0;
    if (v15 != v19)
    {
      return v21 & 1;
    }
  }

  else
  {
    v23 = sub_23875F630();
    v21 = 0;
    if (v23 & 1) == 0 || ((v15 ^ v19))
    {
      return v21 & 1;
    }
  }

  if (((v28 ^ v20) & 1) == 0)
  {
    v24 = (a1 + v8[10]);
    *&v30[12] = *(v24 + 28);
    v25 = v24[1];
    v29 = *v24;
    *v30 = v25;
    v26 = (a2 + v8[10]);
    *&v32[12] = *(v26 + 28);
    v27 = v26[1];
    v31 = *v26;
    *v32 = v27;
    v21 = sub_23846C7F4(&v29, &v31);
  }

  return v21 & 1;
}

unint64_t sub_2386A5CDC()
{
  result = qword_27DF13A90;
  if (!qword_27DF13A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13A88, &qword_23877E878);
    sub_2386A5D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13A90);
  }

  return result;
}

unint64_t sub_2386A5D68()
{
  result = qword_27DF13A98;
  if (!qword_27DF13A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C70, &unk_238769510);
    sub_2386A6194(&qword_27DF13AA0, type metadata accessor for ExtractedOrderMerchantIcon);
    sub_2386A6194(&qword_27DF0EC78, type metadata accessor for OrderImageStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13A98);
  }

  return result;
}

unint64_t sub_2386A5E54()
{
  result = qword_27DF13AB0;
  if (!qword_27DF13AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139E8, &qword_23877E7C8);
    sub_2386A5F10();
    sub_2386A6194(qword_27DF13AE0, type metadata accessor for ExtractedOrderActionsContextMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13AB0);
  }

  return result;
}

unint64_t sub_2386A5F10()
{
  result = qword_27DF13AB8;
  if (!qword_27DF13AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139E0, &qword_23877E7C0);
    sub_2386A5FCC();
    sub_2386A6194(&qword_27DF13AD8, type metadata accessor for ExtractedOrderListRowActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13AB8);
  }

  return result;
}

unint64_t sub_2386A5FCC()
{
  result = qword_27DF13AC0;
  if (!qword_27DF13AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139D8, &qword_23877E7B8);
    sub_2386A6084();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13AC0);
  }

  return result;
}

unint64_t sub_2386A6084()
{
  result = qword_27DF13AC8;
  if (!qword_27DF13AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF139D0, &qword_23877E7B0);
    sub_2386A6108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13AC8);
  }

  return result;
}

unint64_t sub_2386A6108()
{
  result = qword_27DF13AD0;
  if (!qword_27DF13AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13A18, &qword_23877E820);
    sub_2386A57F0();
    sub_2386A5964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13AD0);
  }

  return result;
}

uint64_t sub_2386A6194(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2386A61EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_23846D0DC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386A628C(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_2386A63D0(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_2386A65F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B68, &qword_23877EA00);
  v33 = v5;
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - v7;
  v8 = *(a1 + 16);
  v32 = sub_23843A3E8(&qword_27DF13B70, &qword_27DF13B68, &qword_23877EA00);
  v9 = *(a1 + 24);
  v42 = v5;
  v43 = v8;
  v44 = v32;
  v45 = v9;
  v35 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v30 = &v29 - v16;
  v17 = v31;
  (*(v3 + 16))(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v31, a1, v15);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v9;
  (*(v3 + 32))(v19 + v18, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v39 = v8;
  v40 = v9;
  v20 = v17;
  v41 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B78, &qword_23877EA08);
  sub_2386A77EC();
  v21 = v34;
  sub_23875E200();
  v22 = v20 + *(a1 + 36);
  v23 = v32;
  v24 = v33;
  sub_23875DB30();
  (*(v37 + 8))(v21, v24);
  v42 = v24;
  v43 = v8;
  v44 = v23;
  v45 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_23844EA0C(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v36 + 8);
  v27(v13, OpaqueTypeMetadata2);
  sub_23844EA0C(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_2386A69CC(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for RoundedButton() + 44);
  v3 = *(v2 + 8);
  (*v2)();
}

uint64_t sub_2386A6A98@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v86 = a1;
  v91 = a4;
  v84 = sub_23875CFD0();
  v76 = *(v84 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a2 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BB8, &qword_23877EA38);
  v10 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v12 = &v76 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EA0, &qword_238775F70);
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v15 = &v76 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BB0, &unk_23877EA20);
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v76 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BA0, &qword_23877EA18);
  v19 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v21 = &v76 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B90, &qword_23877EA10);
  v22 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B78, &qword_23877EA08);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v88 = &v76 - v30;
  sub_23875ED50();
  v87 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = type metadata accessor for RoundedButton();
  if (v86[*(v31 + 40)] == 1)
  {
    sub_23875C530();
    sub_23875E4A0();
    sub_23875C9C0();
    (*(v78 + 32))(v18, v15, v79);
    v32 = &v18[*(v77 + 36)];
    v33 = v98;
    *(v32 + 4) = v97;
    *(v32 + 5) = v33;
    *(v32 + 6) = v99;
    v34 = v94;
    *v32 = v93;
    *(v32 + 1) = v34;
    v35 = v96;
    *(v32 + 2) = v95;
    *(v32 + 3) = v35;
    sub_23875E4A0();
    sub_23875C9C0();
    sub_2384396E4(v18, v21, &qword_27DF13BB0, &unk_23877EA20);
    v36 = &v21[*(v80 + 36)];
    v37 = v105;
    *(v36 + 4) = v104;
    *(v36 + 5) = v37;
    *(v36 + 6) = v106;
    v38 = v101;
    *v36 = v100;
    *(v36 + 1) = v38;
    v39 = v103;
    *(v36 + 2) = v102;
    *(v36 + 3) = v39;
    sub_2384396E4(v21, v24, &qword_27DF13BA0, &qword_23877EA18);
    *&v24[*(v89 + 36)] = 256;
    sub_2384396E4(v24, v27, &qword_27DF13B90, &qword_23877EA10);
    sub_2386A7A48(v27, v12);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
    sub_2386A7878();
    sub_2384D3460();
    v40 = v88;
    sub_23875D1B0();
    sub_2386A7AB8(v27);
  }

  else
  {
    v41 = v31;
    v42 = *(v86 + 1);
    *&v100 = *v86;
    *(&v100 + 1) = v42;
    v43 = v86;
    sub_2384397A8();

    v44 = sub_23875DAA0();
    v46 = v45;
    v48 = v47;
    sub_23875D890();
    v80 = sub_23875D9E0();
    v50 = v49;
    v52 = v51;
    v85 = v53;
    sub_2384397FC(v44, v46, v48 & 1);

    (*(v82 + 16))(v81, &v43[*(v41 + 36)], a2);
    v54 = v83;
    v55 = v84;
    if (swift_dynamicCast())
    {
      (*(v76 + 8))(v54, v55);
      v56 = [objc_opt_self() labelColor];
      v57 = sub_23875DFB0();
    }

    else
    {
      v57 = sub_23875E040();
    }

    *&v100 = v57;
    v58 = v80;
    v86 = sub_23875DA20();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_2384397FC(v58, v50, v52 & 1);

    sub_23875E4A0();
    sub_23875C9C0();
    v92 = v62 & 1;
    sub_23875E4A0();
    sub_23875C9C0();
    v65 = v105;
    *(v12 + 6) = v104;
    *(v12 + 7) = v65;
    v66 = v106;
    v67 = v101;
    *(v12 + 2) = v100;
    *(v12 + 3) = v67;
    v68 = v103;
    *(v12 + 4) = v102;
    *(v12 + 5) = v68;
    v69 = v97;
    v70 = v98;
    v71 = v95;
    *(v12 + 12) = v96;
    *(v12 + 13) = v69;
    v72 = v99;
    *(v12 + 14) = v70;
    *(v12 + 15) = v72;
    v73 = v93;
    v74 = v94;
    *(v12 + 8) = v66;
    *(v12 + 9) = v73;
    *v12 = v86;
    *(v12 + 1) = v60;
    v12[16] = v62 & 1;
    *(v12 + 3) = v64;
    *(v12 + 10) = v74;
    *(v12 + 11) = v71;
    *(v12 + 128) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
    sub_2386A7878();
    sub_2384D3460();
    v40 = v88;
    sub_23875D1B0();
  }

  sub_2384396E4(v40, v91, &qword_27DF13B78, &qword_23877EA08);
}

uint64_t sub_2386A7478@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_23875CE80();
  v3 = *(v2 - 8);
  v19 = v2;
  v20 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v15 = v1[2];
  v14 = v1[3];
  v25[0] = v12;
  v25[1] = v13;
  v22 = v25;
  v23 = 0x6B72616D78;
  v24 = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();

  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_2386A7704();
  v16 = v19;
  sub_23875DB00();
  (*(v20 + 8))(v6, v16);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_2386A7704()
{
  result = qword_27DF0B740;
  if (!qword_27DF0B740)
  {
    sub_23875CE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B740);
  }

  return result;
}

uint64_t sub_2386A775C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for RoundedButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2386A69CC(v4);
}

unint64_t sub_2386A77EC()
{
  result = qword_27DF13B80;
  if (!qword_27DF13B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13B78, &qword_23877EA08);
    sub_2386A7878();
    sub_2384D3460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13B80);
  }

  return result;
}

unint64_t sub_2386A7878()
{
  result = qword_27DF13B88;
  if (!qword_27DF13B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13B90, &qword_23877EA10);
    sub_2386A7904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13B88);
  }

  return result;
}

unint64_t sub_2386A7904()
{
  result = qword_27DF13B98;
  if (!qword_27DF13B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BA0, &qword_23877EA18);
    sub_2386A7990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13B98);
  }

  return result;
}

unint64_t sub_2386A7990()
{
  result = qword_27DF13BA8;
  if (!qword_27DF13BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BB0, &unk_23877EA20);
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13BA8);
  }

  return result;
}

uint64_t sub_2386A7A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B90, &qword_23877EA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386A7AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13B90, &qword_23877EA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FKBankConnectTermsAndConditionsViewControllerProvider __swiftcall FKBankConnectTermsAndConditionsViewControllerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FKBankConnectTermsAndConditionsViewControllerProvider()
{
  result = qword_27DF13BC0;
  if (!qword_27DF13BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF13BC0);
  }

  return result;
}

uint64_t type metadata accessor for BankConnectTermsAndConditionsViewController()
{
  result = qword_27DF13BD8;
  if (!qword_27DF13BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386A8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  v15 = sub_238758CC0();
  v16 = sub_238758CB0();
  v27 = v15;
  v28 = MEMORY[0x277CC7460];
  *&v26 = v16;
  v17 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v25[7] = 0;
  sub_23875C290();
  v21 = sub_23875B940();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_2386A85C4(v14, v11);
  sub_23875C290();
  sub_2386A8634(v14);
  v22 = (v20 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  *v22 = a1;
  v22[1] = a2;
  *(v20 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable) = 0;
  *(v20 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType) = 1;
  sub_2384347C0(&v26, v20 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService);
  v23 = (v20 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  *v23 = a3;
  v23[1] = a4;

  sub_238455C54(a3);
  return v20;
}

uint64_t sub_2386A822C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_2386A8344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectTermsAndConditionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2386A8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  objc_allocWithZone(type metadata accessor for BankConnectTermsAndConditionsViewController());
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  *v15 = sub_2386A84F8;
  *(v15 + 1) = v16;
  v15[16] = 0;
  v17 = *(v9 + 28);
  *&v15[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_2386A8504(v15, v12);

  v18 = sub_23875D080();
  sub_2386A8568(v15);
  return v18;
}

uint64_t sub_2386A8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386A8568(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386A85C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386A8634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_4Tm_1()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

size_t OrderPaymentViewModel.init(order:orderContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OrderPaymentViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v157 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_23875B040();
  v169 = *(v148 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v156 = &v134 - v14;
  v15 = sub_238759C30();
  v158 = *(v15 - 8);
  v159 = v15;
  v16 = *(v158 + 64);
  MEMORY[0x28223BE20](v15);
  v146 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v145 = &v134 - v19;
  v20 = type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0);
  v165 = *(v20 - 8);
  v166 = v20;
  v21 = *(v165 + 64);
  MEMORY[0x28223BE20](v20);
  v168 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v161 = (&v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v160 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v164 = &v134 - v33;
  v34 = sub_238758090();
  v154 = *(v34 - 8);
  v155 = v34;
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v34);
  v162 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_23875B240();
  v37 = *(v167 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v167);
  v40 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875AF90();
  v152 = *(v41 - 8);
  v153 = v41;
  v42 = *(v152 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23875BC40();
  v150 = *(v45 - 8);
  v151 = v45;
  v46 = *(v150 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B8, &unk_23877E368);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v149 = &v134 - v52;
  v163 = [a2 payment];
  if (!v163)
  {

    v69 = *(v7 + 56);
    goto LABEL_59;
  }

  v135 = v31;
  v144 = v6;
  v53 = [a2 createdDate];
  sub_23875BBE0();

  v139 = v44;
  v140 = a1;
  sub_238757DA0();
  v54 = [a2 merchant];
  v55 = a2;
  v56 = [v54 displayName];

  v137 = sub_2387586A0();
  v136 = v57;

  v141 = v55;
  v58 = sub_23875A5A0();
  v59 = v58;
  if (v58 >> 62)
  {
    v60 = sub_23875F3A0();
  }

  else
  {
    v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = MEMORY[0x277D84F90];
  v138 = v48;
  v143 = a3;
  v142 = v7;
  if (v60)
  {
    v170 = MEMORY[0x277D84F90];
    result = sub_2385FEC7C(0, v60 & ~(v60 >> 63), 0);
    if (v60 < 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    v63 = 0;
    v64 = v170;
    do
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE63F70](v63, v59);
      }

      else
      {
        v65 = *(v59 + 8 * v63 + 32);
      }

      sub_23875B250();
      v170 = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_2385FEC7C(v66 > 1, v67 + 1, 1);
        v64 = v170;
      }

      ++v63;
      *(v64 + 16) = v67 + 1;
      (*(v37 + 32))(v64 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v67, v40, v167);
      v68 = v168;
    }

    while (v60 != v63);
    v167 = v64;

    v61 = MEMORY[0x277D84F90];
  }

  else
  {

    v167 = MEMORY[0x277D84F90];
    v68 = v168;
  }

  v70 = v163;
  v71 = sub_238758FB0();
  v72 = v71;
  v73 = v161;
  if (v71 >> 62)
  {
    v74 = sub_23875F3A0();
    if (v74)
    {
LABEL_18:
      v170 = v61;
      result = sub_2385FEC38(0, v74 & ~(v74 >> 63), 0);
      if ((v74 & 0x8000000000000000) == 0)
      {
        v75 = 0;
        v76 = v170;
        do
        {
          if ((v72 & 0xC000000000000001) != 0)
          {
            v77 = MEMORY[0x23EE63F70](v75, v72);
          }

          else
          {
            v77 = *(v72 + 8 * v75 + 32);
          }

          v78 = v77;
          v79 = [v77 label];
          v80 = sub_2387586A0();
          v82 = v81;

          *v68 = v80;
          v68[1] = v82;
          v83 = v68 + *(v166 + 20);
          sub_23875A860();

          v170 = v76;
          v85 = *(v76 + 16);
          v84 = *(v76 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_2385FEC38(v84 > 1, v85 + 1, 1);
            v76 = v170;
          }

          ++v75;
          *(v76 + 16) = v85 + 1;
          sub_2386B598C(v68, v76 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v85, type metadata accessor for OrderPaymentSummaryItemView.ViewModel);
        }

        while (v74 != v75);

        v70 = v163;
        v73 = v161;
        goto LABEL_30;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  else
  {
    v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_18;
    }
  }

  v76 = MEMORY[0x277D84F90];
LABEL_30:
  sub_238758FD0();
  v86 = v160;
  sub_238758FE0();
  sub_23843981C(v86, v73, &qword_27DF09380, &qword_2387632C8);
  v88 = v158;
  v87 = v159;
  v89 = v73;
  v90 = 1;
  if ((*(v158 + 48))(v89, 1, v159) != 1)
  {
    v91 = v145;
    (*(v88 + 32))(v145, v89, v87);
    (*(v88 + 16))(v146, v91, v87);
    sub_238758D40();
    v92 = v91;
    v86 = v160;
    (*(v88 + 8))(v92, v87);
    v90 = 0;
  }

  sub_238439884(v86, &qword_27DF09380, &qword_2387632C8);
  v93 = sub_238758D30();
  v94 = *(v93 - 8);
  v94[7](v164, v90, 1, v93);
  v95 = [v70 paymentMethods];
  v96 = MEMORY[0x277D84F90];
  if (v95)
  {
    v97 = v95;
    v98 = sub_23875EC80();
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
  }

  v99 = sub_238758FC0();
  if (v99 >> 62)
  {
    v133 = v99;
    v100 = sub_23875F3A0();
    v99 = v133;
  }

  else
  {
    v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v165 = v93;
  v161 = v94;
  v168 = v98;
  if (!v100)
  {

    v103 = MEMORY[0x277D84F90];
LABEL_48:
    v113 = v141;
    v114 = [v141 barcode];
    v115 = v156;
    v116 = v139;
    if (v114)
    {
      v117 = v114;
      sub_238758F70();

      v118 = 0;
    }

    else
    {
      v118 = 1;
    }

    v119 = sub_23875B290();
    v120 = *(*(v119 - 8) + 56);
    v120(v115, v118, 1, v119);
    v6 = v144;
    v121 = v144[13];
    v122 = v157;
    v120(&v157[v121], 1, 1, v119);
    (*(v150 + 32))(v122, v138, v151);
    (*(v152 + 32))(v122 + v6[5], v116, v153);
    v123 = (v122 + v6[6]);
    v124 = v136;
    *v123 = v137;
    v123[1] = v124;
    v125 = v167;
    *(v122 + v6[7]) = v167;
    *(v122 + v6[8]) = v76;
    (*(v154 + 32))(v122 + v6[9], v162, v155);
    v126 = v6[10];
    sub_2384396E4(v164, v122 + v126, &qword_27DF13BF0, &unk_23877EAD0);
    *(v122 + v6[11]) = v168;
    *(v122 + v6[12]) = v103;
    sub_2386B59F4(v115, v122 + v121);
    if (*(v125 + 16) || *(v76 + 16) || *(v103 + 16) || (v127 = v135, sub_23843981C(v122 + v126, v135, &qword_27DF13BF0, &unk_23877EAD0), v128 = v161[6](v127, 1, v165), v6 = v144, sub_238439884(v127, &qword_27DF13BF0, &unk_23877EAD0), v128 != 1))
    {
      v130 = v149;
      sub_2386B5B70(v122, v149, type metadata accessor for OrderPaymentViewModel);
      v129 = v142;
      v69 = *(v142 + 56);
      v69(v130, 0, 1, v6);
      sub_2386B7430(v122, type metadata accessor for OrderPaymentViewModel);
    }

    else
    {
      sub_2386B7430(v122, type metadata accessor for OrderPaymentViewModel);
      v129 = v142;
      v69 = *(v142 + 56);
      v130 = v149;
      v69(v149, 1, 1, v6);
    }

    a3 = v143;
    if (!(*(v129 + 48))(v130, 1, v6))
    {
      sub_2386B598C(v130, a3, type metadata accessor for OrderPaymentViewModel);
      v131 = a3;
      v132 = 0;
      return (v69)(v131, v132, 1, v6);
    }

    sub_238439884(v130, &qword_27DF138B8, &unk_23877E368);
LABEL_59:
    v131 = a3;
    v132 = 1;
    return (v69)(v131, v132, 1, v6);
  }

  v101 = v99;
  v170 = v96;
  result = sub_2385FEBF4(0, v100 & ~(v100 >> 63), 0);
  if ((v100 & 0x8000000000000000) == 0)
  {
    v166 = v76;
    v102 = 0;
    v103 = v170;
    v104 = v101;
    v105 = v101 & 0xC000000000000001;
    v106 = v148;
    v107 = v147;
    v108 = v104;
    v109 = v100;
    do
    {
      if (v105)
      {
        MEMORY[0x23EE63F70](v102);
      }

      else
      {
        v110 = *(v104 + 8 * v102 + 32);
      }

      sub_23875B050();
      v170 = v103;
      v112 = *(v103 + 16);
      v111 = *(v103 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_2385FEBF4(v111 > 1, v112 + 1, 1);
        v106 = v148;
        v103 = v170;
      }

      ++v102;
      *(v103 + 16) = v112 + 1;
      (*(v169 + 32))(v103 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v112, v107, v106);
      v104 = v108;
    }

    while (v109 != v102);

    v70 = v163;
    v76 = v166;
    goto LABEL_48;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_2386A9750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v125 = a2;
  v4 = type metadata accessor for OrderPaymentViewModel(0);
  v123 = *(v4 - 1);
  v5 = *(v123 + 64);
  MEMORY[0x28223BE20](v4);
  v120 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB68, &qword_238771060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v118 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v95 - v12;
  v13 = sub_238759490();
  v109 = *(v13 - 8);
  v110 = v13;
  v14 = *(v109 + 64);
  MEMORY[0x28223BE20](v13);
  v104 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D00, &qword_23877EED0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v108 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v102 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v121 = &v95 - v27;
  v28 = sub_238758090();
  v115 = *(v28 - 8);
  v116 = v28;
  v29 = *(v115 + 64);
  MEMORY[0x28223BE20](v28);
  v122 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_238757CC0();
  v105 = *(v106 - 8);
  v31 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23875AF90();
  v113 = *(v34 - 8);
  v114 = v34;
  v35 = *(v113 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23875BC40();
  v111 = *(v38 - 8);
  v112 = v38;
  v39 = *(v111 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v95 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138B8, &unk_23877E368);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v117 = &v95 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF138C0, &qword_23877E378);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v95 - v47;
  v49 = sub_238758760();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v95 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759B00();
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    v54 = sub_238759B60();
    (*(*(v54 - 8) + 8))(a1, v54);
    sub_238439884(v48, &qword_27DF138C0, &qword_23877E378);
    v56 = v124;
    v55 = v125;
    v57 = v123;
  }

  else
  {
    v101 = v4;
    v97 = v50;
    v58 = *(v50 + 32);
    v98 = v49;
    v58(v53, v48, v49);
    v99 = v41;
    v59 = a1;
    sub_238759B40();
    v100 = v37;
    sub_238759AB0();
    v60 = v125;
    v61 = v125[4];
    __swift_project_boxed_opaque_existential_1(v125, v125[3]);
    sub_238759B30();
    sub_238757C60();
    (*(v105 + 8))(v33, v106);
    v105 = sub_23875A360();
    v96 = v62;

    v63 = sub_238759B50();
    MEMORY[0x28223BE20](v63);
    *(&v95 - 2) = v60;
    v106 = sub_23851EF70(sub_2386B6958, (&v95 - 4), v63);

    v64 = sub_238758710();
    MEMORY[0x28223BE20](v64);
    *(&v95 - 2) = v60;
    v95 = sub_23851EFC4(sub_2386B69A0, (&v95 - 4), v64);

    sub_238758740();
    v65 = v107;
    sub_238758750();
    v66 = v108;
    sub_23843981C(v65, v108, &qword_27DF13D00, &qword_23877EED0);
    v68 = v109;
    v67 = v110;
    v69 = 1;
    if ((*(v109 + 48))(v66, 1, v110) != 1)
    {
      v70 = v103;
      (*(v68 + 32))(v103, v66, v67);
      (*(v68 + 16))(v104, v70, v67);
      sub_238758D40();
      (*(v68 + 8))(v70, v67);
      v69 = 0;
    }

    sub_238439884(v65, &qword_27DF13D00, &qword_23877EED0);
    v71 = sub_238758D30();
    v72 = *(v71 - 8);
    v108 = v71;
    v109 = v72;
    v73 = v121;
    (*(v72 + 56))(v121, v69, 1);
    v110 = sub_238758730();
    v74 = sub_238758720();
    MEMORY[0x28223BE20](v74);
    v75 = v125;
    *(&v95 - 2) = v125;
    v76 = sub_23851F02C(sub_2386B69C0, (&v95 - 4), v74);

    v77 = v118;
    v78 = sub_238759AF0();
    MEMORY[0x28223BE20](v78);
    *(&v95 - 2) = v75;
    v79 = v119;
    sub_23869D048(sub_2386B6A08, (&v95 - 4), v119);
    v80 = sub_238759B60();
    (*(*(v80 - 8) + 8))(v59, v80);
    sub_238439884(v77, &qword_27DF0EB68, &qword_238771060);
    (*(v97 + 8))(v53, v98);
    v4 = v101;
    v81 = v101[13];
    v82 = sub_23875B290();
    v83 = v120;
    (*(*(v82 - 8) + 56))(&v120[v81], 1, 1, v82);
    (*(v111 + 32))(v83, v99, v112);
    (*(v113 + 32))(v83 + v4[5], v100, v114);
    v84 = (v83 + v4[6]);
    v85 = v96;
    *v84 = v105;
    v84[1] = v85;
    v86 = v106;
    *(v83 + v4[7]) = v106;
    v87 = v95;
    *(v83 + v4[8]) = v95;
    (*(v115 + 32))(v83 + v4[9], v122, v116);
    v88 = v4[10];
    sub_2384396E4(v73, v83 + v88, &qword_27DF13BF0, &unk_23877EAD0);
    *(v83 + v4[11]) = v110;
    *(v83 + v4[12]) = v76;
    sub_2386B59F4(v79, v83 + v81);
    v57 = v123;
    if (*(v86 + 16) || *(v87 + 16) || *(v76 + 16) || (v89 = v102, sub_23843981C(v83 + v88, v102, &qword_27DF13BF0, &unk_23877EAD0), v90 = (*(v109 + 48))(v89, 1, v108), sub_238439884(v89, &qword_27DF13BF0, &unk_23877EAD0), v90 != 1))
    {
      v92 = v117;
      sub_2386B5B70(v83, v117, type metadata accessor for OrderPaymentViewModel);
      v91 = *(v57 + 56);
      v91(v92, 0, 1, v4);
      sub_2386B7430(v83, type metadata accessor for OrderPaymentViewModel);
    }

    else
    {
      sub_2386B7430(v83, type metadata accessor for OrderPaymentViewModel);
      v91 = *(v57 + 56);
      v92 = v117;
      v91(v117, 1, 1, v4);
    }

    v93 = (*(v57 + 48))(v92, 1, v4);
    v56 = v124;
    if (!v93)
    {
      sub_2386B598C(v92, v124, type metadata accessor for OrderPaymentViewModel);
      v91(v56, 0, 1, v4);
      return __swift_destroy_boxed_opaque_existential_1(v125);
    }

    sub_238439884(v92, &qword_27DF138B8, &unk_23877E368);
    v55 = v125;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v57 + 56))(v56, 1, 1, v4);
}

uint64_t OrderPaymentViewModel.orderCreationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875BC40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OrderPaymentViewModel.orderCreationDate.setter(uint64_t a1)
{
  v3 = sub_23875BC40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OrderPaymentViewModel.orderVersionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderPaymentViewModel(0) + 20);
  v4 = sub_23875AF90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderPaymentViewModel.orderVersionIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderPaymentViewModel(0) + 20);
  v4 = sub_23875AF90();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderPaymentViewModel.merchantDisplayName.getter()
{
  v1 = (v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OrderPaymentViewModel.merchantDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OrderPaymentViewModel(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OrderPaymentViewModel.lineItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 28));
}

uint64_t OrderPaymentViewModel.summaryItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 32));
}

uint64_t OrderPaymentViewModel.total.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderPaymentViewModel(0) + 36);
  v4 = sub_238758090();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderPaymentViewModel.total.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderPaymentViewModel(0) + 36);
  v4 = sub_238758090();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderPaymentViewModel.paymentMethods.getter()
{
  v1 = *(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 44));
}

uint64_t OrderPaymentViewModel.paymentMethods.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderPaymentViewModel(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t OrderPaymentViewModel.transactions.getter()
{
  v1 = *(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 48));
}

uint64_t OrderPaymentViewModel.barcode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OrderPaymentViewModel(0) + 52);

  return sub_2386B59F4(a1, v3);
}

uint64_t OrderPaymentViewModel.init(orderCreationDate:orderVersionIdentifier:merchantDisplayName:lineItems:summaryItems:total:status:paymentMethods:transactions:barcode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a9;
  v48 = a8;
  v49 = a12;
  v45 = a11;
  v46 = a7;
  v47 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v44 = &v43 - v20;
  v21 = type metadata accessor for OrderPaymentViewModel(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 52);
  v28 = sub_23875B290();
  (*(*(v28 - 8) + 56))(&v25[v27], 1, 1, v28);
  v29 = sub_23875BC40();
  (*(*(v29 - 8) + 32))(v25, a1, v29);
  v30 = v21[5];
  v31 = sub_23875AF90();
  (*(*(v31 - 8) + 32))(&v25[v30], a2, v31);
  v32 = &v25[v21[6]];
  *v32 = a3;
  *(v32 + 1) = a4;
  v33 = a6;
  *&v25[v21[7]] = a5;
  *&v25[v21[8]] = a6;
  v34 = v21[9];
  v35 = sub_238758090();
  v36 = v45;
  (*(*(v35 - 8) + 32))(&v25[v34], v46, v35);
  v37 = v21[10];
  sub_2384396E4(v48, &v25[v37], &qword_27DF13BF0, &unk_23877EAD0);
  *&v25[v21[11]] = v47;
  *&v25[v21[12]] = v36;
  sub_2386B59F4(v49, &v25[v27]);
  if (*(a5 + 16) || *(v33 + 16) || *(v36 + 16) || (v38 = v44, sub_23843981C(&v25[v37], v44, &qword_27DF13BF0, &unk_23877EAD0), v39 = sub_238758D30(), v40 = (*(*(v39 - 8) + 48))(v38, 1, v39), sub_238439884(v38, &qword_27DF13BF0, &unk_23877EAD0), v40 != 1))
  {
    v42 = v50;
    sub_2386B5B70(v25, v50, type metadata accessor for OrderPaymentViewModel);
    (*(v22 + 56))(v42, 0, 1, v21);
    return sub_2386B7430(v25, type metadata accessor for OrderPaymentViewModel);
  }

  else
  {
    sub_2386B7430(v25, type metadata accessor for OrderPaymentViewModel);
    return (*(v22 + 56))(v50, 1, 1, v21);
  }
}

uint64_t sub_2386AAFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875A290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  sub_23845C998(a2, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_23875A270();
  v12 = sub_23875A360();
  v14 = v13;

  *a3 = v12;
  a3[1] = v14;
  v15 = a3 + *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);
  sub_23875A280();
  (*(v7 + 8))(v11, v6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_2386AB150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(_BYTE *, _BYTE *))
{
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11 - 8];
  (*(v13 + 16))(&v16[-v11 - 8], a1, v10);
  sub_23845C998(a2, v16);
  return a5(v12, v16);
}

uint64_t OrderPaymentViewModel.analyticsProductIconsProvided.getter()
{
  v1 = sub_23875B240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for OrderPaymentViewModel(0);
  v7 = 0;
  v8 = *(v0 + *(result + 28));
  v9 = *(v8 + 16);
  while (1)
  {
    if (v9 == v7)
    {
      v12 = MEMORY[0x277D38520];
      goto LABEL_7;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v1);
    sub_23875B1F0();
    v11 = v10;
    result = (*(v2 + 8))(v5, v1);
    if (v11)
    {

      v12 = MEMORY[0x277D38528];
LABEL_7:
      v13 = *v12;
      return sub_23875EA80();
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderPaymentViewModel.analyticsSummaryItemsSpecified.getter()
{
  if (*(*(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 28)) + 16))
  {
    v1 = MEMORY[0x277D38528];
  }

  else
  {
    v1 = MEMORY[0x277D38520];
  }

  v2 = *v1;

  return sub_23875EA80();
}

uint64_t OrderPaymentViewModel.analyticsPaymentMethodsSpecified.getter()
{
  if (*(*(v0 + *(type metadata accessor for OrderPaymentViewModel(0) + 44)) + 16))
  {
    v1 = MEMORY[0x277D38528];
  }

  else
  {
    v1 = MEMORY[0x277D38520];
  }

  v2 = *v1;

  return sub_23875EA80();
}

uint64_t OrderPaymentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for OrderPaymentView(0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875D310();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF8, &qword_23877EAE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13C00, &qword_23877EAE8);
  sub_23843A3E8(&qword_27DF13C08, &qword_27DF13C00, &qword_23877EAE8);
  sub_23875D9C0();
  v13 = &v12[*(v9 + 36)];
  *v13 = xmmword_2387702F0;
  *(v13 + 1) = xmmword_2387702F0;
  v13[32] = 0;
  sub_23875D300();
  sub_2386B5A8C();
  v14 = v21;
  sub_23875DF50();
  (*(v5 + 8))(v8, v4);
  sub_238439884(v12, &qword_27DF13BF8, &qword_23877EAE0);
  v15 = v22;
  sub_2386B5B70(v20, v22, type metadata accessor for OrderPaymentView);
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  sub_2386B598C(v15, v17 + v16, type metadata accessor for OrderPaymentView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13C28, &qword_23877EB00);
  v19 = (v14 + *(result + 36));
  *v19 = sub_2386B5BD8;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_2386AB77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E60, &qword_23877F1C0);
  v169 = *(v3 - 8);
  v170 = v3;
  v4 = *(v169 + 64);
  MEMORY[0x28223BE20](v3);
  v148 = &v135 - v5;
  v6 = sub_23875B290();
  v174 = *(v6 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x28223BE20](v6);
  v168 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E68, &qword_23877F1C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v171 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v135 - v13;
  v153 = sub_23875CEA0();
  v152 = *(v153 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_23875C400();
  v143 = *(v144 - 8);
  v17 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v136 = &v135 - v23;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E70, &qword_23877F1D0);
  v24 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v146 = &v135 - v25;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E78, &qword_23877F1D8);
  v139 = *(v140 - 8);
  v26 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v138 = &v135 - v27;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E80, &qword_23877F1E0);
  v160 = *(v161 - 8);
  v28 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v141 = &v135 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v135 - v32;
  v150 = sub_238758D30();
  v149 = *(v150 - 8);
  v34 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v147 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E88, &qword_23877F1E8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v167 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v177 = &v135 - v40;
  v41 = type metadata accessor for OrderPaymentView(0);
  v157 = *(v41 - 8);
  v42 = *(v157 + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v158 = v43;
  v159 = (&v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E90, &qword_23877F1F0);
  v165 = *(v44 - 8);
  v166 = v44;
  v45 = *(v165 + 64);
  MEMORY[0x28223BE20](v44);
  v164 = &v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v180 = &v135 - v48;
  v49 = type metadata accessor for OrderPaymentHeaderView(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v135 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E98, &qword_23877F1F8);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v176 = &v135 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v179 = &v135 - v57;
  v58 = sub_23875ED50();
  v163 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = type metadata accessor for OrderPaymentViewModel(0);
  v60 = v59;
  v61 = *(*(a1 + *(v59 + 28)) + 16);
  v175 = v6;
  v178 = v14;
  v173 = v58;
  v145 = v33;
  if (v61 || *(*(a1 + *(v59 + 32)) + 16))
  {
    v62 = v59;
    v156 = &v135;
    MEMORY[0x28223BE20](v59);
    v155 = &v135 - 4;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v63 = sub_23875BC40();
    v64 = v52;
    (*(*(v63 - 8) + 16))(v52, a1, v63);
    v60 = v62;
    v65 = (a1 + v62[6]);
    v66 = *v65;
    v67 = v65[1];
    v68 = v60[9];
    v69 = *(v49 + 24);
    v70 = sub_238758090();
    (*(*(v70 - 8) + 16))(&v64[v69], a1 + v68, v70);

    v71 = &v64[*(v49 + 20)];
    *v71 = v66;
    *(v71 + 1) = v67;
    sub_2386ADC34(a1, &v183);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EA0, &qword_23877F200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EA8, &qword_23877F208);
    sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
    sub_23843A3E8(&qword_27DF13EB8, &qword_27DF13EA0, &qword_23877F200);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    v72 = v179;
    sub_23875E3C0();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13ED0, &qword_23877F210);
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  }

  else
  {
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13ED0, &qword_23877F210);
    (*(*(v134 - 8) + 56))(v179, 1, 1, v134);
  }

  v74 = *(a1 + v60[12]);
  v75 = *(v74 + 16);
  sub_23852FEA8(0, v74);
  v182 = v76;
  swift_getKeyPath();
  v77 = v159;
  sub_2386B5B70(a1, v159, type metadata accessor for OrderPaymentView);
  v78 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v79 = (v158 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_2386B598C(v77, v80 + v78, type metadata accessor for OrderPaymentView);
  *(v80 + v79) = v75;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_2386B6C5C;
  *(v81 + 24) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13ED8, &qword_23877F238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EE0, &qword_23877F240);
  sub_23843A3E8(&qword_27DF13EE8, &qword_27DF13ED8, &qword_23877F238);
  sub_2386B6D24();
  sub_23875E370();
  v83 = v174;
  v82 = v175;
  if (*(v74 + 16))
  {
    goto LABEL_11;
  }

  v84 = v145;
  sub_23843981C(a1 + v60[10], v145, &qword_27DF13BF0, &unk_23877EAD0);
  v85 = v149;
  v86 = v150;
  if ((*(v149 + 48))(v84, 1, v150) == 1)
  {
    sub_238439884(v84, &qword_27DF13BF0, &unk_23877EAD0);
LABEL_11:
    (*(v160 + 56))(v177, 1, 1, v161);
    goto LABEL_12;
  }

  v113 = (*(v85 + 32))(v147, v84, v86);
  MEMORY[0x28223BE20](v113);
  sub_2386AF0A0(a1, v146);
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v135 = v60;
  v114 = v136;
  sub_23843981C(a1 + v60[13], v136, &qword_27DF13BE8, &unk_23877EAC0);
  v115 = (*(v83 + 48))(v114, 1, v82) != 1;
  sub_238439884(v114, &qword_27DF13BE8, &unk_23877EAC0);

  v181 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F68, &qword_23877F2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EA8, &qword_23877F208);
  sub_2386B7070();
  sub_2386B71F8(&qword_27DF13F70, &qword_27DF13F68, &qword_23877F2B8, sub_2386B727C);
  sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
  v116 = v138;
  sub_23875E3C0();
  v117 = v143;
  v118 = v142;
  v119 = v144;
  (*(v143 + 104))(v142, *MEMORY[0x277CDF350], v144);
  sub_2386B7338();
  v120 = v141;
  v121 = v140;
  sub_23875DC80();
  (*(v117 + 8))(v118, v119);
  (*(v139 + 8))(v116, v121);
  v122 = v151;
  sub_23875CE90();
  v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F98, &qword_23877F2C8) + 36);
  v124 = v152;
  v125 = v153;
  (*(v152 + 16))(&v120[v123], v122, v153);
  v159 = *(v124 + 56);
  (v159)(&v120[v123], 0, 1, v125);
  KeyPath = swift_getKeyPath();
  v127 = v161;
  v128 = &v120[*(v161 + 36)];
  v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  v130 = v124;
  v60 = v135;
  v131 = v122;
  v82 = v175;
  (*(v130 + 32))(v128 + v129, v131, v125);
  (v159)(v128 + v129, 0, 1, v125);
  *v128 = KeyPath;
  v132 = v120;
  v83 = v174;
  v133 = v177;
  sub_23842B810(v132, v177);
  (*(v160 + 56))(v133, 0, 1, v127);
  (*(v149 + 8))(v147, v150);
LABEL_12:
  v87 = v162;
  sub_23843981C(a1 + v60[13], v162, &qword_27DF13BE8, &unk_23877EAC0);
  v88 = (*(v83 + 48))(v87, 1, v82);
  v89 = v178;
  if (v88 == 1)
  {
    sub_238439884(v87, &qword_27DF13BE8, &unk_23877EAC0);
    (*(v169 + 56))(v89, 1, 1, v170);
  }

  else
  {
    v90 = (*(v83 + 32))(v168, v87, v82);
    MEMORY[0x28223BE20](v90);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    type metadata accessor for BarcodeView(0);
    sub_2386B5C9C(&qword_27DF0EC20, type metadata accessor for BarcodeView);
    sub_2386B6C08();
    v91 = v148;
    sub_23875E3E0();
    v92 = v151;
    sub_23875CE90();
    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F60, &qword_23877F280) + 36);
    v94 = v152;
    v95 = v153;
    (*(v152 + 16))(v91 + v93, v92, v153);
    v96 = *(v94 + 56);
    v96(v91 + v93, 0, 1, v95);
    v97 = swift_getKeyPath();
    v98 = v170;
    v99 = (v91 + *(v170 + 36));
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v94 + 32))(v99 + v100, v92, v95);
    v96(v99 + v100, 0, 1, v95);
    *v99 = v97;
    v89 = v178;
    sub_2384396E4(v91, v178, &qword_27DF13E60, &qword_23877F1C0);
    (*(v169 + 56))(v89, 0, 1, v98);
    (*(v174 + 8))(v168, v175);
  }

  v101 = v176;
  sub_23843981C(v179, v176, &qword_27DF13E98, &qword_23877F1F8);
  v102 = v164;
  v103 = v165;
  v104 = *(v165 + 16);
  v105 = v166;
  v104(v164, v180, v166);
  v106 = v177;
  v107 = v167;
  sub_23843981C(v177, v167, &qword_27DF13E88, &qword_23877F1E8);
  v108 = v171;
  sub_23843981C(v89, v171, &qword_27DF13E68, &qword_23877F1C8);
  v109 = v172;
  sub_23843981C(v101, v172, &qword_27DF13E98, &qword_23877F1F8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F58, &qword_23877F278);
  v104((v109 + v110[12]), v102, v105);
  sub_23843981C(v107, v109 + v110[16], &qword_27DF13E88, &qword_23877F1E8);
  sub_23843981C(v108, v109 + v110[20], &qword_27DF13E68, &qword_23877F1C8);
  sub_238439884(v178, &qword_27DF13E68, &qword_23877F1C8);
  sub_238439884(v106, &qword_27DF13E88, &qword_23877F1E8);
  v111 = *(v103 + 8);
  v111(v180, v105);
  sub_238439884(v179, &qword_27DF13E98, &qword_23877F1F8);
  sub_238439884(v108, &qword_27DF13E68, &qword_23877F1C8);
  sub_238439884(v107, &qword_27DF13E88, &qword_23877F1E8);
  v111(v102, v105);
  sub_238439884(v176, &qword_27DF13E98, &qword_23877F1F8);
}

uint64_t sub_2386ACE78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FA8, &qword_23877F2E8);
  v2 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FB0, &qword_23877F2F0);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = (&v58 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FB8, &qword_23877F2F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v58 - v13;
  v14 = type metadata accessor for OrderPaymentView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FC0, &qword_23877F300);
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v17);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v58 - v21;
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = type metadata accessor for OrderPaymentViewModel(0);
  v23 = v73;
  sub_2385301E0(0, *(v73 + *(v22 + 28)));
  v75 = v24;
  KeyPath = swift_getKeyPath();
  sub_2386B5B70(v23, &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderPaymentView);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_2386B598C(&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for OrderPaymentView);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2386B772C;
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FC8, &qword_23877F328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FD0, &qword_23877F330);
  v28 = v22;
  sub_23843A3E8(&qword_27DF13FD8, &qword_27DF13FC8, &qword_23877F328);
  sub_2386B71F8(&qword_27DF13FE0, &qword_27DF13FD0, &qword_23877F330, sub_2386B7828);
  sub_23875E370();
  v29 = *(v23 + *(v22 + 32));
  if (*(v29 + 16))
  {
    v30 = sub_23875D020();
    v31 = v59;
    *v59 = v30;
    *(v31 + 8) = 0x4010000000000000;
    *(v31 + 16) = 0;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14000, &qword_23877F340) + 44);
    v75 = v29;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14008, &qword_23877F360);
    type metadata accessor for OrderPaymentSummaryItemView(0);
    sub_23843A3E8(&qword_27DF14010, &qword_27DF14008, &qword_23877F360);
    sub_2386B5C9C(&qword_27DF14018, type metadata accessor for OrderPaymentSummaryItemView.ViewModel);
    sub_2386B5C9C(&qword_27DF14020, type metadata accessor for OrderPaymentSummaryItemView);
    sub_23875E370();

    v33 = sub_23875D000();
    v34 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14028, &qword_23877F368) + 36));
    *v34 = v33;
    v34[1] = sub_2386B7B24;
    v34[2] = 0;
    v35 = sub_23875D010();
    v36 = v62;
    v37 = (v31 + *(v62 + 36));
    *v37 = v35;
    v37[1] = sub_2386B7B28;
    v37[2] = 0;
    v38 = v72;
    sub_2384396E4(v31, v72, &qword_27DF13FB0, &qword_23877F2F0);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v38 = v72;
    v36 = v62;
  }

  (*(v61 + 56))(v38, v39, 1, v36);
  v40 = *(v28 + 36);
  v41 = sub_238758090();
  v42 = v67;
  (*(*(v41 - 8) + 16))(v67, v73 + v40, v41);
  v43 = *(type metadata accessor for OrderPaymentTotalView(0) + 20);
  *(v42 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v44 = sub_23875D000();
  v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14030, &qword_23877F370) + 36));
  *v45 = v44;
  v45[1] = sub_2386B7B24;
  v45[2] = 0;
  v46 = sub_23875D010();
  v47 = (v42 + *(v68 + 36));
  *v47 = v46;
  v47[1] = sub_2386B7B28;
  v47[2] = 0;
  v49 = v64;
  v48 = v65;
  v50 = *(v65 + 16);
  v51 = v66;
  v50(v64, v74, v66);
  v52 = v69;
  sub_23843981C(v38, v69, &qword_27DF13FB8, &qword_23877F2F8);
  v53 = v71;
  sub_23843981C(v42, v71, &qword_27DF13FA8, &qword_23877F2E8);
  v54 = v70;
  v50(v70, v49, v51);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14038, &qword_23877F378);
  sub_23843981C(v52, &v54[*(v55 + 48)], &qword_27DF13FB8, &qword_23877F2F8);
  sub_23843981C(v53, &v54[*(v55 + 64)], &qword_27DF13FA8, &qword_23877F2E8);
  sub_238439884(v42, &qword_27DF13FA8, &qword_23877F2E8);
  sub_238439884(v72, &qword_27DF13FB8, &qword_23877F2F8);
  v56 = *(v48 + 8);
  v56(v74, v51);
  sub_238439884(v53, &qword_27DF13FA8, &qword_23877F2E8);
  sub_238439884(v52, &qword_27DF13FB8, &qword_23877F2F8);
  v56(v49, v51);
}

uint64_t sub_2386AD804@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v25 = a1;
  v26 = sub_23875AF90();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875B240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LineItemView.ViewModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, v25, v8);
  v17 = type metadata accessor for OrderPaymentViewModel(0);
  (*(v4 + 16))(v7, v27 + *(v17 + 20), v26);
  sub_23856E74C(v12, v7, v16);
  sub_2386B5B70(v16, a3, type metadata accessor for LineItemView.ViewModel);
  KeyPath = swift_getKeyPath();
  *(a3 + *(type metadata accessor for OrderPaymentLineItemView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v19 = sub_23875D000();
  v20 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FF0, &qword_23877F338) + 36));
  *v20 = v19;
  v20[1] = sub_2386B7B24;
  v20[2] = 0;
  v21 = sub_23875D010();
  sub_2386B7430(v16, type metadata accessor for LineItemView.ViewModel);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FD0, &qword_23877F330);
  v23 = (a3 + *(result + 36));
  *v23 = v21;
  v23[1] = sub_2386B7B28;
  v23[2] = 0;
  return result;
}

uint64_t sub_2386ADB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386B5B70(a1, a2, type metadata accessor for OrderPaymentSummaryItemView.ViewModel);
  v4 = *(type metadata accessor for OrderPaymentSummaryItemView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2386ADC34@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for OrderPaymentViewModel(0);
  if (*(*(a1 + *(v12 + 48)) + 16) || (v13 = v12, sub_23843981C(a1 + *(v12 + 40), v11, &qword_27DF13BF0, &unk_23877EAD0), v14 = sub_238758D30(), v15 = (*(*(v14 - 8) + 48))(v11, 1, v14), sub_238439884(v11, &qword_27DF13BF0, &unk_23877EAD0), v15 != 1))
  {

    v17 = 1;
  }

  else
  {
    sub_23843981C(a1 + *(v13 + 52), v7, &qword_27DF13BE8, &unk_23877EAC0);
    v16 = sub_23875B290();
    v17 = (*(*(v16 - 8) + 48))(v7, 1, v16) != 1;
    sub_238439884(v7, &qword_27DF13BE8, &unk_23877EAC0);
  }

  *a2 = v17;
  return result;
}

uint64_t sub_2386ADEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v53 = a3;
  v51 = a4;
  v6 = sub_23875CEA0();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875C400();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v42 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F20, &unk_23877F258);
  v16 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v18 = v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F08, &qword_23877F250);
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = *(v44 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v42 - v21;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v42[1] = v42;
  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_2386AE8C0(a1, a2, v18);
  sub_23875ED40();
  sub_23875ECE0();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v25 = v53 - 1;
  if (__OFSUB__(v53, 1))
  {
    __break(1u);
  }

  else
  {
    v53 = v6;
    if (v25 == a1)
    {
      v26 = type metadata accessor for OrderPaymentViewModel(0);
      sub_23843981C(a2 + *(v26 + 52), v15, &qword_27DF13BE8, &unk_23877EAC0);
      v27 = sub_23875B290();
      v28 = (*(*(v27 - 8) + 48))(v15, 1, v27) != 1;
      sub_238439884(v15, &qword_27DF13BE8, &unk_23877EAC0);
    }

    else
    {
      v28 = 1;
    }

    v54 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F38, &qword_23877F268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EA8, &qword_23877F208);
    sub_2386B6FF4(&qword_27DF13F18, &qword_27DF13F20, &unk_23877F258, sub_2386B7070);
    sub_2386B71F8(&qword_27DF13F30, &qword_27DF13F38, &qword_23877F268, sub_2386B712C);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    sub_23875E3C0();
    v30 = v48;
    v29 = v49;
    v31 = v46;
    (*(v48 + 104))(v46, *MEMORY[0x277CDF350], v49);
    sub_2386B6ED0();
    v32 = v51;
    v33 = v45;
    sub_23875DC80();
    (*(v30 + 8))(v31, v29);
    (*(v44 + 8))(v22, v33);
    v34 = v50;
    sub_23875CE90();
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F00, &qword_23877F248) + 36);
    v37 = v52;
    v36 = v53;
    (*(v52 + 16))(v32 + v35, v34, v53);
    v38 = *(v37 + 56);
    v38(v32 + v35, 0, 1, v36);
    KeyPath = swift_getKeyPath();
    v40 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13EE0, &qword_23877F240) + 36));
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v37 + 32))(v40 + v41, v34, v36);
    v38(v40 + v41, 0, 1, v36);

    *v40 = KeyPath;
  }

  return result;
}

uint64_t sub_2386AE534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_23875ADC0();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875B040();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v11, a1, v7);
  sub_23875AFC0();
  v16 = sub_23875ADB0();
  v18 = v17;
  (*(v3 + 8))(v6, v33);
  v19 = sub_23875B030();
  v21 = v20;
  v22 = v15 + v12[6];
  sub_23875B020();
  v23 = v15 + v12[7];
  sub_23875AFD0();
  v24 = v15 + v12[8];
  sub_23875B010();
  (*(v8 + 8))(v11, v7);
  *v15 = v16;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v21;
  v25 = v35;
  sub_2386B5B70(v15, v35, type metadata accessor for OrderPaymentTransactionRow.ViewModel);
  v26 = *(type metadata accessor for OrderPaymentTransactionRow(0) + 20);
  *(v25 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v27 = sub_23875D000();
  v28 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F48, &qword_23877F270) + 36));
  *v28 = v27;
  v28[1] = sub_2386B7B24;
  v28[2] = 0;
  v29 = sub_23875D010();
  sub_2386B7430(v15, type metadata accessor for OrderPaymentTransactionRow.ViewModel);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F38, &qword_23877F268);
  v31 = (v25 + *(result + 36));
  *v31 = v29;
  v31[1] = sub_2386B7B28;
  v31[2] = 0;
  return result;
}

uint64_t sub_2386AE8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FA0, &unk_23877F2D0);
  v5 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v7 = &v51 - v6;
  v56 = type metadata accessor for OrderPaymentHeaderView(0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E70, &qword_23877F1D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F20, &unk_23877F258);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  else
  {
    v19 = type metadata accessor for OrderPaymentViewModel(0);
    if (*(*(a2 + *(v19 + 28)) + 16) || *(*(a2 + *(v19 + 32)) + 16))
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v20 = qword_2814F1B90;
      v21 = sub_23875EA50();
      v22 = sub_23875EA50();
      v23 = sub_23875EA50();
      v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

      v25 = sub_23875EA80();
      v27 = v26;

      v58 = v25;
      v59 = v27;
      sub_2384397A8();
      v28 = sub_23875DAA0();
      v30 = v29;
      LOBYTE(v27) = v31;
      v33 = v32;
      v34 = sub_23875D7A0();
      sub_23875C3D0();
      LOBYTE(v58) = v27 & 1;
      v60 = 0;
      *v7 = v28;
      *(v7 + 1) = v30;
      v7[16] = v27 & 1;
      *(v7 + 3) = v33;
      v7[32] = v34;
      *(v7 + 5) = v35;
      *(v7 + 6) = v36;
      *(v7 + 7) = v37;
      *(v7 + 8) = v38;
      v7[72] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
      sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
      sub_2384BF528();
      v39 = v55;
      sub_23875D1B0();
    }

    else
    {
      v41 = v19;
      v42 = sub_23875BC40();
      (*(*(v42 - 8) + 16))(v10, a2, v42);
      v43 = (a2 + *(v41 + 24));
      v44 = *v43;
      v52 = v43[1];
      v53 = v44;
      v45 = *(v41 + 36);
      v46 = v56;
      v47 = *(v56 + 24);
      v48 = sub_238758090();
      (*(*(v48 - 8) + 16))(&v10[v47], a2 + v45, v48);
      v49 = &v10[*(v46 + 20)];
      v50 = v52;
      *v49 = v53;
      *(v49 + 1) = v50;
      sub_2386B5B70(v10, v7, type metadata accessor for OrderPaymentHeaderView);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
      sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
      sub_2384BF528();
      v39 = v55;
      sub_23875D1B0();
      sub_2386B7430(v10, type metadata accessor for OrderPaymentHeaderView);
    }

    sub_2384396E4(v39, v18, &qword_27DF13E70, &qword_23877F1D0);
    (*(v12 + 56))(v18, 0, 1, v11);
  }

  sub_2384396E4(v18, v57, &qword_27DF13F20, &unk_23877F258);
}

uint64_t sub_2386AEEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_238758D30();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = *(a2 + *(v7 + 44));
  v9 = *(v7 + 36);
  v10 = type metadata accessor for OrderPaymentStatusView(0);
  v11 = v10[6];
  v12 = sub_238758090();
  (*(*(v12 - 8) + 16))(a3 + v11, a2 + v9, v12);
  *(a3 + v10[5]) = v8;
  v13 = v10[7];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();

  v14 = sub_23875D000();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F80, &qword_23877F2C0) + 36));
  *v15 = v14;
  v15[1] = sub_2386B7B24;
  v15[2] = 0;
  v16 = sub_23875D010();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13F68, &qword_23877F2B8);
  v18 = (a3 + *(result + 36));
  *v18 = v16;
  v18[1] = sub_2386B7B28;
  v18[2] = 0;
  return result;
}

uint64_t sub_2386AF0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13FA0, &unk_23877F2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for OrderPaymentHeaderView(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E70, &qword_23877F1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for OrderPaymentViewModel(0);
  if (*(*(a1 + *(v15 + 28)) + 16) || *(*(a1 + *(v15 + 32)) + 16))
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v16 = qword_2814F1B90;
    v17 = sub_23875EA50();
    v18 = sub_23875EA50();
    v19 = sub_23875EA50();
    v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

    v21 = sub_23875EA80();
    v23 = v22;

    v47 = v21;
    v48 = v23;
    sub_2384397A8();
    v24 = sub_23875DAA0();
    v26 = v25;
    LOBYTE(v23) = v27;
    v29 = v28;
    v30 = sub_23875D7A0();
    sub_23875C3D0();
    LOBYTE(v47) = v23 & 1;
    v49 = 0;
    *v6 = v24;
    *(v6 + 1) = v26;
    v6[16] = v23 & 1;
    *(v6 + 3) = v29;
    v6[32] = v30;
    *(v6 + 5) = v31;
    *(v6 + 6) = v32;
    *(v6 + 7) = v33;
    *(v6 + 8) = v34;
    v6[72] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
    sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
    sub_2384BF528();
    sub_23875D1B0();
  }

  else
  {
    v36 = v15;
    v37 = sub_23875BC40();
    (*(*(v37 - 8) + 16))(v10, a1, v37);
    v38 = (a1 + *(v36 + 24));
    v39 = v38[1];
    v45 = *v38;
    v40 = *(v36 + 36);
    v41 = *(v7 + 24);
    v42 = sub_238758090();
    (*(*(v42 - 8) + 16))(&v10[v41], a1 + v40, v42);
    v43 = &v10[*(v7 + 20)];
    *v43 = v45;
    *(v43 + 1) = v39;
    sub_2386B5B70(v10, v6, type metadata accessor for OrderPaymentHeaderView);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
    sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
    sub_2384BF528();
    sub_23875D1B0();
    sub_2386B7430(v10, type metadata accessor for OrderPaymentHeaderView);
  }

  sub_2384396E4(v14, v46, &qword_27DF13E70, &qword_23877F1D0);
}

double sub_2386AF5A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875B290();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for BarcodeView(0);
  *(a2 + *(v5 + 20)) = 0;
  v6 = *(v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();

  result = *&v8;
  *(a2 + v6) = v8;
  return result;
}

uint64_t sub_2386AF6BC(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x277D38548];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = OrderPaymentViewModel.analyticsProductIconsProvided.getter();
  *(inited + 48) = v4;
  *(inited + 56) = sub_23875EA50();
  v5 = type metadata accessor for OrderPaymentViewModel(0);
  v6 = *MEMORY[0x277D38520];
  v7 = *MEMORY[0x277D38528];
  if (*(*(a1 + *(v5 + 28)) + 16))
  {
    v8 = *MEMORY[0x277D38528];
  }

  else
  {
    v8 = *MEMORY[0x277D38520];
  }

  *(inited + 64) = sub_23875EA80();
  *(inited + 72) = v9;
  *(inited + 80) = sub_23875EA50();
  *(*(a1 + *(v5 + 44)) + 16);
  *(inited + 88) = sub_23875EA80();
  *(inited + 96) = v10;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  sub_23844C218(v2, 10, v11);
}

uint64_t sub_2386AF8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E08, &qword_23877F078);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875D020();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E10, &qword_23877F080);
  sub_2386AFB78(a1, &v10[*(v11 + 44)]);
  v12 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E18, &unk_23877F088) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v14 = sub_23875DA40();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E20, &qword_23877F0F8) + 36)];
  *v16 = KeyPath;
  v16[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v17 = &v10[*(v4 + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_23843981C(v10, v7, &qword_27DF13E08, &qword_23877F078);
  *a2 = 0;
  *(a2 + 8) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E28, &qword_23877F100);
  sub_23843981C(v7, a2 + *(v22 + 48), &qword_27DF13E08, &qword_23877F078);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_238439884(v10, &qword_27DF13E08, &qword_23877F078);
  sub_238439884(v7, &qword_27DF13E08, &qword_23877F078);
}

uint64_t sub_2386AFB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E38, &qword_23877F110);
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v55 - v6;
  v7 = sub_23875D810();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BD20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(type metadata accessor for OrderPaymentHeaderView(0) + 24);
  sub_23875BCC0();
  v18 = sub_238758080();
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  *&v76[0] = v18;
  *(&v76[0] + 1) = v20;
  sub_2384397A8();
  v21 = sub_23875DAA0();
  v23 = v22;
  v25 = v24;
  sub_23875D890();
  sub_23875D800();
  sub_23875D8B0();
  v56 = a1;
  (*(v8 + 8))(v11, v7);
  v26 = sub_23875DA60();
  v28 = v27;
  v30 = v29;

  sub_2384397FC(v21, v23, v25 & 1);

  sub_23875E070();
  v31 = sub_23875DA10();
  v55 = v31;
  v60 = v32;
  v61 = v33;
  LOBYTE(v23) = v34;

  sub_2384397FC(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v57 = v23 & 1;
  LOBYTE(v76[0]) = v23 & 1;
  LOBYTE(v67) = 0;
  LOBYTE(v78) = 1;
  v59 = swift_getKeyPath();
  v35 = sub_23875D020();
  LOBYTE(v76[0]) = 0;
  sub_2386B01F0(v56, v75);
  *(v70 + 7) = v75[0];
  *(&v70[1] + 7) = v75[1];
  *(&v70[2] + 7) = v75[2];
  *(&v70[3] + 7) = v75[3];
  v36 = v76[0];
  v37 = sub_23875D980();
  v38 = swift_getKeyPath();
  *(&v68[1] + 1) = v70[1];
  *(&v68[2] + 1) = v70[2];
  *(&v68[3] + 1) = v70[3];
  *&v67 = v35;
  *(&v67 + 1) = 0x4010000000000000;
  LOBYTE(v68[0]) = v36;
  *(v68 + 1) = v70[0];
  *&v68[4] = *(&v70[3] + 15);
  *(&v68[4] + 1) = v38;
  v69 = v37;
  sub_23875D880();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E40, &qword_23877F178);
  sub_2386B6B1C();
  v39 = v64;
  sub_23875DAF0();
  v76[4] = v68[3];
  v76[5] = v68[4];
  v77 = v69;
  v76[0] = v67;
  v76[1] = v68[0];
  v76[2] = v68[1];
  v76[3] = v68[2];
  sub_238439884(v76, &qword_27DF13E40, &qword_23877F178);
  v40 = sub_23875E080();
  v41 = swift_getKeyPath();
  v42 = (v39 + *(v62 + 36));
  *v42 = v41;
  v42[1] = v40;
  v43 = v66;
  sub_23843981C(v39, v66, &qword_27DF13E38, &qword_23877F110);
  v44 = v60;
  *&v78 = v31;
  *(&v78 + 1) = v60;
  LOBYTE(v37) = v57;
  LOBYTE(v79) = v57;
  *(&v79 + 1) = *v72;
  DWORD1(v79) = *&v72[3];
  v45 = v61;
  v46 = KeyPath;
  v47 = v59;
  *(&v79 + 1) = v61;
  *&v80 = KeyPath;
  *(&v80 + 1) = 1;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v71;
  HIDWORD(v81) = *&v71[3];
  v82 = 0;
  LOWORD(v83) = 1;
  WORD3(v83) = v74;
  *(&v83 + 2) = v73;
  *(&v83 + 1) = v59;
  v84 = 0x3FB999999999999ALL;
  v49 = v80;
  v48 = v81;
  v50 = v83;
  v51 = v65;
  *(v65 + 80) = 0x3FB999999999999ALL;
  v51[3] = v48;
  v51[4] = v50;
  v52 = v78;
  v51[1] = v79;
  v51[2] = v49;
  *v51 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E50, &qword_23877F1B0);
  sub_23843981C(v43, v51 + *(v53 + 48), &qword_27DF13E38, &qword_23877F110);
  sub_23843981C(&v78, &v67, &qword_27DF13E58, &qword_23877F1B8);
  sub_238439884(v39, &qword_27DF13E38, &qword_23877F110);
  sub_238439884(v43, &qword_27DF13E38, &qword_23877F110);
  *&v67 = v55;
  *(&v67 + 1) = v44;
  LOBYTE(v68[0]) = v37;
  *(v68 + 1) = *v72;
  DWORD1(v68[0]) = *&v72[3];
  *(&v68[0] + 1) = v45;
  *&v68[1] = v46;
  *(&v68[1] + 1) = 1;
  LOBYTE(v68[2]) = 0;
  *(&v68[2] + 1) = *v71;
  DWORD1(v68[2]) = *&v71[3];
  *(&v68[2] + 1) = 0;
  LOWORD(v68[3]) = 1;
  WORD3(v68[3]) = v74;
  *(&v68[3] + 2) = v73;
  *(&v68[3] + 1) = v47;
  *&v68[4] = 0x3FB999999999999ALL;
  sub_238439884(&v67, &qword_27DF13E58, &qword_23877F1B8);
}

uint64_t sub_2386B01F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for OrderPaymentHeaderView(0) + 20));
  v28 = *v4;
  v29 = v4[1];
  sub_2384397A8();

  v5 = MEMORY[0x277D837D0];
  v6 = sub_23875DAA0();
  v8 = v7;
  v27 = v9;
  v11 = v10;
  v12 = sub_23875B9C0();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2387632F0;
  *(v15 + 56) = v5;
  *(v15 + 64) = sub_238448C58();
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  sub_23875EA80();
  sub_23875EAA0();

  v21 = sub_23875DAA0();
  v23 = v22;
  LOBYTE(v19) = v24 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v25;
  sub_23843980C(v6, v8, v27 & 1);

  sub_23843980C(v21, v23, v19);

  sub_2384397FC(v21, v23, v19);

  sub_2384397FC(v6, v8, v27 & 1);
}

uint64_t sub_2386B04F0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E00, &qword_23877F070);
  return sub_2386AF8C0(v1, a1 + *(v3 + 44));
}

uint64_t sub_2386B0540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D68, &qword_23877EF68);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v4 = v32 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D70, &qword_23877EF70);
  v5 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v7 = v32 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D78, &qword_23877EF78);
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v10 = v32 - v9;
  v11 = sub_23875C880();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D80, &qword_23877EF80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v34 = v32 - v21;
  sub_23875ED50();
  v32[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v35;
  sub_2386B2444(type metadata accessor for OrderPaymentLineItemView, v18);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF9F0], v11);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v23 = sub_23875E9C0();
  v24 = *(v12 + 8);
  v24(v15, v11);
  v24(v18, v11);
  if (v23)
  {
    *v10 = sub_23875CE50();
    *(v10 + 1) = 0x4028000000000000;
    v10[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DA0, &unk_23877EF90);
    sub_2386B0A80(v22, &v10[*(v25 + 44)]);
    sub_23843981C(v10, v7, &qword_27DF13D78, &qword_23877EF78);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF13D90, &qword_27DF13D78, &qword_23877EF78);
    sub_23843A3E8(&qword_27DF13D98, &qword_27DF13D68, &qword_23877EF68);
    v26 = v34;
    sub_23875D1B0();
    v27 = v10;
    v28 = &qword_27DF13D78;
    v29 = &qword_23877EF78;
  }

  else
  {
    *v4 = sub_23875CE60();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D88, &qword_23877EF88);
    sub_2386B1A64(v22, &v4[*(v30 + 44)]);
    sub_23843981C(v4, v7, &qword_27DF13D68, &qword_23877EF68);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF13D90, &qword_27DF13D78, &qword_23877EF78);
    sub_23843A3E8(&qword_27DF13D98, &qword_27DF13D68, &qword_23877EF68);
    v26 = v34;
    sub_23875D1B0();
    v27 = v4;
    v28 = &qword_27DF13D68;
    v29 = &qword_23877EF68;
  }

  sub_238439884(v27, v28, v29);
  sub_2384396E4(v26, v38, &qword_27DF13D80, &qword_23877EF80);
}

uint64_t sub_2386B0A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v35 = sub_23875DFD0();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for LineItemView.ViewModel(0);
  v13 = v37;
  sub_2386B5B70(v37 + *(v12 + 32), v11, type metadata accessor for ProductImage.ViewModel);
  v14 = *(type metadata accessor for ProductImage(0) + 20);
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v15 = v11;
  v36 = v11;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v35);
  v16 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v6 + 36)];
  v19 = type metadata accessor for OrderImageStyleModifier();
  *&v18[*(v19 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v19 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v18 = xmmword_23876D160;
  *(v18 + 2) = 0;
  v18[24] = 1;
  *(v18 + 4) = v16;
  v18[40] = 0;
  v20 = sub_23875D020();
  v42 = 0;
  sub_2386B10B4(v13, &v61);
  v53 = v62[9];
  v54 = v62[10];
  v55 = v62[11];
  v49 = v62[5];
  v50 = v62[6];
  v51 = v62[7];
  v52 = v62[8];
  v45 = v62[1];
  v46 = v62[2];
  v47 = v62[3];
  v48 = v62[4];
  v43 = v61;
  v44 = v62[0];
  v57[10] = v62[9];
  v57[11] = v62[10];
  v57[12] = v62[11];
  v57[6] = v62[5];
  v57[7] = v62[6];
  v57[8] = v62[7];
  v57[9] = v62[8];
  v57[2] = v62[1];
  v57[3] = v62[2];
  v57[4] = v62[3];
  v57[5] = v62[4];
  v56 = v62[12];
  v58 = v62[12];
  v57[0] = v61;
  v57[1] = v62[0];
  sub_23843981C(&v43, &v59, &qword_27DF13DA8, &qword_23877F010);
  sub_238439884(v57, &qword_27DF13DA8, &qword_23877F010);
  *(&v41[10] + 7) = v53;
  *(&v41[11] + 7) = v54;
  *(&v41[12] + 7) = v55;
  *(&v41[6] + 7) = v49;
  *(&v41[7] + 7) = v50;
  *(&v41[8] + 7) = v51;
  *(&v41[9] + 7) = v52;
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47;
  *(&v41[5] + 7) = v48;
  *(v41 + 7) = v43;
  *(&v41[13] + 7) = v56;
  *(&v41[1] + 7) = v44;
  v21 = v42;
  v22 = v36;
  v23 = v40;
  sub_23843981C(v36, v40, &qword_27DF0E618, &unk_2387766D0);
  v24 = v38;
  sub_23843981C(v23, v38, &qword_27DF0E618, &unk_2387766D0);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DB0, &qword_23877F018) + 48));
  *&v59 = v20;
  *(&v59 + 1) = 0x4010000000000000;
  LOBYTE(v60[0]) = v21;
  *(&v60[10] + 1) = v41[10];
  *(&v60[11] + 1) = v41[11];
  *(&v60[12] + 1) = v41[12];
  *(&v60[12] + 12) = *(&v41[12] + 11);
  *(&v60[6] + 1) = v41[6];
  *(&v60[7] + 1) = v41[7];
  *(&v60[8] + 1) = v41[8];
  *(&v60[9] + 1) = v41[9];
  *(&v60[2] + 1) = v41[2];
  *(&v60[3] + 1) = v41[3];
  *(&v60[4] + 1) = v41[4];
  *(&v60[5] + 1) = v41[5];
  *(&v60[1] + 1) = v41[1];
  *(v60 + 1) = v41[0];
  v26 = v60[12];
  v25[12] = v60[11];
  v25[13] = v26;
  *(v25 + 220) = *(&v60[12] + 12);
  v27 = v60[8];
  v25[8] = v60[7];
  v25[9] = v27;
  v28 = v60[10];
  v25[10] = v60[9];
  v25[11] = v28;
  v29 = v60[4];
  v25[4] = v60[3];
  v25[5] = v29;
  v30 = v60[6];
  v25[6] = v60[5];
  v25[7] = v30;
  v31 = v60[0];
  *v25 = v59;
  v25[1] = v31;
  v32 = v60[2];
  v25[2] = v60[1];
  v25[3] = v32;
  sub_23843981C(&v59, &v61, &qword_27DF13DB8, &qword_23877F020);
  sub_238439884(v22, &qword_27DF0E618, &unk_2387766D0);
  *(&v62[10] + 1) = v41[10];
  *(&v62[11] + 1) = v41[11];
  *(&v62[12] + 1) = v41[12];
  *(&v62[12] + 12) = *(&v41[12] + 11);
  *(&v62[6] + 1) = v41[6];
  *(&v62[7] + 1) = v41[7];
  *(&v62[8] + 1) = v41[8];
  *(&v62[9] + 1) = v41[9];
  *(&v62[2] + 1) = v41[2];
  *(&v62[3] + 1) = v41[3];
  *(&v62[4] + 1) = v41[4];
  *(&v62[5] + 1) = v41[5];
  *(v62 + 1) = v41[0];
  *&v61 = v20;
  *(&v61 + 1) = 0x4010000000000000;
  LOBYTE(v62[0]) = v21;
  *(&v62[1] + 1) = v41[1];
  sub_238439884(&v61, &qword_27DF13DB8, &qword_23877F020);
  sub_238439884(v23, &qword_27DF0E618, &unk_2387766D0);
}

uint64_t sub_2386B10B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE50();
  sub_2386B1474(a1, &v49);
  v35 = *&v50[16];
  v36 = *&v50[32];
  v33 = v49;
  v34 = *v50;
  v38[2] = *&v50[16];
  v38[3] = *&v50[32];
  v38[4] = *&v50[48];
  v38[1] = *v50;
  v37 = *&v50[48];
  v38[0] = v49;
  sub_23843981C(&v33, &v47, &qword_27DF13DC0, &qword_23877F028);
  sub_238439884(v38, &qword_27DF13DC0, &qword_23877F028);
  *&v32[23] = v34;
  *&v32[39] = v35;
  *&v32[55] = v36;
  *&v32[71] = v37;
  *&v32[7] = v33;
  v5 = sub_23875CE50();
  LOBYTE(v19[0]) = 0;
  sub_2386B187C(a1, &v49);
  v41 = *&v50[16];
  v42 = *&v50[32];
  v39 = v49;
  v40 = *v50;
  v44[2] = *&v50[16];
  v44[3] = *&v50[32];
  v44[4] = *&v50[48];
  v44[1] = *v50;
  v43 = *&v50[48];
  v44[0] = v49;
  sub_23843981C(&v39, &v47, &qword_27DF13DC8, &qword_23877F030);
  sub_238439884(v44, &qword_27DF13DC8, &qword_23877F030);
  *&v31[23] = v40;
  *&v31[39] = v41;
  *&v31[55] = v42;
  *&v31[71] = v43;
  *&v31[7] = v39;
  v6 = sub_23875D440();
  v45[0] = v4;
  v45[1] = 0;
  v46[0] = 0;
  *&v46[1] = *v32;
  *&v46[17] = *&v32[16];
  *&v46[65] = *&v32[64];
  *&v46[49] = *&v32[48];
  *&v46[33] = *&v32[32];
  *&v25[31] = v4;
  *&v25[47] = *v46;
  v28 = *&v46[48];
  v29 = *&v46[64];
  v26 = *&v46[16];
  v27 = *&v46[32];
  v47 = v5;
  v48[0] = 0;
  *&v48[17] = *&v31[16];
  v8 = *v31;
  v7 = *&v31[16];
  *&v48[1] = *v31;
  *&v48[80] = *&v31[79];
  *&v48[65] = *&v31[64];
  v10 = *&v31[48];
  v9 = *&v31[64];
  *&v48[49] = *&v31[48];
  v11 = *&v31[32];
  *&v48[33] = *&v31[32];
  *&v48[88] = v6;
  *&v30[40] = *&v48[16];
  *&v30[24] = *v48;
  *&v30[8] = v5;
  *&v30[100] = *&v48[76];
  *&v30[88] = *&v48[64];
  *&v46[80] = *&v32[79];
  *v30 = *&v32[79];
  *&v30[72] = *&v48[48];
  *&v30[56] = *&v48[32];
  v12 = *v46;
  *a2 = v4;
  *(a2 + 16) = v12;
  v13 = v29;
  *(a2 + 64) = v28;
  *(a2 + 80) = v13;
  v14 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v14;
  v15 = *&v30[48];
  *(a2 + 128) = *&v30[32];
  *(a2 + 144) = v15;
  v16 = *&v30[16];
  *(a2 + 96) = *v30;
  *(a2 + 112) = v16;
  v17 = *&v30[96];
  *(a2 + 176) = *&v30[80];
  *(a2 + 192) = v17;
  *(a2 + 160) = *&v30[64];
  *&v50[33] = v11;
  *(a2 + 208) = *&v30[112];
  v49 = v5;
  v50[0] = 0;
  *&v50[49] = v10;
  *v51 = v9;
  *&v51[15] = *&v31[79];
  *&v50[1] = v8;
  *&v50[17] = v7;
  v52 = v6;
  sub_23843981C(v45, v19, &qword_27DF13DD0, &qword_23877F038);
  sub_23843981C(&v47, v19, &qword_27DF13DD8, &unk_23877F040);
  sub_238439884(&v49, &qword_27DF13DD8, &unk_23877F040);
  v19[0] = v4;
  v19[1] = 0;
  v20 = 0;
  v23 = *&v32[32];
  v24 = *&v32[48];
  *v25 = *&v32[64];
  *&v25[15] = *&v32[79];
  v21 = *v32;
  v22 = *&v32[16];
  sub_238439884(v19, &qword_27DF13DD0, &qword_23877F038);
}

uint64_t sub_2386B1474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875BD20();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = sub_238758090();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a1[1];
  v49 = *a1;
  v50 = v15;
  sub_2384397A8();

  v16 = sub_23875DAA0();
  v18 = v17;
  v46 = v19;
  v21 = v20;
  v22 = type metadata accessor for LineItemView.ViewModel(0);
  sub_23843981C(a1 + *(v22 + 24), v10, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &unk_27DF0B080, &unk_2387662A0);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = *(v12 + 32);
    v41 = v21;
    v28 = v42;
    v27(v42, v10, v11);
    v29 = v43;
    sub_23875BCC0();
    v30 = sub_238758080();
    v32 = v31;
    (*(v44 + 8))(v29, v45);
    v49 = v30;
    v50 = v32;
    v23 = sub_23875DAA0();
    v24 = v33;
    LOBYTE(v29) = v34;
    v26 = v35;
    v36 = v28;
    v21 = v41;
    (*(v12 + 8))(v36, v11);
    v25 = v29 & 1;
    sub_23843980C(v23, v24, v29 & 1);
  }

  v37 = v46 & 1;
  LOBYTE(v49) = v46 & 1;
  v48 = 1;
  sub_23843980C(v16, v18, v46 & 1);

  sub_238476F5C(v23, v24, v25, v26);
  sub_238476FA0(v23, v24, v25, v26);
  v38 = v49;
  v39 = v48;
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v38;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v39;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_238476FA0(v23, v24, v25, v26);
  sub_2384397FC(v16, v18, v37);
}

uint64_t sub_2386B187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    sub_2384397A8();

    v4 = sub_23875DAA0();
    v6 = v5;
    v8 = v7;
    v10 = v9 & 1;
    sub_23843980C(v4, v5, v9 & 1);
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v10 = 0;
    v8 = 0;
  }

  sub_23856C364();
  sub_2384397A8();
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_238476F5C(v4, v6, v10, v8);
  v15 &= 1u;
  sub_23843980C(v11, v13, v15);

  sub_238476FA0(v4, v6, v10, v8);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  sub_2384397FC(v11, v13, v15);

  sub_238476FA0(v4, v6, v10, v8);
}

uint64_t sub_2386B1A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DE0, &qword_23877F050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875D030();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DE8, &qword_23877F058);
  sub_2386B1C24(a1, &v10[*(v11 + 44)]);
  sub_23843981C(v10, v7, &qword_27DF13DE0, &qword_23877F050);
  sub_23843981C(v7, a2, &qword_27DF13DE0, &qword_23877F050);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DF0, &qword_23877F060) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_238439884(v10, &qword_27DF13DE0, &qword_23877F050);
  sub_238439884(v7, &qword_27DF13DE0, &qword_23877F050);
}

uint64_t sub_2386B1C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  sub_23875ED50();
  v79 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = type metadata accessor for LineItemView.ViewModel(0);
  sub_2386B5B70(a1 + *(v14 + 32), v13, type metadata accessor for ProductImage.ViewModel);
  v15 = *(type metadata accessor for ProductImage(0) + 20);
  *&v13[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
  v16 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v18 = *(v8 + 36);
  v82 = v13;
  v19 = &v13[v18];
  v20 = type metadata accessor for OrderImageStyleModifier();
  *&v19[*(v20 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v19[*(v20 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v19 = xmmword_23876FD10;
  *(v19 + 2) = 0;
  v19[24] = 1;
  *(v19 + 4) = v16;
  v19[40] = 0;
  v21 = a1[1];
  v84 = *a1;
  v85 = v21;
  v22 = sub_2384397A8();

  v23 = sub_23875DAA0();
  v25 = v24;
  LOBYTE(KeyPath) = v26;
  sub_23875D890();
  v77 = sub_23875D9E0();
  v80 = v27;
  v81 = v28;
  v30 = v29;
  sub_2384397FC(v23, v25, KeyPath & 1);

  v31 = a1[3];
  if (v31)
  {
    v84 = a1[2];
    v85 = v31;

    v32 = sub_23875DAA0();
    v34 = v33;
    v36 = v35;
    LODWORD(v84) = sub_23875D440();
    v37 = sub_23875DA20();
    v38 = v30;
    v40 = v39;
    v42 = v41;
    v74 = v22;
    v44 = v43;
    sub_2384397FC(v32, v34, v36 & 1);

    v75 = v37;
    v45 = v40;
    v46 = v40;
    v30 = v38;
    v47 = v42 & 1;
    sub_23843980C(v37, v46, v42 & 1);
    v76 = v44;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v45 = 0;
    v47 = 0;
  }

  v84 = sub_23856C518();
  v85 = v48;
  v49 = sub_23875DAA0();
  v73 = v50;
  v74 = v51;
  v53 = v52;
  v54 = v83;
  sub_23843981C(v82, v83, &qword_27DF0E618, &unk_2387766D0);
  v55 = v30 & 1;
  LOBYTE(v84) = v30 & 1;
  v56 = v54;
  v57 = v78;
  sub_23843981C(v56, v78, &qword_27DF0E618, &unk_2387766D0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13DF8, &qword_23877F068);
  v59 = v57 + v58[12];
  v60 = v76;
  v61 = v77;
  v62 = v80;
  v63 = v81;
  *v59 = v77;
  *(v59 + 8) = v62;
  *(v59 + 16) = v55;
  *(v59 + 24) = v63;
  v64 = (v57 + v58[16]);
  v65 = v75;
  *v64 = v75;
  v64[1] = v45;
  v64[2] = v47;
  v64[3] = v60;
  v66 = v57 + v58[20];
  sub_23843980C(v61, v62, v55);

  sub_238476F5C(v65, v45, v47, v60);
  v67 = v53 & 1;
  v68 = v49;
  v69 = v73;
  sub_23843980C(v49, v73, v67);
  v70 = v74;

  sub_238476FA0(v65, v45, v47, v60);
  *v66 = v68;
  *(v66 + 8) = v69;
  *(v66 + 16) = v67;
  *(v66 + 24) = v70;
  sub_238439884(v82, &qword_27DF0E618, &unk_2387766D0);
  sub_2384397FC(v68, v69, v67);

  sub_238476FA0(v65, v45, v47, v60);
  sub_2384397FC(v61, v80, v84);

  sub_238439884(v83, &qword_27DF0E618, &unk_2387766D0);
}

uint64_t sub_2386B2224@<X0>(uint64_t a1@<X8>)
{
  sub_2386B0540(v1, a1);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D60, &qword_23877EF60);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t static OrderPaymentSummaryItemView.ViewModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);

  return MEMORY[0x2821174A8](a1 + v5, a2 + v5);
}

uint64_t OrderPaymentSummaryItemView.ViewModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23875EB30();
  v3 = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0]);
  return sub_23875E960();
}

uint64_t OrderPaymentSummaryItemView.ViewModel.hashValue.getter()
{
  sub_23875F700();
  v1 = *v0;
  v2 = v0[1];
  sub_23875EB30();
  v3 = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B2444@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v20 - v13);
  v15 = a1(0, v12);
  sub_23843981C(v2 + *(v15 + 20), v14, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C880();
    return (*(*(v16 - 8) + 32))(a2, v14, v16);
  }

  else
  {
    v18 = *v14;
    sub_23875EFF0();
    v19 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2386B2654(uint64_t a1)
{
  sub_23875F700();
  v3 = *v1;
  v4 = v1[1];
  sub_23875EB30();
  v5 = *(a1 + 20);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B26FC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_23875EB30();
  v6 = *(a2 + 20);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0]);
  return sub_23875E960();
}

uint64_t sub_2386B2788(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  v4 = *v2;
  v5 = v2[1];
  sub_23875EB30();
  v6 = *(a2 + 20);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B282C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x2821174A8](a1 + v7, a2 + v7);
}

double OrderPaymentSummaryItemView.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_2386B291C(v1, v10);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = v3;
  return result;
}

double sub_2386B291C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386B2444(type metadata accessor for OrderPaymentSummaryItemView, v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v11 = sub_23875E9C0();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v10, v3);
  if (v11)
  {
    v13 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B2E44(a1, &v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v14 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2386B3BAC(a1, sub_2386B30AC, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v14;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

uint64_t sub_2386B2E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_23875BD20();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  sub_2384397A8();

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LODWORD(v8) = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);
  sub_23875BCC0();
  v16 = sub_238758080();
  v18 = v17;
  (*(v4 + 8))(v7, v28);
  v33 = v16;
  v34 = v18;
  v19 = sub_23875DAA0();
  v21 = v20;
  v22 = v13 & 1;
  LOBYTE(v33) = v13 & 1;
  v32 = v13 & 1;
  v31 = 1;
  v24 = v23 & 1;
  v30 = v23 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v23 & 1;
  *(a2 + 72) = v25;
  sub_23843980C(v9, v11, v22);

  sub_23843980C(v19, v21, v24);

  sub_2384397FC(v19, v21, v24);

  sub_2384397FC(v9, v11, v33);
}

uint64_t sub_2386B30AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = sub_23875BD20();
  v4 = *(v27[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27[0]);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v27[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  v29 = *a1;
  v30 = v8;
  sub_2384397A8();

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LODWORD(v8) = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);
  sub_23875BCC0();
  v16 = sub_238758080();
  v18 = v17;
  (*(v4 + 8))(v7, v27[0]);
  v29 = v16;
  v30 = v18;
  v19 = sub_23875DAA0();
  v21 = v20;
  v22 = v13 & 1;
  v28 = v13 & 1;
  LOBYTE(v29) = v13 & 1;
  v24 = v23 & 1;
  v31 = v23 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 24) = v15;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  sub_23843980C(v9, v11, v22);

  sub_23843980C(v19, v21, v24);

  sub_2384397FC(v19, v21, v24);

  sub_2384397FC(v9, v11, v28);
}

double sub_2386B3300@<D0>(uint64_t a1@<X8>)
{
  sub_2386B291C(v1, v10);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = v3;
  return result;
}

double sub_2386B336C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1 + *(type metadata accessor for OrderPaymentTotalView(0) + 20);
  sub_2384D5138(v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v11) = sub_23875E9C0();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v10, v3);
  if (v11)
  {
    v13 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B388C(&v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v14 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2386B3BAC(a1, sub_2386B3D70, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v14;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}