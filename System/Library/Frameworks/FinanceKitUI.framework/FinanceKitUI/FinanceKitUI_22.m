void sub_2386743F8()
{
  type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238674498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386744FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23867455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386745C0()
{
  result = qword_27DF12C48;
  if (!qword_27DF12C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12C40, &unk_23877BDC0);
    sub_23867467C(&qword_27DF0EE18, type metadata accessor for OrderDetailsStatusLabel);
    sub_2386746C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12C48);
  }

  return result;
}

uint64_t sub_23867467C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2386746C4()
{
  result = qword_27DF0C528;
  if (!qword_27DF0C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C528);
  }

  return result;
}

uint64_t sub_238674728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23867479C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238674814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  sub_23875ED50();
  v4[8] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v4[9] = v10;
  v4[10] = v9;

  return MEMORY[0x2822009F8](sub_23867494C, v10, v9);
}

uint64_t sub_23867494C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService), v2);
  v4 = v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID;
  v5 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v6 = *(v4 + 8);
  v7 = *(MEMORY[0x277CC8290] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_238674A34;
  v9 = v0[7];

  return MEMORY[0x28211A948](v9, v5, v6, v2, v3);
}

uint64_t sub_238674A34()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_238674C7C;
  }

  else
  {
    v7 = sub_238674B70;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238674B70()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v2, v3, &qword_27DF0D040, &qword_2387676A0);

  sub_23875C2E0();
  sub_238439884(v2, &qword_27DF0D040, &qword_2387676A0);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_238674C7C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to load T&Cs URL with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[12];
  v14 = v0[4];
  v13 = v0[5];
  v16 = v0[2];
  v15 = v0[3];

  (*(v14 + 8))(v13, v15);
  v17 = v12;
  sub_23875E510();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v12;
  sub_23875C6F0();

  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_238674E8C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2E0();
}

uint64_t sub_238674F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_23875BC40();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_23875ED50();
  v4[9] = sub_23875ED40();
  v12 = sub_23875ECE0();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2386750CC, v12, v11);
}

uint64_t sub_2386750CC()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 24);
  v4 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService), v3);
  v5 = v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID;
  v6 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v7 = *(v5 + 8);
  sub_23875BBF0();
  v8 = *(MEMORY[0x277CC8298] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2386751C0;
  v10 = v0[8];

  return MEMORY[0x28211A950](v6, v7, v10, v3, v4);
}

uint64_t sub_2386751C0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v5 = v2[11];
  v6 = v2[10];
  if (v0)
  {
    v7 = sub_2386753E0;
  }

  else
  {
    v7 = sub_238675348;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238675348()
{
  v1 = v0[9];
  v2 = v0[2];

  v4 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler + 8);
    v4(v3);
  }

  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2386753E0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[5];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to update T&Cs with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[13];
  v14 = v0[4];
  v13 = v0[5];
  v16 = v0[2];
  v15 = v0[3];

  (*(v14 + 8))(v13, v15);
  v17 = v12;
  sub_23875E510();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v12;
  sub_23875C6F0();

  v19 = v0[8];
  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2386755E8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F28, &unk_23877C298);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel__url;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService));
  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler + 8);
  sub_2384348A8(*(v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_23867573C()
{
  sub_23867582C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23867587C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23867582C()
{
  if (!qword_27DF12C78)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12C78);
    }
  }
}

void sub_23867587C()
{
  if (!qword_27DF12C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D040, &qword_2387676A0);
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12C80);
    }
  }
}

uint64_t sub_2386758E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_238675920()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v7 == 1)
  {
    v4 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_238675A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v5;
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23875CE00();
  v50 = *(v54 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D88, &qword_23877C0C8);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v10 = (&v49 - v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D80, &qword_23877C0C0);
  v52 = *(v56 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v56);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D78, &qword_23877C0B8);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v49 - v16;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875E4A0();
  v10[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DE8, &qword_23877C0F8);
  v19 = sub_238676154(a1, v10 + *(v18 + 44));
  MEMORY[0x28223BE20](v19);
  *(&v49 - 2) = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D90, &qword_23877C0D0);
  v53 = a1;
  v21 = sub_23843A3E8(&qword_27DF12D98, &qword_27DF12D88, &qword_23877C0C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
  v23 = sub_23867AD84();
  v66 = v22;
  v67 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v49;
  sub_23875DEF0();
  sub_238439884(v10, &qword_27DF12D88, &qword_23877C0C8);
  v26 = v50;
  v27 = v51;
  v28 = v54;
  (*(v50 + 104))(v51, *MEMORY[0x277CDDDC0], v54);
  v66 = v25;
  v67 = v20;
  v68 = v21;
  v69 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v31 = v55;
  v30 = v56;
  sub_23875DE50();
  (*(v26 + 8))(v27, v28);
  (*(v52 + 8))(v13, v30);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v32 = qword_2814F1B90;
  v33 = sub_23875EA50();
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

  v37 = sub_23875EA80();
  v39 = v38;

  v66 = v37;
  v67 = v39;
  v64 = v30;
  v65 = v29;
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  v40 = v63;
  v41 = v58;
  sub_23875DC70();

  (*(v57 + 8))(v31, v41);
  LOBYTE(v36) = sub_23875D7A0();
  v42 = sub_23875C900();
  v43 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D70, &qword_23877C0B0) + 36);
  *v43 = v42;
  *(v43 + 8) = v36;
  v44 = v62;
  sub_23867C220(v53, v62, type metadata accessor for BankConnectTermsAndConditionsWebView);
  v45 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v46 = swift_allocObject();
  sub_23867BE94(v44, v46 + v45, type metadata accessor for BankConnectTermsAndConditionsWebView);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D58, &qword_23877C0A8);
  v48 = (v40 + *(result + 36));
  *v48 = sub_23867AF70;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  return result;
}

uint64_t sub_238676154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E48, &qword_23877C1F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = v57 - v7;
  v8 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v61 = *(v8 - 8);
  v9 = *(v61 + 8);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = v10;
  v60 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BankConnectWebViewContent(0);
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E50, &qword_23877C200);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v57 - v20;
  v75 = sub_23875B940();
  v22 = *(v75 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v75);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E58, &qword_23877C208);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v69 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v67 = v57 - v30;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = *a1;
  v32 = *(a1 + 8);
  v33 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  v59 = v31;
  v58 = v33;
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = a1;
  sub_23875C2D0();

  v35 = v22;
  v36 = v75;
  if ((*(v22 + 48))(v21, 1, v75) == 1)
  {
    sub_238439884(v21, &qword_27DF0D040, &qword_2387676A0);
    v37 = 1;
    v38 = v71;
    v39 = v67;
  }

  else
  {
    (*(v22 + 32))(v25, v21, v36);
    v40 = v66;
    (*(v22 + 16))(v66, v25, v36);
    v57[1] = v34;
    v41 = v60;
    sub_23867C220(v34, v60, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v42 = v61[80];
    v61 = v25;
    v43 = v35;
    v44 = (v42 + 16) & ~v42;
    v45 = swift_allocObject();
    sub_23867BE94(v41, v45 + v44, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v46 = (v40 + *(v62 + 20));
    *v46 = sub_23867BE24;
    v46[1] = v45;
    sub_23875C490();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    (*(v43 + 8))(v61, v75);
    if (v76 == 1)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.0;
    }

    v48 = v65;
    sub_23867BE94(v40, v65, type metadata accessor for BankConnectWebViewContent);
    v38 = v71;
    *(v48 + *(v71 + 36)) = v47;
    v49 = v48;
    v50 = v64;
    sub_23867BEFC(v49, v64);
    v39 = v67;
    sub_23867BEFC(v50, v67);
    v37 = 0;
  }

  (*(v70 + 56))(v39, v37, 1, v38);
  v51 = v72;
  sub_2386769F4(v72);
  v52 = v69;
  sub_23843981C(v39, v69, &qword_27DF12E58, &qword_23877C208);
  v53 = v74;
  sub_23843981C(v51, v74, &qword_27DF12E48, &qword_23877C1F8);
  v54 = v73;
  sub_23843981C(v52, v73, &qword_27DF12E58, &qword_23877C208);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E60, &qword_23877C210);
  sub_23843981C(v53, v54 + *(v55 + 48), &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v51, &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v39, &qword_27DF12E58, &qword_23877C208);
  sub_238439884(v53, &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v52, &qword_27DF12E58, &qword_23877C208);
}

uint64_t sub_238676910(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  sub_23875C490();
  sub_23875E510();
  sub_23875C6F0();
}

uint64_t sub_2386769F4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E68, &qword_23877C218);
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v53 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E70, &qword_23877C220);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v6 = (&v53 - v5);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E78, &qword_23877C228);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v53 - v8;
  v9 = sub_23875CE20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0);
  v17 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v19 = &v53 - v18;
  v20 = *v1;
  v21 = v1[1];
  v22 = *(v1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v62)
  {
    if (v62 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_23867BF6C();
      return sub_23875D1B0();
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v29 = qword_2814F1B90;
    v30 = sub_23875EA50();
    v31 = sub_23875EA50();
    v32 = sub_23875EA50();
    v33 = [v29 localizedStringForKey:v30 value:v31 table:v32];

    v34 = sub_23875EA80();
    v36 = v35;

    *&v62 = v34;
    *(&v62 + 1) = v36;
    sub_2384397A8();
    v37 = sub_23875DAA0();
    v39 = v38;
    LOBYTE(v36) = v40;
    v42 = v41;
    KeyPath = swift_getKeyPath();
    v44 = sub_23875D440();
    v45 = sub_23875D770();
    sub_23875C3D0();
    v61[0] = 0;
    *&v62 = v37;
    *(&v62 + 1) = v39;
    LOBYTE(v63) = v36 & 1;
    *(&v63 + 1) = v42;
    *&v64 = KeyPath;
    BYTE8(v64) = 1;
    HIDWORD(v64) = v44;
    LOBYTE(v65) = v45;
    *(&v65 + 1) = v46;
    *v66 = v47;
    *&v66[8] = v48;
    *&v66[16] = v49;
    v66[24] = 0;
    v50 = v65;
    v6[2] = v64;
    v6[3] = v50;
    v6[4] = *v66;
    *(v6 + 73) = *&v66[9];
    v51 = v63;
    *v6 = v62;
    v6[1] = v51;
    swift_storeEnumTagMultiPayload();
    sub_23843981C(&v62, v61, &qword_27DF12EC0, &qword_23877C238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867BFF8();
    sub_23867C0DC();
    v52 = v56;
    sub_23875D1B0();
    sub_23843981C(v52, v59, &qword_27DF12E78, &qword_23877C228);
    swift_storeEnumTagMultiPayload();
    sub_23867BF6C();
    sub_23875D1B0();
    sub_238439884(&v62, &qword_27DF12EC0, &qword_23877C238);
    v26 = v52;
    v27 = &qword_27DF12E78;
    v28 = &qword_23877C228;
  }

  else
  {
    sub_23875C530();
    sub_23875CE10();
    (*(v10 + 16))(v13, v16, v9);
    sub_23867AA94(&unk_27DF0C340, MEMORY[0x277CE0068]);
    v24 = sub_23875C5E0();
    (*(v10 + 8))(v16, v9);
    *&v19[*(v54 + 36)] = v24;
    sub_23843981C(v19, v6, &qword_27DF12E80, &unk_23876A2C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867BFF8();
    sub_23867C0DC();
    v25 = v56;
    sub_23875D1B0();
    sub_23843981C(v25, v59, &qword_27DF12E78, &qword_23877C228);
    swift_storeEnumTagMultiPayload();
    sub_23867BF6C();
    sub_23875D1B0();
    sub_238439884(v25, &qword_27DF12E78, &qword_23877C228);
    v26 = v19;
    v27 = &qword_27DF12E80;
    v28 = &unk_23876A2C0;
  }

  return sub_238439884(v26, v27, v28);
}

uint64_t sub_238677198@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E08, &qword_23877C1B8);
  v57 = *(v62 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v62);
  v56 = &v50 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DD0, &qword_2387687F0);
  v55 = *(v61 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = &v50 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12E10, &qword_23877C1C0);
  v53 = *(v60 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v60);
  v52 = &v50 - v8;
  v9 = sub_23875D2A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DC0, &unk_23877C0E8);
  v51 = *(v59 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v59);
  v50 = &v50 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DA0, &qword_23877C0D8);
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v50 - v18;
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = a1[16];
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v67 == 1 && (v22 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable), , v22 == 1))
  {
    v23 = sub_23875D280();
    MEMORY[0x28223BE20](v23);
    *(&v50 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E20, &unk_23877C1C8);
    sub_23843A3E8(&qword_27DF12E28, &qword_27DF12E20, &unk_23877C1C8);
    v24 = v50;
    sub_23875C990();
    v25 = sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8);
    v26 = v52;
    v27 = v59;
    MEMORY[0x23EE61E80](v24, v59, v25);
    v67 = v27;
    v68 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0);
    v67 = v61;
    v68 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = v60;
    MEMORY[0x23EE61E90](v26, v60, v62, OpaqueTypeConformance2, v30);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v32 - 8) + 56))(v16, 0, 1, v32);
    v33 = sub_23867AE08();
    v34 = v64;
    MEMORY[0x23EE61EB0](v16, v32, v33);
    sub_238426E58(v16);
    (*(v53 + 8))(v26, v31);
    (*(v51 + 8))(v24, v27);
  }

  else if (sub_238675920())
  {
    v35 = sub_23875D250();
    MEMORY[0x28223BE20](v35);
    *(&v50 - 2) = a1;
    sub_2384B5A24();
    v36 = v54;
    sub_23875C4D0();
    v37 = sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0);
    v38 = v56;
    v39 = v61;
    MEMORY[0x23EE61E80](v36, v61, v37);
    v40 = sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8);
    v67 = v59;
    v68 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v67 = v39;
    v68 = v37;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = v62;
    MEMORY[0x23EE61EA0](v38, v60, v62, v41, v42);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v44 - 8) + 56))(v16, 0, 1, v44);
    v45 = sub_23867AE08();
    v34 = v64;
    MEMORY[0x23EE61EB0](v16, v44, v45);
    sub_238426E58(v16);
    (*(v57 + 8))(v38, v43);
    (*(v55 + 8))(v36, v39);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v46 - 8) + 56))(v16, 1, 1, v46);
    v47 = sub_23867AE08();
    v34 = v64;
    MEMORY[0x23EE61EB0](v16, v46, v47);
    sub_238426E58(v16);
  }

  v48 = sub_23867AD84();
  MEMORY[0x23EE61E80](v34, v65, v48);
  sub_238426E58(v34);
}

uint64_t sub_238677AF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v28;
  sub_238677E94();
  sub_23867C220(v18, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = swift_allocObject();
  sub_23867BE94(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for BankConnectTermsAndConditionsWebView);
  sub_23875E200();
  v21 = v5[2];
  v21(v11, v17, v4);
  v21(v8, v14, v4);
  v22 = v30;
  v21(v30, v11, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12E38, &qword_23877C1D8);
  v24 = &v22[*(v23 + 48)];
  *v24 = 0;
  v24[8] = 1;
  v21(&v22[*(v23 + 64)], v8, v4);
  v25 = v5[1];
  v25(v14, v4);
  v25(v17, v4);
  v25(v8, v4);
  v25(v11, v4);
}

uint64_t sub_238677E94()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
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

  v15[0] = v9;
  v15[1] = v11;
  sub_23867C220(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_23867BE94(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for BankConnectTermsAndConditionsWebView);
  sub_2384397A8();
  return sub_23875E230();
}

uint64_t sub_2386780A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
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

  sub_23867C220(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_23867BE94(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BankConnectTermsAndConditionsWebView);

  *a2 = v12;
  a2[1] = v14;
  a2[2] = sub_23867BE0C;
  a2[3] = v16;
  return result;
}

uint64_t sub_2386782F8(uint64_t *a1)
{
  v2 = sub_23875A820();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_23875ED50();
  v26 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  v13 = sub_23875C490();
  v14 = sub_23875ED80();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);

  v15 = sub_23875ED40();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = MEMORY[0x277D85700];
  v16[4] = v13;
  sub_2386C3BA4(0, 0, v9, &unk_23877C118, v16);

  v17 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v18 = MEMORY[0x277D38550];
  if (!v17)
  {
    v18 = MEMORY[0x277D38560];
  }

  v19 = *v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v21 = sub_23867B330(v5);
  v23 = v22;
  (*(v27 + 8))(v5, v28);
  *(inited + 40) = v21;
  *(inited + 48) = v23;
  v24 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v19, 15, v24);
}

uint64_t sub_238678690(uint64_t *a1)
{
  v42 = sub_23875C600();
  v41 = *(v42 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875A820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  v13 = sub_23875C490();
  v39 = a1;
  v14 = *(v13 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v15 = MEMORY[0x277D38550];
  if (!v14)
  {
    v15 = MEMORY[0x277D38560];
  }

  v38 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v17 = sub_23867B330(v9);
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *(inited + 40) = v17;
  *(inited + 48) = v19;
  v20 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_238763300;
  v22 = *MEMORY[0x277D383D8];
  *(v21 + 32) = *MEMORY[0x277D383D8];
  v23 = *MEMORY[0x277D38428];
  *(v21 + 40) = sub_23875EA80();
  *(v21 + 48) = v24;
  v25 = *MEMORY[0x277D38390];
  *(v21 + 56) = *MEMORY[0x277D38390];
  *(v21 + 64) = 0x6565726761736964;
  v26 = *MEMORY[0x277D384B8];
  *(v21 + 72) = 0xE800000000000000;
  *(v21 + 80) = v26;
  *(v21 + 88) = 0xD000000000000012;
  *(v21 + 96) = 0x8000000238784F80;
  v27 = v22;
  v28 = v25;
  v29 = v26;
  v30 = sub_23854B138(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v30;
  sub_2385C33E4(v20, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v43);

  v32 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v33 = sub_23875E910();

  v34 = v32;
  v35 = v38;
  [v34 subject:v38 sendEvent:v33];

  v36 = v39 + *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) + 20);
  sub_2384D53C8(v4);
  sub_23875C5F0();
  (*(v41 + 8))(v4, v42);
}

uint64_t sub_238678BA4(uint64_t *a1)
{
  v58 = sub_23875C600();
  v57 = *(v58 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = v47 - v6;
  v7 = sub_23875A820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875ED50();
  v54 = sub_23875ED40();
  v53 = v12;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 16);
  v16 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v17 = sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  v52 = v13;
  v51 = v14;
  v50 = v15;
  v49 = v16;
  v47[1] = v17;
  LODWORD(v13) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v18 = MEMORY[0x277D38550];
  if (!v13)
  {
    v18 = MEMORY[0x277D38560];
  }

  v19 = *v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v21 = sub_23867B330(v11);
  v48 = a1;
  v22 = v21;
  v24 = v23;
  (*(v8 + 8))(v11, v7);
  *(inited + 40) = v22;
  *(inited + 48) = v24;
  v25 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_238763300;
  v27 = *MEMORY[0x277D383D8];
  *(v26 + 32) = *MEMORY[0x277D383D8];
  v28 = *MEMORY[0x277D38428];
  *(v26 + 40) = sub_23875EA80();
  *(v26 + 48) = v29;
  v30 = *MEMORY[0x277D38390];
  *(v26 + 56) = *MEMORY[0x277D38390];
  *(v26 + 64) = 0x6565726761;
  v31 = *MEMORY[0x277D384B8];
  *(v26 + 72) = 0xE500000000000000;
  *(v26 + 80) = v31;
  *(v26 + 88) = 0xD000000000000012;
  *(v26 + 96) = 0x8000000238784F80;
  v32 = v27;
  v33 = v30;
  v34 = v31;
  v35 = sub_23854B138(v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v35;
  sub_2385C33E4(v25, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v59);

  v37 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v38 = sub_23875E910();

  [v37 subject:v19 sendEvent:v38];

  v39 = sub_23875C490();
  v40 = sub_23875ED80();
  v41 = v55;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);

  v42 = sub_23875ED40();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = MEMORY[0x277D85700];
  v43[4] = v39;
  sub_2386C3BA4(0, 0, v41, &unk_23877C1E8, v43);

  v44 = v48 + *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) + 20);
  v45 = v56;
  sub_2384D53C8(v56);
  sub_23875C5F0();
  (*(v57 + 8))(v45, v58);
}

