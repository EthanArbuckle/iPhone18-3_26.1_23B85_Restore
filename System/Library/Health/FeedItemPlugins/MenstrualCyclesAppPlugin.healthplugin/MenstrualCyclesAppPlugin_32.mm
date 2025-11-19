uint64_t sub_29E1F0078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v43 = a2;
  v42 = sub_29E2BCBB4();
  v40 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCC24();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E2BEBB4();
  v39 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F0E10(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CE0D0;
  sub_29E2BCC14();
  v10 = sub_29E2BCBD4();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  *(v9 + 56) = &type metadata for OnboardingSelectRow;
  *(v9 + 64) = sub_29DF07FEC();
  v14 = swift_allocObject();
  *(v9 + 32) = v14;
  *(v14 + 16) = 0x43676E6967676F6CLL;
  *(v14 + 24) = 0xEB000000006C6C65;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
  *(v14 + 48) = 513;
  *(v14 + 50) = 0;
  v34 = [objc_allocWithZone(type metadata accessor for ManualEntryItem()) init];
  v15 = sub_29E2BEC04();
  v17 = v16;
  sub_29E2BCC14();
  v18 = sub_29E2BCBD4();
  v20 = v19;
  v21 = v4;
  v13(v7, v4);
  type metadata accessor for ManualEntryContraceptiveTypeDataSource();
  v22 = swift_allocObject();
  v22[3] = 0;
  swift_unknownObjectWeakInit();
  v22[5] = 0;
  v22[6] = 0;
  v22[3] = &off_2A24BEB30;
  v22[4] = 0;
  swift_unknownObjectWeakAssign();
  *(v9 + 96) = &type metadata for OnboardingTypeRow;
  *(v9 + 104) = sub_29DF081EC();
  v23 = swift_allocObject();
  *(v9 + 72) = v23;
  *(v23 + 16) = 0;
  *(v23 + 17) = *v44;
  *(v23 + 20) = *&v44[3];
  *(v23 + 24) = v18;
  *(v23 + 32) = v20;
  *(v23 + 40) = 8;
  *(v23 + 48) = v22;
  *(v23 + 56) = v34;
  *(v23 + 64) = v15;
  *(v23 + 72) = v17;
  sub_29E2BCC14();
  v24 = sub_29E2BCBD4();
  v26 = v25;
  v27 = v21;
  v13(v7, v21);
  v28 = v37;
  sub_29E2BCBA4();
  started = type metadata accessor for OnboardingStartDateRow(0);
  *(v9 + 136) = started;
  *(v9 + 144) = sub_29E1F1530(&qword_2A181F880, type metadata accessor for OnboardingStartDateRow);
  v30 = sub_29DEBB7E8((v9 + 112));
  v30[1] = v24;
  v30[2] = v26;
  (*(v40 + 32))(v30 + *(started + 28), v28, v42);
  *v30 = 0;
  *(v30 + *(started + 32)) = 1;
  *(v30 + 1) = 2;
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v13(v7, v27);
  v31 = v38;
  sub_29E2BEBA4();
  sub_29E2BECF4();
  return (*(v39 + 8))(v31, v41);
}

void sub_29E1F0554()
{
  v1 = sub_29E2C0514();
  v19[3] = *(v1 - 8);
  v19[4] = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v19[2] = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v19[0] = v19 - v4;
  v5 = sub_29E2BE394();
  v19[1] = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v19 - v11;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {

    sub_29E2BF0F4();

    v13 = v7;
    v14 = *(v7 + 32);
    v15 = v6;
    v14(v12, v9, v6);
    v16 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_userInfo);
    type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRetain();
    sub_29E158B80();
    swift_unknownObjectRelease();
    v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors;
    v20 = *(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors);
    v18 = sub_29E2BF404();
    MEMORY[0x29ED7FDC0](v18);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29E2C3644();
    }

    sub_29E2C3674();
    *(v16 + v17) = v20;
    sub_29E06D050();
    swift_unknownObjectRelease();

    (*(v13 + 8))(v12, v15);
  }

  else
  {
    __break(1u);
  }
}

id sub_29E1F0B20(uint64_t a1)
{
  v2 = v1;
  sub_29E1F0DBC(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result layoutIfNeeded];

  sub_29E1F15D4(a1, v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_29E1F1578(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  (*(v8 + 32))(v11, v6, v7);
  result = [v2 tableView];
  if (!result)
  {
    goto LABEL_11;
  }

  v14 = result;
  v15 = sub_29E2BCF24();
  v16 = [v14 cellForRowAtIndexPath_];

  if (v16)
  {

    result = [v2 tableView];
    if (result)
    {
      v17 = result;
      v18 = sub_29E2BCF24();
      [v17 scrollToRowAtIndexPath:v18 atScrollPosition:2 animated:1];

      return (*(v8 + 8))(v11, v7);
    }

LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_29E1F0DBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1F0E10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DEB1BC4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E1F0E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E1EC1AC(a1, v4, v5, v7, v6);
}

id sub_29E1F0F38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_29E2C08B4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingFactorsViewController.DefaultHeaderView());
  v9 = sub_29E2C33A4();
  v10 = [v8 initWithReuseIdentifier_];

  if (a3)
  {
    sub_29E2C0824();
  }

  else
  {
    sub_29E2C0884();
  }

  sub_29E2BF404();
  sub_29E2C0864();
  v15[3] = v4;
  v15[4] = MEMORY[0x29EDC7800];
  v11 = sub_29DEBB7E8(v15);
  (*(v5 + 16))(v11, v7, v4);
  v12 = v10;
  MEMORY[0x29ED80070](v15);

  (*(v5 + 8))(v7, v4);
  return v12;
}

void sub_29E1F10CC(uint64_t a1)
{
  v3 = sub_29E2C08B4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {

    sub_29E1540FC(a1);
    v8 = v7;

    if (v8)
    {
      v9 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingFactorsViewController.DefaultHeaderView());
      v10 = sub_29E2C33A4();
      v11 = [v9 initWithReuseIdentifier_];

      sub_29E2C0884();
      sub_29E2BF404();
      sub_29E2C0864();
      v18[3] = v3;
      v18[4] = MEMORY[0x29EDC7800];
      v12 = sub_29DEBB7E8(v18);
      (*(v4 + 16))(v12, v6, v3);
      v13 = v11;
      MEMORY[0x29ED80070](v18);

      (*(v4 + 8))(v6, v3);
    }

    else if (!a1)
    {
      v14 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderText + 8);
      if (v14)
      {
        v15 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderProminent);
        if (v15 != 2)
        {
          v16 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_tableSectionHeaderText);
          sub_29E2BF404();
          sub_29E1F0F38(v16, v14, v15 & 1);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E1F12F4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_mutableDataSource))
  {
    v2 = result;

    sub_29E1540FC(v2);
    v4 = v3;

    if (v4)
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E1F139C()
{
  v0 = sub_29E2C08B4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingFactorsViewController.DefaultFooterView());
  v5 = sub_29E2C33A4();
  v6 = [v4 initWithReuseIdentifier_];

  sub_29E2C0874();
  sub_29E2BF404();
  sub_29E2C0864();
  v11[3] = v0;
  v11[4] = MEMORY[0x29EDC7800];
  v7 = sub_29DEBB7E8(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = v6;
  MEMORY[0x29ED80070](v11);

  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_29E1F1530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1F1578(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E1F0DBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E1F15D4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E1F0DBC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E1F1640(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingEndDateRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E1F169C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E1F0E10(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29E1F1714()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &ObjectType - v8;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOffboardingConfirmationViewController_coordinator] = 0;
  v18 = v1;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOffboardingConfirmationViewController_offboardingStep] = xmmword_29E2CFE20;
  sub_29E2C3314();
  v20 = *(v4 + 16);
  v20(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v21 = v10;
  sub_29E2C3414();
  v19 = "EDING_ALERT_MESSAGE";
  v11 = *(v4 + 8);
  v11(v9, v3);
  v12 = sub_29E2C33A4();

  sub_29E2C3314();
  v20(v6, v9, v3);
  sub_29E2BCC74();
  sub_29E2C3414();
  v11(v9, v3);
  v13 = sub_29E2C33A4();

  v14 = objc_opt_self();
  v15 = sub_29E2C33A4();
  v16 = [v14 imageNamed:v15 inBundle:v21 compatibleWithTraitCollection:0];

  if (v16)
  {
    [v16 setIsAccessibilityElement_];
    v22.receiver = v18;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, v16, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E1F1AC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v15[-v10];
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidLoad, v9);
  [v1 setModalInPresentation_];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v11, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v11, v4);
  v13 = sub_29E2C33A4();

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  *&v15[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x616D7269666E6F43, 0xEC0000006E6F6974);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v14 = sub_29E2C33A4();
}

uint64_t sub_29E1F1E54()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOffboardingConfirmationViewController_coordinator);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_flowType) = 2;

    sub_29DFEB3D0(2, 0, 0);
    sub_29DFEC8DC();
  }

  return result;
}

uint64_t sub_29E1F1FE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29E1F2030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E1F2088@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_29E2C3794();
  sub_29E2C3794();
  v4 = [v3 description];
  v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v7 = v6;

  MEMORY[0x29ED7FCC0](v5, v7);

  sub_29E2C3794();
  result = sub_29E2C3794();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_29E1F21B8()
{
  sub_29E1F2BCC();
  sub_29E1F2C1C();
  sub_29E1F3170(&qword_2A181F910, sub_29E1F2BCC);
  sub_29E1F2D4C();
  sub_29E1F2E38();
  sub_29E1F2EEC();
  sub_29E2C0C94();
  sub_29E2BF404();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E1F30C4();
  return sub_29E2C2994();
}

uint64_t sub_29E1F2384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_29E2C1B64();
  v48 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v46 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F3118();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v36[2] = v36 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  MEMORY[0x2A1C7C4A8](v9);
  v36[1] = v36 - v10;
  v40 = sub_29E2C0C94();
  v42 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F2EEC();
  v41 = v13;
  v43 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F2E38();
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F2D4C();
  v47 = v20;
  v49 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v37 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v22 = a1[1];
  v39 = a1[2];
  sub_29E2C1B34();
  v53 = v23;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v53 = v23;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v53 = v22;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v53 = v22;
  sub_29E2C0CC4();

  sub_29E2C0C84();
  v24 = v48;
  v25 = v46;
  v26 = v50;
  (*(v48 + 104))(v46, *MEMORY[0x29EDBC6F8], v50);
  v27 = MEMORY[0x29EDB85F0];
  v28 = v40;
  sub_29E2C0C14();
  (*(v24 + 8))(v25, v26);
  (*(v42 + 8))(v12, v28);
  v53 = v28;
  v54 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_29E2C0C54();
  (*(v43 + 8))(v15, v30);
  v53 = v30;
  v54 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v37;
  v33 = v44;
  sub_29E2C0C44();
  (*(v45 + 8))(v19, v33);
  v52 = sub_29E2C2654();
  v53 = v33;
  v54 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v47;
  sub_29E2C0C24();

  return (*(v49 + 8))(v32, v34);
}

uint64_t sub_29E1F2A84()
{
  sub_29E1F2B04();
  sub_29E1F2F70();
  return sub_29E2C0D64();
}

void sub_29E1F2B04()
{
  if (!qword_2A181F8E0)
  {
    sub_29E1F2BCC();
    sub_29E1F2C1C();
    sub_29E1F3170(&qword_2A181F910, sub_29E1F2BCC);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F8E0);
    }
  }
}

void sub_29E1F2BCC()
{
  if (!qword_2A181F8E8)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F8E8);
    }
  }
}

void sub_29E1F2C1C()
{
  if (!qword_2A181F8F0)
  {
    sub_29E1F2D4C();
    sub_29E1F2E38();
    sub_29E1F2EEC();
    sub_29E2C0C94();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F8F0);
    }
  }
}

void sub_29E1F2D4C()
{
  if (!qword_2A181F8F8)
  {
    sub_29E1F2E38();
    sub_29E1F2EEC();
    sub_29E2C0C94();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F8F8);
    }
  }
}

void sub_29E1F2E38()
{
  if (!qword_2A181F900)
  {
    sub_29E1F2EEC();
    sub_29E2C0C94();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F900);
    }
  }
}

void sub_29E1F2EEC()
{
  if (!qword_2A181F908)
  {
    sub_29E2C0C94();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F908);
    }
  }
}

unint64_t sub_29E1F2F70()
{
  result = qword_2A181F918;
  if (!qword_2A181F918)
  {
    sub_29E1F2B04();
    sub_29E1F2D4C();
    sub_29E1F2E38();
    sub_29E1F2EEC();
    sub_29E2C0C94();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F918);
  }

  return result;
}

unint64_t sub_29E1F30C4()
{
  result = qword_2A181F920;
  if (!qword_2A181F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F920);
  }

  return result;
}

void sub_29E1F3118()
{
  if (!qword_2A1817948)
  {
    v0 = sub_29E2C0CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817948);
    }
  }
}

uint64_t sub_29E1F3170(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E1F31B8()
{
  if (!qword_2A181F930)
  {
    sub_29E1F2B04();
    sub_29E1F2F70();
    v0 = sub_29E2C0D74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F930);
    }
  }
}

void sub_29E1F321C(int a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_blurView);
  if (!v3)
  {
    return;
  }

  v16 = v3;
  if ((([v16 isHidden] ^ a1) & 1) == 0)
  {
    if (a2)
    {
      v6 = a1 & 1;
      v7 = 1.0;
      if (a1)
      {
        v7 = 0.0;
      }

      [v16 setAlpha_];
      [v16 setHidden_];
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v16;
      *(v9 + 24) = v6;
      v21 = sub_29E1F3A14;
      v22 = v9;
      aBlock = MEMORY[0x29EDCA5F8];
      v18 = 1107296256;
      v19 = sub_29DF49BB8;
      v20 = &unk_2A24BED38;
      v10 = _Block_copy(&aBlock);
      v11 = v16;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v6;
      v21 = sub_29E1F3A50;
      v22 = v12;
      aBlock = MEMORY[0x29EDCA5F8];
      v18 = 1107296256;
      v19 = sub_29E1F3494;
      v20 = &unk_2A24BED88;
      v13 = _Block_copy(&aBlock);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.25];

      _Block_release(v13);
      _Block_release(v10);
      return;
    }

    [v16 setHidden_];
    v15 = 0.0;
    if (a1)
    {
      v15 = 1.0;
    }

    [v16 setAlpha_];
  }
}

uint64_t sub_29E1F3494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_29E1F34E8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    sub_29DE9408C(0, &unk_2A1A61A00);
    v5 = v0;
    v6 = sub_29E2C3FD4();
    [v4 setFont_];

    [v4 setTextAlignment_];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v5 + v1);
    *(v5 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_29E1F3638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BC704();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_29DE9408C(0, &unk_2A1A61A00);
  sub_29E2C3FD4();
  sub_29DFE1DE8();
  sub_29E2BC714();
  [objc_opt_self() tintColor];
  sub_29E1F48A0();
  return sub_29E2BC714();
}

id sub_29E1F3A14()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t sub_29E1F3A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_29E1F3A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  v106 = a2;
  ObjectType = swift_getObjectType();
  sub_29E1F4840();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v99 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29E2C4164();
  v96 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v95 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v94 - v15;
  v17 = sub_29E2C4274();
  v104 = *(v17 - 8);
  v105 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v98 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v103 = &v94 - v20;
  v21 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_delegate];
  *(v21 + 1) = 0;
  v100 = v21;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel] = 0;
  v22 = 0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v23 = [objc_opt_self() effectWithStyle_];
    v22 = [objc_allocWithZone(MEMORY[0x29EDC7DC0]) initWithEffect_];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    [v22 setHidden_];
  }

  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_blurView] = v22;
  v24 = v103;
  sub_29E2C4224();
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v11 + 8))(v16, v10);
  sub_29E2C4254();
  (*(v96 + 104))(v95, *MEMORY[0x29EDC78A0], v97);
  sub_29E2C4174();
  v26 = swift_allocObject();
  v27 = *(a1 + 80);
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = v27;
  *(v26 + 112) = *(a1 + 96);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  v29 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v29;
  sub_29DE9DC98(a1, v108);
  v30 = v99;
  sub_29E2C0B74();
  v31 = sub_29E2C0B64();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_29E2C4204();
  sub_29DE9408C(0, &qword_2A1819798);
  (*(v104 + 16))(v98, v24, v105);
  v32 = sub_29E2C4284();
  v33 = qword_2A1A60ED8;
  v34 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v108[0] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301580);
  v35 = sub_29E2C33A4();

  [v34 setAccessibilityIdentifier_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_configuration];
  v37 = *(a1 + 80);
  *(v36 + 4) = *(a1 + 64);
  *(v36 + 5) = v37;
  *(v36 + 12) = *(a1 + 96);
  v38 = *(a1 + 16);
  *v36 = *a1;
  *(v36 + 1) = v38;
  v39 = *(a1 + 48);
  *(v36 + 2) = *(a1 + 32);
  *(v36 + 3) = v39;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_doneButton] = v34;
  *(v100 + 1) = v101;
  swift_unknownObjectWeakAssign();
  sub_29DE9DC98(a1, v108);
  v107.receiver = v4;
  v107.super_class = ObjectType;
  v40 = v34;
  v41 = objc_msgSendSuper2(&v107, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 clearColor];
  [v43 setBackgroundColor_];

  v45 = sub_29E1F34E8();
  [v43 addSubview_];

  [v43 addSubview_];
  [v40 addTarget:v43 action:sel_doneTapped_ forControlEvents:64];

  v46 = *&v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_blurView];
  if (v46)
  {
    v47 = v46;
    [v43 insertSubview:v47 atIndex:0];
    ObjectType = objc_opt_self();
    sub_29DE99B54();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_29E2CE070;
    v49 = [v47 leadingAnchor];
    v50 = [v43 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v48 + 32) = v51;
    v52 = [v47 trailingAnchor];

    v53 = [v43 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v48 + 40) = v54;
    v55 = [v47 topAnchor];

    v56 = [v43 topAnchor];
    v57 = [v55 constraintEqualToAnchor_];

    *(v48 + 48) = v57;
    v58 = [v47 bottomAnchor];

    v59 = [v43 bottomAnchor];
    v60 = [v58 constraintEqualToAnchor_];

    *(v48 + 56) = v60;
    sub_29DE9408C(0, &qword_2A1A61A10);
    v61 = sub_29E2C3604();

    [(objc_class *)ObjectType activateConstraints:v61];
  }

  ObjectType = objc_opt_self();
  sub_29DE99B54();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_29E2D7FC0;
  v63 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel;
  v64 = [*&v43[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel] topAnchor];
  v65 = [v43 topAnchor];
  v66 = *(a1 + 80);
  v67 = [v64 constraintEqualToAnchor:v65 constant:v66];

  *(v62 + 32) = v67;
  v68 = [*&v43[v63] centerXAnchor];
  v69 = [v43 centerXAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v62 + 40) = v70;
  v71 = [v40 &selRef_hkmc_menstruationColor];
  v72 = [*&v43[v63] bottomAnchor];
  v73 = [v71 &selRef:v72 setLineFragmentPadding:v66 + v66 + 6];

  *(v62 + 48) = v73;
  v74 = [v40 widthAnchor];
  v75 = [v74 constraintEqualToConstant_];

  *(v62 + 56) = v75;
  v76 = [v40 leadingAnchor];
  v77 = [v43 leadingAnchor];
  v78 = *(a1 + 72);
  v79 = [v76 constraintGreaterThanOrEqualToAnchor:v77 constant:v78];

  *(v62 + 64) = v79;
  v80 = [v40 trailingAnchor];
  v81 = [v43 trailingAnchor];
  v82 = -v78;
  v83 = [v80 constraintLessThanOrEqualToAnchor:v81 constant:v82];

  *(v62 + 72) = v83;
  v84 = [v40 heightAnchor];
  v85 = [v84 constraintEqualToConstant_];

  *(v62 + 80) = v85;
  v86 = [v40 centerXAnchor];
  v87 = [v43 centerXAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  *(v62 + 88) = v88;
  v89 = [v40 bottomAnchor];

  v90 = [v43 bottomAnchor];
  v91 = [v89 &selRef:v90 setLineFragmentPadding:v82 + 6];

  *(v62 + 96) = v91;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v92 = sub_29E2C3604();

  [(objc_class *)ObjectType activateConstraints:v92];

  swift_unknownObjectRelease();
  (*(v104 + 8))(v103, v105);
  return v43;
}

