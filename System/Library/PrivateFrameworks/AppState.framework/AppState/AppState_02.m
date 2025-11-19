uint64_t sub_2225FBCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for State();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_2225FCAD4(a1, &v25 - v18, type metadata accessor for State);
  sub_2225FCAD4(a2, &v19[v20], type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_2225FCB3C(&v19[v20], type metadata accessor for State);
      v22 = v19;
LABEL_9:
      sub_2225FCB3C(v22, type metadata accessor for State);
      v23 = 1;
      return v23 & 1;
    }

LABEL_7:
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_2225E22D4(v19, &qword_27D010A78, qword_22261D520);
      v23 = 0;
      return v23 & 1;
    }

    sub_2225FCB3C(&v19[v20], type metadata accessor for AppInstallation);
    v22 = v19;
    goto LABEL_9;
  }

  sub_2225FCAD4(v19, v14, type metadata accessor for State);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_2225FCB3C(v14, type metadata accessor for AppInstallation);
    goto LABEL_7;
  }

  sub_2225FCB9C(v14, v10, type metadata accessor for AppInstallation);
  sub_2225FCB9C(&v19[v20], v8, type metadata accessor for AppInstallation);
  v23 = sub_2225FBFE8(&v10[*(v4 + 20)], &v8[*(v4 + 20)]);
  sub_2225FCB3C(v8, type metadata accessor for AppInstallation);
  sub_2225FCB3C(v10, type metadata accessor for AppInstallation);
  sub_2225FCB3C(v19, type metadata accessor for State);
  return v23 & 1;
}

uint64_t sub_2225FBFE8(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v87 - v5;
  v6 = type metadata accessor for AppInstallation.Phase(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v91 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v87 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v87 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = (&v87 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v88 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v96 = (&v87 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v94 = (&v87 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v93 = &v87 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v97 = &v87 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v87 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v87 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v87 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v87 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v87 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010980, &qword_22261CB68);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v87 - v45;
  v47 = *(v44 + 56);
  sub_2225FCAD4(a1, &v87 - v45, type metadata accessor for AppInstallation.Phase);
  sub_2225FCAD4(v98, &v46[v47], type metadata accessor for AppInstallation.Phase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2225FCAD4(v46, v30, type metadata accessor for AppInstallation.Phase);
      v60 = swift_getEnumCaseMultiPayload();
      if (v60 == 2)
      {
        v56 = v46;
        sub_2225FCB3C(&v46[v47], type metadata accessor for AppInstallation.Progress);
        v61 = v30;
        goto LABEL_29;
      }

      if (v60 == 1)
      {
        v56 = v46;
        v58 = v30;
        goto LABEL_23;
      }

      v74 = v30;
LABEL_33:
      sub_2225FCB3C(v74, type metadata accessor for AppInstallation.Progress);
      goto LABEL_34;
    }

    v54 = v41;
    sub_2225FCAD4(v46, v41, type metadata accessor for AppInstallation.Phase);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 != 3)
    {
      v56 = v46;
      if (v55)
      {
        sub_2225FCB3C(v54, type metadata accessor for AppInstallation.Progress);
LABEL_37:
        sub_2225FCB3C(&v56[v47], type metadata accessor for AppInstallation.Phase);
        v59 = v56;
        goto LABEL_38;
      }

      goto LABEL_17;
    }

    v69 = *&v46[v47];
    v70 = swift_projectBox();
    v56 = v46;
    sub_2225FCAD4(v70, v39, type metadata accessor for AppInstallation.Phase);
    sub_2225FCAD4(v39, v36, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2225FCB3C(v39, type metadata accessor for AppInstallation.Phase);
      v71 = *v36;
      v72 = swift_projectBox();
      v73 = v92;
      sub_2225FCC04(v72, v92);
      sub_2225FCB3C(v73, type metadata accessor for AppInstallation.Phase);
    }

    else
    {
      sub_2225FCB3C(v36, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB9C(v39, v33, type metadata accessor for AppInstallation.Phase);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_2225FCB3C(v33, type metadata accessor for AppInstallation.Progress);

        v61 = v54;
        goto LABEL_29;
      }

      sub_2225FCB3C(v33, type metadata accessor for AppInstallation.Phase);
    }

LABEL_45:

    sub_2225FCB3C(v54, type metadata accessor for AppInstallation.Progress);
    sub_2225FCB3C(v46, type metadata accessor for AppInstallation.Phase);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      v59 = v46;
      goto LABEL_38;
    }

    v49 = v96;
    sub_2225FCAD4(v46, v96, type metadata accessor for AppInstallation.Phase);
    v50 = *v49;
    v51 = swift_projectBox();
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 3)
    {
      v78 = v46;
      v79 = v95;
      sub_2225FCAD4(&v46[v47], v95, type metadata accessor for AppInstallation.Phase);
      v80 = *v79;
      v81 = swift_projectBox();
      v82 = v90;
      sub_2225FCAD4(v51, v90, type metadata accessor for AppInstallation.Phase);
      v83 = v81;
      v84 = v91;
      sub_2225FCAD4(v83, v91, type metadata accessor for AppInstallation.Phase);
      v77 = sub_2225FBFE8(v82, v84);
      sub_2225FCB3C(v84, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB3C(v82, type metadata accessor for AppInstallation.Phase);

      sub_2225FCB3C(v78 + v47, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB3C(v78, type metadata accessor for AppInstallation.Phase);
      return v77 & 1;
    }

    if (v52 == 2)
    {
      v53 = v89;
      sub_2225FCAD4(&v46[v47], v89, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v52)
      {
LABEL_9:

LABEL_34:
        sub_2225E22D4(v46, &qword_27D010980, &qword_22261CB68);
LABEL_46:
        v77 = 0;
        return v77 & 1;
      }

      v53 = v88;
      sub_2225FCAD4(&v46[v47], v88, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_8:
        sub_2225E22D4(v53, &qword_27D010CD8, qword_22261E558);
        goto LABEL_9;
      }
    }

    v75 = v51;
    v76 = v95;
    sub_2225FCAD4(v75, v95, type metadata accessor for AppInstallation.Phase);
    v56 = v46;
    sub_2225FCB3C(v53, type metadata accessor for AppInstallation.Progress);
    sub_2225FCB3C(v76, type metadata accessor for AppInstallation.Progress);

    goto LABEL_37;
  }

  v54 = v97;
  sub_2225FCAD4(v46, v97, type metadata accessor for AppInstallation.Phase);
  v57 = swift_getEnumCaseMultiPayload();
  if (v57 == 3)
  {
    v62 = *&v46[v47];
    v63 = swift_projectBox();
    v64 = v93;
    sub_2225FCAD4(v63, v93, type metadata accessor for AppInstallation.Phase);
    v65 = v94;
    sub_2225FCAD4(v64, v94, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2225FCB3C(v64, type metadata accessor for AppInstallation.Phase);
      v66 = *v65;
      v67 = swift_projectBox();
      v68 = v92;
      sub_2225FCC04(v67, v92);
      sub_2225FCB3C(v68, type metadata accessor for AppInstallation.Phase);
    }

    else
    {
      sub_2225FCB3C(v65, type metadata accessor for AppInstallation.Phase);
      v85 = v87;
      sub_2225FCB9C(v64, v87, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_2225FCB3C(v85, type metadata accessor for AppInstallation.Progress);

        sub_2225FCB3C(v54, type metadata accessor for AppInstallation.Progress);
        v59 = v46;
        goto LABEL_38;
      }

      sub_2225FCB3C(v85, type metadata accessor for AppInstallation.Phase);
    }

    goto LABEL_45;
  }

  if (v57 != 2)
  {
    v74 = v54;
    goto LABEL_33;
  }

  v56 = v46;
LABEL_17:
  v58 = v54;
LABEL_23:
  sub_2225FCB3C(v58, type metadata accessor for AppInstallation.Progress);
  v61 = &v56[v47];
LABEL_29:
  sub_2225FCB3C(v61, type metadata accessor for AppInstallation.Progress);
  v59 = v56;
LABEL_38:
  sub_2225FCB3C(v59, type metadata accessor for AppInstallation.Phase);
  v77 = 1;
  return v77 & 1;
}

uint64_t sub_2225FCAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225FCB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2225FCB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225FCC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *ManagedRestrictions.__allocating_init(accounts:)(uint64_t *a1)
{
  sub_2225D6718(a1, v6);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultCenter];
    swift_allocObject();
    v5 = sub_2225FD71C(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2225FCD38()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22261AF10();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280D9EC18 != -1)
  {
    swift_once();
  }

  v5 = sub_22261B150();
  __swift_project_value_buffer(v5, qword_280DA0A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v6 = *(sub_22261AF30() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  sub_22261AED0();
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v9 = v0[9];
  v11[3] = v2;
  v11[4] = &protocol witness table for ManagedRestrictions;
  v11[0] = v1;

  sub_22261AE90();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t ManagedRestrictions.deinit()
{
  [*(v0 + 64) removeObserver_];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 72);

  return v0;
}

uint64_t ManagedRestrictions.__deallocating_deinit()
{
  [*(v0 + 64) removeObserver_];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t ManagedRestrictions.maxAppContentRating.getter()
{
  v1 = *v0;
  v2 = [v0[7] effectiveValueForSetting_];
  if (!v2)
  {
    return static Restrictions.defaultMaxAppContentRating.getter();
  }

  v3 = v2;
  v4 = [v2 integerValue];

  return v4;
}

uint64_t ManagedRestrictions.hasManagedAppleID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-v3];
  v5 = sub_22261B0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22261AF80();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2225D8124(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    swift_getKeyPath();
    sub_22261B0A0();

    (*(v6 + 8))(v9, v5);
    return v12[15];
  }
}

uint64_t sub_2225FD32C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22261AF10();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280D9EC18 != -1)
  {
    swift_once();
  }

  v5 = sub_22261B150();
  __swift_project_value_buffer(v5, qword_280DA0A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v6 = *(sub_22261AF30() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  sub_22261AED0();
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v9 = v0[9];
  v11[3] = v2;
  v11[4] = &protocol witness table for ManagedRestrictions;
  v11[0] = v1;

  sub_22261AE90();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t *sub_2225FD71C(uint64_t *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010958, &qword_22261E610);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-1] - v12;
  sub_2225D6718(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CE0, &qword_22261E618);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = a2;
  v18 = a3;
  v4[9] = sub_22261AEA0();
  [v18 addObserver:v4 selector:sel_effectiveSettingsChanged_ name:*MEMORY[0x277D25CA0] object:v17];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22261AF90();
  swift_getObjectType();
  sub_2225FEC80();
  sub_22261AF50();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v22);
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t _s8AppState19ManagedRestrictionsC24isRunningInStoreDemoModeSbvg_0()
{
  v7 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_22261B1D0();
  v1 = sub_22261B1D0();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  result = !v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2225FDA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2225D8D00(a2, &v16 - v9);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v14 = v10;
LABEL_8:
    sub_2225D8D64(v14, type metadata accessor for State);
    return 0;
  }

  sub_2225D8D00(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload < 2)
    {
      return result;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v13 = type metadata accessor for State;
LABEL_15:
      sub_2225D8D64(v8, v13);
      return 1;
    }

LABEL_17:
    v14 = v8;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = type metadata accessor for AppInstallation;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2225FDBF4()
{
  v0 = sub_22261B130();
  __swift_allocate_value_buffer(v0, qword_280DA0A48);
  __swift_project_value_buffer(v0, qword_280DA0A48);
  return sub_22261B120();
}

uint64_t sub_2225FDD1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22261B130();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22261B150();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (qword_280D9F2B0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_280DA0A48);
  (*(v4 + 16))(v7, v9, v3);
  return sub_22261B140();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2225FDED0()
{
  v0 = sub_22261AFB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22261B130();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22261B150();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D9F2B0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280DA0A48);
  (*(v6 + 16))(v9, v15, v5);
  sub_22261B140();
  (*(v1 + 104))(v4, *MEMORY[0x277D21DD8], v0);
  v16 = sub_22261B040();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  result = sub_22261AF70();
  qword_280DA09F8 = result;
  unk_280DA0A00 = MEMORY[0x277D21D78];
  qword_280DA09E0 = v16;
  return result;
}

uint64_t sub_2225FE1F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = type metadata accessor for State();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v33 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v32 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v32 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  sub_2225D8D00(a2, &v32 - v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(v4 + 48);
    sub_2225D8D00(a1, v7);
    sub_2225D8D00(a2, &v7[v26]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_15;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2225D8D00(v7, v20);
        if ((*v20 & 1) == 0 && swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2225D8D00(&v7[v26], v17);
          if (*v17 == 1)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      sub_2225D8D00(v7, v23);
      if (*v23 < 2u)
      {
        goto LABEL_15;
      }
    }

    if (swift_getEnumCaseMultiPayload() != 1 || (sub_2225D8D00(&v7[v26], v14), *v14 != 1) || (v30 = v33, *v33 = 0, *(v30 + 8) = 0xE000000000000000, swift_storeEnumTagMultiPayload(), v31 = sub_2225FA4AC(a1, v30), sub_2225DB76C(v30), (v31 & 1) == 0))
    {
      sub_2225FE4DC(v7);
      return 0;
    }

LABEL_15:
    sub_2225DB76C(&v7[v26]);
    sub_2225DB76C(v7);
    return 1;
  }

  sub_2225DB76C(v25);
  return 0;
}

