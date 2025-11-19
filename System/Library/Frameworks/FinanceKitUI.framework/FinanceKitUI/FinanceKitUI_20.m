uint64_t sub_2386345EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_2386346E0, v10, v9);
}

uint64_t sub_2386346E0()
{
  sub_2387579D0();
  v0[10] = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6608] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_238634790;
  v3 = v0[2];

  return MEMORY[0x282116D30](v3);
}

uint64_t sub_238634790()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2386348AC;
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

uint64_t sub_2386348AC()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];

  v6 = v5 + *(type metadata accessor for OrderListRowActionsModifier(0) + 24);
  sub_2384D5160(v4);
  v7 = v1;
  v8 = sub_23875C1B0();
  v9 = sub_23875EFE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2383F8000, v8, v9, "Failed to delete an order: %@", v12, 0xCu);
    sub_238439884(v13, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v16 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_238634A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderListRowActionsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238634AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CD80();
  *a1 = result;
  return result;
}

uint64_t sub_238634B10(uint64_t *a1)
{
  v1 = *a1;

  return sub_23875CD90();
}

uint64_t sub_238634B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238634BA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238449A7C;

  return sub_2386345EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = v1[8];
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

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238634E68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_238634EDC()
{
  v1 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23863338C();
}

uint64_t sub_238634F38(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_238633E50(a1, v6, v7, v1 + v5);
}

id sub_238635028()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27DF2F820 = result;
  return result;
}

void sub_23863505C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = 0;
  v7 = sub_23875EA50();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  v8 = a4;
  v9 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, v8);

  if (v9)
  {

    v10 = qword_27DF08D18;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_27DF2F820;
    [qword_27DF2F820 setDateStyle_];
    [v12 setTimeStyle_];
    sub_2386355C8(v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_23863525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = 0;
  if (a3)
  {
    v5 = sub_23875EA50();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  v6 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = qword_27DF08D18;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_27DF2F820;
  [qword_27DF2F820 setDateStyle_];
  [v9 setTimeStyle_];

  return v8;
}

void sub_2386355C8(void *a1)
{
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v87 - v20;
  v22 = sub_2387587E0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v90 = v14;
  v91 = v27;
  v92 = v24;
  v93 = v25;
  v28 = a1;
  v29 = sub_23875EA50();
  v30 = [v28 propertyForKey_];

  if (v30)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v95 = v99;
  v96 = v100;
  v31 = v92;
  v32 = v93;
  if (!*(&v100 + 1))
  {
    sub_238439884(&v95, &qword_27DF0A4A8, &qword_238767840);
    (*(v32 + 56))(v21, 1, 1, v31);
    goto LABEL_10;
  }

  v33 = swift_dynamicCast();
  (*(v32 + 56))(v21, v33 ^ 1u, 1, v31);
  if ((*(v32 + 48))(v21, 1, v31) == 1)
  {
LABEL_10:
    sub_238439884(v21, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v36 = sub_23875C1B0();
    v37 = sub_23875EFE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2383F8000, v36, v37, "Expected start date property of specifier", v38, 2u);
      MEMORY[0x23EE64DF0](v38, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    return;
  }

  (*(v32 + 32))(v91, v21, v31);
  v34 = sub_23875EA50();
  v35 = [v28 propertyForKey_];

  if (v35)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v95 = v99;
  v96 = v100;
  v39 = v93;
  if (*(&v100 + 1))
  {
    if (swift_dynamicCast())
    {
      v88 = v94;
      v40 = v1;
      sub_2387587B0();
      v41 = sub_2387587D0();
      v42 = swift_allocObject();
      *(v42 + 16) = v28;
      *(v42 + 24) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D90, &qword_238779C00);
      started = type metadata accessor for MenuButton.SharingStartDate(0);
      v44 = *(*(started - 8) + 72);
      v45 = (*(*(started - 8) + 80) + 32) & ~*(*(started - 8) + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_238763310;
      v47 = v46 + v45;
      v48 = qword_27DF08D20;
      v89 = v28;
      v49 = v40;
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = __swift_project_value_buffer(started, qword_27DF2F828);
      sub_23863B344(v50, v47);
      if (qword_27DF08D28 != -1)
      {
        swift_once();
      }

      v51 = __swift_project_value_buffer(started, qword_27DF2F840);
      sub_23863B344(v51, v47 + v44);
      if (qword_27DF08D30 != -1)
      {
        swift_once();
      }

      v52 = __swift_project_value_buffer(started, qword_27DF2F858);
      sub_23863B344(v52, v47 + 2 * v44);
      if (qword_27DF08D38 != -1)
      {
        swift_once();
      }

      v53 = __swift_project_value_buffer(started, qword_27DF2F870);
      sub_23863B344(v53, v47 + 3 * v44);
      v54 = v90;
      sub_23843981C(v17, v90, &qword_27DF12E00, &unk_238763FC0);
      v55 = type metadata accessor for MenuButton.SharingStartDateModel(0);
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      v58 = swift_allocObject();
      sub_238638660(v54, v88, v41 & 1);
      sub_238439884(v17, &qword_27DF12E00, &unk_238763FC0);
      v95 = v58;
      *&v96 = 0x4014000000000000;
      *(&v96 + 1) = v46;
      v97 = sub_23863BA98;
      v98 = v42;
      v59 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D98, &qword_238779C08));

      v60 = sub_23875D080();
      v61 = *&v49[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow];
      *&v49[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = v60;
      v62 = v60;

      v63 = [v62 view];
      if (v63)
      {
        v64 = v63;
        v65 = sub_23875EA50();
        v66 = [v89 propertyForKey_];

        if (v66)
        {
          sub_23875F2E0();
          swift_unknownObjectRelease();
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
        }

        v95 = v99;
        v96 = v100;
        v87 = v42;
        v90 = v62;
        if (*(&v100 + 1))
        {
          sub_238449184(0, &qword_27DF11DA8, 0x277D75D28);
          if (swift_dynamicCast())
          {
            v70 = v94;
            [v94 addChildViewController_];
            v71 = sub_23875EA50();
            [v89 removePropertyForKey_];
          }
        }

        else
        {
          sub_238439884(&v95, &qword_27DF0A4A8, &qword_238767840);
        }

        v72 = [v49 contentView];
        [v72 addSubview_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_2387632F0;
        *(v73 + 56) = sub_238449184(0, &qword_27DF11DA0, 0x277D75D18);
        *(v73 + 32) = v64;
        v74 = v64;
        v75 = sub_23875EC60();

        [v49 setAccessibilityElements_];

        [v74 setTranslatesAutoresizingMaskIntoConstraints_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_2387798B0;
        v77 = [v49 contentView];
        v78 = objc_opt_self();
        v79 = [v78 constraintWithItem:v77 attribute:5 relatedBy:0 toItem:v74 attribute:5 multiplier:1.0 constant:0.0];

        *(v76 + 32) = v79;
        v80 = [v49 contentView];
        v81 = [v78 constraintWithItem:v80 attribute:6 relatedBy:0 toItem:v74 attribute:6 multiplier:1.0 constant:0.0];

        *(v76 + 40) = v81;
        v82 = [v49 contentView];
        v83 = [v78 constraintWithItem:v82 attribute:3 relatedBy:0 toItem:v74 attribute:3 multiplier:1.0 constant:0.0];

        *(v76 + 48) = v83;
        v84 = [v49 contentView];
        v85 = [v78 constraintWithItem:v84 attribute:4 relatedBy:0 toItem:v74 attribute:4 multiplier:1.0 constant:0.0];

        *(v76 + 56) = v85;
        sub_238449184(0, &qword_27DF151F0, 0x277CCAAD0);
        v86 = sub_23875EC60();

        [v78 activateConstraints_];

        (*(v93 + 8))(v91, v92);
      }

      else
      {
        (*(v93 + 8))(v91, v92);
      }

      return;
    }
  }

  else
  {
    sub_238439884(&v95, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v67 = sub_23875C1B0();
  v68 = sub_23875EFE0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2383F8000, v67, v68, "Expected showCurrent property of specifier", v69, 2u);
    MEMORY[0x23EE64DF0](v69, -1, -1);
  }

  (*(v4 + 8))(v10, v3);
  (*(v39 + 8))(v91, v92);
}

uint64_t sub_2386362A0(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BC40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = sub_2387587E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;

  sub_23875BBF0();
  sub_23863663C(a1, v11, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_238439884(v15, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2383F8000, v24, v25, "Failed to create AccountStartDate", v26, 2u);
      MEMORY[0x23EE64DF0](v26, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v20, v23, v16);
    v28 = sub_23875F660();
    v29 = sub_23875EA50();
    v30 = v32;
    [v32 setProperty:v28 forKey:v29];
    swift_unknownObjectRelease();

    [v30 performButtonAction];
    return (*(v17 + 8))(v23, v16);
  }
}

uint64_t sub_23863663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v8;
  v9 = sub_23875BC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = &v45 - v15;
  v54 = sub_23875B650();
  v52 = *(v54 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23875BE20();
  v51 = *(v53 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2387587E0();
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v60 = a1;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  v25 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected;
  if ((*(a1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) & 1) == 0)
  {
    v46 = v24;
    sub_23875BDF0();
    swift_getKeyPath();
    v60 = a1;
    sub_23875BE90();

    if (*(a1 + v25))
    {

      (*(v10 + 8))(v58, v9);
      (*(v51 + 8))(v20, v53);
      v30 = v50;
      (*(v52 + 56))(v50, 1, 1, v54);
    }

    else
    {
      swift_getKeyPath();
      v60 = a1;
      sub_23875BE90();

      v31 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
      swift_beginAccess();
      v30 = v50;
      sub_23843981C(a1 + v31, v50, &qword_27DF11C40, &unk_238779910);
      v32 = v52;
      v33 = v54;
      v34 = (*(v52 + 48))(v30, 1, v54);
      v35 = v58;
      if (v34 != 1)
      {
        v37 = v48;
        (*(v32 + 32))(v48, v30, v33);
        v38 = v49;
        sub_23875BDD0();
        if ((*(v10 + 48))(v38, 1, v9) != 1)
        {
          v39 = *(v10 + 32);
          v45 = v20;
          v40 = v10;
          v41 = v47;
          v39(v47, v38, v9);
          v42 = v55;
          sub_23875BD50();
          (*(v40 + 56))(v42, 0, 1, v9);
          v43 = v46;
          sub_2387587C0();

          v44 = *(v40 + 8);
          v44(v35, v9);
          v44(v41, v9);
          (*(v32 + 8))(v37, v33);
          v24 = v43;
          (*(v51 + 8))(v45, v53);
          goto LABEL_3;
        }

        (*(v10 + 8))(v35, v9);
        (*(v32 + 8))(v37, v33);
        (*(v51 + 8))(v20, v53);
        sub_238439884(v38, &qword_27DF12E00, &unk_238763FC0);
        v29 = 1;
        v28 = v59;
LABEL_9:
        v27 = v56;
        v26 = v57;
        return (*(v27 + 56))(v28, v29, 1, v26);
      }

      (*(v10 + 8))(v35, v9);
      (*(v51 + 8))(v20, v53);
    }

    v28 = v59;
    sub_238439884(v30, &qword_27DF11C40, &unk_238779910);
    v29 = 1;
    goto LABEL_9;
  }

  (*(v10 + 56))(v55, 1, 1, v9);
  sub_2387587C0();

  (*(v10 + 8))(v58, v9);
LABEL_3:
  v27 = v56;
  v26 = v57;
  v28 = v59;
  (*(v56 + 32))(v59, v24, v57);
  v29 = 0;
  return (*(v27 + 56))(v28, v29, 1, v26);
}

id sub_238636DC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238636E74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  v15 = sub_23875B650();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_allocate_value_buffer(started, a2);
  v21 = __swift_project_value_buffer(started, a2);
  v22 = sub_23875BE20();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_23875BE40();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_23875B620();
  (*(v16 + 32))(v21, v19, v15);
  (*(v16 + 56))(v21, 0, 1, v15);
  v24 = started[5];
  v25 = sub_23875BC40();
  result = (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v27 = (v21 + started[6]);
  v28 = v31;
  *v27 = a4;
  v27[1] = v28;
  v29 = (v21 + started[7]);
  *v29 = 0;
  v29[1] = 0;
  return result;
}

uint64_t sub_2386371EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  v15 = sub_23875B650();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_allocate_value_buffer(started, a2);
  v21 = __swift_project_value_buffer(started, a2);
  v22 = sub_23875BE20();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_23875BE40();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_23875B620();
  (*(v16 + 32))(v21, v19, v15);
  (*(v16 + 56))(v21, 0, 1, v15);
  v24 = started[5];
  v25 = sub_23875BC40();
  result = (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v27 = (v21 + started[6]);
  v28 = v31;
  *v27 = a4;
  v27[1] = v28;
  v29 = (v21 + started[7]);
  *v29 = 0;
  v29[1] = 0;
  return result;
}

uint64_t sub_238637520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_23875BC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  sub_23843981C(a1, v7, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_238439884(v7, &qword_27DF12E00, &unk_238763FC0);
    started = type metadata accessor for MenuButton.SharingStartDate(0);
    return (*(*(started - 8) + 56))(a2, 1, 1, started);
  }

  else
  {
    v18 = *(v9 + 32);
    v43 = v9 + 32;
    v44 = v12;
    v42 = v18;
    v18(v15, v7, v8);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v19 = qword_2814F1B90;
    v20 = sub_23875EA50();
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

    sub_23875EA80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2387632F0;
    v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v25 setDateStyle_];
    [v25 setTimeStyle_];
    v26 = sub_23875BB40();
    v27 = [v25 stringFromDate_];

    v28 = sub_23875EA80();
    v30 = v29;

    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_238448C58();
    *(v24 + 32) = v28;
    *(v24 + 40) = v30;
    v31 = sub_23875EAB0();
    v33 = v32;

    v34 = v44;
    v35 = v42;
    v42(v44, v15, v8);
    v36 = sub_23875B650();
    (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
    v37 = type metadata accessor for MenuButton.SharingStartDate(0);
    v38 = v37[5];
    v35(a2 + v38, v34, v8);
    (*(v9 + 56))(a2 + v38, 0, 1, v8);
    v39 = (a2 + v37[6]);
    *v39 = 0x544E4552525543;
    v39[1] = 0xE700000000000000;
    v40 = (a2 + v37[7]);
    *v40 = v31;
    v40[1] = v33;
    return (*(*(v37 - 1) + 56))(a2, 0, 1, v37);
  }
}

uint64_t sub_2386379DC()
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v2 = (v0 + *(started + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v0 + *(started + 24));
    if (qword_2814F0880 != -1)
    {
      v12 = *v5;
      v13 = v5[1];
      swift_once();
    }

    v6 = qword_2814F1B90;
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = sub_23875EA50();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    v3 = sub_23875EA80();
  }

  return v3;
}

uint64_t sub_238637B20()
{
  v1 = v0;
  v2 = sub_23875BC40();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_23875B650();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  sub_23843981C(v1, &v27 - v16, &qword_27DF11C40, &unk_238779910);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_23875F720();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_23875F720();
    sub_23863A85C(&qword_27DF0BFE0, MEMORY[0x277CC8990]);
    sub_23875E960();
    (*(v10 + 8))(v13, v9);
  }

  started = type metadata accessor for MenuButton.SharingStartDate(0);
  sub_23843981C(v1 + started[5], v8, &qword_27DF12E00, &unk_238763FC0);
  v19 = v28;
  if ((*(v28 + 48))(v8, 1, v2) == 1)
  {
    sub_23875F720();
  }

  else
  {
    v20 = v27;
    (*(v19 + 32))(v27, v8, v2);
    sub_23875F720();
    sub_23863A85C(&qword_27DF11C68, MEMORY[0x277CC9578]);
    sub_23875E960();
    (*(v19 + 8))(v20, v2);
  }

  v21 = (v1 + started[6]);
  v22 = *v21;
  v23 = v21[1];
  sub_23875EB30();
  v24 = (v1 + started[7]);
  if (!v24[1])
  {
    return sub_23875F720();
  }

  v25 = *v24;
  sub_23875F720();
  return sub_23875EB30();
}

uint64_t sub_238637F24()
{
  sub_23875F700();
  sub_238637B20();
  return sub_23875F760();
}

uint64_t sub_238637F68()
{
  sub_23875F700();
  sub_238637B20();
  return sub_23875F760();
}

uint64_t sub_238637FA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_23863B344(v5 + v3, a1);
}

uint64_t sub_238638070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_23863B344(v3 + v4, a2);
}

uint64_t sub_238638138(uint64_t a1, uint64_t *a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23863B344(a1, v7);
  v8 = *a2;
  return sub_2386381C4(v7);
}

uint64_t sub_2386381C4(uint64_t a1)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v4 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863B344(v1 + v7, v6);
  v8 = sub_23863AC94(v6, a1);
  sub_23863B4AC(v6);
  if (v8)
  {
    sub_23863B344(a1, v6);
    swift_beginAccess();
    sub_23863B9D0(v6, v1 + v7);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
    sub_23875BE80();
  }

  return sub_23863B4AC(a1);
}

uint64_t sub_238638384(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863BA34(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2386383F0()
{
  swift_getKeyPath();
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  return *(v0 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected);
}

uint64_t sub_238638498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  *a2 = *(v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected);
  return result;
}

uint64_t sub_238638548(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
    sub_23875BE80();
  }

  return result;
}