uint64_t sub_238679224@<X0>(uint64_t a1@<X8>)
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
  v11 = sub_23875DA50();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v7, v9, v4 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_238679400(uint64_t *a1)
{
  v53 = sub_23875C600();
  v51 = *(v53 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v45 - v6;
  v7 = sub_23875A820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v52 = a1;
  LODWORD(a1) = *(a1 + 16);
  v14 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v15 = sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
  v48 = v12;
  v47 = v13;
  v46 = a1;
  v45[2] = v14;
  v45[1] = v15;
  LODWORD(a1) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v16 = MEMORY[0x277D38550];
  if (!a1)
  {
    v16 = MEMORY[0x277D38560];
  }

  v17 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v19 = sub_23867B330(v11);
  v21 = v20;
  (*(v8 + 8))(v11, v7);
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v22 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_238763300;
  v24 = *MEMORY[0x277D383D8];
  *(v23 + 32) = *MEMORY[0x277D383D8];
  v25 = *MEMORY[0x277D38428];
  *(v23 + 40) = sub_23875EA80();
  *(v23 + 48) = v26;
  v27 = *MEMORY[0x277D38390];
  *(v23 + 56) = *MEMORY[0x277D38390];
  *(v23 + 64) = 1701736292;
  v28 = *MEMORY[0x277D384B8];
  *(v23 + 72) = 0xE400000000000000;
  *(v23 + 80) = v28;
  *(v23 + 88) = 0xD000000000000012;
  *(v23 + 96) = 0x8000000238784F80;
  v29 = v24;
  v30 = v27;
  v31 = v28;
  v32 = sub_23854B138(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v32;
  sub_2385C33E4(v22, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v54);

  v34 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v35 = sub_23875E910();

  [v34 subject:v17 sendEvent:v35];

  v36 = sub_23875C490();
  v37 = sub_23875ED80();
  v38 = v49;
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  sub_23875ED50();

  v39 = sub_23875ED40();
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D85700];
  v40[2] = v39;
  v40[3] = v41;
  v40[4] = v36;
  sub_2386C3BA4(0, 0, v38, &unk_23877C1F0, v40);

  v42 = v52 + *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) + 20);
  v43 = v50;
  sub_2384D53C8(v50);
  sub_23875C5F0();
  return (*(v51 + 8))(v43, v53);
}

uint64_t sub_238679A0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D58, &qword_23877C0A8);
  sub_23867AB00();
  return sub_23875C8F0();
}

id sub_238679A7C()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875B410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v12 configuration:{0.0, 0.0, 0.0, 0.0}];
  [v13 setNavigationDelegate_];
  v14 = OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v14, v2);
  sub_23875B400();
  v15 = sub_23875B3F0();
  (*(v8 + 8))(v11, v7);
  v16 = [v13 loadRequest_];

  v17 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
  *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation) = v16;

  return v13;
}

void sub_238679DBC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v12 = a5;
  v11 = a1;
  sub_23867C4E8(a4, v12);
}

uint64_t sub_23867A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_23875ED50();
  v3[5] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23867A0E8, v5, v4);
}

uint64_t sub_23867A0E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_23875ED40();
  v7 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23867A194, v7, v6);
}

uint64_t sub_23867A194()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = [v2 navigationType];
  v4 = *(v0 + 16);
  if (v3 == -1)
  {

    v6 = 1;
  }

  else
  {
    v5 = [*(v0 + 16) navigationType];

    v6 = v5 == 3;
  }

  v7 = *(v0 + 48);
  v7[2](v7, v6);
  _Block_release(v7);
  v8 = *(v0 + 8);

  return v8();
}

id sub_23867A2E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectWebViewContent.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23867A390()
{
  result = type metadata accessor for BankConnectWebViewContent(319);
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

uint64_t sub_23867A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23867A5B0()
{
  if (!qword_27DF12D38)
  {
    type metadata accessor for BankConnectTermsAndConditionsWebViewModel(255);
    sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12D38);
    }
  }
}

unint64_t sub_23867A648()
{
  result = qword_27DF12D48;
  if (!qword_27DF12D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D48);
  }

  return result;
}

id sub_23867A69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F10, &qword_23877C280);
  sub_23875D600();
  v0 = sub_238679A7C();

  return v0;
}

void sub_23867A6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F10, &qword_23877C280);
  sub_23875D600();
  v8 = v11;
  sub_23867C220(v4, v7, type metadata accessor for BankConnectWebViewContent);
  v9 = OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
  swift_beginAccess();
  sub_23867C2E4(v7, v8 + v9);
  swift_endAccess();
}

uint64_t sub_23867A7D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23867C220(v2, v6, type metadata accessor for BankConnectWebViewContent);
  v7 = type metadata accessor for BankConnectWebViewContent.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation] = 0;
  sub_23867C220(v6, &v8[OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent], type metadata accessor for BankConnectWebViewContent);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_23867C288(v6);
  *a2 = v9;
  return result;
}

uint64_t sub_23867A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23867A960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23867A9F4()
{
  sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent);
  sub_23875D120();
  __break(1u);
}

uint64_t sub_23867AA94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23867AB00()
{
  result = qword_27DF12D60;
  if (!qword_27DF12D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D58, &qword_23877C0A8);
    sub_23867AB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D60);
  }

  return result;
}

unint64_t sub_23867AB8C()
{
  result = qword_27DF12D68;
  if (!qword_27DF12D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D70, &qword_23877C0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D78, &qword_23877C0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D80, &qword_23877C0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D88, &qword_23877C0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D90, &qword_23877C0D0);
    sub_23843A3E8(&qword_27DF12D98, &qword_27DF12D88, &qword_23877C0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
    sub_23867AD84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D68);
  }

  return result;
}

unint64_t sub_23867AD84()
{
  result = qword_27DF12DA8;
  if (!qword_27DF12DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
    sub_23867AE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12DA8);
  }

  return result;
}

unint64_t sub_23867AE08()
{
  result = qword_27DF12DB0;
  if (!qword_27DF12DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DB8, &qword_23877C0E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DC0, &unk_23877C0E8);
    sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DD0, &qword_2387687F0);
    sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12DB0);
  }

  return result;
}

uint64_t sub_23867AF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238674814(a1, v4, v5, v6);
}

uint64_t sub_23867B03C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23867B0BC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_23867B130(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_23867B1AC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23867B2DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CBF0();
  *a1 = result;
  return result;
}

uint64_t sub_23867B330(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BC40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = sub_23875A820();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19);

  sub_2387594D0();

  if (v48)
  {
    v24 = swift_dynamicCast();
    (*(v6 + 56))(v18, v24 ^ 1u, 1, v5);
  }

  else
  {
    sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
    (*(v6 + 56))(v18, 1, 1, v5);
  }

  sub_23843981C(v18, v16, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v6 + 48))(v16, 1, v5) != 1)
  {
    v40 = v20;
    v26 = v44;
    (*(v6 + 32))(v44, v16, v5);
    sub_23875BBF0();
    sub_23875BAF0();
    v28 = v27;
    v29 = *(v6 + 8);
    v29(v10, v5);
    if (v28 <= 300.0)
    {
      if (!qword_27DF098B0)
      {

        sub_2387594D0();

        if (v48)
        {
          v30 = swift_dynamicCast();
          v31 = v45;
          v32 = v46;
          if (!v30)
          {
            v31 = 0;
            v32 = 0;
          }
        }

        else
        {
          sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
          v31 = 0;
          v32 = 0;
        }

        qword_27DF098A8 = v31;
        qword_27DF098B0 = v32;

        if (!qword_27DF098B0)
        {
          v35 = v41;
          sub_23875C120();
          v36 = sub_23875C1B0();
          v37 = sub_23875EFE0();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_2383F8000, v36, v37, "Failed to retrieve existing Bank Connect analytics session, creating a new one.", v38, 2u);
            MEMORY[0x23EE64DF0](v38, -1, -1);
          }

          (*(v42 + 8))(v35, v43);
          v25 = sub_23867B910(v23);
          v33 = v44;
          goto LABEL_16;
        }
      }

      v25 = qword_27DF098A8;
    }

    else
    {
      v25 = sub_23867B910(v23);
    }

    v33 = v26;
LABEL_16:
    v29(v33, v5);
    v20 = v40;
    goto LABEL_17;
  }

  sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
  v25 = sub_23867B910(v23);
LABEL_17:
  (*(v20 + 8))(v23, v19);
  sub_238439884(v18, &qword_27DF12E00, &unk_238763FC0);
  return v25;
}

uint64_t sub_23867B910(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875A820();
  v17 = v7;
  v18 = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  sub_23875BCA0();
  v9 = sub_23875BC50();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15 = sub_23875BC40();
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23875BBF0();

  sub_2387594C0();

  sub_238439884(v14, &qword_27DF0A4A8, &qword_238767840);
  v15 = MEMORY[0x277D837D0];
  v14[0] = v9;
  v14[1] = v11;

  sub_2387594C0();

  sub_238439884(v14, &qword_27DF0A4A8, &qword_238767840);
  qword_27DF098A8 = v9;
  qword_27DF098B0 = v11;

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_23867BB68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_238674E8C();
}

uint64_t objectdestroyTm_28()
{
  v1 = (type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_2383FC164();
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C600();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23867BCCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23867BD40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238674F7C(a1, v4, v5, v6);
}

uint64_t sub_23867BE24(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_238676910(a1, v4);
}

uint64_t sub_23867BE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23867BEFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E50, &qword_23877C200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23867BF6C()
{
  result = qword_27DF12E88;
  if (!qword_27DF12E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E78, &qword_23877C228);
    sub_23867BFF8();
    sub_23867C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12E88);
  }

  return result;
}

unint64_t sub_23867BFF8()
{
  result = qword_27DF12E90;
  if (!qword_27DF12E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E80, &unk_23876A2C0);
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    sub_23843A3E8(&qword_27DF12EA8, &qword_27DF12EB0, &qword_23877C230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12E90);
  }

  return result;
}

unint64_t sub_23867C0DC()
{
  result = qword_27DF12EB8;
  if (!qword_27DF12EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12EB8);
  }

  return result;
}

unint64_t sub_23867C168()
{
  result = qword_27DF12EC8;
  if (!qword_27DF12EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12ED0, &unk_23877C240);
    sub_2384D0E10();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12EC8);
  }

  return result;
}

uint64_t sub_23867C220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23867C288(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectWebViewContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23867C2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectWebViewContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23867C348()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_23867A04C(v2, v3, v5);
}

void sub_23867C408(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
    if (v3)
    {
      v4 = a1;
      sub_23867C5CC();
      v5 = v4;
      v6 = v3;
      LOBYTE(v4) = sub_23875F1B0();

      if (v4)
      {
        v7 = v2 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
        swift_beginAccess();
        v8 = v7 + *(type metadata accessor for BankConnectWebViewContent(0) + 20);
        v9 = *v8;
        v10 = *(v8 + 8);

        v9(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23867C4E8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
    if (v4)
    {
      v6 = a1;
      sub_23867C5CC();
      v7 = v6;
      v8 = v4;
      LOBYTE(v6) = sub_23875F1B0();

      if (v6)
      {
        v9 = v3 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
        swift_beginAccess();
        v10 = v9 + *(type metadata accessor for BankConnectWebViewContent(0) + 20);
        v12 = *v10;
        v11 = *(v10 + 8);

        v12(a2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23867C5CC()
{
  result = qword_27DF12F20;
  if (!qword_27DF12F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12F20);
  }

  return result;
}

uint64_t sub_23867C630@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v4 = *(type metadata accessor for TransactionTypeTokenProvider() + 20);

  v13 = sub_238758770();
  v6 = v5;
  v7 = sub_23875E030();
  sub_2384B6AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632F0;
  v9 = sub_238758790();
  v10 = MEMORY[0x277D849A0];
  *(v8 + 56) = MEMORY[0x277D84958];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  v11 = sub_23875EF80();
  a1[2] = v13;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = 0x6163746964657263;
  a1[7] = 1701869908;
  a1[8] = 0xE400000000000000;
  a1[6] = 0xEA00000000006472;
  *a1 = v14;
  a1[1] = v3;
  result = swift_allocObject();
  *(result + 16) = v11;
  a1[9] = &unk_2387654B0;
  a1[10] = result;
  return result;
}

uint64_t sub_23867C7A0()
{
  v0 = sub_2387587A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v22 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  result = sub_238758780();
  v30 = *(result + 16);
  if (v30)
  {
    v29 = v5;
    v12 = 0;
    v27 = v1 + 16;
    v26 = *MEMORY[0x277CC7028];
    v24 = (v1 + 32);
    v25 = v1 + 104;
    v13 = MEMORY[0x277D84F90];
    v22[1] = v1 + 8;
    v23 = v8;
    v28 = result;
    while (v12 < *(result + 16))
    {
      v31 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v14 = *(v1 + 72);
      (*(v1 + 16))(v10, result + v31 + v14 * v12, v0);
      (*(v1 + 104))(v8, v26, v0);
      sub_23867CA98();
      v15 = v10;
      v16 = sub_23875E9E0();
      v17 = *(v1 + 8);
      v17(v8, v0);
      if (v16)
      {
        v17(v15, v0);
        v10 = v15;
      }

      else
      {
        v18 = *v24;
        (*v24)(v29, v15, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        v10 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE9E0(0, *(v13 + 16) + 1, 1);
          v10 = v15;
          v13 = v32;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2385FE9E0(v20 > 1, v21 + 1, 1);
          v13 = v32;
        }

        *(v13 + 16) = v21 + 1;
        v18((v13 + v31 + v21 * v14), v29, v0);
        v8 = v23;
      }

      ++v12;
      result = v28;
      if (v30 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_13:

    qword_27DF2F8D8 = v13;
  }

  return result;
}

unint64_t sub_23867CA98()
{
  result = qword_27DF12F50;
  if (!qword_27DF12F50)
  {
    sub_2387587A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12F50);
  }

  return result;
}

uint64_t sub_23867CAF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_23867CC40(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t type metadata accessor for TransactionTypeTokenProvider()
{
  result = qword_27DF12F58;
  if (!qword_27DF12F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23867CBC4()
{
  result = sub_2387587A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23867CC40(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for TransactionTypeTokenProvider();
  v66 = *(v70 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v70);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = (&v56 - v7);
  v68 = sub_2387587A0();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  *&v69 = a1;
  *(&v69 + 1) = a2;
  if (sub_23875EB40() < 2)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_27DF08D48 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v14 = qword_27DF2F8D8;
    v15 = v68;
    v62 = *(qword_27DF2F8D8 + 16);
    if (!v62)
    {
      break;
    }

    v16 = 0;
    v60 = v8 + 16;
    v57 = (v8 + 8);
    v59 = (v8 + 32);
    v65 = MEMORY[0x277D84F90];
    v61 = qword_27DF2F8D8;
    v58 = v8;
    while (v16 < *(v14 + 16))
    {
      v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      (*(v8 + 16))(v13, v14 + v17 + v18 * v16, v15);
      v19 = v15;
      sub_238758770();
      v20 = sub_23875EAE0();
      v22 = v21;

      *&v71 = v20;
      *(&v71 + 1) = v22;
      v75 = v69;
      sub_2384397A8();
      v73 = sub_23875F240();
      v74 = v23;
      sub_2384688CC();
      sub_238468920();
      v24 = sub_23875E970();

      if (v24)
      {
        v25 = *v59;
        (*v59)(v63, v13, v19);
        v26 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v26;
        v76 = v26;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v19;
        }

        else
        {
          sub_2385FE9E0(0, *(v26 + 16) + 1, 1);
          v15 = v68;
          v28 = v76;
        }

        v8 = v58;
        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_2385FE9E0(v29 > 1, v30 + 1, 1);
          v15 = v68;
          v28 = v76;
        }

        *(v28 + 16) = v30 + 1;
        v65 = v28;
        v25((v28 + v17 + v30 * v18), v63, v15);
      }

      else
      {
        (*v57)(v13, v19);
        v15 = v19;
        v8 = v58;
      }

      ++v16;
      v14 = v61;
      if (v62 == v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v65 = MEMORY[0x277D84F90];
LABEL_16:
  v31 = *(v65 + 16);
  if (v31)
  {
    v32 = v65;
    *&v75 = MEMORY[0x277D84F90];
    sub_2385FEA24(0, v31, 0);
    v33 = v75;
    v36 = *(v8 + 16);
    v35 = v8 + 16;
    v34 = v36;
    v37 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v39 = v67;
    do
    {
      v34(v39 + *(v70 + 20), v37, v68);
      v71 = v69;
      sub_2384397A8();
      v40 = sub_23875F250();
      v39 = v67;
      *v67 = v40;
      *(v39 + 8) = v41;
      *&v75 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2385FEA24(v42 > 1, v43 + 1, 1);
        v39 = v67;
        v33 = v75;
      }

      *(v33 + 16) = v43 + 1;
      sub_23867D294(v39, v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v43);
      v37 += v38;
      --v31;
    }

    while (v31);

    v44 = *(v33 + 16);
    if (v44)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v33 = MEMORY[0x277D84F90];
  v44 = *(MEMORY[0x277D84F90] + 16);
  if (!v44)
  {
LABEL_28:

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  *&v75 = MEMORY[0x277D84F90];
  sub_2385FE78C(0, v44, 0);
  v45 = v75;
  v46 = v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v47 = *(v66 + 72);
  do
  {
    v48 = v64;
    sub_23867D2F8(v46, v64);
    *&v72[8] = v70;
    *&v72[16] = &off_284B2E950;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
    sub_23867D294(v48, boxed_opaque_existential_1);
    v72[24] = 1;
    *&v75 = v45;
    v51 = *(v45 + 16);
    v50 = *(v45 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_2385FE78C((v50 > 1), v51 + 1, 1);
      v45 = v75;
    }

    *(v45 + 16) = v51 + 1;
    v52 = (v45 + 48 * v51);
    v53 = v71;
    v54 = *v72;
    *(v52 + 57) = *&v72[9];
    v52[2] = v53;
    v52[3] = v54;
    v46 += v47;
    --v44;
  }

  while (v44);

  return v45;
}

uint64_t sub_23867D294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTypeTokenProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23867D2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTypeTokenProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OrderNavigationModel.navigateToOrder(with:fulfillmentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v7 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2387632F0;
  v11 = v10 + v9;
  v12 = sub_23875A710();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = (v11 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  *v13 = a2;
  v13[1] = a3;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();

  v14 = v3;
  return sub_23875C2E0();
}

Swift::Void __swiftcall OrderNavigationModel.navigateToDashboard()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_23875C2E0();
}

Swift::Void __swiftcall OrderNavigationModel.navigateToExtractedOrder(trackedOrderIdentifier:fulfillmentIdentifier:)(Swift::String trackedOrderIdentifier, Swift::String_optional fulfillmentIdentifier)
{
  object = fulfillmentIdentifier.value._object;
  countAndFlagsBits = fulfillmentIdentifier.value._countAndFlagsBits;
  v5 = trackedOrderIdentifier._object;
  v6 = trackedOrderIdentifier._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v7 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2387632F0;
  v11 = (v10 + v9);
  *v11 = v6;
  v11[1] = v5;
  v11[2] = countAndFlagsBits;
  v11[3] = object;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();

  v12 = v2;

  sub_23875C2E0();
}

uint64_t OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v11 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2387632F0;
  v15 = (v14 + v13);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();

  v16 = a1;
  v17 = v5;

  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.navigate(to:returnIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v11 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2387632F0;
  v15 = v14 + v13;
  sub_238757D40();
  (*(v7 + 32))(v15, v10, v6);
  v16 = (v15 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  *v16 = a2;
  v16[1] = a3;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v19[1] = v14;

  v17 = v3;
  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23867DA8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23867DB0C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.path.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23875C2E0();
}

uint64_t EnvironmentValues.orderNavigation.getter()
{
  sub_238672904();
  sub_23875CDC0();
  return v1;
}

void (*OrderNavigationModel.path.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23875C2C0();
  return sub_2386608B0;
}

uint64_t OrderNavigationModel.$path.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_23867DD80(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_23867DDF8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t OrderNavigationModel.$path.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*OrderNavigationModel.$path.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel__path;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  swift_endAccess();
  return sub_238660E30;
}

id sub_23867E224()
{
  ObjectType = swift_getObjectType();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13048, &qword_23877C450);
  v32 = *(v34 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v3 = &ObjectType - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13050, &qword_23877C458);
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &ObjectType - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &ObjectType - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &ObjectType - v14;
  v16 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel__path;
  v17 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A50, &qword_23877B9A8);
  sub_23875C290();
  (*(v12 + 32))(&v0[v16], v15, v11);
  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context] = 0;
  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController] = 0;
  if (v17 >> 62 && sub_23875F3A0())
  {
    v18 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_cancellableSet] = v18;
  v37.receiver = v0;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, sel_init, ObjectType);
  swift_beginAccess();
  v20 = v19;
  sub_23875C2A0();
  swift_endAccess();
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13058, &qword_23877C460);
  sub_23843A3E8(&qword_27DF13060, &qword_27DF12FA0, &qword_23877C348);
  v21 = v30;
  sub_23875C330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13068, &qword_23877C468);
  sub_23843A3E8(&qword_27DF13070, &qword_27DF13048, &qword_23877C450);
  v22 = v34;
  sub_23875C310();
  (*(v32 + 8))(v3, v22);
  sub_23843A3E8(&qword_27DF13078, &qword_27DF13050, &qword_23877C458);
  v23 = v33;
  v24 = sub_23875C300();
  (*(v31 + 8))(v6, v23);
  (*(v29 + 8))(v10, v21);
  v35 = v24;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_238681590;
  *(v26 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13080, qword_23877C470);
  sub_23843A3E8(&qword_27DF13088, &qword_27DF13080, qword_23877C470);
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  return v20;
}

void sub_23867E818(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23867E930(a2);
  }

  if (a1 && (swift_beginAccess(), (v6 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v7 = v6;
    sub_23868009C(a1, a2);
  }

  else
  {
  }
}

void sub_23867E930(uint64_t a1)
{
  v2 = v1;
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context);
  if (!v10)
  {
LABEL_16:
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a1 + 16))
  {
    v11 = v7;
    sub_238759C20();
    v12 = v10;
    v31 = sub_238759C00();
    v13 = sub_23867F9D0(a1);
    [v31 setPredicate_];

    sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
    v14 = sub_23875EC60();
    [v31 setSortDescriptors_];

    v15 = objc_allocWithZone(MEMORY[0x277CBE430]);
    v16 = [v15 initWithFetchRequest:v31 managedObjectContext:v12 sectionNameKeyPath:0 cacheName:0];
    v17 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController;
    v18 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController);
    *(v2 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController) = v16;

    v19 = *(v2 + v17);
    if (v19)
    {
      [v19 setDelegate_];
      v20 = *(v2 + v17);
      if (v20)
      {
        v32[0] = 0;
        if ([v20 performFetch_])
        {
          v21 = v32[0];
        }

        else
        {
          v25 = v32[0];
          v26 = sub_23875B730();

          swift_willThrow();
          sub_23875C180();
          v27 = sub_23875C1B0();
          v28 = sub_23875EFE0();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_2383F8000, v27, v28, "Failed to fetch updates for order", v29, 2u);
            MEMORY[0x23EE64DF0](v29, -1, -1);
          }

          else
          {
          }

          (*(v5 + 8))(v9, v11);
        }

        goto LABEL_16;
      }
    }

    v22 = *MEMORY[0x277D85DE8];
    v23 = v31;
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController);
    *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController) = 0;
    v24 = *MEMORY[0x277D85DE8];
  }
}

id OrderNavigationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23867EE10@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23867EE64(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = type metadata accessor for OrderPaymentDestination(0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReturnDetailsDestination(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875A710();
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OrderNavigationDestination(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238672958(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v26 = v44;
    if (EnumCaseMultiPayload == 3)
    {
      sub_238681720(v20, v8, type metadata accessor for ReturnDetailsDestination);
      sub_238757DF0();
      v23 = sub_238757DD0();
      v24 = type metadata accessor for ReturnDetailsDestination;
      v25 = v8;
LABEL_16:
      sub_238681638(v25, v24);

      return v23 & 1;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v27 = v41;
      sub_238681720(v20, v41, type metadata accessor for OrderPaymentDestination);
      v28 = *(v40 + 20);
      v23 = sub_238757DF0();
      v29 = sub_238757DD0();
      if (!v26)
      {
        v23 = v29;
      }

      sub_238681638(v27, type metadata accessor for OrderPaymentDestination);
    }

    else
    {

      v23 = 1;
    }
  }

  else
  {
    v22 = v44;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v34 = *v20;
        v35 = v20[1];
        v36 = v20[3];
        sub_238759480();
        v23 = sub_238759430();

        return v23 & 1;
      }

      sub_238681720(v20, v12, type metadata accessor for FetchedOrderDetailsDestination);
      sub_238757DF0();
      v23 = sub_238757DD0();
      v24 = type metadata accessor for FetchedOrderDetailsDestination;
      v25 = v12;
      goto LABEL_16;
    }

    v30 = *v20;
    v31 = v20[2];
    v32 = v20[4];
    sub_238757D40();
    v23 = sub_238757DF0();
    v33 = sub_238757DD0();
    if (!v22)
    {
      v23 = v33;
    }

    (*(v39 + 8))(v16, v13);
  }

  return v23 & 1;
}

id sub_23867F628()
{
  result = [objc_allocWithZone(type metadata accessor for OrderNavigationModel()) init];
  qword_27DF12F70 = result;
  return result;
}

id sub_23867F65C()
{
  if (qword_27DF08D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF12F70;
  qword_27DF12F78 = qword_27DF12F70;

  return v1;
}

id static OrderNavigationKey.defaultValue.getter()
{
  if (qword_27DF08D58 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF12F78;

  return v1;
}

uint64_t sub_23867F71C@<X0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08D58 != -1)
  {
    swift_once();
  }

  v2 = qword_27DF12F78;

  *a1 = v2;
  return result;
}

uint64_t sub_23867F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2386816D8(qword_27DF130C0, type metadata accessor for OrderNavigationModel);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.orderNavigation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_238672904();
  sub_23875CDC0();
  return sub_23867F8DC;
}

void sub_23867F8DC(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_23875CDD0();
    v7 = *a1;
  }

  else
  {
    sub_23875CDD0();
  }
}

uint64_t sub_23867F970@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4)
  {
  }

  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_23867F9B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v2;
  return sub_238681698(v3, v2);
}

id sub_23867F9D0(uint64_t a1)
{
  v55 = type metadata accessor for OrderPaymentDestination(0);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReturnDetailsDestination(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23875A710();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OrderNavigationDestination(0);
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v60 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    v21 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v22 = *(v13 + 72);
    v48 = "dashboardItemMonth.year = %d";
    v49 = "year == %d AND month < %d";
    v46 = (v10 + 8);
    v47 = "dashboardItemMonth.month = %d";
    v45 = xmmword_2387632E0;
    v57 = xmmword_2387632F0;
    v58 = v22;
    do
    {
      sub_238672958(v21, v19);
      sub_238672958(v19, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v23 = v53;
          sub_238681720(v16, v53, type metadata accessor for ReturnDetailsDestination);
          sub_238759C20();
          MEMORY[0x23EE5E690](v23);
          v24 = type metadata accessor for ReturnDetailsDestination;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            v34 = *v16;
            v56 = *(v16 + 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
            v35 = swift_allocObject();
            *(v35 + 16) = v45;
            sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
            v36 = swift_allocObject();
            *(v36 + 16) = v57;
            v37 = MEMORY[0x277D84958];
            *(v36 + 56) = MEMORY[0x277D84958];
            v38 = MEMORY[0x277D849A0];
            *(v36 + 64) = MEMORY[0x277D849A0];
            *(v36 + 32) = v34;
            *(v35 + 32) = sub_23875EF80();
            v39 = swift_allocObject();
            *(v39 + 16) = v57;
            *(v39 + 56) = v37;
            *(v39 + 64) = v38;
            *(v39 + 32) = v56;
            v22 = v58;
            *(v35 + 40) = sub_23875EF80();
            *(v35 + 48) = sub_23875EF80();
            v40 = sub_23875EC60();

            v41 = [objc_opt_self() andPredicateWithSubpredicates_];

            goto LABEL_5;
          }

          v23 = v54;
          sub_238681720(v16, v54, type metadata accessor for OrderPaymentDestination);
          sub_238759C20();
          MEMORY[0x23EE5E690](v23 + *(v55 + 20));
          v24 = type metadata accessor for OrderPaymentDestination;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v27 = *v16;
          v28 = *(v16 + 2);
          v29 = *(v16 + 4);
          sub_238759C20();
          v30 = v50;
          sub_238757D40();
          MEMORY[0x23EE5E690](v30);

          v22 = v58;
          (*v46)(v30, v51);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v31 = *v16;
          v32 = *(v16 + 1);
          v33 = *(v16 + 3);
          sub_238759C20();
          sub_238759BC0();

          goto LABEL_5;
        }

        v23 = v52;
        sub_238681720(v16, v52, type metadata accessor for FetchedOrderDetailsDestination);
        sub_238759C20();
        MEMORY[0x23EE5E690](v23);
        v24 = type metadata accessor for FetchedOrderDetailsDestination;
      }

      sub_238681638(v23, v24);
LABEL_5:
      sub_238681638(v19, type metadata accessor for OrderNavigationDestination);
      sub_23875F4C0();
      v25 = *(v60 + 16);
      sub_23875F4F0();
      sub_23875F500();
      sub_23875F4D0();
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  v42 = sub_23875EC60();

  v43 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v43;
}

void sub_23868009C(uint64_t a1, uint64_t a2)
{
  v116 = type metadata accessor for OrderNavigationDestination(0);
  v4 = *(v116 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v112 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v112 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v112 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v112 - v18;
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v112 - v21;
  v25 = *(a1 + 16);
  v26 = *(a2 + 16);
  if (!v25)
  {
    if (!v26)
    {
      (*(v4 + 56))(&v112 - v21, 1, 1, v116, v23);
      sub_238439884(v24, &unk_27DF13090, &qword_23876C690);
      return;
    }

    sub_238672958(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v26 - 1), &v112 - v21);
    (*(v4 + 56))(v24, 0, 1, v116);
    sub_2386815C8(v24, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v45 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v47 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      v88 = *MEMORY[0x277D38428];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v89;
      v50 = *MEMORY[0x277D38390];
      v51 = 0x8000000238785D10;
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = 0xD000000000000013;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v69 = v19;
        goto LABEL_26;
      }

      sub_238681638(v19, type metadata accessor for OrderNavigationDestination);
      v45 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v47 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      v48 = *MEMORY[0x277D38428];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v49;
      v50 = *MEMORY[0x277D38390];
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = 0x6C6954726564726FLL;
      v51 = 0xE900000000000065;
    }

    v90 = *MEMORY[0x277D384B8];
    *(inited + 72) = v51;
    *(inited + 80) = v90;
    strcpy((inited + 88), "orderDashboard");
    *(inited + 103) = -18;
    v91 = v47;
    v92 = v50;
    v93 = v90;
    v94 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v94;
    sub_2385C33E4(v45, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v117);

    v96 = *MEMORY[0x277D38548];
    v97 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v98 = sub_23875E910();

    [v97 subject:v96 sendEvent:v98];

    return;
  }

  v113 = v22;
  if (v25 < v26)
  {
    v112 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v27 = *(v4 + 72);
    sub_238672958(a1 + v112 + v27 * (v25 - 1), v11);
    v28 = swift_getEnumCaseMultiPayload();
    sub_238681638(v11, type metadata accessor for OrderNavigationDestination);
    if (!v28)
    {
      sub_238672958(a2 + v112 + v27 * (v26 - 1), v16);
      (*(v4 + 56))(v16, 0, 1, v116);
      v70 = v113;
      sub_2386815C8(v16, v113);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v71 = sub_23854B138(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
        v72 = swift_initStackObject();
        *(v72 + 16) = xmmword_238763300;
        v73 = *MEMORY[0x277D383D8];
        *(v72 + 32) = *MEMORY[0x277D383D8];
        v74 = *MEMORY[0x277D38428];
        v75 = sub_23875EA80();
        v76 = MEMORY[0x277D38390];
        *(v72 + 40) = v75;
        *(v72 + 48) = v77;
        v78 = *v76;
        *(v72 + 56) = *v76;
        *(v72 + 64) = 0xD000000000000012;
        v79 = *MEMORY[0x277D384B8];
        *(v72 + 72) = 0x8000000238784F20;
        *(v72 + 80) = v79;
        strcpy((v72 + 88), "orderDetails");
        *(v72 + 101) = 0;
        *(v72 + 102) = -5120;
        v80 = v73;
        v81 = v78;
        v82 = v79;
        v83 = sub_23854B138(v72);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
        swift_arrayDestroy();
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v83;
        sub_2385C33E4(v71, sub_2386E31DC, 0, v84, &v117);

        v85 = *MEMORY[0x277D38548];
        v86 = objc_opt_self();
        type metadata accessor for PKAnalyticsKey(0);
        sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
        v87 = sub_23875E910();

        [v86 subject:v85 sendEvent:v87];

        v69 = v113;
      }

      else
      {
        v69 = v70;
      }

      goto LABEL_26;
    }
  }

  if (v26 >= v25)
  {
    return;
  }

  v29 = v115;
  sub_238672958(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v25 - 1), v115);
  v30 = v114;
  sub_238672958(v29, v114);
  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (v31 >= 2)
    {
      sub_238681638(v30, type metadata accessor for OrderNavigationDestination);
      v32 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      v99 = swift_initStackObject();
      *(v99 + 16) = xmmword_238763300;
      v100 = *MEMORY[0x277D383D8];
      *(v99 + 32) = *MEMORY[0x277D383D8];
      v101 = *MEMORY[0x277D38428];
      *(v99 + 40) = sub_23875EA80();
      *(v99 + 48) = v102;
      v103 = *MEMORY[0x277D38390];
      *(v99 + 56) = *MEMORY[0x277D38390];
      *(v99 + 64) = 1801675106;
      v104 = *MEMORY[0x277D384B8];
      *(v99 + 72) = 0xE400000000000000;
      *(v99 + 80) = v104;
      *(v99 + 88) = 0xD000000000000015;
      *(v99 + 96) = 0x80000002387850E0;
      v105 = v100;
      v106 = v103;
      v107 = v104;
      v108 = sub_23854B138(v99);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v108;
    }

    else
    {
      sub_238681638(v30, type metadata accessor for OrderNavigationDestination);
      v32 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_238763300;
      v34 = *MEMORY[0x277D383D8];
      *(v33 + 32) = *MEMORY[0x277D383D8];
      v35 = *MEMORY[0x277D38428];
      *(v33 + 40) = sub_23875EA80();
      *(v33 + 48) = v36;
      v37 = *MEMORY[0x277D38390];
      *(v33 + 56) = *MEMORY[0x277D38390];
      *(v33 + 64) = 1801675106;
      v38 = *MEMORY[0x277D384B8];
      *(v33 + 72) = 0xE400000000000000;
      *(v33 + 80) = v38;
      strcpy((v33 + 88), "orderDetails");
      *(v33 + 101) = 0;
      *(v33 + 102) = -5120;
      v39 = v34;
      v40 = v37;
      v41 = v38;
      v42 = sub_23854B138(v33);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v42;
    }

    sub_2385C33E4(v32, sub_2386E31DC, 0, v43, &v117);

    v109 = *MEMORY[0x277D38548];
    v110 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v111 = sub_23875E910();

    [v110 subject:v109 sendEvent:v111];

    goto LABEL_25;
  }

  if (v31 != 3)
  {
    if (v31 != 4)
    {
LABEL_25:
      v69 = v29;
      goto LABEL_26;
    }

    v52 = sub_23854B138(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_238763300;
    v54 = *MEMORY[0x277D383D8];
    *(v53 + 32) = *MEMORY[0x277D383D8];
    v55 = *MEMORY[0x277D38428];
    v56 = sub_23875EA80();
    v57 = MEMORY[0x277D38390];
    *(v53 + 40) = v56;
    *(v53 + 48) = v58;
    v59 = *v57;
    *(v53 + 56) = *v57;
    *(v53 + 64) = 1801675106;
    v60 = *MEMORY[0x277D384B8];
    *(v53 + 72) = 0xE400000000000000;
    *(v53 + 80) = v60;
    *(v53 + 88) = 0xD000000000000012;
    *(v53 + 96) = 0x8000000238784F20;
    v61 = v54;
    v62 = v59;
    v63 = v60;
    v64 = sub_23854B138(v53);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v64;
    sub_2385C33E4(v52, sub_2386E31DC, 0, v65, &v117);

    v66 = *MEMORY[0x277D38548];
    v67 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v68 = sub_23875E910();

    [v67 subject:v66 sendEvent:v68];
  }

  sub_238681638(v29, type metadata accessor for OrderNavigationDestination);
  v69 = v30;
LABEL_26:
  sub_238681638(v69, type metadata accessor for OrderNavigationDestination);
}