void sub_29E1F4840()
{
  if (!qword_2A181F960)
  {
    sub_29E2C0B64();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F960);
    }
  }
}

unint64_t sub_29E1F48A0()
{
  result = qword_2A181F968;
  if (!qword_2A181F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F968);
  }

  return result;
}

uint64_t sub_29E1F48FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29E1F4944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_29E1F4994(void *a1)
{
  v2 = sub_29E2C0514();
  v14[2] = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v3 = sub_29E2BFC94();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = [objc_opt_self() sharedInstanceForHealthStore_];
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v8 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA878]);
  v15 = [v7 preferredUnitForType_];

  v9 = objc_opt_self();
  v10 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  v11 = [v7 preferredUnitForType_];

  v14[3] = [v9 _changeInUnit_];
  v12 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA760] healthStore:a1];
  sub_29DE9408C(0, &qword_2A1A5E120);
  sub_29E2BFCD4();

  sub_29E2BFC84();
  (*(v4 + 8))(v6, v3);
  return v15;
}

unint64_t sub_29E1F4E04()
{
  result = qword_2A181F970;
  if (!qword_2A181F970)
  {
    sub_29E1F4E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F970);
  }

  return result;
}

void sub_29E1F4E5C()
{
  if (!qword_2A181F978)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F978);
    }
  }
}

unint64_t sub_29E1F4EAC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E1F4F40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29E1F4EEC()
{
  result = qword_2A181F980;
  if (!qword_2A181F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F980);
  }

  return result;
}

unint64_t sub_29E1F4F40(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_29E1F4F50(void *a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v8 = sub_29E1F56DC();
  if (v8)
  {
    v9 = v8;
    v10 = sub_29DF611A8();
    v11 = sub_29E2BFAF4();

    if (v11)
    {
      type metadata accessor for InteractiveTimelineViewController();
      if (swift_dynamicCastClass())
      {
        v12 = sub_29E20BFA4();

        v13 = [v12 collectionView];
        if (v13)
        {
          v14 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
          v15 = sub_29E2C33A4();
          [v14 setTestName_];

          if (*(a2 + 24))
          {
            if (*(a2 + 40))
            {
              goto LABEL_7;
            }
          }

          else
          {
            [v14 setIterations_];
            if (*(a2 + 40))
            {
LABEL_7:
              if (*(a2 + 41))
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          [v14 setDelta_];
          if (*(a2 + 41))
          {
LABEL_8:
            v16 = v13;
            [v16 bounds];
            v18 = v17;
            v19 = [v16 superview];
            if (v19)
            {
              v20 = v19;
              v21 = v18 * 6.0;
              [v16 frame];
              v23 = v22;
              v25 = v24;
              v27 = v26;
              v29 = v28;

              [v20 convertRect:0 toView:{v23, v25, v27, v29}];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;

              [v16 adjustedContentInset];
              v40 = sub_29DEC731C(v31, v33, v35, v37, v38, v39);
              v44 = sub_29DEC731C(v40, v41, v42, v43, 5.0, 5.0);
              v46 = v45;
              v48 = v47;
              v50 = v49;
              v51 = [v14 testName];
              if (v51)
              {
                v52 = v51;
                _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

                v53 = sub_29E2C33A4();
              }

              else
              {

                v53 = 0;
              }

              v62 = objc_allocWithZone(MEMORY[0x29EDC64A8]);
              v72 = a3;
              v73 = a4;
              aBlock = MEMORY[0x29EDCA5F8];
              v69 = 1107296256;
              v70 = sub_29DF49BB8;
              v71 = &unk_2A24BEFB8;
              v63 = _Block_copy(&aBlock);

              v64 = [v62 initWithTestName:v53 scrollBounds:2 scrollContentLength:v63 direction:v44 completionHandler:{v46, v48, v50, v21}];
              _Block_release(v63);

              v65 = objc_opt_self();
              v66 = v64;
              [v65 runTestWithParameters_];
            }

            else
            {
              __break(1u);
            }

            return;
          }

LABEL_17:
          [v13 bounds];
          [v14 setLength_];
          [v14 setAxis_];
          [v13 contentOffset];
          v57 = v56;
          [v14 length];
          [v13 setContentOffset:0 animated:{v57 + v58 * -0.5, 0.0}];
          v59 = swift_allocObject();
          *(v59 + 16) = a3;
          *(v59 + 24) = a4;
          v72 = sub_29E1F6278;
          v73 = v59;
          aBlock = MEMORY[0x29EDCA5F8];
          v69 = 1107296256;
          v70 = sub_29E1F5C4C;
          v71 = &unk_2A24BEF90;
          v60 = _Block_copy(&aBlock);

          v61 = v14;

          [v13 _performScrollTestWithParameters_completionBlock_];

          _Block_release(v60);
          return;
        }
      }

      else
      {
      }
    }
  }

  v54 = sub_29E2C33A4();
  v67 = sub_29E2C33A4();
  [a1 failedTest:v54 withFailure:v67];
}

void sub_29E1F54D0(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  [v4 loadViewIfNeeded];
  v9 = sub_29E1F5828();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    type metadata accessor for ViewModelProviderLoadTest();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a2[1];
    *(v13 + 24) = *a2;
    *(v13 + 40) = v14;
    *(v13 + 50) = *(a2 + 26);
    *(v13 + 72) = sub_29E1F612C;
    *(v13 + 80) = v12;

    v15 = a1;
    sub_29DF01474(a2, v19);

    v16 = sub_29E2C33A4();
    [v15 startedTest_];

    [v10 registerObserver_];

    *&v4[qword_2A1840F70] = v13;
  }

  else
  {
    v17 = sub_29E2C33A4();
    v18 = sub_29E2C33A4();
    [a1 failedTest:v17 withFailure:v18];
  }
}

id sub_29E1F56DC()
{
  v1 = v0;
  v2 = sub_29E2BCFB4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  MEMORY[0x29ED796E0](&unk_2A24AE630);
  v9 = sub_29E2BCF24();
  (*(v3 + 8))(v6, v2);
  v10 = [v8 cellForItemAtIndexPath_];

  if (v10)
  {
    type metadata accessor for InteractiveTimelineItemCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_29E1F5828()
{
  sub_29E2BF984();
  if (v5)
  {
    sub_29E1F61EC();
    type metadata accessor for MenstrualCyclesRoomDataSourceProvider();
    if (swift_dynamicCast())
    {
      v0 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_cycleLoggingDataProvider);

      v1 = *(v0 + 176);

      return v1;
    }
  }

  else
  {
    sub_29E1F6138(v4);
  }

  return 0;
}

void sub_29E1F58D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
    v11 = sub_29E2C33A4();
    [v10 setTestName_];

    if ((*(a2 + 24) & 1) == 0)
    {
      [v10 setIterations_];
    }

    if ((*(a2 + 40) & 1) == 0)
    {
      [v10 setDelta_];
    }

    v12 = v9;
    [v12 bounds];
    [v10 setLength_];
    [v10 setAxis_];
    [v12 contentOffset];
    v15 = v14;
    [v12 bounds];
    v17 = v16;

    [v12 setContentOffset:0 animated:{0.0, v15 + v17 * -6.0}];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a4;
    v19[4] = a5;
    v22[4] = sub_29E1F60E0;
    v22[5] = v19;
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 1107296256;
    v22[2] = sub_29E1F5C4C;
    v22[3] = &unk_2A24BF030;
    v20 = _Block_copy(v22);
    v21 = v10;

    [v12 _performScrollTestWithParameters_completionBlock_];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E1F5B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    aBlock[4] = sub_29DE9B5DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF49BB8;
    aBlock[3] = &unk_2A24BF080;
    v9 = _Block_copy(aBlock);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_29E1F5C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_29E2C3214();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_29E1F5CDC(uint64_t a1, uint64_t (*a2)(char *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[qword_2A1840F70] = 0;
  }

  return a2(Strong);
}

void sub_29E1F5D5C(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 41))
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
    v9 = sub_29E2C33A4();
    [v8 setTestName_];

    if ((*(a1 + 24) & 1) == 0)
    {
      [v8 setIterations_];
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      [v8 setDelta_];
    }

    v10 = [v8 testName];
    if (v10)
    {
      v11 = v10;
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v19 = [v4 collectionView];
    if (v19)
    {
      v20 = v19;

      if (v13)
      {
        v21 = sub_29E2C33A4();
      }

      else
      {
        v21 = 0;
      }

      v22 = objc_allocWithZone(MEMORY[0x29EDC64A8]);
      v28 = a2;
      v29 = a3;
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29DF49BB8;
      v27 = &unk_2A24BEF40;
      v23 = _Block_copy(&v24);

      v15 = [v22 initWithTestName:v21 scrollView:v20 completionHandler:v23];
      _Block_release(v23);

      [objc_opt_self() runTestWithParameters_];
LABEL_20:

      return;
    }
  }

  else
  {
    v14 = [v4 collectionView];
    if (v14)
    {
      v8 = v14;
      v15 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
      v16 = sub_29E2C33A4();
      [v15 setTestName_];

      if ((*(a1 + 24) & 1) == 0)
      {
        [v15 setIterations_];
      }

      if ((*(a1 + 40) & 1) == 0)
      {
        [v15 setDelta_];
      }

      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      v28 = sub_29DE9B5DC;
      v29 = v17;
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29E1F5C4C;
      v27 = &unk_2A24BEF18;
      v18 = _Block_copy(&v24);

      [v8 _performScrollTestWithParameters_completionBlock_];
      _Block_release(v18);
      goto LABEL_20;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E1F60C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E1F60EC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E1F6138(uint64_t a1)
{
  sub_29E1F6194();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E1F6194()
{
  if (!qword_2A181F988)
  {
    sub_29E1F61EC();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F988);
    }
  }
}

unint64_t sub_29E1F61EC()
{
  result = qword_2A181F990;
  if (!qword_2A181F990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181F990);
  }

  return result;
}

void sub_29E1F627C(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_29E2BF584();
  v27 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v27 - v8;
  sub_29E1F6744();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A67F80;
  v11 = qword_2A1A67F80;
  v12 = sub_29E2C33A4();
  v31 = objc_opt_self();
  v13 = [v31 colorNamed:v12 inBundle:v11 compatibleWithTraitCollection:0];

  if (v13)
  {
    *(inited + 32) = v13;
    *(inited + 40) = 0x4046800000000000;
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    sub_29E2BCC74();
    v14 = v11;
    v15 = sub_29E2C3414();
    v17 = v16;
    (*(v4 + 8))(v9, v3);
    *(inited + 48) = v15;
    *(inited + 56) = v17;
    v18 = v14;
    v19 = sub_29E2C33A4();
    v20 = [v31 colorNamed:v19 inBundle:v18 compatibleWithTraitCollection:0];

    if (v20)
    {
      *(inited + 64) = v20;
      *(inited + 72) = 0x4018000000000000;
      sub_29E2C3394();
      sub_29E2BCC74();
      *(inited + 80) = sub_29E2C3414();
      *(inited + 88) = v21;
      sub_29DE9FD20(inited);
      v23 = v22;
      v25 = v24;
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = &type metadata for PDFLegends;
      v26 = sub_29DEA0814();
      v36 = v23;
      v39 = v26;
      v37 = v25;
      v35 = 0;
      v34 = 0u;
      v33 = 0u;
      (*(v27 + 104))(v28, *MEMORY[0x29EDC2870], v29);
      sub_29E2BF574();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E1F6744()
{
  if (!qword_2A181F998)
  {
    sub_29E1F679C();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F998);
    }
  }
}

void sub_29E1F679C()
{
  if (!qword_2A181F9A0)
  {
    sub_29DEC3644();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181F9A0);
    }
  }
}

uint64_t sub_29E1F6810()
{
  sub_29E2C34B4();
  if (!*(v0 + 88))
  {
    sub_29E2C4A24();
    if (*(v0 + 104))
    {
      goto LABEL_3;
    }

    return sub_29E2C4A24();
  }

  sub_29E2C4A24();
  sub_29E2C34B4();
  if (!*(v0 + 104))
  {
    return sub_29E2C4A24();
  }

LABEL_3:
  sub_29E2C4A24();

  return sub_29E2C34B4();
}

uint64_t sub_29E1F68C0()
{
  sub_29DE8EDC0(v0 + 16);
  sub_29DE8EDC0(v0 + 32);
  sub_29DE8EDC0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_29E1F6960()
{
  sub_29E2C4A04();
  sub_29E1F6810();
  return sub_29E2C4A54();
}

uint64_t sub_29E1F69C8()
{
  sub_29E2C4A04();
  sub_29E1F6810();
  return sub_29E2C4A54();
}

uint64_t sub_29E1F6A14()
{
  swift_getWitnessTable();
  swift_getWitnessTable();

  return sub_29E252C78();
}

uint64_t sub_29E1F6A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29E1F6AF8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for CycleStatisticsItem();
    v10[4] = sub_29E1F7058(&qword_2A181E5C8, v8, type metadata accessor for CycleStatisticsItem);
    v10[0] = v4;
    v9 = *(v6 + 8);

    v9(v10, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v10);
  }

  return result;
}

uint64_t sub_29E1F6BD8()
{

  sub_29DE8EDC0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29E1F6C3C()
{
  type metadata accessor for CycleStatisticsHorizontalCell();
  sub_29E1F7058(&qword_2A181F9C0, 255, type metadata accessor for CycleStatisticsHorizontalCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E1F6CA8()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29E063B14(v3, *(v1 + 16));
  return sub_29E2C4A54();
}

uint64_t sub_29E1F6CFC()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29E063B14(v3, *(v1 + 16));
  return sub_29E2C4A54();
}

uint64_t sub_29E1F6D54()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29E063B14(v3, *(v1 + 16));
  v3[0] = sub_29E2C4A54();
  return sub_29E2C48D4();
}