uint64_t sub_2225FE4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of PurchaseHistory.update(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225E2AA0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PurchaseHistory.update(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2E18;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PurchaseHistory.fetchAllApps(of:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225D3D18;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2225FEC7C;

  return v15(a1, a2, a3, a4, a5);
}

{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2225FEC7C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PurchaseHistory.fetchAllApps(for:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225FEC7C;

  return v13(a1, a2, a3, a4);
}

BOOL sub_2225FECA8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_22261B6F0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2225FED50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2225F78B8();
  result = MEMORY[0x223DBB7B0](v2, &type metadata for AdamID, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_222614E28(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2225FEE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2225DE5AC(a3, v27 - v11, &qword_27D010AC8, &qword_22261DCC0);
  v13 = sub_22261B310();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2225E22D4(v12, &qword_27D010AC8, &qword_22261DCC0);
  }

  else
  {
    sub_22261B300();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22261B2C0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22261B1F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2225E22D4(a3, &qword_27D010AC8, &qword_22261DCC0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2225E22D4(a3, &qword_27D010AC8, &qword_22261DCC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t PurchaseHistoryAppStateDataSource.__allocating_init(accounts:platform:purchaseHistory:purchaseHistoryContext:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010958, &qword_22261E610);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v25 - v10;
  v27 = a1;
  sub_2225D6718(a1, v35);
  v26 = a2;
  sub_2225D6718(a2, v34);
  sub_2225D6718(a3, v33);
  v12 = [objc_opt_self() defaultCenter];
  if (qword_280D9F2C8 != -1)
  {
    swift_once();
  }

  v13 = sub_22261B150();
  v14 = __swift_project_value_buffer(v13, qword_280DA0A90);
  v32[3] = &type metadata for SingleAccountFamily;
  v32[4] = &protocol witness table for SingleAccountFamily;
  v32[0] = swift_allocObject();
  sub_2225FF554(v35, v32[0] + 16);
  v31[3] = v13;
  v31[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
  v16 = swift_allocObject();
  *(v16 + 160) = 0;
  *(v16 + 168) = 1;
  sub_2225D6718(v32, v16 + 16);
  sub_2225D6718(v34, v16 + 56);
  sub_2225D6718(v33, v16 + 96);
  *(v16 + 136) = a4;
  *(v16 + 144) = v12;
  sub_2225D6718(v31, v16 + 176);
  *(v16 + 152) = sub_2225DD970(MEMORY[0x277D84F90]);
  *(v16 + 169) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v12;
  *(v16 + 224) = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v16 + 216) = v21;
  [v20 addObserver:v16 selector:sel_purchaseHistoryUpdated_ name:*MEMORY[0x277CEC300] object:0];
  v22 = *(v16 + 40);
  v23 = *(v16 + 48);
  __swift_project_boxed_opaque_existential_1((v16 + 16), v22);
  (*(v23 + 8))(v30, v22, v23);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_22261AF90();
  swift_getObjectType();
  sub_22261AF40();
  sub_22261AF50();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v8 + 8))(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_222606710(v35);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v16;
}

uint64_t PurchaseHistoryAppStateDataSource.__allocating_init(family:platform:purchaseHistory:purchaseHistoryContext:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v23[0] = a4;
  v7 = sub_22261B150();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_2225D6718(a1, v28);
  v24 = a2;
  sub_2225D6718(a2, v27);
  sub_2225D6718(a3, v26);
  v12 = [objc_opt_self() defaultCenter];
  if (qword_280D9F2C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280DA0A90);
  v15 = v29;
  v14 = v30;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  (*(v8 + 16))(v11, v13, v7);
  v21 = sub_222606828(v19, v27, v26, v23[0], v12, v11, v23[1], v15, v7, v14, MEMORY[0x277D22508]);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v21;
}

uint64_t sub_2225FF830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_22261AE80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  LODWORD(a1) = (*(v9 + 88))(v12, v8);
  v13 = *MEMORY[0x277D21970];
  result = (*(v9 + 8))(v12, v8);
  if (a1 == v13)
  {
    v15 = sub_22261B310();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;

    sub_222603104(0, 0, v7, &unk_22261E880, v16);
  }

  return result;
}

uint64_t PurchaseHistoryAppStateDataSource.deinit()
{
  [*(v0 + 144) removeObserver_];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v2 = *(v0 + 216);

  v3 = *(v0 + 224);

  return v0;
}

uint64_t PurchaseHistoryAppStateDataSource.__deallocating_deinit()
{
  PurchaseHistoryAppStateDataSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t PurchaseHistoryAppStateDataSource.description.getter()
{
  v1 = *v0;
  v2 = sub_22261B750();
  MEMORY[0x223DBB650](v2);

  MEMORY[0x223DBB650](0x747865746E6F6328, 0xEA0000000000203ALL);
  v4 = v0[17];
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_22261B5A0();
  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return 0;
}

uint64_t PurchaseHistoryAppStateDataSource.load()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225FFCA8, 0, 0);
}

uint64_t sub_2225FFCA8()
{
  v1 = v0[2];
  if (*(v1 + 136) == 1)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_2225FFE28;
    v3 = v0[2];

    return sub_222600084();
  }

  else
  {
    v5 = v0[3];
    v6 = sub_22261B310();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;

    sub_2225FEE4C(0, 0, v5, &unk_22261E6D0, v7);

    v8 = v0[3];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2225FFE28()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_2225FFF6C;
  v5 = *(v1 + 16);

  return sub_222600844(1);
}

uint64_t sub_2225FFF6C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_222600084()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22260013C, 0, 0);
}

uint64_t sub_22260013C()
{
  v16 = v0;
  v1 = v0[18];
  v2 = *(v1 + 216);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_222606DC8;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_222606DE8(v15);
  os_unfair_lock_unlock(v2 + 4);
  LOBYTE(v1) = v15[0];

  if (v1)
  {
    v4 = v0[18];
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
    v7 = v4[17];
    v8 = *(v6 + 8);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_222600338;

    return v14(v7, v5, v6);
  }

  else
  {
    v12 = v0[20];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_222600338()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_222600600;
  }

  else
  {
    v3 = sub_22260044C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22260044C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v3[26];
  __swift_project_boxed_opaque_existential_1(v3 + 22, v3[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v5 = *(sub_22261AF30() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v0[13] = v2;
  v0[10] = v3;

  sub_22261AEC0();
  sub_2225E22D4((v0 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v8 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_222600600()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v14 = v4[26];
  __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v5 = *(sub_22261AF30() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v0[5] = v3;
  v0[2] = v4;

  sub_22261AEC0();
  sub_2225E22D4((v0 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v9 = v0[14];
  v8 = v0[15];
  v0[9] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v11 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t sub_222600844(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 256) = a1;
  *(v2 + 168) = *v1;
  v3 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222600900, 0, 0);
}

uint64_t sub_222600900()
{
  v1 = *(v0 + 160);
  sub_2225D6718((v1 + 12), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 184) = v2;
  *(v0 + 200) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_222600A4C;

  return v9(v3, v4);
}

uint64_t sub_222600A4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_222600EC8, 0, 0);
  }

  else
  {
    v7 = v4[20];
    v14 = (v4[24] + 48);
    v15 = (*v14 + **v14);
    v8 = (*v14)[1];
    v9 = swift_task_alloc();
    v4[29] = v9;
    *v9 = v6;
    v9[1] = sub_222600C5C;
    v10 = v4[24];
    v11 = v4[25];
    v12 = v4[23];

    return v15(a1, v7 + 56, v12, v10);
  }
}

uint64_t sub_222600C5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v8 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = sub_222601120;
  }

  else
  {
    v6 = v3[27];

    v5 = sub_222600D78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222600D78()
{
  v16 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v4 + 216);
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = 0;
  v6[5] = v3;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_222606FB8;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_222607008(&v15);
  os_unfair_lock_unlock(v5 + 4);
  if (v2)
  {
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 256);
    v11 = v15;

    if (v10)
    {
      v12 = *(*(v0 + 160) + 224);
      *(v0 + 152) = v11;
      sub_22261B180();
    }

    v13 = *(v0 + 176);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_222600EC8()
{
  v1 = v0[28];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v4[26];
  __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v5 = *(sub_22261AF30() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v0[10] = v3;
  v0[7] = v4;

  sub_22261AEC0();
  sub_2225E22D4((v0 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v8 = v0[15];
  v9 = v0[16];
  v0[14] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 11);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_222601120()
{
  v1 = v0[27];

  v2 = v0[31];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v14 = v5[26];
  __swift_project_boxed_opaque_existential_1(v5 + 22, v5[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v6 = *(sub_22261AF30() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v0[10] = v4;
  v0[7] = v5;

  sub_22261AEC0();
  sub_2225E22D4((v0 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v9 = v0[15];
  v10 = v0[16];
  v0[14] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t PurchaseHistoryAppStateDataSource.reloadState(forAppsWith:synchronizing:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_222601414;

  return sub_222600084();
}

uint64_t sub_222601414()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_222601570;
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);

  return sub_222601664(v7, v6);
}

uint64_t sub_222601570()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222601664(uint64_t a1, char a2)
{
  *(v3 + 304) = a2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  *(v3 + 208) = *v2;
  v4 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222601720, 0, 0);
}

uint64_t sub_222601720()
{
  v1 = *(v0 + 200);
  sub_2225D6718((v1 + 12), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 224) = v2;
  *(v0 + 240) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_22260186C;

  return v9(v3, v4);
}

uint64_t sub_22260186C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_222601DB0;
  }

  else
  {
    v5 = sub_222601980;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222601980()
{
  v16 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2225D7DD8(*(v1 + 16), 0);
    v4 = sub_222606610(&v15, v3 + 4, v2, v1);

    sub_2225F24EC();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[34] = v3;
  v5 = v0[25];
  v13 = (v0[29] + 40);
  v14 = (*v13 + **v13);
  v6 = (*v13)[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_222601B34;
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[28];

  return (v14)(v8, v3, v5 + 56, v11, v9);
}

uint64_t sub_222601B34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v9 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = sub_222602068;
  }

  else
  {
    v6 = v3[34];
    v7 = v3[32];

    v5 = sub_222601C5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222601C5C()
{
  v17 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v4 + 216);
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v1;
  v7[4] = v5;
  v7[5] = v3;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_222606DA8;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_222607008(&v16);
  os_unfair_lock_unlock(v6 + 4);
  if (v2)
  {
  }

  else
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 304);
    v12 = v16;

    if (v11)
    {
      v13 = *(*(v0 + 200) + 224);
      *(v0 + 184) = v12;
      sub_22261B180();
    }

    v14 = *(v0 + 216);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_222601DB0()
{
  v1 = v0;
  v2 = v0[33];
  v5 = v0 + 26;
  v3 = v0[26];
  v4 = v5[1];
  v7 = v1[24];
  v6 = v1[25];
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v16 = v6[26];
  __swift_project_boxed_opaque_existential_1(v6 + 22, v6[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(sub_22261AF30() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[10] = v3;
  v1[7] = v6;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C78, &unk_22261E800);
  v1[11] = v7;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v11 = v1[19];
  v12 = v1[20];
  v1[18] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 15);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v14 = v1[1];

  return v14();
}

uint64_t sub_222602068()
{
  v1 = v0;
  v2 = v0[34];
  v3 = v0[32];

  v4 = v0[37];
  v7 = v0 + 26;
  v5 = v0[26];
  v6 = v7[1];
  v9 = v1[24];
  v8 = v1[25];
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v18 = v8[26];
  __swift_project_boxed_opaque_existential_1(v8 + 22, v8[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v10 = *(sub_22261AF30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[10] = v5;
  v1[7] = v8;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C78, &unk_22261E800);
  v1[11] = v9;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v13 = v1[19];
  v14 = v1[20];
  v1[18] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 15);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v13, v14);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t PurchaseHistoryAppStateDataSource.reloadAllStates(synchronizing:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2226023C8;

  return sub_222600084();
}

uint64_t sub_2226023C8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_222602510;
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);

  return sub_222600844(v6);
}

uint64_t sub_222602510()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void PurchaseHistoryAppStateDataSource.state(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 216);
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F76C8(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_222602678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 152);
  if (*(v6 + 16) && (v7 = sub_2225F1650(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for State();
    v12 = *(v11 - 8);
    sub_2225D8D00(v10 + *(v12 + 72) * v9, a3);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for State();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

uint64_t sub_2226027EC()
{
  v11 = v0;
  v1 = v0[2];
  if (*(v1 + 136) == 1)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_222602998;
    v3 = v0[2];

    return sub_222600844(1);
  }

  else
  {
    v5 = *(v1 + 216);
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_222606D70;
    *(v6 + 24) = v1;
    os_unfair_lock_lock(v5 + 4);
    sub_222606D8C(&v10);
    os_unfair_lock_unlock(v5 + 4);
    v7 = v10;
    v0[4] = v10;

    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_222602A8C;
    v9 = v0[2];

    return sub_222601664(v7, 1);
  }
}

uint64_t sub_222602998()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222602A8C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_222602C04;
  }

  else
  {
    v3 = sub_222602BA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222602BA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222602C04()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_222602C88()
{
  v11 = v0;
  v1 = v0[2];
  if (*(v1 + 136) == 1)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_222602FAC;
    v3 = v0[2];

    return sub_222600844(1);
  }

  else
  {
    v5 = *(v1 + 216);
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_222606FF0;
    *(v6 + 24) = v1;
    os_unfair_lock_lock(v5 + 4);
    sub_222607008(&v10);
    os_unfair_lock_unlock(v5 + 4);
    v7 = v10;
    v0[3] = v10;

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_222602E34;
    v9 = v0[2];

    return sub_222601664(v7, 1);
  }
}

uint64_t sub_222602E34()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226030A0;
  }

  else
  {
    v3 = sub_222602F48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222602F48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222602FAC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2226030A0()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[1];

  return v3();
}

uint64_t sub_222603104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2225DE5AC(a3, v24 - v10, &qword_27D010AC8, &qword_22261DCC0);
  v12 = sub_22261B310();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2225E22D4(v11, &qword_27D010AC8, &qword_22261DCC0);
  }

  else
  {
    sub_22261B300();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22261B2C0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22261B1F0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2225E22D4(a3, &qword_27D010AC8, &qword_22261DCC0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2225E22D4(a3, &qword_27D010AC8, &qword_22261DCC0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_222603578(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a4;
  v4[27] = *a4;
  v5 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222603680, 0, 0);
}

uint64_t sub_222603680()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 208);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22261AF80();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2225DE5AC(v1, v2, &qword_27D0108E8, qword_22261DAE0);
  v7 = sub_22261B0B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v2, 1, v7);
  v11 = *(v0 + 240);
  if (v10 == 1)
  {
    sub_2225E22D4(*(v0 + 240), &qword_27D0108E8, qword_22261DAE0);
LABEL_7:
    v18 = *(v0 + 208);
    if (*(v18 + 168))
    {
      goto LABEL_8;
    }

    v39 = (v18 + 160);
    v42 = (v18 + 168);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v12 = *(v0 + 200);
  (*(v8 + 8))(v11, v7);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v0 + 208);
  v14 = [v12 longLongValue];

  v17 = *(v13 + 160);
  v16 = v13 + 160;
  v15 = v17;
  if ((*(v16 + 8) & 1) == 0 && v14 == v15)
  {
LABEL_8:
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    sub_2225E22D4(*(v0 + 248), &qword_27D0108E8, qword_22261DAE0);

    v22 = *(v0 + 8);

    return v22();
  }

  v39 = v16;
  v42 = (v16 + 8);
  v18 = *(v0 + 208);
LABEL_12:
  v40 = *(v0 + 248);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v26 = *(v0 + 216);
  sub_2225D6718(v18 + 176, v0 + 56);
  v43 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v27 = *(sub_22261AF30() - 8);
  v28 = *(v27 + 72);
  v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 120) = v26;
  *(v0 + 96) = v18;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 96, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_2225DE5AC(v40, v25, &qword_27D0108E8, qword_22261DAE0);
  v29 = v9(v25, 1, v7);
  v30 = *(v0 + 232);
  if (v29 == 1)
  {
    sub_2225E22D4(*(v0 + 232), &qword_27D0108E8, qword_22261DAE0);
LABEL_16:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_17;
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v31 = *(v0 + 192);
  (*(v8 + 8))(v30, v7);
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = [v31 longLongValue];

  *(v0 + 152) = MEMORY[0x277D84A28];
  *(v0 + 128) = v32;
LABEL_17:
  v33 = *(v0 + 224);
  sub_22261AEE0();
  sub_2225E22D4(v0 + 128, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  if (*v42 == 1)
  {
    v34 = 0;
    v35 = 0;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
  }

  else
  {
    v34 = *v39;
    v35 = MEMORY[0x277D84A28];
  }

  v36 = *(v0 + 224);
  *(v0 + 160) = v34;
  *(v0 + 184) = v35;
  sub_22261AEE0();
  sub_2225E22D4(v0 + 160, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v37 = swift_task_alloc();
  *(v0 + 256) = v37;
  *v37 = v0;
  v37[1] = sub_222603C24;
  v38 = *(v0 + 208);

  return sub_222602C68();
}

uint64_t sub_222603C24()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_222603DDC;
  }

  else
  {
    v3 = sub_222603D38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222603D38()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  sub_2225E22D4(v0[31], &qword_27D0108E8, qword_22261DAE0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_222603DDC()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  sub_2225E22D4(v0[31], &qword_27D0108E8, qword_22261DAE0);

  v4 = v0[1];
  v5 = v0[33];

  return v4();
}

uint64_t sub_222603E80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225E2AA0;

  return sub_222600084();
}

uint64_t sub_222603F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 152);

  result = sub_2225FED50(v5);
  *a2 = result;
  return result;
}

void sub_222603F70(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = MEMORY[0x223DBBBF0]();
  sub_222604008(a1, a2, a3, a4, &v12);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v12;
  }
}

uint64_t sub_222604008@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v167 = a4;
  v168 = a3;
  v198 = a2;
  v172 = a5;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C80, &unk_22261E320);
  v6 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v177 = &v163 - v7;
  v197 = type metadata accessor for State();
  v179 = *(v197 - 8);
  v8 = v179[8];
  v9 = MEMORY[0x28223BE20](v197);
  v169 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v191 = &v163 - v12;
  MEMORY[0x28223BE20](v11);
  v171 = &v163 - v13;
  v14 = sub_22261AF10();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v180 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v166 = &v163 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v174 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v173 = &v163 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v163 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v181 = &v163 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v182 = &v163 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v163 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v186 = &v163 - v36;
  MEMORY[0x28223BE20](v35);
  v170 = &v163 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v163 - v40;
  v42 = MEMORY[0x277D84FA0];
  v210 = MEMORY[0x277D84FA0];
  v43 = a1[5];
  v44 = a1[6];
  v199 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v43);
  (*(v44 + 8))(&v205, v43, v44);
  __swift_project_boxed_opaque_existential_1(&v205, v206);
  sub_22261AF80();
  v45 = sub_22261B0B0();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v41, 1, v45) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v205);
    sub_2225E22D4(v41, &qword_27D0108E8, qword_22261DAE0);
LABEL_57:
    v125 = v172;
    v126 = v199;
    swift_beginAccess();
    v127 = v126[19];

    sub_222608768(v128);
    v129 = v126[19];
    v126[19] = MEMORY[0x277D84F98];

    v126[20] = 0;
    *(v126 + 168) = 1;
    *v125 = v210;
    return result;
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v47 = v202;
  (*(v46 + 8))(v41, v45);
  if (!v47)
  {
    __swift_destroy_boxed_opaque_existential_1(&v205);
    goto LABEL_57;
  }

  v48 = [v47 longLongValue];

  __swift_destroy_boxed_opaque_existential_1(&v205);
  if ((v199[21] & 1) != 0 || v48 != v199[20])
  {
    v49 = v199;
    swift_beginAccess();
    v50 = v49[19];

    sub_222608768(v51);
    v52 = v49[19];
    v49[19] = MEMORY[0x277D84F98];

    v49[20] = v48;
    *(v49 + 168) = 0;
  }

  v183 = v48;
  v209 = v42;
  v53 = v198;
  v163 = v198 >> 62;
  v54 = v186;
  if (v198 >> 62)
  {
LABEL_85:
    result = sub_22261B5B0();
  }

  else
  {
    result = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = MEMORY[0x277D84FA0];
  if (result)
  {
    if (result >= 1)
    {
      v57 = 0;
      v188 = v53 & 0xC000000000000001;
      v196 = (v179 + 7);
      v176 = 0x800000022261EEF0;
      v175 = "s not a number: ";
      v187 = xmmword_22261C770;
      v165 = v27;
      v185 = v34;
      v189 = result;
      v190 = (v179 + 6);
      while (1)
      {
        if (v188)
        {
          v73 = MEMORY[0x223DBB940](v57, v53);
        }

        else
        {
          v73 = *(v53 + 8 * v57 + 32);
        }

        v74 = v73;
        v75 = [v73 storeItemID];
        sub_2225D6718((v199 + 22), &v205);
        if (v75 < 0)
        {
          v202 = 0;
          v203 = 0xE000000000000000;
          sub_22261B500();

          v202 = 0xD00000000000001DLL;
          v203 = v176;
          v208 = v75;
          v58 = MEMORY[0x277D84A28];
          v59 = sub_22261B610();
          v60 = v75;
          MEMORY[0x223DBB650](v59);

          v61 = v202;
          v62 = v203;
          sub_2225D50A4();
          v63 = swift_allocError();
          *v64 = v61;
          v64[1] = v62;
          swift_willThrow();
          v194 = v206;
          v195 = v207;
          v193 = __swift_project_boxed_opaque_existential_1(&v205, v206);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
          v65 = *(sub_22261AF30() - 8);
          v66 = *(v65 + 72);
          v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          *(swift_allocObject() + 16) = v187;
          sub_22261AF00();
          sub_22261AEF0();
          v204 = v58;
          v202 = v60;
          sub_22261AEC0();
          sub_2225E22D4(&v202, &qword_27D0108D8, &qword_22261D9E0);
          sub_22261AEF0();
          swift_getErrorValue();
          v68 = v200;
          v69 = v201;
          v204 = v201;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v202);
          v71 = v68;
          v34 = v185;
          (*(*(v69 - 8) + 16))(boxed_opaque_existential_0, v71, v69);
          sub_22261AEC0();
          sub_2225E22D4(&v202, &qword_27D0108D8, &qword_22261D9E0);
          sub_22261AEF0();
          v54 = v186;
          v53 = v198;
          sub_22261AF20();
          sub_22261B070();
          v72 = v189;

          sub_2225D5EB0(&v205);
          v184 = 0;
          goto LABEL_13;
        }

        v76 = v34;
        sub_2225D5EB0(&v205);
        v194 = v75;
        sub_222614E28(&v205, v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010950, &unk_22261ED20);
        inited = swift_initStackObject();
        *(inited + 16) = v187;
        *(inited + 32) = v183;
        v78 = sub_22261780C(inited);
        swift_setDeallocating();
        sub_2225D6718((v199 + 7), &v205);
        v79 = v74;
        v80 = [v79 isHidden];
        v193 = v79;
        if (v80)
        {

          v81 = v190;
        }

        else
        {
          v82 = sub_2225FECA8([v79 purchaserDSID], v78);

          v81 = v190;
          if (v82)
          {
            if ([v79 isPreorder])
            {

              v83 = v171;
              *v171 = 1;
              v84 = v197;
            }

            else
            {
              v85 = v206;
              v86 = v207;
              __swift_project_boxed_opaque_existential_1(&v205, v206);
              if ((*(v86 + 3))(v79, v85, v86))
              {
                v87 = [v79 cleanedRedownloadParams];
                v88 = sub_22261B1E0();
                v90 = v89;

                v83 = v171;
                *v171 = v88;
                *(v83 + 8) = v90;
              }

              else
              {

                v83 = v171;
                *v171 = 0;
              }

              v84 = v197;
            }

            swift_storeEnumTagMultiPayload();
            sub_2225DDDD0(v83, v54);
            v195 = *v196;
            (v195)(v54, 0, 1, v84);
            __swift_destroy_boxed_opaque_existential_1(&v205);
            goto LABEL_29;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v205);
        v84 = v197;
        v195 = *v196;
        (v195)(v54, 1, 1, v197);
LABEL_29:
        v34 = v76;
        sub_2225DE5AC(v54, v76, &qword_27D010A38, qword_22261E810);
        v91 = *v81;
        v92 = (*v81)(v76, 1, v84);
        v53 = v198;
        if (v92 == 1)
        {
          sub_2225E22D4(v34, &qword_27D010A38, qword_22261E810);
        }

        else
        {
          v192 = v91;
          sub_2225DDDD0(v34, v191);
          v93 = v199;
          swift_beginAccess();
          v94 = v93[19];
          v95 = v181;
          if (*(v94 + 16) && (v96 = sub_2225F1650(v194), (v97 & 1) != 0))
          {
            v98 = v182;
            sub_2225D8D00(*(v94 + 56) + v179[9] * v96, v182);
            v99 = 0;
          }

          else
          {
            v99 = 1;
            v98 = v182;
          }

          v84 = v197;
          v100 = v195;
          (v195)(v98, v99, 1, v197);
          swift_endAccess();
          sub_2225D8D00(v191, v95);
          v100(v95, 0, 1, v84);
          v101 = *(v178 + 48);
          v102 = v177;
          sub_2225DE5AC(v98, v177, &qword_27D010A38, qword_22261E810);
          sub_2225DE5AC(v95, v102 + v101, &qword_27D010A38, qword_22261E810);
          v91 = v192;
          if (v192(v102, 1, v84) == 1)
          {
            sub_2225E22D4(v95, &qword_27D010A38, qword_22261E810);
            sub_2225E22D4(v98, &qword_27D010A38, qword_22261E810);
            if (v91(v102 + v101, 1, v84) != 1)
            {
              goto LABEL_40;
            }

            sub_2225E22D4(v102, &qword_27D010A38, qword_22261E810);
            v34 = v185;
            v54 = v186;
          }

          else
          {
            v103 = v165;
            sub_2225DE5AC(v102, v165, &qword_27D010A38, qword_22261E810);
            if (v91(v102 + v101, 1, v84) == 1)
            {
              sub_2225E22D4(v181, &qword_27D010A38, qword_22261E810);
              sub_2225E22D4(v182, &qword_27D010A38, qword_22261E810);
              sub_2225DB76C(v103);
LABEL_40:
              sub_2225E22D4(v102, &qword_27D010C80, &unk_22261E320);
              v34 = v185;
              v54 = v186;
LABEL_41:
              v104 = v191;
              v105 = v173;
              sub_2225D8D00(v191, v173);
              (v195)(v105, 0, 1, v84);
              swift_beginAccess();
              v106 = v105;
              v107 = v194;
              sub_222618F1C(v106, v194);
              swift_endAccess();
              sub_222614E28(&v205, v107);

              sub_2225DB76C(v104);
              sub_2225E22D4(v54, &qword_27D010A38, qword_22261E810);
              v72 = v189;
              v53 = v198;
              goto LABEL_13;
            }

            v108 = v169;
            sub_2225DDDD0(v102 + v101, v169);
            v164 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v103, v108);
            v109 = v108;
            v91 = v192;
            sub_2225DB76C(v109);
            sub_2225E22D4(v181, &qword_27D010A38, qword_22261E810);
            sub_2225E22D4(v182, &qword_27D010A38, qword_22261E810);
            sub_2225DB76C(v103);
            sub_2225E22D4(v102, &qword_27D010A38, qword_22261E810);
            v34 = v185;
            v54 = v186;
            if ((v164 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          sub_2225DB76C(v191);
          v53 = v198;
        }

        if (v91(v54, 1, v84) == 1)
        {
          v192 = v91;
          v110 = v199;
          swift_beginAccess();
          v111 = v110[19];
          v112 = sub_2225F1650(v194);
          if (v113)
          {
            v114 = v112;
            v115 = v199;
            v116 = v199[19];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v118 = v115[19];
            v202 = v118;
            v115[19] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_22261A170();
              v118 = v202;
            }

            v119 = v174;
            sub_2225DDDD0(*(v118 + 56) + v179[9] * v114, v174);
            sub_222619C30(v114, v118);
            v120 = v199[19];
            v199[19] = v118;

            v121 = v119;
            v122 = 0;
            v54 = v186;
          }

          else
          {
            v122 = 1;
            v121 = v174;
          }

          v123 = v197;
          (v195)(v121, v122, 1, v197);
          swift_endAccess();
          if (v192(v121, 1, v123) != 1)
          {
            sub_2225E22D4(v121, &qword_27D010A38, qword_22261E810);
            sub_222614E28(&v205, v194);

            sub_2225E22D4(v54, &qword_27D010A38, qword_22261E810);
            v72 = v189;
            goto LABEL_13;
          }

          sub_2225E22D4(v121, &qword_27D010A38, qword_22261E810);
        }

        else
        {
        }

        v72 = v189;
        sub_2225E22D4(v54, &qword_27D010A38, qword_22261E810);
LABEL_13:
        if (v72 == ++v57)
        {
          v124 = v209;
          v56 = MEMORY[0x277D84FA0];
          goto LABEL_59;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v124 = MEMORY[0x277D84FA0];
LABEL_59:
    v130 = v199;
    swift_beginAccess();
    v208 = v56;
    v131 = v130[19];

    v132 = sub_2225FED50(v196);
    if (v168)
    {
      v132 = sub_222605F60(v168, v132);
    }

    v54 = 0;
    v34 = (v132 + 56);
    v133 = 1 << *(v132 + 32);
    if (v133 < 64)
    {
      v134 = ~(-1 << v133);
    }

    else
    {
      v134 = -1;
    }

    v135 = v134 & *(v132 + 56);
    v27 = ((v133 + 63) >> 6);
    v53 = (v124 + 56);
    v193 = (v179 + 7);
    v195 = v124;
    v194 = v132;
    while (1)
    {
      v139 = v54;
      if (!v135)
      {
        break;
      }

LABEL_71:
      v140 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
      v141 = *(*(v132 + 48) + ((v54 << 9) | (8 * v140)));
      if (*(v124 + 2) && (v142 = *(v124 + 5), sub_22261B700(), MEMORY[0x223DBBB60](v141), v143 = sub_22261B740(), v144 = -1 << v124[32], v145 = v143 & ~v144, ((*(v53 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) != 0))
      {
        v146 = ~v144;
        while (*(*(v124 + 6) + 8 * v145) != v141)
        {
          v145 = (v145 + 1) & v146;
          if (((*(v53 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
LABEL_76:
        v147 = sub_2225F1650(v141);
        if (v148)
        {
          v149 = v147;
          v150 = v199;
          v151 = v199[19];
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v153 = v150[19];
          v205 = v153;
          v150[19] = 0x8000000000000000;
          if (!v152)
          {
            sub_22261A170();
            v153 = v205;
          }

          v192 = v149;
          v154 = v153[7] + v179[9] * v149;
          v155 = v170;
          sub_2225DDDD0(v154, v170);
          sub_222619C30(v192, v153);
          v156 = v150[19];
          v196 = v153;
          v150[19] = v153;

          v137 = v197;
          v138 = v155;
          v136 = 0;
        }

        else
        {
          v136 = 1;
          v137 = v197;
          v138 = v170;
        }

        (*v193)(v138, v136, 1, v137);
        sub_2225E22D4(v138, &qword_27D010A38, qword_22261E810);
        sub_222614E28(&v205, v141);
        sub_222614E28(&v205, v141);
        v124 = v195;
        v132 = v194;
      }
    }

    while (1)
    {
      v54 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v54 >= v27)
      {
        break;
      }

      v135 = *&v34[8 * v54];
      ++v139;
      if (v135)
      {
        goto LABEL_71;
      }
    }

    swift_endAccess();

    v157 = v199;
    v158 = v199[26];
    __swift_project_boxed_opaque_existential_1(v199 + 22, v199[25]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    v159 = *(sub_22261AF30() - 8);
    v160 = *(v159 + 72);
    v161 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v206 = v167;
    v205 = v157;

    sub_22261AEC0();
    sub_2225E22D4(&v205, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    if (v163)
    {
      v162 = sub_22261B5B0();
    }

    else
    {
      v162 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v206 = MEMORY[0x277D83B88];
    v205 = v162;
    sub_22261AEC0();
    sub_2225E22D4(&v205, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();

    *v172 = v210;
  }

  return result;
}

uint64_t sub_2226057D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225E2AA0;

  return PurchaseHistoryAppStateDataSource.load()();
}

uint64_t sub_222605860(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_2226058F8;

  return sub_222600084();
}

uint64_t sub_2226058F8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_222606FD0;
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);

  return sub_222601664(v7, v6);
}

uint64_t sub_222605A54(char a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = *v1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_222605AEC;

  return sub_222600084();
}

uint64_t sub_222605AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_222606FD4;
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);

  return sub_222600844(v6);
}

void sub_222605C34(uint64_t *a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F7954(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_222605CE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222605DD8;

  return v7(a1);
}

uint64_t sub_222605DD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_222605ED0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_222606124(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222605F60(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_222606124(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_222605ED0(v12, v6, a2, a1);

    MEMORY[0x223DBC1E0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_222606124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  v41 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 8 * v32);
      v34 = *(a4 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v33);
      result = sub_22261B740();
      a4 = v41;
      v35 = -1 << *(v41 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v41 + 48) + 8 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_222615F6C(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      v16 = *(a3 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v15);
      result = sub_22261B740();
      a4 = v41;
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 8 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 8 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void (*sub_222606430(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DBB940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2226064B0;
  }

  __break(1u);
  return result;
}

void *sub_2226064B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_222606610(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2226067B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2225F78B8();
  result = MEMORY[0x223DBB7B0](v2, &type metadata for AdamID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_222614E28(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_222606828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010958, &qword_22261E610);
  v36 = *(v37 - 8);
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v33 - v18;
  v41[3] = a8;
  v41[4] = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a1, a8);
  v40[3] = a9;
  v40[4] = a11;
  v20 = __swift_allocate_boxed_opaque_existential_0(v40);
  (*(*(a9 - 8) + 32))(v20, a6, a9);
  v21 = swift_allocObject();
  *(v21 + 160) = 0;
  *(v21 + 168) = 1;
  sub_2225D6718(v41, v21 + 16);
  v22 = a2;
  sub_2225D6718(a2, v21 + 56);
  v23 = a3;
  sub_2225D6718(a3, v21 + 96);
  *(v21 + 136) = v34;
  *(v21 + 144) = a5;
  sub_2225D6718(v40, v21 + 176);
  *(v21 + 152) = sub_2225DD970(MEMORY[0x277D84F90]);
  *(v21 + 169) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = a5;
  *(v21 + 224) = sub_22261B190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v21 + 216) = v28;
  [v27 addObserver:v21 selector:sel_purchaseHistoryUpdated_ name:*MEMORY[0x277CEC300] object:0];
  v29 = *(v21 + 40);
  v30 = *(v21 + 48);
  __swift_project_boxed_opaque_existential_1((v21 + 16), v29);
  (*(v30 + 8))(v39, v29, v30);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_22261AF90();
  swift_getObjectType();
  sub_22261AF40();
  v31 = v35;
  sub_22261AF50();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v36 + 8))(v31, v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v21;
}

uint64_t sub_222606BB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2225E2AA0;

  return sub_222603E80();
}

uint64_t sub_222606CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2AA0;

  return sub_2226027CC(a1, v4, v5, v6);
}

void sub_222606DC8(_BYTE *a1@<X8>)
{
  if (*(v1 + 169))
  {
    *a1 = 0;
  }

  else
  {
    *(v1 + 169) = 1;
    *a1 = 1;
  }
}

uint64_t sub_222606E04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2225E2E18;

  return sub_222605CE0(a1, v5);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222606F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225E2E18;

  return sub_222603578(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PurchaseManager.start(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225D3D18;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PurchaseManager.install(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225E2AA0;

  return v13(a1, a2, a3, a4);
}

uint64_t Restrictions.isActionableOffer(_:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = type metadata accessor for State();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *a1;
  if ((*a1 & 4) != 0)
  {
    return 0;
  }

  v16 = a1[1];
  v17 = *(a1 + 16);
  sub_2225D8D00(a2, &v24 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2225DB76C(v14);
      goto LABEL_11;
    }

LABEL_16:
    sub_2225DB76C(v14);
    return 1;
  }

  if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 9)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a4[2](a3, a4))
  {
    v20 = a4[4](a3, a4);
    if ((v15 & 8) != 0 || (v20 & 1) == 0)
    {
      if ((a4[5](a3, a4) & 1) == 0 || (swift_storeEnumTagMultiPayload(), v22 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(a2, v12), sub_2225DB76C(v12), (v22 & 1) == 0) && (swift_storeEnumTagMultiPayload(), v23 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(a2, v12), sub_2225DB76C(v12), (v23 & 1) == 0))
      {
        if ((v17 & 1) != 0 || a4[1](a3, a4) >= v16)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

id sub_222607570@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t SingleAccountFamily.fetchFamilyMemberIDs()()
{
  *(v1 + 24) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222607670, 0, 0);
}

uint64_t sub_222607670()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22261AF80();
  v4 = sub_22261B0B0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {
    sub_2225D8124(v0[4]);
  }

  else
  {
    swift_getKeyPath();
    sub_22261B0A0();

    v8 = v0[2];
    (*(v5 + 8))(v7, v4);
    if (v8)
    {
      v9 = [v8 longLongValue];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010950, &unk_22261ED20);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22261C770;
      *(v10 + 32) = v9;
      goto LABEL_6;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_6:
  v11 = v0[4];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_222607814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225D767C;

  return SingleAccountFamily.fetchFamilyMemberIDs()();
}

uint64_t sub_2226078B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_2225DE5AC(a1, v20 - v9, &qword_27D010AC8, &qword_22261DCC0);
  v11 = sub_22261B310();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2225E22D4(v10, &qword_27D010AC8, &qword_22261DCC0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_22261B2C0();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22261B300();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_222607AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_222614AB8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22261B4B0();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 16 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_222614AB8((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_2225F24E0(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_2225F24E0(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
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
  return result;
}

uint64_t sub_222607CC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a1;
  *(v5 + 16) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = sub_22261ADE0();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 + 64);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222607DD4, 0, 0);
}

uint64_t sub_222607DD4()
{
  v1 = v0[8];
  v19 = v0[10];
  v20 = v0[9];
  v2 = v0[6];
  v17 = v0[11];
  v18 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[2];
  sub_22261ADA0();
  v7 = sub_22261B310();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v4;

  sub_2226078B0(v2, &unk_22261EC88, v9);
  sub_2225E22D4(v2, &qword_27D010AC8, &qword_22261DCC0);
  v8(v2, 1, 1, v7);
  (*(v1 + 16))(v19, v17, v18);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v1 + 32))(v11 + v10, v19, v18);
  sub_2226078B0(v2, &unk_22261EC98, v11);
  sub_2225E22D4(v2, &qword_27D010AC8, &qword_22261DCC0);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D48, &unk_22261ECA0);
  *v13 = v0;
  v13[1] = sub_22260803C;
  v15 = v0[2];

  return MEMORY[0x2822004D0](v0 + 14, 0, 0, v14);
}

uint64_t sub_22260803C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_222608240;
  }

  else
  {
    v3 = sub_222608150;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222608150()
{
  if (*(v0 + 112))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = **(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C00, &qword_22261DCD8);
    sub_22261B370();
    (*(v4 + 8))(v2, v3);

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_222608240()
{
  v1 = v0[10];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[11], v0[7]);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2226082DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2225E2E18;

  return v9(a1);
}

uint64_t sub_2226083F4()
{
  v1 = v0[2];
  v2 = sub_22261ADB0();
  if (v3 > 0.0)
  {
    v4 = v3 * 1000000000.0;
    if (*&v4 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 1.84467441e19)
      {
        v5 = v4;
        v6 = *(MEMORY[0x277D857E8] + 4);
        v7 = swift_task_alloc();
        v0[3] = v7;
        *v7 = v0;
        v7[1] = sub_222608558;
        v2 = v5;

        return MEMORY[0x282200480](v2);
      }

LABEL_13:
      __break(1u);
      return MEMORY[0x282200480](v2);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_22261B330();
  sub_222618384();
  swift_allocError();
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_222608558()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22260868C, 0, 0);
  }
}

uint64_t sub_22260868C()
{
  v1 = *(v0 + 32);
  sub_22261B330();
  if (!v1)
  {
    sub_222618384();
    swift_allocError();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222608724(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_222608768(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_222614E28(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_222608848(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_222614E28(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_222608928(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      result = sub_222614F20(&v11, *v10, *(v10 + 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_222608A10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_222608A48(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  v4 = *a1;

  os_unfair_lock_lock(v2 + 6);
  sub_222617CF4();
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t StorefrontAppStateController.Configuration.init(updateRegistry:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2225D6718(a1, a2);
  *(a2 + 40) = MEMORY[0x277D84F90];
  if (qword_280D9FB50 != -1)
  {
    swift_once();
  }

  v4 = qword_280DA0AC8;
  v5 = type metadata accessor for DefaultAppStateRules();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(a2 + 72) = v5;
  *(a2 + 80) = &off_2835C2288;
  *(a2 + 48) = v6;
  *(a2 + 88) = 0x403E000000000000;
  v7 = qword_280D9F2D0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_22261B150();
  v9 = __swift_project_value_buffer(v8, qword_280DA0AA8);
  v10 = MEMORY[0x277D22508];
  *(a2 + 120) = v8;
  *(a2 + 128) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 96));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *(a2 + 136) = 0;
  return result;
}

uint64_t StorefrontAppStateController.Configuration.withDataSources(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_222608C54(v2, a2);
  v5 = *(a2 + 40);

  *(a2 + 40) = a1;
  return result;
}

uint64_t *StorefrontAppStateController.Configuration.withStateTransitionRules(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_222608C54(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 48), a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t StorefrontAppStateController.Configuration.withStatePrefersDownloadableState(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_222608C54(v2, a2);
  *(a2 + 136) = a1;
  return result;
}

uint64_t StorefrontAppStateController.__allocating_init(from:)(uint64_t a1)
{
  v31 = sub_22261B3A0();
  v2 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22261AE70();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22261B3B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 40);
  v12 = *(a1 + 88);
  sub_2225D6718(a1 + 48, v35);
  sub_2225D6718(a1, v34);
  v29 = *(a1 + 136);
  v13 = qword_280D9F2D0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_22261B150();
  v15 = __swift_project_value_buffer(v14, qword_280DA0AA8);
  v33[3] = v14;
  v33[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v15, v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 144) = v12;
  sub_2225D6718(v35, v17 + 48);
  sub_2225D6718(v34, v17 + 88);
  sub_2225D6718(v33, v17 + 152);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CE8, "Z)");
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v17 + 216) = sub_22261AEA0();
  v21 = MEMORY[0x277D84F90];
  *(v17 + 32) = sub_2225DE2A0(MEMORY[0x277D84F90]);
  *(v17 + 128) = sub_2225DE3A8(v21);
  *(v17 + 40) = MEMORY[0x277D84FA0];
  *(v17 + 136) = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CF0, "\\)");
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v17 + 224) = sub_22261AEA0();
  *(v17 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v17 + 192) = v25;
  sub_2225D83D0(0, &qword_280D9F280, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  sub_22261AE60();
  v32 = v21;
  sub_222618704(&qword_280D9F288, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CC0, &qword_22261E500);
  sub_2225EDEF8(&qword_280D9F2A0, &qword_27D010CC0, &qword_22261E500);
  sub_22261B4A0();
  v26 = sub_22261B3E0();
  sub_222617450(a1);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(v17 + 200) = v26;
  *(v17 + 208) = v29;
  return v17;
}

uint64_t StorefrontAppStateController.isLoaded.getter()
{
  v1 = *(v0 + 192);
  os_unfair_lock_lock(v1 + 4);
  sub_222617494(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_22260943C()
{
  v17 = v0;
  v1 = v0[2];
  v2 = *(*(v1 + 16) + 16);
  v3 = *(v1 + 192);
  v4 = swift_task_alloc();
  v5 = v4;
  if (v2)
  {
    *(v4 + 16) = sub_2226174AC;
    *(v4 + 24) = v1;
    os_unfair_lock_lock(v3 + 4);
    sub_2225F7874(&v16);
    os_unfair_lock_unlock(v3 + 4);
    v8 = v16;
    v0[3] = v16;

    if (v8)
    {
      v9 = *(MEMORY[0x277D857D0] + 4);
      v10 = swift_task_alloc();
      v0[4] = v10;
      *v10 = v0;
      v10[1] = sub_222609640;
      v11 = MEMORY[0x277D84A98];
      v12 = MEMORY[0x277D84AC0];
      v13 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200440](v0 + 5, v8, v13, v11, v12);
    }
  }

  else
  {
    *(v4 + 16) = v1;
    *(v4 + 24) = 1;
    v6 = swift_task_alloc();
    *(v6 + 16) = sub_2226174C8;
    *(v6 + 24) = v5;
    os_unfair_lock_lock(v3 + 4);
    sub_2226174E4(v7);
    os_unfair_lock_unlock(v3 + 4);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_222609640()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22260973C, 0, 0);
}

uint64_t sub_22260973C(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v3, v4);
  }

  else
  {
    v5 = *(v1 + 24);

    v6 = *(v1 + 8);

    return v6();
  }
}

unint64_t sub_2226097C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + 24);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 24);
    }
  }

  else
  {
    v10 = sub_22261B310();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a1;

    v9 = sub_2225FEE4C(0, 0, v7, &unk_22261ECE8, v11);
    v12 = *(a1 + 24);
    *(a1 + 24) = v9;
    swift_retain_n();
    sub_222617A9C(v12);
    if (*(a1 + 24) == 1)
    {
      v13 = *(a1 + 216);
      sub_22261AE90();
    }

    v8 = 0;
  }

  *a2 = v9;
  return sub_222618640(v8);
}

uint64_t StorefrontAppStateController.reloadAllStates(synchronizing:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 140) = a1;
  *(v2 + 88) = *v1;
  v3 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226099F8, 0, 0);
}

uint64_t sub_2226099F8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v11 = *(v0 + 140);
  v4 = *(v3 + 23);
  __swift_project_boxed_opaque_existential_1(v3 + 19, *(v3 + 22));
  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v5 = *(sub_22261AF30() - 8);
  *(v0 + 112) = *(v5 + 72);
  *(v0 + 136) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 40) = v2;
  *(v0 + 16) = v3;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 16, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AEB0();
  sub_22261B050();

  v6 = v3[18];
  v7 = swift_allocObject();
  *(v0 + 120) = v7;
  *(v7 + 16) = v11;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_222609C5C;
  v9 = *(v0 + 80);

  return sub_22260A044(&unk_22261E9B8, v7, v6);
}

uint64_t sub_222609C5C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_222609D74, 0, 0);
}

uint64_t sub_222609D74()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = (*(v0 + 136) + 32) & ~*(v0 + 136);
  v9 = v5[23];
  __swift_project_boxed_opaque_existential_1(v5 + 19, v5[22]);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 72) = v4;
  *(v0 + 48) = v5;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 48, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AEB0();
  sub_22261B050();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_222609EF4(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_222609F18, 0, 0);
}

uint64_t sub_222609F18()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_222602998;
  v7 = *(v0 + 32);

  return v9(v7, v2, v3);
}

uint64_t sub_22260A044(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 192) = a1;
  *(v4 + 184) = a3;
  *(v4 + 216) = *v3;
  v5 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22260A110, 0, 0);
}

uint64_t sub_22260A110()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 184);
    sub_2225D6718(v1 + 152, v0 + 16);
    v6 = swift_allocObject();
    *(v0 + 240) = v6;
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    sub_2225D2F1C((v0 + 16), (v6 + 5));
    v6[10] = v1;

    v7 = swift_task_alloc();
    *(v0 + 248) = v7;
    v7[2] = v5;
    v7[3] = &unk_22261EC68;
    v7[4] = v6;
    v8 = *(MEMORY[0x277D859B8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 256) = v9;
    *v9 = v0;
    v9[1] = sub_22260A2CC;
    v10 = MEMORY[0x277D84F78] + 8;
    v11 = MEMORY[0x277D84F78] + 8;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v9, v10, v11, 0, 0, &unk_22261EC78, v7, v12);
  }

  else
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22260A2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_22260A458;
  }

  else
  {
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);

    v4 = sub_22260A3F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22260A3F0()
{
  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22260A458()
{
  v1 = v0;
  v19 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v1[26];
  v8 = v1[23];

  v20 = v7[23];
  __swift_project_boxed_opaque_existential_1(v7 + 19, v7[22]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v9 = *(sub_22261AF30() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  v1[10] = v6;
  v1[7] = v7;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v1[14] = MEMORY[0x277D839F8];
  v1[11] = v8;
  sub_22261AEC0();
  sub_2225E22D4((v1 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v12 = v1[19];
  v13 = v1[20];
  v1[18] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 15);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v12, v13);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v16 = v1[28];
  v15 = v1[29];

  v17 = v1[1];

  return v17();
}

uint64_t StorefrontAppStateController.reloadState(forApps:synchronizing:)(uint64_t a1, char a2)
{
  *(v3 + 228) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  *(v3 + 160) = *v2;
  v4 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22260A818, 0, 0);
}

uint64_t sub_22260A818()
{
  v1 = v0;
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v15 = *(v1 + 228);
  v5 = v1[18];
  v6 = v1[19];
  v14 = *(v6 + 23);
  __swift_project_boxed_opaque_existential_1(v6 + 19, *(v6 + 22));
  v1[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v7 = *(sub_22261AF30() - 8);
  v1[24] = *(v7 + 72);
  *(v1 + 56) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v4;
  v1[2] = v6;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CF8, &qword_22261E9D0);
  v1[25] = v8;
  v1[9] = v8;
  v1[6] = v5;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v9 = v6[18];
  v10 = swift_allocObject();
  v1[26] = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v15;

  v11 = swift_task_alloc();
  v1[27] = v11;
  *v11 = v1;
  v11[1] = sub_22260AB04;
  v12 = v1[19];

  return sub_22260A044(&unk_22261E9E0, v10, v9);
}

uint64_t sub_22260AB04()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22260AC1C, 0, 0);
}