void sub_238680E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OrderNavigationDestination(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - v17;
  v19 = *&v3[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context];
  if (v19)
  {
    v20 = a3 == 2;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    return;
  }

  v39 = v16;
  sub_238453DB4(a1, &v41);
  sub_238759C20();
  v21 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    return;
  }

  v22 = *&v3[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController];
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = [v22 fetchedObjects];
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v23;
  v25 = sub_23875EC80();

  if (v25 >> 62)
  {
    goto LABEL_25;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v26)
  {
LABEL_26:
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = MEMORY[0x277D84F90];
    v33 = v3;
    sub_23875C2E0();
    goto LABEL_27;
  }

  while (1)
  {
    v38 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v27 = v41;
    v37 = *(v41 + 2);
    if (!v37)
    {
      break;
    }

    v34[0] = v10;
    v34[1] = v7;
    v34[2] = v6;
    v21 = 0;
    v10 = MEMORY[0x277D84F90];
    v35 = v3;
    v36 = v41;
    while (v21 < *(v27 + 2))
    {
      v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v6 = *(v39 + 72);
      sub_238672958(&v27[v28 + v6 * v21], v18);
      if ((sub_23867EE64(v18, v38) & 1) == 0)
      {
        sub_238681638(v18, type metadata accessor for OrderNavigationDestination);
        goto LABEL_23;
      }

      sub_238681720(v18, v14, type metadata accessor for OrderNavigationDestination);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEF5C(0, *(v10 + 2) + 1, 1);
        v3 = v35;
        v10 = v41;
      }

      v7 = *(v10 + 2);
      v30 = *(v10 + 3);
      if (v7 >= v30 >> 1)
      {
        sub_2385FEF5C(v30 > 1, v7 + 1, 1);
        v3 = v35;
        v10 = v41;
      }

      ++v21;
      *(v10 + 2) = v7 + 1;
      sub_238681720(v14, &v10[v28 + v7 * v6], type metadata accessor for OrderNavigationDestination);
      v27 = v36;
      if (v37 == v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    v32 = sub_23875F3A0();

    if (!v32)
    {
      goto LABEL_26;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_23:

  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v10;
  v31 = v3;
  sub_23875C2E0();
}

uint64_t type metadata accessor for OrderNavigationModel()
{
  result = qword_27DF12FC0;
  if (!qword_27DF12FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238681474()
{
  sub_23868151C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23868151C()
{
  if (!qword_27DF12FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A50, &qword_23877B9A8);
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12FD0);
    }
  }
}

uint64_t sub_238681598(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_2386815C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238681638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238681698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2386816D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238681720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238681788(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = sub_23875F1F0();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_23875BED0();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23868187C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_238681B24@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v50 = *v1;
  v4 = *(v50 + 88);
  v52 = sub_23875F1F0();
  v5 = *(v52 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])(v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (MEMORY[0x28223BE20])(v7);
  v11 = &v44 - v10;
  v12 = (MEMORY[0x28223BE20])(v9);
  v14 = &v44 - v13;
  v15 = *(v4 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])(v12);
  v49 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  sub_238681F98(v14);
  v21 = *(v15 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    v48 = a1;
    v22 = v14;
    v23 = v52;
    v45 = v5[1];
    v45(v22, v52);
    v24 = *(*v1 + 112);
    swift_beginAccess();
    v46 = v24;
    v47 = v5;
    v26 = v5[2];
    v25 = (v5 + 2);
    v27 = v23;
    v28 = v26;
    v26(v11, &v1[v24], v27);
    if (v21(v11, 1, v4) == 1)
    {
      v29 = v52;
      v30 = (v45)(v11, v52);
      v31 = *(*v1 + 120);
      v49 = v25;
      v53 = *&v1[v31];
      v32 = v53;
      v33 = *(v1 + 1);
      *&v34 = MEMORY[0x28223BE20](v30);
      *(&v44 - 4) = *(v50 + 80);
      *(&v44 - 3) = v4;
      *(&v44 - 1) = v34;
      sub_23875F1F0();
      v35 = v32;
      v36 = v51;
      sub_23868187C(sub_238682548, (&v44 - 6), MEMORY[0x277D84A98], v4, v37, v51);

      v38 = v46;
      swift_beginAccess();
      (v47[5])(&v2[v38], v36, v29);
      swift_endAccess();
      return v28(v48, &v2[v38], v29);
    }

    else
    {
      v41 = *(v15 + 32);
      v42 = v49;
      v41(v49, v11, v4);
      v43 = v48;
      v41(v48, v42, v4);
      return (*(v15 + 56))(v43, 0, 1, v4);
    }
  }

  else
  {
    v40 = *(v15 + 32);
    v40(v20, v14, v4);
    v40(a1, v20, v4);
    return (*(v15 + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_238681F98@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  swift_getKeyPath();
  sub_2386820CC();

  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_23875F1F0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2386820CC()
{
  v1 = *(*v0 + 136);
  swift_getWitnessTable();
  return sub_23875BE90();
}

uint64_t sub_23868216C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  swift_beginAccess();
  v6 = *(v4 + 88);
  v7 = sub_23875F1F0();
  (*(*(v7 - 8) + 24))(a1 + v5, a2, v7);
  return swift_endAccess();
}

uint64_t sub_238682234()
{
  v1 = *(*v0 + 136);
  swift_getWitnessTable();
  return sub_23875BE80();
}

char *sub_23868230C()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 88);
  v5 = sub_23875F1F0();
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v3], v5);
  v6(&v0[*(*v0 + 112)], v5);

  v7 = *v0;
  v8 = &v0[*(*v0 + 128)];
  if (*v8)
  {
    v9 = *(v8 + 1);
    v14[0] = *v8;
    v14[1] = v9;
    v15 = *(v8 + 4);
    __swift_project_boxed_opaque_existential_1(v14 + 1, v15);
    v10 = *&v14[0];
    [v10 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v14 + 1);
    v7 = *v0;
  }

  v11 = *(v7 + 136);
  v12 = sub_23875BED0();
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  return v0;
}

uint64_t sub_2386824D8()
{
  sub_23868230C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_238682548(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

uint64_t sub_23868257C()
{
  v2 = *(*v0 + 80);
  swift_getKeyPath();
  sub_238682234();
}

void sub_238682688()
{
  sub_238758680();
  if (v0 <= 0x3F)
  {
    sub_238464EC8();
    if (v1 <= 0x3F)
    {
      sub_238682724();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238682724()
{
  if (!qword_27DF13168)
  {
    sub_23875A230();
    v0 = sub_23875D360();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF13168);
    }
  }
}

uint64_t sub_2386827A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13238, &qword_23877C708);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13240, &unk_23877C710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v33 = sub_23875A9F0();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v33);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v31 = a2;
  v32 = v16;
  v17 = a2 + *(v16 + 20);
  *v17 = swift_getKeyPath();
  *(v17 + 40) = 0;
  v18 = sub_238758680();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v29 = a1;
  v20(a2, a1, v18);
  KeyPath = swift_getKeyPath();
  sub_23875A230();
  v21 = swift_getKeyPath();
  v28 = MEMORY[0x23EE5ECA0](0, v21);

  sub_238758530();
  v22 = sub_23875B500();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = *MEMORY[0x277CC71E8];
  v24 = sub_238758AB0();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v7, v23, v24);
  (*(v25 + 56))(v7, 0, 1, v24);
  MEMORY[0x23EE5EC60](v15, 0, v11, v7);
  sub_238439884(v7, &qword_27DF13238, &qword_23877C708);
  sub_238439884(v11, &qword_27DF13240, &unk_23877C710);
  (*(v12 + 8))(v15, v33);
  v26 = v31 + *(v32 + 24);
  sub_23875D350();
  return (*(v19 + 8))(v29, v18);
}

uint64_t sub_238682B40@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13170, &qword_23877C5F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13178, &qword_23877C5F8);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13180, &qword_23877C600);
  sub_23843A3E8(&qword_27DF13188, &qword_27DF13180, &qword_23877C600);
  sub_23875D9C0();
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

  v31 = v16;
  v32 = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v14) = v22;
  v23 = sub_23843A3E8(&qword_27DF13190, &qword_27DF13170, &qword_23877C5F0);
  sub_23875DC60();
  sub_2384397FC(v19, v21, v14 & 1);

  (*(v3 + 8))(v6, v2);
  v31 = v2;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_23875DE00();
  return (*(v27 + 8))(v10, v24);
}

uint64_t sub_238682EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v61 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13198, &qword_23877C608);
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v54 - v6;
  v7 = sub_23875B7C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131A0, &unk_23877C610);
  v56 = *(v58 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v13 = (&v54 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F0, &qword_238765E38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - v16;
  v18 = sub_238759660();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131A8, &qword_23877C620);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v55 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v54 - v27;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v64;
  sub_2387585E0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &qword_27DF0A7F0, &qword_238765E38);
    v30 = 1;
    v31 = v58;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v32 = type metadata accessor for BalanceSection(0);
    v33 = v13 + v32[5];
    sub_238759650();
    v34 = v13 + v32[6];
    sub_238758530();
    v35 = v13 + v32[7];
    sub_238758590();
    sub_23875BCC0();
    sub_23875B7B0();
    v36 = objc_allocWithZone(sub_238759550());
    *v13 = sub_238759540();
    v37 = v13 + v32[8];
    *v37 = swift_getKeyPath();
    v37[40] = 0;
    KeyPath = swift_getKeyPath();
    v39 = v29 + *(type metadata accessor for AccountConsentManagementAllDataView(0) + 20);
    sub_2384D51D8(v65);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v29 = v64;
    v40 = sub_238758A10();
    (*(v19 + 8))(v22, v18);
    v31 = v58;
    v41 = (v13 + *(v58 + 36));
    *v41 = KeyPath;
    v41[1] = v40;
    __swift_destroy_boxed_opaque_existential_1(v65);
    sub_2384396E4(v13, v28, &qword_27DF131A0, &unk_23877C610);
    v30 = 0;
  }

  v42 = (*(v56 + 56))(v28, v30, 1, v31);
  MEMORY[0x28223BE20](v42);
  v54 = v28;
  *(&v54 - 2) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131B0, &qword_23877C628);
  sub_238684518();
  v43 = v59;
  sub_23875E3D0();
  v44 = v28;
  v45 = v55;
  sub_23843981C(v44, v55, &qword_27DF131A8, &qword_23877C620);
  v47 = v62;
  v46 = v63;
  v48 = *(v62 + 16);
  v49 = v60;
  v48(v60, v43, v63);
  v50 = v61;
  sub_23843981C(v45, v61, &qword_27DF131A8, &qword_23877C620);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131D0, &qword_23877C638);
  v48((v50 + *(v51 + 48)), v49, v46);
  v52 = *(v47 + 8);
  v52(v43, v46);
  sub_238439884(v54, &qword_27DF131A8, &qword_23877C620);
  v52(v49, v46);
  sub_238439884(v45, &qword_27DF131A8, &qword_23877C620);
}

uint64_t sub_2386835AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131D8, &unk_23877C698);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
  sub_23875D340();
  sub_238686574(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountConsentManagementAllDataView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_238686380(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131C8, &qword_23877C630);
  sub_23843A3E8(&qword_27DF131E0, &qword_27DF131D8, &unk_23877C698);
  sub_23843A3E8(&qword_27DF131C0, &qword_27DF131C8, &qword_23877C630);
  sub_23843A3E8(&qword_27DF131E8, &qword_27DF0F628, &unk_238772DC0);
  sub_23875E380();
}

uint64_t sub_238683890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131F0, &qword_23877C6A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = a1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(type metadata accessor for AccountConsentManagementTransactionHistoryView() + 20)];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  KeyPath = swift_getKeyPath();
  v13 = a2 + *(type metadata accessor for AccountConsentManagementAllDataView(0) + 20);
  sub_2384D51D8(v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v14 = sub_238758A10();
  v15 = &v8[*(v5 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  __swift_destroy_boxed_opaque_existential_1(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131F8, &unk_23877C6B0);
  sub_23843A3E8(&qword_27DF13200, &qword_27DF131F8, &unk_23877C6B0);
  sub_23868646C();
  sub_23875C750();
}

uint64_t sub_238683B68@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  sub_23875D370();
  sub_23843A3E8(&qword_27DF13218, &qword_27DF0F628, &unk_238772DC0);
  sub_23875EED0();
  sub_23875EF00();
  v2 = sub_23875EEF0();
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13220, &qword_23877C6C0);
  sub_238683CDC(v2, a1 + *(v3 + 44));
}

uint64_t sub_238683CDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TransactionRowIcon(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v11 = sub_23875D030();
  LOBYTE(v24[0]) = 1;
  sub_238683F70(a1, v21);
  *&v20[7] = v21[0];
  *&v20[23] = v21[1];
  *&v20[39] = v21[2];
  *&v20[55] = v21[3];
  v12 = v24[0];
  sub_238686574(v10, v7, type metadata accessor for TransactionRowIcon);
  sub_238686574(v7, a2, type metadata accessor for TransactionRowIcon);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13228, &qword_23877C700) + 48);
  v22[0] = v11;
  v22[1] = 0;
  v23[0] = v12;
  *&v23[1] = *v20;
  *&v23[17] = *&v20[16];
  *&v23[33] = *&v20[32];
  *&v23[49] = *&v20[48];
  v14 = *&v20[63];
  *&v23[64] = *&v20[63];
  v15 = *v23;
  *v13 = v11;
  *(v13 + 16) = v15;
  v16 = *&v23[16];
  v17 = *&v23[32];
  v18 = *&v23[48];
  *(v13 + 80) = v14;
  *(v13 + 48) = v17;
  *(v13 + 64) = v18;
  *(v13 + 32) = v16;
  sub_23843981C(v22, v24, &qword_27DF0BA70, &unk_238769590);
  sub_2386865DC(v10);
  v24[0] = v11;
  v24[1] = 0;
  v25 = v12;
  v27 = *&v20[16];
  v28 = *&v20[32];
  *v29 = *&v20[48];
  *&v29[15] = *&v20[63];
  v26 = *v20;
  sub_238439884(v24, &qword_27DF0BA70, &unk_238769590);
  sub_2386865DC(v7);
}

uint64_t sub_238683F70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238686638();
  sub_23875F2D0();
  sub_2384397A8();
  v4 = sub_23875DAA0();
  v35 = v5;
  v36 = v4;
  v34 = v6;
  v37 = v7;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_2387632F0;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  sub_23875EAB0();

  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  sub_23875D7F0();
  v21 = sub_23875DA60();
  v23 = v22;
  v25 = v24;

  sub_2384397FC(v16, v18, v20 & 1);

  sub_23875D440();
  v26 = sub_23875DA20();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2384397FC(v21, v23, v25 & 1);

  *a2 = v36;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  sub_23843980C(v36, v35, v34 & 1);

  sub_23843980C(v26, v28, v30 & 1);

  sub_2384397FC(v26, v28, v30 & 1);

  sub_2384397FC(v36, v35, v34 & 1);
}

uint64_t sub_238684304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
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

unint64_t sub_238684518()
{
  result = qword_27DF131B8;
  if (!qword_27DF131B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF131B0, &qword_23877C628);
    sub_23843A3E8(&qword_27DF131C0, &qword_27DF131C8, &qword_23877C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF131B8);
  }

  return result;
}

uint64_t sub_2386845E8@<X0>(uint64_t a1@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13278, &qword_23877C880);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v45 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13280, &qword_23877C888);
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v45 - v7;
  v8 = sub_23875C450();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v57 = sub_23875E0D0();
  sub_23875E4A0();
  sub_23875C5C0();
  v53 = v63;
  v52 = v65;
  v51 = v67;
  v50 = v68;
  v54 = v66;
  v55 = v64;
  v62 = v64;
  v61 = v66;
  v60 = 1;
  v56 = v1;
  sub_238684304(v15);
  v16 = v9[13];
  v47 = *MEMORY[0x277CDF3D0];
  v46 = v16;
  v16(v12);
  v17 = sub_23875C440();
  v18 = v9[1];
  v18(v12, v8);
  v18(v15, v8);
  v19 = v5;
  if (v17)
  {
    v20 = sub_23875E040();
  }

  else
  {
    v20 = sub_23875E010();
  }

  v48 = v20;
  v21 = *(sub_23875C980() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_23875CF50();
  v24 = v19 + v21;
  v25 = v19;
  (*(*(v23 - 8) + 104))(v24, v22, v23);
  __asm { FMOV            V0.2D, #6.0 }

  *v19 = _Q0;
  sub_23875E4A0();
  sub_23875C5C0();
  v31 = (v19 + *(v49 + 36));
  v32 = v70;
  *v31 = v69;
  v31[1] = v32;
  v31[2] = v71;
  sub_238684304(v15);
  v46(v12, v47, v8);
  v33 = sub_23875C440();
  v18(v12, v8);
  v18(v15, v8);
  if (v33)
  {
    v34 = sub_23875E010();
  }

  else
  {
    v34 = sub_23875E040();
  }

  v35 = v34;
  v36 = v59;
  sub_2384396E4(v25, v59, &qword_27DF13278, &qword_23877C880);
  *(v36 + *(v58 + 36)) = v35;
  v37 = sub_23875E4A0();
  v39 = v38;
  v40 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13288, &qword_23877C890) + 36);
  sub_2384396E4(v36, v40, &qword_27DF13280, &qword_23877C888);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13290, &qword_23877C898);
  v42 = (v40 + *(result + 36));
  *v42 = v37;
  v42[1] = v39;
  v43 = v53;
  *a1 = v57;
  *(a1 + 8) = v43;
  *(a1 + 16) = v55;
  *(a1 + 24) = v52;
  *(a1 + 32) = v54;
  v44 = v50;
  *(a1 + 40) = v51;
  *(a1 + 48) = v44;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 1;
  *(a1 + 72) = v48;
  return result;
}

uint64_t sub_238684AC0@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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
  v16 = v15;
  v18 = v17;
  sub_2384397FC(v7, v9, v11 & 1);

  v19 = sub_23875DAA0();
  v21 = v20;
  v22 = v16 & 1;
  v27 = v16 & 1;
  v24 = v23 & 1;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v22;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v23 & 1;
  *(a1 + 56) = v25;
  sub_23843980C(v12, v14, v22);

  sub_23843980C(v19, v21, v24);

  sub_2384397FC(v19, v21, v24);

  sub_2384397FC(v12, v14, v27);
}

__n128 sub_238684D10@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_23875D030();
  sub_238684AC0(v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t sub_238684DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132A8, &qword_23877C8A8);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132B0, &unk_23877C8B0);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v51 - v9;
  v62 = sub_238758B40();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = sub_238758B60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for BalanceSection(0);
  v22 = v63;
  (*(v17 + 16))(v20, v63 + *(v21 + 20), v16);
  v23 = (*(v17 + 88))(v20, v16);
  if (v23 == *MEMORY[0x277CC7250])
  {
    (*(v17 + 96))(v20, v16);
    v24 = v62;
    (*(v10 + 32))(v15, v20, v62);
    v25 = *(v21 + 28);
    sub_23868567C(v15, &v72);
    v64 = v72;
    v65 = v73;
    v66[0] = 0;
LABEL_7:
    sub_238686998();
    sub_23875D1B0();
    v78 = v74;
    v77 = 0;
    v64 = v72;
    v65 = v73;
    v66[0] = v74;
    *&v66[1] = v67;
    *&v66[17] = v68;
    v66[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132C8, &qword_23877C8C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_238686914();
    sub_2386869EC();
    sub_23875D1B0();
    (*(v10 + 8))(v15, v24);
    v81 = v74;
    v82 = v75;
    v83 = v76;
    v79 = v72;
    v80 = v73;
LABEL_10:
    sub_238685E08(v22, v57);
    sub_238686AA4();
    v40 = v59;
    sub_23875C750();
    v42 = v60;
    v41 = v61;
    v43 = *(v61 + 16);
    v43(v60, v40, v5);
    v44 = v82;
    *v66 = v81;
    *&v66[16] = v82;
    v45 = v83;
    *&v66[32] = v83;
    v47 = v79;
    v46 = v80;
    v64 = v79;
    v65 = v80;
    *(a2 + 32) = v81;
    *(a2 + 48) = v44;
    *(a2 + 64) = v45;
    *a2 = v47;
    *(a2 + 16) = v46;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13300, &qword_23877C8D8);
    v43((a2 + *(v48 + 48)), v42, v5);
    sub_23843981C(&v64, &v72, &qword_27DF13308, &qword_23877C8E0);
    v49 = *(v41 + 8);
    v49(v40, v5);
    v49(v42, v5);
    v74 = v81;
    v75 = v82;
    v76 = v83;
    v72 = v79;
    v73 = v80;
    sub_238439884(&v72, &qword_27DF13308, &qword_23877C8E0);
  }

  if (v23 == *MEMORY[0x277CC7248])
  {
    (*(v17 + 96))(v20, v16);
    v24 = v62;
    (*(v10 + 32))(v15, v20, v62);
    v26 = *(v21 + 28);
    sub_238685A44(v15, &v72);
    v64 = v72;
    v65 = v73;
    v66[0] = 1;
    goto LABEL_7;
  }

  v53 = a2;
  v54 = v5;
  if (v23 == *MEMORY[0x277CC7240])
  {
    (*(v17 + 96))(v20, v16);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58) + 48);
    v28 = *(v10 + 32);
    (v28)(v15, v20, v62);
    v29 = v15;
    v52 = v15;
    v30 = v55;
    v28();
    v31 = *(v21 + 28);
    v32 = v63;
    sub_23868567C(v29, &v72);
    v33 = v72;
    v35 = *(&v73 + 1);
    v34 = v73;
    sub_238685A44(v30, &v72);
    v51 = v72;
    v37 = *(&v73 + 1);
    v36 = v73;

    v77 = 0;
    v72 = v33;
    v73 = __PAIR128__(v35, v34);
    v22 = v32;
    v74 = v51;
    v75 = __PAIR128__(v37, v36);
    LOBYTE(v76) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132B8, &qword_23877C8C0);
    sub_23843A3E8(&qword_27DF132C0, &qword_27DF132B8, &qword_23877C8C0);
    sub_23875D1B0();
    *v66 = v69;
    *&v66[16] = v70;
    v66[32] = v71;
    v64 = v67;
    v65 = v68;
    v78 = 1;
    v66[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132C8, &qword_23877C8C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_238686914();
    sub_2386869EC();
    sub_23875D1B0();
    v38 = *(v10 + 8);
    v39 = v62;
    v38(v30, v62);
    v38(v52, v39);
    v81 = v74;
    v82 = v75;
    v83 = v76;
    v79 = v72;
    v80 = v73;
    a2 = v53;
    v5 = v54;
    goto LABEL_10;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_23868567C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v33 = sub_2387591B0();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238758090();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238757AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x277CC6B50], v10, v13);
  sub_238686B8C(&qword_27DF0A228, MEMORY[0x277CC6B60]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v11 + 8))(v15, v10);
  v16 = *v31;
  sub_238758B30();
  sub_238758B20();
  v17 = sub_238759530();
  v19 = v18;
  (*(v2 + 8))(v5, v33);
  (*(v6 + 8))(v9, v30);
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

  v28 = v34;
  *v34 = v25;
  v28[1] = v27;
  v28[2] = v17;
  v28[3] = v19;
}

