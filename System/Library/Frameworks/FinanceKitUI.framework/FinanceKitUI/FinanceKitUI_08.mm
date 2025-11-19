unint64_t sub_2384D378C()
{
  result = qword_27DF0C250;
  if (!qword_27DF0C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFC8, &qword_238769D48);
    sub_2384D3844();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C250);
  }

  return result;
}

unint64_t sub_2384D3844()
{
  result = qword_27DF0C258;
  if (!qword_27DF0C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFC0, &qword_238769D40);
    sub_2384D38FC();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C258);
  }

  return result;
}

unint64_t sub_2384D38FC()
{
  result = qword_27DF0C260;
  if (!qword_27DF0C260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFB8, &qword_238769D38);
    sub_23843A3E8(&qword_27DF0C268, &qword_27DF0BFD8, &qword_238769D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C260);
  }

  return result;
}

uint64_t WalletCardsBalanceWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C270, &qword_23876A010);
  *&v55 = *(v56 - 8);
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v3 = &v51 - v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C278, &qword_23876A018);
  v57 = *(v62 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v62);
  v6 = &v51 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C280, &qword_23876A020);
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C288, &qword_23876A028);
  v60 = *(v66 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v66);
  v58 = &v51 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C290, &unk_23876A030);
  v65 = *(v67 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v51 - v12;
  sub_238758890();
  v69 = sub_238758880();
  v13 = sub_238758A30();

  v14 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v69 = v13;
  v70 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C298, &unk_23876A060);
  sub_2384D4654();
  sub_2384D4818();
  sub_23875E880();
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

  v69 = v20;
  v70 = v22;
  v23 = sub_23843A3E8(&qword_2814F08E0, &qword_27DF0C270, &qword_23876A010);
  v24 = sub_2384397A8();
  v25 = v56;
  sub_23875D180();

  (*(v55 + 8))(v3, v25);
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v15 localizedStringForKey:v26 value:v27 table:v28];

  v30 = sub_23875EA80();
  v32 = v31;

  v73 = v30;
  v74 = v32;
  v69 = v25;
  v70 = MEMORY[0x277D837D0];
  v71 = v23;
  v72 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v59;
  v35 = v62;
  sub_23875D150();

  (*(v57 + 8))(v6, v35);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A0, &unk_23877D2F0);
  v54 = sub_23875E7D0();
  v36 = *(v54 - 8);
  v56 = *(v36 + 72);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v55 = xmmword_2387632F0;
  *(v38 + 16) = xmmword_2387632F0;
  v53 = *MEMORY[0x277CE3B68];
  v52 = *(v36 + 104);
  v52(v38 + v37);
  v69 = v35;
  v70 = MEMORY[0x277D837D0];
  v71 = OpaqueTypeConformance2;
  v72 = v24;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v58;
  v41 = v63;
  sub_23875D160();

  (*(v61 + 8))(v34, v41);
  v69 = v41;
  v70 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v64;
  v44 = v66;
  sub_23875D190();
  (*(v60 + 8))(v40, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A8, &qword_23876A080);
  v45 = *(sub_23875E800() - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  *(swift_allocObject() + 16) = xmmword_238763B60;
  sub_23875E7E0();
  sub_23875E7F0();
  v48 = swift_allocObject();
  *(v48 + 16) = v55;
  (v52)(v48 + v37, v53, v54);
  v69 = v44;
  v70 = v42;
  swift_getOpaqueTypeConformance2();
  v49 = v67;
  sub_23875D170();

  return (*(v65 + 8))(v43, v49);
}

uint64_t sub_2384D430C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = sub_23875D640();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WalletCardsBalanceWidgetEntryView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v17 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384D5088(a1, v10, type metadata accessor for ConnectedCardsTimelineEntry);
  v11 = *(v7 + 20);
  *&v10[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
  swift_storeEnumTagMultiPayload();
  sub_23875D630();
  sub_23875E4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C8, &qword_238765790);
  sub_2384D50F0(&qword_2814F0A90, type metadata accessor for WalletCardsBalanceWidgetEntryView);
  sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790);
  v12 = v19;
  sub_23875DD30();
  (*(v3 + 8))(v6, v18);
  sub_2384D53F0(v10, type metadata accessor for WalletCardsBalanceWidgetEntryView);
  KeyPath = swift_getKeyPath();
  sub_238758890();
  v20 = sub_238758880();
  v14 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C298, &unk_23876A060);
  v16 = (v12 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

unint64_t sub_2384D4654()
{
  result = qword_2814F0978;
  if (!qword_2814F0978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C298, &unk_23876A060);
    type metadata accessor for WalletCardsBalanceWidgetEntryView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3C8, &qword_238765790);
    sub_2384D50F0(&qword_2814F0A90, type metadata accessor for WalletCardsBalanceWidgetEntryView);
    sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0978);
  }

  return result;
}

uint64_t type metadata accessor for WalletCardsBalanceWidgetEntryView()
{
  result = qword_2814F0A80;
  if (!qword_2814F0A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2384D4818()
{
  result = qword_2814F0A98[0];
  if (!qword_2814F0A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814F0A98);
  }

  return result;
}

uint64_t sub_2384D4888@<X0>(_WORD *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

void sub_2384D4968()
{
  type metadata accessor for ConnectedCardsTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_238439AC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2384D4A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2B0, &qword_23876A158);
  v3 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = v23 - v4;
  v6 = type metadata accessor for SmallWalletCardsBalanceWidget();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875E7D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2B8, &qword_23876A160);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v23 - v17;
  sub_23875ED50();
  v23[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1 + *(type metadata accessor for WalletCardsBalanceWidgetEntryView() + 20);
  sub_2384D4E88(&qword_27DF0C2C0, &qword_23876A1A0, MEMORY[0x277CE3BA0], v14);
  LODWORD(v19) = (*(v11 + 88))(v14, v10);
  v20 = *MEMORY[0x277CE3B68];
  sub_2384D5088(a1, v9, type metadata accessor for ConnectedCardsTimelineEntry);
  v21 = *(v6 + 20);
  *&v9[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  sub_2384D5088(v9, v5, type metadata accessor for SmallWalletCardsBalanceWidget);
  swift_storeEnumTagMultiPayload();
  sub_2384D50F0(qword_2814F0B30, type metadata accessor for SmallWalletCardsBalanceWidget);
  sub_23875D1B0();
  sub_2384D53F0(v9, type metadata accessor for SmallWalletCardsBalanceWidget);
  if (v19 != v20)
  {
    (*(v11 + 8))(v14, v10);
  }

  sub_2384396E4(v18, v25, &qword_27DF0C2B8, &qword_23876A160);
}

uint64_t sub_2384D4E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23875CDB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_23843981C(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_23875EFF0();
    v22 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2384D5088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384D50F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384D5250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23875CDB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(v8, v17, a1, a2);
  if (v18 == 1)
  {
    return a3(v17, a4);
  }

  sub_23875EFF0();
  v16 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2384D53F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384D5450()
{
  result = qword_2814F0900;
  if (!qword_2814F0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2D0, &qword_23876A210);
    sub_2384D54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0900);
  }

  return result;
}

unint64_t sub_2384D54D4()
{
  result = qword_2814F0958;
  if (!qword_2814F0958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2B8, &qword_23876A160);
    sub_2384D50F0(qword_2814F0B30, type metadata accessor for SmallWalletCardsBalanceWidget);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0958);
  }

  return result;
}

uint64_t sub_2384D55D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E8, &qword_23876A230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_23843981C(v2, &v16 - v11, &qword_27DF0C2E8, &qword_23876A230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2384396E4(v12, a1, &qword_27DF0C2F0, &qword_23876A238);
  }

  v14 = *v12;
  sub_23875EFF0();
  v15 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

FKBankConnectBackgroundRefreshConfirmationViewControllerProvider __swiftcall FKBankConnectBackgroundRefreshConfirmationViewControllerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FKBankConnectBackgroundRefreshConfirmationViewControllerProvider()
{
  result = qword_27DF0C310;
  if (!qword_27DF0C310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0C310);
  }

  return result;
}

uint64_t sub_2384D5ABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238757A30();
  v3 = MEMORY[0x277CC6A68];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentValues.deviceInfo.getter()
{
  sub_2384D5B2C();
  sub_23875CDC0();
  return v1;
}

unint64_t sub_2384D5B2C()
{
  result = qword_27DF0C320;
  if (!qword_27DF0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C320);
  }

  return result;
}

void (*EnvironmentValues.deviceInfo.modify(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_2384D5B2C();
  sub_23875CDC0();
  *v4 = v4[1];
  return sub_2384D5C54;
}

void sub_2384D5C54(_OWORD **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 4);
  v2 = *(*a1 + 5);
  (*a1)[1] = **a1;
  sub_23875CDD0();

  free(v1);
}

uint64_t BankConnectWebAuthorizationError.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

id sub_2384D5EA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebAuthenticationPresentationContextProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BankConnectWebAuthorizationViewModel.__allocating_init(onAppearHandler:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BankConnectWebAuthorizationViewModel.init(onAppearHandler:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BankConnectWebAuthorizationViewModel.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t BankConnectWebAuthorizationViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2384D5F80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectWebAuthorizationViewModel();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t BankConnectWebAuthorizationView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t BankConnectWebAuthorizationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_23875CE20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C330, &unk_23876A2B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  v14 = *v1;
  v24 = v1[1];
  v25 = v14;
  v15 = *(v1 + 16);
  *v13 = sub_23875E4A0();
  v13[1] = v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C338, &unk_23876B990) + 44);
  sub_23875C530();
  sub_23875CE10();
  (*(v3 + 16))(v6, v9, v2);
  sub_2384D6668(&unk_27DF0C340, 255, MEMORY[0x277CE0068]);
  v18 = sub_23875C5E0();
  (*(v3 + 8))(v9, v2);

  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0) + 36)] = v18;
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v25;
  *(v19 + 24) = v20;
  *(v19 + 32) = v15;
  v21 = (v13 + *(v10 + 36));
  *v21 = sub_2384D63E4;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  sub_2384D63F0();
  sub_2384D63F8();
  sub_23875DE40();
  return sub_2384D64E8(v13);
}

uint64_t sub_2384D62BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectWebAuthorizationViewModel();
  sub_2384D6668(&qword_27DF0C3D8, v0, type metadata accessor for BankConnectWebAuthorizationViewModel);
  v1 = sub_23875C490();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  v3(v4);
}

uint64_t sub_2384D63E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2384D62BC();
}

unint64_t sub_2384D63F8()
{
  result = qword_27DF0C350;
  if (!qword_27DF0C350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C330, &unk_23876A2B0);
    sub_2384D6484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C350);
  }

  return result;
}

unint64_t sub_2384D6484()
{
  result = qword_27DF0C358;
  if (!qword_27DF0C358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C360, &qword_23876B980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C358);
  }

  return result;
}

uint64_t sub_2384D64E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C330, &unk_23876A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384D6554()
{
  result = qword_27DF0C368;
  if (!qword_27DF0C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C368);
  }

  return result;
}

uint64_t sub_2384D6668(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_2384D66EC()
{
  result = qword_27DF0C3E0;
  if (!qword_27DF0C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C3E0);
  }

  return result;
}

uint64_t sub_2384D675C@<X0>(uint64_t a1@<X8>)
{
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
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v7, v9, v4 & 1);

  LOBYTE(v7) = sub_23875D7A0();
  sub_23875C3D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_23875D440();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = v7;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 76) = result;
  return result;
}

unint64_t sub_2384D6954()
{
  result = qword_27DF0C3E8;
  if (!qword_27DF0C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C3F0, &qword_23876A628);
    sub_2384BF528();
    sub_2384D69E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C3E8);
  }

  return result;
}

unint64_t sub_2384D69E0()
{
  result = qword_2814F0930;
  if (!qword_2814F0930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0930);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2384D6A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2384D6AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2384D6B30@<X0>(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v65 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D8, &unk_23876A8A0);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v8 = &v65 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E0, &qword_238765840);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E8, &unk_23876A8B0);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v76 = &v65 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F0, &qword_238765848);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v79 = &v65 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F8, &unk_23876A8C0);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v80 = &v65 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A400, &qword_238765850);
  v17 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v19 = &v65 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A408, &qword_23876A8D0);
  v20 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v65 - v21;
  v22 = sub_23875C980();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *v1;
  v26 = qword_23876AB28[v73];
  v28 = *(v27 + 28);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_23875CF50();
  (*(*(v30 - 8) + 104))(&v25[v28], v29, v30);
  *v25 = v26;
  *(v25 + 1) = v26;
  v70 = v25;
  v31 = sub_23875E0D0();
  v32 = sub_23875D820();
  KeyPath = swift_getKeyPath();
  *&v82 = v31;
  *(&v82 + 1) = KeyPath;
  *&v83 = v32;
  v34 = *MEMORY[0x277CDF9E8];
  v35 = sub_23875C880();
  (*(*(v35 - 8) + 104))(v5, v34, v35);
  sub_2384DD908(&qword_2814F0998, MEMORY[0x277CDFA28]);
  result = sub_23875E9E0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
    sub_23846E74C();
    v65 = v19;
    v66 = a1;
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    sub_23875DC50();
    sub_238439884(v5, &qword_27DF0A3D0, &unk_238771220);

    *&v8[*(v68 + 36)] = sub_23875E040();
    sub_23875E4A0();
    sub_23875C9C0();
    v37 = v72;
    sub_2384396E4(v8, v72, &qword_27DF0A3D8, &unk_23876A8A0);
    v38 = (v37 + *(v69 + 36));
    v39 = v87;
    v38[4] = v86;
    v38[5] = v39;
    v38[6] = v88;
    v40 = v83;
    *v38 = v82;
    v38[1] = v40;
    v41 = v85;
    v38[2] = v84;
    v38[3] = v41;
    sub_23875E010();
    v42 = sub_23875E060();

    v43 = v37;
    v44 = v76;
    sub_2384396E4(v43, v76, &qword_27DF0A3E0, &qword_238765840);
    v45 = v44 + *(v71 + 36);
    *v45 = v42;
    *(v45 + 8) = xmmword_2387657B0;
    *(v45 + 24) = 0x4000000000000000;
    v46 = [objc_opt_self() systemBlackColor];
    v47 = sub_23875DFB0();
    LOBYTE(v42) = sub_23875D780();
    v48 = v44;
    v49 = v79;
    sub_2384396E4(v48, v79, &qword_27DF0A3E8, &unk_23876A8B0);
    v50 = v49 + *(v75 + 36);
    *v50 = v47;
    *(v50 + 8) = v42;
    v51 = v73;
    v52 = qword_23876AB58[v73];
    sub_23875E4A0();
    sub_23875C5C0();
    v53 = v80;
    sub_2384396E4(v49, v80, &qword_27DF0A3F0, &qword_238765848);
    v54 = (v53 + *(v77 + 36));
    v55 = v90;
    *v54 = v89;
    v54[1] = v55;
    v54[2] = v91;
    v56 = v65;
    v57 = &v65[*(v74 + 36)];
    v58 = v70;
    sub_2384DD008(v70, v57, MEMORY[0x277CDFC08]);
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    sub_2384396E4(v53, v56, &qword_27DF0A3F8, &unk_23876A8C0);
    v59 = sub_23875E4A0();
    v61 = v60;
    v62 = v81;
    v63 = &v81[*(v78 + 36)];
    sub_2384D73EC(v58, v51, v63);
    v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v64 = v59;
    v64[1] = v61;
    sub_2384396E4(v56, v62, &qword_27DF0A400, &qword_238765850);
    sub_2384396E4(v62, v66, &qword_27DF0A408, &qword_23876A8D0);
    return sub_23846E8D0(v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2384D73EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v15 = sub_23875E060();

  sub_23875C4C0();
  sub_2384DD008(a1, v14, MEMORY[0x277CDFC08]);
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v17 = v25;
  *v16 = *&v24[8];
  *(v16 + 1) = v17;
  *(v16 + 4) = v26;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v14[*(v18 + 52)] = v15;
  *&v14[*(v18 + 56)] = 256;
  v19 = sub_23875E4A0();
  v21 = v20;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v22 = v19;
  v22[1] = v21;
  sub_2384396E4(v14, a3, &qword_27DF0A438, &unk_2387662D0);
}

uint64_t sub_2384D76EC()
{
  v1 = sub_23875BE20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    v6 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2387632F0;
    v8 = MEMORY[0x277D83C10];
    *(v7 + 56) = MEMORY[0x277D83B88];
    *(v7 + 64) = v8;
    *(v7 + 32) = v6;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v9 = qword_2814F1B90;
    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = sub_23875EA50();
    v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

    sub_23875EA80();
    v14 = sub_23875EAA0();

    goto LABEL_9;
  }

  v15 = *(v0 + 64);
  sub_23875BDB0();
  v16 = sub_23875BD60();
  result = (*(v2 + 8))(v5, v1);
  v18 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v18 < *(v16 + 16))
  {
    v19 = v16 + 16 * v18;
    v14 = *(v19 + 32);
    v20 = *(v19 + 40);

LABEL_9:

    return v14;
  }

LABEL_12:
  __break(1u);
  return result;
}