uint64_t sub_238638660(uint64_t a1, char a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DB0, &unk_238779C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v12 = *(started - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](started);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  sub_23875BEC0();
  sub_238637520(a1, v10);
  if ((*(v12 + 48))(v10, 1, started) == 1)
  {
    sub_238439884(v10, &qword_27DF11DB0, &unk_238779C10);
  }

  else
  {
    sub_23863BAA0(v10, v15);
    if (a2)
    {
      sub_238439884(a1, &qword_27DF12E00, &unk_238763FC0);
      sub_23863BAA0(v15, v18);
      goto LABEL_9;
    }

    sub_23863B4AC(v15);
  }

  if (qword_27DF08D28 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(started, qword_27DF2F840);
  sub_23863B344(v19, v18);
  sub_238439884(a1, &qword_27DF12E00, &unk_238763FC0);
LABEL_9:
  sub_23863BAA0(v18, v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate);
  *(v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) = a3 & 1;
  return v3;
}

uint64_t sub_2386388B4()
{
  sub_23863B4AC(v0 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate);
  v1 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_238638988()
{
  result = type metadata accessor for MenuButton.SharingStartDate(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23875BED0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_238638AA4()
{
  sub_238638B80(319, &qword_27DF11C58, MEMORY[0x277CC8990]);
  if (v0 <= 0x3F)
  {
    sub_238638B80(319, &qword_2814F1158, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2384561E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238638B80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_238638BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_238638C1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_238638C94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875D590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C80, &qword_238779A98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C88, &qword_238779AA0);
  v14 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v38 - v15;
  *v13 = sub_23875D030();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C90, &qword_238779AA8) + 44)];
  *v17 = sub_23875CE60();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C98, &qword_238779AB0);
  sub_2386391F0(v1, &v17[*(v18 + 44)]);
  v19 = sub_23875D7B0();
  sub_23875C3D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CA0, &qword_238779AB8) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_23875D580();
  sub_23843A3E8(&qword_27DF11CA8, &qword_27DF11C80, &qword_238779A98);
  sub_23875DD60();
  (*(v6 + 8))(v9, v5);
  sub_238439884(v13, &qword_27DF11C80, &qword_238779A98);
  v29 = &v16[*(v38 + 36)];
  *v29 = sub_23863A650;
  v29[1] = 0;
  v30 = v1[1];
  v43 = *v1;
  v44 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v31 = v46;
  swift_getKeyPath();
  v43 = v31;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  v32 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  v33 = v39;
  sub_23863B344(v31 + v32, v39);

  v45 = v2[3];
  v46 = v30;
  v34 = v2[5];
  v35 = swift_allocObject();
  v36 = *(v2 + 1);
  v35[1] = *v2;
  v35[2] = v36;
  v35[3] = *(v2 + 2);

  sub_23843981C(&v46, v42, &qword_27DF11CC0, &qword_238779AF0);
  sub_23843981C(&v45, v42, &qword_27DF11CC8, &qword_238779AF8);
  sub_23863B3B0();
  sub_23863A85C(&qword_27DF11C60, type metadata accessor for MenuButton.SharingStartDate);

  sub_23875DF10();

  sub_23863B4AC(v33);
  return sub_238439884(v16, &qword_27DF11C88, &qword_238779AA0);
}

uint64_t sub_2386391F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_23875CFD0();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_23875C850();
  v55 = *(v58 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v52 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CD8, &qword_238779B00);
  v51 = *(v53 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CE0, &qword_238779B08);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = v49 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CE8, &qword_238779B10);
  v13 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v15 = v49 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF0, &qword_238779B18);
  v16 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v63 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = v49 - v19;
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v49[2] = v49;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v49[-2] = a1;
  MEMORY[0x28223BE20](v21);
  v49[-2] = a1;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF8, &qword_238779B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D00, &qword_238779B28);
  sub_23863B518();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D10, &qword_238779B30);
  v23 = sub_23875CDF0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D18, &qword_238779B38);
  v25 = sub_23843A3E8(&qword_27DF11D20, &qword_27DF11D18, &qword_238779B38);
  v68 = v24;
  v69 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v22;
  v69 = v23;
  v70 = OpaqueTypeConformance2;
  v71 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  v27 = v50;
  sub_23875D9D0();
  v28 = v52;
  sub_23875C840();
  v29 = sub_23843A3E8(&qword_27DF11D28, &qword_27DF11CD8, &qword_238779B00);
  v30 = sub_23863A85C(&qword_27DF0C0B8, MEMORY[0x277CDD9E0]);
  v32 = v53;
  v31 = v54;
  v33 = v58;
  sub_23875DF60();
  (*(v55 + 8))(v28, v33);
  (*(v51 + 8))(v27, v32);
  v34 = v64;
  sub_23875CFC0();
  v68 = v32;
  v69 = v33;
  v70 = v29;
  v71 = v30;
  swift_getOpaqueTypeConformance2();
  sub_23863A85C(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v35 = v57;
  v36 = v66;
  sub_23875DB30();
  (*(v65 + 8))(v34, v36);
  (*(v56 + 8))(v31, v35);
  KeyPath = swift_getKeyPath();
  v38 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D30, &qword_238779B70) + 36)];
  *v38 = KeyPath;
  v38[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D38, &qword_238779B78) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v39 = &v15[*(v62 + 36)];
  *v39 = KeyPath;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  sub_23863B59C();
  v44 = v61;
  sub_23875DE70();
  sub_238439884(v15, &qword_27DF11CE8, &qword_238779B10);
  *(v44 + *(v59 + 36)) = 0;
  v45 = v63;
  sub_238422A00(v44, v63);
  v46 = v67;
  sub_238422A00(v45, v67);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D58, &qword_238779B90) + 48);
  *v47 = 0;
  *(v47 + 8) = 0;
  sub_238439884(v44, &qword_27DF11CF0, &qword_238779B18);
  sub_238439884(v45, &qword_27DF11CF0, &qword_238779B18);
}

uint64_t sub_238639A04@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_23875CDF0();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D60, &qword_238779B98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D18, &qword_238779B38);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D10, &qword_238779B30);
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
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

  v21 = sub_23875EA80();
  v23 = v22;

  v46 = v21;
  v47 = v23;
  v45 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1D0();
  v24 = v42;
  v25 = v43;
  v26 = v44;
  swift_getKeyPath();
  v42 = v24;
  v43 = v25;
  v44 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D68, &qword_238779BA0);
  sub_23875E300();

  MEMORY[0x28223BE20](v27);
  type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D70, &qword_238779BA8);
  sub_23863A85C(&qword_27DF11D78, type metadata accessor for MenuButton.SharingStartDate);
  sub_23863B8EC();
  sub_2384397A8();
  sub_23875E280();
  v28 = sub_23843A3E8(&qword_27DF11D20, &qword_27DF11D18, &qword_238779B38);
  sub_23875DBB0();
  (*(v34 + 8))(v11, v8);
  v29 = v38;
  sub_23875CDE0();
  v42 = v8;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  v31 = v41;
  sub_23875DB80();
  (*(v40 + 8))(v29, v31);
  (*(v36 + 8))(v15, v30);
}

uint64_t sub_238639FB8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 24);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CC8, &qword_238779AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF11D88, &qword_27DF11CC8, &qword_238779AF8);
  sub_23863A85C(&qword_27DF11D78, type metadata accessor for MenuButton.SharingStartDate);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0);
  sub_23875E370();
}

uint64_t sub_23863A18C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386379DC();
  sub_2384397A8();
  v3 = sub_23875DAA0();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7 & 1;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_23863A2E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v8 = v36;
  swift_getKeyPath();
  *&v38 = v8;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel);
  sub_23875BE90();

  v9 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863B344(v8 + v9, v7);

  v10 = &v7[*(started + 28)];
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = &v7[*(started + 24)];
    if (qword_2814F0880 != -1)
    {
      v33 = *v13;
      v34 = *(v13 + 1);
      swift_once();
    }

    v14 = qword_2814F1B90;
    v15 = sub_23875EA50();
    v16 = sub_23875EA50();
    v17 = sub_23875EA50();
    v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

    v11 = sub_23875EA80();
    v12 = v19;
  }

  sub_23863B4AC(v7);
  v36 = v11;
  v37 = v12;
  sub_2384397A8();
  v20 = sub_23875DAA0();
  v22 = v21;
  v24 = v23;
  LODWORD(v36) = sub_23875D420();
  v25 = sub_23875DA20();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2384397FC(v20, v22, v24 & 1);

  *a2 = v25;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 256;
  return result;
}

uint64_t sub_23863A650()
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

uint64_t sub_23863A6F4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a3 + 4);
  v4 = *(a3 + 5);
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v5();
}

uint64_t sub_23863A7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_238638C94(a1);
}

uint64_t sub_23863A85C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23863A8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_23875BC40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875BE20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BDF0();
  sub_23875BDD0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(a2, v12);
    v22 = sub_23875B650();
    (*(*(v22 - 8) + 8))(a1, v22);
    (*(v18 + 8))(v21, v17);
    sub_238439884(v11, &qword_27DF12E00, &unk_238763FC0);
    v23 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_23875BD50();
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_2387587C0();
    v24 = *(v13 + 8);
    v24(a2, v12);
    v25 = sub_23875B650();
    (*(*(v25 - 8) + 8))(a1, v25);
    v24(v16, v12);
    (*(v18 + 8))(v21, v17);
    v23 = 0;
  }

  v26 = sub_2387587E0();
  return (*(*(v26 - 8) + 56))(v29, v23, 1, v26);
}

uint64_t sub_23863AC40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CC10();
  *a1 = result;
  return result;
}

uint64_t sub_23863AC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v58 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v58 - v11;
  v12 = sub_23875B650();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C70, &qword_238779A90);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v58 - v23;
  v26 = *(v25 + 56);
  v64 = a1;
  sub_23843981C(a1, &v58 - v23, &qword_27DF11C40, &unk_238779910);
  v65 = a2;
  sub_23843981C(a2, &v24[v26], &qword_27DF11C40, &unk_238779910);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_238439884(v24, &qword_27DF11C40, &unk_238779910);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27DF11C70;
    v29 = &qword_238779A90;
    v30 = v24;
LABEL_14:
    sub_238439884(v30, v28, v29);
    return 0;
  }

  sub_23843981C(v24, v20, &qword_27DF11C40, &unk_238779910);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v20, v12);
    goto LABEL_6;
  }

  (*(v13 + 32))(v16, &v24[v26], v12);
  sub_23863A85C(&qword_27DF11C78, MEMORY[0x277CC8990]);
  v31 = sub_23875E9E0();
  v32 = *(v13 + 8);
  v32(v16, v12);
  v32(v20, v12);
  sub_238439884(v24, &qword_27DF11C40, &unk_238779910);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v34 = started[5];
  v35 = v61;
  v36 = *(v60 + 48);
  v37 = v64;
  sub_23843981C(v64 + v34, v61, &qword_27DF12E00, &unk_238763FC0);
  v38 = v65 + v34;
  v39 = v65;
  sub_23843981C(v38, v35 + v36, &qword_27DF12E00, &unk_238763FC0);
  v41 = v62;
  v40 = v63;
  v42 = *(v62 + 48);
  if (v42(v35, 1, v63) != 1)
  {
    v43 = v59;
    sub_23843981C(v35, v59, &qword_27DF12E00, &unk_238763FC0);
    if (v42(v35 + v36, 1, v40) != 1)
    {
      v45 = v35 + v36;
      v46 = v58;
      (*(v41 + 32))(v58, v45, v40);
      sub_23863A85C(&qword_27DF0DC38, MEMORY[0x277CC9578]);
      v47 = sub_23875E9E0();
      v48 = *(v41 + 8);
      v48(v46, v40);
      v48(v43, v40);
      sub_238439884(v35, &qword_27DF12E00, &unk_238763FC0);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v41 + 8))(v43, v40);
    goto LABEL_13;
  }

  if (v42(v35 + v36, 1, v40) != 1)
  {
LABEL_13:
    v28 = &qword_27DF0DC30;
    v29 = &unk_23876E260;
    v30 = v35;
    goto LABEL_14;
  }

  sub_238439884(v35, &qword_27DF12E00, &unk_238763FC0);
LABEL_18:
  v49 = started[6];
  v50 = *(v37 + v49);
  v51 = *(v37 + v49 + 8);
  v52 = (v39 + v49);
  if (v50 == *v52 && v51 == v52[1] || (sub_23875F630() & 1) != 0)
  {
    v53 = started[7];
    v54 = (v37 + v53);
    v55 = *(v37 + v53 + 8);
    v56 = (v39 + v53);
    v57 = v56[1];
    if (v55)
    {
      if (v57 && (*v54 == *v56 && v55 == v57 || (sub_23875F630() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v57)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_23863B344(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

unint64_t sub_23863B3B0()
{
  result = qword_27DF11CD0;
  if (!qword_27DF11CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C88, &qword_238779AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C80, &qword_238779A98);
    sub_23843A3E8(&qword_27DF11CA8, &qword_27DF11C80, &qword_238779A98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11CD0);
  }

  return result;
}

uint64_t sub_23863B4AC(uint64_t a1)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_23863B518()
{
  result = qword_27DF11D08;
  if (!qword_27DF11D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CF8, &qword_238779B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D08);
  }

  return result;
}

unint64_t sub_23863B59C()
{
  result = qword_27DF11D40;
  if (!qword_27DF11D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CE8, &qword_238779B10);
    sub_23863B628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D40);
  }

  return result;
}

unint64_t sub_23863B628()
{
  result = qword_27DF11D48;
  if (!qword_27DF11D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D38, &qword_238779B78);
    sub_23863B6E0();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D48);
  }

  return result;
}

unint64_t sub_23863B6E0()
{
  result = qword_27DF11D50;
  if (!qword_27DF11D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D30, &qword_238779B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CE0, &qword_238779B08);
    sub_23875CFD0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CD8, &qword_238779B00);
    sub_23875C850();
    sub_23843A3E8(&qword_27DF11D28, &qword_27DF11CD8, &qword_238779B00);
    sub_23863A85C(&qword_27DF0C0B8, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    sub_23863A85C(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C0F0, &qword_27DF0C0F8, &unk_238779B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D50);
  }

  return result;
}

unint64_t sub_23863B8EC()
{
  result = qword_27DF11D80;
  if (!qword_27DF11D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D70, &qword_238779BA8);
    sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D80);
  }

  return result;
}

uint64_t sub_23863B9D0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_23863BA34(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t sub_23863BAA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

void sub_23863BB04()
{
  v1 = [v0 specifier];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  objc_msgSendSuper2(&v5, sel_refreshCellContentsWithSpecifier_, v1);

  [v0 setUserInteractionEnabled_];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }
}

uint64_t sub_23863BBE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = sub_238758CF0();
  v41 = v12;
  swift_getKeyPath();
  v19 = *(*v1 + 136);
  v42 = v2;
  sub_23843A3E8(&qword_27DF11948, &qword_27DF11950, &unk_238779D50);
  sub_23875BE90();

  v20 = *(*v2 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v20, v11, &qword_27DF0A0C0, &qword_238771EF0);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0A0C0, &qword_238771EF0);
    v22 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v22, v8, &qword_27DF0A0C0, &qword_238771EF0);
    if (v21(v8, 1, v12) == 1)
    {
      sub_238439884(v8, &qword_27DF0A0C0, &qword_238771EF0);
      v23 = *(v2 + *(*v2 + 120));
      v24 = v39;
      if (v23)
      {
        v26 = v2[2];
        v25 = v2[3];
        v27 = v23;
        v28 = v38;
        v26();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v28 = v38;
      }

      (*(v13 + 56))(v28, v29, 1, v12);
      swift_beginAccess();
      sub_2385309FC(v28, v2 + v22, &qword_27DF0A0C0, &qword_238771EF0);
      swift_endAccess();
      return sub_23843981C(v2 + v22, v24, &qword_27DF0A0C0, &qword_238771EF0);
    }

    else
    {
      v33 = *(v13 + 32);
      v34 = v37;
      v33(v37, v8, v12);
      v35 = v39;
      v33(v39, v34, v12);
      return (*(v13 + 56))(v35, 0, 1, v12);
    }
  }

  else
  {
    v30 = *(v13 + 32);
    v30(v18, v11, v12);
    v31 = v39;
    v30(v39, v18, v12);
    return (*(v13 + 56))(v31, 0, 1, v12);
  }
}

uint64_t sub_23863C054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_238758BB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = sub_2387582B0();
  v41 = v12;
  swift_getKeyPath();
  v19 = *(*v1 + 136);
  v42 = v2;
  sub_23843A3E8(&qword_27DF11938, &qword_27DF11940, &qword_2387793C8);
  sub_23875BE90();

  v20 = *(*v2 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v20, v11, &qword_27DF0D358, &unk_23876CF80);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0D358, &unk_23876CF80);
    v22 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v22, v8, &qword_27DF0D358, &unk_23876CF80);
    if (v21(v8, 1, v12) == 1)
    {
      sub_238439884(v8, &qword_27DF0D358, &unk_23876CF80);
      v23 = *(v2 + *(*v2 + 120));
      v24 = v39;
      if (v23)
      {
        v26 = v2[2];
        v25 = v2[3];
        v27 = v23;
        v28 = v38;
        v26();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v28 = v38;
      }

      (*(v13 + 56))(v28, v29, 1, v12);
      swift_beginAccess();
      sub_2385309FC(v28, v2 + v22, &qword_27DF0D358, &unk_23876CF80);
      swift_endAccess();
      return sub_23843981C(v2 + v22, v24, &qword_27DF0D358, &unk_23876CF80);
    }

    else
    {
      v33 = *(v13 + 32);
      v34 = v37;
      v33(v37, v8, v12);
      v35 = v39;
      v33(v39, v34, v12);
      return (*(v13 + 56))(v35, 0, 1, v12);
    }
  }

  else
  {
    v30 = *(v13 + 32);
    v30(v18, v11, v12);
    v31 = v39;
    v30(v39, v18, v12);
    return (*(v13 + 56))(v31, 0, 1, v12);
  }
}

uint64_t sub_23863C4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_238758680();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = sub_238759780();
  v41 = v12;
  swift_getKeyPath();
  v19 = *(*v1 + 136);
  v42 = v2;
  sub_23843A3E8(&qword_27DF11918, &qword_27DF11920, &qword_2387793B8);
  sub_23875BE90();

  v20 = *(*v2 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v20, v11, &qword_27DF09520, &unk_2387637E0);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF09520, &unk_2387637E0);
    v22 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v22, v8, &qword_27DF09520, &unk_2387637E0);
    if (v21(v8, 1, v12) == 1)
    {
      sub_238439884(v8, &qword_27DF09520, &unk_2387637E0);
      v23 = *(v2 + *(*v2 + 120));
      v24 = v39;
      if (v23)
      {
        v26 = v2[2];
        v25 = v2[3];
        v27 = v23;
        v28 = v38;
        v26();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v28 = v38;
      }

      (*(v13 + 56))(v28, v29, 1, v12);
      swift_beginAccess();
      sub_2385309FC(v28, v2 + v22, &qword_27DF09520, &unk_2387637E0);
      swift_endAccess();
      return sub_23843981C(v2 + v22, v24, &qword_27DF09520, &unk_2387637E0);
    }

    else
    {
      v33 = *(v13 + 32);
      v34 = v37;
      v33(v37, v8, v12);
      v35 = v39;
      v33(v39, v34, v12);
      return (*(v13 + 56))(v35, 0, 1, v12);
    }
  }

  else
  {
    v30 = *(v13 + 32);
    v30(v18, v11, v12);
    v31 = v39;
    v30(v39, v18, v12);
    return (*(v13 + 56))(v31, 0, 1, v12);
  }
}

