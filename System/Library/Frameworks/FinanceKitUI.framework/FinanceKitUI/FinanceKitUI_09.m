uint64_t sub_2384F07B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectReviewConnectionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2384F082C()
{
  result = qword_27DF0CAF8;
  if (!qword_27DF0CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CAF0, &qword_23876B918);
    sub_2384F08B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CAF8);
  }

  return result;
}

unint64_t sub_2384F08B8()
{
  result = qword_27DF0CB00;
  if (!qword_27DF0CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB08, &unk_23876B920);
    sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB00);
  }

  return result;
}

uint64_t sub_2384F0970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectAppAuthorizationViewModel.__allocating_init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BankConnectAppAuthorizationViewModel.init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BankConnectAppAuthorizationViewModel.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t BankConnectAppAuthorizationViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2384F0A94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectAppAuthorizationViewModel();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t BankConnectAppAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectAppAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C360, &qword_23876B980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB30, &qword_23876B988);
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29[-v16];
  v18 = *v1;
  v31 = v1[1];
  v32 = v18;
  v30 = *(v1 + 16);
  *v13 = sub_23875E4A0();
  v13[1] = v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v6, v9, v2);
  sub_2384F1E54(&unk_27DF0C340, 255, MEMORY[0x277CE0068]);
  v21 = sub_23875C5E0();
  (*(v3 + 8))(v9, v2);

  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v21;
  v22 = sub_23843A3E8(&qword_27DF0C358, &qword_27DF0C360, &qword_23876B980);
  sub_23875DE40();
  v23 = sub_238439884(v13, &qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v23);
  v24 = v31;
  *&v29[-32] = v32;
  *&v29[-24] = v24;
  v29[-16] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB38, &qword_23876B9A0);
  v36 = v10;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB40, &qword_23876B9A8);
  v26 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_23875DEF0();
  return (*(v33 + 8))(v17, v27);
}

uint64_t sub_2384F0F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = sub_23875D2A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB40, &qword_23876B9A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_23875D250();
  MEMORY[0x28223BE20](v14);
  v17[-4] = a1;
  v17[-3] = a2;
  LOBYTE(v17[-2]) = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB50, &qword_23876BB20);
  sub_23843A3E8(&qword_27DF0CB58, &qword_27DF0CB50, &qword_23876BB20);
  sub_23875C990();
  v15 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8);
  MEMORY[0x23EE61E80](v13, v9, v15);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_2384F1224()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectAppAuthorizationViewModel();
  sub_2384F1E54(&qword_27DF0CB60, v0, type metadata accessor for BankConnectAppAuthorizationViewModel);
  sub_23875C490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB68, &qword_23876BB28);
  sub_2384F1CD8();
  sub_23875E200();
}

uint64_t sub_2384F1388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  return sub_238439884(v5, &unk_27DF0D360, &unk_23876BB40);
}

uint64_t sub_2384F1444@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_23875CE80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_23875ED50();
  v21 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v23 = v16;
  v24 = v18;
  sub_2384397A8();
  sub_23875E190();
  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_2384F1E54(&qword_27DF0B740, 255, MEMORY[0x277CDDE78]);
  v19 = v22;
  sub_23875DB00();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  LODWORD(v15) = sub_23875D440();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB68, &qword_23876BB28);
  *(v19 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_2384F17CC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C360, &qword_23876B980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB30, &qword_23876B988);
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29[-v16];
  v18 = *v1;
  v31 = v1[1];
  v32 = v18;
  v30 = *(v1 + 16);
  *v13 = sub_23875E4A0();
  v13[1] = v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v6, v9, v2);
  sub_2384F1E54(&unk_27DF0C340, 255, MEMORY[0x277CE0068]);
  v21 = sub_23875C5E0();
  (*(v3 + 8))(v9, v2);

  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v21;
  v22 = sub_23843A3E8(&qword_27DF0C358, &qword_27DF0C360, &qword_23876B980);
  sub_23875DE40();
  v23 = sub_238439884(v13, &qword_27DF0C360, &qword_23876B980);
  MEMORY[0x28223BE20](v23);
  v24 = v31;
  *&v29[-32] = v32;
  *&v29[-24] = v24;
  v29[-16] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB38, &qword_23876B9A0);
  v36 = v10;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB40, &qword_23876B9A8);
  v26 = sub_23843A3E8(&qword_27DF0CB48, &qword_27DF0CB40, &qword_23876B9A8);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_23875DEF0();
  return (*(v33 + 8))(v17, v27);
}

uint64_t sub_2384F1CC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2384F1224();
}

unint64_t sub_2384F1CD8()
{
  result = qword_27DF0CB70;
  if (!qword_27DF0CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CB68, &qword_23876BB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
    sub_23875CE80();
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    sub_2384F1E54(&qword_27DF0B740, 255, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB70);
  }

  return result;
}

uint64_t sub_2384F1E54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2384F1EB0()
{
  result = qword_27DF0CB78;
  if (!qword_27DF0CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CB78);
  }

  return result;
}

uint64_t sub_2384F1F08()
{
  v0 = sub_23875B940();
  __swift_allocate_value_buffer(v0, qword_27DF2F708);
  v1 = __swift_project_value_buffer(v0, qword_27DF2F708);
  return sub_2384F1F54(v1);
}

uint64_t sub_2384F1F54@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = sub_23875C1E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875A820();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A7E0();
  v18 = sub_23875A810();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_23875C120();

      v22 = sub_23875C1B0();
      v23 = sub_23875EFE0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_2384615AC(v18, v20, &v32);
        _os_log_impl(&dword_2383F8000, v22, v23, "Bank Connect authorization redirect url is overridden with: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x23EE64DF0](v25, -1, -1);
        MEMORY[0x23EE64DF0](v24, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
      sub_23875B910();
      v26 = sub_23875B940();
      v27 = *(v26 - 8);
      result = (*(v27 + 48))(v7, 1, v26);
      if (result != 1)
      {

        return (*(v27 + 32))(v31, v7, v26);
      }

      goto LABEL_13;
    }
  }

  sub_23875B910();
  v29 = sub_23875B940();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v5, 1, v29);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  return (*(v30 + 32))(v31, v5, v29);
}

uint64_t sub_2384F2370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v43 = a1;
  v14 = sub_23875B8D0();
  v16 = v15;
  v17 = v5[2];
  v44 = v2;
  v41 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl;
  v42 = v17;
  v17(v13, v2 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v4);
  v18 = sub_23875B8D0();
  v20 = v19;
  v21 = v5[1];
  v21(v13, v4);
  if (!v16)
  {
    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_10:

    return 0;
  }

  if (!v20)
  {
    goto LABEL_10;
  }

  if (v14 == v18 && v16 == v20)
  {
  }

  else
  {
    v23 = sub_23875F630();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

LABEL_12:
  v25 = sub_23875B900();
  v27 = v26;
  v42(v10, v44 + v41, v4);
  v28 = sub_23875B900();
  v30 = v29;
  v21(v10, v4);
  if (v27)
  {
    if (v30)
    {
      if (v25 == v28 && v27 == v30)
      {
      }

      else
      {
        v32 = sub_23875F630();

        if ((v32 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_23;
    }

LABEL_21:

    return 1;
  }

  if (v30)
  {
    goto LABEL_21;
  }

LABEL_23:
  v47 = sub_23875B8E0();
  v48 = v33;
  v34 = v40;
  v42(v40, v44 + v41, v4);
  v35 = sub_23875B8E0();
  v37 = v36;
  v21(v34, v4);
  v45 = v35;
  v46 = v37;
  sub_2384688CC();
  sub_238468920();
  v38 = sub_23875E970();

  if (v38)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2384F26D8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl;
  v2 = sub_23875B940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BankConnectWebAuthRedirectURLMatcher()
{
  result = qword_27DF0CB88;
  if (!qword_27DF0CB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384F27C8()
{
  result = sub_23875B940();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2384F2858(void *a1, uint64_t (*a2)(double))
{
  v4 = sub_23875C1E0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = a2(v6);
  if (v7 >> 60 != 15)
  {
    v9 = v7;
    v10 = PKMerchantCategoryToString();
    if (v10)
    {
      v11 = v10;
      v12 = [a1 stylingForWalletCategory_];

      if (v12)
      {
        sub_238449184(0, &qword_27DF0CBA8, 0x277CCAAC8);
        sub_238449184(0, &qword_27DF0CBB0, 0x277CD4F80);
        v13 = sub_23875F060();
        if (v13)
        {
          v14 = v13;
          v15 = sub_23875F1B0();
          sub_23844C940(v8, v9);

          if (v15)
          {
          }
        }

        else
        {
          sub_23844C940(v8, v9);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t MapsTransactionIconGenerator.__allocating_init(configuration:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v3;
  return v2;
}

uint64_t MapsTransactionIconGenerator.init(configuration:)(void *a1)
{
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + 16) = v3;
  return v1;
}

uint64_t MapsTransactionIconGenerator.generateIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23875C1E0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB98, &qword_23876BC58) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_23875B940();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2384F2E08, 0, 0);
}

uint64_t sub_2384F2E08()
{
  v1 = v0[10];
  v2 = v0[3];
  sub_2387597B0();
  v3 = sub_23875B3A0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  if (v5 == 1)
  {
    sub_238439884(v0[10], &qword_27DF0A968, &unk_2387662B0);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_4:
    v11 = v0[7];
    sub_238439884(v0[11], &qword_27DF0D040, &qword_2387676A0);
    sub_23875C120();
    v12 = sub_23875C1B0();
    v13 = sub_23875EFC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2383F8000, v12, v13, "No logo URL available, falling back to Maps category", v14, 2u);
      MEMORY[0x23EE64DF0](v14, -1, -1);
    }

    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    v18 = v0[5];
    v20 = v0[2];
    v19 = v0[3];

    (*(v16 + 8))(v15, v18);
    sub_2384F366C(v19, v20);
    v21 = v0[14];
    v22 = v0[10];
    v23 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    v27 = v0[1];

    return v27();
  }

  v10 = v0[11];
  sub_23875B390();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  v29 = swift_task_alloc();
  v0[15] = v29;
  *v29 = v0;
  v29[1] = sub_2384F3100;
  v30 = v0[14];
  v31 = v0[9];
  v32 = v0[4];

  return sub_2384F3A38(v31, v30);
}

uint64_t sub_2384F3100()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2384F3490;
  }

  else
  {
    v3 = sub_2384F3218;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2384F3218()
{
  v1 = v0[9];
  v2 = sub_238757CF0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_238439884(v1, &qword_27DF0CB98, &qword_23876BC58);
    sub_23875C120();
    v5 = sub_23875C1B0();
    v6 = sub_23875EFC0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2383F8000, v5, v6, "Failed to download icon, falling back to Maps category", v7, 2u);
      MEMORY[0x23EE64DF0](v7, -1, -1);
    }

    v8 = v0[13];
    v25 = v0[14];
    v9 = v0[12];
    v10 = v0[8];
    v12 = v0[5];
    v11 = v0[6];
    v14 = v0[3];
    v13 = v0[4];
    v15 = v0[2];

    (*(v11 + 8))(v10, v12);
    sub_2384F366C(v14, v15);
    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v16 = v0[2];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v3 + 32))(v16, v1, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
  }

  v17 = v0[14];
  v18 = v0[10];
  v19 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2384F3490()
{
  v1 = v0[9];
  v2 = sub_238757CF0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[8];
  sub_238439884(v0[9], &qword_27DF0CB98, &qword_23876BC58);
  sub_23875C120();
  v4 = sub_23875C1B0();
  v5 = sub_23875EFC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to download icon, falling back to Maps category", v6, 2u);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v7 = v0[13];
  v23 = v0[14];
  v8 = v0[12];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];

  (*(v10 + 8))(v9, v11);
  sub_2384F366C(v13, v14);
  (*(v7 + 8))(v23, v8);
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

void sub_2384F366C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238757CE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384F4168();
  v10 = v9;
  v11 = sub_2387588A0();
  v12 = [objc_opt_self() sharedService];
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v12;
  sub_2384F4580(a1);
  v14 = PKMerchantCategoryToString();
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v13 stylingForWalletCategory_];

  if (!v16)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v17 = v11;

  v18 = [v16 tintColorForScale_];
  v19 = [v10 imageForSize:4 scale:1 transparent:v17];
  if (v19)
  {
    v20 = v19;
    v21 = UIImagePNGRepresentation(v19);
    if (v21)
    {
      v22 = v21;
      v23 = sub_23875B990();
      v35 = v24;
      v36 = v23;

      [(UIImage *)v20 size];
      v26 = v25 * v17;
      if (COERCE__INT64(fabs(v25 * v17)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v26 > -2147483650.0)
      {
        if (v26 < 2147483650.0)
        {
          [(UIImage *)v20 size];
          v28 = v27 * v17;
          if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v28 > -2147483650.0)
            {
              if (v28 < 2147483650.0)
              {
                v34 = v10;
                if (v18)
                {
                  v29 = [v18 CGColor];
                }

                (*(v5 + 104))(v8, *MEMORY[0x277CC6BD0], v4);
                sub_238757CD0();

                v32 = sub_238757CF0();
                (*(*(v32 - 8) + 56))(a2, 0, 1, v32);
                return;
              }

              goto LABEL_24;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v30 = sub_238757CF0();
  v31 = *(*(v30 - 8) + 56);

  v31(a2, 1, 1, v30);
}

uint64_t sub_2384F3A38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_238757CE0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_23875C1E0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2384F3B64, 0, 0);
}

uint64_t sub_2384F3B64()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CC9D20] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2384F3C08;
  v4 = v0[3];

  return MEMORY[0x28211ED00](v4, 0);
}

uint64_t sub_2384F3C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 96);
  v6 = *v4;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;

  if (v3)
  {
    v8 = v6[10];
    v7 = v6[11];
    v9 = v6[7];

    v10 = v6[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2384F3D68, 0, 0);
  }
}

int64_t sub_2384F3D68()
{
  v1 = *(v0 + 120);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 120);
    v5 = [v3 statusCode];
    v6 = *(v0 + 120);
    if (v5 != 200)
    {
      v19 = *(v0 + 88);
      sub_23875C120();
      v20 = v6;
      v21 = sub_23875C1B0();
      v22 = sub_23875EFE0();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 112);
      v25 = *(v0 + 120);
      v26 = *(v0 + 104);
      if (v23)
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = [v3 statusCode];

        _os_log_impl(&dword_2383F8000, v21, v22, "Couldn't download icon: status %ld", v27, 0xCu);
        MEMORY[0x23EE64DF0](v27, -1, -1);
        sub_23844C954(v26, v24);

        v28 = *(v0 + 120);
      }

      else
      {

        sub_23844C954(v26, v24);
        v28 = v21;
        v21 = *(v0 + 120);
      }

      v29 = *(v0 + 88);
      v30 = *(v0 + 64);
      v31 = *(v0 + 72);

      (*(v31 + 8))(v29, v30);
      goto LABEL_21;
    }
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = sub_23875B980();
  v10 = CGDataProviderCreateWithCFData(v9);

  if (!v10)
  {
LABEL_17:
    v32 = *(v0 + 80);
    sub_23875C120();
    v33 = sub_23875C1B0();
    v34 = sub_23875EFE0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 112);
    v37 = *(v0 + 120);
    v38 = *(v0 + 104);
    if (v35)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2383F8000, v33, v34, "Could not create CGImage from image data", v39, 2u);
      MEMORY[0x23EE64DF0](v39, -1, -1);
      sub_23844C954(v38, v36);
    }

    else
    {

      sub_23844C954(v38, v36);
    }

    v41 = *(v0 + 72);
    v40 = *(v0 + 80);
    v42 = *(v0 + 64);

    (*(v41 + 8))(v40, v42);
LABEL_21:
    v18 = 1;
    goto LABEL_22;
  }

  v11 = CGImageCreateWithPNGDataProvider(v10, 0, 0, kCGRenderingIntentDefault);
  if (!v11)
  {
    v11 = CGImageCreateWithJPEGDataProvider(v10, 0, 0, kCGRenderingIntentDefault);
    if (!v11)
    {

      goto LABEL_17;
    }
  }

  v12 = v11;
  result = CGImageGetWidth(v11);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = CGImageGetHeight(v12);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = *(v0 + 104);
  v17 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x277CC6BD8], *(v0 + 40));
  sub_238757CD0();

  v18 = 0;
LABEL_22:
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);
  v45 = *(v0 + 56);
  v46 = *(v0 + 16);
  v47 = sub_238757CF0();
  (*(*(v47 - 8) + 56))(v46, v18, 1, v47);

  v48 = *(v0 + 8);

  return v48();
}

void sub_2384F4168()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedService];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  sub_2387597C0();
  v13 = sub_238757F40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_238439884(v9, &qword_27DF0A970, &unk_23876E8B0);
  }

  else
  {
    sub_2384F2858(v12, MEMORY[0x277CC6C68]);
    v16 = v15;
    (*(v14 + 8))(v9, v13);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  sub_2387597B0();
  v17 = sub_23875B3A0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_238439884(v5, &qword_27DF0A968, &unk_2387662B0);
    goto LABEL_9;
  }

  sub_2384F2858(v12, MEMORY[0x277CC85B8]);
  v20 = v19;
  (*(v18 + 8))(v5, v17);
  if (v20)
  {
LABEL_8:

    return;
  }

LABEL_9:
  v21 = [v10 sharedService];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  sub_2384F4580(v1);
  v23 = PKMerchantCategoryToString();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v22 stylingForWalletCategory_];

  if (v25)
  {

    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t MapsTransactionIconGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384F44D4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384494A4;

  return MapsTransactionIconGenerator.generateIcon(for:)(a1, a2);
}

uint64_t sub_2384F4580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBA0, &unk_23876BCE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v60 - v4;
  v5 = sub_238759170();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v67 = &v60 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = sub_238757E10();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v61 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - v34;
  v68 = a1;
  sub_2387597C0();
  v36 = sub_238757F40();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v19, 1, v36) == 1)
  {
    sub_238439884(v19, &qword_27DF0A970, &unk_23876E8B0);
    (*(v30 + 56))(v28, 1, 1, v29);
LABEL_4:
    sub_238439884(v28, &qword_27DF0A2C0, &qword_23876BCF0);
    goto LABEL_5;
  }

  sub_238757E50();
  (*(v37 + 8))(v19, v36);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  (*(v30 + 32))(v35, v28, v29);
  v52 = v67;
  (*(v30 + 16))(v67, v35, v29);
  (*(v30 + 56))(v52, 0, 1, v29);
  v53 = sub_238468A30(v52);
  v55 = v54;
  (*(v30 + 8))(v35, v29);
  if ((v55 & 1) == 0)
  {
    return v53;
  }

LABEL_5:
  sub_2387597B0();
  v38 = sub_23875B3A0();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v15, 1, v38) == 1)
  {
    sub_238439884(v15, &qword_27DF0A968, &unk_2387662B0);
    (*(v30 + 56))(v23, 1, 1, v29);
    v40 = v69;
LABEL_8:
    sub_238439884(v23, &qword_27DF0A2C0, &qword_23876BCF0);
LABEL_9:
    sub_2387597A0();
    v42 = sub_23875A660();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v40, 1, v42) == 1)
    {
      sub_238439884(v40, &qword_27DF0CBA0, &unk_23876BCE0);
      return 0;
    }

    v44 = v62;
    sub_23875A650();
    (*(v43 + 8))(v40, v42);
    v46 = v64;
    v45 = v65;
    v47 = v66;
    (*(v65 + 32))(v64, v44, v66);
    sub_238759150();
    v48 = v67;
    sub_238757E20();
    (*(v30 + 56))(v48, 0, 1, v29);
    v49 = sub_238468A30(v48);
    LOBYTE(v48) = v50;
    (*(v45 + 8))(v46, v47);
    if (v48)
    {
      return 0;
    }

    return v49;
  }

  sub_23875B2E0();
  (*(v39 + 8))(v15, v38);
  v41 = (*(v30 + 48))(v23, 1, v29);
  v40 = v69;
  if (v41 == 1)
  {
    goto LABEL_8;
  }

  v56 = v61;
  (*(v30 + 32))(v61, v23, v29);
  v57 = v67;
  (*(v30 + 16))(v67, v56, v29);
  (*(v30 + 56))(v57, 0, 1, v29);
  v49 = sub_238468A30(v57);
  v59 = v58;
  (*(v30 + 8))(v56, v29);
  if (v59)
  {
    goto LABEL_9;
  }

  return v49;
}