void sub_238685A44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v33 = sub_2387591B0();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238758090();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238757AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x277CC6B50], v10, v13);
  sub_238686B8C(&qword_27DF0A228, MEMORY[0x277CC6B60]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v11 + 8))(v15, v10);
  v16 = *v31;
  sub_238758B30();
  sub_238758B20();
  v17 = sub_238759520();
  v19 = v18;
  (*(v2 + 8))(v5, v33);
  (*(v6 + 8))(v9, v30);
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

  v28 = v34;
  *v34 = v25;
  v28[1] = v27;
  v28[2] = v17;
  v28[3] = v19;
}

uint64_t sub_238685E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875B7C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23875A9F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for BalanceSection(0);
  (*(v9 + 16))(v12, a1 + v13[6], v8);
  v14 = v13[7];
  v15 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  v28 = v8;
  v16 = a1;
  v17 = v15[6];
  v18 = sub_238757AD0();
  (*(*(v18 - 8) + 16))(a2 + v17, v16 + v14, v18);
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  v19 = v15[7];
  sub_23875BCC0();
  sub_23875B7B0();
  v20 = objc_allocWithZone(sub_238759550());
  *(a2 + v19) = sub_238759540();
  sub_23875A7A0();
  sub_23875A730();
  v21 = a2 + v15[5];
  sub_23875C4F0();
  (*(v9 + 8))(v12, v28);
  KeyPath = swift_getKeyPath();
  v23 = v16 + v13[8];
  sub_2384D51D8(v30);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v24 = sub_238758A10();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132A8, &qword_23877C8A8) + 36));
  *v25 = KeyPath;
  v25[1] = v24;
  __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_238686134@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2386862DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13298, &qword_23877C8A0);
  sub_23843A3E8(&qword_27DF132A0, &qword_27DF13298, &qword_23877C8A0);
  return sub_23875E3D0();
}

uint64_t sub_238686380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementAllDataView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386863E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountConsentManagementAllDataView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238683890(a1, v6, a2);
}

uint64_t sub_238686464@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_238683B68(a1);
}

unint64_t sub_23868646C()
{
  result = qword_27DF13208;
  if (!qword_27DF13208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF131F0, &qword_23877C6A8);
    sub_238686B8C(&qword_27DF13210, type metadata accessor for AccountConsentManagementTransactionHistoryView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13208);
  }

  return result;
}

uint64_t sub_238686574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386865DC(uint64_t a1)
{
  v2 = type metadata accessor for TransactionRowIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238686638()
{
  result = qword_27DF13230;
  if (!qword_27DF13230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13230);
  }

  return result;
}

void sub_2386866DC()
{
  sub_238759550();
  if (v0 <= 0x3F)
  {
    sub_238758B60();
    if (v1 <= 0x3F)
    {
      sub_23875A9F0();
      if (v2 <= 0x3F)
      {
        sub_238757AD0();
        if (v3 <= 0x3F)
        {
          sub_238464EC8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2386867A8()
{
  result = qword_27DF13268;
  if (!qword_27DF13268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13270, qword_23877C7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13170, &qword_23877C5F0);
    sub_23843A3E8(&qword_27DF13190, &qword_27DF13170, &qword_23877C5F0);
    swift_getOpaqueTypeConformance2();
    sub_238686B8C(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13268);
  }

  return result;
}

unint64_t sub_238686914()
{
  result = qword_27DF132D8;
  if (!qword_27DF132D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132C8, &qword_23877C8C8);
    sub_238686998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132D8);
  }

  return result;
}

unint64_t sub_238686998()
{
  result = qword_27DF132E0;
  if (!qword_27DF132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132E0);
  }

  return result;
}

unint64_t sub_2386869EC()
{
  result = qword_27DF132E8;
  if (!qword_27DF132E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_23843A3E8(&qword_27DF132C0, &qword_27DF132B8, &qword_23877C8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132E8);
  }

  return result;
}

unint64_t sub_238686AA4()
{
  result = qword_27DF132F0;
  if (!qword_27DF132F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132A8, &qword_23877C8A8);
    sub_238686B8C(&qword_27DF132F8, type metadata accessor for AccountConsentManagementBalanceHistoryView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132F0);
  }

  return result;
}

uint64_t sub_238686B8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238686BE4()
{
  result = qword_27DF13310;
  if (!qword_27DF13310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13288, &qword_23877C890);
    sub_238686C9C();
    sub_23843A3E8(&qword_27DF13330, &qword_27DF13290, &qword_23877C898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13310);
  }

  return result;
}

unint64_t sub_238686C9C()
{
  result = qword_27DF13318;
  if (!qword_27DF13318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13320, &unk_23877C920);
    sub_238686D54();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13318);
  }

  return result;
}

unint64_t sub_238686D54()
{
  result = qword_27DF13328;
  if (!qword_27DF13328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABD0, &qword_238766990);
    sub_238449688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13328);
  }

  return result;
}

unint64_t sub_238686DE0()
{
  result = qword_27DF13338;
  if (!qword_27DF13338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13340, &qword_23877C930);
    sub_23843A3E8(&qword_27DF132A0, &qword_27DF13298, &qword_23877C8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13338);
  }

  return result;
}

uint64_t sub_238686EB8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_238686F48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v40 = (&v39 - v4);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13370, &qword_23877CA98);
  v5 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v7 = (&v39 - v6);
  v8 = sub_23875E0E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[1];
  v39 = *v1;
  *&v46 = v39;
  *(&v46 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13378, &qword_23877CAA0);
  sub_23875E1B0();
  v14 = v44[0];
  swift_getKeyPath();
  *&v46 = v14;
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader);
  sub_23875BE90();

  v15 = *(v14 + 16);
  v16 = v15;

  if (v15)
  {
    v17 = v16;
    sub_23875E0C0();
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
    v18 = sub_23875E150();

    (*(v9 + 8))(v12, v8);
    v19 = v2[2];
    v20 = v2[3];
    sub_23875E4A0();
    sub_23875C5C0();
    *&v45[22] = v47[5];
    *&v45[38] = v48;
    *&v45[6] = v47[4];
    v46 = v18;
    LOWORD(v47[0]) = 1;
    *&v47[3] = *(&v48 + 1);
    *(v47 + 2) = *v45;
    *(&v47[1] + 2) = *&v45[16];
    *(&v47[2] + 2) = *&v45[32];
    WORD4(v47[3]) = 257;
    BYTE10(v47[3]) = 1;
    v21 = v47[0];
    *(v7 + 59) = *(&v47[2] + 11);
    v22 = v47[2];
    v7[2] = v47[1];
    v7[3] = v22;
    *v7 = v18;
    v7[1] = v21;
    swift_storeEnumTagMultiPayload();
    sub_23843981C(&v46, v44, &qword_27DF13390, &qword_23877CB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13390, &qword_23877CB10);
    sub_2386888C0();
    sub_23847E1BC();
    sub_23875D1B0();

    v23 = &v46;
    v24 = &qword_27DF13390;
    v25 = &qword_23877CB10;
  }

  else
  {
    v26 = sub_23875E020();
    KeyPath = swift_getKeyPath();
    v44[0] = v13;
    v28 = swift_allocObject();
    v29 = *(v2 + 1);
    *(v28 + 16) = *v2;
    *(v28 + 32) = v29;
    *(v28 + 48) = v2[4];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080);
    v31 = v40;
    v32 = v40 + *(v30 + 36);
    v33 = *(sub_23875C6E0() + 20);

    sub_23843981C(v44, &v46, &qword_27DF13388, &qword_238784A00);
    sub_23875ED60();
    *v32 = &unk_23877CB08;
    *(v32 + 1) = v28;
    *v31 = KeyPath;
    v31[1] = v26;
    v34 = v2[2];
    v35 = v2[3];
    sub_23875E4A0();
    sub_23875C5C0();
    v36 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088) + 36));
    v37 = v47[0];
    *v36 = v46;
    v36[1] = v37;
    v36[2] = v47[1];
    *(v31 + *(v42 + 36)) = 257;
    sub_23843981C(v31, v7, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13390, &qword_23877CB10);
    sub_2386888C0();
    sub_23847E1BC();
    sub_23875D1B0();
    v23 = v31;
    v24 = &qword_27DF0A890;
    v25 = &qword_238766090;
  }

  return sub_238439884(v23, v24, v25);
}

void *sub_238687498()
{
  swift_getKeyPath();
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader);
  sub_23875BE90();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_238687540(uint64_t a1)
{
  v1[5] = a1;
  sub_23875ED50();
  v1[6] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2386875D8, v3, v2);
}

uint64_t sub_2386875D8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13378, &qword_23877CAA0);
  sub_23875E1B0();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_238687698;

  return sub_2386877DC();
}

uint64_t sub_238687698()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2384E8448, v5, v4);
}

uint64_t sub_2386877DC()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_23875ED50();
  v1[6] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_2386878B0, v4, v3);
}

uint64_t sub_2386878B0()
{
  v1 = v0[4];
  sub_23843981C(v0[3] + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier, v1, &qword_27DF13368, &qword_23877CA40);
  v2 = sub_238758850();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    v5 = v0[4];

    sub_238439884(v5, &qword_27DF13368, &qword_23877CA40);
    v6 = v0[4];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    v12 = sub_238758840();
    v14 = v13;
    v0[9] = v13;
    (*(v3 + 8))(v9, v2);
    v15 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:*(v11 + 24) scale:{*(v11 + 32), *(v11 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_scale)}];
    v16 = v15;
    v0[10] = v15;
    if (*(v11 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_isAppClip))
    {
      v17 = 5;
    }

    else
    {
      v17 = 1;
    }

    [v15 setShape_];
    v18 = sub_23875ED40();
    v0[11] = v18;
    v19 = swift_task_alloc();
    v0[12] = v19;
    v19[2] = v12;
    v19[3] = v14;
    v19[4] = v16;
    v19[5] = v11;
    v20 = *(MEMORY[0x277D859E0] + 4);
    v21 = swift_task_alloc();
    v0[13] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v21 = v0;
    v21[1] = sub_238687B5C;
    v23 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 2, v18, v23, 0x292864616F6CLL, 0xE600000000000000, sub_238688A20, v19, v22);
  }
}

uint64_t sub_238687B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 72);
  v9 = *v0;

  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_238687CE0, v7, v6);
}

uint64_t sub_238687CE0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  sub_238687E14(*(v0 + 16));

  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5();
}

id sub_238687D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader);
  sub_23875BE90();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_238687E14(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader);
    sub_23875BE80();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238688A2C();
  v5 = v4;
  v6 = a1;
  v7 = sub_23875F1B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_238687F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_23875EA50();
  v13 = [v11 initWithBundleIdentifier_];

  (*(v7 + 16))(v10, v17, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_238688A78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23851854C;
  aBlock[3] = &block_descriptor_15;
  v16 = _Block_copy(aBlock);

  [v13 getCGImageForImageDescriptor:v18 completion:v16];
  _Block_release(v16);
}

void sub_238688208(void *a1)
{
  if (a1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v3 = a1;
    [v2 initWithCGImage:v3 scale:0 orientation:1.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
    sub_23875ED10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
    sub_23875ED10();
  }
}

uint64_t sub_2386882C4()
{
  sub_238439884(v0 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier, &qword_27DF13368, &qword_23877CA40);
  v1 = OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppIconImage.Loader()
{
  result = qword_27DF13350;
  if (!qword_27DF13350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386883DC()
{
  sub_2386884D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386884D0()
{
  if (!qword_27DF13360)
  {
    sub_238758850();
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF13360);
    }
  }
}

uint64_t sub_23868852C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_2387588A0();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16 && (v17 = [v16 appClipMetadata]) != 0)
  {

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 bundleIdentifier];
  if (v19)
  {
    v20 = v19;
    sub_23875EA80();

    sub_238758830();
    v21 = sub_238758850();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  }

  else
  {
    v22 = sub_238758850();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  }

  sub_23843981C(v14, v12, &qword_27DF13368, &qword_23877CA40);
  v23 = type metadata accessor for AppIconImage.Loader();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_23875BEC0();
  sub_238439884(v14, &qword_27DF13368, &qword_23877CA40);
  *(v26 + 24) = a3;
  *(v26 + 32) = a4;
  result = sub_238688790(v12, v26 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier);
  *(v26 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_isAppClip) = v18;
  *(v26 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_scale) = v15;
  *a2 = v26;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_238688790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23868882C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_238687540(v0 + 16);
}

unint64_t sub_2386888C0()
{
  result = qword_27DF13398;
  if (!qword_27DF13398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13390, &qword_23877CB10);
    sub_23868894C();
    sub_23844970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13398);
  }

  return result;
}

unint64_t sub_23868894C()
{
  result = qword_27DF133A0;
  if (!qword_27DF133A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF133A8, &qword_23877CB18);
    sub_238464B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133A0);
  }

  return result;
}

uint64_t sub_2386889D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238688A2C()
{
  result = qword_27DF0A940;
  if (!qword_27DF0A940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A940);
  }

  return result;
}

void sub_238688A78(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150) - 8) + 80);
  v4 = *(v1 + 16);

  sub_238688208(a1);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_238688B10()
{
  result = qword_27DF133B0;
  if (!qword_27DF133B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF133B8, &qword_23877CB28);
    sub_2386888C0();
    sub_23847E1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133B0);
  }

  return result;
}

uint64_t static FKExtractedOrderSuggestionsBannerProvider.walletLogo.getter()
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27DF0AE88;
  v1 = qword_27DF0AE88;
  return v0;
}

uint64_t static FKExtractedOrderSuggestionsBannerProvider.makePreviewController(withMessageID:orderNumber:completion:)()
{
  sub_238758890();

  sub_238758880();
  sub_238758A30();

  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133C0, &qword_23877CB30));

  return sub_23875D080();
}

void sub_238688F48(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23875B720();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

FKExtractedOrderSuggestionsBannerProvider __swiftcall FKExtractedOrderSuggestionsBannerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FKExtractedOrderSuggestionsBannerProvider()
{
  result = qword_27DF133C8;
  if (!qword_27DF133C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF133C8);
  }

  return result;
}

uint64_t type metadata accessor for BankConnectConnectionHeaderView()
{
  result = qword_27DF133D0;
  if (!qword_27DF133D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386891A4()
{
  result = sub_238757B60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23868923C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BadgedErrorInstitutionLogo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(type metadata accessor for BankConnectConnectionHeaderView() + 24);
  v11 = sub_238757B60();
  (*(*(v11 - 8) + 16))(v9, a1 + v10, v11);
  v9[*(v4 + 20)] = 3;
  v12 = sub_23875D030();
  v38 = 0;
  sub_2386895F0(a1, &v34);
  v39 = v34;
  v40 = *v35;
  v41 = *&v35[16];
  v42 = *&v35[32];
  v43[0] = v34;
  v43[1] = *v35;
  v43[2] = *&v35[16];
  v43[3] = *&v35[32];
  sub_23843981C(&v39, &v32, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v43, &qword_27DF0B360, &qword_23877AE40);
  *&v37[7] = v39;
  *&v37[23] = v40;
  *&v37[39] = v41;
  *&v37[55] = v42;
  LOBYTE(v10) = v38;
  sub_23875E4B0();
  sub_23875C9C0();
  v13 = v24;
  sub_2386897E8(v9, v24);
  sub_2386897E8(v13, a2);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133E8, &unk_23877CBC0) + 48);
  *&v33[17] = *&v37[16];
  *&v33[33] = *&v37[32];
  v15 = a2 + v14;
  v32 = v12;
  v33[0] = v10;
  *&v33[49] = *&v37[48];
  *&v33[64] = *&v37[63];
  *&v33[1] = *v37;
  *&v33[72] = v25;
  *&v33[88] = v26;
  *&v33[104] = v27;
  *&v33[120] = v28;
  *&v33[136] = v29;
  *&v33[152] = v30;
  *&v33[168] = v31;
  v16 = *&v33[96];
  *(v15 + 96) = *&v33[80];
  *(v15 + 112) = v16;
  v17 = *&v33[128];
  *(v15 + 128) = *&v33[112];
  *(v15 + 144) = v17;
  v18 = *&v33[160];
  *(v15 + 160) = *&v33[144];
  *(v15 + 176) = v18;
  v19 = *&v33[64];
  *(v15 + 64) = *&v33[48];
  *(v15 + 80) = v19;
  v20 = *&v33[32];
  *(v15 + 32) = *&v33[16];
  *(v15 + 48) = v20;
  *(v15 + 192) = *&v33[176];
  v21 = *v33;
  *v15 = v32;
  *(v15 + 16) = v21;
  sub_23843981C(&v32, &v34, &qword_27DF133F0, &unk_2387849C0);
  sub_23868984C(v9);
  v34 = v12;
  v35[0] = v10;
  *&v35[17] = *&v37[16];
  *&v35[33] = *&v37[32];
  *v36 = *&v37[48];
  *&v36[15] = *&v37[63];
  *&v35[1] = *v37;
  *&v36[23] = v25;
  *&v36[39] = v26;
  *&v36[55] = v27;
  *&v36[119] = v31;
  *&v36[103] = v30;
  *&v36[87] = v29;
  *&v36[71] = v28;
  sub_238439884(&v34, &qword_27DF133F0, &unk_2387849C0);
  sub_23868984C(v13);
}

uint64_t sub_2386895F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;
  v21 = a1[1];
  sub_2384397A8();

  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = a1[2];
  v22 = a1[3];

  v11 = sub_23875DAA0();
  v13 = v12;
  v14 = v8 & 1;
  LOBYTE(v20) = v8 & 1;
  v16 = v15 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  sub_23843980C(v4, v6, v14);

  sub_23843980C(v11, v13, v16);

  sub_2384397FC(v11, v13, v16);

  sub_2384397FC(v4, v6, v20);
}

uint64_t sub_238689794@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133E0, &unk_23877CBB0);
  return sub_23868923C(v1, a1 + *(v3 + 44));
}

uint64_t sub_2386897E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgedErrorInstitutionLogo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23868984C(uint64_t a1)
{
  v2 = type metadata accessor for BadgedErrorInstitutionLogo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386898A8()
{
  result = qword_27DF133F8;
  if (!qword_27DF133F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13400, &qword_23877CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133F8);
  }

  return result;
}