uint64_t sub_22260AC1C()
{
  v10 = *(v0 + 200);
  v11 = *(v0 + 192);
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = (*(v0 + 224) + 32) & ~*(v0 + 224);
  v12 = v5[23];
  __swift_project_boxed_opaque_existential_1(v5 + 19, v5[22]);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 104) = v4;
  *(v0 + 80) = v5;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 80, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 136) = v10;
  *(v0 + 112) = v6;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 112, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22260AE14(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22260AE38, 0, 0);
}

uint64_t sub_22260AE38()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;

  v4 = sub_2226163A0(sub_222617FA4, v3, v1);

  if (*(v4 + 16))
  {
    v5 = *(v0 + 16);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = sub_222607AA0(v4);

    v9 = sub_2226067B4(v8);
    *(v0 + 32) = v9;

    v10 = *(v7 + 32);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_22260B030;
    v13 = *(v0 + 56);

    return v16(v9, v13, v6, v7);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22260B030()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22260B16C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22260B16C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t StorefrontAppStateController.preloadState(forApps:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-v6];
  v8 = *(v1 + 192);
  v17 = a1;
  v18 = v1;
  v14 = sub_222617648;
  v15 = &v16;
  os_unfair_lock_lock(v8 + 4);
  sub_2225F7874(&v19);
  os_unfair_lock_unlock(v8 + 4);
  v9 = *(v19 + 16);

  if (v9)
  {
    v11 = sub_22261B310();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;
    v12[5] = a1;

    sub_2225FEE4C(0, 0, v7, &unk_22261E9F8, v12);
  }

  return result;
}