uint64_t dispatch thunk of MapsTransactionIconGenerating.generateIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2384494A4;

  return v13(a1, a2, a3, a4);
}

uint64_t MonogramView.init(backgroundColor:foregroundColor:merchantDisplayName:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_23875D990();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for MonogramView() + 36);
  v29[1] = 0x404C000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  sub_23845A940();
  sub_23875C540();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 16) = a6;
  sub_23875EAF0();

  v18 = sub_2384F565C(1);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x23EE635F0](v18, v20, v22, v24);
  v27 = v26;

  *(a5 + 40) = v25;
  *(a5 + 48) = v27;
  return result;
}

uint64_t type metadata accessor for MonogramView()
{
  result = qword_27DF0CBD0;
  if (!qword_27DF0CBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MonogramView.body.getter()
{
  v1 = sub_23875E4A0();
  v3 = v2;
  sub_2384F51E4(v0, &v15);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  sub_2384F56F8(&v10, &v5);
  sub_238439884(v14, &qword_27DF0CBB8, &qword_23876BCF8);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *&v5 = v1;
  *(&v5 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBC0, &qword_23876BD00);
  sub_2384F5768();
  sub_23875DBF0();
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v15 = v5;
  v16 = v6;
  return sub_238439884(&v15, &qword_27DF0CBC0, &qword_23876BD00);
}

uint64_t sub_2384F51E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *a1;
  v7 = a1[6];
  v38 = a1[5];
  v39 = v7;
  sub_2384397A8();

  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11;
  sub_23875D870();
  v13 = sub_23875D9E0();
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v8, v10, v12 & 1);

  LODWORD(v8) = *(type metadata accessor for MonogramView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v18 = sub_23875D840();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_23875D8C0();
  sub_238439884(v6, &qword_27DF0C7F0, &qword_23877B880);
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v13, v15, v17 & 1);

  v38 = a1[1];

  v24 = sub_23875DA20();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2384397FC(v19, v21, v23 & 1);

  v31 = a1[2];
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = v28 & 1;
  v33 = v35;
  *v35 = v36;
  *(v33 + 4) = 256;
  v33[2] = v24;
  v33[3] = v26;
  *(v33 + 32) = v28 & 1;
  v33[5] = v30;
  v33[6] = KeyPath;
  v33[7] = v31;

  sub_23843980C(v24, v26, v28 & 1);

  sub_2384397FC(v24, v26, v28 & 1);
}

uint64_t sub_2384F5558()
{
  v1 = sub_23875E4A0();
  v3 = v2;
  sub_2384F51E4(v0, &v15);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  sub_2384F56F8(&v10, &v5);
  sub_238439884(v14, &qword_27DF0CBB8, &qword_23876BCF8);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  *&v5 = v1;
  *(&v5 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBC0, &qword_23876BD00);
  sub_2384F5768();
  sub_23875DBF0();
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v15 = v5;
  v16 = v6;
  return sub_238439884(&v15, &qword_27DF0CBC0, &qword_23876BD00);
}

uint64_t sub_2384F565C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23875EB60();

    return sub_23875EC00();
  }

  return result;
}

uint64_t sub_2384F56F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBB8, &qword_23876BCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384F5768()
{
  result = qword_27DF0CBC8;
  if (!qword_27DF0CBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBC0, &qword_23876BD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBC8);
  }

  return result;
}

void sub_2384F5810()
{
  sub_238462AAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2384F58A8()
{
  result = qword_27DF0CBE0;
  if (!qword_27DF0CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBE8, &qword_23876BD78);
    sub_2384F5768();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBE0);
  }

  return result;
}

uint64_t View.addOrderToWalletButtonStyle(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_23875DB60();
}

uint64_t sub_2384F59BC()
{
  sub_2384E3540();

  return sub_23875CDC0();
}

unint64_t sub_2384F5A14()
{
  result = qword_27DF0CBF8;
  if (!qword_27DF0CBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CBF0, &unk_23876BE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CBF8);
  }

  return result;
}

unint64_t sub_2384F5A8C()
{
  result = qword_27DF0CC00;
  if (!qword_27DF0CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC00);
  }

  return result;
}

uint64_t sub_2384F5B48()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2384F5C38()
{
  type metadata accessor for OrderActionsMenuContext(319);
  if (v0 <= 0x3F)
  {
    sub_23846CAFC();
    if (v1 <= 0x3F)
    {
      sub_23846D088(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2384F5D10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for OrderActionsMenu(0);
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v5 = v46[8];
  MEMORY[0x28223BE20](v3);
  v47 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC30, &qword_23876C038);
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC38, &qword_23876C040);
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = v45 - v14;
  v59 = v2;
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E8, &unk_2387655B0);
  type metadata accessor for OrderActionsItems(0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
  v16 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  v17 = sub_23846CBA0();
  v60 = v15;
  v61 = &type metadata for OrderActionsMenuLabelStyle;
  v62 = v16;
  v63 = v17;
  swift_getOpaqueTypeConformance2();
  sub_2384FAA9C(&qword_27DF0CC40, type metadata accessor for OrderActionsItems);
  v51 = v11;
  sub_23875D9D0();
  v18 = v2 + *(v4 + 32);
  v19 = *v18;
  v20 = *(v18 + 8);
  v68 = v19;
  v69 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v50 = v60;
  v49 = v61;
  v48 = v62;
  sub_2384FA74C(v2, v8, type metadata accessor for OrderActionsMenu);
  v21 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v22 = swift_allocObject();
  sub_2384FAE70(v8, v22 + v21, type metadata accessor for OrderActionsMenu);
  v23 = v47;
  sub_2384FA74C(v2, v47, type metadata accessor for OrderActionsMenu);
  v24 = swift_allocObject();
  sub_2384FAE70(v23, v24 + v21, type metadata accessor for OrderActionsMenu);
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
  v47 = v31;

  v46 = v45;
  v60 = v30;
  v61 = v32;
  MEMORY[0x28223BE20](v33);
  v45[1] = v44;
  MEMORY[0x28223BE20](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v45[0] = v35;
  v36 = sub_23843A3E8(&qword_27DF0CC50, &qword_27DF0CC30, &qword_23876C038);
  v37 = sub_2384397A8();
  v38 = sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  v44[4] = v38;
  v44[5] = MEMORY[0x277CE0BC8];
  v44[2] = v36;
  v44[3] = v37;
  v44[0] = v35;
  v44[1] = MEMORY[0x277CE0BD8];
  v39 = v54;
  v40 = v53;
  v41 = v51;
  sub_23875DEC0();

  (*(v52 + 8))(v41, v39);

  v60 = v39;
  v61 = MEMORY[0x277D837D0];
  v62 = v45[0];
  v63 = MEMORY[0x277CE0BD8];
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v67 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v42 = v56;
  sub_23875DE00();
  return (*(v55 + 8))(v40, v42);
}

uint64_t sub_2384F64D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OrderActionsMenu(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for OrderActionsItems(0);
  sub_2384FA74C(a1, a2 + v7[5], type metadata accessor for OrderActionsMenuContext);
  sub_2384FA74C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2384FAE70(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for OrderActionsMenu);
  v10 = *MEMORY[0x277D38658];
  sub_23875EA80();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_23875EA50();
  [v11 initWithSuiteName_];

  *a2 = sub_23875C370();
  v13 = (a2 + v7[6]);
  *v13 = sub_2384FA7B4;
  v13[1] = v9;
  v14 = v7[7];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2384F6748(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for OrderActionsMenu(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384F67BC(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
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

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v16[0] = v12;
  v16[1] = v14;
  sub_2384397A8();
  sub_23875E190();
  LOBYTE(v16[0]) = *a1;
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23846CBA0();
  sub_23875DB00();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2384F6A70(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for OrderActionsMenu(0) + 20);
  sub_2384D5160(v6);
  sub_2384F6B58(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_2384F6B58(uint64_t a1)
{
  v29 = a1;
  v28 = sub_23875C1E0();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23875A710();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for OrderActionsMenuContext(0);
  v12 = v11[5];
  v13 = sub_23875ED80();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = v1 + v12;
  v15 = v27;
  (*(v4 + 16))(v6, v14, v27);
  v16 = v28;
  (*(v2 + 16))(&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v28);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = (v5 + *(v2 + 80) + v17) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v4 + 32))(v19 + v17, v6, v15);
  (*(v2 + 32))(v19 + v18, v25, v16);
  sub_2386C3BA4(0, 0, v10, &unk_23876C060, v19);

  v20 = 0x100000000;
  if (*v26)
  {
    v20 = 0x908000000;
  }

  v21 = 0x10000;
  if (!v26[v11[10]])
  {
    v21 = 0;
  }

  v22 = v21 | v20;
  v23 = 256;
  if (!v26[v11[9]])
  {
    v23 = 0;
  }

  sub_2384FBAB0(v22 | v23 | v26[v11[6]]);
}

void sub_2384F6E70(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for OrderActionsMenuContext(0);
  v4 = 0x100000000;
  if (v2)
  {
    v4 = 0x908000000;
  }

  v5 = 0x10000;
  if (!a1[v3[10]])
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 256;
  if (!a1[v3[9]])
  {
    v7 = 0;
  }

  v8 = v6 | v7 | a1[v3[6]];

  sub_2384FBAC0(v8);
}

unint64_t sub_2384F6F00()
{
  result = qword_27DF0CC28;
  if (!qword_27DF0CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC28);
  }

  return result;
}

uint64_t sub_2384F6F54@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCD0, &qword_23876C1E0);
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v48 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for OrderActionsItems(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v1 + *(v10 + 28);
  v12 = type metadata accessor for OrderActionsMenuContext(0);
  v13 = v12;
  v14 = 0;
  v15 = 0;
  v47 = 0;
  if (v11[*(v12 + 32)] == 1)
  {
    v14 = v11[*(v12 + 36)];
    sub_2384FA74C(v1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    sub_2384FAE70(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for OrderActionsItems);
    v47 = v17;

    v15 = sub_2384FB070;
  }

  v18 = v11[v13[7]];
  v44 = v15;
  if (v18 == 1 && v11[v13[10]] == 1 && (v19 = *v1, v12 = sub_23875C380(), (v49 & 1) == 0))
  {
    v35 = v8;
    v20 = v11[v13[6]];
    sub_2384FA74C(v1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
    v36 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v37 = swift_allocObject();
    sub_2384FAE70(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for OrderActionsItems);
    v42 = v37;

    v41 = sub_2384FAED8;
  }

  else
  {
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  MEMORY[0x28223BE20](v12);
  *(&v38 - 2) = v1;
  sub_2384FAE1C();
  v21 = v6;
  v40 = v6;
  sub_23875E3D0();
  v22 = v43;
  v23 = *(v43 + 16);
  v24 = v21;
  v25 = v46;
  v23(v48, v24, v46);
  v39 = v14;
  v27 = v44;
  v26 = v45;
  *v45 = v14;
  v26[1] = v27;
  v26[2] = v47;
  v26[3] = v20;
  v28 = v41;
  v29 = v42;
  v26[4] = v41;
  v26[5] = v29;
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCE0, &qword_23876C1E8) + 64);
  v31 = v48;
  v23(v30, v48, v25);
  v32 = v39;
  sub_2383FE9BC(v39, v27);
  sub_2383FE9BC(v20, v28);
  sub_2383FE9CC(v20, v28);
  sub_2383FE9CC(v32, v27);
  v33 = *(v22 + 8);
  v33(v40, v25);
  v33(v31, v25);
  sub_2383FE9CC(v20, v28);
  return sub_2383FE9CC(v32, v27);
}

uint64_t sub_2384F73B8(int a1, uint64_t a2)
{
  v41 = a2;
  v45 = a1;
  v3 = type metadata accessor for OrderActionsItems(0);
  v4 = v3 - 8;
  v43 = *(v3 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v39 = &v39 - v8;
  v10 = type metadata accessor for OrderActionsMenuContext(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875A710();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = (a2 + *(v4 + 28));
  v22 = 0x10000;
  if (!v21[v11[12]])
  {
    v22 = 0;
  }

  *v21;
  v23 = 0x8000000;
  if (*v21)
  {
    v24 = 8;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = 256;
  if (v21[v11[11]])
  {
    v26 = 19;
  }

  else
  {
    v25 = 0;
    v26 = 18;
  }

  sub_2384FBD14(v26, v24, v23 | v22 | v25 | v21[v11[8]]);
  sub_2384FA74C(v21, v14, type metadata accessor for OrderActionsMenuContext);
  v27 = *(v16 + 32);
  v28 = &v14[v11[7]];
  v29 = v20;
  v40 = v20;
  v27(v20, v28, v15);
  v30 = sub_23875ED80();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = v42;
  (*(v16 + 16))(v42, v29, v15);
  sub_2384FA74C(v41, v46, type metadata accessor for OrderActionsItems);
  sub_23875ED50();
  v32 = sub_23875ED40();
  v33 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v34 = v33 + v17;
  v35 = (*(v43 + 80) + v34 + 1) & ~*(v43 + 80);
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v32;
  *(v36 + 24) = v37;
  v27((v36 + v33), v31, v15);
  *(v36 + v34) = v45;
  sub_2384FAE70(v46, v36 + v35, type metadata accessor for OrderActionsItems);
  sub_2386C3BA4(0, 0, v39, &unk_23876C1F8, v36);

  return (*(v16 + 8))(v40, v15);
}

uint64_t sub_2384F77E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_23875C1E0();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  sub_23875ED50();
  *(v6 + 64) = sub_23875ED40();
  v12 = sub_23875ECE0();
  *(v6 + 72) = v12;
  *(v6 + 80) = v11;

  return MEMORY[0x2822009F8](sub_2384F7914, v12, v11);
}

uint64_t sub_2384F7914()
{
  v1 = *(v0 + 56);
  sub_2387579D0();
  *(v0 + 88) = sub_2387579A0();
  sub_23875BBF0();
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(MEMORY[0x277CC6738] + 4);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_2384F7A18;
  v5 = *(v0 + 56);
  v6 = *(v0 + 112);
  v7 = *(v0 + 16);

  return MEMORY[0x282116E28](v7, v6, v5);
}

uint64_t sub_2384F7A18()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_238439884(v5, &qword_27DF12E00, &unk_238763FC0);

  v7 = *(v2 + 80);
  v8 = *(v2 + 72);
  if (v0)
  {
    v9 = sub_2384F7C14;
  }

  else
  {
    v9 = sub_2384F7BA4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2384F7BA4()
{
  v1 = v0[8];

  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2384F7C14()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];

  v5 = v4 + *(type metadata accessor for OrderActionsItems(0) + 28);
  sub_2384D5160(v3);
  v6 = v1;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2383F8000, v7, v8, "Failed to toggle marked as completed: %@", v11, 0xCu);
    sub_238439884(v12, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2384F7DC4(char a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderActionsItems(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = (a2 + *(v5 + 28));
  v14 = *v13;
  v15 = type metadata accessor for OrderActionsMenuContext(0);
  v16 = 0x10000;
  if (!v13[v15[10]])
  {
    v16 = 0;
  }

  v17 = 256;
  if (!v13[v15[9]])
  {
    v17 = 0;
  }

  v18 = v13[v15[6]];
  v19 = 0x8000000;
  if (!v14)
  {
    v19 = 0;
  }

  v20 = v17 | v16 | v19;
  if (v14)
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  if (v13[v15[6]])
  {
    v22 = 20;
  }

  else
  {
    v22 = 21;
  }

  sub_2384FBD14(v22, v21, v20 | v18);
  v23 = sub_23875ED80();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_2384FA74C(a2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
  sub_23875ED50();
  v24 = sub_23875ED40();
  v25 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  *(v26 + 32) = a1;
  sub_2384FAE70(v8, v26 + v25, type metadata accessor for OrderActionsItems);
  sub_2386C3BA4(0, 0, v12, &unk_23876C210, v26);
}

uint64_t sub_2384F8038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 124) = a4;
  v6 = sub_23875C1E0();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v9 = type metadata accessor for OrderActionsMenuContext(0);
  *(v5 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  sub_23875ED50();
  *(v5 + 64) = sub_23875ED40();
  v12 = sub_23875ECE0();
  *(v5 + 72) = v12;
  *(v5 + 80) = v11;

  return MEMORY[0x2822009F8](sub_2384F8160, v12, v11);
}

uint64_t sub_2384F8160()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  sub_2387579D0();
  *(v1 + 88) = sub_2387579A0();
  v5 = type metadata accessor for OrderActionsItems(0);
  *(v1 + 96) = v5;
  sub_2384FA74C(v4 + *(v5 + 20), v2, type metadata accessor for OrderActionsMenuContext);
  v6 = *(v3 + 20);
  *(v1 + 120) = v6;
  v7 = *(MEMORY[0x277CC6770] + 4);
  v8 = swift_task_alloc();
  *(v1 + 104) = v8;
  *v8 = v1;
  v8[1] = sub_2384F8264;
  v9 = *(v1 + 124);

  return MEMORY[0x282116E68](v9, v2 + v6);
}

uint64_t sub_2384F8264()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  v8 = sub_23875A710();
  (*(*(v8 - 8) + 8))(v6 + v4, v8);
  v9 = *(v2 + 80);
  v10 = *(v2 + 72);
  if (v0)
  {
    v11 = sub_2384F8488;
  }

  else
  {
    v11 = sub_2384F8414;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2384F8414()
{
  v1 = v0[8];

  v2 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2384F8488()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[2];

  v6 = v5 + *(v2 + 28);
  sub_2384D5160(v4);
  v7 = v1;
  v8 = sub_23875C1B0();
  v9 = sub_23875EFE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2383F8000, v8, v9, "Failed to save context with error: %@", v12, 0xCu);
    sub_238439884(v13, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v16 = v0[7];
  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2384F8638@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderActionsItems(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384FA74C(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderActionsItems);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2384FAE70(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderActionsItems);

  *a2 = sub_2384FB368;
  a2[1] = v8;
  return result;
}

void sub_2384F87C0(uint64_t a1)
{
  v2 = type metadata accessor for OrderActionsItems(0);
  v3 = a1 + *(v2 + 24);
  v4 = *(v3 + 8);
  (*v3)();
  v5 = (a1 + *(v2 + 20));
  v6 = *v5;
  v7 = type metadata accessor for OrderActionsMenuContext(0);
  v8 = 0x10000;
  if (!v5[v7[10]])
  {
    v8 = 0;
  }

  v9 = 256;
  if (!v5[v7[9]])
  {
    v9 = 0;
  }

  v10 = 0x8000000;
  if (!v6)
  {
    v10 = 0;
  }

  v11 = v9 | v8 | v10;
  if (v6)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 | v5[v7[6]];

  sub_2384FBD14(22, v12, v13);
}

uint64_t sub_2384F8890@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v49 = a1;
  v56 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC80, &qword_23876C180);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC88, &qword_23876C188);
  v5 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v46 = &v46 - v6;
  v7 = sub_23875CE80();
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875D4C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC90, &qword_23876C190);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC98, &qword_23876C198);
  v21 = *(v47 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v47);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCA0, &qword_23876C1A0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v46 - v28;
  (*(v12 + 16))(v15, v49, v11, v27);
  sub_23875E180();
  sub_23875D880();
  v30 = sub_23843A3E8(&qword_27DF0CCA8, &qword_27DF0CC90, &qword_23876C190);
  sub_23875DAF0();
  (*(v17 + 8))(v20, v16);
  v31 = v48;
  sub_23875CE70();
  *&v57 = v16;
  *(&v57 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_2384FAA9C(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v32 = v31;
  v33 = v47;
  v34 = v50;
  sub_23875DB00();
  (*(v51 + 8))(v32, v34);
  (*(v21 + 8))(v24, v33);
  sub_23875E4C0();
  sub_23875C9C0();
  v35 = &v29[*(v25 + 36)];
  v36 = v62;
  *(v35 + 4) = v61;
  *(v35 + 5) = v36;
  *(v35 + 6) = v63;
  v37 = v58;
  *v35 = v57;
  *(v35 + 1) = v37;
  v38 = v60;
  *(v35 + 2) = v59;
  *(v35 + 3) = v38;
  if (v52)
  {
    sub_23843981C(v29, v55, &qword_27DF0CCA0, &qword_23876C1A0);
    swift_storeEnumTagMultiPayload();
    sub_2384FAB1C();
    sub_2384FAC8C();
    sub_23875D1B0();
  }

  else
  {
    v39 = sub_23875D8F0();
    KeyPath = swift_getKeyPath();
    v41 = v46;
    sub_23843981C(v29, v46, &qword_27DF0CCA0, &qword_23876C1A0);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CCC0, &qword_23876C1A8) + 36));
    *v42 = KeyPath;
    v42[1] = v39;
    v43 = sub_23875D440();
    v44 = v55;
    *(v41 + *(v54 + 36)) = v43;
    sub_23843981C(v41, v44, &qword_27DF0CC88, &qword_23876C188);
    swift_storeEnumTagMultiPayload();
    sub_2384FAB1C();
    sub_2384FAC8C();
    sub_23875D1B0();
    sub_238439884(v41, &qword_27DF0CC88, &qword_23876C188);
  }

  return sub_238439884(v29, &qword_27DF0CCA0, &qword_23876C1A0);
}

uint64_t sub_2384F8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2384F8F48, 0, 0);
}

uint64_t sub_2384F8F48()
{
  sub_2387579D0();
  v0[4] = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6608] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2384F8FF8;
  v3 = v0[2];

  return MEMORY[0x282116D30](v3);
}

