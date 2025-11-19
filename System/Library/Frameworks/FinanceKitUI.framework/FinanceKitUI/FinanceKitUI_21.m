uint64_t sub_238654548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12570, &qword_23877AA98);
  v40 = *(v45 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12578, &qword_23877AAA0);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12580, &qword_23877AAA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875D020();
  *(v15 + 1) = 0;
  v16 = v15;
  v15[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12588, &qword_23877AAB0) + 44);
  sub_238653800(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12590, &qword_23877AAB8);
  v18 = *(sub_23875C9B0() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2387632F0;
  sub_23875C9A0();
  v22 = sub_23843A3E8(&qword_27DF12598, &qword_27DF12578, &qword_23877AAA0);
  v37 = v16;
  v23 = v38;
  MEMORY[0x23EE62910](2, v21, v38, v22);

  sub_238439884(v9, &qword_27DF12578, &qword_23877AAA0);

  v24 = sub_23875D760();
  MEMORY[0x28223BE20](v24);
  *(&v36 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125A0, &qword_23877AAC0);
  v46 = v23;
  v47 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v42;
  sub_23875C410();
  v26 = v37;
  v27 = v39;
  sub_23843981C(v37, v39, &qword_27DF12580, &qword_23877AAA8);
  v28 = v40;
  v29 = *(v40 + 16);
  v30 = v43;
  v31 = v45;
  v29(v43, v25, v45);
  v32 = v44;
  sub_23843981C(v27, v44, &qword_27DF12580, &qword_23877AAA8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125A8, &qword_23877AAC8);
  v29((v32 + *(v33 + 48)), v30, v31);
  v34 = *(v28 + 8);
  v34(v25, v31);
  sub_238439884(v26, &qword_27DF12580, &qword_23877AAA8);
  v34(v30, v31);
  sub_238439884(v27, &qword_27DF12580, &qword_23877AAA8);
}

uint64_t sub_238654AA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12578, &qword_23877AAA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238653800(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12590, &qword_23877AAB8);
  v4 = *(sub_23875C9B0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  sub_23875C9A0();
  v8 = sub_23843A3E8(&qword_27DF12598, &qword_27DF12578, &qword_23877AAA0);
  MEMORY[0x23EE62910](0, v7, v0, v8);

  sub_238439884(v3, &qword_27DF12578, &qword_23877AAA0);
}

uint64_t sub_238654CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  v10 = sub_23875D260();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_238654F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v4 = *(started - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](started - 8);
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

  sub_2386588C0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_238658928(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SingleAccountStartDateSelectionView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x72616D6B63656863;
  v18[-2] = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

uint64_t sub_238655258(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 20));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v3 = *(v5 + 16);

  sub_2384A6A54(v3);
}

uint64_t sub_238655400(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  sub_238655974();

  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v3 = *(a1 + *(started + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v5 = (a1 + *(started + 20));
  v13 = *v5;
  v14 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v6 = *(v15 + 16);

  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  if (*(v6 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v7 = 0xE300000000000000;
    v8 = 7105633;
  }

  else
  {
    swift_getKeyPath();
    sub_23875BE90();

    v9 = v6 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v10 = (v9 + *(type metadata accessor for SharingStartDate(0) + 24));
    v8 = *v10;
    v7 = v10[1];
  }

  *(inited + 40) = v8;
  *(inited + 48) = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v3, 25, v11);
}

uint64_t objectdestroyTm_25()
{
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v2 = *(*(started - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(started - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + started[5]);
  v8 = *v7;

  v9 = v7[1];

  v10 = started[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386558E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SingleAccountStartDateSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_238655974()
{
  v0 = sub_23875A9F0();
  v55 = *(v0 - 8);
  v56 = v0;
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v0);
  v54 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875C1E0();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238758A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  sub_238758580();
  (*(v7 + 104))(v13, *MEMORY[0x277CC7160], v6);
  sub_238658BD0(&qword_27DF0DE00, MEMORY[0x277CC7180]);
  v17 = sub_23875E9E0();
  v18 = *(v7 + 8);
  v18(v13, v6);
  v18(v16, v6);
  if ((v17 & 1) == 0)
  {
    sub_238758580();
    v19 = (*(v7 + 88))(v10, v6);
    if (v19 == *MEMORY[0x277CC7158])
    {
      v20 = 53;
LABEL_10:
      v21 = *(v60 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 28));
      v22 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v24 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      v25 = *MEMORY[0x277D38428];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v26;
      v27 = *MEMORY[0x277D38390];
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = sub_23844B4DC(v20);
      *(inited + 72) = v28;
      v29 = *MEMORY[0x277D384B8];
      *(inited + 80) = *MEMORY[0x277D384B8];
      *(inited + 88) = 0xD000000000000016;
      *(inited + 96) = 0x8000000238785020;
      v30 = v24;
      v31 = v27;
      v32 = v29;
      v33 = sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v33;
      sub_2385C33E4(v22, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v61);

      v35 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_238658BD0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
      v36 = sub_23875E910();

      [v35 subject:v21 sendEvent:v36];

      return;
    }

    if (v19 == *MEMORY[0x277CC7170])
    {
      v20 = 50;
      goto LABEL_10;
    }

    if (v19 == *MEMORY[0x277CC7178])
    {
      v20 = 51;
      goto LABEL_10;
    }

    if (v19 == *MEMORY[0x277CC7168])
    {
      v20 = 52;
      goto LABEL_10;
    }

    v18(v10, v6);
    v37 = v57;
    sub_23875C120();

    v38 = sub_23875C1B0();
    v39 = sub_23875EFE0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61[0] = v60;
      *v40 = 33554946;
      v53 = v39;
      sub_238758580();
      v41 = sub_2387589F0();
      v52 = v38;
      v42 = v41;
      v18(v16, v6);
      *(v40 + 4) = v42;

      *(v40 + 6) = 2080;
      v43 = v54;
      sub_238758530();
      sub_238658BD0(&qword_27DF0E960, MEMORY[0x277CC8058]);
      v44 = v56;
      v45 = sub_23875F600();
      v47 = v46;
      (*(v55 + 8))(v43, v44);
      v48 = sub_2384615AC(v45, v47, v61);

      *(v40 + 8) = v48;
      v49 = v52;
      _os_log_impl(&dword_2383F8000, v52, v53, "    Trying to log event for unsupported account origin     %hd for account     %s", v40, 0x10u);
      v50 = v60;
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x23EE64DF0](v50, -1, -1);
      MEMORY[0x23EE64DF0](v40, -1, -1);
    }

    else
    {
    }

    (*(v58 + 8))(v37, v59);
  }
}

uint64_t sub_2386560A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_23875CFD0();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C850();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C078, &qword_238769E28);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C080, &qword_238769E30);
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C088, &qword_238769E38);
  v21 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v23 = v44 - v22;
  v56 = a1;
  v55 = a1;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C090, &qword_238769E40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C098, &qword_238769E48);
  v25 = sub_23875CDF0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0A0, &qword_238769E50);
  v27 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50);
  v57 = v26;
  v58 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v24;
  v58 = v25;
  v59 = OpaqueTypeConformance2;
  v60 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_23875D9D0();
  sub_23875C840();
  v29 = sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28);
  v30 = sub_238658BD0(&qword_27DF0C0B8, MEMORY[0x277CDD9E0]);
  v31 = v46;
  sub_23875DF60();
  (*(v47 + 8))(v11, v31);
  (*(v45 + 8))(v15, v12);
  v32 = v50;
  sub_23875CFC0();
  v57 = v12;
  v58 = v31;
  v59 = v29;
  v60 = v30;
  swift_getOpaqueTypeConformance2();
  sub_238658BD0(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v33 = v48;
  v34 = v52;
  sub_23875DB30();
  (*(v53 + 8))(v32, v34);
  (*(v49 + 8))(v20, v33);
  KeyPath = swift_getKeyPath();
  v36 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0C8, &qword_238769E88) + 36)];
  *v36 = KeyPath;
  v36[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0D0, &qword_238769E90) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v37 = &v23[*(v51 + 36)];
  *v37 = KeyPath;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_2384D2708();
  v42 = v54;
  sub_23875DE70();
  sub_238439884(v23, &qword_27DF0C088, &qword_238769E38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C100, &qword_238769E98);
  *(v42 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2386566DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v39 = a2;
  v2 = sub_23875CDF0();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C108, &qword_238769EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35[3] = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0A0, &qword_238769E50);
  v35[0] = *(v13 - 8);
  v14 = *(v35[0] + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C098, &qword_238769E48);
  v36 = *(v17 - 8);
  v37 = v17;
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  sub_23875ED50();
  v35[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  v26 = sub_23875EA80();
  v28 = v27;

  v42 = v26;
  v43 = v28;
  sub_23875E410();
  swift_getKeyPath();
  sub_23875E430();

  v29 = (*(v9 + 8))(v12, v8);
  MEMORY[0x28223BE20](v29);
  type metadata accessor for SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C110, qword_238769ED0);
  sub_238658BD0(&qword_27DF0C118, type metadata accessor for SharingStartDate);
  sub_2384D2AC0();
  sub_2384397A8();
  sub_23875E280();
  v30 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50);
  sub_23875DBB0();
  (*(v35[0] + 8))(v16, v13);
  v31 = v38;
  sub_23875CDE0();
  v42 = v13;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  v33 = v41;
  sub_23875DB80();
  (*(v40 + 8))(v31, v33);
  (*(v36 + 8))(v20, v32);
}

uint64_t sub_238656CD0(uint64_t a1)
{
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v3 = *(started - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](started);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(started + 20));
  swift_getKeyPath();
  sub_2386588C0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_238658928(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C138, &qword_238769F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF0C140, &qword_27DF0C138, &qword_238769F00);
  sub_238658BD0(&qword_27DF0C118, type metadata accessor for SharingStartDate);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0);
  sub_23875E370();
}

__n128 sub_238656F88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  sub_238657064(a1, &v8);

  v5 = v9;
  v6 = v10;
  result = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_238657064@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for SharingStartDate(0) + 20));
  if (qword_2814F0880 != -1)
  {
    v17 = *v4;
    v18 = v4[1];
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_23865721C@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for SharingStartDate(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v6 = v34;
  swift_getKeyPath();
  v34 = v6;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v7 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2386588C0(v6 + v7, v5, type metadata accessor for SharingStartDate);

  v8 = &v5[*(started + 20)];
  v10 = *v8;
  v9 = *(v8 + 1);

  sub_238658AEC(v5);
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

  v32 = v16;
  v33 = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v15) = v22;
  LODWORD(v32) = sub_23875D420();
  v23 = sub_23875DA20();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2384397FC(v19, v21, v15 & 1);

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v29;
  return result;
}

uint64_t sub_238657564()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();
}

uint64_t sub_238657608@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_23875D310();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12538, &qword_23877A980);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12540, &qword_23877A988);
  v36 = *(v34 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12548, &qword_23877A990);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12550, &qword_23877A998);
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C020, &qword_23877A9A0);
  sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0);
  sub_23875D9C0();
  sub_23875D300();
  v24 = sub_23843A3E8(&qword_27DF12558, &qword_27DF12538, &qword_23877A980);
  v25 = MEMORY[0x277CDE0D0];
  v26 = v41;
  sub_23875DF50();
  (*(v42 + 8))(v6, v26);
  (*(v35 + 8))(v10, v7);
  v45 = v7;
  v46 = v26;
  v47 = v24;
  v48 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  sub_23875DB70();
  (*(v36 + 8))(v13, v28);
  v45 = v28;
  v46 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_23875DE10();
  (*(v38 + 8))(v18, v30);
  v45 = v30;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v39;
  sub_23875DD80();
  (*(v40 + 8))(v23, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12560, &qword_23877A9A8);
  *(v31 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_238657B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C048, &qword_238769DD0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C050, &qword_238769DD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v34 - v10;
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v12 = *(started - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](started - 8);
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v14 = v48;
  swift_getKeyPath();
  v48 = v14;
  v36 = sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v40 = *(v14 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  v38 = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView;
  sub_2386588C0(a1, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v15 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v41 = swift_allocObject();
  sub_238658928(v15, v41 + v16, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  sub_23875E400();
  v17 = v48;
  swift_getKeyPath();
  v48 = v17;
  sub_23875BE90();

  v39 = *(v17 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  sub_2386588C0(a1, v15, v38);
  v18 = swift_allocObject();
  sub_238658928(v15, v18 + v16, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  sub_23875E400();
  v19 = v48;
  swift_getKeyPath();
  v48 = v19;
  sub_23875BE90();

  v20 = *(v19 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v20)
  {
    v21 = v46;
    (*(v43 + 56))(v46, 1, 1, v44);
  }

  else
  {
    v22 = v35;
    sub_2386560A4(a1, v35);
    *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C058, &qword_238769E08) + 36)) = 0;
    v21 = v46;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v23 = qword_27DF2F920;
    v48 = qword_27DF2F920;

    v24 = sub_23875E2D0();
    *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C060, &qword_238769E10) + 36)) = v24;
    LOBYTE(v24) = sub_23875D780();
    v25 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C068, &qword_238769E18) + 36);
    *v25 = v23;
    *(v25 + 8) = v24;
    v26 = v44;
    v27 = (v22 + *(v44 + 36));
    *v27 = sub_238657564;
    v27[1] = 0;
    sub_238404F7C(v22, v21);
    (*(v43 + 56))(v21, 0, 1, v26);
  }

  v28 = v39 ^ 1;
  v29 = v47;
  sub_23843981C(v21, v47, &qword_27DF0C050, &qword_238769DD8);
  v31 = v41;
  v30 = v42;
  *v42 = 0xD000000000000025;
  v30[1] = 0x80000002387887B0;
  *(v30 + 16) = v40;
  v30[3] = sub_238658E5C;
  v30[4] = v31;
  v30[5] = 0xD000000000000029;
  v30[6] = 0x80000002387887E0;
  *(v30 + 56) = v28;
  v30[8] = sub_238658A84;
  v30[9] = v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C070, &qword_238769E20);
  sub_23843981C(v29, v30 + *(v32 + 64), &qword_27DF0C050, &qword_238769DD8);

  sub_238439884(v21, &qword_27DF0C050, &qword_238769DD8);
  sub_238439884(v29, &qword_27DF0C050, &qword_238769DD8);
}

uint64_t sub_2386581E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  swift_getKeyPath();
  sub_23875BEB0();

  *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = (*(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0;
  swift_getKeyPath();
  sub_23875BEA0();
}

void sub_238658354()
{
  sub_238658838(319, &qword_27DF12508, type metadata accessor for AccountStartDateModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_238658838(319, &qword_27DF12510, type metadata accessor for AccountStartDateModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_238658838(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKAnalyticsSubject(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_238658498()
{
  result = qword_27DF12518;
  if (!qword_27DF12518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124F0, &qword_23877A878);
    sub_238658524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12518);
  }

  return result;
}

unint64_t sub_238658524()
{
  result = qword_27DF12520;
  if (!qword_27DF12520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124E8, &qword_23877A870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124B8, &qword_23877A838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF124B0, &qword_23877A830);
    sub_23843A3E8(&qword_27DF124D8, &qword_27DF124B0, &qword_23877A830);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
    sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12520);
  }

  return result;
}

void sub_238658754()
{
  sub_238658838(319, &qword_27DF0BFA0, type metadata accessor for SharingStartDateModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_238658838(319, &qword_27DF0BFA8, type metadata accessor for SharingStartDate, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238658838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2386588C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238658928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = (type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238658AEC(uint64_t a1)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

double sub_238658B50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0) - 8) + 80);

  *&result = sub_238656F88(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_238658BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238658C20()
{
  v1 = *(type metadata accessor for SingleAccountStartDateSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2386531F0();
}

unint64_t sub_238658C84()
{
  result = qword_27DF125C8;
  if (!qword_27DF125C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12560, &qword_23877A9A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12550, &qword_23877A998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12548, &qword_23877A990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12540, &qword_23877A988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12538, &qword_23877A980);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF12558, &qword_27DF12538, &qword_23877A980);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF125C8);
  }

  return result;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.__allocating_init(flowType:bankConnectService:completionHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_23875C290();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  return v11;
}

uint64_t BankConnectOfflineLabPrivacyConsentView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CDFA10];
  v7 = sub_23875C880();
  result = (*(*(v7 - 8) + 104))(a2 + v5, v6, v7);
  v9 = a2 + *(v4 + 24);
  *v9 = sub_238447830;
  *(v9 + 1) = a1;
  v9[16] = 0;
  return result;
}

uint64_t sub_238658FCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.init(flowType:bankConnectService:completionHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16[-v12];
  LOBYTE(a1) = *a1;
  v14 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v16[15] = 0;
  sub_23875C290();
  (*(v10 + 32))(v4 + v14, v13, v9);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_2386591B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_23875ED50();
  v4[6] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_2386592A8, v9, v8);
}

uint64_t sub_2386592A8()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x277CC72F0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_238659344;

  return MEMORY[0x282117DE0](1);
}