uint64_t sub_29E1F6DB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E1F7058(&qword_2A181F9C8, a2, type metadata accessor for CycleStatisticsSummaryItem);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E1F6F7C(void *a1, void *a2)
{
  v4 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v4 && (sub_29E2C4914() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[11];
  v6 = a2[11];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = a1[10] == a2[10] && v5 == v6;
  if (!v7 && (sub_29E2C4914() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v8 = a1[13];
  v9 = a2[13];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (a1[12] == a2[12] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_29E2C4914();
    }
  }

  return result;
}

uint64_t sub_29E1F7058(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1F70A0(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[4];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E1F7058(&qword_2A181F9B0, v7, type metadata accessor for CycleStatisticsSummaryItem);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

void sub_29E1F71B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PregnancyStartDateMethodInputPickerSheet()
{
  result = qword_2A181F9D0;
  if (!qword_2A181F9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E1F727C()
{
  sub_29E1F71B8(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29E1F73A4(319, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
    if (v1 <= 0x3F)
    {
      sub_29E1F71B8(319, &qword_2A181C5D0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E1F73A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E1F9B28(255, a3, a4, MEMORY[0x29EDC9C68]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E1F743C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2C1A64();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F71B8(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14 - v8;
  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  sub_29E0DE86C(v1 + *(started + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C1584();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E1F7650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_29E2C1A74();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E2C3384();
  v7 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v45 - v10;
  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  v13 = started - 8;
  v48 = *(started - 8);
  v14 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](started);
  sub_29E1F9448(0);
  v16 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F93A8();
  v50 = *(v19 - 8);
  v51 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v49 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(v13 + 28);
  v22 = *v21;
  v23 = *(v21 + 8);
  v62 = v22;
  v63 = v23;
  sub_29E1F73A4(0, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
  sub_29E2C27F4();
  v57 = a1;
  sub_29E1F94F8();
  sub_29E046140();
  sub_29E1F9D28();
  sub_29E2C21B4();
  v52 = a1;
  sub_29E1FA42C(a1, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputPickerSheet);
  v24 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v25 = swift_allocObject();
  v26 = v25 + v24;
  v27 = v46;
  sub_29E1F9FC4(&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v48 = v16;
  v28 = *(v16 + 36);
  v29 = v45;
  v30 = &v18[v28];
  *v30 = sub_29E1FA028;
  v30[1] = v25;
  v30[2] = 0;
  v30[3] = 0;
  sub_29E2C3314();
  (*(v7 + 16))(v29, v11, v27);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v31 = qword_2A1A67F80;
  sub_29E2BCC74();
  v32 = sub_29E2C3414();
  v34 = v33;
  (*(v7 + 8))(v11, v27);
  v58 = v32;
  v59 = v34;
  v35 = v53;
  v36 = v54;
  v37 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x29EDBBF98], v55);
  v38 = sub_29E1F9F0C();
  v39 = sub_29DE9DE68();
  v40 = v48;
  v41 = v49;
  sub_29E2C2484();
  (*(v36 + 8))(v35, v37);

  v42 = sub_29E1FA494(v18, sub_29E1F9448);
  MEMORY[0x2A1C7C4A8](v42);
  *(&v45 - 2) = v52;
  sub_29E2C2BC4();
  v58 = v40;
  v59 = MEMORY[0x29EDC99B0];
  v60 = v38;
  v61 = v39;
  swift_getOpaqueTypeConformance2();
  sub_29E1F9CE0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
  v43 = v51;
  sub_29E2C2584();
  return (*(v50 + 8))(v41, v43);
}

uint64_t sub_29E1F7D08(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v18[-v8];
  v19 = a1;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v20 = v11;
  v21 = v13;
  sub_29DE9DE68();
  v20 = sub_29E2C2294();
  v21 = v14;
  v22 = v15 & 1;
  v23 = v16;
  sub_29E1F9560();
  sub_29E1F9DB4();
  return sub_29E2C2A04();
}

uint64_t sub_29E1F7F80(uint64_t a1)
{
  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  v3 = *(started - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  v8[1] = &unk_2A24AF978;
  sub_29E1FA42C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputPickerSheet);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E1F9FC4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_29E1F9B28(0, &qword_2A181B128, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9A40]);
  sub_29E1F9620(0);
  sub_29E1145C4();
  sub_29E1F9E2C();
  sub_29E1147CC();
  return sub_29E2C29B4();
}

uint64_t sub_29E1F8124@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v4 = sub_29E2C1B94();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v42 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v36[-v7];
  v38 = sub_29E2C1F14();
  v9 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1F969C(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1F9654(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1F9620(0);
  v41 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v36[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(a1) = *a1;
  *v15 = sub_29E2C1AA4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_29E1FA30C();
  v25 = &v15[*(v24 + 44)];
  v37 = a1;
  sub_29E1F8654(a1, v44, v25);
  v26 = [objc_opt_self() tertiarySystemBackgroundColor];
  v46 = sub_29E2C2654();
  *&v15[*(v13 + 36)] = sub_29E2C2914();
  sub_29E2C1EF4();
  v27 = sub_29E1F9C00();
  sub_29E2C24A4();
  (*(v9 + 8))(v11, v38);
  sub_29E1FA494(v15, sub_29E1F969C);
  sub_29E2C1B84();
  v46 = v13;
  v47 = v27;
  v29 = v39;
  v28 = v40;
  swift_getOpaqueTypeConformance2();
  sub_29E2C24B4();
  v30 = *(v29 + 8);
  v30(v8, v28);
  (*(v18 + 8))(v20, v17);
  v31 = (v44 + *(type metadata accessor for PregnancyStartDateMethodInputPickerSheet() + 20));
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v46) = v32;
  v47 = v33;
  sub_29E1F73A4(0, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  if (v45 == 4 || v45 != v37)
  {
    v46 = MEMORY[0x29EDCA190];
    sub_29E1F9CE0(&qword_2A181D210, MEMORY[0x29EDBC748]);
    sub_29E1F71B8(0, &qword_2A181D218, MEMORY[0x29EDBC748], MEMORY[0x29EDC9A40]);
    sub_29E1FA3A4();
    v34 = v42;
    sub_29E2C43F4();
  }

  else
  {
    v34 = v42;
    sub_29E2C1B74();
  }

  sub_29E2C1734();
  v30(v34, v28);
  return sub_29E1FA494(v23, sub_29E1F9620);
}

uint64_t sub_29E1F8654@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v34 = a1;
  sub_29E1F9A54(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1F99C8(0);
  v39 = v7 - 8;
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v34 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v36 = &v34 - v13;
  v37 = sub_29E2C1BD4();
  LOBYTE(v45) = 1;
  sub_29E1F8A64(v52);
  *&v51[7] = v52[0];
  *&v51[23] = v52[1];
  *&v51[39] = v52[2];
  *&v51[55] = v52[3];
  v35 = v45;
  v14 = sub_29E2C2714();
  v15 = [objc_opt_self() systemBlueColor];
  v16 = sub_29E2C2654();
  KeyPath = swift_getKeyPath();
  v45 = v14;
  v46 = KeyPath;
  *v47 = v16;
  sub_29E2C2084();
  sub_29E03D170(0);
  sub_29E015868();
  sub_29E2C2344();

  v18 = (v38 + *(type metadata accessor for PregnancyStartDateMethodInputPickerSheet() + 20));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v45) = v19;
  v46 = v20;
  sub_29E1F73A4(0, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  if (LOBYTE(v43[0]) != v34 || LOBYTE(v43[0]) == 4)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  (*(v41 + 32))(v11, v6, v42);
  *&v11[*(v39 + 44)] = v22;
  v23 = v11;
  v24 = v36;
  sub_29DE8B4D0(v23, v36);
  v25 = v40;
  sub_29DE8B534(v24, v40);
  v26 = v37;
  v43[0] = v37;
  v43[1] = 0;
  v27 = v35;
  v44[0] = v35;
  *&v44[1] = *v51;
  *&v44[17] = *&v51[16];
  *&v44[33] = *&v51[32];
  *&v44[49] = *&v51[48];
  v28 = *&v51[63];
  *&v44[64] = *&v51[63];
  v29 = *v44;
  *a3 = v37;
  *(a3 + 16) = v29;
  v30 = *&v44[16];
  v31 = *&v44[48];
  *(a3 + 48) = *&v44[32];
  *(a3 + 64) = v31;
  *(a3 + 32) = v30;
  *(a3 + 80) = v28;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  sub_29E1F97D8();
  sub_29DE8B534(v25, a3 + *(v32 + 64));
  sub_29E1FA42C(v43, &v45, sub_29E1F9850);
  sub_29E1FA494(v24, sub_29E1F99C8);
  sub_29E1FA494(v25, sub_29E1F99C8);
  v45 = v26;
  v46 = 0;
  v47[0] = v27;
  v48 = *&v51[16];
  v49 = *&v51[32];
  *v50 = *&v51[48];
  *&v50[15] = *&v51[63];
  *&v47[1] = *v51;
  return sub_29E1FA4F4(&v45);
}

uint64_t sub_29E1F8A64@<X0>(uint64_t a1@<X8>)
{
  sub_29E03F758();
  sub_29DE9DE68();
  v2 = sub_29E2C2294();
  v4 = v3;
  v6 = v5;
  sub_29E2C2154();
  v7 = sub_29E2C2254();
  v9 = v8;
  v11 = v10;

  sub_29DED6478(v2, v4, v6 & 1);

  v34 = objc_opt_self();
  v12 = [v34 labelColor];
  sub_29E2C2654();
  v13 = sub_29E2C2224();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v38 = v16;
  sub_29DED6478(v7, v9, v11 & 1);

  sub_29E03F9C4();
  v17 = sub_29E2C2294();
  v19 = v18;
  LOBYTE(v7) = v20;
  sub_29E2C2044();
  v21 = sub_29E2C2254();
  v23 = v22;
  v25 = v24;

  sub_29DED6478(v17, v19, v7 & 1);

  v26 = [v34 secondaryLabelColor];
  sub_29E2C2654();
  v27 = sub_29E2C2224();
  v29 = v28;
  LOBYTE(v19) = v30;
  v32 = v31;
  sub_29DED6478(v21, v23, v25 & 1);

  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v32;
  sub_29DE93208(v37, v36, v35 & 1);
  sub_29E2BF404();
  sub_29DE93208(v27, v29, v19 & 1);
  sub_29E2BF404();
  sub_29DED6478(v27, v29, v19 & 1);

  sub_29DED6478(v37, v36, v35 & 1);
}

uint64_t sub_29E1F8D40()
{
  sub_29E1F71B8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  swift_getKeyPath();
  sub_29E1F9CE0(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  sub_29E1F73A4(0, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
  return sub_29E2C27E4();
}

uint64_t sub_29E1F8EA0(uint64_t a1)
{
  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  v3 = *(started - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](started - 8);
  sub_29E1FA42C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PregnancyStartDateMethodInputPickerSheet);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E1F9FC4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_29E2C2BB4();
}

uint64_t sub_29E1F8FB8(uint64_t a1)
{
  v2 = sub_29E2C1584();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1F71B8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v6 = a1 + *(type metadata accessor for PregnancyStartDateMethodInputPickerSheet() + 20);
  v7 = *v6;
  v8 = *(v6 + 8);
  v10[16] = v7;
  v11 = v8;
  sub_29E1F73A4(0, &qword_2A181E790, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E040AAC(v10[15]);

  sub_29E1F743C(v5);
  sub_29E2C1574();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29E1F9150()
{
  sub_29E1F9288();
  sub_29E1F93A8();
  sub_29E2C2BC4();
  sub_29E1F9448(255);
  sub_29E1F9F0C();
  sub_29DE9DE68();
  swift_getOpaqueTypeConformance2();
  sub_29E1F9CE0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
  swift_getOpaqueTypeConformance2();
  return sub_29E2C1754();
}

void sub_29E1F9288()
{
  if (!qword_2A181F9E0)
  {
    sub_29E1F93A8();
    sub_29E2C2BC4();
    sub_29E1F9448(255);
    sub_29E1F9F0C();
    sub_29DE9DE68();
    swift_getOpaqueTypeConformance2();
    sub_29E1F9CE0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F9E0);
    }
  }
}

void sub_29E1F93A8()
{
  if (!qword_2A181F9E8)
  {
    sub_29E1F9448(255);
    sub_29E1F9F0C();
    sub_29DE9DE68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181F9E8);
    }
  }
}

void sub_29E1F9470()
{
  if (!qword_2A181F9F8)
  {
    sub_29E1F94F8();
    sub_29E046140();
    sub_29E1F9D28();
    v0 = sub_29E2C21D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F9F8);
    }
  }
}

void sub_29E1F94F8()
{
  if (!qword_2A181FA00)
  {
    sub_29E1F9560();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FA00);
    }
  }
}

void sub_29E1F9560()
{
  if (!qword_2A181FA08)
  {
    sub_29E1F9B28(255, &qword_2A181B128, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9A40]);
    sub_29E1F9620(255);
    sub_29E1145C4();
    sub_29E046140();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FA08);
    }
  }
}

void sub_29E1F96D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E1F9744()
{
  if (!qword_2A181FA28)
  {
    sub_29E1F71B8(255, &qword_2A181FA30, sub_29E1F97D8, MEMORY[0x29EDBCC28]);
    sub_29E1F9B78();
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FA28);
    }
  }
}

void sub_29E1F97D8()
{
  if (!qword_2A181FA38)
  {
    sub_29E1F9850();
    sub_29E1F99C8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181FA38);
    }
  }
}

void sub_29E1F9850()
{
  if (!qword_2A181FA40)
  {
    sub_29E1F71B8(255, &qword_2A181FA48, sub_29E1F98E4, MEMORY[0x29EDBCC28]);
    sub_29E1F9940();
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FA40);
    }
  }
}

void sub_29E1F98E4()
{
  if (!qword_2A181FA50)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181FA50);
    }
  }
}

unint64_t sub_29E1F9940()
{
  result = qword_2A181FA58;
  if (!qword_2A181FA58)
  {
    sub_29E1F71B8(255, &qword_2A181FA48, sub_29E1F98E4, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA58);
  }

  return result;
}

void sub_29E1F99F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1F9A9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29E1F9B28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E1F9B78()
{
  result = qword_2A181FA70;
  if (!qword_2A181FA70)
  {
    sub_29E1F71B8(255, &qword_2A181FA30, sub_29E1F97D8, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA70);
  }

  return result;
}

unint64_t sub_29E1F9C00()
{
  result = qword_2A181FA78;
  if (!qword_2A181FA78)
  {
    sub_29E1F969C(255);
    sub_29E1F9CE0(&qword_2A181FA80, sub_29E1F9744);
    sub_29E1F9CE0(&qword_2A18183C8, sub_29DED6D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA78);
  }

  return result;
}

uint64_t sub_29E1F9CE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E1F9D28()
{
  result = qword_2A181FA88;
  if (!qword_2A181FA88)
  {
    sub_29E1F94F8();
    sub_29E1F9DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA88);
  }

  return result;
}

unint64_t sub_29E1F9DB4()
{
  result = qword_2A181FA90;
  if (!qword_2A181FA90)
  {
    sub_29E1F9560();
    sub_29E1F9E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA90);
  }

  return result;
}

unint64_t sub_29E1F9E2C()
{
  result = qword_2A181FA98;
  if (!qword_2A181FA98)
  {
    sub_29E1F9620(255);
    sub_29E1F969C(255);
    sub_29E1F9C00();
    swift_getOpaqueTypeConformance2();
    sub_29E1F9CE0(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FA98);
  }

  return result;
}

unint64_t sub_29E1F9F0C()
{
  result = qword_2A181FAA0;
  if (!qword_2A181FAA0)
  {
    sub_29E1F9448(255);
    sub_29E1F9CE0(&qword_2A181FAA8, sub_29E1F9470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FAA0);
  }

  return result;
}

uint64_t sub_29E1F9FC4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_29E1FA060(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PregnancyStartDateMethodInputPickerSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29E1FA0DC()
{
  v1 = (type metadata accessor for PregnancyStartDateMethodInputPickerSheet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_29E1F71B8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  sub_29E1F71B8(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_29E2C1584();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E1FA28C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PregnancyStartDateMethodInputPickerSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E1F8124(a1, v6, a2);
}

void sub_29E1FA30C()
{
  if (!qword_2A181FAB0)
  {
    sub_29E1F71B8(255, &qword_2A181FA30, sub_29E1F97D8, MEMORY[0x29EDBCC28]);
    v0 = sub_29E2C15D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FAB0);
    }
  }
}

unint64_t sub_29E1FA3A4()
{
  result = qword_2A181D220;
  if (!qword_2A181D220)
  {
    sub_29E1F71B8(255, &qword_2A181D218, MEMORY[0x29EDBC748], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D220);
  }

  return result;
}

uint64_t sub_29E1FA42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1FA494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1FA4F4(uint64_t a1)
{
  sub_29E1F9850();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E1FA550()
{
  if (!qword_2A181FAC0)
  {
    sub_29E2C1624();
    sub_29E1F9288();
    sub_29E1F93A8();
    sub_29E2C2BC4();
    sub_29E1F9448(255);
    sub_29E1F9F0C();
    sub_29DE9DE68();
    swift_getOpaqueTypeConformance2();
    sub_29E1F9CE0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E2C1764();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FAC0);
    }
  }
}

BOOL sub_29E1FA6A0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

id sub_29E1FA6D0()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_2A181FAC8 = result;
  return result;
}

id sub_29E1FA70C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_saveNewFactorAndDismiss];
    [v4 setEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E1FA7A8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelAndDismiss];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29E1FA830()
{
  v1 = sub_29E1FA70C();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow;
  [v1 setEnabled_];

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while ((*(v7 + v6) & 1) == 0)
    {
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    if ((*(v0 + v2) & 0xF7) == 0)
    {
      sub_29E20045C(v6);
    }
  }

  else
  {
LABEL_5:
    if (*(v0 + v2) - 1 <= 1)
    {
      sub_29E20022C();
    }
  }
}

void sub_29E1FA8F8(void *a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_29E2C0514();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDB9BC8];
  v7 = MEMORY[0x29EDC9C68];
  sub_29E203E58(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow] = 8;
  v15 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected];
  *v15 = 0;
  v15[8] = 1;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedDateRangeRow] = 8;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections] = &unk_2A24AF658;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows] = &unk_2A24AF680;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows] = &unk_2A24AF6A8;
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
  sub_29E2BCBA4();
  sub_29E2BCA84();
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_launchSource] = 2;
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_manualEntryItemContraceptive;
  *&v2[v17] = [objc_allocWithZone(type metadata accessor for ManualEntryItem()) init];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_providedHealthStore] = a1;
  sub_29E204064(v54, v10, &unk_2A1A62850, v6, v7, sub_29E203E58);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v18 = a1;
    sub_29E2040E4(v10, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68], sub_29E203E58);
    v19 = 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    swift_beginAccess();
    v20 = *(v12 + 24);
    v21 = a1;
    v20(&v2[v16], v14, v11);
    swift_endAccess();
    (*(v12 + 8))(v14, v11);
    v19 = 1;
  }

  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDateLocked] = v19;
  v22 = type metadata accessor for AddCycleFactorTableViewController();
  v56.receiver = v2;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, sel_initWithStyle_, 2);
  type metadata accessor for ManualEntryContraceptiveTypeDataSource();
  v24 = swift_allocObject();
  v24[3] = 0;
  swift_unknownObjectWeakInit();
  v24[5] = 0;
  v24[6] = 0;
  v24[3] = &off_2A24BF288;
  v24[4] = 0;
  swift_unknownObjectWeakAssign();
  *&v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource] = v24;
  v25 = v23;

  *(*&v25[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_manualEntryItemContraceptive] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource + 8) = &off_2A24B4B38;
  swift_unknownObjectWeakAssign();

  v26 = v25;
  v27 = [v26 tableView];
  if (!v27)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  type metadata accessor for NewFactorTypeTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = sub_29E2C33A4();
  [v28 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v30];

  v31 = [v26 tableView];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  type metadata accessor for PickerSelectLoggingCell();
  v33 = swift_getObjCClassFromMetadata();
  v34 = sub_29E2C33A4();
  [v32 registerClass:v33 forCellReuseIdentifier:v34];

  v35 = [v26 tableView];
  if (!v35)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = v35;
  type metadata accessor for DatePickerTableViewCell();
  v37 = swift_getObjCClassFromMetadata();
  v38 = sub_29E2C33A4();
  [v36 registerClass:v37 forCellReuseIdentifier:v38];

  v39 = [v26 tableView];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    return;
  }

  type metadata accessor for FootnoteFooterView();
  v40 = swift_getObjCClassFromMetadata();
  v41 = sub_29E2C33A4();
  [v39 registerClass:v40 forHeaderFooterViewReuseIdentifier:v41];

  v42 = v51;
  sub_29E2C04B4();
  v43 = v26;
  v44 = sub_29E2C0504();
  v45 = sub_29E2C3A34();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v46 = 136446210;
    v55[3] = swift_getObjectType();
    sub_29E203EBC();
    v48 = sub_29E2C3424();
    v50 = sub_29DFAA104(v48, v49, v55);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_29DE74000, v44, v45, "[%{public}s] Initializing", v46, 0xCu);
    sub_29DE93B3C(v47);
    MEMORY[0x29ED82140](v47, -1, -1);
    MEMORY[0x29ED82140](v46, -1, -1);
  }

  sub_29E2040E4(v54, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68], sub_29E203E58);
  (*(v52 + 8))(v42, v53);
}

void sub_29E1FB104()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v11[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  v10 = sub_29E2C33A4();

  [v0 setTitle_];

  sub_29E1FC8C8();
}