void sub_238689954()
{
  sub_23875AD40();
  if (v0 <= 0x3F)
  {
    sub_23868C214(319, &qword_2814F1158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23875A710();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238689A30()
{
  v0 = sub_23875B7F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BE40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = sub_23875BAD0();
  v37 = *(v19 - 8);
  v38 = v19;
  v20 = *(v37 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2387591F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23875BD70())
  {
    (*(v24 + 104))(v27, *MEMORY[0x277CC77C8], v23);
  }

  else
  {
    v36 = v23;
    if ((sub_23875BD90() & 1) == 0)
    {
      sub_23875BA30();
      v29 = sub_23875BA40();
      (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
      v30 = sub_23875BA10();
      (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v31 = sub_23875BAC0();
      v33 = v32;
      (*(v37 + 8))(v22, v38);
      v23 = v36;
      (*(v24 + 104))(v27, *MEMORY[0x277CC77C8], v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_2387632F0;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_238448C58();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      v28 = sub_238758A50();

      goto LABEL_7;
    }

    v23 = v36;
    (*(v24 + 104))(v27, *MEMORY[0x277CC77C8], v36);
  }

  v28 = sub_238758A40();
LABEL_7:
  (*(v24 + 8))(v27, v23);
  return v28;
}

uint64_t sub_238689FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23875C8A0();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2387591F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v16 = v15;
  v17 = *(v3 + *(v15 + 20));
  if (v17 <= 0)
  {
    return sub_23868C2DC(v3, a2, v3 + *(v15 + 24));
  }

  v30 = v6;
  v31 = a1;
  (*(v11 + 104))(v14, *MEMORY[0x277CC77C8], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  *(v18 + 16) = xmmword_2387632F0;
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v17;
  v32 = sub_238758A50();
  v22 = v21;

  (*(v11 + 8))(v14, v10);
  result = sub_23868C2DC(v3, a2, v3 + *(v16 + 24));
  if (v22)
  {
    if (!v24)
    {
      return v32;
    }

    v25 = result;
    v26 = v24;
    v27 = v33;
    v28 = v30;
    (*(v33 + 16))(v9, v31, v30);
    v29 = (*(v27 + 88))(v9, v28);
    if (v29 == *MEMORY[0x277CDFA88])
    {
      v34 = v32;
      v35 = v22;

      MEMORY[0x23EE63650](0x20A280E220, 0xA500000000000000);

      MEMORY[0x23EE63650](v25, v26);
    }

    else
    {
      if (v29 != *MEMORY[0x277CDFA90])
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD000000000000021, 0x800000023878F780);
        sub_23875F510();
        result = sub_23875F520();
        __break(1u);
        return result;
      }

      v34 = v25;
      v35 = v26;

      MEMORY[0x23EE63650](0x20A280E220, 0xA500000000000000);

      MEMORY[0x23EE63650](v32, v22);
    }

    return v34;
  }

  return result;
}

uint64_t sub_23868A3D0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13428, &qword_23877CC90);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - v9;
  v10 = type metadata accessor for OrderNavigationDestination(0);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875CDB0();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13430, &qword_23877CC98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v61 = sub_23875CE60();
  v67 = 1;
  sub_23868AC3C(v2, &v64);
  v76 = v65[7];
  v77 = v65[8];
  v72 = v65[3];
  v73 = v65[4];
  v74 = v65[5];
  v75 = v65[6];
  v68 = v64;
  v69 = v65[0];
  v70 = v65[1];
  v71 = v65[2];
  v79[8] = v65[7];
  v79[9] = v65[8];
  v79[4] = v65[3];
  v79[5] = v65[4];
  v79[6] = v65[5];
  v79[7] = v65[6];
  v79[0] = v64;
  v79[1] = v65[0];
  v78 = *&v65[9];
  v80 = *&v65[9];
  v79[2] = v65[1];
  v79[3] = v65[2];
  sub_23843981C(&v68, &v62, &qword_27DF13438, &qword_23877CCA0);
  sub_238439884(v79, &qword_27DF13438, &qword_23877CCA0);
  *(&v66[7] + 7) = v75;
  *(&v66[8] + 7) = v76;
  *(&v66[9] + 7) = v77;
  *(&v66[3] + 7) = v71;
  *(&v66[4] + 7) = v72;
  *(&v66[5] + 7) = v73;
  *(&v66[6] + 7) = v74;
  *(v66 + 7) = v68;
  *(&v66[1] + 7) = v69;
  *(&v66[10] + 7) = v78;
  *(&v66[2] + 7) = v70;
  v57 = v67;
  v24 = v2 + *(type metadata accessor for OrderDetailsReturn(0) + 28);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_23875EFF0();
    v29 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v25, 0);
    (*(v51 + 8))(v17, v52);
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
    v31 = *(v30 + 28);
    v32 = sub_23875A710();
    (*(*(v32 - 8) + 16))(v13, v2 + v31, v32);
    v33 = (v2 + *(v30 + 32));
    v35 = *v33;
    v34 = v33[1];
    v36 = &v13[*(type metadata accessor for ReturnDetailsDestination(0) + 20)];
    *v36 = v35;
    *(v36 + 1) = v34;
    v37 = v54;
    swift_storeEnumTagMultiPayload();
    v38 = v56;
    sub_238672958(v13, v56);
    (*(v53 + 56))(v38, 0, 1, v37);
    sub_23868C294(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

    v39 = v55;
    sub_23875C760();
    sub_23868C638(v13, type metadata accessor for OrderNavigationDestination);
    v28 = v59;
    v27 = v60;
    (*(v59 + 32))(v23, v39, v60);
    v26 = 0;
    goto LABEL_6;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = 1;
  v28 = v59;
  v27 = v60;
LABEL_6:
  (*(v28 + 56))(v23, v26, 1, v27);
  v40 = v58;
  sub_23843981C(v23, v58, &qword_27DF13430, &qword_23877CC98);
  *(&v63[7] + 1) = v66[7];
  *(&v63[8] + 1) = v66[8];
  *(&v63[9] + 1) = v66[9];
  v63[10] = *(&v66[9] + 15);
  *(&v63[3] + 1) = v66[3];
  *(&v63[4] + 1) = v66[4];
  *(&v63[5] + 1) = v66[5];
  *(&v63[6] + 1) = v66[6];
  *(v63 + 1) = v66[0];
  v41 = v61;
  v62 = v61;
  v42 = v57;
  LOBYTE(v63[0]) = v57;
  *(&v63[1] + 1) = v66[1];
  *(&v63[2] + 1) = v66[2];
  v43 = v63[8];
  a1[8] = v63[7];
  a1[9] = v43;
  v44 = v63[10];
  a1[10] = v63[9];
  a1[11] = v44;
  v45 = v63[4];
  a1[4] = v63[3];
  a1[5] = v45;
  v46 = v63[6];
  a1[6] = v63[5];
  a1[7] = v46;
  v47 = v63[0];
  *a1 = v62;
  a1[1] = v47;
  v48 = v63[2];
  a1[2] = v63[1];
  a1[3] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13440, &qword_23877CCA8);
  sub_23843981C(v40, a1 + *(v49 + 48), &qword_27DF13430, &qword_23877CC98);
  sub_23843981C(&v62, &v64, &qword_27DF13448, &unk_23877CCB0);
  sub_238439884(v23, &qword_27DF13430, &qword_23877CC98);
  sub_238439884(v40, &qword_27DF13430, &qword_23877CC98);
  *(&v65[7] + 1) = v66[7];
  *(&v65[8] + 1) = v66[8];
  *(&v65[9] + 1) = v66[9];
  v65[10] = *(&v66[9] + 15);
  *(&v65[3] + 1) = v66[3];
  *(&v65[4] + 1) = v66[4];
  *(&v65[5] + 1) = v66[5];
  *(&v65[6] + 1) = v66[6];
  *(v65 + 1) = v66[0];
  *(&v65[1] + 1) = v66[1];
  v64 = v41;
  LOBYTE(v65[0]) = v42;
  *(&v65[2] + 1) = v66[2];
  return sub_238439884(&v64, &qword_27DF13448, &unk_23877CCB0);
}

uint64_t sub_23868AC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875DFD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = sub_23875D030();
  LOBYTE(v43[0]) = 1;
  sub_23868B070(a1, v35);
  *&v34[7] = v35[0];
  *&v34[23] = v35[1];
  *&v34[39] = v35[2];
  *&v34[55] = v35[3];
  HIDWORD(v29) = LOBYTE(v43[0]);
  v9 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238763B60;
  v11 = *MEMORY[0x277CE0EE0];
  v12 = *(v5 + 104);
  v12(v8, v11, v4);
  *(v10 + 32) = sub_23875E090();
  v12(v8, v11, v4);
  *(v10 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v10);
  sub_23875C740();
  v13 = v49;
  v14 = v50;
  v15 = v51;
  v16 = v52;
  v17 = v53;
  v18 = sub_23875D7E0();
  KeyPath = swift_getKeyPath();
  v20 = v30;
  v36[0] = v30;
  v36[1] = 0;
  LOBYTE(v10) = BYTE4(v29);
  v37[0] = BYTE4(v29);
  *&v37[17] = *&v34[16];
  *&v37[33] = *&v34[32];
  *&v37[49] = *&v34[48];
  *&v37[64] = *&v34[63];
  *&v38 = v9;
  *&v37[1] = *v34;
  v33 = 1;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v40 = v16;
  *(&v40 + 1) = v17;
  *&v41 = KeyPath;
  *(&v41 + 1) = v18;
  *&v32[7] = v38;
  *&v32[23] = v39;
  *&v32[39] = v40;
  *&v32[55] = v41;
  v21 = *v37;
  *a2 = v30;
  *(a2 + 16) = v21;
  v22 = *&v37[16];
  v23 = *&v37[48];
  v24 = *&v37[64];
  *(a2 + 48) = *&v37[32];
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v25 = *&v32[16];
  *(a2 + 97) = *v32;
  v26 = *&v32[32];
  v27 = *&v32[48];
  *(a2 + 160) = *&v32[63];
  *(a2 + 145) = v27;
  *(a2 + 129) = v26;
  *(a2 + 113) = v25;
  v42[0] = v9;
  v42[1] = v13;
  v42[2] = v14;
  v42[3] = v15;
  v42[4] = v16;
  v42[5] = v17;
  v42[6] = KeyPath;
  v42[7] = v18;
  sub_23843981C(v36, v43, &qword_27DF0B3F8, &unk_238768110);
  sub_23843981C(&v38, v43, &qword_27DF0C7F8, &qword_238773800);
  sub_238439884(v42, &qword_27DF0C7F8, &qword_238773800);
  v43[0] = v20;
  v43[1] = 0;
  v44 = v10;
  v46 = *&v34[16];
  v47 = *&v34[32];
  *v48 = *&v34[48];
  *&v48[15] = *&v34[63];
  v45 = *v34;
  sub_238439884(v43, &qword_27DF0B3F8, &unk_238768110);
}

uint64_t sub_23868B070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_23875BE20();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C8A0();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v65 = sub_23875AD20();
  v66 = v9;
  v56[1] = sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D8E0();
  v15 = sub_23875DA60();
  v17 = v16;
  v19 = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D890();
  v20 = sub_23875D9E0();
  v22 = v21;
  LODWORD(v24) = v23;
  v26 = v25;
  sub_2384397FC(v15, v17, v19 & 1);

  v27 = type metadata accessor for OrderDetailsReturn(0);
  v28 = a1 + *(v27 + 20);
  v29 = v57;
  sub_2384D5200(v57);
  v30 = a1 + *(v27 + 24);
  v31 = v60;
  sub_2384D5588(v60);
  v32 = sub_238689FAC(v29, v31);
  v34 = v33;
  (*(v61 + 8))(v31, v62);
  (*(v58 + 8))(v29, v59);
  if (v34)
  {
    v65 = v32;
    v66 = v34;
    v35 = sub_23875DAA0();
    v37 = v36;
    v39 = v38;
    sub_23875D7F0();
    v40 = sub_23875DA60();
    LODWORD(v60) = v24;
    v24 = v41;
    v61 = v22;
    v62 = v20;
    v42 = v26;
    v44 = v43;

    sub_2384397FC(v35, v37, v39 & 1);

    sub_23875E070();
    v45 = sub_23875DA10();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v52 = v44 & 1;
    v26 = v42;
    v22 = v61;
    v53 = v24;
    LOBYTE(v24) = v60;
    sub_2384397FC(v40, v53, v52);
    v20 = v62;

    v34 = v49 & 1;
    sub_23843980C(v45, v47, v34);
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v51 = 0;
  }

  sub_23843980C(v20, v22, v24 & 1);

  sub_238476F5C(v45, v47, v34, v51);
  sub_238476FA0(v45, v47, v34, v51);
  LOBYTE(v65) = v24 & 1;
  v54 = v64;
  *v64 = v20;
  v54[1] = v22;
  *(v54 + 16) = v24 & 1;
  v54[3] = v26;
  v54[4] = v45;
  v54[5] = v47;
  v54[6] = v34;
  v54[7] = v51;
  sub_238476FA0(v45, v47, v34, v51);
  sub_2384397FC(v20, v22, v24 & 1);
}

uint64_t sub_23868B4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CC77C8], v2);
  v7 = sub_238758A40();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v17[0] = v7;
  v17[1] = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_23868B6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_23875BE20();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13490, &qword_23877CE20);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DropOffByFormatStyle(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23868C844();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23868C294(&qword_27DF0DD18, MEMORY[0x277CC99E8]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_23868C898(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23868B938(uint64_t a1)
{
  v2 = sub_23868C844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23868B974(uint64_t a1)
{
  v2 = sub_23868C844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23868B9B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238689A30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23868B9F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134A0, &qword_23877CE28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23868C844();
  sub_23875F790();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD28, MEMORY[0x277CC99E8]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23868BB68()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23868BBF0()
{
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8]);

  return sub_23875E960();
}

uint64_t sub_23868BC74()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23868BCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((sub_23875AD30() & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    goto LABEL_14;
  }

  v33 = v17;
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  sub_23843981C(a1 + v18, v16, &qword_27DF12E00, &unk_238763FC0);
  v20 = a2 + v18;
  v21 = v5;
  sub_23843981C(v20, &v16[v19], &qword_27DF12E00, &unk_238763FC0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
      goto LABEL_10;
    }

LABEL_8:
    sub_238439884(v16, &qword_27DF0DC30, &unk_23876E260);
    v23 = 0;
    return v23 & 1;
  }

  sub_23843981C(v16, v12, &qword_27DF12E00, &unk_238763FC0);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v21 + 8))(v12, v4);
    goto LABEL_8;
  }

  (*(v21 + 32))(v8, &v16[v19], v4);
  sub_23868C294(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v24 = sub_23875E9E0();
  v25 = *(v21 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
  if ((v24 & 1) == 0)
  {
LABEL_14:
    v23 = 0;
    return v23 & 1;
  }

LABEL_10:
  v26 = v33;
  if ((MEMORY[0x23EE5F1E0](a1 + *(v33 + 28), a2 + *(v33 + 28)) & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = *(v26 + 32);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if (v28 == *v30 && v29 == v30[1])
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_23875F630();
  }

  return v23 & 1;
}

void sub_23868C100()
{
  type metadata accessor for OrderDetailsReturn.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23868C214(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23868C214(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_238566280();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23868C214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23868C294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23868C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v4 = type metadata accessor for DropOffByFormatStyle(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_23875BC40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875AD40();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v22, *MEMORY[0x277CC8410], v17, v20);
  v23 = sub_23875AD30();
  (*(v18 + 8))(v22, v17);
  result = 0;
  if (v23)
  {
    sub_23843981C(a3, v11, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_238439884(v11, &qword_27DF12E00, &unk_238763FC0);
      return 0;
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v25 = sub_23875BE20();
      (*(*(v25 - 8) + 16))(v7, v28, v25);
      v26 = sub_238689A30();
      sub_23868C638(v7, type metadata accessor for DropOffByFormatStyle);
      (*(v13 + 8))(v16, v12);
      return v26;
    }
  }

  return result;
}

uint64_t sub_23868C638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23868C6C0()
{
  result = qword_27DF13460;
  if (!qword_27DF13460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13468, &qword_23877CD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13460);
  }

  return result;
}

unint64_t sub_23868C844()
{
  result = qword_27DF13498;
  if (!qword_27DF13498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13498);
  }

  return result;
}

uint64_t sub_23868C898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropOffByFormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23868C910()
{
  result = qword_27DF134A8;
  if (!qword_27DF134A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134A8);
  }

  return result;
}

unint64_t sub_23868C968()
{
  result = qword_27DF134B0;
  if (!qword_27DF134B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134B0);
  }

  return result;
}

unint64_t sub_23868C9C0()
{
  result = qword_27DF134B8;
  if (!qword_27DF134B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134B8);
  }

  return result;
}

void sub_23868CA5C()
{
  sub_2385BF2CC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ProductImage.ViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23868CAF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = type metadata accessor for ProductImage.ViewModel(0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875AF90();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v38 - v17;
  v19 = [a1 title];
  v20 = sub_2387586A0();
  v40 = v21;
  v41 = v20;

  sub_238759200();
  v39 = [a1 quantity];
  v42 = a1;
  v22 = [a1 image];
  if (v22)
  {
    v23 = v22;
    v38 = sub_23875EA80();
    v25 = v24;
  }

  else
  {
    v38 = 0;
    v25 = 0;
  }

  v26 = v9[2];
  v27 = v45;
  v43 = a2;
  v26(v45, a2, v8);
  v28 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v29 = v28[5];
  v30 = sub_238758090();
  (*(*(v30 - 8) + 56))(&a3[v29], 1, 1, v30);
  v31 = v40;
  *a3 = v41;
  *(a3 + 1) = v31;
  sub_23853098C(v18, &a3[v29]);
  *&a3[v28[6]] = v39;
  v26(v47, v27, v8);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2387632F0;
    *(v32 + 32) = v38;
    *(v32 + 40) = v25;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v26(v46, v47, v8);
  if (*(v32 + 16) >= 5uLL)
  {
    sub_23852EE64(v32, v32 + 32, 0, 9uLL);
    v34 = v33;

    v32 = v34;
  }

  v35 = v9[1];
  v35(v43, v8);
  v35(v47, v8);
  v35(v45, v8);
  sub_238439884(v18, &unk_27DF0B080, &unk_2387662A0);
  v36 = v46;
  *&v46[*(v44 + 20)] = v32;
  return sub_23856F65C(v36, &a3[v28[7]]);
}

uint64_t sub_23868CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_23875D570();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D3F0();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875D5F0();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134E0, &qword_23877D0B8);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134E8, &qword_23877D0C0);
  v40 = *(v37 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134F0, &qword_23877D0C8);
  v45 = *(v20 - 8);
  v46 = v20;
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  sub_23875D740();
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134F8, &unk_23877D0D0);
  sub_23843A3E8(&qword_27DF13500, &qword_27DF134F8, &unk_23877D0D0);
  sub_23875C410();
  sub_23875D5E0();
  v24 = sub_23843A3E8(&qword_27DF13508, &qword_27DF134E0, &qword_23877D0B8);
  v25 = MEMORY[0x277CDE3A8];
  sub_23875DDA0();
  (*(v39 + 8))(v12, v9);
  (*(v38 + 8))(v16, v13);
  v26 = sub_23875D770();
  v27 = v41;
  sub_23875D3E0();
  v51 = v13;
  v52 = v9;
  v53 = v24;
  v54 = v25;
  v28 = v42;
  v29 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EE62710](v26, 0x4034000000000000, 0, v27, v29, OpaqueTypeConformance2);
  (*(v43 + 8))(v27, v44);
  (*(v40 + 8))(v19, v29);
  sub_23875D560();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10560, &qword_2387758C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  v32 = sub_23875D760();
  *(inited + 32) = v32;
  v33 = sub_23875D740();
  *(inited + 33) = v33;
  sub_23875D750();
  sub_23875D750();
  if (sub_23875D750() != v32)
  {
    sub_23875D750();
  }

  sub_23875D750();
  if (sub_23875D750() != v33)
  {
    sub_23875D750();
  }

  v51 = v29;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  sub_23875DCB0();
  (*(v48 + 8))(v28, v49);
  return (*(v45 + 8))(v23, v34);
}