uint64_t sub_22260B344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a2 + 40);
  if (*(v6 + 16) <= *(a1 + 16) >> 3)
  {

    sub_22261678C(v6);

    v8 = a1;
  }

  else
  {
    v7 = *(a2 + 40);

    v8 = sub_22261689C(v6, a1);
  }

  swift_beginAccess();

  sub_222608928(v9);
  result = swift_endAccess();
  *a3 = v8;
  return result;
}

uint64_t sub_22260B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v6 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22260B4D8, 0, 0);
}

uint64_t sub_22260B4D8()
{
  v29 = v0;
  v1 = *(v0[28] + 16);
  v0[32] = v1;
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (!v2)
  {
LABEL_10:
    v12 = v0[30];
    v11 = v0[31];

    v13 = v0[1];

    return v13();
  }

  v0[34] = 0;
  if (!*(v1 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = 0;
  while (1)
  {
    sub_2225D6718(v1 + 40 * v3 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    if ((*(v5 + 8))(v4, v5))
    {
      break;
    }

LABEL_7:
    v9 = v0[33];
    v10 = v0[34] + 1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v10 == v9)
    {
      goto LABEL_10;
    }

    v3 = v0[34] + 1;
    v0[34] = v3;
    v1 = v0[32];
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_9;
    }
  }

  v6 = v0[29];
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 2;

  v8 = sub_2226163A0(sub_222618878, v7, v6);
  v0[35] = v8;

  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = sub_222607AA0(v8);
  v18 = *(v17 + 16);
  v19 = sub_2225F78B8();
  v20 = MEMORY[0x223DBB7B0](v18, &type metadata for AdamID, v19);
  v0[26] = v20;
  v21 = *(v17 + 16);
  if (v21)
  {
    v22 = 32;
    do
    {
      sub_222614E28(&v28, *(v17 + v22));
      v22 += 8;
      --v21;
    }

    while (v21);

    v23 = v0[26];
  }

  else
  {
    v23 = v20;
  }

  v0[36] = v23;
  v24 = *(v16 + 32);
  v27 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_22260B7E4;

  return v27(v23, 1, v15, v16);
}

uint64_t sub_22260B7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_22260BBF0;
  }

  else
  {
    v5 = *(v2 + 280);
    v6 = *(v2 + 288);

    v4 = sub_22260B908;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22260B908()
{
  v27 = v0;
  v2 = v0[38];
  while (1)
  {
    v3 = v0[33];
    v4 = v0[34] + 1;
    v5 = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v4 == v3)
    {
      break;
    }

    v6 = v0[34] + 1;
    v0[34] = v6;
    v7 = v0[32];
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_2225D6718(v7 + 40 * v6 + 32, (v0 + 2));
    v8 = v0[5];
    v1 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    if ((*(v1 + 8))(v8, v1))
    {
      v9 = v0[29];
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 2;

      v11 = sub_2226163A0(sub_222618878, v10, v9);
      v0[35] = v11;

      if (*(v11 + 16))
      {
        v4 = v0[5];
        v1 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
        v16 = sub_222607AA0(v11);
        v17 = *(v16 + 16);
        v18 = sub_2225F78B8();
        v5 = MEMORY[0x223DBB7B0](v17, &type metadata for AdamID, v18);
        v0[26] = v5;
        v19 = *(v16 + 16);
        if (v19)
        {
          v20 = 32;
          do
          {
            sub_222614E28(&v26, *(v16 + v20));
            v20 += 8;
            --v19;
          }

          while (v19);

          v21 = v0[26];
LABEL_16:
          v0[36] = v21;
          v22 = *(v1 + 32);
          v25 = (v22 + *v22);
          v23 = v22[1];
          v24 = swift_task_alloc();
          v0[37] = v24;
          *v24 = v0;
          v24[1] = sub_22260B7E4;

          return v25(v21, 1, v4, v1);
        }

LABEL_15:
        v21 = v5;

        goto LABEL_16;
      }
    }
  }

  v13 = v0[30];
  v12 = v0[31];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22260BBF0()
{
  v42 = v0;
  v38 = v0[38];
  v1 = v0[36];
  v36 = v0[35];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];

  v39 = v4[23];
  __swift_project_boxed_opaque_existential_1(v4 + 19, v4[22]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v5 = *(sub_22261AF30() - 8);
  v37 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  v0[10] = type metadata accessor for StorefrontAppStateController();
  v0[7] = v4;

  sub_22261AEC0();
  sub_2225E22D4((v0 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CF8, &qword_22261E9D0);
  v0[11] = v36;
  v0[14] = v7;
  sub_22261AEC0();
  sub_2225E22D4((v0 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v8 = v0[5];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v0[18] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 15);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v11 = v0[23];
  v12 = v0[24];
  v0[22] = v12;
  v13 = __swift_allocate_boxed_opaque_existential_0(v0 + 19);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 19), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  while (1)
  {
    v14 = v0[33];
    v15 = v0[34] + 1;
    v16 = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v15 == v14)
    {
      break;
    }

    v17 = v0[34] + 1;
    v0[34] = v17;
    v18 = v0[32];
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_2225D6718(v18 + 40 * v17 + 32, (v0 + 2));
    v19 = v0[5];
    v12 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
    if ((*(v12 + 8))(v19, v12))
    {
      v20 = v0[29];
      v21 = swift_task_alloc();
      *(v21 + 16) = v0 + 2;

      v22 = sub_2226163A0(sub_222618878, v21, v20);
      v0[35] = v22;

      if (*(v22 + 16))
      {
        v15 = v0[5];
        v12 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
        v27 = sub_222607AA0(v22);
        v28 = *(v27 + 16);
        v29 = sub_2225F78B8();
        v16 = MEMORY[0x223DBB7B0](v28, &type metadata for AdamID, v29);
        v0[26] = v16;
        v30 = *(v27 + 16);
        if (v30)
        {
          v31 = 32;
          do
          {
            sub_222614E28(&v41, *(v27 + v31));
            v31 += 8;
            --v30;
          }

          while (v30);

          v32 = v0[26];
LABEL_16:
          v0[36] = v32;
          v33 = *(v12 + 32);
          v40 = (v33 + *v33);
          v34 = v33[1];
          v35 = swift_task_alloc();
          v0[37] = v35;
          *v35 = v0;
          v35[1] = sub_22260B7E4;

          return v40(v32, 1, v15, v12);
        }

LABEL_15:
        v32 = v16;

        goto LABEL_16;
      }
    }
  }

  v24 = v0[30];
  v23 = v0[31];

  v25 = v0[1];

  return v25();
}

void StorefrontAppStateController.state(forApp:initialState:applying:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = *(a3 + 6);
  v4 = *(v3 + 192);
  v6 = *a1;
  v7 = *(a1 + 8);
  os_unfair_lock_lock(v4 + 4);
  sub_2225F76C8(v5);
  os_unfair_lock_unlock(v4 + 4);
}

void sub_22260C280(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-v11];
  v13 = type metadata accessor for State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v27[-v19];
  swift_beginAccess();
  v21 = *(a2 + 32);
  if (*(v21 + 16) && (v22 = sub_2225F1650(a3), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);
    swift_endAccess();
    v25 = *(v24 + 32);

    os_unfair_lock_lock((v25 + 24));
    v26 = v31;
    sub_2225E3320((v25 + 16), v28 & 1, v12);
    if (v26)
    {
      os_unfair_lock_unlock((v25 + 24));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v25 + 24));

    (*(v14 + 56))(v12, 0, 1, v13);
    sub_2225DDDD0(v12, v20);
  }

  else
  {
    swift_endAccess();
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_2225D8D00(a5, v20);
  }

  if ((*v29 & 2) != 0)
  {
    sub_2225D8D00(v20, v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_222617F20(v20, type metadata accessor for State);
      sub_222617F20(v18, type metadata accessor for State);
      swift_storeEnumTagMultiPayload();
      return;
    }

    sub_222617F20(v18, type metadata accessor for State);
  }

  sub_2225DDDD0(v20, v30);
}