uint64_t sub_2384F8FF8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2384F9134, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2384F9134()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to delete an order: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2384F9298@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD48, &qword_23876C420);
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v15 = qword_2814F1B90;
    v16 = sub_23875EA50();
    v17 = sub_23875EA50();
    v18 = sub_23875EA50();
    v19 = [v15 localizedStringForKey:v16 value:v17 table:{v18, v32, v33}];

    v20 = sub_23875EA80();
    v22 = v21;

    v34 = v20;
    v35 = v22;
    sub_2384397A8();
    sub_23875E190();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v23 = qword_2814F1B90;
    v24 = sub_23875EA50();
    v25 = sub_23875EA50();
    v26 = sub_23875EA50();
    v27 = [v23 localizedStringForKey:v24 value:v25 table:{v26, v32, v33}];

    v28 = sub_23875EA80();
    v30 = v29;

    v34 = v28;
    v35 = v30;
    sub_2384397A8();
    sub_23875E190();
  }

  (*(v7 + 16))(v5, v10, v6);
  swift_storeEnumTagMultiPayload();
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875D1B0();
  (*(v7 + 8))(v10, v6);
  sub_2384FB7AC(v14, v33);
}

uint64_t sub_2384F971C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD28, &qword_23876C410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-v4];
  v6 = *v0;
  v8 = *(v0 + 1);
  v7 = *(v0 + 2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  v11[16] = v6;
  v12 = v8;
  v13 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  sub_2384FB6FC();
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0CD40, &qword_27DF0CD28, &qword_23876C410);
  sub_23875DE00();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2384F9914(char a1, void (*a2)(BOOL))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2((a1 & 1) == 0);
}

uint64_t sub_2384F99DC()
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

uint64_t sub_2384F9BC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-v4];
  v6 = *v0;
  v8 = *(v0 + 1);
  v7 = *(v0 + 2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  v11[16] = v6;
  v12 = v8;
  v13 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875DE00();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2384F9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD08, &qword_23876C3C8);
  v12 = *(*(v31[0] - 8) + 64);
  MEMORY[0x28223BE20](v31[0]);
  v14 = v31 - v13;
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

  sub_23875C390();
  v23 = sub_23875C3C0();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v32[0] = v20;
  v32[1] = v22;
  v25 = sub_2384FB548(v11, v8);
  MEMORY[0x28223BE20](v25);
  v31[-4] = v32;
  v31[-3] = 0x6873617274;
  v31[-2] = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E1F0();
  sub_238439884(v11, &qword_27DF0A328, &unk_2387655E0);

  v26 = sub_23875DFF0();
  KeyPath = swift_getKeyPath();
  v32[0] = v26;
  v28 = sub_23875C5D0();
  v29 = &v14[*(v31[0] + 36)];
  *v29 = KeyPath;
  v29[1] = v28;
  sub_2384FB5B8();
  sub_23875DE00();
  return sub_238439884(v14, &qword_27DF0CD08, &qword_23876C3C8);
}

uint64_t sub_2384FA1CC(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_2384FA284(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = type metadata accessor for OrderActionsMenuContext(0);
  if ((MEMORY[0x23EE5F1E0](&a1[v5[5]], &a2[v5[5]]) & 1) != 0 && a1[v5[6]] == a2[v5[6]] && a1[v5[7]] == a2[v5[7]] && a1[v5[8]] == a2[v5[8]] && a1[v5[9]] == a2[v5[9]] && a1[v5[10]] == a2[v5[10]])
  {
    v6 = a1[v5[11]] ^ a2[v5[11]] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for OrderActionsMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v7 = sub_23875A710();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384FA56C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_2384FA5FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23875C1E0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238449A7C;

  return sub_2384F8F28(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2384FA74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2384FA808()
{
  sub_23846D088(319, &qword_27DF0A350, MEMORY[0x277CDD630]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrderActionsMenuContext(319);
    if (v1 <= 0x3F)
    {
      sub_23846D0DC();
      if (v2 <= 0x3F)
      {
        sub_23846CAFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384FA8E8()
{
  result = qword_27DF0CC70;
  if (!qword_27DF0CC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC78, &qword_23876C0F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC30, &qword_23876C038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
    sub_23843A3E8(&qword_27DF0CC50, &qword_27DF0CC30, &qword_23876C038);
    sub_2384397A8();
    sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
    swift_getOpaqueTypeConformance2();
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CC70);
  }

  return result;
}

uint64_t sub_2384FAA9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2384FAB1C()
{
  result = qword_27DF0CCB0;
  if (!qword_27DF0CCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC88, &qword_23876C188);
    sub_2384FABD4();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCB0);
  }

  return result;
}

unint64_t sub_2384FABD4()
{
  result = qword_27DF0CCB8;
  if (!qword_27DF0CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCC0, &qword_23876C1A8);
    sub_2384FAC8C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCB8);
  }

  return result;
}

unint64_t sub_2384FAC8C()
{
  result = qword_27DF0CCC8;
  if (!qword_27DF0CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCA0, &qword_23876C1A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC98, &qword_23876C198);
    sub_23875CE80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC90, &qword_23876C190);
    sub_23843A3E8(&qword_27DF0CCA8, &qword_27DF0CC90, &qword_23876C190);
    swift_getOpaqueTypeConformance2();
    sub_2384FAA9C(&qword_27DF0B740, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCC8);
  }

  return result;
}

unint64_t sub_2384FAE1C()
{
  result = qword_27DF0CCD8;
  if (!qword_27DF0CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCD8);
  }

  return result;
}

uint64_t sub_2384FAE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_50Tm()
{
  v1 = (type metadata accessor for OrderActionsItems(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = v7 + *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v9 = sub_23875A710();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[8] + 8);

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C1E0();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384FB088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2384FB10C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_2384F77E4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_2384FB270(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderActionsItems(0) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_2384F8038(a1, v6, v7, v8, v1 + v5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2384FB3C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2384FB410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384FB460()
{
  result = qword_27DF0CCE8;
  if (!qword_27DF0CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CCF0, &qword_23876C2C0);
    sub_2384FAB1C();
    sub_2384FAC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CCE8);
  }

  return result;
}

uint64_t sub_2384FB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384FB5B8()
{
  result = qword_27DF0CD10;
  if (!qword_27DF0CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD08, &qword_23876C3C8);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    sub_23843A3E8(&qword_27DF0CD18, &qword_27DF0CD20, &qword_23876C408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD10);
  }

  return result;
}

uint64_t sub_2384FB6C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2384F99DC();
}

uint64_t sub_2384FB6F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2384F9298(*(v1 + 16), a1);
}

unint64_t sub_2384FB6FC()
{
  result = qword_27DF0CD38;
  if (!qword_27DF0CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD30, &qword_23876C418);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD38);
  }

  return result;
}

uint64_t sub_2384FB7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD30, &qword_23876C418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384FB81C()
{
  result = qword_27DF0CD50;
  if (!qword_27DF0CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD58, &qword_23876C428);
    sub_2384FB5B8();
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD50);
  }

  return result;
}

unint64_t sub_2384FB8D8()
{
  result = qword_27DF0CD60;
  if (!qword_27DF0CD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD68, &qword_23876C430);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD60);
  }

  return result;
}

unint64_t sub_2384FB9C0()
{
  result = qword_27DF0CD70;
  if (!qword_27DF0CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD78, &qword_23876C438);
    sub_23843A3E8(&qword_27DF0CD40, &qword_27DF0CD28, &qword_23876C410);
    sub_2384FAA9C(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD70);
  }

  return result;
}

void sub_2384FBAD0(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v5 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(v6 + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38428];
  *(v6 + 40) = sub_23875EA80();
  *(v6 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v6 + 56) = *MEMORY[0x277D38390];
  *(v6 + 64) = a2;
  v11 = *MEMORY[0x277D384B8];
  *(v6 + 72) = 0xE600000000000000;
  *(v6 + 80) = v11;
  *(v6 + 88) = sub_238449A8C(v3);
  *(v6 + 96) = v12;
  v13 = v7;
  v14 = v10;
  v15 = v11;
  v16 = sub_23854B138(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v16;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];
}

void sub_2384FBD14(char a1, char a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  *(inited + 32) = sub_23875EA50();
  v7 = MEMORY[0x277D38520];
  if ((*&a3 & 0x10000) != 0)
  {
    v7 = MEMORY[0x277D38528];
  }

  v8 = *v7;
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  *(inited + 56) = sub_23875EA50();
  *(inited + 64) = 0x63697373616C63;
  *(inited + 72) = 0xE700000000000000;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_238763300;
  v12 = *MEMORY[0x277D383D8];
  *(v11 + 32) = *MEMORY[0x277D383D8];
  v13 = *MEMORY[0x277D38428];
  *(v11 + 40) = sub_23875EA80();
  *(v11 + 48) = v14;
  v15 = *MEMORY[0x277D38390];
  *(v11 + 56) = *MEMORY[0x277D38390];
  *(v11 + 64) = sub_23844B4DC(a1);
  *(v11 + 72) = v16;
  v17 = *MEMORY[0x277D384B8];
  *(v11 + 80) = *MEMORY[0x277D384B8];
  *(v11 + 88) = sub_238449A8C(a2);
  *(v11 + 96) = v18;
  v19 = v12;
  v20 = v15;
  v21 = v17;
  v22 = sub_23854B138(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v22;
  sub_2385C33E4(v10, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v27);

  v24 = *MEMORY[0x277D38548];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v26 = sub_23875E910();

  [v25 subject:v24 sendEvent:v26];
}

uint64_t sub_2384FBFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384FC024()
{
  result = qword_27DF09090;
  if (!qword_27DF09090)
  {
    type metadata accessor for PKAnalyticsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09090);
  }

  return result;
}

uint64_t OrderArchiveMonthContents.init(year:month:)@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, __int16 *a3@<X8>)
{
  sub_2385F0128(a1, a2);
  sub_23875E500();
  v6 = *(type metadata accessor for OrderArchiveMonthContents(0) + 24);
  sub_238759C20();
  result = sub_23875C4F0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t OrderArchiveMonthContents.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD80, &qword_23876C440);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD88, &qword_23876C448);
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CD90, &qword_23876C450);
  sub_2384FF390();
  sub_23875D9C0();
  v31 = sub_2384FDAA8();
  v32 = v17;
  v18 = sub_23843A3E8(&qword_27DF0CDB0, &qword_27DF0CD80, &qword_23876C440);
  v19 = sub_2384397A8();
  v20 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v8 + 8))(v11, v7);
  sub_23875D300();
  v31 = v7;
  v32 = v20;
  v33 = v18;
  v34 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  v22 = v27;
  sub_23875DF50();
  (*(v28 + 8))(v6, v22);
  return (*(v26 + 8))(v16, v21);
}

uint64_t sub_2384FC418()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(type metadata accessor for OrderArchiveMonthContents(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDA8, &qword_23876C458);
  sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0);
  sub_2384FF990(&qword_27DF0B110, sub_2384FF9D8);
  sub_23843A3E8(&qword_27DF0CDA0, &qword_27DF0CDA8, &qword_23876C458);
  sub_23875E370();
}

id sub_2384FC648@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

id sub_2384FC684@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [v3 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE38, &qword_23876C678);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = v3;
    v10 = sub_2386261A8(v3, v5, sub_2384FC7AC, 0);

    *a2 = v10;
    a2[1] = 0;
    a2[2] = sub_2384FCC34;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2384FC7AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2384FC7E4(v3, a2);
}