__n128 sub_2384D7958@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v50 = sub_23875C950();
  v49 = *(v50 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TransactionUnitList();
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C3F8, &qword_23876A710);
  v44 = *(v45 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = v39 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C400, qword_23876A718);
  v46 = *(v47 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = v39 - v11;
  v52 = v1;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = *v1;
  *&v57 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v12 = v53;
  v13 = v54;
  v14 = v55;
  v39[1] = v55;
  v56 = *(v1 + 24);
  *&v57 = *(v1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v15 = v53;
  v16 = v54;
  v17 = v55;
  v18 = *(v2 + 7);
  v19 = *(v2 + 8);
  v20 = *(v2 + 72);
  v53 = *(v2 + 6);
  *v7 = v12;
  v7[1] = v13;
  v39[3] = v12;
  v39[2] = v13;
  v7[2] = v14;
  v7[3] = v15;
  v39[5] = v15;
  v7[4] = v16;
  v7[5] = v17;
  v39[4] = v16;
  v39[0] = sub_23875A230();
  KeyPath = swift_getKeyPath();
  sub_23843981C(&v53, &v56, &qword_27DF0B5C0, &unk_2387683E0);

  MEMORY[0x23EE5ECA0](0, KeyPath);

  sub_23844F3E4(v18, v19, v20);
  v22 = v40;
  v23 = v7 + *(v40 + 24);
  sub_23875C510();
  *(v7 + v22[7]) = v53;
  v24 = v7 + v22[8];
  *v24 = v18;
  *(v24 + 1) = v19;
  v24[16] = v20;
  v25 = sub_23844FA6C(v18, v19, v20);
  v27 = v26;

  v28 = (v7 + v22[9]);
  *v28 = v25;
  v28[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C408, &qword_23876A788);
  sub_2384DC790();
  sub_2384DD908(&qword_27DF0C438, type metadata accessor for TransactionUnitList);
  v29 = v42;
  sub_23875C750();
  v30 = v48;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0C440, &qword_27DF0C3F8, &qword_23876A710);
  sub_2384DD908(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v31 = v43;
  v32 = v45;
  v33 = v50;
  sub_23875DB30();
  (*(v49 + 8))(v30, v33);
  (*(v44 + 8))(v29, v32);
  sub_23875E4A0();
  sub_23875C9C0();
  v34 = v51;
  (*(v46 + 32))(v51, v31, v47);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C448, &qword_23876A7A8) + 36);
  v36 = v61;
  *(v35 + 64) = v60;
  *(v35 + 80) = v36;
  *(v35 + 96) = v62;
  v37 = v57;
  *v35 = v56;
  *(v35 + 16) = v37;
  result = v59;
  *(v35 + 32) = v58;
  *(v35 + 48) = result;
  return result;
}

__n128 sub_2384D804C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v17 = 0;
  sub_2384D8290(a1, &v27);
  v23 = v31;
  v24[0] = *v32;
  *(v24 + 9) = *&v32[9];
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26[0] = *v32;
  *(v26 + 9) = *&v32[9];
  sub_23843981C(&v19, v15, &qword_27DF0C450, &qword_23876A7B0);
  sub_238439884(v25, &qword_27DF0C450, &qword_23876A7B0);
  *&v16[55] = v22;
  *&v16[71] = v23;
  *&v16[87] = v24[0];
  *&v16[96] = *(v24 + 9);
  *&v16[7] = v19;
  *&v16[23] = v20;
  *&v16[39] = v21;
  v5 = v17;
  sub_23875E4B0();
  sub_23875C9C0();

  *&v18[55] = v30;
  *&v18[71] = v31;
  *&v18[87] = *v32;
  *&v18[103] = *&v32[16];
  *&v18[7] = v27;
  *&v18[23] = v28;
  *&v18[39] = v29;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  v6 = *&v16[32];
  *(a2 + 65) = *&v16[48];
  v7 = *&v16[80];
  *(a2 + 81) = *&v16[64];
  *(a2 + 97) = v7;
  *(a2 + 113) = *&v16[96];
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  *(a2 + 33) = v8;
  *(a2 + 49) = v6;
  v9 = *v18;
  v10 = *&v18[16];
  v11 = *&v18[32];
  *(a2 + 177) = *&v18[48];
  *(a2 + 161) = v11;
  *(a2 + 145) = v10;
  *(a2 + 129) = v9;
  result = *&v18[64];
  v13 = *&v18[80];
  v14 = *&v18[96];
  *(a2 + 240) = *&v18[111];
  *(a2 + 225) = v14;
  *(a2 + 209) = v13;
  *(a2 + 193) = result;
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_2384D8290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v21[0]) = 1;
  sub_2384D8478(a1, v17);
  *&v16[7] = v17[0];
  *&v16[55] = v18;
  *&v16[39] = v17[2];
  *&v16[23] = v17[1];
  v5 = v21[0];
  v19[0] = v4;
  v19[1] = 0;
  v20[0] = v21[0];
  v6 = *v16;
  *&v20[1] = *v16;
  *&v20[64] = *(&v18 + 1);
  v7 = *&v16[48];
  *&v20[49] = *&v16[48];
  v8 = *&v16[32];
  *&v20[33] = *&v16[32];
  v9 = *&v16[16];
  *&v20[17] = *&v16[16];
  *&v15[23] = *v20;
  *&v15[7] = v4;
  *&v15[71] = *&v20[48];
  *&v15[87] = *&v20[64];
  *&v15[55] = *&v20[32];
  *&v15[39] = *&v20[16];
  v10 = *v15;
  *(a2 + 17) = *&v15[16];
  *(a2 + 1) = v10;
  v11 = *&v15[64];
  *(a2 + 80) = *&v15[79];
  *(a2 + 65) = v11;
  v12 = *&v15[32];
  *(a2 + 49) = *&v15[48];
  *(a2 + 33) = v12;
  v14[88] = 1;
  *a2 = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v21[0] = v4;
  v21[1] = 0;
  v22 = v5;
  v23 = v6;
  *&v26[15] = *&v16[63];
  *v26 = v7;
  v25 = v8;
  v24 = v9;
  sub_23843981C(v19, v14, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v21, &qword_27DF0BA70, &unk_238769590);
}

uint64_t sub_2384D8478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DWORD1(v52) = sub_2384D76EC() >> 32;
  *(&v52 + 1) = v3;
  sub_2384397A8();
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  LODWORD(v52) = sub_23875D420();
  v9 = sub_23875DA20();
  v11 = v10;
  v13 = v12;
  sub_2384397FC(v4, v6, v8 & 1);

  sub_23875D820();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v9, v11, v13 & 1);

  sub_23875D850();
  v48 = sub_23875D9E0();
  v49 = v19;
  v21 = v20;
  v47 = v22;
  sub_2384397FC(v14, v16, v18 & 1);

  v52 = *(a1 + 24);
  v53 = *(a1 + 40);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  MEMORY[0x23EE62DC0](&v51, v23);
  v24 = v51;
  if (*(v51 + 16) && (v25 = sub_238547964(*(a1 + 56), *(a1 + 64), *(a1 + 72)), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = 0;
  }

  *&v52 = sub_2384DC900(v27);
  *(&v52 + 1) = v28;
  v29 = sub_23875DAA0();
  v31 = v30;
  v33 = v32;
  LODWORD(v52) = sub_23875D440();
  v34 = sub_23875DA20();
  v36 = v35;
  v38 = v37;
  sub_2384397FC(v29, v31, v33 & 1);

  sub_23875D970();
  v39 = sub_23875DA60();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_2384397FC(v34, v36, v38 & 1);

  LOBYTE(v52) = v47 & 1;
  LOBYTE(v51) = v43 & 1;
  *a2 = v48;
  *(a2 + 8) = v21;
  *(a2 + 16) = v47 & 1;
  *(a2 + 24) = v49;
  *(a2 + 32) = v39;
  *(a2 + 40) = v41;
  *(a2 + 48) = v43 & 1;
  *(a2 + 56) = v45;
  sub_23843980C(v48, v21, v47 & 1);

  sub_23843980C(v39, v41, v43 & 1);

  sub_2384397FC(v39, v41, v43 & 1);

  sub_2384397FC(v48, v21, v47 & 1);
}

double sub_2384D8814@<D0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  *v6 = v1[3];
  *&v6[9] = *(v1 + 57);
  v3 = *v1;
  v4 = v1[1];
  *&result = sub_2384D7958(a1).n128_u64[0];
  return result;
}

uint64_t sub_2384D8860()
{
  v11 = *v0;
  v12 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v1 = *(v10 + 32);

  v2 = *(v1 + 16);

  if (v2 < 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

uint64_t sub_2384D8A70()
{
  v11 = *v0;
  v12 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v1 = *(v10 + 48);

  v2 = *(v1 + 16);

  if (v2 < 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

uint64_t sub_2384D8C80@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E18, &unk_238761CA0);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C488, &qword_23876A920);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C490, &qword_23876A928);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C498, &qword_23876A930);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4A0, &qword_23876A938);
  sub_23843A3E8(&qword_27DF0C4A8, &qword_27DF0C4A0, &qword_23876A938);
  sub_23875D9C0();
  v19 = sub_23875D310();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D300();
  v24 = sub_23843A3E8(&qword_27DF0C4B0, &qword_27DF0C498, &qword_23876A930);
  v25 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v20 + 8))(v23, v19);
  (*(v15 + 8))(v18, v14);
  v67 = v14;
  v68 = v19;
  v69 = v24;
  v70 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v57;
  v28 = v55;
  sub_23875DB70();
  (*(v56 + 8))(v13, v28);
  v67 = v28;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v29 = v59;
  sub_23875DE10();
  (v60[1])(v27, v29);
  v30 = type metadata accessor for GroupedTransactionsView();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  sub_2384DD008(v58, &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  sub_23875ED50();
  v33 = sub_23875ED40();
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 16) = v33;
  *(v35 + 24) = v36;
  sub_2384DD8A0(&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for GroupedTransactionsView);
  v37 = sub_23875ED80();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v55 - v40;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v59 = sub_23875C830();
    v60 = &v55;
    v58 = *(v59 - 8);
    v42 = *(v58 + 64);
    MEMORY[0x28223BE20](v59);
    v44 = &v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_23875F470();

    v67 = 0xD000000000000037;
    v68 = 0x8000000238788CB0;
    v66 = 249;
    v45 = sub_23875F600();
    MEMORY[0x23EE63650](v45);

    v47 = MEMORY[0x28223BE20](v46);
    (*(v38 + 16))(&v55 - v40, v41, v37, v47);
    sub_23875C820();
    (*(v38 + 8))(v41, v37);
    v48 = v63;
    (*(v61 + 32))(v63, v64, v62);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E20, &unk_23876A950);
    return (*(v58 + 32))(v48 + *(v49 + 36), v44, v59);
  }

  else
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E28, &unk_238761CB0);
    v52 = v63;
    v53 = (v63 + *(v51 + 36));
    v54 = sub_23875C6E0();
    (*(v38 + 32))(&v53[*(v54 + 20)], &v55 - v40, v37);
    *v53 = &unk_23876A948;
    *(v53 + 1) = v35;
    return (*(v61 + 32))(v52, v64, v62);
  }
}

uint64_t sub_2384D94F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4C0, &qword_23876A968);
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4C8, &qword_23876A970);
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v94 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4D0, &qword_23876A978);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v101 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v114 = &v89 - v21;
  v22 = sub_23875C400();
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = *(v110 + 64);
  MEMORY[0x28223BE20](v22);
  v109 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4D8, &qword_23876A980);
  v91 = *(v90 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  v27 = &v89 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4E0, &qword_23876A988);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v89 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4E8, &qword_23876A990);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v98 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v89 - v37;
  sub_23875ED50();
  v97 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = a1[1];
  v96 = *a1;
  v116 = v96;
  v117 = v39;
  v113 = v39;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  v40 = v115;
  swift_getKeyPath();
  v116 = v40;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v41 = *(v40 + 32);

  v42 = *(v41 + 16);

  v105 = a1;
  v106 = v38;
  if (v42 && *(a1[5] + 16))
  {
    v116 = sub_2384D8860();
    v117 = v43;
    MEMORY[0x28223BE20](v116);
    *(&v89 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4F0, &qword_23876A9C0);
    sub_2384DD154();
    sub_2384397A8();
    v38 = v106;
    sub_23875E3A0();
    v45 = v109;
    v44 = v110;
    v46 = v111;
    (*(v110 + 104))(v109, *MEMORY[0x277CDF350], v111);
    sub_2384DD4E0(&qword_27DF0C538, &qword_27DF0C4D8, &qword_23876A980, sub_2384DD154);
    v47 = v32;
    v48 = v90;
    sub_23875DC80();
    (*(v44 + 8))(v45, v46);
    (*(v91 + 8))(v27, v48);
    (*(v29 + 32))(v38, v47, v28);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v107;
  v51 = v108;
  (*(v29 + 56))(v38, v49, 1, v28);
  v52 = v96;
  v116 = v96;
  v117 = v113;
  sub_23875E1B0();
  v53 = v115;
  swift_getKeyPath();
  v116 = v53;
  sub_23875BE90();

  v54 = *(v53 + 40);

  if (*(v54 + 16))
  {
    v55 = *(v54 + 32);

    v116 = v55;
    v116 = sub_23875F600();
    v117 = v56;
    MEMORY[0x28223BE20](v116);
    *(&v89 - 2) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C540, &qword_23876AA10);
    sub_2384DD328();
    sub_2384397A8();
    v57 = v93;
    sub_23875E3A0();
    v59 = v109;
    v58 = v110;
    v60 = v111;
    (*(v110 + 104))(v109, *MEMORY[0x277CDF350], v111);
    sub_2384DD4E0(&qword_27DF0C568, &qword_27DF0C4C0, &qword_23876A968, sub_2384DD328);
    v61 = v92;
    sub_23875DC80();
    (*(v58 + 8))(v59, v60);
    (*(v50 + 8))(v57, v51);
    v62 = v99;
    v63 = v100;
    v64 = v114;
    (*(v99 + 32))(v114, v61, v100);
    v65 = 0;
  }

  else
  {

    v65 = 1;
    v64 = v114;
    v62 = v99;
    v63 = v100;
  }

  v66 = *(v62 + 56);
  v67 = 1;
  v66(v64, v65, 1, v63);
  v116 = v52;
  v117 = v113;
  sub_23875E1B0();
  v68 = v115;
  swift_getKeyPath();
  v116 = v68;
  sub_23875BE90();

  v69 = *(v68 + 48);

  v70 = *(v69 + 16);

  if (v70)
  {
    v71 = v105;
    v116 = sub_2384D8A70();
    v117 = v72;
    MEMORY[0x28223BE20](v116);
    *(&v89 - 2) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C540, &qword_23876AA10);
    sub_2384DD328();
    sub_2384397A8();
    v73 = v95;
    sub_23875E3A0();
    v75 = v109;
    v74 = v110;
    v76 = v111;
    (*(v110 + 104))(v109, *MEMORY[0x277CDF350], v111);
    sub_2384DD4E0(&qword_27DF0C568, &qword_27DF0C4C0, &qword_23876A968, sub_2384DD328);
    v77 = v94;
    v113 = v66;
    v78 = v108;
    sub_23875DC80();
    (*(v74 + 8))(v75, v76);
    v79 = v78;
    v66 = v113;
    (*(v107 + 8))(v73, v79);
    v80 = v101;
    (*(v62 + 32))(v101, v77, v63);
    v67 = 0;
  }

  else
  {
    v80 = v101;
  }

  v66(v80, v67, 1, v63);
  v81 = v106;
  v82 = v98;
  sub_23843981C(v106, v98, &qword_27DF0C4E8, &qword_23876A990);
  v83 = v114;
  v84 = v102;
  sub_23843981C(v114, v102, &qword_27DF0C4D0, &qword_23876A978);
  v85 = v103;
  sub_23843981C(v80, v103, &qword_27DF0C4D0, &qword_23876A978);
  v86 = v104;
  sub_23843981C(v82, v104, &qword_27DF0C4E8, &qword_23876A990);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C570, &qword_23876AA48);
  sub_23843981C(v84, v86 + *(v87 + 48), &qword_27DF0C4D0, &qword_23876A978);
  sub_23843981C(v85, v86 + *(v87 + 64), &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v80, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v83, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v81, &qword_27DF0C4E8, &qword_23876A990);
  sub_238439884(v85, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v84, &qword_27DF0C4D0, &qword_23876A978);
  sub_238439884(v82, &qword_27DF0C4E8, &qword_23876A990);
}

uint64_t sub_2384DA204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GroupedTransactionsView();
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

  v7 = a1[1];
  v15 = *a1;
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath();
  v15 = v14;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v8 = *(v14 + 32);

  v15 = v8;
  swift_getKeyPath();
  sub_2384DD008(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2384DD8A0(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C588, &unk_23876AAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  sub_23843A3E8(&qword_27DF0C590, &qword_27DF0C588, &unk_23876AAB0);
  sub_2384DD908(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_2384DD238();
  sub_23875E370();
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v15 = qword_27DF2F920;

  v11 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4F0, &qword_23876A9C0);
  *(a2 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_2384DA5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v66 = a1;
  v64 = a3;
  v3 = type metadata accessor for GroupedTransactionsView();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v5;
  v60 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v50[-v8];
  v10 = sub_238758F50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50[-v16];
  v57 = type metadata accessor for TransactionView();
  v18 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  v21 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v50[-v22];
  sub_23875ED50();
  v61 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(v11 + 16);
  v24 = v17;
  v55 = v17;
  v25 = v66;
  v52 = v23;
  v26 = (v23)(v24, v66, v10);
  v27 = v65;
  v28 = *(v65 + 40);
  MEMORY[0x28223BE20](v26);
  *&v50[-16] = v25;
  sub_23854CF80(sub_2384DD7AC, v29, v9);
  v30 = sub_238758680();
  v31 = v10;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v54 = v30;
  result = v33(v9, 1);
  v53 = v9;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v67[1] = *(v27 + 48);
    v68 = *(v27 + 56);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](v67, v35);
    v51 = sub_23860E62C(v25, v67[0]);

    v36 = v60;
    sub_2384DD008(v27, v60, type metadata accessor for GroupedTransactionsView);
    v52(v14, v25, v31);
    v37 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v38 = (v59 + *(v11 + 80) + v37) & ~*(v11 + 80);
    v39 = swift_allocObject();
    sub_2384DD8A0(v36, v39 + v37, type metadata accessor for GroupedTransactionsView);
    v40 = *(v11 + 32);
    v40(v39 + v38, v14, v31);
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v41 = v57;
    v42 = *(v57 + 20);
    *&v20[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v40(&v20[v41[6]], v55, v31);
    (*(v32 + 32))(&v20[v41[7]], v53, v54);
    v20[v41[8]] = v51 & 1;
    v43 = &v20[v41[9]];
    *v43 = sub_2384DD7CC;
    v43[1] = v39;
    v44 = v41[10];
    v45 = *MEMORY[0x277CDFA00];
    v46 = sub_23875C880();
    (*(*(v46 - 8) + 104))(&v20[v44], v45, v46);
    v47 = v62;
    sub_2384DD8A0(v20, v62, type metadata accessor for TransactionView);
    v48 = v64;
    v49 = &v47[*(v63 + 36)];
    *v49 = xmmword_23876A640;
    *(v49 + 1) = xmmword_23876A640;
    v49[32] = 0;
    sub_2384396E4(v47, v48, &qword_27DF0C518, &unk_23876A9D0);
  }

  return result;
}

uint64_t sub_2384DAB9C()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758F40();
  sub_238758640();
  v8 = sub_23875BC80();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);

  return v8 & 1;
}