uint64_t StorefrontAppStateController.prospectiveState(forApp:applying:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = (&v54 - v12);
  v70 = type metadata accessor for State();
  v67 = *(v70 - 8);
  v13 = *(v67 + 64);
  v14 = MEMORY[0x28223BE20](v70);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v56 = &v54 - v20;
  v21 = *a1;
  v69 = *(a1 + 8);
  v66 = *a2;
  v59 = *(a2 + 16);
  v22 = *(a2 + 32);
  v58 = *(a2 + 24);
  v60 = v22;
  v23 = *(a2 + 48);
  v57 = *(a2 + 40);
  v61 = v23;
  v63 = v3;
  v24 = v3[2];
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v24 + 32;
    v28 = MEMORY[0x277D84F90];
    while (v26 < *(v24 + 16))
    {
      sub_2225D6718(v27, &v73);
      v29 = *(&v74 + 1);
      v4 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      *&v71[0] = v21;
      BYTE8(v71[0]) = v69;
      if ((*(v4 + 56))(v71, v29, v4))
      {
        sub_2225D2F1C(&v73, v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, v28[2] + 1, 1);
          v28 = v72;
        }

        v4 = v28[2];
        v31 = v28[3];
        if (v4 >= v31 >> 1)
        {
          sub_222614A78((v31 > 1), v4 + 1, 1);
          v28 = v72;
        }

        v28[2] = v4 + 1;
        sub_2225D2F1C(v71, &v28[5 * v4 + 4]);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v73);
      }

      ++v26;
      v27 += 40;
      if (v25 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_13:
  v32 = v28[2];
  if (v32)
  {
    v33 = (v28 + 4);
    v34 = (v67 + 48);
    v35 = MEMORY[0x277D84F90];
    do
    {
      sub_2225D6718(v33, &v73);
      v36 = *(&v74 + 1);
      v37 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      *&v71[0] = v21;
      (*(v37 + 48))(v71, v36, v37);
      __swift_destroy_boxed_opaque_existential_1(&v73);
      if ((*v34)(v11, 1, v70) == 1)
      {
        sub_2225E22D4(v11, &qword_27D010A38, qword_22261E810);
      }

      else
      {
        sub_2225DDDD0(v11, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2225D798C(0, v35[2] + 1, 1, v35);
        }

        v39 = v35[2];
        v38 = v35[3];
        if (v39 >= v38 >> 1)
        {
          v35 = sub_2225D798C(v38 > 1, v39 + 1, 1, v35);
        }

        v35[2] = v39 + 1;
        sub_2225DDDD0(v68, v35 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v39);
      }

      v33 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v73 = v66;
  *&v74 = v59;
  *(&v74 + 1) = v58;
  *&v75 = v60;
  *(&v75 + 1) = v57;
  v76 = v61;

  v40 = v62;
  v28 = v63;
  sub_22260CD30(v35, &v73, v62);

  sub_22261773C(v73, *(&v73 + 1), v74, *(&v74 + 1), v75);
  if ((*(v67 + 48))(v40, 1, v70) == 1)
  {
    sub_2225E22D4(v40, &qword_27D010A38, qword_22261E810);
    v4 = v65;
    goto LABEL_32;
  }

  v41 = v56;
  v42 = sub_2225DDDD0(v40, v56);
  v43 = v28[24];
  v44 = MEMORY[0x28223BE20](v42);
  *(&v54 - 4) = v28;
  *(&v54 - 3) = v21;
  *(&v54 - 16) = v69;
  *(&v54 - 1) = v41;
  MEMORY[0x28223BE20](v44);
  *(&v54 - 2) = sub_222617780;
  *(&v54 - 1) = v45;
  os_unfair_lock_lock(v43 + 4);
  sub_2226187B8(&v73);
  os_unfair_lock_unlock(v43 + 4);
  v4 = v65;
  if (v73 != 1)
  {
    sub_222617F20(v41, type metadata accessor for State);
LABEL_32:
    v48 = swift_storeEnumTagMultiPayload();
    if (qword_280D9F098 == -1)
    {
LABEL_33:
      v73 = xmmword_280D9F0A0;
      v74 = *&byte_280D9F0B0;
      v75 = unk_280D9F0C0;
      v76 = qword_280D9F0D0;
      v49 = v28[24];
      v50 = MEMORY[0x28223BE20](v48);
      *(&v54 - 6) = &v73;
      *(&v54 - 5) = v28;
      *(&v54 - 4) = v21;
      *(&v54 - 24) = v69;
      *(&v54 - 2) = v4;
      MEMORY[0x28223BE20](v50);
      *(&v54 - 2) = sub_222618818;
      *(&v54 - 1) = v51;
      os_unfair_lock_lock(v49 + 4);
      sub_2225F7954(v52);
      os_unfair_lock_unlock(v49 + 4);
      v41 = v4;
      return sub_222617F20(v41, type metadata accessor for State);
    }

LABEL_37:
    v48 = swift_once();
    goto LABEL_33;
  }

  if ((v66 & 2) != 0 && (v46 = v55, sub_2225D8D00(v41, v55), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_222617F20(v46, type metadata accessor for State), EnumCaseMultiPayload == 3))
  {
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2225D8D00(v41, v64);
  }

  return sub_222617F20(v41, type metadata accessor for State);
}

uint64_t sub_22260CD30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v15 = *a2;
  v14 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v30 = a2[5];
  v31 = v16;
  v19 = a2[6];
  sub_2225E0800(a1, *(v3 + 208), &v29 - v12);
  if (v18)
  {
    v20 = v19;
    sub_2225DE5AC(v13, v11, &qword_27D010A38, qword_22261E810);
    v21 = type metadata accessor for State();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      sub_2225E22D4(v11, &qword_27D010A38, qword_22261E810);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      if ((*v11 & 1) == 0 && (v15 & 4) == 0)
      {
        v36 = v15;
        v37 = v14;
        LOBYTE(v38) = v17 & 1;
        v39 = v31;
        v40 = v18;
        v41 = v30;
        v42 = v20;
        v34 = sub_2225DC0E8();
        v35 = v23;
        v32 = 38;
        v33 = 0xE100000000000000;
        sub_2225EE3F8();
        v24 = sub_22261B470();

        v36 = v24;
        v37 = sub_2225DC280;
        v38 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C18, &unk_22261DCF0);
        sub_2225EE44C();
        v25 = sub_22261B1C0();
        v27 = v26;

        sub_2225E22D4(v13, &qword_27D010A38, qword_22261E810);
        *a3 = v25;
        a3[1] = v27;
        swift_storeEnumTagMultiPayload();
        return (*(v22 + 56))(a3, 0, 1, v21);
      }
    }

    else
    {
      sub_222617F20(v11, type metadata accessor for State);
    }
  }

  return sub_2225E4618(v13, a3);
}

uint64_t StorefrontAppStateController.canTransitionState(forApp:to:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  v4 = *a1;
  v5 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v6);
  os_unfair_lock_unlock(v2 + 4);
  return v6;
}

void sub_22260D088(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = a1;
  v4 = sub_22260D154(&v6)[4];

  os_unfair_lock_lock((v4 + 24));
  sub_222617F80((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {

    v5 = v6;

    *a2 = v5;
  }
}

void *sub_22260D154(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22261B150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v2 + 32);
  if (*(v10 + 16) && (v11 = sub_2225F1650(v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_2225D6718(v2 + 48, v20);
    if (qword_280D9F2C0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280DA0A78);
    type metadata accessor for AppStateMachine();
    v15 = swift_allocObject();
    (*(v5 + 16))(v8, v14, v4);
    v13 = sub_222617320(v9, v20, v8, v15);
    swift_beginAccess();

    v16 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_2225F9D70(v13, v9, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v19;
    swift_endAccess();
  }

  return v13;
}

uint64_t StorefrontAppStateController.transitionState(forApp:to:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  v4 = *a1;
  v5 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v6);
  os_unfair_lock_unlock(v2 + 4);
  return v6;
}

uint64_t sub_22260D3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D18, &unk_22261EC10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-v8];
  v10 = *a1;
  v11 = *(a1 + 8);
  v24 = *a1;
  v12 = sub_22260D154(&v24);
  v13 = v12[4];
  v21[16] = v11;
  v22 = a2;
  v23 = v12;

  os_unfair_lock_lock((v13 + 24));
  sub_2226188AC((v13 + 16), &v24);
  os_unfair_lock_unlock((v13 + 24));

  v14 = v24;

  if (v14 == 1)
  {
    v15 = *(v3 + 136);
    v24 = v10;
    v25 = v11;
    v16 = v15;
    v17 = [v16 containsObject_];

    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = *(v3 + 224);
      v19 = *(v6 + 48);
      *v9 = v10;
      v9[8] = v11;
      sub_2225D8D00(a2, &v9[v19]);
      sub_22261AE90();
      sub_2225E22D4(v9, &qword_27D010D18, &unk_22261EC10);
    }
  }

  return v14;
}

uint64_t StorefrontAppStateController.postsChanges(forApp:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  v4 = *a1;
  v5 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v6);
  os_unfair_lock_unlock(v2 + 4);
  return v6;
}

uint64_t sub_22260D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 *a4@<X8>)
{
  LOBYTE(v9) = a3 & 1;
  v5 = *(a1 + 136);
  v6 = [v5 containsObject_];

  result = swift_unknownObjectRelease();
  *a4 = v6;
  return result;
}

void StorefrontAppStateController.setPostsChanges(_:forApp:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 192);
  v5 = *a2;
  v6 = *(a2 + 8);
  os_unfair_lock_lock(v3 + 4);
  sub_222618894(v4);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_22260D710(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 136);
  LOBYTE(v11) = a4 & 1;
  if (a1)
  {
    v5 = v4;
    v6 = sub_22261B650();
    v7 = &selRef_addObject_;
  }

  else
  {
    v8 = v4;
    v6 = sub_22261B650();
    v7 = &selRef_removeObject_;
  }

  [v4 *v7];

  return swift_unknownObjectRelease();
}

uint64_t StorefrontAppStateController.setWaiting(forApp:installationType:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  v16 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v44 = *a2;
  v18 = swift_storeEnumTagMultiPayload();
  if (qword_280D9F098 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v51[0] = xmmword_280D9F0A0;
    v51[1] = *&byte_280D9F0B0;
    v51[2] = unk_280D9F0C0;
    v52 = qword_280D9F0D0;
    v19 = v2;
    v20 = *(v2 + 192);
    v21 = MEMORY[0x28223BE20](v18);
    v40[-6] = v51;
    v40[-5] = v2;
    v40[-4] = v16;
    v45 = a1;
    LOBYTE(v40[-3]) = a1;
    v40[-2] = v13;
    MEMORY[0x28223BE20](v21);
    v40[-2] = sub_222618818;
    v40[-1] = v22;
    os_unfair_lock_lock(v20 + 4);
    sub_2225F7954(v23);
    v42 = v20;
    os_unfair_lock_unlock(v20 + 4);
    v2 = type metadata accessor for State;
    sub_222617F20(v13, type metadata accessor for State);
    *v10 = v44;
    swift_storeEnumTagMultiPayload();
    v13 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v15, v10);
    sub_222617F20(v10, type metadata accessor for State);
    sub_222617F20(v15, type metadata accessor for State);
    if (v13)
    {
      return 1;
    }

    v40[0] = 0;
    v40[1] = v4;
    v41 = v19;
    v25 = *(v19 + 16);
    v26 = *(v25 + 16);
    if (!v26)
    {
      break;
    }

    v27 = 0;
    v15 = (v25 + 32);
    v10 = MEMORY[0x277D84F90];
    LODWORD(a1) = 40;
    while (v27 < *(v25 + 16))
    {
      sub_2225D6718(v15, &v47);
      v13 = v48;
      v4 = v49;
      v2 = __swift_project_boxed_opaque_existential_1(&v47, v48);
      *&v46[0] = v16;
      BYTE8(v46[0]) = v45;
      if ((*(v4 + 56))(v46, v13, v4))
      {
        sub_2225D2F1C(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = v50;
          sub_222614A78(0, *(v10 + 2) + 1, 1);
          v10 = v50[0];
        }

        v4 = *(v10 + 2);
        v29 = *(v10 + 3);
        v13 = v4 + 1;
        if (v4 >= v29 >> 1)
        {
          v2 = v50;
          sub_222614A78((v29 > 1), v4 + 1, 1);
          v10 = v50[0];
        }

        *(v10 + 2) = v13;
        sub_2225D2F1C(v46, &v10[40 * v4 + 32]);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v47);
      }

      ++v27;
      v15 += 40;
      if (v26 == v27)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v18 = swift_once();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:
  v30 = (v10 + 32);
  v31 = -*(v10 + 2);
  a1 = -1;
  v32 = v41;
  do
  {
    if (v31 + a1 == -1)
    {
      break;
    }

    if (++a1 >= *(v10 + 2))
    {
      goto LABEL_23;
    }

    v33 = v30 + 40;
    sub_2225D6718(v30, &v47);
    v15 = v48;
    v13 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, v48);
    *&v46[0] = v16;
    LOBYTE(v50[0]) = v44;
    v2 = (*(v13 + 64))(v46, v50, v15, v13);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v30 = v33;
  }

  while ((v2 & 1) == 0);

  v34 = v43;
  *v43 = v44;
  v35 = swift_storeEnumTagMultiPayload();
  v36 = MEMORY[0x28223BE20](v35);
  v40[-4] = v32;
  v40[-3] = v16;
  LOBYTE(v40[-2]) = v45;
  v40[-1] = v34;
  MEMORY[0x28223BE20](v36);
  v40[-2] = sub_222618848;
  v40[-1] = v37;
  v38 = v42;
  os_unfair_lock_lock(v42 + 4);
  sub_2226187B8(&v47);
  os_unfair_lock_unlock(v38 + 4);
  v24 = v47;
  sub_222617F20(v34, type metadata accessor for State);
  return v24;
}

uint64_t StorefrontAppStateController.clearWaiting(forApp:refreshState:)(uint64_t result, char a2)
{
  v3 = *result;
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 8);
    v8 = v4 + 32;
    v9 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_2225D6718(v8, &v21);
      v10 = v22;
      v11 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      *&v20[0] = v3;
      BYTE8(v20[0]) = v7;
      if ((*(v11 + 56))(v20, v10, v11))
      {
        sub_2225D2F1C(&v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, *(v9 + 16) + 1, 1);
          v9 = v24;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_222614A78((v13 > 1), v14 + 1, 1);
          v9 = v24;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_2225D2F1C(v20, v9 + 40 * v14 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      ++v6;
      v8 += 40;
      if (v5 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_13:
    v15 = *(v9 + 16);
    if (v15)
    {
      v16 = v9 + 32;
      do
      {
        sub_2225D6718(v16, &v21);
        v17 = v22;
        v18 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, v22);
        *&v20[0] = v3;
        (*(v18 + 72))(v20, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v21);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    if (a2)
    {
      sub_22260DEE8(v3);
    }

    return 1;
  }

  return result;
}

uint64_t sub_22260DEE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22261AE50();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22261AE70();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 200);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_222617E9C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222608724;
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  sub_22261AE60();
  v19 = MEMORY[0x277D84F90];
  sub_222618704(&qword_280D9F030, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CD0, &qword_22261E510);
  sub_2225EDEF8(&qword_280D9F020, &qword_27D010CD0, &qword_22261E510);
  sub_22261B4A0();
  MEMORY[0x223DBB800](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t StorefrontAppStateController.refreshUpdateRegistry(forApp:with:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 280) = v4;
  *(v3 + 288) = *v4;
  v7 = type metadata accessor for State();
  *(v3 + 296) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v9 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a1;
  *(v3 + 336) = v10;
  *(v3 + 344) = v11;
  *(v3 + 396) = *(a1 + 8);
  v12 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v12;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_22260E330, 0, 0);
}