uint64_t sub_2384FC7E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238758FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_238759BE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v27 - v22);
  v27 = a1;
  sub_238759BF0();
  v24 = (*(v17 + 88))(v23, v16);
  if (v24 == *MEMORY[0x277CC7C50])
  {
    (*(v17 + 96))(v23, v16);
    v25 = *v23;
    sub_238757D90();
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x277CC76A8])
    {
      (*(v12 + 96))(v15, v11);
      sub_2384FE55C(v25, *v15, v10);

      sub_2384FF8BC(v10, v28, type metadata accessor for OrderArchiveMonthRow.ViewModel);
LABEL_6:
      type metadata accessor for OrderArchiveMonthContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v24 == *MEMORY[0x277CC7C58])
    {
      (*(v17 + 96))(v23, v16);
      sub_2386A2B1C(*v23, 0, v6);

      sub_2384FF8BC(v6, v28, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      goto LABEL_6;
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v17 + 8))(v20, v16);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384FCC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v76 = a2;
  v66 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE40, &qword_23876C680);
  v70 = *(v75 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v62 - v6;
  v7 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE48, &qword_23876C688);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v62 - v15;
  v67 = type metadata accessor for OrderNavigationDestination(0);
  v65 = *(v67 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OrderArchiveMonthRow(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE50, &qword_23876C698);
  v27 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v64 = &v62 - v28;
  v29 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OrderArchiveMonthContentItem(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384FF854(v71, v36, type metadata accessor for OrderArchiveMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384FF8BC(v36, v10, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2384FF854(v10, v4, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v37 = v66;
    v38 = &v4[*(v66 + 20)];
    v77 = 0;
    sub_23875E1A0();
    v39 = v79;
    *v38 = v78;
    *(v38 + 1) = v39;
    v40 = *(v37 + 24);
    *&v4[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v41 = v69;
    sub_2384FD5E4(*v10, v10[1]);
    sub_2384FF924(v4, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v42 = v70;
    v43 = v75;
    (*(v70 + 16))(v74, v41, v75);
    swift_storeEnumTagMultiPayload();
    sub_2384FFA24();
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680);
    sub_23875D1B0();
    (*(v42 + 8))(v41, v43);
    v44 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v45 = v10;
  }

  else
  {
    sub_2384FF8BC(v36, v32, type metadata accessor for OrderArchiveMonthRow.ViewModel);
    v63 = v32;
    sub_2384FF854(v32, v26, type metadata accessor for OrderArchiveMonthRow.ViewModel);
    v46 = &v26[v23[5]];
    v77 = 0;
    sub_23875E1A0();
    v47 = v79;
    *v46 = v78;
    *(v46 + 1) = v47;
    v48 = &v26[v23[6]];
    v77 = 0;
    sub_23875E1A0();
    v49 = v79;
    *v48 = v78;
    *(v48 + 1) = v49;
    v50 = v23[7];
    *&v26[v50] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v70 = sub_23875A710();
    v51 = *(v70 - 8);
    v69 = *(v51 + 16);
    v71 = v51 + 16;
    v52 = v22;
    (v69)(v22, v32, v70);
    v53 = &v22[*(v19 + 20)];
    *v53 = 0;
    *(v53 + 1) = 0;
    sub_2384FF854(v22, v18, type metadata accessor for FetchedOrderDetailsDestination);
    v54 = v67;
    swift_storeEnumTagMultiPayload();
    v55 = v68;
    sub_2384FF854(v18, v68, type metadata accessor for OrderNavigationDestination);
    v56 = (*(v65 + 56))(v55, 0, 1, v54);
    MEMORY[0x28223BE20](v56);
    *(&v62 - 2) = v26;
    sub_2384FF990(&qword_27DF0CE78, type metadata accessor for OrderArchiveMonthRow);
    sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
    v57 = v64;
    sub_23875C760();
    sub_2384FF924(v18, type metadata accessor for OrderNavigationDestination);
    sub_2384FF924(v52, type metadata accessor for FetchedOrderDetailsDestination);
    sub_2384FF924(v26, type metadata accessor for OrderArchiveMonthRow);
    v58 = v57 + *(v72 + 36);
    v59 = v63;
    (v69)(v58, v63, v70);
    v60 = v58 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
    *v60 = swift_getKeyPath();
    *(v60 + 8) = 0;
    sub_23843981C(v57, v74, &qword_27DF0CE50, &qword_23876C698);
    swift_storeEnumTagMultiPayload();
    sub_2384FFA24();
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680);
    sub_23875D1B0();
    sub_238439884(v57, &qword_27DF0CE50, &qword_23876C698);
    v44 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
    v45 = v59;
  }

  return sub_2384FF924(v45, v44);
}

uint64_t sub_2384FD5E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for OrderNavigationDestination(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v13 = a1;
  v13[1] = a2;
  v13[2] = 0;
  v13[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384FF854(v13, v8, type metadata accessor for OrderNavigationDestination);
  (*(v10 + 56))(v8, 0, 1, v9);
  v16 = v2;
  type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
  sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

  sub_23875C760();
  return sub_2384FF924(v13, type metadata accessor for OrderNavigationDestination);
}

uint64_t sub_2384FD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25[0] = a7;
  v25[1] = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v25 - v15;
  v17 = type metadata accessor for OrderNavigationDestination(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = a1;
  v21[1] = a2;
  v21[2] = 0;
  v21[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384FF854(v21, v16, type metadata accessor for OrderNavigationDestination);
  (*(v18 + 56))(v16, 0, 1, v17);
  v26 = v7;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5(v22, v23);
  sub_2384FF990(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_23875C760();
  return sub_2384FF924(v21, type metadata accessor for OrderNavigationDestination);
}

uint64_t sub_2384FDAA8()
{
  v0 = sub_23875BA90();
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  MEMORY[0x28223BE20](v0);
  v98 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BAB0();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B7F0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v77 - v20;
  v21 = sub_23875BAD0();
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  MEMORY[0x28223BE20](v21);
  v86 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v89 = &v77 - v25;
  MEMORY[0x28223BE20](v26);
  v88 = &v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v77 - v30;
  v32 = sub_23875BC40();
  v101 = *(v32 - 8);
  v102 = v32;
  v33 = *(v101 + 64);
  MEMORY[0x28223BE20](v32);
  v85 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v77 - v41;
  v84 = sub_23875B650();
  v83 = *(v84 - 8);
  v43 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v45 = &v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23875BD30();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v77 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23875BE20();
  v52 = *(v51 - 8);
  v53 = v52[8];
  MEMORY[0x28223BE20](v51);
  v79 = &v77 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v77 - v57;
  (*(v47 + 104))(v50, *MEMORY[0x277CC9810], v46, v56);
  sub_23875BD40();
  (*(v47 + 8))(v50, v46);
  v59 = v52[2];
  v80 = v58;
  v59(v42, v58, v51);
  v78 = v52;
  v60 = v52[7];
  v81 = v51;
  v60(v42, 0, 1, v51);
  (*(v104 + 56))(v38, 1, 1, v105);
  v61 = *v103;
  v62 = v103[1];
  sub_23875B620();
  v105 = v45;
  sub_23875B5C0();
  v63 = v101;
  v64 = v102;
  result = (*(v101 + 48))(v31, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v66 = v85;
    (*(v63 + 32))(v85, v31, v64);
    v67 = sub_23875BA40();
    (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
    v68 = sub_23875BA10();
    (*(*(v68 - 8) + 56))(v87, 1, 1, v68);
    sub_23875B7D0();
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    v69 = v88;
    sub_23875BA50();
    v70 = v95;
    sub_23875BAA0();
    v71 = v86;
    sub_23875BA70();
    (*(v96 + 8))(v70, v97);
    v72 = v98;
    sub_23875BA80();
    v73 = v89;
    sub_23875BA60();
    (*(v99 + 8))(v72, v100);
    v74 = *(v92 + 8);
    v75 = v71;
    v76 = v93;
    v74(v75, v93);
    sub_2384FF990(&qword_27DF09978, MEMORY[0x277CC9428]);
    sub_23875BC20();
    v74(v73, v76);
    v74(v69, v76);
    (*(v63 + 8))(v66, v64);
    (*(v83 + 8))(v105, v84);
    (v78[1])(v80, v81);
    return v106;
  }

  return result;
}

void sub_2384FE55C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_238757D40();
  v13 = a1;
  v14 = a2;
  sub_23875A4D0();
  v15 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v16 = (a3 + v15[5]);
  v17 = v13;
  v18 = v14;
  sub_2384C7944(v18, v17, v16);
  sub_23843981C(v12, v9, &qword_27DF09F38, &qword_238764DC0);
  v19 = type metadata accessor for OrderListRow.ViewModel(0);
  v20 = *(v19 + 20);
  v21 = v18;
  sub_238759050();
  sub_23843981C(v12, v9, &qword_27DF09F38, &qword_238764DC0);
  v22 = v16 + *(v19 + 24);
  sub_23875B080();
  sub_238439884(v12, &qword_27DF09F38, &qword_238764DC0);
  v23 = a3 + v15[6];
  v24 = v17;
  v25 = v21;
  sub_238757D40();
  LOBYTE(v17) = sub_2385BA98C();
  v26 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  *(v23 + *(v26 + 20)) = v17 & 1;
  LOBYTE(v17) = [v24 isMarkedAsComplete];

  *(v23 + *(v26 + 24)) = v17;
  v27 = (a3 + v15[7]);
  *v27 = 0;
  v28 = type metadata accessor for OrderActionsMenuContext(0);
  v29 = &v27[v28[5]];
  sub_238757D40();
  v27[v28[6]] = [v24 notificationsEnabled];
  v27[v28[7]] = [v24 isActive];
  v27[v28[8]] = sub_2385BA98C() & 1;
  v27[v28[9]] = [v24 isMarkedAsComplete];
  v27[v28[10]] = sub_238757DC0() & 1;
  LOBYTE(v17) = [v24 automaticUpdatesEnabled];

  v27[v28[11]] = v17;
}

uint64_t sub_2384FE824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for OrderListRow(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE08, &qword_23876C5C0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v52 = &v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE10, &qword_23876C5C8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v51 = &v50 - v23;
  v50 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  sub_2384FF854(v1 + *(v50 + 20), v15, type metadata accessor for OrderListRow.ViewModel);
  v24 = *(v12 + 28);
  *&v15[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v53 = type metadata accessor for OrderArchiveMonthRow(0);
  v25 = v2 + *(v53 + 28);
  sub_2384D5138(v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF9D8], v3);
  LOBYTE(v25) = sub_23875C870();
  v26 = *(v4 + 8);
  v26(v7, v3);
  v26(v10, v3);
  if (v25)
  {
    v27 = 0x4028000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

  v28 = v52;
  sub_2384FF8BC(v15, v52, type metadata accessor for OrderListRow);
  v29 = v28 + *(v17 + 44);
  *v29 = 0x4028000000000000;
  *(v29 + 8) = v27;
  *(v29 + 16) = 0x4028000000000000;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  v30 = v50;
  v31 = v51;
  v32 = &v51[*(v21 + 44)];
  sub_2384FF854(v2 + *(v50 + 24), v32, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  v33 = type metadata accessor for OrderListRowActionsModifier(0);
  v34 = v32 + *(v33 + 20);
  v58 = 0;
  sub_23875E1A0();
  v35 = v56;
  *v34 = v55;
  *(v34 + 8) = v35;
  v36 = *(v33 + 24);
  *(v32 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2384396E4(v28, v31, &qword_27DF0CE08, &qword_23876C5C0);
  v37 = *(v30 + 28);
  v38 = (v2 + *(v53 + 24));
  v39 = *v38;
  v40 = *(v38 + 1);
  v58 = v39;
  v59 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v41 = v55;
  v42 = v56;
  LOBYTE(v28) = v57;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE18, &qword_23876C630);
  v44 = v54;
  v45 = v54 + *(v43 + 36);
  sub_2384FF854(v2 + v37, v45, type metadata accessor for OrderActionsMenuContext);
  v46 = type metadata accessor for ActionsContextMenu(0);
  v47 = v45 + *(v46 + 20);
  *v47 = v41;
  *(v47 + 8) = v42;
  *(v47 + 16) = v28;
  v48 = *(v46 + 24);
  *(v45 + v48) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  return sub_2384396E4(v31, v44, &qword_27DF0CE10, &qword_23876C5C8);
}

uint64_t sub_2384FECE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23843981C(a1, a4, a2, a3);
}

uint64_t sub_2384FEDB0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384FF854(a1, a3, a2);
}

uint64_t sub_2384FEE70(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = *(a2 + v5 + 8);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v7 && v8 == v9;
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v6 + *(v11 + 20), v7 + *(v11 + 20)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(v6 + v12);
  v14 = *(v6 + v12 + 8);
  v15 = (v7 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](v6 + *(v17 + 20), v7 + *(v17 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](v6 + *(v17 + 24), v7 + *(v17 + 24)) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  if ((MEMORY[0x23EE5F1E0](a1 + v18, a2 + v18) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  if (*(v19 + *(v21 + 20)) != *(v20 + *(v21 + 20)) || *(v19 + *(v21 + 24)) != *(v20 + *(v21 + 24)))
  {
    return 0;
  }

  v23 = v4[7];

  return sub_2384FA284((a1 + v23), (a2 + v23));
}

uint64_t sub_2384FEFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OrderArchiveMonthRow.ViewModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderArchiveMonthContentItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE20, qword_23876C638);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  sub_2384FF854(a1, &v31 - v21, type metadata accessor for OrderArchiveMonthContentItem);
  sub_2384FF854(a2, &v22[v24], type metadata accessor for OrderArchiveMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384FF854(v22, v15, type metadata accessor for OrderArchiveMonthContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2384FF8BC(&v22[v24], v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v25 = sub_2386A5A4C(v15, v7);
      sub_2384FF924(v7, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      v26 = v15;
      v27 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
LABEL_9:
      sub_2384FF924(v26, v27);
      sub_2384FF924(v22, type metadata accessor for OrderArchiveMonthContentItem);
      return v25 & 1;
    }

    v28 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v29 = v15;
  }

  else
  {
    sub_2384FF854(v22, v18, type metadata accessor for OrderArchiveMonthContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2384FF8BC(&v22[v24], v11, type metadata accessor for OrderArchiveMonthRow.ViewModel);
      v25 = sub_2384FEE70(v18, v11);
      sub_2384FF924(v11, type metadata accessor for OrderArchiveMonthRow.ViewModel);
      v26 = v18;
      v27 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
      goto LABEL_9;
    }

    v28 = type metadata accessor for OrderArchiveMonthRow.ViewModel;
    v29 = v18;
  }

  sub_2384FF924(v29, v28);
  sub_238439884(v22, &qword_27DF0CE20, qword_23876C638);
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_2384FF390()
{
  result = qword_27DF0CD98;
  if (!qword_27DF0CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CD90, &qword_23876C450);
    sub_23843A3E8(&qword_27DF0CDA0, &qword_27DF0CDA8, &qword_23876C458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CD98);
  }

  return result;
}

void sub_2384FF484()
{
  sub_2384FF664(319, &qword_27DF0CDD0, MEMORY[0x277CC7C60], MEMORY[0x277CDD7C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2384FF598()
{
  type metadata accessor for OrderArchiveMonthRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384B49C4();
    if (v1 <= 0x3F)
    {
      sub_2384FF664(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384FF664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384FF6F0()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OrderListRow.ViewModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for OrderActionsMenuContext(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2384FF7C4()
{
  result = type metadata accessor for OrderArchiveMonthRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2384FF854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384FF8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384FF924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384FF990(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2384FF9D8()
{
  result = qword_27DF0B108;
  if (!qword_27DF0B108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0B108);
  }

  return result;
}

unint64_t sub_2384FFA24()
{
  result = qword_27DF0CE58;
  if (!qword_27DF0CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE50, &qword_23876C698);
    sub_23843A3E8(&qword_27DF0CE60, &qword_27DF0CE68, &qword_23876C6A0);
    sub_2384FF990(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE58);
  }

  return result;
}

unint64_t sub_2384FFB74()
{
  result = qword_27DF0CE88;
  if (!qword_27DF0CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE18, &qword_23876C630);
    sub_2384FFC30();
    sub_2384FF990(&qword_27DF0CEB0, type metadata accessor for ActionsContextMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE88);
  }

  return result;
}

unint64_t sub_2384FFC30()
{
  result = qword_27DF0CE90;
  if (!qword_27DF0CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE10, &qword_23876C5C8);
    sub_2384FFCEC();
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE90);
  }

  return result;
}

unint64_t sub_2384FFCEC()
{
  result = qword_27DF0CE98;
  if (!qword_27DF0CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CE08, &qword_23876C5C0);
    sub_2384FF990(&qword_27DF0CEA0, type metadata accessor for OrderListRow);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CE98);
  }

  return result;
}

uint64_t sub_2384FFE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2384FFF14(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2384FFF90()
{
  result = qword_27DF0CED8;
  if (!qword_27DF0CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CEE0, &unk_23876C6E0);
    sub_23850004C();
    sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CED8);
  }

  return result;
}

unint64_t sub_23850004C()
{
  result = qword_27DF0CEE8;
  if (!qword_27DF0CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CEF0, &qword_238776C10);
    sub_2384FF990(&qword_27DF0CEA0, type metadata accessor for OrderListRow);
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CEE8);
  }

  return result;
}

unint64_t sub_2385001C8()
{
  result = qword_27DF0CF18;
  if (!qword_27DF0CF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CF20, &qword_23876C700);
    sub_238500284();
    sub_2384FF990(&qword_27DF0CE80, type metadata accessor for ExtractedOrderArchiveMonthRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF18);
  }

  return result;
}

unint64_t sub_238500284()
{
  result = qword_27DF0CF28;
  if (!qword_27DF0CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CF30, &qword_23876C708);
    sub_2384FF990(&qword_27DF0CF38, type metadata accessor for OrderSearchActiveRow);
    sub_2384FF990(&qword_27DF0CEA8, type metadata accessor for OrderListRowActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF28);
  }

  return result;
}

uint64_t sub_238500370(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_238500420()
{
  v1 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v0, v4, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return EnumCaseMultiPayload;
      }

      v8 = 8;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  else
  {
    v6 = 1;
    v7 = 3;
    if (EnumCaseMultiPayload != 2)
    {
      v7 = 4;
    }

    if (EnumCaseMultiPayload)
    {
      v6 = 2;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }
  }

  sub_238515494(v4, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v8;
}

uint64_t sub_238500544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a1;
  v206 = a2;
  v211 = a3;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2D0, &qword_23876CED0);
  v177 = *(v194 - 8);
  v3 = *(v177 + 64);
  MEMORY[0x28223BE20](v194);
  v176 = &v157 - v4;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2D8, &qword_23876CED8);
  v5 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v191 = &v157 - v6;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A620, &unk_238765AF0);
  v7 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v193 = &v157 - v8;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2E0, &qword_23876CEE0);
  v175 = *(v192 - 8);
  v9 = *(v175 + 64);
  MEMORY[0x28223BE20](v192);
  v174 = &v157 - v10;
  v11 = type metadata accessor for AccountConnectionStep(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v173 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2E8, &qword_23876CEE8);
  v172 = *(v190 - 8);
  v14 = *(v172 + 64);
  MEMORY[0x28223BE20](v190);
  v171 = &v157 - v15;
  v16 = type metadata accessor for ExtensionAuthorizationStep(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v170 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2F0, &qword_23876CEF0);
  v19 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v202 = &v157 - v20;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2F8, &qword_23876CEF8);
  v21 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v186 = (&v157 - v22);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A600, &qword_238765AE8);
  v23 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v188 = &v157 - v24;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A5F0, &qword_238765AE0);
  v25 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v203 = &v157 - v26;
  v27 = type metadata accessor for WebAuthorizationStep(0);
  v161 = *(v27 - 8);
  v28 = *(v161 + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v162 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v167 = &v157 - v30;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D300, &qword_23876CF00);
  v169 = *(v189 - 8);
  v31 = *(v169 + 64);
  MEMORY[0x28223BE20](v189);
  v168 = &v157 - v32;
  v33 = type metadata accessor for AppAuthorizationStep(0);
  v158 = *(v33 - 8);
  v34 = *(v158 + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v166 = &v157 - v37;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D308, &qword_23876CF08);
  v38 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v181 = &v157 - v39;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A5D0, &qword_238765AD8);
  v40 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v184 = &v157 - v41;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D310, &qword_23876CF10);
  v163 = *(v183 - 8);
  v42 = *(v163 + 64);
  MEMORY[0x28223BE20](v183);
  v160 = &v157 - v43;
  v44 = type metadata accessor for ReconnectAccountsStep(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v159 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D318, &qword_23876CF18);
  v165 = *(v185 - 8);
  v47 = *(v165 + 64);
  MEMORY[0x28223BE20](v185);
  v164 = &v157 - v48;
  v49 = type metadata accessor for PrivacyOnboardingStep(0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v178 = &v157 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D320, &qword_23876CF20);
  v52 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v209 = &v157 - v53;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D328, &qword_23876CF28);
  v54 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v197 = &v157 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D330, &unk_23876CF30);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v157 - v58;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A580, &qword_238765AB0);
  v60 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v180 = &v157 - v61;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A570, &qword_238765AA8);
  v62 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v198 = &v157 - v63;
  v64 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = &v157 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TermsAndConditionsStep(0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v71 = &v157 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v157 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v205, v75, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v117 = v178;
        sub_23851512C(v75, v178, type metadata accessor for PrivacyOnboardingStep);
        v118 = v164;
        sub_238511554(v117, v206, v164);
        v119 = v165;
        v120 = v185;
        (*(v165 + 16))(v59, v118, v185);
        swift_storeEnumTagMultiPayload();
        sub_2385148B0(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView);
        v121 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
        v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
        v123 = type metadata accessor for BankConnectPrivacyOnboardingView(255);
        v124 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView);
        v212 = v123;
        v213 = v124;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
        v127 = sub_2384727E4();
        v212 = v126;
        v213 = v127;
        v128 = swift_getOpaqueTypeConformance2();
        v212 = v121;
        v213 = v122;
        v214 = OpaqueTypeConformance2;
        v215 = v128;
        swift_getOpaqueTypeConformance2();
        v129 = v180;
        sub_23875D1B0();
        sub_23843981C(v129, v197, &unk_27DF0A580, &qword_238765AB0);
        swift_storeEnumTagMultiPayload();
        sub_23847261C();
        sub_238472908();
        v130 = v198;
        sub_23875D1B0();
        sub_238439884(v129, &unk_27DF0A580, &qword_238765AB0);
        sub_23843981C(v130, v209, &unk_27DF0A570, &qword_238765AA8);
        swift_storeEnumTagMultiPayload();
        sub_238472590();
        sub_238472A94();
        sub_23875D1B0();
        sub_238439884(v130, &unk_27DF0A570, &qword_238765AA8);
        (*(v119 + 8))(v118, v120);
        v87 = type metadata accessor for PrivacyOnboardingStep;
        v88 = v178;
      }

      else
      {
        sub_23851512C(v75, v71, type metadata accessor for TermsAndConditionsStep);
        sub_23851118C(v71, v206, v67);
        sub_2385165C8(v67, v59, type metadata accessor for BankConnectTermsAndConditionsView);
        swift_storeEnumTagMultiPayload();
        sub_2385148B0(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView);
        v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
        v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
        v79 = type metadata accessor for BankConnectPrivacyOnboardingView(255);
        v80 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView);
        v212 = v79;
        v213 = v80;
        v81 = swift_getOpaqueTypeConformance2();
        v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
        v83 = sub_2384727E4();
        v212 = v82;
        v213 = v83;
        v84 = swift_getOpaqueTypeConformance2();
        v212 = v77;
        v213 = v78;
        v214 = v81;
        v215 = v84;
        swift_getOpaqueTypeConformance2();
        v85 = v180;
        sub_23875D1B0();
        sub_23843981C(v85, v197, &unk_27DF0A580, &qword_238765AB0);
        swift_storeEnumTagMultiPayload();
        sub_23847261C();
        sub_238472908();
        v86 = v198;
        sub_23875D1B0();
        sub_238439884(v85, &unk_27DF0A580, &qword_238765AB0);
        sub_23843981C(v86, v209, &unk_27DF0A570, &qword_238765AA8);
        swift_storeEnumTagMultiPayload();
        sub_238472590();
        sub_238472A94();
        sub_23875D1B0();
        sub_238439884(v86, &unk_27DF0A570, &qword_238765AA8);
        sub_238515494(v67, type metadata accessor for BankConnectTermsAndConditionsView);
        v87 = type metadata accessor for TermsAndConditionsStep;
        v88 = v71;
      }

      return sub_238515494(v88, v87);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v99 = v159;
      sub_23851512C(v75, v159, type metadata accessor for ReconnectAccountsStep);
      v100 = v160;
      sub_238511B88(v99, v206, v160);
      v101 = v163;
      v102 = v183;
      (*(v163 + 16))(v181, v100, v183);
      swift_storeEnumTagMultiPayload();
      v103 = sub_2384729EC();
      v212 = &type metadata for BankConnectReconnectAccountsView;
      v213 = v103;
      swift_getOpaqueTypeConformance2();
      v104 = sub_238472A40();
      v212 = &type metadata for BankConnectAppAuthorizationView;
      v213 = v104;
      swift_getOpaqueTypeConformance2();
      v105 = v184;
      sub_23875D1B0();
      sub_23843981C(v105, v197, &unk_27DF0A5D0, &qword_238765AD8);
      swift_storeEnumTagMultiPayload();
      sub_23847261C();
      sub_238472908();
      v106 = v198;
      sub_23875D1B0();
      sub_238439884(v105, &unk_27DF0A5D0, &qword_238765AD8);
      sub_23843981C(v106, v209, &unk_27DF0A570, &qword_238765AA8);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v106, &unk_27DF0A570, &qword_238765AA8);
      (*(v101 + 8))(v100, v102);
      v107 = type metadata accessor for ReconnectAccountsStep;
    }

    else
    {
      v99 = v166;
      sub_23851512C(v75, v166, type metadata accessor for AppAuthorizationStep);
      sub_2385165C8(v99, v36, type metadata accessor for AppAuthorizationStep);
      v137 = (*(v158 + 80) + 24) & ~*(v158 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = v206;
      sub_23851512C(v36, v138 + v137, type metadata accessor for AppAuthorizationStep);
      type metadata accessor for BankConnectAppAuthorizationViewModel();
      v139 = swift_allocObject();
      *(v139 + 16) = sub_238516948;
      *(v139 + 24) = v138;
      v212 = sub_2384AD60C;
      v213 = v139;
      LOBYTE(v214) = 0;
      v140 = sub_238472A40();

      v141 = v168;
      sub_23875DE20();
      sub_2383FC164();
      v142 = v169;
      v143 = v189;
      (*(v169 + 16))(v181, v141, v189);
      swift_storeEnumTagMultiPayload();
      v144 = sub_2384729EC();
      v212 = &type metadata for BankConnectReconnectAccountsView;
      v213 = v144;
      swift_getOpaqueTypeConformance2();
      v212 = &type metadata for BankConnectAppAuthorizationView;
      v213 = v140;
      swift_getOpaqueTypeConformance2();
      v145 = v184;
      sub_23875D1B0();
      sub_23843981C(v145, v197, &unk_27DF0A5D0, &qword_238765AD8);
      swift_storeEnumTagMultiPayload();
      sub_23847261C();
      sub_238472908();
      v146 = v198;
      sub_23875D1B0();
      sub_238439884(v145, &unk_27DF0A5D0, &qword_238765AD8);
      sub_23843981C(v146, v209, &unk_27DF0A570, &qword_238765AA8);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v146, &unk_27DF0A570, &qword_238765AA8);
      (*(v142 + 8))(v141, v143);
      v107 = type metadata accessor for AppAuthorizationStep;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v148 = v176;
      sub_23851296C(v206, v176);
      v149 = v177;
      v150 = v194;
      (*(v177 + 16))(v191, v148, v194);
      swift_storeEnumTagMultiPayload();
      v151 = type metadata accessor for BankConnectAccountConnectionView(255);
      v152 = sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView);
      v212 = v151;
      v213 = v152;
      swift_getOpaqueTypeConformance2();
      v153 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
      v154 = sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
      v212 = v153;
      v213 = v154;
      swift_getOpaqueTypeConformance2();
      v155 = v193;
      sub_23875D1B0();
      sub_23843981C(v155, v202, &unk_27DF0A620, &unk_238765AF0);
      swift_storeEnumTagMultiPayload();
      sub_238472B20();
      sub_238472C80();
      v156 = v203;
      sub_23875D1B0();
      sub_238439884(v155, &unk_27DF0A620, &unk_238765AF0);
      sub_23843981C(v156, v209, &unk_27DF0A5F0, &qword_238765AE0);
      swift_storeEnumTagMultiPayload();
      sub_238472590();
      sub_238472A94();
      sub_23875D1B0();
      sub_238439884(v156, &unk_27DF0A5F0, &qword_238765AE0);
      return (*(v149 + 8))(v148, v150);
    }

    v99 = v173;
    sub_23851512C(v75, v173, type metadata accessor for AccountConnectionStep);
    v108 = v174;
    sub_2385122A0(v99, v206, v174);
    v109 = v175;
    v110 = v192;
    (*(v175 + 16))(v191, v108, v192);
    swift_storeEnumTagMultiPayload();
    v111 = type metadata accessor for BankConnectAccountConnectionView(255);
    v112 = sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView);
    v212 = v111;
    v213 = v112;
    swift_getOpaqueTypeConformance2();
    v113 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
    v114 = sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
    v212 = v113;
    v213 = v114;
    swift_getOpaqueTypeConformance2();
    v115 = v193;
    sub_23875D1B0();
    sub_23843981C(v115, v202, &unk_27DF0A620, &unk_238765AF0);
    swift_storeEnumTagMultiPayload();
    sub_238472B20();
    sub_238472C80();
    v116 = v203;
    sub_23875D1B0();
    sub_238439884(v115, &unk_27DF0A620, &unk_238765AF0);
    sub_23843981C(v116, v209, &unk_27DF0A5F0, &qword_238765AE0);
    swift_storeEnumTagMultiPayload();
    sub_238472590();
    sub_238472A94();
    sub_23875D1B0();
    sub_238439884(v116, &unk_27DF0A5F0, &qword_238765AE0);
    (*(v109 + 8))(v108, v110);
    v107 = type metadata accessor for AccountConnectionStep;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v99 = v170;
    sub_23851512C(v75, v170, type metadata accessor for ExtensionAuthorizationStep);
    v131 = v171;
    sub_238512004(v99, v206);
    v132 = v172;
    v133 = v190;
    (*(v172 + 16))(v186, v131, v190);
    swift_storeEnumTagMultiPayload();
    sub_238472BD8();
    v134 = sub_238472C2C();
    v212 = &type metadata for BankConnectExtensionAuthorizationView;
    v213 = v134;
    swift_getOpaqueTypeConformance2();
    v135 = v188;
    sub_23875D1B0();
    sub_23843981C(v135, v202, &unk_27DF0A600, &qword_238765AE8);
    swift_storeEnumTagMultiPayload();
    sub_238472B20();
    sub_238472C80();
    v136 = v203;
    sub_23875D1B0();
    sub_238439884(v135, &unk_27DF0A600, &qword_238765AE8);
    sub_23843981C(v136, v209, &unk_27DF0A5F0, &qword_238765AE0);
    swift_storeEnumTagMultiPayload();
    sub_238472590();
    sub_238472A94();
    sub_23875D1B0();
    sub_238439884(v136, &unk_27DF0A5F0, &qword_238765AE0);
    (*(v132 + 8))(v131, v133);
    v107 = type metadata accessor for ExtensionAuthorizationStep;