uint64_t sub_23863C92C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = sub_238757DF0();
  v41 = v12;
  swift_getKeyPath();
  v19 = *(*v1 + 136);
  v42 = v2;
  sub_23843A3E8(&qword_27DF11A40, &qword_27DF11A48, &qword_23877A090);
  sub_23875BE90();

  v20 = *(*v2 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v20, v11, &qword_27DF11A38, &unk_238779510);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF11A38, &unk_238779510);
    v22 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v22, v8, &qword_27DF11A38, &unk_238779510);
    if (v21(v8, 1, v12) == 1)
    {
      sub_238439884(v8, &qword_27DF11A38, &unk_238779510);
      v23 = *(v2 + *(*v2 + 120));
      v24 = v39;
      if (v23)
      {
        v26 = v2[2];
        v25 = v2[3];
        v27 = v23;
        v28 = v38;
        v26();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v28 = v38;
      }

      (*(v13 + 56))(v28, v29, 1, v12);
      swift_beginAccess();
      sub_2385309FC(v28, v2 + v22, &qword_27DF11A38, &unk_238779510);
      swift_endAccess();
      return sub_23843981C(v2 + v22, v24, &qword_27DF11A38, &unk_238779510);
    }

    else
    {
      v33 = v37;
      sub_2384396E4(v8, v37, &qword_27DF11A30, &qword_23877FEA0);
      v34 = v33;
      v35 = v39;
      sub_2384396E4(v34, v39, &qword_27DF11A30, &qword_23877FEA0);
      return (*(v13 + 56))(v35, 0, 1, v12);
    }
  }

  else
  {
    sub_2384396E4(v11, v18, &qword_27DF11A30, &qword_23877FEA0);
    v30 = v18;
    v31 = v39;
    sub_2384396E4(v30, v39, &qword_27DF11A30, &qword_23877FEA0);
    return (*(v13 + 56))(v31, 0, 1, v12);
  }
}

uint64_t InstitutionConsentManagementView.init(institutionID:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for InstitutionConsentManagementView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2386ED8A0();

  sub_2387582B0();

  return sub_23875C4F0();
}

uint64_t sub_23863CE74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for InstitutionConsentManagementView(0);
  sub_23843981C(v1 + *(v12 + 20), v11, &qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C1E0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t InstitutionConsentManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for InstitutionConsentManagementView(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v4;
  v44 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DB8, &qword_238779C50);
  v5 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v7 = (&v40 - v6);
  v49 = type metadata accessor for MultipleConsentManagementListView(0);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DC0, &qword_238779C58);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v47 = &v40 - v11;
  v46 = type metadata accessor for InstitutionConsentManagementListView(0);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v40 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DC8, &qword_238779C60);
  v14 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD0, &qword_238779C68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF11DE0, &qword_27DF11DD0, &qword_238779C68);
  sub_23875EED0();
  sub_23875EF00();
  if (v53[4] == v53[0])
  {
    (*(v17 + 8))(v23, v16);
    v24 = v44;
    sub_23864AED4(v1, v44, type metadata accessor for InstitutionConsentManagementView);
    v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v26 = swift_allocObject();
    sub_23864B704(v24, v26 + v25, type metadata accessor for InstitutionConsentManagementView);
    *v7 = sub_23864AF9C;
    v7[1] = v26;
    v7[2] = 0;
    v7[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23864ADE8();
    sub_23845D554();
    return sub_23875D1B0();
  }

  else
  {
    v44 = v7;
    v28 = sub_23875EF20();
    v30 = *v29;
    v28(v53, 0);
    v31 = *(v17 + 8);
    v31(v23, v16);
    sub_23875C500();
    sub_23875EED0();
    sub_23875EF00();
    v32 = sub_23875EEF0();
    v31(v20, v16);
    if (v32 == 1)
    {
      v33 = v30;
      v34 = v40;
      sub_23863D838(v33, v40);
      sub_23864AED4(v34, v47, type metadata accessor for InstitutionConsentManagementListView);
      swift_storeEnumTagMultiPayload();
      sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView);
      sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView);
      v35 = v48;
      sub_23875D1B0();
      v36 = type metadata accessor for InstitutionConsentManagementListView;
      v37 = v34;
    }

    else
    {
      v38 = [v30 institutionObject];
      v39 = v41;
      sub_23863DB68(v38, v41);
      sub_23864AED4(v39, v47, type metadata accessor for MultipleConsentManagementListView);
      swift_storeEnumTagMultiPayload();
      sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView);
      sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView);
      v35 = v48;
      sub_23875D1B0();
      v36 = type metadata accessor for MultipleConsentManagementListView;
      v37 = v39;
    }

    sub_23864AF3C(v37, v36);
    sub_23843981C(v35, v44, &qword_27DF11DC8, &qword_238779C60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23864ADE8();
    sub_23845D554();
    sub_23875D1B0();

    return sub_238439884(v35, &qword_27DF11DC8, &qword_238779C60);
  }
}

void sub_23863D838(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for InstitutionConsentManagementListView(0);
  v12 = a2 + v11[7];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  v13 = a2 + v11[8];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v11[9];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v15 = v11[10];
  v16 = sub_238758BB0();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_23843981C(v10, v7, &qword_27DF0D358, &unk_23876CF80);
  sub_23875E1A0();
  sub_238439884(v10, &qword_27DF0D358, &unk_23876CF80);
  v17 = a2 + v11[11];
  sub_23875AAE0();
  v18 = [a1 institutionObject];
  v19 = [v18 managedObjectContext];
  if (v19)
  {
    v20 = v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11950, &unk_238779D50);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *a2 = sub_238629140(v18, v20, sub_23864D8B4, 0);
    a2[1] = 0;
    v24 = a1;
    v25 = [v24 managedObjectContext];
    if (v25)
    {
      v26 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11940, &qword_2387793C8);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      a2[2] = sub_238628C18(v24, v26, sub_23863E320, 0);
      a2[3] = 0;
      v30 = [v24 consentID];
      v31 = sub_23875EA80();
      v33 = v32;

      sub_2386ED9B8(v31, v33);

      v34 = v11[6];
      sub_238759780();
      sub_23875C4F0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23863DB68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v11 = type metadata accessor for MultipleConsentManagementListView(0);
  v12 = v11[6];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[8];
  v14 = sub_238758BB0();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_23843981C(v10, v7, &qword_27DF0D358, &unk_23876CF80);
  sub_23875E1A0();
  sub_238439884(v10, &qword_27DF0D358, &unk_23876CF80);
  v15 = a1;
  v16 = [v15 managedObjectContext];
  if (v16)
  {
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11950, &unk_238779D50);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_238629140(v15, v17, sub_23864D8B4, 0);
    v22 = (a2 + v11[7]);
    *v22 = v21;
    v22[1] = 0;
    v23 = [v15 id];
    sub_23875EA80();

    sub_2386ED8A0();

    v24 = v11[9];
    sub_2387582B0();
    sub_23875C4F0();
    v25 = [v15 id];
    v26 = sub_23875EA80();
    v28 = v27;

    sub_2386ED9DC(v26, v28);

    v29 = v11[10];
    sub_238759780();
    sub_23875C4F0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23863DE5C()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23863CE74(v4);
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2383F8000, v5, v6, "Selected institution was not found in the store, or wasn't connected.", v7, 2u);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_23863E00C()
{
  v22 = sub_238758680();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for InstitutionConsentManagementListView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  v10 = sub_23875EEE0();
  if (!v10)
  {
    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v24 = MEMORY[0x277D84F90];
  sub_2385FE488(0, v10 & ~(v10 >> 63), 0);
  v12 = v24;
  result = sub_23875EED0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v20 = v5;
    v21 = v0 + 32;
    do
    {
      v14 = sub_23875EF20();
      v16 = *v15;
      v14(v23, 0);
      sub_238758690();
      v24 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2385FE488(v17 > 1, v18 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v18 + 1;
      (*(v0 + 32))(v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v22);
      sub_23875EF10();
      --v11;
    }

    while (v11);
    (*(v20 + 8))(v8, v4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_23863E320(void *a1)
{
  v1 = a1;

  return sub_238758BC0();
}

uint64_t sub_23863E358@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v80 = type metadata accessor for InstitutionConsentManagementListView(0);
  v82 = *(v80 - 8);
  v2 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v83 = v3;
  v84 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v62 - v6;
  v7 = sub_23875CE00();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E70, &qword_238779E38);
  v72 = *(OpaqueTypeConformance2 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v71 = &v62 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E78, &qword_238779E40);
  v75 = *(v79 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v73 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E80, &qword_238779E48);
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14);
  v88 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E88, &unk_238779E50);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v81 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v62 - v23;
  v25 = sub_238757B60();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v69 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  v31 = v1[1];
  v90 = *v1;
  v91 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v24);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_238439884(v24, &qword_27DF0A0C0, &qword_238771EF0);
    v32 = 1;
  }

  else
  {
    v67 = v17;
    v63 = v26;
    v33 = *(v26 + 32);
    v64 = v26 + 32;
    v65 = v33;
    v70 = v30;
    v68 = v25;
    v34 = (v33)(v30, v24, v25);
    MEMORY[0x28223BE20](v34);
    v62 = v1;
    v66 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E98, &qword_238779E68);
    sub_23843A3E8(&qword_27DF11EA0, &qword_27DF11E98, &qword_238779E68);
    v35 = v71;
    sub_23875D9C0();
    v90 = sub_238757B50();
    v91 = v36;
    v37 = sub_23843A3E8(&qword_27DF11EA8, &qword_27DF11E70, &qword_238779E38);
    v38 = sub_2384397A8();
    v39 = MEMORY[0x277D837D0];
    v40 = v73;
    v41 = OpaqueTypeConformance2;
    sub_23875DC70();

    (*(v72 + 8))(v35, v41);
    v43 = v76;
    v42 = v77;
    v44 = v78;
    (*(v77 + 104))(v76, *MEMORY[0x277CDDDC0], v78);
    v90 = v41;
    v91 = v39;
    v92 = v37;
    v93 = v38;
    v18 = v66;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v79;
    sub_23875DE50();
    (*(v42 + 8))(v43, v44);
    (*(v75 + 8))(v40, v45);
    v46 = *(v80 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    v47 = v62;
    sub_23875E1D0();
    v48 = v63;
    v49 = v69;
    v50 = v68;
    (*(v63 + 16))(v69, v70, v68);
    v51 = v84;
    sub_23864AED4(v47, v84, type metadata accessor for InstitutionConsentManagementListView);
    v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v53 = (v27 + *(v82 + 80) + v52) & ~*(v82 + 80);
    v54 = swift_allocObject();
    v65(v54 + v52, v49, v50);
    sub_23864B704(v51, v54 + v53, type metadata accessor for InstitutionConsentManagementListView);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EB0, &qword_238779E70);
    v90 = v45;
    v91 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268]);
    v55 = type metadata accessor for BankConnectAuthorizationReconsentView(255);
    v56 = sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
    v90 = v55;
    v91 = v56;
    v17 = v67;
    swift_getOpaqueTypeConformance2();
    v57 = v81;
    v59 = v86;
    v58 = v87;
    v60 = v88;
    sub_23875DEE0();

    sub_238439884(v58, &qword_27DF11E68, &qword_238779E30);
    (*(v85 + 8))(v60, v59);
    (*(v48 + 8))(v70, v68);
    (*(v18 + 32))(v89, v57, v17);
    v32 = 0;
  }

  return (*(v18 + 56))(v89, v32, 1, v17);
}

uint64_t sub_23863EDDC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EC8, &qword_238779E78);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED0, &qword_238779E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED8, &qword_238779E88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE0, &qword_238779E90);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v54 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v56 = &v45 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE8, &qword_238779E98);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v55 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v45 - v31;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23863F420(v32);
  sub_23863FAD8(v56);
  if (sub_238640E4C())
  {
    sub_23864B7C4();
    sub_23875E3D0();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF0, &qword_238779EA0);
  (*(*(v34 - 8) + 56))(v18, v33, 1, v34);
  sub_2384396E4(v18, v21, &qword_27DF11ED8, &qword_238779E88);
  v46 = v12;
  sub_23863FFC0(v12);
  sub_238640514(v6);
  v35 = v55;
  sub_23843981C(v32, v55, &qword_27DF11EE8, &qword_238779E98);
  v48 = v32;
  v36 = v54;
  sub_23843981C(v56, v54, &qword_27DF11EE0, &qword_238779E90);
  v37 = v50;
  sub_23843981C(v21, v50, &qword_27DF11ED8, &qword_238779E88);
  v38 = v12;
  v39 = v51;
  sub_23843981C(v38, v51, &qword_27DF11ED0, &qword_238779E80);
  v47 = v21;
  v40 = v53;
  sub_23843981C(v6, v53, &qword_27DF11EC8, &qword_238779E78);
  v41 = v37;
  v42 = v52;
  sub_23843981C(v35, v52, &qword_27DF11EE8, &qword_238779E98);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF8, &qword_238779EA8);
  sub_23843981C(v36, v42 + v43[12], &qword_27DF11EE0, &qword_238779E90);
  sub_23843981C(v41, v42 + v43[16], &qword_27DF11ED8, &qword_238779E88);
  sub_23843981C(v39, v42 + v43[20], &qword_27DF11ED0, &qword_238779E80);
  sub_23843981C(v40, v42 + v43[24], &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v6, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v46, &qword_27DF11ED0, &qword_238779E80);
  sub_238439884(v47, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v56, &qword_27DF11EE0, &qword_238779E90);
  sub_238439884(v48, &qword_27DF11EE8, &qword_238779E98);
  sub_238439884(v40, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v39, &qword_27DF11ED0, &qword_238779E80);
  sub_238439884(v41, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v54, &qword_27DF11EE0, &qword_238779E90);
  sub_238439884(v55, &qword_27DF11EE8, &qword_238779E98);
}

uint64_t sub_23863F420@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - v5;
  v7 = sub_238757B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v47 - v12;
  v66 = sub_23875A9F0();
  v59 = *(v66 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_238758BD0();
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v65);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_238758680();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23863E00C();
  v63 = *(v24 + 16);
  if (v63)
  {
    v48 = v6;
    v49 = v8;
    v50 = v7;
    v51 = v1;
    v54 = a1;
    v67 = v24;
    v62 = sub_23875ED50();
    result = v67;
    v26 = 0;
    v61 = v67 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v59 += 8;
    v60 = v20 + 16;
    v58 = *MEMORY[0x277CC7288];
    v56 = (v15 + 8);
    v57 = (v15 + 104);
    v55 = (v20 + 8);
    while (1)
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v27 = v20;
      v28 = v19;
      (*(v20 + 16))(v23, v61 + *(v20 + 72) * v26, v19);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v68[3] = sub_23875A820();
      v68[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_23875A7F0();
      v29 = objc_allocWithZone(sub_23875A060());
      v30 = sub_23875A030();
      v31 = v64;
      sub_238758530();
      v32 = sub_23875A9E0();
      v34 = v33;
      (*v59)(v31, v66);
      *v18 = v32;
      v18[1] = v34;
      v35 = v65;
      (*v57)(v18, v58, v65);
      v36 = sub_23875A050();

      (*v56)(v18, v35);
      if (sub_238758550())
      {
        v37 = sub_238758560();
        v19 = v28;
        (*v55)(v23, v28);

        if (!(v36 & 1 | ((v37 & 1) == 0)))
        {

          v38 = v51[1];
          v68[0] = *v51;
          v68[1] = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
          sub_23875E1B0();
          v39 = v48;
          sub_23863BBE8(v48);

          v40 = v49;
          v41 = v50;
          if ((*(v49 + 48))(v39, 1, v50) == 1)
          {
            sub_238439884(v39, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_13:
            v42 = 1;
            a1 = v54;
            goto LABEL_16;
          }

          v43 = v52;
          (*(v40 + 32))(v52, v39, v41);
          v44 = sub_23863E00C();
          v45 = v53;
          (*(v40 + 16))(v53, v43, v41);
          a1 = v54;
          AccountMismatchedInformationTileView.init(accounts:institution:)(v44, v45, v54);
          (*(v40 + 8))(v43, v41);
          v42 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v19 = v28;
        (*v55)(v23, v28);
      }

      ++v26;
      v20 = v27;
      result = v67;
      if (v63 == v26)
      {

        goto LABEL_13;
      }
    }
  }

  v42 = 1;
LABEL_16:
  v46 = type metadata accessor for AccountMismatchedInformationTileView();
  return (*(*(v46 - 8) + 56))(a1, v42, 1, v46);
}

uint64_t sub_23863FAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F60, &qword_23877A038);
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_238758BB0();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_238757B60();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 1);
  v39 = *v1;
  v40 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &qword_27DF0A0C0, &qword_238771EF0);
    return (*(v3 + 56))(v38, 1, 1, v37);
  }

  (*(v19 + 32))(v22, v17, v18);
  v24 = *(v1 + 3);
  v39 = *(v1 + 2);
  v40 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F10, &qword_238779EE8);
  sub_23875E1B0();
  sub_23863C054(v9);

  if ((*(v36 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &qword_27DF0D358, &unk_23876CF80);
    (*(v19 + 8))(v22, v18);
    return (*(v3 + 56))(v38, 1, 1, v37);
  }

  v26 = v13;
  v27 = v36;
  v28 = *(v36 + 32);
  v29 = v26;
  v34 = v26;
  v30 = v28();
  MEMORY[0x28223BE20](v30);
  *(&v34 - 4) = v22;
  *(&v34 - 3) = v29;
  *(&v34 - 2) = v2;
  type metadata accessor for ConsentStatusView(0);
  sub_23864ADA0(&qword_27DF11F68, type metadata accessor for ConsentStatusView);
  v31 = v35;
  sub_23875E3D0();
  v33 = v37;
  v32 = v38;
  (*(v3 + 32))(v38, v31, v37);
  (*(v3 + 56))(v32, 0, 1, v33);
  (*(v27 + 8))(v34, v10);
  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_23863FFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F08, &unk_238779ED8);
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_238758BB0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 24);
  v39 = *(v1 + 16);
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F10, &qword_238779EE8);
  sub_23875E1B0();
  sub_23863C054(v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_238439884(v14, &qword_27DF0D358, &unk_23876CF80);
    return (*(v3 + 56))(v37, 1, 1, v36);
  }

  (*(v16 + 32))(v19, v14, v15);
  v21 = *(type metadata accessor for InstitutionConsentManagementListView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  sub_23875EED0();
  sub_23875EF00();
  (*(v7 + 8))(v10, v6);
  if (v39 == v38)
  {
    (*(v16 + 8))(v19, v15);
    return (*(v3 + 56))(v37, 1, 1, v36);
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  v28 = sub_23875EA80();
  v30 = v29;

  v39 = v28;
  v40 = v30;
  MEMORY[0x28223BE20](v31);
  *(&v35 - 2) = v2;
  *(&v35 - 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F18, &qword_238779EF0);
  sub_23864B840();
  sub_2384397A8();
  v32 = v35;
  sub_23875E3A0();
  v34 = v36;
  v33 = v37;
  (*(v3 + 32))(v37, v32, v36);
  (*(v3 + 56))(v33, 0, 1, v34);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_238640514@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23[-v10];
  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v1[1];
  v24 = *v1;
  v25 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0A0C0, &qword_238771EF0);
    v18 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v13 + 16))(&v7[v3[7]], v16, v12);
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    v19 = v3[5];
    *&v7[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v20 = &v7[v3[6]];
    v23[8] = 0;
    sub_23875E1A0();
    (*(v13 + 8))(v16, v12);
    v21 = v25;
    *v20 = v24;
    *(v20 + 1) = v21;
    sub_23864B704(v7, a1, type metadata accessor for RevokeConsentSection);
    v18 = 0;
  }

  return (*(v4 + 56))(a1, v18, 1, v3);
}

