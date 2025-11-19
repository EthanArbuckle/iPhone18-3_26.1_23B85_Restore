unint64_t sub_23DAB6BC4()
{
  result = qword_27E2FE790;
  if (!qword_27E2FE790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE750, &qword_23DB7C3F8);
    sub_23DAB6C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE790);
  }

  return result;
}

unint64_t sub_23DAB6C50()
{
  result = qword_27E2FE798;
  if (!qword_27E2FE798)
  {
    sub_23DB6F97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE798);
  }

  return result;
}

unint64_t AXOnboardingTypeSwift.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_23DAB6CBC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

char *sub_23DAB6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for ViewController());

  return sub_23DAB7510(a1, a2, a3);
}

id AXOnboardingSwiftBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXOnboardingSwiftBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXOnboardingSwiftBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_23DAB6EF8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 enableSoftwareKeyboard];

  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel;
  v5 = *&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel];
  type metadata accessor for AXOnboardingModelVoiceControl();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for AXOnboardingModelVoiceOverIOS();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = qword_27E2FBBD0;

    if (v21 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v22 = objc_opt_self();
      v23 = sub_23DB7087C();
      [v22 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v24 = objc_opt_self();
      v25 = sub_23DB7087C();
      [v24 triggerEventCommand_];
    }

    v26 = *&v1[v4];
    v27 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
    v28 = *(v26 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer);

    [v28 invalidate];
    v29 = *(v26 + v27);
    *(v26 + v27) = 0;

    *(v26 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;

    v30 = *(**&v1[v4] + 472);

    v30(v31);

    goto LABEL_18;
  }

  v6 = qword_27E2FBBE0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_23DB6BB30(&unk_284FE7818);
  sub_23DA17988(&unk_284FE7838, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8();

  sub_23DB6BB30(&unk_284FE7858);
  sub_23DA17988(&unk_284FE7878, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8();

  v7 = [v2 sharedInstance];
  v8 = [v7 getVoiceControlEnabledDefaultName];

  v9 = v8;
  v10 = v8;
  v11 = v8;
  if (!v8)
  {
    sub_23DB708BC();
    v11 = sub_23DB7087C();

    sub_23DB708BC();
    v10 = sub_23DB7087C();

    sub_23DB708BC();
    v9 = sub_23DB7087C();
  }

  v12 = objc_opt_self();
  v13 = v8;
  v14 = [v12 standardUserDefaults];
  v15 = [v14 objectForKey_];

  if (v15)
  {
    sub_23DB70BEC();
    swift_unknownObjectRelease();
    sub_23DA17988(v35, &unk_27E2FE7F0, &qword_23DB7C530);
    v16 = [v12 standardUserDefaults];
    v17 = [v16 BOOLForKey_];

    if ((v17 & 1) == 0)
    {
      v18 = [v2 sharedInstance];
      [v18 enableVoiceControl_];
    }

    v19 = [v12 standardUserDefaults];
    [v19 removeObjectForKey_];

LABEL_18:

    goto LABEL_20;
  }

  memset(v35, 0, sizeof(v35));
  v20 = sub_23DA17988(v35, &unk_27E2FE7F0, &qword_23DB7C530);
LABEL_20:
  v32 = *&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dismiss + 8];
  (*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dismiss])(v20);
  v33 = [v1 presentedViewController];
  if (v33)
  {
    v34 = v33;
    [v33 dismissViewControllerAnimated:0 completion:0];
  }
}

char *sub_23DAB7510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23DB6FA6C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel;
  sub_23DB6FA5C();
  v14 = type metadata accessor for NavigationModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v4[v13] = sub_23DAC2518(v12, 0, 0);
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v17 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_subscribers] = v17;
  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_type] = a1;
  v18 = &v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dismiss];
  *v18 = a2;
  *(v18 + 1) = a3;
  v58 = a1;
  v59 = a3;
  if (a1)
  {
    v19 = type metadata accessor for AXOnboardingModelVoiceOverIOS();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();

    v22 = AXOnboardingModelVoiceOverIOS.init()();
  }

  else
  {
    v23 = type metadata accessor for AXOnboardingModelVoiceControl();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    v22 = AXOnboardingModelVoiceControl.init()();
  }

  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel] = v22;
  v26 = *&v4[v13];
  type metadata accessor for AXOnboardingModel();
  sub_23DAB8804(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel);
  swift_retain_n();

  v27 = sub_23DB6F1EC();
  v56 = v28;
  v57 = v27;
  sub_23DAB8804(&unk_27E2FE800, type metadata accessor for NavigationModel);

  v29 = sub_23DB6F1EC();
  v31 = v30;
  v32 = objc_opt_self();
  [v32 getSpeakingRate];
  v33 = type metadata accessor for SpeakingRate();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v61 = 0;
  v62 = 0xE000000000000000;
  [v32 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  v36 = v61;
  v37 = v62;
  swift_beginAccess();
  v67 = v36;
  v68 = v37;
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DAB8804(&qword_27E2FBC60, type metadata accessor for SpeakingRate);
  v38 = sub_23DB6F1EC();
  v40 = v39;

  v61 = v57;
  v62 = v56;
  v63 = v29;
  v64 = v31;
  v65 = v38;
  v66 = v40;
  v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FE810, &qword_23DB7C538));
  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView] = sub_23DB6F6BC();
  if (v58)
  {
    v42 = " not been implemented";
    v43 = 0xD000000000000015;
  }

  else
  {
    v44 = [objc_opt_self() sharedInstance];
    [v44 disableSoftwareKeyboard];

    v42 = "tutorial.vo.app.title";
    v43 = 0xD000000000000017;
  }

  v45 = type metadata accessor for ViewController();
  v60.receiver = v4;
  v60.super_class = v45;
  v46 = objc_msgSendSuper2(&v60, sel_initWithNibName_bundle_, 0, 0);
  v47 = *(**&v46[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel] + 304);
  v48 = v46;

  v47(v43, v42 | 0x8000000000000000);

  v49 = sub_23DB7087C();

  [v48 setTitle_];

  v50 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v48 action:sel_doneHandler];
  v51 = [v48 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23DB74310;
  *(v52 + 32) = v50;
  sub_23DAB884C();
  v53 = v50;
  v54 = sub_23DB709DC();

  [v51 setRightBarButtonItems_];

  v61 = *(*(*&v48[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel] + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE150, &qword_23DB82C70);
  sub_23DAB88D8();
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  return v48;
}

unint64_t sub_23DAB7BD0()
{
  result = qword_27E2FE7B0;
  if (!qword_27E2FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE7B0);
  }

  return result;
}

void sub_23DAB7C60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel);
    v2 = Strong;

    v3 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
    swift_beginAccess();
    if (*(v3 + 40) == 1)
    {
      v4 = sub_23DB7087C();
      v5 = [objc_opt_self() systemImageNamed_];

      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v21 = v6;
        type metadata accessor for ViewController();
        v7 = v5;
        v8 = sub_23DB70DAC();
      }

      else
      {
        v12 = v5;
        v8 = 0;
      }

      v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v8 action:sel_homeHandler];

      swift_unknownObjectRelease();
      v14 = qword_27E2FBBF0;
      v15 = v13;
      if (v14 != -1)
      {
        swift_once();
      }

      (*(*qword_27E30A6D8 + 304))(0xD000000000000022, 0x800000023DB8B2C0);
      v16 = sub_23DB7087C();

      [v15 setAccessibilityLabel_];

      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        v19 = [v17 navigationItem];

        v20 = v15;
        [v19 setLeftBarButtonItem_];
      }

      else
      {
      }
    }

    else
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 navigationItem];

        [v11 setLeftBarButtonItem_];
      }
    }
  }
}

void sub_23DAB7F80()
{
  v1 = *&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView];
  v2 = objc_allocWithZone(MEMORY[0x277D75788]);
  v3 = v1;
  v4 = [v2 init];
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    [v10 setScrollEdgeAppearance_];
  }

  v11 = v3;
  [v0 addChildViewController_];
  v12 = [v0 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 view];

    if (v14)
    {
      [v13 addSubview_];

      sub_23DAB8218();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DAB8218()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView;
  v2 = [*&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [*&v0[v1] view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v0[v1] view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v1] view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  [v24 setActive_];

  v25 = [*&v0[v1] view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  [v31 setActive_];
}

id sub_23DAB85D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23DAB8688()
{
  v1 = v0;
  v2 = sub_23DB6FA6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel;
  sub_23DB6FA5C();
  v8 = type metadata accessor for NavigationModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v1 + v7) = sub_23DAC2518(v6, 0, 0);
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v11 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_subscribers) = v11;
  sub_23DB70D4C();
  __break(1u);
}

uint64_t sub_23DAB87BC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_23DAB8804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DAB884C()
{
  result = qword_27E2FE820;
  if (!qword_27E2FE820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FE820);
  }

  return result;
}

uint64_t sub_23DAB8898()
{
  MEMORY[0x23EEF7E30](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_23DAB88D8()
{
  result = qword_27E2FE830[0];
  if (!qword_27E2FE830[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE150, &qword_23DB82C70);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE830);
  }

  return result;
}

id sub_23DAB893C(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for PlayheadView();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23DAB9798();
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  sub_23DB700DC();
  v13 = sub_23DB70B1C();
  [v11 setBackgroundColor_];

  [v11 setAutoresizingMask_];
  v14 = [v11 layer];

  [v14 setCornerRadius_];
  return v11;
}

char *sub_23DAB8B20(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor] = a1;
  v12 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v13 = a1;
  v14 = [v12 initWithFrame_];
  v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel] = v14;
  v16 = [objc_allocWithZone(type metadata accessor for PlayheadView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] = v16;
  [v16 setHidden_];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = *&v6[v15];
  *&v6[v15] = v18;
  v20 = v18;

  v21 = [v20 layer];
  [v21 setCornerRadius_];

  [*&v6[v15] setAutoresizingMask_];
  [*&v6[v15] setTextAlignment_];
  [*&v6[v15] setHidden_];
  v22 = *&v6[v15];
  sub_23DAB9798();
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 labelColor];
  sub_23DB700DC();
  v26 = sub_23DB70B1C();
  [v24 setTextColor_];

  [*&v6[v15] setHidden_];
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter] = v27;
  [v27 setUsesSignificantDigits_];
  [*&v6[v28] setMaximumSignificantDigits_];
  [*&v6[v17] setHidden_];
  v35.receiver = v6;
  v35.super_class = type metadata accessor for ChartSonificationContainerView();
  v29 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a2, a3, a4, a5);
  v30 = *&v29[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel];
  v31 = v29;
  [v31 addSubview_];
  v32 = *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView];
  [v31 addSubview_];

  v33 = *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer];
  *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer] = 0;

  return v31;
}

uint64_t sub_23DAB8F20(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) invalidate];
      v2 = 1;
LABEL_7:
      [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView) setHidden_];
      result = [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel) setHidden_];
      goto LABEL_8;
    }

    if (result != 1)
    {
LABEL_14:
      type metadata accessor for PlaybackStatus(0);
      result = sub_23DB70DDC();
      __break(1u);
      return result;
    }

LABEL_6:
    v3 = [objc_opt_self() displayLinkWithTarget:v1 selector:sel_updatePlayhead_];
    v4 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink);
    *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) = v3;

    v2 = 0;
    goto LABEL_7;
  }

  if (result != 2)
  {
    if (result != 3)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

LABEL_8:
  if (qword_27E30A760)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    result = sub_23DB6EF1C();
  }

  if (*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23DB6EF1C();
  }

  return result;
}

id sub_23DAB912C(double a1)
{
  [v1 bounds];
  v3 = CGRectGetWidth(v11) + -20.0;
  [v1 bounds];
  Height = CGRectGetHeight(v12);
  if (v3 <= v3 * a1 + 10.0)
  {
    [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] setHidden_];
    [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel] setHidden_];
  }

  [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] setFrame_];
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel;
  v6 = *&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel];
  sub_23DAB92BC(a1);
  v7 = sub_23DB7087C();

  [v6 setText_];

  v8 = *&v1[v5];

  return [v8 sizeToFit];
}