uint64_t sub_238659344()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_238659550;
  }

  else
  {
    v7 = sub_238659480;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238659480()
{
  v1 = *(v0 + 48);

  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v4 + 40);
  (*(v4 + 32))(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = 0;

  sub_23875C2E0();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_238659550()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_23875C170();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 80);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Could not complete offline lab sharing consent with error %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  v14 = *(v0 + 40);
  v15 = *(v0 + 16);
  v16 = *(v15 + 40);
  (*(v15 + 32))(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = 0;

  sub_23875C2E0();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_238659764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_23875A820();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if ((v52 & 1) == 0)
  {
    v47 = v12;
    v49 = a3;
    v50 = a4;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v52) = 1;

    sub_23875C2E0();
    v19 = MEMORY[0x277D38550];
    if (!*(v4 + 16))
    {
      v19 = MEMORY[0x277D38560];
    }

    v48 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v20 = a2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    *(inited + 32) = sub_23875EA50();
    sub_23875A7E0();
    v22 = sub_23867B330(v17);
    v24 = v23;
    (*(v14 + 8))(v17, v13);
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
    v31 = v51;
    *(v26 + 56) = *MEMORY[0x277D38390];
    *(v26 + 64) = v31;
    v32 = *MEMORY[0x277D384B8];
    *(v26 + 72) = v20;
    *(v26 + 80) = v32;
    strcpy((v26 + 88), "shareWithApple");
    *(v26 + 103) = -18;
    v33 = v27;
    v34 = v30;
    v35 = v32;
    v36 = sub_23854B138(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v36;
    sub_2385C33E4(v25, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v52);

    v38 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_23865D4D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v39 = sub_23875E910();

    v40 = v38;
    v41 = v48;
    [v40 subject:v48 sendEvent:v39];

    v42 = sub_23875ED80();
    v43 = v47;
    (*(*(v42 - 8) + 56))(v47, 1, 1, v42);
    sub_23875ED50();

    v44 = sub_23875ED40();
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    v45[2] = v44;
    v45[3] = v46;
    v45[4] = v8;
    sub_2386C3BA4(0, 0, v43, v50, v45);
  }

  return result;
}

uint64_t sub_238659C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_23875ED50();
  v4[6] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_238659D70, v9, v8);
}

uint64_t sub_238659D70()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x277CC72F0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_238659E0C;

  return MEMORY[0x282117DE0](0);
}

uint64_t sub_238659E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_23865DBFC;
  }

  else
  {
    v7 = sub_23865DC04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238659F48()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D38550];
  if (!*(v0 + 16))
  {
    v6 = MEMORY[0x277D38560];
  }

  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v9 = sub_23867B330(v5);
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v7, 16, v12);
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t BankConnectOfflineLabPrivacyConsentViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC12FinanceKitUI44BankConnectOfflineLabPrivacyConsentViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23865A224@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23865A264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
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

uint64_t BankConnectOfflineLabPrivacyConsentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125D8, &qword_23877AB50);
  sub_23865A5A8(a1 + *(v6 + 44));
  sub_23865C220(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_23865C284(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125E0, &qword_23877AB58);
  v10 = (a1 + *(result + 36));
  *v10 = sub_23865C2E8;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_23865A5A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12630, &qword_23877AD18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D760();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12638, &qword_23877AD20);
  sub_23865D89C();
  v8 = sub_23875C410();
  MEMORY[0x28223BE20](v8);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  sub_23843A3E8(&qword_27DF12660, &qword_27DF12630, &qword_23877AD18);
  sub_23865D95C();
  sub_23875DBA0();
  (*(v3 + 8))(v6, v2);
  v9 = sub_23875C910();
  v10 = sub_23875D7A0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126A0, &qword_23877AD50);
  v12 = a1 + *(result + 36);
  *v12 = v9;
  *(v12 + 8) = v10;
  return result;
}

uint64_t sub_23865A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126E0, &qword_23877ADD0);
  sub_23865A994(a1, a2 + *(v4 + 44));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12638, &qword_23877AD20);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_23865A994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v133 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12670, &qword_23877AD38);
  v127 = *(v2 - 8);
  v128 = v2;
  v3 = *(v127 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = &v115 - v4;
  v5 = sub_23875C880();
  v125 = *(v5 - 8);
  v126 = v5;
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v5);
  v120 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126E8, &unk_23877ADD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v137 = &v115 - v12;
  v13 = sub_23875CE20();
  v117 = *(v13 - 8);
  v118 = v13;
  v14 = *(v117 + 64);
  MEMORY[0x28223BE20](v13);
  v116 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v115 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0);
  v121 = *(v19 - 8);
  v122 = v19;
  v20 = *(v121 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v115 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126F0, &qword_23877ADE8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v130 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v135 = &v115 - v27;
  v28 = sub_23875E0E0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126F8, &qword_23877ADF0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v136 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v115 - v37;
  sub_23875ED50();
  v129 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v29 + 104))(v32, *MEMORY[0x277CE0FE0], v28);
  v39 = sub_23875E150();

  (*(v29 + 8))(v32, v28);
  sub_23875E4A0();
  sub_23875C5C0();
  v40 = 1;
  LOBYTE(v143) = 1;
  *&v163[6] = v168[4];
  *&v163[22] = v168[5];
  *&v163[38] = v168[6];
  v41 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12700, &qword_23877ADF8) + 36)];
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12708, &qword_23877AE00) + 28);
  sub_23875D050();
  v43 = sub_23875D060();
  (*(*(v43 - 8) + 56))(v41 + v42, 0, 1, v43);
  *v41 = swift_getKeyPath();
  *v38 = v39;
  *(v38 + 1) = 0;
  *(v38 + 8) = 1;
  *(v38 + 18) = *v163;
  *(v38 + 34) = *&v163[16];
  *(v38 + 50) = *&v163[32];
  *(v38 + 8) = *&v163[46];
  v44 = sub_23875DFC0();
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12710, &qword_23877AE38) + 36)] = v44;
  LOBYTE(v44) = sub_23875D770();
  sub_23875C3D0();
  v45 = &v38[*(v33 + 36)];
  *v45 = v44;
  *(v45 + 1) = v46;
  *(v45 + 2) = v47;
  *(v45 + 3) = v48;
  *(v45 + 4) = v49;
  v45[40] = 0;
  v124 = sub_23875D030();
  v161 = 0;
  v50 = v133;
  sub_23865B8F0(&v143);
  v164 = v143;
  v165 = *v144;
  v166 = *&v144[16];
  v167 = *&v144[32];
  v168[0] = v143;
  v168[1] = *v144;
  v168[2] = *&v144[16];
  v168[3] = *&v144[32];
  sub_23843981C(&v164, &v138, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v168, &qword_27DF0B360, &qword_23877AE40);
  *&v160[7] = v164;
  *&v160[23] = v165;
  *&v160[39] = v166;
  *&v160[55] = v167;
  v123 = v161;
  sub_23875E4B0();
  sub_23875C9C0();
  v134 = sub_23875D770();
  sub_23875C3D0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v162 = 0;
  v59 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v60 = v50 + *(v59 + 24);
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v64 = v135;
  v65 = v122;
  if (v143 == 1)
  {
    sub_23875C530();
    sub_23875CE10();
    v66 = v117;
    v67 = v118;
    (*(v117 + 16))(v116, v18, v118);
    sub_23865D4D8(&unk_27DF0C340, MEMORY[0x277CE0068]);
    v68 = sub_23875C5E0();
    (*(v66 + 8))(v18, v67);
    *&v22[*(v65 + 36)] = v68;
    sub_2384396E4(v22, v64, &qword_27DF12E80, &unk_23876A2C0);
    v40 = 0;
  }

  v69 = 1;
  (*(v121 + 56))(v64, v40, 1, v65);
  v70 = v120;
  sub_23865A264(v120);
  v71 = *(v59 + 20);
  sub_23865D4D8(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v72 = v126;
  LOBYTE(v71) = sub_23875E990();
  v73 = (*(v125 + 8))(v70, v72);
  v74 = v128;
  if (v71)
  {
    MEMORY[0x28223BE20](v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126B0, &qword_23877AD60);
    sub_23843A3E8(&qword_27DF126B8, &qword_27DF126B0, &qword_23877AD60);
    v75 = v119;
    sub_23875D1D0();
    v76 = sub_23875D770();
    sub_23875C3D0();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v133 = v58;
    v83 = v56;
    v84 = v54;
    v85 = v52;
    v87 = v86;
    v88 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12688, &qword_23877AD40) + 36);
    *v88 = v76;
    *(v88 + 8) = v78;
    *(v88 + 16) = v80;
    *(v88 + 24) = v82;
    *(v88 + 32) = v87;
    v52 = v85;
    v54 = v84;
    v56 = v83;
    v58 = v133;
    *(v88 + 40) = 0;
    v89 = sub_23875D7A0();
    sub_23875C3D0();
    v90 = v75 + *(v74 + 36);
    *v90 = v89;
    *(v90 + 8) = v91;
    *(v90 + 16) = v92;
    *(v90 + 24) = v93;
    *(v90 + 32) = v94;
    *(v90 + 40) = 0;
    sub_2384396E4(v75, v137, &qword_27DF12670, &qword_23877AD38);
    v69 = 0;
  }

  v95 = v137;
  (*(v127 + 56))(v137, v69, 1, v74);
  v96 = v136;
  sub_23843981C(v38, v136, &qword_27DF126F8, &qword_23877ADF0);
  v97 = v130;
  sub_23843981C(v64, v130, &qword_27DF126F0, &qword_23877ADE8);
  v98 = v95;
  v99 = v131;
  sub_23843981C(v98, v131, &qword_27DF126E8, &unk_23877ADD8);
  v100 = v132;
  sub_23843981C(v96, v132, &qword_27DF126F8, &qword_23877ADF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12718, &qword_23877AE48);
  v102 = v101[12];
  *(&v139[1] + 1) = *&v160[16];
  *(&v139[2] + 1) = *&v160[32];
  *(&v139[3] + 1) = *&v160[48];
  *(v139 + 1) = *v160;
  *(&v139[4] + 8) = v153;
  *(&v139[5] + 8) = v154;
  *(&v139[7] + 8) = v156;
  *(&v139[8] + 8) = v157;
  v103 = v100 + v102;
  v104 = v124;
  v138 = v124;
  v133 = v38;
  v105 = v123;
  LOBYTE(v139[0]) = v123;
  *&v139[4] = *&v160[63];
  *(&v139[9] + 8) = v158;
  *(&v139[10] + 8) = v159;
  *(&v139[6] + 8) = v155;
  BYTE8(v139[11]) = v134;
  *(&v139[11] + 9) = *v152;
  HIDWORD(v139[11]) = *&v152[3];
  *&v140 = v52;
  *(&v140 + 1) = v54;
  *&v141 = v56;
  *(&v141 + 1) = v58;
  v142 = 0;
  *(v103 + 240) = 0;
  v106 = v139[0];
  *v103 = v138;
  *(v103 + 16) = v106;
  v107 = v139[6];
  *(v103 + 96) = v139[5];
  *(v103 + 112) = v107;
  v108 = v139[4];
  *(v103 + 64) = v139[3];
  *(v103 + 80) = v108;
  v109 = v139[10];
  *(v103 + 160) = v139[9];
  *(v103 + 176) = v109;
  v110 = v139[8];
  *(v103 + 128) = v139[7];
  *(v103 + 144) = v110;
  v111 = v139[2];
  *(v103 + 32) = v139[1];
  *(v103 + 48) = v111;
  v112 = v141;
  v113 = v139[11];
  *(v103 + 208) = v140;
  *(v103 + 224) = v112;
  *(v103 + 192) = v113;
  sub_23843981C(v97, v100 + v101[16], &qword_27DF126F0, &qword_23877ADE8);
  sub_23843981C(v99, v100 + v101[20], &qword_27DF126E8, &unk_23877ADD8);
  sub_23843981C(&v138, &v143, &qword_27DF12720, &qword_23877AE50);
  sub_238439884(v137, &qword_27DF126E8, &unk_23877ADD8);
  sub_238439884(v135, &qword_27DF126F0, &qword_23877ADE8);
  sub_238439884(v133, &qword_27DF126F8, &qword_23877ADF0);
  sub_238439884(v99, &qword_27DF126E8, &unk_23877ADD8);
  sub_238439884(v97, &qword_27DF126F0, &qword_23877ADE8);
  v143 = v104;
  v144[0] = v105;
  *&v144[17] = *&v160[16];
  *&v144[33] = *&v160[32];
  *v145 = *&v160[48];
  *&v145[15] = *&v160[63];
  *&v144[1] = *v160;
  *&v145[23] = v153;
  *&v145[39] = v154;
  *&v145[55] = v155;
  *&v145[119] = v159;
  *&v145[103] = v158;
  *&v145[87] = v157;
  *&v145[71] = v156;
  v145[135] = v134;
  *&v146[3] = *&v152[3];
  *v146 = *v152;
  v147 = v52;
  v148 = v54;
  v149 = v56;
  v150 = v58;
  v151 = 0;
  sub_238439884(&v143, &qword_27DF12720, &qword_23877AE50);
  sub_238439884(v136, &qword_27DF126F8, &qword_23877ADF0);
}

uint64_t sub_23865B8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *MEMORY[0x277CC77C0];
  v8 = v3[13];
  v8(v6, v7, v2);
  v9 = sub_238758A40();
  v11 = v10;
  v12 = v3[1];
  v12(v6, v2);
  v39 = v9;
  v40 = v11;
  sub_2384397A8();
  v13 = sub_23875DAA0();
  v33 = v14;
  v34 = v13;
  v32 = v15;
  v35 = v16;
  v8(v6, v7, v2);
  v17 = sub_238758A40();
  v19 = v18;
  v12(v6, v2);
  v39 = v17;
  v40 = v19;
  v20 = sub_23875DAA0();
  v22 = v21;
  v23 = v32 & 1;
  LOBYTE(v39) = v32 & 1;
  v38 = v32 & 1;
  v25 = v24 & 1;
  v37 = v24 & 1;
  v27 = v33;
  v26 = v34;
  *a1 = v34;
  *(a1 + 8) = v27;
  *(a1 + 16) = v23;
  *(a1 + 24) = v35;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v24 & 1;
  *(a1 + 56) = v28;
  v29 = v26;
  sub_23843980C(v26, v27, v23);

  sub_23843980C(v20, v22, v25);

  sub_2384397FC(v20, v22, v25);

  sub_2384397FC(v29, v27, v39);
}

uint64_t sub_23865BBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_23875CFB0();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12670, &qword_23877AD38);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v8 = &v44 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126A8, &qword_23877AD58);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v11;
  v12 = sub_23875C880();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23865A264(v16);
  v21 = *(type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0) + 20);
  sub_23865D4D8(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v21) = sub_23875E990();
  v22 = (*(v13 + 8))(v16, v12);
  if (v21)
  {
    v23 = 1;
    v24 = v50;
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v44 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126B0, &qword_23877AD60);
    sub_23843A3E8(&qword_27DF126B8, &qword_27DF126B0, &qword_23877AD60);
    sub_23875D1D0();
    v25 = sub_23875D770();
    sub_23875C3D0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12688, &qword_23877AD40) + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    v35 = sub_23875D7A0();
    sub_23875C3D0();
    v36 = &v8[*(v46 + 36)];
    *v36 = v35;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    v41 = v47;
    sub_23875CFA0();
    sub_23865DA1C();
    v42 = v45;
    sub_23875DD10();
    (*(v48 + 8))(v41, v49);
    sub_238439884(v8, &qword_27DF12670, &qword_23877AD38);
    v24 = v50;
    (*(v9 + 32))(v20, v42, v50);
    v23 = 0;
  }

  (*(v9 + 56))(v20, v23, 1, v24);
  sub_238425938(v20, v51);
}

uint64_t sub_23865C100(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  sub_238659F48();
}

uint64_t sub_23865C220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23865C284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23865C308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126C0, &unk_23877AD68);
  sub_23865C3D8(a1, a2 + *(v4 + 44));
}

void sub_23865C3D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126C8, &qword_23877AD78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (v41 - v14);
  v16 = sub_238759940();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v41[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v17 + 104))(v20, *MEMORY[0x277CC7B50], v16);
  v41[0] = sub_23869C4FC(v20);
  v21 = sub_23875D7A0();
  sub_23875C3D0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_23865C794(v15);
  v30 = sub_23875D7A0();
  sub_23875C3D0();
  v31 = v15 + *(v9 + 36);
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_23865CADC(v8);
  v36 = v12;
  sub_23843981C(v15, v12, &qword_27DF126C8, &qword_23877AD78);
  v37 = v42;
  sub_23843981C(v8, v42, &qword_27DF0DFB8, &qword_23876ECB0);
  v38 = v41[0];
  *a2 = v41[0];
  *(a2 + 8) = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126D0, &unk_23877AD80);
  sub_23843981C(v36, a2 + *(v39 + 48), &qword_27DF126C8, &qword_23877AD78);
  sub_23843981C(v37, a2 + *(v39 + 64), &qword_27DF0DFB8, &qword_23876ECB0);
  v40 = v38;
  sub_238439884(v8, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v15, &qword_27DF126C8, &qword_23877AD78);
  sub_238439884(v37, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v36, &qword_27DF126C8, &qword_23877AD78);
}