LABEL_15:
    v87 = v107;
    v88 = v99;
    return sub_238515494(v88, v87);
  }

  v89 = v75;
  v90 = v167;
  sub_23851512C(v89, v167, type metadata accessor for WebAuthorizationStep);
  v91 = v162;
  sub_2385165C8(v90, v162, type metadata accessor for WebAuthorizationStep);
  v92 = (*(v161 + 80) + 24) & ~*(v161 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = v206;
  sub_23851512C(v91, v93 + v92, type metadata accessor for WebAuthorizationStep);
  type metadata accessor for BankConnectWebAuthorizationViewModel();
  v94 = swift_allocObject();
  *(v94 + 16) = sub_2385168E4;
  *(v94 + 24) = v93;
  v95 = v186;
  *v186 = sub_2384AD60C;
  v95[1] = v94;
  *(v95 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  sub_238472BD8();
  v96 = sub_238472C2C();

  v212 = &type metadata for BankConnectExtensionAuthorizationView;
  v213 = v96;
  swift_getOpaqueTypeConformance2();
  v97 = v188;
  sub_23875D1B0();
  sub_23843981C(v97, v202, &unk_27DF0A600, &qword_238765AE8);
  swift_storeEnumTagMultiPayload();
  sub_238472B20();
  sub_238472C80();
  v98 = v203;
  sub_23875D1B0();
  sub_238439884(v97, &unk_27DF0A600, &qword_238765AE8);
  sub_23843981C(v98, v209, &unk_27DF0A5F0, &qword_238765AE0);
  swift_storeEnumTagMultiPayload();
  sub_238472590();
  sub_238472A94();
  sub_23875D1B0();

  sub_238439884(v98, &unk_27DF0A5F0, &qword_238765AE0);
  v87 = type metadata accessor for WebAuthorizationStep;
  v88 = v90;
  return sub_238515494(v88, v87);
}

uint64_t sub_238502584(uint64_t a1)
{
  v3 = v1;
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  v6 = *(v3 + *(a1 + 24));
  sub_23875F720();
  return sub_23875F760();
}

uint64_t sub_238502668(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v5 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v5)
  {
    v6 = v5;
    sub_23875F1C0();
  }

  v7 = *(v4 + *(a2 + 24));
  return sub_23875F720();
}

uint64_t sub_23850273C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v5 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v5)
  {
    v6 = v5;
    sub_23875F1C0();
  }

  v7 = *(v4 + *(a2 + 24));
  sub_23875F720();
  return sub_23875F760();
}

uint64_t sub_238502820(uint64_t a1)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v3 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v3)
  {
    v4 = v3;
    sub_23875F1C0();
  }

  return sub_23875F760();
}

void sub_2385028F0(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  if (v4)
  {
    sub_23875F720();
    v5 = v4;
    sub_23875F1C0();
  }

  else
  {
    sub_23875F720();
  }
}

uint64_t sub_2385029D8(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  return sub_23875F760();
}

uint64_t sub_238502AD4()
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v1 = type metadata accessor for AppAuthorizationStep(0);
  v2 = *(v0 + *(v1 + 20));
  sub_23875F720();
  if (v2)
  {
    v3 = v2;
    sub_23875F1C0();
  }

  v4 = *(v1 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238502C0C(uint64_t a1, uint64_t a2)
{
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  v6 = *(a2 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  return sub_23875E960();
}

uint64_t sub_238502D28(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  v6 = *(a2 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238502E94(uint64_t a1)
{
  v3 = v1;
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v4 = *(v1 + *(a1 + 20));
  sub_23875F720();
  if (v4)
  {
    v5 = v4;
    sub_23875F1C0();
  }

  v6 = v3 + *(a1 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v7 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238503020(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v5 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v5)
  {
    v6 = v5;
    sub_23875F1C0();
  }

  v7 = v4 + *(a2 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v8 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260]);
  return sub_23875E960();
}

uint64_t sub_23850319C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23875F700();
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v5 = *(v2 + *(a2 + 20));
  sub_23875F720();
  if (v5)
  {
    v6 = v5;
    sub_23875F1C0();
  }

  v7 = v4 + *(a2 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v8 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  sub_23875B940();
  sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238503328(__int128 *a1)
{
  v2 = v1;
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v9 = type metadata accessor for ExtensionAuthorizationStep(0);
  v10 = *(v1 + *(v9 + 20));
  sub_23875F720();
  if (v10)
  {
    v11 = v10;
    sub_23875F1C0();
  }

  v12 = v2 + *(v9 + 24);
  sub_23875A9A0();
  sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v13 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v14 = (v12 + *(v13 + 20));
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2387591C0();
  sub_2385148B0(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v5 + 8))(v8, v4);
  return sub_23872B17C(a1, *(v12 + *(v13 + 24)));
}

uint64_t sub_2385035F8()
{
  v1 = v0;
  sub_238757B60();
  sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
  sub_23875E960();
  v2 = type metadata accessor for AccountConnectionStep(0);
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_23875EB30();
  v6 = *(v0 + v2[6]);
  sub_23875F720();
  if (v6)
  {
    v7 = v6;
    sub_23875F1C0();
  }

  v8 = *(v1 + v2[7]);
  return sub_23875F720();
}

unint64_t sub_238503720()
{
  v43 = type metadata accessor for AccountConnectionStep(0);
  v1 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExtensionAuthorizationStep(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebAuthorizationStep(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppAuthorizationStep(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ReconnectAccountsStep(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PrivacyOnboardingStep(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TermsAndConditionsStep(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v0, v31, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23851512C(v31, v3, type metadata accessor for AccountConnectionStep);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD00000000000002BLL, 0x80000002387898B0);
        v37 = sub_238757B40();
        MEMORY[0x23EE63650](v37);

        MEMORY[0x23EE63650](0xD000000000000011, 0x80000002387898E0);
        MEMORY[0x23EE63650](*&v3[*(v43 + 20)], *&v3[*(v43 + 20) + 8]);
        v34 = v44;
        sub_238515494(v3, type metadata accessor for AccountConnectionStep);
      }

      else
      {
        return 0xD000000000000010;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23851512C(v31, v11, type metadata accessor for WebAuthorizationStep);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_23875F470();

      v44 = 0xD00000000000002ALL;
      v45 = 0x8000000238789940;
      v35 = sub_238757B40();
      MEMORY[0x23EE63650](v35);

      v34 = v44;
      sub_238515494(v11, type metadata accessor for WebAuthorizationStep);
    }

    else
    {
      sub_23851512C(v31, v7, type metadata accessor for ExtensionAuthorizationStep);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_23875F470();

      v44 = 0xD000000000000030;
      v45 = 0x8000000238789900;
      v39 = sub_238757B40();
      MEMORY[0x23EE63650](v39);

      v34 = v44;
      sub_238515494(v7, type metadata accessor for ExtensionAuthorizationStep);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23851512C(v31, v19, type metadata accessor for ReconnectAccountsStep);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_23875F470();

      v44 = 0xD00000000000002BLL;
      v45 = 0x80000002387899A0;
      v36 = sub_238757B40();
      MEMORY[0x23EE63650](v36);

      v34 = v44;
      sub_238515494(v19, type metadata accessor for ReconnectAccountsStep);
    }

    else
    {
      sub_23851512C(v31, v15, type metadata accessor for AppAuthorizationStep);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_23875F470();

      v44 = 0xD00000000000002ALL;
      v45 = 0x8000000238789970;
      v40 = sub_238757B40();
      MEMORY[0x23EE63650](v40);

      v34 = v44;
      sub_238515494(v15, type metadata accessor for AppAuthorizationStep);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23851512C(v31, v23, type metadata accessor for PrivacyOnboardingStep);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_23875F470();

    v44 = 0xD00000000000002BLL;
    v45 = 0x80000002387899D0;
    v38 = sub_238757B40();
    MEMORY[0x23EE63650](v38);

    v34 = v44;
    sub_238515494(v23, type metadata accessor for PrivacyOnboardingStep);
  }

  else
  {
    sub_23851512C(v31, v27, type metadata accessor for TermsAndConditionsStep);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_23875F470();

    v44 = 0xD00000000000002DLL;
    v45 = 0x8000000238789A00;
    v33 = sub_238757B40();
    MEMORY[0x23EE63650](v33);

    v34 = v44;
    sub_238515494(v27, type metadata accessor for TermsAndConditionsStep);
  }

  return v34;
}

uint64_t sub_238503E84(__int128 *a1)
{
  v80 = a1;
  v74 = type metadata accessor for AccountConnectionStep(0);
  v1 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875C0A0();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ExtensionAuthorizationStep(0);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for WebAuthorizationStep(0);
  v8 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppAuthorizationStep(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReconnectAccountsStep(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PrivacyOnboardingStep(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TermsAndConditionsStep(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v79, v29, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x23EE641F0](7);
      }

      v21 = v73;
      sub_23851512C(v29, v73, type metadata accessor for AccountConnectionStep);
      MEMORY[0x23EE641F0](6);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
      sub_23875E960();
      v39 = v74;
      v40 = &v21[*(v74 + 20)];
      v41 = *v40;
      v42 = *(v40 + 1);
      sub_23875EB30();
      v43 = *&v21[*(v39 + 24)];
      sub_23875F720();
      if (v43)
      {
        v44 = v43;
        sub_23875F1C0();
      }

      v59 = v21[*(v39 + 28)];
      sub_23875F720();
      v60 = type metadata accessor for AccountConnectionStep;
LABEL_29:
      v54 = v60;
      v55 = v21;
      return sub_238515494(v55, v54);
    }

    v33 = v80;
    if (EnumCaseMultiPayload != 4)
    {
      v47 = v75;
      sub_23851512C(v29, v75, type metadata accessor for ExtensionAuthorizationStep);
      MEMORY[0x23EE641F0](5);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
      sub_23875E960();
      v48 = v71;
      v49 = *(v47 + *(v71 + 20));
      sub_23875F720();
      if (v49)
      {
        v50 = v49;
        sub_23875F1C0();
      }

      v62 = v47 + *(v48 + 24);
      sub_23875A9A0();
      sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
      sub_23875E960();
      v63 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
      v64 = (v62 + *(v63 + 20));
      v65 = v64[4];
      __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      v66 = v76;
      sub_2387591C0();
      sub_2385148B0(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
      v67 = v78;
      sub_23875E960();
      (*(v77 + 8))(v66, v67);
      sub_23872B17C(v33, *(v62 + *(v63 + 24)));
      v54 = type metadata accessor for ExtensionAuthorizationStep;
      v55 = v47;
      return sub_238515494(v55, v54);
    }

    v17 = v72;
    sub_23851512C(v29, v72, type metadata accessor for WebAuthorizationStep);
    MEMORY[0x23EE641F0](4);
    sub_238757B60();
    sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
    sub_23875E960();
    v34 = v70;
    v35 = *&v17[*(v70 + 20)];
    sub_23875F720();
    if (v35)
    {
      v36 = v35;
      sub_23875F1C0();
    }

    v56 = &v17[*(v34 + 24)];
    sub_23875A9A0();
    sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
    sub_23875E960();
    v57 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
    sub_23875B940();
    sub_2385148B0(&qword_27DF0D190, MEMORY[0x277CC9260]);
    sub_23875E960();
    v58 = type metadata accessor for WebAuthorizationStep;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23851512C(v29, v25, type metadata accessor for TermsAndConditionsStep);
        MEMORY[0x23EE641F0](0);
        sub_238757B60();
        sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
        sub_23875E960();
        v31 = *&v25[*(v22 + 20)];
        sub_23875F720();
        if (v31)
        {
          v32 = v31;
          sub_23875F1C0();
        }

        v54 = type metadata accessor for TermsAndConditionsStep;
        v55 = v25;
        return sub_238515494(v55, v54);
      }

      sub_23851512C(v29, v21, type metadata accessor for PrivacyOnboardingStep);
      MEMORY[0x23EE641F0](1);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
      sub_23875E960();
      v45 = *&v21[*(v18 + 20)];
      sub_23875F720();
      if (v45)
      {
        v46 = v45;
        sub_23875F1C0();
      }

      v61 = v21[*(v18 + 24)];
      sub_23875F720();
      v60 = type metadata accessor for PrivacyOnboardingStep;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_23851512C(v29, v13, type metadata accessor for AppAuthorizationStep);
      MEMORY[0x23EE641F0](3);
      sub_238757B60();
      sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
      sub_23875E960();
      v51 = *&v13[*(v10 + 20)];
      sub_23875F720();
      if (v51)
      {
        v52 = v51;
        sub_23875F1C0();
      }

      v68 = *(v10 + 24);
      sub_23875A9A0();
      sub_2385148B0(&qword_27DF0D180, MEMORY[0x277CC8048]);
      sub_23875E960();
      v54 = type metadata accessor for AppAuthorizationStep;
      v55 = v13;
      return sub_238515494(v55, v54);
    }

    sub_23851512C(v29, v17, type metadata accessor for ReconnectAccountsStep);
    MEMORY[0x23EE641F0](2);
    sub_238757B60();
    sub_2385148B0(&qword_27DF0D178, MEMORY[0x277CC6B80]);
    sub_23875E960();
    v37 = *&v17[*(v14 + 20)];
    sub_23875F720();
    if (v37)
    {
      v38 = v37;
      sub_23875F1C0();
    }

    v58 = type metadata accessor for ReconnectAccountsStep;
  }

  v54 = v58;
  v55 = v17;
  return sub_238515494(v55, v54);
}

uint64_t sub_238504A90(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_23875F700();
  a3(v5);
  return sub_23875F760();
}

uint64_t sub_238504AF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_23875F700();
  a4(v6);
  return sub_23875F760();
}

uint64_t BankConnectAuthorizationFlowType.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

unint64_t sub_238504BD0()
{
  result = qword_27DF0CF50;
  if (!qword_27DF0CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CF50);
  }

  return result;
}

uint64_t sub_238504C6C()
{
  v0 = type metadata accessor for BankConnectAuthorizationError();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_238504CC4(uint64_t a1)
{
  result = sub_238758BB0();
  if (v3 <= 0x3F)
  {
    result = sub_23875B940();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_238504D50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_238758BB0() - 8) + 64);
  v7 = *(*(sub_23875B940() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_16:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 253;
}

void sub_238504ED0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_238758BB0() - 8) + 64);
  v9 = *(*(sub_23875B940() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 252) >> (8 * v11)) + 1;
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

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v11 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v9 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_41:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v9] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_26;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_2385050F8()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v13 = *(v30 + 16);
  if (!v13)
  {
  }

  sub_2385165C8(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v13 - 1), v12, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  sub_23875C120();
  sub_2385165C8(v12, v10, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  v14 = sub_23875C1B0();
  v15 = sub_23875F000();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v0;
    v30 = v17;
    v18 = v17;
    *v16 = 136315138;
    v19 = v1;
    v20 = sub_238503720();
    v22 = v21;
    v28 = type metadata accessor for BankConnectAuthorizationNavigationDestination;
    sub_238515494(v10, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v23 = sub_2384615AC(v20, v22, &v30);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2383F8000, v14, v15, "Bank connect authorization flow navigating to: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23EE64DF0](v18, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v19 + 8))(v4, v29);
    v24 = v12;
    v25 = v28;
  }

  else
  {

    sub_238515494(v10, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v1 + 8))(v4, v0);
    v24 = v12;
    v25 = type metadata accessor for BankConnectAuthorizationNavigationDestination;
  }

  return sub_238515494(v24, v25);
}

uint64_t sub_238505464()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_238505500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238505570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(a1, v5, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteFlowItem];
    swift_unknownObjectRelease();
  }

  return sub_238439884(a1, &unk_27DF0B540, &qword_238765900);
}

id sub_238505694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875AB40();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B410, &qword_238768120);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_23875A9A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  sub_23843981C(a1 + v17[6], v11, &unk_27DF0B410, &qword_238768120);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &unk_27DF0B410, &qword_238768120);
    v18 = v31;
    (*(v31 + 16))(v7, a1 + v17[7], v4);
    v19 = (*(v18 + 88))(v7, v4);
    if (v19 == *MEMORY[0x277CC8268] || v19 == *MEMORY[0x277CC8258])
    {
      (*(v18 + 96))(v7, v4);
      v21 = sub_23875BCB0();
      (*(*(v21 - 8) + 8))(v7, v21);
      v22 = sub_238757B60();
      (*(*(v22 - 8) + 16))(a2, a1, v22);
      v31 = *(a1 + v17[5]);
      v23 = type metadata accessor for PrivacyOnboardingStep(0);
      *(a2 + *(v23 + 20)) = v31;
      *(a2 + *(v23 + 24)) = 1;
    }

    else
    {
      if (v19 != *MEMORY[0x277CC8260])
      {
        result = sub_23875F520();
        __break(1u);
        return result;
      }

      v27 = sub_238757B60();
      (*(*(v27 - 8) + 16))(a2, a1, v27);
      v31 = *(a1 + v17[5]);
      *(a2 + *(type metadata accessor for TermsAndConditionsStep(0) + 20)) = v31;
    }
  }

  else
  {
    v24 = *(v13 + 32);
    v24(v16, v11, v12);
    v25 = sub_238757B60();
    (*(*(v25 - 8) + 16))(a2, a1, v25);
    v31 = *(a1 + v17[5]);
    v26 = type metadata accessor for AppAuthorizationStep(0);
    v24((a2 + *(v26 + 24)), v16, v12);
    *(a2 + *(v26 + 20)) = v31;
  }

  type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v28 = v31;

  return v28;
}