void sub_23DAB92BC(double a1)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor;
  v4 = [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor) xAxis];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 categoryOrder];
    v8 = sub_23DB709EC();

    v9 = *(v8 + 16);

    v10 = floor(v9 * a1);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        v11 = v10;
        v12 = [v6 categoryOrder];
        v13 = sub_23DB709EC();

        if ((v11 & 0x8000000000000000) == 0)
        {
          if (*(v13 + 16) > v11)
          {
            v14 = v13 + 16 * v11;
            v15 = *(v14 + 32);
            v16 = *(v14 + 40);

            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v17 = [*(v1 + v3) xAxis];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    [v18 upperBound];
    [v19 lowerBound];
    [v19 lowerBound];
    type metadata accessor for AudiographExplorerState(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_23DB6E9FC();

    v22 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter);
    v23 = sub_23DB70A7C();
    v24 = [v22 stringFromNumber_];

    if (v24)
    {
      v25 = sub_23DB708BC();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23DB73BA0;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_23DA40598();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_23DB7088C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_23DAB968C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_23DAB9798()
{
  result = qword_27E2FE8E8;
  if (!qword_27E2FE8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FE8E8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23DAB9810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_23DAB9858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DAB98D4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 56);
  v7 = *(v0 + 48);
  v11 = v7;
  if (v12 != 1)
  {

    sub_23DB70ACC();
    v8 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v11, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_23DAB9A34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE8F0, &qword_23DB7C6D8);
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v106 = &v100 - v9;
  v10 = *v1;
  v11 = v1[1];
  v169.n128_u64[0] = v10;
  v169.n128_u64[1] = v11;
  v12 = sub_23DA16E70();

  v105 = v12;
  v13 = sub_23DB6FD8C();
  v15 = v14;
  LOBYTE(v11) = v16;
  v18 = v17;
  sub_23DB7063C();
  sub_23DB6F34C();
  v19 = v11 & 1;
  v181 = v11 & 1;
  if (sub_23DAB98D4())
  {
    v20 = sub_23DB6FBBC();
  }

  else
  {
    v20 = sub_23DB6FBCC();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v174 = *&v180[11];
  v175 = *&v180[13];
  v176 = *&v180[15];
  v177 = *&v180[17];
  v171 = *&v180[5];
  v172 = *&v180[7];
  v169.n128_u64[0] = v13;
  v169.n128_u64[1] = v15;
  v170.n128_u8[0] = v19;
  v173 = *&v180[9];
  v170.n128_u64[1] = v18;
  *&v178[0] = KeyPath;
  *(&v178[0] + 1) = v21;
  *&v178[1] = v23;
  BYTE8(v178[1]) = 0;
  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE8F8, &qword_23DB7C740);
  sub_23DABA614();
  sub_23DB6FE1C();
  v179[7] = v176;
  v179[8] = v177;
  *v180 = v178[0];
  *(&v180[1] + 1) = *(v178 + 9);
  v179[4] = v173;
  v179[5] = v174;
  v179[6] = v175;
  v179[0] = v169;
  v179[1] = v170;
  v179[2] = v171;
  v179[3] = v172;
  sub_23DA17988(v179, &qword_27E2FE8F8, &qword_23DB7C740);
  v24 = v2[3];
  if (v24)
  {
    v169.n128_u64[0] = v2[2];
    v169.n128_u64[1] = v24;

    v25 = sub_23DB6FD8C();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_23DB7063C();
    sub_23DB6F34C();
    v32 = v29 & 1;
    v135.n128_u8[0] = v29 & 1;
    if (sub_23DAB98D4())
    {
      v33 = sub_23DB6FC7C();
    }

    else
    {
      v33 = sub_23DB6FBCC();
    }

    v40 = v33;
    v41 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v43 = sub_23DB6F89C();
    v148.n128_u64[0] = v25;
    v148.n128_u64[1] = v27;
    v149.n128_u8[0] = v32;
    v154 = v111;
    v155 = v112;
    v156 = v113;
    v150 = v107;
    v151 = v108;
    v152 = v109;
    v153 = v110;
    v149.n128_u64[1] = v31;
    v157.n128_u64[0] = v41;
    v157.n128_u64[1] = v40;
    v158.n128_u64[0] = v42;
    v158.n128_u8[8] = 0;
    v158.n128_u32[3] = v43;
    nullsub_1(&v148);
    v177 = v156;
    v178[0] = v157;
    v178[1] = v158;
    v173 = v152;
    v174 = v153;
    v175 = v154;
    v176 = v155;
    v169 = v148;
    v170 = v149;
    v171 = v150;
    v172 = v151;
    if (v2[5])
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_23DABA808(&v169);
    if (v2[5])
    {
LABEL_14:
      v44.n128_f64[0] = sub_23DA6E97C(&v159);
      goto LABEL_27;
    }
  }

  v35 = MEMORY[0x277D83B88];
  v100 = v2[4];
  v34 = v100;
  if (v100 == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v36 = qword_27E30A6D8;
    v37 = (*(*qword_27E30A6D8 + 304))(0xD000000000000016, 0x800000023DB8B5D0);
    v39 = v38;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v36 = qword_27E30A6D8;
    (*(*qword_27E30A6D8 + 304))(0xD000000000000012, 0x800000023DB8B570);
    v45 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_23DB73BA0;
    *(v46 + 56) = v35;
    *(v46 + 64) = MEMORY[0x277D83C10];
    *(v46 + 32) = v34;
    v37 = sub_23DB7088C();
    v39 = v47;
  }

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*v36 + 304))(0xD000000000000019, 0x800000023DB8B590);
  v48 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_23DB73BA0;
  *(v49 + 56) = MEMORY[0x277D83B88];
  *(v49 + 64) = MEMORY[0x277D83C10];
  *(v49 + 32) = v100;
  v50 = sub_23DB7088C();
  v52 = v51;

  if (*(v2 + 41))
  {
    v53 = v52;
  }

  else
  {
    v50 = v37;
    v53 = v39;
  }

  v148.n128_u64[0] = v50;
  v148.n128_u64[1] = v53;
  v54 = sub_23DB6FD8C();
  v56 = v55;
  v58 = v57;
  if (sub_23DAB98D4())
  {
    sub_23DB6FC7C();
  }

  else
  {
    sub_23DB6FC6C();
  }

  v59 = sub_23DB6FD3C();
  v61 = v60;
  v63 = v62;
  v105 = v64;

  sub_23DA16EC4(v54, v56, v58 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v65 = v63 & 1;
  v124.n128_u8[0] = v63 & 1;
  v66 = swift_getKeyPath();
  v67 = sub_23DB6F88C();
  v148.n128_u64[0] = v59;
  v148.n128_u64[1] = v61;
  v149.n128_u8[0] = v65;
  v154 = v139;
  v155 = v140;
  v156 = v141;
  v150 = v135;
  v151 = v136;
  v152 = v137;
  v153 = v138;
  v149.n128_u64[1] = v105;
  v157.n128_u64[0] = v66;
  v157.n128_u8[8] = 0;
  v157.n128_u32[3] = v67;
  nullsub_1(&v148);
  v165 = v154;
  v166 = v155;
  v167 = v156;
  v168 = v157;
  v161 = v150;
  v162 = v151;
  v163 = v152;
  v164 = v153;
  v44 = v148;
  v159 = v148;
  v160 = v149;
LABEL_27:
  v69 = v102;
  v68 = v103;
  v70 = *(v103 + 16);
  v71 = v104;
  v70(v102, v106, v104, v44);
  v131 = v176;
  v132 = v177;
  v133 = v178[0];
  v134 = v178[1];
  v127 = v172;
  v128 = v173;
  v129 = v174;
  v130 = v175;
  v125 = v170;
  v126 = v171;
  v121 = v166;
  v122 = v167;
  v123 = v168;
  v124 = v169;
  v117 = v162;
  v118 = v163;
  v119 = v164;
  v120 = v165;
  v114 = v159;
  v115 = v160;
  v116 = v161;
  v72 = v101;
  (v70)(v101, v69, v71);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE930, &qword_23DB7C768);
  v74 = *(v73 + 48);
  v75 = v132;
  v76 = v131;
  v143 = v132;
  v144 = v133;
  v77 = v133;
  v78 = v114;
  v79 = v114;
  v145 = v134;
  v80 = v127;
  v139 = v128;
  v140 = v129;
  v81 = v130;
  v82 = v129;
  v141 = v130;
  v142 = v131;
  v83 = v124;
  v84 = v123;
  v135 = v124;
  v136 = v125;
  v85 = v125;
  v86 = v126;
  v137 = v126;
  v138 = v127;
  v87 = (v72 + v74);
  v87[4] = v128;
  v87[5] = v82;
  v88 = v134;
  v87[9] = v77;
  v87[10] = v88;
  v87[7] = v76;
  v87[8] = v75;
  v87[6] = v81;
  *v87 = v83;
  v87[1] = v85;
  v87[2] = v86;
  v87[3] = v80;
  v89 = *(v73 + 64);
  v90 = v121;
  v146[7] = v121;
  v146[8] = v122;
  v91 = v122;
  v146[9] = v123;
  v92 = v116;
  v93 = v117;
  v146[3] = v117;
  v146[4] = v118;
  v94 = v118;
  v95 = v119;
  v146[5] = v119;
  v146[6] = v120;
  v146[0] = v78;
  v96 = v115;
  v146[1] = v115;
  v146[2] = v116;
  v97 = (v72 + v89);
  v97[6] = v120;
  v97[7] = v90;
  v97[8] = v91;
  v97[9] = v84;
  v97[2] = v92;
  v97[3] = v93;
  v97[4] = v94;
  v97[5] = v95;
  *v97 = v79;
  v97[1] = v96;
  sub_23DA0E2B4(&v135, &v148, &qword_27E2FE938, &qword_23DB7C770);
  sub_23DA0E2B4(v146, &v148, &qword_27E2FE940, &qword_23DB7C778);
  v98 = *(v68 + 8);
  v98(v106, v71);
  v147[6] = v120;
  v147[7] = v121;
  v147[8] = v122;
  v147[9] = v123;
  v147[2] = v116;
  v147[3] = v117;
  v147[4] = v118;
  v147[5] = v119;
  v147[0] = v114;
  v147[1] = v115;
  sub_23DA17988(v147, &qword_27E2FE940, &qword_23DB7C778);
  v156 = v132;
  v157 = v133;
  v158 = v134;
  v152 = v128;
  v153 = v129;
  v154 = v130;
  v155 = v131;
  v148 = v124;
  v149 = v125;
  v150 = v126;
  v151 = v127;
  sub_23DA17988(&v148, &qword_27E2FE938, &qword_23DB7C770);
  return (v98)(v69, v71);
}

unint64_t sub_23DABA614()
{
  result = qword_27E2FE900;
  if (!qword_27E2FE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE8F8, &qword_23DB7C740);
    sub_23DABA6CC();
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE900);
  }

  return result;
}

unint64_t sub_23DABA6CC()
{
  result = qword_27E2FE908;
  if (!qword_27E2FE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE910, &qword_23DB7C748);
    sub_23DABA784();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE908);
  }

  return result;
}

unint64_t sub_23DABA784()
{
  result = qword_27E2FE918;
  if (!qword_27E2FE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDE00, &unk_23DB7C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE918);
  }

  return result;
}

double sub_23DABA808(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

Swift::Void __swiftcall NavigationModel.goHome()()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v47 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v46 = &v34 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  KeyPath = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  v11 = Strong;
  swift_beginAccess();
  v12 = *(v11 + KeyPath);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v11;
  if (!v12)
  {
    sub_23DB6EF0C();

    v2 = v52[0];
    if (!(v52[0] >> 62))
    {
      if (!*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_86:

        v14 = 0;
        goto LABEL_87;
      }

LABEL_11:
      if ((v2 & 0xC000000000000001) != 0)
      {
LABEL_91:
        v14 = MEMORY[0x23EEF70C0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v14 = *(v2 + 32);
      }

LABEL_87:
      LOBYTE(v52[0]) = 0;
      sub_23DABBAC8(v14, v52);

      goto LABEL_88;
    }

LABEL_85:
    if (!sub_23DB70C3C())
    {
      goto LABEL_86;
    }

    goto LABEL_11;
  }

  sub_23DB6EF0C();

  v13 = v52[0];
  if (!(v52[0] >> 62))
  {
    if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_16:

    v51 = 0;
    goto LABEL_17;
  }

  if (!sub_23DB70C3C())
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_85;
  }

  v51 = *(v13 + 32);

  while (1)
  {

LABEL_17:
    v13 = v37;
    v35 = *(v37 + KeyPath);
    if (v35 >= 1)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v51 = MEMORY[0x23EEF70C0](0, v13);
  }

  v34 = v0;
  v44 = (v2 + 8);
  v45 = (v2 + 16);
  v15 = 1;
  v16 = v35;
  v17 = v46;
  do
  {
    if (v51)
    {
      v38 = v15;
      v18 = sub_23DAC72C0();
      v0 = v18;
      v42 = v18 >> 62;
      if (v18 >> 62)
      {
        v19 = sub_23DB70C3C();
        if (v19)
        {
LABEL_22:
          v49 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          v50 = v0 & 0xC000000000000001;
          swift_beginAccess();
          v13 = 0;
          v40 = 0;
          v41 = 0;
          v36 = v0 + 32;
          v43 = v0 & 0xFFFFFFFFFFFFFF8;
          if (v0 < 0)
          {
            v20 = v0;
          }

          else
          {
            v20 = v0 & 0xFFFFFFFFFFFFFF8;
          }

          v39 = v20;
          v48 = v19;
LABEL_26:
          v2 = v13;
          if (v50)
          {
LABEL_27:
            v21 = MEMORY[0x23EEF70C0](v2, v0);
            v13 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_78;
            }

            goto LABEL_32;
          }

          while (1)
          {
            if (v2 >= *(v43 + 16))
            {
              goto LABEL_79;
            }

            v21 = *(v0 + 8 * v2 + 32);

            v13 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              break;
            }

LABEL_32:
            v22 = v0;
            v23 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v24 = *v45;
            (*v45)(v17, v21 + v23, v1);
            v25 = v47;
            v24(v47, v51 + v49, v1);
            KeyPath = sub_23DB6EA6C();
            v26 = *v44;
            (*v44)(v25, v1);
            v26(v17, v1);
            if (KeyPath)
            {
              if (v42)
              {
                v27 = sub_23DB70C3C();
              }

              else
              {
                v27 = *(v43 + 16);
              }

              v0 = v22;
              if (v13 < v27)
              {
                if (v50)
                {
                  MEMORY[0x23EEF70C0](v13, v22);
                }

                else
                {
                  if (v13 < 0)
                  {
                    goto LABEL_80;
                  }

                  if (v13 >= *(v43 + 16))
                  {
                    goto LABEL_81;
                  }

                  v30 = *(v36 + 8 * v13);
                }

                KeyPath = swift_getKeyPath();
                swift_getKeyPath();
                sub_23DB6EF0C();

                if (v53 == 1)
                {
                  if (v50)
                  {
                    v32 = MEMORY[0x23EEF70C0](v13, v0);
                  }

                  else
                  {
                    v32 = *(v36 + 8 * v13);
                  }

                  goto LABEL_70;
                }

                v41 = 1;
                v40 = v13;
                goto LABEL_59;
              }
            }

            else
            {
              v0 = v22;
              if (v41)
              {
                v28 = v40;
                if ((v40 & 0x8000000000000000) == 0)
                {
                  if (v42)
                  {
                    v29 = sub_23DB70C3C();
                    v28 = v40;
                    if (v40 < v29)
                    {
LABEL_46:
                      if (v50)
                      {
                        MEMORY[0x23EEF70C0](v28, v22);
                      }

                      else
                      {
                        if (v28 >= *(v43 + 16))
                        {
                          __break(1u);
                          goto LABEL_91;
                        }

                        v31 = *(v36 + 8 * v28);
                      }

                      KeyPath = swift_getKeyPath();
                      swift_getKeyPath();
                      sub_23DB6EF0C();

                      if (v53)
                      {
                        if (v50)
                        {
                          v32 = MEMORY[0x23EEF70C0](v40, v0);
                        }

                        else
                        {
                          v32 = *(v36 + 8 * v40);
                        }

LABEL_70:

                        v51 = v32;
LABEL_61:
                        v16 = v35;
                        goto LABEL_73;
                      }

                      ++v40;
                      v41 = 1;
LABEL_59:
                      if (v13 == v48)
                      {
LABEL_60:

                        v51 = 0;
                        goto LABEL_61;
                      }

                      goto LABEL_26;
                    }
                  }

                  else if (v40 < *(v43 + 16))
                  {
                    goto LABEL_46;
                  }
                }
              }
            }

            if (v13 == v48)
            {
              goto LABEL_60;
            }

            ++v2;
            if (v50)
            {
              goto LABEL_27;
            }
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_22;
        }
      }

      v51 = 0;
LABEL_73:
      v15 = v38;
      if (v38 == v16)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v51 = 0;
      if (v15 == v16)
      {
        goto LABEL_77;
      }
    }
  }

  while (!__OFADD__(v15++, 1));
  __break(1u);
LABEL_77:
  v53 = 0;
  sub_23DABBAC8(v51, &v53);

LABEL_88:
}

uint64_t sub_23DABB0B8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (!v8[0])
  {
    v2 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    v2 = 0;
    goto LABEL_10;
  }

  v2 = sub_23DAC6C5C(v1, v8[0]);
  if (!v2)
  {
LABEL_9:

    goto LABEL_10;
  }

  v4 = sub_23DAC699C(v3);
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_23DB6EEFC();
  sub_23DAC2434(v5);

  v6(v8, 0);

LABEL_10:
  NavigationModel.updateSelectedPage(_:)(v2);
}

uint64_t NavigationModel.__allocating_init(columnVisibility:selectedPage:dataModel:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_23DAC2518(a1, a2, a3);

  return v9;
}

uint64_t sub_23DABB2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DABB368(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DABB3DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23DABB420()
{
  v47 = sub_23DB6EA8C();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47, v3);
  v48 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v46 = v32 - v7;
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  swift_beginAccess();
  v41 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  KeyPath = v49;
  if (v49 >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:

    return 0;
  }

  while (1)
  {
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](0, KeyPath);
    }

    else
    {
      if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v12 = *(KeyPath + 32);
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v33 = v49;
    if (!v49)
    {

      return 0;
    }

    v13 = sub_23DAC72C0();
    v8 = v13;
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

LABEL_50:
    v14 = sub_23DB70C3C();
LABEL_10:
    v32[2] = v10;
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v40 = v8 & 0xC000000000000001;
    v39 = v8 & 0xFFFFFFFFFFFFFF8;
    v17 = v33 & 0xFFFFFFFFFFFFFF8;
    v45 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 < 0)
    {
      v17 = v33;
    }

    v32[1] = v17;
    v43 = (v1 + 16);
    v42 = (v1 + 8);
    v36 = v33 & 0xC000000000000001;
    v34 = v33 + 32;
    v38 = v33 >> 62;
    v37 = v8;
    v35 = v14;
    while (v40)
    {
      v1 = MEMORY[0x23EEF70C0](v15, v8);
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_40;
      }

LABEL_17:
      if (v38)
      {
        if (v16 >= sub_23DB70C3C())
        {
LABEL_38:

          goto LABEL_39;
        }
      }

      else if (v16 >= *(v45 + 16))
      {
        goto LABEL_38;
      }

      v44 = v10;
      swift_getKeyPath();
      v10 = swift_getKeyPath();

      sub_23DB6EF0C();

      v18 = v50;
      if (v50)
      {
        v19 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v20 = *v43;
        KeyPath = v46;
        v8 = v47;
        (*v43)(v46, v1 + v19, v47);
        v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v22 = v48;
        v20(v48, v18 + v21, v8);
        v10 = sub_23DB6EA6C();

        v23 = *v42;
        (*v42)(v22, v8);
        v23(KeyPath, v8);
        if (v10)
        {

          return v16;
        }
      }

      else
      {
      }

      if (v36)
      {
        v24 = MEMORY[0x23EEF70C0](v16, v33);
      }

      else
      {
        if (v16 < 0)
        {
          goto LABEL_42;
        }

        if (v16 >= *(v45 + 16))
        {
          goto LABEL_43;
        }

        v24 = *(v34 + 8 * v16);
      }

      v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v26 = *v43;
      KeyPath = v46;
      v27 = v47;
      (*v43)(v46, v1 + v25, v47);
      v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v29 = v48;
      v26(v48, v24 + v28, v27);
      v10 = sub_23DB6EA6C();

      v30 = *v42;
      (*v42)(v29, v27);
      v30(KeyPath, v27);
      v16 += v10 & 1;
      ++v15;
      v8 = v37;
      if (v44 == v35)
      {
        goto LABEL_37;
      }
    }

    if (v15 >= *(v39 + 16))
    {
      goto LABEL_41;
    }

    v1 = *(v8 + 8 * v15 + 32);

    v10 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (!sub_23DB70C3C())
    {
      goto LABEL_45;
    }
  }

  v16 = 0;