uint64_t sub_238640834@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v4 = type metadata accessor for InstitutionConsentManagementListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for BankConnectAuthorizationReconsentView(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = v7[5];
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  v13 = &v10[v7[6]];
  sub_238758B90();
  sub_23864AED4(v18[0], v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstitutionConsentManagementListView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_23864B704(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for InstitutionConsentManagementListView);
  *v10 = 0;
  v16 = &v10[v7[7]];
  *v16 = sub_23864B798;
  v16[1] = v15;
  sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
  sub_23875DE20();
  sub_23864AF3C(v10, type metadata accessor for BankConnectAuthorizationReconsentView);
}

uint64_t sub_238640AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = sub_238758BB0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(type metadata accessor for InstitutionConsentManagementListView(0) + 40);
  sub_23843981C(v6, v3, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1C0();
  return sub_238439884(v6, &qword_27DF0D358, &unk_23876CF80);
}

uint64_t sub_238640C20()
{
  v0 = sub_23875A9F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758BD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[3] = sub_23875A820();
  v19[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_23875A7F0();
  v10 = objc_allocWithZone(sub_23875A060());
  v11 = sub_23875A030();
  sub_238758530();
  v12 = sub_23875A9E0();
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  *v9 = v12;
  v9[1] = v14;
  (*(v6 + 104))(v9, *MEMORY[0x277CC7288], v5);
  v15 = sub_23875A050();

  (*(v6 + 8))(v9, v5);
  if (sub_238758550())
  {
    v16 = sub_238758560() & (v15 ^ 1);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_238640E4C()
{
  v1 = sub_23875BC40();
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875AAF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v21 - v12;
  v14 = v0[1];
  v25[0] = *v0;
  v25[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v13);

  v15 = sub_238757B60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_238439884(v13, &qword_27DF0A0C0, &qword_238771EF0);
    v17 = 0;
  }

  else
  {
    v21[1] = sub_238757B40();
    v22 = v1;
    (*(v16 + 8))(v13, v15);
    sub_23875AAE0();
    v18 = v0 + *(type metadata accessor for InstitutionConsentManagementListView(0) + 28);
    sub_2384D51D8(v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v19 = sub_238758A10();
    sub_23875BBF0();
    v24[3] = sub_2387588D0();
    v24[4] = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(v24);
    sub_2387588C0();
    v17 = sub_23875AAC0();

    (*(v23 + 8))(v4, v22);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return v17 & 1;
}

uint64_t sub_238641198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for ConsentStatusView(0);
  v7 = v6[6];
  v8 = sub_238757B60();
  (*(*(v8 - 8) + 16))(a3 + v7, a1, v8);
  v9 = v6[7];
  v10 = sub_238758BB0();
  (*(*(v10 - 8) + 16))(a3 + v9, a2, v10);
  LODWORD(v9) = *(type metadata accessor for InstitutionConsentManagementListView(0) + 40);
  v11 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1D0();
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v12 = v6[5];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_238641354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v18 = a1;
  v21 = a3;
  v3 = type metadata accessor for InstitutionConsentManagementListView(0);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_238758BB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v9 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  sub_23875ED50();
  v19 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v11 = v18;
  sub_23875C500();
  swift_getKeyPath();
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v5);
  sub_23864AED4(v11, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstitutionConsentManagementListView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = (v7 + *(v17 + 80) + v12) & ~*(v17 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v12, v8, v5);
  sub_23864B704(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for InstitutionConsentManagementListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F30, &qword_238779EF8);
  sub_23843A3E8(&qword_27DF11F50, &qword_27DF09E80, &unk_2387686A0);
  sub_23864B8C4();
  sub_23875E370();
}

uint64_t sub_2386416CC@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v23 = a2;
  v5 = sub_238759970();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238641994(v13, a3);
  sub_238758B70();
  (*(v6 + 104))(v9, *MEMORY[0x277CC7B68], v5);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70]);
  sub_23875EC40();
  sub_23875EC40();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v12, v5);
  v15 = LOWORD(v24[0]) == v25;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  a3[12] = KeyPath;
  a3[13] = sub_23864BB6C;
  a3[14] = v17;
  v18 = swift_getKeyPath();
  v19 = v23 + *(type metadata accessor for InstitutionConsentManagementListView(0) + 28);
  sub_2384D51D8(v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v20 = sub_238758A10();
  a3[15] = v18;
  a3[16] = v20;
  __swift_destroy_boxed_opaque_existential_1(v24);
}

id sub_238641994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_23875A9F0();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_238758680();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 72) = 0;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = 0;
  v18 = a1;
  sub_238758690();
  v37 = v18;
  result = [v37 managedObjectContext];
  if (result)
  {
    v20 = result;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11920, &qword_2387793B8);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *a2 = sub_238629668(v37, v20, sub_2386457F4, 0);
    *(a2 + 8) = 0;
    sub_238758570();
    if (v24)
    {

      v38[3] = sub_23875A820();
      v38[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v38);
      sub_23875A7F0();
      v25 = objc_allocWithZone(sub_23875A060());
      v26 = sub_23875A030();
      v35 = v17;
      v27 = v26;
      sub_238758530();
      v28 = sub_23875A9E0();
      v34 = v13;
      v29 = v8;
      v31 = v30;
      (*(v4 + 8))(v7, v36);
      *v12 = v28;
      v12[1] = v31;
      (*(v9 + 104))(v12, *MEMORY[0x277CC7288], v29);
      LOBYTE(v28) = sub_23875A050();

      (*(v9 + 8))(v12, v29);
      result = (*(v14 + 8))(v35, v34);
      v32 = v28 & 1;
    }

    else
    {

      result = (*(v14 + 8))(v17, v13);
      v32 = 0;
    }

    *(a2 + 16) = v32;
    *(a2 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238641D38()
{
  v22 = sub_238758BB0();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD0, &qword_238779C68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for MultipleConsentManagementListView(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF11DE0, &qword_27DF11DD0, &qword_238779C68);
  v10 = sub_23875EEE0();
  if (!v10)
  {
    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v24 = MEMORY[0x277D84F90];
  sub_2385FEF18(0, v10 & ~(v10 >> 63), 0);
  v12 = v24;
  result = sub_23875EED0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v20 = v5;
    v21 = v0 + 32;
    do
    {
      v14 = sub_23875EF20();
      v16 = *v15;
      v14(v23, 0);
      sub_238758BC0();
      v24 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2385FEF18(v17 > 1, v18 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v18 + 1;
      (*(v0 + 32))(v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v22);
      sub_23875EF10();
      --v11;
    }

    while (v11);
    (*(v20 + 8))(v8, v4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_23864204C()
{
  v22 = sub_238758680();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for MultipleConsentManagementListView(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  v10 = sub_23875EEE0();
  if (!v10)
  {
    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v24 = MEMORY[0x277D84F90];
  sub_2385FE488(0, v10 & ~(v10 >> 63), 0);
  v12 = v24;
  result = sub_23875EED0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v20 = v5;
    v21 = v0 + 32;
    do
    {
      v14 = sub_23875EF20();
      v16 = *v15;
      v14(v23, 0);
      sub_238758690();
      v24 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2385FE488(v17 > 1, v18 + 1, 1);
        v12 = v24;
      }

      *(v12 + 16) = v18 + 1;
      (*(v0 + 32))(v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v22);
      sub_23875EF10();
      --v11;
    }

    while (v11);
    (*(v20 + 8))(v8, v4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_238642360@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v2 = type metadata accessor for MultipleConsentManagementListView(0);
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = v4;
  v88 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v65 - v7;
  v8 = sub_23875CE00();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F70, &qword_23877A040);
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v65 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F78, &qword_23877A048);
  v78 = *(v82 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F80, &qword_23877A050);
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F88, &qword_23877A058);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v84 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v65 - v24;
  v26 = sub_238757B60();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v73 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  v83 = v2;
  v32 = (v1 + *(v2 + 28));
  v34 = *v32;
  v33 = v32[1];
  v93 = v34;
  v94 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v25);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_238439884(v25, &qword_27DF0A0C0, &qword_238771EF0);
    v35 = 1;
  }

  else
  {
    v71 = v18;
    v67 = v27;
    v36 = *(v27 + 32);
    v68 = v27 + 32;
    v69 = v36;
    v72 = v31;
    v66 = v26;
    v37 = (v36)(v31, v25, v26);
    v70 = v19;
    MEMORY[0x28223BE20](v37);
    v65 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F90, &qword_23877A060);
    sub_23843A3E8(&qword_27DF11F98, &qword_27DF11F90, &qword_23877A060);
    v38 = v74;
    sub_23875D9C0();
    v93 = sub_238757B50();
    v94 = v39;
    v40 = sub_23843A3E8(&qword_27DF11FA0, &qword_27DF11F70, &qword_23877A040);
    v41 = sub_2384397A8();
    v42 = v76;
    v43 = v77;
    sub_23875DC70();

    (*(v75 + 8))(v38, v43);
    v45 = v79;
    v44 = v80;
    v46 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277CDDDC0], v81);
    v93 = v43;
    v94 = MEMORY[0x277D837D0];
    v95 = v40;
    v96 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v82;
    sub_23875DE50();
    (*(v44 + 8))(v45, v46);
    (*(v78 + 8))(v42, v48);
    v49 = *(v83 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    v50 = v65;
    v51 = v86;
    sub_23875E1D0();
    v52 = v67;
    v53 = v73;
    v54 = v66;
    (*(v67 + 16))(v73, v72, v66);
    v55 = v88;
    sub_23864AED4(v50, v88, type metadata accessor for MultipleConsentManagementListView);
    v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v57 = (v28 + *(v85 + 80) + v56) & ~*(v85 + 80);
    v58 = swift_allocObject();
    v69(v58 + v56, v53, v54);
    sub_23864B704(v55, v58 + v57, type metadata accessor for MultipleConsentManagementListView);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EB0, &qword_238779E70);
    v93 = v48;
    v94 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268]);
    v59 = type metadata accessor for BankConnectAuthorizationReconsentView(255);
    v60 = sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
    v93 = v59;
    v94 = v60;
    v18 = v71;
    swift_getOpaqueTypeConformance2();
    v61 = v84;
    v62 = v90;
    v63 = v91;
    sub_23875DEE0();

    sub_238439884(v51, &qword_27DF11E68, &qword_238779E30);
    (*(v89 + 8))(v63, v62);
    (*(v52 + 8))(v72, v54);
    v19 = v70;
    (*(v70 + 32))(v92, v61, v18);
    v35 = 0;
  }

  return (*(v19 + 56))(v92, v35, 1, v18);
}

uint64_t sub_238642DF4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EC8, &qword_238779E78);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED8, &qword_238779E88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FA8, &qword_23877A068);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE8, &qword_238779E98);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v43 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v41 - v28;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238643340(v29);
  sub_238643A08(v23);
  if (sub_238644620())
  {
    sub_23864B7C4();
    sub_23875E3D0();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF0, &qword_238779EA0);
  (*(*(v31 - 8) + 56))(v13, v30, 1, v31);
  sub_2384396E4(v13, v16, &qword_27DF11ED8, &qword_238779E88);
  sub_238643F04(v6);
  v42 = v29;
  v32 = v29;
  v33 = v43;
  sub_23843981C(v32, v43, &qword_27DF11EE8, &qword_238779E98);
  v34 = v23;
  sub_23843981C(v23, v20, &qword_27DF11FA8, &qword_23877A068);
  sub_23843981C(v16, v10, &qword_27DF11ED8, &qword_238779E88);
  v35 = v45;
  sub_23843981C(v6, v45, &qword_27DF11EC8, &qword_238779E78);
  v36 = v16;
  v37 = v20;
  v38 = v46;
  sub_23843981C(v33, v46, &qword_27DF11EE8, &qword_238779E98);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FB0, &qword_23877A070);
  sub_23843981C(v37, v38 + v39[12], &qword_27DF11FA8, &qword_23877A068);
  sub_23843981C(v10, v38 + v39[16], &qword_27DF11ED8, &qword_238779E88);
  sub_23843981C(v35, v38 + v39[20], &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v6, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v36, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v34, &qword_27DF11FA8, &qword_23877A068);
  sub_238439884(v42, &qword_27DF11EE8, &qword_238779E98);
  sub_238439884(v35, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v10, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v37, &qword_27DF11FA8, &qword_23877A068);
  sub_238439884(v33, &qword_27DF11EE8, &qword_238779E98);
}

uint64_t sub_238643340@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - v5;
  v7 = sub_238757B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v51 - v12;
  v70 = sub_23875A9F0();
  v63 = *(v70 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_238758BD0();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v69);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_238758680();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23864204C();
  v67 = *(v24 + 16);
  if (v67)
  {
    v52 = v6;
    v53 = v8;
    v54 = v7;
    v55 = v1;
    v58 = a1;
    v71 = v24;
    v66 = sub_23875ED50();
    result = v71;
    v26 = 0;
    v65 = v71 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v63 += 8;
    v64 = v20 + 16;
    v62 = *MEMORY[0x277CC7288];
    v60 = (v15 + 8);
    v61 = (v15 + 104);
    v59 = (v20 + 8);
    while (1)
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v27 = v65 + *(v20 + 72) * v26;
      v28 = v20;
      v29 = *(v20 + 16);
      v30 = v19;
      v29(v23, v27, v19);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v72[3] = sub_23875A820();
      v72[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v72);
      sub_23875A7F0();
      v31 = objc_allocWithZone(sub_23875A060());
      v32 = sub_23875A030();
      v33 = v68;
      sub_238758530();
      v34 = sub_23875A9E0();
      v36 = v35;
      (*v63)(v33, v70);
      *v18 = v34;
      v18[1] = v36;
      v37 = v69;
      (*v61)(v18, v62, v69);
      v38 = sub_23875A050();

      (*v60)(v18, v37);
      if (sub_238758550())
      {
        v39 = sub_238758560();
        v19 = v30;
        (*v59)(v23, v30);

        if (!(v38 & 1 | ((v39 & 1) == 0)))
        {

          v40 = (v55 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
          v42 = *v40;
          v41 = v40[1];
          v72[0] = v42;
          v72[1] = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
          sub_23875E1B0();
          v43 = v52;
          sub_23863BBE8(v52);

          v44 = v53;
          v45 = v54;
          if ((*(v53 + 48))(v43, 1, v54) == 1)
          {
            sub_238439884(v43, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_13:
            v46 = 1;
            a1 = v58;
            goto LABEL_16;
          }

          v47 = v56;
          (*(v44 + 32))(v56, v43, v45);
          v48 = sub_23864204C();
          v49 = v57;
          (*(v44 + 16))(v57, v47, v45);
          a1 = v58;
          AccountMismatchedInformationTileView.init(accounts:institution:)(v48, v49, v58);
          (*(v44 + 8))(v47, v45);
          v46 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v19 = v30;
        (*v59)(v23, v30);
      }

      ++v26;
      v20 = v28;
      result = v71;
      if (v67 == v26)
      {

        goto LABEL_13;
      }
    }
  }

  v46 = 1;
LABEL_16:
  v50 = type metadata accessor for AccountMismatchedInformationTileView();
  return (*(*(v50 - 8) + 56))(a1, v46, 1, v50);
}

uint64_t sub_238643A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for MultipleConsentManagementListView(0);
  v4 = v3 - 8;
  v39 = *(v3 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = v6;
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FB8, &qword_23877A078);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_238757B60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = *(v4 + 36);
  v38 = v2;
  v22 = (v2 + v21);
  v24 = *v22;
  v23 = v22[1];
  v45 = v24;
  v46 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238439884(v13, &qword_27DF0A0C0, &qword_238771EF0);
    v25 = 1;
    v26 = v43;
  }

  else
  {
    v27 = v41;
    v37 = v7;
    v28 = *(v15 + 32);
    v28(v20, v13, v14);
    v29 = v38;
    v45 = sub_238641D38();
    (*(v15 + 16))(v17, v20, v14);
    sub_23864AED4(v29, v27, type metadata accessor for MultipleConsentManagementListView);
    v30 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v31 = (v16 + *(v39 + 80) + v30) & ~*(v39 + 80);
    v32 = swift_allocObject();
    v28((v32 + v30), v17, v14);
    sub_23864B704(v27, v32 + v31, type metadata accessor for MultipleConsentManagementListView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FC0, &qword_23877A080);
    sub_23875BCB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FC8, &qword_23877A088);
    sub_23843A3E8(&qword_27DF11FD0, &qword_27DF11FC0, &qword_23877A080);
    sub_23864C0CC();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268]);
    v33 = v42;
    v7 = v37;
    sub_23875E380();
    (*(v15 + 8))(v20, v14);
    v34 = v43;
    (*(v43 + 32))(v44, v33, v7);
    v25 = 0;
    v26 = v34;
  }

  return (*(v26 + 56))(v44, v25, 1, v7);
}

uint64_t sub_238643F04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-v10];
  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v1 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
  v19 = *v17;
  v18 = v17[1];
  v26 = v19;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0A0C0, &qword_238771EF0);
    v20 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v13 + 16))(&v7[v3[7]], v16, v12);
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    v21 = v3[5];
    *&v7[v21] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v22 = &v7[v3[6]];
    v25[8] = 0;
    sub_23875E1A0();
    (*(v13 + 8))(v16, v12);
    v23 = v27;
    *v22 = v26;
    *(v22 + 1) = v23;
    sub_23864B704(v7, a1, type metadata accessor for RevokeConsentSection);
    v20 = 0;
  }

  return (*(v4 + 56))(a1, v20, 1, v3);
}