void sub_2384DAD40(char a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_238758F50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  if (a1)
  {
    (*(v11 + 16))(v14, a3, v10, v16);
    v19 = a2[6];
    v20 = a2[7];
    v31[1] = a3;
    v21 = a2[8];
    v36 = v19;
    v37 = v20;
    v38 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v39);
    sub_2387099C0(v18, v14);
    (*(v11 + 8))(v18, v10);
    v33 = v19;
    v34 = v20;
    v35 = v21;
    v32 = v39;
    sub_23875E2F0();

    v22 = a2[2];
    v23 = a2[3];
    v24 = a2[4];
    v36 = v22;
    v37 = v23;
    v38 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v39);
    sub_2384DB11C();
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v32 = v39;
    sub_23875E2F0();

    sub_2384DB490();
  }

  else
  {
    v26 = a2[7];
    v27 = a2[8];
    v36 = a2[6];
    v25 = v36;
    v37 = v26;
    v38 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v39);
    sub_2386F1FAC(a3, v9);
    sub_238439884(v9, &qword_27DF0C598, &unk_23877B770);
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v32 = v39;
    sub_23875E2F0();

    v28 = a2[2];
    v29 = a2[3];
    v30 = a2[4];
    v36 = v28;
    v37 = v29;
    v38 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v39);
    sub_2384DB6C8();
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v32 = v39;
    sub_23875E2F0();
  }
}

uint64_t sub_2384DB11C()
{
  v0 = sub_238758F20();
  sub_2384DC37C(v0, 0, 1);
  result = sub_238758E60();
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v29[0] = result;
        v29[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v3)
          {
            v4 = v3 - 1;
            if (v3 != 1)
            {
              v7 = 0;
              v17 = v29 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  break;
                }

                v7 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v3)
          {
            v7 = 0;
            v22 = v29;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v3)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v11 = v29 + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_23875F4B0();
          v4 = v28;
        }

        v6 = *result;
        if (v6 == 43)
        {
          if (v4 >= 1)
          {
            if (--v4)
            {
              v7 = 0;
              if (result)
              {
                v14 = (result + 1);
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  v16 = 10 * v7;
                  if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v7 = v16 + v15;
                  if (__OFADD__(v16, v15))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v4)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v6 != 45)
        {
          if (v4)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_61;
                }

                v21 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_61;
                }

                ++result;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v7 = 0;
          LOBYTE(v4) = 1;
LABEL_62:
          v30 = v4;
          v25 = v4;

          if (v25)
          {
            return result;
          }

          return sub_2384DC37C(v7 / 100, v7 % 100, 0);
        }

        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v8 = (result + 1);
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_61;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_61;
                }

                ++v8;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v4) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = 0;
    v7 = sub_2384523A8(result, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return sub_2384DC37C(v7 / 100, v7 % 100, 0);
    }
  }

  else
  {
  }

  return result;
}

void sub_2384DB490()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0xD000000000000011;
  v7 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0x8000000238785C50;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384DD908(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v14 = sub_23875E910();

  [v13 subject:v0 sendEvent:v14];
}

uint64_t sub_2384DB6C8()
{
  v0 = sub_238758F20();
  sub_2384DC4BC(v0, 0, 1);
  result = sub_238758E60();
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v29[0] = result;
        v29[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v3)
          {
            v4 = v3 - 1;
            if (v3 != 1)
            {
              v7 = 0;
              v17 = v29 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  break;
                }

                v7 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v3)
          {
            v7 = 0;
            v22 = v29;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v3)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v11 = v29 + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_23875F4B0();
          v4 = v28;
        }

        v6 = *result;
        if (v6 == 43)
        {
          if (v4 >= 1)
          {
            if (--v4)
            {
              v7 = 0;
              if (result)
              {
                v14 = (result + 1);
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  v16 = 10 * v7;
                  if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v7 = v16 + v15;
                  if (__OFADD__(v16, v15))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v4)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v6 != 45)
        {
          if (v4)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_61;
                }

                v21 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_61;
                }

                ++result;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v7 = 0;
          LOBYTE(v4) = 1;
LABEL_62:
          v30 = v4;
          v25 = v4;

          if (v25)
          {
            return result;
          }

          return sub_2384DC4BC(v7 / 100, v7 % 100, 0);
        }

        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v8 = (result + 1);
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_61;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_61;
                }

                ++v8;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v4) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = 0;
    v7 = sub_2384523A8(result, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return sub_2384DC4BC(v7 / 100, v7 % 100, 0);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_2384DBA3C(uint64_t *a1)
{
  v2 = type metadata accessor for GroupedTransactionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath();
  v12 = v11;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v6 = *(v11 + 40);

  v12 = v6;
  swift_getKeyPath();
  sub_2384DD008(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2384DD8A0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C578, &qword_23876AA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C558, &qword_23876AA18);
  sub_23843A3E8(&qword_27DF0C580, &qword_27DF0C578, &qword_23876AA78);
  sub_2384DD3D4();
  sub_23875E370();
}

uint64_t sub_2384DBD2C(uint64_t *a1)
{
  v2 = type metadata accessor for GroupedTransactionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  swift_getKeyPath();
  v12 = v11;
  sub_2384DD908(&qword_27DF09938, type metadata accessor for GroupedTransactionsViewDataProvider);
  sub_23875BE90();

  v6 = *(v11 + 48);

  v12 = v6;
  swift_getKeyPath();
  sub_2384DD008(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTransactionsView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2384DD8A0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GroupedTransactionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C578, &qword_23876AA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C558, &qword_23876AA18);
  sub_23843A3E8(&qword_27DF0C580, &qword_27DF0C578, &qword_23876AA78);
  sub_2384DD3D4();
  sub_23875E370();
}

__n128 sub_2384DC01C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a2 + 48);
  v16 = *(a2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v8 = *(a2 + 40);
  v9 = qword_27DF08D80;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_23875E2D0();

  *a3 = v12;
  result = v13;
  *(a3 + 8) = v13;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 48) = v8;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  *(a3 + 72) = v7;
  *(a3 + 80) = v10;
  return result;
}

uint64_t sub_2384DC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_23875ED50();
  *(v3 + 48) = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384DC27C, v5, v4);
}

uint64_t sub_2384DC27C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v2[1];
  v0[2] = *v2;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C4B8, &qword_23876A960);
  sub_23875E1B0();
  v4 = v0[4];
  v5 = *(v4 + 24);
  sub_2384DD908(&qword_27DF09A38, type metadata accessor for GroupedTransactionsViewDataProvider);
  swift_unknownObjectRetain();
  sub_23875A2C0();
  v6 = *(v4 + 24);
  sub_23875A2A0();
  sub_238450C60();

  v7 = v0[1];

  return v7();
}

unint64_t sub_2384DC37C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  LOBYTE(v6) = a3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v25 = v11;
  result = sub_238547964(a1, a2, v6 & 1);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_238548998(v17, isUniquelyReferenced_nonNull_native);
    result = sub_238547964(a1, a2, v6 & 1);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_23875F680();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v5 = v11;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_7:
  v19 = v6 & 1;
  v6 = result;
  sub_2386CD454(result, a1, a2, v19, 0, v11);
  result = v6;
LABEL_8:
  while (1)
  {
    v20 = v11[7];
    v21 = *(v20 + 8 * result);
    v22 = __CFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v24 = result;
    sub_23854A404();
    result = v24;
    v11 = v25;
    *v5 = v25;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v20 + 8 * result) = v23;
  return result;
}

uint64_t sub_2384DC4BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = a3 & 1;
  v8 = sub_238547964(a1, a2, a3 & 1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v4 + 56) + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  sub_2386C40D0(v10 - 1, v10 == 1, a1, a2, v5);
  return a1;
}

uint64_t sub_2384DC554(uint64_t a1)
{
  v2 = sub_238758F50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v15[1] = v3 + 16;

  for (i = 0; v9; result = (*(v3 + 8))(v6, v2))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v3 + 16))(v6, *(a1 + 48) + *(v3 + 72) * (v14 | (v13 << 6)), v2);
    sub_2384DB6C8();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_2384DC6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicTransactionObject];
  *a2 = result;
  return result;
}

void sub_2384DC734(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23875BB40();
  [v2 setTransactionDate_];
}

unint64_t sub_2384DC790()
{
  result = qword_27DF0C410;
  if (!qword_27DF0C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C408, &qword_23876A788);
    sub_2384DC848();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C410);
  }

  return result;
}

unint64_t sub_2384DC848()
{
  result = qword_27DF0C418;
  if (!qword_27DF0C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C420, &qword_23876A790);
    sub_23843A3E8(&qword_27DF0C428, &qword_27DF0C430, &unk_23876A798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C418);
  }

  return result;
}

uint64_t sub_2384DC900(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = MEMORY[0x277D83ED0];
  *(v2 + 56) = MEMORY[0x277D83E88];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

uint64_t getEnumTagSinglePayload for LogoStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogoStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for GroupedTransactionsView()
{
  result = qword_27DF0C458;
  if (!qword_27DF0C458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384DCC40()
{
  sub_2384DCD3C();
  if (v0 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v1 <= 0x3F)
    {
      sub_2384DCD94();
      if (v2 <= 0x3F)
      {
        sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
        if (v3 <= 0x3F)
        {
          sub_23875BE20();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384DCD3C()
{
  if (!qword_27DF0C468)
  {
    type metadata accessor for GroupedTransactionsViewDataProvider();
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C468);
    }
  }
}

void sub_2384DCD94()
{
  if (!qword_27DF0C478)
  {
    sub_238758680();
    sub_2384DD908(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
    v0 = sub_23875EEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C478);
    }
  }
}

void sub_2384DCE28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875E340();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2384DCE7C()
{
  result = qword_27DF0C480;
  if (!qword_27DF0C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C448, &qword_23876A7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C3F8, &qword_23876A710);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0C440, &qword_27DF0C3F8, &qword_23876A710);
    sub_2384DD908(&qword_27DF0A778, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C480);
  }

  return result;
}

uint64_t sub_2384DD008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384DD070()
{
  v2 = *(type metadata accessor for GroupedTransactionsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2384DC1E4(v4, v5, v0 + v3);
}

unint64_t sub_2384DD154()
{
  result = qword_27DF0C4F8;
  if (!qword_27DF0C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C4F0, &qword_23876A9C0);
    sub_2384DD358(&qword_27DF0C500, &qword_27DF0C508, &qword_23876A9C8, sub_2384DD238);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C4F8);
  }

  return result;
}

unint64_t sub_2384DD238()
{
  result = qword_27DF0C510;
  if (!qword_27DF0C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C518, &unk_23876A9D0);
    sub_2384DD908(&qword_27DF0C520, type metadata accessor for TransactionView);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C510);
  }

  return result;
}

uint64_t sub_2384DD358(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2384DD3D4()
{
  result = qword_27DF0C550;
  if (!qword_27DF0C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C558, &qword_23876AA18);
    sub_2384DD48C();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C550);
  }

  return result;
}

unint64_t sub_2384DD48C()
{
  result = qword_27DF0C560;
  if (!qword_27DF0C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C560);
  }

  return result;
}

uint64_t sub_2384DD4E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

double sub_2384DD588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GroupedTransactionsView() - 8);
  *&result = sub_2384DC01C(a1, v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), a2).n128_u64[0];
  return result;
}

uint64_t objectdestroy_37Tm()
{
  v1 = (type metadata accessor for GroupedTransactionsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 56);

  v13 = *(v0 + v3 + 64);

  v14 = v1[10];
  v15 = sub_23875BE20();
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384DD72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GroupedTransactionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2384DA5A0(a1, v6, a2);
}

void sub_2384DD7CC(char a1)
{
  v3 = *(type metadata accessor for GroupedTransactionsView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_2384DAD40(a1, (v1 + v4), v7);
}

uint64_t sub_2384DD8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384DD908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BankConnectReviewAccountConnectionFlowView()
{
  result = qword_27DF0C5A0;
  if (!qword_27DF0C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2384DD9C4()
{
  result = sub_238757B60();
  if (v1 <= 0x3F)
  {
    result = sub_23875BCB0();
    if (v2 <= 0x3F)
    {
      result = sub_238449184(319, &qword_27DF096A8, 0x277D38080);
      if (v3 <= 0x3F)
      {
        result = sub_23846D0DC();
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

uint64_t sub_2384DDAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = sub_23875C780();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = sub_23875BCB0();
  v60 = v10;
  v68 = *(v10 - 8);
  v11 = v68;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v14;
  v65 = sub_238757B60();
  v69 = *(v65 - 8);
  v15 = v69;
  v16 = *(v69 + 64);
  v17 = MEMORY[0x28223BE20](v65);
  v66 = *(v15 + 16);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66(v17);
  v19 = type metadata accessor for BankConnectReviewAccountConnectionFlowView();
  v20 = v19[5];
  v62 = *(v11 + 16);
  v62(v14, v2 + v20, v10);
  v21 = *(v2 + v19[6]);
  v22 = (v2 + v19[7]);
  v24 = *v22;
  v23 = v22[1];
  v61 = v24;
  v57 = v21;
  v58 = v23;
  v25 = type metadata accessor for BankConnectReviewConnectionView();
  v26 = v25[7];
  v27 = sub_238758680();
  (*(*(v27 - 8) + 56))(a1 + v26, 1, 1, v27);
  v28 = v25[9];
  sub_23875C770();
  v29 = v64;
  (*(v4 + 16))(v63, v9, v64);
  sub_23875E1A0();
  (*(v4 + 8))(v9, v29);
  v30 = a1 + v25[10];
  v70 = 0;
  sub_23875E1A0();
  v31 = v72;
  *v30 = v71;
  *(v30 + 8) = v31;
  v32 = a1 + v25[11];
  v70 = 0;
  sub_23875E1A0();
  v33 = v72;
  *v32 = v71;
  *(v32 + 8) = v33;
  v34 = a1 + v25[12];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = v67;
  v36 = v65;
  (v66)(a1, v67, v65);
  v38 = v59;
  v37 = v60;
  v62((a1 + v25[5]), v59, v60);
  v39 = v57;
  v40 = v58;
  *(a1 + v25[6]) = v57;
  v41 = (a1 + v25[8]);
  *v41 = v61;
  v41[1] = v40;
  sub_238759780();
  v42 = v39;

  v43 = sub_238759710();
  v44 = sub_238759750();
  [v43 setPredicate_];

  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v45 = sub_23875EC60();
  [v43 setSortDescriptors_];

  sub_23875E500();
  v46 = a1 + v25[13];
  sub_23875C4F0();
  (*(v68 + 8))(v38, v37);
  (*(v69 + 8))(v35, v36);
  KeyPath = swift_getKeyPath();
  v48 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5B0, &unk_23876AC60) + 36));
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90) + 28);
  sub_23875C120();
  *v48 = KeyPath;
  v50 = swift_getKeyPath();
  sub_238758CC0();
  v51 = sub_238758CB0();
  v52 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5B8, &qword_23876AC70) + 36));
  *v52 = v50;
  v52[1] = v51;
  v53 = swift_getKeyPath();
  sub_238758890();
  v71 = sub_238758880();
  v54 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5C0, &qword_23876ACA8);
  v56 = (a1 + *(result + 36));
  *v56 = v53;
  v56[1] = v54;
  return result;
}

unint64_t sub_2384DE054()
{
  result = qword_27DF0C5C8;
  if (!qword_27DF0C5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5C0, &qword_23876ACA8);
    sub_2384DE0F8();
    sub_2384DE298(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5C8);
  }

  return result;
}

unint64_t sub_2384DE0F8()
{
  result = qword_27DF0C5D0;
  if (!qword_27DF0C5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5B8, &qword_23876AC70);
    sub_2384DE19C();
    sub_2384DE298(&qword_27DF0C5E8, &qword_27DF0C5F0, &unk_23876ACB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5D0);
  }

  return result;
}

unint64_t sub_2384DE19C()
{
  result = qword_27DF0C5D8;
  if (!qword_27DF0C5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5B0, &unk_23876AC60);
    sub_2384DE240();
    sub_2384DE298(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5D8);
  }

  return result;
}

unint64_t sub_2384DE240()
{
  result = qword_27DF0C5E0;
  if (!qword_27DF0C5E0)
  {
    type metadata accessor for BankConnectReviewConnectionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C5E0);
  }

  return result;
}

uint64_t sub_2384DE298(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2384DE2EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_23875F700();
  MEMORY[0x23EE641F0](v3);
  result = sub_23875F760();
  *a1 = result;
  return result;
}