uint64_t sub_22260E330()
{
  v60 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 396);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);
  v5 = *(v4 + 192);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v0 + 16;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_2226177E8;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_222618894(v8);
  os_unfair_lock_unlock(v5 + 4);

  v9 = sub_2225FA634(*(v0 + 40), *(v0 + 48));
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = *(v0 + 344);
    v13 = *(v0 + 280);
    v14 = v13[14];
    v15 = v13[15];
    v48 = v13;
    __swift_project_boxed_opaque_existential_1(v13 + 11, v14);
    v59[0] = v12;
    (*(v15 + 8))(&v55, v59, v14, v15);
    if (!v56 || (v16 = v55, , v16 < v11))
    {
      v47 = v11;
      v17 = *(v0 + 336);
      v50 = *(v0 + 344);
      v18 = *(v0 + 328);
      v53 = *(v0 + 296);
      v54 = *(v0 + 320);
      v49 = *(v0 + 288);
      v19 = *(v0 + 280);
      v51 = v19[23];
      v52 = *(v0 + 312);
      __swift_project_boxed_opaque_existential_1(v19 + 19, v19[22]);
      *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
      v20 = *(sub_22261AF30() - 8);
      *(v0 + 360) = *(v20 + 72);
      *(v0 + 392) = *(v20 + 80);
      *(swift_allocObject() + 16) = xmmword_22261D5B0;
      sub_22261AF00();
      sub_22261AEF0();
      *(v0 + 144) = v49;
      *(v0 + 120) = v19;

      sub_22261AEC0();
      sub_2225E22D4(v0 + 120, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261AF00();
      sub_22261AEF0();
      *(v0 + 176) = &type metadata for App;
      *(v0 + 152) = v50;
      *(v0 + 160) = v2;
      sub_22261AEC0();
      sub_2225E22D4(v0 + 152, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B050();

      swift_storeEnumTagMultiPayload();
      v21 = swift_task_alloc();
      *(v21 + 16) = v1;
      *(v21 + 24) = v19;
      *(v21 + 32) = v50;
      *(v21 + 40) = v2;
      *(v21 + 48) = v52;
      v22 = swift_task_alloc();
      *(v22 + 16) = sub_222618818;
      *(v22 + 24) = v21;
      os_unfair_lock_lock(v5 + 4);
      sub_2225F7954(v23);
      os_unfair_lock_unlock(v5 + 4);

      v24 = (v0 + 320);
      v26 = *(v0 + 312);
      v25 = *(v0 + 320);
      v28 = *(v0 + 296);
      v27 = *(v0 + 304);

      sub_222617F20(v26, type metadata accessor for State);
      sub_2225D8D00(v25, v27);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v29 = *(*(v0 + 304) + 8);
        if (v29 && v29 < v47)
        {
          v30 = *(v0 + 344);
          v31 = v48[14];
          v32 = v48[15];
          __swift_project_boxed_opaque_existential_1(v48 + 11, v31);
          v33 = *(v0 + 32);
          v55 = *v1;
          v56 = v33;
          v57 = *(v0 + 48);
          v58 = *(v0 + 64);
          v34 = sub_2225DC0E8();
          *&v55 = v47;
          *(&v55 + 1) = v34;
          *&v56 = v35;
          v59[0] = v30;
          (*(v32 + 16))(&v55, v59, v31, v32);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D00, &qword_22261EA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22261C770;
          *(inited + 32) = v30;
          *(inited + 40) = v2;
          v37 = sub_222617930(inited);
          *(v0 + 368) = v37;
          swift_setDeallocating();
          v38 = swift_task_alloc();
          *(v0 + 376) = v38;
          *v38 = v0;
          v38[1] = sub_22260E924;
          v39 = *(v0 + 280);

          return StorefrontAppStateController.reloadState(forApps:synchronizing:)(v37, 1);
        }
      }

      else
      {
        sub_222617F20(*v24, type metadata accessor for State);
        v24 = (v0 + 304);
      }

      sub_222617F20(*v24, type metadata accessor for State);
    }
  }

  v42 = *(v0 + 328);
  v41 = *(v0 + 336);
  v44 = *(v0 + 312);
  v43 = *(v0 + 320);
  v45 = *(v0 + 304);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_22260E924()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_22260EAEC;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_22260EA40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22260EA40()
{
  sub_222617F20(v0[40], type metadata accessor for State);
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22260EAEC()
{
  v21 = *(v0 + 384);
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 392);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v6 = *(v0 + 396);
  v7 = *(v0 + 336);
  v8 = *(v0 + 280);

  v22 = v8[23];
  __swift_project_boxed_opaque_existential_1(v8 + 19, v8[22]);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 208) = &type metadata for App;
  *(v0 + 184) = v4;
  *(v0 + 192) = v6;
  sub_22261AEC0();
  sub_2225E22D4(v0 + 184, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 264);
  v12 = sub_22261B6A0();
  *(v0 + 240) = MEMORY[0x277D837D0];
  *(v0 + 216) = v12;
  *(v0 + 224) = v13;
  sub_22261AEC0();
  sub_2225E22D4(v0 + 216, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  sub_222617F20(*(v0 + 320), type metadata accessor for State);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t StorefrontAppStateController.isLocal(app:)(uint64_t *a1)
{
  v33 = type metadata accessor for State();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v30 - v8;
  v34 = *a1;
  v10 = *(v1 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = v10 + 32;
    v15 = MEMORY[0x277D84F90];
    while (v12 < *(v10 + 16))
    {
      sub_2225D6718(v14, &v36);
      v16 = v37;
      v17 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      *&v35[0] = v34;
      BYTE8(v35[0]) = v13;
      if ((*(v17 + 56))(v35, v16, v17))
      {
        sub_2225D2F1C(&v36, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, *(v15 + 16) + 1, 1);
          v15 = v39;
        }

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_222614A78((v19 > 1), v20 + 1, 1);
          v15 = v39;
        }

        *(v15 + 16) = v20 + 1;
        result = sub_2225D2F1C(v35, v15 + 40 * v20 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      ++v12;
      v14 += 40;
      if (v11 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:
    v21 = *(v15 + 16);
    if (!v21)
    {
LABEL_26:

      return v21;
    }

    v22 = 0;
    v23 = v15 + 32;
    v24 = (v31 + 48);
    while (v22 < *(v15 + 16))
    {
      sub_2225D6718(v23, &v36);
      v25 = v37;
      v26 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      *&v35[0] = v34;
      v27 = v25;
      v28 = v33;
      (*(v26 + 48))(v35, v27, v26);
      if ((*v24)(v9, 1, v28) == 1)
      {
        sub_2225E22D4(v9, &qword_27D010A38, qword_22261E810);
      }

      else
      {
        sub_2225D8D00(v9, v32);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 7 || EnumCaseMultiPayload == 5)
        {
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload == 2)
        {
          sub_222617F20(v32, type metadata accessor for State);
LABEL_25:
          sub_222617F20(v9, type metadata accessor for State);
          __swift_destroy_boxed_opaque_existential_1(&v36);
          v21 = 1;
          goto LABEL_26;
        }

        sub_222617F20(v32, type metadata accessor for State);
        sub_222617F20(v9, type metadata accessor for State);
      }

      ++v22;
      result = __swift_destroy_boxed_opaque_existential_1(&v36);
      v23 += 40;
      if (v21 == v22)
      {
        v21 = 0;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t StorefrontAppStateController.isRedownloadable(app:includingPreorders:)(uint64_t *a1, int a2)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v33 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  v34 = *a1;
  v11 = *(v2 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(a1 + 8);
    v15 = v11 + 32;
    v16 = MEMORY[0x277D84F90];
    while (v13 < *(v11 + 16))
    {
      sub_2225D6718(v15, &v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      *&v35[0] = v34;
      BYTE8(v35[0]) = v14;
      if ((*(v18 + 56))(v35, v17, v18))
      {
        sub_2225D2F1C(&v36, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, *(v16 + 16) + 1, 1);
          v16 = v39;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_222614A78((v20 > 1), v21 + 1, 1);
          v16 = v39;
        }

        *(v16 + 16) = v21 + 1;
        result = sub_2225D2F1C(v35, v16 + 40 * v21 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      ++v13;
      v15 += 40;
      if (v12 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_13:
    v22 = *(v16 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = v16 + 32;
      do
      {
        if (v23 >= *(v16 + 16))
        {
          goto LABEL_28;
        }

        sub_2225D6718(v24, &v36);
        v25 = v37;
        v26 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, v37);
        *&v35[0] = v34;
        v27 = v25;
        v28 = v33;
        (*(v26 + 48))(v35, v27, v26);
        v29 = type metadata accessor for State();
        if ((*(*(v29 - 8) + 48))(v10, 1, v29) != 1)
        {
          sub_2225DE5AC(v10, v28, &qword_27D010A38, qword_22261E810);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            if (*v28 == 1 && (v32 & 1) != 0)
            {

LABEL_26:
              sub_2225E22D4(v10, &qword_27D010A38, qword_22261E810);
              __swift_destroy_boxed_opaque_existential_1(&v36);
              return 1;
            }
          }

          else
          {
            if (EnumCaseMultiPayload == 3)
            {

              sub_222617F20(v28, type metadata accessor for State);
              goto LABEL_26;
            }

            sub_222617F20(v28, type metadata accessor for State);
          }
        }

        ++v23;
        sub_2225E22D4(v10, &qword_27D010A38, qword_22261E810);
        result = __swift_destroy_boxed_opaque_existential_1(&v36);
        v24 += 40;
      }

      while (v22 != v23);
    }

    return 0;
  }

  return result;
}

uint64_t StorefrontAppStateController.redownloadBuyParams(forApp:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v32 - v6);
  v32 = *a1;
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_13:
    v19 = *(v13 + 16);
    if (!v19)
    {

      v21 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_29;
      }

LABEL_27:
      v30 = *(v21 + 4);
      v31 = *(v21 + 5);

LABEL_30:

      return v30;
    }

    v20 = v13 + 32;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2225D6718(v20, &v34);
      v22 = v35;
      v23 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      *&v33[0] = v32;
      (*(v23 + 48))(v33, v22, v23);
      v24 = type metadata accessor for State();
      if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
      {
        sub_2225E22D4(v7, &qword_27D010A38, qword_22261E810);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v25 = *v7;
          v26 = v7[1];
          __swift_destroy_boxed_opaque_existential_1(&v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2225D7880(0, *(v21 + 2) + 1, 1, v21);
          }

          v28 = *(v21 + 2);
          v27 = *(v21 + 3);
          if (v28 >= v27 >> 1)
          {
            v21 = sub_2225D7880((v27 > 1), v28 + 1, 1, v21);
          }

          *(v21 + 2) = v28 + 1;
          v29 = &v21[16 * v28];
          *(v29 + 4) = v25;
          *(v29 + 5) = v26;
          goto LABEL_17;
        }

        sub_222617F20(v7, type metadata accessor for State);
      }

      __swift_destroy_boxed_opaque_existential_1(&v34);
LABEL_17:
      v20 += 40;
      if (!--v19)
      {

        if (*(v21 + 2))
        {
          goto LABEL_27;
        }

LABEL_29:
        v30 = 0;
        goto LABEL_30;
      }
    }
  }

  v10 = 0;
  v11 = *(a1 + 8);
  v12 = v8 + 32;
  v13 = MEMORY[0x277D84F90];
  while (v10 < *(v8 + 16))
  {
    sub_2225D6718(v12, &v34);
    v14 = v35;
    v15 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    *&v33[0] = v32;
    BYTE8(v33[0]) = v11;
    if ((*(v15 + 56))(v33, v14, v15))
    {
      sub_2225D2F1C(&v34, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222614A78(0, *(v13 + 16) + 1, 1);
        v13 = v37;
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222614A78((v17 > 1), v18 + 1, 1);
        v13 = v37;
      }

      *(v13 + 16) = v18 + 1;
      result = sub_2225D2F1C(v33, v13 + 40 * v18 + 32);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v34);
    }

    ++v10;
    v12 += 40;
    if (v9 == v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t StorefrontAppStateController.purchaseHistoryIncludes(app:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v32 = *a1;
  v10 = *(v1 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = v10 + 32;
    v15 = MEMORY[0x277D84F90];
    while (v12 < *(v10 + 16))
    {
      sub_2225D6718(v14, &v34);
      v16 = v35;
      v17 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      *&v33[0] = v32;
      BYTE8(v33[0]) = v13;
      if ((*(v17 + 56))(v33, v16, v17))
      {
        sub_2225D2F1C(&v34, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, *(v15 + 16) + 1, 1);
          v15 = v37;
        }

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_222614A78((v19 > 1), v20 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v20 + 1;
        result = sub_2225D2F1C(v33, v15 + 40 * v20 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      ++v12;
      v14 += 40;
      if (v11 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:
    v21 = *(v15 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = v15 + 32;
      do
      {
        if (v22 >= *(v15 + 16))
        {
          goto LABEL_27;
        }

        sub_2225D6718(v23, &v34);
        v24 = v35;
        v25 = v36;
        __swift_project_boxed_opaque_existential_1(&v34, v35);
        *&v33[0] = v32;
        v26 = v24;
        v27 = v31;
        (*(v25 + 48))(v33, v26, v25);
        v28 = type metadata accessor for State();
        if ((*(*(v28 - 8) + 48))(v9, 1, v28) != 1)
        {
          sub_2225DE5AC(v9, v27, &qword_27D010A38, qword_22261E810);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            if ((*v27 & 1) == 0)
            {

              goto LABEL_25;
            }
          }

          else
          {
            if (EnumCaseMultiPayload == 3)
            {

              sub_222617F20(v27, type metadata accessor for State);
LABEL_25:
              sub_2225E22D4(v9, &qword_27D010A38, qword_22261E810);
              __swift_destroy_boxed_opaque_existential_1(&v34);
              return 1;
            }

            sub_222617F20(v27, type metadata accessor for State);
          }
        }

        ++v22;
        sub_2225E22D4(v9, &qword_27D010A38, qword_22261E810);
        result = __swift_destroy_boxed_opaque_existential_1(&v34);
        v23 += 40;
      }

      while (v21 != v22);
    }

    return 0;
  }

  return result;
}

BOOL StorefrontAppStateController.setRemoteInstalled(forApp:)(uint64_t (*a1)())
{
  v2 = v1;
  v3 = type metadata accessor for State();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v38[-v13];
  v15 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v17 = swift_storeEnumTagMultiPayload();
  if (qword_280D9F098 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v51[0] = xmmword_280D9F0A0;
    v51[1] = *&byte_280D9F0B0;
    v51[2] = unk_280D9F0C0;
    v52 = qword_280D9F0D0;
    v18 = *(v2 + 192);
    v19 = MEMORY[0x28223BE20](v17);
    *&v38[-48] = v51;
    *&v38[-40] = v2;
    *&v38[-32] = v15;
    v45 = a1;
    v38[-24] = a1;
    *&v38[-16] = v12;
    MEMORY[0x28223BE20](v19);
    *&v38[-16] = sub_222618818;
    *&v38[-8] = v20;
    os_unfair_lock_lock(v18 + 4);
    sub_2225F7954(v21);
    v43 = v18;
    os_unfair_lock_unlock(v18 + 4);
    a1 = type metadata accessor for State;
    sub_222617F20(v12, type metadata accessor for State);
    swift_storeEnumTagMultiPayload();
    v22 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v14, v9);
    sub_222617F20(v9, type metadata accessor for State);
    sub_222617F20(v14, type metadata accessor for State);
    if (v22)
    {
      return (v22 & 1) == 0;
    }

    v39 = v22;
    v40 = 0;
    v41 = v3;
    v42 = v2;
    v12 = *(v2 + 16);
    v23 = *(v12 + 2);
    if (!v23)
    {
      v9 = MEMORY[0x277D84F90];
LABEL_15:
      v28 = (v9 + 32);
      v2 = -*(v9 + 2);
      v29 = -1;
      do
      {
        if (v2 + v29 == -1)
        {
          break;
        }

        if (++v29 >= *(v9 + 2))
        {
          goto LABEL_22;
        }

        v30 = v28 + 40;
        sub_2225D6718(v28, &v47);
        v14 = v48;
        v31 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, v48);
        *&v46[0] = v15;
        LODWORD(a1) = (*(v31 + 80))(v46, v14, v31);
        __swift_destroy_boxed_opaque_existential_1(&v47);
        v28 = v30;
      }

      while ((a1 & 1) == 0);

      v32 = v44;
      v33 = swift_storeEnumTagMultiPayload();
      v34 = MEMORY[0x28223BE20](v33);
      *&v38[-32] = v42;
      *&v38[-24] = v15;
      v38[-16] = v45;
      *&v38[-8] = v32;
      MEMORY[0x28223BE20](v34);
      *&v38[-16] = sub_222618848;
      *&v38[-8] = v35;
      v36 = v43;
      os_unfair_lock_lock(v43 + 4);
      sub_2226187B8(&v47);
      os_unfair_lock_unlock(v36 + 4);
      sub_222617F20(v32, type metadata accessor for State);
      LOBYTE(v22) = v39;
      return (v22 & 1) == 0;
    }

    v24 = 0;
    v14 = v12 + 32;
    v9 = MEMORY[0x277D84F90];
    v2 = 40;
    while (v24 < *(v12 + 2))
    {
      sub_2225D6718(v14, &v47);
      v25 = v48;
      v3 = v49;
      LODWORD(a1) = __swift_project_boxed_opaque_existential_1(&v47, v48);
      *&v46[0] = v15;
      BYTE8(v46[0]) = v45;
      if ((*(v3 + 56))(v46, v25, v3))
      {
        sub_2225D2F1C(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a1 = v50;
          sub_222614A78(0, *(v9 + 2) + 1, 1);
          v9 = v50[0];
        }

        v3 = *(v9 + 2);
        v27 = *(v9 + 3);
        if (v3 >= v27 >> 1)
        {
          a1 = v50;
          sub_222614A78((v27 > 1), v3 + 1, 1);
          v9 = v50[0];
        }

        *(v9 + 2) = v3 + 1;
        sub_2225D2F1C(v46, &v9[40 * v3 + 32]);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v47);
      }

      ++v24;
      v14 += 40;
      if (v23 == v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v17 = swift_once();
  }
}

BOOL StorefrontAppStateController.setRemoteInstalled(forApp:)(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return StorefrontAppStateController.setRemoteInstalled(forApp:)(&v3);
}

uint64_t StorefrontAppStateController.clearRemoteInstalled(forApp:refreshState:)(uint64_t result, char a2)
{
  v3 = *result;
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 8);
    v8 = v4 + 32;
    v9 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_2225D6718(v8, &v21);
      v10 = v22;
      v11 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      *&v20[0] = v3;
      BYTE8(v20[0]) = v7;
      if ((*(v11 + 56))(v20, v10, v11))
      {
        sub_2225D2F1C(&v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222614A78(0, *(v9 + 16) + 1, 1);
          v9 = v24;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_222614A78((v13 > 1), v14 + 1, 1);
          v9 = v24;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_2225D2F1C(v20, v9 + 40 * v14 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      ++v6;
      v8 += 40;
      if (v5 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_13:
    v15 = *(v9 + 16);
    if (v15)
    {
      v16 = v9 + 32;
      do
      {
        sub_2225D6718(v16, &v21);
        v17 = v22;
        v18 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, v22);
        *&v20[0] = v3;
        (*(v18 + 88))(v20, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v21);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    if (a2)
    {
      sub_22260DEE8(v3);
    }

    return 1;
  }

  return result;
}

uint64_t sub_222610328(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a4;
  v4[27] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010940, &qword_22261ECF0);
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D50, &qword_22261ECF8);
  v4[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v10 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222610490, 0, 0);
}

uint64_t sub_222610490()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v25 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v4 = *(sub_22261AF30() - 8);
  *(v0 + 288) = *(v4 + 72);
  *(v0 + 328) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 136) = v2;
  *(v0 + 160) = v3;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 136, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AEB0();
  sub_22261B050();

  type metadata accessor for StorefrontAppStateController.DataSourceLoadObserver();
  v5 = swift_allocObject();
  *(v0 + 296) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D58, &qword_22261ED00);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84FA0];
  *(v6 + 24) = 0;
  *(v6 + 16) = v7;
  *(v5 + 16) = v6;
  v8 = v2[2];
  *(v0 + 304) = v8;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v23 = *(v0 + 232);
    v24 = (v0 + 16);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v0 + 248);
      sub_2225D6718(v10, v24);
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1(v24, v14);
      (*(v13 + 16))(v14, v13);
      __swift_destroy_boxed_opaque_existential_1(v24);
      *(v0 + 200) = v5;
      sub_222618704(&qword_280D9FB48, type metadata accessor for StorefrontAppStateController.DataSourceLoadObserver);
      sub_22261B160();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2225D7B64(0, v11[2] + 1, 1, v11);
      }

      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        v11 = sub_2225D7B64(v15 > 1, v16 + 1, 1, v11);
      }

      v17 = *(v0 + 248);
      v18 = *(v0 + 224);

      v11[2] = v16 + 1;
      (*(v23 + 32))(v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16, v17, v18);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v11;
  v19 = *(*(v0 + 208) + 144);
  v20 = swift_task_alloc();
  *(v0 + 320) = v20;
  *v20 = v0;
  v20[1] = sub_2226108C8;
  v21 = *(v0 + 208);

  return sub_22260A044(&unk_22261ED08, 0, v19);
}