unint64_t sub_238505B40@<X0>(BOOL *a1@<X8>)
{
  sub_2387582B0();
  result = sub_2387582A0();
  if (!v1)
  {
    if (result >> 62)
    {
      v4 = sub_23875F3A0();
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v4 != 0;
  }

  return result;
}

void *sub_238505BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectAuthorizationError();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23875C1E0();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  sub_2385165C8(a1, v11, type metadata accessor for BankConnectAuthorizationError);
  v16 = sub_23875C1B0();
  v17 = sub_23875EFE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = v2;
    v21 = v20;
    *v19 = 138412290;
    sub_2385148B0(&qword_27DF0AD68, type metadata accessor for BankConnectAuthorizationError);
    swift_allocError();
    sub_2385165C8(v11, v22, type metadata accessor for BankConnectAuthorizationError);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    sub_238515494(v11, type metadata accessor for BankConnectAuthorizationError);
    *(v19 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_2383F8000, v16, v17, "Authorization flow has failed with error %@", v19, 0xCu);
    sub_238439884(v21, &qword_27DF09930, &unk_2387638C0);
    v24 = v21;
    v2 = v30;
    MEMORY[0x23EE64DF0](v24, -1, -1);
    v25 = v19;
    a1 = v29;
    MEMORY[0x23EE64DF0](v25, -1, -1);
  }

  else
  {

    sub_238515494(v11, type metadata accessor for BankConnectAuthorizationError);
  }

  (*(v12 + 8))(v15, v31);
  sub_23850F854();
  v26 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v27 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
  sub_2385165C8(a1, v7, type metadata accessor for BankConnectAuthorizationError);
  (*(v32 + 56))(v7, 0, 2, v8);

  v26(v7);

  sub_238515494(v7, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_238505FEC()
{
  v1 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875A820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = v0;
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType))
  {
    v10 = MEMORY[0x277D38550];
  }

  else
  {
    v10 = MEMORY[0x277D38560];
  }

  v11 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v13 = sub_23867B330(v9);
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *(inited + 40) = v13;
  *(inited + 48) = v15;
  v16 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_238763300;
  v18 = *MEMORY[0x277D383D8];
  *(v17 + 32) = *MEMORY[0x277D383D8];
  v19 = *MEMORY[0x277D38428];
  *(v17 + 40) = sub_23875EA80();
  *(v17 + 48) = v20;
  v21 = *MEMORY[0x277D38390];
  *(v17 + 56) = *MEMORY[0x277D38390];
  *(v17 + 64) = 0x6C65636E6163;
  v22 = *MEMORY[0x277D384B8];
  *(v17 + 72) = 0xE600000000000000;
  *(v17 + 80) = v22;
  strcpy((v17 + 88), "bankLinkStart");
  *(v17 + 102) = -4864;
  v23 = v18;
  v24 = v21;
  v25 = v22;
  v26 = sub_23854B138(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v26;
  sub_2385C33E4(v16, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v35);

  v28 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385148B0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v29 = sub_23875E910();

  [v28 subject:v11 sendEvent:v29];

  v30 = *(v34[0] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v31 = *(v34[0] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
  v32 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v32 - 8) + 56))(v4, 2, 2, v32);

  v30(v4);

  sub_238515494(v4, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_238506458(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 2)
  {
    v26 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
    v25 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
    v27 = type metadata accessor for BankConnectAuthorizationError();
    (*(*(v27 - 8) + 56))(v8, 2, 2, v27);

    v26(v8);

    sub_238515494(v8, type metadata accessor for BankConnectAuthorizationFlowResult);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result didCompleteFlowItem];
      return swift_unknownObjectRelease();
    }
  }

  else if (*a2 > 1uLL)
  {
    v28 = sub_238757B60();
    (*(*(v28 - 8) + 16))(v15, a1, v28);
    v29 = type metadata accessor for BankConnectAuthorizationError();
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v15, v13, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    return sub_238439884(v15, &unk_27DF0B540, &qword_238765900);
  }

  else
  {
    v20 = sub_238757B60();
    (*(*(v20 - 8) + 16))(v19, a1, v20);
    v21 = *(a1 + *(type metadata accessor for TermsAndConditionsStep(0) + 20));
    v22 = type metadata accessor for PrivacyOnboardingStep(0);
    *&v19[*(v22 + 20)] = v21;
    v19[*(v22 + 24)] = 0;
    swift_storeEnumTagMultiPayload();
    v23 = v21;
    sub_23850F640(v19);
    return sub_238515494(v19, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  }

  return result;
}

uint64_t sub_23850683C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v40 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v10 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B8, &unk_23876D070);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(v42, v27, type metadata accessor for BankConnectPrivacyOnboardingResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238515494(v27, type metadata accessor for BankConnectPrivacyOnboardingResult);
    v28 = sub_238757B60();
    (*(*(v28 - 8) + 16))(v9, a1, v28);
    v29 = type metadata accessor for BankConnectAuthorizationError();
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v9, v7, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    v31 = &unk_27DF0B540;
    v32 = &qword_238765900;
    v33 = v9;
  }

  else
  {
    sub_2384396E4(v27, v23, &qword_27DF0D3B8, &unk_23876D070);
    sub_23843981C(v23, v21, &qword_27DF0D3B8, &unk_23876D070);
    if ((*(v13 + 48))(v21, 1, v12) == 1)
    {
      sub_238439884(v21, &qword_27DF0D3B8, &unk_23876D070);
      v34 = sub_238757B60();
      v35 = v41;
      (*(*(v34 - 8) + 16))(v41, a1, v34);
      v36 = *(a1 + *(type metadata accessor for PrivacyOnboardingStep(0) + 20));
      *(v35 + *(type metadata accessor for ReconnectAccountsStep(0) + 20)) = v36;
      swift_storeEnumTagMultiPayload();
      v37 = v36;
      sub_23850F640(v35);
      sub_238515494(v35, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v33 = v23;
      v31 = &qword_27DF0D3B8;
      v32 = &unk_23876D070;
    }

    else
    {
      sub_23851512C(v21, v16, type metadata accessor for BankConnectAuthorizationFlow);
      v38 = type metadata accessor for PrivacyOnboardingStep(0);
      sub_2385070A0(a1, *(a1 + *(v38 + 20)), v16);
      sub_238515494(v16, type metadata accessor for BankConnectAuthorizationFlow);
      v31 = &qword_27DF0D3B8;
      v32 = &unk_23876D070;
      v33 = v23;
    }
  }

  return sub_238439884(v33, v31, v32);
}

uint64_t sub_238506D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BankConnectReconnectAccountsResult(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a2, v18, type metadata accessor for BankConnectReconnectAccountsResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_238515494(v18, type metadata accessor for BankConnectReconnectAccountsResult);
    v19 = sub_238757B60();
    (*(*(v19 - 8) + 16))(v10, a1, v19);
    v20 = type metadata accessor for BankConnectAuthorizationError();
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v10, v8, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    return sub_238439884(v10, &unk_27DF0B540, &qword_238765900);
  }

  else
  {
    sub_23851512C(v18, v14, type metadata accessor for BankConnectAuthorizationFlow);
    v23 = type metadata accessor for ReconnectAccountsStep(0);
    sub_2385070A0(a1, *(a1 + *(v23 + 20)), v14);
    return sub_238515494(v14, type metadata accessor for BankConnectAuthorizationFlow);
  }
}