id sub_29E1FB360()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v36 - v11;
  if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected + 8])
  {
    sub_29E2C04B4();
    v13 = v1;
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      v44[0] = swift_getObjectType();
      sub_29E203EBC();
      v18 = sub_29E2C3424();
      v20 = sub_29DFAA104(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s]: No factor row selected to save", v16, 0xCu);
      sub_29DE93B3C(v17);
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return [v13 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v39 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected];
    v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
    swift_beginAccess();
    v40 = *(v7 + 16);
    v40(v12, &v1[v22], v6);
    sub_29E2BCA84();
    sub_29E203F68(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
    v23 = sub_29E2C3304();
    v24 = *(v7 + 8);
    v24(v9, v6);
    v24(v12, v6);
    if ((v23 & 1) == 0)
    {
      v40(v12, &v1[v22], v6);
      sub_29E15177C(v9);
      v24(v12, v6);
      swift_beginAccess();
      (*(v7 + 40))(&v1[v22], v9, v6);
      swift_endAccess();
    }

    v38 = objc_opt_self();
    v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
    swift_beginAccess();
    v37 = v22;
    v26 = v40;
    v40(v12, &v1[v25], v6);
    sub_29E15177C(v9);
    v24(v12, v6);
    v27 = sub_29E2BCB04();
    v24(v9, v6);
    v26(v12, &v1[v37], v6);
    v28 = sub_29E2BCB04();
    v24(v12, v6);
    v29 = [v38 hkmc:v39 categorySampleWithCycleFactor:v27 startDate:v28 endDate:?];

    sub_29E1FB9C8(v44);
    v30 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_providedHealthStore];
    sub_29E204064(v44, v42, &unk_2A181DF60, &unk_2A181DF68, &protocol descriptor for AnalyticsMetric, sub_29DEF964C);
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    *(v31 + 24) = v29;
    v32 = v42[1];
    *(v31 + 32) = v42[0];
    *(v31 + 48) = v32;
    *(v31 + 64) = v43;
    aBlock[4] = sub_29E2040D8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24BF568;
    v33 = _Block_copy(aBlock);
    v34 = v1;
    v35 = v29;

    [v30 saveObject:v35 withCompletion:v33];
    _Block_release(v33);
    [v34 dismissViewControllerAnimated:1 completion:0];

    return sub_29E2040E4(v44, &unk_2A181DF60, &unk_2A181DF68, &protocol descriptor for AnalyticsMetric, sub_29DEF964C);
  }
}

uint64_t sub_29E1FB9C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_29E2C31A4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_29E2BCC94();
  v5 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E2BCEA4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v39 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v36[-v11];
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v38 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v36[-v17];
  v43 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected);
  v19 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected + 8);
  v37 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_launchSource);
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v13;
  v23 = *(v14 + 16);
  v23(v18, v21, v13);
  v24 = v45;
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C78], v45);
  sub_29E2BCCA4();
  (*(v5 + 8))(v7, v24);
  if ((v19 & 1) != 0 || (v43 - 1) > 8)
  {
    (*(v46 + 8))(v12, v47);
    result = (*(v14 + 8))(v18, v22);
    v35 = v44;
    *(v44 + 32) = 0;
    *v35 = 0u;
    v35[1] = 0u;
  }

  else
  {
    LODWORD(v43) = byte_29E2E62D2[v43 - 1];
    v25 = v12;
    v26 = sub_29E2BCD84();
    v45 = HKMCTodayIndex();

    v23(v38, v18, v22);
    v27 = v22;
    v29 = v46;
    v28 = v47;
    (*(v46 + 16))(v39, v25, v47);
    v30 = v40;
    sub_29E2C3144();
    v31 = sub_29E2C3164();
    (*(v41 + 8))(v30, v42);
    (*(v29 + 8))(v25, v28);
    result = (*(v14 + 8))(v18, v27);
    v33 = v45 - v31;
    if (__OFSUB__(v45, v31))
    {
      __break(1u);
    }

    else
    {
      v34 = v44;
      *(v44 + 24) = &type metadata for LoggedFactorDataMetric;
      *(v34 + 32) = &off_2A24BA450;
      *v34 = v43;
      *(v34 + 1) = 1;
      *(v34 + 2) = v37;
      *(v34 + 8) = v33;
    }
  }

  return result;
}

void sub_29E1FBE68(char a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v69 = a5;
  v9 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v9);
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v65 - v15;
  if (a1)
  {
    sub_29E2C04B4();
    v17 = a4;
    v18 = a3;
    v19 = sub_29E2C0504();
    v20 = sub_29E2C3A34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v21 = 136446722;
      ObjectType = swift_getObjectType();
      sub_29E203EBC();
      v22 = sub_29E2C3424();
      v67 = v10;
      v24 = sub_29DFAA104(v22, v23, aBlock);
      v68 = v9;
      v25 = v24;

      *(v21 + 4) = v25;
      v65 = v11;
      *(v21 + 12) = 2082;
      ObjectType = v17;
      sub_29DF60AA4();
      v26 = v17;
      v27 = sub_29E2C3464();
      v29 = sub_29DFAA104(v27, v28, aBlock);

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = [v26 startDate];
      sub_29E2BCB44();

      v31 = sub_29E2C3464();
      v33 = sub_29DFAA104(v31, v32, aBlock);

      *(v21 + 24) = v33;
      _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s]: Saved factor %{public}s with startDate %{public}s", v21, 0x20u);
      v34 = v66;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v21, -1, -1);

      (*(v65 + 8))(v13, v67);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    sub_29E204064(v69, aBlock, &unk_2A181DF60, &unk_2A181DF68, &protocol descriptor for AnalyticsMetric, sub_29DEF964C);
    v59 = v71;
    if (v71)
    {
      v60 = v72;
      sub_29DE966D4(aBlock, v71);
      sub_29DE99D24(v59, v60);
      sub_29DE93B3C(aBlock);
    }

    else
    {
      sub_29E2040E4(aBlock, &unk_2A181DF60, &unk_2A181DF68, &protocol descriptor for AnalyticsMetric, sub_29DEF964C);
    }

    v61 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
    v62 = swift_allocObject();
    *(v62 + 16) = v18;
    v72 = sub_29E204144;
    v73 = v62;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    v71 = &unk_2A24BF5B8;
    v63 = _Block_copy(aBlock);
    v64 = v18;

    [v61 forceNanoSyncWithOptions:0 completion:v63];

    _Block_release(v63);
  }

  else
  {
    v68 = v9;
    sub_29E2C04B4();
    v35 = a4;
    v36 = a3;
    v37 = a2;
    v38 = sub_29E2C0504();
    v39 = sub_29E2C3A14();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v40 = 136446978;
      ObjectType = swift_getObjectType();
      sub_29E203EBC();
      v41 = sub_29E2C3424();
      v43 = sub_29DFAA104(v41, v42, aBlock);
      v67 = v10;
      v44 = v43;

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      ObjectType = v35;
      sub_29DF60AA4();
      v45 = v35;
      v46 = sub_29E2C3464();
      v48 = sub_29DFAA104(v46, v47, aBlock);

      *(v40 + 14) = v48;
      *(v40 + 22) = 2082;
      v49 = [v45 startDate];
      sub_29E2BCB44();

      v50 = sub_29E2C3464();
      v52 = v11;
      v53 = sub_29DFAA104(v50, v51, aBlock);

      *(v40 + 24) = v53;
      *(v40 + 32) = 2082;
      ObjectType = a2;
      v54 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v55 = sub_29E2C3424();
      v57 = sub_29DFAA104(v55, v56, aBlock);

      *(v40 + 34) = v57;
      _os_log_impl(&dword_29DE74000, v38, v39, "[%{public}s]: Failed to save factor %{public}s with startDate %{public}s with error: %{public}s", v40, 0x2Au);
      v58 = v69;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v58, -1, -1);
      MEMORY[0x29ED82140](v40, -1, -1);

      (*(v52 + 8))(v16, v67);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }
  }
}

uint64_t sub_29E1FC57C(char a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &ObjectType - v10;
  if (a1)
  {
    sub_29E2C04B4();
    v12 = a3;
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29E203EBC();
      v17 = sub_29E2C3424();
      v19 = sub_29DFAA104(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Forcing a nano sync after saving a sample", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_29E2C04B4();
    v21 = a3;
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29E203EBC();
      v26 = sub_29E2C3424();
      v28 = sub_29DFAA104(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] Error forcing a nano sync after saving a sample", v24, 0xCu);
      sub_29DE93B3C(v25);
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_29E1FC8C8()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [v1 navigationItem];
    v6 = sub_29E1FA70C();
    [v5 setRightBarButtonItem_];

    v7 = [v1 navigationItem];
    v8 = sub_29E1FA7A8();
    [v7 setLeftBarButtonItem_];

    v9 = qword_2A1A60ED8;
    v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton];
    if (v9 != -1)
    {
      swift_once();
    }

    swift_bridgeObjectRetain_n();
    MEMORY[0x29ED7FCC0](0x6F7463614677654ELL, 0xED00006464412E72);
    v11 = sub_29E2C33A4();

    [v10 setAccessibilityIdentifier_];

    v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton];
    MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E301500);
    v13 = sub_29E2C33A4();

    [v12 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E1FCB98(uint64_t a1)
{
  v3 = v1;
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  v165 = v5;
  v166 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v156 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v156 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v156 - v16;
  v18 = sub_29E2BCFA4();
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_110;
  }

  v20 = *(v1 + v19);
  if (v18 >= *(v20 + 16))
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v21 = *(v20 + v18 + 32);
  v22 = sub_29E2BCF64();
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v23 = *&v2[v1];
  if (v22 < *(v23 + 16))
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v23 = *&v2[v1];
  if (v22 >= *(v23 + 16))
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_9:
  LODWORD(v23) = *(v23 + v22 + 32);
  if (v23 > 3)
  {
    goto LABEL_17;
  }

  if (v23 >= 3)
  {
    v11 = 0xD000000000000011;
    v46 = sub_29E2C33A4();
    v47 = sub_29E2BCF24();
    v48 = [a1 dequeueReusableCellWithIdentifier:v46 forIndexPath:v47];

    type metadata accessor for PickerSelectLoggingCell();
    a1 = swift_dynamicCastClassUnconditional();
    v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker;
    v50 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_manualEntryItemContraceptive;
    [*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker) setDataSource_];
    [*(a1 + v49) setDelegate_];
    [*(a1 + v49) selectRow:0 inComponent:0 animated:0];
    v51 = *(a1 + v49);
    v52 = objc_opt_self();
    v53 = v51;
    v54 = [v52 secondarySystemGroupedBackgroundColor];
    [v53 setBackgroundColor_];

    v55 = qword_2A1A60ED8;
    v2 = v48;
    if (v55 == -1)
    {
LABEL_50:
      v169 = xmmword_2A1A67E58;
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](v11 + 25, 0x800000029E301490);
LABEL_107:
      v142 = sub_29E2C33A4();

      [a1 setAccessibilityIdentifier_];
      goto LABEL_108;
    }

LABEL_122:
    swift_once();
    goto LABEL_50;
  }

  v24 = sub_29E2BCFA4();
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_114;
  }

  v25 = *(v1 + v19);
  if (v24 >= *(v25 + 16))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    swift_once();
LABEL_99:
    v168 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E3014E0);
    if (v3 > 1u)
    {
      if (v3 == 2)
      {
        v154 = 0x800000029E3019A0;
        v155 = (v14 + 2);
      }

      else
      {
        v154 = 0xEB00000000657365;
        v155 = 0x6854666F656E6F4ELL;
      }
    }

    else if (v3)
    {
      v154 = 0xE900000000000067;
      v155 = 0x6E6974617463614CLL;
    }

    else
    {
      v154 = 0xE800000000000000;
      v155 = 0x746E616E67657250;
    }

    MEMORY[0x29ED7FCC0](v155, v154);

    goto LABEL_107;
  }

  v26 = *(v25 + v24 + 32);
  v27 = sub_29E2BCF64();
  if ((v26 & 1) == 0)
  {
    goto LABEL_32;
  }

  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_118;
  }

  v23 = *&v2[v3];
  if (v27 < *(v23 + 16))
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_17:
  if (v23 > 5)
  {
    goto LABEL_25;
  }

  if (v23 != 4)
  {
    v164 = v11;
    v56 = v17;
    v57 = sub_29E2C33A4();
    v58 = [a1 dequeueReusableCellWithIdentifier_];

    if (!v58)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    type metadata accessor for DatePickerTableViewCell();
    v163 = v58;
    v59 = swift_dynamicCastClassUnconditional();
    v60 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
    v61 = *&v59[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker];
    v62 = v56;
    sub_29E2BCA74();
    v63 = sub_29E2BCB04();
    v64 = v166;
    v65 = v166 + 8;
    v66 = *(v166 + 8);
    v66(v62, v165);
    [v61 setMinimumDate_];

    v161 = v59;
    v162 = v60;
    v159 = *&v59[v60];
    sub_29E2BCBA4();
    v67 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
    swift_beginAccess();
    v70 = *(v64 + 16);
    v68 = v64 + 16;
    v69 = v70;
    v157 = v67;
    v71 = v3 + v67;
    v73 = v164;
    v72 = v165;
    v70(v164, v71, v165);
    LOBYTE(v63) = sub_29E2BCB24();
    v74 = v73;
    v75 = v72;
    v76 = v62;
    v66(v74, v75);
    v164 = v66;
    v160 = v65;
    v66(v62, v75);
    if (v63)
    {
      sub_29E2BCBA4();
    }

    else
    {
      v69(v14, v3 + v157, v75);
    }

    v158 = v69;
    v166 = v68;
    v93 = sub_29E2BCB04();
    v94 = v14;
    v95 = v164;
    (v164)(v94, v75);
    v96 = v159;
    [v159 setMaximumDate_];

    v97 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
    swift_beginAccess();
    v69(v76, v3 + v97, v75);
    v98 = v76;
    a1 = v161;
    v99 = v162;
    v100 = v75;
    v101 = *&v161[v162];
    v102 = sub_29E2BCB04();
    [v101 setDate_];

    v95(v98, v100);
    v103 = *(a1 + v99);
    v158(v98, v3 + v97, v100);
    v104 = v103;
    v105 = sub_29E2BCB04();
    v95(v98, v100);
    [v104 setDate_];

    *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate + 8) = &off_2A24BF278;
    swift_unknownObjectWeakAssign();
    v106 = qword_2A1A60ED8;
    v2 = v163;
    if (v106 != -1)
    {
      swift_once();
    }

    v167 = xmmword_2A1A67E58;
    v107 = "NewFactor.Ended.Calendar";
    sub_29E2BF404();
    v108 = 0xD00000000000001ALL;
    goto LABEL_65;
  }

  v28 = sub_29E2BCFA4();
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v29 = *(v3 + v19);
  if (v28 >= *(v29 + 16))
  {
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v30 = *(v29 + v28 + 32);
  v31 = sub_29E2BCF64();
  if ((v30 & 1) == 0)
  {
    v112 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
    swift_beginAccess();
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v23 = *(v3 + v112);
    if (v31 >= *(v23 + 16))
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    goto LABEL_68;
  }

  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v23 = *&v2[v3];
  if (v31 < *(v23 + 16))
  {
LABEL_68:
    v113 = *(v23 + v31 + 32);
    v114 = sub_29E2C33A4();
    v115 = [a1 dequeueReusableCellWithIdentifier_];

    if (v115)
    {
      type metadata accessor for DateTableViewCell();
      v116 = swift_dynamicCastClass();
      if (v116)
      {
        goto LABEL_72;
      }
    }

    v116 = [objc_allocWithZone(type metadata accessor for DateTableViewCell()) init];
LABEL_72:
    v117 = v116;
    v118 = [v117 textLabel];
    if (!v118)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v119 = v118;
    sub_29E1FE050(v113);
    if (v120)
    {
      v121 = sub_29E2C33A4();
    }

    else
    {
      v121 = 0;
    }

    [v119 setText_];

    v132 = [v117 detailTextLabel];
    if (!v132)
    {
      goto LABEL_137;
    }

    v133 = v132;
    v134 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
    swift_beginAccess();
    v135 = v165;
    v136 = v166;
    (*(v166 + 16))(v17, v3 + v134, v165);
    sub_29E1526E8();
    (*(v136 + 8))(v17, v135);
    v137 = sub_29E2C33A4();

    [v133 setText_];

    v138 = [v117 detailTextLabel];
    if (!v138)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v139 = v138;
    v140 = [objc_opt_self() labelColor];
    [v139 setTextColor_];

    v141 = qword_2A1A60ED8;
    v2 = v117;
    if (v141 == -1)
    {
LABEL_89:
      v167 = xmmword_2A1A67E58;
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E3014C0);
      v142 = sub_29E2C33A4();

      [v2 setAccessibilityIdentifier_];

LABEL_108:
      return;
    }

LABEL_125:
    swift_once();
    goto LABEL_89;
  }

  __break(1u);
LABEL_25:
  if (v23 != 6)
  {
    v162 = v8;
    v77 = sub_29E2C33A4();
    v78 = [a1 dequeueReusableCellWithIdentifier_];

    if (!v78)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    type metadata accessor for DatePickerTableViewCell();
    v161 = v78;
    a1 = swift_dynamicCastClassUnconditional();
    v164 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
    v79 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker);
    v80 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
    swift_beginAccess();
    v81 = v166;
    v82 = v166 + 16;
    v163 = *(v166 + 16);
    v83 = v3 + v80;
    v84 = v165;
    (v163)(v17, v83, v165);
    v85 = v79;
    v86 = sub_29E2BCB04();
    v87 = v3;
    v88 = *(v81 + 8);
    v88(v17, v84);
    [v85 setMinimumDate_];

    v89 = *&v164[a1];
    sub_29E2BCBA4();
    v90 = sub_29E2BCB04();
    v88(v17, v84);
    [v89 setMaximumDate_];

    v91 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
    swift_beginAccess();
    v166 = v82;
    (v163)(v17, v87 + v91, v84);
    sub_29E2BCA84();
    sub_29E203F68(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
    LOBYTE(v90) = sub_29E2C3304();
    v88(v11, v84);
    v88(v17, v84);
    v92 = v162;
    if (v90)
    {
      sub_29E2BCBA4();
    }

    else
    {
      (v163)(v162, v87 + v91, v84);
    }

    v109 = *&v164[a1];
    v110 = sub_29E2BCB04();
    [v109 setDate_];

    v88(v92, v84);
    *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate + 8) = &off_2A24BF278;
    swift_unknownObjectWeakAssign();
    v111 = qword_2A1A60ED8;
    v2 = v161;
    if (v111 != -1)
    {
      swift_once();
    }

    v167 = xmmword_2A1A67E58;
    v107 = "Factor.Edit.Started";
    sub_29E2BF404();
    v108 = 0xD000000000000018;