LABEL_37:

LABEL_39:

  return v16;
}

void sub_23DABBAC8(uint64_t a1, char *a2)
{
  if (a1)
  {
    v3 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v10)
    {

      v4 = a1;
LABEL_18:
      NavigationModel.updateSelectedPage(_:)(v4);

      return;
    }

    if (v3)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v8 = 1;
LABEL_16:
        v4 = sub_23DAC6C5C(v8, a1);

        goto LABEL_18;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v8 = 0;
        goto LABEL_16;
      }
    }

    v4 = 0;
    goto LABEL_18;
  }

  if (qword_27E2FBBE8 != -1)
  {
    swift_once();
  }

  v5 = sub_23DB6EBFC();
  __swift_project_value_buffer(v5, qword_27E30A6C0);
  oslog = sub_23DB6EBDC();
  v6 = sub_23DB70ABC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D9FF000, oslog, v6, "Updating to nil page", v7, 2u);
    MEMORY[0x23EEF7D90](v7, -1, -1);
  }
}

uint64_t sub_23DABBCD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return Strong;
  }

  if (swift_weakLoadStrong())
  {
    type metadata accessor for AXOnboardingModelVoiceOverIOS();
    if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(), swift_dynamicCastClass()))
    {
    }

    else
    {
      type metadata accessor for AXOnboardingModelVoiceControl();
      swift_dynamicCastClass();
    }
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_23DB7087C();

  v3 = [v1 stringForKey_];

  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = sub_23DB708BC();
  v6 = v5;

  v7 = sub_23DAC72C0();
  v8 = v7;
  if (v7 >> 62)
  {
LABEL_27:
    v9 = sub_23DB70C3C();
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_28:

    return 0;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_9:
  v10 = 0;
  while ((v8 & 0xC000000000000001) != 0)
  {
    Strong = MEMORY[0x23EEF70C0](v10, v8);
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_22;
    }

LABEL_13:
    v12 = (Strong + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v13 = *v12 == v4 && v12[1] == v6;
    if (v13 || (sub_23DB70DBC() & 1) != 0)
    {
      goto LABEL_23;
    }

    ++v10;
    if (v11 == v9)
    {
      goto LABEL_28;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  Strong = *(v8 + 8 * v10 + 32);

  v11 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v15 != 1)
  {
    return Strong;
  }

LABEL_24:

  return 0;
}

uint64_t sub_23DABC054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23DB707AC();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23DB707CC();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DA5295C();
  v15 = sub_23DB70AEC();
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAC2E70(&qword_27E2FE2F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DB70C0C();
  MEMORY[0x23EEF6EA0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v20 + 8))(v9, v5);
  return (*(v10 + 8))(v14, v19);
}

uint64_t sub_23DABC3F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC470()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);

    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC504()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);
    v4 = *(v2 + 56);
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC588()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC604()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);

    sub_23DB6EE7C();
  }

  return result;
}

uint64_t (*sub_23DABC698(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23DABC6EC;
}

uint64_t sub_23DABC6EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
  }

  return result;
}

uint64_t sub_23DABC744(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB50, &qword_23DB7CAF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB58, &qword_23DB7CAF8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEB60, &qword_27E2FEB58, &qword_23DB7CAF8);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB68, &qword_27E2FEB50, &qword_23DB7CAF0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABC940(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB10, &qword_23DB7CAD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB18, &qword_23DB7CAD8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEB20, &qword_27E2FEB18, &qword_23DB7CAD8);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB28, &qword_27E2FEB10, &qword_23DB7CAD0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABCB3C(float a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB30, &qword_23DB7CAE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v1 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB38, &qword_23DB7CAE8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v1 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEB40, &qword_27E2FEB38, &qword_23DB7CAE8);
  *(v1 + 24) = sub_23DB6EF3C();
  v17 = *(v1 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB48, &qword_27E2FEB30, &qword_23DB7CAE0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABCD40(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAF0, &qword_23DB7CAC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAF8, &qword_23DB7CAC8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEB00, &qword_27E2FEAF8, &qword_23DB7CAC8);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB08, &qword_27E2FEAF0, &qword_23DB7CAC0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABCF3C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAD0, &qword_23DB7CAB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAD8, &qword_23DB7CAB8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEAE0, &qword_27E2FEAD8, &qword_23DB7CAB8);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAE8, &qword_27E2FEAD0, &qword_23DB7CAB0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABD138(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAB0, &qword_23DB7CAA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAB8, &qword_23DB7CAA8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEAC0, &qword_27E2FEAB8, &qword_23DB7CAA8);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAC8, &qword_27E2FEAB0, &qword_23DB7CAA0);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

void *sub_23DABD334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9F0, &qword_23DB7CA40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - v10;
  v3[5] = a1;
  v3[6] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9F8, &qword_23DB7CA48);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_23DB6EE9C();
  v3[2] = v15;
  v19 = v15;
  sub_23DA17B80(&qword_27E2FEA00, &qword_27E2FE9F8, &qword_23DB7CA48);
  v3[3] = sub_23DB6EF3C();
  v19 = v3[2];

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA08, &qword_27E2FE9F0, &qword_23DB7CA40);
  v16 = sub_23DB6EF3C();
  (*(v7 + 8))(v11, v6);
  v3[4] = v16;
  return v3;
}

uint64_t sub_23DABD534(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA90, &qword_23DB7CA90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA98, &qword_23DB7CA98);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEAA0, &qword_27E2FEA98, &qword_23DB7CA98);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAA8, &qword_27E2FEA90, &qword_23DB7CA90);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABD734(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA70, &qword_23DB7CA80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA78, &qword_23DB7CA88);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEA80, &qword_27E2FEA78, &qword_23DB7CA88);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA88, &qword_27E2FEA70, &qword_23DB7CA80);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t sub_23DABD930(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA50, &qword_23DB7CA70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v22 - v14;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA58, &qword_23DB7CA78);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_23DB6EE9C();
  *(v4 + 16) = v19;
  v23 = v19;
  sub_23DA17B80(&qword_27E2FEA60, &qword_27E2FEA58, &qword_23DB7CA78);
  *(v4 + 24) = sub_23DB6EF3C();
  v23 = *(v4 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA68, &qword_27E2FEA50, &qword_23DB7CA70);
  v20 = sub_23DB6EF3C();
  (*(v11 + 8))(v15, v10);
  *(v5 + 32) = v20;
  return v5;
}

void *sub_23DABDB4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA30, &qword_23DB7CA60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v2[5] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA38, &qword_23DB7CA68);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  v2[2] = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEA40, &qword_27E2FEA38, &qword_23DB7CA68);
  v2[3] = sub_23DB6EF3C();
  v17 = v2[2];

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA48, &qword_27E2FEA30, &qword_23DB7CA60);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  v2[4] = v14;
  return v2;
}

uint64_t sub_23DABDD48(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA10, &qword_23DB7CA50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  *(v2 + 40) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA18, &qword_23DB7CA58);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_23DB6EE9C();
  *(v2 + 16) = v13;
  v17 = v13;
  sub_23DA17B80(&qword_27E2FEA20, &qword_27E2FEA18, &qword_23DB7CA58);
  *(v2 + 24) = sub_23DB6EF3C();
  v17 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA28, &qword_27E2FEA10, &qword_23DB7CA50);
  v14 = sub_23DB6EF3C();
  (*(v5 + 8))(v9, v4);
  *(v2 + 32) = v14;
  return v2;
}

uint64_t NavigationModel.shouldShowHomeButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t NavigationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t focusInstructions.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E2FE958 = a1;
  return result;
}

uint64_t NavigationModel.selectedPage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DABE19C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DABE21C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF1C();
  sub_23DABE3E8(v5);
}

uint64_t NavigationModel.selectedPage.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF1C();
  sub_23DABE3E8(v1);
}

uint64_t sub_23DABE3E8(uint64_t a1)
{
  v2 = sub_23DB6EB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB6EA8C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v35 = &v32 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v18 = v36;
  if (v36)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v34 = v14;
    if (v36)
    {

      if (!a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_27E2FBBE8 != -1)
      {
        swift_once();
      }

      v19 = sub_23DB6EBFC();
      __swift_project_value_buffer(v19, qword_27E30A6C0);
      v20 = sub_23DB6EBDC();
      v21 = sub_23DB70ABC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v7;
        v23 = a1;
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23D9FF000, v20, v21, "Trying to display hidden page!!!", v24, 2u);
        v25 = v24;
        a1 = v23;
        v7 = v22;
        MEMORY[0x23EEF7D90](v25, -1, -1);
      }

      if (!a1)
      {
        goto LABEL_14;
      }
    }

    v26 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v32 = v2;
    v33 = v3;
    v27 = v9[2];
    v28 = v35;
    v27(v35, v18 + v26, v8);
    v29 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v30 = v34;
    v27(v34, a1 + v29, v8);
    LOBYTE(v29) = sub_23DB6EA6C();
    v31 = v9[1];
    v31(v30, v8);
    v31(v28, v8);
    v2 = v32;
    v3 = v33;
    if (v29)
    {
    }

LABEL_13:
    sub_23DA1DD00();
LABEL_14:
    v36 = 0u;
    v37 = 0u;
    sub_23DB6EB7C();
    sub_23DB6EB2C();
    result = (*(v3 + 8))(v7, v2);
    if (!v18)
    {
      return result;
    }

    sub_23DA1DF04();
  }

  if (a1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t (*NavigationModel.selectedPage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a1 = a1[1];
  return sub_23DABE89C;
}

uint64_t sub_23DABE89C(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {

    sub_23DB6EF0C();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_23DB6EF1C();
    sub_23DABE3E8(v6);

    v7 = *a1;
  }

  else
  {
    v8 = a1[2];
    sub_23DB6EF0C();

    v9 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_23DB6EF1C();
    sub_23DABE3E8(v9);
  }
}

uint64_t NavigationModel.$selectedPage.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DABEA9C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DABEB14(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v18 - v13;
  v15 = *(v5 + 16);
  v15(&v18 - v13, a1, v4, v12);
  v16 = *a2;
  (v15)(v9, v14, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v14, v4);
}

uint64_t NavigationModel.$selectedPage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NavigationModel.$selectedPage.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
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

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA107BC;
}

uint64_t sub_23DABEF40(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  *(v3 + 40) = v2;

  sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
}

uint64_t NavigationModel.shouldShowHomeButton.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  *(v3 + 40) = a1;

  sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
}

void (*NavigationModel.shouldShowHomeButton.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);

  *(v4 + 40) = sub_23DABC698(v4);
  return sub_23DABF0D8;
}

void sub_23DABF0D8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_23DABF12C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t NavigationModel.dataModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*NavigationModel.dataModel.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_23DABF2E0;
}

void sub_23DABF2E0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t NavigationModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NavigationModel.init()();
  return v3;
}

uint64_t NavigationModel.init()()
{
  v1 = v0;
  v2 = sub_23DB6FA6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27 - v20;
  v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE988, &unk_23DB7C880);
  sub_23DB6EECC();
  (*(v17 + 32))(v1 + v22, v21, v16);
  v23 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v1 + v23) = sub_23DABC940(0);
  v24 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v25 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE998, &qword_23DB7C890);
  sub_23DB6EECC();
  (*(v11 + 32))(v1 + v24, v15, v28);
  swift_weakInit();
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v25 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers) = v25;
  sub_23DB6FA5C();
  swift_beginAccess();
  (*(v3 + 16))(v29, v10, v2);
  sub_23DB6EECC();
  (*(v3 + 8))(v10, v2);
  swift_endAccess();
  return v1;
}

uint64_t NavigationModel.init(columnVisibility:selectedPage:dataModel:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23DAC2518(a1, a2, a3);

  return v3;
}

void NavigationModel.updateSelectedPage(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v3 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
    swift_beginAccess();
    *(v3 + 40) = (v16 & 1) == 0;

    sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if ((v15 & 1) == 0)
    {
      v4 = [objc_opt_self() standardUserDefaults];
      v5 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v6 = *v5;
      v7 = v5[1];

      v8 = sub_23DB7087C();

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        type metadata accessor for AXOnboardingModelVoiceOverIOS();
        if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(), swift_dynamicCastClass()))
        {
        }

        else
        {
          type metadata accessor for AXOnboardingModelVoiceControl();
          swift_dynamicCastClass();
        }
      }

      v12 = sub_23DB7087C();

      [v4 setObject:v8 forKey:v12];
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    sub_23DABE3E8(v14);
  }

  else
  {
    if (qword_27E2FBBE8 != -1)
    {
      swift_once();
    }

    v9 = sub_23DB6EBFC();
    __swift_project_value_buffer(v9, qword_27E30A6C0);
    oslog = sub_23DB6EBDC();
    v10 = sub_23DB70ABC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23D9FF000, oslog, v10, "Updating to nil page", v11, 2u);
      MEMORY[0x23EEF7D90](v11, -1, -1);
    }
  }
}