uint64_t sub_2385070A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a3, v25, type metadata accessor for BankConnectAuthorizationFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23851512C(v25, v13, type metadata accessor for BankConnectWebAuthorizationFlow);
      v27 = sub_238757B60();
      (*(*(v27 - 8) + 16))(v17, a1, v27);
      v28 = type metadata accessor for WebAuthorizationStep(0);
      sub_2385165C8(v13, &v17[*(v28 + 24)], type metadata accessor for BankConnectWebAuthorizationFlow);
      *&v17[*(v28 + 20)] = a2;
      swift_storeEnumTagMultiPayload();
      v29 = a2;
      sub_23850F640(v17);
      sub_238515494(v17, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v30 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v31 = v13;
    }

    else
    {
      sub_23851512C(v25, v9, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v35 = sub_238757B60();
      (*(*(v35 - 8) + 16))(v17, a1, v35);
      v36 = type metadata accessor for ExtensionAuthorizationStep(0);
      sub_2385165C8(v9, &v17[*(v36 + 24)], type metadata accessor for BankConnectExtensionAuthorizationFlow);
      *&v17[*(v36 + 20)] = a2;
      swift_storeEnumTagMultiPayload();
      v37 = a2;
      sub_23850F640(v17);
      sub_238515494(v17, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v30 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v31 = v9;
    }
  }

  else
  {
    sub_23851512C(v25, v21, type metadata accessor for BankConnectAppAuthorizationFlow);
    v32 = sub_238757B60();
    (*(*(v32 - 8) + 16))(v17, a1, v32);
    v33 = type metadata accessor for AppAuthorizationStep(0);
    sub_2385165C8(v21, &v17[*(v33 + 24)], type metadata accessor for BankConnectAppAuthorizationFlow);
    *&v17[*(v33 + 20)] = a2;
    swift_storeEnumTagMultiPayload();
    v34 = a2;
    sub_23850F640(v17);
    sub_238515494(v17, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v30 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v31 = v21;
  }

  return sub_238515494(v31, v30);
}

void sub_238507554(uint64_t a1, void *a2, uint64_t a3)
{
  v100 = a3;
  v97 = a2;
  v99 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v7;
  v8 = sub_23875ABA0();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v11 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v98 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_23875AB40();
  v91 = *(v93 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v86 - v20;
  v94 = sub_238758BB0();
  v22 = *(v94 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v94);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875B940();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v86 - v33);
  sub_23843981C(v100, &v86 - v33, &unk_27DF0D360, &unk_23876BB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v56 = *(v101 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v57 = *(v101 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v58 = type metadata accessor for BankConnectAuthorizationError();
      v59 = v98;
      (*(*(v58 - 8) + 56))(v98, 2, 2, v58);

      v56(v59);

      sub_238515494(v59, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    v48 = swift_dynamicCast();
    v49 = v101;
    if ((v48 & 1) == 0)
    {
      goto LABEL_22;
    }

    v50 = v102;
    v51 = [v102 domain];
    v52 = sub_23875EA80();
    v54 = v53;

    if (v52 == sub_23875AB80() && v54 == v55)
    {
    }

    else
    {
      v71 = sub_23875F630();

      if ((v71 & 1) == 0)
      {
LABEL_21:

LABEL_22:
        v82 = sub_238757B60();
        v83 = v90;
        (*(*(v82 - 8) + 16))(v90, v99, v82);
        v84 = type metadata accessor for BankConnectAuthorizationError();
        swift_storeEnumTagMultiPayload();
        (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23843981C(v83, v89, &unk_27DF0B540, &qword_238765900);

        sub_23875C2E0();
        v85 = swift_unknownObjectWeakLoadStrong();
        if (v85)
        {
          [v85 didCompleteFlowItem];
          swift_unknownObjectRelease();
        }

        sub_238439884(v83, &unk_27DF0B540, &qword_238765900);
        goto LABEL_25;
      }
    }

    v72 = [v50 code];
    v74 = v86;
    v73 = v87;
    v75 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277CC82E0], v88);
    v76 = sub_23875AB90();
    (*(v73 + 8))(v74, v75);
    if (v72 == v76)
    {
      v78 = *(v49 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v77 = *(v49 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v79 = type metadata accessor for BankConnectAuthorizationError();
      v80 = v98;
      (*(*(v79 - 8) + 56))(v98, 2, 2, v79);

      v78(v80);

      sub_238515494(v80, type metadata accessor for BankConnectAuthorizationFlowResult);
      v81 = swift_unknownObjectWeakLoadStrong();
      if (v81)
      {
        [v81 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_25:

      return;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v27 + 32))(v30, v34, v26);
    sub_23850A5BC(v30);
    (*(v27 + 8))(v30, v26);
    return;
  }

  v36 = v22;
  v37 = v94;
  (*(v22 + 32))(v25, v34, v94);
  (*(v22 + 16))(v21, v25, v37);
  (*(v22 + 56))(v21, 0, 1, v37);
  v38 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v39 = v101;
  swift_beginAccess();
  sub_238516BF0(v21, v39 + v38);
  swift_endAccess();
  v40 = v39 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v41 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v43 = v91;
  v42 = v92;
  v44 = v40 + *(v41 + 28);
  v45 = v93;
  (*(v91 + 16))(v92, v44, v93);
  v46 = (*(v43 + 88))(v42, v45);
  v47 = v46 != *MEMORY[0x277CC8268];
  if (v46 == *MEMORY[0x277CC8268] || v46 == *MEMORY[0x277CC8258])
  {
    (*(v43 + 96))(v42, v45);
    v61 = sub_23875BCB0();
    (*(*(v61 - 8) + 8))(v42, v61);
    goto LABEL_16;
  }

  if (v46 == *MEMORY[0x277CC8260])
  {
    v47 = 0;
LABEL_16:
    v62 = sub_238757B60();
    v63 = v96;
    (*(*(v62 - 8) + 16))(v96, v99, v62);
    v64 = sub_238758BA0();
    v66 = v65;
    v67 = type metadata accessor for AccountConnectionStep(0);
    v68 = (v63 + v67[5]);
    *v68 = v64;
    v68[1] = v66;
    v69 = v97;
    *(v63 + v67[6]) = v97;
    *(v63 + v67[7]) = v47;
    swift_storeEnumTagMultiPayload();
    v70 = v69;
    sub_23850F640(v63);
    sub_238515494(v63, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v36 + 8))(v25, v37);
    return;
  }

  sub_23875F520();
  __break(1u);
}

void sub_238508094(uint64_t a1, void *a2, uint64_t a3)
{
  v98 = a3;
  v95 = a2;
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v84 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v84 - v7;
  v8 = sub_23875ABA0();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23875AB40();
  v89 = *(v91 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v84 - v20;
  v92 = sub_238758BB0();
  v22 = *(v92 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v92);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875B940();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v84 - v33;
  sub_23843981C(v98, &v84 - v33, &qword_27DF0D378, &qword_23876CF98);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v54 = *(v99 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v55 = *(v99 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v56 = type metadata accessor for BankConnectAuthorizationError();
      v57 = v96;
      (*(*(v56 - 8) + 56))(v96, 2, 2, v56);

      v54(v57);

      sub_238515494(v57, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    swift_dynamicCast();
    v48 = v100;
    v49 = [v100 domain];
    v50 = sub_23875EA80();
    v52 = v51;

    if (v50 == sub_23875AB80() && v52 == v53)
    {
    }

    else
    {
      v69 = sub_23875F630();

      if ((v69 & 1) == 0)
      {
LABEL_20:

        v80 = sub_238757B60();
        v81 = v85;
        (*(*(v80 - 8) + 16))(v85, v97, v80);
        v82 = type metadata accessor for BankConnectAuthorizationError();
        swift_storeEnumTagMultiPayload();
        (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23843981C(v81, v84, &unk_27DF0B540, &qword_238765900);

        sub_23875C2E0();
        v83 = swift_unknownObjectWeakLoadStrong();
        if (v83)
        {
          [v83 didCompleteFlowItem];
          swift_unknownObjectRelease();
        }

        sub_238439884(v81, &unk_27DF0B540, &qword_238765900);
        return;
      }
    }

    v70 = [v48 code];
    v72 = v86;
    v71 = v87;
    v73 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277CC82E0], v88);
    v74 = sub_23875AB90();
    (*(v71 + 8))(v72, v73);
    if (v70 == v74)
    {
      v76 = *(v99 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v75 = *(v99 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v77 = type metadata accessor for BankConnectAuthorizationError();
      v78 = v96;
      (*(*(v77 - 8) + 56))(v96, 2, 2, v77);

      v76(v78);

      sub_238515494(v78, type metadata accessor for BankConnectAuthorizationFlowResult);
      v79 = swift_unknownObjectWeakLoadStrong();
      if (v79)
      {
        [v79 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v27 + 32))(v30, v34, v26);
    sub_23850A5BC(v30);
    (*(v27 + 8))(v30, v26);
    return;
  }

  v36 = v22;
  v37 = v92;
  (*(v22 + 32))(v25, v34, v92);
  (*(v22 + 16))(v21, v25, v37);
  (*(v22 + 56))(v21, 0, 1, v37);
  v38 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v39 = v99;
  swift_beginAccess();
  sub_238516BF0(v21, v39 + v38);
  swift_endAccess();
  v40 = v39 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v41 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v43 = v89;
  v42 = v90;
  v44 = v40 + *(v41 + 28);
  v45 = v91;
  (*(v89 + 16))(v90, v44, v91);
  v46 = (*(v43 + 88))(v42, v45);
  v47 = v46 != *MEMORY[0x277CC8268];
  if (v46 == *MEMORY[0x277CC8268] || v46 == *MEMORY[0x277CC8258])
  {
    (*(v43 + 96))(v42, v45);
    v59 = sub_23875BCB0();
    (*(*(v59 - 8) + 8))(v42, v59);
    goto LABEL_15;
  }

  if (v46 == *MEMORY[0x277CC8260])
  {
    v47 = 0;
LABEL_15:
    v60 = sub_238757B60();
    v61 = v94;
    (*(*(v60 - 8) + 16))(v94, v97, v60);
    v62 = sub_238758BA0();
    v64 = v63;
    v65 = type metadata accessor for AccountConnectionStep(0);
    v66 = (v61 + v65[5]);
    *v66 = v62;
    v66[1] = v64;
    v67 = v95;
    *(v61 + v65[6]) = v95;
    *(v61 + v65[7]) = v47;
    swift_storeEnumTagMultiPayload();
    v68 = v67;
    sub_23850F640(v61);
    sub_238515494(v61, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v36 + 8))(v25, v37);
    return;
  }

  sub_23875F520();
  __break(1u);
}

void sub_238508BB0(uint64_t a1, void *a2, uint64_t a3)
{
  v103 = a3;
  v100 = a2;
  v102 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v88 - v7;
  v8 = sub_23875ABA0();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v11 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_23875AB40();
  v94 = *(v96 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v88 - v20;
  v97 = sub_238758BB0();
  v22 = *(v97 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v97);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875B940();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D380, &qword_23876CFA0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v88 - v33);
  sub_23843981C(v103, &v88 - v33, &unk_27DF0D380, &qword_23876CFA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v58 = *(v104 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v59 = *(v104 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v60 = type metadata accessor for BankConnectAuthorizationError();
      v61 = v101;
      (*(*(v60 - 8) + 56))(v101, 2, 2, v60);

      v58(v61);

      sub_238515494(v61, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      return;
    }

    v106 = *v34;
    v49 = v106;
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    swift_dynamicCast();
    v50 = v105;
    v51 = [v105 domain];
    v52 = sub_23875EA80();
    v54 = v53;

    v55 = sub_23875AB80();
    v57 = v104;
    if (v52 == v55 && v54 == v56)
    {
    }

    else
    {
      v73 = sub_23875F630();

      if ((v73 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v74 = [v50 code];
    v76 = v91;
    v75 = v92;
    v77 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x277CC82E0], v93);
    v78 = sub_23875AB90();
    (*(v75 + 8))(v76, v77);
    if (v74 == v78)
    {
      v80 = *(v57 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v79 = *(v57 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v81 = type metadata accessor for BankConnectAuthorizationError();
      v82 = v101;
      (*(*(v81 - 8) + 56))(v101, 2, 2, v81);

      v80(v82);

      sub_238515494(v82, type metadata accessor for BankConnectAuthorizationFlowResult);
      v83 = swift_unknownObjectWeakLoadStrong();
      if (v83)
      {
        [v83 didCompleteFlowItem];

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_23:

      return;
    }

LABEL_20:

    v84 = sub_238757B60();
    v85 = v90;
    (*(*(v84 - 8) + 16))(v90, v102, v84);
    v86 = type metadata accessor for BankConnectAuthorizationError();
    swift_storeEnumTagMultiPayload();
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v85, v89, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    v87 = swift_unknownObjectWeakLoadStrong();
    if (v87)
    {
      [v87 didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    sub_238439884(v85, &unk_27DF0B540, &qword_238765900);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v27 + 32))(v30, v34, v26);
    sub_23850A5BC(v30);
    (*(v27 + 8))(v30, v26);
    return;
  }

  v36 = v22;
  v37 = v34;
  v38 = v97;
  (*(v22 + 32))(v25, v37, v97);
  (*(v22 + 16))(v21, v25, v38);
  (*(v22 + 56))(v21, 0, 1, v38);
  v39 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v40 = v104;
  swift_beginAccess();
  sub_238516BF0(v21, v40 + v39);
  swift_endAccess();
  v41 = v40 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v42 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v44 = v94;
  v43 = v95;
  v45 = v41 + *(v42 + 28);
  v46 = v96;
  (*(v94 + 16))(v95, v45, v96);
  v47 = (*(v44 + 88))(v43, v46);
  v48 = v47 != *MEMORY[0x277CC8268];
  if (v47 == *MEMORY[0x277CC8268] || v47 == *MEMORY[0x277CC8258])
  {
    (*(v44 + 96))(v43, v46);
    v63 = sub_23875BCB0();
    (*(*(v63 - 8) + 8))(v43, v63);
    goto LABEL_15;
  }

  if (v47 == *MEMORY[0x277CC8260])
  {
    v48 = 0;
LABEL_15:
    v64 = sub_238757B60();
    v65 = v99;
    (*(*(v64 - 8) + 16))(v99, v102, v64);
    v66 = sub_238758BA0();
    v68 = v67;
    v69 = type metadata accessor for AccountConnectionStep(0);
    v70 = (v65 + v69[5]);
    *v70 = v66;
    v70[1] = v68;
    v71 = v100;
    *(v65 + v69[6]) = v100;
    *(v65 + v69[7]) = v48;
    swift_storeEnumTagMultiPayload();
    v72 = v71;
    sub_23850F640(v65);
    sub_238515494(v65, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    (*(v36 + 8))(v25, v38);
    return;
  }

  sub_23875F520();
  __break(1u);
}

uint64_t sub_2385096DC(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = sub_23875ABA0();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = *(*(type metadata accessor for BankConnectAuthorizationFlowResult(0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3[14] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v12 = sub_238759320();
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a2;
  v3[19] = v15;
  v3[20] = v16;
  sub_23875ED50();
  v3[21] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v3[22] = v18;
  v3[23] = v17;

  return MEMORY[0x2822009F8](sub_2385098F8, v18, v17);
}

uint64_t sub_2385098F8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 104);
      v4 = *(v0 + 40);

      v6 = *(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
      v5 = *(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
      v7 = type metadata accessor for BankConnectAuthorizationError();
      (*(*(v7 - 8) + 56))(v3, 2, 2, v7);

      v6(v3);

      sub_238515494(v3, type metadata accessor for BankConnectAuthorizationFlowResult);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      goto LABEL_29;
    }

    v13 = *(v0 + 168);

    *(v0 + 16) = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
    sub_238449184(0, &qword_27DF0D370, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_26:
      v48 = *(v0 + 64);
      v49 = *(v0 + 40);
      v50 = *(v0 + 48);
      v51 = *(v0 + 32);

      v52 = sub_238757B60();
      (*(*(v52 - 8) + 16))(v50, v51, v52);
      v53 = type metadata accessor for BankConnectAuthorizationError();
      swift_storeEnumTagMultiPayload();
      (*(*(v53 - 8) + 56))(v50, 0, 1, v53);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23843981C(v50, v48, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v54 = swift_unknownObjectWeakLoadStrong();
      if (v54)
      {
        [v54 didCompleteFlowItem];
        swift_unknownObjectRelease();
      }

      sub_238439884(*(v0 + 48), &unk_27DF0B540, &qword_238765900);
      goto LABEL_29;
    }

    v15 = *(v0 + 24);
    v16 = [v15 domain];
    v17 = sub_23875EA80();
    v19 = v18;

    if (v17 == sub_23875AB80() && v19 == v20)
    {
    }

    else
    {
      v21 = sub_23875F630();

      if ((v21 & 1) == 0)
      {

        goto LABEL_18;
      }
    }

    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);
    v25 = [v15 code];
    (*(v23 + 104))(v22, *MEMORY[0x277CC82D8], v24);
    v26 = sub_23875AB90();
    (*(v23 + 8))(v22, v24);

    if (v25 == v26)
    {
      v28 = *(v0 + 64);
      v27 = *(v0 + 72);
      v29 = *(v0 + 40);
      v30 = type metadata accessor for BankConnectAuthorizationError();
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23843981C(v27, v28, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v31 = swift_unknownObjectWeakLoadStrong();
      v32 = *(v0 + 72);
      if (!v31)
      {
LABEL_16:

        sub_238439884(v32, &unk_27DF0B540, &qword_238765900);
LABEL_29:
        v56 = *(v0 + 144);
        v55 = *(v0 + 152);
        v57 = *(v0 + 120);
        v59 = *(v0 + 96);
        v58 = *(v0 + 104);
        v61 = *(v0 + 64);
        v60 = *(v0 + 72);
        v63 = *(v0 + 48);
        v62 = *(v0 + 56);

        v64 = *(v0 + 8);

        return v64();
      }

LABEL_15:
      [v31 didCompleteFlowItem];
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_18:
    v33 = [v15 domain];
    v34 = sub_23875EA80();
    v36 = v35;

    if (v34 == sub_23875AB80() && v36 == v37)
    {
    }

    else
    {
      v38 = sub_23875F630();

      if ((v38 & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    v41 = *(v0 + 80);
    v42 = [v15 code];
    (*(v40 + 104))(v39, *MEMORY[0x277CC82D0], v41);
    v43 = sub_23875AB90();
    (*(v40 + 8))(v39, v41);
    if (v42 == v43)
    {
      v45 = *(v0 + 56);
      v44 = *(v0 + 64);
      v46 = *(v0 + 40);
      v47 = type metadata accessor for BankConnectAuthorizationError();
      swift_storeEnumTagMultiPayload();
      (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23843981C(v45, v44, &unk_27DF0B540, &qword_238765900);

      sub_23875C2E0();
      v31 = swift_unknownObjectWeakLoadStrong();
      v32 = *(v0 + 56);
      if (!v31)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v9 = *(*(v0 + 40) + 64);
  v10 = *(MEMORY[0x277CC72D8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_23850A08C;
  v12 = *(v0 + 152);

  return MEMORY[0x282117DC8](v12);
}

uint64_t sub_23850A08C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_23850A418;
  }

  else
  {
    v7 = sub_23850A1C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23850A1C8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  (*(v5 + 104))(v2, *MEMORY[0x277CC7860], v4);
  LOBYTE(v3) = sub_238759310();
  v6 = *(v5 + 8);
  v6(v2, v4);
  if (v3)
  {
    v7 = v0[19];
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];
    v11 = v0[5];
    swift_storeEnumTagMultiPayload();
    sub_23850F640(v9);
    sub_238515494(v9, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v12 = v7;
    v13 = v8;
  }

  else
  {
    v14 = v0[13];
    v15 = v0[5];
    v17 = *(v15 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
    v16 = *(v15 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
    v18 = type metadata accessor for BankConnectAuthorizationError();
    (*(*(v18 - 8) + 56))(v14, 1, 2, v18);

    v17(v14);

    sub_238515494(v14, type metadata accessor for BankConnectAuthorizationFlowResult);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v0[19];
    v21 = v0[16];
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    v12 = v20;
    v13 = v21;
  }

  v6(v12, v13);
  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  v28 = v0[8];
  v27 = v0[9];
  v30 = v0[6];
  v29 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_23850A418()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[5];

  v5 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v4 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
  v6 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v6 - 8) + 56))(v2, 1, 2, v6);

  v5(v2);

  sub_238515494(v2, type metadata accessor for BankConnectAuthorizationFlowResult);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v0[25];
  if (Strong)
  {
    [Strong didCompleteFlowItem];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[15];
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[6];
  v16 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_23850A5BC(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v83 = &v73 - v9;
  MEMORY[0x28223BE20](v8);
  v76 = &v73 - v10;
  v11 = sub_23875C1E0();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v73 - v16;
  v17 = type metadata accessor for WebAuthorizationStep(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v77 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = &v73 - v24;
  v25 = type metadata accessor for AppAuthorizationStep(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v73 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v80 = &v73 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B0, &qword_238765A48);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v73 - v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v42 = *(v84 + 16);

  if (v42)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v43 = *(v84 + 16);
    if (v43)
    {
      sub_2385165C8(v84 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * (v43 - 1), v41, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v44 = v41;

      v45 = 0;
      goto LABEL_7;
    }

    v45 = 1;
  }

  else
  {
    sub_2385165C8(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v41, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    v45 = 0;
  }

  v44 = v41;
LABEL_7:
  (*(v29 + 56))(v44, v45, 1, v28);
  sub_23843981C(v44, v39, &qword_27DF0D3B0, &qword_238765A48);
  if ((*(v29 + 48))(v39, 1, v28) == 1)
  {
    sub_238439884(v39, &qword_27DF0D3B0, &qword_238765A48);
    sub_23875C120();
    v46 = sub_23875C1B0();
    v47 = sub_23875EFE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2383F8000, v46, v47, "    Failed to handle the app authorization redirect. Undetermined current destination.", v48, 2u);
      MEMORY[0x23EE64DF0](v48, -1, -1);
    }

    (*(v81 + 8))(v15, v82);
    v49 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
    v50 = sub_238757B60();
    (*(*(v50 - 8) + 16))(v7, v2 + v49, v50);
    v51 = type metadata accessor for BankConnectAuthorizationError();
    swift_storeEnumTagMultiPayload();
    (*(*(v51 - 8) + 56))(v7, 0, 1, v51);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v7, v83, &unk_27DF0B540, &qword_238765900);

    sub_23875C2E0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteFlowItem];
      swift_unknownObjectRelease();
    }

    sub_238439884(v7, &unk_27DF0B540, &qword_238765900);
    return sub_238439884(v44, &qword_27DF0D3B0, &qword_238765A48);
  }

  v53 = v80;
  sub_23851512C(v39, v80, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_2385165C8(v53, v33, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v55 = v75;
    sub_23851512C(v33, v75, type metadata accessor for WebAuthorizationStep);
    v60 = sub_23875B940();
    v61 = *(v60 - 8);
    v62 = v78;
    (*(v61 + 16))(v78, v79, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v62, v77, &qword_27DF0D040, &qword_2387676A0);

    sub_23875C2E0();
    sub_238439884(v62, &qword_27DF0D040, &qword_2387676A0);
    sub_23850D274(v55);
    v59 = type metadata accessor for WebAuthorizationStep;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v55 = v73;
    sub_23851512C(v33, v73, type metadata accessor for AppAuthorizationStep);
    v56 = sub_23875B940();
    v57 = *(v56 - 8);
    v58 = v78;
    (*(v57 + 16))(v78, v79, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v58, v77, &qword_27DF0D040, &qword_2387676A0);

    sub_23875C2E0();
    sub_238439884(v58, &qword_27DF0D040, &qword_2387676A0);
    sub_23850EA94(v55);
    v59 = type metadata accessor for AppAuthorizationStep;
LABEL_17:
    sub_238515494(v55, v59);
    sub_238515494(v53, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    return sub_238439884(v44, &qword_27DF0D3B0, &qword_238765A48);
  }

  v64 = v74;
  sub_23875C120();
  v65 = sub_23875C1B0();
  v66 = sub_23875EFE0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_2383F8000, v65, v66, "    Failed to handle the app authorization redirect. Unexpected authorization flow step.", v67, 2u);
    MEMORY[0x23EE64DF0](v67, -1, -1);
  }

  (*(v81 + 8))(v64, v82);
  v68 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  v69 = sub_238757B60();
  v70 = v76;
  (*(*(v69 - 8) + 16))(v76, v2 + v68, v69);
  v71 = type metadata accessor for BankConnectAuthorizationError();
  swift_storeEnumTagMultiPayload();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v70, v83, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  v72 = swift_unknownObjectWeakLoadStrong();
  if (v72)
  {
    [v72 didCompleteFlowItem];
    swift_unknownObjectRelease();
  }

  sub_238439884(v70, &unk_27DF0B540, &qword_238765900);
  sub_238515494(v53, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_238439884(v44, &qword_27DF0D3B0, &qword_238765A48);
  return sub_238515494(v33, type metadata accessor for BankConnectAuthorizationNavigationDestination);
}

uint64_t sub_23850B1C8(uint64_t *a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v4 = v3;
  v106 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v7 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v9 = &v94 - v8;
  v103 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875C1E0();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v102 = &v94 - v24;
  v25 = sub_23875B940();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  if (*(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization))
  {
    sub_23875C120();
    v33 = sub_23875C1B0();
    v34 = sub_23875EFE0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2383F8000, v33, v34, "Web authorization step has started already. Skipping.", v35, 2u);
      MEMORY[0x23EE64DF0](v35, -1, -1);
    }

    return (*(v107 + 8))(v17, v108);
  }

  v100 = a2;
  v101 = v23;
  v105 = &v94 - v32;
  v98 = v9;
  v99 = a3;
  v96 = v4;
  *(v4 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization) = 1;
  if (qword_27DF08D00 != -1)
  {
    v93 = v31;
    swift_once();
    v31 = v93;
  }

  v37 = v31;
  v38 = __swift_project_value_buffer(v31, qword_27DF2F708);
  v97 = v26;
  v39 = *(v26 + 16);
  v40 = v105;
  v39(v105, v38, v37);
  sub_23875B8D0();
  if (v41)
  {
    v95 = v37;
    v42 = objc_opt_self();
    v43 = sub_23875EA50();

    sub_23875B8E0();
    v44 = sub_23875EA50();

    v45 = [v42 callbackWithHTTPSHost:v43 path:v44];

    v46 = v102;
    sub_23875C120();
    sub_2385165C8(v106, v12, type metadata accessor for BankConnectWebAuthorizationFlow);
    v47 = v45;
    v48 = sub_23875C1B0();
    v49 = sub_23875F000();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v94 = v51;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v50 = 138412546;
      *(v50 + 4) = v47;
      *v51 = v47;
      *(v50 + 12) = 2080;
      v53 = v103;
      v54 = *(v103 + 20);
      sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260]);
      v55 = v47;
      v56 = sub_23875F600();
      v58 = v57;
      sub_238515494(v12, type metadata accessor for BankConnectWebAuthorizationFlow);
      v59 = sub_2384615AC(v56, v58, aBlock);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_2383F8000, v48, v49, "Starting ASWebAuthenticationSession with callback %@, url %s", v50, 0x16u);
      v60 = v94;
      sub_238439884(v94, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      MEMORY[0x23EE64DF0](v50, -1, -1);

      v61 = *(v107 + 8);
      v61(v46, v108);
      v63 = v99;
      v62 = v100;
      v64 = v98;
    }

    else
    {

      sub_238515494(v12, type metadata accessor for BankConnectWebAuthorizationFlow);
      v61 = *(v107 + 8);
      v61(v46, v108);
      v63 = v99;
      v62 = v100;
      v64 = v98;
      v53 = v103;
    }

    v74 = *(v53 + 20);
    v75 = swift_allocObject();
    v76 = v96;
    v75[2] = v96;
    v75[3] = v62;
    v75[4] = v63;
    v77 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
    v78 = v47;

    v79 = sub_23875B860();
    aBlock[4] = sub_2385174C0;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238515194;
    aBlock[3] = &block_descriptor_6;
    v80 = _Block_copy(aBlock);
    v81 = [v77 initWithURL:v79 callback:v78 completionHandler:v80];
    _Block_release(v80);

    v82 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession;
    v83 = *(v76 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession);
    *(v76 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) = v81;
    v84 = v81;

    [v84 setPrefersEphemeralWebBrowserSession_];
    v85 = *(v76 + v82);
    if (v85)
    {
      [v85 setPresentationContextProvider_];
      v86 = *(v76 + v82);
      if (v86)
      {
        v87 = v86;
        if ([v87 canStart])
        {
          [v87 start];

          return (*(v97 + 8))(v105, v95);
        }
      }
    }

    sub_23875C120();
    v90 = sub_23875C1B0();
    v91 = sub_23875EFE0();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2383F8000, v90, v91, "Can't start ASWebAuthenticationSession", v92, 2u);
      MEMORY[0x23EE64DF0](v92, -1, -1);
    }

    v61(v101, v108);
    *v64 = 1;
    swift_storeEnumTagMultiPayload();
    v62(v64);

    sub_238439884(v64, &qword_27DF0D378, &qword_23876CF98);
    return (*(v97 + 8))(v105, v95);
  }

  sub_23875C120();
  v39(v30, v40, v37);
  v65 = sub_23875C1B0();
  v66 = sub_23875EFE0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    aBlock[0] = v106;
    *v67 = 136315138;
    sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260]);
    v68 = sub_23875F600();
    v70 = v69;
    v71 = *(v97 + 8);
    v71(v30, v37);
    v72 = sub_2384615AC(v68, v70, aBlock);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_2383F8000, v65, v66, "Web authorization step failed. The redirectURL's host is invalid %s", v67, 0xCu);
    v73 = v106;
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x23EE64DF0](v73, -1, -1);
    MEMORY[0x23EE64DF0](v67, -1, -1);
  }

  else
  {

    v71 = *(v97 + 8);
    v71(v30, v37);
  }

  (*(v107 + 8))(v20, v108);
  v88 = v100;
  v89 = v98;
  *v98 = 0;
  swift_storeEnumTagMultiPayload();
  v88(v89);
  sub_238439884(v89, &qword_27DF0D378, &qword_23876CF98);
  return (v71)(v105, v37);
}

uint64_t sub_23850BC68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v65 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v52[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v52[-v16];
  v18 = sub_23875C1E0();
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_23875ED50();
  v23 = sub_23875ED40();
  v59 = v22;
  v60 = v23;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C120();
  sub_23843981C(a1, v17, &qword_27DF0D040, &qword_2387676A0);
  v24 = a2;
  v25 = sub_23875C1B0();
  v26 = sub_23875F000();

  if (os_log_type_enabled(v25, v26))
  {
    v53 = v26;
    v27 = 0x3E6C696E3CLL;
    v28 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67[0] = v54;
    *v28 = 136315394;
    v55 = a1;
    v56 = a2;
    if (a2)
    {
      swift_getErrorValue();
      v29 = sub_23875F690();
      v31 = v30;
    }

    else
    {
      v31 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    v32 = sub_2384615AC(v29, v31, v67);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    sub_23843981C(v17, v15, &qword_27DF0D040, &qword_2387676A0);
    v33 = sub_23875B940();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v15, 1, v33) == 1)
    {
      sub_238439884(v15, &qword_27DF0D040, &qword_2387676A0);
      v35 = 0xE500000000000000;
    }

    else
    {
      v27 = sub_23875B820();
      v35 = v36;
      (*(v34 + 8))(v15, v33);
    }

    a1 = v55;
    sub_238439884(v17, &qword_27DF0D040, &qword_2387676A0);
    v37 = sub_2384615AC(v27, v35, v67);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_2383F8000, v25, v53, "Received ASWebAuthenticationSession callback with error %s, url %s", v28, 0x16u);
    v38 = v54;
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v38, -1, -1);
    MEMORY[0x23EE64DF0](v28, -1, -1);

    (*(v57 + 8))(v21, v58);
    a2 = v56;
  }

  else
  {

    sub_238439884(v17, &qword_27DF0D040, &qword_2387676A0);
    (*(v57 + 8))(v21, v58);
  }

  v39 = sub_23875ED80();
  (*(*(v39 - 8) + 56))(v66, 1, 1, v39);
  v40 = v62;
  sub_23843981C(a1, v62, &qword_27DF0D040, &qword_2387676A0);
  v41 = a2;
  v42 = v64;

  v43 = v65;

  v44 = sub_23875ED40();
  v45 = a2;
  v46 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v44;
  *(v49 + 24) = MEMORY[0x277D85700];
  sub_2384396E4(v40, v49 + v46, &qword_27DF0D040, &qword_2387676A0);
  v50 = (v49 + v47);
  *v50 = v63;
  v50[1] = v42;
  *(v49 + v48) = v45;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  sub_2386C3BA4(0, 0, v66, &unk_23876D060, v49);
}

uint64_t sub_23850C294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_23875C1E0();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v7[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v14 = sub_23875B940();
  v7[16] = v14;
  v15 = *(v14 - 8);
  v7[17] = v15;
  v16 = *(v15 + 64) + 15;
  v7[18] = swift_task_alloc();
  sub_23875ED50();
  v7[19] = sub_23875ED40();
  v18 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23850C45C, v18, v17);
}

uint64_t sub_23850C45C()
{
  v52 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[6];

  sub_23843981C(v5, v4, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[9];
    sub_238439884(v0[15], &qword_27DF0D040, &qword_2387676A0);
    if (v6)
    {
      v7 = v0[12];
      v8 = v0[9];
      v9 = v8;
      sub_23875C120();
      v10 = v8;
      v11 = sub_23875C1B0();
      v12 = sub_23875EFE0();

      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[11];
      v14 = v0[12];
      v16 = v0[10];
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v51 = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v50 = v14;
        v20 = v0[2];
        v19 = v0[3];
        v21 = v0[4];
        v22 = sub_23875F690();
        v24 = sub_2384615AC(v22, v23, &v51);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_2383F8000, v11, v12, "Web authorization step failed with error %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x23EE64DF0](v18, -1, -1);
        MEMORY[0x23EE64DF0](v17, -1, -1);

        (*(v15 + 8))(v50, v16);
      }

      else
      {

        (*(v15 + 8))(v14, v16);
      }

      v37 = sub_23875B720();
      v38 = [v37 code];

      v39 = v0[13];
      v40 = v0[14];
      v42 = v0[7];
      v41 = v0[8];
      if (v38 == 1)
      {
        v43 = v0[14];
      }

      else
      {
        *v40 = 1;
      }

      swift_storeEnumTagMultiPayload();
      v42(v40);

      v36 = v40;
    }

    else
    {
      v32 = v0[13];
      v33 = v0[14];
      v35 = v0[7];
      v34 = v0[8];
      swift_storeEnumTagMultiPayload();
      v35(v33);
      v36 = v33;
    }

    sub_238439884(v36, &qword_27DF0D378, &qword_23876CF98);
  }

  else
  {
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[16];
    v29 = v0[13];
    v28 = v0[14];
    v31 = v0[7];
    v30 = v0[8];
    (*(v26 + 32))(v25, v0[15], v27);
    (*(v26 + 16))(v28, v25, v27);
    swift_storeEnumTagMultiPayload();
    v31(v28);
    sub_238439884(v28, &qword_27DF0D378, &qword_23876CF98);
    (*(v26 + 8))(v25, v27);
  }

  v44 = v0[18];
  v45 = v0[14];
  v46 = v0[15];
  v47 = v0[12];

  v48 = v0[1];

  return v48();
}

uint64_t sub_23850C7F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_23875C1E0();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = sub_23875A8F0();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v3[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_238758BB0();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_23875ED50();
  v3[20] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v3[21] = v18;
  v3[22] = v17;

  return MEMORY[0x2822009F8](sub_23850CA28, v18, v17);
}

uint64_t sub_23850CA28()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[3];
  v7 = v0[2];
  v8 = *(v0[4] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  v9 = type metadata accessor for WebAuthorizationStep(0);
  v0[23] = v9;
  sub_2385165C8(v6 + *(v9 + 24), v1, type metadata accessor for BankConnectWebAuthorizationFlow);
  swift_storeEnumTagMultiPayload();
  v10 = sub_23875B940();
  (*(*(v10 - 8) + 16))(v3, v7, v10);
  (*(v4 + 104))(v3, *MEMORY[0x277CC8030], v5);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_23850CB9C;
  v12 = v0[19];
  v13 = v0[15];
  v14 = v0[13];

  return sub_238729C80(v12, v13, v14);
}

uint64_t sub_23850CB9C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 200) = v0;

  (*(v6 + 8))(v5, v7);
  sub_238515494(v4, type metadata accessor for BankConnectAuthorizationFlow);
  v9 = *(v2 + 176);
  v10 = *(v2 + 168);
  if (v0)
  {
    v11 = sub_23850D044;
  }

  else
  {
    v11 = sub_23850CD6C;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23850CD6C()
{
  v46 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[10];

  sub_23875C120();
  v44 = *(v4 + 16);
  v44(v3, v2, v5);
  v7 = sub_23875C1B0();
  v8 = sub_23875F000();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  if (v9)
  {
    v43 = v0[7];
    v16 = swift_slowAlloc();
    v40 = v12;
    v17 = swift_slowAlloc();
    v45 = v17;
    *v16 = 136315138;
    v39 = sub_238758BA0();
    v41 = v8;
    v19 = v18;
    v42 = v13;
    v20 = *(v11 + 8);
    v20(v10, v40);
    v21 = v20;
    v22 = sub_2384615AC(v39, v19, &v45);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2383F8000, v7, v41, "Web authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EE64DF0](v17, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v14 + 8))(v42, v43);
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v10, v12);
    v21 = v23;
    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[23];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[6];
  v29 = v0[3];
  v28 = v0[4];
  v44(v27, v25, v26);
  swift_storeEnumTagMultiPayload();
  sub_238508094(v29, *(v29 + *(v24 + 20)), v27);
  sub_238439884(v27, &qword_27DF0D378, &qword_23876CF98);
  v21(v25, v26);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[15];
  v33 = v0[13];
  v35 = v0[9];
  v34 = v0[10];
  v36 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_23850D044()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[9];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Web authorization step failed to complete authorization flow with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[25];
  v13 = v0[23];
  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[6];
  v16 = v0[7];
  v18 = v5;
  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[3];

  (*(v15 + 8))(v14, v16);
  *v17 = 1;
  swift_storeEnumTagMultiPayload();
  sub_238508094(v21, *(v21 + *(v13 + 20)), v17);

  sub_238439884(v17, &qword_27DF0D378, &qword_23876CF98);
  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[15];
  v25 = v0[13];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_23850D274(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_23875C1E0();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebAuthorizationStep(0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = v8;
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_23875B940();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v50 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v2;
  sub_23875C2D0();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_238439884(v15, &qword_27DF0D040, &qword_2387676A0);
  }

  v27 = *(v17 + 32);
  v28 = v24;
  v27(v24, v15, v16);
  v29 = v25;
  [*(v25 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) cancel];
  if (*(v25 + 72))
  {
    v30 = v56;
    sub_23875C120();
    v31 = v50;
    (*(v17 + 16))(v50, v28, v16);
    v32 = sub_23875C1B0();
    v33 = sub_23875EFE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      *v34 = 136315138;
      sub_2385148B0(&qword_27DF0D3A8, MEMORY[0x277CC9260]);
      v36 = sub_23875F600();
      v58 = v28;
      v38 = v37;
      v39 = *(v17 + 8);
      v39(v31, v16);
      v40 = sub_2384615AC(v36, v38, &v59);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2383F8000, v32, v33, "Web authorization step has already handled the redirect URL. Ignoring additional redirect URL: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23EE64DF0](v35, -1, -1);
      MEMORY[0x23EE64DF0](v34, -1, -1);

      (*(v54 + 8))(v56, v55);
      return (v39)(v58, v16);
    }

    else
    {

      v49 = *(v17 + 8);
      v49(v31, v16);
      (*(v54 + 8))(v30, v55);
      return (v49)(v28, v16);
    }
  }

  else
  {
    *(v25 + 72) = 1;
    v41 = sub_23875ED80();
    (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
    (*(v17 + 16))(v22, v28, v16);
    sub_2385165C8(v53, v58, type metadata accessor for WebAuthorizationStep);
    sub_23875ED50();

    v55 = sub_23875ED40();
    v56 = v27;
    v42 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v43 = (v18 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v51 + 80) + v43 + 8) & ~*(v51 + 80);
    v45 = v17;
    v46 = v28;
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D85700];
    *(v47 + 16) = v55;
    *(v47 + 24) = v48;
    (v56)(v47 + v42, v22, v16);
    *(v47 + v43) = v29;
    sub_23851512C(v58, v47 + v44, type metadata accessor for WebAuthorizationStep);
    sub_2386C3BA4(0, 0, v57, &unk_23876D050, v47);

    return (*(v45 + 8))(v46, v16);
  }
}

uint64_t sub_23850D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D378, &qword_23876CF98);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = sub_23875C1E0();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v12 = sub_23875B940();
  v6[12] = v12;
  v13 = *(v12 - 8);
  v6[13] = v13;
  v14 = *(v13 + 64) + 15;
  v6[14] = swift_task_alloc();
  sub_23875ED50();
  v6[15] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v6[16] = v16;
  v6[17] = v15;

  return MEMORY[0x2822009F8](sub_23850DAF0, v16, v15);
}

uint64_t sub_23850DAF0()
{
  if (qword_27DF08D00 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = __swift_project_value_buffer(v3, qword_27DF2F708);
  (*(v2 + 16))(v1, v5, v3);
  v6 = type metadata accessor for BankConnectWebAuthRedirectURLMatcher();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v1, v3);
  v10 = sub_2384F2370(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v9 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v3);
  v11 = *(*v9 + 48);
  v12 = *(*v9 + 52);
  swift_deallocClassInstance();
  if (v10 <= 1u)
  {
    if (v10)
    {
      v14 = v0 + 10;
      v22 = v0[10];
      v23 = v0[15];

      sub_23875C120();
      v16 = sub_23875C1B0();
      v17 = sub_23875EFE0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Web authorization step failed with invalid scheme in authorization URL.";
        goto LABEL_12;
      }
    }

    else
    {
      v14 = v0 + 11;
      v13 = v0[11];
      v15 = v0[15];

      sub_23875C120();
      v16 = sub_23875C1B0();
      v17 = sub_23875EFE0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Web authorization step failed with invalid host in authorization URL.";
LABEL_12:
        _os_log_impl(&dword_2383F8000, v16, v17, v19, v18, 2u);
        MEMORY[0x23EE64DF0](v18, -1, -1);
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (v10 == 2)
  {
    v14 = v0 + 9;
    v20 = v0[9];
    v21 = v0[15];

    sub_23875C120();
    v16 = sub_23875C1B0();
    v17 = sub_23875EFE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Web authorization step failed with invalid path in authorization URL.";
      goto LABEL_12;
    }

LABEL_13:
    v24 = *v14;
    v25 = v0[7];
    v26 = v0[8];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[3];
    v30 = v0[4];

    (*(v26 + 8))(v24, v25);
    *v27 = 0;
    swift_storeEnumTagMultiPayload();
    v31 = type metadata accessor for WebAuthorizationStep(0);
    sub_238508094(v30, *(v30 + *(v31 + 20)), v27);
    sub_238439884(v27, &qword_27DF0D378, &qword_23876CF98);
    v32 = v0[14];
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[9];
    v36 = v0[6];

    v37 = v0[1];

    return v37();
  }

  v39 = swift_task_alloc();
  v0[18] = v39;
  *v39 = v0;
  v39[1] = sub_23850DEEC;
  v41 = v0[3];
  v40 = v0[4];
  v42 = v0[2];

  return sub_23850C7F4(v42, v40);
}

uint64_t sub_23850DEEC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_238517C44, v4, v3);
}

uint64_t sub_23850E00C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_23875C1E0();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = sub_23875A8F0();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v3[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_238758BB0();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_23875ED50();
  v3[20] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v3[21] = v18;
  v3[22] = v17;

  return MEMORY[0x2822009F8](sub_23850E240, v18, v17);
}

uint64_t sub_23850E240()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[3];
  v7 = v0[2];
  v8 = *(v0[4] + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  v9 = type metadata accessor for AppAuthorizationStep(0);
  v0[23] = v9;
  sub_2385165C8(v6 + *(v9 + 24), v1, type metadata accessor for BankConnectAppAuthorizationFlow);
  swift_storeEnumTagMultiPayload();
  v10 = sub_23875B940();
  (*(*(v10 - 8) + 16))(v3, v7, v10);
  (*(v4 + 104))(v3, *MEMORY[0x277CC8030], v5);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_23850E3B4;
  v12 = v0[19];
  v13 = v0[15];
  v14 = v0[13];

  return sub_238729C80(v12, v13, v14);
}

uint64_t sub_23850E3B4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 200) = v0;

  (*(v6 + 8))(v5, v7);
  sub_238515494(v4, type metadata accessor for BankConnectAuthorizationFlow);
  v9 = *(v2 + 176);
  v10 = *(v2 + 168);
  if (v0)
  {
    v11 = sub_23850E85C;
  }

  else
  {
    v11 = sub_23850E584;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23850E584()
{
  v46 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[10];

  sub_23875C120();
  v44 = *(v4 + 16);
  v44(v3, v2, v5);
  v7 = sub_23875C1B0();
  v8 = sub_23875F000();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  if (v9)
  {
    v43 = v0[7];
    v16 = swift_slowAlloc();
    v40 = v12;
    v17 = swift_slowAlloc();
    v45 = v17;
    *v16 = 136315138;
    v39 = sub_238758BA0();
    v41 = v8;
    v19 = v18;
    v42 = v13;
    v20 = *(v11 + 8);
    v20(v10, v40);
    v21 = v20;
    v22 = sub_2384615AC(v39, v19, &v45);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2383F8000, v7, v41, "App authorization step successfully completed authorization flow. Consent with consentID: %s saved to the store.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EE64DF0](v17, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v14 + 8))(v42, v43);
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v10, v12);
    v21 = v23;
    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[23];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[6];
  v29 = v0[3];
  v28 = v0[4];
  v44(v27, v25, v26);
  swift_storeEnumTagMultiPayload();
  sub_238507554(v29, *(v29 + *(v24 + 20)), v27);
  sub_238439884(v27, &unk_27DF0D360, &unk_23876BB40);
  v21(v25, v26);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[15];
  v33 = v0[13];
  v35 = v0[9];
  v34 = v0[10];
  v36 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_23850E85C()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[9];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "App authorization step failed to complete authorization flow with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[25];
  v13 = v0[23];
  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[6];
  v16 = v0[7];
  v18 = v5;
  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[3];

  (*(v15 + 8))(v14, v16);
  *v17 = v12;
  swift_storeEnumTagMultiPayload();
  v22 = *(v21 + *(v13 + 20));
  v23 = v12;
  sub_238507554(v21, v22, v17);

  sub_238439884(v17, &unk_27DF0D360, &unk_23876BB40);
  v25 = v0[18];
  v24 = v0[19];
  v26 = v0[15];
  v27 = v0[13];
  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[6];

  v31 = v0[1];

  return v31();
}

uint64_t sub_23850EA94(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for AppAuthorizationStep(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v38 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  sub_23875C2D0();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_238439884(v11, &qword_27DF0D040, &qword_2387676A0);
  }

  v31 = v3;
  v32 = *(v13 + 32);
  v33 = v17;
  v32(v17, v11, v12);
  v19 = sub_23875ED80();
  v20 = *(*(v19 - 8) + 56);
  v30 = v7;
  v20(v7, 1, 1, v19);
  (*(v13 + 16))(v38, v17, v12);
  v21 = v35;
  sub_2385165C8(v36, v35, type metadata accessor for AppAuthorizationStep);
  sub_23875ED50();
  v22 = v34;

  v23 = sub_23875ED40();
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v37 + 80) + v25 + 8) & ~*(v37 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v23;
  *(v27 + 24) = v28;
  v32((v27 + v24), v38, v12);
  *(v27 + v25) = v22;
  sub_23851512C(v21, v27 + v26, type metadata accessor for AppAuthorizationStep);
  sub_2386C3BA4(0, 0, v30, &unk_23876D038, v27);

  return (*(v13 + 8))(v33, v12);
}

uint64_t sub_23850EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D360, &unk_23876BB40);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = sub_23875C1E0();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v12 = sub_23875B940();
  v6[12] = v12;
  v13 = *(v12 - 8);
  v6[13] = v13;
  v14 = *(v13 + 64) + 15;
  v6[14] = swift_task_alloc();
  sub_23875ED50();
  v6[15] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v6[16] = v16;
  v6[17] = v15;

  return MEMORY[0x2822009F8](sub_23850F06C, v16, v15);
}