uint64_t sub_238644234@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v4 = type metadata accessor for MultipleConsentManagementListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for BankConnectAuthorizationReconsentView(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = v7[5];
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  v13 = &v10[v7[6]];
  sub_238758B90();
  sub_23864AED4(v18[0], v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultipleConsentManagementListView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_23864B704(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MultipleConsentManagementListView);
  *v10 = 0;
  v16 = &v10[v7[7]];
  *v16 = sub_23864BBE4;
  v16[1] = v15;
  sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
  sub_23875DE20();
  sub_23864AF3C(v10, type metadata accessor for BankConnectAuthorizationReconsentView);
}

uint64_t sub_2386444E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = sub_238758BB0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(type metadata accessor for MultipleConsentManagementListView(0) + 32);
  sub_23843981C(v6, v3, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1C0();
  return sub_238439884(v6, &qword_27DF0D358, &unk_23876CF80);
}

uint64_t sub_238644620()
{
  v1 = sub_23875BC40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875AAF0();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = (v0 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
  v16 = *v14;
  v15 = v14[1];
  v27[0] = v16;
  v27[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v13);

  v17 = sub_238757B60();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_238439884(v13, &qword_27DF0A0C0, &qword_238771EF0);
    v19 = 0;
  }

  else
  {
    sub_238757B40();
    v23 = v1;
    v24 = v6;
    (*(v18 + 8))(v13, v17);
    sub_23875AAE0();
    sub_2384D51D8(v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v20 = sub_238758A10();
    sub_23875BBF0();
    v26[3] = sub_2387588D0();
    v26[4] = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_2387588C0();
    v19 = sub_23875AAC0();

    (*(v2 + 8))(v5, v23);
    (*(v25 + 8))(v9, v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return v19 & 1;
}

uint64_t sub_238644974@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_238644A38()
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
  type metadata accessor for MultipleConsentView(0);
  sub_23864ADA0(&qword_27DF11FE0, type metadata accessor for MultipleConsentView);
  sub_23875E3D0();
}

uint64_t sub_238644B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v38 = a3;
  v35 = a1;
  v36 = a2;
  v40 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v31 - v6;
  v34 = sub_238758BB0();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238757B60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = v15;
  v33 = v12;
  v16 = *(v12 + 16);
  v17 = v11;
  v16(v15, v35, v11);
  v35 = v7;
  v18 = *(v7 + 16);
  v19 = v34;
  v18(v10, v36, v34);
  v20 = *(type metadata accessor for MultipleConsentManagementListView(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  v21 = v39;
  sub_23875E1D0();
  v22 = v19;
  v23 = v21;
  v24 = v40;
  v16(v40, v15, v17);
  v25 = type metadata accessor for MultipleConsentView(0);
  v26 = v22;
  v18(&v24[v25[5]], v10, v22);
  sub_23843981C(v23, &v24[v25[6]], &qword_27DF11E68, &qword_238779E30);
  v27 = sub_238758BA0();
  sub_2386ED9B8(v27, v28);

  v29 = v25[7];
  sub_238759780();
  sub_23875C4F0();
  sub_238439884(v23, &qword_27DF11E68, &qword_238779E30);
  (*(v35 + 8))(v10, v26);
  (*(v33 + 8))(v32, v17);
}

uint64_t sub_238644EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for MultipleConsentView(0);
  v4 = (v3 - 8);
  v44 = *(v3 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v41[1] = v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12118, &qword_23877A4C8);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for ConsentStatusView(0);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v41 - v21;
  v23 = v16[8];
  v24 = sub_238757B60();
  (*(*(v24 - 8) + 16))(&v22[v23], v2, v24);
  v25 = v4[7];
  v26 = v16[9];
  v27 = sub_238758BB0();
  (*(*(v27 - 8) + 16))(&v22[v26], v2 + v25, v27);
  v28 = v4[8];
  v29 = v16[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  sub_23875E310();
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v30 = v16[7];
  *&v22[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v31 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  swift_getKeyPath();
  v32 = v42;
  sub_23864AED4(v2, v42, type metadata accessor for MultipleConsentView);
  v33 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v34 = swift_allocObject();
  sub_23864B704(v32, v34 + v33, type metadata accessor for MultipleConsentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F40, qword_238779F00);
  sub_23843A3E8(&qword_27DF11F50, &qword_27DF09E80, &unk_2387686A0);
  sub_23864B97C();
  sub_23875E370();
  sub_23864AED4(v22, v19, type metadata accessor for ConsentStatusView);
  v35 = v9[2];
  v36 = v45;
  v35(v45, v14, v8);
  v37 = v47;
  sub_23864AED4(v19, v47, type metadata accessor for ConsentStatusView);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12120, &qword_23877A4D0);
  v35((v37 + *(v38 + 48)), v36, v8);
  v39 = v9[1];
  v39(v14, v8);
  sub_23864AF3C(v22, type metadata accessor for ConsentStatusView);
  v39(v36, v8);
  return sub_23864AF3C(v19, type metadata accessor for ConsentStatusView);
}

uint64_t sub_23864542C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_238759970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238641994(v14, a3);
  v15 = a2 + *(type metadata accessor for MultipleConsentView(0) + 20);
  sub_238758B70();
  (*(v7 + 104))(v10, *MEMORY[0x277CC7B68], v6);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70]);
  sub_23875EC40();
  sub_23875EC40();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v13, v6);
  v17 = v21[7] == v21[6];
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;

  a3[12] = KeyPath;
  a3[13] = sub_23864D8B8;
  a3[14] = v19;
  return result;
}

uint64_t sub_2386456A8()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 80);
  if (*(v0 + 88) != 1)
  {
    v7 = *(v0 + 80);

    sub_23875EFF0();
    v8 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_2386457F4(void *a1)
{
  v1 = a1;

  return sub_238758690();
}

uint64_t sub_23864582C@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12040, &qword_23877A338);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12048, &unk_23877A340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - v11;
  v13 = sub_238758680();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v34 - v19;
  v21 = *(v1 + 8);
  v40 = *v1;
  v41 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12050, &unk_23877A350);
  sub_23875E1B0();
  sub_23863C4C0(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238439884(v12, &qword_27DF09520, &unk_2387637E0);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    v35 = v6;
    v36 = a1;
    v34[0] = v5;
    v23 = (*(v14 + 32))(v20, v12, v13);
    v34[1] = v34;
    MEMORY[0x28223BE20](v23);
    v34[-2] = v20;
    v34[-1] = v1;
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    (*(v14 + 16))(v17, v20, v13);
    v24 = *(v1 + 24);
    LOBYTE(v44) = *(v1 + 16);
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v25 = v38;
    AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)(v17, v40, v41, v42, v38);
    KeyPath = swift_getKeyPath();
    sub_2384D51D8(&v40);
    __swift_project_boxed_opaque_existential_1(&v40, v43);
    v27 = sub_238758A10();
    v28 = (v25 + *(v39 + 36));
    *v28 = KeyPath;
    v28[1] = v27;
    __swift_destroy_boxed_opaque_existential_1(&v40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12058, &qword_23877A360);
    sub_23843A3E8(&qword_27DF12060, &qword_27DF12058, &qword_23877A360);
    sub_23864CC14();
    v29 = v37;
    sub_23875C750();
    v30 = v35;
    v31 = v36;
    v32 = v29;
    v33 = v34[0];
    (*(v35 + 32))(v36, v32, v34[0]);
    (*(v30 + 56))(v31, 0, 1, v33);
    return (*(v14 + 8))(v20, v13);
  }
}

uint64_t sub_238645D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875CE60();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12070, &qword_23877A368);
  sub_238645E1C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_238645E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = sub_23875B4E0();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v11 = sub_238757FC0();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12078, &qword_23877A370);
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12080, &qword_23877A378);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v76 = (&v64 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12088, &qword_23877A380);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12090, &qword_23877A388);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v80 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  sub_23875ED50();
  v78 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v32 = sub_23875D030();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12098, &unk_23877A390);
  sub_238646648(a1, &v32[*(v33 + 44)]);
  v34 = *(a2 + 24);
  LOBYTE(v85) = *(a2 + 16);
  v86 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  if ((v83 & 1) != 0 || (sub_238640C20() & 1) == 0)
  {
    v41 = sub_238758560();
    v85 = sub_238646E58(v41 & 1);
    v86 = v42;
    sub_2384397A8();
    v67 = v17;
    v64 = sub_23875DAA0();
    v68 = v26;
    v65 = v43;
    v66 = v44;
    v85 = v64;
    v86 = v43;
    v69 = v23;
    v46 = v45 & 1;
    v87 = v45 & 1;
    v88 = v44;
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_23875F470();

    v83 = 0xD000000000000024;
    v84 = 0x800000023878E3F0;
    sub_2387585C0();
    v47 = sub_238757FB0();
    v49 = v48;
    (*(v70 + 8))(v14, v71);
    v81 = v47;
    v82 = v49;
    sub_23875B4B0();
    v50 = v72;
    sub_23875B4D0();
    v51 = v74;
    v52 = *(v73 + 8);
    v52(v10, v74);
    v53 = sub_23875F220();
    v52(v50, v51);

    v81 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
    sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0);
    v54 = sub_23875E980();
    v56 = v55;

    MEMORY[0x23EE63650](v54, v56);

    v57 = v75;
    sub_23875DE00();

    v58 = v46;
    v26 = v68;
    v23 = v69;
    sub_2384397FC(v64, v65, v58);

    *(v57 + *(v79 + 36)) = sub_23875D440();
    sub_23843981C(v57, v76, &qword_27DF12078, &qword_23877A370);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_23864CCFC();
    sub_23864CDB4();
    sub_23875D1B0();
    sub_238439884(v57, &qword_27DF12078, &qword_23877A370);
  }

  else
  {
    v35 = sub_23875E0D0();
    v36 = sub_23875DFF0();
    KeyPath = swift_getKeyPath();
    v38 = sub_23875D8F0();
    v39 = swift_getKeyPath();
    v40 = v76;
    *v76 = v35;
    v40[1] = KeyPath;
    v40[2] = v36;
    v40[3] = v39;
    v40[4] = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_23864CCFC();
    sub_23864CDB4();
    sub_23875D1B0();
  }

  v59 = v80;
  sub_23843981C(v32, v80, &qword_27DF12090, &qword_23877A388);
  sub_23843981C(v26, v23, &qword_27DF12088, &qword_23877A380);
  v60 = v77;
  sub_23843981C(v59, v77, &qword_27DF12090, &qword_23877A388);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120B8, &qword_23877A3C0);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_23843981C(v23, v60 + *(v61 + 64), &qword_27DF12088, &qword_23877A380);
  sub_238439884(v26, &qword_27DF12088, &qword_23877A380);
  sub_238439884(v32, &qword_27DF12090, &qword_23877A388);
  sub_238439884(v23, &qword_27DF12088, &qword_23877A380);
  sub_238439884(v59, &qword_27DF12090, &qword_23877A388);
}

uint64_t sub_238646648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120C0, &qword_23877A428);
  v3 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v82 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = v66 - v6;
  v7 = sub_23875B4E0();
  v77 = *(v7 - 8);
  v8 = *(v77 + 8);
  MEMORY[0x28223BE20](v7);
  v76 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v66 - v11;
  v13 = sub_238757FC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v79 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v84 = v66 - v22;
  sub_23875ED50();
  v78 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v89 = sub_2387585B0();
  v90 = v23;
  v66[2] = sub_2384397A8();
  v72 = sub_23875DAA0();
  v71 = v24;
  v73 = v25;
  v89 = v72;
  v90 = v24;
  v70 = v26 & 1;
  v91 = v26 & 1;
  v92 = v25;
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_23875F470();

  v87 = 0xD00000000000001CLL;
  v88 = 0x800000023878E4A0;
  sub_2387585C0();
  v27 = sub_238757FB0();
  v29 = v28;
  v69 = *(v14 + 8);
  v68 = v13;
  v69(v17, v13);
  v85 = v27;
  v86 = v29;
  sub_23875B4B0();
  v30 = v76;
  sub_23875B4D0();
  v66[1] = a1;
  v31 = *(v77 + 1);
  v67 = v7;
  v31(v12, v7);
  v77 = v31;
  v32 = sub_23875F220();
  v31(v30, v7);

  v85 = v32;
  v33 = v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  v74 = sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0);
  v34 = sub_23875E980();
  v36 = v35;

  MEMORY[0x23EE63650](v34, v36);

  sub_23875DE00();

  sub_2384397FC(v72, v71, v70);

  sub_2387585C0();
  v37 = sub_238757FB0();
  v39 = v38;
  v40 = v68;
  v41 = v69;
  v69(v17, v68);
  v89 = v37;
  v90 = v39;
  v72 = sub_23875DAA0();
  v71 = v42;
  v73 = v43;
  v89 = v72;
  v90 = v42;
  v70 = v44 & 1;
  v91 = v44 & 1;
  v92 = v43;
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_23875F470();

  v87 = 0xD00000000000001ELL;
  v88 = 0x800000023878E4C0;
  sub_2387585C0();
  v45 = sub_238757FB0();
  v47 = v46;
  v41(v17, v40);
  v85 = v45;
  v86 = v47;
  sub_23875B4B0();
  sub_23875B4D0();
  v48 = v33;
  v49 = v67;
  v50 = v77;
  v77(v48, v67);
  v51 = sub_23875F220();
  v50(v30, v49);

  v85 = v51;
  v52 = sub_23875E980();
  v54 = v53;

  MEMORY[0x23EE63650](v52, v54);

  v55 = v81;
  sub_23875DE00();

  sub_2384397FC(v72, v71, v70);

  v56 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  v58 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120C8, &qword_23877A430) + 36));
  *v58 = KeyPath;
  v58[1] = v56;
  v59 = sub_23875D440();
  v60 = v79;
  *(v55 + *(v80 + 36)) = v59;
  v61 = v84;
  sub_23843981C(v84, v60, &qword_27DF0E838, &unk_23877A3B0);
  v62 = v82;
  sub_23843981C(v55, v82, &qword_27DF120C0, &qword_23877A428);
  v63 = v83;
  sub_23843981C(v60, v83, &qword_27DF0E838, &unk_23877A3B0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120D0, &qword_23877A438);
  sub_23843981C(v62, v63 + *(v64 + 48), &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v55, &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v61, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v62, &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v60, &qword_27DF0E838, &unk_23877A3B0);
}

uint64_t sub_238646E58(char a1)
{
  if (a1)
  {
    sub_2386456A8();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

uint64_t sub_238646F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v2 = type metadata accessor for ConsentStatusView(0);
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = v4;
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v44 - v7;
  v8 = sub_238759970();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A0, &qword_238772530);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v51 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120E0, &qword_23877A460);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v28 = sub_23875CE60();
  *(v28 + 1) = 0x4028000000000000;
  v28[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120E8, &qword_23877A468);
  v30 = v50;
  sub_2386475A0(v50, &v28[*(v29 + 44)]);
  v31 = v30 + *(v2 + 28);
  sub_238758B70();
  (*(v9 + 104))(v12, *MEMORY[0x277CC7B68], v8);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70]);
  sub_23875EC40();
  sub_23875EC40();
  v32 = *(v9 + 8);
  v32(v12, v8);
  v32(v15, v8);
  if (v56 == v55)
  {
    v33 = v47;
    sub_23864AED4(v30, v47, type metadata accessor for ConsentStatusView);
    v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v35 = swift_allocObject();
    sub_23864B704(v33, v35 + v34, type metadata accessor for ConsentStatusView);
    v36 = v48;
    sub_23875E200();
    v38 = v52;
    v37 = v53;
    (*(v52 + 32))(v21, v36, v53);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v38 = v52;
    v37 = v53;
  }

  (*(v38 + 56))(v21, v39, 1, v37);
  sub_23843981C(v28, v25, &qword_27DF120E0, &qword_23877A460);
  v40 = v51;
  sub_23843981C(v21, v51, &qword_27DF0F3A0, &qword_238772530);
  v41 = v54;
  sub_23843981C(v25, v54, &qword_27DF120E0, &qword_23877A460);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120F0, &qword_23877A470);
  sub_23843981C(v40, v41 + *(v42 + 48), &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v21, &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v28, &qword_27DF120E0, &qword_23877A460);
  sub_238439884(v40, &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v25, &qword_27DF120E0, &qword_23877A460);
}

uint64_t sub_2386475A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120F8, &qword_23877A478);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_238757B60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for ConsentStatusView(0);
  (*(v11 + 16))(v14, a1 + *(v15 + 24), v10);
  KeyPath = swift_getKeyPath();
  v36 = 0;
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v16 = v42;
  v31 = v43;
  v17 = sub_238757B40();
  v30 = v17;
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  v20 = v36;
  *v9 = sub_23875D030();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12100, &qword_23877E8F0);
  sub_238647954(a1, &v9[*(v21 + 44)]);
  v22 = v33;
  sub_23843981C(v9, v33, &qword_27DF120F8, &qword_23877A478);
  *&v38 = v17;
  *(&v38 + 1) = v19;
  LOBYTE(v39) = 2;
  *(&v39 + 1) = *v37;
  DWORD1(v39) = *&v37[3];
  v23 = KeyPath;
  *(&v39 + 1) = 0x3FB999999999999ALL;
  *&v40 = KeyPath;
  BYTE8(v40) = v20;
  *(&v40 + 9) = *v35;
  HIDWORD(v40) = *&v35[3];
  v24 = v31;
  *&v41 = v16;
  *(&v41 + 1) = v31;
  v25 = v38;
  v26 = v39;
  v27 = v41;
  a2[2] = v40;
  a2[3] = v27;
  *a2 = v25;
  a2[1] = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12108, &unk_23877A4B0);
  sub_23843981C(v22, a2 + *(v28 + 48), &qword_27DF120F8, &qword_23877A478);
  sub_238558A88(&v38, &v42);
  sub_238439884(v9, &qword_27DF120F8, &qword_23877A478);
  sub_238439884(v22, &qword_27DF120F8, &qword_23877A478);
  v42 = v30;
  v43 = v19;
  v44 = 2;
  *v45 = *v37;
  *&v45[3] = *&v37[3];
  v46 = 0x3FB999999999999ALL;
  v47 = v23;
  v48 = v20;
  *v49 = *v35;
  *&v49[3] = *&v35[3];
  v50 = v16;
  v51 = v24;
  sub_23858D0F0(&v42);
}