LABEL_65:
    MEMORY[0x29ED7FCC0](v108, v107 | 0x8000000000000000);
    goto LABEL_107;
  }

  v32 = sub_29E2BCFA4();
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v33 = *(v3 + v19);
  if (v32 >= *(v33 + 16))
  {
    goto LABEL_124;
  }

  v34 = *(v33 + v32 + 32);
  v27 = sub_29E2BCF64();
  if ((v34 & 1) == 0)
  {
    v122 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
    swift_beginAccess();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v36 = *(v3 + v122);
      if (v27 < *(v36 + 16))
      {
        goto LABEL_77;
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    goto LABEL_129;
  }

  v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_127;
  }

  v36 = *(v3 + v35);
  if (v27 >= *(v36 + 16))
  {
    __break(1u);
LABEL_32:
    v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
    swift_beginAccess();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v23 = *&v2[v3];
      if (v27 < *(v23 + 16))
      {
LABEL_34:
        v14 = 0xD000000000000011;
        v37 = *(v23 + v27 + 32);
        v38 = sub_29E2C33A4();
        v2 = [a1 dequeueReusableCellWithIdentifier_];

        if (v2)
        {
          type metadata accessor for NewFactorTypeTableViewCell();
          a1 = swift_dynamicCastClassUnconditional();
          v39 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel);
          sub_29E1FE050(v37);
          if (v40)
          {
            v41 = sub_29E2C33A4();
          }

          else
          {
            v41 = 0;
          }

          [v39 setText_];

          v42 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow);
          v44 = v42 != 8 && v42 == v37;
          *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_isChecked) = v44;
          [*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView) setHidden_];
          if (v37 <= 2)
          {
            if (v37)
            {
              if (v37 == 1)
              {
                v3 = 1;
              }

              else
              {
                v3 = 3;
              }
            }

            else
            {
              v3 = 2;
            }

            v153 = v2;
            LOBYTE(v3) = sub_29E08D670(v3);
          }

          else
          {
            v45 = v2;
            LOBYTE(v3) = 3;
          }

          if (qword_2A1A60ED8 == -1)
          {
            goto LABEL_99;
          }

          goto LABEL_116;
        }

        goto LABEL_132;
      }

      goto LABEL_119;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

LABEL_77:
  v123 = *(v36 + v27 + 32);
  v124 = sub_29E2C33A4();
  v125 = [a1 dequeueReusableCellWithIdentifier_];

  if (v125)
  {
    type metadata accessor for EndDateTableViewCell();
    v126 = swift_dynamicCastClass();
    if (v126)
    {
      goto LABEL_81;
    }
  }

  v126 = [objc_allocWithZone(type metadata accessor for EndDateTableViewCell()) init];
LABEL_81:
  v127 = v126;
  v128 = [v127 textLabel];
  if (!v128)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v129 = v128;
  sub_29E1FE050(v123);
  if (v130)
  {
    v131 = sub_29E2C33A4();
  }

  else
  {
    v131 = 0;
  }

  [v129 setText_];

  v143 = [v127 detailTextLabel];
  if (!v143)
  {
    goto LABEL_138;
  }

  v144 = v143;
  v145 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
  swift_beginAccess();
  v146 = v165;
  v147 = v166;
  (*(v166 + 16))(v17, v3 + v145, v165);
  sub_29E1526E8();
  (*(v147 + 8))(v17, v146);
  v148 = sub_29E2C33A4();

  [v144 setText_];

  v149 = [v127 detailTextLabel];
  if (v149)
  {
    v150 = v149;

    v151 = [objc_opt_self() labelColor];
    [v150 setTextColor_];

    *&v127[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate + 8] = &off_2A24BF268;
    swift_unknownObjectWeakAssign();
    v152 = qword_2A1A60ED8;
    v2 = v127;
    if (v152 != -1)
    {
      swift_once();
    }

    v167 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x6F7463614677654ELL, 0xEF6465646E452E72);
    v142 = sub_29E2C33A4();

    [v2 setAccessibilityIdentifier_];
    goto LABEL_108;
  }

LABEL_140:
  __break(1u);
}

uint64_t sub_29E1FE050(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        return v10;
      }
    }

    else if (a1 != 4)
    {
      return v10;
    }
  }

  else if (a1 > 1u && a1 != 2)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

void sub_29E1FE41C(void *a1, unint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v2 + v13);
  if (v2[2] <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v2 + a2 + 32);
  sub_29E2BF404();
  v15 = sub_29E2C33A4();
  v16 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (v14)
  {
    if (v16)
    {
LABEL_7:

      type metadata accessor for FootnoteFooterView();
      v2 = swift_dynamicCastClassUnconditional();
      sub_29E2C3314();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_2A1A62788 == -1)
      {
LABEL_8:
        v17 = qword_2A1A67F80;
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v7 + 8))(v12, v6);
        v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView;
        v19 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView);
        v20 = sub_29E2C33A4();
        [v19 setText_];

        v21 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_highlightedText);
        *v21 = 0;
        v21[1] = 0;

        v22 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_tapCompletion);
        *v22 = nullsub_1;
        v22[1] = 0;

        [*(v2 + v18) setSelectable_];
        sub_29DFA0EA4();
        [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_headerSeparator) setHidden_];

        v23 = [v2 contentView];
        v24 = [objc_opt_self() clearColor];
        [v23 setBackgroundColor_];

        return;
      }

LABEL_11:
      swift_once();
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (v16)
  {
    goto LABEL_7;
  }

  __break(1u);
}

void sub_29E1FE89C(void *a1)
{
  v2 = v1;
  v95 = a1;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v93 - v7;
  v9 = sub_29E2BCFB4();
  v94 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v93 - v13;
  v15 = sub_29E2BCFA4();
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v17 = *(v2 + v16);
  if (v15 >= *(v17 + 16))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v18 = *(v17 + v15 + 32);
  v19 = sub_29E2BCFA4();
  v20 = *(v2 + v16);
  if (v18 != 1)
  {
    goto LABEL_10;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v19 >= *(v20 + 16))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v21 = *(v20 + v19 + 32);
  v22 = sub_29E2BCF64();
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  v19 = swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  v20 = *(v2 + v23);
  if (v22 < *(v20 + 16))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_10:
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v19 >= *(v20 + 16))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v24 = *(v20 + v19 + 32);
  v22 = sub_29E2BCF64();
  v11 = &qword_2A181F000;
  if ((v24 & 1) == 0)
  {
    v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
    swift_beginAccess();
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v26 = *(v2 + v35);
    if (v22 >= *(v26 + 16))
    {
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_26:
    v36 = v26 + v22;
    v37 = *(v36 + 32);
    if (!*(v36 + 32))
    {
      sub_29E202D2C();
    }

    v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow;
    v39 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow);
    if (v39 != 8 && v37 == v39)
    {
LABEL_50:
      v58 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
      if (v37 != 2)
      {
        swift_beginAccess();
        v63 = *(v2 + v58);
        v64 = *(v63 + 16);
        v65 = (v63 + 32);
        while (v64)
        {
          v66 = *v65++;
          --v64;
          if (v66 == 3)
          {
LABEL_58:
            sub_29E200B5C();
            return;
          }
        }

        return;
      }

      swift_beginAccess();
      v59 = *(v2 + v58);
      v60 = *(v59 + 16);
      v61 = (v59 + 32);
      while (v60)
      {
        v62 = *v61++;
        --v60;
        if (v62 == 3)
        {
          goto LABEL_58;
        }
      }

      v67 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected;
      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected + 8) == 1)
      {
        v68 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource);
        if (!v68)
        {
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        v69 = *(v68 + 48);
        if (v69 > 6)
        {
          goto LABEL_110;
        }

        v70 = *(&unk_2A24AEA68 + v69 + 4);
        *v67 = v70;
        *(v67 + 8) = 0;
      }

      else
      {
        v70 = *v67;
      }

      if ((v70 - 3) >= 7)
      {
        if ((v70 - 1) >= 2)
        {
LABEL_116:
          sub_29E2C4724();
          __break(1u);
          return;
        }

        v71 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource);
        if (!v71)
        {
          goto LABEL_113;
        }

        v72 = *(v71 + 48);
        if (v72 > 6)
        {
          goto LABEL_111;
        }

        v70 = *(&unk_2A24AEA68 + v72 + 4);
        *v67 = v70;
        *(v67 + 8) = 0;
      }

      sub_29E2006B4(v70, 0);
      v73 = sub_29E2BCF24();
      v74 = [v95 cellForRowAtIndexPath_];

      if (v74)
      {
        type metadata accessor for NewFactorTypeTableViewCell();
        v75 = swift_dynamicCastClass();
        if (v75 && (v76 = v75, swift_unknownObjectWeakLoadStrong()))
        {
          type metadata accessor for ManualEntryContraceptiveTypeDataSource();
          if (swift_dynamicCastClass())
          {
            if ((*(v67 + 8) & 1) == 0)
            {
              v77 = *v67;
              v78 = vdupq_n_s64(*v67);
              if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2A24AEA88, v78), vceqq_s64(*&qword_2A24AEA98, v78)))) & 1) != 0 || qword_2A24AEAA8 == *v67 || qword_2A24AEAB0 == *v67 || qword_2A24AEAB8 == v77)
              {
                v79 = *(v76 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel);
                sub_29E08D1FC(v77);
                v80 = sub_29E2C33A4();

                [v79 setText_];
              }
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      return;
    }

    sub_29E202604();
    v40 = sub_29E2BCF24();
    v41 = [v95 cellForRowAtIndexPath_];

    if (v41)
    {
      type metadata accessor for NewFactorTypeTableViewCell();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        *(v42 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_isChecked) = 1;
        [*(v42 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView) setHidden_];

        if (v37 <= 2)
        {
          if (v37)
          {
            if (v37 != 1)
            {
              goto LABEL_49;
            }

            v44 = 0;
            v43 = 1;
          }

          else
          {
            v44 = 0;
            v43 = 2;
          }
        }

        else
        {
          v43 = 0;
          v44 = 1;
        }

        v45 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected;
        *v45 = v43;
        *(v45 + 8) = v44;
      }

      else
      {
      }
    }

LABEL_49:
    *(v2 + v38) = v37;
    sub_29E1FA830();
    goto LABEL_50;
  }

  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v26 = *(v2 + v25);
  if (v22 < *(v26 + 16))
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_16:
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v20 = *(v2 + v27);
  if (v22 >= *(v20 + 16))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