uint64_t AccountMismatchedTileView.init(paymentPass:institution:mismatchedAccount:dismissedTile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for AccountMismatchedTileView();
  v15 = &a7[v14[7]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C5F8, &qword_23876ACD0);
  sub_23875E1A0();
  *v15 = v22;
  *(v15 + 1) = v23;
  *a7 = a1;
  v16 = v14[5];
  v17 = sub_238757B60();
  (*(*(v17 - 8) + 32))(&a7[v16], a2, v17);
  v18 = v14[6];
  v19 = sub_238758680();
  result = (*(*(v19 - 8) + 32))(&a7[v18], a3, v19);
  v21 = &a7[v14[8]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = a6;
  return result;
}

uint64_t type metadata accessor for AccountMismatchedTileView()
{
  result = qword_27DF0C660;
  if (!qword_27DF0C660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountMismatchedTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_23875C950();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountMismatchedTileView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C600, &qword_23876ACD8);
  v42 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C608, &qword_23876ACE0);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  *v14 = sub_23875D020();
  *(v14 + 1) = 0x402C000000000000;
  v14[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C610, &qword_23876ACE8);
  sub_2384DE968(v2, &v14[*(v20 + 44)]);
  v21 = sub_23875D7D0();
  sub_23875C3D0();
  v22 = &v14[*(v11 + 36)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v2 + *(v8 + 36);
  v28 = *v27;
  v29 = *(v27 + 8);
  v55 = v28;
  v56 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  sub_23875E1D0();
  v41 = v49;
  sub_2384E12D4(v2, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = swift_allocObject();
  sub_2384E0490(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C620, &qword_23876ACF8);
  v33 = sub_2384E0574();
  v39 = sub_2384E062C();
  v40 = sub_2384E0680();
  v34 = v42;
  sub_23875DEE0();

  sub_238439884(v14, &qword_27DF0C600, &qword_23876ACD8);
  v35 = v45;
  sub_23875C940();
  v49 = v34;
  v50 = &type metadata for AccountMismatchedTileView.Sheet;
  v51 = v32;
  v52 = v33;
  v53 = v39;
  v54 = v40;
  swift_getOpaqueTypeConformance2();
  sub_2384E14AC(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v36 = v43;
  v37 = v46;
  sub_23875DB30();
  (*(v47 + 8))(v35, v37);
  return (*(v44 + 8))(v19, v36);
}

uint64_t sub_2384DE968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C698, &qword_23876AE38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6A0, &qword_23876AE40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875CE50();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6A8, &qword_23876AE48);
  sub_2384DEC20(a1, &v17[*(v18 + 44)]);
  *v10 = sub_23875CE60();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6B0, &qword_23876AE50);
  sub_2384DF51C(a1, &v10[*(v19 + 44)]);
  sub_23843981C(v17, v14, &qword_27DF0C6A0, &qword_23876AE40);
  sub_23843981C(v10, v7, &qword_27DF0C698, &qword_23876AE38);
  sub_23843981C(v14, a2, &qword_27DF0C6A0, &qword_23876AE40);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6B8, &qword_23876AE58);
  sub_23843981C(v7, a2 + *(v20 + 48), &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v10, &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v17, &qword_27DF0C6A0, &qword_23876AE40);
  sub_238439884(v7, &qword_27DF0C698, &qword_23876AE38);
  sub_238439884(v14, &qword_27DF0C6A0, &qword_23876AE40);
}

uint64_t sub_2384DEC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v49 = a2;
  v2 = type metadata accessor for AccountMismatchedTileView();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F0, &qword_23876AE90);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v47 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v40[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F8, &qword_23876AE98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v40[-v13];
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(v2 + 20);
  v16 = sub_238757B60();
  v17 = v44;
  (*(*(v16 - 8) + 16))(v14, v44 + v15, v16);
  v14[*(type metadata accessor for BadgedErrorInstitutionLogo() + 20)] = 1;
  LOBYTE(v15) = sub_23875D7C0();
  sub_23875C3D0();
  v18 = &v14[*(v9 + 36)];
  *v18 = v15;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v42 = sub_23875D030();
  LOBYTE(v54[0]) = 0;
  sub_2384DF180(v51);
  *&v50[7] = v51[0];
  *&v50[23] = v51[1];
  *&v50[39] = v51[2];
  *&v50[55] = v51[3];
  v23 = v54[0];
  v41 = LOBYTE(v54[0]);
  sub_2384E12D4(v17, &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccountMismatchedTileView);
  v24 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v25 = swift_allocObject();
  sub_2384E0490(&v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09878, &qword_23876AEA0);
  sub_23844E928();
  sub_23875E200();
  *&v8[*(v45 + 36)] = xmmword_23876ACC0;
  v26 = v48;
  sub_23843981C(v14, v48, &qword_27DF0C6F8, &qword_23876AE98);
  v27 = v47;
  sub_23843981C(v8, v47, &qword_27DF0C6F0, &qword_23876AE90);
  v28 = v49;
  sub_23843981C(v26, v49, &qword_27DF0C6F8, &qword_23876AE98);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C700, &unk_23876AEA8);
  v30 = v28 + v29[12];
  v31 = v8;
  v32 = v42;
  *&v52 = v42;
  *(&v52 + 1) = 0x4020000000000000;
  v53[0] = v23;
  *&v53[1] = *v50;
  *&v53[17] = *&v50[16];
  *&v53[33] = *&v50[32];
  *&v53[49] = *&v50[48];
  v33 = *&v50[63];
  *&v53[64] = *&v50[63];
  v34 = *v53;
  *v30 = v52;
  *(v30 + 16) = v34;
  v35 = *&v53[16];
  v36 = *&v53[32];
  v37 = *&v53[48];
  *(v30 + 80) = v33;
  *(v30 + 48) = v36;
  *(v30 + 64) = v37;
  *(v30 + 32) = v35;
  v38 = v28 + v29[16];
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_23843981C(v27, v28 + v29[20], &qword_27DF0C6F0, &qword_23876AE90);
  sub_23843981C(&v52, v54, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v31, &qword_27DF0C6F0, &qword_23876AE90);
  sub_238439884(v14, &qword_27DF0C6F8, &qword_23876AE98);
  sub_238439884(v27, &qword_27DF0C6F0, &qword_23876AE90);
  v54[0] = v32;
  v54[1] = 0x4020000000000000;
  v55 = v41;
  v57 = *&v50[16];
  v58 = *&v50[32];
  *v59 = *&v50[48];
  *&v59[15] = *&v50[63];
  v56 = *v50;
  sub_238439884(v54, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v26, &qword_27DF0C6F8, &qword_23876AE98);
}

uint64_t sub_2384DF180@<X0>(uint64_t a1@<X8>)
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
  v31 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D980();
  v12 = sub_23875DA60();
  v33 = v13;
  v34 = v12;
  v32 = v14;
  v35 = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v31 localizedStringForKey:v16 value:v17 table:v18];

  sub_23875EA80();
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_23875D7F0();
  v24 = sub_23875DA60();
  v26 = v25;
  LOBYTE(v4) = v27;
  v29 = v28;

  sub_2384397FC(v20, v22, v18 & 1);

  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v29;
  sub_23843980C(v34, v33, v32 & 1);

  sub_23843980C(v24, v26, v4 & 1);

  sub_2384397FC(v24, v26, v4 & 1);

  sub_2384397FC(v34, v33, v32 & 1);
}

uint64_t sub_2384DF51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = sub_23875CFD0();
  v73 = *(v70 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6C0, &qword_23876AE60);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v7 = v57 - v6;
  v8 = type metadata accessor for AccountMismatchedTileView();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v10;
  v12 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6C8, &qword_23876AE68);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v72 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = v57 - v16;
  MEMORY[0x28223BE20](v17);
  v68 = v57 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v57 - v20;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v22 = qword_2814F1B90;
  v64 = qword_2814F1B90;
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

  v27 = sub_23875EA80();
  v29 = v28;

  v63 = type metadata accessor for AccountMismatchedTileView;
  sub_2384E12D4(a1, v12, type metadata accessor for AccountMismatchedTileView);
  v30 = v12;
  v58 = v12;
  v65 = *(v65 + 80);
  v31 = (v65 + 16) & ~v65;
  v62 = v11;
  v32 = swift_allocObject();
  v61 = a1;
  v33 = sub_2384E0490(v30, v32 + v31);
  MEMORY[0x28223BE20](v33);
  v57[-2] = v27;
  v57[-1] = v29;

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C208, &qword_23876AE70);
  v59 = sub_2384D3578();
  sub_23875E200();

  v34 = sub_23875D420();
  v36 = v66;
  v35 = v67;
  *&v7[*(v66 + 36)] = v34;
  sub_23875CFC0();
  v57[2] = sub_2384E13C8();
  v37 = sub_2384E14AC(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v57[0] = v21;
  v57[1] = v37;
  v38 = v21;
  v39 = v70;
  sub_23875DB30();
  v73 = *(v73 + 8);
  (v73)(v35, v39);
  sub_238439884(v7, &qword_27DF0C6C0, &qword_23876AE60);
  LODWORD(v27) = sub_23875D430();

  *&v38[*(v75 + 36)] = v27;
  v40 = sub_23875EA50();
  v41 = sub_23875EA50();
  v42 = sub_23875EA50();
  v43 = [v64 localizedStringForKey:v40 value:v41 table:v42];

  v44 = sub_23875EA80();
  v46 = v45;

  v47 = v58;
  sub_2384E12D4(v61, v58, v63);
  v48 = swift_allocObject();
  v49 = sub_2384E0490(v47, v48 + v31);
  MEMORY[0x28223BE20](v49);
  v57[-2] = v44;
  v57[-1] = v46;

  sub_23875E200();

  *&v7[*(v36 + 36)] = sub_23875D420();
  sub_23875CFC0();
  v50 = v68;
  sub_23875DB30();
  (v73)(v35, v39);
  sub_238439884(v7, &qword_27DF0C6C0, &qword_23876AE60);
  LODWORD(v29) = sub_23875D430();

  *(v50 + *(v75 + 36)) = v29;
  v51 = v57[0];
  v52 = v71;
  sub_23843981C(v57[0], v71, &qword_27DF0C6C8, &qword_23876AE68);
  v53 = v72;
  sub_23843981C(v50, v72, &qword_27DF0C6C8, &qword_23876AE68);
  v54 = v74;
  sub_23843981C(v52, v74, &qword_27DF0C6C8, &qword_23876AE68);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6E8, &qword_23876AE88);
  sub_23843981C(v53, v54 + *(v55 + 48), &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v50, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v51, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v53, &qword_27DF0C6C8, &qword_23876AE68);
  sub_238439884(v52, &qword_27DF0C6C8, &qword_23876AE68);
}

uint64_t sub_2384DFD28(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccountMismatchedTileView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  return sub_23875E1C0();
}

uint64_t sub_2384DFD9C@<X0>(char *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C688, &qword_23876AE20);
  v50 = *(v57 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v57);
  v49 = &v49 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C690, &unk_23876AE28);
  v11 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v49 - v12;
  v13 = type metadata accessor for AccountMismatchedTileView();
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = type metadata accessor for BankConnectReviewAccountConnectionFlowView();
  v15 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C620, &qword_23876ACF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v54 = &v49 - v20;
  v21 = *a1;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v21)
  {
    v22 = *a2;
    v23 = *(v13 + 20);
    v24 = v5[5];
    v25 = sub_238757B60();
    (*(*(v25 - 8) + 16))(&v8[v24], a2 + v23, v25);
    v26 = *(v13 + 24);
    v27 = v5[6];
    v28 = v22;
    sub_238758670();
    sub_2384E12D4(a2, &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
    v29 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v30 = swift_allocObject();
    sub_2384E0490(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    *v8 = v28;
    v31 = &v8[v5[7]];
    *v31 = sub_2384E1220;
    v31[1] = v30;
    v32 = sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
    v33 = v49;
    sub_23875DE20();
    sub_2384E133C(v8, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
    v34 = v50;
    v35 = v57;
    (*(v50 + 16))(v56, v33, v57);
    swift_storeEnumTagMultiPayload();
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
    v59 = v5;
    v60 = v32;
    swift_getOpaqueTypeConformance2();
    v36 = v54;
    sub_23875D1B0();
    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v37 = *(v13 + 20);
    v38 = sub_238757B60();
    (*(*(v38 - 8) + 16))(v17, a2 + v37, v38);
    v39 = *(v13 + 24);
    v40 = v55;
    v41 = &v17[*(v55 + 20)];
    sub_238758670();
    v42 = *a2;
    sub_2384E12D4(a2, &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountMismatchedTileView);
    v43 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v44 = swift_allocObject();
    sub_2384E0490(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
    *&v17[*(v40 + 24)] = v42;
    v45 = &v17[*(v40 + 28)];
    *v45 = sub_2384E1238;
    v45[1] = v44;
    sub_2384E12D4(v17, v56, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
    swift_storeEnumTagMultiPayload();
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
    v46 = sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
    v47 = v42;
    v59 = v5;
    v60 = v46;
    swift_getOpaqueTypeConformance2();
    v36 = v54;
    sub_23875D1B0();
    sub_2384E133C(v17, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
  }

  sub_238406274(v36, v58);
}

uint64_t sub_2384E0490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountMismatchedTileView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E04F4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountMismatchedTileView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2384DFD9C(a1, v6, a2);
}

unint64_t sub_2384E0574()
{
  result = qword_27DF0C628;
  if (!qword_27DF0C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C600, &qword_23876ACD8);
    sub_23843A3E8(&qword_27DF0C630, &qword_27DF0C638, &qword_23876AD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C628);
  }

  return result;
}

unint64_t sub_2384E062C()
{
  result = qword_27DF0C640;
  if (!qword_27DF0C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C640);
  }

  return result;
}

unint64_t sub_2384E0680()
{
  result = qword_27DF0C648;
  if (!qword_27DF0C648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C620, &qword_23876ACF8);
    sub_2384E14AC(&qword_27DF0C650, type metadata accessor for BankConnectReviewAccountConnectionFlowView);
    type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
    sub_2384E14AC(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C648);
  }

  return result;
}

uint64_t sub_2384E07C0(char a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for AccountMismatchedTileView() + 28));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  result = sub_23875E1C0();
  if (a1)
  {
    return sub_2384E0850(0);
  }

  return result;
}

uint64_t sub_2384E0850(char a1)
{
  v2 = v1;
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758BD0();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    MEMORY[0x28223BE20](v10);
    v30[-2] = v2;
    sub_23875E500();
    sub_23875C6F0();
  }

  else
  {
    v13 = v2 + *(type metadata accessor for AccountMismatchedTileView() + 32);
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v13) = *(v13 + 16);
    v36[0] = v14;
    v36[1] = v15;
    v37 = v13;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
    sub_23875E2F0();
  }

  v38 = sub_23875A820();
  v39 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_23875A7F0();
  v16 = objc_allocWithZone(sub_23875A060());
  v32 = sub_23875A030();
  v33 = *(type metadata accessor for AccountMismatchedTileView() + 24);
  v17 = v34;
  sub_238758530();
  v18 = sub_23875A9E0();
  v20 = v19;
  v30[1] = v2;
  v21 = *(v5 + 8);
  v21(v17, v4);
  *v12 = v18;
  v12[1] = v20;
  v22 = *MEMORY[0x277CC7288];
  v23 = v35;
  v31 = v4;
  v24 = *(v35 + 104);
  v24(v12, v22, v8);
  sub_23875A040();
  v35 = *(v23 + 8);
  (v35)(v12, v8);
  sub_238758530();
  v25 = sub_23875A9E0();
  v27 = v26;
  v21(v17, v31);
  *v12 = v25;
  v12[1] = v27;
  v24(v12, *MEMORY[0x277CC7278], v8);
  v28 = v32;
  sub_23875A040();

  return (v35)(v12, v8);
}

uint64_t sub_2384E0BC4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for AccountMismatchedTileView() + 28));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C618, &qword_23876ACF0);
  return sub_23875E1C0();
}

uint64_t sub_2384E0C38()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E0850(1);
}

uint64_t sub_2384E0CDC@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875E080();
  KeyPath = swift_getKeyPath();

  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = 0x3FE3333333333333;
  return result;
}

__n128 sub_2384E0DB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v14 = a1;
  *(&v14 + 1) = a2;
  sub_2384397A8();

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_23875E4A0();
  sub_23875C9C0();

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v12;
  *(a3 + 96) = v18;
  *(a3 + 112) = v19;
  *(a3 + 128) = v20;
  *(a3 + 32) = v14;
  *(a3 + 48) = v15;
  result = v17;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  return result;
}

uint64_t sub_2384E0F10(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AccountMismatchedTileView() + 32));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

void sub_2384E102C()
{
  sub_2384AD48C();
  if (v0 <= 0x3F)
  {
    sub_238757B60();
    if (v1 <= 0x3F)
    {
      sub_238758680();
      if (v2 <= 0x3F)
      {
        sub_2384E10F8();
        if (v3 <= 0x3F)
        {
          sub_2384E115C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384E10F8()
{
  if (!qword_27DF0C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C5F8, &qword_23876ACD0);
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C670);
    }
  }
}

void sub_2384E115C()
{
  if (!qword_27DF0C678)
  {
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C678);
    }
  }
}

unint64_t sub_2384E11C0()
{
  result = qword_27DF0C680;
  if (!qword_27DF0C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C680);
  }

  return result;
}

uint64_t sub_2384E1250(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AccountMismatchedTileView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2384E12D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E133C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384E13C8()
{
  result = qword_27DF0C6D0;
  if (!qword_27DF0C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C6C0, &qword_23876AE60);
    sub_23843A3E8(&qword_27DF0C6D8, &qword_27DF0C6E0, &unk_23876AE78);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C6D0);
  }

  return result;
}

