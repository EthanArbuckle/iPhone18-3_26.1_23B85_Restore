void *sub_23850F640(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a1, v6, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v7 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2384980D0(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_2384980D0(v8 > 1, v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  sub_23851512C(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v7;

  sub_23875C2E0();
  sub_2385050F8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23850F854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_238758BB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  if ((*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection) & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
    swift_beginAccess();
    sub_23843981C(v0 + v16, v8, &qword_27DF0D358, &unk_23876CF80);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_238439884(v8, &qword_27DF0D358, &unk_23876CF80);
    }

    else
    {
      v25 = *(v10 + 32);
      v25(v15, v8, v9);
      v17 = sub_23875ED80();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      (*(v10 + 16))(v12, v15, v9);
      sub_23875ED50();

      v24 = v0;
      v18 = sub_23875ED40();
      v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      *(v21 + 16) = v18;
      *(v21 + 24) = v22;
      v25((v21 + v19), v12, v9);
      *(v21 + v20) = v24;
      sub_2386C3BA4(0, 0, v4, &unk_23876CFE0, v21);

      (*(v10 + 8))(v15, v9);
    }
  }
}

uint64_t sub_23850FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v5[8] = v10;
  v5[9] = v9;

  return MEMORY[0x2822009F8](sub_23850FC94, v10, v9);
}

uint64_t sub_23850FC94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_238758BA0();
  v5 = v4;
  v0[10] = v4;
  v6 = *(v2 + 64);
  v7 = *(MEMORY[0x277CC72E8] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_23850FD4C;

  return MEMORY[0x282117DD8](v3, v5);
}

uint64_t sub_23850FD4C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_23850FED0;
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_23850FE68;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23850FE68()
{
  v1 = v0[7];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23850FED0()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  sub_23875C120();
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to revoke connection authorization", v11, 2u);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

void *sub_238510000()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent, &qword_27DF0D358, &unk_23876CF80);
  sub_238515494(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v3 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);

  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);

  sub_238515494(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__navigationPath;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B550, &qword_238768200);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__redirectURL;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3D0, &qword_2387681F8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  sub_238472320(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_provisioningFlowDelegate);
  return v0;
}

uint64_t sub_2385101D8()
{
  sub_238510000();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_238510258()
{
  sub_2385104F4();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for BankConnectAuthorizationFlowConfig(319);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(319);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2385110CC(319, &qword_27DF0D028, &unk_27DF0D030, &qword_238768208, MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_2385110CC(319, &qword_27DF12C80, &qword_27DF0D040, &qword_2387676A0, MEMORY[0x277CBCED0]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_2385110CC(319, &qword_27DF0D048, &unk_27DF0B540, &qword_238765900, MEMORY[0x277CBCED0]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2385104F4()
{
  if (!qword_27DF0D020)
  {
    sub_238758BB0();
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0D020);
    }
  }
}

uint64_t sub_23851056C()
{
  result = type metadata accessor for TermsAndConditionsStep(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrivacyOnboardingStep(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ReconnectAccountsStep(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AppAuthorizationStep(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for WebAuthorizationStep(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ExtensionAuthorizationStep(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for AccountConnectionStep(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23851074C()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_2385107E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385107E0()
{
  if (!qword_27DF0B430)
  {
    sub_238449184(255, &qword_27DF096A8, 0x277D38080);
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B430);
    }
  }
}

void sub_2385108C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_238757B60();
  if (v5 <= 0x3F)
  {
    sub_2385107E0();
    if (v6 <= 0x3F)
    {
      a4(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = a4(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = sub_238757B60();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_238510C70()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_2385107E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238757B60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_238510EA4()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_2385107E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238510F70()
{
  sub_238511038();
  if (v0 <= 0x3F)
  {
    sub_2385110CC(319, &qword_27DF0D130, &qword_27DF0D040, &qword_2387676A0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AnalyticsSession();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238511038()
{
  if (!qword_27DF0D120)
  {
    type metadata accessor for BankConnectAuthorizationFlowViewModel(255);
    sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0D120);
    }
  }
}

void sub_2385110CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23851114C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23851118C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v33[-v7];
  v8 = type metadata accessor for TermsAndConditionsStep(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v16, a1, v12);
  v17 = *(a1 + *(v9 + 28));
  v34 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  sub_2385165C8(a1, &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TermsAndConditionsStep);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_23851512C(&v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for TermsAndConditionsStep);
  v20 = sub_238758CC0();
  v21 = v17;
  v22 = v17;

  v23 = sub_238758CB0();
  v24 = type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v42 = MEMORY[0x277CC7458];
  v43 = MEMORY[0x277CC7460];
  v41 = v20;
  *&v40 = v23;
  v28 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v39 = 0;
  v29 = v35;
  sub_23875C290();
  (*(v36 + 32))(v27 + v28, v29, v37);
  v30 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  v31 = sub_23875A6C0();
  (*(*(v31 - 8) + 56))(v27 + v30, 1, 1, v31);
  (*(v13 + 32))(v27 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution, v16, v12);
  *(v27 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass) = v21;
  *(v27 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType) = v34;
  sub_2385169F0(&v40, (v27 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  *(v27 + 16) = sub_238516974;
  *(v27 + 24) = v19;
  return BankConnectTermsAndConditionsView.init(viewModel:)(v27, v38);
}

uint64_t sub_238511554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for PrivacyOnboardingStep(0);
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A590, &qword_238765AB8);
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = &v49 - v19;
  (*(v9 + 16))(v12, a1, v8);
  v56 = v5;
  v20 = *(a1 + *(v5 + 20));
  if (v20)
  {
    v21 = [v20 primaryAccountIdentifier];
    v22 = sub_23875EA80();
    v52 = v23;
    v53 = v22;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v24 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  v25 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  v50 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection);
  v51 = v25;
  sub_2385165C8(a1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivacyOnboardingStep);
  v26 = *(v54 + 80);
  v54 = a1;
  v27 = (v26 + 24) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  sub_23851512C(v7, v28 + v27, type metadata accessor for PrivacyOnboardingStep);
  v29 = type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v62 = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v63 = &off_284B31020;
  *&v61 = v24;
  v60 = 0;

  sub_23875C290();
  (*(v9 + 32))(v32 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v12, v8);
  v33 = (v32 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID);
  v34 = v52;
  *v33 = v53;
  v33[1] = v34;
  *(v32 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection) = v50;
  sub_2384347C0(&v61, v32 + 16);
  *(v32 + 72) = v51;
  *(v32 + 56) = sub_238516B00;
  *(v32 + 64) = v28;
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v35 = *(v13 + 20);
  v36 = *MEMORY[0x277CDFA10];
  v37 = sub_23875C880();
  (*(*(v37 - 8) + 104))(v16 + v35, v36, v37);
  v38 = v16 + *(v13 + 24);
  *v38 = sub_2384AD60C;
  *(v38 + 1) = v32;
  v38[16] = 0;
  v39 = a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  LOBYTE(v39) = *(v39 + *(type metadata accessor for BankConnectAuthorizationFlowConfig(0) + 32));
  v40 = sub_2385148B0(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView);
  v41 = v55;
  sub_23875DE40();
  v42 = sub_238515494(v16, type metadata accessor for BankConnectPrivacyOnboardingView);
  v43 = *(v54 + *(v56 + 24));
  MEMORY[0x28223BE20](v42);
  *(&v49 - 32) = v44;
  *(&v49 - 3) = sub_238516B2C;
  *(&v49 - 2) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D200, &qword_238765AC0);
  *&v61 = v13;
  *(&v61 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
  v46 = sub_2384727E4();
  *&v61 = v45;
  *(&v61 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v58;
  sub_23875DEF0();

  return (*(v57 + 8))(v41, v47);
}

uint64_t sub_238511B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = type metadata accessor for ReconnectAccountsStep(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_238757B60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  v14 = *(a1 + *(v6 + 28));
  if (v14)
  {
    v15 = [v14 primaryAccountIdentifier];
    v28[0] = sub_23875EA80();
    v17 = v16;
  }

  else
  {
    v28[0] = 0;
    v17 = 0;
  }

  v18 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  sub_2385165C8(a1, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReconnectAccountsStep);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_23851512C(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ReconnectAccountsStep);
  v21 = type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v32 = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v33 = &off_284B31020;
  *&v30 = v18;
  v29 = 0;

  sub_23875C290();
  (*(v10 + 32))(v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution, v13, v9);
  v25 = (v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID);
  *v25 = v28[0];
  v25[1] = v17;
  sub_2384347C0(&v30, v24 + 16);
  *(v24 + 56) = sub_238516B44;
  *(v24 + 64) = v20;
  *&v30 = sub_2384AD60C;
  *(&v30 + 1) = v24;
  v31 = 0;
  v26 = a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  LOBYTE(v26) = *(v26 + *(type metadata accessor for BankConnectAuthorizationFlowConfig(0) + 32));
  sub_2384729EC();
  sub_23875DE40();
  return sub_2383FC164();
}

uint64_t sub_238511EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebAuthorizationStep(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(MEMORY[0x28223BE20](v4 - 8) + 32);
  sub_2385165C8(a2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebAuthorizationStep);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_23851512C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for WebAuthorizationStep);

  sub_23850B1C8((a2 + v7), sub_238516DD4, v9);
}

uint64_t sub_238512004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionAuthorizationStep(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385165C8(a1 + *(v5 + 32), v11, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v12 = *(a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager);
  sub_2385165C8(a1, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtensionAuthorizationStep);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  sub_23851512C(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ExtensionAuthorizationStep);
  v15 = type metadata accessor for BankConnectExtensionAuthorizationViewModel();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flowManager);
  v19[3] = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v19[4] = &off_284B31020;
  *v19 = v12;
  sub_23851512C(v11, v18 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_flow, type metadata accessor for BankConnectExtensionAuthorizationFlow);
  v20 = (v18 + OBJC_IVAR____TtC12FinanceKitUI42BankConnectExtensionAuthorizationViewModel_completionHandler);
  *v20 = sub_238516E8C;
  v20[1] = v14;
  v23[1] = sub_2384AD60C;
  v23[2] = v18;
  v24 = 0;
  v21 = a2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration;
  LOBYTE(v21) = *(v21 + *(type metadata accessor for BankConnectAuthorizationFlowConfig(0) + 32));
  sub_238472C2C();

  sub_23875DE40();
  return sub_2383FC164();
}

uint64_t sub_2385122A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v48 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v7 = *(*(v63 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v62 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v53 = &v48 - v12;
  v13 = type metadata accessor for AccountConnectionStep(0);
  v14 = (v13 - 8);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_238757B60();
  v55 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v21;
  v61 = type metadata accessor for BankConnectAccountConnectionView(0);
  v22 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v24 = (&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v21, a1, v17);
  v25 = v14[8];
  v26 = (a1 + v14[7]);
  v27 = v26[1];
  v54 = *v26;
  v49 = v27;
  v50 = *(a1 + v25);
  v28 = v50;
  v29 = v51;
  v52 = *(v51 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  v56 = *(a1 + v14[9]);
  sub_2385165C8(a1, &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountConnectionStep);
  v30 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  sub_23851512C(&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for AccountConnectionStep);
  sub_238758CC0();
  v32 = v28;

  v51 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v48 = sub_238758870();

  v33 = type metadata accessor for BankConnectAccountConnectionViewModel(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v68 = 0;
  v69 = 0;
  v70 = 3;
  v38 = v53;
  sub_23875C290();
  (*(v58 + 32))(&v36[v37], v38, v60);
  v39 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v40 = sub_23875A9F0();
  v41 = v59;
  (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
  sub_23843981C(v41, v62, &qword_27DF0D390, &unk_238763350);
  v42 = v64;
  sub_23875C290();
  sub_238439884(v41, &qword_27DF0D390, &unk_238763350);
  (*(v65 + 32))(&v36[v39], v42, v66);
  v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData] = 1;
  (*(v18 + 32))(&v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution], v57, v55);
  v43 = &v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID];
  v44 = v49;
  *v43 = v54;
  *(v43 + 1) = v44;
  *(v36 + 6) = v50;
  v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType] = v52;
  v45 = v48;
  *(v36 + 2) = v51;
  *(v36 + 3) = v45;
  v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts] = v56;
  *&v36[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay] = 3000000000;
  *(v36 + 4) = sub_238516EB8;
  *(v36 + 5) = v31;
  *v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v46 = v24 + *(v61 + 20);
  *v46 = sub_2384AD60C;
  *(v46 + 1) = v36;
  v46[16] = 0;
  sub_2385148B0(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView);
  sub_23875DE20();
  return sub_238515494(v24, type metadata accessor for BankConnectAccountConnectionView);
}

uint64_t sub_23851296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);
  sub_238758CC0();

  v13 = sub_238758CB0();
  v14 = type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v25 = 0;
  sub_23875C290();
  (*(v4 + 32))(v17 + v18, v7, v3);
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
  *(v17 + 32) = sub_23851706C;
  *(v17 + 40) = a1;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v19 = *(v8 + 20);
  v20 = *MEMORY[0x277CDFA10];
  v21 = sub_23875C880();
  (*(*(v21 - 8) + 104))(v11 + v19, v20, v21);
  v22 = v11 + *(v8 + 24);
  *v22 = sub_2384AD60C;
  *(v22 + 1) = v17;
  v22[16] = 0;
  sub_2385148B0(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
  sub_23875DE40();
  return sub_238515494(v11, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
}

uint64_t sub_238512C24(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountConnectionStep(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = *a1;
  v15 = sub_23875ED80();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_2385165C8(a3, v9, type metadata accessor for AccountConnectionStep);
  sub_23875ED50();

  sub_238516F2C(v14);
  v16 = sub_23875ED40();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v16;
  v19[3] = v20;
  v19[4] = a2;
  sub_23851512C(v9, v19 + v17, type metadata accessor for AccountConnectionStep);
  *(v19 + v18) = v14;
  sub_2386C3BA4(0, 0, v13, &unk_23876CFB0, v19);
}

uint64_t sub_238512E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = sub_23875ED50();
  v6[4] = sub_23875ED40();
  v6[2] = a6;
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_238512F08;

  return sub_2385096DC(a5, v6 + 2);
}

uint64_t sub_238512F08()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238513044, v5, v4);
}

uint64_t sub_238513044()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_2385130A4(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v6 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler + 8);
  v8 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v8 - 8) + 56))(v5, 1, 2, v8);

  v7(v5);

  sub_238515494(v5, type metadata accessor for BankConnectAuthorizationFlowResult);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didCompleteFlowItem];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2385131C8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v40 = *(v2 - 8);
  v50 = *(v40 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = (v34 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1A0, &qword_23876CE30);
  v43 = *(v42 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v49 = v34 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1A8, &qword_23876CE38);
  v44 = *(v45 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = v34 - v12;
  v13 = *(v1 + 8);
  v37 = *v1;
  v36 = v13;
  v35 = *(v1 + 16);
  v34[1] = type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
  sub_23875C4A0();
  swift_getKeyPath();
  sub_23875C7C0();

  v60 = v62;
  v61 = v63;
  v53 = v1;
  v38 = v1;
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D030, &qword_238768208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D1B0, &unk_23876CE68);
  sub_23843A3E8(&qword_27DF0D1B8, &unk_27DF0D030, &qword_238768208);
  sub_23843A3E8(&qword_27DF0D1C0, &unk_27DF0D030, &qword_238768208);
  sub_23843A3E8(&qword_27DF0D1C8, &unk_27DF0D030, &qword_238768208);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A560, &qword_238765AA0);
  v15 = type metadata accessor for BankConnectAuthorizationNavigationDestination(255);
  v16 = sub_238472504();
  v17 = sub_2385148B0(&unk_27DF0D2A0, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  v54 = v14;
  v55 = v15;
  v56 = v14;
  v57 = v16;
  v58 = v17;
  v59 = v16;
  swift_getOpaqueTypeConformance2();
  sub_23875C8E0();
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v48;
  sub_23875C2D0();

  v37 = type metadata accessor for BankConnectAuthorizationFlowView;
  v19 = v39;
  sub_2385165C8(v1, v39, type metadata accessor for BankConnectAuthorizationFlowView);
  v20 = *(v40 + 80);
  v36 = (v20 + 16) & ~v20;
  v21 = swift_allocObject();
  v40 = type metadata accessor for BankConnectAuthorizationFlowView;
  sub_23851512C(v19, v21 + ((v20 + 16) & ~v20), type metadata accessor for BankConnectAuthorizationFlowView);
  v22 = type metadata accessor for BankConnectAuthorizationError();
  LOBYTE(v62) = (*(*(v22 - 8) + 48))(v18, 1, v22) != 1;
  sub_23875E330();
  v39 = v34;
  v35 = v56;
  v51 = sub_238516630;
  v52 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2B0, &qword_27DF0D1A0, &qword_23876CE30);
  sub_2385148B0(&qword_27DF0D2B8, type metadata accessor for BankConnectAuthorizationError);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v23 = v42;
  v24 = v41;
  v25 = v48;
  v26 = v49;
  sub_23875DEA0();

  (*(v43 + 8))(v26, v23);
  sub_238439884(v25, &unk_27DF0B540, &qword_238765900);
  v27 = v46;
  sub_2385165C8(v38, v46, v37);
  v28 = v36;
  v29 = swift_allocObject();
  sub_23851512C(v27, v29 + v28, v40);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_238516800;
  *(v30 + 24) = v29;
  v31 = v47;
  (*(v44 + 32))(v47, v24, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D2C8, &qword_23876CEC8);
  v33 = (v31 + *(result + 36));
  *v33 = sub_2384495F4;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_238513AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238513B48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2E0();
  return sub_2385050F8();
}

uint64_t sub_238513BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v5 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0A560, &qword_238765AA0);
  v8 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v10 = &v21 - v9;
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
  v14 = sub_23875C490();
  sub_2385165C8(v14 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);

  v15 = sub_23875C490();
  sub_238500544(v7, v15, v10);

  sub_238515494(v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  v16 = v22;
  sub_2385165C8(a1, v22, type metadata accessor for BankConnectAuthorizationFlowView);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_23851512C(v16, v18 + v17, type metadata accessor for BankConnectAuthorizationFlowView);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_23851685C;
  *(v19 + 24) = v18;
  sub_238472504();
  sub_2385148B0(&unk_27DF0D2A0, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_23875DDD0();

  sub_238439884(v10, &unk_27DF0A560, &qword_238765AA0);
}

uint64_t sub_238513FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
  v8 = sub_23875C490();
  sub_238500544(a1, v8, a3);
}

uint64_t sub_238514064(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_23851412C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for BankConnectAuthorizationError();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 16);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v16 = v25;

  if ((*(v16 + 48))(v9, 1, v10) == 1)
  {
    return sub_238439884(v9, &unk_27DF0B540, &qword_238765900);
  }

  v18 = v26;
  sub_23851512C(v9, v26, type metadata accessor for BankConnectAuthorizationError);
  sub_23875C490();
  sub_238505BF4(v18);

  sub_23875C490();
  v19 = v24;
  (*(v16 + 56))(v24, 1, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v19, v23, &unk_27DF0B540, &qword_238765900);

  sub_23875C2E0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v19;
  v22 = v26;
  if (Strong)
  {
    [Strong didCompleteFlowItem];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_238439884(v21, &unk_27DF0B540, &qword_238765900);
  return sub_238515494(v22, type metadata accessor for BankConnectAuthorizationError);
}

void sub_2385144EC()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  sub_2385148B0(&qword_27DF0D128, type metadata accessor for BankConnectAuthorizationFlowViewModel);
  LODWORD(v6) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType);

  v9 = MEMORY[0x277D38550];
  if (!v6)
  {
    v9 = MEMORY[0x277D38560];
  }

  v25 = *v9;
  v10 = objc_opt_self();
  v11 = [v10 reporterForSubject_];
  if (v11)
  {

    sub_23875C120();
    v12 = v25;
    v13 = sub_23875C1B0();
    v14 = sub_23875EFE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      v17 = sub_23875EA80();
      v19 = sub_2384615AC(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2383F8000, v13, v14, "Analytics session for %s has already been started", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x23EE64DF0](v16, -1, -1);
      MEMORY[0x23EE64DF0](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    [v10 beginSubjectReporting_];
    v20 = *(*(v0 + *(type metadata accessor for BankConnectAuthorizationFlowView(0) + 24)) + 16);
    v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v20 + v22));
    v23 = sub_23875BCB0();
    (*(*(v23 - 8) + 8))(v20 + v21, v23);
    sub_23875BCA0();
    os_unfair_lock_unlock((v20 + v22));
    v24 = v25;
  }
}

uint64_t sub_2385148B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238514AF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v36 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D348, &qword_23876CF78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_23875D2A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D220, &qword_238765AD0);
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D210, &qword_238765AC8);
  v15 = *(*(v35 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v35);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v33)
  {
    v21 = sub_23875D250();
    MEMORY[0x28223BE20](v21);
    v22 = v31;
    *(&v29 - 2) = v30;
    *(&v29 - 1) = v22;
    sub_2384B5A24();
    sub_23875C990();
    v23 = sub_23843A3E8(&qword_27DF0A5C0, &unk_27DF0D220, &qword_238765AD0);
    MEMORY[0x23EE61E80](v14, v11, v23);
    (*(v5 + 16))(v18, v8, v4);
    (*(v5 + 56))(v18, 0, 1, v4);
    v37 = v11;
    v38 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v18, v4, OpaqueTypeConformance2);
    sub_238439884(v18, &unk_27DF0D210, &qword_238765AC8);
    (*(v5 + 8))(v8, v4);
    (*(v32 + 8))(v14, v11);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
    v25 = sub_23843A3E8(&qword_27DF0A5C0, &unk_27DF0D220, &qword_238765AD0);
    v37 = v11;
    v38 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v18, v4, v26);
    sub_238439884(v18, &unk_27DF0D210, &qword_238765AC8);
  }

  v27 = sub_2384727E4();
  MEMORY[0x23EE61E80](v20, v35, v27);
  sub_238439884(v20, &unk_27DF0D210, &qword_238765AC8);
}