uint64_t sub_2226108C8()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2226109C4, 0, 0);
}

void sub_2226109C4()
{
  v1 = *(v0 + 304);
  v37 = *(v1 + 16);
  if (v37)
  {
    v2 = 0;
    v33 = *(v0 + 208);
    v35 = *(v0 + 312);
    v30 = *(v0 + 256);
    v32 = *(v0 + 264);
    v3 = v1 + 32;
    v29 = *(v0 + 232);
    while (v2 < *(*(v0 + 304) + 16))
    {
      sub_2225D6718(v3, v0 + 56);
      v4 = *(v35 + 16);
      if (v2 == v4)
      {
        v16 = *(v0 + 312);

        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_9;
      }

      if (v2 >= v4)
      {
        goto LABEL_13;
      }

      v5 = *(v0 + 264);
      v6 = *(v0 + 240);
      v7 = *(v0 + 224);
      v41 = *(v0 + 216);
      v43 = v2 + 1;
      v39 = *(v0 + 208);
      v8 = *(v0 + 312) + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v2;
      v9 = *(v30 + 48);
      sub_2225D2F1C((v0 + 56), v5);
      (*(v29 + 16))(v5 + v9, v8, v7);
      v10 = *(v32 + 24);
      v11 = *(v32 + 32);
      __swift_project_boxed_opaque_existential_1(v5, v10);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v5);
      sub_22261B170();
      v12 = *(v29 + 8);
      v12(v5 + v9, v7);
      v13 = *(v33 + 200);
      *(v0 + 120) = sub_2225D83D0(0, &qword_280D9F280, 0x277D85C78);
      *(v0 + 128) = MEMORY[0x277D225C0];
      *(v0 + 96) = v13;
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
      sub_2225EDEF8(&qword_280D9F2A8, &qword_27D0109E8, &unk_22261D290);
      sub_22261AF50();

      v12(v6, v7);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v3 += 40;
      v2 = v43;
      if (v37 == v43)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_7:
    v15 = *(v0 + 312);

LABEL_9:
    v17 = *(v0 + 208);
    v18 = *(*(v0 + 296) + 16);

    os_unfair_lock_lock((v18 + 24));
    v19 = *(v18 + 16);

    os_unfair_lock_unlock((v18 + 24));

    sub_2226113B4(v19);

    v20 = *(v17 + 192);
    v21 = swift_task_alloc();
    *(v21 + 16) = v17;
    *(v21 + 24) = 1;
    v22 = swift_task_alloc();
    *(v22 + 16) = sub_2226187A0;
    *(v22 + 24) = v21;
    os_unfair_lock_lock(v20 + 4);
    sub_222618894(v23);
    v36 = *(v0 + 288);
    v38 = *(v0 + 296);
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v40 = *(v0 + 264);
    v42 = *(v0 + 248);
    v44 = *(v0 + 240);
    v26 = *(v0 + 208);
    v31 = *(v0 + 216);
    v27 = (*(v0 + 328) + 32) & ~*(v0 + 328);
    os_unfair_lock_unlock(v20 + 4);

    v34 = v26[23];
    __swift_project_boxed_opaque_existential_1(v26 + 19, v26[22]);
    *(swift_allocObject() + 16) = xmmword_22261D5B0;
    sub_22261AF00();
    sub_22261AEF0();
    *(v0 + 192) = v31;
    *(v0 + 168) = v26;

    sub_22261AEC0();
    sub_2225E22D4(v0 + 168, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261AEB0();
    sub_22261B050();

    v28 = *(v0 + 8);

    v28();
  }
}

uint64_t sub_222610EDC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_22261879C;

  return v8(v2, v3);
}

uint64_t sub_222611000(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v21 = sub_22261AE30();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22261AF10();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = a1;
  v11 = v1[22];
  v20 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v12 = *(sub_22261AF30() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v28 = v4;
  v27[0] = v1;

  sub_22261AEC0();
  sub_2225E22D4(v27, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v28 = MEMORY[0x277D83B88];
  v27[0] = 1;
  sub_22261AEC0();
  sub_2225E22D4(v27, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B060();

  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v15 = sub_22261B440();
  sub_22261AE10();

  v16 = v2[24];
  v25 = v2;
  v26 = &v29;
  v22 = sub_222617EC0;
  v23 = &v24;
  os_unfair_lock_lock(v16 + 4);
  sub_222618894(v17);
  os_unfair_lock_unlock(v16 + 4);
  sub_22261B3F0();
  v18 = sub_22261B440();
  sub_22261AE10();

  return (*(v5 + 8))(v8, v21);
}

uint64_t sub_2226113B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22261AE30();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22261AF10();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = a1;
  v11 = v1[22];
  v21[1] = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v12 = *(sub_22261AF30() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v30 = v4;
  v29[0] = v1;

  sub_22261AEC0();
  sub_2225E22D4(v29, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v15 = *(a1 + 16);
  v30 = MEMORY[0x277D83B88];
  v29[0] = v15;
  sub_22261AEC0();
  sub_2225E22D4(v29, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B060();

  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v16 = sub_22261B440();
  sub_22261AE10();

  v17 = v2[24];
  v27 = v2;
  v28 = &v31;
  v24 = sub_22261874C;
  v25 = &v26;
  os_unfair_lock_lock(v17 + 4);
  sub_222618894(v18);
  os_unfair_lock_unlock(v17 + 4);
  sub_22261B3F0();
  v19 = sub_22261B440();
  sub_22261AE10();

  return (*(v22 + 8))(v8, v23);
}

uint64_t (*sub_222611764(uint64_t a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_22261876C;
  *(v2 + 24) = a1;

  return sub_222618770;
}

uint64_t sub_2226117DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_222611804, 0, 0);
}

uint64_t sub_222611804()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x277D858E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2226118FC;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_22261ECB8, v2, v9);
}

uint64_t sub_2226118FC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_222611A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222611AC0, 0, 0);
}

uint64_t sub_222611AC0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v32 = **(v0 + 152);
    v3 = v1 + 32;
    v31 = sub_22261B310();
    v4 = *(v31 - 8);
    v30 = *(v4 + 56);
    v29 = (v4 + 48);
    v28 = (v4 + 8);
    v5 = &qword_27D010AC8;
    v6 = &qword_22261DCC0;
    do
    {
      v35 = v2;
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = *(v0 + 184);
      v33 = *(v0 + 192);
      v12 = v6;
      v13 = v5;
      v14 = *(v0 + 168);
      v15 = *(v0 + 176);
      v30(v9, 1, 1, v31);
      v34 = v3;
      sub_2225D6718(v3, v0 + 16);
      sub_2225D6718(v11, v0 + 56);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v14;
      v5 = v13;
      v6 = v12;
      v16[5] = v15;
      sub_2225D2F1C((v0 + 16), (v16 + 6));
      sub_2225D2F1C((v0 + 56), (v16 + 11));
      v16[16] = v33;
      sub_2225DE5AC(v9, v10, v5, v12);
      LODWORD(v9) = (*v29)(v10, 1, v31);

      v18 = *(v0 + 200);
      if (v9 == 1)
      {
        sub_2225E22D4(*(v0 + 200), v5, v6);
        if (*v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22261B300();
        (*v28)(v18, v31);
        if (*v17)
        {
LABEL_9:
          v21 = v16[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_22261B2C0();
          v20 = v22;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_10:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_22261ECD0;
      *(v23 + 24) = v16;

      if (v20 | v19)
      {
        v7 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v19;
        *(v0 + 120) = v20;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 208);
      *(v0 + 128) = 1;
      *(v0 + 136) = v7;
      *(v0 + 144) = v32;
      swift_task_create();

      sub_2225E22D4(v8, v5, v6);
      v3 = v34 + 40;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  v25 = *(v0 + 200);
  v24 = *(v0 + 208);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_222611E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[18] = a6;
  v8[21] = *a8;
  v11 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v8[24] = v13;
  *v13 = v8;
  v13[1] = sub_222611F7C;

  return v15(a6);
}

uint64_t sub_222611F7C()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2226120C0, 0, 0);
  }

  else
  {
    v5 = v3[22];
    v4 = v3[23];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2226120C0()
{
  v1 = v0;
  v21 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[18];
  v22 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(sub_22261AF30() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v4;
  v1[2] = v6;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v11 = v7[3];
  v12 = __swift_project_boxed_opaque_existential_1(v7, v11);
  v1[9] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v14 = v1[14];
  v15 = v1[15];
  v1[13] = v15;
  v16 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v18 = v1[22];
  v17 = v1[23];

  v19 = v1[1];

  return v19();
}

void sub_2226123D8(void *a1, uint64_t a2)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D18, &unk_22261EC10);
  v5 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v107 = (&v103 - v6);
  v106 = type metadata accessor for AppStateMachine.StateChange();
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C80, &unk_22261E320);
  v9 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v118 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v103 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v103 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v121 = &v103 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v103 - v23;
  v129 = type metadata accessor for State();
  v25 = *(v129 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v129);
  v119 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v103 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v111 = &v103 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v104 = &v103 - v34;
  MEMORY[0x28223BE20](v33);
  v127 = &v103 - v35;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D20, &qword_22261EC20);
  v36 = (a1 + 4);
  sub_22261B1A0();
  swift_endAccess();
  v37 = 0;
  v38 = 0;
  v39 = a1[2];
  v128 = *(v39 + 16);
  v126 = v39;
  v116 = v39 + 32;
  v40 = (v25 + 48);
  v125 = v25;
  v113 = v25 + 56;
  v130 = a2;
  v124 = a1;
  v109 = v17;
  v117 = v20;
  while (1)
  {
    v123 = v37;
    v131 = *(&unk_2835C0DD8 + v38 + 32);
    if (v128)
    {
      break;
    }

    v43 = MEMORY[0x277D84F90];
LABEL_16:
    v48 = *(v43 + 16);
    if (v48)
    {
      v49 = v43 + 32;
      v50 = MEMORY[0x277D84F90];
      do
      {
        sub_2225D6718(v49, &v132);
        v51 = v134;
        v52 = v135;
        __swift_project_boxed_opaque_existential_1(&v132, v134);
        *&v138 = v130;
        (*(v52 + 48))(&v138, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v132);
        if ((*v40)(v24, 1, v129) == 1)
        {
          sub_2225E22D4(v24, &qword_27D010A38, qword_22261E810);
        }

        else
        {
          sub_2225DDDD0(v24, v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_2225D798C(0, v50[2] + 1, 1, v50);
          }

          v54 = v50[2];
          v53 = v50[3];
          if (v54 >= v53 >> 1)
          {
            v50 = sub_2225D798C(v53 > 1, v54 + 1, 1, v50);
          }

          v50[2] = v54 + 1;
          sub_2225DDDD0(v127, v50 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v54);
        }

        v49 += 40;
        --v48;
      }

      while (v48);

      a2 = v130;
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    v55 = v124;
    v56 = v121;
    if (v50[2] == 1)
    {
      v57 = v125;
      sub_2225D8D00(v50 + ((*(v125 + 80) + 32) & ~*(v125 + 80)), v121);
      v58 = *(v57 + 56);
      v59 = v129;
      v58(v56, 0, 1, v129);
      v60 = v117;
      swift_storeEnumTagMultiPayload();
      v58(v60, 0, 1, v59);
      v61 = *(v115 + 48);
      v62 = v114;
      sub_2225DE5AC(v56, v114, &qword_27D010A38, qword_22261E810);
      v122 = v61;
      sub_2225DE5AC(v60, v62 + v61, &qword_27D010A38, qword_22261E810);
      v63 = *(v125 + 48);
      if (v63(v62, 1, v59) == 1)
      {
        sub_2225E22D4(v60, &qword_27D010A38, qword_22261E810);
        sub_2225E22D4(v121, &qword_27D010A38, qword_22261E810);
        v64 = v63(v62 + v122, 1, v59);
        a2 = v130;
        if (v64 == 1)
        {
          sub_2225E22D4(v62, &qword_27D010A38, qword_22261E810);
LABEL_46:

          *&v132 = a2;
          v86 = sub_22260D154(&v132);
          v87 = v111;
          v88 = swift_storeEnumTagMultiPayload();
          v110 = &v103;
          v2 = v86[4];
          MEMORY[0x28223BE20](v88);
          v36 = (&v103 - 4);
          v89 = v131;
          *(&v103 - 16) = v131;
          *(&v103 - 1) = v87;

          os_unfair_lock_lock((v2 + 24));
          v90 = v120;
          sub_222617F00(v2 + 16);
          v122 = v90;
          if (v90)
          {
            goto LABEL_54;
          }

          os_unfair_lock_unlock((v2 + 24));

          v92 = v86[2];
          v91 = v86[3];
          v93 = *(v106 + 24);
          v94 = v105;
          swift_storeEnumTagMultiPayload();
          *v94 = v92;
          *(v94 + 8) = v89;
          sub_22261AE90();
          sub_222617F20(v94, type metadata accessor for AppStateMachine.StateChange);
          sub_222617F20(v111, type metadata accessor for State);
          v36 = v86[4];

          os_unfair_lock_lock((v36 + 24));
          v95 = v122;
          sub_2225E3320((v36 + 16), v89, v112);
          v120 = v95;
          if (v95)
          {
            goto LABEL_55;
          }

          v96 = v89;
          v2 = v86;
          os_unfair_lock_unlock((v36 + 24));

          v97 = v124;
          v98 = v124[17];
          *&v132 = a2;
          BYTE8(v132) = v89;
          v36 = v98;
          v99 = [v36 containsObject_];

          swift_unknownObjectRelease();
          if (v99)
          {
            v36 = v97[28];
            v100 = *(v108 + 48);
            v101 = v107;
            *v107 = a2;
            *(v101 + 8) = v96;
            v102 = v112;
            sub_2225D8D00(v112, v101 + v100);
            sub_22261AE90();

            sub_2225E22D4(v101, &qword_27D010D18, &unk_22261EC10);
            sub_222617F20(v102, type metadata accessor for State);
          }

          else
          {
            sub_222617F20(v112, type metadata accessor for State);
          }

          goto LABEL_3;
        }

        goto LABEL_34;
      }

      v65 = v109;
      sub_2225DE5AC(v62, v109, &qword_27D010A38, qword_22261E810);
      if (v63(v62 + v122, 1, v59) == 1)
      {
        sub_2225E22D4(v117, &qword_27D010A38, qword_22261E810);
        sub_2225E22D4(v121, &qword_27D010A38, qword_22261E810);
        sub_222617F20(v65, type metadata accessor for State);
        a2 = v130;
LABEL_34:
        sub_2225E22D4(v62, &qword_27D010C80, &unk_22261E320);
        v55 = v124;
        goto LABEL_35;
      }

      v85 = v104;
      sub_2225DDDD0(v62 + v122, v104);
      LODWORD(v122) = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v65, v85);
      sub_222617F20(v85, type metadata accessor for State);
      sub_2225E22D4(v117, &qword_27D010A38, qword_22261E810);
      sub_2225E22D4(v121, &qword_27D010A38, qword_22261E810);
      sub_222617F20(v65, type metadata accessor for State);
      sub_2225E22D4(v62, &qword_27D010A38, qword_22261E810);
      v55 = v124;
      a2 = v130;
      if (v122)
      {
        goto LABEL_46;
      }
    }

LABEL_35:
    swift_beginAccess();
    v66 = v55[16];
    if (*(v66 + 16) && (v67 = sub_2225F16BC(a2, v131), (v68 & 1) != 0))
    {
      v69 = *(v66 + 56) + 56 * v67;
      v70 = *(v69 + 8);
      v122 = *v69;
      v2 = *(v69 + 16);
      v72 = *(v69 + 24);
      v71 = *(v69 + 32);
      v73 = *(v69 + 40);
      v74 = *(v69 + 48);
    }

    else
    {
      v122 = 0;
      v70 = 0;
      v2 = 0;
      v72 = 0;
      v71 = 0;
      v73 = 0;
      v74 = 0;
    }

    swift_endAccess();
    *&v132 = v122;
    *(&v132 + 1) = v70;
    v133 = v2;
    v134 = v72;
    v135 = v71;
    v136 = v73;
    v137 = v74;
    v75 = v118;
    v36 = v124;
    sub_22260CD30(v50, &v132, v118);

    sub_22261773C(v132, *(&v132 + 1), v133, v134, v135);
    if ((*v40)(v75, 1, v129) == 1)
    {
      sub_2225E22D4(v75, &qword_27D010A38, qword_22261E810);
      a2 = v130;
    }

    else
    {
      v76 = v119;
      sub_2225DDDD0(v75, v119);
      a2 = v130;
      *&v132 = v130;
      v77 = sub_22260D154(&v132);
      v43 = v77[4];
      v78 = MEMORY[0x28223BE20](v77);
      v36 = (&v103 - 6);
      *(&v103 - 32) = v131;
      *(&v103 - 3) = v76;
      *(&v103 - 2) = v78;

      os_unfair_lock_lock((v43 + 24));
      v79 = v120;
      sub_222617EE0((v43 + 16), &v132);
      v120 = v79;
      if (v79)
      {
        goto LABEL_53;
      }

      os_unfair_lock_unlock((v43 + 24));

      v36 = v132;

      v80 = v124;
      if (v36)
      {
        v81 = v124[17];
        *&v132 = a2;
        BYTE8(v132) = v131;
        v36 = v81;
        v82 = [v36 containsObject_];

        swift_unknownObjectRelease();
        if (v82)
        {
          v36 = v80[28];
          v83 = *(v108 + 48);
          v84 = v107;
          *v107 = a2;
          *(v84 + 8) = v131;
          sub_2225D8D00(v119, v84 + v83);
          sub_22261AE90();
          sub_2225E22D4(v84, &qword_27D010D18, &unk_22261EC10);
        }
      }

      sub_222617F20(v119, type metadata accessor for State);
    }

LABEL_3:
    v37 = 1;
    v38 = 1u;
    if (v123)
    {
      return;
    }
  }

  v41 = 0;
  v42 = v116;
  v43 = MEMORY[0x277D84F90];
  while (v41 < *(v126 + 16))
  {
    sub_2225D6718(v42, &v132);
    v2 = v134;
    v44 = v135;
    v36 = __swift_project_boxed_opaque_existential_1(&v132, v134);
    *&v138 = a2;
    BYTE8(v138) = v131;
    if ((*(v44 + 56))(&v138, v2, v44))
    {
      sub_2225D2F1C(&v132, &v138);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = &v139;
        sub_222614A78(0, *(v43 + 16) + 1, 1);
        v43 = v139;
      }

      v47 = *(v43 + 16);
      v46 = *(v43 + 24);
      v2 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v36 = &v139;
        sub_222614A78((v46 > 1), v47 + 1, 1);
        v43 = v139;
      }

      *(v43 + 16) = v2;
      sub_2225D2F1C(&v138, v43 + 40 * v47 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v132);
    }

    ++v41;
    v42 += 40;
    if (v128 == v41)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_53:
  os_unfair_lock_unlock((v43 + 24));
  __break(1u);