uint64_t sub_2384E14AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for AccountMismatchedTileView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_238758680();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = (v0 + v3 + v1[10]);
  v11 = *v10;

  v12 = v10[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384E16B4()
{
  v0 = *(*(type metadata accessor for AccountMismatchedTileView() - 8) + 80);

  return sub_2384E0C38();
}

uint64_t AddOrderToWalletButton.init(signedArchive:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23875E1A0();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  sub_23875E1A0();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  result = swift_getKeyPath();
  *(a5 + 64) = result;
  *(a5 + 72) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AddOrderToWalletButton.body.getter()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v28 = v0[2];
  v29[0] = v6;
  *(v29 + 9) = *(v0 + 57);
  v7 = v0[1];
  v26 = *v0;
  v27 = v7;
  v31 = *(v0 + 72);
  v8 = *(v0 + 8);
  v30 = v8;
  if (v31 == 1)
  {
    LOBYTE(v20) = v8 & 1;
  }

  else
  {
    sub_2384E2A34(&v30, v18);
    sub_23875EFF0();
    v9 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v30, &qword_27DF0C708, &unk_23876AF18);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v8) = v20;
  }

  v10 = v8 & 1;
  v21 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v11 = v18[0];
  v12 = v18[1];
  v13 = v19;
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28;
  v14[4] = v15;
  *(v14 + 73) = *(v29 + 9);
  v16 = v27;
  v14[1] = v26;
  v14[2] = v16;
  *&v21 = v10;
  *(&v21 + 1) = sub_2384E2AA4;
  v22 = v14;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v20 = v29[0];
  sub_2384E2AAC(&v26, v18);
  sub_23875E1D0();
  sub_2384E1C54();
}

uint64_t sub_2384E1A84(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  sub_2387579D0();
  sub_2387579A0();
  v6 = sub_238757840();

  if (v6)
  {
    v14[0] = a1[3];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    return sub_23875E1C0();
  }

  else
  {
    v14[0] = a1[2];
    v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
    v8 = sub_23875ED80();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_23875ED50();
    sub_2384E2AAC(a1, v14);
    v9 = sub_23875ED40();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    v12 = a1[3];
    *(v10 + 64) = a1[2];
    *(v10 + 80) = v12;
    *(v10 + 89) = *(a1 + 57);
    v13 = a1[1];
    *(v10 + 32) = *a1;
    *(v10 + 48) = v13;
    sub_2386C3BA4(0, 0, v5, &unk_23876B1E0, v10);
  }
}

void sub_2384E1C54()
{
  v5 = *v0;
  *v6 = v0[1];
  *&v6[9] = *(v0 + 25);
  v1 = sub_23875EA50();
  v2 = PKLocalizedDeletableString(v1);

  if (v2)
  {
    sub_23875EA80();

    MEMORY[0x28223BE20](v3);
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
    sub_2384E2BF8();
    sub_2384397A8();
    sub_2384E2C4C();
    sub_23875DEC0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2384E1E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C748, &qword_23876B1E8);
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = sub_2387577B0();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_2387579B0();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_23875ED50();
  v4[15] = sub_23875ED40();
  v14 = sub_23875ECE0();
  v4[16] = v14;
  v4[17] = v13;

  return MEMORY[0x2822009F8](sub_2384E1FB0, v14, v13);
}

uint64_t sub_2384E1FB0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v1, *MEMORY[0x277CC6A50], v3);
  sub_238757830();
  v4 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v0[18] = sub_2387579A0();
  v5 = *v4;
  v6 = v4[1];
  v7 = *(MEMORY[0x277CC6A58] + 4);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_2384E2204;
  v9 = v0[11];

  return MEMORY[0x282116F28](v9, v5, v6);
}

uint64_t sub_2384E2204()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_2384E246C;
  }

  else
  {
    v7 = v2[18];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_2384E2320;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2384E2320()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  *(v0 + 32) = *(v7 + 32);
  *(v0 + 169) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  (*(v3 + 16))(v5, v2, v4);
  swift_storeEnumTagMultiPayload();
  v9(v5);
  sub_238439884(v5, &qword_27DF0C748, &qword_23876B1E8);
  (*(v3 + 8))(v2, v4);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2384E246C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  v3 = *(v0 + 160);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  *(v0 + 16) = *(v6 + 32);
  *(v0 + 168) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  *v4 = v3;
  swift_storeEnumTagMultiPayload();
  v9 = v3;
  v8(v4);

  sub_238439884(v4, &qword_27DF0C748, &qword_23876B1E8);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2384E259C(void *a1)
{
  v2 = v1;
  [a1 setAddPassButtonStyle_];
  v12 = *(v1 + 24);
  v13 = *(v1 + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v11, v4);
  [a1 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C738, &qword_23876B1D0);
  sub_23875D600();
  v5 = v12;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = (v12 + OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action);
  v9 = *(v12 + OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action + 8);
  *v8 = v7;
  v8[1] = v6;
}

id sub_2384E27D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddOrderButtonView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2384E2834@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for AddOrderButtonView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2384E28A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384E2CC4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2384E290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384E2CC4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2384E2970()
{
  sub_2384E2CC4();
  sub_23875D120();
  __break(1u);
}

uint64_t sub_2384E2998@<X0>(_BYTE *a1@<X8>)
{
  sub_2384E3540();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2384E29E8(char *a1)
{
  v2 = *a1;
  sub_2384E3540();
  return sub_23875CDD0();
}

uint64_t sub_2384E2A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C708, &unk_23876AF18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2384E2B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384E2B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384E2BF8()
{
  result = qword_27DF0C720;
  if (!qword_27DF0C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C720);
  }

  return result;
}

unint64_t sub_2384E2C4C()
{
  result = qword_27DF0C728;
  if (!qword_27DF0C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C718, &qword_2387708F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C728);
  }

  return result;
}

unint64_t sub_2384E2CC4()
{
  result = qword_27DF0C730;
  if (!qword_27DF0C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C730);
  }

  return result;
}

void sub_2384E2D18(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v42 - v15;
  MEMORY[0x28223BE20](v16);
  v45 = &v42 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_23875EA50();
  v22 = PKLocalizedDeletableString(v21);

  if (v22)
  {
    v42 = v13;
    v43 = a3;
    v23 = sub_23875EA80();
    v25 = v24;

    v48 = v23;
    v49 = v25;
    v26 = swift_allocObject();
    v27 = v47;
    *(v26 + 16) = a1;
    *(v26 + 24) = v27;
    sub_238455C54(a1);
    sub_2384397A8();
    sub_23875E230();
    v28 = sub_23875EA50();
    v29 = PKLocalizedDeletableString(v28);

    if (v29)
    {
      v30 = sub_23875EA80();
      v32 = v31;

      v48 = v30;
      v49 = v32;
      sub_23875C3B0();
      v33 = sub_23875C3C0();
      (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
      v34 = swift_allocObject();
      *(v34 + 16) = a1;
      *(v34 + 24) = v27;
      sub_238455C54(a1);
      v35 = v45;
      sub_23875E220();
      v36 = v10[2];
      v37 = v46;
      v36(v46, v20, v9);
      v38 = v42;
      v36(v42, v35, v9);
      v39 = v43;
      v36(v43, v37, v9);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C740, &unk_238770930);
      v36(&v39[*(v40 + 48)], v38, v9);
      v41 = v10[1];
      v41(v35, v9);
      v41(v20, v9);
      v41(v38, v9);
      v41(v37, v9);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2384E31A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D38B00]) initWithAddPassButtonStyle:a2 addPassButtonType:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C738, &qword_23876B1D0);
  sub_23875D600();
  [v8 addTarget:v13 action:sel_callback forControlEvents:0x2000];

  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v12, v10);
  [v9 setUserInteractionEnabled_];

  return v9;
}

void sub_2384E32B0(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = *v2;
  *v4 = v2[1];
  *&v4[9] = *(v2 + 25);
  sub_2384E2D18(v1[3], v1[4], a1);
}

void sub_2384E32EC(uint64_t a1@<X8>)
{
  sub_2384E3320();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

void sub_2384E3320()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_23875EA50();
  v1 = PKLocalizedDeletableString(v0);

  if (v1)
  {
    sub_23875EA80();

    sub_2384397A8();
    sub_23875DAA0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_14Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384E3490(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2384494A4;

  return sub_2384E1E24(a1, v4, v5, v1 + 32);
}

unint64_t sub_2384E3540()
{
  result = qword_27DF0C750;
  if (!qword_27DF0C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C750);
  }

  return result;
}

uint64_t MerchantLookupRequestExecutor.executeRequest(forTransactionID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2384E35B8, 0, 0);
}

uint64_t sub_2384E35B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37F60]) initWithSource_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2384E36D4;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000026, 0x8000000238789000, sub_2384E39FC, v2, &type metadata for MerchantLookupResponse);
}

uint64_t sub_2384E36D4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2384E37EC, 0, 0);
}

uint64_t sub_2384E37EC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2384E384C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_2384E3F50;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461390;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  [a2 startLookupWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_2384E3A04(void *a1)
{
  [a1 result];
  [a1 fallbackCategory];
  [a1 merchant];
  [a1 brand];
  [a1 placemark];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0);
  return sub_23875ED10();
}

uint64_t sub_2384E3AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2384E3B00, 0, 0);
}

uint64_t sub_2384E3B00()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37F60]) initWithSource_];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2384E3C1C;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000026, 0x8000000238789000, sub_2384E3FE4, v2, &type metadata for MerchantLookupResponse);
}

uint64_t sub_2384E3C1C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2384E3FE8, 0, 0);
}

uint64_t dispatch thunk of MerchantLookupRequestExecuting.executeRequest(forTransactionID:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2384494A4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_2384E3E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2384E3ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2384E3F50(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C758, &unk_23876B2B0) - 8) + 80);

  return sub_2384E3A04(a1);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ReturnDetailsMerchantImage()
{
  result = qword_27DF0C760;
  if (!qword_27DF0C760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E4060()
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384E40FC();
    if (v1 <= 0x3F)
    {
      sub_238438628();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384E40FC()
{
  if (!qword_27DF0C770)
  {
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C770);
    }
  }
}

uint64_t sub_2384E4168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = a1;
  v2 = sub_23875DFD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7B0, &qword_23876B360);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v9 = &v66 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7B8, &qword_23876B368);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v70 = &v66 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7C0, &qword_23876B370);
  v12 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v66 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7C8, &qword_23876B378);
  v14 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v66 - v15;
  sub_23875ED50();
  v73 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E5E0C(v76, v9, type metadata accessor for MerchantImage.ViewModel);
  v16 = type metadata accessor for MerchantImage(0);
  v9[*(v16 + 20)] = 0;
  v17 = *(v16 + 24);
  *&v9[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v2);
  v18 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0) + 36)];
  v21 = type metadata accessor for OrderImageStyleModifier();
  *&v20[*(v21 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v20[*(v21 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v20 = xmmword_2387692C0;
  *(v20 + 2) = 0;
  v20[24] = 1;
  *(v20 + 4) = v18;
  v20[40] = 0;
  v66 = sub_23875E490();
  v23 = v22;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_23875E4A0();
  v26 = v25;
  v27 = v76;
  sub_2384E4A28(v76, &v106);
  v92 = v110;
  v93 = v111;
  v94 = v112;
  v88 = v106;
  v89 = v107;
  v90 = v108;
  v91 = v109;
  v95[0] = v106;
  v95[1] = v107;
  v95[2] = v108;
  v95[3] = v109;
  v95[4] = v110;
  v95[5] = v111;
  v96 = v112;
  sub_23843981C(&v88, &v97, &qword_27DF0C7D8, &qword_23876B3F0);
  sub_238439884(v95, &qword_27DF0C7D8, &qword_23876B3F0);

  *&v97 = v24;
  *(&v97 + 1) = v26;
  v28 = v91;
  v29 = v92;
  v102 = v92;
  v103 = v93;
  v98 = v88;
  v99 = v89;
  v31 = v88;
  v30 = v89;
  v32 = v90;
  v100 = v90;
  v101 = v91;
  __asm { FMOV            V0.2D, #6.0 }

  *(v104 + 8) = _Q0;
  v38 = v94;
  *&v104[0] = v94;
  v39 = v66;
  *(&v104[1] + 1) = v66;
  v105 = v23;
  v40 = &v9[*(v67 + 36)];
  v41 = v104[0];
  *(v40 + 6) = v93;
  *(v40 + 7) = v41;
  *(v40 + 8) = v104[1];
  v42 = v100;
  *(v40 + 2) = v99;
  *(v40 + 3) = v42;
  v43 = v102;
  *(v40 + 4) = v101;
  *(v40 + 5) = v43;
  v44 = v98;
  *v40 = v97;
  *(v40 + 1) = v44;
  v111 = v29;
  v112 = v93;
  v107 = v31;
  v108 = v30;
  *(v40 + 18) = v23;
  *&v106 = v24;
  *(&v106 + 1) = v26;
  v113 = v38;
  v110 = v28;
  v109 = v32;
  v114 = _Q0;
  v115 = v39;
  v116 = v23;
  sub_23843981C(&v97, v87, &qword_27DF0C7E0, &qword_23876B3F8);
  sub_238439884(&v106, &qword_27DF0C7E0, &qword_23876B3F8);
  v45 = (v27 + *(type metadata accessor for ReturnDetailsMerchantImage() + 20));
  v46 = v45[3];
  *&v87[32] = v45[2];
  *&v87[48] = v46;
  *&v87[64] = v45[4];
  *&v87[73] = *(v45 + 73);
  v47 = v45[1];
  *v87 = *v45;
  *&v87[16] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v86);
  if ((v86[32] & 1) != 0 || (v86[72] & 1) != 0 || (v49 = 1.0, *&v86[48] + *&v86[64] >= *&v86[8] + *&v86[24]))
  {
    v49 = 0.0;
  }

  v50 = v70;
  sub_2384396E4(v9, v70, &qword_27DF0C7B0, &qword_23876B360);
  *(v50 + *(v68 + 36)) = v49;
  v51 = v45[3];
  *&v87[32] = v45[2];
  *&v87[48] = v51;
  *&v87[64] = v45[4];
  *&v87[73] = *(v45 + 73);
  v52 = v45[1];
  *v87 = *v45;
  *&v87[16] = v52;
  MEMORY[0x23EE62DC0](v86, v48);
  v53 = 0;
  if ((v86[32] & 1) == 0 && ((v86[72] & 1) != 0 || *&v86[48] + *&v86[64] >= *&v86[8] + *&v86[24]))
  {
    v53 = *&v86[24];
  }

  v54 = v72;
  v55 = sub_2384396E4(v50, v72, &qword_27DF0C7B8, &qword_23876B368);
  v56 = (v54 + *(v69 + 36));
  *v56 = 0;
  v56[1] = v53;
  v57 = MEMORY[0x23EE62FD0](v55, 0.5, 1.0, 0.0);
  v58 = v45[3];
  *&v87[32] = v45[2];
  *&v87[48] = v58;
  *&v87[64] = v45[4];
  *&v87[73] = *(v45 + 73);
  v59 = v45[1];
  *v87 = *v45;
  *&v87[16] = v59;
  MEMORY[0x23EE62DC0](&v82, v48);
  v81[0] = v85[0];
  *(v81 + 9) = *(v85 + 9);
  v79 = v83;
  v80 = v84;
  v78 = v82;
  *v86 = v57;
  *&v86[40] = v84;
  *&v86[56] = v85[0];
  *&v86[65] = *(v85 + 9);
  *&v86[8] = v82;
  *&v86[24] = v83;
  v60 = v74;
  sub_2384396E4(v54, v74, &qword_27DF0C7C0, &qword_23876B370);
  v61 = v60 + *(v71 + 36);
  v62 = *&v86[48];
  *(v61 + 32) = *&v86[32];
  *(v61 + 48) = v62;
  *(v61 + 64) = *&v86[64];
  v63 = *&v86[16];
  *v61 = *v86;
  *(v61 + 16) = v63;
  v64 = v78;
  *&v87[24] = v79;
  *&v87[40] = v80;
  *&v87[56] = v81[0];
  *&v87[65] = *(v81 + 9);
  *(v61 + 80) = v86[80];
  *v87 = v57;
  *&v87[8] = v64;
  sub_23843981C(v86, &v77, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v87, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v60, v75, &qword_27DF0C7C8, &qword_23876B378);
}

uint64_t sub_2384E4A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_23875DFD0();
  v46 = *(v47 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = sub_23875C450();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48 = sub_23875E0D0();
  v19 = a1 + *(type metadata accessor for ReturnDetailsMerchantImage() + 24);
  sub_2384D4E38(v18);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3C0], v11);
  LOBYTE(v19) = sub_23875C440();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v18, v11);
  if (v19)
  {
    v21 = sub_23875E010();
  }

  else
  {
    v21 = sub_23875E040();
  }

  v45 = v21;
  KeyPath = swift_getKeyPath();
  v22 = sub_23875D840();
  v41 = *(*(v22 - 8) + 56);
  v41(v10, 1, 1, v22);
  v43 = sub_23875D8C0();
  sub_238439884(v10, &qword_27DF0C7F0, &qword_23877B880);
  v42 = swift_getKeyPath();
  v40 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_238763B60;
  v24 = *MEMORY[0x277CE0EE0];
  v25 = *(v46 + 104);
  v26 = v47;
  v25(v6, v24, v47);
  *(v23 + 32) = sub_23875E090();
  v25(v6, v24, v26);
  *(v23 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v23);
  sub_23875C740();
  v27 = v55[8];
  v28 = v55[9];
  v29 = v55[10];
  v30 = v55[11];
  v31 = v55[12];
  v41(v10, 1, 1, v22);
  v32 = sub_23875D8C0();
  sub_238439884(v10, &qword_27DF0C7F0, &qword_23877B880);
  v33 = swift_getKeyPath();
  v34 = v40;
  *&v51 = v40;
  *(&v51 + 1) = v27;
  *&v52 = v28;
  *(&v52 + 1) = v29;
  *&v53 = v30;
  *(&v53 + 1) = v31;
  *&v54 = v33;
  *(&v54 + 1) = v32;
  v35 = v52;
  *(a2 + 40) = v51;
  *(a2 + 56) = v35;
  v36 = v54;
  *(a2 + 72) = v53;
  v37 = KeyPath;
  *a2 = v48;
  *(a2 + 8) = v37;
  v38 = v42;
  *(a2 + 16) = v45;
  *(a2 + 24) = v38;
  *(a2 + 32) = v43;
  *(a2 + 88) = v36;
  v55[0] = v34;
  v55[1] = v27;
  v55[2] = v28;
  v55[3] = v29;
  v55[4] = v30;
  v55[5] = v31;
  v55[6] = v33;
  v55[7] = v32;

  sub_23843981C(&v51, v50, &qword_27DF0C7F8, &qword_238773800);
  sub_238439884(v55, &qword_27DF0C7F8, &qword_238773800);
}