uint64_t sub_238647954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_23875BA10();
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23875BA40();
  v112 = *(v114 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_23875BC40();
  v109 = *(v111 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_238759970();
  v106 = *(v107 - 8);
  v10 = *(v106 + 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v102 - v16;
  MEMORY[0x28223BE20](v17);
  v119 = &v102 - v18;
  MEMORY[0x28223BE20](v19);
  v117 = &v102 - v20;
  MEMORY[0x28223BE20](v21);
  v125 = &v102 - v22;
  MEMORY[0x28223BE20](v23);
  v124 = &v102 - v24;
  sub_23875ED50();
  v118 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for ConsentStatusView(0);
  v26 = a1 + *(v25 + 24);
  v126 = sub_238757B50();
  v127 = v27;
  v123 = sub_2384397A8();
  v28 = sub_23875DAA0();
  v30 = v29;
  v32 = v31;
  sub_23875D980();
  v103 = a1;
  v33 = sub_23875DA60();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_2384397FC(v28, v30, v32 & 1);

  v126 = v33;
  v127 = v35;
  v40 = v37 & 1;
  v41 = MEMORY[0x277D837D0];
  v128 = v40;
  v129 = v39;
  sub_23875DE00();
  sub_2384397FC(v33, v35, v40);

  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v42 = swift_allocObject();
  v102 = xmmword_2387632F0;
  *(v42 + 16) = xmmword_2387632F0;
  v43 = v105;
  v103 += *(v25 + 28);
  sub_238758B70();
  v44 = sub_238648430();
  v46 = v45;
  (*(v106 + 1))(v43, v107);
  *(v42 + 56) = v41;
  v107 = sub_238448C58();
  *(v42 + 64) = v107;
  *(v42 + 32) = v44;
  *(v42 + 40) = v46;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v47 = qword_2814F1B90;
  v105 = qword_2814F1B90;
  v48 = sub_23875EA50();
  v49 = sub_23875EA50();
  v106 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v50 = sub_23875EA50();
  v51 = [v47 localizedStringForKey:v48 value:v49 table:v50];

  sub_23875EA80();
  v52 = sub_23875EAA0();
  v54 = v53;

  v126 = v52;
  v127 = v54;
  v55 = sub_23875DAA0();
  v57 = v56;
  v59 = v58;
  sub_23875D7F0();
  v60 = sub_23875DA60();
  v62 = v61;
  v64 = v63;
  v66 = v65;

  sub_2384397FC(v55, v57, v59 & 1);

  v126 = v60;
  v127 = v62;
  v128 = v64 & 1;
  v129 = v66;
  sub_23875DE00();
  sub_2384397FC(v60, v62, v64 & 1);

  v67 = swift_allocObject();
  *(v67 + 16) = v102;
  v68 = v108;
  sub_238758B80();
  v69 = v110;
  sub_23875BA30();
  v70 = v113;
  sub_23875BA00();
  v71 = sub_23875BC00();
  v73 = v72;
  (*(v115 + 8))(v70, v116);
  (*(v112 + 8))(v69, v114);
  (*(v109 + 8))(v68, v111);
  v74 = v107;
  *(v67 + 56) = MEMORY[0x277D837D0];
  *(v67 + 64) = v74;
  *(v67 + 32) = v71;
  *(v67 + 40) = v73;
  v75 = sub_23875EA50();
  v76 = sub_23875EA50();
  v77 = sub_23875EA50();
  v78 = [v105 localizedStringForKey:v75 value:v76 table:v77];

  sub_23875EA80();
  v79 = sub_23875EAA0();
  v81 = v80;

  v126 = v79;
  v127 = v81;
  v82 = sub_23875DAA0();
  v84 = v83;
  LOBYTE(v67) = v85;
  sub_23875D7F0();
  v86 = sub_23875DA60();
  v88 = v87;
  v90 = v89;
  v92 = v91;

  sub_2384397FC(v82, v84, v67 & 1);

  v126 = v86;
  v127 = v88;
  LOBYTE(v82) = v90 & 1;
  v128 = v90 & 1;
  v129 = v92;
  v93 = v117;
  sub_23875DE00();
  sub_2384397FC(v86, v88, v82);

  v94 = v124;
  v95 = v119;
  sub_23843981C(v124, v119, &qword_27DF0E838, &unk_23877A3B0);
  v96 = v125;
  v97 = v120;
  sub_23843981C(v125, v120, &qword_27DF0E838, &unk_23877A3B0);
  v98 = v121;
  sub_23843981C(v93, v121, &qword_27DF0E838, &unk_23877A3B0);
  v99 = v122;
  sub_23843981C(v95, v122, &qword_27DF0E838, &unk_23877A3B0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12110, &qword_23877A4C0);
  sub_23843981C(v97, v99 + *(v100 + 48), &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v98, v99 + *(v100 + 64), &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v93, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v96, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v94, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v98, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v97, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v95, &qword_27DF0E838, &unk_23877A3B0);
}

uint64_t sub_238648430()
{
  v1 = sub_238759970();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277CC7B60] || v7 == *MEMORY[0x277CC7B68])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();

    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    v13 = sub_23875EA80();
    return v13;
  }

  else
  {
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_23864868C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for ConsentStatusView(0);
  v10 = *(v9 + 28);
  v11 = sub_238758BB0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1 + v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v13 = *(v9 + 32);
  sub_23843981C(v8, v5, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  sub_23875E2F0();
  sub_238439884(v8, &qword_27DF0D358, &unk_23876CF80);
}

uint64_t sub_23864887C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_238648A24(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_23875C1E0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_23875CDB0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_23875ED50();
  v1[10] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v1[11] = v9;
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_238648B74, v9, v8);
}

uint64_t sub_238648B74()
{
  v1 = v0[3];
  v2 = type metadata accessor for ConsentStatusView(0);
  v0[13] = v2;
  v3 = v1 + *(v2 + 28);
  v4 = sub_238758BA0();
  v6 = v5;
  v0[14] = v4;
  v0[15] = v5;
  v7 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v9 + 8))(v8, v10);
    v7 = v0[2];
  }

  v0[16] = v7;
  v12 = *(MEMORY[0x277CC72D0] + 4);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_238648CEC;

  return MEMORY[0x282117DC0](v4, v6);
}

uint64_t sub_238648CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_238648E84;
  }

  else
  {
    v7 = v2[15];
    v8 = v2[16];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_238648E10;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238648E10()
{
  v1 = v0[10];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_238648E84()
{
  v34 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[3];

  v8 = v7 + *(v4 + 20);
  sub_2384D5160(v6);

  v9 = v1;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[15];
  if (v12)
  {
    v15 = v0[14];
    v16 = v0[5];
    v31 = v0[4];
    v32 = v0[6];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v17 = 136315394;
    v20 = sub_2384615AC(v15, v14, &v33);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    _os_log_impl(&dword_2383F8000, v10, v11, "Failed to update consent status for consentID %s: %@", v17, 0x16u);
    sub_238439884(v18, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23EE64DF0](v19, -1, -1);
    MEMORY[0x23EE64DF0](v17, -1, -1);

    (*(v16 + 8))(v32, v31);
  }

  else
  {
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];
    v26 = v0[15];

    (*(v24 + 8))(v23, v25);
  }

  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_2386490EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_238646F90(v2, a2);
  sub_23864AED4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConsentStatusView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23864B704(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ConsentStatusView);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120D8, &unk_23877A450) + 36));
  v9 = v8 + *(sub_23875C6E0() + 20);
  result = sub_23875ED60();
  *v8 = &unk_23877A448;
  v8[1] = v7;
  return result;
}

uint64_t sub_23864923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12130, &qword_23877A4E0);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C390();
  v14 = sub_23875C3C0();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  sub_23864AED4(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RevokeConsentSection);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_23864B704(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RevokeConsentSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23875E1F0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  v36 = v22;
  v37 = v24;
  v25 = a1 + *(v3 + 24);
  v26 = *v25;
  v27 = *(v25 + 8);
  v34 = v26;
  v35 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v28 = sub_23875E1D0();
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0);
  sub_2384397A8();
  sub_23875DCD0();

  (*(v32 + 8))(v13, v10);
}

uint64_t sub_238649790(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for RevokeConsentSection(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();
}

uint64_t sub_2386498A8()
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
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8 & 1;
  sub_23875DE00();
  sub_2384397FC(v5, v7, v9);
}

uint64_t sub_238649AA0(uint64_t a1)
{
  v2 = type metadata accessor for RevokeConsentSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C390();
  v9 = sub_23875C3C0();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_23864AED4(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RevokeConsentSection);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_23864B704(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for RevokeConsentSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23875E1F0();
}

uint64_t sub_238649D10(uint64_t a1)
{
  v2 = type metadata accessor for RevokeConsentSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23875ED80();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23864AED4(a1, v5, type metadata accessor for RevokeConsentSection);
  sub_23875ED50();
  v11 = sub_23875ED40();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23864B704(v5, v13 + v12, type metadata accessor for RevokeConsentSection);
  sub_2386C3BA4(0, 0, v9, &unk_23877A4F0, v13);
}

uint64_t sub_238649EF0()
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
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8 & 1;
  sub_23875DE00();
  sub_2384397FC(v5, v7, v9);
}

uint64_t sub_23864A0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  v5 = a1 + *(type metadata accessor for RevokeConsentSection(0) + 28);
  v6 = sub_238757B50();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_238448C58();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
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
  sub_23875EAA0();

  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  LOBYTE(v10) = v17;
  v19 = v18;

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_23864A32C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23864A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for RevokeConsentSection(0);
  v4[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = sub_23875C1E0();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_23875CDB0();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_23875ED50();
  v4[12] = sub_23875ED40();
  v14 = sub_23875ECE0();
  v4[13] = v14;
  v4[14] = v13;

  return MEMORY[0x2822009F8](sub_23864A654, v14, v13);
}

uint64_t sub_23864A654()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(v1 + 8);

  if ((v3 & 1) == 0)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    sub_23875EFF0();
    v7 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = v0[2];
    v1 = v0[3];
  }

  v0[15] = v2;
  v8 = v1 + *(v0[4] + 28);
  v9 = sub_238757B40();
  v11 = v10;
  v0[16] = v10;
  v12 = *(MEMORY[0x277CC72B0] + 4);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_23864A7BC;

  return MEMORY[0x282117DA0](v9, v11);
}

uint64_t sub_23864A7BC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23864A960;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23864A8E0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23864A8E0()
{
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23864A960()
{
  v39 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  v9 = v8 + *(v7 + 20);
  sub_2384D5160(v5);
  sub_23864AED4(v8, v6, type metadata accessor for RevokeConsentSection);
  v10 = v1;
  v11 = sub_23875C1B0();
  v12 = sub_23875EFE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[18];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v18 = v0[6];
  if (v13)
  {
    v37 = v0[8];
    v19 = v0[4];
    v35 = v0[18];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v20 = 136315394;
    v23 = v17 + *(v19 + 28);
    v24 = sub_238757B40();
    v36 = v18;
    v26 = v25;
    sub_23864AF3C(v17, type metadata accessor for RevokeConsentSection);
    v27 = sub_2384615AC(v24, v26, &v38);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2112;
    v28 = v35;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v29;
    *v21 = v29;
    _os_log_impl(&dword_2383F8000, v11, v12, "Failed to revoke consents for institutionID: %s: %@.", v20, 0x16u);
    sub_238439884(v21, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x23EE64DF0](v22, -1, -1);
    MEMORY[0x23EE64DF0](v20, -1, -1);

    (*(v16 + 8))(v37, v36);
  }

  else
  {

    sub_23864AF3C(v17, type metadata accessor for RevokeConsentSection);
    (*(v16 + 8))(v15, v18);
  }

  v30 = v0[11];
  v31 = v0[8];
  v32 = v0[5];

  v33 = v0[1];

  return v33();
}

uint64_t sub_23864AC24()
{
  sub_23864A32C(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12128, &qword_23877A4D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12130, &qword_23877A4E0);
  sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0);
  sub_2384397A8();
  swift_getOpaqueTypeConformance2();
  return sub_23875E3E0();
}

uint64_t sub_23864ADA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23864ADE8()
{
  result = qword_27DF11DF8;
  if (!qword_27DF11DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11DC8, &qword_238779C60);
    sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView);
    sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11DF8);
  }

  return result;
}

uint64_t sub_23864AED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23864AF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23864B00C()
{
  sub_23864B3E4(319, &qword_27DF11E10, MEMORY[0x277CC6E80], MEMORY[0x277CDD7C8]);
  if (v0 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23864B0F0()
{
  result = qword_27DF11E18;
  if (!qword_27DF11E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E20, &qword_238779D08);
    sub_23864ADE8();
    sub_23845D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11E18);
  }

  return result;
}

void sub_23864B1A4()
{
  sub_23864C40C(319, &qword_27DF0A198, &qword_27DF0A1A0, &qword_238765210, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23864C40C(319, &qword_27DF11E40, &qword_27DF11950, &unk_238779D50, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23864C40C(319, &qword_27DF11E48, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_23864B3E4(319, &qword_27DF11E10, MEMORY[0x277CC6E80], MEMORY[0x277CDD7C8]);
            if (v5 <= 0x3F)
            {
              sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
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
}

void sub_23864B3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23864B470()
{
  sub_23864C40C(319, &qword_27DF11E40, &qword_27DF11950, &unk_238779D50, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_23864C40C(319, &qword_27DF11E60, &qword_27DF11940, &qword_2387793C8, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
      if (v2 <= 0x3F)
      {
        sub_23864C40C(319, &qword_27DF0A198, &qword_27DF0A1A0, &qword_238765210, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_23864C40C(319, &qword_27DF11E48, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_23875AAF0();
                if (v7 <= 0x3F)
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

uint64_t sub_23864B704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23864B7C4()
{
  result = qword_27DF11F00;
  if (!qword_27DF11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F00);
  }

  return result;
}

unint64_t sub_23864B840()
{
  result = qword_27DF11F20;
  if (!qword_27DF11F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F18, &qword_238779EF0);
    sub_23864B8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F20);
  }

  return result;
}

unint64_t sub_23864B8C4()
{
  result = qword_27DF11F28;
  if (!qword_27DF11F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F30, &qword_238779EF8);
    sub_23864B97C();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F28);
  }

  return result;
}

unint64_t sub_23864B97C()
{
  result = qword_27DF11F38;
  if (!qword_27DF11F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F40, qword_238779F00);
    sub_23864BA34();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F38);
  }

  return result;
}

unint64_t sub_23864BA34()
{
  result = qword_27DF11F48;
  if (!qword_27DF11F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F48);
  }

  return result;
}

uint64_t sub_23864BA88@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_238758BB0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InstitutionConsentManagementListView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2386416CC(a1, v9, a2);
}

uint64_t sub_23864BC10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_63Tm_0()
{
  v1 = sub_238757B60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MultipleConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  if (*(v0 + v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v8));
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(v10 + 6);

  v13 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C1E0();
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
  }

  else
  {
    v15 = *&v10[v13];
  }

  v16 = &v10[v6[7]];
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = &v10[v6[8]];
  v20 = sub_238758BB0();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  v22 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10) + 28)];

  v23 = v6[9];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v24 - 8) + 8))(&v10[v23], v24);
  v25 = v6[10];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v26 - 8) + 8))(&v10[v25], v26);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_23864BFCC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_238757B60() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(a2(0) - 8);
  v10 = v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(a1, v3 + v7, v10);
}

unint64_t sub_23864C0CC()
{
  result = qword_27DF11FD8;
  if (!qword_27DF11FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11FC8, &qword_23877A088);
    sub_23864ADA0(&qword_27DF11FE0, type metadata accessor for MultipleConsentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11FD8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23864C1DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_23864C224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23864C2B4()
{
  sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_238757B60();
      if (v2 <= 0x3F)
      {
        sub_238758BB0();
        if (v3 <= 0x3F)
        {
          sub_23864C40C(319, &qword_27DF11FF8, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23864C40C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23864C498()
{
  sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2384B49C4();
      if (v2 <= 0x3F)
      {
        sub_238757B60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23864C5D4()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_238758BB0();
    if (v1 <= 0x3F)
    {
      sub_23864C40C(319, &qword_27DF11FF8, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_23864C6E4()
{
  result = qword_27DF12020;
  if (!qword_27DF12020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12028, &qword_23877A1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E80, &qword_238779E48);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11EB0, &qword_238779E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E78, &qword_238779E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E70, &qword_238779E38);
    sub_23843A3E8(&qword_27DF11EA8, &qword_27DF11E70, &qword_238779E38);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268]);
    type metadata accessor for BankConnectAuthorizationReconsentView(255);
    sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12020);
  }

  return result;
}

unint64_t sub_23864C940()
{
  result = qword_27DF12030;
  if (!qword_27DF12030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12038, qword_23877A1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F80, &qword_23877A050);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11EB0, &qword_238779E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F78, &qword_23877A048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F70, &qword_23877A040);
    sub_23843A3E8(&qword_27DF11FA0, &qword_27DF11F70, &qword_23877A040);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268]);
    type metadata accessor for BankConnectAuthorizationReconsentView(255);
    sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12030);
  }

  return result;
}

unint64_t sub_23864CC14()
{
  result = qword_27DF12068;
  if (!qword_27DF12068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12040, &qword_23877A338);
    sub_23864ADA0(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12068);
  }

  return result;
}

unint64_t sub_23864CCFC()
{
  result = qword_27DF120A8;
  if (!qword_27DF120A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_238448F8C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF120A8);
  }

  return result;
}

unint64_t sub_23864CDB4()
{
  result = qword_27DF120B0;
  if (!qword_27DF120B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12078, &qword_23877A370);
    sub_23857C358();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF120B0);
  }

  return result;
}

uint64_t sub_23864CE6C()
{
  v2 = *(type metadata accessor for ConsentStatusView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_238648A24(v0 + v3);
}

uint64_t objectdestroy_115Tm()
{
  v1 = type metadata accessor for ConsentStatusView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v1[6];
  v10 = sub_238757B60();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  v11 = v1[7];
  v12 = sub_238758BB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v4 + v11, v12);
  v15 = (v4 + v1[8]);
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30) + 32);
  if (!(*(v13 + 48))(&v15[v18], 1, v12))
  {
    v14(&v15[v18], v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v20, v2 | 7);
}

uint64_t sub_23864D198(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23864D214@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleConsentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23864542C(a1, v6, a2);
}