uint64_t sub_23868D4F8(uint64_t a1)
{
  v2 = sub_23875D320();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FB48(0, a1);
  MEMORY[0x28223BE20](v4);
  *&v7[-4] = v5;
  sub_23875CE60();
  v7[3] = 0;
  sub_23868EDFC(&qword_27DF0F1E0, MEMORY[0x277CE0428]);
  sub_23875F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13510, &qword_23877D0E0);
  sub_23868EE44();
  sub_23875C3E0();
}

uint64_t sub_23868D6E4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13528, &qword_23877D108);
  type metadata accessor for OrderDetailsLargeLineItem(0);
  sub_23843A3E8(&qword_27DF13530, &qword_27DF13528, &qword_23877D108);
  sub_23868EDFC(&qword_27DF13520, type metadata accessor for OrderDetailsLargeLineItem);
  sub_23875E370();
}

uint64_t sub_23868D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D680, &qword_23876D760) + 48);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23868F0A4(a1 + v4, a2, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
}

uint64_t sub_23868D950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v12 = *(v0 + *(type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0) + 24));
  sub_23856F608();
  v2 = sub_23875F2C0();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
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
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_23868DB04()
{
  v32 = sub_23875BD20();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - v7;
  v9 = sub_238758090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  sub_23843981C(v0 + *(v14 + 20), v8, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_238439884(v8, &unk_27DF0B080, &unk_2387662A0);
    return sub_23868D950();
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v31[1] = "FinanceKitUI/LineItemView.swift";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_238763B60;
    v33 = *(v0 + *(v14 + 24));
    sub_23856F608();
    v17 = sub_23875F2C0();
    v19 = v18;
    v20 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v21 = sub_238448C58();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_23875BCC0();
    v22 = sub_238758080();
    v24 = v23;
    (*(v1 + 8))(v4, v32);
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v24;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v25 = qword_2814F1B90;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

    sub_23875EA80();
    v30 = sub_23875EAA0();

    (*(v10 + 8))(v13, v9);
    return v30;
  }
}

uint64_t sub_23868DF28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v46 = sub_23875DFD0();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v13 = v47;
  sub_23868F0A4(v47 + *(v12 + 28), v11, type metadata accessor for ProductImage.ViewModel);
  v14 = *(type metadata accessor for ProductImage(0) + 20);
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v15 = v11;
  v45 = v11;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v46);
  v16 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v6 + 36)];
  v19 = type metadata accessor for OrderImageStyleModifier();
  *&v18[*(v19 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v19 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v18 = xmmword_23877CF50;
  *(v18 + 2) = 0x3FF0000000000000;
  v18[24] = 0;
  *(v18 + 4) = v16;
  v18[40] = 1;
  v46 = sub_23875D030();
  v52 = 1;
  sub_23868E5F8(v13, &v70);
  v59 = *&v71[80];
  v60 = *&v71[96];
  v61[0] = *&v71[112];
  *(v61 + 12) = *&v71[124];
  v55 = *&v71[16];
  v56 = *&v71[32];
  v57 = *&v71[48];
  v58 = *&v71[64];
  v53 = v70;
  v54 = *v71;
  v62[6] = *&v71[80];
  v62[7] = *&v71[96];
  v63[0] = *&v71[112];
  *(v63 + 12) = *&v71[124];
  v62[2] = *&v71[16];
  v62[3] = *&v71[32];
  v62[4] = *&v71[48];
  v62[5] = *&v71[64];
  v62[0] = v70;
  v62[1] = *v71;
  sub_23843981C(&v53, &v65, &qword_27DF13560, &qword_23877D208);
  sub_238439884(v62, &qword_27DF13560, &qword_23877D208);
  *&v51[103] = v59;
  *&v51[119] = v60;
  *&v51[135] = v61[0];
  *&v51[147] = *(v61 + 12);
  *&v51[39] = v55;
  *&v51[55] = v56;
  *&v51[71] = v57;
  *&v51[87] = v58;
  *&v51[7] = v53;
  *&v51[23] = v54;
  LOBYTE(KeyPath) = v52;
  v20 = sub_23875D770();
  sub_23875C3D0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v45;
  v30 = v50;
  sub_23843981C(v45, v50, &qword_27DF0E618, &unk_2387766D0);
  v31 = v30;
  v32 = v48;
  sub_23843981C(v31, v48, &qword_27DF0E618, &unk_2387766D0);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13568, &qword_23877D210) + 48);
  *(&v66[7] + 1) = *&v51[112];
  *(&v66[8] + 1) = *&v51[128];
  *(&v66[9] + 1) = *&v51[144];
  *(&v66[3] + 1) = *&v51[48];
  *(&v66[4] + 1) = *&v51[64];
  *(&v66[5] + 1) = *&v51[80];
  *(&v66[6] + 1) = *&v51[96];
  *(&v66[1] + 1) = *&v51[16];
  v34 = v32 + v33;
  v35 = v46;
  v65 = v46;
  LOBYTE(v66[0]) = KeyPath;
  LODWORD(v66[10]) = *&v51[159];
  *(&v66[2] + 1) = *&v51[32];
  *(v66 + 1) = *v51;
  BYTE8(v66[10]) = v20;
  *(&v66[10] + 9) = *v64;
  HIDWORD(v66[10]) = *&v64[3];
  *&v67 = v22;
  *(&v67 + 1) = v24;
  *&v68 = v26;
  *(&v68 + 1) = v28;
  v69 = 0;
  *(v34 + 224) = 0;
  v36 = v66[8];
  *(v34 + 128) = v66[7];
  *(v34 + 144) = v36;
  v37 = v66[4];
  *(v34 + 64) = v66[3];
  *(v34 + 80) = v37;
  v38 = v66[6];
  *(v34 + 96) = v66[5];
  *(v34 + 112) = v38;
  v39 = v66[0];
  *v34 = v65;
  *(v34 + 16) = v39;
  v40 = v66[2];
  *(v34 + 32) = v66[1];
  *(v34 + 48) = v40;
  v41 = v68;
  *(v34 + 192) = v67;
  *(v34 + 208) = v41;
  v42 = v66[10];
  *(v34 + 160) = v66[9];
  *(v34 + 176) = v42;
  sub_23843981C(&v65, &v70, &qword_27DF13570, &qword_23877D218);
  sub_238439884(v29, &qword_27DF0E618, &unk_2387766D0);
  *&v71[113] = *&v51[112];
  *&v71[129] = *&v51[128];
  *v72 = *&v51[144];
  *&v71[49] = *&v51[48];
  *&v71[65] = *&v51[64];
  *&v71[81] = *&v51[80];
  *&v71[97] = *&v51[96];
  *&v71[1] = *v51;
  *&v71[17] = *&v51[16];
  v70 = v35;
  v71[0] = KeyPath;
  *&v72[15] = *&v51[159];
  *&v71[33] = *&v51[32];
  v73 = v20;
  *v74 = *v64;
  *&v74[3] = *&v64[3];
  v75 = v22;
  v76 = v24;
  v77 = v26;
  v78 = v28;
  v79 = 0;
  sub_238439884(&v70, &qword_27DF13570, &qword_23877D218);
  sub_238439884(v50, &qword_27DF0E618, &unk_2387766D0);
}

uint64_t sub_23868E5F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  v54 = *a1;
  sub_2384397A8();

  v29 = sub_23875DAA0();
  v26 = v5;
  LOBYTE(v4) = v6;
  v30 = v7;
  KeyPath = swift_getKeyPath();
  v25 = sub_23875D820();
  v8 = swift_getKeyPath();
  v9 = v4 & 1;
  v27 = v4 & 1;
  v10 = sub_23875D420();
  v54 = sub_23868DB04();
  v55 = v11;
  v12 = sub_23875DAA0();
  v23 = v14;
  v24 = v13;
  v16 = v15;
  v17 = swift_getKeyPath();
  v22 = sub_23875D7F0();
  v21 = swift_getKeyPath();
  LOBYTE(v54) = v16 & 1;
  v18 = sub_23875D440();
  *&v37 = v29;
  *(&v37 + 1) = v26;
  LOBYTE(v38) = v9;
  *(&v38 + 1) = v30;
  *&v39 = KeyPath;
  *(&v39 + 1) = 1;
  v40[0] = 0;
  *&v40[8] = v8;
  *&v40[16] = v25;
  *&v40[24] = v10;
  v31 = v39;
  *v32 = *v40;
  *&v32[12] = *&v40[12];
  *&v41 = v12;
  *(&v41 + 1) = v24;
  LOBYTE(v42) = v16 & 1;
  *(&v42 + 1) = v23;
  *&v43 = v17;
  *(&v43 + 1) = 1;
  v44[0] = 0;
  *&v44[8] = v21;
  *&v44[16] = v22;
  *&v44[24] = v18;
  *&v36[12] = *&v44[12];
  v35 = v43;
  *v36 = *v44;
  v33 = v41;
  v34 = v42;
  v19 = v38;
  *a2 = v37;
  a2[1] = v19;
  a2[4] = *&v32[16];
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = *v32;
  *(a2 + 140) = *&v36[12];
  a2[7] = v35;
  a2[8] = *v36;
  a2[6] = v34;
  v45[0] = v12;
  v45[1] = v24;
  v46 = v16 & 1;
  v47 = v23;
  v48 = v17;
  v49 = 1;
  v50 = 0;
  v51 = v21;
  v52 = v22;
  v53 = v18;
  sub_23843981C(&v37, &v54, &qword_27DF09318, &unk_23877D280);
  sub_23843981C(&v41, &v54, &qword_27DF09318, &unk_23877D280);
  sub_238439884(v45, &qword_27DF09318, &unk_23877D280);
  v54 = v29;
  v55 = v26;
  v56 = v27;
  v57 = v30;
  v58 = KeyPath;
  v59 = 1;
  v60 = 0;
  v61 = v8;
  v62 = v25;
  v63 = v10;
  sub_238439884(&v54, &qword_27DF09318, &unk_23877D280);
}

double sub_23868E8EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D030();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13550, &qword_23877D180);
  sub_23868DF28(v1, a1 + *(v3 + 44));
  sub_23875E4A0();
  sub_23875C5C0();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13558, &unk_23877D188) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_23868E99C(void *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v29 = v8;
  v30 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v17 = v30[5];
  v18 = *(v13 + 48);
  sub_23843981C(a1 + v17, v16, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v17, &v16[v18], &unk_27DF0B080, &unk_2387662A0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23843981C(v16, v12, &unk_27DF0B080, &unk_2387662A0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = &v16[v18];
      v21 = v29;
      (*(v5 + 32))(v29, v20, v4);
      sub_23868EDFC(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
      v22 = sub_23875E9E0();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v12, v4);
      sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_238439884(v16, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
LABEL_11:
  if (*(a1 + v30[6]) == *(a2 + v30[6]))
  {
    v24 = v30[7];
    v25 = a1 + v24;
    v26 = a2 + v24;
    if (MEMORY[0x23EE5FA60](a1 + v24, v26))
    {
      v27 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v25[*(v27 + 20)], *&v26[*(v27 + 20)]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23868EDFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23868EE44()
{
  result = qword_27DF13518;
  if (!qword_27DF13518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13510, &qword_23877D0E0);
    sub_23868EDFC(&qword_27DF13520, type metadata accessor for OrderDetailsLargeLineItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13518);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_2(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_2(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23868F01C()
{
  result = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23868F0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23868F10C()
{
  result = qword_27DF13578;
  if (!qword_27DF13578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13558, &unk_23877D188);
    sub_23843A3E8(&qword_27DF13580, &qword_27DF13588, &unk_23877D290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13578);
  }

  return result;
}

uint64_t sub_23868F1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135C0, &qword_23877D3E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135C8, &qword_23877D3E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_23868F5E0(v2, v14);
  sub_2387576E0();
  v20 = sub_23875B940();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  v21 = sub_238690F40();
  sub_23875DAC0();
  sub_238439884(v10, &qword_27DF0D040, &qword_2387676A0);
  sub_238439884(v14, &qword_27DF135C0, &qword_23877D3E0);
  v22 = *MEMORY[0x277CDFA00];
  v23 = sub_23875C880();
  (*(*(v23 - 8) + 104))(v6, v22, v23);
  sub_2386916FC(&qword_2814F0998, MEMORY[0x277CDFA28]);
  result = sub_23875E9E0();
  if (result)
  {
    v28 = v11;
    v29 = v21;
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    sub_23875DC50();
    sub_238439884(v6, &qword_27DF0A3D0, &unk_238771220);
    (*(v16 + 8))(v19, v15);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135E8, &qword_23877D408) + 36);
    *(a1 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23868F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v62 = _s5LargeVMa();
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = _s6MediumVMa();
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135F0, &qword_23877D448);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v52 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135F8, &qword_23877D450);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v12 = &v52 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135E0, &qword_23877D400);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - v14;
  v55 = _s5SmallVMa();
  v15 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23875E7D0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135D8, &qword_23877D3F8);
  v23 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v61 = &v52 - v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13600, &qword_23877D458);
  v25 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - v26;
  v67 = _s5EmptyVMa();
  v27 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v29 = (&v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135D0, &qword_23877D3F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v66 = &v52 - v32;
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(*a1 + 16))
  {
    v33 = a1 + *(type metadata accessor for OrderTrackingWidgetEntryView() + 20);
    sub_2384D4E60(v22);
    v34 = (*(v19 + 88))(v22, v18);
    if (v34 == *MEMORY[0x277CE3B68])
    {
      sub_238691490(a1, v17, type metadata accessor for OrderWidgetTimelineEntry);
      v35 = v55;
      v36 = *(v55 + 20);
      *&v17[v36] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v37 = *(v35 + 24);
      *&v17[v37] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v17, v12, _s5SmallVMa);
      swift_storeEnumTagMultiPayload();
      sub_2386916FC(qword_2814F1018, _s5SmallVMa);
      sub_2386916FC(qword_2814F0F78, _s6MediumVMa);
      v38 = v57;
      sub_23875D1B0();
      sub_23843981C(v38, v60, &qword_27DF135E0, &qword_23877D400);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa);
      v39 = v61;
      sub_23875D1B0();
      sub_238439884(v38, &qword_27DF135E0, &qword_23877D400);
      sub_2386914F8(v17, _s5SmallVMa);
    }

    else if (v34 == *MEMORY[0x277CE3B70])
    {
      v41 = v53;
      sub_238691490(a1, v53, type metadata accessor for OrderWidgetTimelineEntry);
      v42 = v56;
      v43 = *(v56 + 20);
      *(v41 + v43) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v44 = v41 + *(v42 + 24);
      *v44 = swift_getKeyPath();
      *(v44 + 8) = 0;
      v45 = *(v42 + 28);
      *(v41 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v41, v12, _s6MediumVMa);
      swift_storeEnumTagMultiPayload();
      sub_2386916FC(qword_2814F1018, _s5SmallVMa);
      sub_2386916FC(qword_2814F0F78, _s6MediumVMa);
      v46 = v57;
      sub_23875D1B0();
      sub_23843981C(v46, v60, &qword_27DF135E0, &qword_23877D400);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa);
      v39 = v61;
      sub_23875D1B0();
      sub_238439884(v46, &qword_27DF135E0, &qword_23877D400);
      sub_2386914F8(v41, _s6MediumVMa);
    }

    else
    {
      sub_238691490(a1, v5, type metadata accessor for OrderWidgetTimelineEntry);
      v47 = v62;
      v48 = *(v62 + 20);
      *&v5[v48] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v49 = &v5[*(v47 + 24)];
      *v49 = swift_getKeyPath();
      v49[8] = 0;
      v50 = *(v47 + 28);
      *&v5[v50] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v5, v60, _s5LargeVMa);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa);
      v39 = v61;
      sub_23875D1B0();
      sub_2386914F8(v5, _s5LargeVMa);
      (*(v19 + 8))(v22, v18);
    }

    sub_23843981C(v39, v63, &qword_27DF135D8, &qword_23877D3F8);
    swift_storeEnumTagMultiPayload();
    sub_2386916FC(&qword_2814F1150, _s5EmptyVMa);
    sub_238691080();
    v40 = v66;
    sub_23875D1B0();
    sub_238439884(v39, &qword_27DF135D8, &qword_23877D3F8);
  }

  else
  {
    *v29 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
    swift_storeEnumTagMultiPayload();
    sub_238691490(v29, v63, _s5EmptyVMa);
    swift_storeEnumTagMultiPayload();
    sub_2386916FC(&qword_2814F1150, _s5EmptyVMa);
    sub_238691080();
    v40 = v66;
    sub_23875D1B0();
    sub_2386914F8(v29, _s5EmptyVMa);
  }

  sub_238691420(v40, v69);
}

FinanceKitUI::OrderTrackingWidget __swiftcall OrderTrackingWidget.init()()
{
  *v0 = 0xD000000000000013;
  v0[1] = 0x800000023877D280;
  return result;
}

uint64_t OrderTrackingWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13590, &qword_23877D2B8);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v67 = &v66 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13598, &qword_23877D2C0);
  v72 = *(v81 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v81);
  v69 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135A0, &qword_23877D2C8);
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  *&v82 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135A8, &qword_23877D2D0);
  v18 = *(v17 - 8);
  v76 = v17;
  v77 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B0, &qword_23877D2D8);
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v83 = &v66 - v24;
  v25 = *v1;
  v26 = v1[1];
  sub_238758890();

  v84 = sub_238758880();
  v27 = sub_238758A30();

  v84 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B8, &unk_23877D2E0);
  sub_238690CA0();
  sub_238690DD4();
  sub_23875E840();
  v28 = *MEMORY[0x277CC77B0];
  v68 = v3[13];
  v29 = v2;
  v68(v6, v28, v2);
  v30 = sub_238758A40();
  v32 = v31;
  v33 = v3[1];
  v66 = v3 + 1;
  v33(v6, v29);
  v84 = v30;
  v85 = v32;
  v34 = sub_23843A3E8(&qword_2814F08E8, &qword_27DF13590, &qword_23877D2B8);
  v35 = sub_2384397A8();
  v36 = v70;
  v37 = v67;
  sub_23875D180();

  (*(v71 + 8))(v37, v36);
  v68(v6, v28, v29);
  v38 = sub_238758A40();
  v40 = v39;
  v33(v6, v29);
  v88 = v38;
  v89 = v40;
  v84 = v36;
  v85 = MEMORY[0x277D837D0];
  v86 = v34;
  v87 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v81;
  v43 = v69;
  sub_23875D150();

  (*(v72 + 8))(v43, v42);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A0, &unk_23877D2F0);
  v44 = sub_23875E7D0();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v70 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = v70;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_238763300;
  v49 = v48 + v47;
  LODWORD(v71) = *MEMORY[0x277CE3B68];
  v50 = *(v45 + 104);
  v50(v48 + v47);
  (v50)(v49 + v46, *MEMORY[0x277CE3B70], v44);
  (v50)(v49 + 2 * v46, *MEMORY[0x277CE3B60], v44);
  v84 = v81;
  v85 = MEMORY[0x277D837D0];
  v86 = OpaqueTypeConformance2;
  v87 = v35;
  v51 = swift_getOpaqueTypeConformance2();
  v53 = v73;
  v52 = v74;
  v54 = v82;
  sub_23875D160();

  (*(v75 + 8))(v54, v52);
  v84 = v52;
  v85 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v76;
  sub_23875D190();
  (*(v77 + 8))(v53, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A8, &qword_23876A080);
  v57 = *(sub_23875E800() - 8);
  v58 = *(v57 + 72);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v60 = swift_allocObject();
  v82 = xmmword_2387632F0;
  *(v60 + 16) = xmmword_2387632F0;
  sub_23875E7E0();
  v61 = v70;
  v62 = swift_allocObject();
  *(v62 + 16) = v82;
  (v50)(v62 + v61, v71, v44);
  v84 = v56;
  v85 = v55;
  swift_getOpaqueTypeConformance2();
  v63 = v78;
  v64 = v83;
  sub_23875D170();

  return (*(v79 + 8))(v64, v63);
}