uint64_t sub_23865C794@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277CC77C0], v7, v10);
  v13 = sub_238758A40();
  v15 = v14;
  (*(v8 + 8))(v12, v7);
  v16 = v30;
  sub_23865C220(v30, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_23865C284(v6, v18 + v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v20 = a1 + v19[9];
  sub_23875D610();
  *a1 = v13;
  a1[1] = v15;
  *(a1 + v19[10]) = 0;
  v21 = (a1 + v19[11]);
  *v21 = sub_23865DB80;
  v21[1] = v18;
  v22 = v16 + *(v3 + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  LOBYTE(v25) = v31;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF126D8, &qword_23877ADC8);
  v29 = (a1 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_238562718;
  v29[2] = v27;
  return result;
}

uint64_t sub_23865CADC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v4 = v3 - 8;
  v29 = *(v3 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277CC77C0], v7, v10);
  v13 = sub_238758A40();
  v15 = v14;
  (*(v8 + 8))(v12, v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v17 = a1 + v16[9];
  sub_23875CFC0();
  sub_23865C220(v1, v6);
  v18 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v19 = swift_allocObject();
  sub_23865C284(v6, v19 + v18);
  *a1 = v13;
  a1[1] = v15;
  *(a1 + v16[10]) = 0;
  v20 = (a1 + v16[11]);
  *v20 = sub_23865DB68;
  v20[1] = v19;
  v21 = v1 + *(v4 + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  LOBYTE(v24) = v30;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  v28 = (a1 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_238477BAC;
  v28[2] = v26;
  return result;
}

uint64_t sub_23865CE20(uint64_t a1, void (*a2)(void))
{
  v3 = (a1 + *(type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(0);
  sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
  sub_23875C490();
  a2();
}

uint64_t sub_23865CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125D8, &qword_23877AB50);
  sub_23865A5A8(a2 + *(v6 + 44));
  sub_23865C220(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_23865C284(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125E0, &qword_23877AB58);
  v10 = (a2 + *(result + 36));
  *v10 = sub_23865DC00;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

void sub_23865D048()
{
  sub_238461990();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23865D154()
{
  sub_2384BEA74();
  if (v0 <= 0x3F)
  {
    sub_23875C880();
    if (v1 <= 0x3F)
    {
      sub_23865D1F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23865D1F0()
{
  if (!qword_27DF12608)
  {
    type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel(255);
    sub_23865D4D8(&qword_27DF12610, type metadata accessor for BankConnectOfflineLabPrivacyConsentViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12608);
    }
  }
}

unint64_t sub_23865D284()
{
  result = qword_27DF12618;
  if (!qword_27DF12618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF125E0, &qword_23877AB58);
    sub_23843A3E8(&qword_27DF12620, &qword_27DF12628, &unk_23877AC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12618);
  }

  return result;
}

uint64_t sub_23865D33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23865D3BC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_23865D430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12728, &qword_23877AE58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23843981C(a1, &v6 - v4, &qword_27DF12728, &qword_23877AE58);
  return sub_23875CBC0();
}

uint64_t sub_23865D4D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23865D520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238659C7C(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23865D614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_2386591B4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = sub_23875C880();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = &v5[*(v1 + 24)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_2383FC164();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23865D834()
{
  v1 = *(type metadata accessor for BankConnectOfflineLabPrivacyConsentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23865C100(v2);
}

unint64_t sub_23865D89C()
{
  result = qword_27DF12640;
  if (!qword_27DF12640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12638, &qword_23877AD20);
    sub_23843A3E8(&qword_27DF12648, &qword_27DF12650, &qword_23877AD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12640);
  }

  return result;
}

unint64_t sub_23865D95C()
{
  result = qword_27DF12668;
  if (!qword_27DF12668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12658, &qword_23877AD30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12670, &qword_23877AD38);
    sub_23865DA1C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12668);
  }

  return result;
}

unint64_t sub_23865DA1C()
{
  result = qword_27DF12678;
  if (!qword_27DF12678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12670, &qword_23877AD38);
    sub_23865DAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12678);
  }

  return result;
}

unint64_t sub_23865DAA8()
{
  result = qword_27DF12680;
  if (!qword_27DF12680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12688, &qword_23877AD40);
    sub_23843A3E8(&qword_27DF12690, &qword_27DF12698, &qword_23877AD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12680);
  }

  return result;
}

id XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCFinancialConnectionExtensionAuthorizationParams.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740);
  sub_23865DEFC(&qword_27DF12750);
  v2 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t XPCFinancialConnectionExtensionAuthorizationParams.init(coder:)()
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740);
  sub_23865DEFC(&qword_27DF12750);
  v0 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v0;
}

uint64_t sub_23865DEFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12748, &qword_23877AE60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall XPCFinancialConnectionExtensionAuthorizationParams.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_23865FD74(&qword_27DF12738, type metadata accessor for XPCFinancialConnectionExtensionAuthorizationParams);
  sub_23865DEFC(&qword_27DF12740);
  sub_23865DEFC(&qword_27DF12750);

  sub_238758B10();
}

id XPCFinancialConnectionExtensionAuthorizationParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23865E328(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t FinancialConnectionExtensionAuthorizationRequest.params.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FinancialConnectionExtensionAuthorizationRequest.init(params:completeHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

Swift::Void __swiftcall FinancialConnectionExtensionAuthorizationRequest.complete(authorizationResult:)(FinanceKitUI::FinancialConnectionExtensionAuthorizationResult authorizationResult)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *authorizationResult.params._rawValue;
    v5 = 0;
    sub_238455C54(v2);

    v2(&v4);
    sub_2384348A8(v2);
    sub_23865E454(v4, v5);
  }
}

void sub_23865E454(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void FinancialConnectionExtensionAuthorizationRequest.complete(error:)(void *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v6 = a1;
    v7 = 1;
    sub_238455C54(v2);
    v5 = a1;
    v2(&v6);
    sub_2384348A8(v2);
    sub_23865E454(v6, v7);
  }
}

uint64_t sub_23865E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23865E588(uint64_t a1)
{
  v2 = sub_23865E798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23865E5C4(uint64_t a1)
{
  v2 = sub_23865E798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FinancialConnectionExtensionAuthorizationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12758, &qword_23877AE68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23865E798();

  sub_23875F790();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12748, &qword_23877AE60);
  sub_23865DEFC(&qword_27DF12750);
  sub_23875F5C0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23865E798()
{
  result = qword_27DF12760;
  if (!qword_27DF12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12760);
  }

  return result;
}

uint64_t FinancialConnectionExtensionAuthorizationResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12768, &qword_23877AE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23865E798();
  sub_23875F780();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12748, &qword_23877AE60);
    sub_23865DEFC(&qword_27DF12740);
    sub_23875F5B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy12FinanceKitUI041FinancialConnectionExtensionAuthorizationA0Vs5Error_pGIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SmallWalletCardsBalanceWidgetConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SmallWalletCardsBalanceWidgetConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23865ECB8(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_23865ED0C(uint64_t *a1)
{
  *(v2 + 24) = v1;
  v4 = sub_23875C1E0();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  *(v2 + 120) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_23865EDF4, 0, 0);
}

uint64_t sub_23865EDF4()
{
  v1 = *(v0 + 64);
  sub_23875C120();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Extension: Completed authorization", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  v9 = *(v7 + 8);
  *(v0 + 80) = v9;
  v9(v5, v6);
  v10 = *(v8 + 56);
  *(v0 + 88) = v10;
  if (v10)
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 72);
    *(v0 + 16) = v10;
    v13 = swift_allocObject();
    *(v0 + 96) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;

    sub_23865FC4C(v12, v11);
    v14 = *(MEMORY[0x277CC6540] + 4);
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12800, &qword_23877B1F0);
    v17 = sub_23865FD10();
    *v15 = v0;
    v15[1] = sub_23865F0CC;
    v18 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282116CB8](v17, &unk_23877B1E8, v13, v16, v18, v17);
  }

  else
  {
    v19 = *(v0 + 56);
    sub_23875C120();
    v20 = sub_23875C1B0();
    v21 = sub_23875EFE0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 56);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2383F8000, v20, v21, "Failed to notify completion: no client connection available", v26, 2u);
      MEMORY[0x23EE64DF0](v26, -1, -1);
    }

    v9(v23, v24);
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_23865F0CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23865F264;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_23865F1E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23865F1E8()
{
  v1 = v0[11];

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23865F264()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to complete authorization %@", v10, 0xCu);
    sub_238455DD4(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  else
  {
    v14 = *(v0 + 88);
  }

  v15 = *(v0 + 40) + 8;
  (*(v0 + 80))(*(v0 + 48), *(v0 + 32));
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23865F410(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  v5 = *a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  return MEMORY[0x2822009F8](sub_23865F438, 0, 0);
}

uint64_t sub_23865F438()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 32);
    v4 = sub_23875B720();
    [v2 completeWithError_];
  }

  else
  {
    v5 = type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___XPCFinancialConnectionExtensionAuthorizationResult_value] = v1;
    *(v0 + 16) = v6;
    *(v0 + 24) = v5;

    v4 = objc_msgSendSuper2((v0 + 16), sel_init);
    [v2 completeWithAuthorizationResult_];
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23865F520(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v9 = sub_23875C1B0();
  v10 = sub_23875EFC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2383F8000, v9, v10, "Extension: Starting authorization", v11, 2u);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI50XPCFinancialConnectionExtensionAuthorizationParams_value);
  v13 = v2[5];
  v14 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v13);
  v18[0] = v12;
  v18[1] = sub_23865FB7C;
  v18[2] = v2;
  v15 = *(v14 + 8);

  v15(v18, v13, v14);

  return sub_2384348A8(sub_23865FB7C);
}

uint64_t sub_23865F6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v9 = sub_23875ED80();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a2;
  *(v10 + 40) = v8;
  *(v10 + 48) = a1;

  sub_23865FC4C(v8, a1);
  sub_2386C3BA4(0, 0, v7, &unk_23877B1D0, v10);
}

uint64_t sub_23865F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6 & 1;
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_23865F8BC;

  return sub_23865ED0C((v6 + 16));
}

uint64_t sub_23865F8BC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23865FA00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_23865FA78()
{
  result = qword_27DF127E0;
  if (!qword_27DF127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127E0);
  }

  return result;
}

unint64_t sub_23865FAD0()
{
  result = qword_27DF127E8;
  if (!qword_27DF127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127E8);
  }

  return result;
}

unint64_t sub_23865FB28()
{
  result = qword_27DF127F0;
  if (!qword_27DF127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF127F0);
  }

  return result;
}

uint64_t sub_23865FB84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_23865F818(a1, v4, v5, v6, v7, v8);
}

id sub_23865FC4C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_23865FC58(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2384494A4;

  return sub_23865F410(a1, a2, v6, v7);
}

unint64_t sub_23865FD10()
{
  result = qword_27DF12808;
  if (!qword_27DF12808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12800, &qword_23877B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12808);
  }

  return result;
}

uint64_t sub_23865FD74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23865FDB8()
{
  result = qword_27DF12820;
  if (!qword_27DF12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12820);
  }

  return result;
}

unint64_t sub_23865FE0C()
{
  result = qword_27DF12828;
  if (!qword_27DF12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12828);
  }

  return result;
}

uint64_t sub_23865FE60(uint64_t a1, uint64_t a2)
{
  sub_23845C998(a2, v5);
  type metadata accessor for FinancialConnectionExtensionModel();
  v3 = swift_allocObject();
  sub_2384347C0(v5, v3 + 16);
  *(v3 + 56) = a1;
  *&v5[0] = v3;

  sub_23875A630();
  *&v5[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12800, &qword_23877B1F0);
  sub_23865FD10();
  return sub_238757720();
}

uint64_t OrderManagementModel.ImportError.errorTitle.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }

    else
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

uint64_t OrderManagementModel.ImportError.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t OrderManagementModel.ConfirmationData.__allocating_init(orderBundleURL:)(uint64_t a1)
{
  v4 = sub_23875B8C0();
  v5 = sub_23875B950();
  if (v1)
  {
    if (v4)
    {
      sub_23875B8A0();
    }
  }

  else
  {
    v2 = sub_2386620B4(v5, v6);
    if (v4)
    {
      sub_23875B8A0();
    }
  }

  v7 = sub_23875B940();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v2;
}