uint64_t objectdestroy_135Tm()
{
  v1 = type metadata accessor for RevokeConsentSection(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C1E0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = v1[7];
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23864D478(uint64_t a1)
{
  v4 = *(type metadata accessor for RevokeConsentSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_23864A4D4(a1, v6, v7, v1 + v5);
}

unint64_t sub_23864D568()
{
  result = qword_27DF12140;
  if (!qword_27DF12140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12148, &qword_23877A4F8);
    sub_23843A3E8(&qword_27DF12150, &qword_27DF12048, &unk_23877A340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12140);
  }

  return result;
}

unint64_t sub_23864D618()
{
  result = qword_27DF12158;
  if (!qword_27DF12158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF120D8, &unk_23877A450);
    sub_23864D6D4();
    sub_23864ADA0(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12158);
  }

  return result;
}

unint64_t sub_23864D6D4()
{
  result = qword_27DF12160;
  if (!qword_27DF12160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12168, &qword_23877A500);
    sub_23843A3E8(&qword_27DF12170, &qword_27DF12178, &qword_23877A508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12160);
  }

  return result;
}

unint64_t sub_23864D784()
{
  result = qword_27DF12190;
  if (!qword_27DF12190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12198, &qword_23877A518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12130, &qword_23877A4E0);
    sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0);
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12190);
  }

  return result;
}

uint64_t sub_23864D8C0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_23875C1E0();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23864D9F4, 0, 0);
}

uint64_t sub_23864D9F4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = [objc_allocWithZone(MEMORY[0x277CD4E38]) initWithCompletion_];
  v1[28] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_23864DC0C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_238449184(0, &qword_27DF0DD80, 0x277CD4E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875ECF0();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_238546EC8;
  v1[13] = &block_descriptor_13;
  [v8 startWithCompletionHandler_];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23864DC0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_23864E5D8;
  }

  else
  {
    v3 = sub_23864DD1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_23864DD1C()
{
  v2 = v0[18];
  v3 = [v2 mapItems];
  sub_238449184(0, &qword_27DF12260, 0x277CD4E80);
  v4 = sub_23875EC80();

  v94 = v2;
  v95 = v0;
  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_23875F3A0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v9 = &selRef_returnDeadline;
      do
      {
        if (v7)
        {
          v10 = MEMORY[0x23EE63F70](v6, v4);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v10 = *(v4 + 8 * v6 + 32);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            result = [v1 v0 + 268];
            if (result)
            {
              v16 = result;
              [result northLat];
              v18 = v17;

              result = [v1 v0 + 268];
              if (result)
              {
                v19 = result;
                [result southLat];
                v21 = v20;

                if (v21 >= v18)
                {
                  v22 = v18;
                }

                else
                {
                  v22 = v21;
                }

                result = [v1 v0 + 268];
                if (result)
                {
                  v23 = result;
                  [result northLat];
                  v25 = v24;

                  result = [v1 v0 + 268];
                  if (result)
                  {
                    v26 = result;
                    [result southLat];
                    v28 = v27;

                    if (v25 > v28)
                    {
                      v29 = v25;
                    }

                    else
                    {
                      v29 = v28;
                    }

                    result = [v1 v0 + 268];
                    if (result)
                    {
                      v30 = result;
                      [result westLng];
                      v32 = v31;

                      result = [v1 v0 + 268];
                      if (result)
                      {
                        v33 = result;
                        [result eastLng];
                        v35 = v34;

                        if (v35 >= v32)
                        {
                          v36 = v32;
                        }

                        else
                        {
                          v36 = v35;
                        }

                        result = [v1 v0 + 268];
                        if (result)
                        {
                          v37 = result;
                          [result westLng];
                          v39 = v38;

                          v93 = v1;
                          result = [v1 v0 + 268];
                          if (result)
                          {
                            v40 = result;
                            v91 = v95[29];
                            v92 = v95[28];

                            [v40 eastLng];
                            v42 = v41;

                            if (v39 <= v42)
                            {
                              v39 = v42;
                            }

                            sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
                            v43 = swift_allocObject();
                            *(v43 + 16) = xmmword_238763310;
                            v44 = MEMORY[0x277D837D0];
                            *(v43 + 56) = MEMORY[0x277D837D0];
                            v45 = sub_238448C58();
                            *(v43 + 64) = v45;
                            *(v43 + 32) = 0xD00000000000003ALL;
                            *(v43 + 40) = 0x800000023878E830;
                            v46 = MEMORY[0x277D839F8];
                            v47 = MEMORY[0x277D83A80];
                            *(v43 + 96) = MEMORY[0x277D839F8];
                            *(v43 + 104) = v47;
                            *(v43 + 72) = v22;
                            *(v43 + 136) = v44;
                            *(v43 + 144) = v45;
                            *(v43 + 112) = 0xD00000000000003ALL;
                            *(v43 + 120) = 0x800000023878E830;
                            *(v43 + 176) = v46;
                            *(v43 + 184) = v47;
                            *(v43 + 152) = v29;
                            v48 = sub_23875EF80();
                            v49 = swift_allocObject();
                            *(v49 + 16) = xmmword_238763310;
                            *(v49 + 56) = v44;
                            *(v49 + 64) = v45;
                            *(v49 + 32) = 0xD00000000000003BLL;
                            *(v49 + 40) = 0x800000023878E890;
                            *(v49 + 96) = v46;
                            *(v49 + 104) = v47;
                            *(v49 + 72) = v36;
                            *(v49 + 136) = v44;
                            *(v49 + 144) = v45;
                            *(v49 + 112) = 0xD00000000000003BLL;
                            *(v49 + 120) = 0x800000023878E890;
                            *(v49 + 176) = v46;
                            *(v49 + 184) = v47;
                            *(v49 + 152) = v39;
                            v50 = sub_23875EF80();
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
                            v51 = swift_allocObject();
                            *(v51 + 16) = xmmword_238763E60;
                            *(v51 + 32) = v48;
                            *(v51 + 40) = v50;
                            v90 = v48;
                            v89 = v50;
                            v52 = sub_23875EC60();

                            v87 = objc_opt_self();
                            v88 = [v87 andPredicateWithSubpredicates_];

                            v53 = swift_allocObject();
                            *(v53 + 16) = xmmword_238763310;
                            v54 = MEMORY[0x277D837D0];
                            *(v53 + 56) = MEMORY[0x277D837D0];
                            *(v53 + 64) = v45;
                            *(v53 + 32) = 0xD000000000000045;
                            *(v53 + 40) = 0x800000023878E8D0;
                            *(v53 + 96) = v46;
                            *(v53 + 104) = v47;
                            *(v53 + 72) = v22;
                            *(v53 + 136) = v54;
                            *(v53 + 144) = v45;
                            *(v53 + 112) = 0xD000000000000045;
                            *(v53 + 120) = 0x800000023878E8D0;
                            *(v53 + 176) = v46;
                            *(v53 + 184) = v47;
                            *(v53 + 152) = v29;
                            v55 = sub_23875EF80();
                            v56 = swift_allocObject();
                            *(v56 + 16) = xmmword_238763310;
                            *(v56 + 56) = v54;
                            *(v56 + 64) = v45;
                            *(v56 + 32) = 0xD000000000000046;
                            *(v56 + 40) = 0x800000023878E920;
                            *(v56 + 96) = v46;
                            *(v56 + 104) = v47;
                            *(v56 + 72) = v36;
                            *(v56 + 136) = v54;
                            *(v56 + 144) = v45;
                            *(v56 + 112) = 0xD000000000000046;
                            *(v56 + 120) = 0x800000023878E920;
                            *(v56 + 176) = v46;
                            *(v56 + 184) = v47;
                            *(v56 + 152) = v39;
                            v57 = sub_23875EF80();
                            v58 = swift_allocObject();
                            *(v58 + 16) = xmmword_238763E60;
                            *(v58 + 32) = v55;
                            *(v58 + 40) = v57;
                            v59 = v55;
                            v60 = v57;
                            v61 = sub_23875EC60();

                            v62 = [v87 andPredicateWithSubpredicates_];

                            v63 = swift_allocObject();
                            *(v63 + 16) = xmmword_238763E60;
                            *(v63 + 32) = v88;
                            *(v63 + 40) = v62;
                            v64 = v88;
                            v65 = v62;
                            v66 = sub_23875EC60();
                            v67 = v95;

                            v68 = [v87 orPredicateWithSubpredicates_];

                            v69 = v91;
                            v70 = v94;
                            goto LABEL_39;
                          }

LABEL_50:
                          __break(1u);
                          return result;
                        }

LABEL_49:
                        __break(1u);
                        goto LABEL_50;
                      }

LABEL_48:
                      __break(1u);
                      goto LABEL_49;
                    }

LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }

LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v12 = v4;
        v0 = v9;
        v1 = v10;
        result = [v10 v9[140]];
        if (!result)
        {
          __break(1u);
          goto LABEL_43;
        }

        v14 = result;
        v15 = [result isValid];

        if (v15)
        {
          goto LABEL_14;
        }

        ++v6;
        v9 = v0;
        v4 = v12;
      }

      while (v11 != v5);
    }
  }

  v67 = v95;
  v71 = v95[24];
  v72 = v95[20];

  sub_23875C140();
  v73 = v72;
  v74 = sub_23875C1B0();
  v75 = sub_23875F000();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = v95[20];
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v76;
    *v78 = v76;
    v79 = v76;
    _os_log_impl(&dword_2383F8000, v74, v75, "Location Token Provider: Empty result for completion: %@", v77, 0xCu);
    sub_238439884(v78, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v78, -1, -1);
    MEMORY[0x23EE64DF0](v77, -1, -1);
  }

  v70 = v95[28];
  v69 = v95[29];
  v80 = v95[24];
  v82 = v95[21];
  v81 = v95[22];

  (*(v81 + 1))(v80, v82);
  v68 = [objc_opt_self() predicateWithValue_];
LABEL_39:

  v83 = v67[27];
  v85 = v67[23];
  v84 = v67[24];
  *v67[19] = v68;

  v86 = v67[1];

  return v86();
}

uint64_t sub_23864E5D8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  swift_willThrow();
  sub_23875C140();
  v4 = v3;
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875F000();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v13;
    v11[1] = v9;
    v14 = v9;
    _os_log_impl(&dword_2383F8000, v6, v7, "Location Token Provider: Local Search exception: %@. Completion: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09930, &unk_2387638C0);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 168);

  (*(v19 + 8))(v18, v20);
  v21 = [objc_opt_self() predicateWithValue_];

  v22 = *(v0 + 216);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  **(v0 + 152) = v21;

  v25 = *(v0 + 8);

  return v25();
}

char *sub_23864E7EC()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  v7 = &v0[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  *v7 = 0;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF122A8, &qword_23877A570);
  bzero(&v7[v9], *(*(v10 - 8) + 64));
  sub_238650D20(v5, &v7[v9]);
  v11 = *&v0[v6];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 filterExcludingAllCategories];
  [v13 setPointOfInterestFilter_];

  v15 = *&v0[v6];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 filterIncludingAll];
  [v17 setAddressFilter_];

  [*&v0[v6] setResultTypes_];
  [*&v0[v6] _setPrivateFilterType_];
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [*&v19[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer] setDelegate_];
  return v19;
}

uint64_t sub_23864EA78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_23864EA9C, 0, 0);
}

uint64_t sub_23864EA9C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  if ([v1 isSearching])
  {
    [v1 cancel];
  }

  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF122B0, &unk_23877A5E0);
  *v8 = v0;
  v8[1] = sub_23864EC0C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6574287472617473, 0xEC000000293A7478, sub_238650DA0, v6, v9);
}

uint64_t sub_23864EC0C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_238582B3C;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);

    v4 = sub_23864ED30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23864ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a1;
  v4 = sub_23875E5C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875E5E0();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_238449184(0, &qword_27DF12280, 0x277D85C78);
    v28 = sub_23875F0A0();
    (*(v13 + 16))(v16, v30, v12);
    v19 = *(v13 + 80);
    v29 = v5;
    v30 = v8;
    v20 = (v19 + 40) & ~v19;
    v21 = swift_allocObject();
    v22 = v31;
    *(v21 + 2) = v18;
    *(v21 + 3) = v22;
    *(v21 + 4) = v32;
    (*(v13 + 32))(&v21[v20], v16, v12);
    aBlock[4] = sub_238650DAC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238461548;
    aBlock[3] = &block_descriptor_22;
    v23 = _Block_copy(aBlock);
    v24 = v18;

    sub_23875E5D0();
    v35 = MEMORY[0x277D84F90];
    sub_238650C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
    sub_238650CBC();
    v25 = v34;
    sub_23875F310();
    v26 = v28;
    MEMORY[0x23EE63B90](0, v11, v25, v23);
    _Block_release(v23);

    (*(v29 + 8))(v25, v4);
    (*(v33 + 8))(v11, v30);
  }

  return result;
}

void sub_23864F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  v9 = [v8 queryFragment];
  v10 = sub_23875EA80();
  v12 = v11;

  if (v10 == a2 && v12 == a3)
  {

    goto LABEL_14;
  }

  v14 = sub_23875F630();

  if (v14)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
    sub_23875ED10();

    return;
  }

  v15 = (a1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
  os_unfair_lock_lock(v15);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
  sub_238439884(v15 + v16, &qword_27DF12230, &qword_23877A538);
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a4, v17);
  (*(v18 + 56))(v15 + v16, 0, 1, v17);

  os_unfair_lock_unlock(v15);
  v19 = sub_23875EA50();
  [v8 setQueryFragment_];
}

void sub_23864F400()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer);
  v2 = [v1 queryFragment];
  v3 = sub_23875EA80();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_23875EA50();
    [v1 setQueryFragment_];
  }
}

id sub_23864F4CC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_completer] cancel];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for LocationSearchService()
{
  result = qword_27DF12218;
  if (!qword_27DF12218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23864F658(void *a1)
{
  v2 = sub_23875E5C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_23875E5E0();
  v7 = *(v17[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v11 = sub_23875F0A0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  aBlock[4] = sub_238650C54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_11;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_23875E5D0();
  v17[1] = MEMORY[0x277D84F90];
  sub_238650C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_238650CBC();
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v10, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v17[0]);
}

void sub_23864F924(void *a1, uint64_t a2)
{
  v32[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = sub_23875ED50();
  v11 = sub_23875ED40();
  v32[0] = v10;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = MEMORY[0x277D84F90];
  v12 = [a1 results];
  sub_238449184(0, &qword_27DF122A0, 0x277CD4E30);
  v13 = sub_23875EC80();

  if (v13 >> 62)
  {
    v14 = sub_23875F3A0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v9;
  v34 = v11;
  v35 = v6;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x23EE63F70](v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 _placeType];
      if (v19 > 0x10 || ((1 << v19) & 0x187A1) == 0)
      {
        v21 = v18;
        MEMORY[0x23EE63730]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23875EC90();
        }

        sub_23875ECB0();

        v16 = v37;
      }

      else
      {
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = (Strong + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540) + 28);
    sub_23875ED40();
    sub_23875ECE0();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v27 = v35;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v28 = v33;
    sub_238650BE4(v24 + v25, v33);

    os_unfair_lock_unlock(v24);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
    v28 = v33;
    (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
    v27 = v35;
  }

  sub_238650BE4(v28, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    sub_238439884(v28, &qword_27DF12230, &qword_23877A538);

    sub_238439884(v27, &qword_27DF12230, &qword_23877A538);
  }

  else
  {
    v36 = v16;
    sub_23875ED10();
    sub_238439884(v28, &qword_27DF12230, &qword_23877A538);
    (*(v31 + 8))(v27, v30);
  }
}

void sub_23864FEA4()
{
  sub_23864FF44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23864FF44()
{
  if (!qword_27DF12228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12230, &qword_23877A538);
    v0 = sub_23875C060();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12228);
    }
  }
}

id sub_23864FFA8()
{
  result = [objc_allocWithZone(type metadata accessor for LocationSearchService()) init];
  qword_27DF2F888 = result;
  return result;
}

uint64_t sub_23864FFDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2384494A4;

  return sub_23864D8C0(a1);
}

id sub_238650090@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v11 = v1[2];

  v5 = sub_238650240(v11);
  v7 = v6;
  v8 = sub_23875E030();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v11;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = 0xD000000000000012;
  a1[7] = 0x6E6F697461636F4CLL;
  a1[8] = 0xE800000000000000;
  a1[6] = 0x800000023878C470;
  *a1 = v4;
  a1[1] = v3;
  a1[9] = &unk_238782BD0;
  a1[10] = v9;

  return v11;
}

uint64_t sub_23865018C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238547590;

  return (sub_238650370)(a1, a2);
}

uint64_t sub_238650240(void *a1)
{
  v2 = [a1 title];
  v3 = sub_23875EA80();

  v4 = v3;
  v15 = v3;
  v5 = [a1 subtitle];
  v6 = sub_23875EA80();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return v4;
  }

  v10 = [a1 subtitle];
  v11 = sub_23875EA80();
  v13 = v12;

  MEMORY[0x23EE63650](v11, v13);

  MEMORY[0x23EE63650](8236, 0xE200000000000000);

  return v15;
}

uint64_t sub_238650370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238650390, 0, 0);
}