uint64_t sub_23DABFBB8()
{
  v0 = sub_23DABFE74();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v1 = v9;
  if (!(v9 >> 62))
  {
    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_20:

    goto LABEL_25;
  }

  v2 = sub_23DB70C3C();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = *(v9 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v2 = v9;
  if (v9)
  {
    v1 = v9 & 0xFFFFFFFFFFFFFF8;
    if (!(v9 >> 62))
    {
      if (v0 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_23:
    v7 = v2;
    v8 = sub_23DB70C3C();
    v2 = v7;
    if (v0 >= v8)
    {
      goto LABEL_24;
    }

LABEL_10:
    if ((v0 & 0x8000000000000000) == 0)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](v0);
      }

      else
      {
        if (v0 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v4 = *(v2 + 8 * v0 + 32);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      if (v9)
      {
        if (!(v9 >> 62))
        {
          v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

          return v5;
        }

LABEL_30:
        v5 = sub_23DB70C3C();
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_18:

LABEL_25:

  return 1;
}

uint64_t sub_23DABFE74()
{
  v42 = sub_23DB6EA8C();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42, v4);
  v43 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v41 = v27 - v8;
  swift_beginAccess();
  v36 = v0;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v12 = v44;
  if (v44 >> 62)
  {
    goto LABEL_48;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:

LABEL_50:

    return 0;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x23EEF70C0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v1 = *(v12 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v28 = v44;
  if (!v44)
  {

    goto LABEL_50;
  }

  v13 = sub_23DAC72C0();
  KeyPath = v13;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_55:
  v14 = sub_23DB70C3C();
LABEL_10:
  v27[1] = v1;
  v27[2] = v10;
  if (v14)
  {
    v12 = 0;
    v15 = 0;
    v35 = KeyPath & 0xC000000000000001;
    v34 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v16 = v28 & 0xFFFFFFFFFFFFFF8;
    v40 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v16 = v28;
    }

    v27[0] = v16;
    v38 = (v2 + 16);
    v37 = (v2 + 8);
    v31 = v28 & 0xC000000000000001;
    v29 = v28 + 32;
    v33 = v28 >> 62;
    v32 = KeyPath;
    v30 = v14;
    while (1)
    {
      if (v35)
      {
        v2 = MEMORY[0x23EEF70C0](v12, KeyPath);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v12 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v2 = *(KeyPath + 8 * v12 + 32);

        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          if (!sub_23DB70C3C())
          {
            goto LABEL_49;
          }

          goto LABEL_4;
        }
      }

      if (v33)
      {
        if (v15 >= sub_23DB70C3C())
        {
LABEL_38:

          goto LABEL_39;
        }
      }

      else if (v15 >= *(v40 + 16))
      {
        goto LABEL_38;
      }

      v39 = v10;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      KeyPath = v45;
      if (v45)
      {
        v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v18 = *v38;
        v19 = v41;
        v10 = v42;
        (*v38)(v41, v2 + v17, v42);
        v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v1 = v43;
        v18(v43, KeyPath + v20, v10);
        LOBYTE(v20) = sub_23DB6EA6C();

        KeyPath = *v37;
        (*v37)(v1, v10);
        (KeyPath)(v19, v10);
        if (v20)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if (v31)
      {
        v21 = MEMORY[0x23EEF70C0](v15, v28);
      }

      else
      {
        if (v15 < 0)
        {
          goto LABEL_46;
        }

        if (v15 >= *(v40 + 16))
        {
          goto LABEL_47;
        }

        v21 = *(v29 + 8 * v15);
      }

      v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v23 = *v38;
      v24 = v41;
      v10 = v42;
      (*v38)(v41, v2 + v22, v42);
      v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v1 = v43;
      v23(v43, v21 + v25, v10);
      LOBYTE(v23) = sub_23DB6EA6C();

      v26 = *v37;
      (*v37)(v1, v10);
      v26(v24, v10);
      v15 += v23 & 1;
      ++v12;
      KeyPath = v32;
      if (v39 == v30)
      {
        goto LABEL_37;
      }
    }
  }

  v15 = 0;
LABEL_37:

LABEL_39:

  if (!v15)
  {
    return 0;
  }

  result = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
LABEL_43:

    return v15 - (v15 > 0);
  }

  return result;
}

uint64_t sub_23DAC0550()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - v8;
  v10 = sub_23DABFE74();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v12 = Strong;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v14 = v43;
  if (!(v43 >> 62))
  {
    v15 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_37:

    goto LABEL_38;
  }

  v15 = sub_23DB70C3C();
  if (!v15)
  {
    goto LABEL_37;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x23EEF70C0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v16 = *(v14 + 32);
  }

  v17 = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v15 = v43;
  if (!v43)
  {
    goto LABEL_35;
  }

  v39 = v16;
  KeyPath = v43 & 0xFFFFFFFFFFFFFF8;
  if (v43 >> 62)
  {
    goto LABEL_43;
  }

  if (v10 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:

LABEL_35:

LABEL_38:

    return 1;
  }

  while (1)
  {
    if (v10 < 0)
    {
      goto LABEL_34;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
LABEL_46:
      v10 = MEMORY[0x23EEF70C0](v10);
    }

    else
    {
      if (v10 >= *(KeyPath + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v10 = *(v15 + 8 * v10 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v18 = v43;
    if (!v43)
    {
      goto LABEL_35;
    }

    v17 = v43 & 0xFFFFFFFFFFFFFF8;
    if (!(v43 >> 62))
    {
      v19 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

LABEL_48:
    v10 = v18;
    v19 = sub_23DB70C3C();
    v18 = v10;
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_17:
    v38 = v12;
    v40 = v19;
    v41 = v18;
    if ((v18 & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = 0;
    v36 = v1 + 1;
    v37 = (v1 + 2);
    while (1)
    {
      v15 = MEMORY[0x23EEF70C0](v20);
      KeyPath = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v1 = v15;
      v42 = v20 + 1;
      swift_getKeyPath();
      v10 = swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_23DB6EF0C();

      v21 = v44;
      if (v44)
      {
        v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v23 = *v37;
        (*v37)(v9, v1 + v22, v0);
        v24 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v23(v5, v21 + v24, v0);
        v10 = sub_23DB6EA6C();
        swift_unknownObjectRelease_n();

        v25 = *v36;
        (*v36)(v5, v0);
        v25(v9, v0);
        v12 = v38;
        if (v10)
        {
          goto LABEL_33;
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v20;
      if (v42 == v40)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v17 = v15;
    v34 = sub_23DB70C3C();
    v15 = v17;
    if (v10 >= v34)
    {
      goto LABEL_34;
    }
  }

  v26 = 0;
  v36 = v1 + 1;
  v37 = (v1 + 2);
  v42 = v17;
  v27 = (v1 + 2);
  while (1)
  {
    if (v26 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v1 = *(v18 + 8 * v26 + 32);
    v10 = swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_23DB6EF0C();

    v28 = v44;
    if (v44)
    {
      break;
    }

LABEL_28:
    ++v26;
    v18 = v41;
    v17 = v42;
    if (v40 == v26)
    {
      goto LABEL_34;
    }
  }

  v29 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v30 = *v27;
  (*v27)(v9, v1 + v29, v0);
  v31 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v30(v5, v28 + v31, v0);
  v10 = sub_23DB6EA6C();

  v1 = v36;
  v32 = *v36;
  (*v36)(v5, v0);
  v32(v9, v0);
  v12 = v38;
  if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  v42 = v26 + 1;
LABEL_33:

  return v42;
}

uint64_t NavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__columnVisibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9B0, &qword_23DB7C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);

  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_weakDestroy();
  v8 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers);

  return v0;
}

uint64_t NavigationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__columnVisibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9B0, &qword_23DB7C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);

  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_weakDestroy();
  v8 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DAC0EA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t sub_23DAC0F1C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v38 - v14;
  v16 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = *v2;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = sub_23DB70C4C();

    if (v18)
    {

      v47 = v18;
      type metadata accessor for Page(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v48;
    }

    else
    {
      result = sub_23DB70C3C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v35 = sub_23DAC1320(v17, result + 1);
        v48 = v35;
        v36 = *(v35 + 16);
        if (*(v35 + 24) <= v36)
        {
          sub_23DAC1634(v36 + 1);
          v35 = v48;
        }

        sub_23DAC19AC(v37, v35);

        *v3 = v35;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v39 = v2;
    v40 = a1;
    v20 = *(v16 + 40);
    sub_23DB70E0C();
    v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v22 = v7[2];
    v43 = v21;
    v22(v15, a2 + v21, v6);
    sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
    sub_23DB7083C();
    v23 = v7[1];
    v23(v15, v6);
    v24 = sub_23DB70E4C();
    v25 = v16 + 56;
    v44 = v16;
    v45 = a2;
    v26 = -1 << *(v16 + 32);
    v27 = v24 & ~v26;
    v42 = v25;
    if ((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v41 = ~v26;
      while (1)
      {
        v28 = *(*(v44 + 48) + 8 * v27);
        v29 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v22(v15, v28 + v29, v6);
        v22(v12, v45 + v43, v6);
        LOBYTE(v28) = sub_23DB6EA6C();
        v23(v12, v6);
        v23(v15, v6);
        if (v28)
        {
          break;
        }

        v27 = (v27 + 1) & v41;
        if (((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v40 = *(*(v44 + 48) + 8 * v27);

      return 0;
    }

    else
    {
LABEL_11:
      v30 = v39;
      v31 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *v30;
      v33 = v45;

      sub_23DAC1B60(v34, v27, isUniquelyReferenced_nonNull_native);
      *v30 = v46;
      *v40 = v33;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23DAC1320(uint64_t a1, uint64_t a2)
{
  v3 = sub_23DB6EA8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
    v9 = sub_23DB70CBC();
    v32 = v9;
    sub_23DB70C2C();
    v10 = sub_23DB70C5C();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for Page(0);
      v12 = v11;
      v13 = (v4 + 16);
      v14 = (v4 + 8);
      do
      {
        v30 = v12;
        swift_dynamicCast();
        v24 = *(v9 + 16);
        if (*(v9 + 24) <= v24)
        {
          sub_23DAC1634(v24 + 1);
        }

        v15 = v31;
        v9 = v32;
        v16 = *(v32 + 40);
        sub_23DB70E0C();
        v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        (*v13)(v8, v15 + v17, v3);
        sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
        sub_23DB7083C();
        (*v14)(v8, v3);
        result = sub_23DB70E4C();
        v19 = v9 + 56;
        v20 = -1 << *(v9 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v9 + 56 + 8 * (v21 >> 6))) != 0)
        {
          v23 = __clz(__rbit64((-1 << v21) & ~*(v9 + 56 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v20) >> 6;
          do
          {
            if (++v22 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v27 = v22 == v26;
            if (v22 == v26)
            {
              v22 = 0;
            }

            v25 |= v27;
            v28 = *(v19 + 8 * v22);
          }

          while (v28 == -1);
          v23 = __clz(__rbit64(~v28)) + (v22 << 6);
        }

        *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v15;
        ++*(v9 + 16);
        v12 = sub_23DB70C5C();
      }

      while (v12);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v9;
}

uint64_t sub_23DAC1634(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  result = sub_23DB70CAC();
  v13 = result;
  if (*(v10 + 16))
  {
    v36 = v2;
    v37 = v10;
    v14 = 0;
    v15 = (v10 + 56);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 56);
    v19 = (v16 + 63) >> 6;
    v38 = (v5 + 8);
    v39 = (v5 + 16);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = *(*(v10 + 48) + 8 * (v22 | (v14 << 6)));
      v26 = *(v13 + 40);
      sub_23DB70E0C();
      v27 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      (*v39)(v9, v25 + v27, v4);
      sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
      sub_23DB7083C();
      (*v38)(v9, v4);
      result = sub_23DB70E4C();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v25;
      ++*(v13 + 16);
      v10 = v37;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v10 + 32);
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    v2 = v36;
    *(v10 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

unint64_t sub_23DAC19AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + 40);
  sub_23DB70E0C();
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v5 + 16))(v9, a1 + v11, v4);
  sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  (*(v5 + 8))(v9, v4);
  sub_23DB70E4C();
  v12 = -1 << *(a2 + 32);
  result = sub_23DB70C1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23DAC1B60(uint64_t a1, unint64_t a2, char a3)
{
  v40 = a1;
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v13);
  v16 = &v34 - v15;
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v35 = v3;
  if (v18 > v17 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23DAC1634(v17 + 1);
  }

  else
  {
    if (v18 > v17)
    {
      result = sub_23DAC1EA4();
      goto LABEL_12;
    }

    sub_23DAC1FF4(v17 + 1);
  }

  v19 = *v3;
  v20 = *(*v3 + 40);
  sub_23DB70E0C();
  v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v22 = v40;
  swift_beginAccess();
  v23 = v7[2];
  v37 = v21;
  v23(v16, v22 + v21, v6);
  sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  v25 = v7 + 1;
  v24 = v7[1];
  v39 = v25;
  v24(v16, v6);
  result = sub_23DB70E4C();
  v38 = v19;
  v26 = -1 << *(v19 + 32);
  a2 = result & ~v26;
  v36 = v19 + 56;
  if ((*(v19 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v26;
    v34 = type metadata accessor for Page(0);
    do
    {
      v28 = *(*(v38 + 48) + 8 * a2);
      v29 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v23(v16, v28 + v29, v6);
      v23(v12, v40 + v37, v6);
      LOBYTE(v28) = sub_23DB6EA6C();
      v24(v12, v6);
      result = (v24)(v16, v6);
      if (v28)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v35;
  *(v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + 8 * a2) = v40;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23DB70DEC();
  __break(1u);
  return result;
}

void *sub_23DAC1EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  v2 = *v0;
  v3 = sub_23DB70C9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23DAC1FF4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23DB6EA8C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41, v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  result = sub_23DB70CAC();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = (v4 + 8);
    v38 = (v4 + 16);
    v18 = result + 56;
    v39 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(*(v8 + 48) + 8 * (v20 | (v12 << 6)));
      v24 = *(v11 + 40);
      sub_23DB70E0C();
      v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v26 = v23 + v25;
      v27 = v40;
      v28 = v41;
      (*v38)(v40, v26, v41);
      sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);

      sub_23DB7083C();
      (*v37)(v27, v28);
      result = sub_23DB70E4C();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v8 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v8 = v39;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v23;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v36;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t (*sub_23DAC2354(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EEF70C0](a2, a3);
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
    *v3 = v5;
    return sub_23DAC23D4;
  }

  __break(1u);
  return result;
}

unint64_t sub_23DAC2434(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEF70C0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_23DAC0F1C(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_23DB70C3C();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23DAC2518(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v41 = a1;
  v5 = sub_23DB6FA6C();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v37 - v23;
  v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE988, &unk_23DB7C880);
  sub_23DB6EECC();
  (*(v20 + 32))(v4 + v25, v24, v19);
  v26 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v4 + v26) = sub_23DABC940(0);
  v27 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v28 = MEMORY[0x277D84FA0];
  v42 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE998, &qword_23DB7C890);
  sub_23DB6EECC();
  (*(v14 + 32))(v4 + v27, v18, v13);
  v29 = v41;
  swift_weakInit();
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v28 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  *(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers) = v28;
  v30 = v38;
  v31 = *(v38 + 16);
  v31(v12, v29, v5);
  swift_beginAccess();
  v31(v37, v12, v5);
  sub_23DB6EECC();
  v32 = *(v30 + 8);
  v38 = v5;
  v32(v12, v5);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v39;

  sub_23DB6EF0C();

  v34 = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v33;

  sub_23DB6EF1C();
  sub_23DABE3E8(v34);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v35 = v41;
  if (v42)
  {
    sub_23DA1DF04();
  }

  v32(v35, v38);
  return v4;
}

unint64_t sub_23DAC2A08()
{
  result = qword_27E2FE9B8;
  if (!qword_27E2FE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE9B8);
  }

  return result;
}

uint64_t sub_23DAC2A64@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_23DAC2ABC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23DAC2B18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t type metadata accessor for NavigationModel()
{
  result = qword_27E2FE9C0;
  if (!qword_27E2FE9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DAC2BD8()
{
  sub_23DAC2D70();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA3F3D4(319, &qword_27E2FE9D8, &qword_27E2FE988, &unk_23DB7C880);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA3F3D4(319, &qword_27E2FE9E0, &qword_27E2FE998, &qword_23DB7C890);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DAC2D70()
{
  if (!qword_27E2FE9D0)
  {
    sub_23DB6FA6C();
    v0 = sub_23DB6EF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FE9D0);
    }
  }
}

uint64_t sub_23DAC2E18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DAC2E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DAC2F38(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_23DB706CC();
}

uint64_t sub_23DAC3108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB70B7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t AXOnboardingHeader.init(title:description:iconName:traits:customIconView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16 = *a7;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for AXOnboardingHeader();
  v18 = (a9 + v17[9]);
  *v18 = a1;
  v18[1] = a2;
  v19 = (a9 + v17[10]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + v17[11]);
  *v20 = a5;
  v20[1] = a6;
  *(a9 + v17[12]) = v16;
  v21 = v17[13];
  v22 = sub_23DB70B7C();
  v23 = *(*(v22 - 8) + 32);

  return v23(a9 + v21, a8, v22);
}

uint64_t sub_23DAC32C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_23DA0E2B4(v2, &v19 - v13, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6F25C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t AXOnboardingHeader.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v2 = *(a1 + 16);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v3 = sub_23DB7044C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  sub_23DAC36AC(a1);
  swift_getWitnessTable();
  sub_23DAAC170(v8);
  v13 = *(v4 + 8);
  v13(v8, v3);
  sub_23DAAC170(v12);
  return (v13)(v12, v3);
}

uint64_t sub_23DAC36AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v3 = *(a1 + 16);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v4 = sub_23DB7044C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17[-v12];
  v14 = *(a1 + 24);
  v18 = v3;
  v19 = v14;
  v20 = v1;
  sub_23DB6F68C();
  sub_23DB7043C();
  swift_getWitnessTable();
  sub_23DAAC170(v9);
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_23DAAC170(v13);
  return (v15)(v13, v4);
}

uint64_t sub_23DAC3924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v33 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v31 = a2;
  sub_23DB6F7AC();
  v14 = sub_23DB70B7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v29 - v22;
  v24 = type metadata accessor for AXOnboardingHeader();
  sub_23DAC3C80(v24, v19);
  v37[3] = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88);
  v37[4] = a3;
  v37[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_23DAAC170(v19);
  v26 = *(v15 + 8);
  v26(v19, v14);
  *v13 = sub_23DB6F5BC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC08, &qword_23DB7CC18);
  sub_23DAC432C(v30, &v13[*(v27 + 44)]);
  (*(v15 + 16))(v19, v23, v14);
  v37[0] = v19;
  sub_23DAC5AFC(v13, v9);
  v37[1] = v9;
  v36[0] = v14;
  v36[1] = v32;
  v34 = WitnessTable;
  v35 = sub_23DA17B80(&qword_27E2FEC10, qword_27E2FEB78, &qword_23DB7CB90);
  sub_23DAC2F38(v37, 2uLL, v36);
  sub_23DAC5B6C(v13);
  v26(v23, v14);
  sub_23DAC5B6C(v9);
  return (v26)(v19, v14);
}

uint64_t sub_23DAC3C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  v5 = *(a1 + 16);
  v6 = sub_23DB70B7C();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v68 = &v64 - v9;
  v71 = *(v5 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v11, v12);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v66 = &v64 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v64 - v24;
  v26 = sub_23DB6F7AC();
  v72 = sub_23DB70B7C();
  v74 = *(v72 - 8);
  v27 = *(v74 + 64);
  MEMORY[0x28223BE20](v72, v28);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v73 = &v64 - v34;
  v35 = a1;
  v36 = (v3 + *(a1 + 44));
  if (v36[1])
  {
    v37 = *v36;
    *v25 = sub_23DB6F68C();
    *(v25 + 1) = 0;
    v25[16] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC88, &qword_23DB7CC98);
    v39 = *(v35 + 24);
    sub_23DAC4FE4(&v25[*(v38 + 44)]);
    v40 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88);
    v41 = v21;
    v42 = v39;
    sub_23DAAA68C(v25, v41);
    sub_23DA17988(v25, &qword_27E2FEB70, &qword_23DB7CB88);
    (*(*(v26 - 8) + 56))(v30, 0, 1, v26);
    v76 = v40;
    v43 = &v76;
    v44 = v30;
  }

  else
  {
    v64 = v21;
    v65 = v30;
    v45 = v66;
    v46 = v67;
    v47 = v35;
    v48 = *(v35 + 52);
    v50 = v69;
    v49 = v70;
    v51 = v68;
    (*(v69 + 16))(v68, v3 + v48, v70, v33);
    v52 = v71;
    if ((*(v71 + 48))(v51, 1, v5) == 1)
    {
      (*(v50 + 8))(v51, v49);
      v44 = v65;
      (*(*(v26 - 8) + 56))(v65, 1, 1, v26);
      v53 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88);
      v42 = *(v47 + 24);
      v78 = v53;
      v43 = &v78;
    }

    else
    {
      (*(v52 + 32))(v20, v51, v5);
      v54 = *(v47 + 24);
      v55 = v45;
      sub_23DAAC170(v20);
      sub_23DAAC170(v45);
      v56 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88);
      v44 = v65;
      sub_23DAAA784(v46, v64, v5);
      v57 = *(v52 + 8);
      v57(v46, v5);
      v58 = v55;
      v42 = v54;
      v57(v58, v5);
      v57(v20, v5);
      (*(*(v26 - 8) + 56))(v44, 0, 1, v26);
      v77[0] = v56;
      v43 = v77;
    }
  }

  v43[1] = v42;
  swift_getWitnessTable();
  v60 = v73;
  v59 = v74;
  v61 = v72;
  (*(v74 + 16))(v73, v44, v72);
  v62 = *(v59 + 8);
  v62(v44, v61);
  v77[3] = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88);
  v77[4] = v42;
  v77[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DAAC170(v60);
  return (v62)(v60, v61);
}

uint64_t sub_23DAC432C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC18, &qword_23DB7CC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC20, &qword_23DB7CC28);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for AXOnboardingHeader();
  if (sub_23DAC4624(v18))
  {
    v19 = sub_23DB6F69C();
  }

  else
  {
    v19 = sub_23DB6F68C();
  }

  *v7 = v19;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC28, &qword_23DB7CC30);
  sub_23DAC47CC(a1, &v7[*(v20 + 44)]);
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC30, &qword_23DB7CC38);
  sub_23DA17B80(&qword_27E2FEC38, &qword_27E2FEC18, &qword_23DB7CC20);
  sub_23DAC5BD4();
  sub_23DB700CC();
  sub_23DA17988(v7, &qword_27E2FEC18, &qword_23DB7CC20);
  v21 = _UISolariumEnabled();
  v22 = v9[2];
  v22(v13, v17, v8);
  v23 = v28;
  v22(v28, v13, v8);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC48, &qword_23DB7CC40) + 48)];
  *v24 = 0;
  v24[8] = v21;
  v24[9] = v21 ^ 1;
  v25 = v9[1];
  v25(v17, v8);
  return (v25)(v13, v8);
}

BOOL sub_23DAC4624(uint64_t a1)
{
  v3 = sub_23DB6F25C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - v11;
  if (_UISolariumEnabled())
  {
    return 1;
  }

  sub_23DAC32C0(v12);
  v14 = *(v1 + *(a1 + 48));
  (*(v4 + 104))(v8, *MEMORY[0x277CDFA00], v3);
  sub_23DAB4A80();
  v15 = sub_23DB7084C();
  v16 = *(v4 + 8);
  v16(v8, v3);
  if (v15)
  {
    v16(v12, v3);
    return 0;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v16(v12, v3);
    return (IsPad & 1) == 0 && (v14 & 4) == 0;
  }
}

uint64_t sub_23DAC47CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_23DB6F67C();
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC50, &qword_23DB7CC48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v102 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v106 = &v91 - v13;
  v100 = type metadata accessor for AXOnboardingHeader();
  v101 = a1;
  v14 = (a1 + *(v100 + 36));
  v15 = v14[1];
  *&v119 = *v14;
  *(&v119 + 1) = v15;
  v16 = sub_23DA16E70();

  v98 = v16;
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  if (_UISolariumEnabled())
  {
    sub_23DB6FC3C();
  }

  else
  {
    sub_23DB6FBAC();
  }

  v22 = sub_23DB6FD3C();
  v24 = v23;
  v26 = v25;

  sub_23DA16EC4(v17, v19, v21 & 1);

  LODWORD(v119) = sub_23DB6F87C();
  v27 = sub_23DB6FCEC();
  v29 = v28;
  v31 = v30;
  sub_23DA16EC4(v22, v24, v26 & 1);

  v32 = sub_23DB6FD1C();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  sub_23DA16EC4(v27, v29, v31 & 1);

  v38 = v100;
  v39 = v101;
  LOBYTE(v27) = !sub_23DAC4624(v100);
  KeyPath = swift_getKeyPath();
  v132 = v24 & 1;
  *&v119 = v32;
  *(&v119 + 1) = v34;
  LOBYTE(v120[0]) = v24 & 1;
  *(&v120[0] + 1) = v37;
  *&v120[1] = KeyPath;
  BYTE8(v120[1]) = v27;
  *(&v120[1] + 9) = 256;
  v41 = v103;
  sub_23DB6F66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC58, &qword_23DB7CC80);
  sub_23DAC5C94();
  sub_23DB6FE8C();
  (*(v104 + 8))(v41, v105);
  v130 = v119;
  v131[0] = v120[0];
  *(v131 + 11) = *(v120 + 11);
  sub_23DA17988(&v130, &qword_27E2FEC58, &qword_23DB7CC80);
  v42 = (v39 + *(v38 + 40));
  v43 = v42[1];
  if (v43)
  {
    v44 = *v42;
    v45 = v42[1];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v50 = AXDeviceTemplateType() - 1;
      if (v50 <= 4)
      {
        v51 = qword_23DB7CCD8[v50];
      }
    }

    sub_23DB7062C();
    sub_23DB6F10C();
    v52 = v133;
    v92 = v135;
    v103 = v138;
    v104 = v137;
    v112 = 1;
    v111 = v134;
    v110 = v136;
    *&v119 = v44;
    *(&v119 + 1) = v43;
    v53 = sub_23DB6FD8C();
    v55 = v54;
    v57 = v56;
    v58 = _UISolariumEnabled();
    v105 = v52;
    if (v58)
    {
      sub_23DB6FC3C();
    }

    else
    {
      sub_23DB6FBCC();
    }

    v59 = sub_23DB6FD3C();
    v61 = v60;
    v63 = v62;

    sub_23DA16EC4(v53, v55, v57 & 1);

    if (_UISolariumEnabled())
    {
      v64 = sub_23DB6F89C();
    }

    else
    {
      v64 = sub_23DB6F87C();
    }

    LODWORD(v119) = v64;
    v65 = sub_23DB6FCEC();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    sub_23DA16EC4(v59, v61, v63 & 1);

    v72 = !sub_23DAC4624(v100);
    v73 = swift_getKeyPath();
    v109 = v69 & 1;
    v97 = v112;
    v96 = v111;
    v95 = v110;
    *&v113 = v65;
    *(&v113 + 1) = v67;
    LOBYTE(v114) = v69 & 1;
    *(&v114 + 1) = *v108;
    DWORD1(v114) = *&v108[3];
    *(&v114 + 1) = v71;
    *&v115 = v73;
    BYTE8(v115) = v72;
    *(&v115 + 9) = 256;
    v94 = WORD4(v115) | 0x10000;
    v93 = v114;
    v100 = v67;
    v101 = v65;
    *&v119 = v65;
    *(&v119 + 1) = v67;
    LOBYTE(v120[0]) = v69 & 1;
    DWORD1(v120[0]) = *&v108[3];
    *(v120 + 1) = *v108;
    v98 = v71;
    *(&v120[0] + 1) = v71;
    *&v120[1] = v73;
    v49 = v73;
    BYTE8(v120[1]) = v72;
    *(&v120[1] + 9) = 256;
    sub_23DA0E2B4(&v113, &v107, &qword_27E2FEC58, &qword_23DB7CC80);
    sub_23DA17988(&v119, &qword_27E2FEC58, &qword_23DB7CC80);
    v47 = v104;
    v43 = v105;
    v46 = v92;
    v48 = v103;
  }

  else
  {
    v96 = 0;
    v97 = 0;
    v46 = 0;
    v95 = 0;
    v47 = 0;
    v48 = 0;
    v100 = 0;
    v101 = 0;
    v93 = 0;
    v98 = 0;
    v49 = 0;
    v94 = 0;
  }

  v103 = v48;
  v104 = v47;
  v105 = v43;
  v74 = v102;
  sub_23DA0E2B4(v106, v102, &qword_27E2FEC50, &qword_23DB7CC48);
  v75 = v74;
  v76 = v99;
  sub_23DA0E2B4(v75, v99, &qword_27E2FEC50, &qword_23DB7CC48);
  v77 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC78, &qword_23DB7CC88) + 48));
  v79 = v97;
  v78 = v98;
  *&v113 = 0;
  *(&v113 + 1) = v97;
  *&v114 = v43;
  v80 = v96;
  *(&v114 + 1) = v96;
  *&v115 = v46;
  v81 = v46;
  v82 = v95;
  *(&v115 + 1) = v95;
  *&v116 = v47;
  v83 = v100;
  *(&v116 + 1) = v48;
  *&v117 = v101;
  v84 = v93;
  *(&v117 + 1) = v100;
  *&v118[0] = v93;
  *(&v118[0] + 1) = v98;
  *&v118[1] = v49;
  v85 = v94;
  LODWORD(v99) = HIWORD(v94);
  BYTE10(v118[1]) = BYTE2(v94);
  WORD4(v118[1]) = v94;
  v86 = v114;
  *v77 = v113;
  v77[1] = v86;
  v87 = v116;
  v77[2] = v115;
  v77[3] = v87;
  v88 = v118[0];
  v77[4] = v117;
  v77[5] = v88;
  *(v77 + 91) = *(v118 + 11);
  v89 = v81;
  sub_23DA0E2B4(&v113, &v119, &qword_27E2FEC80, &qword_23DB7CC90);
  sub_23DA17988(v106, &qword_27E2FEC50, &qword_23DB7CC48);
  *&v119 = 0;
  *(&v119 + 1) = v79;
  *&v120[0] = v105;
  *(&v120[0] + 1) = v80;
  *&v120[1] = v89;
  *(&v120[1] + 1) = v82;
  v121 = v104;
  v122 = v103;
  v123 = v101;
  v124 = v83;
  v125 = v84;
  v126 = v78;
  v127 = v49;
  v129 = v99;
  v128 = v85;
  sub_23DA17988(&v119, &qword_27E2FEC80, &qword_23DB7CC90);
  return sub_23DA17988(v102, &qword_27E2FEC50, &qword_23DB7CC48);
}