uint64_t sub_238514FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  *a3 = v11;
  a3[1] = v13;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t sub_23851512C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238515194(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_23875B8B0();
    v12 = sub_23875B940();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_23875B940();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_238439884(v9, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_2385152E8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238515364(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23843981C(a1, &v13 - v9, &qword_27DF0D040, &qword_2387676A0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v10, v7, &qword_27DF0D040, &qword_2387676A0);

  sub_23875C2E0();
  return sub_238439884(v10, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_238515494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385154F4(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WebAuthorizationStep(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_238449184(0, &qword_27DF096A8, 0x277D38080);
    v8 = v7;
    v9 = v6;
    v10 = sub_23875F1B0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (MEMORY[0x23EE5F410](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v11 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
    if (sub_23875B890())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2385155E0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for AccountConnectionStep(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (v12)
    {
      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v13 = v12;
      v14 = v11;
      v15 = sub_23875F1B0();

      if (v15)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v16 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  return v16 & 1;
}

uint64_t sub_2385156D0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for PrivacyOnboardingStep(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v7)
    {
      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v8 = v7;
      v9 = v6;
      v10 = sub_23875F1B0();

      if (v10)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v11 & 1;
}

uint64_t sub_238515794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (MEMORY[0x23EE5C610]())
  {
    v6 = *(a3(0) + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7)
    {
      if (v8)
      {
        sub_238449184(0, &qword_27DF096A8, 0x277D38080);
        v9 = v8;
        v10 = v7;
        v11 = sub_23875F1B0();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_238515840(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v116 = a2;
  v2 = type metadata accessor for AccountConnectionStep(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExtensionAuthorizationStep(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for WebAuthorizationStep(0);
  v8 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v112 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AppAuthorizationStep(0);
  v10 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ReconnectAccountsStep(0);
  v12 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PrivacyOnboardingStep(0);
  v14 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v107 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TermsAndConditionsStep(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  MEMORY[0x28223BE20](v26);
  v114 = &v101 - v27;
  MEMORY[0x28223BE20](v28);
  v113 = &v101 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v101 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v101 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v101 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D198, &qword_23876CE28);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v101 - v41;
  v44 = *(v43 + 56);
  sub_2385165C8(v115, &v101 - v41, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  sub_2385165C8(v116, &v42[v44], type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2385165C8(v42, v38, type metadata accessor for BankConnectAuthorizationNavigationDestination);
        if (swift_getEnumCaseMultiPayload())
        {
          v46 = type metadata accessor for TermsAndConditionsStep;
LABEL_47:
          v86 = v46;
          v87 = v38;
          goto LABEL_48;
        }

        v88 = &v42[v44];
        v48 = v106;
        sub_23851512C(v88, v106, type metadata accessor for TermsAndConditionsStep);
        if (MEMORY[0x23EE5C610](v38, v48))
        {
          v89 = *(v16 + 20);
          v90 = *&v38[v89];
          v91 = *(v48 + v89);
          if (v90)
          {
            if (v91)
            {
              sub_238449184(0, &qword_27DF096A8, 0x277D38080);
              v92 = v91;
              v93 = v90;
              v94 = sub_23875F1B0();

              if (v94)
              {
                goto LABEL_54;
              }
            }
          }

          else if (!v91)
          {
LABEL_54:
            v95 = type metadata accessor for TermsAndConditionsStep;
LABEL_68:
            v63 = v95;
            sub_238515494(v48, v95);
            v64 = v38;
            goto LABEL_77;
          }
        }

        v97 = type metadata accessor for TermsAndConditionsStep;
        goto LABEL_72;
      }

      sub_2385165C8(v42, v35, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v70 = v107;
        sub_23851512C(&v42[v44], v107, type metadata accessor for PrivacyOnboardingStep);
        if (MEMORY[0x23EE5C610](v35, v70))
        {
          v71 = *(v103 + 20);
          v72 = *&v35[v71];
          v73 = *(v70 + v71);
          if (v72)
          {
            if (!v73)
            {
              goto LABEL_64;
            }

            sub_238449184(0, &qword_27DF096A8, 0x277D38080);
            v74 = v73;
            v75 = v72;
            v76 = sub_23875F1B0();

            if ((v76 & 1) == 0)
            {
              goto LABEL_64;
            }

LABEL_63:
            if (v35[*(v103 + 24)] == *(v70 + *(v103 + 24)))
            {
              v63 = type metadata accessor for PrivacyOnboardingStep;
              sub_238515494(v70, type metadata accessor for PrivacyOnboardingStep);
              v64 = v35;
              goto LABEL_77;
            }

            goto LABEL_64;
          }

          if (!v73)
          {
            goto LABEL_63;
          }
        }

LABEL_64:
        v98 = type metadata accessor for PrivacyOnboardingStep;
        sub_238515494(v70, type metadata accessor for PrivacyOnboardingStep);
        v99 = v35;
        goto LABEL_73;
      }

      v86 = type metadata accessor for PrivacyOnboardingStep;
      v87 = v35;
LABEL_48:
      sub_238515494(v87, v86);
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_2385165C8(v42, v32, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v86 = type metadata accessor for ReconnectAccountsStep;
        v87 = v32;
        goto LABEL_48;
      }

      v55 = &v42[v44];
      v56 = v108;
      sub_23851512C(v55, v108, type metadata accessor for ReconnectAccountsStep);
      if (MEMORY[0x23EE5C610](v32, v56))
      {
        v57 = *(v102 + 20);
        v58 = *&v32[v57];
        v59 = *(v56 + v57);
        if (v58)
        {
          if (v59)
          {
            sub_238449184(0, &qword_27DF096A8, 0x277D38080);
            v60 = v59;
            v61 = v58;
            v62 = sub_23875F1B0();

            if (v62)
            {
              goto LABEL_20;
            }
          }
        }

        else if (!v59)
        {
LABEL_20:
          v63 = type metadata accessor for ReconnectAccountsStep;
          sub_238515494(v56, type metadata accessor for ReconnectAccountsStep);
          v64 = v32;
LABEL_77:
          sub_238515494(v64, v63);
          goto LABEL_78;
        }
      }

      v98 = type metadata accessor for ReconnectAccountsStep;
      sub_238515494(v56, type metadata accessor for ReconnectAccountsStep);
      v99 = v32;
LABEL_73:
      sub_238515494(v99, v98);
      sub_238515494(v42, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      goto LABEL_74;
    }

    v38 = v113;
    sub_2385165C8(v42, v113, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v46 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_47;
    }

    v79 = &v42[v44];
    v48 = v111;
    sub_23851512C(v79, v111, type metadata accessor for AppAuthorizationStep);
    if ((MEMORY[0x23EE5C610](v38, v48) & 1) == 0)
    {
      goto LABEL_69;
    }

    v80 = *(v104 + 20);
    v81 = *&v38[v80];
    v82 = *(v48 + v80);
    if (v81)
    {
      if (!v82)
      {
        goto LABEL_69;
      }

      sub_238449184(0, &qword_27DF096A8, 0x277D38080);
      v83 = v82;
      v84 = v81;
      v85 = sub_23875F1B0();

      if ((v85 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (v82)
    {
LABEL_69:
      v97 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_72;
    }

    if (MEMORY[0x23EE5F410](&v38[*(v104 + 24)], v48 + *(v104 + 24)))
    {
      v95 = type metadata accessor for AppAuthorizationStep;
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_49:
        sub_238439884(v42, &qword_27DF0D198, &qword_23876CE28);
LABEL_74:
        v67 = 0;
        return v67 & 1;
      }

LABEL_78:
      sub_238515494(v42, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      v67 = 1;
      return v67 & 1;
    }

    sub_2385165C8(v42, v22, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v86 = type metadata accessor for AccountConnectionStep;
      v87 = v22;
      goto LABEL_48;
    }

    v65 = &v42[v44];
    v66 = v110;
    sub_23851512C(v65, v110, type metadata accessor for AccountConnectionStep);
    v67 = sub_2385155E0(v22, v66);
    sub_238515494(v66, type metadata accessor for AccountConnectionStep);
    v68 = v22;
    v69 = type metadata accessor for AccountConnectionStep;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v38 = v114;
      sub_2385165C8(v42, v114, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v46 = type metadata accessor for WebAuthorizationStep;
        goto LABEL_47;
      }

      v47 = &v42[v44];
      v48 = v112;
      sub_23851512C(v47, v112, type metadata accessor for WebAuthorizationStep);
      if ((MEMORY[0x23EE5C610](v38, v48) & 1) == 0)
      {
        goto LABEL_59;
      }

      v49 = *(v105 + 20);
      v50 = *&v38[v49];
      v51 = *(v48 + v49);
      if (v50)
      {
        if (!v51)
        {
          goto LABEL_59;
        }

        sub_238449184(0, &qword_27DF096A8, 0x277D38080);
        v52 = v51;
        v53 = v50;
        v54 = sub_23875F1B0();

        if ((v54 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else if (v51)
      {
LABEL_59:
        v97 = type metadata accessor for WebAuthorizationStep;
LABEL_72:
        v98 = v97;
        sub_238515494(v48, v97);
        v99 = v38;
        goto LABEL_73;
      }

      if (MEMORY[0x23EE5F410](&v38[*(v105 + 24)], v48 + *(v105 + 24)))
      {
        v96 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
        if (sub_23875B890())
        {
          v95 = type metadata accessor for WebAuthorizationStep;
          goto LABEL_68;
        }
      }

      goto LABEL_59;
    }

    sub_2385165C8(v42, v25, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v86 = type metadata accessor for ExtensionAuthorizationStep;
      v87 = v25;
      goto LABEL_48;
    }

    v77 = &v42[v44];
    v78 = v109;
    sub_23851512C(v77, v109, type metadata accessor for ExtensionAuthorizationStep);
    v67 = sub_2385164C8(v25, v78, type metadata accessor for ExtensionAuthorizationStep, _s12FinanceKitUI37BankConnectExtensionAuthorizationFlowV2eeoiySbAC_ACtFZ_0);
    sub_238515494(v78, type metadata accessor for ExtensionAuthorizationStep);
    v68 = v25;
    v69 = type metadata accessor for ExtensionAuthorizationStep;
  }

  sub_238515494(v68, v69);
  sub_238515494(v42, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v67 & 1;
}

uint64_t sub_2385164C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((MEMORY[0x23EE5C610]() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  v8 = *(v7 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  sub_238449184(0, &qword_27DF096A8, 0x277D38080);
  v11 = v10;
  v12 = v9;
  v13 = sub_23875F1B0();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v14 = *(v7 + 24);

  return a4(a1 + v14, a2 + v14);
}

uint64_t sub_2385165C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238516630()
{
  v1 = *(type metadata accessor for BankConnectAuthorizationFlowView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23851412C(v2);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = *(v0 + v4);
  v6 = *(v0 + v4 + 8);
  v7 = *(v0 + v4 + 16);
  sub_2383FC164();
  v8 = v0 + v4 + *(v1 + 20);
  v9 = sub_23875B940();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08) + 28));

  v12 = *(v0 + v4 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

void sub_238516800()
{
  v1 = *(type metadata accessor for BankConnectAuthorizationFlowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_2385144EC();
}

uint64_t sub_23851685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectAuthorizationFlowView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_238513FA8(a1, v6, a2);
}

uint64_t sub_2385168E4()
{
  v1 = *(type metadata accessor for WebAuthorizationStep(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_238511EB8(v2, v3);
}

void *sub_238516974(uint64_t *a1)
{
  v3 = *(type metadata accessor for TermsAndConditionsStep(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v7 = *a1;
  return sub_238506458(v1 + v4, &v7);
}

_OWORD *sub_2385169F0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t objectdestroy_167Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v1 + 16);

  v7 = sub_238757B60();
  (*(*(v7 - 8) + 8))(v1 + v4, v7);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_238516B70(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v6 = *(a2(0) - 8);
  v7 = *(v3 + 16);
  return a3(v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a1);
}

uint64_t sub_238516BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_161Tm()
{
  v1 = (type metadata accessor for WebAuthorizationStep(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v0 + v3 + v1[8];
  v8 = sub_23875A9A0();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  v10 = sub_23875B940();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238516E00(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, void, uint64_t))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  v8 = *(v3 + 16);
  return a3(v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)), *(v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)) + *(v6 + 20)), a1);
}

uint64_t sub_238516EB8(void **a1)
{
  v3 = *(type metadata accessor for AccountConnectionStep(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_238512C24(a1, v4, v5);
}

id sub_238516F2C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_238516F3C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccountConnectionStep(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2384494A4;

  return sub_238512E3C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_238517074(uint64_t a1)
{
  v4 = *(sub_238758BB0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238449A7C;

  return sub_23850FBA0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238517194(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875B940() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AppAuthorizationStep(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_23850EEC4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

unint64_t sub_238517300()
{
  result = qword_27DF0D398;
  if (!qword_27DF0D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D398);
  }

  return result;
}

uint64_t sub_238517354(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875B940() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for WebAuthorizationStep(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238449A7C;

  return sub_23850D948(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2385174E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_238449A7C;

  return sub_23850C294(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_23851764C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_23875C1E0();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_23875A820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875AB40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  (*(v11 + 16))(v14, a1 + *(v15 + 28), v10);
  v16 = (*(v11 + 88))(v14, v10);
  v17 = *MEMORY[0x277CC8260];
  (*(v11 + 8))(v14, v10);
  if (v16 != v17)
  {
    return 1;
  }

  sub_23875A7E0();
  v18 = sub_23875A800();
  (*(v6 + 8))(v9, v5);
  v19 = sub_238757B10();
  result = 0;
  if ((v19 & 1) == 0 && (v18 & 1) == 0)
  {
    v21 = sub_238757B40();
    v23 = v22;
    *(&v24 - 4) = MEMORY[0x28223BE20](v21);
    *(&v24 - 3) = v23;
    *(&v24 - 2) = v27;
    sub_23875F120();

    return v28;
  }

  return result;
}

unint64_t sub_238517A64@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_238505B40(a1);
}

unint64_t sub_238517A84()
{
  result = qword_27DF0D3E0;
  if (!qword_27DF0D3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D2C8, &qword_23876CEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D1A0, &qword_23876CE30);
    type metadata accessor for BankConnectAuthorizationError();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0D2B0, &qword_27DF0D1A0, &qword_23876CE30);
    sub_2385148B0(&qword_27DF0D2B8, type metadata accessor for BankConnectAuthorizationError);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D3E0);
  }

  return result;
}

uint64_t sub_238517C50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_238517CC4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a1;
  *(v5 + 72) = sub_23875ED50();
  *(v5 + 80) = sub_23875ED40();
  v7 = sub_23875ECE0();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return MEMORY[0x2822009F8](sub_238517D68, v7, v6);
}

uint64_t sub_238517D68()
{
  v1 = [*(v0 + 32) uniqueID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23875EA80();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 64);
  v7 = OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass;
  v8 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass);
  if (v8 && (v9 = [v8 uniqueID]) != 0)
  {
    v10 = v9;
    v11 = sub_23875EA80();
    v13 = v12;

    v14 = &OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = &OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
    if (!v5)
    {
LABEL_7:
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  if (!v13)
  {
LABEL_14:

LABEL_21:
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v20 = *(v0 + 56);
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = *(v0 + 32);
    v24 = *(v6 + v7);
    *(v6 + v7) = v23;
    v25 = v23;

    v26 = v19 + v14[128];
    *v26 = v22;
    *(v26 + 8) = v21;
    *(v26 + 16) = 0;
    v27 = sub_23875ED40();
    *(v0 + 104) = v27;
    v28 = swift_task_alloc();
    *(v0 + 112) = v28;
    v28[2] = v25;
    v28[3] = v22;
    v28[4] = v21;
    v28[5] = v20;
    v29 = *(MEMORY[0x277D859E0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 120) = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v30 = v0;
    v30[1] = sub_238518040;
    v32 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 16, v27, v32, 0xD000000000000027, 0x8000000238789B20, sub_23851880C, v28, v31);
  }

  if (v3 == v11 && v5 == v13)
  {
  }

  else
  {
    v15 = sub_23875F630();

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  v16 = *(v0 + 64) + v14[128];
  if (*(v16 + 16))
  {
    goto LABEL_21;
  }

  if (*v16 != *(v0 + 40) || *(v16 + 8) != *(v0 + 48))
  {
    goto LABEL_21;
  }

  v33 = *(v0 + 80);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_238518040()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2385181A0, v6, v5);
}

uint64_t sub_2385181A0()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v3;

  sub_23875C2E0();
  v4 = v0[1];

  return v4();
}

void sub_23851825C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = [objc_opt_self() sharedInstance];
  if (v15)
  {
    v16 = v15;
    (*(v11 + 16))(v14, a1, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v17, v14, v10);
    aBlock[4] = sub_23851881C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23851854C;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);

    [v16 snapshotWithPass:a2 size:a3 suppressedContent:v19 completion:{a4, a5}];
    _Block_release(v19);
  }

  else
  {
  }
}

uint64_t sub_2385184FC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  return sub_23875ED10();
}

void sub_23851854C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2385185B8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI10PassLoader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D428, &qword_23876D158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PassLoader()
{
  result = qword_27DF0D408;
  if (!qword_27DF0D408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385186C4()
{
  sub_238518768();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_238518768()
{
  if (!qword_27DF0D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0D418);
    }
  }
}

uint64_t sub_2385187CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PassLoader();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23851881C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150) - 8) + 80);

  return sub_2385184FC(a1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OrderArchiveYear.months.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static OrderArchiveYear.== infix(_:_:)(uint64_t result, unsigned __int16 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 40);
  v6 = (v3 + 40);
  while (v4)
  {
    v7 = *(v6 - 4);
    v9 = *v6;
    v6 += 2;
    v8 = v9;
    result = *(v5 - 4) == v7 && *v5 == v8;
    v11 = result != 1 || v4-- == 1;
    v5 += 2;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238518A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_23851E250(v14, v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23851E250(v15, v7, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v17 = sub_23849CE10(v11, v7);
        sub_23851E334(v7, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        sub_23851E334(v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_238518C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23875F630() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_238518CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v46 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v12 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v14 = &v46 - v13;
  v59 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v15 = *(*(v59 - 1) + 64);
  MEMORY[0x28223BE20](v59);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v46 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v48 = v8;
  v23 = 0;
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v53 = a2 + v24;
  v51 = v17;
  v52 = (v5 + 48);
  v47 = (v5 + 32);
  v49 = (v5 + 8);
  v54 = *(v19 + 72);
  v55 = a1 + v24;
  v57 = v22;
  while (1)
  {
    v26 = v54 * v23;
    result = sub_23851E250(v55 + v54 * v23, v21, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    if (v23 == v57)
    {
      break;
    }

    sub_23851E250(v53 + v26, v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    v27 = *v21 == *v17 && v21[1] == v17[1];
    if (!v27 && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_33;
    }

    v28 = v59[5];
    v29 = *(v58 + 48);
    sub_23843981C(v21 + v28, v14, &unk_27DF0B080, &unk_2387662A0);
    sub_23843981C(v17 + v28, &v14[v29], &unk_27DF0B080, &unk_2387662A0);
    v30 = *v52;
    if ((*v52)(v14, 1, v4) == 1)
    {
      if (v30(&v14[v29], 1, v4) != 1)
      {
        goto LABEL_32;
      }

      sub_238439884(v14, &unk_27DF0B080, &unk_2387662A0);
      v17 = v51;
    }

    else
    {
      v31 = v56;
      sub_23843981C(v14, v56, &unk_27DF0B080, &unk_2387662A0);
      if (v30(&v14[v29], 1, v4) == 1)
      {
        (*v49)(v31, v4);
LABEL_32:
        sub_238439884(v14, &qword_27DF0BC88, &qword_23876D250);
        v17 = v51;
LABEL_33:
        sub_23851E334(v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
        sub_23851E334(v21, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
        return 0;
      }

      v32 = &v14[v29];
      v33 = v31;
      v34 = v48;
      (*v47)(v48, v32, v4);
      sub_23851E394(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
      v50 = sub_23875E9E0();
      v35 = *v49;
      (*v49)(v34, v4);
      v35(v33, v4);
      sub_238439884(v14, &unk_27DF0B080, &unk_2387662A0);
      v17 = v51;
      if ((v50 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (*(v21 + v59[6]) != *(v17 + v59[6]))
    {
      goto LABEL_33;
    }

    v36 = v59[7];
    v37 = v21 + v36;
    v38 = v17 + v36;
    if ((MEMORY[0x23EE5FA60](v21 + v36, v17 + v36) & 1) == 0)
    {
      goto LABEL_33;
    }

    v39 = *(type metadata accessor for ProductImage.ViewModel(0) + 20);
    v40 = *&v37[v39];
    v41 = *&v38[v39];
    v42 = *(v40 + 16);
    if (v42 != *(v41 + 16))
    {
      goto LABEL_33;
    }

    if (v42 && v40 != v41)
    {
      v43 = (v40 + 40);
      v44 = (v41 + 40);
      do
      {
        v45 = *(v43 - 1) == *(v44 - 1) && *v43 == *v44;
        if (!v45 && (sub_23875F630() & 1) == 0)
        {
          goto LABEL_33;
        }

        v43 += 2;
        v44 += 2;
      }

      while (--v42);
    }

    ++v23;
    sub_23851E334(v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    sub_23851E334(v21, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    result = 1;
    if (v23 == v57)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2385192A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_238725BA8(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_23851935C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23851E250(v14, v11, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      sub_23851E250(v15, v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      v17 = *v11 == *v7 && *(v11 + 1) == *(v7 + 1);
      v18 = v17 && *(v11 + 2) == *(v7 + 2);
      if (!v18 || ((v11[24] ^ v7[24]) & 1) != 0 || !sub_238601FBC(&v11[*(v4 + 20)], &v7[*(v4 + 20)]))
      {
        break;
      }

      v19 = *(v4 + 24);
      v20 = *&v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = &v7[v19];
      if (v20 == *v22 && v21 == *(v22 + 1))
      {
        sub_23851E334(v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        sub_23851E334(v11, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
      }

      else
      {
        v24 = sub_23875F630();
        sub_23851E334(v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        sub_23851E334(v11, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_23851E334(v7, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
    sub_23851E334(v11, type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel);
  }

  return 0;
}

uint64_t sub_2385195D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 4);
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    result = *(v3 - 4) == v5 && *v3 == v6;
    v9 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23851968C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v56 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v56 - v12;
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  v15 = *(*(active - 1) + 64);
  v16 = MEMORY[0x28223BE20](active);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v68 = v4;
  v69 = a2 + v23;
  v57 = (v5 + 32);
  v58 = v13;
  v59 = (v5 + 8);
  v61 = *(v19 + 72);
  v62 = (v5 + 48);
  v25 = &unk_27DF0B080;
  v67 = active;
  while (1)
  {
    result = sub_23851E250(v24, v21, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    if (!v22)
    {
      break;
    }

    sub_23851E250(v69, v18, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    if (!sub_238601FBC(v21, v18))
    {
      goto LABEL_37;
    }

    v27 = active[5];
    v28 = &v21[v27];
    v29 = *&v21[v27 + 8];
    v30 = &v18[v27];
    v31 = *(v30 + 1);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_37;
      }

      v32 = *v28 == *v30 && v29 == v31;
      if (!v32 && (sub_23875F630() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v31)
    {
      goto LABEL_37;
    }

    v33 = active[6];
    v34 = &v21[v33];
    v35 = *&v21[v33 + 8];
    v36 = &v18[v33];
    v37 = *(v36 + 1);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_37;
      }

      v38 = *v34 == *v36 && v35 == v37;
      if (!v38 && (sub_23875F630() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v37)
    {
      goto LABEL_37;
    }

    v64 = v24;
    v39 = active[7];
    v40 = *(v65 + 48);
    sub_23843981C(&v21[v39], v13, v25, &unk_2387662A0);
    sub_23843981C(&v18[v39], &v13[v40], v25, &unk_2387662A0);
    v41 = v25;
    v42 = *v62;
    if ((*v62)(v13, 1, v4) == 1)
    {
      if (v42(&v13[v40], 1, v4) != 1)
      {
        goto LABEL_36;
      }

      sub_238439884(v13, v25, &unk_2387662A0);
      v43 = v67;
      v44 = v64;
    }

    else
    {
      sub_23843981C(v13, v66, v25, &unk_2387662A0);
      if (v42(&v13[v40], 1, v4) == 1)
      {
        (*v59)(v66, v4);
LABEL_36:
        sub_238439884(v13, &qword_27DF0BC88, &qword_23876D250);
LABEL_37:
        sub_23851E334(v18, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        sub_23851E334(v21, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        return 0;
      }

      v45 = &v13[v40];
      v46 = v66;
      v47 = v63;
      (*v57)(v63, v45, v4);
      sub_23851E394(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
      v48 = sub_23875E9E0();
      v49 = v68;
      v60 = v48;
      v50 = *v59;
      v51 = v47;
      v52 = v46;
      v13 = v58;
      (*v59)(v51, v68);
      v50(v52, v49);
      sub_238439884(v13, v41, &unk_2387662A0);
      v43 = v67;
      v25 = v41;
      v44 = v64;
      if ((v60 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v53 = v43[8];
    v54 = *&v21[v53];
    v55 = *&v18[v53];
    sub_23851E334(v18, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    sub_23851E334(v21, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
    result = v54 == v55;
    if (v54 == v55)
    {
      v4 = v68;
      v69 += v61;
      v24 = v44 + v61;
      v32 = v22-- == 1;
      active = v67;
      if (!v32)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_238519CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_23851E394(v32, v33);
    v26 = sub_23875E9E0();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_238519EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      v8 = *v3;
      if (*v4)
      {
        if (v6 == v7)
        {
          v5 = *v3;
        }

        else
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        if (v6 != v7 || *(v4 - 1) != *(v3 - 1))
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238519F34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[2];
    v9 = v5[4];
    *&v20[16] = v5[3];
    v21 = v9;
    v22 = *(v5 + 10);
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    *v20 = v8;
    v11 = v6[1];
    v23 = *v6;
    v24 = v11;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[4];
    v27 = *(v6 + 10);
    *&v25[16] = v13;
    v26 = v14;
    *v25 = v12;
    if (v18 != v23 && (sub_23875F630() & 1) == 0 || v19 != v24 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    sub_23851DBF4(&v18, v17);
    sub_23851DBF4(&v23, v17);
    if ((sub_23875DFE0() & 1) == 0 || *&v20[8] != *&v25[8] && (sub_23875F630() & 1) == 0)
    {
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
      return 0;
    }

    if (*&v20[24] == *&v25[24] && v21 == v26)
    {
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
    }

    else
    {
      v15 = sub_23875F630();
      sub_2384B5DE4(&v23);
      sub_2384B5DE4(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

uint64_t sub_23851A150(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_2384950FC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EE63F70](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EE63F70](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23875F1B0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23875F1B0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23875F3A0();
  }

  result = sub_23875F3A0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_23851A390(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_2385195D4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23851A3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for OrderArchiveMonthView();
  v52 = *(v3 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4E0, &qword_23876D420);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4E8, &qword_23876D428);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v46 - v16;
  v18 = type metadata accessor for OrderNavigationDestination(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 8);
  *v22 = *v2;
  v22[1] = v23;
  swift_storeEnumTagMultiPayload();
  v53 = v22;
  sub_23851E250(v22, v8, type metadata accessor for OrderNavigationDestination);
  (*(v19 + 56))(v8, 0, 1, v18);
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D4F0, &qword_23876D430);
  sub_23843A3E8(&qword_27DF0D4F8, &qword_27DF0D4F0, &qword_23876D430);
  sub_23851E394(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_23875C760();
  v59 = v2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v25 = sub_23843A3E8(&qword_27DF0D508, &qword_27DF0D4E0, &qword_23876D420);
  v26 = sub_23851E16C();
  v55 = v17;
  v48 = v24;
  sub_23875DBD0();
  v27 = *(v10 + 8);
  v54 = v9;
  v27(v13, v9);
  v28 = *(v2 + 16);
  v29 = *(v2 + 32);
  LOBYTE(v65) = *(v2 + 24);
  v66 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v49 = v61;
  v47 = v62;
  v46[3] = v63;
  v30 = v50;
  sub_23851E250(v2, v50, type metadata accessor for OrderArchiveMonthView);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = swift_allocObject();
  sub_23851E2B8(v30, v32 + v31);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v33 = qword_2814F1B90;
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

  v38 = sub_23875EA80();
  v40 = v39;

  v65 = v38;
  v66 = v40;
  MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v61 = v54;
  v62 = v48;
  v63 = v25;
  v64 = v26;
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  v43 = v57;
  v44 = v55;
  sub_23875DEC0();

  (*(v56 + 8))(v44, v43);
  sub_23851E334(v53, type metadata accessor for OrderNavigationDestination);
}

uint64_t sub_23851ABAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875CE60();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D518, &unk_23876D478);
  sub_23851AC80(a1, a2 + *(v4 + 44));
}

uint64_t sub_23851AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E0, &qword_238763080);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v12 = (&v43 - v11);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D520, &qword_23876D488);
  v13 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v46 = &v43 - v19;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = sub_23875E070();
  v20 = v50 + *(type metadata accessor for OrderArchiveMonthView() + 28);
  sub_2384D4E38(v9);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  LOBYTE(v20) = sub_23875C440();
  v21 = *(v3 + 8);
  v21(v6, v2);
  v21(v9, v2);
  if (v20)
  {
    v22 = sub_23875E010();
  }

  else
  {
    v22 = sub_23875E040();
  }

  v23 = v22;
  v24 = sub_23875E070();
  KeyPath = swift_getKeyPath();
  v26 = v12 + *(v44 + 36);
  v27 = type metadata accessor for OrderImageStyleModifier();
  *&v26[*(v27 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v26[*(v27 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v26 = xmmword_23876D160;
  *(v26 + 2) = 0;
  v26[24] = 1;
  *(v26 + 4) = v24;
  v26[40] = 0;
  *v12 = v43;
  v12[1] = v23;
  v12[2] = 0x3FD999999999999ALL;
  v28 = sub_23875D000();
  sub_2384396E4(v12, v17, &qword_27DF092E0, &qword_238763080);
  v29 = &v17[*(v45 + 36)];
  *v29 = v28;
  v29[1] = sub_23843480C;
  v29[2] = 0;
  v30 = v17;
  v31 = v46;
  sub_2384396E4(v30, v46, &qword_27DF0D520, &qword_23876D488);
  v32 = sub_23875D030();
  LOBYTE(v55[0]) = 1;
  sub_23851B1E0(v50, v52);
  *&v51[7] = v52[0];
  *&v51[23] = v52[1];
  *&v51[39] = v52[2];
  *&v51[55] = v52[3];
  v33 = v55[0];
  v34 = v48;
  sub_23843981C(v31, v48, &qword_27DF0D520, &qword_23876D488);
  v35 = v49;
  sub_23843981C(v34, v49, &qword_27DF0D520, &qword_23876D488);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D528, &qword_23876D4C8) + 48);
  v53 = v32;
  v54[0] = v33;
  *&v54[1] = *v51;
  *&v54[17] = *&v51[16];
  *&v54[33] = *&v51[32];
  *&v54[49] = *&v51[48];
  v37 = *&v51[63];
  *&v54[64] = *&v51[63];
  v38 = *v54;
  *v36 = v32;
  *(v36 + 16) = v38;
  v39 = *&v54[16];
  v40 = *&v54[32];
  v41 = *&v54[48];
  *(v36 + 80) = v37;
  *(v36 + 48) = v40;
  *(v36 + 64) = v41;
  *(v36 + 32) = v39;
  sub_23843981C(&v53, v55, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v31, &qword_27DF0D520, &qword_23876D488);
  v55[0] = v32;
  v55[1] = 0;
  v56 = v33;
  v58 = *&v51[16];
  v59 = *&v51[32];
  *v60 = *&v51[48];
  *&v60[15] = *&v51[63];
  v57 = *v51;
  sub_238439884(v55, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v34, &qword_27DF0D520, &qword_23876D488);
}

uint64_t sub_23851B1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2387591F0();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = sub_23851B600();
  v61 = v7;
  v50[1] = sub_2384397A8();
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11;
  sub_23875D7F0();
  v13 = sub_23875DA60();
  v50[0] = a1;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v8, v10, v12 & 1);

  sub_23875D890();
  v18 = sub_23875D9E0();
  v52 = v19;
  v53 = v18;
  v51 = v20;
  v54 = v21;
  sub_2384397FC(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2387632F0;
  v23 = *(v50[0] + 16);
  v24 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  v26 = v55;
  v25 = v56;
  v27 = v57;
  (*(v56 + 104))(v55, *MEMORY[0x277CC77B0], v57);
  v28 = sub_238758A50();
  v30 = v29;

  (*(v25 + 8))(v26, v27);
  v60 = v28;
  v61 = v30;
  v31 = sub_23875DAA0();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_23875D7F0();
  v35 = sub_23875DA60();
  v37 = v36;
  LOBYTE(v27) = v38;

  sub_2384397FC(v31, v33, v30 & 1);

  LODWORD(v60) = sub_23875D440();
  v39 = sub_23875DA20();
  v41 = v40;
  LOBYTE(v30) = v42;
  v44 = v43;
  sub_2384397FC(v35, v37, v27 & 1);

  v45 = v51 & 1;
  v59 = v51 & 1;
  LOBYTE(v60) = v51 & 1;
  v62 = v30 & 1;
  v47 = v52;
  v46 = v53;
  *a2 = v53;
  *(a2 + 8) = v47;
  *(a2 + 16) = v45;
  *(a2 + 24) = v54;
  *(a2 + 32) = v39;
  *(a2 + 40) = v41;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v44;
  v48 = v46;
  sub_23843980C(v46, v47, v45);

  sub_23843980C(v39, v41, v30 & 1);

  sub_2384397FC(v39, v41, v30 & 1);

  sub_2384397FC(v48, v47, v59);
}

uint64_t sub_23851B600()
{
  v0 = sub_23875BAB0();
  v83 = *(v0 - 8);
  v84 = v0;
  v1 = *(v83 + 64);
  MEMORY[0x28223BE20](v0);
  v82 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BE40();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875B7F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v66 - v17;
  v79 = sub_23875BAD0();
  v77 = *(v79 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v87 = &v66 - v24;
  v25 = sub_23875BC40();
  v86 = *(v25 - 8);
  v26 = *(v86 + 64);
  MEMORY[0x28223BE20](v25);
  v70 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v85 = &v66 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v66 - v33;
  v72 = sub_23875B650();
  v71 = *(v72 - 8);
  v35 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v37 = (&v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_23875BD30();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23875BE20();
  v44 = *(v43 - 8);
  v45 = v44[8];
  MEMORY[0x28223BE20](v43);
  v66 = &v66 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v66 - v49;
  (*(v39 + 104))(v42, *MEMORY[0x277CC9810], v38, v48);
  sub_23875BD40();
  v51 = v86;
  (*(v39 + 8))(v42, v38);
  v52 = v44[2];
  v67 = v50;
  v52(v34, v50, v43);
  v68 = v44;
  v53 = v44[7];
  v69 = v43;
  v53(v34, 0, 1, v43);
  (*(v88 + 56))(v85, 1, 1, v89);
  v54 = *v90;
  v55 = v90[4];
  sub_23875B620();
  v56 = v87;
  v90 = v37;
  sub_23875B5C0();
  result = (*(v51 + 48))(v56, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v58 = v70;
    (*(v51 + 32))(v70, v56, v25);
    v59 = sub_23875BA40();
    (*(*(v59 - 8) + 56))(v73, 1, 1, v59);
    v60 = sub_23875BA10();
    (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
    sub_23875B7D0();
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    v61 = v75;
    sub_23875BA50();
    v62 = v82;
    sub_23875BAA0();
    v63 = v76;
    sub_23875BA70();
    (*(v83 + 8))(v62, v84);
    sub_23851E394(&qword_27DF09978, MEMORY[0x277CC9428]);
    v64 = v79;
    sub_23875BC20();
    v65 = *(v77 + 8);
    v65(v63, v64);
    v65(v61, v64);
    (*(v51 + 8))(v58, v25);
    (*(v71 + 8))(v90, v72);
    (v68[1])(v67, v69);
    return v91;
  }

  return result;
}

uint64_t sub_23851BFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrderArchiveMonthView();
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

  sub_23851E250(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderArchiveMonthView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23851E2B8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
  v9 = sub_23875DFF0();
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

void sub_23851C1F0(__int16 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = *a1;
  v7 = a1[4];
  v8 = sub_23875ED80();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_23875ED50();
  v9 = sub_23875ED40();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  *(v10 + 34) = v7;
  sub_2386C3BA4(0, 0, v5, &unk_23876D440, v10);

  v12 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v14 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v15 = *MEMORY[0x277D38428];
  v16 = sub_23875EA80();
  v17 = MEMORY[0x277D38390];
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = *v17;
  *(inited + 56) = *v17;
  *(inited + 64) = 0x6574656C6564;
  v20 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v20;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000238784E10;
  v21 = v14;
  v22 = v19;
  v23 = v20;
  v24 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v24;
  sub_2385C33E4(v12, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v30);

  v26 = *MEMORY[0x277D38548];
  v27 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v28 = sub_23875E910();

  [v27 subject:v26 sendEvent:v28];
}

void sub_23851C508()
{
  v0 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v2 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v3 = *MEMORY[0x277D38428];
  v4 = sub_23875EA80();
  v5 = MEMORY[0x277D38390];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = 0x776F4E746F6ELL;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000238784E10;
  v9 = v2;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v12;
  sub_2385C33E4(v0, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v17);

  v14 = *MEMORY[0x277D38548];
  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v16 = sub_23875E910();

  [v15 subject:v14 sendEvent:v16];
}

void sub_23851C720(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 32);
  LOBYTE(v20[0]) = *(a1 + 24);
  v20[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v6 = *MEMORY[0x277D38428];
  v7 = sub_23875EA80();
  v8 = MEMORY[0x277D38390];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = 0xD000000000000010;
  v11 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785CF0;
  *(inited + 80) = v11;
  strcpy((inited + 88), "orderDashboard");
  *(inited + 103) = -18;
  v12 = v5;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v15;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23851E394(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

uint64_t sub_23851C9F4()
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

uint64_t sub_23851CB98(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  *(v5 + 66) = a5;
  *(v5 + 64) = a4;
  sub_23875ED50();
  *(v5 + 16) = sub_23875ED40();
  v7 = sub_23875ECE0();
  *(v5 + 24) = v7;
  *(v5 + 32) = v6;

  return MEMORY[0x2822009F8](sub_23851CC34, v7, v6);
}

uint64_t sub_23851CC34()
{
  sub_2387579D0();
  *(v0 + 40) = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6760] + 4);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23851CCE8;
  v3 = *(v0 + 66);
  v4 = *(v0 + 64);

  return MEMORY[0x282116E58](v4, v3);
}

uint64_t sub_23851CCE8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = sub_23851CE64;
  }

  else
  {
    v7 = v2[5];

    v4 = v2[3];
    v5 = v2[4];
    v6 = sub_23851CE04;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23851CE04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23851CE64()
{
  v1 = v0[5];
  v2 = v0[2];

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = sub_23875C1E0();
  __swift_project_value_buffer(v4, qword_27DF2F690);
  v5 = v3;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to delete dashboard item: %@", v10, 0xCu);
    sub_238439884(v11, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23851D020@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CEA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 8);
  LOWORD(v27) = *v1;
  v8 = v27;
  v28 = v9;
  v10 = sub_23851D284();
  v12 = v11;
  v13 = sub_23875D790();
  sub_23875C3D0();
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D440, &qword_238776BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D448, &qword_23876D2F0);
  sub_23851DC88();
  sub_23851DD68();
  sub_23875E3B0();
  sub_23875CE90();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D470, &qword_23876D2F8) + 36);
  (*(v4 + 16))(a1 + v18, v7, v3);
  v19 = *(v4 + 56);
  v19((a1 + v18), 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D478, &unk_23876D330) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v4 + 32))(v21 + v22, v7, v3);
  result = v19(v21 + v22, 0, 1, v3);
  *v21 = KeyPath;
  return result;
}

uint64_t sub_23851D284()
{
  v1 = v0;
  v2 = sub_23875BA90();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BAD0();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v55 - v12;
  v13 = sub_23875BC40();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = sub_23875B650();
  v59 = *(v25 - 8);
  v60 = v25;
  v26 = *(v59 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875BD30();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23875BE20();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v1;
  (*(v30 + 104))(v33, *MEMORY[0x277CC9810], v29, v37);
  sub_23875BD40();
  (*(v30 + 8))(v33, v29);
  v41 = v68;
  (*(v35 + 16))(v24, v39, v34);
  v42 = *(v35 + 56);
  v56 = v34;
  v42(v24, 0, 1, v34);
  v43 = sub_23875BE40();
  (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
  sub_23875B620();
  v44 = v70;
  v57 = v28;
  sub_23875B5C0();
  v45 = v44;
  v46 = v69;
  result = (*(v69 + 48))(v45, 1, v41);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v48 = v58;
    v49 = (*(v46 + 32))(v58, v45, v41);
    v50 = v61;
    MEMORY[0x23EE5FF20](v49);
    v51 = v62;
    sub_23875BA80();
    v52 = v63;
    sub_23875BA60();
    (*(v64 + 8))(v51, v65);
    v53 = v67;
    v54 = *(v66 + 8);
    v54(v50, v67);
    sub_23851E394(&qword_27DF09978, MEMORY[0x277CC9428]);
    sub_23875BC20();
    v54(v52, v53);
    (*(v46 + 8))(v48, v41);
    (*(v59 + 8))(v57, v60);
    (*(v35 + 8))(v39, v56);
    return v71;
  }

  return result;
}

uint64_t sub_23851D97C(__int16 a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D488, &qword_23876D360);
  type metadata accessor for OrderArchiveMonthView();
  sub_23843A3E8(&qword_27DF0D490, &qword_27DF0D488, &qword_23876D360);
  sub_23851E394(&qword_27DF0D468, type metadata accessor for OrderArchiveMonthView);
  return sub_23875E370();
}

uint64_t sub_23851DAD0@<X0>(__int16 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = a2;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  sub_23875E1A0();
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  v7 = *(type metadata accessor for OrderArchiveMonthView() + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_23851DC88()
{
  result = qword_27DF0D450;
  if (!qword_27DF0D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D440, &qword_238776BA0);
    sub_23851DD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D450);
  }

  return result;
}

unint64_t sub_23851DD14()
{
  result = qword_27DF0D458;
  if (!qword_27DF0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D458);
  }

  return result;
}

unint64_t sub_23851DD68()
{
  result = qword_27DF0D460;
  if (!qword_27DF0D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D448, &qword_23876D2F0);
    sub_23851E394(&qword_27DF0D468, type metadata accessor for OrderArchiveMonthView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D460);
  }

  return result;
}

uint64_t type metadata accessor for OrderArchiveMonthView()
{
  result = qword_27DF0D498;
  if (!qword_27DF0D498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23851DE9C()
{
  sub_2384B49C4();
  if (v0 <= 0x3F)
  {
    sub_238438628();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23851DF38()
{
  result = qword_27DF0D4A8;
  if (!qword_27DF0D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D478, &unk_23876D330);
    sub_23851DFF0();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4A8);
  }

  return result;
}

unint64_t sub_23851DFF0()
{
  result = qword_27DF0D4B0;
  if (!qword_27DF0D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D470, &qword_23876D2F8);
    sub_23851E0A8();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4B0);
  }

  return result;
}

unint64_t sub_23851E0A8()
{
  result = qword_27DF0D4B8;
  if (!qword_27DF0D4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4C0, &qword_23876D3B8);
    sub_23851DC88();
    sub_23851DD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4B8);
  }

  return result;
}

unint64_t sub_23851E16C()
{
  result = qword_27DF0D510;
  if (!qword_27DF0D510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D500, &unk_238779850);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D510);
  }

  return result;
}

uint64_t sub_23851E250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23851E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderArchiveMonthView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23851E334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23851E394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23851E3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 34);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_23851CB98(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_26Tm()
{
  v1 = (type metadata accessor for OrderArchiveMonthView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);

  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C450();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23851E5D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderArchiveMonthView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23851E650(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23851E670(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

void sub_23851E728()
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrderDetails.FulfillmentsViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OrderDetailsHeader.ViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_238530C18(319, &qword_27DF0D548, MEMORY[0x277CC8398], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_238530C18(319, &qword_27DF0D550, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_238530C18(319, &qword_27DF0D558, type metadata accessor for OrderDetailsReturn.ViewModel, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for OrderDetailsInfo.ViewModel(319);
              if (v6 <= 0x3F)
              {
                sub_23875A710();
                if (v7 <= 0x3F)
                {
                  sub_2384C6178(319, &qword_27DF0D560, &type metadata for OrderDetailsRelatedEmailsSection.ViewModel, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
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

void sub_23851E910()
{
  type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23851E984();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23851E984()
{
  if (!qword_27DF0D578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D580, &qword_23876D538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D588, &qword_23876D540);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF0D578);
    }
  }
}

uint64_t sub_23851EA58()
{
  result = type metadata accessor for OrderDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23851EAE0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v40 = sub_238759D30();
  v43 = *(v40 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v10 = sub_23875F3A0();
  }

  else
  {
    v10 = *(a3 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2385FE854(0, v10 & ~(v10 >> 63), 0);
    v47 = v52;
    if (v44)
    {
      v12 = sub_23875F350();
    }

    else
    {
      v14 = -1 << *(a3 + 32);
      v12 = sub_23875F320();
      v13 = *(a3 + 36);
    }

    v49 = v12;
    v50 = v13;
    v51 = v44 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v46 = v3;
      v15 = 0;
      v16 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 < 0)
      {
        v16 = a3;
      }

      v38 = v16;
      v39 = v43 + 32;
      v36 = a3 + 64;
      v37 = a3 + 56;
      while (v15 < v10)
      {
        if (__OFADD__(v15++, 1))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = v49;
        v5 = v50;
        LODWORD(v6) = v51;
        v19 = a3;
        sub_238530518(v49, v50, v51, a3);
        a3 = v20;
        v48[0] = v20;
        v21 = v46;
        v41(v48);
        v46 = v21;
        if (v21)
        {
          goto LABEL_44;
        }

        v22 = v47;
        v52 = v47;
        v24 = *(v47 + 16);
        v23 = *(v47 + 24);
        a3 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          sub_2385FE854(v23 > 1, v24 + 1, 1);
          v22 = v52;
        }

        *(v22 + 16) = a3;
        v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v47 = v22;
        result = (*(v43 + 32))(v22 + v25 + *(v43 + 72) * v24, v45, v40);
        if (v44)
        {
          if (!v6)
          {
            goto LABEL_45;
          }

          a3 = v19;
          if (sub_23875F370())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D618, &qword_23876D660);
          v17 = sub_23875EE90();
          sub_23875F3E0();
          v17(v48, 0);
          if (v15 == v10)
          {
LABEL_36:
            sub_238434834(v49, v50, v51);
            return v47;
          }
        }

        else
        {
          if (v6)
          {
            goto LABEL_46;
          }

          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a3 = v19;
          v26 = 1 << *(v19 + 32);
          if (isUniquelyReferenced_nonNull_native >= v26)
          {
            goto LABEL_40;
          }

          v27 = isUniquelyReferenced_nonNull_native >> 6;
          v28 = *(v37 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
          if (((v28 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v19 + 36) != v5)
          {
            goto LABEL_42;
          }

          v29 = v28 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v6 = v27 << 6;
            v30 = v27 + 1;
            v31 = (v36 + 8 * v27);
            while (v30 < (v26 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v6 += 64;
              ++v30;
              if (v33)
              {
                sub_238434834(isUniquelyReferenced_nonNull_native, v5, 0);
                v26 = __clz(__rbit64(v32)) + v6;
                goto LABEL_35;
              }
            }

            sub_238434834(isUniquelyReferenced_nonNull_native, v5, 0);
          }

LABEL_35:
          v34 = *(v19 + 36);
          v49 = v26;
          v50 = v34;
          v51 = 0;
          if (v15 == v10)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:

    sub_238434834(isUniquelyReferenced_nonNull_native, v5, v6);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t sub_23851F080(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v27 = a1;
  v28 = a2;
  v26 = a4(0);
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v26);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v23 = a5;
  (a5)(0, v16, 0, v13);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = v11 + 32;
  v24 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v23(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v15, v26);
    v19 += v24;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23851F2A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v28 = a7;
  v29 = a1;
  v10 = v7;
  v30 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v25 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v19;
  }

  v31 = MEMORY[0x277D84F90];
  v26 = a5;
  (a5)(0, v18, 0, v15);
  v19 = v31;
  v20 = *(a6(0) - 8);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  while (1)
  {
    v29(v21);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v31 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v26(v22 > 1, v23 + 1, 1);
      v19 = v31;
    }

    *(v19 + 16) = v23 + 1;
    sub_23852EDFC(v17, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v28);
    v21 += v27;
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23851F4AC@<X0>(uint64_t a1@<X8>)
{
  sub_23852FA60(v1, a1, type metadata accessor for OrderDetails.ViewModel);
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = a1 + v3[5];
  LOBYTE(v8) = 1;
  sub_23875E1A0();
  *(v4 + 32) = v10;
  *(v4 + 48) = v11;
  *(v4 + 64) = v12;
  *(v4 + 80) = v13;
  *v4 = v8;
  *(v4 + 16) = v9;
  v5 = a1 + v3[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v3[7];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23851F5CC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_23875CE00();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v53 = type metadata accessor for OrderDetailsRefreshableModifier();
  v9 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D690, &qword_23876D778);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D698, &qword_23876D780);
  v16 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v18 = &v49 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6A0, &qword_23876D788);
  v19 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6A8, &qword_23876D790);
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v22);
  v54 = &v49 - v24;
  v61 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6B0, &unk_23876D798);
  v25 = v1;
  sub_23843A3E8(&qword_27DF0D6B8, &qword_27DF0D6B0, &unk_23876D798);
  sub_23875C410();
  v26 = type metadata accessor for OrderDetails.ViewModel(0);
  if (*(v1 + *(v26 + 44)) == 1)
  {
    v27 = *(v26 + 48);
    v28 = sub_23875A710();
    v29 = *(v28 - 8);
    v30 = v1 + v27;
    v25 = v1;
    (*(v29 + 16))(v8, v30, v28);
    (*(v29 + 56))(v8, 0, 1, v28);
  }

  else
  {
    v31 = sub_23875A710();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  }

  sub_2384396E4(v8, v11, &qword_27DF0C8A0, &unk_23876B5F0);
  v32 = &v11[*(v53 + 20)];
  v62 = 0;
  sub_23875E1A0();
  v33 = v64;
  *v32 = v63;
  *(v32 + 1) = v33;
  (*(v51 + 32))(v18, v15, v52);
  sub_23852EDFC(v11, &v18[*(v50 + 36)], type metadata accessor for OrderDetailsRefreshableModifier);
  v34 = [objc_opt_self() systemGroupedBackgroundColor];
  v35 = sub_23875DFB0();
  v36 = sub_23875D780();
  sub_23840AF0C(v18, v21);
  v37 = v49;
  v38 = &v21[*(v49 + 36)];
  *v38 = v35;
  v38[8] = v36;
  v40 = v57;
  v39 = v58;
  v41 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x277CDDDC0], v59);
  v42 = sub_238530CA0();
  v43 = v54;
  sub_23875DE50();
  (*(v39 + 8))(v40, v41);
  v44 = sub_238439884(v21, &qword_27DF0D6A0, &qword_23876D788);
  MEMORY[0x28223BE20](v44);
  *(&v49 - 2) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6E0, &qword_23876D7A8);
  v63 = v37;
  v64 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6E8, &qword_23876D7B0);
  v46 = sub_23843A3E8(&qword_27DF0D6F0, &qword_27DF0D6E8, &qword_23876D7B0);
  v63 = v45;
  v64 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_23875DEF0();
  return (*(v55 + 8))(v43, v47);
}

uint64_t sub_23851FCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D748, &qword_23876D848);
  sub_23851FDAC(a1, a2 + *(v4 + 44));
}

uint64_t sub_23851FDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v324 = a2;
  v3 = sub_238757A70();
  v290 = *(v3 - 8);
  v291 = v3;
  v4 = *(v290 + 64);
  MEMORY[0x28223BE20](v3);
  v289 = &v250 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875CDB0();
  v255 = *(v6 - 8);
  v256 = v6;
  v7 = *(v255 + 64);
  MEMORY[0x28223BE20](v6);
  v254 = &v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D750, &unk_23876D850);
  v294 = *(v296 - 8);
  v9 = *(v294 + 64);
  MEMORY[0x28223BE20](v296);
  v292 = &v250 - v10;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D758, &qword_238781BD0);
  v295 = *(v297 - 8);
  v11 = *(v295 + 64);
  MEMORY[0x28223BE20](v297);
  v293 = &v250 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D760, &qword_23876D860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v341 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v336 = &v250 - v17;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D768, &qword_23876D868);
  v259 = *(v261 - 8);
  v18 = *(v259 + 64);
  MEMORY[0x28223BE20](v261);
  v257 = &v250 - v19;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D770, &qword_23876D870);
  v260 = *(v262 - 8);
  v20 = *(v260 + 64);
  MEMORY[0x28223BE20](v262);
  v258 = &v250 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D778, &qword_23876D878);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v335 = &v250 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v342 = &v250 - v26;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D780, &qword_23876D880);
  v285 = *(v287 - 8);
  v27 = *(v285 + 64);
  MEMORY[0x28223BE20](v287);
  v283 = &v250 - v28;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D788, &qword_23876D888);
  v286 = *(v288 - 8);
  v29 = *(v286 + 64);
  MEMORY[0x28223BE20](v288);
  v284 = &v250 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v322 = (&v250 - v33);
  v321 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v320 = *(v321 - 1);
  v34 = *(v320 + 64);
  MEMORY[0x28223BE20](v321);
  v282 = &v250 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D790, &qword_23876D890);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v334 = &v250 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v340 = &v250 - v40;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D798, &qword_23876D898);
  v316 = *(v318 - 8);
  v41 = *(v316 + 64);
  MEMORY[0x28223BE20](v318);
  v314 = &v250 - v42;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7A0, &qword_23876D8A0);
  v317 = *(v319 - 8);
  v43 = *(v317 + 64);
  MEMORY[0x28223BE20](v319);
  v315 = &v250 - v44;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7A8, &qword_23876D8A8);
  v332 = *(v333 - 8);
  v45 = v332[8];
  MEMORY[0x28223BE20](v333);
  v331 = &v250 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v339 = &v250 - v48;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7B0, &qword_23876D8B0);
  v49 = *(*(v313 - 8) + 64);
  MEMORY[0x28223BE20](v313);
  v280 = &v250 - v50;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7B8, &qword_23876D8B8);
  v273 = *(v276 - 8);
  v51 = *(v273 + 64);
  MEMORY[0x28223BE20](v276);
  v271 = &v250 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7C0, &qword_23876D8C0);
  v274 = *(v53 - 8);
  v275 = v53;
  v54 = *(v274 + 64);
  MEMORY[0x28223BE20](v53);
  v272 = &v250 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7C8, &qword_23876D8C8);
  v278 = *(v56 - 8);
  v279 = v56;
  v57 = *(v278 + 64);
  MEMORY[0x28223BE20](v56);
  v277 = &v250 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v312 = &v250 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7D0, &qword_23876D8D0);
  v268 = *(v61 - 8);
  v269 = v61;
  v62 = *(v268 + 64);
  MEMORY[0x28223BE20](v61);
  v253 = &v250 - v63;
  v64 = type metadata accessor for OrderDetailsFulfillment(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v252 = &v250 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v251 = &v250 - v68;
  v69 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v266 = *(v69 - 8);
  v267 = v69;
  v70 = *(v266 + 64);
  MEMORY[0x28223BE20](v69);
  v250 = &v250 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7D8, &qword_23876D8D8);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v270 = &v250 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v311 = &v250 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v265 = &v250 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v308 = &v250 - v81;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7E0, &qword_23876D8E0);
  v82 = *(*(v307 - 8) + 64);
  MEMORY[0x28223BE20](v307);
  v310 = &v250 - v83;
  v309 = type metadata accessor for OrderDetailsNoFulfillments(0);
  v84 = *(*(v309 - 8) + 64);
  MEMORY[0x28223BE20](v309);
  v264 = &v250 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v263 = &v250 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v89 = *(*(v305 - 8) + 64);
  MEMORY[0x28223BE20](v305);
  v306 = &v250 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7E8, &qword_23876D8E8);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v330 = &v250 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v338 = &v250 - v95;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7F0, &qword_23876D8F0);
  v301 = *(v303 - 8);
  v96 = *(v301 + 64);
  MEMORY[0x28223BE20](v303);
  v299 = &v250 - v97;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7F8, &qword_23876D8F8);
  v302 = *(v304 - 8);
  v98 = *(v302 + 64);
  MEMORY[0x28223BE20](v304);
  v300 = &v250 - v99;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D800, &qword_23876D900);
  v328 = *(v329 - 8);
  v100 = v328[8];
  MEMORY[0x28223BE20](v329);
  v327 = &v250 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v337 = &v250 - v103;
  v281 = type metadata accessor for OrderDetails_iOS(0);
  v298 = *(v281 - 8);
  v104 = *(v298 + 64);
  MEMORY[0x28223BE20](v281);
  v105 = &v250 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D808, &qword_23876D908);
  v107 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v326 = &v250 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v343 = &v250 - v110;
  sub_23875ED50();
  v323 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v325 = type metadata accessor for OrderDetails.ViewModel(0);
  sub_23852FA60(a1 + *(v325 + 24), v343, type metadata accessor for OrderDetailsHeader.ViewModel);
  v111 = sub_23875E4A0();
  v113 = v112;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, &v250 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v114 = (*(v298 + 80) + 16) & ~*(v298 + 80);
  v115 = swift_allocObject();
  sub_23852EDFC(v105, v115 + v114, type metadata accessor for OrderDetails_iOS);

  v117 = (v343 + *(v106 + 36));
  *v117 = sub_23853216C;
  v117[1] = v115;
  v117[2] = v111;
  v117[3] = v113;
  v118 = a1;
  MEMORY[0x28223BE20](v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D810, &qword_23876D910);
  sub_238532254(&qword_27DF0D818, &qword_27DF0D810, &qword_23876D910, sub_23853218C);
  v119 = v299;
  sub_23875D9C0();
  v120 = sub_23843A3E8(&qword_27DF0D838, &qword_27DF0D7F0, &qword_23876D8F0);
  v121 = v300;
  v122 = v303;
  sub_23875DB70();
  (*(v301 + 8))(v119, v122);
  *&v380 = v122;
  *(&v380 + 1) = v120;
  swift_getOpaqueTypeConformance2();
  v123 = v304;
  sub_23875DD80();
  (*(v302 + 8))(v121, v123);
  v124 = v325;
  v125 = v306;
  sub_23852FA60(a1 + *(v325 + 20), v306, type metadata accessor for OrderDetails.FulfillmentsViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v126 = *(v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48));
    v127 = v125;
    v128 = v308;
    sub_2384396E4(v127, v308, &qword_27DF0D580, &qword_23876D538);
    v129 = v128;
    v130 = v265;
    sub_23843981C(v129, v265, &qword_27DF0D580, &qword_23876D538);
    if ((*(v266 + 48))(v130, 1, v267) == 1)
    {
      sub_238439884(v130, &qword_27DF0D580, &qword_23876D538);
      v131 = 1;
      v132 = v311;
    }

    else
    {
      v138 = v250;
      sub_23852EDFC(v130, v250, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      v139 = v251;
      sub_23852FA60(v138, v251, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      v140 = *(v126 + 16) == 0;
      if (*(v126 + 16))
      {
        v141 = 0x4028000000000000;
      }

      else
      {
        v141 = 0;
      }

      v142 = v252;
      sub_23852FA60(v139, v252, type metadata accessor for OrderDetailsFulfillment);
      v143 = v253;
      sub_23852FA60(v142, v253, type metadata accessor for OrderDetailsFulfillment);
      v144 = v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D960, &qword_23876DA10) + 48);
      *v144 = v141;
      *(v144 + 8) = 0;
      *(v144 + 9) = v140;
      sub_23852FAC8(v139, type metadata accessor for OrderDetailsFulfillment);
      sub_23852FAC8(v138, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      sub_23852FAC8(v142, type metadata accessor for OrderDetailsFulfillment);
      v132 = v311;
      sub_2384396E4(v143, v311, &qword_27DF0D7D0, &qword_23876D8D0);
      v131 = 0;
    }

    v145 = (*(v268 + 56))(v132, v131, 1, v269);
    MEMORY[0x28223BE20](v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D840, &qword_23876D920);
    sub_238532254(&qword_27DF0D848, &qword_27DF0D840, &qword_23876D920, sub_2385322D0);
    v146 = v271;
    sub_23875D9C0();

    v147 = sub_23843A3E8(&qword_27DF0D890, &qword_27DF0D7B8, &qword_23876D8B8);
    v148 = v272;
    v149 = v276;
    sub_23875DB70();
    (*(v273 + 8))(v146, v149);
    *&v380 = v149;
    *(&v380 + 1) = v147;
    swift_getOpaqueTypeConformance2();
    v150 = v312;
    v151 = v275;
    sub_23875DD80();
    (*(v274 + 8))(v148, v151);
    v152 = v270;
    sub_23843981C(v132, v270, &qword_27DF0D7D8, &qword_23876D8D8);
    v306 = v118;
    v153 = v277;
    v154 = v278;
    v155 = *(v278 + 16);
    v156 = v279;
    v155(v277, v150, v279);
    v157 = v280;
    sub_23843981C(v152, v280, &qword_27DF0D7D8, &qword_23876D8D8);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D898, &qword_23876D958);
    v155((v157 + *(v158 + 48)), v153, v156);
    v159 = *(v154 + 8);
    v159(v153, v156);
    sub_238439884(v152, &qword_27DF0D7D8, &qword_23876D8D8);
    sub_23843981C(v157, v310, &qword_27DF0D7B0, &qword_23876D8B0);
    swift_storeEnumTagMultiPayload();
    sub_238530E40(&qword_27DF0D8A0, type metadata accessor for OrderDetailsNoFulfillments);
    sub_23843A3E8(&qword_27DF0D8A8, &qword_27DF0D7B0, &qword_23876D8B0);
    sub_23875D1B0();
    sub_238439884(v157, &qword_27DF0D7B0, &qword_23876D8B0);
    v159(v312, v156);
    v118 = v306;
    sub_238439884(v311, &qword_27DF0D7D8, &qword_23876D8D8);
    v136 = sub_238439884(v308, &qword_27DF0D580, &qword_23876D538);
    v137 = v336;
    v124 = v325;
  }

  else
  {
    v133 = v125;
    v134 = v263;
    sub_23852EDFC(v133, v263, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    v135 = v264;
    sub_23852FA60(v134, v264, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    sub_23852FA60(v135, v310, type metadata accessor for OrderDetailsNoFulfillments);
    swift_storeEnumTagMultiPayload();
    sub_238530E40(&qword_27DF0D8A0, type metadata accessor for OrderDetailsNoFulfillments);
    sub_23843A3E8(&qword_27DF0D8A8, &qword_27DF0D7B0, &qword_23876D8B0);
    sub_23875D1B0();
    sub_23852FAC8(v135, type metadata accessor for OrderDetailsNoFulfillments);
    v136 = sub_23852FAC8(v134, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    v137 = v336;
  }

  MEMORY[0x28223BE20](v136);
  type metadata accessor for OrderDetailsInfo(0);
  sub_238530E40(&qword_27DF0D8B0, type metadata accessor for OrderDetailsInfo);
  v160 = v314;
  sub_23875D9C0();
  v161 = sub_23843A3E8(&qword_27DF0D8B8, &qword_27DF0D798, &qword_23876D898);
  v162 = v315;
  v163 = v318;
  sub_23875DB70();
  (*(v316 + 8))(v160, v163);
  *&v380 = v163;
  *(&v380 + 1) = v161;
  swift_getOpaqueTypeConformance2();
  v164 = v319;
  sub_23875DD80();
  (*(v317 + 8))(v162, v164);
  v165 = v322;
  sub_23843981C(v118 + v124[8], v322, &qword_27DF0D530, &qword_23876D508);
  if ((*(v320 + 48))(v165, 1, v321) == 1)
  {
    sub_238439884(v165, &qword_27DF0D530, &qword_23876D508);
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C0, &qword_23876D960);
    v167 = (*(*(v166 - 8) + 56))(v340, 1, 1, v166);
  }

  else
  {
    v168 = v282;
    v169 = sub_23852EDFC(v165, v282, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);
    MEMORY[0x28223BE20](v169);
    type metadata accessor for OrderDetailsReturnInfoSection(0);
    sub_238530E40(&qword_27DF0D950, type metadata accessor for OrderDetailsReturnInfoSection);
    v170 = v283;
    sub_23875D9C0();
    v171 = sub_23843A3E8(&qword_27DF0D958, &qword_27DF0D780, &qword_23876D880);
    v172 = v284;
    v173 = v287;
    sub_23875DB70();
    (*(v285 + 8))(v170, v173);
    *&v380 = v173;
    *(&v380 + 1) = v171;
    swift_getOpaqueTypeConformance2();
    v174 = v340;
    v175 = v288;
    sub_23875DD80();
    (*(v286 + 8))(v172, v175);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C0, &qword_23876D960);
    (*(*(v176 - 8) + 56))(v174, 0, 1, v176);
    v167 = sub_23852FAC8(v168, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);
  }

  v177 = *(v118 + v124[13]);
  if ((v177 & 1) != 0 || !*(*(v118 + v124[7]) + 16))
  {
    v183 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_23853250C();
    v178 = v257;
    sub_23875D9C0();
    v179 = sub_23843A3E8(&qword_27DF0D918, &qword_27DF0D768, &qword_23876D868);
    v180 = v258;
    v181 = v261;
    sub_23875DB70();
    (*(v259 + 8))(v178, v181);
    *&v380 = v181;
    *(&v380 + 1) = v179;
    swift_getOpaqueTypeConformance2();
    v182 = v262;
    sub_23875DD80();
    (*(v260 + 8))(v180, v182);
    v183 = 0;
  }

  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D920, &qword_23876D990);
  v185 = 1;
  v186 = (*(*(v184 - 8) + 56))(v342, v183, 1, v184);
  v187 = v118 + v124[14];
  if (*v187)
  {
    v188 = *(v187 + 8);
    MEMORY[0x28223BE20](v186);
    sub_2385328A4();
    v189 = v292;
    sub_23875D9C0();
    v190 = sub_23843A3E8(&qword_27DF0D948, &qword_27DF0D750, &unk_23876D850);
    v191 = v293;
    v192 = v296;
    sub_23875DB70();
    (*(v294 + 8))(v189, v192);
    *&v380 = v192;
    *(&v380 + 1) = v190;
    swift_getOpaqueTypeConformance2();
    v193 = v297;
    sub_23875DD80();
    (*(v295 + 8))(v191, v193);
    v185 = 0;
  }

  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D928, &qword_23876D998);
  (*(*(v194 - 8) + 56))(v137, v185, 1, v194);
  LODWORD(v325) = sub_23875D770();
  if (!v177)
  {
    goto LABEL_30;
  }

  v195 = v118 + *(v281 + 24);
  v196 = *v195;
  if (*(v195 + 16) != 1)
  {
    v197 = *(v195 + 8);

    sub_23875EFF0();
    v198 = sub_23875D730();
    sub_23875C110();

    v199 = v254;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238530F7C(v196, v197, 0);
    (*(v255 + 8))(v199, v256);
  }

  v200 = v289;
  sub_238758E10();
  v201 = sub_238757A50();
  (*(v290 + 8))(v200, v291);
  if (v201)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v202 = qword_2814F1B90;
    v203 = sub_23875EA50();
    v204 = sub_23875EA50();
    v205 = sub_23875EA50();
    v206 = [v202 localizedStringForKey:v203 value:v204 table:v205];

    v207 = sub_23875EA80();
    v209 = v208;

    *&v380 = v207;
    *(&v380 + 1) = v209;
    sub_2384397A8();
    v210 = sub_23875DAA0();
    v212 = v211;
    v214 = v213;
    v216 = v215;
    KeyPath = swift_getKeyPath();
    v218 = sub_23875D440();
    v219 = sub_23875D970();
    v220 = swift_getKeyPath();
    v214 &= 1u;
    LOBYTE(v344) = v214;
    sub_23875E4A0();
    sub_23875C9C0();
    *&v380 = sub_23875E020();
    v221 = sub_23875E2D0();
    *&v368 = v210;
    *(&v368 + 1) = v212;
    LOBYTE(v369) = v214;
    *(&v369 + 1) = v216;
    *&v370 = KeyPath;
    BYTE8(v370) = 1;
    HIDWORD(v370) = v218;
    *&v371 = v220;
    *(&v371 + 1) = v219;
    v376 = v360;
    v377 = v361;
    v378 = v362;
    v372 = v356;
    v373 = v357;
    v375 = v359;
    v374 = v358;
    v379 = v221;
    nullsub_1(&v368);
    v388 = v376;
    v389 = v377;
    v390 = v378;
    v391 = v379;
    v384 = v372;
    v385 = v373;
    v386 = v374;
    v387 = v375;
    v380 = v368;
    v381 = v369;
    v382 = v370;
    v383 = v371;
    v137 = v336;
  }

  else
  {
LABEL_30:
    sub_238532874(&v380);
  }

  v222 = v326;
  sub_23843981C(v343, v326, &qword_27DF0D808, &qword_23876D908);
  v322 = v328[2];
  v223 = v327;
  (v322)(v327, v337, v329);
  v224 = v330;
  sub_23843981C(v338, v330, &qword_27DF0D7E8, &qword_23876D8E8);
  v321 = v332[2];
  v225 = v331;
  v321(v331, v339, v333);
  v226 = v334;
  sub_23843981C(v340, v334, &qword_27DF0D790, &qword_23876D890);
  v227 = v335;
  sub_23843981C(v342, v335, &qword_27DF0D778, &qword_23876D878);
  sub_23843981C(v137, v341, &qword_27DF0D760, &qword_23876D860);
  v352 = v388;
  v353 = v389;
  v354 = v390;
  v355 = v391;
  v348 = v384;
  v349 = v385;
  v350 = v386;
  v351 = v387;
  v344 = v380;
  v345 = v381;
  v346 = v382;
  v347 = v383;
  v228 = v324;
  sub_23843981C(v222, v324, &qword_27DF0D808, &qword_23876D908);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D930, &qword_23876D9A0);
  v230 = v223;
  v231 = v329;
  (v322)(v228 + v229[12], v230, v329);
  sub_23843981C(v224, v228 + v229[16], &qword_27DF0D7E8, &qword_23876D8E8);
  v232 = v225;
  v233 = v333;
  v321((v228 + v229[20]), v232, v333);
  sub_23843981C(v226, v228 + v229[24], &qword_27DF0D790, &qword_23876D890);
  sub_23843981C(v227, v228 + v229[28], &qword_27DF0D778, &qword_23876D878);
  sub_23843981C(v341, v228 + v229[32], &qword_27DF0D760, &qword_23876D860);
  v234 = v228 + v229[36];
  *v234 = v325;
  *(v234 + 8) = 0u;
  *(v234 + 24) = 0u;
  *(v234 + 40) = 1;
  v235 = v229[40];
  v236 = v353;
  v365 = v353;
  v364 = v352;
  v237 = v348;
  v238 = v349;
  v360 = v348;
  v361 = v349;
  v239 = v350;
  v240 = v351;
  v362 = v350;
  v363 = v351;
  v241 = v344;
  v242 = v345;
  v356 = v344;
  v357 = v345;
  v243 = v346;
  v244 = v347;
  v358 = v346;
  v359 = v347;
  v245 = v354;
  v366 = v354;
  v246 = v228 + v235;
  *(v246 + 128) = v352;
  *(v246 + 144) = v236;
  *(v246 + 160) = v245;
  *(v246 + 64) = v237;
  *(v246 + 80) = v238;
  *(v246 + 96) = v239;
  *(v246 + 112) = v240;
  *v246 = v241;
  *(v246 + 16) = v242;
  v367 = v355;
  *(v246 + 176) = v355;
  *(v246 + 32) = v243;
  *(v246 + 48) = v244;
  sub_23843981C(&v356, &v368, &qword_27DF0D938, &qword_23876D9A8);
  sub_238439884(v336, &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v342, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v340, &qword_27DF0D790, &qword_23876D890);
  v247 = v332[1];
  v247(v339, v233);
  sub_238439884(v338, &qword_27DF0D7E8, &qword_23876D8E8);
  v248 = v328[1];
  v248(v337, v231);
  sub_238439884(v343, &qword_27DF0D808, &qword_23876D908);
  v376 = v352;
  v377 = v353;
  v378 = v354;
  v379 = v355;
  v372 = v348;
  v373 = v349;
  v374 = v350;
  v375 = v351;
  v368 = v344;
  v369 = v345;
  v370 = v346;
  v371 = v347;
  sub_238439884(&v368, &qword_27DF0D938, &qword_23876D9A8);
  sub_238439884(v341, &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v335, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v334, &qword_27DF0D790, &qword_23876D890);
  v247(v331, v233);
  sub_238439884(v330, &qword_27DF0D7E8, &qword_23876D8E8);
  v248(v327, v231);
  sub_238439884(v326, &qword_27DF0D808, &qword_23876D908);
}

uint64_t sub_238522818@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  v20 = sub_23875E020();
  sub_23852FA60(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_23852EDFC(v6, v22 + v21, type metadata accessor for OrderDetails_iOS);
  v23 = (v22 + ((v21 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v15;
  v23[2] = v17;
  v23[3] = v19;
  v26[7] = v20;
  v26[8] = sub_238533B6C;
  v26[9] = v22;
  v26[10] = 0;
  v26[11] = 0;
  v26[3] = v13;
  v26[4] = v15;
  v26[5] = v17;
  v26[6] = v19;
  sub_23852FA60(a1, v6, type metadata accessor for OrderDetails_iOS);
  v24 = swift_allocObject();
  sub_23852EDFC(v6, v24 + v21, type metadata accessor for OrderDetails_iOS);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238530E40(&qword_27DF0C7A0, type metadata accessor for CGRect);
  sub_23875DF10();
}

uint64_t sub_238522BA8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v3 = v2[3];
  v4 = v2[1];
  v18 = v2[2];
  v19 = v3;
  v5 = v2[3];
  v20 = v2[4];
  v6 = v2[1];
  v16 = *v2;
  v17 = v6;
  v14 = v2[4];
  v21 = *(v2 + 10);
  v15 = *(v2 + 10);
  sub_23843981C(&v16, v22, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v8 = v16;
  v9 = v17;
  sub_23875E1C0();
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  sub_238439884(v22, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_238522D7C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = a2[1];
  v11 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24 = v4[4];
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  v18 = v4[4];
  v25 = *(v4 + 10);
  v19 = *(v4 + 10);
  sub_23843981C(&v20, v26, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  sub_23875E1C0();
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27 = v17;
  v26[0] = v12;
  v26[1] = v13;
  sub_238439884(v26, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_238522F44(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + *(type metadata accessor for OrderDetails.ViewModel(0) + 36));
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D990, &qword_23876DA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D828, &qword_23876D918);
  sub_23843A3E8(&qword_27DF0D998, &qword_27DF0D990, &qword_23876DA88);
  sub_23853218C();
  sub_23875E370();
}

uint64_t sub_2385230BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsReturn(0);
  sub_238530E40(&qword_27DF0D830, type metadata accessor for OrderDetailsReturn);
  sub_23875E3D0();
}

uint64_t sub_2385231E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, a2, type metadata accessor for OrderDetailsReturn.ViewModel);
  v4 = type metadata accessor for OrderDetailsReturn(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  KeyPath = swift_getKeyPath();

  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_238523330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetails_iOS(0);
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

  v10[1] = a1;
  sub_23852FA60(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23852EDFC(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderDetails_iOS);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D588, &qword_23876D540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D858, &qword_23876D928);
  sub_23843A3E8(&qword_27DF0D968, &qword_27DF0D588, &qword_23876D540);
  sub_2385322D0();
  sub_238530E40(&qword_27DF0D970, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
  sub_23875E380();
}

uint64_t sub_2385235A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v18 - 2) = a2;
  *(&v18 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D888, &unk_23876D940);
  sub_23843A3E8(&qword_27DF0D880, &qword_27DF0D888, &unk_23876D940);
  sub_23875E3D0();
  sub_23875CE90();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D868, &qword_23876D930) + 36);
  (*(v7 + 16))(a3 + v12, v10, v6);
  v13 = *(v7 + 56);
  v13(a3 + v12, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D858, &qword_23876D928) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v15 + v16, v10, v6);
  v13(v15 + v16, 0, 1, v6);

  *v15 = KeyPath;
  return result;
}

uint64_t sub_238523848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D978, &qword_23876DA50);
  return sub_2385238A8(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_2385238A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v47 = a1;
  v52 = a3;
  v3 = type metadata accessor for OrderDetailsCollapsedFulfillment(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v44 - v14;
  v15 = type metadata accessor for OrderNavigationDestination(0);
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D980, &qword_23876DA58);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v44 - v28;
  sub_23875ED50();
  v48 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = type metadata accessor for OrderDetails.ViewModel(0);
  v31 = v47;
  if (*(v47 + *(v30 + 52)))
  {
    (*(v12 + 56))(v29, 1, 1, v49);
    v32 = v50;
  }

  else
  {
    v33 = *(v30 + 48);
    v34 = sub_23875A710();
    (*(*(v34 - 8) + 16))(v22, v31 + v33, v34);
    v32 = v50;
    v35 = v50[1];
    v36 = &v22[*(v19 + 20)];
    *v36 = *v50;
    *(v36 + 1) = v35;
    sub_23852FA60(v22, v18, type metadata accessor for FetchedOrderDetailsDestination);
    swift_storeEnumTagMultiPayload();
    sub_23852FA60(v18, v11, type metadata accessor for OrderNavigationDestination);
    (*(v45 + 56))(v11, 0, 1, v15);
    sub_238530E40(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

    v37 = v46;
    sub_23875C760();
    sub_23852FAC8(v18, type metadata accessor for OrderNavigationDestination);
    sub_23852FAC8(v22, type metadata accessor for FetchedOrderDetailsDestination);
    v38 = v49;
    *(v37 + *(v49 + 36)) = 0;
    sub_2384396E4(v37, v29, &qword_27DF0BC20, &qword_238769430);
    (*(v12 + 56))(v29, 0, 1, v38);
  }

  v39 = v51;
  sub_23852FA60(v32, v51, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
  sub_23843981C(v29, v26, &qword_27DF0D980, &qword_23876DA58);
  v40 = v53;
  sub_23852FA60(v39, v53, type metadata accessor for OrderDetailsCollapsedFulfillment);
  v41 = v52;
  sub_23843981C(v26, v52, &qword_27DF0D980, &qword_23876DA58);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D988, &qword_23876DA60);
  sub_23852FA60(v40, v41 + *(v42 + 48), type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_23852FAC8(v39, type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_238439884(v29, &qword_27DF0D980, &qword_23876DA58);
  sub_23852FAC8(v40, type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_238439884(v26, &qword_27DF0D980, &qword_23876DA58);
}

uint64_t sub_238523ED0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_238523F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for OrderDetails.ViewModel(0);
  sub_23852FA60(a1 + *(v4 + 40), a2, type metadata accessor for OrderDetailsInfo.ViewModel);
}

uint64_t sub_23852402C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, a2, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);
}

uint64_t sub_2385240EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  MEMORY[0x28223BE20](v17);
  v24[-2] = a1;
  v24[0] = v14;
  v24[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D908, &unk_23876D980);
  sub_238532714();
  sub_238532768();
  sub_23875E3B0();
  sub_23875CE90();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8E0, &qword_23876D970) + 36);
  (*(v5 + 16))(a2 + v18, v8, v4);
  v19 = *(v5 + 56);
  v19(a2 + v18, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v21 + v22, v8, v4);
  v19(v21 + v22, 0, 1, v4);

  *v21 = KeyPath;
  return result;
}

double sub_238524454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for OrderDetails.ViewModel(0) + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  sub_23875E1A0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_238524544@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_238524620(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6E8, &qword_23876D7B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D290();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6F8, &qword_23876D7B8);
  sub_238530E98();
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF0D6F0, &qword_27DF0D6E8, &qword_23876D7B0);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_238524864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrderDetails_iOS(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D718, &qword_23876D7D0) + 44);
  *v6 = sub_23875CE60();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D720, &qword_23876D7D8);
  sub_238524B30(a1, v6 + *(v7 + 44));

  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v11 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v12 = swift_allocObject();
  sub_23852EDFC(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OrderDetails_iOS);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6F8, &qword_23876D7B8);
  v14 = (a2 + *(result + 36));
  *v14 = sub_238530F88;
  v14[1] = v12;
  v14[2] = v8;
  v14[3] = v10;
  return result;
}

uint64_t sub_238524B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D730, &qword_23876D800);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v48 = &v45 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D738, &qword_23876D808);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D740, &qword_23876D810);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v45 - v17;
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, v11, type metadata accessor for MerchantImage.ViewModel);
  v18 = type metadata accessor for MerchantImage(0);
  v11[*(v18 + 20)] = 0;
  v19 = a1;
  v20 = *(v18 + 24);
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
  v21 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v23 = &v11[*(v8 + 36)];
  v24 = type metadata accessor for OrderImageStyleModifier();
  *&v23[*(v24 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v23[*(v24 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v23 = xmmword_2387692C0;
  *(v23 + 2) = 0;
  v23[24] = 1;
  *(v23 + 4) = v21;
  v23[40] = 0;
  v25 = v19 + *(type metadata accessor for OrderDetails_iOS(0) + 20);
  v26 = *(v25 + 48);
  *&v64[32] = *(v25 + 32);
  *&v64[48] = v26;
  *&v64[64] = *(v25 + 64);
  *&v64[80] = *(v25 + 80);
  v27 = *(v25 + 16);
  *v64 = *v25;
  *&v64[16] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  if ((v63[32] & 1) != 0 || (v63[72] & 1) != 0 || (v28 = 1.0, *&v63[48] + *&v63[64] >= *&v63[8] + *&v63[24]))
  {
    v28 = 0.0;
  }

  v29 = v48;
  sub_2384396E4(v11, v48, &qword_27DF0C7D0, &unk_23876B3E0);
  *(v29 + *(v46 + 36)) = v28;
  v30 = *(v25 + 48);
  *&v64[32] = *(v25 + 32);
  *&v64[48] = v30;
  *&v64[64] = *(v25 + 64);
  *&v64[80] = *(v25 + 80);
  v31 = *(v25 + 16);
  *v64 = *v25;
  *&v64[16] = v31;
  sub_23875E1B0();
  v32 = 0;
  if ((v63[32] & 1) == 0 && ((v63[72] & 1) != 0 || *&v63[48] + *&v63[64] >= *&v63[8] + *&v63[24]))
  {
    v32 = *&v63[24];
  }

  v33 = v50;
  v34 = sub_2384396E4(v29, v50, &qword_27DF0D730, &qword_23876D800);
  v35 = (v33 + *(v47 + 36));
  *v35 = 0;
  v35[1] = v32;
  v36 = MEMORY[0x23EE62FD0](v34, 0.5, 1.0, 0.0);
  v37 = *(v25 + 48);
  *&v64[32] = *(v25 + 32);
  *&v64[48] = v37;
  *&v64[64] = *(v25 + 64);
  *&v64[80] = *(v25 + 80);
  v38 = *(v25 + 16);
  *v64 = *v25;
  *&v64[16] = v38;
  sub_23875E1B0();
  v58[0] = v62[0];
  *(v58 + 9) = *(v62 + 9);
  v56 = v60;
  v57 = v61;
  v55 = v59;
  *v63 = v36;
  *&v63[40] = v61;
  *&v63[56] = v62[0];
  *&v63[65] = *(v62 + 9);
  *&v63[8] = v59;
  *&v63[24] = v60;
  v39 = v52;
  sub_2384396E4(v33, v52, &qword_27DF0D738, &qword_23876D808);
  v40 = v39 + *(v49 + 36);
  v41 = *&v63[48];
  *(v40 + 32) = *&v63[32];
  *(v40 + 48) = v41;
  *(v40 + 64) = *&v63[64];
  v42 = *&v63[16];
  *v40 = *v63;
  *(v40 + 16) = v42;
  v43 = v55;
  *&v64[24] = v56;
  *&v64[40] = v57;
  *&v64[56] = v58[0];
  *&v64[65] = *(v58 + 9);
  *(v40 + 80) = v63[80];
  *v64 = v36;
  *&v64[8] = v43;
  sub_23843981C(v63, &v54, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v64, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v39, v53, &qword_27DF0D740, &qword_23876D810);
}

uint64_t sub_2385251CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  v20 = sub_23875E020();
  sub_23852FA60(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_23852EDFC(v6, v22 + v21, type metadata accessor for OrderDetails_iOS);
  v23 = (v22 + ((v21 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v15;
  v23[2] = v17;
  v23[3] = v19;
  v26[7] = v20;
  v26[8] = sub_238530FA0;
  v26[9] = v22;
  v26[10] = 0;
  v26[11] = 0;
  v26[3] = v13;
  v26[4] = v15;
  v26[5] = v17;
  v26[6] = v19;
  sub_23852FA60(a1, v6, type metadata accessor for OrderDetails_iOS);
  v24 = swift_allocObject();
  sub_23852EDFC(v6, v24 + v21, type metadata accessor for OrderDetails_iOS);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238530E40(&qword_27DF0C7A0, type metadata accessor for CGRect);
  sub_23875DF10();
}

uint64_t sub_23852555C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v3 = v2[3];
  v4 = v2[1];
  v18 = v2[2];
  v19 = v3;
  v5 = v2[3];
  v20 = v2[4];
  v6 = v2[1];
  v16 = *v2;
  v17 = v6;
  v14 = v2[4];
  v21 = *(v2 + 10);
  v15 = *(v2 + 10);
  sub_23843981C(&v16, v22, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v8 = v16;
  v9 = v17;
  sub_23875E1C0();
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  sub_238439884(v22, &qword_27DF0D728, &unk_23876D7F0);
}

uint64_t sub_238525730(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = a2[1];
  v11 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24 = v4[4];
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  v18 = v4[4];
  v25 = *(v4 + 10);
  v19 = *(v4 + 10);
  sub_23843981C(&v20, v26, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  sub_23875E1C0();
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27 = v17;
  v26[0] = v12;
  v26[1] = v13;
  sub_238439884(v26, &qword_27DF0D728, &unk_23876D7F0);
}

BOOL sub_2385258F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 72);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (v6)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v12)
      {
        return 0;
      }

      v14.origin.x = v2;
      v14.origin.y = v3;
      v14.size.width = v4;
      v14.size.height = v5;
      v15.origin.x = v8;
      v15.origin.y = v9;
      v15.size.width = v10;
      v15.size.height = v11;
      if (!CGRectEqualToRect(v14, v15))
      {
        return 0;
      }
    }

    return 1;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    result = CGRectEqualToRect(*a1, *a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return 0;
}

void sub_2385259B8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v160 = a5;
  v164 = a3;
  v165 = a4;
  v9 = sub_238757700();
  v158 = *(v9 - 8);
  v159 = v9;
  v10 = *(v158 + 64);
  MEMORY[0x28223BE20](v9);
  v157 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v170 = &v150 - v14;
  v175 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v169 = *(v175 - 1);
  v15 = *(v169 + 64);
  MEMORY[0x28223BE20](v175);
  v166 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v172 = &v150 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v156 = &v150 - v21;
  v171 = sub_23875AC40();
  v174 = *(v171 - 8);
  v22 = *(v174 + 64);
  MEMORY[0x28223BE20](v171);
  v168 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OrderDetails.ViewModel(0);
  v25 = *(v24 + 32);
  v26 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v155 = v25;
  v154 = v26;
  v153 = v28;
  v152 = v27 + 56;
  (v28)(a6 + v25, 1, 1);
  v161 = v24;
  v162 = a6;
  v29 = (a6 + *(v24 + 56));
  *v29 = 0;
  v151 = v29;
  *(v29 + 8) = 0;
  v30 = a1;
  v31 = a2;
  v32 = [v31 merchant];
  v33 = [v32 logoName];

  if (v33)
  {
    v34 = sub_23875EA80();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = v162;
  *v162 = v34;
  v37[1] = v36;
  v38 = type metadata accessor for MerchantImage.ViewModel(0);
  v39 = v37 + *(v38 + 20);
  sub_238757DA0();
  v40 = [v31 merchant];
  v41 = [v40 displayName];

  v42 = sub_2387586A0();
  v44 = v43;

  v167 = v38;
  v45 = (v37 + *(v38 + 24));
  *v45 = v42;
  v45[1] = v44;
  v46 = v161;
  v47 = v161[5];
  v48 = v165;

  v49 = v30;
  v50 = v31;
  sub_2385266A4(v49, v50, v164, v48, v37 + v47);
  v51 = (v37 + v46[6]);
  v52 = v49;
  v53 = v50;
  v54 = [v53 &off_278A55290 + 7];
  v55 = [v54 displayName];

  v56 = sub_2387586A0();
  v58 = v57;

  *v51 = v56;
  v51[1] = v58;
  v173 = v52;
  v163 = v53;
  v59 = [v163 &off_278A55290 + 7];
  v60 = [v59 logoName];

  if (v60)
  {
    v61 = sub_23875EA80();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v65 = (v51 + *(v64 + 20));
  *v65 = v61;
  v65[1] = v63;
  v66 = v167;
  v67 = v65 + *(v167 + 20);
  v68 = v173;
  sub_238757DA0();
  v69 = v163;
  v70 = [v163 &off_278A55290 + 7];
  v71 = [v70 displayName];

  v72 = sub_2387586A0();
  v74 = v73;

  v75 = (v65 + *(v66 + 24));
  *v75 = v72;
  v75[1] = v74;
  v76 = [v69 createdDate];
  v77 = v51 + *(v64 + 24);
  sub_23875BBE0();

  v78 = sub_23875A540();
  v79 = v78;
  if (v78 >> 62)
  {
    v80 = sub_23875F3A0();
  }

  else
  {
    v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v166;
  v82 = v168;
  v83 = MEMORY[0x277D84F90];
  if (v80)
  {
    v176 = MEMORY[0x277D84F90];
    sub_2385FED48(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v84 = 0;
    v85 = v176;
    do
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x23EE63F70](v84, v79);
      }

      else
      {
        v86 = *(v79 + 8 * v84 + 32);
      }

      v87 = v86;
      sub_2387598D0();

      v176 = v85;
      v89 = *(v85 + 16);
      v88 = *(v85 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_2385FED48(v88 > 1, v89 + 1, 1);
        v85 = v176;
      }

      ++v84;
      *(v85 + 16) = v89 + 1;
      (*(v174 + 32))(v85 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v89, v82, v171);
    }

    while (v80 != v84);

    v90 = v162;
    v81 = v166;
    v83 = MEMORY[0x277D84F90];
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
    v90 = v162;
  }

  *(v90 + v161[7]) = v85;
  v91 = [v163 returnInfo];
  if (v91)
  {
    v92 = v156;
    sub_238553E1C(v91, v160 & 1, v156);
    v153(v92, 0, 1, v154);
    sub_2385309FC(v92, v90 + v155, &qword_27DF0D530, &qword_23876D508);
  }

  v93 = sub_23875A580();
  v94 = v93;
  if (v93 >> 62)
  {
    v95 = sub_23875F3A0();
    if (v95)
    {
      goto LABEL_24;
    }

LABEL_41:

    v97 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v95)
  {
    goto LABEL_41;
  }

LABEL_24:
  v176 = v83;
  sub_2385FED04(0, v95 & ~(v95 >> 63), 0);
  if (v95 < 0)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v96 = 0;
  v97 = v176;
  v167 = v94 & 0xC000000000000001;
  v168 = v95;
  v171 = v94;
  do
  {
    v174 = v97;
    if (v167)
    {
      v98 = MEMORY[0x23EE63F70](v96, v94);
    }

    else
    {
      v98 = *(v94 + 8 * v96 + 32);
    }

    v99 = v98;
    v100 = v175[6];
    v101 = sub_23875BC40();
    v102 = *(*(v101 - 8) + 56);
    v102(v81 + v100, 1, 1, v101);
    v103 = v173;
    sub_238758D00();
    sub_23875AD60();
    v104 = sub_238758D10();
    if (v104 >> 62)
    {
      v156 = v104;
      v105 = sub_23875F3A0();
    }

    else
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v81 + v175[5]) = v105;
    v106 = [v99 dropOffDate];
    if (v106)
    {
      v107 = v170;
      v108 = v106;
      sub_23875BBE0();

      v81 = v166;
      v109 = 0;
    }

    else
    {
      v109 = 1;
      v107 = v170;
    }

    v102(v107, v109, 1, v101);
    sub_2385309FC(v107, v81 + v100, &qword_27DF12E00, &unk_238763FC0);
    v110 = v175;
    v111 = v81 + v175[7];
    sub_238757D40();
    v112 = [v99 returnIdentifier];
    v113 = sub_23875EA80();
    v115 = v114;

    v116 = (v81 + v110[8]);
    *v116 = v113;
    v116[1] = v115;
    v117 = v172;
    sub_23852EDFC(v81, v172, type metadata accessor for OrderDetailsReturn.ViewModel);
    v97 = v174;
    v176 = v174;
    v119 = *(v174 + 16);
    v118 = *(v174 + 24);
    if (v119 >= v118 >> 1)
    {
      sub_2385FED04(v118 > 1, v119 + 1, 1);
      v117 = v172;
      v97 = v176;
    }

    ++v96;
    *(v97 + 16) = v119 + 1;
    sub_23852EDFC(v117, v97 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v119, type metadata accessor for OrderDetailsReturn.ViewModel);
    v94 = v171;
  }

  while (v168 != v96);

LABEL_42:
  *(v162 + v161[9]) = v97;
  v120 = sub_23875A4F0();
  v121 = *(v120 + 16);
  if (v121)
  {
    v122 = 0;
    while (v122 < *(v120 + 16))
    {
      v123 = *(v120 + 8 * v122 + 32);
      v124 = (v123 & 0x7FFFFFFFFFFFFFFFLL);
      v125 = sub_238759900();
      if (v165)
      {
        if (v125 == v164 && v126 == v165)
        {

          goto LABEL_58;
        }

        v128 = sub_23875F630();

        if (v128)
        {

LABEL_58:

          v131 = v158;
          v130 = v159;
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v122;

      if (v121 == v122)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_54:

  v129 = sub_23875A4F0();
  v131 = v158;
  v130 = v159;
  if (*(v129 + 16))
  {
    v123 = *(v129 + 32);
    v132 = (v123 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {

    v123 = 0xF000000000000007;
  }

LABEL_59:
  v133 = v161;
  v134 = v161[10];
  v135 = v173;
  v136 = v163;
  sub_23853095C(v123);
  v137 = v162;
  sub_23869D098(v135, v136, v123, (v162 + v134));
  v138 = v137 + v133[12];
  sub_238757D40();
  if (v160)
  {
    v139 = 0;
  }

  else
  {
    v139 = sub_238757DB0();
  }

  v141 = v161;
  v140 = v162;
  *(v162 + v161[11]) = v139 & 1;
  *(v140 + v141[13]) = v160 & 1;
  v142 = v157;
  (*(v131 + 104))(v157, *MEMORY[0x277CC64F0], v130);
  v143 = sub_2387576A0();
  (*(v131 + 8))(v142, v130);
  if (v143)
  {
    v144 = sub_238757D60();
    v145 = sub_238757DE0();
    v146 = sub_23870E94C(v144, v145, 0);
    v148 = v147;
    sub_238530974(v123);

    v149 = v151;
    *v151 = v146;
    *(v149 + 8) = v148;
  }

  else
  {
    sub_238530974(v123);
  }
}

size_t sub_2385266A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v509 = a3;
  v9 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v510 = &v434 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v493 = (&v434 - v14);
  v506 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v488 = *(v506 - 8);
  v15 = *(v488 + 64);
  MEMORY[0x28223BE20](v506);
  v505 = (&v434 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v434 - v18;
  v451 = sub_23875AF00();
  v450 = *(v451 - 8);
  v20 = *(v450 + 64);
  MEMORY[0x28223BE20](v451);
  v466 = &v434 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v440 = &v434 - v24;
  v470 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v449 = *(v470 - 8);
  v25 = *(v449 + 64);
  MEMORY[0x28223BE20](v470);
  v445 = (&v434 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v468 = &v434 - v29;
  v462 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v472 = *(v462 - 8);
  v30 = *(v472 + 64);
  MEMORY[0x28223BE20](v462);
  v441 = (&v434 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v465 = &v434 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v446 = &v434 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v467 = &v434 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v455 = &v434 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v461 = &v434 - v44;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v443 = *(v444 - 8);
  v45 = *(v443 + 64);
  MEMORY[0x28223BE20](v444);
  v442 = &v434 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v460 = &v434 - v48;
  v463 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v49 = *(*(v463 - 1) + 64);
  MEMORY[0x28223BE20](v463);
  v464 = &v434 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v447 = &v434 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v452 = &v434 - v55;
  v477 = sub_23875B940();
  v473 = *(v477 - 8);
  v56 = *(v473 + 64);
  MEMORY[0x28223BE20](v477);
  v437 = &v434 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v453 = &v434 - v59;
  v476 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v479 = *(v476 - 8);
  v60 = *(v479 + 64);
  MEMORY[0x28223BE20](v476);
  v459 = &v434 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D648, &unk_238779500);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v457 = &v434 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v458 = &v434 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v438 = &v434 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v456 = &v434 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v448 = (&v434 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v76);
  v78 = &v434 - v77;
  v475 = sub_23875B120();
  v474 = *(v475 - 8);
  v79 = *(v474 + 64);
  MEMORY[0x28223BE20](v475);
  v478 = &v434 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v81 = *(*(v484 - 1) + 64);
  MEMORY[0x28223BE20](v484);
  v485 = &v434 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = type metadata accessor for ProductImage.ViewModel(0);
  v83 = *(*(v511 - 8) + 64);
  MEMORY[0x28223BE20](v511);
  v504 = &v434 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v515 = &v434 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v518 = &v434 - v89;
  v90 = sub_23875AF90();
  v480 = *(v90 - 8);
  v91 = *(v480 + 64);
  MEMORY[0x28223BE20](v90);
  v516 = &v434 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v471 = &v434 - v94;
  MEMORY[0x28223BE20](v95);
  v499 = &v434 - v96;
  MEMORY[0x28223BE20](v97);
  v514 = &v434 - v98;
  MEMORY[0x28223BE20](v99);
  v517 = &v434 - v100;
  v513 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v498 = *(v513 - 8);
  v101 = *(v498 + 8);
  MEMORY[0x28223BE20](v513);
  v512 = &v434 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v500 = (&v434 - v104);
  v469 = 0;
  v483 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v105 = *(v483 - 8);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v483);
  v482 = &v434 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108 - 8);
  v481 = &v434 - v110;
  v111 = sub_23875A4F0();
  v112 = v111;
  v113 = *(v111 + 16);
  if (!v113)
  {

    v129 = v510;
    sub_238571530(a1, a2, v510);
    sub_23852EDFC(v129, a5, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  v495 = a1;
  v501 = a2;
  v439 = a5;
  if (!a4)
  {
    v114 = (*(v111 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    v509 = sub_238759900();
    a4 = v115;
  }

  v116 = sub_23875A4F0();
  v117 = sub_23852F55C(v116);

  v118 = 0;
  v119 = 0;
  v120 = 0;
  v520 = v117;
  while (1)
  {
    if ((*(v112 + 8 * v120 + 32) & 0x8000000000000000) != 0)
    {
      v121 = __OFADD__(v118++, 1);
      if (v121)
      {
        goto LABEL_145;
      }

      goto LABEL_6;
    }

    v121 = __OFADD__(v119++, 1);
    if (v121)
    {
      break;
    }

LABEL_6:
    if (v113 == ++v120)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v454 = v105;
  v487 = v19;
  v122 = 0;
  if (v119)
  {
    v123 = v118 == 0;
  }

  else
  {
    v123 = 1;
  }

  v124 = v123;
  v494 = v124;
  v125 = (v117 + 40);
  v510 = v90;
  while (1)
  {
    if (v122 >= *(v112 + 16))
    {
      goto LABEL_146;
    }

    v503 = v122;
    v116 = (*(v112 + 8 * v122 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    if (sub_238759900() == v509 && a4 == v126)
    {

      goto LABEL_29;
    }

    v128 = sub_23875F630();

    if (v128)
    {
      break;
    }

    v122 = (v503 + 1);
    v125 += 2;
    if (v113 == (v503 + 1))
    {

      (*(v454 + 56))(v481, 1, 1, v483);
      goto LABEL_110;
    }
  }

LABEL_29:
  v116 = v482;
  if (v503 >= *(v117 + 2))
  {
    goto LABEL_147;
  }

  v131 = *v125;
  v112 = (*v125 & 0x7FFFFFFFFFFFFFFFLL);
  v497 = v495;
  v436 = v501;
  v132 = sub_238759900();
  v133 = &v116[*(v483 + 24)];
  *v133 = v132;
  v133[1] = v134;
  v435 = v131;
  v135 = sub_238759910();
  v113 = v135;
  if (v135 >> 62)
  {
LABEL_148:
    v136 = sub_23875F3A0();
  }

  else
  {
    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v496 = v78;
  if (!v136)
  {

    v138 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v519 = MEMORY[0x277D84F90];
  result = sub_2385FEB6C(0, v136 & ~(v136 >> 63), 0);
  if (v136 < 0)
  {
    __break(1u);
    return result;
  }

  v434 = v112;
  v137 = 0;
  v138 = v519;
  v490 = v113 & 0xC000000000000001;
  v139 = (v480 + 16);
  v489 = (v480 + 8);
  v486 = xmmword_2387632F0;
  v492 = v113;
  v491 = v136;
  do
  {
    v509 = v138;
    if (v490)
    {
      v140 = MEMORY[0x23EE63F70](v137, v113);
    }

    else
    {
      v140 = *(v113 + 8 * v137 + 32);
    }

    v141 = v140;
    sub_238757DA0();
    v142 = [v141 title];
    v143 = sub_2387586A0();
    v507 = v144;
    v508 = v143;

    sub_238759200();
    v145 = [v141 quantity];
    v146 = [v141 image];
    if (v146)
    {
      v147 = v146;
      v502 = sub_23875EA80();
      v149 = v148;
    }

    else
    {
      v502 = 0;
      v149 = 0;
    }

    v150 = *v139;
    v151 = v514;
    (*v139)(v514, v517, v90);
    v152 = v139;
    v153 = v513;
    v154 = *(v513 + 20);
    v155 = sub_238758090();
    v156 = v512;
    (*(*(v155 - 8) + 56))(&v512[v154], 1, 1, v155);
    v157 = v507;
    *v156 = v508;
    v156[1] = v157;
    v158 = v156 + v154;
    v90 = v510;
    sub_23853098C(v518, v158);
    v159 = *(v153 + 24);
    v139 = v152;
    *(v156 + v159) = v145;
    v160 = v499;
    v150(v499, v151, v90);
    if (v149)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v161 = swift_allocObject();
      *(v161 + 16) = v486;
      *(v161 + 32) = v502;
      *(v161 + 40) = v149;
    }

    else
    {
      v161 = MEMORY[0x277D84F90];
    }

    v150(v515, v160, v90);
    if (*(v161 + 16) <= 4uLL)
    {

      v166 = *v489;
      (*v489)(v160, v90);
      v166(v514, v90);
      sub_238439884(v518, &unk_27DF0B080, &unk_2387662A0);
      v166(v517, v90);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v162 = swift_allocObject();
      v163 = _swift_stdlib_malloc_size(v162);
      v164 = v163 - 32;
      if (v163 < 32)
      {
        v164 = v163 - 17;
      }

      v162[2] = 4;
      v162[3] = 2 * (v164 >> 4);
      swift_arrayInitWithCopy();

      v165 = *v489;
      (*v489)(v160, v90);
      v165(v514, v90);
      sub_238439884(v518, &unk_27DF0B080, &unk_2387662A0);
      v165(v517, v90);

      v161 = v162;
    }

    v113 = v492;
    v167 = v491;
    v168 = v512;
    v169 = v515;
    *&v515[*(v511 + 20)] = v161;
    sub_23852EDFC(v169, v168 + *(v513 + 28), type metadata accessor for ProductImage.ViewModel);
    v170 = v500;
    sub_23852EDFC(v168, v500, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    v138 = v509;
    v519 = v509;
    v172 = *(v509 + 16);
    v171 = *(v509 + 24);
    v78 = v496;
    if (v172 >= v171 >> 1)
    {
      sub_2385FEB6C(v171 > 1, v172 + 1, 1);
      v170 = v500;
      v138 = v519;
    }

    ++v137;
    *(v138 + 16) = v172 + 1;
    sub_23852EDFC(v170, v138 + ((*(v498 + 80) + 32) & ~*(v498 + 80)) + *(v498 + 9) * v172, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  }

  while (v167 != v137);

  v116 = v482;
  v112 = v434;
LABEL_54:
  *&v116[*(v483 + 20)] = v138;
  v173 = v435;
  if ((v435 & 0x8000000000000000) != 0)
  {
    v192 = v497;
    v193 = v436;
    v194 = v112;
    sub_23875A7C0();
    sub_23875AC80();
    sub_23875A7B0();
    v195 = [v194 pickedUpDate];
    v518 = v192;
    if (v195)
    {
      v196 = v467;
      v197 = v195;
      sub_23875BBE0();

      v198 = 0;
    }

    else
    {
      v198 = 1;
      v196 = v467;
    }

    v264 = sub_23875BC40();
    (*(*(v264 - 8) + 56))(v196, v198, 1, v264);
    v265 = [v193 merchant];
    v266 = [v265 displayName];

    v517 = sub_2387586A0();
    v268 = v267;

    v269 = [v194 notes];
    if (v269)
    {
      v270 = v269;
      v492 = sub_2387586A0();
      v507 = v271;
    }

    else
    {
      v492 = 0;
      v507 = 0;
    }

    v272 = [v194 statusDescription];
    if (v272)
    {
      v273 = v272;
      v274 = sub_2387586A0();
      v512 = v275;
      v513 = v274;
    }

    else
    {
      v512 = 0;
      v513 = 0;
    }

    v276 = [v193 statusDescription];
    v514 = v268;
    if (v276)
    {
      v277 = v276;
      v278 = sub_2387586A0();
      v508 = v279;
      v509 = v278;
    }

    else
    {
      v508 = 0;
      v509 = 0;
    }

    v280 = [v194 displayName];
    v281 = sub_2387586A0();
    v283 = v282;

    v284 = [v194 address];
    v285 = [v194 displayName];
    sub_2387586A0();

    v286 = [v194 address];
    v287 = [v194 location];
    v288 = sub_23858B318(v287, v286);
    v502 = v281;
    v500 = v283;
    v499 = v284;
    if (v288)
    {
      v289 = v288;

      v290 = v441;
      *v441 = v289;
    }

    else
    {
      v291 = v438;
      sub_23858B494(v286, v438);

      v292 = v473;
      v293 = v477;
      if ((*(v473 + 48))(v291, 1, v477) == 1)
      {
        sub_238439884(v291, &qword_27DF0D040, &qword_2387676A0);
        v294 = 1;
        v295 = v465;
        v296 = v470;
        v297 = v462;
        v298 = v472;
LABEL_95:
        v302 = *(v298 + 56);
        v472 = v298 + 56;
        v498 = v302;
        v302(v295, v294, 1, v297);
        v303 = *(v296 + 28);
        v304 = sub_23875AEB0();
        v305 = v445;
        (*(*(v304 - 8) + 56))(v445 + v303, 1, 1, v304);
        v306 = *(v296 + 32);
        v307 = sub_23875B1D0();
        (*(*(v307 - 8) + 56))(v305 + v306, 1, 1, v307);
        v308 = v518;
        v309 = v193;
        v310 = v194;
        v311 = [v310 barcode];
        v312 = v296;
        v515 = v308;
        v518 = v310;
        if (v311)
        {
          v313 = v311;
          v314 = [v310 displayName];
          v315 = sub_2387586A0();
          v317 = v316;

          *v305 = v315;
          v305[1] = v317;
          v318 = v305 + *(v312 + 20);
          v497 = v313;
          sub_238758F70();
          v319 = [v310 address];
          v320 = v319;
          if (v319)
          {
            v321 = v309;
            v322 = v319;
            v323 = sub_23875F020();

            v324 = &unk_278A55000;
            if (v323)
            {

              v320 = 0;
            }
          }

          else
          {
            v321 = v309;
            v324 = &unk_278A55000;
          }

          v327 = v470;
          *(v305 + *(v470 + 24)) = v320;
          v328 = v455;
          v329 = v518;
          sub_23875A7B0();
          sub_2385309FC(v328, v305 + v303, &qword_27DF0D5D0, &unk_238770FE0);
          v330 = v440;
          sub_23875A590();
          sub_2385309FC(v330, v305 + v306, &qword_27DF0D640, &unk_23876D6E0);
          v331 = [v321 v324[338]];
          v332 = [v331 displayName];

          v333 = sub_2387586A0();
          v335 = v334;

          v336 = (v305 + *(v327 + 36));
          *v336 = v333;
          v336[1] = v335;
          v337 = v329;
          v309 = v321;
          v338 = [v337 fulfillmentIdentifier];
          v339 = sub_23875EA80();
          v341 = v340;

          v342 = (v305 + *(v327 + 40));
          *v342 = v339;
          v342[1] = v341;
          v343 = [v321 v324[338]];
          v344 = [v343 logoName];

          v345 = v324;
          if (v344)
          {
            v346 = sub_23875EA80();
            v348 = v347;
          }

          else
          {
            v346 = 0;
            v348 = 0;
          }

          v349 = v470;
          v350 = (v305 + *(v470 + 44));
          *v350 = v346;
          v350[1] = v348;
          v351 = type metadata accessor for MerchantImage.ViewModel(0);
          v352 = v350 + *(v351 + 20);
          v353 = v515;
          sub_238757DA0();
          v354 = [v309 v345 + 663];
          v355 = [v354 displayName];

          v356 = sub_2387586A0();
          v358 = v357;

          v326 = v349;
          v359 = (v350 + *(v351 + 24));
          *v359 = v356;
          v359[1] = v358;
          v360 = v468;
          sub_23852FA60(v305, v468, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
          v325 = *(v449 + 56);
          v325(v360, 0, 1, v349);
          sub_23852FAC8(v305, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
        }

        else
        {

          sub_238439884(v305 + v303, &qword_27DF0D5D0, &unk_238770FE0);
          sub_238439884(v305 + v306, &qword_27DF0D640, &unk_23876D6E0);
          v325 = *(v449 + 56);
          v325(v468, 1, 1, v296);
          v326 = v296;
        }

        v496 = *(sub_23875A4F0() + 16);

        v361 = v463;
        v362 = v464;
        v497 = v463[10];
        v498(v497 + v464, 1, 1, v462);
        v498 = v361[11];
        v325(v498 + v362, 1, 1, v326);
        v363 = v443;
        v364 = v460;
        v365 = v444;
        (*(v443 + 16))(v442, v460, v444);
        v366 = v309;
        v367 = v461;
        sub_23843981C(v461, v455, &qword_27DF0D5D0, &unk_238770FE0);
        v368 = v467;
        sub_23843981C(v467, v446, &qword_27DF12E00, &unk_238763FC0);
        sub_23875AEC0();

        v369 = v518;
        sub_238439884(v368, &qword_27DF12E00, &unk_238763FC0);
        sub_238439884(v367, &qword_27DF0D5D0, &unk_238770FE0);
        (*(v363 + 8))(v364, v365);
        v370 = v507;
        if (v507)
        {
          v371 = v448;
          v78 = v514;
          *v448 = v517;
          v371[1] = v78;
          v371[2] = v492;
          v371[3] = v370;
          v372 = type metadata accessor for OrderDetailsNote(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v372 - 8) + 56))(v371, 0, 1, v372);

          v373 = v451;
          v374 = v450;
        }

        else
        {
          v375 = type metadata accessor for OrderDetailsNote(0);
          v371 = v448;
          (*(*(v375 - 8) + 56))(v448, 1, 1, v375);
          v373 = v451;
          v374 = v450;
          v78 = v514;
        }

        v376 = v463;
        v377 = v464;
        v378 = &v464[v463[6]];
        v379 = &v464[v463[7]];
        v380 = v463[9];
        v381 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
        sub_2384396E4(v371, v377 + *(v381 + 20), &qword_27DF0D5F8, &unk_23876D640);
        (*(v374 + 32))(v377, v466, v373);
        v382 = v377 + *(v381 + 24);
        *v382 = 1;
        v90 = v503;
        v383 = v496;
        *(v382 + 8) = v503;
        *(v382 + 16) = v383;
        *(v382 + 24) = v494;
        v384 = (v377 + v376[5]);
        *v384 = v517;
        v384[1] = v78;
        v385 = v512;
        *v378 = v513;
        v378[1] = v385;
        v386 = v508;
        *v379 = v509;
        v379[1] = v386;
        v387 = (v377 + v376[8]);
        v388 = v500;
        *v387 = v502;
        v387[1] = v388;
        *(v377 + v380) = v499;
        sub_2385309FC(v465, v497 + v377, &qword_27DF0D5C8, &unk_23876D600);
        sub_2385309FC(v468, v498 + v377, &qword_27DF0D5B8, &unk_23876D5F0);
        v389 = v447;
        sub_23852EDFC(v377, v447, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
        v112 = v482;
        sub_23852EDFC(v389, v482, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
        v263 = v454;
        goto LABEL_109;
      }

      v299 = *(v292 + 32);
      v300 = v437;
      v299(v437, v291, v293);
      v301 = v441;
      v299(v441, v300, v293);
      v290 = v301;
    }

    v295 = v465;
    v296 = v470;
    v297 = v462;
    v298 = v472;
    swift_storeEnumTagMultiPayload();
    sub_23852EDFC(v290, v295, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v294 = 0;
    goto LABEL_95;
  }

  v174 = v484;
  v175 = *(v473 + 56);
  v176 = v485;
  v513 = v484[9];
  v512 = v175;
  (v175)(v485 + v513, 1, 1, v477);
  v177 = v174[13];
  v178 = *(v479 + 56);
  v479 += 56;
  v517 = v178;
  (v178)(&v177[v176], 1, 1, v476);
  v179 = v173;
  sub_23875AA30();
  sub_23875AE30();
  v180 = v497;
  v181 = v436;
  v515 = v112;
  v514 = v180;
  sub_23875B110();
  v182 = [v179 notes];
  v518 = v177;
  if (v182)
  {
    v183 = v182;
    v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    v185 = [v181 merchant];
    v186 = [v185 displayName];

    v187 = sub_2387586A0();
    v189 = v188;

    *v78 = v187;
    *(v78 + 1) = v189;
    *(v78 + 2) = sub_2387586A0();
    *(v78 + 3) = v190;
    sub_23875AA00();
    sub_23875ADA0();

    v191 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v191 - 8) + 56))(v78, 0, 1, v191);
  }

  else
  {
    v199 = type metadata accessor for OrderDetailsNote(0);
    (*(*(v199 - 8) + 56))(v78, 1, 1, v199);
  }

  v200 = *(sub_23875A4F0() + 16);

  v201 = v484;
  v202 = v485;
  v203 = (v485 + v484[5]);
  (*(v474 + 16))(v203, v478, v475);
  sub_23875AA00();
  v204 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v205 = &v203[v204[5]];
  sub_23875ADA0();
  sub_23843981C(v78, &v203[v204[6]], &qword_27DF0D5F8, &unk_23876D640);
  v206 = &v203[v204[7]];
  *v206 = 0;
  *(v206 + 1) = v503;
  *(v206 + 2) = v200;
  v206[24] = v494;
  sub_23875AA00();
  v207 = v202 + v201[6];
  sub_23875ADA0();
  v208 = [v179 trackingNumber];
  if (v208)
  {
    v209 = v208;
    v210 = sub_23875EA80();
    v212 = v211;
  }

  else
  {
    v210 = 0;
    v212 = 0;
  }

  v213 = v456;
  v214 = (v485 + v484[7]);
  *v214 = v210;
  v214[1] = v212;
  v215 = [v179 carrier];
  if (v215)
  {
    v216 = v215;
    v217 = sub_23875EA80();
    v219 = v218;
  }

  else
  {
    v217 = 0;
    v219 = 0;
  }

  v220 = (v485 + v484[8]);
  *v220 = v217;
  v220[1] = v219;
  v78 = &unk_278A55000;
  v221 = [v179 trackingURL];
  if (v221)
  {
    v222 = v221;
    sub_23875B8B0();

    v223 = 0;
  }

  else
  {
    v223 = 1;
  }

  v224 = v513;
  (v512)(v213, v223, 1, v477);
  sub_2385309FC(v213, v485 + v224, &qword_27DF0D040, &qword_2387676A0);
  v225 = [v181 statusDescription];
  if (v225)
  {
    v226 = v225;
    v227 = sub_2387586A0();
    v229 = v228;
  }

  else
  {
    v227 = 0;
    v229 = 0;
  }

  v230 = v459;
  v231 = v514;
  v232 = (v485 + v484[10]);
  *v232 = v227;
  v232[1] = v229;
  v233 = [v179 statusDescription];
  if (v233)
  {
    v234 = v233;
    v235 = sub_2387586A0();
    v237 = v236;
  }

  else
  {
    v235 = 0;
    v237 = 0;
  }

  v238 = v484;
  v239 = v485;
  v240 = (v485 + v484[11]);
  *v240 = v235;
  v240[1] = v237;
  v241 = [v181 merchant];
  v242 = [v241 displayName];

  v243 = sub_2387586A0();
  v245 = v244;

  v246 = (v239 + v238[12]);
  *v246 = v243;
  v246[1] = v245;
  v247 = v457;
  sub_23875A500();
  v248 = v471;
  sub_238757DA0();
  v249 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  (*(*(v249 - 8) + 56))(v230, 1, 1, v249);
  v250 = [v179 trackingURL];
  if (v250)
  {
    v78 = v453;
    v251 = v250;
    sub_23875B8B0();

    MEMORY[0x28223BE20](v252);
    *(&v434 - 2) = v248;
    v253 = v452;
    v254 = v469;
    sub_23869CB64(sub_238530A64, (&v434 - 4), v452);
    v469 = v254;
    sub_2385309FC(v253, v230, &qword_27DF0D5E0, &qword_23876D620);
    v255 = v476;
    v256 = v473;
    v257 = v477;
    (*(v473 + 16))(v230 + *(v476 + 20), v78, v477);
    sub_23875AA00();
    v258 = v230 + *(v255 + 24);
    sub_23875ADA0();

    v259 = v515;
    (*(v256 + 8))(v78, v257);
    sub_238439884(v247, &qword_27DF0D648, &unk_238779500);
    sub_238439884(v496, &qword_27DF0D5F8, &unk_23876D640);
    (*(v474 + 8))(v478, v475);
    v260 = v458;
    sub_23852FA60(v230, v458, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    (v517)(v260, 0, 1, v255);
    (*(v480 + 8))(v471, v510);
    sub_23852FAC8(v230, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  }

  else
  {

    v261 = v515;
    sub_238439884(v247, &qword_27DF0D648, &unk_238779500);
    sub_238439884(v496, &qword_27DF0D5F8, &unk_23876D640);
    (*(v474 + 8))(v478, v475);
    (*(v480 + 8))(v248, v510);
    sub_238439884(v230, &qword_27DF0D5E0, &qword_23876D620);
    v260 = v458;
    (v517)(v458, 1, 1, v476);
  }

  v112 = v482;
  v262 = v485;
  sub_2385309FC(v260, &v518[v485], &qword_27DF0D5F0, &unk_23876D630);
  sub_23852EDFC(v262, v112, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  v263 = v454;
  v90 = v503;
LABEL_109:
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  swift_storeEnumTagMultiPayload();
  v390 = v481;
  sub_23852EDFC(v112, v481, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  (*(v263 + 56))(v390, 0, 1, v483);
  sub_23852EC0C(v90);

LABEL_110:
  v113 = v520;
  v116 = *(v520 + 2);
  if (v116)
  {
    v519 = MEMORY[0x277D84F90];
    sub_2385FEBB0(0, v116, 0);
    v392 = 0;
    v393 = v519;
    v512 = (v113 + 32);
    LODWORD(v509) = *MEMORY[0x277CC7B30];
    v502 = (v480 + 8);
    v503 = (v480 + 16);
    v394 = v501;
    v507 = v116;
    v508 = v113;
    while (1)
    {
      if (v392 >= *(v113 + 16))
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v513 = v392;
      v514 = v393;
      v395 = &v512[16 * v392];
      v396 = *v395;
      v397 = *(v395 + 1);
      v518 = (v397 & 0x7FFFFFFFFFFFFFFFLL);
      v398 = sub_238759900();
      v399 = v505;
      *v505 = v398;
      v399[1] = v400;
      v401 = v394;
      v402 = *(sub_23875A4F0() + 16);

      *(v399 + 16) = v397 < 0;
      v399[3] = v396;
      v399[4] = v402;
      *(v399 + 40) = v494;
      v403 = v493;
      *v493 = v397;
      v404 = sub_2387598F0();
      v405 = *(v404 - 8);
      v517 = *(v405 + 104);
      v406 = v509;
      (v517)(v403, v509, v404);
      v515 = *(v405 + 56);
      (v515)(v403, 0, 1, v404);
      v407 = v506;
      v408 = *(v506 + 24);
      v409 = v401;
      v518 = v518;
      sub_238759050();
      *v403 = v397;
      (v517)(v403, v406, v404);
      (v515)(v403, 0, 1, v404);
      v410 = *(v407 + 28);
      v112 = v495;
      v113 = v409;
      v518 = v518;
      v500 = v113;
      sub_23875B080();
      v515 = v112;
      sub_238757DA0();
      v411 = sub_238759910();
      v412 = v411;
      v413 = v411 & 0xFFFFFFFFFFFFFF8;
      if (v411 >> 62)
      {
        v90 = sub_23875F3A0();
        v414 = &unk_278A55000;
        if (v90)
        {
LABEL_115:
          v415 = 0;
          v116 = (v412 & 0xC000000000000001);
          v78 = MEMORY[0x277D84F90];
          do
          {
            v416 = v415;
            while (1)
            {
              if (v116)
              {
                v417 = MEMORY[0x23EE63F70](v416, v412);
                v415 = v416 + 1;
                if (__OFADD__(v416, 1))
                {
                  goto LABEL_142;
                }
              }

              else
              {
                if (v416 >= *(v413 + 16))
                {
                  goto LABEL_143;
                }

                v417 = *(v412 + 8 * v416 + 32);
                v415 = v416 + 1;
                if (__OFADD__(v416, 1))
                {
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }
              }

              v113 = v417;
              v418 = [v113 v414[211]];
              if (v418)
              {
                break;
              }

              ++v416;
              if (v415 == v90)
              {
                goto LABEL_134;
              }
            }

            v419 = v418;
            v420 = sub_23875EA80();
            v517 = v421;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_238497C2C(0, *(v78 + 2) + 1, 1, v78);
            }

            v112 = *(v78 + 2);
            v422 = *(v78 + 3);
            v113 = v112 + 1;
            if (v112 >= v422 >> 1)
            {
              v78 = sub_238497C2C((v422 > 1), v112 + 1, 1, v78);
            }

            *(v78 + 2) = v113;
            v423 = &v78[16 * v112];
            v424 = v517;
            *(v423 + 4) = v420;
            *(v423 + 5) = v424;
          }

          while (v415 != v90);
          goto LABEL_134;
        }
      }

      else
      {
        v90 = *((v411 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v414 = &unk_278A55000;
        if (v90)
        {
          goto LABEL_115;
        }
      }

      v78 = MEMORY[0x277D84F90];
LABEL_134:

      v425 = v510;
      (*v503)(v504, v516, v510);
      if (*(v78 + 2) >= 5uLL)
      {
        sub_23852EE64(v78, (v78 + 32), 0, 9uLL);
        v427 = v426;

        v78 = v427;
      }

      v394 = v501;
      v112 = v487;
      v393 = v514;
      (*v502)(v516, v425);
      v428 = v504;
      v429 = v505;
      *&v504[*(v511 + 20)] = v78;
      sub_23852EDFC(v428, v429 + *(v506 + 32), type metadata accessor for ProductImage.ViewModel);
      sub_23852EDFC(v429, v112, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);

      v519 = v393;
      v431 = *(v393 + 2);
      v430 = *(v393 + 3);
      if (v431 >= v430 >> 1)
      {
        sub_2385FEBB0(v430 > 1, v431 + 1, 1);
        v394 = v501;
        v393 = v519;
      }

      v392 = v513 + 1;
      *(v393 + 2) = v431 + 1;
      sub_23852EDFC(v112, &v393[((*(v488 + 80) + 32) & ~*(v488 + 80)) + *(v488 + 72) * v431], type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      v116 = v507;
      v113 = v508;
      if (v392 == v507)
      {

        goto LABEL_141;
      }
    }
  }

  v393 = MEMORY[0x277D84F90];
LABEL_141:
  v432 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  v433 = v439;
  sub_2384396E4(v481, v439, &qword_27DF0D580, &qword_23876D538);
  *(v433 + v432) = v393;
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385297F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v150 = a5;
  v157 = a4;
  v158 = a3;
  v145 = a6;
  v155 = sub_238759100();
  v156 = *(v155 - 8);
  v8 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  v159 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5A0, &qword_23876D5D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v142 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = v128 - v14;
  MEMORY[0x28223BE20](v15);
  v143 = v128 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v134 = v128 - v19;
  v20 = sub_2387590D0();
  v21 = *(v20 - 8);
  v167 = v20;
  v168 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v166 = v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v165 = v128 - v25;
  v164 = sub_23875AC40();
  v135 = *(v164 - 8);
  v26 = *(v135 + 64);
  MEMORY[0x28223BE20](v164);
  v136 = v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5A8, &unk_23876D5D8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v147 = v128 - v30;
  v149 = sub_238758DB0();
  v148 = *(v149 - 8);
  v31 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v133 = v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v132 = v128 - v34;
  v35 = sub_238757CC0();
  v162 = *(v35 - 8);
  v163 = v35;
  v36 = *(v162 + 64);
  MEMORY[0x28223BE20](v35);
  v160 = v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_238759B60();
  v154 = *(v38 - 8);
  v39 = v154;
  v40 = *(v154 + 64);
  MEMORY[0x28223BE20](v38);
  v161 = (v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v44 = v128 - v43;
  v45 = type metadata accessor for OrderDetails.ViewModel(0);
  v46 = *(*(v45 - 1) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v49 + 32);
  v51 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v131 = v50;
  v130 = v51;
  v129 = v53;
  v128[1] = v52 + 56;
  (v53)(&v48[v50], 1, 1);
  v54 = &v48[v45[14]];
  *v54 = 0;
  v54[8] = 0;
  v55 = *(v39 + 16);
  v55(v44, a1, v38);
  sub_23845C998(a2, v170);
  sub_2384C7A5C(v44, v170, v48);
  v56 = a1;
  v151 = a1;
  v55(v44, a1, v38);
  sub_23845C998(a2, v170);
  v57 = v45[5];
  v58 = v157;

  sub_23852A7EC(v44, v158, v58, v170, &v48[v57]);
  v55(v44, v56, v38);
  v144 = a2;
  sub_23845C998(a2, v170);
  v152 = v45;
  v59 = v45[6];
  v153 = v48;
  v60 = &v48[v59];
  v146 = v170[4];
  __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  v61 = v160;
  sub_238759B30();
  sub_238757C60();
  (*(v162 + 8))(v61, v163);
  v62 = sub_23875A360();
  v64 = v63;

  *v60 = v62;
  v60[1] = v64;
  v65 = v161;
  v139 = v39 + 16;
  v138 = v55;
  v55(v161, v44, v38);
  sub_23845C998(v170, &v169);
  v66 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  sub_2384C7A5C(v65, &v169, v60 + *(v66 + 20));
  v67 = v60 + *(v66 + 24);
  sub_238759B40();
  v68 = *(v154 + 8);
  v140 = v44;
  v146 = v38;
  v154 += 8;
  v137 = v68;
  v68(v44, v38);
  v69 = v151;
  __swift_destroy_boxed_opaque_existential_1(v170);
  v70 = sub_238759AD0();
  v71 = *(v70 + 16);
  if (v71)
  {
    v170[0] = MEMORY[0x277D84F90];
    sub_2385FED48(0, v71, 0);
    v72 = v170[0];
    v163 = *(v168 + 16);
    v73 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v128[0] = v70;
    v74 = v70 + v73;
    v75 = *(v168 + 72);
    v161 = (v168 + 8);
    v162 = v75;
    v76 = v135;
    v160 = (v135 + 32);
    v77 = v136;
    v168 += 16;
    v78 = v166;
    do
    {
      v79 = v165;
      v80 = v167;
      v81 = v163;
      v163(v165, v74, v167);
      v81(v78, v79, v80);
      sub_23875AC50();
      (*v161)(v79, v80);
      v170[0] = v72;
      v83 = *(v72 + 16);
      v82 = *(v72 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_2385FED48(v82 > 1, v83 + 1, 1);
        v72 = v170[0];
      }

      *(v72 + 16) = v83 + 1;
      (*(v76 + 32))(v72 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v83, v77, v164);
      v74 += v162;
      --v71;
    }

    while (v71);

    v69 = v151;
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v84 = v148;
  v85 = v152;
  v86 = v153;
  *&v153[v152[7]] = v72;
  v87 = v147;
  sub_238759A60();
  v88 = v149;
  v89 = (*(v84 + 48))(v87, 1, v149);
  v90 = v150;
  if (v89 == 1)
  {
    sub_238439884(v87, &qword_27DF0D5A8, &unk_23876D5D8);
  }

  else
  {
    v91 = v132;
    (*(v84 + 32))(v132, v87, v88);
    v92 = v133;
    (*(v84 + 16))(v133, v91, v88);
    v93 = v134;
    sub_2385542DC(v92, v90 & 1, v134);
    (*(v84 + 8))(v91, v88);
    v129(v93, 0, 1, v130);
    sub_2385309FC(v93, &v86[v131], &qword_27DF0D530, &qword_23876D508);
  }

  v94 = sub_238759B10();
  MEMORY[0x28223BE20](v94);
  v128[-2] = v69;
  v95 = sub_23851F2A0(sub_23852EDDC, &v128[-4], v94, type metadata accessor for OrderDetailsReturn.ViewModel, sub_2385FED04, MEMORY[0x277CC6E88], type metadata accessor for OrderDetailsReturn.ViewModel);

  *&v86[v85[9]] = v95;
  result = sub_238759A80();
  v97 = result;
  v98 = *(result + 16);
  v99 = v155;
  if (v98)
  {
    v100 = 0;
    v101 = result + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v102 = (v156 + 8);
    while (v100 < *(v97 + 16))
    {
      (*(v156 + 16))(v159, v101 + *(v156 + 72) * v100, v99);
      v103 = sub_2387590E0();
      if (v157)
      {
        if (v103 == v158 && v104 == v157)
        {

          goto LABEL_26;
        }

        v105 = sub_23875F630();

        if (v105)
        {

LABEL_26:

          v116 = v156;
          v117 = *(v156 + 32);
          v118 = v141;
          v119 = v155;
          v117(v141, v159, v155);
          v120 = *(v116 + 56);
          v120(v118, 0, 1, v119);
          v112 = v143;
          v117(v143, v118, v119);
          v120(v112, 0, 1, v119);
          v115 = v144;
          v113 = v142;
          goto LABEL_27;
        }
      }

      else
      {
      }

      ++v100;
      v99 = v155;
      result = (*v102)(v159, v155);
      if (v98 == v100)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v106 = v156;
    v107 = *(v156 + 56);
    v108 = 1;
    v109 = v141;
    v107(v141, 1, 1, v99);
    v110 = v99;
    v111 = sub_238759A80();
    v112 = v143;
    if (*(v111 + 16))
    {
      (*(v106 + 16))(v143, v111 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v99);
      v108 = 0;
    }

    v113 = v142;

    v107(v112, v108, 1, v110);
    v114 = (*(v106 + 48))(v109, 1, v110);
    v115 = v144;
    if (v114 != 1)
    {
      sub_238439884(v109, &qword_27DF0D5A0, &qword_23876D5D0);
    }

LABEL_27:
    v121 = v140;
    v122 = v146;
    v138(v140, v69, v146);
    sub_23843981C(v112, v113, &qword_27DF0D5A0, &qword_23876D5D0);
    sub_23845C998(v115, v170);
    v123 = v152;
    v124 = v153;
    sub_23869D8C4(v121, v113, v170, &v153[v152[10]]);
    v125 = v124 + v123[12];
    sub_238759A40();
    if (v90)
    {
      v126 = 0;
    }

    else
    {
      v126 = sub_238759AE0();
    }

    v127 = v145;
    __swift_destroy_boxed_opaque_existential_1(v115);
    sub_238439884(v112, &qword_27DF0D5A0, &qword_23876D5D0);
    *(v124 + v123[11]) = v126 & 1;
    *(v124 + v123[13]) = v90 & 1;
    sub_23852FA60(v124, v127, type metadata accessor for OrderDetails.ViewModel);
    v137(v69, v122);
    return sub_23852FAC8(v124, type metadata accessor for OrderDetails.ViewModel);
  }

  return result;
}

uint64_t sub_23852A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v533 = a4;
  v558 = a3;
  v542 = a2;
  v531 = a5;
  v6 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v576 = &v454 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v580 = sub_238758940();
  v537 = *(v580 - 8);
  v9 = *(v537 + 64);
  MEMORY[0x28223BE20](v580);
  v579 = &v454 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v548 = type metadata accessor for ProductImage.ViewModel(0);
  v11 = *(*(v548 - 8) + 64);
  MEMORY[0x28223BE20](v548);
  v547 = &v454 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B0, &qword_23876D5E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v546 = &v454 - v15;
  v562 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v545 = *(v562 - 8);
  v16 = *(v545 + 64);
  MEMORY[0x28223BE20](v562);
  v570 = &v454 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v549 = &v454 - v19;
  v491 = sub_23875AF00();
  v490 = *(v491 - 8);
  v20 = *(v490 + 64);
  MEMORY[0x28223BE20](v491);
  v515 = &v454 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v516 = &v454 - v24;
  v468 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v489 = *(v468 - 8);
  v25 = *(v489 + 64);
  MEMORY[0x28223BE20](v468);
  v464 = (&v454 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v482 = sub_238757C40();
  v481 = *(v482 - 8);
  v27 = *(v481 + 64);
  MEMORY[0x28223BE20](v482);
  v462 = &v454 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v463 = &v454 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C0, &unk_238771640);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v479 = &v454 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v467 = &v454 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v514 = &v454 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v487 = &v454 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v503 = &v454 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v486 = &v454 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v511 = &v454 - v48;
  v49 = sub_2387592A0();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v476 = &v454 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v484 = *(v485 - 8);
  v52 = *(v484 + 64);
  MEMORY[0x28223BE20](v485);
  v483 = &v454 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v510 = &v454 - v55;
  v475 = sub_238757AA0();
  v474 = *(v475 - 8);
  v56 = *(v474 + 64);
  MEMORY[0x28223BE20](v475);
  v458 = &v454 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v459 = &v454 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D8, &qword_238771650);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v472 = &v454 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v473 = &v454 - v64;
  v512 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v65 = *(*(v512 - 1) + 64);
  MEMORY[0x28223BE20](v512);
  v513 = &v454 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v488 = &v454 - v68;
  v530 = sub_238759D10();
  v509 = *(v530 - 8);
  v69 = *(v509 + 64);
  MEMORY[0x28223BE20](v530);
  v478 = &v454 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v507 = &v454 - v72;
  MEMORY[0x28223BE20](v73);
  v508 = &v454 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v461 = &v454 - v77;
  v518 = sub_23875B940();
  v528 = *(v518 - 8);
  v78 = *(v528 + 64);
  MEMORY[0x28223BE20](v518);
  v456 = &v454 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v460 = &v454 - v81;
  v502 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v527 = *(v502 - 8);
  v82 = v527[8];
  MEMORY[0x28223BE20](v502);
  v480 = &v454 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v563 = sub_23875AF90();
  v524 = *(v563 - 8);
  v84 = *(v524 + 64);
  MEMORY[0x28223BE20](v563);
  v569 = &v454 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v496 = &v454 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E8, &qword_23876D628);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v495 = &v454 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v466 = &v454 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v457 = &v454 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v477 = &v454 - v98;
  MEMORY[0x28223BE20](v99);
  v471 = &v454 - v100;
  v101 = sub_2387592C0();
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101 - 8);
  v493 = &v454 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = sub_238757CC0();
  v521 = *(v522 - 8);
  v104 = *(v521 + 64);
  MEMORY[0x28223BE20](v522);
  v520 = &v454 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v107 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106 - 8);
  v465 = (&v454 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v109);
  v497 = (&v454 - v110);
  v501 = sub_23875B120();
  v500 = *(v501 - 8);
  v111 = *(v500 + 64);
  MEMORY[0x28223BE20](v501);
  v526 = &v454 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2387597F0();
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113 - 8);
  v470 = &v454 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v116 = *(*(v540 - 8) + 64);
  MEMORY[0x28223BE20](v540);
  v523 = &v454 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_23875A400();
  v499 = *(v519 - 8);
  v118 = *(v499 + 64);
  MEMORY[0x28223BE20](v519);
  v494 = &v454 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120);
  v469 = &v454 - v121;
  MEMORY[0x28223BE20](v122);
  v538 = (&v454 - v123);
  MEMORY[0x28223BE20](v124);
  v498 = &v454 - v125;
  v544 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v525 = *(v544 - 8);
  v126 = *(v525 + 64);
  MEMORY[0x28223BE20](v544);
  v541 = &v454 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0);
  v551 = *(v552 - 8);
  v128 = *(v551 + 64);
  MEMORY[0x28223BE20](v552);
  v561 = (&v454 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v130);
  v517 = &v454 - v131;
  MEMORY[0x28223BE20](v132);
  v506 = &v454 - v133;
  MEMORY[0x28223BE20](v134);
  v504 = &v454 - v135;
  v136 = sub_238759B60();
  v137 = *(v136 - 8);
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v573 = &v454 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v140);
  v529 = &v454 - v141;
  MEMORY[0x28223BE20](v142);
  v144 = &v454 - v143;
  MEMORY[0x28223BE20](v145);
  v543 = &v454 - v146;
  MEMORY[0x28223BE20](v147);
  v555 = &v454 - v148;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  v150 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149 - 8);
  v532 = &v454 - v151;
  v577 = sub_238759100();
  v152 = *(v577 - 8);
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v577);
  v560 = &v454 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155);
  v572 = &v454 - v156;
  MEMORY[0x28223BE20](v157);
  v505 = &v454 - v158;
  MEMORY[0x28223BE20](v159);
  v539 = (&v454 - v160);
  MEMORY[0x28223BE20](v161);
  v578 = &v454 - v162;
  MEMORY[0x28223BE20](v163);
  v165 = &v454 - v164;
  MEMORY[0x28223BE20](v166);
  v168 = &v454 - v167;
  v169 = type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v170 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v172 = &v454 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_238759A80();
  if (!*(v173 + 16))
  {

    (*(v137 + 16))(v144, a1, v136);
    v203 = v533;
    sub_23845C998(v533, &v586);
    v204 = v576;
    sub_238571D5C(v144, &v586, v576);
    sub_23852EDFC(v204, v172, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    swift_storeEnumTagMultiPayload();
    v205 = a1;
    goto LABEL_93;
  }

  v559 = *(v173 + 16);
  v553 = a1;
  v536 = v169;
  v492 = v172;
  v564 = v144;
  v534 = v137;
  v565 = v136;
  v568 = v558;
  if (!v558)
  {
    v174 = v577;
    (*(v152 + 16))(v168, v173 + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v577);
    v542 = sub_2387590E0();
    v568 = v175;
    (*(v152 + 8))(v168, v174);
  }

  v176 = sub_238759A80();
  sub_23852F6F8(v176);
  v178 = v177;

  v179 = 0;
  v180 = 0;
  v557 = 0;
  v455 = v178;
  v587 = v178;
  v576 = v152 + 16;
  v567 = v152 + 88;
  v571 = *MEMORY[0x277CC7728];
  v574 = (v152 + 8);
  v535 = *MEMORY[0x277CC7720];
  v181 = v559;
LABEL_5:
  v182 = 0;
  v556 = v180;
  v183 = v180 ^ 0x7FFFFFFFFFFFFFFFLL;
  v184 = v181 - v179;
  do
  {
    if (&v179[v182] >= *(v173 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v185 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v186 = *(v152 + 72);
    v187 = v577;
    v575 = *(v152 + 16);
    v575(v165, v173 + v185 + v186 * &v179[v182], v577);
    v566 = *(v152 + 88);
    v188 = v566(v165, v187);
    if (v188 != v571)
    {
      if (v188 != v535)
      {
        goto LABEL_102;
      }

      if (__OFADD__(v557, 1))
      {
        goto LABEL_98;
      }

      v557 = (v557 + 1);
      v554 = &v179[v182 + 1];
      v181 = v559;
      v550 = ~v179 + v559;
      v180 = v556 + v182;
      v190 = *v574;
      (*v574)(v165, v577);
      v179 = v554;
      if (v550 == v182)
      {
        v554 = v190;
        v191 = (v556 + v182);
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    if (v183 == v182)
    {
      goto LABEL_95;
    }

    v189 = *v574;
    (*v574)(v165, v577);
    ++v182;
  }

  while (v184 != v182);
  v554 = v189;
  v191 = (v559 + v556 - v179);
LABEL_15:

  v192 = 0;
  if (v191)
  {
    v193 = v557 == 0;
  }

  else
  {
    v193 = 1;
  }

  v194 = v193;
  LODWORD(v550) = v194;
  v195 = v173 + v185;
  v196 = v565;
  v197 = v577;
  v198 = v542;
  while (1)
  {
    if (v192 >= *(v173 + 16))
    {
      goto LABEL_97;
    }

    v575(v578, v195, v197);
    if (sub_2387590E0() == v198 && v568 == v199)
    {
      break;
    }

    v200 = sub_23875F630();

    v554(v578, v197);
    if (v200)
    {
      goto LABEL_30;
    }

    ++v192;
    v195 += v186;
    if (v559 == v192)
    {

      (*(v525 + 56))(v532, 1, 1, v544);
      v506 = 0;
      v137 = v534;
      v201 = v196;
      v202 = v554;
      goto LABEL_69;
    }
  }

  v554(v578, v197);
LABEL_30:

  v206 = *(v534 + 16);
  v207 = v555;
  v578 = (v534 + 16);
  v568 = v206;
  (v206)(v555, v553, v196);
  if (v192 >= *(v455 + 16))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    LODWORD(v453) = 0;
    i = 103;
    goto LABEL_101;
  }

  v208 = v455 + ((*(v551 + 80) + 32) & ~*(v551 + 80));
  v209 = *(v551 + 72);
  v559 = v192;
  v210 = v504;
  sub_23843981C(v208 + v209 * v192, v504, &qword_27DF0AEE8, &qword_2387674F0);
  v211 = *(v552 + 48);
  v212 = *(v152 + 32);
  v213 = v506;
  v212(&v506[v211], v210 + v211, v197);
  v214 = v539;
  v212(v539, &v213[v211], v197);
  sub_23845C998(v533, &v586);
  v215 = sub_2387590E0();
  v216 = v544;
  v217 = v541;
  v218 = (v541 + *(v544 + 24));
  *v218 = v215;
  v218[1] = v219;
  v220 = sub_2387590F0();
  v558 = &v454;
  MEMORY[0x28223BE20](v220);
  i = v207;
  v453 = &v586;
  v221 = sub_23851F2A0(sub_23852FA40, (&v454 - 4), v220, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, sub_2385FEB6C, MEMORY[0x277CC70F0], type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  v506 = 0;

  *(v217 + *(v216 + 20)) = v221;
  v222 = v505;
  v575(v505, v214, v197);
  v223 = v566(v222, v197);
  if (v223 != v571)
  {
    if (v223 == v535)
    {
      (*(v152 + 96))(v222, v197);
      v246 = v509;
      v247 = v508;
      v248 = v530;
      (*(v509 + 32))(v508, v222, v530);
      v249 = v529;
      v568(v529, v555, v196);
      v250 = *(v246 + 16);
      v251 = v507;
      v542 = v246 + 16;
      v540 = v250;
      v250(v507, v247, v248);
      sub_23845C998(&v586, v583);
      __swift_project_boxed_opaque_existential_1(v583, v584);
      sub_238759C80();
      v557 = sub_23875A360();
      v556 = v252;

      v253 = v473;
      sub_238759CE0();
      v254 = v472;
      sub_23843981C(v253, v472, &qword_27DF0D5D8, &qword_238771650);
      v255 = v474;
      v256 = v475;
      if ((*(v474 + 48))(v254, 1, v475) == 1)
      {
        sub_238439884(v253, &qword_27DF0D5D8, &qword_238771650);
        v558 = 0;
      }

      else
      {
        v257 = v459;
        (*(v255 + 32))(v459, v254, v256);
        sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
        (*(v255 + 16))(v458, v257, v256);
        v558 = sub_23875F0F0();
        (*(v255 + 8))(v257, v256);
        sub_238439884(v253, &qword_27DF0D5D8, &qword_238771650);
      }

      v568(v564, v249, v196);
      sub_238759CD0();
      sub_23875AC70();
      sub_238759C90();
      sub_238759C70();
      __swift_project_boxed_opaque_existential_1(v583, v584);
      v258 = v520;
      sub_238759B30();
      sub_238757C60();
      (*(v521 + 8))(v258, v522);
      v538 = sub_23875A360();
      v260 = v259;

      v519 = sub_238759CC0();
      v520 = v261;
      v262 = sub_238759CA0();
      v264 = v263;
      sub_23845C998(v583, &v581);
      if (v264)
      {
        __swift_project_boxed_opaque_existential_1(&v581, v582);
        v526 = sub_23875A360();
        v523 = v265;
      }

      else
      {
        v526 = v262;
        v523 = 0;
      }

      v327 = v467;
      v527 = v260;
      __swift_destroy_boxed_opaque_existential_1(&v581);
      v328 = sub_238759AA0();
      v330 = v329;
      sub_23845C998(v583, &v581);
      if (v330)
      {
        __swift_project_boxed_opaque_existential_1(&v581, v582);
        v522 = sub_23875A360();
        v521 = v331;
      }

      else
      {
        v522 = v328;
        v521 = 0;
      }

      v332 = v528;
      v333 = v468;
      __swift_destroy_boxed_opaque_existential_1(&v581);
      v543 = v558;
      sub_238759D00();
      v334 = v479;
      sub_23843981C(v327, v479, &qword_27DF0D5C0, &unk_238771640);
      v335 = v481;
      v336 = v482;
      if ((*(v481 + 48))(v334, 1, v482) == 1)
      {
        sub_238439884(v327, &qword_27DF0D5C0, &unk_238771640);
        v337 = 0;
      }

      else
      {
        v338 = v327;
        v339 = v463;
        (*(v335 + 32))(v463, v334, v336);
        sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
        (*(v335 + 16))(v462, v339, v336);
        v337 = sub_23875EF60();
        (*(v335 + 8))(v339, v336);
        sub_238439884(v338, &qword_27DF0D5C0, &unk_238771640);
      }

      v340 = v558;
      v341 = sub_23858B318(v337, v558);
      if (v341)
      {
        v342 = v341;

        v343 = v464;
        *v464 = v342;
      }

      else
      {
        v344 = v457;
        sub_23858B494(v340, v457);

        v345 = v518;
        if ((*(v332 + 48))(v344, 1, v518) == 1)
        {
          sub_238439884(v344, &qword_27DF0D040, &qword_2387676A0);
          v346 = 1;
          v347 = v564;
          v348 = v514;
          v349 = v540;
LABEL_64:
          v352 = *(v489 + 56);
          (v352)(v348, v346, 1, v333);
          (v568)(v347);
          v353 = v478;
          v349(v478, v251, v530);
          sub_23845C998(v583, &v581);
          sub_23858638C(v347, v353, &v581, v516);
          v540 = *(sub_238759A80() + 16);

          v354 = v512;
          v355 = v513;
          v578 = &v513[v512[10]];
          v352();
          v356 = &v355[v354[11]];
          v357 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
          v358 = *(*(v357 - 8) + 56);
          v542 = v356;
          v358(v356, 1, 1, v357);
          v359 = v484;
          v360 = v510;
          v361 = v485;
          (*(v484 + 16))(v483, v510, v485);
          v362 = v511;
          sub_23843981C(v511, v486, &qword_27DF0D5D0, &unk_238770FE0);
          v363 = v503;
          sub_23843981C(v503, v487, &qword_27DF12E00, &unk_238763FC0);
          sub_23875AEC0();

          sub_238439884(v363, &qword_27DF12E00, &unk_238763FC0);
          sub_238439884(v362, &qword_27DF0D5D0, &unk_238770FE0);
          (*(v359 + 8))(v360, v361);
          v364 = *(v509 + 8);
          v365 = v530;
          v364(v507, v530);
          v568 = *(v534 + 8);
          (v568)(v529, v565);
          v364(v508, v365);
          v554(v539, v577);
          v366 = v520;
          if (v520)
          {
            v367 = v465;
            v368 = v538;
            v369 = v527;
            *v465 = v538;
            v367[1] = v369;
            v367[2] = v519;
            v367[3] = v366;
            v370 = type metadata accessor for OrderDetailsNote(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v370 - 8) + 56))(v367, 0, 1, v370);
          }

          else
          {
            v371 = type metadata accessor for OrderDetailsNote(0);
            v367 = v465;
            (*(*(v371 - 8) + 56))(v465, 1, 1, v371);
            v368 = v538;
            v369 = v527;
          }

          v372 = v512;
          v373 = v513;
          v374 = &v513[v512[6]];
          v375 = &v513[v512[7]];
          v376 = v512[9];
          v377 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
          sub_2384396E4(v367, v373 + *(v377 + 20), &qword_27DF0D5F8, &unk_23876D640);
          (*(v490 + 32))(v373, v515, v491);
          v378 = v373 + *(v377 + 24);
          *v378 = 1;
          v379 = v559;
          v380 = v540;
          *(v378 + 8) = v559;
          *(v378 + 16) = v380;
          *(v378 + 24) = v550;
          v381 = (v373 + v372[5]);
          *v381 = v368;
          v381[1] = v369;
          v382 = v523;
          *v374 = v526;
          *(v374 + 1) = v382;
          v383 = v521;
          *v375 = v522;
          v375[1] = v383;
          v384 = (v373 + v372[8]);
          v385 = v556;
          *v384 = v557;
          v384[1] = v385;
          *(v373 + v376) = v558;
          sub_2385309FC(v514, v578, &qword_27DF0D5C8, &unk_23876D600);
          v311 = v379;
          sub_2385309FC(v516, v542, &qword_27DF0D5B8, &unk_23876D5F0);
          v386 = v488;
          sub_23852EDFC(v373, v488, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
          v387 = v386;
          v325 = v541;
          sub_23852EDFC(v387, v541, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
          __swift_destroy_boxed_opaque_existential_1(v583);
          v201 = v565;
          v197 = v577;
          v202 = v554;
          v326 = v568;
          goto LABEL_68;
        }

        v350 = *(v332 + 32);
        v351 = v456;
        v350(v456, v344, v345);
        v343 = v464;
        v350(v464, v351, v345);
      }

      v347 = v564;
      v349 = v540;
      swift_storeEnumTagMultiPayload();
      v348 = v514;
      sub_23852EDFC(v343, v514, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
      v346 = 0;
      goto LABEL_64;
    }

    v583[0] = 0;
    v583[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001ALL, 0x8000000238789CD0);
    sub_23875F510();
    LODWORD(v453) = 0;
    for (i = 157; ; i = 470)
    {
LABEL_101:
      sub_23875F520();
      __break(1u);
LABEL_102:
      LODWORD(v453) = 0;
    }
  }

  (*(v152 + 96))(v222, v197);
  v224 = v499;
  v225 = v498;
  v226 = v519;
  (*(v499 + 32))(v498, v222, v519);
  v227 = v543;
  v228 = v568;
  v568(v543, v555, v196);
  v229 = v224 + 16;
  v230 = *(v224 + 16);
  v231 = v538;
  v230(v538, v225, v226);
  sub_23845C998(&v586, v583);
  v232 = v540;
  v233 = *(v528 + 56);
  v234 = v523;
  v556 = *(v540 + 36);
  v233(v523 + v556, 1, 1, v518);
  v235 = v527[7];
  v558 = *(v232 + 52);
  v527 += 7;
  v557 = v235;
  (v235)(&v234[v558], 1, 1, v502);
  sub_23875A3D0();
  sub_23875AE20();
  v228(v564, v227, v196);
  v578 = v229;
  v568 = v230;
  v230(v469, v231, v226);
  sub_23875B0E0();
  v236 = sub_23875A3C0();
  if (v237)
  {
    v530 = v236;
    v542 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    __swift_project_boxed_opaque_existential_1(v583, v584);
    v238 = v520;
    sub_238759B30();
    sub_238757C60();
    (*(v521 + 8))(v238, v522);
    v239 = sub_23875A360();
    v241 = v240;
    v242 = v523;

    v243 = v497;
    *v497 = v239;
    v243[1] = v241;
    v243[2] = sub_23875A360();
    v243[3] = v244;
    sub_23875A390();
    sub_23875AD90();
    v245 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v245 - 8) + 56))(v243, 0, 1, v245);
  }

  else
  {
    v266 = type metadata accessor for OrderDetailsNote(0);
    v243 = v497;
    (*(*(v266 - 8) + 56))(v497, 1, 1, v266);
    v242 = v234;
  }

  v267 = v540;
  v268 = (v242 + *(v540 + 28));
  v269 = (v242 + *(v540 + 32));
  v542 = *(sub_238759A80() + 16);

  v270 = (v242 + *(v267 + 20));
  (*(v500 + 16))(v270, v526, v501);
  sub_23875A390();
  v271 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v272 = &v270[v271[5]];
  sub_23875AD90();
  sub_23843981C(v243, &v270[v271[6]], &qword_27DF0D5F8, &unk_23876D640);
  v273 = &v270[v271[7]];
  *v273 = 0;
  v274 = v542;
  *(v273 + 1) = v559;
  *(v273 + 2) = v274;
  v273[24] = v550;
  sub_23875A390();
  v275 = (v242 + *(v267 + 24));
  sub_23875AD90();
  *v268 = sub_23875A3A0();
  v268[1] = v276;
  *v269 = sub_23875A3E0();
  v269[1] = v277;
  v278 = v471;
  sub_23875A380();
  sub_2385309FC(v278, v242 + v556, &qword_27DF0D040, &qword_2387676A0);
  sub_238759AA0();
  v280 = v279;
  sub_23845C998(v583, &v581);
  if (v280)
  {
    __swift_project_boxed_opaque_existential_1(&v581, v582);
    v281 = sub_23875A360();
    v283 = v282;
  }

  else
  {
    v281 = 0;
    v283 = 0;
  }

  v201 = v565;
  v202 = v554;
  v284 = (v242 + *(v540 + 40));
  __swift_destroy_boxed_opaque_existential_1(&v581);
  *v284 = v281;
  v284[1] = v283;
  sub_23875A3B0();
  v286 = v285;
  sub_23845C998(v583, &v581);
  if (v286)
  {
    __swift_project_boxed_opaque_existential_1(&v581, v582);
    v287 = sub_23875A360();
    v289 = v288;
  }

  else
  {
    v287 = 0;
    v289 = 0;
  }

  v290 = v540;
  v291 = (v242 + *(v540 + 44));
  __swift_destroy_boxed_opaque_existential_1(&v581);
  *v291 = v287;
  v291[1] = v289;
  v556 = v585;
  __swift_project_boxed_opaque_existential_1(v583, v584);
  v292 = v520;
  sub_238759B30();
  sub_238757C60();
  (*(v521 + 8))(v292, v522);
  v293 = sub_23875A360();
  v295 = v294;

  v296 = (v242 + *(v290 + 48));
  *v296 = v293;
  v296[1] = v295;
  v297 = v494;
  v298 = v519;
  v568(v494, v538, v519);
  v299 = v495;
  sub_238759A90();
  v300 = v496;
  sub_238759AB0();
  v301 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v302 = v480;
  (*(*(v301 - 8) + 56))(v480, 1, 1, v301);
  v303 = v477;
  sub_23875A380();
  v304 = v528;
  v305 = v518;
  if ((*(v528 + 48))(v303, 1, v518) == 1)
  {
    sub_238439884(v299, &qword_27DF0D5E8, &qword_23876D628);
    v306 = v303;
    v307 = v302;
    v308 = *(v499 + 8);
    v308(v297, v298);
    sub_238439884(v497, &qword_27DF0D5F8, &unk_23876D640);
    (*(v500 + 8))(v526, v501);
    v308(v498, v298);
    v309 = v308;
    v197 = v577;
    v202(v539, v577);
    sub_238439884(v306, &qword_27DF0D040, &qword_2387676A0);
    (*(v524 + 8))(v300, v563);
    sub_238439884(v307, &qword_27DF0D5E0, &qword_23876D620);
    v310 = v466;
    v557(v466, 1, 1, v502);
    v311 = v559;
    v312 = v298;
    v313 = v523;
  }

  else
  {
    v314 = v460;
    v315 = (*(v304 + 32))(v460, v303, v305);
    MEMORY[0x28223BE20](v315);
    i = v300;
    v316 = v461;
    v317 = v506;
    sub_23869CDDC(sub_23852FB28, (&v454 - 4), v461);
    v506 = v317;
    sub_2385309FC(v316, v302, &qword_27DF0D5E0, &qword_23876D620);
    v318 = v502;
    (*(v304 + 16))(v302 + *(v502 + 20), v314, v305);
    v319 = v494;
    sub_23875A390();
    v320 = v302 + *(v318 + 24);
    sub_23875AD90();
    v313 = v523;
    (*(v304 + 8))(v314, v305);
    sub_238439884(v495, &qword_27DF0D5E8, &qword_23876D628);
    v321 = *(v499 + 8);
    v322 = v519;
    v321(v319, v519);
    sub_238439884(v497, &qword_27DF0D5F8, &unk_23876D640);
    (*(v500 + 8))(v526, v501);
    v321(v498, v322);
    v197 = v577;
    v202(v539, v577);
    v310 = v466;
    sub_23852FA60(v302, v466, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v557(v310, 0, 1, v318);
    (*(v524 + 8))(v496, v563);
    v323 = v302;
    v309 = v321;
    sub_23852FAC8(v323, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v311 = v559;
    v312 = v322;
  }

  sub_2385309FC(v310, v313 + v558, &qword_27DF0D5F0, &unk_23876D630);
  v324 = v541;
  sub_23852FA60(v313, v541, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(v583);
  v309(v538, v312);
  v325 = v324;
  v326 = *(v534 + 8);
  v326(v543, v201);
  sub_23852FAC8(v313, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
LABEL_68:
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  swift_storeEnumTagMultiPayload();
  v388 = v532;
  sub_23852EDFC(v325, v532, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(&v586);
  v326(v555, v201);
  (*(v525 + 56))(v388, 0, 1, v544);
  v389 = v517;
  sub_23852EC98(v311, v517);
  v202((v389 + *(v552 + 48)), v197);
  v137 = v534;
LABEL_69:
  v390 = v587;
  v391 = *(v587 + 16);
  v205 = v553;
  if (v391)
  {
    v586 = MEMORY[0x277D84F90];
    sub_2385FEBB0(0, v391, 0);
    v392 = 0;
    v393 = v586;
    v542 = v390 + ((*(v551 + 80) + 32) & ~*(v551 + 80));
    v568 = (v137 + 16);
    v578 = (v537 + 16);
    LODWORD(v541) = *MEMORY[0x277CC7C10];
    v394 = v137;
    v395 = (v537 + 8);
    v540 = v524 + 16;
    v539 = (v524 + 8);
    v538 = (v394 + 8);
    v544 = v390;
    v543 = v391;
    do
    {
      if (v392 >= *(v390 + 16))
      {
        goto LABEL_96;
      }

      v559 = v393;
      v396 = *(v551 + 72);
      v558 = v392;
      v397 = v561;
      sub_23843981C(v542 + v396 * v392, v561, &qword_27DF0AEE8, &qword_2387674F0);
      v398 = v197;
      v399 = *v397;
      v400 = *(v552 + 48);
      v401 = v201;
      v402 = v201;
      v403 = *v568;
      (*v568)(v573, v205, v402);
      v404 = v397 + v400;
      v405 = v572;
      v406 = v575;
      v575(v572, v404, v398);
      v407 = sub_2387590E0();
      v408 = v570;
      *v570 = v407;
      *(v408 + 1) = v409;
      v410 = v560;
      v406(v560, v405, v398);
      v411 = v398;
      v412 = v566(v410, v398);
      if (v412 != v571 && v412 != v535)
      {
        goto LABEL_100;
      }

      v413 = v412 != v571;
      v202(v560, v398);
      v414 = v573;
      v415 = *(sub_238759A80() + 16);

      v416 = v570;
      v570[16] = v413;
      *(v416 + 3) = v399;
      *(v416 + 4) = v415;
      v416[40] = v550;
      v417 = v564;
      v557 = v403;
      (v403)(v564, v414, v401);
      v418 = v546;
      v575(v546, v572, v411);
      v419 = sub_238759A50();
      v420 = *(v419 - 8);
      v556 = *(v420 + 104);
      v421 = v541;
      (v556)(v418, v541, v419);
      v555 = *(v420 + 56);
      (v555)(v418, 0, 1, v419);
      v422 = v562;
      v423 = &v416[*(v562 + 24)];
      sub_238759040();
      (v557)(v417, v573, v565);
      v575(v418, v572, v577);
      (v556)(v418, v421, v419);
      (v555)(v418, 0, 1, v419);
      v424 = &v416[*(v422 + 28)];
      sub_23875B060();
      sub_238759AB0();
      v425 = sub_2387590F0();
      v426 = *(v425 + 16);
      if (v426)
      {
        v427 = (*(v537 + 80) + 32) & ~*(v537 + 80);
        v557 = v425;
        v428 = v425 + v427;
        v429 = *(v537 + 72);
        v430 = *(v537 + 16);
        v431 = MEMORY[0x277D84F90];
        do
        {
          v434 = v579;
          v433 = v580;
          v430(v579, v428, v580);
          v435 = sub_238758900();
          v437 = v436;
          (*v395)(v434, v433);
          if (v437)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v431 = sub_238497C2C(0, *(v431 + 2) + 1, 1, v431);
            }

            v439 = *(v431 + 2);
            v438 = *(v431 + 3);
            if (v439 >= v438 >> 1)
            {
              v431 = sub_238497C2C((v438 > 1), v439 + 1, 1, v431);
            }

            *(v431 + 2) = v439 + 1;
            v432 = &v431[16 * v439];
            *(v432 + 4) = v435;
            *(v432 + 5) = v437;
          }

          v428 += v429;
          --v426;
        }

        while (v426);
      }

      else
      {

        v431 = MEMORY[0x277D84F90];
      }

      v205 = v553;
      v440 = v547;
      (*v540)(v547, v569, v563);
      v441 = v549;
      v201 = v565;
      v197 = v577;
      v202 = v554;
      if (*(v431 + 2) >= 5uLL)
      {
        sub_23852EE64(v431, (v431 + 32), 0, 9uLL);
        v443 = v442;

        v431 = v443;
      }

      (*v539)(v569, v563);
      v202(v572, v197);
      (*v538)(v573, v201);
      *(v440 + *(v548 + 20)) = v431;
      v444 = v570;
      sub_23852EDFC(v440, &v570[*(v562 + 32)], type metadata accessor for ProductImage.ViewModel);
      sub_23852EDFC(v444, v441, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      sub_238439884(v561, &qword_27DF0AEE8, &qword_2387674F0);
      v393 = v559;
      v586 = v559;
      v446 = *(v559 + 16);
      v445 = *(v559 + 24);
      if (v446 >= v445 >> 1)
      {
        sub_2385FEBB0(v445 > 1, v446 + 1, 1);
        v441 = v549;
        v393 = v586;
      }

      v447 = (v558 + 1);
      *(v393 + 16) = v446 + 1;
      v448 = v441;
      v392 = v447;
      sub_23852EDFC(v448, v393 + ((*(v545 + 80) + 32) & ~*(v545 + 80)) + *(v545 + 72) * v446, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      v390 = v544;
    }

    while (v392 != v543);
    v136 = v201;
    v137 = v534;
    v449 = v393;
  }

  else
  {
    v136 = v201;
    v449 = MEMORY[0x277D84F90];
  }

  v450 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  v172 = v492;
  sub_2384396E4(v532, v492, &qword_27DF0D580, &qword_23876D538);
  *&v172[v450] = v449;
  swift_storeEnumTagMultiPayload();

  v203 = v533;
LABEL_93:
  sub_23852EDFC(v172, v531, type metadata accessor for OrderDetails.FulfillmentsViewModel);
  __swift_destroy_boxed_opaque_existential_1(v203);
  return (*(v137 + 8))(v205, v136);
}