uint64_t OrderManagementModel.ConfirmationData.deinit()
{
  v1 = v0;
  v2 = sub_23875C1E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_238663374(v0 + 32, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_23875A370();
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_23844C954(*(v1 + 16), *(v1 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v4 = OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content;
  v5 = sub_238758700();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t OrderManagementModel.ConfirmationData.__deallocating_deinit()
{
  OrderManagementModel.ConfirmationData.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_238660580(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v4 = *(v1 + 16);
  v5 = *&v7[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context];
  *&v7[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context] = v4;
  v6 = v4;
}

uint64_t sub_238660630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_2386606B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_23875C2E0();
}

uint64_t sub_238660728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23866079C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

void (*sub_23866080C(uint64_t *a1))(void *a1)
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

void sub_2386608B0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_238660918(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_238660990(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_238660B14()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_238660B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_238660CC0(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF128A0, &qword_23877B248);
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

  v10 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  sub_23875C2A0();
  swift_endAccess();
  return sub_238660E30;
}

void sub_238660E30(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23875C2B0();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23875C2B0();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_238660F98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t OrderManagementModel.__allocating_init(analyticsProvider:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_238661CB8(v12, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t OrderManagementModel.init(analyticsProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_238661CB8(v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_238661200()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for OrderManagementModel(0);
    sub_238663994(&qword_27DF12A40, type metadata accessor for OrderManagementModel);
    sub_23875C260();

    sub_23875C270();
  }
}

uint64_t sub_238661324(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_23875A710();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238759C60();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875A260();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A250();
  sub_2387579D0();
  sub_2387579A0();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  sub_238757800();

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = 0xF000000000000004;

  sub_23875C2E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v32 = v33;
  sub_238759C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v19 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2387632F0;
  v23 = v22 + v21;
  v24 = v30;
  (*(v30 + 16))(v23, v7, v4);
  v25 = (v23 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  *v25 = 0;
  v25[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v22;
  sub_23875C2E0();
  (*(v24 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
  return (*(v13 + 8))(v16, v12);
}

uint64_t OrderManagementModel.deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider));
  return v0;
}

uint64_t OrderManagementModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider));
  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_238661AF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OrderManagementModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t OrderManagementModel.ImportError.errorDescription.getter()
{
  if (!*v0)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
    goto LABEL_10;
  }

  if (*v0 != 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v2 = qword_2814F1B90;
LABEL_10:
    v3 = sub_23875EA50();
    v4 = sub_23875EA50();
    v5 = sub_23875EA50();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    v1 = sub_23875EA80();
    return v1;
  }

  return 0;
}

uint64_t sub_238661CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0;
  v19 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v27[0] = [objc_allocWithZone(type metadata accessor for OrderNavigationModel()) init];
  sub_23875C290();
  (*(v14 + 32))(a2 + v19, v17, v13);
  v20 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v27[0] = 0xF000000000000004;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12C00, &qword_23877B440);
  sub_23875C290();
  (*(v9 + 32))(a2 + v20, v12, v8);
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v21 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet) = v21;
  sub_23845C998(v28, a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v22 = v27[0];
  sub_238663994(&qword_27DF128F8, type metadata accessor for OrderNavigationModel);
  v23 = sub_23875C260();

  v27[0] = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2386639DC;
  *(v25 + 24) = v24;
  sub_23875C280();
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return a2;
}

uint64_t sub_2386620B4(uint64_t a1, unint64_t a2)
{
  v154 = a1;
  v162 = *MEMORY[0x277D85DE8];
  v125 = sub_23875B460();
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_23875E6A0();
  v126 = *(v139 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v139);
  v135 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_23875E660();
  v130 = *(v131 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v138 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_23875E6C0();
  v140 = *(v141 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v129 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v137 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12900, &unk_23877B600);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v133 = &v119 - v15;
  v144 = sub_23875E6E0();
  v142 = *(v144 - 8);
  v16 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v128 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v136 = &v119 - v19;
  v147 = sub_23875B810();
  v146 = *(v147 - 8);
  v20 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23875BCB0();
  v145 = *(v23 - 8);
  v24 = *(v145 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23875B940();
  v152 = *(v27 - 8);
  v153 = v27;
  v28 = *(v152 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v132 = &v119 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v119 - v34;
  MEMORY[0x28223BE20](v36);
  v149 = &v119 - v37;
  v143 = sub_238758700();
  v38 = *(v143 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v143);
  v127 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v122 = &v119 - v42;
  MEMORY[0x28223BE20](v43);
  v134 = &v119 - v44;
  v151 = [objc_opt_self() mainBundle];
  v45 = [v151 bundleIdentifier];
  if (!v45)
  {
    goto LABEL_10;
  }

  v120 = v38;
  v148 = a2;
  v46 = v45;
  v47 = sub_23875EA80();
  v49 = v48;

  if (v47 == 0xD00000000000001ALL && 0x800000023878EEF0 == v49)
  {

    goto LABEL_6;
  }

  v50 = sub_23875F630();

  a2 = v148;
  v38 = v120;
  if ((v50 & 1) == 0)
  {
LABEL_10:
    sub_238757C20();
    v77 = [objc_opt_self() defaultManager];
    v78 = [v77 temporaryDirectory];

    sub_23875B8B0();
    sub_238758AF0();
    v156 = sub_238759260();
    v157 = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(&v155);
    sub_238759250();
    v79 = v154;
    v80 = v150;
    v81 = sub_238757BE0();
    if (v80)
    {
      (*(v152 + 8))(v30, v153);

      sub_23844C954(v79, a2);
      v82 = &v155;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_16;
    }

    v85 = v81;
    (*(v152 + 8))(v30, v153);
    __swift_destroy_boxed_opaque_existential_1(&v155);
    v86 = type metadata accessor for OrderBundleResourceLoader();
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    v159 = v86;
    v160 = sub_238663994(&qword_27DF12908, type metadata accessor for OrderBundleResourceLoader);
    v161 = &protocol witness table for OrderBundleResourceLoader;
    *&v158 = v87;

    v88 = v134;
    sub_238757C10();

LABEL_15:
    sub_2385169F0(&v158, &v155);
    v89 = *(v38 + 32);
    v90 = v127;
    v91 = v143;
    v89(v127, v88, v143);
    v92 = type metadata accessor for OrderManagementModel.ConfirmationData(0);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    v30 = swift_allocObject();
    *(v30 + 2) = v79;
    *(v30 + 3) = a2;
    sub_2385169F0(&v155, v30 + 2);
    v89(&v30[OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content], v90, v91);
    goto LABEL_16;
  }

LABEL_6:
  sub_23875C100();
  v121 = sub_23875C0F0();
  v51 = objc_opt_self();
  v52 = [v51 defaultManager];
  v53 = [v52 temporaryDirectory];

  v54 = v35;
  v55 = v149;
  sub_23875B8B0();

  sub_23875BCA0();
  v56 = sub_23875BC50();
  v58 = v57;
  (*(v145 + 8))(v26, v23);
  *&v155 = v56;
  *(&v155 + 1) = v58;
  v59 = v146;
  v60 = v147;
  (*(v146 + 104))(v22, *MEMORY[0x277CC91D8], v147);
  sub_2384397A8();
  sub_23875B930();
  (*(v59 + 8))(v22, v60);
  v61 = [v51 defaultManager];
  v62 = sub_23875B860();
  *&v155 = 0;
  LODWORD(v59) = [v61 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:&v155];

  if (!v59)
  {
    v83 = v155;

    sub_23875B730();

    swift_willThrow();

    sub_23844C954(v154, v148);
    v84 = v153;
    v30 = *(v152 + 8);
    (v30)(v54, v153);
    (v30)(v55, v84);
    goto LABEL_16;
  }

  v63 = v155;
  v147 = v54;
  sub_23875B880();
  v64 = v133;
  sub_23875E6D0();
  v65 = v142;
  v66 = v144;
  result = (*(v142 + 48))(v64, 1, v144);
  v68 = v154;
  if (result != 1)
  {

    v69 = v136;
    (*(v65 + 32))(v136, v64, v66);
    (*(v65 + 16))(v128, v69, v66);
    v70 = v137;
    sub_23875E6B0();
    v71 = v140;
    v72 = v141;
    (*(v140 + 16))(v129, v70, v141);
    v73 = v138;
    sub_23875E650();
    v74 = v148;
    v75 = v150;
    sub_23875C0E0();
    v150 = v75;
    if (v75)
    {

      sub_23844C954(v68, v74);
      (*(v130 + 8))(v73, v131);
      (*(v71 + 8))(v70, v72);
      (*(v65 + 8))(v69, v144);
      v76 = v153;
      v30 = *(v152 + 8);
      (v30)(v147, v153);
      (v30)(v149, v76);
LABEL_16:
      v95 = *MEMORY[0x277D85DE8];
      return v30;
    }

    v96 = v143;
    v97 = v139;
    v159 = type metadata accessor for BlastDoorOrderPreviewResourceLoader(0);
    v160 = sub_238663994(&qword_27DF12910, type metadata accessor for BlastDoorOrderPreviewResourceLoader);
    v161 = &off_284B2A8C8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v158);
    v99 = v126;
    v100 = v135;
    (*(v126 + 16))(boxed_opaque_existential_1, v135, v97);
    v101 = sub_23875B4A0();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    sub_23875B490();
    (*(v124 + 104))(v123, *MEMORY[0x277CC86D0], v125);
    sub_23875B470();
    v104 = sub_23875E600();
    v106 = v105;
    sub_238663994(&qword_27DF12918, MEMORY[0x277CC6FB0]);
    v107 = v122;
    v108 = v150;
    sub_23875B480();
    if (v108)
    {
      sub_23844C954(v104, v106);

      sub_23844C954(v154, v148);
      (*(v99 + 8))(v100, v139);
      (*(v130 + 8))(v138, v131);
      (*(v140 + 8))(v137, v141);
      (*(v142 + 8))(v136, v144);
      v109 = v153;
      v30 = *(v152 + 8);
      (v30)(v147, v153);
      (v30)(v149, v109);
      v82 = &v158;
      goto LABEL_12;
    }

    sub_23844C954(v104, v106);
    (*(v120 + 32))(v134, v107, v96);
    sub_2387586E0();
    v110 = sub_23875E620();
    v112 = v111;
    v113 = v100;
    v114 = sub_23875E610();
    v116 = v115;
    sub_23875AA90();
    sub_23844C954(v114, v116);
    sub_23844C954(v110, v112);

    (*(v126 + 8))(v113, v139);
    (*(v130 + 8))(v138, v131);
    (*(v140 + 8))(v137, v141);
    (*(v142 + 8))(v136, v144);
    v117 = v153;
    v118 = *(v152 + 8);
    v118(v147, v153);
    v118(v149, v117);
    a2 = v148;
    v79 = v154;
    v38 = v120;
    v88 = v134;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_238663374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2386633DC()
{
  result = qword_27DF128B8;
  if (!qword_27DF128B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF128B8);
  }

  return result;
}

unint64_t sub_238663434()
{
  result = qword_27DF128C0;
  if (!qword_27DF128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF128C0);
  }

  return result;
}

void sub_2386634FC()
{
  sub_2386636F0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_238663748();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386636F0()
{
  if (!qword_27DF128D8)
  {
    type metadata accessor for OrderNavigationModel();
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF128D8);
    }
  }
}

void sub_238663748()
{
  if (!qword_27DF128E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12C00, &qword_23877B440);
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF128E0);
    }
  }
}

uint64_t sub_2386637B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 8))
  {
    return (*a1 + 31);
  }

  v3 = (((*a1 >> 59) >> 4) | (2 * ((*a1 >> 59) & 0xE | (*a1 >> 2) & 1))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_238663814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2386638D8()
{
  result = sub_238758700();
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

uint64_t sub_238663994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TransactionUnitList()
{
  result = qword_27DF12928;
  if (!qword_27DF12928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238663A60()
{
  sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
  if (v0 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v1 <= 0x3F)
    {
      sub_238663B5C();
      if (v2 <= 0x3F)
      {
        sub_2384DCD94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238663B5C()
{
  if (!qword_27DF12938)
  {
    sub_23875A230();
    v0 = sub_23875C520();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12938);
    }
  }
}

uint64_t sub_238663BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_23875CE00();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransactionUnitList();
  v7 = v6 - 8;
  v45 = *(v6 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v46 = *(v47 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v12 = &v44 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12948, &qword_23877B6A0);
  v49 = *(v48 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12950, &qword_23877B6A8);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12958, qword_23877B6B0);
  v22 = *(v21 - 8);
  v52 = v21;
  v53 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v26 = *(v7 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  v44 = v1;
  sub_23875C500();
  KeyPath = swift_getKeyPath();
  sub_2386650E8(v2, v9);
  v28 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v29 = swift_allocObject();
  sub_2386656D4(v9, v29 + v28, type metadata accessor for TransactionUnitList);
  v58 = v12;
  v59 = KeyPath;
  v60 = sub_23866514C;
  v61 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12960, &unk_23877B6F0);
  sub_2386653BC();
  sub_23875D9C0();

  (*(v46 + 8))(v12, v47);
  v31 = v54;
  v30 = v55;
  v32 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDDDB0], v56);
  v33 = sub_23843A3E8(&qword_27DF12990, &qword_27DF12948, &qword_23877B6A0);
  v34 = v48;
  sub_23875DE50();
  (*(v30 + 8))(v31, v32);
  (*(v49 + 8))(v15, v34);
  v35 = (v44 + *(v7 + 44));
  v37 = *v35;
  v36 = v35[1];
  v62 = v37;
  v63 = v36;
  v66 = v34;
  v67 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_2384397A8();
  v40 = MEMORY[0x277D837D0];
  v41 = v50;
  sub_23875DC70();
  (*(v51 + 8))(v20, v41);
  v62 = v41;
  v63 = v40;
  v64 = OpaqueTypeConformance2;
  v65 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_23875DE10();
  return (*(v53 + 8))(v25, v42);
}

uint64_t sub_2386641E8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v73 = type metadata accessor for TransactionUnitList();
  v62 = *(v73 - 1);
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v73);
  v63 = v5;
  v64 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v55[-v8];
  v61 = type metadata accessor for TransactionView();
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12988, &qword_23877B700);
  v12 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v55[-v13];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  v14 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v55[-v15];
  v16 = sub_238758F50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v60 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v55[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v55[-v23];
  v25 = *a1;
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v25;
  sub_238758F60();
  v72 = v17;
  v57 = *(v17 + 16);
  v27 = v57(v21, v24, v16);
  v28 = v71;
  v29 = *(v71 + *(v73 + 7));
  MEMORY[0x28223BE20](v27);
  v73 = v24;
  *&v55[-16] = v24;
  v30 = v74;
  sub_23854CF80(sub_2386655E0, v31, v74);
  v32 = sub_238758680();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v59 = v32;
  result = v34(v30, 1);
  v58 = v21;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v76 = *v28;
    v77 = *(v28 + 8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v75, v36);
    v37 = v73;
    v56 = sub_23860E62C(v73, v75);

    v38 = v64;
    sub_2386650E8(v28, v64);
    v39 = v60;
    v57(v60, v37, v16);
    v40 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v41 = v72;
    v42 = (v63 + *(v72 + 80) + v40) & ~*(v72 + 80);
    v43 = swift_allocObject();
    sub_2386656D4(v38, v43 + v40, type metadata accessor for TransactionUnitList);
    v44 = *(v41 + 32);
    v44(v43 + v42, v39, v16);
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v45 = v61;
    v46 = *(v61 + 20);
    *&v11[v46] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v44(&v11[v45[6]], v58, v16);
    (*(v33 + 32))(&v11[v45[7]], v74, v59);
    v11[v45[8]] = v56 & 1;
    v47 = &v11[v45[9]];
    *v47 = sub_238665600;
    v47[1] = v43;
    v48 = v45[10];
    v49 = *MEMORY[0x277CDFA00];
    v50 = sub_23875C880();
    (*(*(v50 - 8) + 104))(&v11[v48], v49, v50);
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v76 = qword_27DF2F920;

    v51 = sub_23875E2D0();
    v52 = v68;
    sub_2386656D4(v11, v68, type metadata accessor for TransactionView);
    *&v52[*(v69 + 36)] = v51;
    v53 = v66;
    sub_2384396E4(v52, v66, &qword_27DF12988, &qword_23877B700);
    v54 = &v53[*(v67 + 36)];
    *v54 = xmmword_23876A640;
    *(v54 + 1) = xmmword_23876A640;
    v54[32] = 0;
    sub_2384396E4(v53, v70, &qword_27DF12978, &unk_238781900);
    (*(v72 + 8))(v73, v16);
  }

  return result;
}

uint64_t sub_238664934()
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

  sub_238758640();
  sub_238758F40();
  v8 = sub_23875BC80();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);

  return v8 & 1;
}

void sub_238664AD8(char a1, uint64_t *a2, uint64_t a3)
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
    v19 = *a2;
    v20 = a2[1];
    v31[1] = a3;
    v21 = a2[2];
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

    v23 = a2[4];
    v24 = a2[5];
    v36 = a2[3];
    v22 = v36;
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

    sub_238664EA8();
  }

  else
  {
    v26 = a2[1];
    v27 = a2[2];
    v36 = *a2;
    v25 = v36;
    v37 = v26;
    v38 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v39);
    sub_2386F1FAC(a3, v9);
    sub_23866573C(v9);
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v32 = v39;
    sub_23875E2F0();

    v28 = a2[3];
    v29 = a2[4];
    v30 = a2[5];
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

void sub_238664EA8()
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
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x80000002387850A0;
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
  sub_2386657A4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v14 = sub_23875E910();

  [v13 subject:v0 sendEvent:v14];
}

uint64_t sub_2386650E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionUnitList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23866514C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransactionUnitList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2386641E8(a1, v6, a2);
}

uint64_t sub_2386651CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v11 + 16))(&v14 - v10, a1, v7, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12978, &unk_238781900);
  sub_23843A3E8(&qword_27DF12998, &qword_27DF12940, &qword_23877B698);
  sub_2386657A4(&qword_27DF0B110, sub_2384FF9D8);
  sub_238665440();
  return sub_23875E370();
}

unint64_t sub_2386653BC()
{
  result = qword_27DF12968;
  if (!qword_27DF12968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12960, &unk_23877B6F0);
    sub_238665440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12968);
  }

  return result;
}

unint64_t sub_238665440()
{
  result = qword_27DF12970;
  if (!qword_27DF12970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12978, &unk_238781900);
    sub_2386654F8();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12970);
  }

  return result;
}

unint64_t sub_2386654F8()
{
  result = qword_27DF12980;
  if (!qword_27DF12980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12988, &qword_23877B700);
    sub_2386657A4(&qword_27DF0C520, type metadata accessor for TransactionView);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12980);
  }

  return result;
}

void sub_238665600(char a1)
{
  v3 = *(type metadata accessor for TransactionUnitList() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_238664AD8(a1, (v1 + v4), v7);
}

uint64_t sub_2386656D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23866573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386657A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_23866584C()
{
  sub_2387579D0();
  v0 = sub_2387579A0();
  Controller = type metadata accessor for InsightsFetchController();
  v2 = objc_allocWithZone(Controller);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI23InsightsFetchController_store] = v0;
  v4.receiver = v2;
  v4.super_class = Controller;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_238665948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_23875C1E0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238665A48, 0, 0);
}

uint64_t sub_238665A48()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC12FinanceKitUI23InsightsFetchController_store);
  v2 = *(MEMORY[0x277CC6778] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_238665AF8;
  v4 = v0[10];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x282116E78](v4, v7, v8, v5, v6);
}

uint64_t sub_238665AF8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_238665CC4;
  }

  else
  {
    v3 = sub_238665C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238665C0C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_238666CD4(v1);
  v4 = [objc_allocWithZone(FKInsightsRowViewModelCollection) initWithFoundInInsight_];

  sub_238667780(v1);
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_238665CC4()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_23875C150();

  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 64);
    v19 = *(v0 + 72);
    v7 = *(v0 + 56);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2384615AC(v9, v8, &v20);
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to load FoundIn models for transactionId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    (*(v13 + 8))(v12, v14);
  }

  v16 = *(v0 + 72);
  v15 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_23866601C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_23875EA80();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_23875EA80();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_238666118;

  return sub_238665948(v6, v8, v9, v11);
}

uint64_t sub_238666118(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_23875B720();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 24), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_2386662F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_23875C1E0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_238758390();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23866641C, 0, 0);
}

uint64_t sub_23866641C()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC12FinanceKitUI23InsightsFetchController_store);
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277CC6EB8], v0[10]);
  v2 = *(MEMORY[0x277CC6790] + 4);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2386664F0;
  v4 = v0[12];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return MEMORY[0x282116EA8](v8, v7, v5, v6, v4);
}