uint64_t sub_23DAC4F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6FB6C();
  sub_23DB6EFAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_23DA0E2B4(a1, a2, &qword_27E2FEC18, &qword_23DB7CC20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC30, &qword_23DB7CC38);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_23DAC4FE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB702CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B8, &unk_23DB7CCA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;

  sub_23DB702DC();
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v2);
  v17 = sub_23DB702EC();
  (*(v3 + 8))(v7, v2);
  sub_23DB7062C();
  sub_23DB6F10C();

  LOBYTE(v34[0]) = 1;
  *&v33[3] = *&v33[27];
  *&v33[11] = *&v33[35];
  *&v33[19] = *&v33[43];
  v18 = [objc_opt_self() systemBlueColor];
  v19 = sub_23DB700DC();
  v31 = v17;
  LOWORD(v32[0]) = 1;
  *(v32 + 2) = *v33;
  *(&v32[1] + 2) = *&v33[8];
  *(&v32[2] + 2) = *&v33[16];
  *&v32[3] = *&v33[23];
  *(&v32[3] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6C0, &unk_23DB7C280);
  sub_23DAB57C0();
  sub_23DB6FE7C();
  v34[2] = v32[1];
  v34[3] = v32[2];
  v34[4] = v32[3];
  v34[0] = v31;
  v34[1] = v32[0];
  sub_23DA17988(v34, &qword_27E2FE6C0, &unk_23DB7C280);
  _UISolariumEnabled();
  sub_23DB7062C();
  sub_23DB6F10C();
  v26 = *&v32[0];
  v27 = v31;
  v20 = *(&v32[1] + 1);
  v25 = *&v32[1];
  v30 = 1;
  v29 = BYTE8(v31);
  v28 = BYTE8(v32[0]);
  sub_23DA0E2B4(v16, v12, &qword_27E2FE6B8, &unk_23DB7CCA0);
  LOBYTE(v3) = v30;
  LOBYTE(v7) = v29;
  LOBYTE(v2) = v28;
  sub_23DA0E2B4(v12, a1, &qword_27E2FE6B8, &unk_23DB7CCA0);
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC90, &unk_23DB7CCC8) + 48);
  *v21 = 0;
  *(v21 + 8) = v3;
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 24) = v7;
  *(v21 + 32) = v22;
  *(v21 + 40) = v2;
  *(v21 + 48) = v25;
  *(v21 + 56) = v20;
  sub_23DA17988(v16, &qword_27E2FE6B8, &unk_23DB7CCA0);
  return sub_23DA17988(v12, &qword_27E2FE6B8, &unk_23DB7CCA0);
}