uint64_t sub_238690B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238691490(a1, a2, type metadata accessor for OrderWidgetTimelineEntry);
  v4 = *(type metadata accessor for OrderTrackingWidgetEntryView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_238758890();
  sub_238758880();
  v6 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B8, &unk_23877D2E0);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  return result;
}

unint64_t sub_238690CA0()
{
  result = qword_2814F0990;
  if (!qword_2814F0990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135B8, &unk_23877D2E0);
    sub_2386916FC(&qword_2814F0BC8, type metadata accessor for OrderTrackingWidgetEntryView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0990);
  }

  return result;
}

uint64_t type metadata accessor for OrderTrackingWidgetEntryView()
{
  result = qword_2814F0BB8;
  if (!qword_2814F0BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238690DD4()
{
  result = qword_2814F0BD0[0];
  if (!qword_2814F0BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814F0BD0);
  }

  return result;
}

void sub_238690EA0()
{
  type metadata accessor for OrderWidgetTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_238439AC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_238690F40()
{
  result = qword_2814F0908;
  if (!qword_2814F0908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135C0, &qword_23877D3E0);
    sub_238690FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0908);
  }

  return result;
}

unint64_t sub_238690FC4()
{
  result = qword_2814F0968;
  if (!qword_2814F0968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135D0, &qword_23877D3F0);
    sub_2386916FC(&qword_2814F1150, _s5EmptyVMa);
    sub_238691080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0968);
  }

  return result;
}

unint64_t sub_238691080()
{
  result = qword_2814F0948;
  if (!qword_2814F0948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135D8, &qword_23877D3F8);
    sub_23869113C();
    sub_2386916FC(qword_2814F10B8, _s5LargeVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0948);
  }

  return result;
}

unint64_t sub_23869113C()
{
  result = qword_2814F0960;
  if (!qword_2814F0960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135E0, &qword_23877D400);
    sub_2386916FC(qword_2814F1018, _s5SmallVMa);
    sub_2386916FC(qword_2814F0F78, _s6MediumVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0960);
  }

  return result;
}

uint64_t sub_238691228()
{
  sub_23875CD00();
  sub_2386916FC(qword_27DF13608, MEMORY[0x277CE3940]);
  sub_23875CDC0();
  return v1;
}

uint64_t sub_2386912A4@<X0>(_BYTE *a1@<X8>)
{
  sub_23875CD00();
  sub_2386916FC(qword_27DF13608, MEMORY[0x277CE3940]);
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_238691358(uint64_t a1)
{
  v2 = sub_23875E7A0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CD30();
}

uint64_t sub_238691420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135D0, &qword_23877D3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238691490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386914F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238691568()
{
  result = qword_2814F0980;
  if (!qword_2814F0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135E8, &qword_23877D408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135C8, &qword_23877D3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3D0, &unk_238771220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135C0, &qword_23877D3E0);
    sub_238690F40();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    swift_getOpaqueTypeConformance2();
    sub_2386916FC(qword_2814F0E20, type metadata accessor for OrderWidgetBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0980);
  }

  return result;
}

uint64_t sub_2386916FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238691744()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2386917C4()
{
  v0 = sub_238757750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC6560], v0, v3);
  v6 = sub_238757740();
  (*(v1 + 8))(v5, v0);
  return v6;
}

id sub_2386918C0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_238691914()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

unint64_t sub_238691968(uint64_t a1)
{
  result = sub_238436638();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238691994()
{
  result = qword_27DF13690;
  if (!qword_27DF13690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13690);
  }

  return result;
}

unint64_t sub_238691A44()
{
  result = qword_2814F09D8;
  if (!qword_2814F09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F09D8);
  }

  return result;
}

void sub_238691A98(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accountId];
  v4 = sub_23875EA80();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_238691AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v5 = type metadata accessor for WidgetAccount(0);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v48[0] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875C1E0();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48[1] = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7D8, &unk_238770530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = v48 - v18;
  v19 = type metadata accessor for WalletCardsBalanceWidgetAccountEntity();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136A8, &unk_23877D7A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v48 - v26;
  v28 = sub_23875A9F0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = v48 - v34;
  v36 = *a1;
  sub_2387575E0();
  if ((*(v20 + 48))(v27, 1, v19))
  {
    sub_238439884(v27, &qword_27DF136A8, &unk_23877D7A0);
    v37 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
    sub_238692884(v37, v55, v56, v16);

    v39 = v54;
    v40 = (v53 + 56);
    if ((*(v53 + 48))(v16, 1, v54) == 1)
    {
      sub_238439884(v16, &qword_27DF0E7D8, &unk_238770530);
      v41 = v57;
      sub_23875BC30();
      v42 = type metadata accessor for ConnectedCardsTimelineEntry(0);
      return (*v40)(v41 + *(v42 + 20), 1, 1, v39);
    }

    else
    {
      v45 = v48[0];
      sub_2386949E4(v16, v48[0]);
      v46 = *(type metadata accessor for ConnectedCardsTimelineEntry(0) + 20);
      v47 = v57;
      sub_238694A48(v45, v57 + v46, type metadata accessor for WidgetAccount);
      (*v40)(v47 + v46, 0, 1, v39);
      sub_23875BC30();
      return sub_238694AB0(v45, type metadata accessor for WidgetAccount);
    }
  }

  else
  {
    sub_238694A48(v27, v23, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
    sub_238439884(v27, &qword_27DF136A8, &unk_23877D7A0);
    (*(v29 + 16))(v32, &v23[*(v19 + 20)], v28);
    sub_238694AB0(v23, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
    (*(v29 + 32))(v35, v32, v28);
    v38 = v49;
    sub_238692D1C();
    v43 = type metadata accessor for ConnectedCardsTimelineEntry(0);
    sub_23843981C(v38, v57 + *(v43 + 20), &qword_27DF0E7D8, &unk_238770530);
    sub_23875BC30();
    sub_238439884(v38, &qword_27DF0E7D8, &unk_238770530);
    return (*(v29 + 8))(v35, v28);
  }
}

uint64_t sub_238692368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = *(*(sub_23875E870() - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = sub_23875BE00();
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v11 = sub_23875BE20();
  v5[9] = v11;
  v12 = *(v11 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v15 = sub_23875BC40();
  v5[13] = v15;
  v16 = *(v15 - 8);
  v5[14] = v16;
  v17 = *(v16 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v18 = type metadata accessor for ConnectedCardsTimelineEntry(0);
  v5[17] = v18;
  v19 = *(v18 - 8);
  v5[18] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v22 = *a2;
  v5[19] = v21;
  v5[20] = v22;

  return MEMORY[0x2822009F8](sub_2386925B8, 0, 0);
}

uint64_t sub_2386925B8()
{
  v31 = v0;
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v27 = v0[13];
  v28 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];
  v11 = v0[4];
  v30 = v0[20];
  sub_238691AF0(&v30, v10, v11, v1);
  sub_23875BDF0();
  (*(v8 + 104))(v7, *MEMORY[0x277CC99A0], v9);
  sub_23875BC30();
  sub_23875BDE0();
  v26 = *(v3 + 8);
  v26(v2, v27);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v28);
  result = (*(v3 + 48))(v4, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[16];
    v24 = v0[17];
    v25 = v0[15];
    v16 = v0[13];
    v17 = v0[11];
    v29 = v0[8];
    v18 = v0[5];
    v23 = v0[2];
    (*(v0[14] + 32))(v15, v0[12], v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF136A0, &unk_23877D790);
    v19 = *(v13 + 72);
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2387632F0;
    sub_238694A48(v14, v21 + v20, type metadata accessor for ConnectedCardsTimelineEntry);
    sub_23875E850();
    sub_238694B30(&qword_27DF13698, type metadata accessor for ConnectedCardsTimelineEntry);
    sub_23875E900();
    v26(v15, v16);
    sub_238694AB0(v14, type metadata accessor for ConnectedCardsTimelineEntry);

    v22 = v0[1];

    return v22();
  }

  return result;
}

void sub_238692884(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v60 = a3;
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7D8, &unk_238770530);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for WidgetAccount(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  v25 = a1;
  v26 = a2;
  v27 = v60;
  v28 = v61;
  sub_238692E74(v25, v26, v60, v16);
  if (!v28)
  {
    v52 = v21;
    v53 = v13;
    v29 = v58;
    v61 = 0;
    v54 = v18;
    v55 = v17;
    v30 = *(v18 + 48);
    if ((v30)(v16, 1, v17) == 1)
    {
      v31 = sub_238439884(v16, &qword_27DF0E7D8, &unk_238770530);
      MEMORY[0x28223BE20](v31);
      *(&v51 - 2) = v26;
      *(&v51 - 1) = v27;
      v32 = v53;
      v33 = v61;
      sub_23875F120();
      v61 = v33;
      if (v33)
      {
        sub_23875C160();
        v34 = v61;
        v35 = v61;
        v36 = sub_23875C1B0();
        v37 = sub_23875EFE0();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138412290;
          v40 = v61;
          v41 = v61;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 4) = v42;
          *v39 = v42;
          _os_log_impl(&dword_2383F8000, v36, v37, "Failed to fetch connected account with: %@", v38, 0xCu);
          sub_238439884(v39, &qword_27DF09930, &unk_2387638C0);
          MEMORY[0x23EE64DF0](v39, -1, -1);
          MEMORY[0x23EE64DF0](v38, -1, -1);
        }

        else
        {
        }

        v47 = v54;
        (*(v57 + 8))(v29, v56);
        v61 = 0;
        v44 = 1;
        v43 = v59;
        v45 = v55;
        goto LABEL_14;
      }

      v46 = v55;
      if (v30(v32, 1) == 1)
      {
        sub_238439884(v32, &qword_27DF0E7D8, &unk_238770530);
        v44 = 1;
        v43 = v59;
      }

      else
      {
        v48 = v32;
        v49 = v52;
        sub_2386949E4(v48, v52);
        v50 = v49;
        v43 = v59;
        sub_2386949E4(v50, v59);
        v44 = 0;
      }

      v45 = v46;
    }

    else
    {
      sub_2386949E4(v16, v24);
      v43 = v59;
      sub_2386949E4(v24, v59);
      v44 = 0;
      v45 = v55;
    }

    v47 = v54;
LABEL_14:
    (*(v47 + 56))(v43, v44, 1, v45);
  }
}

void sub_238692D1C()
{
  sub_23875F120();
  if (!v0)
  {
    v1 = sub_238759870();
    sub_238694B30(&qword_27DF136B0, MEMORY[0x277CC7AD0]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277CC7AC8], v1);
    swift_willThrow();
  }
}

void sub_238692E74(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7D8, &unk_238770530);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = [a1 defaultPaymentPassUniqueIdentifier];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [a3 passWithUniqueID_];

  if (!v16)
  {
LABEL_9:
    v14 = 0;
LABEL_10:
    v25 = type metadata accessor for WidgetAccount(v14);
    (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
    return;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    goto LABEL_9;
  }

  v29 = a4;
  v18 = [v17 primaryAccountIdentifier];
  v19 = sub_23875EA80();
  v21 = v20;

  MEMORY[0x28223BE20](v22);
  *(&v28 - 4) = v19;
  *(&v28 - 3) = v21;
  *(&v28 - 2) = a2;
  *(&v28 - 1) = a3;
  sub_23875F120();
  if (v4)
  {

    return;
  }

  v23 = type metadata accessor for WidgetAccount(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_238439884(v13, &qword_27DF0E7D8, &unk_238770530);
    a4 = v29;
    goto LABEL_9;
  }

  v26 = v13;
  v27 = v29;
  sub_2386949E4(v26, v29);
  (*(v24 + 56))(v27, 0, 1, v23);
}

void sub_23869311C(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a2;
  v33 = a1;
  v3 = sub_238759970();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759780();
  v32 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387798B0;
  *(v8 + 32) = sub_2387596B0();
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2387632F0;
  (*(v4 + 104))(v7, *MEMORY[0x277CC7B60], v3);
  v10 = sub_238759960();
  (*(v4 + 8))(v7, v3);
  v11 = MEMORY[0x277D849A0];
  *(v9 + 56) = MEMORY[0x277D84958];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  *(v8 + 40) = sub_23875EF80();
  *(v8 + 48) = sub_23875EF80();
  *(v8 + 56) = sub_23875EF80();
  v12 = sub_23875EC60();
  v13 = v32;

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v13 setPredicate_];
  v15 = v34;
  v16 = sub_23875F140();
  if (v15)
  {

    return;
  }

  v17 = v30;
  v18 = v31;
  if (v16 >> 62)
  {
    v27 = v16;
    v28 = sub_23875F3A0();
    v16 = v27;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_16:

    v29 = type metadata accessor for WidgetAccount(0);
    (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EE63F70](0);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(v16 + 32);
  }

  v20 = v19;

  v21 = [v20 externalAccountId];
  if (v21 && (v22 = v21, v23 = [v18 passWithFPANIdentifier_], v22, v23) && (v24 = objc_msgSend(v23, sel_secureElementPass), v23, v24) && (v25 = objc_msgSend(v24, sel_passActivationState), v24, !v25))
  {
    sub_2386935AC(v20, v18, v17);
  }

  else
  {
    v26 = type metadata accessor for WidgetAccount(0);
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  }
}

id sub_2386935AC@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA30, qword_23877D7B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F0, &qword_238765E38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E7E0, &unk_238770560);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v94 = &v80 - v21;
  v22 = sub_238757FC0();
  v89 = *(v22 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_238758680();
  v92 = *(v26 - 8);
  v93 = v26;
  v27 = *(v92 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v80 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v95 = &v80 - v39;
  v90 = a1;
  v40 = [a1 externalAccountId];
  if (v40)
  {
    v41 = v40;
    v42 = [a2 passWithFPANIdentifier_];

    if (v42)
    {
      v43 = v42;
      v44 = [v43 secureElementPass];
      v87 = v43;
      if (v44)
      {
        v45 = v44;
        v46 = [v44 passURL];

        if (v46)
        {
          sub_23875B8B0();

          v47 = sub_23875B940();
          (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
        }

        else
        {
          v52 = sub_23875B940();
          (*(*(v52 - 8) + 56))(v36, 1, 1, v52);
        }

        sub_2384396E4(v36, v95, &qword_27DF0D040, &qword_2387676A0);
        v43 = v87;
      }

      else
      {
        v51 = sub_23875B940();
        (*(*(v51 - 8) + 56))(v95, 1, 1, v51);
      }

      v86 = v9;
      result = [v43 cardImageWithDimensions_];
      if (result)
      {
        v53 = result;
        v85 = v33;
        v84 = [result CGImage];

        v54 = [v43 localizedDescription];
        v55 = sub_23875EA80();
        v82 = v56;
        v83 = v55;

        v90;
        sub_238758690();
        sub_238759720();
        v90 = sub_238757FB0();
        v81 = v57;
        (*(v89 + 8))(v25, v22);
        sub_2387585E0();
        v58 = sub_238759660();
        v59 = *(v58 - 8);
        v60 = *(v59 + 48);
        if (v60(v18, 1, v58) == 1)
        {
          sub_238439884(v18, &qword_27DF0A7F0, &qword_238765E38);
          v61 = 1;
          v62 = v94;
        }

        else
        {
          v62 = v94;
          sub_238759650();
          (*(v59 + 8))(v18, v58);
          v61 = 0;
        }

        v63 = sub_238758B60();
        (*(*(v63 - 8) + 56))(v62, v61, 1, v63);
        v64 = v91;
        sub_2387585E0();
        if (v60(v64, 1, v58) == 1)
        {
          sub_238439884(v64, &qword_27DF0A7F0, &qword_238765E38);
          v65 = 1;
          v66 = v86;
          v67 = v88;
        }

        else
        {
          v67 = v88;
          sub_238759640();
          (*(v59 + 8))(v64, v58);
          v65 = 0;
          v66 = v86;
        }

        v68 = v85;
        v69 = sub_23875BC40();
        (*(*(v69 - 8) + 56))(v67, v65, 1, v69);
        v70 = v95;
        sub_23843981C(v95, v68, &qword_27DF0D040, &qword_2387676A0);
        sub_2387596F0();
        v71 = sub_238757AD0();
        (*(*(v71 - 8) + 56))(v66, 0, 1, v71);
        v72 = v87;
        v73 = [v87 passActivationState];
        if (v73 >= 5)
        {
          v74 = 2;
        }

        else
        {
          v74 = 0x201010100uLL >> (8 * v73);
        }

        sub_23875BCA0();

        (*(v92 + 8))(v29, v93);
        sub_238439884(v70, &qword_27DF0D040, &qword_2387676A0);
        v75 = type metadata accessor for WidgetAccount(0);
        v76 = (a3 + v75[5]);
        v77 = v82;
        *v76 = v83;
        v76[1] = v77;
        v78 = (a3 + v75[6]);
        v79 = v81;
        *v78 = v90;
        v78[1] = v79;
        sub_2384396E4(v94, a3 + v75[7], &qword_27DF0E7E0, &unk_238770560);
        sub_2384396E4(v67, a3 + v75[8], &qword_27DF12E00, &unk_238763FC0);
        *(a3 + v75[9]) = v84;
        sub_2384396E4(v68, a3 + v75[10], &qword_27DF0D040, &qword_2387676A0);
        sub_2384396E4(v66, a3 + v75[11], &qword_27DF0CA30, qword_23877D7B0);
        *(a3 + v75[12]) = v74;
        return (*(*(v75 - 1) + 56))(a3, 0, 1, v75);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v40 = 0;
  }

  v48 = type metadata accessor for WidgetAccount(v40);
  v49 = *(*(v48 - 8) + 56);

  return v49(a3, 1, 1, v48);
}

void sub_238693F2C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v36 = a2;
  v37 = a3;
  v3 = sub_238759970();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = sub_238759780();
  v35 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632E0;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2387632F0;
  (*(v4 + 104))(v7, *MEMORY[0x277CC7B60], v3);
  v10 = sub_238759960();
  (*(v4 + 8))(v7, v3);
  v11 = MEMORY[0x277D849A0];
  *(v9 + 56) = MEMORY[0x277D84958];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  *(v8 + 32) = sub_23875EF80();
  *(v8 + 40) = sub_23875EF80();
  *(v8 + 48) = sub_23875EF80();
  v12 = sub_23875EC60();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  v14 = v35;
  [v35 setPredicate_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath();
  *(v15 + 32) = sub_23875F040();
  v16 = sub_23875EC60();

  [v14 setSortDescriptors_];

  v17 = v33;
  v18 = sub_23875F140();
  v33 = v17;
  if (v17)
  {
  }

  else
  {
    v19 = v18;
    if (v18 >> 62)
    {
      goto LABEL_19;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v37; v20; i = v37)
    {
      v22 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x23EE63F70](v22, v19);
        }

        else
        {
          if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = [v23 externalAccountId];
        if (v26)
        {
          v27 = v26;
          v28 = [v36 passWithFPANIdentifier_];

          if (v28)
          {
            v29 = [v28 secureElementPass];

            if (v29)
            {
              v30 = [v29 passActivationState];

              if (!v30)
              {

                sub_2386935AC(v24, v36, v37);

                return;
              }
            }
          }
        }

        ++v22;
        i = v37;
        if (v25 == v20)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v20 = sub_23875F3A0();
    }

LABEL_20:

    v31 = type metadata accessor for WidgetAccount(0);
    (*(*(v31 - 8) + 56))(i, 1, 1, v31);
  }
}