LABEL_54:
  os_unfair_lock_unlock((v2 + 24));
  __break(1u);
LABEL_55:
  os_unfair_lock_unlock((v36 + 24));
  __break(1u);
}

void sub_2226132CC(void *a1, uint64_t a2)
{
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D18, &unk_22261EC10);
  v4 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v116 = (&v110 - v5);
  v120 = type metadata accessor for AppStateMachine.StateChange();
  v6 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C80, &unk_22261E320);
  v8 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v131 = &v110 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v121 = &v110 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v110 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v130 = &v110 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - v22;
  v141 = type metadata accessor for State();
  v24 = *(v141 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v141);
  v125 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v110 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v122 = &v110 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v118 = &v110 - v33;
  MEMORY[0x28223BE20](v32);
  v138 = &v110 - v34;
  v35 = *(a2 + 16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D20, &qword_22261EC20);
  v36 = a1 + 4;
  sub_22261B1A0();
  swift_endAccess();
  v37 = *(a2 + 56);
  v113 = a2 + 56;
  v38 = 1 << *(a2 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v112 = (v38 + 63) >> 6;
  v140 = (v24 + 48);
  v135 = v24;
  v126 = v24 + 56;
  v111 = a2;

  v41 = 0;
  v136 = v19;
  v134 = a1;
  v129 = v14;
LABEL_5:
  if (v40)
  {
    v42 = v41;
  }

  else
  {
    do
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_62:
        os_unfair_lock_unlock(a1 + 6);
        __break(1u);
LABEL_63:
        os_unfair_lock_unlock(v36 + 6);
        __break(1u);
        return;
      }

      if (v42 >= v112)
      {
        goto LABEL_60;
      }

      v40 = *(v113 + 8 * v42);
      ++v41;
    }

    while (!v40);
  }

  v43 = 0;
  v44 = 0;
  v115 = (v40 - 1) & v40;
  v45 = *(v111 + 48);
  v114 = v42;
  v46 = *(v45 + ((v42 << 9) | (8 * __clz(__rbit64(v40)))));
  v47 = a1[2];
  v139 = *(v47 + 16);
  v137 = v47;
  v128 = v47 + 32;
  while (1)
  {
    v133 = v43;
    v142 = *(&unk_2835C0DD8 + v44 + 32);
    if (v139)
    {
      break;
    }

    v51 = MEMORY[0x277D84F90];
LABEL_26:
    v57 = *(v51 + 16);
    if (v57)
    {
      v58 = v51 + 32;
      v59 = MEMORY[0x277D84F90];
      do
      {
        sub_2225D6718(v58, &v143);
        v61 = v145;
        v60 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        *&v149 = v46;
        (*(v60 + 48))(&v149, v61, v60);
        __swift_destroy_boxed_opaque_existential_1(&v143);
        if ((*v140)(v23, 1, v141) == 1)
        {
          sub_2225E22D4(v23, &qword_27D010A38, qword_22261E810);
        }

        else
        {
          sub_2225DDDD0(v23, v138);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_2225D798C(0, v59[2] + 1, 1, v59);
          }

          v63 = v59[2];
          v62 = v59[3];
          if (v63 >= v62 >> 1)
          {
            v59 = sub_2225D798C(v62 > 1, v63 + 1, 1, v59);
          }

          v59[2] = v63 + 1;
          sub_2225DDDD0(v138, v59 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v63);
        }

        v58 += 40;
        --v57;
      }

      while (v57);

      v19 = v136;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    v64 = v134;
    v65 = v131;
    v66 = v130;
    if (v59[2] != 1)
    {
      goto LABEL_46;
    }

    v67 = v135;
    sub_2225D8D00(v59 + ((*(v135 + 80) + 32) & ~*(v135 + 80)), v130);
    v68 = *(v67 + 56);
    v69 = v141;
    v68(v66, 0, 1, v141);
    swift_storeEnumTagMultiPayload();
    v68(v19, 0, 1, v69);
    v70 = v66;
    v71 = *(v127 + 48);
    sub_2225DE5AC(v70, v65, &qword_27D010A38, qword_22261E810);
    v132 = v71;
    sub_2225DE5AC(v19, v65 + v71, &qword_27D010A38, qword_22261E810);
    v72 = *(v135 + 48);
    if (v72(v65, 1, v69) == 1)
    {
      sub_2225E22D4(v19, &qword_27D010A38, qword_22261E810);
      sub_2225E22D4(v130, &qword_27D010A38, qword_22261E810);
      v73 = v131;
      v74 = v72(v131 + v132, 1, v69) == 1;
      v64 = v134;
      v75 = v73;
      if (v74)
      {
        sub_2225E22D4(v73, &qword_27D010A38, qword_22261E810);
LABEL_53:

        *&v143 = v46;
        v92 = sub_22260D154(&v143);
        v93 = v122;
        v94 = swift_storeEnumTagMultiPayload();
        a1 = v92[4];
        MEMORY[0x28223BE20](v94);
        v36 = &v110 - 4;
        v95 = v142;
        *(&v110 - 16) = v142;
        *(&v110 - 1) = v93;

        os_unfair_lock_lock(a1 + 6);
        v96 = v124;
        sub_2226187E8((a1 + 2));
        v132 = v96;
        if (v96)
        {
          goto LABEL_62;
        }

        os_unfair_lock_unlock(a1 + 6);

        v98 = v92[2];
        v97 = v92[3];
        v99 = *(v120 + 24);
        v100 = v119;
        swift_storeEnumTagMultiPayload();
        *v100 = v98;
        *(v100 + 8) = v95;
        sub_22261AE90();
        sub_222617F20(v100, type metadata accessor for AppStateMachine.StateChange);
        sub_222617F20(v122, type metadata accessor for State);
        v36 = v92[4];

        os_unfair_lock_lock(v36 + 6);
        v101 = v132;
        sub_2225E3320(v36 + 2, v95, v123);
        v124 = v101;
        if (v101)
        {
          goto LABEL_63;
        }

        v102 = v95;
        os_unfair_lock_unlock(v36 + 6);

        a1 = v134;
        v103 = v134[17];
        *&v143 = v46;
        BYTE8(v143) = v95;
        v36 = v103;
        v104 = [v36 containsObject_];

        swift_unknownObjectRelease();
        v48 = v133;
        if (v104)
        {
          v36 = a1[28];
          v105 = *(v117 + 48);
          v106 = v102;
          v107 = v116;
          *v116 = v46;
          *(v107 + 8) = v106;
          v108 = v123;
          sub_2225D8D00(v123, v107 + v105);
          sub_22261AE90();

          sub_2225E22D4(v107, &qword_27D010D18, &unk_22261EC10);
          v109 = v108;
        }

        else
        {

          v109 = v123;
        }

        sub_222617F20(v109, type metadata accessor for State);
        v19 = v136;
        goto LABEL_13;
      }

      goto LABEL_45;
    }

    v76 = v131;
    v77 = v121;
    sub_2225DE5AC(v131, v121, &qword_27D010A38, qword_22261E810);
    if (v72(v76 + v132, 1, v69) == 1)
    {
      sub_2225E22D4(v136, &qword_27D010A38, qword_22261E810);
      sub_2225E22D4(v130, &qword_27D010A38, qword_22261E810);
      sub_222617F20(v77, type metadata accessor for State);
      v64 = v134;
      v75 = v76;
LABEL_45:
      sub_2225E22D4(v75, &qword_27D010C80, &unk_22261E320);
      goto LABEL_46;
    }

    v90 = v118;
    sub_2225DDDD0(v76 + v132, v118);
    v91 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v77, v90);
    sub_222617F20(v90, type metadata accessor for State);
    sub_2225E22D4(v136, &qword_27D010A38, qword_22261E810);
    sub_2225E22D4(v130, &qword_27D010A38, qword_22261E810);
    sub_222617F20(v77, type metadata accessor for State);
    sub_2225E22D4(v76, &qword_27D010A38, qword_22261E810);
    v64 = v134;
    if (v91)
    {
      goto LABEL_53;
    }

LABEL_46:
    swift_beginAccess();
    v78 = v64[16];
    if (*(v78 + 16) && (v79 = sub_2225F16BC(v46, v142), (v80 & 1) != 0))
    {
      v81 = *(v78 + 56) + 56 * v79;
      v82 = *(v81 + 8);
      v132 = *v81;
      v83 = *(v81 + 16);
      v85 = *(v81 + 24);
      v84 = *(v81 + 32);
      v86 = *(v81 + 40);
      v87 = *(v81 + 48);
    }

    else
    {
      v132 = 0;
      v82 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v86 = 0;
      v87 = 0;
    }

    swift_endAccess();
    *&v143 = v132;
    *(&v143 + 1) = v82;
    v144 = v83;
    v145 = v85;
    v146 = v84;
    v147 = v86;
    v148 = v87;
    v88 = v129;
    a1 = v134;
    v36 = v134;
    sub_22260CD30(v59, &v143, v129);

    sub_22261773C(v143, *(&v143 + 1), v144, v145, v146);
    if ((*v140)(v88, 1, v141) == 1)
    {
      sub_2225E22D4(v88, &qword_27D010A38, qword_22261E810);
    }

    else
    {
      v89 = v125;
      sub_2225DDDD0(v88, v125);
      *&v143 = v46;
      BYTE8(v143) = v142;
      v36 = a1;
      sub_22260D3DC(&v143, v89);
      sub_222617F20(v89, type metadata accessor for State);
    }

    v19 = v136;
    v48 = v133;
LABEL_13:
    v43 = 1;
    v44 = 1u;
    if (v48)
    {
      v41 = v114;
      v40 = v115;
      goto LABEL_5;
    }
  }

  v49 = 0;
  v50 = v128;
  v51 = MEMORY[0x277D84F90];
  while (v49 < *(v137 + 16))
  {
    sub_2225D6718(v50, &v143);
    v52 = v145;
    v53 = v146;
    __swift_project_boxed_opaque_existential_1(&v143, v145);
    *&v149 = v46;
    BYTE8(v149) = v142;
    if ((*(v53 + 56))(&v149, v52, v53))
    {
      sub_2225D2F1C(&v143, &v149);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222614A78(0, *(v51 + 16) + 1, 1);
        v51 = v150;
      }

      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_222614A78((v55 > 1), v56 + 1, 1);
        v51 = v150;
      }

      *(v51 + 16) = v56 + 1;
      sub_2225D2F1C(&v149, v51 + 40 * v56 + 32);
      v19 = v136;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v143);
    }

    ++v49;
    v50 += 40;
    if (v139 == v49)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_60:
}

unint64_t sub_222614160(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  sub_222618640(a2);
  result = sub_222617A9C(v3);
  if (*(a1 + 24) == 1)
  {
    v5 = *(a1 + 216);
    return sub_22261AE90();
  }

  return result;
}

uint64_t sub_2226141BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  sub_222617E40(a4, v11);
  v8 = *(a1 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *(a1 + 128);
  *(a1 + 128) = 0x8000000000000000;
  sub_2225F9EBC(a4, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
  *(a1 + 128) = v11[0];
  return swift_endAccess();
}

uint64_t StorefrontAppStateController.deinit()
{
  v1 = *(v0 + 16);

  sub_222617A9C(*(v0 + 24));
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v4 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v5 = *(v0 + 192);

  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  return v0;
}

uint64_t StorefrontAppStateController.__deallocating_deinit()
{
  StorefrontAppStateController.deinit();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_22261431C()
{
  v1 = *(*v0 + 192);
  os_unfair_lock_lock(v1 + 4);
  sub_2226187B8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_222614394()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225E2E18;

  return StorefrontAppStateController.loadDataSources()();
}

uint64_t sub_222614424(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2E18;

  return StorefrontAppStateController.reloadAllStates(synchronizing:)(a1);
}

uint64_t sub_2226144BC(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225E2AA0;

  return StorefrontAppStateController.reloadState(forApps:synchronizing:)(a1, a2);
}

void sub_222614588(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = *(a3 + 6);
  v6 = *(*v3 + 192);
  os_unfair_lock_lock(v6 + 4);
  sub_2225F7954(v7);
  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_222614650(uint64_t *a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  v5 = *a1;
  v6 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v7);
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t sub_2226146D4(uint64_t *a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  v5 = *a1;
  v6 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v7);
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t sub_222614758(uint64_t *a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  v5 = *a1;
  v6 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 4);
  sub_2226187B8(&v7);
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

void sub_2226147D8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*v2 + 192);
  v5 = *v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  os_unfair_lock_lock(v3 + 4);
  sub_222618894(v4);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_22261487C(uint64_t a1, char a2)
{
  v3 = *v2;
  StorefrontAppStateController.clearWaiting(forApp:refreshState:)(a1, a2);
  return 1;
}

BOOL sub_2226148CC(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return StorefrontAppStateController.setRemoteInstalled(forApp:)(&v5);
}

uint64_t sub_22261490C(uint64_t a1, char a2)
{
  v3 = *v2;
  StorefrontAppStateController.clearRemoteInstalled(forApp:refreshState:)(a1, a2);
  return 1;
}

uint64_t sub_222614934(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225E2AA0;

  return StorefrontAppStateController.refreshUpdateRegistry(forApp:with:)(a1, a2);
}

void *sub_222614A78(void *a1, int64_t a2, char a3)
{
  result = sub_222614AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222614A98(char *a1, int64_t a2, char a3)
{
  result = sub_222614C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222614AB8(char *a1, int64_t a2, char a3)
{
  result = sub_222614D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222614AD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D38, &qword_22261EC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010D40, &unk_22261EC50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222614C20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010950, &unk_22261ED20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_222614D24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010948, qword_22261C9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_222614E28(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](a2);
  v7 = sub_22261B740();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_222615518(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}