void sub_23DAC53B8(uint64_t a1)
{
  sub_23DA156A4();
  if (v2 <= 0x3F)
  {
    sub_23DA18420();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      sub_23DB70B7C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23DAC5470(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23DB6F25C() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v14 = v13 + ((v12 + (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v12);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v18 < 2)
    {
LABEL_34:
      v20 = (a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v10 & 0x80000000) != 0)
      {
        v22 = (*(*(*(a3 + 16) - 8) + 48))((v12 + ((((((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v12);
        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v20 + 8);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_34;
  }

LABEL_23:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_23DAC56A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_23DB6F25C() - 8) + 64);
  v10 = 8;
  if (v9 > 8)
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v12)
  {
    v16 = *(v11 + 64);
  }

  else
  {
    v16 = *(v11 + 64) + 1;
  }

  v17 = ((v13 + (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13) + v16;
  if (a3 <= v15)
  {
    goto LABEL_22;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v8 = 4;
      if (v15 >= a2)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }

LABEL_22:
    if (v15 >= a2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v8 = 1;
  if (v15 >= a2)
  {
LABEL_32:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v17] = 0;
    }

    else if (v8)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      v23 = (&a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v24 = ((v13 + ((((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13);
        if (v14 >= a2)
        {
          v28 = *(v11 + 56);

          v28((v13 + ((((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13, a2 + 1);
        }

        else
        {
          if (v16 <= 3)
          {
            v25 = ~(-1 << (8 * v16));
          }

          else
          {
            v25 = -1;
          }

          if (v16)
          {
            v26 = v25 & (~v14 + a2);
            if (v16 <= 3)
            {
              v27 = v16;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v16);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v23 = a2 & 0x7FFFFFFF;
        v23[1] = 0;
      }

      else
      {
        v23[1] = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_23:
  v20 = ~v15 + a2;
  if (v17 >= 4)
  {
    bzero(a1, ((v13 + (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13) + v16);
    *a1 = v20;
    v21 = 1;
    if (v8 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_60:
    if (v8 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_60;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v8 > 1)
    {
LABEL_64:
      if (v8 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v8 > 1)
    {
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v8)
  {
    a1[v17] = v21;
  }
}

uint64_t sub_23DAC5A0C(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();

  return swift_getWitnessTable();
}

uint64_t sub_23DAC5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DAC5B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DAC5BD4()
{
  result = qword_27E2FEC40;
  if (!qword_27E2FEC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC30, &qword_23DB7CC38);
    sub_23DA17B80(&qword_27E2FEC38, &qword_27E2FEC18, &qword_23DB7CC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC40);
  }

  return result;
}

unint64_t sub_23DAC5C94()
{
  result = qword_27E2FEC60;
  if (!qword_27E2FEC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC58, &qword_23DB7CC80);
    sub_23DAC5D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC60);
  }

  return result;
}

unint64_t sub_23DAC5D20()
{
  result = qword_27E2FEC68;
  if (!qword_27E2FEC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC70, &unk_23DB7FC40);
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC68);
  }

  return result;
}

uint64_t AXOnboardingModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
  sub_23DB6EECC();
  v8 = (*(v2 + 32))(v0 + v7, v6, v1);
  v9 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  *v9 = 0xD000000000000026;
  v9[1] = 0x800000023DB86520;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips) = 2;
  v10 = (*(*v0 + 320))(v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v10;

  sub_23DB6EF1C();
  return v0;
}

uint64_t AXOnboardingModel.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  return v0;
}

uint64_t sub_23DAC6074()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DAC60E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

void (*sub_23DAC6158(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA10218;
}

uint64_t sub_23DAC61FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DAC6270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23DAC63A8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
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

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA107BC;
}

uint64_t sub_23DAC6518()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23DAC6570(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23DAC6630()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23DAC6674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23DAC6724()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v27[-v10];
  v12 = *(*v0 + 304);
  v13 = v12(0xD00000000000001DLL, 0x800000023DB8B790, v9);
  v15 = v14;
  v16 = (v12)(0xD00000000000001CLL, 0x800000023DB8B7B0);
  v18 = v17;
  sub_23DB6EA7C();
  v19 = type metadata accessor for Page.PrimaryTOC(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = (swift_allocObject() + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v22 = 0;
  v22[1] = 0;
  (*(v2 + 16))(v6, v11, v1);
  v23 = Page.init(id:title:text:subPages:iconName:)(v6, v13, v15, v16, v18, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v11, v1);
  v24 = v23 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName;
  swift_beginAccess();
  v25 = *(v24 + 8);
  *v24 = xmmword_23DB7CD00;

  swift_getKeyPath();
  swift_getKeyPath();
  v27[7] = 1;

  sub_23DB6EF1C();
  return v23;
}

uint64_t sub_23DAC699C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v7 >> 62)
  {
LABEL_16:
    v2 = sub_23DB70C3C();
  }

  else
  {
    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](v3);
      if (__OFADD__(v3, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_16;
      }

      v4 = *(v7 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }
    }

    v5 = sub_23DA1E3D8(a1);

    ++v3;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:

  return v5;
}

unint64_t sub_23DAC6AD0()
{
  result = sub_23DAC72C0();
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
  }

  result = sub_23DB70C3C();
  v2 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      type metadata accessor for Page.PracticeGrid(0);
      if (swift_dynamicCastClass())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C();

        v6(v5);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAC6C5C(int a1, uint64_t a2)
{
  v46 = a2;
  v37 = a1;
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v45 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v33 - v9;
  v10 = sub_23DAC72C0();
  v36 = v10 >> 62;
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_58:

    return 0;
  }

LABEL_74:
  v32 = v10;
  v11 = sub_23DB70C3C();
  v10 = v32;
  if (!v11)
  {
    goto LABEL_58;
  }

LABEL_3:
  v48 = v10 & 0xC000000000000001;
  v12 = v10;
  v43 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v10 = swift_beginAccess();
  v13 = v12;
  v14 = 0;
  v39 = 0;
  v15 = 0;
  v34 = v12 + 32;
  v41 = (v3 + 8);
  v42 = (v3 + 16);
  v38 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 < 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v35 = v16;
  v47 = v12;
  v40 = v11;
  if (v48)
  {
LABEL_7:
    v10 = MEMORY[0x23EEF70C0](v14, v13);
    v17 = v10;
    v3 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_12;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
    if (v14 >= *(v38 + 16))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v17 = *(v13 + 8 * v14 + 32);

    v3 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_71;
    }

LABEL_12:
    v18 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v19 = *v42;
    v20 = v44;
    (*v42)(v44, v17 + v18, v2);
    v21 = v45;
    v19(v45, v46 + v43, v2);
    LOBYTE(v18) = sub_23DB6EA6C();
    v22 = *v41;
    (*v41)(v21, v2);
    v22(v20, v2);
    if (v18)
    {
      break;
    }

    if (v15)
    {
      v23 = v39;
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v36)
        {
          result = sub_23DB70C3C();
          if (v23 < result)
          {
LABEL_37:
            if (v48)
            {
              MEMORY[0x23EEF70C0](v23, v47);
            }

            else
            {
              if (v23 >= *(v38 + 16))
              {
                goto LABEL_78;
              }

              v27 = *(v34 + 8 * v23);
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_23DB6EF0C();

            if (v49 == 1)
            {
              if (v48)
              {
LABEL_65:
                v30 = v39;
LABEL_66:
                v29 = MEMORY[0x23EEF70C0](v30, v47);
LABEL_70:

                return v29;
              }

              v31 = *(v34 + 8 * v39);
LABEL_69:
              v29 = v31;

              goto LABEL_70;
            }

            if (v37)
            {
              v13 = v47;
              if (v3 == v40)
              {
                goto LABEL_58;
              }

              v28 = v39 - 1;
            }

            else
            {
              v13 = v47;
              if (v3 == v40)
              {
                goto LABEL_58;
              }

              v28 = v39 + 1;
            }

            v39 = v28;
            v15 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          result = *(v38 + 16);
          if (v39 < result)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_34;
    }

    if (v3 == v40)
    {
      goto LABEL_58;
    }

    v15 = 0;
LABEL_45:
    v13 = v47;
LABEL_46:
    ++v14;
    if (v48)
    {
      goto LABEL_7;
    }
  }

  if (v37)
  {
    if (!v14)
    {

      goto LABEL_58;
    }

    v10 = v14 - 1;
    v39 = v14 - 1;
    if (v48)
    {
      MEMORY[0x23EEF70C0]();
    }

    else
    {
      if (v14 > *(v38 + 16))
      {
        goto LABEL_73;
      }

      v25 = *(v47 + 8 * v14 + 24);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v49 == 1)
    {
      if (v48)
      {
        goto LABEL_65;
      }

      v29 = *(v47 + 8 * v14 + 24);

      goto LABEL_70;
    }

LABEL_34:

    if (v3 == v40)
    {
      goto LABEL_58;
    }

    v15 = 1;
    goto LABEL_45;
  }

  if (v36)
  {
    result = sub_23DB70C3C();
    if (v3 >= result)
    {
LABEL_24:

      v13 = v47;
      if (v3 == v40)
      {
        goto LABEL_58;
      }

      goto LABEL_46;
    }
  }

  else
  {
    result = *(v38 + 16);
    if (v3 >= result)
    {
      goto LABEL_24;
    }
  }

  if (v48)
  {
    MEMORY[0x23EEF70C0](v3, v47);
LABEL_42:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v49 == 1)
    {
      if (v48)
      {
        v30 = v3;
        goto LABEL_66;
      }

      v31 = *(v34 + 8 * v3);
      goto LABEL_69;
    }

    if (v3 == v40)
    {
      goto LABEL_58;
    }

    v15 = 1;
    v39 = v3;
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3 >= *(v38 + 16))
    {
      goto LABEL_77;
    }

    v26 = *(v34 + 8 * v3);

    goto LABEL_42;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_23DAC72C0()
{
  v0 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v2 = v15;
  while (1)
  {
    if (v2 >> 62)
    {
      if (!sub_23DB70C3C() || (result = sub_23DB70C3C()) == 0)
      {
LABEL_37:

        return v0;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v3 = *(v2 + 32);
    }

    MEMORY[0x23EEF6D70](v4);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23DB709FC();
    }

    sub_23DB70A0C();
    v0 = v16;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v2 >> 62 || (result & 1) == 0)
    {
      result = sub_23DAC8AC0(v2);
      v2 = result;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      break;
    }

    v6 = v5 - 1;
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x20);
    memmove(((v2 & 0xFFFFFFFFFFFFFF8) + 32), ((v2 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v5 - 1));
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    if (v14)
    {
      v8 = v2 >> 62;
      if (v2 >> 62)
      {
        result = sub_23DB70C3C();
        if (result < 0)
        {
          goto LABEL_41;
        }
      }

      if (v14 >> 62)
      {
        v9 = sub_23DB70C3C();
        if (!v8)
        {
LABEL_18:
          result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      result = sub_23DB70C3C();
LABEL_27:
      v11 = result + v9;
      if (__OFADD__(result, v9))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject != 1 || v11 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (v8)
        {
          sub_23DB70C3C();
        }

        else
        {
          v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = sub_23DB70D2C();
      }

      sub_23DAC8F24(0, 0, v9, v14);
    }

    else
    {
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_23DAC75F4()
{
  v2 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued);
  if (*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) && v2 >= *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips))
  {
    v5 = sub_23DAC72C0();
    v0 = v5;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_24:

      return;
    }

LABEL_7:
    v7 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](v7, v0);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v0 + 8 * v7 + 32);

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v6 = sub_23DB70C3C();
          if (!v6)
          {
            goto LABEL_24;
          }

          goto LABEL_7;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      if (v10 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C();

        if (v11)
        {

          (*(*v1 + 488))();

LABEL_18:

          return;
        }
      }

      ++v7;
      if (v8 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    goto LABEL_22;
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = v4;
}

void sub_23DAC7854(uint64_t a1)
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_27E30A6A8 + 32);
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips) = a1;
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
  if (!*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer))
  {
    v6 = 20.0;
    if (v4 >= 25.0)
    {
      v6 = 15.0;
    }

    if (v4 < 50.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 10.0;
    }

    *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
    v8 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_timerFireAction selector:0 userInfo:1 repeats:v7];
    v9 = *(v1 + v5);
    *(v1 + v5) = v8;
  }
}

void sub_23DAC7974()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
  [*(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
}

uint64_t sub_23DAC79C0()
{
  v0 = sub_23DB6EBFC();
  __swift_allocate_value_buffer(v0, qword_27E30A6C0);
  __swift_project_value_buffer(v0, qword_27E30A6C0);
  return sub_23DB6EBEC();
}

uint64_t sub_23DAC7A48(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DAC7AC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v18 - v13;
  v15 = *(v5 + 16);
  v15(&v18 - v13, a1, v4, v12);
  v16 = *a2;
  (v15)(v9, v14, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v14, v4);
}

uint64_t sub_23DAC7C44()
{
  v0 = type metadata accessor for AXOnboardingModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = AXOnboardingModel.init()();
  qword_27E30A6D8 = v3;
  return result;
}

uint64_t AXOnboardingModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AXOnboardingModel.init()();
  return v3;
}

uint64_t sub_23DAC7CBC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DAC7D28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_23DB7087C();

  v9 = [objc_opt_self() bundleWithIdentifier_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_23DB7087C();
  v11 = sub_23DB7087C();
  v12 = sub_23DB7087C();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23DB708BC();
  v16 = v15;

  v17 = v14 == a1 && v16 == a2;
  if (v17 || (sub_23DB70DBC()) && ((v18 = objc_opt_self(), v19 = [v18 currentDevice], v20 = objc_msgSend(v19, sel_userInterfaceIdiom), v19, !v20) || (v21 = objc_msgSend(v18, sel_currentDevice), v22 = objc_msgSend(v21, sel_userInterfaceIdiom), v21, v22 == 1)))
  {

    MEMORY[0x23EEF6D00](0x656E6F68702ELL, 0xE600000000000000);
    v23 = sub_23DB7087C();

    v24 = sub_23DB7087C();
    v25 = sub_23DB7087C();
    v26 = [v9 localizedStringForKey:v23 value:v24 table:v25];

    v14 = sub_23DB708BC();
  }

  else
  {
  }

  return v14;
}

uint64_t sub_23DAC7FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23DB74310;
  *(v0 + 32) = sub_23DAC6724();
  return v0;
}

uint64_t sub_23DAC8040(uint64_t a1, char a2, uint64_t a3)
{
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;

  if (v9 >= 850.0 && (v10 = [objc_opt_self() currentDevice], v11 = objc_msgSend(v10, sel_userInterfaceIdiom), v10, v11) || *(*a1 + 16) < 4uLL)
  {
    v12 = *(*v3 + 424);
    v14 = a2 & 1;
    v13 = a1;
  }

  else
  {
    v12 = *(*v3 + 416);
    v13 = a1;
    v14 = a3;
  }

  return v12(v13, v14);
}

uint64_t AXOnboardingModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23DAC82B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXOnboardingModel();
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

char *sub_23DAC82F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DAC842C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECC8, &qword_23DB7CE60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DAC854C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE0, &qword_23DB7CFF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DAC8658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECD8, &qword_23DB7CF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23DAC87A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23DAC897C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_23DAC8A04(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_23DB70C3C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_23DB70D2C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_23DAC8AC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23DB70C3C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_23DB70D2C();
}

unint64_t sub_23DAC8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CommandToPractice(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_23DAC962C(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_23DAC95C4(a4);
}

uint64_t sub_23DAC8CF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for Page(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23DAC8D60(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23DAC897C(v2, 0);

    MEMORY[0x23EEF70B0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_23DB70C3C();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_23DAC8E04(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_23DAC8D60(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_23DAC8EC0(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_23DAC8E04(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

uint64_t sub_23DAC8F24(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Page(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_23DAC8EC0(v4, sub_23DAC977C);
  }

LABEL_25:
  v20 = sub_23DB70C3C();
  v17 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v18 != v14 || v18 >= &v14[8 * v17])
  {
    memmove(v18, v14, 8 * v17);
  }

  if (v10)
  {
    result = sub_23DB70C3C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = MEMORY[0x28223BE20](result, v14);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_23DAC8EC0(v4, sub_23DAC977C);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_23DAC90C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DAC9120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23DAC9178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for AXOnboardingModel()
{
  result = qword_27E2FECA8;
  if (!qword_27E2FECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DAC9220()
{
  sub_23DAC9560();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DAC9560()
{
  if (!qword_27E2FECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDCF0, &qword_23DB830A0);
    v0 = sub_23DB6EF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FECB8);
    }
  }
}

uint64_t sub_23DAC95C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECC0, &qword_23DB7CE58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAC962C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23DAC96A8(unsigned __int8 a1)
{
  LODWORD(v2) = a1;
  if (a1 <= 1u)
  {
LABEL_6:
    if (!v2)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v2 = *MEMORY[0x277CE6CC0];
    if (*MEMORY[0x277CE6CC0])
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 3)
  {
LABEL_10:
    v2 = *MEMORY[0x277CE6CD8];
    if (!*MEMORY[0x277CE6CD8])
    {
      __break(1u);
LABEL_12:
      v2 = *MEMORY[0x277CE6CE8];
      if (!*MEMORY[0x277CE6CE8])
      {
        __break(1u);
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v2 = *MEMORY[0x277CE6CE0];
  if (!*MEMORY[0x277CE6CE0])
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_13:
  v3 = *MEMORY[0x277D76438];
  v4 = v2;
  UIAccessibilityPostNotification(v3, v4);
}

uint64_t AXOnboardingToggle.init(_:contentLabel:isOn:disabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 16) = a8;
  return result;
}

uint64_t AXOnboardingToggle.body.getter()
{
  v3 = v0[1];
  *v4 = v0[2];
  v2 = *v0;
  *&v4[9] = *(v0 + 41);
  if (*(v0 + 4))
  {
    sub_23DA16E70();

    sub_23DB6FD8C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
  sub_23DAC99E8();
  sub_23DAC9ACC();
  return sub_23DB7054C();
}

uint64_t sub_23DAC98D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v9 = *(a1 + 5);
  v10 = *(a1 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FED38, &qword_23DB7D0D0);
  sub_23DB7049C();
  sub_23DA16E70();
  sub_23DB7042C();
  v4 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_23DAC9DF8;
  v8[2] = v6;
  return result;
}

unint64_t sub_23DAC99E8()
{
  result = qword_27E2FECF8;
  if (!qword_27E2FECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FECE8, &unk_23DB7D000);
    sub_23DA17B80(&qword_27E2FED00, &qword_27E2FED08, &qword_23DB7D010);
    sub_23DA17B80(&qword_27E2FED10, &qword_27E2FED18, &qword_23DB7D018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FECF8);
  }

  return result;
}

unint64_t sub_23DAC9ACC()
{
  result = qword_27E2FED20;
  if (!qword_27E2FED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FECF0, &qword_23DB84880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FED20);
  }

  return result;
}

uint64_t sub_23DAC9B64()
{
  v3 = v0[1];
  *v4 = v0[2];
  v2 = *v0;
  *&v4[9] = *(v0 + 41);
  if (*(v0 + 4))
  {
    sub_23DA16E70();

    sub_23DB6FD8C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
  sub_23DAC99E8();
  sub_23DAC9ACC();
  return sub_23DB7054C();
}

unint64_t sub_23DAC9C8C()
{
  result = qword_27E2FED28;
  if (!qword_27E2FED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FED30, &qword_23DB7D0C8);
    sub_23DAC99E8();
    sub_23DAC9ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FED28);
  }

  return result;
}

uint64_t sub_23DAC9D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23DAC9D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23DAC9E14@<X0>(_BYTE *a1@<X8>)
{
  sub_23DA0E324();
  result = sub_23DB6F56C();
  *a1 = v3;
  return result;
}

uint64_t sub_23DAC9E64(char *a1)
{
  v2 = *a1;
  sub_23DA0E324();
  return sub_23DB6F57C();
}

uint64_t sub_23DAC9EB0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v8 = type metadata accessor for InstructionCardAndPracticeView();
  v9 = a3 + v8[16];
  v10 = sub_23DB6F91C();
  *(a3 + 16) = a4;
  v11 = a3 + v8[14];
  v12 = a1(v10);
  v13 = a3 + v8[15];
  return a2(v12);
}

uint64_t AdaptiveStack.init(horizontalAlignment:verticalAlignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4 & 1;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_23DACA000@<X0>(_BYTE *a1@<X8>)
{
  sub_23DA0E324();
  result = sub_23DB6F56C();
  *a1 = v3;
  return result;
}

uint64_t sub_23DACA050(char *a1)
{
  v2 = *a1;
  sub_23DA0E324();
  return sub_23DB6F57C();
}

double SuccessTextView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6F55C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  *&v27 = *v1;
  *(&v27 + 1) = v9;
  sub_23DA16E70();

  v25 = sub_23DB6FD8C();
  v13 = v12;
  v15 = v14;
  v24 = v16;
  KeyPath = swift_getKeyPath();
  if (v11 != 1)
  {

    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v10, 0);
    (*(v4 + 8))(v8, v3);
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  *&v26[23] = v28;
  *&v26[7] = v27;
  *&v26[55] = v30;
  *&v26[71] = v31;
  *&v26[87] = v32;
  *&v26[103] = v33;
  *&v26[39] = v29;
  v19 = *&v26[80];
  *(a1 + 105) = *&v26[64];
  *(a1 + 121) = v19;
  *(a1 + 137) = *&v26[96];
  v20 = *&v26[16];
  *(a1 + 41) = *v26;
  *(a1 + 57) = v20;
  result = *&v26[32];
  v22 = *&v26[48];
  *(a1 + 73) = *&v26[32];
  *a1 = v25;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *&v26[111];
  *(a1 + 89) = v22;
  return result;
}

uint64_t sub_23DACA370@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  LOBYTE(v3) = sub_23DB6FB5C();
  result = sub_23DB6EFAC();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  return result;
}

__n128 sub_23DACA414@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  sub_23DA16E70();

  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v13[23] = v15;
  *&v13[7] = v14;
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[103] = v20;
  *&v13[39] = v16;
  *(a3 + 105) = *&v13[64];
  *(a3 + 121) = *&v13[80];
  *(a3 + 137) = *&v13[96];
  *(a3 + 41) = *v13;
  *(a3 + 57) = *&v13[16];
  result = *&v13[32];
  *(a3 + 73) = *&v13[32];
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v20 + 1);
  *(a3 + 89) = *&v13[48];
  return result;
}

uint64_t sub_23DACA568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6F9FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v10 = *(v1 + 8);
  v11 = swift_getKeyPath();
  type metadata accessor for Page(0);
  sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page);

  v21[0] = sub_23DB6F1EC();
  v21[1] = v12;
  v21[2] = v11;
  v22 = 0;
  sub_23DB6F9DC();
  sub_23DADA860();
  sub_23DB6FF8C();
  (*(v4 + 8))(v8, v3);

  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEE08, &qword_23DB7D4A8) + 36);
  *v13 = KeyPath;
  *(v13 + 8) = 0;
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v14 = qword_27E30A650;
  v15 = sub_23DB6FB3C();
  v16 = sub_23DB7062C();
  v18 = v17;
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEE10, &unk_23DB7D4B0) + 36);
  *v19 = v14;
  *(v19 + 8) = v15;
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
}

uint64_t sub_23DACA7A8@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v34 = type metadata accessor for PracticeFooterViewDefault(0);
  v1 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v2);
  v4 = (v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEDE8, &qword_23DB7D468);
  v5 = *(*(v33[0] - 8) + 64);
  MEMORY[0x28223BE20](v33[0], v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for PracticeFooterViewiOS(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 && (v17 = [v14 currentDevice], v18 = objc_msgSend(v17, sel_userInterfaceIdiom), v17, v18 != 1))
  {
    KeyPath = swift_getKeyPath();
    v25 = v34;
    *(v4 + *(v34 + 24)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page(0);
    sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page);

    *v4 = sub_23DB6F1EC();
    v4[1] = v26;
    type metadata accessor for NavigationModel();
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel);
    v4[2] = sub_23DB6F39C();
    v4[3] = v27;
    v28 = v4 + *(v25 + 28);
    v35 = 0;
    sub_23DB7037C();
    v29 = v37;
    *v28 = v36;
    *(v28 + 1) = v29;
    v30 = v4 + *(v25 + 32);
    v35 = 0;
    sub_23DB7037C();
    v31 = v37;
    *v30 = v36;
    *(v30 + 1) = v31;
    v22 = type metadata accessor for PracticeFooterViewDefault;
    sub_23DADA798(v4, v8, type metadata accessor for PracticeFooterViewDefault);
    swift_storeEnumTagMultiPayload();
    sub_23DADA750(&qword_27E2FEDF0, type metadata accessor for PracticeFooterViewiOS);
    sub_23DADA750(&qword_27E2FEDF8, type metadata accessor for PracticeFooterViewDefault);
    sub_23DB6F79C();
    v23 = v4;
  }

  else
  {
    *(v13 + *(v9 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();
    v19 = *(v9 + 28);

    sub_23DB6F91C();
    type metadata accessor for Page(0);
    sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page);
    *v13 = sub_23DB6F1EC();
    v13[1] = v20;
    type metadata accessor for NavigationModel();
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel);
    v13[2] = sub_23DB6F39C();
    v13[3] = v21;
    v22 = type metadata accessor for PracticeFooterViewiOS;
    sub_23DADA798(v13, v8, type metadata accessor for PracticeFooterViewiOS);
    swift_storeEnumTagMultiPayload();
    sub_23DADA750(&qword_27E2FEDF0, type metadata accessor for PracticeFooterViewiOS);
    sub_23DADA750(&qword_27E2FEDF8, type metadata accessor for PracticeFooterViewDefault);
    sub_23DB6F79C();
    v23 = v13;
  }

  return sub_23DADA800(v23, v22);
}

uint64_t sub_23DACAD18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_23DB6FA4C();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PracticeFooterViewiOS(0);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF50, &qword_23DB7D7F8);
  v13 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v14);
  v16 = &v44 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF58, &qword_23DB7D800);
  v17 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46, v18);
  v20 = &v44 - v19;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF60, &qword_23DB7D808);
  v21 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v22);
  v24 = &v44 - v23;
  v54 = v3;
  sub_23DADA798(v3, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
  v25 = *(v10 + 80);
  v48 = ~v25;
  v52 = v11;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DADBF88(v53, v26 + ((v25 + 17) & ~v25), type metadata accessor for PracticeFooterViewiOS);
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF68, &unk_23DB7D810);
  sub_23DADBB3C();
  sub_23DB703CC();
  v27 = sub_23DB7012C();
  KeyPath = swift_getKeyPath();
  v29 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF80, &qword_23DB7D850) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v30 = qword_27E30A658;
  v31 = swift_getKeyPath();
  v32 = &v16[*(v45 + 36)];
  *v32 = v31;
  v32[1] = v30;

  sub_23DB6FA3C();
  sub_23DADBC48(&qword_27E2FEF88, &qword_27E2FEF50, &qword_23DB7D7F8, sub_23DADBCF8);
  sub_23DADA750(&qword_27E2FCFB8, MEMORY[0x277CDE400]);
  v33 = v50;
  sub_23DB6FE2C();
  (*(v49 + 8))(v9, v33);
  sub_23DA17988(v16, &qword_27E2FEF50, &qword_23DB7D7F8);
  v34 = sub_23DB6FB4C();
  v35 = &v20[*(v46 + 36)];
  *v35 = v34;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  sub_23DADBDDC();
  sub_23DB6FFDC();
  sub_23DA17988(v20, &qword_27E2FEF58, &qword_23DB7D800);
  v36 = *(v51 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v37 = v54;
  sub_23DB6F90C();
  sub_23DADCD90(&qword_27E2FEFB0, &qword_27E2FEF60, &qword_23DB7D808, sub_23DADBDDC);
  v38 = v55;
  sub_23DB6FF9C();

  sub_23DA17988(v24, &qword_27E2FEF60, &qword_23DB7D808);
  v39 = v53;
  sub_23DADA798(v37, v53, type metadata accessor for PracticeFooterViewiOS);
  v40 = (v25 + 16) & v48;
  v41 = swift_allocObject();
  sub_23DADBF88(v39, v41 + v40, type metadata accessor for PracticeFooterViewiOS);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF28, &unk_23DB7D790);
  v43 = (v38 + *(result + 36));
  *v43 = sub_23DADBF28;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  return result;
}

uint64_t sub_23DACB344(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((a1 & 1) == 0)
  {
    if (v2)
    {
      v3 = *(a2 + 16);

      NavigationModel.goHome()();
      goto LABEL_6;
    }

LABEL_9:
    v5 = *(a2 + 24);
    type metadata accessor for NavigationModel();
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
    return result;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

  v6 = 0;

  sub_23DABB0B8(&v6);
LABEL_6:
}

__n128 sub_23DACB40C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  *&v26 = (*(*qword_27E30A6D8 + 304))();
  *(&v26 + 1) = v2;
  sub_23DA16E70();
  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v8 = sub_23DB6FD1C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23DA16EC4(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_self() currentDevice];
  [v23 userInterfaceIdiom];

  sub_23DB7062C();
  sub_23DB6F34C();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v3;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v25[64];
  *(a1 + 153) = *&v25[80];
  *(a1 + 169) = *&v25[96];
  *(a1 + 184) = *(&v32 + 1);
  *(a1 + 73) = *v25;
  *(a1 + 89) = *&v25[16];
  result = *&v25[32];
  *(a1 + 105) = *&v25[32];
  *(a1 + 121) = *&v25[48];
  return result;
}

uint64_t sub_23DACB6FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for Page.CollectionFinished(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(type metadata accessor for PracticeFooterViewiOS(0) + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    return sub_23DB6F8FC();
  }

  return result;
}

__n128 sub_23DACB778@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  *&v17 = (*(*qword_27E30A6D8 + 304))(0xD000000000000020, 0x800000023DB8B7D0);
  *(&v17 + 1) = v2;
  sub_23DA16E70();
  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v8 = sub_23DB6FD1C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23DA16EC4(v3, v5, v7 & 1);

  v15 = [objc_opt_self() currentDevice];
  [v15 userInterfaceIdiom];

  sub_23DB7062C();
  sub_23DB6F34C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  return result;
}