uint64_t sub_23850F06C()
{
  if (qword_27DF08D00 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = __swift_project_value_buffer(v3, qword_27DF2F708);
  (*(v2 + 16))(v1, v5, v3);
  v6 = type metadata accessor for BankConnectWebAuthRedirectURLMatcher();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v1, v3);
  v10 = sub_2384F2370(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v9 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectWebAuthRedirectURLMatcher_redirectUrl, v3);
  v11 = *(*v9 + 48);
  v12 = *(*v9 + 52);
  swift_deallocClassInstance();
  if (v10 <= 1u)
  {
    if (v10)
    {
      v14 = v0 + 10;
      v22 = v0[10];
      v23 = v0[15];

      sub_23875C120();
      v16 = sub_23875C1B0();
      v17 = sub_23875EFE0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "App authorization step failed with invalid scheme in authorization URL.";
        goto LABEL_12;
      }
    }

    else
    {
      v14 = v0 + 11;
      v13 = v0[11];
      v15 = v0[15];

      sub_23875C120();
      v16 = sub_23875C1B0();
      v17 = sub_23875EFE0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "App authorization step failed with invalid host in authorization URL.";
LABEL_12:
        _os_log_impl(&dword_2383F8000, v16, v17, v19, v18, 2u);
        MEMORY[0x23EE64DF0](v18, -1, -1);
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (v10 == 2)
  {
    v14 = v0 + 9;
    v20 = v0[9];
    v21 = v0[15];

    sub_23875C120();
    v16 = sub_23875C1B0();
    v17 = sub_23875EFE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "App authorization step failed with invalid path in authorization URL.";
      goto LABEL_12;
    }

LABEL_13:
    v24 = *v14;
    v25 = v0[7];
    v26 = v0[8];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[3];
    v30 = v0[4];

    (*(v26 + 8))(v24, v25);
    sub_238517300();
    *v27 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v31 = type metadata accessor for AppAuthorizationStep(0);
    sub_238507554(v30, *(v30 + *(v31 + 20)), v27);
    sub_238439884(v27, &unk_27DF0D360, &unk_23876BB40);
    v32 = v0[14];
    v33 = v0[10];
    v34 = v0[11];
    v35 = v0[9];
    v36 = v0[6];

    v37 = v0[1];

    return v37();
  }

  v39 = swift_task_alloc();
  v0[18] = v39;
  *v39 = v0;
  v39[1] = sub_23850F484;
  v41 = v0[3];
  v40 = v0[4];
  v42 = v0[2];

  return sub_23850E00C(v42, v40);
}

uint64_t sub_23850F484()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23850F5A4, v4, v3);
}

uint64_t sub_23850F5A4()
{
  v1 = v0[15];

  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}