uint64_t sub_2386664F0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2386666AC, 0, 0);
  }

  else
  {
    v7 = v4[12];
    v8 = v4[9];

    v9 = *(v6 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_2386666AC()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_23875C150();

  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    v19 = *(v0 + 72);
    v7 = *(v0 + 56);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2384615AC(v9, v8, &v20);
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to prune FoundIn models for transactionId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_238666A08(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_23875EA80();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_23875EA80();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_238666B04;

  return sub_2386662F8(v6, v8, v9, v11);
}

uint64_t sub_238666B04(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 24);
  if (v3)
  {
    v13 = sub_23875B720();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v14 = *(v11 + 8);

  return v14();
}

id sub_238666CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_238759E60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238668680(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_238667780(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = sub_238759E50();
    sub_238666ECC(v12);

    v13 = objc_allocWithZone(FKFoundInInsightRowViewModelCollection);
    sub_238449184(0, &qword_27DF129B0, off_278A52968);
    v14 = sub_23875EC60();

    v15 = [v13 initWithMailItemsRowViewModels_];

    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

uint64_t sub_238666ECC(uint64_t a1)
{
  v2 = sub_238759E40();
  v3 = *(*(v2 - 8) + 64);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v21 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v15 = v10;
      v21(v7, v12, v2, v5);
      v16 = sub_238667074();
      v17 = (*v14)(v7, v2);
      if (v16)
      {
        MEMORY[0x23EE63730](v17);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23875EC90();
        }

        sub_23875ECB0();
        v8 = v22;
      }

      v12 += v13;
      --v9;
      v10 = v15;
    }

    while (v9);
  }

  return v8;
}

id sub_238667074()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v53 - v4;
  v58 = sub_23875BC40();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238759DE0();
  v57 = v5;
  if (!v8)
  {
    v54 = sub_238759E10();
    v16 = v21;
LABEL_8:
    v56 = 0;
    LODWORD(v55) = 1;
    goto LABEL_30;
  }

  v9 = v8;
  v10 = v1;
  v11 = sub_2386681BC(v9);

  v12 = sub_2384A534C(v11);

  v13 = sub_238759E10();
  v14 = v13;
  v16 = v15;
  if (!v12)
  {
    v54 = v13;
    goto LABEL_8;
  }

  v56 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (sub_23875F3A0())
    {

      swift_unknownObjectRetain();
      sub_23875F360();
      sub_238449184(0, &qword_27DF0B0F8, off_278A52960);
      sub_238667AB4();
      sub_23875EEA0();
      v12 = v63;
      v17 = v64;
      v19 = v65;
      v18 = v66;
      v20 = v67;
LABEL_14:
      v55 = v19;
      v25 = (v19 + 64) >> 6;
      while (1)
      {
        if (v12 < 0)
        {
          v29 = sub_23875F3D0();
          if (!v29 || (v61 = v29, sub_238449184(0, &qword_27DF0B0F8, off_278A52960), swift_dynamicCast(), (v28 = v62) == 0))
          {
LABEL_27:
            sub_238434840();
            swift_bridgeObjectRelease_n();
            return 0;
          }
        }

        else
        {
          v26 = v18;
          v27 = v20;
          if (!v20)
          {
            while (1)
            {
              v18 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v18 >= v25)
              {
                goto LABEL_27;
              }

              v27 = *(v17 + 8 * v18);
              ++v26;
              if (v27)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_43;
          }

LABEL_20:
          v20 = (v27 - 1) & v27;
          v28 = *(*(v12 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v27)))));
          if (!v28)
          {
            goto LABEL_27;
          }
        }

        v30 = [v28 emailType];

        if (v30 == 1)
        {
          sub_238434840();

          if (qword_2814F0880 == -1)
          {
LABEL_26:
            v31 = qword_2814F1B90;
            v32 = sub_23875EA50();
            v33 = sub_23875EA50();
            v34 = sub_23875EA50();
            v35 = [v31 localizedStringForKey:v32 value:v33 table:v34];

            v54 = sub_23875EA80();
            v16 = v36;

            goto LABEL_29;
          }

LABEL_43:
          swift_once();
          goto LABEL_26;
        }
      }
    }
  }

  else if (*(v12 + 16))
  {

    v22 = -1 << *(v12 + 32);
    v17 = v12 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v12 + 56);

    v18 = 0;
    goto LABEL_14;
  }

  v54 = v14;

LABEL_29:
  LODWORD(v55) = 0;
LABEL_30:
  sub_238759E30();
  sub_238759E00();
  sub_238759E20();
  sub_238759DF0();
  v39 = v38;
  sub_238759DD0();
  v40 = sub_23875EA50();

  v41 = sub_23875EA50();

  v42 = sub_23875BB40();
  if (!v39)
  {
    v43 = 0;
    v44 = v59;
    if (v16)
    {
      goto LABEL_32;
    }

LABEL_34:
    v45 = 0;
    goto LABEL_35;
  }

  v43 = sub_23875EA50();

  v44 = v59;
  if (!v16)
  {
    goto LABEL_34;
  }

LABEL_32:
  v45 = sub_23875EA50();

LABEL_35:
  v46 = v55;
  v47 = sub_23875B940();
  v48 = *(v47 - 8);
  v49 = 0;
  if ((*(v48 + 48))(v44, 1, v47) != 1)
  {
    v49 = sub_23875B860();
    (*(v48 + 8))(v44, v47);
  }

  if (v46)
  {
    v50 = 0;
  }

  else
  {
    sub_238449184(0, &qword_27DF0B0F8, off_278A52960);
    sub_238667AB4();
    v50 = sub_23875EE40();
  }

  v51 = v58;
  v37 = [objc_allocWithZone(FKFoundInMailItemRowViewModel) initWithMessageID:v40 fromEmailAddress:v41 dateSent:v42 fromDisplayName:v43 subject:v45 deeplinkURL:v49 orderDetails:v50];

  (*(v57 + 8))(v60, v51);
  return v37;
}

id InsightsFetchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238667780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of InsightsFetchController.fetchRowViewModelsForTransaction(withIdentifier:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2384617DC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of InsightsFetchController.pruneRowViewModelsForTransaction(withIdentifier:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2384617DC;

  return v14(a1, a2, a3, a4);
}

unint64_t sub_238667AB4()
{
  result = qword_27DF0B100;
  if (!qword_27DF0B100)
  {
    sub_238449184(255, &qword_27DF0B0F8, off_278A52960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B100);
  }

  return result;
}

uint64_t sub_238667B1C(uint64_t a1)
{
  v2 = sub_238758450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = 0;
  if (v8 != *MEMORY[0x277CC6F50])
  {
    if (v8 == *MEMORY[0x277CC6F38])
    {
      return 1;
    }

    else if (v8 == *MEMORY[0x277CC6F18])
    {
      return 2;
    }

    else if (v8 == *MEMORY[0x277CC6F48])
    {
      return 3;
    }

    else if (v8 == *MEMORY[0x277CC6F40])
    {
      return 4;
    }

    else if (v8 == *MEMORY[0x277CC6F30])
    {
      return 5;
    }

    else if (v8 == *MEMORY[0x277CC6F10])
    {
      return 6;
    }

    else if (v8 == *MEMORY[0x277CC6F28])
    {
      return 7;
    }

    else if (v8 == *MEMORY[0x277CC6F20])
    {
      return 8;
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_238667D14(uint64_t a1)
{
  v2 = sub_2387583E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = 0;
  if (v8 != *MEMORY[0x277CC6EE8])
  {
    if (v8 == *MEMORY[0x277CC6EE0])
    {
      return 1;
    }

    else if (v8 == *MEMORY[0x277CC6EF0])
    {
      return 2;
    }

    else if (v8 == *MEMORY[0x277CC6EC8])
    {
      return 3;
    }

    else if (v8 == *MEMORY[0x277CC6F08])
    {
      return 4;
    }

    else if (v8 == *MEMORY[0x277CC6F00])
    {
      return 5;
    }

    else if (v8 == *MEMORY[0x277CC6ED8])
    {
      return 6;
    }

    else if (v8 == *MEMORY[0x277CC6ED0])
    {
      return 7;
    }

    else if (v8 == *MEMORY[0x277CC6EF8])
    {
      return 8;
    }

    else if (v8 == *MEMORY[0x277CC6EC0])
    {
      return 9;
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      return 0;
    }
  }

  return v9;
}

id sub_238667F28()
{
  v0 = sub_2387583E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758450();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238759DB0();
  v26 = sub_238667B1C(v9);
  (*(v6 + 8))(v9, v5);
  sub_238759DA0();
  v11 = v10;
  sub_238759D80();
  v13 = v12;
  sub_238759D90();
  v25 = sub_238667D14(v4);
  (*(v1 + 8))(v4, v0);
  sub_238759D70();
  v15 = v14;
  sub_238759D60();
  v17 = v16;
  if (v11)
  {
    v18 = sub_23875EA50();

    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = 0;
    if (v13)
    {
LABEL_3:
      v19 = sub_23875EA50();

      if (v15)
      {
        goto LABEL_4;
      }

LABEL_8:
      v20 = 0;
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_9:
      v21 = 0;
      goto LABEL_10;
    }
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  v20 = sub_23875EA50();

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = sub_23875EA50();

LABEL_10:
  v22 = objc_allocWithZone(FKFoundInMailItemRowOrderDetailsViewModel);
  v23 = [v22 initWithEmailType:v26 merchantDisplayName:v18 orderNumber:v19 shippingStatus:v25 shippingDetailsTrackingNumber:v20 shippingDetailsCarrierName:v21];

  return v23;
}

uint64_t sub_2386681BC(uint64_t a1)
{
  v35 = sub_238759DC0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_23875F320();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v32 = v3 + 8;
    v33 = v3 + 16;
    v29 = a1 + 64;
    v30 = v3;
    v31 = v12;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v36 = v11;
      v12 = v6;
      v15 = *(a1 + 48) + *(v3 + 72) * v10;
      v16 = a1;
      v18 = v34;
      v17 = v35;
      (*(v3 + 16))(v34, v15, v35);
      v37 = sub_238667F28();
      v19 = v18;
      a1 = v16;
      (*(v3 + 8))(v19, v17);
      sub_23875F4C0();
      v20 = *(v38 + 16);
      sub_23875F4F0();
      sub_23875F500();
      result = sub_23875F4D0();
      v13 = 1 << *(v16 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v8 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v12;
      LODWORD(v12) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v25 = (v29 + 8 * v14);
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_238434834(v10, v31, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_238434834(v10, v31, 0);
      }

LABEL_4:
      v11 = v36 + 1;
      v10 = v13;
      v3 = v30;
      if (v36 + 1 == v6)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2386684B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_238666A08(v2, v3, v5, v4);
}

uint64_t objectdestroyTm_27()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2386685C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_23866601C(v2, v3, v5, v4);
}

uint64_t sub_238668680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129A8, &qword_23877B788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void View.installWalletAlert(isPresented:completion:)()
{
  v0 = sub_23875EA50();
  v1 = PKLocalizedDeletableString(v0);

  if (v1)
  {
    sub_23875EA80();

    MEMORY[0x28223BE20](v2);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C718, &qword_2387708F0);
    sub_2384397A8();
    sub_2384E2C4C();
    sub_23875DEC0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2386688A4(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
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

void sub_238668D2C(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_2386688A4(v1[5], v1[6], a1);
}

uint64_t sub_238668D3C(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PKOpenInstallWallet();
  if (a1)
  {
    a1(1);
  }
}

uint64_t sub_238668DF8(void (*a1)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(0);
  }
}

void sub_238668EB0(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875EA50();
  v3 = PKLocalizedDeletableString(v2);

  if (v3)
  {
    sub_23875EA80();

    sub_2384397A8();
    v4 = sub_23875DAA0();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_238668FD4(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_238668EB0(a1);
}

uint64_t type metadata accessor for WidgetBalanceUpdatedTime()
{
  result = qword_27DF129B8;
  if (!qword_27DF129B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238669054()
{
  result = sub_23875BC40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386690DC@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v54 - v3;
  v4 = sub_23875D990();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_23875D520();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23875BBC0();
  v54 = *(v56 - 8);
  v10 = v54;
  v9 = v54;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875CE30();
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129C8, &qword_23877B888);
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v22 = sub_23875CEF0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D0, &qword_23877B890);
  v24 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v26 = &v54 - v25;
  sub_23875CED0();
  sub_23875CEC0();
  sub_23875BC40();
  sub_23875C800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D8, &qword_23877B898);
  v27 = *(v9 + 72);
  v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_238763320;
  sub_23875BB90();
  sub_23875BBA0();
  sub_23875BB70();
  sub_23875BB80();
  sub_23875BBB0();
  sub_2386698EC(v29);
  swift_setDeallocating();
  v30 = v56;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_23875BB70();
  v31 = v55;
  sub_23875B420();

  (*(v54 + 8))(v13, v30);
  sub_238669F88(&qword_27DF129E0, MEMORY[0x277CE0090]);
  v32 = v59;
  sub_23875CEE0();
  (*(v60 + 8))(v31, v32);
  (*(v57 + 8))(v21, v58);
  sub_23875CEC0();
  sub_23875CF10();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v33 = qword_2814F1B90;
  v34 = sub_23875DA90();
  v36 = v35;
  v38 = v37;
  v39 = v61;
  sub_23875D390();
  v40 = v64;
  sub_23875D9F0();
  sub_2384397FC(v34, v36, v38 & 1);

  (*(v62 + 8))(v39, v40);
  v42 = v65;
  v41 = v66;
  v43 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277CE0AA0], v67);
  v44 = sub_23875D840();
  v45 = v68;
  (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
  v46 = sub_23875D8D0();
  sub_238669C10(v45);
  (*(v41 + 8))(v42, v43);
  KeyPath = swift_getKeyPath();
  v48 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129E8, &qword_23877B8D0) + 36)];
  *v48 = KeyPath;
  v48[1] = v46;
  LODWORD(v46) = sub_23875D440();
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129F0, &qword_23877B8D8) + 36)] = v46;
  v49 = swift_getKeyPath();
  v50 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129F8, &qword_23877B910) + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v26[*(v63 + 36)];
  *v52 = v51;
  v52[1] = 0x3FE8000000000000;
  sub_238669C78();
  sub_23875DAB0();
  return sub_2384262E4(v26);
}

uint64_t sub_2386698EC(uint64_t a1)
{
  v2 = sub_23875BBC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A20, &qword_23877B948);
    v10 = sub_23875F450();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_238669F88(&qword_27DF12A28, MEMORY[0x277CC94F0]);
      v17 = sub_23875E950();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v19 * v14, v2);
          sub_238669F88(&unk_27DF12A30, MEMORY[0x277CC94F0]);
          v25 = sub_23875E9E0();
          v26 = *v15;
          (*v15)(v6, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_238669C10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238669C78()
{
  result = qword_27DF12A00;
  if (!qword_27DF12A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129D0, &qword_23877B890);
    sub_238669D30();
    sub_23843A3E8(&qword_27DF10188, &qword_27DF10190, &qword_238774FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A00);
  }

  return result;
}

unint64_t sub_238669D30()
{
  result = qword_27DF12A08;
  if (!qword_27DF12A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129F8, &qword_23877B910);
    sub_238669DE8();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A08);
  }

  return result;
}

unint64_t sub_238669DE8()
{
  result = qword_27DF12A10;
  if (!qword_27DF12A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129F0, &qword_23877B8D8);
    sub_238669EA0();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A10);
  }

  return result;
}

unint64_t sub_238669EA0()
{
  result = qword_27DF12A18;
  if (!qword_27DF12A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129E8, &qword_23877B8D0);
    sub_23875D520();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A18);
  }

  return result;
}

uint64_t sub_238669F88(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_238669FD0()
{
  v1 = sub_23875F0C0();
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875BCB0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27DF12AC8;
  sub_238758890();
  *(v0 + v10) = sub_238758880();
  v11 = qword_27DF12AD0;
  v12 = sub_238759370();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_238759360();
  v16 = type metadata accessor for OrderManagementModel(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v0 + v11) = sub_238671D64(v15, v19);
  v20 = qword_27DF12AD8;
  type metadata accessor for AnalyticsSession();
  v21 = swift_allocObject();
  sub_23875BCA0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v23 = *(v22 + 52);
  v24 = (*(v22 + 48) + 3) & 0x1FFFFFFFCLL;
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v6 + 32))(v25 + *(*v25 + *MEMORY[0x277D841D0] + 16), v9, v41);
  *(v21 + 16) = v25;
  *(v0 + v20) = v21;
  *(v0 + qword_27DF12AE0) = MEMORY[0x277D84FA0];
  v26 = *(v0 + v10);
  v27 = *(v0 + v11);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);

  v28 = sub_23875C7A0();
  v44 = v26;
  v45 = v28;
  v46 = v29;
  v47 = v21;
  v30 = sub_23875D080();
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 defaultCenter];
  v34 = *MEMORY[0x277D76648];
  sub_23875F0D0();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2386729C4(&qword_27DF12C18, MEMORY[0x277CC9DB0]);
  v35 = v42;
  sub_23875C360();

  v36 = *(v43 + 8);
  v36(v5, v35);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  v37 = [v31 defaultCenter];
  v38 = *MEMORY[0x277D76768];
  sub_23875F0D0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23875C360();

  v36(v5, v35);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  return v32;
}

void sub_23866A560()
{
  v1 = *MEMORY[0x277D38548];
  v2 = objc_opt_self();
  v3 = [v2 reporterForSubject_];
  if (v3)
  {
  }

  else
  {
    [v2 beginSubjectReporting_];
    v4 = *(*(v0 + qword_27DF12AD8) + 16);
    v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    v7 = sub_23875BCB0();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
    sub_23875BCA0();

    os_unfair_lock_unlock((v4 + v6));
  }
}

uint64_t type metadata accessor for OrderManagementViewController()
{
  result = qword_27DF12AE8;
  if (!qword_27DF12AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OrderManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t OrderManagementView.init(coreDataProvider:model:analyticsSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);
  result = sub_23875C7A0();
  a3[1] = result;
  a3[2] = v6;
  a3[3] = a2;
  return result;
}

void sub_23866A9D8()
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
    v1 = Strong;
    v2 = *MEMORY[0x277D38548];
    v3 = objc_opt_self();
    v4 = [v3 reporterForSubject_];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      [v3 beginSubjectReporting_];
      v6 = *(*&v1[qword_27DF12AD8] + 16);
      v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
      v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v6 + v8));
      v9 = sub_23875BCB0();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
      sub_23875BCA0();
      os_unfair_lock_unlock((v6 + v8));
    }
  }

  else
  {
  }
}

uint64_t sub_23866ABAC()
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

    v1 = *MEMORY[0x277D38548];
    v2 = objc_opt_self();
    v3 = [v2 reporterForSubject_];
    if (v3)
    {

      [v2 endSubjectReporting_];
    }
  }
}