uint64_t sub_23DACB9B8@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v2 = type metadata accessor for PracticeFooterViewiOS(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = sub_23DB6F8DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEEF0, &qword_23DB7D768);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v27 - v15;
  *v16 = sub_23DB6F68C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEEF8, &qword_23DB7D770);
  sub_23DACBCA8(v1, &v16[*(v17 + 44)]);
  v18 = sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v19 = &v16[*(v12 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_23DB6F8BC();
  sub_23DADA798(v1, v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  sub_23DADBF88(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PracticeFooterViewiOS);
  sub_23DADB57C();
  sub_23DB6FF6C();

  (*(v7 + 8))(v11, v6);
  return sub_23DA17988(v16, &qword_27E2FEEF0, &qword_23DB7D768);
}

uint64_t sub_23DACBCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PracticeFooterViewiOS(0);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF18, &qword_23DB7D780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF20, &qword_23DB7D788);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF28, &unk_23DB7D790);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  MEMORY[0x28223BE20](v24, v25);
  v28 = &v45 - v27;
  if (*(a1 + 16))
  {
    v47 = v7;
    v48 = v26;
    v49 = v20;
    v50 = v16;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v45 = a2;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v29 = v51 != 0;
      if (v51)
      {
        v30 = sub_23DAC6C5C(0, v51);

        if (!v30)
        {
          v29 = 0;
          a2 = v45;
          goto LABEL_10;
        }
      }

      else
      {
      }

      a2 = v45;
    }

    else
    {
      v29 = 0;
    }

LABEL_10:
    sub_23DACAD18(v29, v28);
    sub_23DADA798(a1, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
    v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v32 = swift_allocObject();
    sub_23DADBF88(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for PracticeFooterViewiOS);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE00, &unk_23DB7C750);
    sub_23DADCB08(&qword_27E2FE918, &qword_27E2FDE00, &unk_23DB7C750);
    sub_23DB703CC();
    v33 = sub_23DB6FB9C();
    sub_23DB6EFAC();
    v34 = &v11[*(v47 + 36)];
    *v34 = v33;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_23DADB830();
    v39 = v49;
    sub_23DB6FFDC();
    sub_23DA17988(v11, &qword_27E2FEF18, &qword_23DB7D780);
    v40 = v48;
    sub_23DA0E2B4(v28, v48, &qword_27E2FEF28, &unk_23DB7D790);
    v41 = v50;
    sub_23DA0E2B4(v39, v50, &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA0E2B4(v40, a2, &qword_27E2FEF28, &unk_23DB7D790);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF48, &qword_23DB7D7A8);
    sub_23DA0E2B4(v41, a2 + *(v42 + 48), &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA17988(v39, &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA17988(v28, &qword_27E2FEF28, &unk_23DB7D790);
    sub_23DA17988(v41, &qword_27E2FEF20, &qword_23DB7D788);
    return sub_23DA17988(v40, &qword_27E2FEF28, &unk_23DB7D790);
  }

  v44 = *(a1 + 24);
  type metadata accessor for NavigationModel();
  sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DACC22C@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = type metadata accessor for PracticeFooterViewDefault(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = sub_23DB6F8DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFB8, &qword_23DB7D898);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v24 - v15;
  *v16 = sub_23DB6F5BC();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFC0, &qword_23DB7D8A0);
  sub_23DACC514(v1, &v16[*(v17 + 44)]);
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v18 = qword_27E30A650;
  v19 = sub_23DB6FB3C();
  v20 = &v16[*(v12 + 36)];
  *v20 = v18;
  v20[8] = v19;

  sub_23DB6F8BC();
  sub_23DADA798(v1, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewDefault);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_23DADBF88(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PracticeFooterViewDefault);
  sub_23DADC078();
  sub_23DB6FF6C();

  (*(v7 + 8))(v11, v6);
  return sub_23DA17988(v16, &qword_27E2FEFB8, &qword_23DB7D898);
}