uint64_t sub_2384E5064@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for ReturnDetailsMerchantImage();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D2F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v19 = sub_23875E020();
  sub_2384E5E0C(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsMerchantImage);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_2384E59A4(v5, v21 + v20);
  v22 = (v21 + ((v20 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v32 = v19;
  v33 = sub_2384E5A88;
  v34 = v21;
  v35 = 0;
  v36 = 0;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = v18;
  sub_2384E5E0C(a1, v5, type metadata accessor for ReturnDetailsMerchantImage);
  v23 = swift_allocObject();
  sub_2384E59A4(v5, v23 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_2384E5DB4();
  sub_23875DF10();
}

uint64_t sub_2384E53AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ReturnDetailsMerchantImage() + 20));
  v11 = v10[3];
  v12 = v10[1];
  v26 = v10[2];
  v27 = v11;
  v13 = v10[3];
  v28[0] = v10[4];
  *(v28 + 9) = *(v10 + 73);
  v14 = v10[1];
  v24 = *v10;
  v25 = v14;
  *v21 = v10[4];
  *&v21[9] = *(v10 + 73);
  sub_23843981C(&v24, v29, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v22);
  *v22 = a2;
  *&v22[1] = a3;
  *&v22[2] = a4;
  *&v22[3] = a5;
  LOBYTE(v23) = 0;
  v18 = v26;
  v19 = v27;
  *v20 = v28[0];
  *&v20[9] = *(v28 + 9);
  v16 = v24;
  v17 = v25;
  sub_23875E2F0();
  v29[2] = v18;
  v29[3] = v19;
  v30[0] = *v20;
  *(v30 + 9) = *&v20[9];
  v29[0] = v16;
  v29[1] = v17;
  sub_238439884(v29, &qword_27DF0C7A8, &qword_23876B358);
}

uint64_t sub_2384E558C(uint64_t a1, __int128 *a2, uint64_t a3)
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

  v4 = (a3 + *(type metadata accessor for ReturnDetailsMerchantImage() + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24[0] = v4[4];
  *(v24 + 9) = *(v4 + 73);
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  *v17 = v4[4];
  *&v17[9] = *(v4 + 73);
  sub_23843981C(&v20, v25, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v18);
  v18[0] = v11;
  v18[1] = v10;
  LOBYTE(v19) = 0;
  v14 = v22;
  v15 = v23;
  *v16 = v24[0];
  *&v16[9] = *(v24 + 9);
  v12 = v20;
  v13 = v21;
  sub_23875E2F0();
  v25[2] = v14;
  v25[3] = v15;
  v26[0] = *v16;
  *(v26 + 9) = *&v16[9];
  v25[0] = v12;
  v25[1] = v13;
  sub_238439884(v25, &qword_27DF0C7A8, &qword_23876B358);
}

uint64_t sub_2384E5754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C778, &qword_23876B330) + 44);
  *v7 = sub_23875CE60();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C780, &unk_23876B338);
  sub_2384E4168(v2, v7 + *(v8 + 44));

  v9 = sub_23875E4A0();
  v11 = v10;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384E5E0C(v2, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsMerchantImage);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2384E59A4(v6, v13 + v12);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C788, &qword_23876B348);
  v15 = (a2 + *(result + 36));
  *v15 = sub_2384E5A08;
  v15[1] = v13;
  v15[2] = v9;
  v15[3] = v11;
  return result;
}

uint64_t sub_2384E59A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsMerchantImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E5A08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReturnDetailsMerchantImage() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384E5064(v4, a1);
}

uint64_t sub_2384E5A88()
{
  v1 = *(type metadata accessor for ReturnDetailsMerchantImage() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_2384E53AC(v0 + v2, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ReturnDetailsMerchantImage() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + *(v7 + 24) + 8);

  v11 = (v0 + v3 + v1[7]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C450();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384E5CB0(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for ReturnDetailsMerchantImage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2384E558C(a1, a2, v6);
}

unint64_t sub_2384E5D30()
{
  result = qword_27DF0C798;
  if (!qword_27DF0C798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C790, &qword_23876B350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C798);
  }

  return result;
}

unint64_t sub_2384E5DB4()
{
  result = qword_27DF0C7A0;
  if (!qword_27DF0C7A0)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C7A0);
  }

  return result;
}

uint64_t sub_2384E5E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384E5E74()
{
  result = qword_27DF0C800;
  if (!qword_27DF0C800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C788, &qword_23876B348);
    sub_23843A3E8(&qword_27DF0C808, &qword_27DF0C810, &unk_23876B480);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C800);
  }

  return result;
}