void sub_23866ACB0(void *a1)
{
  v2 = v1;
  v4 = sub_23875BCB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = qword_27DF12AC8;
  sub_238758890();
  *(v2 + v9) = sub_238758880();
  v10 = qword_27DF12AD0;
  v11 = sub_238759370();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_238759360();
  v15 = type metadata accessor for OrderManagementModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v2 + v10) = sub_238671D64(v14, v18);
  v19 = qword_27DF12AD8;
  type metadata accessor for AnalyticsSession();
  v20 = swift_allocObject();
  sub_23875BCA0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v22 = *(v21 + 52);
  v23 = (*(v21 + 48) + 3) & 0x1FFFFFFFCLL;
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v5 + 32))(v24 + *(*v24 + *MEMORY[0x277D841D0] + 16), v8, v4);
  *(v20 + 16) = v24;
  *(v2 + v19) = v20;
  *(v2 + qword_27DF12AE0) = MEMORY[0x277D84FA0];
  sub_23875F520();
  __break(1u);
}

void sub_23866AF0C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23866ACB0(a3);
}

uint64_t sub_23866AF8C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

void sub_23866B014(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7 - 8];
  v9 = sub_23875A820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = type metadata accessor for OrderManagementViewController();
  v28.receiver = v2;
  v28.super_class = v14;
  objc_msgSendSuper2(&v28, sel_viewWillAppear_, a1 & 1);
  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  v17 = [v16 reporterForSubject_];
  if (v17)
  {
  }

  else
  {
    [v16 beginSubjectReporting_];
    v18 = *(*&v2[qword_27DF12AD8] + 16);
    v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v18 + v20));
    v21 = sub_23875BCB0();
    (*(*(v21 - 8) + 8))(v18 + v19, v21);
    sub_23875BCA0();
    os_unfair_lock_unlock((v18 + v20));
  }

  sub_23875A7E0();
  sub_2387579D0();
  sub_2387579A0();
  v27[3] = v9;
  v27[4] = MEMORY[0x277CC7F68];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  if (sub_238757940())
  {
    v26[47] = 0;
    sub_23845C998(v27, v26);
    sub_238757A30();
    sub_238757A00();
    sub_2387579E0();
    (*(v5 + 8))(v8, v4);
    v23 = v26[0];
    __swift_destroy_boxed_opaque_existential_1(v27);

    (*(v10 + 8))(v13, v9);
    if ((v23 & 1) == 0)
    {
      type metadata accessor for OrderWelcomeViewController();
      v24 = sub_2386FF47C();
      [v2 presentViewController:v24 animated:1 completion:0];
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    (*(v10 + 8))(v13, v9);
  }
}

void sub_23866B3D8(void *a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_23866B014(a3);
}

void sub_23866B4A4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for OrderManagementViewController();
  v5 = a1;
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a3);
  v6 = *MEMORY[0x277D38548];
  v7 = objc_opt_self();
  v8 = [v7 reporterForSubject_];
  if (v8)
  {

    [v7 endSubjectReporting_];
  }
}

void sub_23866B5C0(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_23866A560();
}

uint64_t sub_23866B678()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *MEMORY[0x277D38548];
  v1 = objc_opt_self();
  v2 = [v1 reporterForSubject_];
  if (v2)
  {

    [v1 endSubjectReporting_];
  }
}

uint64_t sub_23866B758()
{
  v1 = *(v0 + qword_27DF12AC8);

  v2 = *(v0 + qword_27DF12AD0);

  v3 = *(v0 + qword_27DF12AD8);

  v4 = *(v0 + qword_27DF12AE0);
}

id sub_23866B7D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23866B80C(uint64_t a1)
{
  v2 = *(a1 + qword_27DF12AC8);

  v3 = *(a1 + qword_27DF12AD0);

  v4 = *(a1 + qword_27DF12AD8);

  v5 = *(a1 + qword_27DF12AE0);
}

void sub_23866B878(char *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[qword_27DF12AD0];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  sub_23875C2D0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2E0();
}

void sub_23866B9AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v56 = a8;
  v57 = a3;
  v53 = a7;
  v58 = a5;
  v59 = a6;
  v13 = sub_23875A710();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v51 - v20;
  v60 = *&v8[qword_27DF12AC8];
  sub_238758890();
  v22 = sub_238758A30();
  if (sub_2387576F0() == a1 && v23 == a2)
  {

LABEL_5:
    v25 = sub_23875ED80();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    sub_23875ED50();
    v26 = v59;

    v27 = v9;

    v28 = v22;
    v29 = sub_23875ED40();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v33 = v57;
    v32 = v58;
    v30[4] = v27;
    v30[5] = v33;
    v30[6] = a4;
    v30[7] = v28;
    v30[8] = v32;
    v30[9] = v26;
    sub_2386C3BA4(0, 0, v21, &unk_23877BCD0, v30);

    return;
  }

  v52 = v13;
  v24 = sub_23875F630();

  if (v24)
  {
    goto LABEL_5;
  }

  v34 = v55;
  sub_23875A6E0();
  v35 = sub_23875ED80();
  (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
  v36 = v54;
  (*(v54 + 16))(v15, v34, v52);
  sub_23875ED50();

  v51 = v9;
  v57 = v22;
  v37 = v59;

  v38 = sub_23875ED40();
  v39 = (*(v36 + 80) + 40) & ~*(v36 + 80);
  v40 = (v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D85700];
  v42[2] = v38;
  v42[3] = v43;
  v42[4] = v51;
  v44 = v42 + v39;
  v45 = v52;
  (*(v36 + 32))(v44, v15, v52);
  v47 = v57;
  v46 = v58;
  *(v42 + v40) = v57;
  v48 = (v42 + v41);
  *v48 = v46;
  v48[1] = v37;
  v49 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
  v50 = v56;
  *v49 = v53;
  v49[1] = v50;
  sub_2386C3BA4(0, 0, v21, &unk_23877BCC0, v42);

  (*(v36 + 8))(v55, v45);
}

uint64_t sub_23866BE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v16;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_23875C1E0();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  sub_23875ED50();
  v8[13] = sub_23875ED40();
  v13 = sub_23875ECE0();
  v8[14] = v13;
  v8[15] = v12;

  return MEMORY[0x2822009F8](sub_23866BF08, v13, v12);
}

uint64_t sub_23866BF08()
{
  v1 = *(v0[4] + qword_27DF12AC8);
  v0[16] = sub_238758870();
  v2 = *(MEMORY[0x277CC6D90] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_23866BFB4;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866BFB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_23866C45C;
  }

  else
  {
    v7 = v2[16];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_23866C0D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23866C0D0()
{
  v40 = v0;
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  sub_238759480();
  v6 = sub_238759430();
  if (v1)
  {
    v7 = v0[12];
    v8 = v0[6];
    sub_23875C180();

    v9 = v1;
    v10 = sub_23875C1B0();
    v11 = sub_23875EFE0();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v12)
    {
      v17 = v0[5];
      v16 = v0[6];
      v38 = v0[10];
      v18 = swift_slowAlloc();
      v37 = v13;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_2384615AC(v17, v16, &v39);
      *(v18 + 12) = 2112;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_2383F8000, v10, v11, "Failed to fetch extracted order for %s with error: %@", v18, 0x16u);
      sub_238455DD4(v19);
      MEMORY[0x23EE64DF0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x23EE64DF0](v20, -1, -1);
      MEMORY[0x23EE64DF0](v18, -1, -1);

      (*(v14 + 8))(v37, v38);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  else if (v6)
  {
    v24 = v0[8];
    v23 = v0[9];
    v26 = v0[5];
    v25 = v0[6];
    v27 = *(v0[4] + qword_27DF12AD0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v28 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
    v29 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2387632F0;
    v33 = (v32 + v31);
    *v33 = v26;
    v33[1] = v25;
    v33[2] = v24;
    v33[3] = v23;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[3] = v32;

    sub_23875C2E0();
  }

  v34 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_23866C45C()
{
  v26 = v0;
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[18];
  v4 = v0[12];
  v5 = v0[6];
  sub_23875C180();

  v6 = v3;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  if (v9)
  {
    v14 = v0[5];
    v13 = v0[6];
    v24 = v0[10];
    v15 = swift_slowAlloc();
    v23 = v10;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_2384615AC(v14, v13, &v25);
    *(v15 + 12) = 2112;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_2383F8000, v7, v8, "Failed to fetch extracted order for %s with error: %@", v15, 0x16u);
    sub_238455DD4(v16);
    MEMORY[0x23EE64DF0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EE64DF0](v17, -1, -1);
    MEMORY[0x23EE64DF0](v15, -1, -1);

    (*(v11 + 8))(v23, v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_23866C66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v19;
  v8[9] = v20;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_23875A710();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = sub_23875C1E0();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  sub_23875ED50();
  v8[16] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v8[17] = v16;
  v8[18] = v15;

  return MEMORY[0x2822009F8](sub_23866C7D0, v16, v15);
}

uint64_t sub_23866C7D0()
{
  v1 = *(v0[3] + qword_27DF12AC8);
  v0[19] = sub_238758870();
  v2 = *(MEMORY[0x277CC6D90] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_23866C87C;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866C87C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_23866CD10;
  }

  else
  {
    v7 = v2[19];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_23866C998;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23866C998()
{
  v46 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[4];
  v4 = v0[5];

  sub_238757DF0();
  v5 = sub_238757D50();
  if (v1)
  {
    v6 = v0[15];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = v0[4];
    sub_23875C180();
    (*(v8 + 16))(v7, v10, v9);
    v11 = v1;
    v12 = sub_23875C1B0();
    v13 = sub_23875EFE0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    if (v14)
    {
      v44 = v0[13];
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v21 = 136315394;
      sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28]);
      v43 = v15;
      v22 = sub_23875F600();
      v40 = v13;
      v24 = v23;
      (*(v20 + 8))(v17, v19);
      v25 = sub_2384615AC(v22, v24, &v45);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2112;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      *v41 = v27;
      _os_log_impl(&dword_2383F8000, v12, v40, "Failed to fetch order for %s with error: %@", v21, 0x16u);
      sub_238455DD4(v41);
      MEMORY[0x23EE64DF0](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EE64DF0](v42, -1, -1);
      MEMORY[0x23EE64DF0](v21, -1, -1);

      (*(v16 + 8))(v43, v44);
    }

    else
    {

      (*(v20 + 8))(v17, v19);
      (*(v16 + 8))(v15, v18);
    }
  }

  else if (v5)
  {
    v28 = v0[8];
    v29 = v0[9];
    v31 = v0[6];
    v30 = v0[7];
    v32 = *(v0[3] + qword_27DF12AD0);
    v33 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v33;
    sub_23875C2D0();

    v35 = v0[2];
    OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v34, v31, v30, v28, v29);
  }

  v36 = v0[15];
  v37 = v0[12];

  v38 = v0[1];

  return v38();
}

uint64_t sub_23866CD10()
{
  v36 = v0;
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[21];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[4];
  sub_23875C180();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v3;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  if (v12)
  {
    v34 = v0[13];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v19 = 136315394;
    sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28]);
    v33 = v13;
    v20 = sub_23875F600();
    v30 = v11;
    v22 = v21;
    (*(v18 + 8))(v15, v17);
    v23 = sub_2384615AC(v20, v22, &v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v3;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v31 = v25;
    _os_log_impl(&dword_2383F8000, v10, v30, "Failed to fetch order for %s with error: %@", v19, 0x16u);
    sub_238455DD4(v31);
    MEMORY[0x23EE64DF0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x23EE64DF0](v32, -1, -1);
    MEMORY[0x23EE64DF0](v19, -1, -1);

    (*(v14 + 8))(v33, v34);
  }

  else
  {

    (*(v18 + 8))(v15, v17);
    (*(v14 + 8))(v13, v16);
  }

  v26 = v0[15];
  v27 = v0[12];

  v28 = v0[1];

  return v28();
}

uint64_t sub_23866CFD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA80();
  v11 = v10;
  v12 = sub_23875EA80();
  v14 = v13;
  if (a5)
  {
    v15 = sub_23875EA80();
    a5 = v16;
    if (a6)
    {
LABEL_5:
      v17 = sub_23875EA80();
      a6 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_8:
  v19 = a1;
  sub_23866B9AC(v9, v11, v12, v14, v15, a5, v17, a6);
}

uint64_t sub_23866D140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_23875C1E0();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_23875A710();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  sub_23875ED50();
  v8[16] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v8[17] = v16;
  v8[18] = v15;

  return MEMORY[0x2822009F8](sub_23866D2A4, v16, v15);
}

uint64_t sub_23866D2A4()
{
  v1 = *(v0[4] + qword_27DF12AC8);
  v0[19] = sub_238758870();
  v2 = *(MEMORY[0x277CC6D90] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_23866D350;

  return MEMORY[0x282117410]();
}

uint64_t sub_23866D350()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_23866D8EC;
  }

  else
  {
    v7 = v2[19];

    v4 = v2[17];
    v5 = v2[18];
    v6 = sub_23866D46C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23866D46C()
{
  v53 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[5];
  v4 = v0[6];

  sub_238757DF0();
  v5 = sub_238757D50();
  if (v1)
  {
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[5];
    sub_23875C180();
    (*(v7 + 16))(v6, v10, v8);
    v11 = v1;
    v12 = sub_23875C1B0();
    v13 = sub_23875EFE0();

    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[11];
    v17 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    if (v14)
    {
      v50 = v0[9];
      v21 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v21 = 136315394;
      sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28]);
      v49 = v18;
      v22 = sub_23875F600();
      v46 = v13;
      v24 = v23;
      (*(v16 + 8))(v15, v17);
      v25 = sub_2384615AC(v22, v24, &v52);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2112;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      *v47 = v27;
      _os_log_impl(&dword_2383F8000, v12, v46, "Failed to fetch order for %s with error: %@", v21, 0x16u);
      sub_238455DD4(v47);
      MEMORY[0x23EE64DF0](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x23EE64DF0](v48, -1, -1);
      MEMORY[0x23EE64DF0](v21, -1, -1);

      (*(v19 + 8))(v49, v50);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v19 + 8))(v18, v20);
    }
  }

  else
  {
    v28 = v5;
    if (v5)
    {
      v29 = v0[15];
      v30 = v0[12];
      v31 = v0[13];
      v32 = v0[8];
      v51 = v0[7];
      v33 = *(v0[4] + qword_27DF12AD0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23875C2D0();

      v34 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
      v35 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
      v36 = *(v35 + 72);
      v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2387632F0;
      v39 = v38 + v37;
      sub_238757D40();
      (*(v31 + 32))(v39, v29, v30);
      v40 = (v39 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
      *v40 = v51;
      v40[1] = v32;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v0[3] = v38;

      sub_23875C2E0();
    }
  }

  v42 = v0[14];
  v41 = v0[15];
  v43 = v0[11];

  v44 = v0[1];

  return v44();
}

uint64_t sub_23866D8EC()
{
  v37 = v0;
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[21];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[5];
  sub_23875C180();
  (*(v5 + 16))(v4, v8, v6);
  v9 = v3;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  if (v12)
  {
    v35 = v0[9];
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v19 = 136315394;
    sub_2386729C4(&qword_27DF12BD8, MEMORY[0x277CC7F28]);
    v34 = v16;
    v20 = sub_23875F600();
    v31 = v11;
    v22 = v21;
    (*(v14 + 8))(v13, v15);
    v23 = sub_2384615AC(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v3;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v32 = v25;
    _os_log_impl(&dword_2383F8000, v10, v31, "Failed to fetch order for %s with error: %@", v19, 0x16u);
    sub_238455DD4(v32);
    MEMORY[0x23EE64DF0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x23EE64DF0](v33, -1, -1);
    MEMORY[0x23EE64DF0](v19, -1, -1);

    (*(v17 + 8))(v34, v35);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v17 + 8))(v16, v18);
  }

  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[11];

  v29 = v0[1];

  return v29();
}

uint64_t sub_23866DBB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875EA80();
  v10 = v9;
  v11 = sub_23875EA80();
  v13 = v12;
  v14 = sub_23875EA80();
  v16 = v15;
  if (a6)
  {
    sub_23875EA80();
  }

  v17 = a1;
  sub_23867223C(v8, v10, v11, v13, v14, v16);
}

void sub_23866DD04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v20[1] = *&v1[qword_27DF12AC8];
  sub_238758890();
  v12 = sub_238758A30();
  v13 = sub_23875ED80();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v5 + 16))(v7, a1, v4);
  sub_23875ED50();
  v14 = v2;
  v15 = v12;
  v16 = sub_23875ED40();
  v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
  (*(v5 + 32))(&v18[v17], v7, v4);
  sub_2386C3BA4(0, 0, v11, &unk_23877BC78, v18);
}

uint64_t sub_23866DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_23875B940();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = sub_23875C1E0();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v13 = sub_238759BE0();
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_23875ED50();
  v6[25] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v6[26] = v16;
  v6[27] = v17;
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23866E15C, v16, v17);
}

uint64_t sub_23866E15C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0[9] + qword_27DF12AC8);
  v0[28] = sub_238758870();
  v2 = *(MEMORY[0x277CC6D90] + 4);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_23866E234;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282117410]();
}