uint64_t sub_23DACC514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v283 = a2;
  v286 = sub_23DB6F81C();
  v295 = *(v286 - 8);
  v3 = *(v295 + 64);
  MEMORY[0x28223BE20](v286, v4);
  v6 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PracticeFooterViewDefault(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFE0, &qword_23DB7D8B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v245 - v15;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFE8, &qword_23DB7D8C0);
  v17 = *(*(v285 - 8) + 64);
  MEMORY[0x28223BE20](v285, v18);
  v272 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v245 = &v245 - v22;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFF0, &qword_23DB7D8C8);
  v23 = *(*(v287 - 8) + 64);
  MEMORY[0x28223BE20](v287, v24);
  v273 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v246 = &v245 - v28;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFF8, &qword_23DB7D8D0);
  v29 = *(*(v288 - 8) + 64);
  MEMORY[0x28223BE20](v288, v30);
  v274 = &v245 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v250 = &v245 - v34;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF000, &qword_23DB7D8D8);
  v35 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289, v36);
  v276 = &v245 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v267 = &v245 - v40;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF008, &qword_23DB7D8E0);
  v41 = *(*(v290 - 8) + 64);
  MEMORY[0x28223BE20](v290, v42);
  v275 = &v245 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v247 = &v245 - v46;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF010, &qword_23DB7D8E8);
  v47 = *(*(v293 - 8) + 64);
  MEMORY[0x28223BE20](v293, v48);
  v277 = &v245 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v279 = &v245 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v280 = &v245 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v284 = &v245 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v249 = &v245 - v61;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF018, &qword_23DB7D8F0);
  v62 = *(*(v292 - 8) + 64);
  MEMORY[0x28223BE20](v292, v63);
  v282 = &v245 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v294 = &v245 - v67;
  MEMORY[0x28223BE20](v68, v69);
  v278 = &v245 - v70;
  MEMORY[0x28223BE20](v71, v72);
  v281 = &v245 - v73;
  MEMORY[0x28223BE20](v74, v75);
  v248 = &v245 - v76;
  MEMORY[0x28223BE20](v77, v78);
  v297 = &v245 - v79;
  sub_23DADA798(a1, &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewDefault);
  v80 = *(v8 + 80);
  v81 = (v80 + 16) & ~v80;
  v298 = v9;
  v296 = v80;
  v82 = swift_allocObject();
  v291 = v81;
  v299 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DADBF88(v299, v82 + v81, type metadata accessor for PracticeFooterViewDefault);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF020, &qword_23DB7D8F8);
  v265 = sub_23DADC334();
  v266 = v83;
  sub_23DB703CC();
  sub_23DB6F80C();
  v84 = sub_23DA17B80(&qword_27E2FF058, &qword_27E2FEFE0, &qword_23DB7D8B8);
  v85 = sub_23DADA750(&qword_27E2FF060, MEMORY[0x277CDE0B8]);
  v86 = v245;
  v87 = v286;
  v263 = v85;
  v264 = v84;
  sub_23DB6FE2C();
  v88 = *(v295 + 8);
  v271 = v6;
  v295 += 8;
  v262 = v88;
  v88(v6, v87);
  v89 = *(v12 + 8);
  v268 = v16;
  v269 = v12 + 8;
  v270 = v11;
  v90 = v11;
  v91 = v86;
  v261 = v89;
  v89(v16, v90);
  v92 = &v86[*(v285 + 36)];
  v93 = sub_23DB6F32C();
  v94 = *(v93 + 20);
  v95 = *MEMORY[0x277CE0118];
  v96 = sub_23DB6F63C();
  v97 = *(v96 - 8);
  v98 = *(v97 + 104);
  v259 = v95;
  v257 = v98;
  v258 = v96;
  v256 = v97 + 104;
  (v98)(&v92[v94], v95);
  __asm { FMOV            V0.2D, #8.0 }

  v255 = _Q0;
  *v92 = _Q0;
  v300 = a1;
  v104 = sub_23DADC4CC(1986359920, 0xE400000000000000);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  *&v92[*(v105 + 52)] = v104;
  v254 = v105;
  *&v92[*(v105 + 56)] = 256;

  v106 = sub_23DB7062C();
  v108 = v107;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE768, &qword_23DB7C410);
  v109 = &v92[*(v253 + 36)];
  *v109 = v106;
  v109[1] = v108;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  v251 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  LOBYTE(v108) = sub_23DB6FB5C();
  *(inited + 32) = v108;
  v111 = sub_23DB6FB4C();
  *(inited + 33) = v111;
  v112 = sub_23DB6FB8C();
  *(inited + 34) = v112;
  v113 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v108)
  {
    v113 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v111)
  {
    v113 = sub_23DB6FB7C();
  }

  v114 = v267;
  v115 = v246;

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v112)
  {
    v113 = sub_23DB6FB7C();
  }

  v116 = v250;
  v117 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v113)
  {
    v117 = sub_23DB6FB7C();
  }

  sub_23DA17A54(v91, v115, &qword_27E2FEFE8, &qword_23DB7D8C0);
  v118 = v115 + *(v287 + 36);
  *v118 = v117;
  *(v118 + 8) = 0u;
  *(v118 + 24) = 0u;
  *(v118 + 40) = 1;
  v119 = sub_23DB6FB6C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  sub_23DA17A54(v115, v116, &qword_27E2FEFF0, &qword_23DB7D8C8);
  v128 = v116 + *(v288 + 36);
  *v128 = v119;
  *(v128 + 8) = v121;
  *(v128 + 16) = v123;
  *(v128 + 24) = v125;
  *(v128 + 32) = v127;
  *(v128 + 40) = 0;
  if (*(v300 + 16))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v260 = v93;
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v130 = v305 == 0;
      if (v305)
      {
        v131 = sub_23DAC6C5C(1, v305);

        if (!v131)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

LABEL_18:
      KeyPath = swift_getKeyPath();
      v133 = swift_allocObject();
      *(v133 + 16) = v130;
      sub_23DA17A54(v116, v114, &qword_27E2FEFF8, &qword_23DB7D8D0);
      v134 = (v114 + *(v289 + 36));
      *v134 = KeyPath;
      v134[1] = sub_23DADC658;
      v134[2] = v133;
      v135 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
      swift_beginAccess();
      v136 = 0.0;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        v137 = v299;
        if (v305)
        {
          v138 = sub_23DAC6C5C(1, v305);

          if (!v138)
          {
            goto LABEL_25;
          }

          v136 = 1.0;
        }

        else
        {
        }
      }

      else
      {
        v137 = v299;
      }

LABEL_25:
      v139 = v247;
      sub_23DA17A54(v114, v247, &qword_27E2FF000, &qword_23DB7D8D8);
      *(v139 + *(v290 + 36)) = v136;
      v250 = sub_23DADC660();
      sub_23DB6FFDC();
      sub_23DA17988(v139, &qword_27E2FF008, &qword_23DB7D8E0);
      v140 = swift_weakLoadStrong();
      v267 = v135;
      if (v140)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        if (v305)
        {
          v141 = sub_23DAC6C5C(1, v305);

          if (!v141)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }
      }

LABEL_32:
      v142 = v249;
      v143 = v284;
      sub_23DB6F29C();
      sub_23DA17988(v143, &qword_27E2FF010, &qword_23DB7D8E8);
      sub_23DADA798(v300, v137, type metadata accessor for PracticeFooterViewDefault);
      v144 = v291;
      v145 = swift_allocObject();
      sub_23DADBF88(v137, v145 + v144, type metadata accessor for PracticeFooterViewDefault);
      v146 = v142;
      v147 = v248;
      sub_23DA17A54(v146, v248, &qword_27E2FF010, &qword_23DB7D8E8);
      v148 = (v147 + *(v292 + 36));
      *v148 = sub_23DADCA38;
      v148[1] = v145;
      sub_23DA17A54(v147, v297, &qword_27E2FF018, &qword_23DB7D8F0);
      if (qword_27E2FBBF0 != -1)
      {
        swift_once();
      }

      (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB8B850);
      v149 = [objc_opt_self() mainBundle];
      sub_23DB6E9FC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_23DB78D60;

      v151 = sub_23DAC0550();

      v152 = MEMORY[0x277D83B88];
      v153 = MEMORY[0x277D83C10];
      *(v150 + 56) = MEMORY[0x277D83B88];
      *(v150 + 64) = v153;
      *(v150 + 32) = v151;

      v154 = sub_23DABFBB8();

      *(v150 + 96) = v152;
      *(v150 + 104) = v153;
      *(v150 + 72) = v154;
      v155 = sub_23DB7088C();
      v157 = v156;

      v305 = v155;
      v306 = v157;
      sub_23DA16E70();
      v158 = sub_23DB6FD8C();
      v160 = v159;
      LOBYTE(v150) = v161;
      sub_23DB7021C();
      v162 = sub_23DB6FCDC();
      v247 = v163;
      v248 = v162;
      v165 = v164;
      v249 = v166;

      sub_23DA16EC4(v158, v160, v150 & 1);

      LODWORD(v246) = sub_23DB6FB5C();
      sub_23DB6EFAC();
      v168 = v167;
      v170 = v169;
      v172 = v171;
      v174 = v173;
      LODWORD(v284) = v165 & 1;
      LOBYTE(v305) = v165 & 1;
      LOBYTE(v301) = 0;
      v175 = v299;
      sub_23DADA798(v300, v299, type metadata accessor for PracticeFooterViewDefault);
      v176 = swift_allocObject();
      sub_23DADBF88(v175, v176 + v144, type metadata accessor for PracticeFooterViewDefault);
      v177 = v268;
      sub_23DB703CC();
      v178 = v271;
      sub_23DB6F80C();
      v179 = v272;
      v180 = v270;
      v181 = v286;
      sub_23DB6FE2C();
      v262(v178, v181);
      v261(v177, v180);
      v182 = (v179 + *(v285 + 36));
      v257(&v182[*(v260 + 20)], v259, v258);
      *v182 = v255;
      v183 = sub_23DADC4CC(1954047342, 0xE400000000000000);
      v184 = v254;
      *&v182[*(v254 + 52)] = v183;
      *&v182[*(v184 + 56)] = 256;

      v185 = sub_23DB7062C();
      v186 = &v182[*(v253 + 36)];
      *v186 = v185;
      v186[1] = v187;
      v188 = swift_initStackObject();
      *(v188 + 16) = v251;
      v189 = sub_23DB6FB5C();
      *(v188 + 32) = v189;
      v190 = sub_23DB6FB4C();
      *(v188 + 33) = v190;
      v191 = sub_23DB6FB6C();
      *(v188 + 34) = v191;
      v192 = sub_23DB6FB7C();
      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v189)
      {
        v192 = sub_23DB6FB7C();
      }

      sub_23DB6FB7C();
      v193 = sub_23DB6FB7C();
      v194 = v277;
      v195 = v274;
      if (v193 != v190)
      {
        v192 = sub_23DB6FB7C();
      }

      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v191)
      {
        v192 = sub_23DB6FB7C();
      }

      v196 = sub_23DB6FB7C();
      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v192)
      {
        v196 = sub_23DB6FB7C();
      }

      v197 = v273;
      sub_23DA17A54(v179, v273, &qword_27E2FEFE8, &qword_23DB7D8C0);
      v198 = v197 + *(v287 + 36);
      *v198 = v196;
      *(v198 + 8) = 0u;
      *(v198 + 24) = 0u;
      v199 = 1;
      *(v198 + 40) = 1;
      v200 = sub_23DB6FB8C();
      sub_23DB6EFAC();
      v202 = v201;
      v204 = v203;
      v206 = v205;
      v208 = v207;
      sub_23DA17A54(v197, v195, &qword_27E2FEFF0, &qword_23DB7D8C8);
      v209 = v195 + *(v288 + 36);
      *v209 = v200;
      *(v209 + 8) = v202;
      *(v209 + 16) = v204;
      *(v209 + 24) = v206;
      *(v209 + 32) = v208;
      *(v209 + 40) = 0;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        v199 = v305 == 0;
        if (!v305)
        {

LABEL_47:

          goto LABEL_49;
        }

        v210 = sub_23DAC6C5C(0, v305);

        if (v210)
        {
          goto LABEL_47;
        }

        v199 = 1;
      }

LABEL_49:
      v211 = swift_getKeyPath();
      v212 = swift_allocObject();
      *(v212 + 16) = v199;
      v213 = v276;
      sub_23DA17A54(v195, v276, &qword_27E2FEFF8, &qword_23DB7D8D0);
      v214 = (v213 + *(v289 + 36));
      *v214 = v211;
      v214[1] = sub_23DAE0728;
      v214[2] = v212;
      v215 = 0.0;
      if (!swift_weakLoadStrong())
      {
        goto LABEL_55;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v305)
      {
        v216 = sub_23DAC6C5C(0, v305);

        if (!v216)
        {
          goto LABEL_55;
        }

        v215 = 1.0;
      }

      else
      {
      }

LABEL_55:
      v217 = v275;
      sub_23DA17A54(v213, v275, &qword_27E2FF000, &qword_23DB7D8D8);
      *(v217 + *(v290 + 36)) = v215;
      sub_23DB6FFDC();
      sub_23DA17988(v217, &qword_27E2FF008, &qword_23DB7D8E0);
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C();

        if (v305)
        {
          v218 = sub_23DAC6C5C(0, v305);

          if (!v218)
          {
            goto LABEL_61;
          }
        }

        else
        {
        }
      }

LABEL_61:
      v219 = v279;
      sub_23DB6F29C();
      sub_23DA17988(v194, &qword_27E2FF010, &qword_23DB7D8E8);
      v220 = v280;
      sub_23DB6F2CC();
      sub_23DA17988(v219, &qword_27E2FF010, &qword_23DB7D8E8);
      v221 = v299;
      sub_23DADA798(v300, v299, type metadata accessor for PracticeFooterViewDefault);
      v222 = v291;
      v223 = swift_allocObject();
      sub_23DADBF88(v221, v223 + v222, type metadata accessor for PracticeFooterViewDefault);
      v224 = v220;
      v225 = v278;
      sub_23DA17A54(v224, v278, &qword_27E2FF010, &qword_23DB7D8E8);
      v226 = (v225 + *(v292 + 36));
      *v226 = sub_23DADCA6C;
      v226[1] = v223;
      v227 = v225;
      v228 = v281;
      sub_23DA17A54(v227, v281, &qword_27E2FF018, &qword_23DB7D8F0);
      v229 = v294;
      sub_23DA0E2B4(v297, v294, &qword_27E2FF018, &qword_23DB7D8F0);
      v230 = v282;
      sub_23DA0E2B4(v228, v282, &qword_27E2FF018, &qword_23DB7D8F0);
      v231 = v229;
      v232 = v283;
      sub_23DA0E2B4(v231, v283, &qword_27E2FF018, &qword_23DB7D8F0);
      v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF090, &qword_23DB7D948);
      v234 = v232 + v233[12];
      *v234 = 0;
      *(v234 + 8) = 1;
      v235 = (v232 + v233[16]);
      v237 = v247;
      v236 = v248;
      *&v301 = v248;
      *(&v301 + 1) = v247;
      LOBYTE(v302) = v284;
      *(&v302 + 1) = *v318;
      DWORD1(v302) = *&v318[3];
      v238 = v249;
      *(&v302 + 1) = v249;
      v239 = v246;
      LOBYTE(v303) = v246;
      *(&v303 + 1) = *v317;
      DWORD1(v303) = *&v317[3];
      *(&v303 + 1) = v168;
      *&v304[0] = v170;
      *(&v304[0] + 1) = v172;
      *&v304[1] = v174;
      BYTE8(v304[1]) = 0;
      v240 = v304[0];
      v235[2] = v303;
      v235[3] = v240;
      v241 = v302;
      *v235 = v301;
      v235[1] = v241;
      *(v235 + 57) = *(v304 + 9);
      v242 = v232 + v233[20];
      *v242 = 0;
      *(v242 + 8) = 1;
      sub_23DA0E2B4(v230, v232 + v233[24], &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA0E2B4(&v301, &v305, &qword_27E2FD908, &qword_23DB790D8);
      sub_23DA17988(v228, &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA17988(v297, &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA17988(v230, &qword_27E2FF018, &qword_23DB7D8F0);
      v305 = v236;
      v306 = v237;
      v307 = v284;
      *v308 = *v318;
      *&v308[3] = *&v318[3];
      v309 = v238;
      v310 = v239;
      *v311 = *v317;
      *&v311[3] = *&v317[3];
      v312 = v168;
      v313 = v170;
      v314 = v172;
      v315 = v174;
      v316 = 0;
      sub_23DA17988(&v305, &qword_27E2FD908, &qword_23DB790D8);
      return sub_23DA17988(v294, &qword_27E2FF018, &qword_23DB7D8F0);
    }

LABEL_15:
    v130 = 1;
    goto LABEL_18;
  }

  v244 = *(v300 + 24);
  type metadata accessor for NavigationModel();
  sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}