void sub_2384E5FA0()
{
  sub_2384E60C4(319, &qword_27DF0C830, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23875BC40();
    if (v1 <= 0x3F)
    {
      sub_2384E60C4(319, &qword_2814F08D8, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384E60C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384E6128()
{
  result = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2384E6204()
{
  sub_2384E6564(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2384E6564(319, &qword_27DF0C858, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2384E60C4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2384E6564(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384E63A8()
{
  sub_23875AF90();
  if (v0 <= 0x3F)
  {
    sub_2384E60C4(319, &qword_2814F08B8, MEMORY[0x277CC6E90], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      v2 = MEMORY[0x277D837D0];
      sub_2384E6564(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2384E6564(319, &qword_2814F08C0, v2, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2384E60C4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2384E6564(319, &qword_2814F08A8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2384E6564(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2384E65B4()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2384E730C(v0, v9, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = v9[1];
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28]);
    sub_23875E960();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_2384E679C()
{
  v1 = v0;
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875F700();
  sub_2384E730C(v1, v10, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28]);
    sub_23875E960();
    (*(v3 + 8))(v6, v2);
  }

  return sub_23875F760();
}

uint64_t sub_2384E6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23875BC40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2384E6A8C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_23875A710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875F700();
  sub_2384E730C(v4, v13, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x23EE641F0](1);
    sub_23875EB30();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x23EE641F0](0);
    sub_2384E6EE0(&qword_27DF0C888, MEMORY[0x277CC7F28]);
    sub_23875E960();
    (*(v6 + 8))(v9, v5);
  }

  return sub_23875F760();
}

uint64_t sub_2384E6C90@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384E730C(v2, v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2384E73D4(v15, v7, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v17 = *v7;
    v16 = v7[1];

    sub_2384E7374(v7, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    *a1 = v17;
    a1[1] = v16;
  }

  else
  {
    sub_2384E73D4(v15, v11, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    sub_23875AF70();
    sub_2384E7374(v11, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
  }

  type metadata accessor for OrderIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2384E6EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384E6F28(uint64_t a1, uint64_t a2)
{
  v32 = sub_23875A710();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C880, &qword_23876B5D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v20 = (&v31 + *(v19 + 56) - v17);
  sub_2384E730C(a1, &v31 - v17, type metadata accessor for OrderIdentifier);
  sub_2384E730C(a2, v20, type metadata accessor for OrderIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2384E730C(v18, v14, type metadata accessor for OrderIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v32;
      (*(v4 + 32))(v7, v20, v32);
      v26 = MEMORY[0x23EE5F1E0](v14, v7);
      v28 = *(v4 + 8);
      v28(v7, v27);
      v28(v14, v27);
      sub_2384E7374(v18, type metadata accessor for OrderIdentifier);
      return v26 & 1;
    }

    (*(v4 + 8))(v14, v32);
    goto LABEL_12;
  }

  sub_2384E730C(v18, v11, type metadata accessor for OrderIdentifier);
  v22 = *v11;
  v21 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_2384E72A4(v18);
    goto LABEL_13;
  }

  if (v22 == *v20 && v21 == v20[1])
  {
    v29 = v20[1];

    goto LABEL_16;
  }

  v24 = v20[1];
  v25 = sub_23875F630();

  if (v25)
  {
LABEL_16:
    sub_2384E7374(v18, type metadata accessor for OrderIdentifier);
    v26 = 1;
    return v26 & 1;
  }

  sub_2384E7374(v18, type metadata accessor for OrderIdentifier);
LABEL_13:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_2384E72A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C880, &qword_23876B5D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384E730C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E7374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384E73D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C828, &unk_23876B490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E74AC()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsRefreshableModifier()
{
  result = qword_27DF0C8A8;
  if (!qword_27DF0C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E7590()
{
  sub_2384E7614();
  if (v0 <= 0x3F)
  {
    sub_2384B49C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384E7614()
{
  if (!qword_27DF0C8B8)
  {
    sub_23875A710();
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C8B8);
    }
  }
}

uint64_t sub_2384E7688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8C0, &qword_23876B670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v63 - v6;
  v66 = type metadata accessor for OrderDetailsRefreshableModifier();
  v65 = *(v66 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8C8, &qword_23876B678);
  v67 = *(v72 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v72);
  v75 = v63 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D0, &qword_23876B680);
  v69 = *(v77 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v63 - v16;
  v18 = sub_23875A710();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = v63 - v23;
  v71 = v3;
  sub_2384E8BF8(v3, v17);
  v74 = v19;
  v24 = *(v19 + 48);
  v76 = v18;
  if (v24(v17, 1, v18) == 1)
  {
    sub_2384E8C68(v17);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D8, &unk_23876B688);
    (*(*(v25 - 8) + 16))(v7, v70, v25);
    swift_storeEnumTagMultiPayload();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    v27 = sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688);
    v83 = v25;
    v84 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = sub_2384397A8();
    v30 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    v83 = v72;
    v84 = MEMORY[0x277D837D0];
    v85 = v26;
    v86 = MEMORY[0x277CE0BD8];
    v87 = OpaqueTypeConformance2;
    v88 = v29;
    v89 = v30;
    v90 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    return sub_23875D1B0();
  }

  else
  {
    v63[1] = v4;
    v64 = v7;
    v32 = v73;
    v33 = v74;
    v34 = *(v74 + 32);
    v35 = v76;
    v34(v73, v17, v76);
    sub_2384E8CD0(v71, v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = v33 + 16;
    (*(v33 + 16))(v21, v32, v35);
    v37 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v38 = (v8 + *(v36 + 64) + v37) & ~*(v36 + 64);
    v39 = swift_allocObject();
    sub_2384E8D34(v9, v39 + v37);
    v34((v39 + v38), v21, v35);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8D8, &unk_23876B688);
    v41 = sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688);
    sub_23875DB90();

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v42 = qword_2814F1B90;
    v43 = sub_23875EA50();
    v44 = sub_23875EA50();
    v45 = sub_23875EA50();
    v46 = [v42 localizedStringForKey:v43 value:v44 table:v45];

    v47 = sub_23875EA80();
    v49 = v48;

    v81 = v47;
    v82 = v49;
    v50 = (v71 + *(v66 + 20));
    v51 = *v50;
    v52 = *(v50 + 1);
    v79 = v51;
    v80 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
    v83 = v40;
    v84 = v41;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_2384397A8();
    v71 = v40;
    v56 = v55;
    v62 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    v70 = v41;
    v57 = v72;
    v58 = v68;
    v59 = v75;
    sub_23875DEC0();

    (*(v67 + 8))(v59, v57);
    v60 = v69;
    v61 = v77;
    (*(v69 + 16))(v64, v58, v77);
    swift_storeEnumTagMultiPayload();
    v83 = v57;
    v84 = MEMORY[0x277D837D0];
    v85 = v53;
    v86 = MEMORY[0x277CE0BD8];
    v87 = v54;
    v88 = v56;
    v89 = v62;
    v90 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_23875D1B0();
    (*(v60 + 8))(v58, v61);
    return (*(v74 + 8))(v73, v76);
  }
}

uint64_t sub_2384E7FEC(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_23875ED50();
  v2[3] = sub_23875ED40();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2384E80A8;

  return sub_2384E81E4(a2);
}

uint64_t sub_2384E80A8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384473D0, v5, v4);
}

uint64_t sub_2384E81E4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_23875ED50();
  v2[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_2384E827C, v4, v3);
}

uint64_t sub_2384E827C()
{
  sub_2387579D0();
  v0[9] = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6630] + 4);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2384E832C;
  v3 = v0[4];

  return MEMORY[0x282116D58](v3);
}

uint64_t sub_2384E832C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_2384E84A8;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_2384E8448;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2384E8448()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2384E84A8()
{
  v1 = v0[9];

  if (sub_23875EDF0())
  {
    v2 = v0[11];
    v3 = v0[6];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(MEMORY[0x277D857E8] + 4);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2384E8594;

    return MEMORY[0x282200480](500000000);
  }
}

uint64_t sub_2384E8594()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_2384E9084;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_2384E86B8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2384E86B8()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = v3 + *(type metadata accessor for OrderDetailsRefreshableModifier() + 20);
  v5 = *(v4 + 8);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v5;
  *(v0 + 104) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2384E878C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v14 - v2;
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

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_23875EA80();
  v11 = v10;

  v14[0] = v9;
  v14[1] = v11;
  sub_23875C3B0();
  v12 = sub_23875C3C0();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_2384397A8();
  sub_23875E220();
}

uint64_t sub_2384E89BC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2384E8A4C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2384E8BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384E8CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRefreshableModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsRefreshableModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E8D98()
{
  v2 = *(type metadata accessor for OrderDetailsRefreshableModifier() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_23875A710() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2384494A4;

  return sub_2384E7FEC(v0 + v3, v0 + v6);
}

unint64_t sub_2384E8EC8()
{
  result = qword_27DF0C8E8;
  if (!qword_27DF0C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DF0C8F0, &qword_23876B6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C8C8, &qword_23876B678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C8D8, &unk_23876B688);
    sub_23843A3E8(&qword_27DF0C8E0, &qword_27DF0C8D8, &unk_23876B688);
    swift_getOpaqueTypeConformance2();
    sub_2384397A8();
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C8E8);
  }

  return result;
}

void sub_2384E9088()
{
  sub_2384E914C();
  if (v0 <= 0x3F)
  {
    sub_23846D0DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384E914C()
{
  if (!qword_27DF0C978)
  {
    type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(255);
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0C978);
    }
  }
}

uint64_t sub_2384E91E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v2 = *(a1 + 24);
  v76 = *(a1 + 16);
  v75 = v2;
  v3 = sub_23875D9B0();
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = &v69 - v5;
  sub_23875D6E0();
  v88 = v3;
  v6 = sub_23875C8C0();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v69 - v10;
  v72 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v11 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v69 - v17;
  v19 = sub_23875B940();
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v19);
  v74 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v69 - v26;
  v28 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v69 - v34;
  v36 = sub_23875F1F0();
  v37 = *(v36 - 8);
  v84 = v36;
  v85 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v86 = &v69 - v42;
  sub_23843981C(v90, v27, &qword_27DF0AC58, &qword_238766B88);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_238439884(v27, &qword_27DF0AC58, &qword_238766B88);
    v43 = v84;
  }

  else
  {
    sub_2384E9E3C(v27, v35, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E9DCC(v35, v32);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v73;
      sub_2384E9E3C(v32, v73, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
      sub_23843981C(v44 + *(v72 + 48), v18, &qword_27DF0D040, &qword_2387676A0);
      v45 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    }

    else
    {
      v44 = v71;
      sub_2384E9E3C(v32, v71, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
      sub_23843981C(v44 + *(v70 + 44), v18, &qword_27DF0D040, &qword_2387676A0);
      v45 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    }

    sub_2384E9EA4(v44, v45);
    v46 = v83;
    v43 = v84;
    v47 = v82;
    if ((*(v82 + 48))(v18, 1, v83) != 1)
    {
      v52 = v81;
      (*(v47 + 32))(v81, v18, v46);
      v53 = (*(v47 + 16))(v74, v52, v46);
      MEMORY[0x28223BE20](v53);
      v54 = v75;
      *(&v69 - 4) = v76;
      *(&v69 - 3) = v54;
      *(&v69 - 2) = v90;
      *(&v69 - 1) = v35;
      v55 = v77;
      sub_23875D9A0();
      v56 = v88;
      WitnessTable = swift_getWitnessTable();
      v90 = v35;
      v58 = WitnessTable;
      v59 = v80;
      sub_23875DE00();
      (*(v79 + 8))(v55, v56);
      (*(v47 + 8))(v81, v46);
      v60 = sub_23844E9B4();
      v91 = v58;
      v92 = v60;
      v61 = swift_getWitnessTable();
      v62 = v78;
      sub_23844EA0C(v59, v6, v61);
      v63 = v87;
      v64 = *(v87 + 8);
      v64(v59, v6);
      sub_23844EA0C(v62, v6, v61);
      v64(v62, v6);
      (*(v63 + 32))(v40, v59, v6);
      (*(v63 + 56))(v40, 0, 1, v6);
      v50 = v86;
      sub_2384C65A0(v40, v86);
      v51 = *(v85 + 8);
      v51(v40, v43);
      sub_2384E9EA4(v90, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      goto LABEL_10;
    }

    sub_238439884(v18, &qword_27DF0D040, &qword_2387676A0);
    sub_2384E9EA4(v35, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  }

  (*(v87 + 56))(v40, 1, 1, v6);
  v48 = swift_getWitnessTable();
  v49 = sub_23844E9B4();
  v96 = v48;
  v97 = v49;
  swift_getWitnessTable();
  v50 = v86;
  sub_2384C65A0(v40, v86);
  v51 = *(v85 + 8);
  v51(v40, v43);
LABEL_10:
  v65 = swift_getWitnessTable();
  v66 = sub_23844E9B4();
  v94 = v65;
  v95 = v66;
  v93 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  sub_23844EA0C(v50, v43, v67);
  return (v51)(v50, v43);
}

uint64_t sub_2384E9C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a1 + *(type metadata accessor for OrderWidgetLink() + 36);
  v17 = *(v16 + 8);
  (*v16)(a2);
  sub_23844EA0C(v12, a3, a4);
  v18 = *(v9 + 8);
  v18(v12, a3);
  sub_23844EA0C(v15, a3, a4);
  v18(v15, a3);
}

uint64_t sub_2384E9DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384E9E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384E9EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BankConnectReviewConnectionView()
{
  result = qword_27DF0C988;
  if (!qword_27DF0C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384E9F78()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_23875BCB0();
    if (v1 <= 0x3F)
    {
      sub_238449184(319, &qword_27DF096A8, 0x277D38080);
      if (v2 <= 0x3F)
      {
        sub_2384EA174(319, &qword_27DF0C998, MEMORY[0x277CC6F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23846D0DC();
          if (v4 <= 0x3F)
          {
            sub_2384EA174(319, &qword_27DF0C9A0, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2384B49C4();
              if (v6 <= 0x3F)
              {
                sub_2384EA174(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2384EA174(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
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

void sub_2384EA174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384EA1F4(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23875F3A0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2385FEB4C(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_23875F350();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_23875F320();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_238530718(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 paymentType];

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2385FEB4C((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_23875F370())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA48, &qword_23876B870);
          v7 = sub_23875EE90();
          sub_23875F3E0();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_238434834(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_238434834(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_238434834(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2384EA548()
{
  v1 = sub_238757AD0();
  v54 = *(v1 - 8);
  v2 = v54[8];
  MEMORY[0x28223BE20](v1);
  v51 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v51 - v5;
  v6 = sub_238758680();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v66 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = type metadata accessor for BankConnectReviewConnectionView();
  v20 = *(v0 + *(v19 + 24));
  v68 = sub_2384EAD4C();
  v21 = *(v19 + 52);
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  v23 = sub_23875EEE0();
  v60 = v11;
  if (v23)
  {
    v24 = v23;
    v71 = MEMORY[0x277D84F90];
    sub_2385FE488(0, v23 & ~(v23 >> 63), 0);
    v25 = v71;
    result = sub_23875EED0();
    if (v24 < 0)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v63 = v15;
    v67 = (v64 + 32);
    v27 = v66;
    do
    {
      v28 = sub_23875EF20();
      v30 = *v29;
      v28(v70, 0);
      sub_238758690();
      v71 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2385FE488(v31 > 1, v32 + 1, 1);
        v27 = v66;
        v25 = v71;
      }

      *(v25 + 16) = v32 + 1;
      (*(v64 + 32))(v25 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v32, v27, v65);
      sub_23875EF10();
      --v24;
    }

    while (v24);
    (*(v63 + 8))(v18, v22);
    v11 = v60;
    result = v25;
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    result = MEMORY[0x277D84F90];
  }

  v59 = *(result + 16);
  v33 = v51;
  if (v59)
  {
    v34 = 0;
    v57 = v64 + 16;
    v67 = v68 + 7;
    v66 = (v54 + 2);
    v35 = (v54 + 1);
    v52 = (v64 + 32);
    v55 = MEMORY[0x277D84F90];
    v56 = (v64 + 8);
    v58 = result;
    while (v34 < *(result + 16))
    {
      v62 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v61 = *(v64 + 72);
      (*(v64 + 16))(v11, result + v62 + v61 * v34, v65);
      sub_23875ED50();
      v63 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238758590();
      if (v68[2] && (v36 = v68, v37 = v68[5], sub_2384F03C0(&qword_27DF0B168, MEMORY[0x277CC6B60]), v38 = sub_23875E950(), v39 = -1 << *(v36 + 32), v40 = v38 & ~v39, ((*(v67 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        v42 = v54[9];
        v43 = v54[2];
        while (1)
        {
          v43(v33, v68[6] + v42 * v40, v1);
          sub_2384F03C0(&qword_27DF0CA28, MEMORY[0x277CC6B60]);
          v44 = sub_23875E9E0();
          v45 = *v35;
          (*v35)(v33, v1);
          if (v44)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v67 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v45(v69, v1);

        v46 = *v52;
        v11 = v60;
        (*v52)(v53, v60, v65);
        v47 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v47 + 16) + 1, 1);
          v47 = v70[0];
        }

        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2385FE488(v49 > 1, v50 + 1, 1);
          v47 = v70[0];
        }

        *(v47 + 16) = v50 + 1;
        v55 = v47;
        v46((v47 + v62 + v50 * v61), v53, v65);
      }

      else
      {
LABEL_11:
        (*v35)(v69, v1);

        v11 = v60;
        (*v56)(v60, v65);
      }

      ++v34;
      result = v58;
      if (v34 == v59)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_28:

  return v55;
}

id sub_2384EAD4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA30, qword_23877D7B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_238757AD0();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 paymentApplications];
  if (result)
  {
    v12 = result;
    sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
    sub_2384F0408();
    v13 = sub_23875EE60();

    sub_2384EA1F4(v13);
    v15 = v14;

    v16 = *(v15 + 16);
    if (v16)
    {
      v29 = *MEMORY[0x277CC6B50];
      v30 = (v33 + 104);
      v17 = (v33 + 56);
      v18 = (v33 + 32);
      v19 = MEMORY[0x277D84F90];
      v28 = *MEMORY[0x277CC6B58];
      v20 = 32;
      v31 = v15;
      v32 = v10;
      while (1)
      {
        v21 = *(v15 + v20);
        if (v21 <= 5)
        {
          if (((1 << v21) & 0x2A) != 0)
          {
            v22 = v29;
LABEL_10:
            (*v30)(v5, v22, v6);
            (*v17)(v5, 0, 1, v6);
            v23 = *v18;
            (*v18)(v10, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_2384984B4(0, v19[2] + 1, 1, v19);
            }

            v25 = v19[2];
            v24 = v19[3];
            if (v25 >= v24 >> 1)
            {
              v19 = sub_2384984B4(v24 > 1, v25 + 1, 1, v19);
            }

            v19[2] = v25 + 1;
            v26 = v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25;
            v10 = v32;
            v23(v26, v32, v6);
            v15 = v31;
            goto LABEL_5;
          }

          v22 = v28;
          if (((1 << v21) & 0x14) != 0)
          {
            goto LABEL_10;
          }
        }

        (*v17)(v5, 1, 1, v6);
        sub_238439884(v5, &qword_27DF0CA30, qword_23877D7B0);
LABEL_5:
        v20 += 8;
        if (!--v16)
        {

          goto LABEL_17;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_17:
    v27 = sub_2384A51B0(v19);

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2384EB0C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for BankConnectReviewConnectionView();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = v5;
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9E0, &unk_23876B7E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9D0, &qword_23876B7D0);
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C0, &unk_23876B7C0);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = &v42 - v15;
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_23875D020();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA10, &unk_23876B7F0);
  sub_2384EB7AC(a1, &v9[*(v16 + 44)]);
  v17 = &a1[*(v3 + 40)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v61 = v18;
  v62 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v20 = sub_23875E1D0();
  v43 = v3;
  v55 = a1;
  MEMORY[0x28223BE20](v20);
  v44 = sub_23843A3E8(&qword_27DF0C9E8, &qword_27DF0C9E0, &unk_23876B7E0);
  v21 = sub_2384F0130();
  sub_23875DDC0();

  sub_238439884(v9, &qword_27DF0C9E0, &unk_23876B7E0);
  v22 = v55;
  v23 = &v55[*(v43 + 44)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v61 = v24;
  v62 = v25;
  sub_23875E1D0();
  v26 = v47;
  sub_2384F02F8(v22, v47, type metadata accessor for BankConnectReviewConnectionView);
  v27 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v28 = swift_allocObject();
  sub_2384F018C(v26, v28 + v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9D8, &qword_23876B7D8);
  v57 = v6;
  v58 = &type metadata for BankConnectManageConnectionView;
  v59 = v44;
  v60 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = type metadata accessor for BankConnectAuthorizationFlowView(255);
  v32 = sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView);
  v57 = v31;
  v58 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v49;
  v36 = v56;
  sub_23875DED0();

  v37 = (*(v48 + 8))(v36, v35);
  MEMORY[0x28223BE20](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  v57 = v35;
  v58 = v29;
  v59 = OpaqueTypeConformance2;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v39 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  v57 = v38;
  v58 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v53;
  sub_23875DEF0();
  (*(v52 + 8))(v34, v40);
}

uint64_t sub_2384EB7AC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA50, &qword_23876B878);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA58, &qword_23876B880);
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_23875D760();
  MEMORY[0x28223BE20](v13);
  *(&v33 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA60, &qword_23876B888);
  sub_23843A3E8(&qword_27DF0CA68, &qword_27DF0CA60, &qword_23876B888);
  v33 = v12;
  v14 = sub_23875C410();
  MEMORY[0x28223BE20](v14);
  *(&v33 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA70, &qword_23876B890);
  sub_23843A3E8(&qword_27DF0CA78, &qword_27DF0CA70, &qword_23876B890);
  v15 = v7;
  sub_23875D1D0();
  v16 = sub_23875D770();
  sub_23875C3D0();
  v17 = v36;
  v18 = &v7[*(v35 + 36)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = v33;
  v24 = v34;
  v25 = *(v34 + 16);
  v26 = v38;
  v25(v38, v33, v17);
  v27 = v40;
  sub_23843981C(v15, v40, &qword_27DF0CA50, &qword_23876B878);
  v28 = v39;
  v25(v39, v26, v17);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA80, &qword_23876B898);
  v30 = &v28[*(v29 + 48)];
  *v30 = 0;
  v30[8] = 1;
  sub_23843981C(v27, &v28[*(v29 + 64)], &qword_27DF0CA50, &qword_23876B878);
  sub_238439884(v15, &qword_27DF0CA50, &qword_23876B878);
  v31 = *(v24 + 8);
  v31(v23, v17);
  sub_238439884(v27, &qword_27DF0CA50, &qword_23876B878);
  v31(v26, v17);
}

uint64_t sub_2384EBC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAB0, &qword_23876B8D8);
  sub_2384EBCD4(a1, a2 + *(v4 + 44));
}

uint64_t sub_2384EBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAB8, &unk_23876B8E0);
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC0, &unk_23876ED00);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v51 - v13);
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v23 = sub_2384EC150();
  v25 = v24;
  v26 = *(type metadata accessor for BankConnectConnectionHeaderView() + 24);
  v27 = sub_238757B60();
  (*(*(v27 - 8) + 16))(v14 + v26, a1, v27);
  *v14 = v20;
  v14[1] = v22;
  v14[2] = v23;
  v14[3] = v25;
  LOBYTE(v23) = sub_23875D7A0();
  sub_23875C3D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC8, &qword_23876B8F0) + 36);
  *v36 = v23;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v23) = sub_23875D770();
  sub_23875C3D0();
  v37 = v14 + *(v51 + 36);
  *v37 = v23;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  *v8 = sub_23875D030();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAD0, &qword_23876B8F8);
  sub_2384EE268(a1, &v8[*(v42 + 44)]);
  LOBYTE(v23) = sub_23875D770();
  sub_23875C3D0();
  v43 = &v8[*(v52 + 36)];
  *v43 = v23;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_23843981C(v14, v11, &qword_27DF0CAC0, &unk_23876ED00);
  sub_2384079EC(v8, v5);
  v48 = v54;
  sub_23843981C(v11, v54, &qword_27DF0CAC0, &unk_23876ED00);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAD8, &qword_23876B900);
  sub_2384079EC(v5, v48 + *(v49 + 48));
  sub_238439884(v8, &qword_27DF0CAB8, &unk_23876B8E0);
  sub_238439884(v14, &qword_27DF0CAC0, &unk_23876ED00);
  sub_238439884(v5, &qword_27DF0CAB8, &unk_23876B8E0);
  sub_238439884(v11, &qword_27DF0CAC0, &unk_23876ED00);
}

uint64_t sub_2384EC150()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238763B60;
  v7 = *(v0 + *(type metadata accessor for BankConnectReviewConnectionView() + 24));
  v8 = [v7 localizedDescription];
  v9 = sub_23875EA80();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v13 = sub_238448C58();
  *(v6 + 64) = v13;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v14 = [v7 primaryAccountNumberSuffix];
  if (!v14)
  {
    sub_23875EA80();
    v14 = sub_23875EA50();
  }

  v15 = PKMaskedPaymentPAN();

  if (v15)
  {
    v16 = sub_23875EA80();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *(v6 + 96) = v12;
  *(v6 + 104) = v13;
  *(v6 + 72) = v16;
  *(v6 + 80) = v18;
  v19 = sub_23875EAB0();

  return v19;
}

uint64_t sub_2384EC384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BankConnectReviewConnectionView();
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

  sub_2384F02F8(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BankConnectReviewConnectionView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2384F018C(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v12[15] = 0;
  sub_23875E1A0();

  v10 = v12[16];
  v11 = v13;
  *a2 = sub_2384F0360;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_2384EC528(uint64_t a1)
{
  v2 = sub_238758680();
  v133 = *(v2 - 8);
  v134 = v2;
  v3 = *(v133 + 64);
  MEMORY[0x28223BE20](v2);
  v131 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v12);
  v128 = &v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA18, &unk_23876EA80);
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v15);
  v119 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v117 = *(v18 - 8);
  v118 = v18;
  v19 = *(v117 + 64);
  MEMORY[0x28223BE20](v18);
  v116 = &v99 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v21 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v105 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v107 = &v99 - v24;
  MEMORY[0x28223BE20](v25);
  v111 = &v99 - v26;
  MEMORY[0x28223BE20](v27);
  v127 = &v99 - v28;
  v29 = sub_23875CDB0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23875BCB0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_238757B60();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v40;
  v45 = *(v40 + 16);
  v123 = v44;
  v124 = v46;
  v113 = v45;
  v110 = v40 + 16;
  v45(v42);
  v47 = type metadata accessor for BankConnectReviewConnectionView();
  v48 = v47[5];
  v102 = v35;
  v49 = *(v35 + 16);
  v125 = v38;
  v126 = v34;
  v112 = v49;
  v49(v38, (a1 + v48), v34);
  v114 = *(a1 + v47[6]);
  v132 = sub_2384EA548();
  v50 = (a1 + v47[12]);
  v51 = *v50;
  LOBYTE(v34) = *(v50 + 8);

  if ((v34 & 1) == 0)
  {
    sub_23875EFF0();
    v52 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v30 + 8))(v33, v29);
    v51 = v135;
  }

  v53 = (a1 + v47[8]);
  v54 = v53[1];
  v109 = *v53;
  v55 = type metadata accessor for BankConnectManageConnectionViewModel();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v59 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__selectedAccountFQAI;
  v60 = sub_23875A9F0();
  v100 = *(v60 - 8);
  v61 = *(v100 + 56);
  v62 = v127;
  v104 = v60;
  v103 = v100 + 56;
  v122 = v61;
  (v61)(v127, 1, 1);
  sub_23843981C(v62, v111, &qword_27DF0D390, &unk_238763350);
  v63 = v116;
  sub_23875C290();
  sub_238439884(v62, &qword_27DF0D390, &unk_238763350);
  (*(v117 + 32))(v58 + v59, v63, v118);
  v64 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__disconnectAccountError;
  v135 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA20, &qword_23876B820);
  v65 = v119;
  sub_23875C290();
  (*(v120 + 32))(v58 + v64, v65, v121);
  v66 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__isLoading;
  LOBYTE(v135) = 0;
  v67 = v128;
  sub_23875C290();
  (*(v129 + 32))(v58 + v66, v67, v130);
  (v113)(v58 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution, v123, v124);
  v112(v58 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID, v125, v126);
  v68 = v114;
  *(v58 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass) = v114;
  v69 = v132;
  *(v58 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts) = v132;
  *(v58 + 16) = v51;
  v121 = v58;
  v70 = (v58 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion);
  v71 = v69;
  *v70 = v109;
  v70[1] = v54;
  v130 = *(v69 + 16);
  if (v130)
  {
    sub_23875ED50();
    v72 = v133;
    v129 = v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v128 = (v133 + 16);
    v73 = (v133 + 8);
    v74 = v68;

    v120 = v51;

    v76 = 0;
    v77 = v134;
    v78 = v131;
    while (v76 < *(v71 + 16))
    {
      (*(v72 + 16))(v78, v129 + *(v72 + 72) * v76, v77);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v80 = sub_238758570();
      v82 = v81;
      v83 = [v74 primaryAccountIdentifier];
      v84 = sub_23875EA80();
      v86 = v85;

      if (!v82)
      {

        v72 = v133;
        v77 = v134;
        v71 = v132;
LABEL_16:
        v89 = v108;
        (*(v72 + 32))(v108, v131, v77);
        v88 = 0;
        goto LABEL_18;
      }

      if (v80 == v84 && v82 == v86)
      {

        v72 = v133;
        v77 = v134;
        v71 = v132;
      }

      else
      {
        v79 = sub_23875F630();

        v72 = v133;
        v77 = v134;
        v71 = v132;
        if ((v79 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      ++v76;
      v78 = v131;
      result = (*v73)(v131, v77);
      if (v130 == v76)
      {
        v88 = 1;
        v89 = v108;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v87 = v68;

  v88 = 1;
  v89 = v108;
  v72 = v133;
  v77 = v134;
LABEL_18:
  (*(v72 + 56))(v89, v88, 1, v77);
  v90 = v106;
  sub_23843981C(v89, v106, &qword_27DF09520, &unk_2387637E0);
  v91 = (*(v72 + 48))(v90, 1, v77);
  v92 = v107;
  v93 = v105;
  v94 = v104;
  if (v91 != 1)
  {

    sub_238758530();
    (*(v72 + 8))(v90, v77);
    v97 = v122;
    v122(v93, 0, 1, v94);
    (*(v100 + 32))(v92, v93, v94);
    v97(v92, 0, 1, v94);
LABEL_26:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v92, v127, &qword_27DF0D390, &unk_238763350);
    v98 = v121;

    sub_23875C2E0();

    sub_238439884(v92, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v89, &qword_27DF09520, &unk_2387637E0);
    (*(v102 + 8))(v125, v126);
    (*(v101 + 8))(v123, v124);
    return v98;
  }

  sub_238439884(v90, &qword_27DF09520, &unk_2387637E0);
  result = (v122)(v93, 1, 1, v94);
  if (!v130)
  {

    v96 = 1;
LABEL_24:
    v122(v92, v96, 1, v94);
    if ((*(v100 + 48))(v93, 1, v94) != 1)
    {
      sub_238439884(v93, &qword_27DF0D390, &unk_238763350);
    }

    goto LABEL_26;
  }

  if (*(v71 + 16))
  {
    v95 = v99;
    (*(v72 + 16))(v99, v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v77);

    sub_238758530();
    (*(v72 + 8))(v95, v77);
    v96 = 0;
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2384ED320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_23875BCB0();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v57 - v9;
  v10 = sub_23875A820();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v57 - v14;
  v15 = type metadata accessor for BankConnectReviewConnectionView();
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v21 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_238757B60();
  (*(*(v24 - 8) + 16))(v20, a1, v24);
  v25 = *(a1 + *(v15 + 24));
  v26 = v17[6];
  v27 = sub_23875A9A0();
  (*(*(v27 - 8) + 56))(&v20[v26], 1, 1, v27);
  v28 = v17[7];
  (*(v69 + 16))(&v20[v28], a1 + *(v15 + 20), v70);
  v29 = *MEMORY[0x277CC8258];
  v30 = sub_23875AB40();
  (*(*(v30 - 8) + 104))(&v20[v28], v29, v30);
  *&v20[v17[5]] = v25;
  v20[v17[8]] = 0;
  sub_2384F02F8(a1, &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectReviewConnectionView);
  v31 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v32 = swift_allocObject();
  sub_2384F018C(&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v33 = v25;
  v34 = v59;
  sub_23875A7E0();
  sub_238758CC0();
  v35 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v36 = sub_238758870();

  v37 = type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v42 = v60;
  v41 = v61;
  v43 = v58;
  (*(v60 + 16))(v58, v34, v61);
  v44 = sub_2384ABCA4(v20, 1, v43, v35, v36, sub_2384F0288, v32, v40);

  (*(v42 + 8))(v34, v41);
  v45 = v65;
  v46 = *(v65 + 20);
  v47 = sub_23875B940();
  v48 = v62;
  (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
  sub_23843981C(v48, v64, &qword_27DF0D040, &qword_2387676A0);
  sub_23875E1A0();
  sub_238439884(v48, &qword_27DF0D040, &qword_2387676A0);
  v49 = *(v45 + 24);
  type metadata accessor for AnalyticsSession();
  v50 = swift_allocObject();
  v51 = v67;
  sub_23875BCA0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v53 = *(v52 + 52);
  v54 = (*(v52 + 48) + 3) & 0x1FFFFFFFCLL;
  v55 = swift_allocObject();
  *(v55 + ((*(*v55 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v69 + 32))(v55 + *(*v55 + *MEMORY[0x277D841D0] + 16), v51, v70);
  *&v23[v49] = v50;
  *(v50 + 16) = v55;
  *v23 = sub_2384AD60C;
  *(v23 + 1) = v44;
  v23[16] = 0;
  sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView);
  sub_23875DE20();
  sub_2384F0970(v23, type metadata accessor for BankConnectAuthorizationFlowView);
}

uint64_t sub_2384EDABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384F02F8(a1, v7, type metadata accessor for BankConnectAuthorizationFlowResult);
  v8 = type metadata accessor for BankConnectAuthorizationError();
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = a2 + *(type metadata accessor for BankConnectReviewConnectionView() + 32);
      v11 = *(v10 + 8);
      (*v10)(1);
    }
  }

  else
  {
    sub_2384F0970(v7, type metadata accessor for BankConnectAuthorizationFlowResult);
  }

  v12 = (a2 + *(type metadata accessor for BankConnectReviewConnectionView() + 44));
  v13 = *v12;
  v14 = *(v12 + 1);
  v16[16] = v13;
  v17 = v14;
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384EDC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D270();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2384EDE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for BankConnectReviewConnectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
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

  sub_2384F02F8(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectReviewConnectionView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2384F018C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

uint64_t sub_2384EE1B0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for BankConnectReviewConnectionView() + 32);
  v3 = *(v2 + 8);
  (*v2)(0);
}

uint64_t sub_2384EE268@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a1;
  v67 = type metadata accessor for ContinuousGroupBoxStyle();
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAE0, &qword_23876B908);
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v57[-v7];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAE8, &qword_23876B910);
  v71 = *(v72 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v68 = &v57[-v11];
  sub_23875ED50();
  v70 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v79 = v17;
  v80 = v19;
  sub_2384397A8();
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v19) = v23;
  sub_23875D890();
  v24 = sub_23875D9E0();
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v20, v22, v19 & 1);

  LODWORD(v79) = sub_23875D440();
  v29 = sub_23875DA20();
  v59 = v29;
  v61 = v30;
  LOBYTE(v20) = v31;
  v62 = v32;
  sub_2384397FC(v24, v26, v28 & 1);

  v60 = sub_23875D770();
  v33 = sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v79) = v20 & 1;
  v58 = v20 & 1;
  LOBYTE(v75) = 0;
  MEMORY[0x28223BE20](v33);
  *&v57[-16] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAF0, &qword_23876B918);
  sub_2384F082C();
  v42 = v64;
  sub_23875E470();
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v67 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0CB10, &qword_27DF0CAE0, &qword_23876B908);
  sub_2384F03C0(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
  v43 = v68;
  v44 = v66;
  sub_23875DC00();
  sub_2384F0970(v5, type metadata accessor for ContinuousGroupBoxStyle);
  (*(v65 + 8))(v42, v44);
  v45 = v71;
  v46 = *(v71 + 16);
  v47 = v69;
  v48 = v72;
  v46(v69, v43, v72);
  *&v75 = v29;
  v49 = v61;
  *(&v75 + 1) = v61;
  LOBYTE(v76) = v20 & 1;
  *(&v76 + 1) = *v74;
  DWORD1(v76) = *&v74[3];
  v50 = v62;
  *(&v76 + 1) = v62;
  LOBYTE(v19) = v60;
  LOBYTE(v77) = v60;
  *(&v77 + 1) = *v73;
  DWORD1(v77) = *&v73[3];
  *(&v77 + 1) = v35;
  *v78 = v37;
  *&v78[8] = v39;
  *&v78[16] = v41;
  v78[24] = 0;
  v51 = v75;
  v52 = v76;
  *(a2 + 57) = *&v78[9];
  v53 = *v78;
  a2[2] = v77;
  a2[3] = v53;
  *a2 = v51;
  a2[1] = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CB18, &unk_23876B968);
  v46(a2 + *(v54 + 48), v47, v48);
  sub_23843981C(&v75, &v79, &qword_27DF0BAE8, &unk_23876A630);
  v55 = *(v45 + 8);
  v55(v43, v48);
  v55(v47, v48);
  v79 = v59;
  v80 = v49;
  v81 = v58;
  *v82 = *v74;
  *&v82[3] = *&v74[3];
  v83 = v50;
  v84 = v19;
  *v85 = *v73;
  *&v85[3] = *&v73[3];
  v86 = v35;
  v87 = v37;
  v88 = v39;
  v89 = v41;
  v90 = 0;
  sub_238439884(&v79, &qword_27DF0BAE8, &unk_23876A630);
}

double sub_2384EEA24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v37 = 1;
  sub_2384EEC4C(a1, &v29);
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v45[0] = v29;
  v45[1] = v30;
  v45[2] = v31;
  v45[3] = v32;
  v45[4] = v33;
  v45[5] = v34;
  v46 = v35;
  sub_23843981C(&v38, &v28, &qword_27DF0B9F0, &qword_23877EEF0);
  sub_238439884(v45, &qword_27DF0B9F0, &qword_23877EEF0);
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v36[103] = v44;
  *&v36[39] = v40;
  v5 = v37;
  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v29) = 0;
  v15 = sub_23875D770();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = *&v36[32];
  *(a2 + 65) = *&v36[48];
  v25 = *&v36[80];
  *(a2 + 81) = *&v36[64];
  *(a2 + 97) = v25;
  result = *v36;
  v27 = *&v36[16];
  *(a2 + 17) = *v36;
  *(a2 + 33) = v27;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 113) = *&v36[96];
  *(a2 + 49) = v24;
  *(a2 + 128) = v6;
  *(a2 + 136) = v8;
  *(a2 + 144) = v10;
  *(a2 + 152) = v12;
  *(a2 + 160) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = v15;
  *(a2 + 184) = v17;
  *(a2 + 192) = v19;
  *(a2 + 200) = v21;
  *(a2 + 208) = v23;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_2384EEC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v20[0]) = 1;
  sub_2384EEDFC(a1, v16);
  *&v15[55] = v17;
  *&v15[39] = v16[2];
  *&v15[23] = v16[1];
  *&v15[7] = v16[0];
  v5 = v20[0];
  v18[0] = v4;
  v18[1] = 0;
  v19[0] = v20[0];
  v6 = *v15;
  *&v19[1] = *v15;
  *&v19[64] = *(&v17 + 1);
  v7 = *&v15[48];
  *&v19[49] = *&v15[48];
  v8 = *&v15[32];
  *&v19[33] = *&v15[32];
  v9 = *&v15[16];
  *&v19[17] = *&v15[16];
  v10 = *v19;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = *&v19[16];
  v12 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v12;
  *(a2 + 32) = v11;
  v22 = v6;
  v14[88] = 1;
  *(a2 + 80) = *&v19[64];
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v20[0] = v4;
  v20[1] = 0;
  v21 = v5;
  *&v25[15] = *&v15[63];
  *v25 = v7;
  v24 = v8;
  v23 = v9;
  sub_23843981C(v18, v14, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v20, &qword_27DF0BA70, &unk_238769590);
}

uint64_t sub_2384EEDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v46[-v9];
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_2384EA548();
  MEMORY[0x28223BE20](v11);
  *&v46[-16] = a1;
  sub_23854D240(sub_2384F09D0, v11, v10);

  sub_23843981C(v10, v7, &qword_27DF09520, &unk_2387637E0);
  v12 = sub_238758680();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_238439884(v7, &qword_27DF09520, &unk_2387637E0);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    v14 = sub_2387585B0();
    v15 = v16;
    (*(v13 + 8))(v7, v12);
  }

  sub_238439884(v10, &qword_27DF09520, &unk_2387637E0);
  v54 = v14;
  v55 = v15;
  sub_2384397A8();
  v17 = sub_23875DAA0();
  v48 = v18;
  v49 = v17;
  v47 = v19;
  v50 = v20;
  v21 = [*(a1 + *(type metadata accessor for BankConnectReviewConnectionView() + 24)) primaryAccountNumberSuffix];
  if (!v21)
  {
    sub_23875EA80();
    v21 = sub_23875EA50();
  }

  v22 = PKMaskedPaymentPAN();

  if (v22)
  {
    v23 = sub_23875EA80();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v54 = v23;
  v55 = v25;
  v26 = sub_23875DAA0();
  v28 = v27;
  v30 = v29;
  sub_23875D7F0();
  v31 = sub_23875DA60();
  v33 = v32;
  v35 = v34;

  sub_2384397FC(v26, v28, v30 & 1);

  LODWORD(v54) = sub_23875D440();
  v36 = sub_23875DA20();
  v38 = v37;
  LOBYTE(v28) = v39;
  v41 = v40;
  sub_2384397FC(v31, v33, v35 & 1);

  v42 = v47 & 1;
  v52 = v47 & 1;
  LOBYTE(v54) = v47 & 1;
  v53 = v28 & 1;
  v44 = v48;
  v43 = v49;
  *a2 = v49;
  *(a2 + 8) = v44;
  *(a2 + 16) = v42;
  *(a2 + 24) = v50;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = v28 & 1;
  *(a2 + 56) = v41;
  sub_23843980C(v43, v44, v42);

  sub_23843980C(v36, v38, v28 & 1);

  sub_2384397FC(v36, v38, v28 & 1);

  sub_2384397FC(v43, v44, v52);
}