uint64_t sub_238650390()
{
  v1 = v0[2];
  v2 = v0[3];
  if (sub_23875EB40() >= 3)
  {
    if (qword_27DF08D40 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_2386504D8;
    v8 = v0[2];
    v7 = v0[3];

    return sub_23864EA78(v8, v7);
  }

  else
  {
    if (qword_27DF08D40 != -1)
    {
      swift_once();
    }

    sub_23864F400();
    v3 = v0[1];
    v4 = MEMORY[0x277D84F90];

    return v3(v4);
  }
}

uint64_t sub_2386504D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_2386509A0;
  }

  else
  {
    v5 = sub_2386505EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2386505EC()
{
  v1 = *(v0 + 40);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  while (1)
  {
    v5 = v44[5];
    if ((v1 & 0xC000000000000001) != 0)
    {

      if (v4)
      {
        sub_238449184(0, &qword_27DF122A0, 0x277CD4E30);
        v6 = v44[5];
        sub_23875F480();
        if (v4 != 1)
        {
          v7 = v44[5];
          sub_23875F480();
          if (v4 != 2)
          {
            v8 = v44[5];
            sub_23875F480();
          }
        }

        v9 = v44[5];
      }

      if (!v2)
      {
LABEL_13:
        v10 = v1 & 0xFFFFFFFFFFFFFF8;
        v11 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_18;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_13;
      }
    }

    v12 = v44[5];
    if ((v1 & 0x8000000000000000) != 0)
    {
      v13 = v44[5];
    }

    v10 = sub_23875F540();
    v11 = v14;
    v2 = v15;
    v1 = v16;

    v4 = v1 >> 1;
LABEL_18:
    v17 = v4 - v2;
    if (__OFSUB__(v4, v2))
    {
      goto LABEL_44;
    }

    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
      break;
    }

    *&v46 = MEMORY[0x277D84F90];
    sub_2385FE8DC(0, v17 & ~(v17 >> 63), 0);
    v1 = v44;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = v46;
      if (v4 <= v2)
      {
        v20 = v2;
      }

      else
      {
        v20 = v4;
      }

      v21 = v20 - v2;
      v22 = (v11 + 8 * v2);
      while (v21)
      {
        v23 = v44[3];
        *&v46 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v26 = v25 + 1;
        v2 = *v22;

        if (v25 >= v24 >> 1)
        {
          sub_2385FE8DC((v24 > 1), v25 + 1, 1);
          v23 = v44[3];
        }

        v27 = v44[2];
        *(v19 + 16) = v26;
        v28 = (v19 + 24 * v25);
        v28[4] = v27;
        v28[5] = v23;
        v28[6] = v2;
        --v21;
        ++v22;
        if (!--v17)
        {
          v18 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_42:
      v10 = sub_23875F3A0();
      if ((sub_23875F3A0() & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    if (v10 >= 3)
    {
      v43 = 3;
    }

    else
    {
      v43 = v10;
    }

    if (v10 >= 0)
    {
      v4 = v43;
    }

    else
    {
      v4 = 3;
    }

    result = sub_23875F3A0();
    if (result < v4)
    {
      goto LABEL_53;
    }
  }

  v26 = *(MEMORY[0x277D84F90] + 16);
  v29 = v44;
  if (v26)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_32:
    v45 = v18;
    sub_2385FE78C(0, v26, 0);
    v30 = v45;
    v31 = *(v45 + 16);
    v32 = 48 * v31 + 72;
    v33 = (v19 + 48);
    do
    {
      v35 = *(v33 - 2);
      v34 = *(v33 - 1);
      v36 = *v33;
      v37 = *(v45 + 24);

      v38 = v36;
      if (v31 >= v37 >> 1)
      {
        v40 = v37 > 1;
        v41 = v38;
        sub_2385FE78C(v40, v31 + 1, 1);
        v38 = v41;
      }

      *(v45 + 16) = v31 + 1;
      v39 = (v45 + v32);
      *(v39 - 5) = v35;
      *(v39 - 4) = v34;
      *(v39 - 3) = v38;
      *(v39 - 1) = v46;
      *v39 = 4;
      v32 += 48;
      v33 += 3;
      ++v31;
      --v26;
    }

    while (v26);
    swift_unknownObjectRelease();

    v29 = v44;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];

    swift_unknownObjectRelease();
  }

  v42 = v29[1];

  return v42(v30);
}

uint64_t sub_2386509A0()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_238650A08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = (v1 + OBJC_IVAR____TtC12FinanceKitUI21LocationSearchService_resultsContinuation);
  os_unfair_lock_lock(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540);
  sub_238650BE4(v10 + *(v11 + 28), v9);
  os_unfair_lock_unlock(v10);
  sub_238650BE4(v9, v6);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_238439884(v9, &qword_27DF12230, &qword_23877A538);
    return sub_238439884(v6, &qword_27DF12230, &qword_23877A538);
  }

  else
  {
    v16[1] = a1;
    v15 = a1;
    sub_23875ED00();
    sub_238439884(v9, &qword_27DF12230, &qword_23877A538);
    return (*(v13 + 8))(v6, v12);
  }
}

uint64_t sub_238650BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238650C64()
{
  result = qword_27DF12288;
  if (!qword_27DF12288)
  {
    sub_23875E5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12288);
  }

  return result;
}

unint64_t sub_238650CBC()
{
  result = qword_27DF12298;
  if (!qword_27DF12298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12290, &qword_23877A568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12298);
  }

  return result;
}

uint64_t sub_238650D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12230, &qword_23877A538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_238650DAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_23864F10C(v2, v3, v4, v5);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ExtensionUIServiceHostView.init(appExtension:lifecycleHandler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v17 = a4;
  v18 = a2;
  v8 = sub_23875C0A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2387591C0();
  v14 = sub_23875C090();
  (*(v9 + 8))(v12, v8);
  *a5 = v14;
  v15 = type metadata accessor for ExtensionUIServiceHostView();
  (*(*(a3 - 8) + 32))(a5 + *(v15 + 44), v18, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtensionUIServiceHostView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v9 + 32);
  v12 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v26 - v19;
  v21 = *v2;
  (*(v5 + 16))(v8, v2 + *(a1 + 44), v4, v18);
  *v16 = v21;
  (*(v5 + 32))(&v16[*(v12 + 44)], v8, v4);
  WitnessTable = swift_getWitnessTable();
  sub_23844EA0C(v16, v12, WitnessTable);
  v23 = *(v13 + 8);
  v24 = v21;
  v23(v16, v12);
  sub_23844EA0C(v20, v12, WitnessTable);
  return (v23)(v20, v12);
}

uint64_t sub_2386511FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23865129C()
{
  result = qword_27DF12340;
  if (!qword_27DF12340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12340);
  }

  return result;
}

uint64_t sub_2386512EC(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_23865138C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator();
  return sub_238652668(v1);
}

uint64_t sub_2386513C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v7 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  v8 = *(*(v7 - 8) + 16);

  return v8(a1, &v1[v3], v7);
}

id sub_238651498()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_238651518(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_238651518(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v5 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - v8);
  v10 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  [v10 setDelegate_];
  sub_2386513C8(v9);
  v11 = *(v6 + 8);
  v12 = *v9;
  v11(v9, v5);
  v13 = [objc_allocWithZone(MEMORY[0x277CC5E78]) initWithExtensionIdentity_];

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v2, AssociatedConformanceWitness);
  v15 = sub_23875EA50();

  [v13 setSceneIdentifier_];

  [v10 setConfiguration_];
  return v10;
}

id sub_23865172C(void *a1)
{
  v38[5] = *MEMORY[0x277D85DE8];
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v33 - v6;
  v10 = *((v9 & v8) + 0x50);
  v11 = *((v9 & v8) + 0x60);
  v12 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  result = [a1 extensionProcess];
  if (result)
  {
    v35 = v13;
    v36 = result;
    v37 = v12;
    v38[0] = 0;
    v19 = [result makeXPCConnectionWithError_];
    v20 = v38[0];
    if (v19)
    {
      v21 = v19;
      v22 = *(swift_getAssociatedConformanceWitness() + 8);
      v34 = v11;
      v23 = *(v22 + 8);
      sub_23875A490();
      v24 = v20;
      v25 = v21;
      sub_238651AEC(v38);
      v26 = sub_23875A470();
      sub_2386513C8(v17);
      v27 = v37;
      (*(v4 + 16))(v7, &v17[*(v37 + 44)], v3);
      (*(v35 + 8))(v17, v27);
      (*(v34 + 24))(v26, v3);
    }

    else
    {
      v28 = v38[0];
      v29 = v11;
      v30 = sub_23875B730();

      swift_willThrow();
      sub_2386513C8(v17);
      v31 = v37;
      (*(v4 + 16))(v7, &v17[*(v37 + 44)], v3);
      (*(v35 + 8))(v17, v31);
      (*(v29 + 32))(v30, v3, v29);
    }

    result = (*(v4 + 8))(v7, v3);
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238651AEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2387594F0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2387594E0();
  v6 = MEMORY[0x277CC7940];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

void sub_238651B44(void *a1, uint64_t a2, void *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_23865172C(v5);
}

void sub_238651C1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_238652724(a4);
}

void sub_238651CFC(void *a1)
{
  v1 = (*MEMORY[0x277D85000] & *a1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  sub_238652918();
}

id sub_238651DCC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_238651E50(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v7 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  (*(*(v7 - 8) + 8))(&a1[v3], v7);
  v8 = *&a1[*((*v2 & *a1) + 0x70)];
}

unint64_t sub_238651F58(uint64_t a1)
{
  result = sub_23865129C();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_238651FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
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

  return v7 + (v9 | v14) + 1;
}

void sub_238652164(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

id sub_2386523D0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_2386526A8();
}

id sub_2386523E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_23865138C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_238652408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_238652484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_238652500()
{
  swift_getWitnessTable();
  sub_23875D6B0();
  __break(1u);
}

id sub_238652540(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x70)] = 0;
  v6 = *((*v4 & *v1) + 0x68);
  v7 = *((v5 & v3) + 0x50);
  v8 = *((v5 & v3) + 0x58);
  v9 = *((v5 & v3) + 0x60);
  v10 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  (*(*(v10 - 8) + 16))(&v1[v6], a1, v10);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_238652668(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = objc_allocWithZone(type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable.Coordinator());
  return sub_238652540(a1);
}

id sub_2386526A8()
{
  type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  swift_getWitnessTable();
  sub_23875D720();
  sub_23875D710();
  v0 = sub_238651498();

  return v0;
}

uint64_t sub_238652724(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v18 - v6;
  v10 = *((v9 & v8) + 0x50);
  v11 = *((v9 & v8) + 0x60);
  v12 = type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_2386513C8(&v18 - v15);
  (*(v4 + 16))(v7, &v16[*(v12 + 44)], v3);
  (*(v13 + 8))(v16, v12);
  (*(v11 + 40))(a1, v3, v11);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238652958@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  started = type metadata accessor for SharingStartDate(0);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758680();
  v39 = v8;
  v44 = *(v8 - 8);
  v9 = v44;
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v38 = &v37 - v13;
  v15 = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v16 = *(v15 + 24);
  v17 = v15;
  v42 = v15;
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v48 = a1;
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v18 = *(a1 + 16);
  v40 = *(v9 + 16);
  v40(v14, a1 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v8);
  v19 = type metadata accessor for AccountStartDateModel();

  v43 = a3;
  sub_23875E420();
  v20 = v41;
  *(a3 + *(v17 + 28)) = v41;
  swift_getKeyPath();
  v48 = v18;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  v21 = v20;
  sub_23875BE90();

  v22 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  v23 = v45;
  sub_2386588C0(v18 + v22, v45, type metadata accessor for SharingStartDate);
  swift_getKeyPath();
  v47 = v18;
  sub_23875BE90();

  LOBYTE(v22) = *(v18 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
  v24 = type metadata accessor for SharingStartDateModel(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2384CA358(v23, v22);
  v28 = v46;
  v30 = v38;
  v29 = v39;
  v40(v46, v38, v39);
  v31 = *(v19 + 48);
  v32 = *(v19 + 52);
  v33 = swift_allocObject();
  sub_23875BEC0();

  v34 = v44;
  (*(v44 + 8))(v30, v29);
  *(v33 + 16) = v27;
  result = (*(v34 + 32))(v33 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v28, v29);
  v36 = (v43 + *(v42 + 20));
  *v36 = v33;
  v36[1] = 0;
  return result;
}

uint64_t sub_238652D94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_2386588C0(v3 + v4, a2, type metadata accessor for SharingStartDate);
}

uint64_t sub_238652E70(uint64_t a1, uint64_t *a2)
{
  started = type metadata accessor for SharingStartDate(0);
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2386588C0(a1, v7, type metadata accessor for SharingStartDate);
  v8 = *a2;
  return sub_2384C9E84(v7);
}

uint64_t sub_238652F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  *a2 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
  return result;
}

uint64_t sub_238652FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  sub_23843981C(v1 + *(started + 24), v11, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2386531F0()
{
  v39 = sub_23875C600();
  v38 = *(v39 - 8);
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v37 = *(v0 + *(started + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v6 = (v0 + *(started + 20));
  v8 = *v6;
  v7 = v6[1];
  v36 = v8;
  v42 = v8;
  v43 = v7;
  v35 = v7;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  v9 = v41[0];
  swift_getKeyPath();
  v42 = v9;
  v34[1] = sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v10 = *(v9 + 16);

  swift_getKeyPath();
  v42 = v10;
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  if (*(v10 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v11 = 0xE300000000000000;
    v12 = 7105633;
  }

  else
  {
    swift_getKeyPath();
    v42 = v10;
    sub_23875BE90();

    v13 = v10 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v14 = (v13 + *(type metadata accessor for SharingStartDate(0) + 24));
    v12 = *v14;
    v11 = v14[1];
  }

  *(inited + 40) = v12;
  *(inited + 48) = v11;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_238763300;
  v17 = *MEMORY[0x277D383D8];
  *(v16 + 32) = *MEMORY[0x277D383D8];
  v18 = *MEMORY[0x277D38428];
  v19 = sub_23875EA80();
  v20 = MEMORY[0x277D38390];
  *(v16 + 40) = v19;
  *(v16 + 48) = v21;
  v22 = *v20;
  *(v16 + 56) = *v20;
  *(v16 + 64) = 1701736292;
  v23 = *MEMORY[0x277D384B8];
  *(v16 + 72) = 0xE400000000000000;
  *(v16 + 80) = v23;
  *(v16 + 88) = 0xD000000000000024;
  *(v16 + 96) = 0x8000000238785040;
  v24 = v17;
  v25 = v22;
  v26 = v23;
  v27 = sub_23854B138(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v27;
  sub_2385C33E4(v15, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v41);

  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238658BD0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v30 = sub_23875E910();

  [v29 subject:v37 sendEvent:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  sub_23875E400();
  v41[0] = v36;
  v41[1] = v35;
  sub_23875E1B0();
  v31 = v40;
  swift_getKeyPath();
  v41[0] = v31;
  sub_23875BE90();

  v32 = *(v31 + 16);

  sub_2384A6A54(v32);

  sub_238652FE8(v3);
  sub_23875C5F0();
  return (*(v38 + 8))(v3, v39);
}

uint64_t sub_238653800@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  started = type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView(0);
  v3 = started - 8;
  v4 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125B0, &qword_23877AAD0);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v50 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125B8, &qword_23877AAD8);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = (v1 + *(type metadata accessor for SingleAccountStartDateSelectionView(0) + 20));
  v21 = *v19;
  v20 = v19[1];
  *&v55 = v21;
  *(&v55 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  v22 = v54;
  swift_getKeyPath();
  *&v55 = v22;
  sub_238658BD0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v23 = *(v22 + 16);

  type metadata accessor for SharingStartDateModel(0);
  sub_238658BD0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875E420();
  v50 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C230, &qword_23877AAE0);
  v24 = type metadata accessor for SharingStartDate(0);
  v25 = *(*(v24 - 8) + 72);
  v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_238763310;
  v28 = v27 + v26;
  if (qword_27DF08CE0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v24, qword_27DF2F6A8);
  sub_2386588C0(v29, v28, type metadata accessor for SharingStartDate);
  if (qword_27DF08CE8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v24, qword_27DF2F6C0);
  sub_2386588C0(v30, v28 + v25, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_27DF2F6D8);
  sub_2386588C0(v31, v28 + 2 * v25, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v24, qword_27DF2F6F0);
  sub_2386588C0(v32, v28 + 3 * v25, type metadata accessor for SharingStartDate);
  *&v6[v50] = v27;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_238658928(v6, v9, type metadata accessor for SingleAccountStartDateSelectionView.AccountTimeSharingListView);
  v33 = &v9[*(v51 + 36)];
  v34 = v60;
  *(v33 + 4) = v59;
  *(v33 + 5) = v34;
  *(v33 + 6) = v61;
  v35 = v56;
  *v33 = v55;
  *(v33 + 1) = v35;
  v36 = v58;
  *(v33 + 2) = v57;
  *(v33 + 3) = v36;
  v37 = sub_23875D790();
  sub_23875C3D0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2384396E4(v9, v15, &qword_27DF125B0, &qword_23877AAD0);
  v46 = &v15[*(v52 + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_2384396E4(v15, v18, &qword_27DF125B8, &qword_23877AAD8);
  sub_23843981C(v18, v12, &qword_27DF125B8, &qword_23877AAD8);
  v47 = v53;
  sub_23843981C(v12, v53, &qword_27DF125B8, &qword_23877AAD8);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF125C0, &qword_23877AAE8) + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_238439884(v18, &qword_27DF125B8, &qword_23877AAD8);
  return sub_238439884(v12, &qword_27DF125B8, &qword_23877AAD8);
}

uint64_t SingleAccountStartDateSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v3 = started - 8;
  v49 = *(started - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](started);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758680();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124B0, &qword_23877A830);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124B8, &qword_23877A838);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v42 = &v42 - v17;
  v51 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124C0, &qword_23877A840);
  sub_23843A3E8(&qword_27DF124C8, &qword_27DF124C0, &qword_23877A840);
  sub_23875C8F0();
  v18 = (v1 + *(v3 + 28));
  v19 = v1;
  v21 = *v18;
  v20 = v18[1];
  v52 = v21;
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124D0, &qword_23877A848);
  sub_23875E1B0();
  (*(v6 + 16))(v9, v56 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v5);

  v22 = sub_2387585B0();
  v24 = v23;
  (*(v6 + 8))(v9, v5);
  v52 = v22;
  v53 = v24;
  v25 = sub_23843A3E8(&qword_27DF124D8, &qword_27DF124B0, &qword_23877A830);
  v26 = sub_2384397A8();
  v27 = MEMORY[0x277D837D0];
  v28 = v42;
  sub_23875DC70();

  (*(v43 + 8))(v13, v10);
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  v52 = v10;
  v53 = v27;
  v54 = v25;
  v55 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v30 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  v52 = v29;
  v53 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v47;
  v32 = v44;
  sub_23875DEF0();
  (*(v45 + 8))(v28, v32);
  v33 = v19;
  v34 = v19;
  v35 = v46;
  sub_2386588C0(v34, v46, type metadata accessor for SingleAccountStartDateSelectionView);
  v36 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v37 = swift_allocObject();
  sub_238658928(v35, v37 + v36, type metadata accessor for SingleAccountStartDateSelectionView);
  v38 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E8, &qword_23877A870) + 36));
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_2386553E8;
  v38[3] = v37;
  sub_2386588C0(v33, v35, type metadata accessor for SingleAccountStartDateSelectionView);
  v39 = swift_allocObject();
  sub_238658928(v35, v39 + v36, type metadata accessor for SingleAccountStartDateSelectionView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124F0, &qword_23877A878);
  v41 = (v31 + *(result + 36));
  *v41 = sub_2386558CC;
  v41[1] = v39;
  v41[2] = 0;
  v41[3] = 0;
  return result;
}

uint64_t sub_238654474@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D760();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12568, &qword_23877AA90);
  sub_238654548(a1, &a2[*(v4 + 44)]);
}