uint64_t sub_23866E234()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v11 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_23866ED80;
  }

  else
  {
    v7 = v2[28];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_23866E384;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23866E384()
{
  v123 = v0;
  v122[2] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 80) persistentStoreCoordinator];
  if (v1 && (v2 = v1, v3 = *(v0 + 88), v4 = sub_23875B860(), v5 = [v2 managedObjectIDForURIRepresentation_], v4, v2, v5))
  {
    v6 = *(v0 + 80);
    *(v0 + 32) = 0;
    v7 = [v6 existingObjectWithID:v5 error:v0 + 32];
    v8 = *(v0 + 32);
    if (v7)
    {
      v9 = v7;
      sub_238757DF0();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = *(v0 + 200);
        v13 = *(v0 + 72);
        v14 = v8;

        v15 = *(v13 + qword_27DF12AD0);
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = v9;
        sub_23875C2D0();

        v17 = *(v0 + 64);
        OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v11, 0, 0, 0, 0);
      }

      else
      {
        sub_238759C20();
        v70 = swift_dynamicCastClass();
        v71 = v8;
        if (v70)
        {
          v72 = *(v0 + 192);
          v73 = *(v0 + 168);
          v74 = *(v0 + 176);
          sub_238759BF0();
          v75 = (*(v74 + 88))(v72, v73);
          if (v75 == *MEMORY[0x277CC7C50])
          {
            v77 = *(v0 + 192);
            v76 = *(v0 + 200);
            v78 = *(v0 + 168);
            v79 = *(v0 + 176);
            v80 = *(v0 + 72);

            (*(v79 + 96))(v77, v78);
            v81 = *v77;
            v82 = *(v80 + qword_27DF12AD0);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23875C2D0();

            v83 = *(v0 + 56);
            OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v81, 0, 0, 0, 0);
          }

          else
          {
            v93 = *(v0 + 168);
            v94 = *(v0 + 176);
            if (v75 != *MEMORY[0x277CC7C58])
            {
              v110 = *(v0 + 184);
              v122[0] = 0;
              v122[1] = 0xE000000000000000;
              sub_23875F470();
              *(v0 + 16) = 0;
              *(v0 + 24) = 0xE000000000000000;
              v111 = (v0 + 16);
              MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
              sub_238759BF0();
              sub_23875F510();
              (*(v94 + 8))(v110, v93);
              v112 = *v111;
              v113 = v111[1];
              result = sub_23875F520();
              v114 = *MEMORY[0x277D85DE8];
              return result;
            }

            v96 = *(v0 + 192);
            v95 = *(v0 + 200);
            v97 = *(v0 + 72);

            (*(v94 + 96))(v96, v93);
            v98 = *v96;
            v99 = *(v97 + qword_27DF12AD0);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23875C2D0();

            v100 = *(v0 + 40);
            v101 = [v98 trackedOrderIdentifier];
            v102 = sub_23875EA80();
            v104 = v103;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
            v105 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
            v106 = *(v105 + 72);
            v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_2387632F0;
            v109 = (v108 + v107);
            *v109 = v102;
            v109[1] = v104;
            v109[2] = 0;
            v109[3] = 0;
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 48) = v108;
            sub_23875C2E0();
          }
        }

        else
        {
          v84 = *(v0 + 200);
          v85 = *(v0 + 160);

          sub_23875C180();
          v86 = sub_23875C1B0();
          v87 = sub_23875EFE0();
          v88 = os_log_type_enabled(v86, v87);
          v89 = *(v0 + 160);
          v90 = *(v0 + 120);
          v91 = *(v0 + 128);
          if (v88)
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_2383F8000, v86, v87, "Unexpected object type", v92, 2u);
            MEMORY[0x23EE64DF0](v92, -1, -1);
          }

          else
          {
          }

          (*(v91 + 8))(v89, v90);
        }
      }
    }

    else
    {
      v49 = *(v0 + 200);
      v50 = *(v0 + 136);
      v51 = v8;

      v52 = sub_23875B730();

      swift_willThrow();
      sub_23875C180();
      v53 = v5;
      v54 = v52;
      v55 = sub_23875C1B0();
      v56 = sub_23875EFE0();

      v57 = os_log_type_enabled(v55, v56);
      v59 = *(v0 + 128);
      v58 = *(v0 + 136);
      v60 = *(v0 + 120);
      if (v57)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v122[0] = v115;
        *v61 = 136315394;
        v121 = v58;
        v63 = [v53 debugDescription];
        v117 = v53;
        v119 = v60;
        v64 = sub_23875EA80();
        v66 = v65;

        v67 = sub_2384615AC(v64, v66, v122);

        *(v61 + 4) = v67;
        *(v61 + 12) = 2112;
        v68 = v52;
        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 14) = v69;
        *v62 = v69;
        _os_log_impl(&dword_2383F8000, v55, v56, "Failed to fetch order for %s with error: %@", v61, 0x16u);
        sub_238455DD4(v62);
        MEMORY[0x23EE64DF0](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v115);
        MEMORY[0x23EE64DF0](v115, -1, -1);
        MEMORY[0x23EE64DF0](v61, -1, -1);

        (*(v59 + 8))(v121, v119);
      }

      else
      {

        (*(v59 + 8))(v58, v60);
      }
    }
  }

  else
  {
    v18 = *(v0 + 200);
    v19 = *(v0 + 152);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);

    sub_23875C180();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 152);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 96);
    if (v26)
    {
      v120 = *(v0 + 120);
      v33 = swift_slowAlloc();
      v116 = v25;
      v34 = swift_slowAlloc();
      v122[0] = v34;
      *v33 = 136315138;
      v35 = sub_23875B800();
      v118 = v27;
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = sub_2384615AC(v35, v37, v122);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2383F8000, v24, v116, "Could not create object ID for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x23EE64DF0](v34, -1, -1);
      MEMORY[0x23EE64DF0](v33, -1, -1);

      (*(v28 + 8))(v118, v120);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v28 + 8))(v27, v29);
    }
  }

  v40 = *(v0 + 184);
  v39 = *(v0 + 192);
  v42 = *(v0 + 152);
  v41 = *(v0 + 160);
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  v45 = *(v0 + 112);

  v46 = *(v0 + 8);
  v47 = *MEMORY[0x277D85DE8];

  return v46();
}

uint64_t sub_23866ED80()
{
  v135 = v0;
  v134[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);

  sub_23875C180();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 240);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to process remote changes with error: %@", v9, 0xCu);
    sub_238455DD4(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v13 = [*(v0 + 80) persistentStoreCoordinator];
  if (v13 && (v14 = v13, v15 = *(v0 + 88), v16 = sub_23875B860(), v17 = [v14 managedObjectIDForURIRepresentation_], v16, v14, v17))
  {
    v18 = *(v0 + 80);
    *(v0 + 32) = 0;
    v19 = [v18 existingObjectWithID:v17 error:v0 + 32];
    v20 = *(v0 + 32);
    if (v19)
    {
      v21 = v19;
      sub_238757DF0();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = *(v0 + 200);
        v25 = *(v0 + 72);
        v26 = v20;

        v27 = *(v25 + qword_27DF12AD0);
        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v21;
        sub_23875C2D0();

        v29 = *(v0 + 64);
        OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v23, 0, 0, 0, 0);
      }

      else
      {
        sub_238759C20();
        v82 = swift_dynamicCastClass();
        v83 = v20;
        if (v82)
        {
          v84 = *(v0 + 192);
          v85 = *(v0 + 168);
          v86 = *(v0 + 176);
          sub_238759BF0();
          v87 = (*(v86 + 88))(v84, v85);
          if (v87 == *MEMORY[0x277CC7C50])
          {
            v89 = *(v0 + 192);
            v88 = *(v0 + 200);
            v90 = *(v0 + 168);
            v91 = *(v0 + 176);
            v92 = *(v0 + 72);

            (*(v91 + 96))(v89, v90);
            v93 = *v89;
            v94 = *(v92 + qword_27DF12AD0);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23875C2D0();

            v95 = *(v0 + 56);
            OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v93, 0, 0, 0, 0);
          }

          else
          {
            v105 = *(v0 + 168);
            v106 = *(v0 + 176);
            if (v87 != *MEMORY[0x277CC7C58])
            {
              v122 = *(v0 + 184);
              v134[0] = 0;
              v134[1] = 0xE000000000000000;
              sub_23875F470();
              *(v0 + 16) = 0;
              *(v0 + 24) = 0xE000000000000000;
              v123 = (v0 + 16);
              MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
              sub_238759BF0();
              sub_23875F510();
              (*(v106 + 8))(v122, v105);
              v124 = *v123;
              v125 = v123[1];
              result = sub_23875F520();
              v126 = *MEMORY[0x277D85DE8];
              return result;
            }

            v108 = *(v0 + 192);
            v107 = *(v0 + 200);
            v109 = *(v0 + 72);

            (*(v106 + 96))(v108, v105);
            v110 = *v108;
            v111 = *(v109 + qword_27DF12AD0);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23875C2D0();

            v112 = *(v0 + 40);
            v113 = [v110 trackedOrderIdentifier];
            v114 = sub_23875EA80();
            v116 = v115;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
            v117 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
            v118 = *(v117 + 72);
            v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
            v120 = swift_allocObject();
            *(v120 + 16) = xmmword_2387632F0;
            v121 = (v120 + v119);
            *v121 = v114;
            v121[1] = v116;
            v121[2] = 0;
            v121[3] = 0;
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 48) = v120;
            sub_23875C2E0();
          }
        }

        else
        {
          v96 = *(v0 + 200);
          v97 = *(v0 + 160);

          sub_23875C180();
          v98 = sub_23875C1B0();
          v99 = sub_23875EFE0();
          v100 = os_log_type_enabled(v98, v99);
          v101 = *(v0 + 160);
          v102 = *(v0 + 120);
          v103 = *(v0 + 128);
          if (v100)
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_2383F8000, v98, v99, "Unexpected object type", v104, 2u);
            MEMORY[0x23EE64DF0](v104, -1, -1);
          }

          else
          {
          }

          (*(v103 + 8))(v101, v102);
        }
      }
    }

    else
    {
      v61 = *(v0 + 200);
      v62 = *(v0 + 136);
      v63 = v20;

      v64 = sub_23875B730();

      swift_willThrow();
      sub_23875C180();
      v65 = v17;
      v66 = v64;
      v67 = sub_23875C1B0();
      v68 = sub_23875EFE0();

      v69 = os_log_type_enabled(v67, v68);
      v71 = *(v0 + 128);
      v70 = *(v0 + 136);
      v72 = *(v0 + 120);
      if (v69)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v134[0] = v127;
        *v73 = 136315394;
        v133 = v70;
        v75 = [v65 debugDescription];
        v129 = v65;
        v131 = v72;
        v76 = sub_23875EA80();
        v78 = v77;

        v79 = sub_2384615AC(v76, v78, v134);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2112;
        v80 = v64;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 14) = v81;
        *v74 = v81;
        _os_log_impl(&dword_2383F8000, v67, v68, "Failed to fetch order for %s with error: %@", v73, 0x16u);
        sub_238455DD4(v74);
        MEMORY[0x23EE64DF0](v74, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v127);
        MEMORY[0x23EE64DF0](v127, -1, -1);
        MEMORY[0x23EE64DF0](v73, -1, -1);

        (*(v71 + 8))(v133, v131);
      }

      else
      {

        (*(v71 + 8))(v70, v72);
      }
    }
  }

  else
  {
    v30 = *(v0 + 200);
    v31 = *(v0 + 152);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);

    sub_23875C180();
    (*(v33 + 16))(v32, v35, v34);
    v36 = sub_23875C1B0();
    v37 = sub_23875EFE0();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 152);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v44 = *(v0 + 96);
    if (v38)
    {
      v132 = *(v0 + 120);
      v45 = swift_slowAlloc();
      v128 = v37;
      v46 = swift_slowAlloc();
      v134[0] = v46;
      *v45 = 136315138;
      v47 = sub_23875B800();
      v130 = v39;
      v49 = v48;
      (*(v43 + 8))(v42, v44);
      v50 = sub_2384615AC(v47, v49, v134);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_2383F8000, v36, v128, "Could not create object ID for %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x23EE64DF0](v46, -1, -1);
      MEMORY[0x23EE64DF0](v45, -1, -1);

      (*(v40 + 8))(v130, v132);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
      (*(v40 + 8))(v39, v41);
    }
  }

  v52 = *(v0 + 184);
  v51 = *(v0 + 192);
  v54 = *(v0 + 152);
  v53 = *(v0 + 160);
  v56 = *(v0 + 136);
  v55 = *(v0 + 144);
  v57 = *(v0 + 112);

  v58 = *(v0 + 8);
  v59 = *MEMORY[0x277D85DE8];

  return v58();
}

void sub_23866F8A8(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_23875B940();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875C1E0();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v46 = 0;
  v12 = sub_23875B860();
  v13 = swift_allocObject();
  *(v13 + 16) = &v46;
  *(v13 + 24) = v2;
  v14 = swift_allocObject();
  v14[2] = sub_238671CF8;
  v14[3] = v13;
  aBlock[4] = sub_238671D00;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238670C54;
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  aBlock[0] = 0;
  [v11 coordinateReadingItemAtURL:v12 options:0 error:aBlock byAccessor:v15];
  _Block_release(v15);

  v17 = aBlock[0];
  v18 = aBlock[0];
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  if (v46)
  {

LABEL_7:

LABEL_9:
    goto LABEL_10;
  }

  if (!v18)
  {

    goto LABEL_9;
  }

  v18 = v18;
  if ([v18 code] == 3072)
  {

    goto LABEL_7;
  }

  v20 = *&v16[qword_27DF12AD0];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = 0x8000000000000000;

  sub_23875C2E0();
  v21 = v45;
  sub_23875C180();
  v23 = v43;
  v22 = v44;
  (*(v43 + 16))(v7, a1, v44);
  v24 = v18;
  v25 = sub_23875C1B0();
  v26 = sub_23875EFE0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v27 = 136315394;
    sub_2386729C4(&qword_27DF0D3A8, MEMORY[0x277CC9260]);
    v38 = v25;
    v28 = sub_23875F600();
    v29 = v22;
    v30 = v28;
    v32 = v31;
    (*(v23 + 8))(v7, v29);
    v33 = sub_2384615AC(v30, v32, aBlock);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v24;
    v34 = v39;
    *v39 = v17;
    v35 = v24;
    v36 = v38;
    _os_log_impl(&dword_2383F8000, v38, v26, "Failed to load order from URL %s with error: %@", v27, 0x16u);
    sub_238455DD4(v34);
    MEMORY[0x23EE64DF0](v34, -1, -1);
    v37 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x23EE64DF0](v37, -1, -1);
    MEMORY[0x23EE64DF0](v27, -1, -1);

    (*(v41 + 8))(v45, v42);
  }

  else
  {

    (*(v23 + 8))(v7, v22);
    (*(v41 + 8))(v21, v42);
  }

LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23866FE4C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v79 = a3;
  v80 = a1;
  v4 = sub_23875C1E0();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v54 - v8;
  v9 = sub_23875A620();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BC40();
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  v60 = sub_238758FA0();
  v59 = *(v60 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23875A710();
  v64 = *(v21 - 8);
  v65 = v21;
  v22 = *(v64 + 64);
  MEMORY[0x28223BE20](v21);
  v66 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_238758700();
  v68 = *(v71 - 8);
  v24 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875B940();
  v81 = *(v26 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v69 = &v54 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v54 - v31;
  sub_23875ED50();
  v75 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = 1;
  (*(v81 + 16))(v32, v80, v26);
  v33 = sub_23875B8C0();
  v34 = sub_23875B950();
  v36 = sub_2386620B4(v34, v35);
  v54 = v20;
  v58 = v36;
  v55 = v13;
  v56 = v12;
  if (v33)
  {
    sub_23875B8A0();
  }

  v72 = *(v81 + 8);
  v72(v32, v26);
  v82 = *(v79 + qword_27DF12AC8);
  sub_238758890();
  v37 = sub_238758A30();
  (*(v68 + 16))(v67, v58 + OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content, v71);
  sub_2387586C0();
  sub_238757DF0();
  v57 = v37;
  v38 = sub_238757D50();
  v40 = v57;
  v41 = v71;
  if (v38)
  {
    v42 = v54;
    v43 = v38;
    sub_238757D90();
    v44 = v61;
    sub_238758F80();
    (*(v59 + 8))(v42, v60);
    v45 = v62;
    v46 = v67;
    sub_2387586F0();
    sub_2386729C4(&unk_27DF12BC0, MEMORY[0x277CC9578]);
    v47 = v55;
    LOBYTE(v42) = sub_23875E9B0();
    v48 = *(v63 + 8);
    v48(v45, v47);
    v48(v44, v47);
    v49 = *(v79 + qword_27DF12AD0);
    v50 = v68;
    v51 = v66;
    if (v42)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23875C2D0();

      v52 = v82;
      OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v43, 0, 0, 0, 0);
    }

    else
    {
      sub_238661324(v58);
    }

    (*(v64 + 8))(v51, v65);
    (*(v50 + 8))(v46, v41);
  }

  else
  {
    v53 = *(v79 + qword_27DF12AD0);
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = v58;

    sub_23875C2E0();

    (*(v64 + 8))(v66, v65);
    (*(v68 + 8))(v67, v41);
  }
}

uint64_t sub_238670C54(uint64_t a1)
{
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23875B8B0();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238670D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_23875B940();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v12 = a1;
  a5(v11);

  (*(v8 + 8))(v11, v7);
}