uint64_t sub_2384EF268(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_238758570();
  v5 = v4;
  v6 = [*(a2 + *(type metadata accessor for BankConnectReviewConnectionView() + 24)) primaryAccountIdentifier];
  v7 = sub_23875EA80();
  v9 = v8;

  if (v5)
  {
    if (v3 == v7 && v5 == v9)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_23875F630();
    }
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2384EF3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA88, &qword_23876B8A0);
  sub_2384EF494(a1, a2 + *(v4 + 44));
}

uint64_t sub_2384EF494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA90, &unk_23876B8A8);
  v3 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v62[-v4];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v5 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v62[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA98, &qword_23876B8B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v70 = &v62[-v11];
  v12 = type metadata accessor for BankConnectReviewConnectionView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = v15;
  v75 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v76 = &v62[-v20];
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = a1;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = v21;
  v26 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  v27 = sub_23875EA80();
  v29 = v28;

  v30 = v73;
  v31 = v75;
  sub_2384F02F8(v73, v75, type metadata accessor for BankConnectReviewConnectionView);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = swift_allocObject();
  sub_2384F018C(v31, v33 + v32);
  v34 = v76;
  v35 = v76 + v16[9];
  sub_23875D610();
  *v34 = v27;
  v34[1] = v29;
  *(v34 + v16[10]) = 0;
  v36 = (v34 + v16[11]);
  *v36 = sub_2384F0480;
  v36[1] = v33;
  v37 = v30;
  v38 = *(sub_2384EA548() + 16);

  if (v38 < 2)
  {
    v43 = sub_2384EFC20();
    v45 = v47;
    v63 = 1;
    v46 = sub_2384F04F0;
  }

  else
  {
    v39 = sub_23875EA50();
    v40 = sub_23875EA50();
    v41 = sub_23875EA50();
    v42 = [v25 localizedStringForKey:v39 value:v40 table:v41];

    v37 = v73;
    v43 = sub_23875EA80();
    v45 = v44;

    v63 = 0;
    v46 = sub_2384F0798;
  }

  v48 = v67;
  v49 = v64;
  v50 = v64 + *(v67 + 36);
  sub_23875CFC0();
  v51 = v37;
  v52 = v75;
  sub_2384F02F8(v51, v75, type metadata accessor for BankConnectReviewConnectionView);
  v53 = swift_allocObject();
  sub_2384F018C(v52, v53 + v32);
  *v49 = v43;
  v49[1] = v45;
  *(v49 + *(v48 + 40)) = 0;
  v54 = (v49 + *(v48 + 44));
  *v54 = v46;
  v54[1] = v53;
  sub_23843981C(v49, v69, &qword_27DF09580, &qword_238763900);
  swift_storeEnumTagMultiPayload();
  sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900);
  v55 = v70;
  sub_23875D1B0();
  sub_238439884(v49, &qword_27DF09580, &qword_238763900);
  v56 = v76;
  v57 = v66;
  sub_23843981C(v76, v66, &qword_27DF0AAD8, &qword_23876B8C0);
  v58 = v71;
  sub_23843981C(v55, v71, &qword_27DF0CA98, &qword_23876B8B8);
  v59 = v72;
  sub_23843981C(v57, v72, &qword_27DF0AAD8, &qword_23876B8C0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAA8, &unk_23876B8C8);
  sub_23843981C(v58, v59 + *(v60 + 48), &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v55, &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v56, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v58, &qword_27DF0CA98, &qword_23876B8B8);
  sub_238439884(v57, &qword_27DF0AAD8, &qword_23876B8C0);
}

uint64_t sub_2384EFBAC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BankConnectReviewConnectionView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384EFC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_238757B50();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

uint64_t sub_2384EFDA4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BankConnectReviewConnectionView() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2384EFE18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9B0, &qword_23876B7B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C980, &qword_23876B738);
  sub_23875E1D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9B8, &qword_23876B7B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C0, &unk_23876B7C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9D0, &qword_23876B7D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9D8, &qword_23876B7D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9E0, &unk_23876B7E0);
  sub_23843A3E8(&qword_27DF0C9E8, &qword_27DF0C9E0, &unk_23876B7E0);
  sub_2384F0130();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for BankConnectAuthorizationFlowView(255);
  sub_2384F03C0(&qword_27DF0C9F8, type metadata accessor for BankConnectAuthorizationFlowView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C8D0();
}

unint64_t sub_2384F0130()
{
  result = qword_27DF0C9F0;
  if (!qword_27DF0C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C9F0);
  }

  return result;
}

uint64_t sub_2384F018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectReviewConnectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384F01F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectReviewConnectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384ED320(v4, a1);
}

uint64_t sub_2384F0288(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectReviewConnectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384EDABC(a1, v4);
}

uint64_t sub_2384F02F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384F0360()
{
  v1 = *(type metadata accessor for BankConnectReviewConnectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2384EC528(v2);
}

uint64_t sub_2384F03C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2384F0408()
{
  result = qword_27DF0CA40;
  if (!qword_27DF0CA40)
  {
    sub_238449184(255, &qword_27DF0CA38, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0CA40);
  }

  return result;
}

uint64_t sub_2384F0480()
{
  v1 = type metadata accessor for BankConnectReviewConnectionView();
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)(1);
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for BankConnectReviewConnectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_23875BCB0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[7];
  v10 = sub_238758680();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = *(v5 + v1[8] + 8);

  v13 = v5 + v1[9];
  v14 = sub_23875C780();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C980, &qword_23876B738) + 28));

  v16 = *(v5 + v1[10] + 8);

  v17 = *(v5 + v1[11] + 8);

  v18 = *(v5 + v1[12]);

  v19 = v1[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}