LABEL_18:
  v28 = *(v20 + v22 + 32);
  if (v28 == 6)
  {
    v46 = sub_29E2BCF24();
    v47 = [v95 cellForRowAtIndexPath_];

    if (v47)
    {
      type metadata accessor for EndDateTableViewCell();
      v48 = swift_dynamicCastClass();
      if (v48)
      {
        v49 = v48;
        v50 = sub_29DF5C458();
        [v49 setAccessoryView_];

        v47 = v50;
      }
    }

    v51 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    swift_beginAccess();
    v52 = *(v2 + v51);
    v53 = *(v52 + 16);
    v54 = (v52 + 32);
    while (v53)
    {
      v55 = *v54++;
      --v53;
      if (v55 == 7)
      {
        v34 = 7;
LABEL_43:
        sub_29E2018E4(v34);
        return;
      }
    }

    sub_29E201070(7);
    sub_29E202904(6u, v5);
    v57 = v94;
    if ((*(v94 + 48))(v5, 1, v9) == 1)
    {
      sub_29E2040E4(v5, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
      return;
    }

    (*(v57 + 32))(v11, v5, v9);
    v87 = sub_29E2BCF24();
    v88 = [v95 cellForRowAtIndexPath_];

    if (v88)
    {
      type metadata accessor for DateTableViewCell();
      v89 = swift_dynamicCastClass();
      if (v89)
      {
        v90 = [v89 detailTextLabel];
        if (!v90)
        {
          goto LABEL_115;
        }

        v91 = v90;
        v92 = [objc_opt_self() systemBlueColor];
        [v91 setTextColor_];
      }

      else
      {
      }
    }

    (*(v94 + 8))(v11, v9);
  }

  else if (v28 == 4)
  {
    v29 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    swift_beginAccess();
    v30 = *(v2 + v29);
    v31 = *(v30 + 16);
    v32 = (v30 + 32);
    while (v31)
    {
      v33 = *v32++;
      --v31;
      if (v33 == 5)
      {
        v34 = 5;
        goto LABEL_43;
      }
    }

    sub_29E201070(5);
    sub_29E202904(4u, v8);
    v56 = v94;
    if ((*(v94 + 48))(v8, 1, v9) == 1)
    {
      sub_29E2040E4(v8, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
      return;
    }

    (*(v56 + 32))(v14, v8, v9);
    v81 = sub_29E2BCF24();
    v82 = [v95 cellForRowAtIndexPath_];

    if (!v82)
    {
      goto LABEL_94;
    }

    type metadata accessor for DateTableViewCell();
    v83 = swift_dynamicCastClass();
    if (!v83)
    {

      goto LABEL_94;
    }

    v84 = [v83 detailTextLabel];
    if (v84)
    {
      v85 = v84;
      v86 = [objc_opt_self() systemBlueColor];
      [v85 setTextColor_];

LABEL_94:
      (*(v94 + 8))(v14, v9);
      return;
    }

    goto LABEL_114;
  }
}

id sub_29E1FF4CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v103 = a2;
  v5 = sub_29E2C0514();
  v102 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v95 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v98 = &v95 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v95 - v16;
  v18 = sub_29E2BCBB4();
  v104 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2BCFB4();
  v105 = *(v21 - 8);
  v106 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v97 = (&v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v23);
  v101 = (&v95 - v24);
  MEMORY[0x2A1C7C4A8](v25);
  v96 = &v95 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v100 = &v95 - v28;
  *&v30 = MEMORY[0x2A1C7C4A8](v29).n128_u64[0];
  v32 = &v95 - v31;
  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_62;
  }

  v34 = result;
  v35 = [result indexPathForCell_];

  if (v35)
  {
    sub_29E2BCF44();

    v36 = sub_29E2BCFA4();
    v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
    result = swift_beginAccess();
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v3 + v37);
      if (v36 < *(v38 + 16))
      {
        v39 = *(v38 + v36 + 32);
        v7 = sub_29E2BCF64();
        if ((v39 & 1) == 0)
        {
          v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
          result = swift_beginAccess();
          if ((v7 & 0x8000000000000000) == 0)
          {
            v40 = *(v3 + v49);
            if (v7 < *(v40 + 16))
            {
              goto LABEL_14;
            }

            goto LABEL_61;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
        result = swift_beginAccess();
        if ((v7 & 0x8000000000000000) == 0)
        {
          v40 = *(v3 + v5);
          if (v7 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_9;
          }

LABEL_14:
          v50 = *(v40 + v7 + 32);
          if (v50 != 7)
          {
            v51 = v106;
            if (v50 != 5)
            {
              return (*(v105 + 8))(v32, v106);
            }

            v52 = v104;
            v101 = *(v104 + 16);
            v101(v20, v103, v18);
            v53 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_startDate;
            swift_beginAccess();
            (*(v52 + 40))(v3 + v53, v20, v18);
            swift_endAccess();
            sub_29E202904(4u, v17);
            v54 = v105;
            v102 = *(v105 + 48);
            if ((v102)(v17, 1, v51) == 1)
            {
              (*(v54 + 8))(v32, v51);
              return sub_29E2040E4(v17, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
            }

            v61 = *(v54 + 32);
            v99 = (v54 + 32);
            v97 = v61;
            v61(v100, v17, v51);
            result = [v3 tableView];
            if (result)
            {
              v62 = result;
              v63 = sub_29E2BCF24();
              v64 = [v62 cellForRowAtIndexPath_];

              v65 = v105;
              v66 = v106;
              if (v64)
              {
                type metadata accessor for DateTableViewCell();
                v67 = swift_dynamicCastClass();
                if (v67)
                {
                  result = [v67 detailTextLabel];
                  if (result)
                  {
                    v68 = result;
                    v101(v20, v3 + v53, v18);
                    sub_29E1526E8();
                    (*(v104 + 8))(v20, v18);
                    v69 = sub_29E2C33A4();

                    [v68 setText_];

                    v12 = v98;
                    sub_29E202904(7u, v98);
                    v70 = v106;
                    if ((v102)(v12, 1, v106) == 1)
                    {

                      v71 = *(v105 + 8);
                      v71(v100, v70);
LABEL_33:
                      v71(v32, v70);
                      return sub_29E2040E4(v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
                    }

                    v81 = v96;
                    v97(v96, v12, v70);
                    result = [v3 tableView];
                    if (result)
                    {
                      v82 = result;
                      v83 = sub_29E2BCF24();
                      v84 = [v82 cellForRowAtIndexPath_];

                      if (v84)
                      {
                        type metadata accessor for DatePickerTableViewCell();
                        v85 = swift_dynamicCastClass();
                        if (v85)
                        {
                          v86 = *(v85 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker);
                          v87 = sub_29E2BCB04();
                          [v86 setMinimumDate_];

                          goto LABEL_51;
                        }
                      }

                      else
                      {
                        v84 = v64;
                      }

LABEL_51:
                      v66 = v106;
                      v80 = *(v105 + 8);
                      v80(v81, v106);
                      v80(v100, v66);
                      return (v80)(v32, v66);
                    }

                    goto LABEL_67;
                  }

                  goto LABEL_65;
                }
              }

              v80 = *(v65 + 8);
              v80(v100, v66);
              return (v80)(v32, v66);
            }

            goto LABEL_63;
          }

          v55 = v104;
          v102 = *(v104 + 16);
          (v102)(v20, v103, v18);
          v56 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
          swift_beginAccess();
          v57 = *(v55 + 40);
          v100 = v56;
          v57(v3 + v56, v20, v18);
          swift_endAccess();
          sub_29E202904(6u, v12);
          v58 = v105;
          v59 = v106;
          v60 = *(v105 + 48);
          if (v60(v12, 1, v106) == 1)
          {
            (*(v58 + 8))(v32, v59);
            return sub_29E2040E4(v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
          }

          v98 = v60;
          v95 = *(v58 + 32);
          v96 = (v58 + 32);
          v95(v101, v12, v59);
          result = [v3 tableView];
          if (!result)
          {
            goto LABEL_64;
          }

          v72 = result;
          v73 = sub_29E2BCF24();
          v74 = [v72 cellForRowAtIndexPath_];

          v66 = v106;
          if (v74)
          {
            type metadata accessor for EndDateTableViewCell();
            v75 = swift_dynamicCastClass();
            if (v75)
            {
              v76 = v75;
              v77 = v74;
              result = [v76 detailTextLabel];
              if (!result)
              {
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

              v78 = result;

              (v102)(v20, &v100[v3], v18);
              sub_29E1526E8();
              (*(v104 + 8))(v20, v18);
              v79 = sub_29E2C33A4();

              [v78 setText_];

              v12 = v99;
              sub_29E202904(5u, v99);
              v70 = v106;
              if ((v98)(v12, 1, v106) == 1)
              {

                v71 = *(v105 + 8);
                v71(v101, v70);
                goto LABEL_33;
              }

              v88 = v97;
              v95(v97, v12, v70);
              result = [v3 tableView];
              if (!result)
              {
LABEL_68:
                __break(1u);
                return result;
              }

              v89 = result;
              v90 = sub_29E2BCF24();
              v91 = [v89 cellForRowAtIndexPath_];

              if (v91)
              {
                type metadata accessor for DatePickerTableViewCell();
                v92 = swift_dynamicCastClass();
                if (v92)
                {
                  v93 = *(v92 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker);
                  v94 = sub_29E2BCB04();
                  [v93 setMaximumDate_];

LABEL_56:
                  v66 = v106;
                  v80 = *(v105 + 8);
                  v80(v88, v106);
                  v80(v101, v66);
                  return (v80)(v32, v66);
                }
              }

              else
              {
                v91 = v77;
              }

              goto LABEL_56;
            }
          }

          v80 = *(v105 + 8);
          v80(v101, v66);
          return (v80)(v32, v66);
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_9:
  sub_29E2C04B4();
  v41 = v3;
  v42 = sub_29E2C0504();
  v43 = sub_29E2C3A14();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v108[0] = v45;
    *v44 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E203EBC();
    v46 = sub_29E2C3424();
    v48 = sub_29DFAA104(v46, v47, v108);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_29DE74000, v42, v43, "[%{public}s] DatePickerTableViewCell does not exist in tableView", v44, 0xCu);
    sub_29DE93B3C(v45);
    MEMORY[0x29ED82140](v45, -1, -1);
    MEMORY[0x29ED82140](v44, -1, -1);
  }

  return (*(v102 + 8))(v7, v5);
}

void sub_29E20022C()
{
  v1 = v0;
  v2 = sub_29E2BCEC4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E202A80();
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  if (*(*&v1[v6] + 16))
  {
    sub_29E14D44C(1, 1, 1);
    swift_endAccess();
    v7 = [v1 tableView];
    if (v7)
    {
      v8 = v7;
      v11[1] = &unk_2A24AF9A0;
      sub_29E203F68(&qword_2A181D490, MEMORY[0x29EDB9D48]);
      v9 = MEMORY[0x29EDC9BA8];
      sub_29E204014(0, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
      sub_29E203454(&qword_2A181D4A0, &qword_2A181B790, v9);
      sub_29E2C43F4();
      v10 = sub_29E2BCEB4();
      (*(v3 + 8))(v5, v2);
      [v8 insertSections:v10 withRowAnimation:5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E20045C(unint64_t a1)
{
  v3 = sub_29E2BCEC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E202A80();
  swift_beginAccess();
  sub_29E06646C(a1);
  swift_endAccess();
  v7 = [v1 tableView];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x29EDC9BA8];
    sub_29E204014(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29E2CAB20;
    *(v10 + 32) = a1;
    v12[1] = v10;
    sub_29E203F68(&qword_2A181D490, MEMORY[0x29EDB9D48]);
    sub_29E204014(0, &qword_2A181B790, v9, MEMORY[0x29EDC9A40]);
    sub_29E203454(&qword_2A181D4A0, &qword_2A181B790, v9);
    sub_29E2C43F4();
    v11 = sub_29E2BCEB4();
    (*(v4 + 8))(v6, v3);
    [v8 deleteSections:v11 withRowAnimation:5];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E2006B4(uint64_t a1, char a2)
{
  v25 = a1;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E202A80();
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
  swift_beginAccess();
  v12 = *&v2[v11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v11] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_29E1456B8(0, *(v12 + 2) + 1, 1, v12);
    *&v2[v11] = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_29E1456B8((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v12[v15 + 32] = 3;
  *&v2[v11] = v12;
  swift_endAccess();
  v16 = [v2 tableView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  sub_29E203E58(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  MEMORY[0x29ED79720](3, 0);
  v18 = sub_29E2C3604();

  [v17 insertRowsAtIndexPaths:v18 withRowAnimation:5];

  if (a2)
  {
    return;
  }

  sub_29E202904(3u, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29E2040E4(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  v19 = [v2 tableView];
  if (!v19)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = sub_29E2BCF24();
  v22 = [v20 cellForRowAtIndexPath_];

  if (v22)
  {
    type metadata accessor for PickerSelectLoggingCell();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      if (xmmword_2A24AEA88 == v25)
      {
        v24 = 0;
LABEL_26:
        [*(v23 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker) selectRow:v24 inComponent:0 animated:{0, v25}];
        goto LABEL_27;
      }

      if (*(&xmmword_2A24AEA88 + 1) == v25)
      {
        v24 = 1;
        goto LABEL_26;
      }

      if (qword_2A24AEA98 == v25)
      {
        v24 = 2;
        goto LABEL_26;
      }

      if (qword_2A24AEAA0 == v25)
      {
        v24 = 3;
        goto LABEL_26;
      }

      if (qword_2A24AEAA8 == v25)
      {
        v24 = 4;
        goto LABEL_26;
      }

      if (qword_2A24AEAB0 == v25)
      {
        v24 = 5;
        goto LABEL_26;
      }

      if (qword_2A24AEAB8 == v25)
      {
        v24 = 6;
        goto LABEL_26;
      }
    }

LABEL_27:
  }

  (*(v8 + 8))(v10, v7);
}

void sub_29E200B5C()
{
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (*(v9 + v8) != 3)
    {
      if (v7 == ++v8)
      {
        return;
      }
    }

    v10 = v0;
    v11 = [v0 tableView];
    if (v11)
    {
      v12 = v11;
      MEMORY[0x29ED79720](v8, 0);
      v13 = sub_29E2BCF24();
      (*(v2 + 8))(v4, v1);
      v14 = [v12 cellForRowAtIndexPath_];

      if (!v14)
      {
        return;
      }

      type metadata accessor for PickerSelectLoggingCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v10 tableView];
      if (v17)
      {
        v18 = v17;
        v19 = swift_allocObject();
        v19[2] = v10;
        v19[3] = v8;
        v19[4] = v16;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_29E203FB0;
        *(v20 + 24) = v19;
        v33 = sub_29E073D74;
        v34 = v20;
        aBlock = MEMORY[0x29EDCA5F8];
        v30 = 1107296256;
        v31 = sub_29E21894C;
        v32 = &unk_2A24BF4C8;
        v21 = _Block_copy(&aBlock);
        v22 = v10;
        v23 = v14;

        v24 = swift_allocObject();
        *(v24 + 16) = v16;
        *(v24 + 24) = v22;
        v33 = sub_29E203FBC;
        v34 = v24;
        aBlock = MEMORY[0x29EDCA5F8];
        v30 = 1107296256;
        v31 = sub_29E1F3494;
        v32 = &unk_2A24BF518;
        v25 = _Block_copy(&aBlock);
        v26 = v22;
        v27 = v23;

        [v18 performBatchUpdates:v21 completion:v25];
        _Block_release(v25);
        _Block_release(v21);

        v14 = v18;
LABEL_11:

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

id sub_29E200EBC(void *a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_29E066514(a2);
  swift_endAccess();
  result = [a1 tableView];
  if (result)
  {
    v7 = result;
    sub_29E203E58(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
    sub_29E2BCFB4();
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    MEMORY[0x29ED79720](a2, 0);
    v8 = sub_29E2C3604();

    [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:3];

    return [*(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker) setAlpha_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E201070(char a1)
{
  v3 = sub_29E2BCBB4();
  v73 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v61 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v61 - v10;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_29E2BCFB4();
  v74 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  sub_29E202A80();
  if (a1 == 7)
  {
    v71 = v17;
    v72 = v14;
    v69 = v11;
    v70 = v8;
    v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    swift_beginAccess();
    v25 = *&v1[v24];
    v26 = *(v25 + 16);
    if (!v26)
    {
      return;
    }

    v27 = 0;
    v28 = v25 + 32;
    while (*(v28 + v27) != 6)
    {
      if (v26 == ++v27)
      {
        return;
      }
    }

    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_36;
    }

    swift_beginAccess();
    if (v26 < v33)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v33 < 0)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v67 = v3;
    v68 = v15;
    sub_29E14D54C(v33, v33, 7);
    swift_endAccess();
    v34 = [v18 tableView];
    if (!v34)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v35 = v34;
    sub_29E203E58(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
    v36 = v74;
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    MEMORY[0x29ED79720](v33, 1);
    v37 = v68;
    v38 = sub_29E2C3604();

    [v35 insertRowsAtIndexPaths:v38 withRowAnimation:3];

    v39 = v72;
    sub_29E202904(6u, v72);
    if ((*(v36 + 48))(v39, 1, v37) == 1)
    {
      sub_29E2040E4(v39, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
      return;
    }

    (*(v36 + 32))(v71, v39, v37);
    v40 = [v18 tableView];
    if (!v40)
    {
      goto LABEL_43;
    }

    v41 = v40;
    v42 = sub_29E2BCF24();
    v43 = [v41 cellForRowAtIndexPath_];

    v44 = v74;
    v45 = v67;
    if (v43)
    {
      type metadata accessor for EndDateTableViewCell();
      v46 = swift_dynamicCastClass();
      if (v46)
      {
        v66 = v43;
        v72 = v46;
        v47 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
        swift_beginAccess();
        v48 = v73;
        v64 = *(v73 + 16);
        v65 = v47;
        v49 = v70;
        v64(v70, &v18[v47], v45);
        sub_29E2BCA84();
        sub_29E203F68(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
        v50 = sub_29E2C3304();
        v51 = *(v48 + 8);
        v51(v5, v45);
        v63 = v48 + 8;
        v62 = v51;
        v51(v49, v45);
        if (v50)
        {
          v52 = v69;
          sub_29E2BCBA4();
          v54 = v64;
          v53 = v65;
        }

        else
        {
          v54 = v64;
          v53 = v65;
          v52 = v69;
          v64(v69, &v18[v65], v45);
        }

        swift_beginAccess();
        (*(v48 + 40))(&v18[v53], v52, v45);
        swift_endAccess();
        v55 = v53;
        v56 = v66;
        v57 = [v72 detailTextLabel];
        v58 = v70;
        if (!v57)
        {
          goto LABEL_44;
        }

        v59 = v57;

        v54(v58, &v18[v55], v45);
        sub_29E1526E8();
        v62(v58, v45);
        v60 = sub_29E2C33A4();

        [v59 setText_];

        (*(v74 + 8))(v71, v37);
        return;
      }
    }

    (*(v44 + 8))(v71, v37);
    return;
  }

  if (a1 == 5)
  {
    v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    swift_beginAccess();
    v20 = *&v1[v19];
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = v20 + 32;
      while (*(v23 + v22) != 4)
      {
        if (v21 == ++v22)
        {
          return;
        }
      }

      v29 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        swift_beginAccess();
        if (v21 >= v29)
        {
          if ((v29 & 0x8000000000000000) == 0)
          {
            sub_29E14D54C(v29, v29, 5);
            swift_endAccess();
            v30 = [v18 tableView];
            if (v30)
            {
              v31 = v30;
              sub_29E203E58(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
              *(swift_allocObject() + 16) = xmmword_29E2CAB20;
              MEMORY[0x29ED79720](v29, 1);
              v32 = sub_29E2C3604();

              [v31 insertRowsAtIndexPaths:v32 withRowAnimation:3];

              return;
            }

            goto LABEL_41;
          }

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }
}

void sub_29E2018E4(char a1)
{
  v2 = v1;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v78 - v8;
  v10 = sub_29E2BCFB4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v78 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v78 - v18;
  if (a1 != 7)
  {
    if (a1 != 5)
    {
      return;
    }

    v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    swift_beginAccess();
    v21 = *&v2[v20];
    v22 = *(v21 + 16);
    if (!v22)
    {
      goto LABEL_18;
    }

    v23 = 0;
    v24 = v21 + 32;
    while (*(v24 + v23) != 5)
    {
      if (v22 == ++v23)
      {
        goto LABEL_18;
      }
    }

    v30 = [v2 tableView];
    if (!v30)
    {
      goto LABEL_53;
    }

    v31 = v30;
    MEMORY[0x29ED79720](v23, 1);
    v32 = sub_29E2BCF24();
    (*(v11 + 8))(v19, v10);
    v33 = [v31 cellForRowAtIndexPath_];

    if (v33)
    {
      type metadata accessor for DatePickerTableViewCell();
      v34 = swift_dynamicCastClass();
      if (v34)
      {
        v35 = v34;
        v80 = [v2 tableView];
        if (!v80)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = v2;
        v36[4] = v23;
        v37 = swift_allocObject();
        v38 = sub_29E20418C;
        *(v37 + 16) = sub_29E20418C;
        *(v37 + 24) = v36;
        v85 = sub_29E073D74;
        v86 = v37;
        aBlock = MEMORY[0x29EDCA5F8];
        v82 = 1107296256;
        v78 = &v83;
        v83 = sub_29E21894C;
        v84 = &unk_2A24BF400;
        v79 = _Block_copy(&aBlock);
        v39 = v33;
        v40 = v2;

        v41 = swift_allocObject();
        *(v41 + 16) = v35;
        v85 = sub_29E203F4C;
        v86 = v41;
        aBlock = MEMORY[0x29EDCA5F8];
        v82 = 1107296256;
        v83 = sub_29E1F3494;
        v84 = &unk_2A24BF450;
        v42 = _Block_copy(&aBlock);
        v78 = v39;

        v43 = v79;
        v44 = v80;
        [v80 performBatchUpdates:v79 completion:v42];
        _Block_release(v42);
        _Block_release(v43);

        v33 = v44;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
LABEL_18:
      v38 = 0;
    }

    sub_29E202904(4u, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_29E2040E4(v9, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
LABEL_44:
      v77 = v38;
      goto LABEL_45;
    }

    (*(v11 + 32))(v16, v9, v10);
    v45 = [v2 tableView];
    if (v45)
    {
      v46 = v45;
      v47 = sub_29E2BCF24();
      v48 = [v46 cellForRowAtIndexPath_];

      if (!v48)
      {
LABEL_43:
        (*(v11 + 8))(v16, v10);
        goto LABEL_44;
      }

      type metadata accessor for DateTableViewCell();
      v49 = swift_dynamicCastClass();
      if (!v49)
      {

        goto LABEL_43;
      }

      v50 = [v49 detailTextLabel];
      if (v50)
      {
        v51 = v50;
        v52 = [objc_opt_self() labelColor];
        [v51 setTextColor_];

        goto LABEL_43;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  swift_beginAccess();
  v26 = *&v2[v25];
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = 0;
  v29 = v26 + 32;
  while (*(v29 + v28) != 7)
  {
    if (v27 == ++v28)
    {
      goto LABEL_31;
    }
  }

  v53 = [v2 tableView];
  if (!v53)
  {
    goto LABEL_54;
  }

  v54 = v53;
  MEMORY[0x29ED79720](v28, 1);
  v55 = sub_29E2BCF24();
  (*(v11 + 8))(v19, v10);
  v56 = [v54 cellForRowAtIndexPath_];

  if (v56)
  {
    type metadata accessor for DatePickerTableViewCell();
    v57 = swift_dynamicCastClass();
    if (v57)
    {
      v58 = v57;
      v80 = [v2 tableView];
      if (!v80)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v2;
      v59[4] = v28;
      v60 = swift_allocObject();
      v61 = sub_29E203F14;
      *(v60 + 16) = sub_29E203F14;
      *(v60 + 24) = v59;
      v85 = sub_29E073BBC;
      v86 = v60;
      aBlock = MEMORY[0x29EDCA5F8];
      v82 = 1107296256;
      v78 = &v83;
      v83 = sub_29E21894C;
      v84 = &unk_2A24BF338;
      v79 = _Block_copy(&aBlock);
      v62 = v2;
      v63 = v56;

      v64 = swift_allocObject();
      *(v64 + 16) = v58;
      v85 = sub_29E204188;
      v86 = v64;
      aBlock = MEMORY[0x29EDCA5F8];
      v82 = 1107296256;
      v83 = sub_29E1F3494;
      v84 = &unk_2A24BF388;
      v65 = _Block_copy(&aBlock);
      v78 = v63;

      v66 = v79;
      v67 = v80;
      [v80 performBatchUpdates:v79 completion:v65];
      _Block_release(v65);
      _Block_release(v66);

      v56 = v67;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
LABEL_31:
    v61 = 0;
  }

  sub_29E202904(6u, v6);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_29E2040E4(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
    v68 = [v2 tableView];
    if (!v68)
    {
      goto LABEL_52;
    }

    v69 = v68;
    v70 = sub_29E2BCF24();
    v71 = [v69 cellForRowAtIndexPath_];

    if (v71)
    {
      type metadata accessor for EndDateTableViewCell();
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = v72;
        v71 = v71;
        v74 = [v73 detailTextLabel];
        if (!v74)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v75 = v74;

        v76 = [objc_opt_self() labelColor];
        [v75 setTextColor_];

        [v73 setAccessoryView_];
      }
    }

    (*(v11 + 8))(v13, v10);
  }

  v77 = v61;
LABEL_45:
  sub_29DE8EF50(v77);
}

void sub_29E202380(char *a1, void *a2, unint64_t a3)
{
  [*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] setAlpha_];
  v6 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  swift_beginAccess();
  sub_29E066514(a3);
  swift_endAccess();
  v7 = [a2 tableView];
  if (v7)
  {
    v8 = v7;
    sub_29E203E58(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
    sub_29E2BCFB4();
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    MEMORY[0x29ED79720](a3, 1);
    v9 = sub_29E2C3604();

    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:5];
  }

  else
  {
    __break(1u);
  }
}

id sub_29E202570(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] setAlpha_];
  if (qword_2A1817028 != -1)
  {
    swift_once();
  }

  v3 = qword_2A181FAC8;

  return [a2 setBackgroundColor_];
}

void sub_29E202604()
{
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow];
  if (v8 != 8)
  {
    sub_29E202904(v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow], v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_29E2040E4(v3, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v9 = [v0 tableView];
      if (v9)
      {
        v10 = v9;
        v11 = sub_29E2BCF24();
        v12 = [v10 cellForRowAtIndexPath_];

        if (v12)
        {
          type metadata accessor for NewFactorTypeTableViewCell();
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_isChecked) = 0;
            v14 = v13;
            [*(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView) setHidden_];
            v15 = *(v14 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel);
            sub_29E1FE050(v8);
            if (v16)
            {
              v17 = sub_29E2C33A4();
            }

            else
            {
              v17 = 0;
            }

            [v15 setText_];
          }

          else
          {
          }
        }

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_29E202904@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
    v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
    v10 = v6 + 32;
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; i != v7; ++i)
    {
      if (*(v10 + i))
      {
        v12 = 0;
        v13 = *(v2 + v8);
        v14 = *(v13 + 16);
        v15 = v13 + 32;
        while (v14 != v12)
        {
          v16 = v12 + 1;
          v17 = *(v15 + v12++);
          if (v17 == a1)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v2 + v9);
        v20 = *(v19 + 16);
        v21 = v19 + 32;
        while (v20 != v18)
        {
          v16 = v18 + 1;
          v22 = *(v21 + v18++);
          if (v22 == a1)
          {
LABEL_14:
            MEMORY[0x29ED79720](v16 - 1);
            v23 = 0;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v23 = 1;
LABEL_15:
  v24 = sub_29E2BCFB4();
  return (*(*(v24 - 8) + 56))(a2, v23, 1, v24);
}

void sub_29E202A80()
{
  v0 = MEMORY[0x29EDB9D70];
  v1 = MEMORY[0x29EDC9C68];
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v16 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v16 - v9;
  sub_29E202904(5u, &v16 - v9);
  v11 = sub_29E2BCFB4();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v10, 1, v11);
  sub_29E2040E4(v10, &unk_2A1A61BA0, v0, v1, sub_29E203E58);
  if (v13 != 1)
  {
    sub_29E2018E4(5);
  }

  sub_29E202904(7u, v7);
  v14 = v12(v7, 1, v11);
  sub_29E2040E4(v7, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
  if (v14 != 1)
  {
    sub_29E2018E4(7);
  }

  sub_29E202904(3u, v4);
  v15 = v12(v4, 1, v11);
  sub_29E2040E4(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
  if (v15 != 1)
  {
    sub_29E200B5C();
  }
}

uint64_t sub_29E202D2C()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_providedHealthStore];
  sub_29E2C3BF4();
  sub_29E2C3C14();
  v2 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_29E2BD184();
  v6 = v0;

  v15[3] = v5;
  v15[4] = &off_2A24B5E20;
  v15[0] = sub_29E2BD174();
  type metadata accessor for PregnancyOnboardingCoordinator();
  v7 = swift_allocObject();
  v8 = sub_29DEF61C0(v15, v5);
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  sub_29E0AC3AC(v1, v19, v18, *v11, v2, 2u, 0, v16, 0, 0, 0, 4u, 0, sub_29E203F04, v3, sub_29E203F0C, v4, 0, v7);

  sub_29DE93B3C(v15);

  sub_29E27EFEC(v6, 1);
}

void sub_29E202F84(void *a1)
{
  v2 = [a1 presentingViewController];
  if (!v2)
  {
    v2 = a1;
  }

  v3 = v2;
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_29E202FF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E202604();
    v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow] = 8;
    sub_29E1FA830();
  }
}

id sub_29E2030BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddCycleFactorTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddCycleFactorTableViewController()
{
  result = qword_2A181FB30;
  if (!qword_2A181FB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E203264()
{
  result = sub_29E2BCBB4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_29E2033BC()
{
  result = qword_2A181FB50;
  if (!qword_2A181FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FB50);
  }

  return result;
}

uint64_t sub_29E203454(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E204014(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E2034B0()
{
  result = qword_2A181FB68;
  if (!qword_2A181FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FB68);
  }

  return result;
}

id sub_29E203514(uint64_t a1)
{
  v2 = v1;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E202904(2u, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_29E2040E4(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
  }

  (*(v8 + 32))(v10, v6, v7);
  result = [v1 tableView];
  if (result)
  {
    v12 = result;
    v13 = sub_29E2BCF24();
    v14 = [v12 cellForRowAtIndexPath_];

    if (v14)
    {
      type metadata accessor for NewFactorTypeTableViewCell();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel);
        sub_29E08D1FC(a1);
        v17 = sub_29E2C33A4();

        [v16 setText_];

        result = (*(v8 + 8))(v10, v7);
        v18 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected];
        *v18 = a1;
        v18[8] = 0;
        return result;
      }
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E2037FC()
{
  v1 = v0;
  sub_29E203E58(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCA84();
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_endDate;
  swift_beginAccess();
  (*(v10 + 40))(&v0[v13], v12, v9);
  swift_endAccess();
  sub_29E202904(6u, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29E2040E4(v4, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68], sub_29E203E58);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  v27 = v8;
  v16 = sub_29E2BCF24();
  v17 = [v15 cellForRowAtIndexPath_];

  if (v17)
  {
    type metadata accessor for EndDateTableViewCell();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {

      return (*(v6 + 8))(v27, v5);
    }

    v19 = v18;
    v26 = v17;
    result = [v19 detailTextLabel];
    if (result)
    {
      v20 = result;
      (*(v10 + 16))(v12, &v1[v13], v9);
      sub_29E1526E8();
      (*(v10 + 8))(v12, v9);
      v21 = sub_29E2C33A4();

      [v20 setText_];

      [v19 setAccessoryView_];
      result = [v19 detailTextLabel];
      if (result)
      {
        v22 = result;
        v23 = v26;

        v24 = [objc_opt_self() labelColor];
        [v22 setTextColor_];

        sub_29E2018E4(7);
        return (*(v6 + 8))(v27, v5);
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return (*(v6 + 8))(v27, v5);
}

void sub_29E203C68()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___addBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController____lazy_storage___cancelBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedFactorRow) = 8;
  v1 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeSelected;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_currentlySelectedDateRangeRow) = 8;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections) = &unk_2A24AF658;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows) = &unk_2A24AF9C8;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows) = &unk_2A24AF9F0;
  sub_29E2BCBA4();
  sub_29E2BCA84();
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_launchSource) = 2;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_manualEntryItemContraceptive;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ManualEntryItem()) init];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E203DB0(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + v3);
  if (*(v5 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v5 + a1 + 32))
  {
    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_dateRangeRows;
  }

  else
  {
    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_factorTypeRows;
  }

  v7 = v1 + v6;
  swift_beginAccess();
  return *(*v7 + 16);
}

void sub_29E203E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E203EBC()
{
  result = qword_2A181FB70;
  if (!qword_2A181FB70)
  {
    type metadata accessor for AddCycleFactorTableViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181FB70);
  }

  return result;
}

uint64_t sub_29E203F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E203F68(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E203FBC()
{
  v1 = *(v0 + 24);
  result = [*(*(v0 + 16) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker) setAlpha_];
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_contraceptiveDataSource);
  if (v3)
  {
    *(v3 + 48) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E204014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E204064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E2040E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t HKMCDisplayTypeIdentifier.loggingCardTitle.getter()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v72[-v6];
  v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v10 = v9;
  if (v8 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v10 == v11)
  {

LABEL_15:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

  v13 = sub_29E2C4914();

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;
  if (v14 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v16 == v17)
  {
    goto LABEL_17;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;
  if (v20 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v22 == v23)
  {
LABEL_17:

    goto LABEL_18;
  }

  v27 = sub_29E2C4914();

  if (v27)
  {
LABEL_18:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
LABEL_19:
      v24 = qword_2A1A67F80;
      sub_29E2BCC74();
      v25 = sub_29E2C3414();
      (*(v2 + 8))(v7, v1);
      return v25;
    }

LABEL_52:
    swift_once();
    goto LABEL_19;
  }

  v28 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v30 = v29;
  if (v28 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v30 == v31)
  {
    goto LABEL_23;
  }

  v32 = sub_29E2C4914();

  if (v32)
  {
    goto LABEL_25;
  }

  v33 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v35 = v34;
  if (v33 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v35 == v36)
  {
    goto LABEL_23;
  }

  v37 = sub_29E2C4914();

  if (v37)
  {
    goto LABEL_25;
  }

  v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v40 = v39;
  if (v38 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v40 == v41)
  {
    goto LABEL_23;
  }

  v42 = sub_29E2C4914();

  if (v42)
  {
    goto LABEL_25;
  }

  v43 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v45 = v44;
  if (v43 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v45 == v46)
  {
    goto LABEL_23;
  }

  v47 = sub_29E2C4914();

  if (v47)
  {
    goto LABEL_25;
  }

  v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v50 = v49;
  if (v48 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v50 == v51)
  {
    goto LABEL_23;
  }

  v52 = sub_29E2C4914();

  if (v52)
  {
    goto LABEL_25;
  }

  v53 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v55 = v54;
  if (v53 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v55 == v56)
  {
    goto LABEL_23;
  }

  v57 = sub_29E2C4914();

  if (v57)
  {
    goto LABEL_25;
  }

  v58 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v60 = v59;
  if (v58 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v60 == v61)
  {
    goto LABEL_23;
  }

  v62 = sub_29E2C4914();

  if (v62)
  {
    goto LABEL_25;
  }

  v63 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v65 = v64;
  if (v63 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v65 == v66)
  {
LABEL_23:

LABEL_25:

    return HKMCDisplayTypeIdentifier.editableReportTitle.getter();
  }

  v67 = sub_29E2C4914();

  if (v67)
  {
    goto LABEL_25;
  }

  v68 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v70 = v69;
  if (v68 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v70 == v71)
  {
  }

  else
  {
    sub_29E2C4914();
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t HKMCDisplayTypeIdentifier.description.getter()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v73[-v6];
  v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v10 = v9;
  if (v8 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_29E2C4914();

  if (v13)
  {
    return 0;
  }

  v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;
  if (v14 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v16 == v17)
  {
LABEL_13:

    return 0;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    return 0;
  }

  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;
  if (v20 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v22 == v23)
  {
    goto LABEL_13;
  }

  v25 = sub_29E2C4914();

  if (v25)
  {
    return 0;
  }

  v26 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v28 = v27;
  if (v26 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v28 == v29)
  {
    goto LABEL_13;
  }

  v30 = sub_29E2C4914();

  if (v30)
  {
    return 0;
  }

  v31 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v33 = v32;
  if (v31 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v33 == v34)
  {
    goto LABEL_21;
  }

  v35 = sub_29E2C4914();

  if (v35)
  {
    goto LABEL_23;
  }

  v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v40 = v39;
  if (v38 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v40 == v41)
  {
LABEL_21:

    goto LABEL_23;
  }

  v42 = sub_29E2C4914();

  if (v42)
  {
LABEL_23:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
LABEL_24:
      v36 = qword_2A1A67F80;
      sub_29E2BCC74();
      v37 = sub_29E2C3414();
      (*(v2 + 8))(v7, v1);
      return v37;
    }

LABEL_45:
    swift_once();
    goto LABEL_24;
  }

  v43 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v45 = v44;
  if (v43 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v45 == v46)
  {
    goto LABEL_51;
  }

  v47 = sub_29E2C4914();

  if (v47)
  {
    goto LABEL_35;
  }

  v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v50 = v49;
  if (v48 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v50 == v51)
  {
    goto LABEL_51;
  }

  v52 = sub_29E2C4914();

  if (v52)
  {
    goto LABEL_35;
  }

  v53 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v55 = v54;
  if (v53 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v55 == v56)
  {
    goto LABEL_51;
  }

  v57 = sub_29E2C4914();

  if (v57)
  {
    goto LABEL_35;
  }

  v58 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v60 = v59;
  if (v58 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v60 == v61)
  {
LABEL_51:

    goto LABEL_35;
  }

  v62 = sub_29E2C4914();

  if (v62)
  {
    goto LABEL_35;
  }

  v63 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v65 = v64;
  if (v63 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v65 == v66)
  {
    goto LABEL_51;
  }

  v67 = sub_29E2C4914();

  if (v67)
  {
    goto LABEL_35;
  }

  v68 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v70 = v69;
  if (v68 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v70 == v71)
  {
    goto LABEL_51;
  }

  v72 = sub_29E2C4914();

  if (v72)
  {
LABEL_35:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t HKMCDisplayTypeIdentifier.editableReportTitle.getter()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v73[-v6];
  v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v10 = v9;
  if (v8 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = sub_29E2C4914();

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;
  if (v14 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v16 == v17)
  {
    goto LABEL_17;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;
  if (v20 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v22 == v23)
  {
LABEL_17:

    goto LABEL_18;
  }

  v27 = sub_29E2C4914();

  if (v27)
  {
LABEL_18:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
LABEL_19:
      v24 = qword_2A1A67F80;
      sub_29E2BCC74();
      v25 = sub_29E2C3414();
      (*(v2 + 8))(v7, v1);
      return v25;
    }

LABEL_39:
    swift_once();
    goto LABEL_19;
  }

  v28 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v30 = v29;
  if (v28 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v30 == v31)
  {
    goto LABEL_14;
  }

  v32 = sub_29E2C4914();

  if (v32)
  {
    goto LABEL_15;
  }

  v33 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v35 = v34;
  if (v33 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v35 == v36)
  {
    goto LABEL_14;
  }

  v37 = sub_29E2C4914();

  if (v37)
  {
    goto LABEL_15;
  }

  v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v40 = v39;
  if (v38 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v40 == v41)
  {
    goto LABEL_14;
  }

  v42 = sub_29E2C4914();

  if (v42)
  {
    goto LABEL_15;
  }

  v43 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v45 = v44;
  if (v43 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v45 == v46)
  {
LABEL_14:

    goto LABEL_15;
  }

  v47 = sub_29E2C4914();

  if (v47)
  {
LABEL_15:
    sub_29E2C3314();
    (*(v2 + 16))(v5, v7, v1);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v50 = v49;
  if (v48 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v50 == v51)
  {
    goto LABEL_14;
  }

  v52 = sub_29E2C4914();

  if (v52)
  {
    goto LABEL_15;
  }

  v53 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v55 = v54;
  if (v53 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v55 == v56)
  {
    goto LABEL_14;
  }

  v57 = sub_29E2C4914();

  if (v57)
  {
    goto LABEL_15;
  }

  v58 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v60 = v59;
  if (v58 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v60 == v61)
  {
    goto LABEL_14;
  }

  v62 = sub_29E2C4914();

  if (v62)
  {
    goto LABEL_15;
  }

  v63 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v65 = v64;
  if (v63 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v65 == v66)
  {
    goto LABEL_14;
  }

  v67 = sub_29E2C4914();

  if (v67)
  {
    goto LABEL_15;
  }

  v68 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v70 = v69;
  if (v68 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v70 == v71)
  {
    goto LABEL_14;
  }

  v72 = sub_29E2C4914();

  if (v72)
  {
    goto LABEL_15;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E205C48@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0()
{
  sub_29E2060B8(0, &qword_2A181B620, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2E62E0;
  v1 = *MEMORY[0x29EDC3250];
  v2 = *MEMORY[0x29EDC3230];
  *(v0 + 32) = *MEMORY[0x29EDC3250];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x29EDC3228];
  v4 = *MEMORY[0x29EDC3278];
  *(v0 + 48) = *MEMORY[0x29EDC3228];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x29EDC3270];
  v6 = *MEMORY[0x29EDC3258];
  *(v0 + 64) = *MEMORY[0x29EDC3270];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x29EDC3268];
  v8 = *MEMORY[0x29EDC3260];
  *(v0 + 80) = *MEMORY[0x29EDC3268];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x29EDC3238];
  v10 = *MEMORY[0x29EDC3220];
  *(v0 + 96) = *MEMORY[0x29EDC3238];
  *(v0 + 104) = v10;
  v25 = *MEMORY[0x29EDC3248];
  v26 = *MEMORY[0x29EDC3240];
  v11 = *MEMORY[0x29EDC3240];
  *(v0 + 112) = *MEMORY[0x29EDC3248];
  *(v0 + 120) = v11;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v25;
  v23 = v26;
  return v0;
}

uint64_t _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE25supplementaryDisplayTypesSayABGvgZ_0()
{
  sub_29E2060B8(0, &qword_2A181B620, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CFE90;
  v1 = *MEMORY[0x29EDC3278];
  v2 = *MEMORY[0x29EDC3270];
  *(v0 + 32) = *MEMORY[0x29EDC3278];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x29EDC3258];
  v4 = *MEMORY[0x29EDC3268];
  *(v0 + 48) = *MEMORY[0x29EDC3258];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x29EDC3260];
  v6 = *MEMORY[0x29EDC3238];
  *(v0 + 64) = *MEMORY[0x29EDC3260];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x29EDC3220];
  v8 = *MEMORY[0x29EDC3248];
  *(v0 + 80) = *MEMORY[0x29EDC3220];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

uint64_t _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE27loggingCarouselDisplayTypesSayABGvgZ_0()
{
  sub_29E2060B8(0, &qword_2A181B620, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2E62F0;
  v1 = *MEMORY[0x29EDC3250];
  v2 = *MEMORY[0x29EDC3230];
  *(v0 + 32) = *MEMORY[0x29EDC3250];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x29EDC3228];
  v4 = *MEMORY[0x29EDC3278];
  *(v0 + 48) = *MEMORY[0x29EDC3228];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x29EDC3270];
  v6 = *MEMORY[0x29EDC3258];
  *(v0 + 64) = *MEMORY[0x29EDC3270];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x29EDC3268];
  v8 = *MEMORY[0x29EDC3260];
  *(v0 + 80) = *MEMORY[0x29EDC3268];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x29EDC3238];
  v10 = *MEMORY[0x29EDC3220];
  *(v0 + 96) = *MEMORY[0x29EDC3238];
  *(v0 + 104) = v10;
  v23 = *MEMORY[0x29EDC3248];
  *(v0 + 112) = *MEMORY[0x29EDC3248];
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v23;
  return v0;
}

unint64_t sub_29E206044()
{
  result = qword_2A181FB78;
  if (!qword_2A181FB78)
  {
    sub_29E2060B8(255, &qword_2A181F518, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FB78);
  }

  return result;
}

void sub_29E2060B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_29E206118(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - v9;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingIntroductionViewController_onboardingStep] = 0;
  v21 = v1;
  v22 = a1;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingIntroductionViewController_coordinator] = a1;

  sub_29E2C3314();
  v19 = *(v5 + 16);
  v19(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = "EDING_ALERT_MESSAGE";
  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = v11;
  sub_29E2C3414();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = sub_29E2C33A4();

  sub_29E2C3314();
  v19(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v13(v10, v4);
  v15 = sub_29E2C33A4();

  v23.receiver = v21;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, 0, 1);

  return v16;
}

void sub_29E206458()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v33[-v10];
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_viewDidLoad, v9);
  [v1 setModalInPresentation_];
  v12 = [objc_opt_self() sharedBehavior];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 isiPad];

  if (!v14)
  {
    v24 = objc_opt_self();
    v25 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v23 = &unk_2A1A67000;
    v16 = [v24 imageNamed:v25 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (v16)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v26 = objc_opt_self();
    v27 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v23 = &unk_2A1A67000;
    v16 = [v26 imageNamed:v27 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_13:
    [v16 setIsAccessibilityElement_];
    sub_29E206BE4(v16);
    goto LABEL_14;
  }

  v15 = [v1 parentViewController];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v15 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;

  sub_29E2069E4(v20, v22);
  v23 = &unk_2A1A67000;
LABEL_14:

  sub_29E2C3D94();
  sub_29E2C3314();
  (*(v5 + 16))(v7, v11, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v28 = v23[496];
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v11, v4);
  v29 = sub_29E2C33A4();

  v30 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingIntroductionViewController_onboardingStep);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  *&v33[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v31 = PregnancyOnboardingStep.description.getter(v30);
  MEMORY[0x29ED7FCC0](v31);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v32 = sub_29E2C33A4();
}

void sub_29E2069E4(double a1, double a2)
{
  v4 = [objc_opt_self() sharedBehavior];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 isiPad];

  if (!v6)
  {
    return;
  }

  v7 = objc_opt_self();
  if (a2 >= a1)
  {
    v10 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = [v7 imageNamed:v10 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    v9 = v12;
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v8 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = [v7 imageNamed:v8 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  v9 = v11;
  if (!v11)
  {
    __break(1u);
    return;
  }

LABEL_12:
  v13 = v9;
  [v9 setIsAccessibilityElement_];
  sub_29E206BE4(v13);
}

void sub_29E206BE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v2 setContentMode_];
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    CGAffineTransformMakeScale(&v21, -1.0, 1.0);
    [v2 setTransform_];
  }

  v3 = [v1 contentView];
  [v3 addSubview_];

  v4 = [v1 contentView];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CDBD0;
  v8 = [v2 topAnchor];
  v9 = [v1 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [v2 centerXAnchor];

  v17 = [v1 contentView];
  v18 = [v17 centerXAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v7 + 48) = v19;
  sub_29DEB8834();
  v20 = sub_29E2C3604();

  [v6 activateConstraints_];
}

void sub_29E207108(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29E2C4484())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29DF22434();
  v3 = sub_29E2C4554();
LABEL_6:
  if (sub_29DE9408C(0, &qword_2A1A61DB0) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29E2BF404();
      sub_29E2C4444();
      sub_29DE9408C(0, &qword_2A1A61D70);
      sub_29DE93878(&qword_2A1A5E218, &qword_2A1A61D70);
      sub_29E2C3834();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      sub_29E2BF404();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_29E2C44C4())
        {
LABEL_55:
          sub_29DF219B8();

          return;
        }

        sub_29DE9408C(0, &qword_2A1A61D70);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_29E2095C4(v35);
    }
  }

  if (v2)
  {

    sub_29E2BF404();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D70);
    sub_29DE93878(&qword_2A1A5E218, &qword_2A1A61D70);
    sub_29E2C3834();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    sub_29E2BF404();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29E2C44C4())
    {
      goto LABEL_55;
    }

    sub_29DE9408C(0, &qword_2A1A61D70);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_29E2C40C4();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

char *sub_29E20760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v8 = *v3;
  sub_29E208FA8();
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_context;
  v27 = sub_29E2BD624();
  v14 = *(v27 - 8);
  v15 = *(v14 + 16);
  v25 = a1;
  v15(&v4[v13], a1, v27);
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_domain;
  v17 = sub_29E2BD594();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v4[v16], a2, v17);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_discoverFilter] = a3;
  sub_29E2BF404();
  v19 = sub_29E207964(a1, a3);
  v24[1] = v19;

  v30 = v19;
  *(swift_allocObject() + 16) = v8;
  v20 = MEMORY[0x29EDB89F8];
  sub_29E2093D4(0, &qword_2A1A61E78, sub_29E02CA48, MEMORY[0x29EDB89F8]);
  sub_29E02CA48();
  sub_29E2094D8(&qword_2A1A61E80, &qword_2A1A61E78, v20);
  sub_29E2C12A4();

  sub_29E209490(&qword_2A1A61F00, sub_29E208FA8);
  v21 = v28;
  v22 = sub_29E2C1274();

  (*(v18 + 8))(v26, v17);
  (*(v14 + 8))(v25, v27);
  (*(v29 + 8))(v12, v21);
  *(v4 + 2) = v22;
  return v4;
}

uint64_t sub_29E207964(uint64_t a1, uint64_t a2)
{
  sub_29E209194();
  v85 = v3;
  v83 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E209204();
  v7 = v6;
  v84 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E209324();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v76 = &v65 - v13;
  sub_29E2093D4(0, &unk_2A1A61C80, sub_29DF18BF0, MEMORY[0x29EDB8B18]);
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v79 = &v65 - v15;
  v16 = sub_29E2BD4C4();
  v90 = *(v16 - 8);
  v91 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2C0514();
  v74 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD5A4();
  sub_29DE966D4(v93, v93[3]);
  v22 = sub_29E2BD524();
  sub_29DE93B3C(v93);
  v23 = HKShowSensitiveLogItems();
  v86 = v7;
  v82 = v9;
  if (v23)
  {
    sub_29E2C04B4();
    sub_29E2BF404();
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A34();

    v73 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v68 = v24;
      v69 = v21;
      v70 = v19;
      v71 = a2;
      v72 = v5;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v93[0] = v27;
      *v26 = 136315394;
      v28 = sub_29E2C4AE4();
      v30 = sub_29DFAA104(v28, v29, v93);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = *(v22 + 16);
      v32 = MEMORY[0x29EDCA190];
      if (v31)
      {
        v65 = v27;
        v66 = v26;
        v92 = MEMORY[0x29EDCA190];
        sub_29E1811FC(0, v31, 0);
        v32 = v92;
        v89 = *(v90 + 16);
        v33 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v67 = v22;
        v34 = v22 + v33;
        v88 = *(v90 + 72);
        v90 += 16;
        v35 = (v90 - 8);
        do
        {
          v36 = v91;
          v89(v18, v34, v91);
          v37 = sub_29E2BD384();
          v39 = v38;
          (*v35)(v18, v36);
          v92 = v32;
          v41 = *(v32 + 16);
          v40 = *(v32 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_29E1811FC((v40 > 1), v41 + 1, 1);
            v32 = v92;
          }

          *(v32 + 16) = v41 + 1;
          v42 = v32 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
          v34 += v88;
          --v31;
        }

        while (v31);
        v22 = v67;
        v26 = v66;
        v27 = v65;
      }

      v43 = MEMORY[0x29ED7FDF0](v32, MEMORY[0x29EDC99B0]);
      v45 = v44;

      v46 = sub_29DFAA104(v43, v45, v93);

      *(v26 + 14) = v46;
      v47 = v68;
      _os_log_impl(&dword_29DE74000, v68, v73, "[%s] previousFeedItems: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);

      (*(v74 + 8))(v69, v70);
      v5 = v72;
      a2 = v71;
    }

    else
    {

      (*(v74 + 8))(v21, v19);
    }
  }

  v93[0] = v22;
  sub_29DF18BF0(0);
  sub_29E209490(&unk_2A1A61DE0, sub_29DF18BF0);
  v48 = v75;
  v49 = sub_29E2C35B4();
  MEMORY[0x2A1C7C4A8](v49);
  v50 = v87;
  *(&v65 - 2) = v87;
  *(&v65 - 1) = a2;
  v51 = v76;
  v52 = v22;
  v53 = v78;
  sub_29E2C0FA4();
  v54 = *(v77 + 8);
  v54(v48, v53);
  v55 = v79;
  sub_29E2C0FB4();
  v56 = (v54)(v51, v53);
  MEMORY[0x2A1C7C4A8](v56);
  *(&v65 - 2) = v52;
  sub_29E02CA48();
  v57 = v55;
  v58 = v85;
  v59 = v81;
  sub_29E2C4A64();

  *(swift_allocObject() + 16) = v50;
  v60 = MEMORY[0x29EDB89F8];
  sub_29E2093D4(0, &qword_2A1A61E78, sub_29E02CA48, MEMORY[0x29EDB89F8]);
  sub_29E209490(&qword_2A1A61C78, sub_29E209194);
  sub_29E2094D8(&qword_2A1A61E80, &qword_2A1A61E78, v60);
  v61 = v82;
  sub_29E2C12C4();

  (*(v83 + 8))(v5, v58);
  sub_29E209490(&qword_2A1A61EF0, sub_29E209204);
  v62 = v86;
  v63 = sub_29E2C1274();
  (*(v84 + 8))(v61, v62);
  (*(v80 + 8))(v57, v59);
  return v63;
}

void sub_29E208360(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v8 + 64);
    while (v10 < *(v8 + 16))
    {
      ++v10;
      v12 = *v11;
      v13 = *(v11 - 1);
      v26[0] = *(v11 - 2);
      v26[1] = v13;
      v27 = v12;
      sub_29E2085D4(v26);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      sub_29E2BF404();
      v14 = sub_29E2C0504();
      v15 = sub_29E2C3A34();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v26[0] = v17;
        *v16 = 136315394;
        v18 = sub_29E2C4AE4();
        v20 = sub_29DFAA104(v18, v19, v26);
        v25 = a2;
        v21 = v20;

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        v22 = MEMORY[0x29ED7FDF0](v8, MEMORY[0x29EDC3A38]);
        v24 = sub_29DFAA104(v22, v23, v26);

        *(v16 + 14) = v24;
        a2 = v25;
        _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Submitting feed item changes: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v17, -1, -1);
        MEMORY[0x29ED82140](v16, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
    }

    *a2 = v8;
    sub_29E2BF404();
  }
}

void sub_29E2085D4(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  if (v6 <= 0x1F)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v9 = *(a1 + 24);
    v27 = *(a1 + 16);
    v28 = v7;
    v26 = v9;
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      sub_29E2BF404();
      v10 = sub_29E2C0504();
      v11 = sub_29E2C3A34();
      sub_29E209090(v8, v28, v27, v26, v6);
      v25 = v11;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34 = v24;
        *v12 = 136315394;
        v13 = sub_29E2C4AE4();
        v15 = sub_29DFAA104(v13, v14, &v34);
        v23 = v10;
        v16 = v15;

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v29 = v8;
        v30 = v28;
        v31 = v27;
        v32 = v26;
        v33 = v6;
        sub_29E2BF404();
        v17 = sub_29E2C3424();
        v19 = sub_29DFAA104(v17, v18, &v34);

        *(v12 + 14) = v19;
        v20 = v23;
        _os_log_impl(&dword_29DE74000, v23, v25, "[%s] shouldHideInDiscover updates: %s", v12, 0x16u);
        v21 = v24;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v21, -1, -1);
        MEMORY[0x29ED82140](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }
}

id sub_29E208844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_29E2BD4C4();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = sub_29E2BD394();
  sub_29E207108(a2);
  v9 = sub_29E209704(v8, v7);

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_29E2C4484();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  sub_29E2BD344();
  if (!v10)
  {
    return sub_29E2BD4B4();
  }

  v11 = sub_29E2BD394();
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    v13 = result;
    sub_29E0924D0(result, v11);

    return sub_29E2BD4B4();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E208978@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_29E2093D4(0, &qword_2A181FB90, sub_29E02CA48, MEMORY[0x29EDB8AC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v29 - v6;
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v13 = v12;
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A14();

    v34 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v14;
      v17 = v16;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v17 = 136315394;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, &v36);
      v33 = v8;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v12;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      v24 = v30;
      *v30 = v23;
      v25 = v32;
      _os_log_impl(&dword_29DE74000, v32, v34, "[%s] There was an error in calculating the feed item difference: %@", v17, 0x16u);
      sub_29DF58A90(v24);
      MEMORY[0x29ED82140](v24, -1, -1);
      v26 = v31;
      sub_29DE93B3C(v31);
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);

      (*(v9 + 8))(v11, v33);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  sub_29E02CA48();
  sub_29E2C1174();
  sub_29E2094D8(&qword_2A181FB98, &qword_2A181FB90, MEMORY[0x29EDB8AC0]);
  v27 = sub_29E2C1274();
  result = (*(v5 + 8))(v7, v4);
  *v35 = v27;
  return result;
}

uint64_t sub_29E208CFC()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_domain;
  v2 = sub_29E2BD594();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_context;
  v4 = sub_29E2BD624();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesArticlesGenerator()
{
  result = qword_2A1A62490;
  if (!qword_2A1A62490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E208E44()
{
  result = sub_29E2BD594();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BD624();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E208F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32MenstrualCyclesArticlesGenerator_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29E208FA8()
{
  if (!qword_2A1A61EF8)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29E2093D4(255, &qword_2A1A61E78, sub_29E02CA48, MEMORY[0x29EDB89F8]);
    sub_29E02CA48();
    sub_29E2094D8(&qword_2A1A61E80, &qword_2A1A61E78, v0);
    v1 = sub_29E2C0F24();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A61EF8);
    }
  }
}

void sub_29E209090(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_29E20912C(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

void sub_29E20912C(void *a1, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    a1 = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_29DEA6E70(a1);
}

void sub_29E209194()
{
  if (!qword_2A1A61C70)
  {
    sub_29E02CA48();
    sub_29DE96670();
    v0 = sub_29E2C4A74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61C70);
    }
  }
}

void sub_29E209204()
{
  if (!qword_2A1A61EE8)
  {
    sub_29E209194();
    v0 = MEMORY[0x29EDB89F8];
    sub_29E2093D4(255, &qword_2A1A61E78, sub_29E02CA48, MEMORY[0x29EDB89F8]);
    sub_29E209490(&qword_2A1A61C78, sub_29E209194);
    sub_29E2094D8(&qword_2A1A61E80, &qword_2A1A61E78, v0);
    v1 = sub_29E2C0F44();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A61EE8);
    }
  }
}

void sub_29E209324()
{
  if (!qword_2A1A61EE0)
  {
    sub_29DF18BF0(255);
    sub_29E209490(&unk_2A1A61DE0, sub_29DF18BF0);
    v0 = sub_29E2C0FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61EE0);
    }
  }
}

void sub_29E2093D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E209450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C3634();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29E209490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E2094D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29E2093D4(255, a2, sub_29E02CA48, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_29E209534(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_29E209FF8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_29E2095C4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29E2C40C4();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29DE9408C(0, &qword_2A1A61DB0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29E2C40D4();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void *sub_29E209704(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_29E2C4484();
      a2 = sub_29E14AD04(v4, v5);
      goto LABEL_8;
    }

    sub_29DE9408C(0, &qword_2A1A61DB0);
    v7 = MEMORY[0x29EDCA1A0];
    v17 = MEMORY[0x29EDCA1A0];
    sub_29E2C4444();
    if (sub_29E2C44C4())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_29E2C40C4(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_29E2C40D4();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_29E149BF8(v15 + 1);
          }

          v7 = v17;
          sub_29E14AF40(v16, v17);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_29E2C44C4());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_29E20993C(a1, a2);
    }

    return sub_29E209ADC(a1, a2);
  }
}

uint64_t sub_29E20993C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x29EDCA608];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x2A1C7C4A8](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_29E209CA0(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_29E20A3DC(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x29ED82140](v15, -1, -1);
  }

  return v11;
}

void *sub_29E209ADC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x2A1C7C4A8](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_29E209FF8((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_29E209534(v12, v6, a2, a1);

    MEMORY[0x29ED82140](v12, -1, -1);
  }

  return v10;
}

void sub_29E209CA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61DB0);
    sub_29DE93878(&qword_2A1A61DA0, &qword_2A1A61DB0);
    sub_29E2C3834();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
    sub_29E2BF404();
    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_29E2C44C4())
    {
      goto LABEL_29;
    }

    sub_29DE9408C(0, &qword_2A1A61DB0);
    swift_dynamicCast();
    v17 = v43;
    v7 = v13;
    v8 = v14;
    if (!v43)
    {
      goto LABEL_29;
    }

LABEL_19:
    v18 = sub_29E2C40C4();
    v19 = -1 << *(a4 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_29DE9408C(0, &qword_2A1A61DB0);
    v23 = *(*(a4 + 48) + 8 * v20);
    v24 = sub_29E2C40D4();

    if (v24)
    {
LABEL_24:
      v12 = (v6 + 64) >> 6;

      v28 = a1[v21];
      a1[v21] = v28 | v22;
      v13 = v7;
      v14 = v8;
      v29 = (v28 & v22) == 0;
      v5 = v34;
      v4 = v35;
      if (v29)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_29DF219B8();

        sub_29DF2224C(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v25 = ~v19;
      while (1)
      {
        v20 = (v20 + 1) & v25;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v26 = *(*(a4 + 48) + 8 * v20);
        v27 = sub_29E2C40D4();

        if (v27)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v12 = (v6 + 64) >> 6;
      v14 = v8;
      v5 = v34;
      v4 = v35;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v8 = (v16 - 1) & v16;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_29E209FF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v49 = 0;
    v26 = 0;
    v45 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = v4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v51 = (v29 - 1) & v29;
LABEL_34:
      v48 = v32 | (v26 << 6);
      v35 = *(*(a3 + 48) + 8 * v48);
      v36 = sub_29E2C40C4();
      v37 = -1 << *(v4 + 32);
      v38 = v36 & ~v37;
      if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        sub_29DE9408C(0, &qword_2A1A61DB0);
        while (1)
        {
          v40 = *(*(v4 + 48) + 8 * v38);
          v41 = sub_29E2C40D4();

          if (v41)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          v4 = a4;
          if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v29 = v51;
        v25 = __OFADD__(v49++, 1);
        v4 = a4;
        if (v25)
        {
          __break(1u);
LABEL_42:
          v5 = a3;
          goto LABEL_43;
        }
      }

      else
      {
LABEL_26:

        v29 = v51;
      }
    }

    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_45;
      }

      if (v26 >= v30)
      {
        goto LABEL_42;
      }

      v34 = *(v45 + 8 * v26);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v51 = (v34 - 1) & v34;
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v42 = a4 + 56;
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
  v49 = 0;
  v50 = a3 + 56;
  v44 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v47 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v15 = sub_29E2C40C4();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) != 0)
    {
      sub_29DE9408C(0, &qword_2A1A61DB0);
      v20 = *(*(v5 + 48) + 8 * v17);
      v21 = sub_29E2C40D4();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        do
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          v5 = a3;
          if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = sub_29E2C40D4();
        }

        while ((v24 & 1) == 0);
      }

      v10 = v44;
      a1[v18] |= v19;
      v9 = v47;
      v25 = __OFADD__(v49++, 1);
      v5 = a3;
      v4 = a4;
      if (v25)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v4 = a4;
      v10 = v44;
      v9 = v47;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_43:

      sub_29DF2224C(a1, a2, v49, v5);
      return;
    }

    v13 = *(v42 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}