uint64_t OrderManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v22 = v1[3];
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  swift_getKeyPath();
  v27 = v30;
  v28 = v31;
  v29 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A48, &qword_23877B9A0);
  sub_23875E300();

  v23[6] = v25;
  v24 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A50, &qword_23877B9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A58, &qword_23877B9B0);
  sub_23843A3E8(&qword_27DF12A60, &qword_27DF12A50, &qword_23877B9A8);
  sub_23843A3E8(&qword_27DF12A68, &qword_27DF12A50, &qword_23877B9A8);
  sub_23843A3E8(&qword_27DF12A70, &qword_27DF12A50, &qword_23877B9A8);
  v6 = type metadata accessor for OrderNavigationDestination(255);
  v7 = type metadata accessor for OrderNavigationDestinationView(255);
  sub_2386715C8();
  sub_2386729C4(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  v23[1] = v6;
  v23[2] = v7;
  v23[5] = sub_2386729C4(&qword_27DF12A88, type metadata accessor for OrderNavigationDestinationView);
  swift_getOpaqueTypeConformance2();
  sub_23875C8E0();
  KeyPath = swift_getKeyPath();
  v23[3] = sub_238758890();
  v23[4] = MEMORY[0x277CC70D0];
  v23[0] = v3;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A90, &qword_23877B9E0) + 36));
  sub_23845C998(v23, (v9 + 1));
  *v9 = KeyPath;

  __swift_destroy_boxed_opaque_existential_1(v23);
  v10 = swift_getKeyPath();
  v23[0] = v3;
  v11 = sub_238758A30();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A98, &qword_23877BA18) + 36));
  *v12 = v10;
  v12[1] = v11;
  v13 = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12AA0, &unk_23877BA48) + 36));
  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90) + 28);
  sub_23875C180();
  *v14 = v13;
  v16 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v17 = v23[0];
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12AB0, &qword_23877BAA0) + 36));
  *v18 = v16;
  v18[1] = v17;
  v19 = swift_getKeyPath();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12AB8, &qword_23877BAD0) + 36));
  *v20 = v19;
  v20[1] = v22;
}

uint64_t sub_238671390()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);

  sub_23875C7A0();
  type metadata accessor for OrderNavigationDestination(0);
  type metadata accessor for OrderNavigationDestinationView(0);
  sub_2386715C8();
  sub_2386729C4(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_2386729C4(&qword_27DF12A88, type metadata accessor for OrderNavigationDestinationView);
  sub_23875DDD0();
  sub_2383FC164();

  sub_2384B4E98(KeyPath, 0);
}

uint64_t sub_2386715BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_238671390();
}

unint64_t sub_2386715C8()
{
  result = qword_27DF12A78;
  if (!qword_27DF12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A78);
  }

  return result;
}

uint64_t sub_23867161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238672958(a1, a2);
}

uint64_t sub_2386716C8@<X0>(void *a1@<X8>)
{
  sub_238672904();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_238671718(void **a1)
{
  v1 = *a1;
  sub_238672904();
  v2 = v1;
  return sub_23875CDD0();
}

unint64_t sub_238671838()
{
  result = qword_27DF12B58;
  if (!qword_27DF12B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12AB8, &qword_23877BAD0);
    sub_2386718F0();
    sub_23843A3E8(&qword_27DF12BA8, &unk_27DF12BB0, &qword_23877BC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B58);
  }

  return result;
}

unint64_t sub_2386718F0()
{
  result = qword_27DF12B60;
  if (!qword_27DF12B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12AB0, &qword_23877BAA0);
    sub_2386719A8();
    sub_23843A3E8(&qword_27DF12B98, &qword_27DF12BA0, &qword_23877BC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B60);
  }

  return result;
}

unint64_t sub_2386719A8()
{
  result = qword_27DF12B68;
  if (!qword_27DF12B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12AA0, &unk_23877BA48);
    sub_238671A60();
    sub_23843A3E8(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B68);
  }

  return result;
}

unint64_t sub_238671A60()
{
  result = qword_27DF12B70;
  if (!qword_27DF12B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A98, &qword_23877BA18);
    sub_238671B18();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B70);
  }

  return result;
}

unint64_t sub_238671B18()
{
  result = qword_27DF12B78;
  if (!qword_27DF12B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A90, &qword_23877B9E0);
    sub_23843A3E8(&qword_27DF12B80, &unk_27DF12B88, &qword_23877BC08);
    sub_23843A3E8(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B78);
  }

  return result;
}

uint64_t sub_238671BFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238671C7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238671D40(v2);

  return sub_23875C2E0();
}

uint64_t sub_238671D00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238671D40(uint64_t result)
{
  if ((~result & 0xF000000000000004) != 0)
  {
    return sub_238671D58(result);
  }

  return result;
}

uint64_t sub_238671D58(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_238671D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v23[3] = sub_238759370();
  v23[4] = MEMORY[0x277CC78A8];
  v23[0] = a1;
  *(a2 + 16) = 0;
  v14 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v22[0] = [objc_allocWithZone(type metadata accessor for OrderNavigationModel()) init];
  sub_23875C290();
  (*(v10 + 32))(a2 + v14, v13, v9);
  v15 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v22[0] = 0xF000000000000004;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12C00, &qword_23877B440);
  sub_23875C290();
  (*(v5 + 32))(a2 + v15, v8, v4);
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v16 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet) = v16;
  sub_23845C998(v23, a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v17 = v22[0];
  sub_2386729C4(&qword_27DF128F8, type metadata accessor for OrderNavigationModel);
  v18 = sub_23875C260();

  v22[0] = v18;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2386639DC;
  *(v20 + 24) = v19;
  sub_23875C280();
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return a2;
}

uint64_t sub_238672138(uint64_t a1)
{
  v4 = *(sub_23875B940() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2384494A4;

  return sub_23866DF48(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23867223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a5;
  v38 = a6;
  v35 = a1;
  v36 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v34 = &v32 - v10;
  v12 = sub_23875A710();
  v33 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v39 = *&v6[qword_27DF12AC8];
  sub_238758890();
  v18 = sub_238758A30();

  sub_23875A6E0();
  v19 = sub_23875ED80();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v20, v17, v12);
  sub_23875ED50();
  v21 = v7;
  v22 = v18;

  v23 = sub_23875ED40();
  v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v23;
  *(v26 + 3) = v27;
  *(v26 + 4) = v21;
  v28 = v33;
  (*(v13 + 32))(&v26[v24], v20, v33);
  *&v26[v25] = v22;
  v29 = &v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
  v30 = v38;
  *v29 = v37;
  *(v29 + 1) = v30;
  sub_2386C3BA4(0, 0, v34, &unk_23877BCB0, v26);

  return (*(v13 + 8))(v17, v28);
}

uint64_t sub_238672530(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_238449A7C;

  return sub_23866D140(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_238672684(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_23875A710() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[3];
  v18 = v1[2];
  v10 = v1[4];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_238449A7C;

  return sub_23866C66C(a1, v18, v9, v10, v1 + v5, v11, v12, v13);
}

uint64_t sub_2386727F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_238449A7C;

  return sub_23866BE04(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_2386728DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_238672904()
{
  result = qword_27DF12C10;
  if (!qword_27DF12C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12C10);
  }

  return result;
}

uint64_t sub_238672958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386729C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238672A14()
{
  sub_2387580D0();
  sub_2387581B0();
  sub_23867467C(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
  sub_23867467C(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);

  return sub_23875AC60();
}

uint64_t sub_238672AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_23875C880();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = v69 - v7;
  v8 = sub_23875D990();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OrderDetailsStatusLabel();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875BE40();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_23875BE20();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_23875BD20();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  v22 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v24 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238674498(v2, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v34 - 8) + 32))(v33, v28, v34);
  v35 = v30[7];
  v36 = sub_238757FA0();
  (*(*(v36 - 8) + 56))(&v33[v35], 1, 1, v36);
  v37 = v30[8];
  v38 = sub_238757F70();
  (*(*(v38 - 8) + 56))(&v33[v37], 1, 1, v38);
  v39 = v30[9];
  v40 = sub_238757F90();
  v41 = *(*(v40 - 8) + 56);
  v71 = v33;
  v41(&v33[v39], 1, 1, v40);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23867467C(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa);
  sub_238759950();
  sub_2386744FC(v24, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v43 = v82;
  v42 = v83;
  v45 = v84;
  v44 = v85;
  v46 = v12[9];
  v47 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v47 - 8) + 56))(&v15[v46], 1, 1, v47);
  *v15 = v43;
  *(v15 + 1) = v42;
  v69[1] = v42;
  v70 = v44;
  *(v15 + 2) = v45;
  *(v15 + 3) = v44;
  v15[32] = 3;
  v48 = &v15[v12[10]];
  *v48 = 2;
  *(v48 + 1) = 0;
  v48[24] = 0;
  *(v48 + 2) = 0;
  v49 = &v15[v12[11]];
  v81 = 0;

  sub_23875E1A0();
  v50 = v83;
  *v49 = v82;
  *(v49 + 1) = v50;
  v51 = &v15[v12[12]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v12[13];
  v82 = 0x403F000000000000;
  v53 = *MEMORY[0x277CE0A50];
  v54 = v73;
  v55 = *(v74 + 104);
  v56 = v75;
  v55(v73, v53, v75);
  sub_23857414C();
  sub_23875C540();
  v57 = v12[14];
  v82 = 0x403C000000000000;
  v55(v54, v53, v56);
  sub_23875C540();
  v58 = v12[15];
  v82 = 0x4018000000000000;
  v55(v54, v53, v56);
  sub_23875C540();

  v59 = v72 + *(type metadata accessor for ExtractedOrderDetailsNoFulfillments(0) + 20);
  v60 = v76;
  sub_2384D5138(v76);
  v62 = v77;
  v61 = v78;
  v63 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277CDF9D8], v79);
  LOBYTE(v59) = sub_23875C870();
  v64 = *(v61 + 8);
  v64(v62, v63);
  v64(v60, v63);
  sub_2386744FC(v71, _s19ShippingFulfillmentO12StatusValuesVMa);
  if (v59)
  {
    v65 = 0x4028000000000000;
  }

  else
  {
    v65 = 0x4030000000000000;
  }

  v66 = v80;
  sub_23867455C(v15, v80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12C40, &unk_23877BDC0);
  v68 = v66 + *(result + 36);
  *v68 = 0x4028000000000000;
  *(v68 + 8) = v65;
  *(v68 + 16) = 0x4028000000000000;
  *(v68 + 24) = v65;
  *(v68 + 32) = 0;
  return result;
}

uint64_t sub_2386732AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_2387581B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BC40();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = sub_2387580D0();
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v71 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v82 = *(v30 - 8);
  v83 = v30;
  v31 = *(v82 + 64);
  MEMORY[0x28223BE20](v30);
  v71 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v81 = &v71 - v34;
  v36 = MEMORY[0x28223BE20](v35);
  v80 = &v71 - v37;
  v38 = [a1 orderContent];
  v85 = v29;
  sub_23875A5B0();

  v75 = v4;
  v76 = v3;
  v39 = *(v4 + 56);
  v40 = 1;
  v86 = v22;
  v39(v22, 1, 1, v3);
  v41 = [a1 isMarkedAsComplete];
  v79 = a1;
  v42 = [a1 isMarkedAsCompleteModificationDate];
  if (v42)
  {
    v43 = v42;
    sub_23875BBE0();

    v40 = 0;
  }

  v44 = v77;
  v45 = v40;
  v46 = v78;
  (*(v77 + 56))(v16, v45, 1, v78);
  v47 = v87;
  v48 = v85;
  if (v41)
  {
    sub_23843981C(v16, v13, &qword_27DF12E00, &unk_238763FC0);
    v49 = (*(v44 + 48))(v13, 1, v46);
    v50 = v86;
    if (v49 != 1)
    {

      sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v50, &qword_27DF0BB68, &unk_2387774E0);
      (*(v84 + 8))(v48, v23);
      v62 = *(v44 + 32);
      v63 = v73;
      v62(v73, v13, v46);
      v55 = v81;
      v62(v81, v63, v46);
      v65 = v82;
      v64 = v83;
      (*(v82 + 104))(v55, *MEMORY[0x277CC83B0], v83);
      goto LABEL_16;
    }

    sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
  }

  v78 = v16;
  v51 = *MEMORY[0x277CC6DF8];
  v52 = v84;
  v53 = *(v84 + 104);
  v53(v26, v51, v23);
  sub_23867467C(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  sub_23875EC40();
  sub_23875EC40();
  v54 = *(v52 + 8);
  v54(v26, v23);
  if (v91 == v90)
  {

    sub_238439884(v78, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v86, &qword_27DF0BB68, &unk_2387774E0);
    v54(v48, v23);
    v55 = v81;
    v53(v81, v51, v23);
    v56 = MEMORY[0x277CC83B8];
LABEL_13:
    v65 = v82;
    v64 = v83;
    (*(v82 + 104))(v55, *v56, v83);
    v47 = v87;
    goto LABEL_16;
  }

  v57 = v74;
  sub_23843981C(v86, v74, &qword_27DF0BB68, &unk_2387774E0);
  v59 = v75;
  v58 = v76;
  if ((*(v75 + 48))(v57, 1, v76) != 1)
  {

    sub_238439884(v78, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v86, &qword_27DF0BB68, &unk_2387774E0);
    v54(v85, v23);
    v66 = *(v59 + 32);
    v67 = v72;
    v66(v72, v57, v58);
    v55 = v81;
    v66(v81, v67, v58);
    v56 = MEMORY[0x277CC83A8];
    goto LABEL_13;
  }

  sub_238439884(v57, &qword_27DF0BB68, &unk_2387774E0);
  v53(v26, *MEMORY[0x277CC6DF0], v23);
  v60 = v85;
  sub_23875EC40();
  sub_23875EC40();

  v54(v26, v23);
  sub_238439884(v78, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v86, &qword_27DF0BB68, &unk_2387774E0);
  if (v89 == v88)
  {
    v54(v60, v23);
    v61 = v71;
    v53(v71, *MEMORY[0x277CC6DE0], v23);
  }

  else
  {
    v61 = v71;
    (*(v84 + 32))(v71, v60, v23);
  }

  v47 = v87;
  v55 = v81;
  v65 = v82;
  v64 = v83;
  (*(v82 + 104))(v61, *MEMORY[0x277CC83B8], v83);
  (*(v65 + 32))(v55, v61, v64);
LABEL_16:
  v68 = *(v65 + 32);
  v69 = v80;
  v68(v80, v55, v64);
  return (v68)(v47, v69, v64);
}

void sub_238673C5C()
{
  sub_2384C5F0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_238673CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_2387581B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = sub_2387580D0();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v54 = a1;
  sub_2387580F0();
  v50 = v3;
  v51 = v4;
  v26 = *(v4 + 56);
  v55 = v17;
  v26(v17, 1, 1, v3);
  v27 = *MEMORY[0x277CC6DF8];
  v28 = v19[13];
  v28(v22, v27, v18);
  sub_23867467C(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  sub_23875EC40();
  sub_23875EC40();
  v47 = v19;
  v29 = v19[1];
  v29(v22, v18);
  if (v62 == v61)
  {
    v30 = sub_238758270();
    (*(*(v30 - 8) + 8))(v54, v30);
    sub_238439884(v55, &qword_27DF0BB68, &unk_2387774E0);
    v29(v25, v18);
    v31 = v53;
    v28(v53, v27, v18);
    v33 = v56;
    v32 = v57;
    (*(v56 + 104))(v31, *MEMORY[0x277CC83B8], v57);
    v34 = v31;
  }

  else
  {
    v35 = v28;
    v36 = v55;
    v37 = v52;
    sub_23843981C(v55, v52, &qword_27DF0BB68, &unk_2387774E0);
    v38 = v37;
    v39 = v50;
    if ((*(v51 + 48))(v38, 1, v50) == 1)
    {
      sub_238439884(v52, &qword_27DF0BB68, &unk_2387774E0);
      v35(v22, *MEMORY[0x277CC6DF0], v18);
      sub_23875EC40();
      sub_23875EC40();
      v40 = sub_238758270();
      (*(*(v40 - 8) + 8))(v54, v40);
      v29(v22, v18);
      sub_238439884(v36, &qword_27DF0BB68, &unk_2387774E0);
      if (v60 == v59)
      {
        v29(v25, v18);
        v41 = v49;
        v35(v49, *MEMORY[0x277CC6DE0], v18);
      }

      else
      {
        v41 = v49;
        (v47[4])(v49, v25, v18);
      }

      v33 = v56;
      v32 = v57;
      v34 = v53;
      (*(v56 + 104))(v41, *MEMORY[0x277CC83B8], v57);
      (*(v33 + 32))(v34, v41, v32);
    }

    else
    {
      v42 = sub_238758270();
      (*(*(v42 - 8) + 8))(v54, v42);
      sub_238439884(v36, &qword_27DF0BB68, &unk_2387774E0);
      v29(v25, v18);
      v43 = *(v51 + 32);
      v44 = v48;
      v43(v48, v52, v39);
      v34 = v53;
      v43(v53, v44, v39);
      v33 = v56;
      v32 = v57;
      (*(v56 + 104))(v34, *MEMORY[0x277CC83A8], v57);
    }
  }

  return (*(v33 + 32))(v58, v34, v32);
}