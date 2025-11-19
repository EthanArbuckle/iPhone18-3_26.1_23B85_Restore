__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240920548(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240920590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_240920600()
{
  result = qword_27E50B798;
  if (!qword_27E50B798)
  {
    type metadata accessor for QRCodeGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B798);
  }

  return result;
}

uint64_t sub_240920658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_240920668()
{
  result = qword_27E50B7E8;
  if (!qword_27E50B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7E0, &unk_240A378B0);
    sub_2409206F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B7E8);
  }

  return result;
}

unint64_t sub_2409206F4()
{
  result = qword_27E50B7F0;
  if (!qword_27E50B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7F8, &unk_240A31260);
    sub_24091CE28(&qword_27E50B800, &qword_27E50B808, &qword_240A378C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B7F0);
  }

  return result;
}

unint64_t sub_2409207AC()
{
  result = qword_27E50B810;
  if (!qword_27E50B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7B0, &qword_240A311F8);
    sub_240920864();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B810);
  }

  return result;
}

unint64_t sub_240920864()
{
  result = qword_27E50B818;
  if (!qword_27E50B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B820, &qword_240A31318);
    sub_2409208F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B818);
  }

  return result;
}

unint64_t sub_2409208F0()
{
  result = qword_27E50B828;
  if (!qword_27E50B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B830, &qword_240A31320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B828);
  }

  return result;
}

unint64_t sub_240920974()
{
  result = qword_27E50B840;
  if (!qword_27E50B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7C0, &qword_240A31208);
    sub_240920A2C();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B840);
  }

  return result;
}

unint64_t sub_240920A2C()
{
  result = qword_27E50B848;
  if (!qword_27E50B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B850, &qword_240A31328);
    sub_240920AE4();
    sub_24091CE28(&qword_27E50B8A8, &qword_27E50B8B0, &qword_240A31358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B848);
  }

  return result;
}

unint64_t sub_240920AE4()
{
  result = qword_27E50B858;
  if (!qword_27E50B858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B860, &qword_240A31330);
    sub_240920B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B858);
  }

  return result;
}

unint64_t sub_240920B70()
{
  result = qword_27E50B868;
  if (!qword_27E50B868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B870, &qword_240A31338);
    sub_240920C28();
    sub_24091CE28(&qword_27E50B898, &qword_27E50B8A0, &qword_240A31350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B868);
  }

  return result;
}

unint64_t sub_240920C28()
{
  result = qword_27E50B878;
  if (!qword_27E50B878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B880, &qword_240A31340);
    sub_24091CE28(&qword_27E50B888, &qword_27E50B890, &qword_240A31348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B878);
  }

  return result;
}

unint64_t sub_240920CE0()
{
  result = qword_27E50B8C0;
  if (!qword_27E50B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7A0, &qword_240A311E8);
    sub_240920D98();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8C0);
  }

  return result;
}

unint64_t sub_240920D98()
{
  result = qword_27E50B8C8;
  if (!qword_27E50B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B788, &qword_240A311D8);
    sub_240920E50();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8C8);
  }

  return result;
}

unint64_t sub_240920E50()
{
  result = qword_27E50B8D0;
  if (!qword_27E50B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B780, &qword_240A311D0);
    sub_24091CE28(&qword_27E50B8D8, &qword_27E50B8E0, &qword_240A31368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8D0);
  }

  return result;
}

id ReadyForTeenViewController.init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler];
  *v4 = a1;
  v4[1] = a2;
  v5 = objc_opt_self();
  sub_24090C23C(a1);
  [v5 deviceIsiPad];
  sub_240A2C01C();
  sub_240A2C01C();
  v6 = sub_240A2BF1C();

  v7 = sub_240A2BF1C();

  v16.receiver = v2;
  v16.super_class = type metadata accessor for ReadyForTeenViewController();
  v8 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v6, v7, 0, 2);

  v9 = v8;
  v10 = [v9 buttonTray];
  v11 = [objc_opt_self() boldButton];
  sub_240A2C01C();
  v12 = sub_240A2BF1C();

  [v11 setTitle:v12 forState:0];

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_240A2C39C();
  [v11 addAction:v14 forControlEvents:{64, 0, 0, 0, sub_2409214E8, v13}];

  [v10 addButton_];
  sub_24090C1A0(a1);

  return v9;
}

void sub_240921208()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ReadyForTeenViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v1 = sub_240921790();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 headerView];
    v4 = [v3 customIconContainerView];

    if (v4)
    {
      [v4 addSubview_];
      v5 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_240A308E0;
      v7 = [v2 centerXAnchor];
      v8 = [v4 centerXAnchor];
      v9 = [v7 constraintEqualToAnchor_];

      *(v6 + 32) = v9;
      v10 = [v2 centerYAnchor];
      v11 = [v4 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v6 + 40) = v12;
      sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
      v13 = sub_240A2C15C();

      [v5 activateConstraints_];

      v2 = v13;
    }
  }
}

void sub_240921458()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler + 8);

      v2(0);
      sub_24090C1A0(v2);
    }
  }
}

id ReadyForTeenViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ReadyForTeenViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id ReadyForTeenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadyForTeenViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240921790()
{
  [objc_opt_self() deviceIsiPad];
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize_];
  v2 = sub_240A2BF1C();

  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed:v2 withConfiguration:v1];

  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 configurationWithPointSize:7 weight:24.0];
  v8 = sub_240A2BF1C();
  v9 = [v3 systemImageNamed:v8 withConfiguration:v7];

  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v11 = v10;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v0 configurationWithPointSize_];
  v13 = sub_240A2BF1C();
  v14 = [v3 systemImageNamed:v13 withConfiguration:v12];

  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_240A31370;
  v19 = [v6 leadingAnchor];
  v20 = [v17 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v11 leadingAnchor];
  v23 = [v6 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:1.0];

  *(v18 + 40) = v24;
  v25 = [v16 leadingAnchor];
  v26 = [v11 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:10.0];

  *(v18 + 48) = v27;
  v28 = [v16 trailingAnchor];
  v29 = [v17 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v31 = [v6 centerYAnchor];

  v32 = [v17 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v18 + 64) = v33;
  v34 = [v11 centerYAnchor];

  v35 = [v17 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v18 + 72) = v36;
  v37 = [v16 centerYAnchor];

  v38 = [v17 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v18 + 80) = v39;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v40 = sub_240A2C15C();

  [v42 activateConstraints_];

  return v17;
}

id sub_240921DD8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_240921ECC(char a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AISAAUISignInViewController();
  v19.receiver = v1;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) == 1)
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUIP33_E382F6B143EEB082937A88704104402727AISAAUISignInViewController_triggerNextButtonTappedOnAppear) = 0;
    result = [v1 username];
    if (result)
    {
      v11 = result;
      v12 = sub_240A2BF4C();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        result = [v1 canEditUsername];
        if ((result & 1) == 0)
        {
          return [v1 nextButtonTapped];
        }
      }
    }
  }

  else
  {
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "triggerNextButtonTappedOnAppear already triggered. Skipping", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

id sub_24092225C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISAAUISignInViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2409222B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "AAUISignInViewControllerWrapper makeUIViewController", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  v12 = [objc_allocWithZone(type metadata accessor for AISAAUISignInViewController()) initWithNibName:0 bundle:0];
  [v12 setAllowsAccountCreation_];
  [v12 setShowServiceIcons_];
  v13 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember);
  if (v13)
  {
    v14 = [v13 appleID];
  }

  else
  {
    v14 = 0;
  }

  [v12 setUsername_];

  v15 = [v12 username];
  v16 = v15;
  if (v15)
  {
  }

  [v12 setCanEditUsername_];
  [v12 setDelegate_];
  v17 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step);
  v18 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 32))(ObjectType, v18);
  v20 = sub_240A2C15C();

  [v12 setPrivacyLinkIdentifiers_];

  v21 = sub_240986400();
  [v12 setHeaderImage_];

  [v12 setTableViewStyle_];
  v22 = [objc_opt_self() secondarySystemBackgroundColor];
  [v12 setCellBackgroundColor_];

  [v12 setShouldShowSystemBackButton_];
  [v12 setChildSetupFlow_];
  if ([v12 respondsToSelector_])
  {
    [v12 setHideCreationAndForgotPasswordButton_];
  }

  return v12;
}

uint64_t sub_240922640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409228A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409226A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409228A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240922708()
{
  sub_2409228A4();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_24092276C()
{
  result = qword_27E50B900;
  if (!qword_27E50B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B908, &qword_240A314A0);
    sub_2409227F8();
    sub_24092284C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B900);
  }

  return result;
}

unint64_t sub_2409227F8()
{
  result = qword_27E50B910;
  if (!qword_27E50B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B910);
  }

  return result;
}

unint64_t sub_24092284C()
{
  result = qword_27E50B918;
  if (!qword_27E50B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B918);
  }

  return result;
}

unint64_t sub_2409228A4()
{
  result = qword_27E50B920[0];
  if (!qword_27E50B920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E50B920);
  }

  return result;
}

uint64_t sub_2409228F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_240922998(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t NonReactiveState.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t sub_240922B4C(uint64_t a1)
{
  v3 = *v1;
  sub_240922ED4(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_240922BC8(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_2409228F8(v9);
  return sub_240922CDC;
}

void sub_240922CDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_240922ED4(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_240922ED4((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NonReactiveState.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_240922ED4(uint64_t a1)
{
  v2 = (*(*(*(*v1 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return sub_240922998(v4);
}

uint64_t sub_240922F90(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2409230D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_240919298(a3, v28 - v12, &unk_27E50B420, &qword_240A30800);
  v14 = sub_240A2C24C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_240919300(v13, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_240A2C1BC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_240A2BFBC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2409233D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_240919298(a3, v28 - v12, &unk_27E50B420, &qword_240A30800);
  v14 = sub_240A2C24C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_240919300(v13, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_240A2C1BC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_240A2BFBC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB08, &qword_240A31670);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB08, &qword_240A31670);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2409236E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2409F6188(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_240925A1C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_240938B64();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_240A28CDC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2409237E0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B9B0);
  __swift_project_value_buffer(v0, qword_27E50B9B0);
  return sub_240A2AE5C();
}

uint64_t sub_24092382C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240A2946C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[6] = v6;
  v2[7] = sub_240A2C21C();
  v2[8] = sub_240A2C20C();
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_24092394C;

  return sub_2409DC2D8(v6);
}

uint64_t sub_24092394C()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_240A2C1BC();
  if (v2)
  {
    v8 = sub_240923BC0;
  }

  else
  {
    v8 = sub_240923AA8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_240923AA8()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v7 = *(v5 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_remoteUIPresenter);
  v8 = swift_allocObject();
  swift_weakInit();

  sub_240923F54(v6, v2, sub_240926BD4, v8);

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_240923BC0()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_240923C30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_240A2C24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_240A2C21C();

  v12 = a2;
  v13 = sub_240A2C20C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  sub_2409233D4(0, 0, v10, &unk_240A31690, v14);
}

uint64_t sub_240923D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[5] = a1;
  sub_240A2C21C();
  v6[8] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240923E14, v8, v7);
}

uint64_t sub_240923E14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2409DD518(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240923EBC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240915E50;

  return sub_24092382C(a1);
}

void sub_240923F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  v9 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  v10 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8);
  *v8 = a3;
  v8[1] = a4;

  sub_24090C1A0(v9);
  v11 = [objc_opt_self() defaultStore];
  if (v11)
  {
    v12 = v11;
    v22 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    [v22 setDelegate_];
    v13 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:v22 presenter:a1];
    v14 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter;
    v15 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter);
    *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter) = v13;
    v16 = v13;

    if (v16)
    {
      [v16 setDelegate_];
    }

    v17 = *(v4 + v14);
    if (v17)
    {
      v18 = v17;
      v19 = sub_240A2943C();
      v20 = swift_allocObject();
      *(v20 + 16) = a3;
      *(v20 + 24) = a4;
      aBlock[4] = sub_240926950;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_240A1EFE0;
      aBlock[3] = &block_descriptor_3;
      v21 = _Block_copy(aBlock);

      [v18 loadRequest:v19 completion:v21];

      _Block_release(v21);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24092418C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v3 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v4 = v3;
  v5 = [a1 accountStore];
  v6 = [v5 aa_primaryAppleAccount];

  if (v6)
  {
    *(inited + 40) = v6;
    sub_2409265DC(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50B9D0, &unk_240A356C0);
  }

  else
  {
    __break(1u);
  }
}

void sub_2409243EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_guardianAuthResponse);
  sub_240A2ABAC();
  if (v4)
  {
    v5 = sub_240A2BF1C();

    sub_240A2ABEC();
    if (v6)
    {
LABEL_3:
      v8 = sub_240A2BF1C();

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    sub_240A2ABEC();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  [a1 ak:v5 addAuthorizationHeaderWithAltIdentityToken:v8 forAltDSID:?];
}

void sub_24092450C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8);
    v3 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_authResults;
    swift_beginAccess();
    v4 = *(v0 + v3);
    sub_24090C23C(v1);

    v1(v5, 0);
    sub_24090C1A0(v1);
  }
}

uint64_t sub_240924650(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = sub_240A2BEBC();

  strcpy(v12, "X-Apple-DSID");
  BYTE13(v12[0]) = 0;
  HIWORD(v12[0]) = -5120;
  sub_240A2C44C();
  if (*(v2 + 16) && (v3 = sub_240925A94(v11), (v4 & 1) != 0))
  {
    sub_240913DC0(*(v2 + 56) + 32 * v3, v10);
    sub_2409266D4(v11);
    sub_24091C780(v10, v12);
    sub_240913DC0(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    if (swift_dynamicCast())
    {
      v5 = *&v10[0];
    }

    else
    {
      v5 = 0;
    }

    swift_beginAccess();
    sub_2409236E8(v5, 1684632420, 0xE400000000000000);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_2409266D4(v11);
  }

  *&v12[0] = 0xD000000000000014;
  *(&v12[0] + 1) = 0x8000000240A3B080;
  sub_240A2C44C();
  if (*(v2 + 16) && (v6 = sub_240925A94(v11), (v7 & 1) != 0))
  {
    sub_240913DC0(*(v2 + 56) + 32 * v6, v10);
    sub_2409266D4(v11);

    sub_24091C780(v10, v12);
    sub_240913DC0(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    if (swift_dynamicCast())
    {
      v8 = *&v10[0];
    }

    else
    {
      v8 = 0;
    }

    swift_beginAccess();
    sub_2409236E8(v8, 0x44495344746C61, 0xE700000000000000);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    return sub_2409266D4(v11);
  }
}

void sub_240924A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v30 - v5;
  v7 = *MEMORY[0x277CEFEE8];
  v31 = sub_240A2BF4C();
  v32 = v8;
  sub_240A2C44C();
  if (*(a1 + 16) && (v9 = sub_240925A94(v33), (v10 & 1) != 0))
  {
    sub_240913DC0(*(a1 + 56) + 32 * v9, v34);
    sub_2409266D4(v33);
    if (swift_dynamicCast())
    {
      v12 = v31;
      v11 = v32;
      v13 = *MEMORY[0x277CEFEC8];
      if (v12 == sub_240A2BF4C() && v11 == v14)
      {

LABEL_17:
        v25 = sub_240A2C24C();
        (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_240A2C21C();

        v27 = sub_240A2C20C();
        v28 = swift_allocObject();
        v29 = MEMORY[0x277D85700];
        v28[2] = v27;
        v28[3] = v29;
        v28[4] = v26;

        sub_2409230D4(0, 0, v6, &unk_240A315D8, v28);

        return;
      }

      v16 = sub_240A2C66C();

      if (v16)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_2409266D4(v33);
  }

  if (qword_27E50AEC0 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2B00C();
  __swift_project_value_buffer(v17, qword_27E50B9B0);

  v18 = sub_240A2AFFC();
  v19 = sub_240A2C29C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136315138;
    v22 = sub_240A2BECC();
    v24 = sub_240925464(v22, v23, v33);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2408FE000, v18, v19, "AISFlowStepChildMigration: RemoteUI handled button %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x245CCDDB0](v21, -1, -1);
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }
}

uint64_t sub_240924DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_240A2C21C();
  *(v4 + 48) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240924E54, v6, v5);
}

uint64_t sub_240924E54()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27E50AEC0 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50B9B0);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C29C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "AISFlowStepChildMigration: User did not agree to family or iCloud terms. Tearing down flow", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v9 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler];
    if (v9)
    {
      v10 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler + 8];
      sub_24090C23C(*&v4[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler]);
      v11 = sub_24092624C(MEMORY[0x277D84F90]);
      sub_240926FD4();
      v12 = swift_allocError();
      *v13 = xmmword_240A315B0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      v9(v11, v12);
      sub_24090C1A0(v9);
    }

    else
    {
    }
  }

  v14 = v0[1];

  return v14();
}

id RemoteUIPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteUIPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteUIPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409251F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2409252E8;

  return v7(a1);
}

uint64_t sub_2409252E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240925408(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_240925464(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_240925464(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_240925530(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_240913DC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_240925530(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24092563C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_240A2C4CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24092563C(uint64_t a1, unint64_t a2)
{
  v4 = sub_240925688(a1, a2);
  sub_2409257B8(&unk_28528BBE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_240925688(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2409258A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_240A2C4CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_240A2C0EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2409258A4(v10, 0);
        result = sub_240A2C46C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2409257B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_240925918(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2409258A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB30, &qword_240A316C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240925918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB30, &qword_240A316C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_240925A0C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_240925A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_240A2C72C();
  sub_240A2C09C();
  v6 = sub_240A2C74C();

  return sub_240925C00(a1, a2, v6);
}

unint64_t sub_240925A94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_240A2C42C();

  return sub_240925CB8(a1, v5);
}

unint64_t sub_240925AD8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_240A2BF4C();
  sub_240A2C72C();
  sub_240A2C09C();
  v4 = sub_240A2C74C();

  return sub_240925F40(a1, v4);
}

unint64_t sub_240925B68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_240A299DC();
  sub_240926A1C(&qword_27E50BAC0, MEMORY[0x277CED3D8]);
  v5 = sub_240A2BEEC();

  return sub_240925D80(a1, v5);
}

unint64_t sub_240925C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_240A2C66C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_240925CB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24092702C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CCD100](v9, a1);
      sub_2409266D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_240925D80(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_240A299DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_240926A1C(&qword_27E50BAC8, MEMORY[0x277CED3D8]);
      v17 = sub_240A2BF0C();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_240925F40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_240A2BF4C();
      v9 = v8;
      if (v7 == sub_240A2BF4C() && v9 == v10)
      {
        break;
      }

      v12 = sub_240A2C66C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_240926044(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_240926138;

  return v6(v2 + 32);
}

uint64_t sub_240926138()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_24092624C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_240925A1C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240926374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
    v3 = sub_240A2C5CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_240919298(v4, &v13, &qword_27E50BB00, &unk_240A38260);
      v5 = v13;
      v6 = v14;
      result = sub_240925A1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24091C780(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2409264C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BAE0, &qword_240A31648);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_240925A1C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2409265DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB38, &unk_240A316D0);
    v3 = sub_240A2C5CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_240925AD8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240926728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240924DBC(a1, v4, v5, v6);
}

uint64_t sub_240926950(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
    v7 = sub_24092624C(MEMORY[0x277D84F90]);
    v5(v7, a2);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

unint64_t sub_2409269D0()
{
  result = qword_27E50C600;
  if (!qword_27E50C600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C600);
  }

  return result;
}

uint64_t sub_240926A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240926A64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_240926044(a1, v5);
}

uint64_t sub_240926B1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240915E50;

  return sub_240926044(a1, v5);
}

uint64_t sub_240926BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_240923D78(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_240926CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v3 = sub_240A2C5CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_240919298(v4, v13, &qword_27E50BB48, &qword_240A316E0);
      result = sub_240925A94(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_24091C780(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240926E04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_240A2C5CC();
    v10 = a1 + 32;

    while (1)
    {
      sub_240919298(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_240925AD8(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_24091C780(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240926F1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_2409251F0(a1, v5);
}

unint64_t sub_240926FD4()
{
  result = qword_27E50DCF0;
  if (!qword_27E50DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DCF0);
  }

  return result;
}

uint64_t sub_240927088@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v22[1] = a2;
  v23 = a1;
  v7 = sub_240A299DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v22 - v16;
  sub_240919298(v5, v22 - v16, &qword_27E50BB78, &qword_240A32E80);
  v18 = 1;
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    v19 = a3;
LABEL_5:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    return (*(*(v20 - 8) + 56))(v19, v18, 1, v20);
  }

  (*(v8 + 32))(v12, v17, v7);
  v19 = a3;
  v23(v12);
  if (!v4)
  {
    (*(v8 + 8))(v12, v7);
    v18 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v12, v7);
  __break(1u);
  return result;
}

uint64_t sub_2409272C4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BB60);
  __swift_project_value_buffer(v0, qword_27E50BB60);
  return sub_240A2AE9C();
}

uint64_t sub_240927310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13[-v7];
  sub_240A2992C();
  v9 = sub_240A299DC();
  v10 = (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  MEMORY[0x28223BE20](v10, v11);
  *&v13[-16] = a1;
  sub_240927088(sub_240927538, &v13[-32], a2);
  return sub_240919300(v8, &qword_27E50BB78, &qword_240A32E80);
}

uint64_t sub_240927468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710) + 48);
  v7 = sub_240A299DC();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = sub_240A2995C();
  return (*(*(v8 - 8) + 16))(a3 + v6, a2, v8);
}

uint64_t type metadata accessor for FamilyPicker()
{
  result = qword_27E50BB88;
  if (!qword_27E50BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409275CC()
{
  sub_240927750(319, &qword_27E50BB98, &qword_27E50BBA0, &qword_240A31740, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_240927750(319, &qword_27E50BBA8, &qword_27E50BBB0, &qword_240A31748, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_240927750(319, &qword_27E50BBB8, &unk_27E50BFC0, &qword_240A31750, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_240927750(319, &qword_27E50BBC0, &qword_27E50BFD0, qword_240A31758, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_240919DC0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240927750(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2409277D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2C53C();
  v50 = *(v4 - 8);
  v51 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v12 = sub_240A2C55C();
  v48 = *(v12 - 8);
  v49 = *(v48 + 64);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for FamilyPicker();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8, v22);
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBC8, &qword_240A317B0);
  sub_240927C50(v2, a1 + *(v23 + 44));
  sub_24092AE2C(v2, &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v46 = swift_allocObject();
  sub_24092AE90(&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v24);
  sub_240A2C54C();
  v45 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBD0, &qword_240A317C8) + 36));
  v25 = v45 + *(sub_240A2B2CC() + 20);
  sub_240A2C22C();
  v53 = xmmword_240A31700;
  sub_24092DDF4(&qword_27E50BBD8, MEMORY[0x277D85928]);
  v43 = v8;
  v44 = v12;
  sub_240A2C69C();
  sub_24092DDF4(&qword_27E50BBE0, MEMORY[0x277D858F8]);
  v42 = v4;
  sub_240A2C56C();
  v26 = v50;
  (*(v50 + 8))(v8, v4);
  v27 = *(v26 + 32);
  v27(v8, v11, v4);
  v52 = 1;
  v28 = v47;
  v29 = v48 + 32;
  v30 = *(v48 + 32);
  v30(v47, v18, v12);
  v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v32 = (v51 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v29 + 48) + v32 + 17) & ~*(v29 + 48);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v27((v35 + v31), v43, v42);
  v36 = v35 + v32;
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = v52;
  result = (v30)(v35 + v33, v28, v44);
  v38 = (v35 + v34);
  v39 = v46;
  *v38 = &unk_240A317C0;
  v38[1] = v39;
  v40 = v45;
  *v45 = &unk_240A317D8;
  v40[1] = v35;
  return result;
}

uint64_t sub_240927C50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for FamilyPicker();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_240A2AFDC();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1[2];
  v11 = v25;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC5C();
  v25 = v11;
  v26 = v12;
  sub_240A2BC5C();
  if (v27 >> 62)
  {
    sub_240A2C59C();
  }

  else
  {
    v13 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = a1[5];
  v27 = a1[4];
  v14 = v27;
  v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC20, &qword_240A318D0);
  sub_240A2BC7C();
  sub_240A2AFCC();
  v25 = v14;
  v26 = v15;
  sub_240A2BC5C();
  v25 = v27;
  sub_24092AE2C(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_24092AE90(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
  sub_24092DDF4(&qword_27E50BC28, MEMORY[0x277D435C8]);
  sub_24092DC20();
  v18 = v23;
  sub_240A2BAFC();

  return (*(v22 + 8))(v10, v18);
}

uint64_t sub_240927F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_240A299DC();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v50 - v18;
  v20 = *a2;
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v21 = sub_240A2B00C();
  __swift_project_value_buffer(v21, qword_27E50BB60);

  v22 = sub_240A2AFFC();
  v23 = sub_240A2C29C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v51 = a3;
    v52 = v16;
    v50 = v25;
    v53 = v20;
    v54[0] = v25;
    *v24 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
    v26 = sub_240A2BF9C();
    v28 = v6;
    v29 = sub_240925464(v26, v27, v54);

    *(v24 + 4) = v29;
    v6 = v28;
    _os_log_impl(&dword_2408FE000, v22, v23, "selected member changed to %s", v24, 0xCu);
    v30 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    v31 = v30;
    a3 = v51;
    v16 = v52;
    MEMORY[0x245CCDDB0](v31, -1, -1);
    MEMORY[0x245CCDDB0](v24, -1, -1);
  }

  if (v20)
  {
    sub_240A2AF7C();
    if (v32)
    {

      sub_240A299AC();
      v33 = a3[1];
      v54[0] = *a3;
      v54[1] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
      sub_240A2BC5C();
      v34 = v53;
      if (*(v53 + 16))
      {
        v35 = sub_240925B68(v10);
        if (v36)
        {
          v37 = v35;
          v51 = v10;
          v38 = *(v34 + 56);
          v39 = sub_240A2995C();
          v50 = v5;
          v40 = v39;
          v41 = *(v39 - 8);
          v52 = v16;
          v42 = a3;
          v43 = v41;
          (*(v41 + 16))(v19, v38 + *(v41 + 72) * v37, v39);

          (*(v6 + 8))(v51, v50);

          (*(v43 + 56))(v19, 0, 1, v40);
          a3 = v42;
          v16 = v52;
          goto LABEL_12;
        }
      }

      (*(v6 + 8))(v10, v5);
    }
  }

  v44 = sub_240A2995C();
  (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
LABEL_12:
  v45 = type metadata accessor for FamilyPicker();
  v46 = *(v45 + 28);
  sub_240919298(v19, v16, &qword_27E50BFD0, qword_240A31758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
  sub_240A2BCFC();
  result = sub_240919300(v19, &qword_27E50BFD0, qword_240A31758);
  if (v20)
  {

    if (sub_240A2AF5C())
    {
      v48 = a3 + *(v45 + 36);
      v49 = *(v48 + 1);
      (*v48)();
    }
  }

  return result;
}

uint64_t sub_2409284AC()
{
  *(v0 + 72) = sub_240A2C21C();
  *(v0 + 80) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928544, v2, v1);
}

uint64_t sub_240928544()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = *(v2 + 24);
  v0[2] = *(v2 + 16);
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC5C();
  v0[11] = v0[6];

  return MEMORY[0x2822009F8](sub_2409285E4, 0, 0);
}

uint64_t sub_2409285E4()
{
  v1 = v0[11];
  if (v1 >> 62)
  {
    v9 = sub_240A2C59C();
    v10 = v0[11];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
LABEL_3:
      if (qword_27E50AEC8 != -1)
      {
        swift_once();
      }

      v3 = sub_240A2B00C();
      __swift_project_value_buffer(v3, qword_27E50BB60);
      v4 = sub_240A2AFFC();
      v5 = sub_240A2C29C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2408FE000, v4, v5, "Presentables non-empty, or members empty, skipping image fetch", v6, 2u);
        MEMORY[0x245CCDDB0](v6, -1, -1);
      }

      v7 = v0[1];

      return v7();
    }
  }

  v11 = v0[9];
  v0[12] = sub_240A2C20C();
  v13 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24092879C, v13, v12);
}

uint64_t sub_24092879C()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v2[1];
  v0[4] = *v2;
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  v0[13] = v0[7];

  return MEMORY[0x2822009F8](sub_24092883C, 0, 0);
}

uint64_t sub_24092883C()
{
  v1 = *(v0[13] + 16);

  if (v1)
  {
    v2 = v0[8];
    sub_240A2995C();
    v3 = swift_task_alloc();
    v0[14] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D858E8] + 4);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_240928A2C;

    return MEMORY[0x282200600]();
  }

  else
  {
    if (qword_27E50AEC8 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50BB60);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Presentables non-empty, or members empty, skipping image fetch", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_240928A2C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240928B44, 0, 0);
}

uint64_t sub_240928B44()
{
  v1 = *(v0 + 72);
  *(v0 + 128) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928BD0, v3, v2);
}

uint64_t sub_240928BD0()
{
  v1 = v0[16];
  v2 = v0[8];

  sub_24092A8BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_240928C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = sub_240A299DC();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC18, &qword_240A318A8);
  v3[29] = v9;
  v10 = *(v9 - 8);
  v3[30] = v10;
  v11 = *(v10 + 64) + 15;
  v3[31] = swift_task_alloc();
  v12 = sub_240A2995C();
  v3[32] = v12;
  v13 = *(v12 - 8);
  v3[33] = v13;
  v3[34] = *(v13 + 64);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240928E88, 0, 0);
}

uint64_t sub_240928E88()
{
  v1 = sub_240A2AFBC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[40] = sub_240A2AFAC();
  v0[41] = sub_240A2C21C();
  v0[42] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240928F40, v5, v4);
}

uint64_t sub_240928F40()
{
  v1 = v0[42];
  v2 = v0[20];

  v3 = *v2;
  v0[43] = *v2;
  v4 = v2[1];
  v0[44] = v4;
  v0[9] = v3;
  v0[10] = v4;
  v0[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  v0[46] = v0[15];

  return MEMORY[0x2822009F8](sub_240928FF0, 0, 0);
}

uint64_t sub_240928FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 368);
  v7 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  v10 = *(v4 + 264);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v11 = v8 & *(v6 + 64);
  v12 = (63 - v9) >> 6;
  v56 = (v10 + 8);
  v48 = *(v4 + 272) + 7;
  v59 = v6 + 64;
  v57 = v12;
  v58 = *(v4 + 264);
  v49 = *(v4 + 368);
  while (v11)
  {
LABEL_11:
    v15 = *(v4 + 304);
    v14 = *(v4 + 312);
    v16 = *(v4 + 256);
    v17 = *(v10 + 16);
    v17(v14, *(v6 + 56) + *(v10 + 72) * (__clz(__rbit64(v11)) | (v5 << 6)), v16);
    v60 = *(v10 + 32);
    v60(v15, v14, v16);
    v18 = sub_240A2993C();
    if (v19 >> 60 == 15)
    {
      v20 = *(v4 + 296);
      v53 = *(v4 + 320);
      v54 = *(v4 + 304);
      v50 = v20;
      v51 = *(v4 + 256);
      v21 = *(v4 + 200);
      v52 = *(v4 + 192);
      v22 = sub_240A2C24C();
      v23 = *(v22 - 8);
      (*(v23 + 56))(v21, 1, 1, v22);
      v17(v20, v54, v51);
      v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v55 = (v25 + 16);
      *(v25 + 24) = 0;
      v26 = v25;
      v60(v25 + v24, v50, v51);
      *(v26 + ((v48 + v24) & 0xFFFFFFFFFFFFFFF8)) = v53;
      sub_240919298(v21, v52, &unk_27E50B420, &qword_240A30800);
      v27 = (*(v23 + 48))(v52, 1, v22);

      v28 = *(v4 + 192);
      if (v27 == 1)
      {
        sub_240919300(*(v4 + 192), &unk_27E50B420, &qword_240A30800);
      }

      else
      {
        sub_240A2C23C();
        (*(v23 + 8))(v28, v22);
      }

      v12 = v57;
      if (*v55)
      {
        v29 = *(v26 + 24);
        v30 = *v55;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_240A2C1BC();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v34 = **(v4 + 152);
      v35 = swift_allocObject();
      *(v35 + 16) = &unk_240A318B8;
      *(v35 + 24) = v26;

      if (v33 | v31)
      {
        v36 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v31;
        *(v4 + 40) = v33;
      }

      else
      {
        v36 = 0;
      }

      v6 = v49;
      v37 = *(v4 + 256);
      v38 = *(v4 + 200);
      *(v4 + 48) = 1;
      *(v4 + 56) = v36;
      *(v4 + 64) = v34;
      swift_task_create();

      sub_240919300(v38, &unk_27E50B420, &qword_240A30800);
      v7 = v59;
    }

    else
    {
      sub_24092D94C(v18, v19);
      v7 = v59;
      v12 = v57;
    }

    v11 &= v11 - 1;
    a1 = (*v56)(*(v4 + 304), *(v4 + 256));
    v10 = v58;
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](a1, a2, a3, a4);
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v13);
    ++v5;
    if (v11)
    {
      v5 = v13;
      goto LABEL_11;
    }
  }

  v39 = *(v4 + 368);
  v40 = *(v4 + 248);
  v41 = *(v4 + 256);
  v42 = *(v4 + 152);

  v43 = *v42;
  sub_240A2C1DC();
  *(v4 + 376) = 0;
  v44 = *(MEMORY[0x277D856B0] + 4);
  v45 = swift_task_alloc();
  *(v4 + 384) = v45;
  *v45 = v4;
  v45[1] = sub_2409294E0;
  v46 = *(v4 + 248);
  a1 = *(v4 + 224);
  a4 = *(v4 + 232);
  a2 = 0;
  a3 = 0;

  return MEMORY[0x2822002E8](a1, a2, a3, a4);
}

uint64_t sub_2409294E0()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409295DC, 0, 0);
}

uint64_t sub_2409295DC()
{
  v45 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  v4 = *(v2 + 48);
  v0[49] = v4;
  v0[50] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[39];
    v5 = v0[40];
    v8 = v0[37];
    v7 = v0[38];
    v10 = v0[35];
    v9 = v0[36];
    v11 = v0[26];
    v40 = v0[25];
    v41 = v0[24];
    v42 = v0[23];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[36];
    v15 = *(v2 + 32);
    v0[51] = v15;
    v0[52] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v14, v3, v1);
    if (qword_27E50AEC8 != -1)
    {
      swift_once();
    }

    v16 = v0[35];
    v17 = v0[36];
    v18 = v0[32];
    v19 = v0[33];
    v20 = sub_240A2B00C();
    __swift_project_value_buffer(v20, qword_27E50BB60);
    v21 = *(v19 + 16);
    v0[53] = v21;
    v0[54] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v16, v17, v18);
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[37];
      v25 = v0[35];
      v27 = v0[32];
      v26 = v0[33];
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v28 = 136315138;
      v21(v24, v25, v27);
      v29 = sub_240A2BF9C();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v25, v27);
      v33 = sub_240925464(v29, v31, &v44);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2408FE000, v22, v23, "Updating member: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x245CCDDB0](v43, -1, -1);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    else
    {
      v34 = v0[35];
      v35 = v0[32];
      v36 = v0[33];

      v32 = *(v36 + 8);
      v32(v34, v35);
    }

    v0[55] = v32;
    v37 = v0[41];
    v0[56] = sub_240A2C20C();
    v39 = sub_240A2C1BC();

    return MEMORY[0x2822009F8](sub_24092998C, v39, v38);
  }
}

uint64_t sub_24092998C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 376);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);

  sub_240A2992C();
  if (v2)
  {
  }

  else
  {
    v5 = *(v0 + 432);
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 216);
    (*(v0 + 424))(v13, *(v0 + 288), v11);
    v14 = *(v12 + 56);
    v14(v13, 0, 1, v11);
    *(v0 + 88) = v10;
    *(v0 + 96) = v9;

    sub_240A2BC5C();
    if (v7(v13, 1, v11) == 1)
    {
      v15 = *(v0 + 184);
      sub_240919300(*(v0 + 216), &qword_27E50BFD0, qword_240A31758);
      v16 = *(v0 + 128);
      v17 = sub_240925B68(v15);
      if (v18)
      {
        v19 = v17;
        v20 = *(v0 + 128);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v0 + 128);
        *(v0 + 144) = v16;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_240938CD4();
          v16 = *(v0 + 144);
        }

        v23 = *(v0 + 408);
        v22 = *(v0 + 416);
        v24 = *(v0 + 256);
        v25 = *(v0 + 264);
        v26 = *(v0 + 208);
        (*(*(v0 + 176) + 8))(*(v16 + 48) + *(*(v0 + 176) + 72) * v19, *(v0 + 168));
        v23(v26, *(v16 + 56) + *(v25 + 72) * v19, v24);
        sub_240A28E8C(v19, v16);
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v35 = *(v0 + 208);
      v37 = *(v0 + 176);
      v36 = *(v0 + 184);
      v38 = *(v0 + 168);
      v14(v35, v27, 1, *(v0 + 256));
      sub_240919300(v35, &qword_27E50BFD0, qword_240A31758);
      (*(v37 + 8))(v36, v38);
    }

    else
    {
      v28 = *(v0 + 416);
      v29 = *(v0 + 296);
      v31 = *(v0 + 176);
      v30 = *(v0 + 184);
      v32 = *(v0 + 168);
      (*(v0 + 408))(v29, *(v0 + 216), *(v0 + 256));
      v33 = *(v0 + 128);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v0 + 128);
      sub_2409F6304(v29, v30, v34);
      (*(v31 + 8))(v30, v32);
      v16 = v42;
    }

    v40 = *(v0 + 352);
    v39 = *(v0 + 360);
    *(v0 + 104) = *(v0 + 344);
    *(v0 + 112) = v40;
    *(v0 + 136) = v16;
    sub_240A2BC6C();
  }

  *(v0 + 456) = 0;

  return MEMORY[0x2822009F8](sub_240929C54, 0, 0);
}

uint64_t sub_240929C54()
{
  v1 = *(v0 + 264) + 8;
  (*(v0 + 440))(*(v0 + 288), *(v0 + 256));
  *(v0 + 376) = *(v0 + 456);
  v2 = *(MEMORY[0x277D856B0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_2409294E0;
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);

  return MEMORY[0x2822002E8](v5, 0, 0, v6);
}

uint64_t sub_240929D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_240A2995C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240929E04, 0, 0);
}

uint64_t sub_240929E04()
{
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_240A2B00C();
  v0[11] = __swift_project_value_buffer(v5, qword_27E50BB60);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_240A2991C();
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = *(v12 + 8);
    v16(v10, v11);
    _os_log_impl(&dword_2408FE000, v7, v8, "Fetching image for member: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {

    v16 = *(v12 + 8);
    v16(v10, v11);
  }

  v0[14] = v16;
  v17 = v0[3];
  v18 = sub_240A2991C();
  v0[15] = v18;
  if (v18)
  {
    v19 = v18;
    v20 = *(MEMORY[0x277D434E8] + 4);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_24092A04C;
    v22 = v0[4];
    v18 = v19;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A4A38](v18);
}

uint64_t sub_24092A04C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;
  *(v4 + 152) = v2;

  if (v2)
  {
    v6 = sub_24092A3F4;
  }

  else
  {

    v6 = sub_24092A16C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24092A16C()
{
  v35 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 24), *(v0 + 40));
  sub_24092D9B4(v2, v1);
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();
  sub_24092D960(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v32 = *(v0 + 40);
    v33 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v11 = 138412546;
    v14 = sub_240A2991C();
    *(v11 + 4) = v14;
    *v12 = v14;
    v33(v9, v32);
    *(v11 + 12) = 2080;
    sub_24092D9B4(v8, v7);
    v15 = sub_240A295BC();
    v17 = v16;
    sub_24092D960(v8, v7);
    v18 = sub_240925464(v15, v17, &v34);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2408FE000, v5, v6, "Successfully fetched image for member: %@: %s", v11, 0x16u);
    sub_240919300(v12, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245CCDDB0](v13, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 72);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);

    v19(v20, v21);
  }

  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v25 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 16), *(v0 + 24), *(v0 + 40));
  sub_240A2994C();
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24092A3F4()
{
  v40 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);

  v3(v5, v7, v6);
  v8 = v1;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C2AC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 112);
  if (v11)
  {
    v13 = *(v0 + 96);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 40);
    v35 = *(v0 + 104);
    v36 = *(v0 + 48);
    v37 = *(v0 + 152);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v17 = 136315394;
    v13(v15, v14, v16);
    v19 = sub_240A2BF9C();
    v21 = v20;
    v12(v14, v16);
    v22 = sub_240925464(v19, v21, &v39);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v37;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_2408FE000, v9, v10, "Failed to fetch image data for member: %s with error: %@", v17, 0x16u);
    sub_240919300(v18, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245CCDDB0](v38, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  else
  {
    v25 = *(v0 + 64);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);

    v12(v25, v26);
  }

  v28 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 16), *(v0 + 24), *(v0 + 40));
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24092A694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v23 - v11;
  sub_240919298(a1, v23 - v11, &unk_27E50B420, &qword_240A30800);
  v13 = sub_240A2C24C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_240919300(v12, &unk_27E50B420, &qword_240A30800);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_240A2C1BC();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_240A2C23C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v4;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_24092A8BC()
{
  v1 = v0;
  if (qword_27E50AEC8 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50BB60);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Updating presentables with new members", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v13 = *v1;
  v14 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC10, &qword_240A31890);
  sub_240A2BC5C();
  sub_24092AAEC(v11);

  v6 = v1[2];
  v7 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC08, &qword_240A31888);
  sub_240A2BC6C();
  result = type metadata accessor for FamilyPicker();
  if (*(v1 + *(result + 32)) == 1)
  {
    sub_240A2AF8C();
    sub_240A2AF4C();

    v9 = sub_240A2BC5C();
    MEMORY[0x245CCCE10](v9);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_240A2C17C();
    }

    sub_240A2C19C();
    sub_240A2BC6C();
  }

  return result;
}

uint64_t sub_24092AAEC(uint64_t a1)
{
  v3 = sub_240A2995C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v36 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v27[1] = v1;
    v38 = MEMORY[0x277D84F90];
    sub_240A2C50C();
    v10 = -1 << *(a1 + 32);
    v35 = a1 + 64;
    result = sub_240A2C40C();
    v11 = result;
    v12 = 0;
    v37 = *(a1 + 36);
    v32 = (v4 + 8);
    v33 = v4 + 16;
    v28 = a1 + 72;
    v29 = v8;
    v30 = v4;
    v31 = v3;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v35 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v34 = v12;
      (*(v4 + 16))(v36, *(a1 + 56) + *(v4 + 72) * v11, v3);
      result = sub_240A2991C();
      if (!result)
      {
        goto LABEL_27;
      }

      sub_240A2993C();
      v16 = sub_240A2AF8C();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_240A2AF6C();
      (*v32)(v36, v3);
      sub_240A2C4EC();
      v19 = *(v38 + 16);
      sub_240A2C51C();
      sub_240A2C52C();
      result = sub_240A2C4FC();
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v20 = *(v35 + 8 * v15);
      if ((v20 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v13 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v29;
        v4 = v30;
      }

      else
      {
        v22 = v15 << 6;
        v23 = v15 + 1;
        v14 = v29;
        v24 = (v28 + 8 * v15);
        v4 = v30;
        while (v23 < (v13 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_24092D768(v11, v37, 0);
            v13 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_24092D768(v11, v37, 0);
      }

LABEL_4:
      v12 = v34 + 1;
      v11 = v13;
      v3 = v31;
      if (v34 + 1 == v14)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_24092AE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092AE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092AEF4()
{
  v2 = *(type metadata accessor for FamilyPicker() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return sub_24092848C(v0 + v3);
}

uint64_t sub_24092AFC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 25) = a4;
  *(v7 + 56) = a3;
  *(v7 + 64) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_240A2B00C();
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v11 = sub_240A2C55C();
  *(v7 + 112) = v11;
  v12 = *(v11 - 8);
  *(v7 + 120) = v12;
  *(v7 + 128) = *(v12 + 64);
  *(v7 + 136) = swift_task_alloc();
  v13 = sub_240A2C53C();
  *(v7 + 144) = v13;
  v14 = *(v13 - 8);
  *(v7 + 152) = v14;
  *(v7 + 160) = *(v14 + 64);
  *(v7 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24092B154, 0, 0);
}

uint64_t sub_24092B154()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v23 = *(v0 + 144);
  v30 = *(v0 + 136);
  v25 = *(v0 + 160);
  v26 = *(v0 + 128);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v21 = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v32 = *(v0 + 25);
  v24 = *(v0 + 64);
  v28 = *(v0 + 48);
  v29 = *(v0 + 56);
  v22 = *(v0 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 16) = &unk_240A317F0;
  *(v8 + 24) = v7;
  v27 = swift_allocObject();
  *(v0 + 184) = v27;
  *(v27 + 16) = &unk_240A31800;
  *(v27 + 24) = v8;
  v9 = *(v2 + 16);

  v9(v1, v22, v23);
  (*(v3 + 16))(v30, v24, v4);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v25 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 17) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 192) = v13;
  (*(v2 + 32))(v13 + v10, v1, v23);
  v14 = v13 + v11;
  *v14 = v28;
  *(v14 + 8) = v29;
  *(v14 + 16) = v32 & 1;
  (*(v3 + 32))(v13 + v12, v30, v21);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBF0, &qword_240A31830);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  v17[2] = &unk_240A31810;
  v17[3] = v27;
  v17[4] = &unk_240A31820;
  v17[5] = v13;
  v18 = *(MEMORY[0x277D858E8] + 4);

  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  *v19 = v0;
  v19[1] = sub_24092B464;

  return MEMORY[0x282200600](v0 + 16, v15, v16, 0, 0, &unk_240A31840, v17, v15);
}

uint64_t sub_24092B464()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24092B57C, 0, 0);
}

uint64_t sub_24092B57C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  if (*(v0 + 24))
  {
    v5 = *(v0 + 104);
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    swift_willThrowTypedImpl();

    sub_240A2AE9C();
    v6 = v1;
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    sub_24092D078(v1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_2408FE000, v7, v8, "Failed to finish action in time: %@", v9, 0xCu);
      sub_240919300(v10, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v10, -1, -1);
      MEMORY[0x245CCDDB0](v9, -1, -1);

      sub_24092D078(v1, 1);
    }

    else
    {
      sub_24092D078(v1, 1);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  else
  {
    v13 = *(v0 + 176);
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 136);
  v16 = *(v0 + 104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24092B79C(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2409252E8;

  return v5();
}

uint64_t sub_24092B884(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_240915E50;

  return v6();
}

uint64_t sub_24092B96C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  v8 = *(MEMORY[0x277D857F0] + 4);
  v9 = swift_task_alloc();
  *(v5 + 40) = v9;
  v10 = sub_240A2C55C();
  v11 = sub_24092DDF4(&qword_27E50BBD8, MEMORY[0x277D85928]);
  *v9 = v5;
  v9[1] = sub_24092BA80;

  return MEMORY[0x282200488](a1, v5 + 16, a5, v10, v11);
}

uint64_t sub_24092BA80()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_24092BBBC;
  }

  else
  {
    v3 = sub_24092BB94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24092BBBC()
{
  v1 = sub_240A2C25C();
  v2 = *(v0 + 48);
  if (v1)
  {

    v2 = 0;
  }

  *(v0 + 56) = (v1 & 1) == 0;
  v3 = *(v0 + 8);

  return v3(v2, ((v1 & 1) == 0) | 0x100u);
}

uint64_t sub_24092BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBF8, &qword_240A31850);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24092BD50, 0, 0);
}

uint64_t sub_24092BD50()
{
  v1 = v0[12];
  v2 = v0[8];
  v15 = v0[7];
  v16 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = sub_240A2C24C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_24092A694(v1, &unk_240A31860, v8);
  sub_240919300(v1, &unk_27E50B420, &qword_240A30800);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v15;
  v9[5] = v2;

  sub_24092A694(v1, &unk_240A31868, v9);
  sub_240919300(v1, &unk_27E50B420, &qword_240A30800);
  v0[13] = *v5;
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBE8, &qword_240A31828);
  sub_240A2C1DC();
  v10 = *(MEMORY[0x277D856B0] + 4);
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_24092BF80;
  v12 = v0[11];
  v13 = v0[9];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v13);
}

uint64_t sub_24092BF80()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24092C07C, 0, 0);
}

uint64_t sub_24092C07C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 >> 8 > 0xFE)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    sub_24092D37C();
    v1 = swift_allocError();
    LOBYTE(v2) = 1;
    *v3 = 1;
LABEL_13:
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    sub_240A2C1FC();

    v16 = *(v0 + 8);

    return v16(v1, v2 & 1);
  }

  if ((v2 & 0x100) == 0)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    goto LABEL_13;
  }

  if (v2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_12:
    LOBYTE(v2) = 1;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    sub_24092D37C();
    v1 = swift_allocError();
    *v11 = 0;
    (*(v9 + 8))(v8, v10);
    goto LABEL_12;
  }

  v4 = *(MEMORY[0x277D856B0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24092BF80;
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v7);
}

uint64_t sub_24092C26C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24092DE3C;

  return v7(a1);
}

uint64_t sub_24092C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_240915E50;

  return sub_24092AFC0(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_24092C43C()
{
  v2 = *(sub_240A2C53C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_240A2C55C() - 8);
  v6 = (v4 + *(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_240916360;

  return sub_24092C364(v0 + v3, v0 + v4, v0 + v6, v8, v9);
}

uint64_t sub_24092C5D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return sub_24092B79C(v2);
}

uint64_t sub_24092C67C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_24092B884(a1, v5);
}

uint64_t sub_24092C734(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_24092C828;

  return v6(v2 + 16);
}

uint64_t sub_24092C828()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_24092C974;
  }

  else
  {
    v3 = sub_24092C93C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24092C93C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48) != 0;
  *(v0 + 24) = v3;
  *v2 = v1;
  *(v2 + 8) = v3;
  *(v2 + 9) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_24092C974()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = *(v0 + 32);
  *(v0 + 24) = v1 != 0;
  *v2 = v1;
  *(v2 + 8) = v1 != 0;
  *(v2 + 9) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_24092C9AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_24092C734(a1, v5);
}

uint64_t sub_24092CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_24092CB28;

  return sub_24092B96C(a2, v7, v8, v9, a4);
}

uint64_t sub_24092CB28(uint64_t a1, __int16 a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 9) = HIBYTE(a2) & 1;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24092CC50(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240A2C53C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_240A2C55C() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_240916360;

  return sub_24092CA64(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_24092CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_24092CE78;

  return sub_24092BC44(a2, a3, a4, a5, a6);
}

uint64_t sub_24092CE78(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24092CF9C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_240916360;

  return sub_24092CDB0(a1, a2, v6, v7, v9, v8);
}

void sub_24092D078(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24092D084(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v4;
  v6[1] = sub_24092D178;

  return v8(v4 + 16);
}

uint64_t sub_24092D178()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  *(v3 + 9) = v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_24092D2B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_24092D084(a1, v4, v5, v7);
}

unint64_t sub_24092D37C()
{
  result = qword_27E50BC00;
  if (!qword_27E50BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC00);
  }

  return result;
}

uint64_t sub_24092D3D0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_24092D4C4;

  return v6(v2 + 16);
}

uint64_t sub_24092D4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  *(v3 + 9) = v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_24092D600(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_24092D3D0(a1, v5);
}

uint64_t sub_24092D6B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240916360;

  return sub_240928C38(a1, a2, v6);
}

uint64_t sub_24092D768(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24092D774(uint64_t a1)
{
  v4 = *(sub_240A2995C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_240929D1C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24092D894(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240916360;

  return sub_24092C26C(a1, v5);
}

uint64_t sub_24092D94C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24092D960(a1, a2);
  }

  return a1;
}

uint64_t sub_24092D960(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24092D9B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for FamilyPicker();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = (v0 + v3 + *(v1 + 28));
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718) + 32);
  v15 = sub_240A2995C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v11[v14], 1, v15))
  {
    (*(v16 + 8))(&v11[v14], v15);
  }

  v17 = *(v0 + v3 + *(v1 + 36) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24092DBA0(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for FamilyPicker() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_240927F68(a1, a2, v6);
}

unint64_t sub_24092DC20()
{
  result = qword_27E50BC30;
  if (!qword_27E50BC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BFC0, &qword_240A31750);
    sub_24092DDF4(&qword_27E50BC38, MEMORY[0x277D433F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC30);
  }

  return result;
}

unint64_t sub_24092DCD4()
{
  result = qword_27E50BC40;
  if (!qword_27E50BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BBD0, &qword_240A317C8);
    sub_24092DD90();
    sub_24092DDF4(&qword_27E50F4A0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC40);
  }

  return result;
}

unint64_t sub_24092DD90()
{
  result = qword_27E50BC48;
  if (!qword_27E50BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BC50, &qword_240A318D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC48);
  }

  return result;
}

uint64_t sub_24092DDF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24092DE40()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BC58);
  __swift_project_value_buffer(v0, qword_27E50BC58);
  return sub_240A2AE5C();
}

uint64_t *AgeMigrationCardViewController.init(ageMigrationController:model:terminationHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v75 = a4;
  v79 = a3;
  v7 = type metadata accessor for AgeMigrationView();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v71 = &v67 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v67 - v16);
  v18 = sub_240A2A39C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v78 = v17;
  v24 = sub_240A2B00C();
  v25 = __swift_project_value_buffer(v24, qword_27E50BC58);
  swift_unknownObjectRetain();
  v73 = v25;
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C29C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = v7;
    v81 = a2;
    v82[0] = v67;
    *v28 = 136315138;
    v80 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v29 = sub_240A2BF9C();
    v31 = a1;
    v32 = v23;
    v33 = a2;
    v34 = v19;
    v35 = v18;
    v36 = sub_240925464(v29, v30, v82);

    *(v28 + 4) = v36;
    v18 = v35;
    v19 = v34;
    a2 = v33;
    v23 = v32;
    a1 = v31;
    _os_log_impl(&dword_2408FE000, v26, v27, "Creating card view controller with value %s", v28, 0xCu);
    v37 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    v7 = v68;
    MEMORY[0x245CCDDB0](v37, -1, -1);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  v69 = a2;
  v70 = v19;
  v74 = v18;
  v38 = v76;
  v39 = (v76 + OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_ageMigrationController);
  *v39 = a1;
  v39[1] = a2;
  (*(v19 + 16))(v23, v79, v18);
  v40 = objc_allocWithZone(type metadata accessor for AgeMigrationViewModel(0));
  ObjectType = swift_getObjectType();
  v42 = swift_unknownObjectRetain_n();
  v43 = sub_2409B87D4(v42, v23, 0, 0, v40, ObjectType, a2);
  KeyPath = swift_getKeyPath();
  v45 = v78;
  *v78 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v46 = *(v7 + 20);
  sub_24092F0D8();
  v47 = v43;
  sub_240A2BD9C();
  v48 = v71;
  sub_24092F130(v45, v71);
  v49 = objc_allocWithZone(type metadata accessor for AgeMigrationHostingController());
  sub_24092F130(v48, v72);
  v50 = sub_240A2B5EC();
  sub_24092F194(v48);
  *&v38[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_hostingController] = v50;
  v51 = &v38[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_terminationHandler];
  v52 = v77;
  *v51 = v75;
  *(v51 + 1) = v52;
  v53 = type metadata accessor for AgeMigrationCardViewController();
  v83.receiver = v38;
  v83.super_class = v53;

  v54 = objc_msgSendSuper2(&v83, sel_initWithContentView_, 0);
  v55 = swift_getKeyPath();
  MEMORY[0x28223BE20](v55, v56);
  *(&v67 - 4) = v47;
  *(&v67 - 3) = v54;
  *(&v67 - 2) = &off_28528CEE8;
  v80 = v47;
  v57 = v54;
  sub_240A296DC();

  swift_unknownObjectRetain();
  v58 = sub_240A2AFFC();
  v59 = sub_240A2C29C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 136315138;
    v80 = a1;
    v81 = v69;
    v82[0] = v61;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v62 = sub_240A2BF9C();
    v64 = sub_240925464(v62, v63, v82);
    v76 = v57;
    v65 = v64;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_2408FE000, v58, v59, "End of card init, value: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245CCDDB0](v61, -1, -1);
    MEMORY[0x245CCDDB0](v60, -1, -1);
    swift_unknownObjectRelease();

    v57 = v76;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v70 + 8))(v79, v74);
  sub_24092F194(v45);
  return v57;
}

void sub_24092E544()
{
  v1 = sub_240A2B80C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v62.receiver = v0;
  v62.super_class = type metadata accessor for AgeMigrationCardViewController();
  objc_msgSendSuper2(&v62, sel_viewDidLoad);
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50BC58);
  v5 = v0;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v60 = v9;
    *v8 = 136315138;
    v61 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_ageMigrationController];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC90, &unk_240A31950);
    v10 = sub_240A2BF9C();
    v12 = sub_240925464(v10, v11, &v60);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v6, v7, "viewdidload, age migration controller value %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v13 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_hostingController];
  sub_240A2B7FC();
  sub_240A2B5AC();
  v14 = sub_240A2B3BC();
  v16 = sub_240A2B5BC();
  if ((*v15 & v14) != 0)
  {
    *v15 &= ~v14;
  }

  v16(&v61, 0);
  v17 = [v13 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  [v13 willMoveToParentViewController_];
  [v5 addChildViewController_];
  v19 = [v5 view];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v21 = [v13 view];
  if (!v21)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v21;
  [v20 addSubview_];

  v23 = [v5 view];
  if (!v23)
  {
    v24 = sub_240A2AFFC();
    v58 = sub_240A2C2BC();
    if (os_log_type_enabled(v24, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      MEMORY[0x245CCDDB0](v59, -1, -1);
    }

    goto LABEL_20;
  }

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_240A318E0;
  v26 = [v13 view];
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v24 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v25 + 32) = v30;
  v31 = [v13 view];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v24 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v25 + 40) = v35;
  v36 = [v13 view];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v24 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v25 + 48) = v40;
  v41 = [v13 view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v24 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v25 + 56) = v45;
  v46 = [v13 view];
  if (!v46)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v47 = v46;
  v48 = [v46 centerXAnchor];

  v49 = [v24 centerXAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v25 + 64) = v50;
  v51 = [v13 view];
  if (v51)
  {
    v52 = v51;
    v53 = objc_opt_self();
    v54 = [v52 centerYAnchor];

    v55 = [v24 centerYAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    *(v25 + 72) = v56;
    sub_24092F234();
    v57 = sub_240A2C15C();

    [v53 activateConstraints_];

    [v13 didMoveToParentViewController_];
LABEL_20:

    return;
  }

LABEL_29:
  __break(1u);
}

id AgeMigrationCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id AgeMigrationCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24092EDD4(void *a1)
{
  v2 = v1;
  if (qword_27E50AED0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50BC58);
  v5 = a1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = sub_240925464(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v6, v7, "AgeMigrationViewModel requested termination. VM: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_terminationHandler + 8);
  return (*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI30AgeMigrationCardViewController_terminationHandler))();
}

uint64_t sub_24092EF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24092F0D8();
  sub_240A296EC();

  v4 = v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_24092F014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_24092F0D8();
  sub_240A296DC();
}

unint64_t sub_24092F0D8()
{
  result = qword_27E50BC78;
  if (!qword_27E50BC78)
  {
    type metadata accessor for AgeMigrationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BC78);
  }

  return result;
}

uint64_t sub_24092F130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092F194(uint64_t a1)
{
  v2 = type metadata accessor for AgeMigrationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24092F234()
{
  result = qword_27E50BFA0;
  if (!qword_27E50BFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50BFA0);
  }

  return result;
}

uint64_t AISFamilyPickerSelectionProtocol.isValid.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {
    return 1;
  }

  v4 = (*(a2 + 16))(a1, a2);
  if (v4)
  {

    return 1;
  }

  v6 = *(a2 + 24);

  return v6(a1, a2);
}

void *AISFamilyPickerSelectionProtocol.account.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    v3 = result;
    v4 = sub_24092F424(result);

    return v4;
  }

  return result;
}

void *sub_24092F424(void *a1)
{
  v2 = *MEMORY[0x277CB8C58];
  sub_240A2BF4C();
  v3 = objc_allocWithZone(MEMORY[0x277CB8F58]);
  v4 = sub_240A2BF1C();

  v5 = [v3 initWithIdentifier:v4 description:0];

  v6 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [a1 appleID];
    [v8 setUsername_];
  }

  v10 = [a1 dsid];
  if (v10)
  {
    v11 = v10;
    if (v7)
    {
      v12 = *MEMORY[0x277CF0058];
      v13 = v7;
      [v13 setAccountProperty:v11 forKey:v12];
    }
  }

  v14 = [a1 altDSID];
  if (v14)
  {
    v15 = v14;
    if (v7)
    {
      v16 = *MEMORY[0x277CEFF08];
      v17 = v7;
      [v17 setAccountProperty:v15 forKey:v16];
    }
  }

  v18 = [a1 firstName];
  if (v18)
  {
    v19 = v18;
    v20 = v7;
    [v20 aa:v19 setFirstName:?];
  }

  v21 = [a1 lastName];
  if (v21)
  {
    v22 = v21;
    v23 = v7;
    [v23 aa:v22 setLastName:?];
  }

  return v7;
}

uint64_t AppleIDSignInError.hashValue.getter()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

uint64_t sub_24092F720()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

uint64_t sub_24092F768()
{
  v1 = *v0;
  sub_240A2C72C();
  MEMORY[0x245CCD400](v1);
  return sub_240A2C74C();
}

void *AppleIDSignInView.init(configuration:onSkip:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a3;
  v11 = sub_240A2B33C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v23 - v19;
  v21 = *(type metadata accessor for AppleIDSignInView() + 20);
  sub_240A2B32C();
  (*(v12 + 16))(v17, v20, v11);
  sub_240A2BC4C();
  (*(v12 + 8))(v20, v11);
  type metadata accessor for AISSignInSettings();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a4;
  result[4] = a5;
  result[5] = a2;
  result[6] = v24;
  *a6 = sub_24092F93C;
  *(a6 + 8) = result;
  *(a6 + 16) = 0;
  return result;
}

uint64_t AppleIDSignInView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - v5;
  v37 = type metadata accessor for SignInOptionsView();
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37, v7);
  v33 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA0, &qword_240A31A18);
  v9 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v10);
  v36 = &v31 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  v12 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35, v13);
  v15 = (&v31 - v14);
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 shieldSignInOrCreateFlows];

  v18 = *v1;
  v19 = v1[1];
  v20 = *(v1 + 16);
  type metadata accessor for AISSignInSettings();
  sub_240900CB8(qword_2812101B0, type metadata accessor for AISSignInSettings);
  v21 = sub_240A2B1EC();
  v22 = *(type metadata accessor for AppleIDSignInView() + 20);
  if (v17)
  {
    v23 = *(type metadata accessor for PasswordSignInView(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    sub_240A2BC7C();
    *v15 = v21;
    v24 = sub_240A2B1EC();
    v25 = sub_240A2B0AC();
    v26 = v36;
    v27 = (v15 + *(v35 + 36));
    *v27 = v25;
    v27[1] = v24;
    sub_24092FF04(v15, v26);
    swift_storeEnumTagMultiPayload();
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView);
    sub_240A2B6EC();
    return sub_24092FF74(v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v29 = v32;
    sub_240A2BC7C();
    v30 = v33;
    sub_2409CC9E8(v21, v29, v33);
    sub_24092FD24(v30, v36);
    swift_storeEnumTagMultiPayload();
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView);
    sub_240A2B6EC();
    return sub_24092FEA8(v30);
  }
}

uint64_t sub_24092FD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInOptionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24092FD88()
{
  result = qword_27E50BCB8;
  if (!qword_27E50BCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BCA8, &qword_240A31A20);
    sub_240900CB8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView);
    sub_24092FE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCB8);
  }

  return result;
}

unint64_t sub_24092FE44()
{
  result = qword_27E50BCC8;
  if (!qword_27E50BCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BCD0, &qword_240A31A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCC8);
  }

  return result;
}

uint64_t sub_24092FEA8(uint64_t a1)
{
  v2 = type metadata accessor for SignInOptionsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24092FF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24092FF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCA8, &qword_240A31A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24092FFE0()
{
  result = qword_27E50BCE0;
  if (!qword_27E50BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIDSignInError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIDSignInError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2409301E0()
{
  result = qword_27E50BCE8;
  if (!qword_27E50BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BCF0, &unk_240A31B98);
    sub_24092FD88();
    sub_240900CB8(&qword_27E50BCD8, type metadata accessor for SignInOptionsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BCE8);
  }

  return result;
}

uint64_t _s15FlowDescriptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15FlowDescriptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for DiscoveryView()
{
  result = qword_27E50BD40;
  if (!qword_27E50BD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240930460()
{
  sub_24093070C(319, &qword_27E50BD50, MEMORY[0x277CED7B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_240930654();
    if (v1 <= 0x3F)
    {
      sub_2409306A4();
      if (v2 <= 0x3F)
      {
        sub_24093070C(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24093070C(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24093070C(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24093070C(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
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

void sub_240930654()
{
  if (!qword_27E50BD58)
  {
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50BD58);
    }
  }
}

void sub_2409306A4()
{
  if (!qword_27E50BD60)
  {
    sub_2409194E8(255, &qword_27E50D8D0, 0x277D750C8);
    v0 = sub_240A2C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50BD60);
    }
  }
}

void sub_24093070C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_240930774()
{
  result = qword_27E50BD98;
  if (!qword_27E50BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BD98);
  }

  return result;
}

uint64_t sub_2409307C8()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50BD00);
  __swift_project_value_buffer(v0, qword_27E50BD00);
  return sub_240A2AE9C();
}

uint64_t sub_240930814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v348 = a1;
  v352 = a2;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v305 = *(v353 - 8);
  v2 = *(v305 + 64);
  MEMORY[0x28223BE20](v353, v3);
  v304 = &v285 - v4;
  v5 = sub_240A2A01C();
  v302 = *(v5 - 8);
  v303 = v5;
  v6 = *(v302 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v301 = &v285 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A29F6C();
  v299 = *(v9 - 8);
  v300 = v9;
  v10 = *(v299 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v298 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA8, &qword_240A31C90);
  v13 = *(*(v317 - 1) + 64);
  MEMORY[0x28223BE20](v317, v14);
  v318 = (&v285 - v15);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDB0, &qword_240A31C98);
  v16 = *(*(v341 - 8) + 64);
  MEMORY[0x28223BE20](v341, v17);
  v319 = &v285 - v18;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDB8, &qword_240A31CA0);
  v19 = *(*(v315 - 8) + 64);
  MEMORY[0x28223BE20](v315, v20);
  v297 = &v285 - v21;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDC0, &qword_240A31CA8);
  v22 = *(*(v312 - 8) + 64);
  MEMORY[0x28223BE20](v312, v23);
  v314 = &v285 - v24;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA60, &unk_240A352E0);
  v25 = *(*(v309 - 8) + 64);
  MEMORY[0x28223BE20](v309, v26);
  v310 = (&v285 - v27);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v288 = *(v296 - 8);
  v28 = *(v288 + 64);
  MEMORY[0x28223BE20](v296, v29);
  v287 = &v285 - v30;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA70, &qword_240A352F0);
  v31 = *(*(v293 - 8) + 64);
  MEMORY[0x28223BE20](v293, v32);
  v295 = &v285 - v33;
  v294 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView();
  v34 = *(*(v294 - 8) + 64);
  MEMORY[0x28223BE20](v294, v35);
  v286 = (&v285 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE0, &qword_240A31CB0);
  v37 = *(*(v307 - 8) + 64);
  MEMORY[0x28223BE20](v307, v38);
  v306 = &v285 - v39;
  v40 = sub_240A2B52C();
  v291 = *(v40 - 8);
  v292 = v40;
  v41 = *(v291 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v290 = &v285 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE8, &unk_240A35000);
  v44 = *(*(v311 - 8) + 64);
  MEMORY[0x28223BE20](v311, v45);
  v308 = &v285 - v46;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDF0, &qword_240A31CB8);
  v47 = *(*(v316 - 8) + 64);
  MEMORY[0x28223BE20](v316, v48);
  v313 = &v285 - v49;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDF8, &qword_240A31CC0);
  v50 = *(*(v336 - 8) + 64);
  MEMORY[0x28223BE20](v336, v51);
  v321 = &v285 - v52;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE00, &qword_240A31CC8);
  v53 = *(*(v349 - 8) + 64);
  MEMORY[0x28223BE20](v349, v54);
  v351 = &v285 - v55;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE08, &qword_240A31CD0);
  v56 = *(*(v337 - 8) + 64);
  MEMORY[0x28223BE20](v337, v57);
  v339 = &v285 - v58;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE10, &qword_240A31CD8);
  v59 = *(*(v333 - 8) + 64);
  MEMORY[0x28223BE20](v333, v60);
  v334 = &v285 - v61;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE18, &qword_240A31CE0);
  v62 = *(*(v338 - 8) + 64);
  MEMORY[0x28223BE20](v338, v63);
  v335 = &v285 - v64;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE20, &qword_240A31CE8);
  v65 = *(*(v350 - 8) + 64);
  MEMORY[0x28223BE20](v350, v66);
  v340 = &v285 - v67;
  v68 = sub_240A2975C();
  v330 = *(v68 - 8);
  v331 = v68;
  v69 = *(v330 + 64);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v285 = &v285 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v71, v73);
  v289 = &v285 - v75;
  v77 = MEMORY[0x28223BE20](v74, v76);
  v328 = &v285 - v78;
  MEMORY[0x28223BE20](v77, v79);
  *&v347 = &v285 - v80;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v81 = *(*(v327 - 8) + 64);
  MEMORY[0x28223BE20](v327, v82);
  v345 = &v285 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84 - 8, v86);
  v346 = &v285 - v87;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE30, &qword_240A31CF0);
  v88 = *(*(v342 - 8) + 64);
  v90 = MEMORY[0x28223BE20](v342, v89);
  v320 = &v285 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v92);
  v325 = &v285 - v93;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v94 = *(*(v343 - 8) + 64);
  v96 = MEMORY[0x28223BE20](v343, v95);
  v98 = &v285 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96, v99);
  v323 = &v285 - v100;
  v344 = sub_240A2A10C();
  *&v354 = *(v344 - 8);
  v101 = *(v354 + 64);
  v103 = MEMORY[0x28223BE20](v344, v102);
  v322 = &v285 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = MEMORY[0x28223BE20](v103, v105);
  v326 = &v285 - v107;
  v109 = MEMORY[0x28223BE20](v106, v108);
  v324 = &v285 - v110;
  v112 = MEMORY[0x28223BE20](v109, v111);
  v114 = &v285 - v113;
  v116 = MEMORY[0x28223BE20](v112, v115);
  v118 = &v285 - v117;
  v120 = MEMORY[0x28223BE20](v116, v119);
  v122 = &v285 - v121;
  MEMORY[0x28223BE20](v120, v123);
  v125 = &v285 - v124;
  v332 = type metadata accessor for DiscoveringView();
  v126 = *(*(v332 - 8) + 64);
  v128 = MEMORY[0x28223BE20](v332, v127);
  v130 = &v285 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v128, v131);
  v329 = &v285 - v132;
  v133 = sub_240A29F2C();
  v134 = *(v133 - 8);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133, v136);
  v138 = &v285 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v134 + 16))(v138, v348, v133);
  v139 = (*(v134 + 88))(v138, v133);
  if (v139 != *MEMORY[0x277CED6F8])
  {
    v188 = v343;
    v189 = v355;
    if (v139 == *MEMORY[0x277CED6F0])
    {
      v190 = v343;
      sub_240A2BD1C();
      swift_getKeyPath();
      v191 = v320;
      sub_240A2BD0C();

      sub_240919300(v98, &qword_27E50BD18, &qword_240A33940);
      swift_getKeyPath();
      v192 = v321;
      sub_240A2BD0C();

      sub_240919300(v191, &qword_27E50BE30, &qword_240A31CF0);
      v193 = v322;
      MEMORY[0x245CCC9B0](v190);
      v194 = sub_240A2A0FC();
      *&v354 = *(v354 + 8);
      v195 = v344;
      (v354)(v193, v344);
      v196 = type metadata accessor for DiscoveredView();
      v197 = v192 + v196[5];
      LOBYTE(v368) = 0;
      sub_240A2BC4C();
      v198 = *(&v361 + 1);
      *v197 = v361;
      *(v197 + 8) = v198;
      *(v192 + v196[6]) = v194;
      v199 = v196[7];
      *(v192 + v199) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      v200 = v196[8];
      *(v192 + v200) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v201 = v192 + v196[9];
      *v201 = swift_getKeyPath();
      *(v201 + 8) = 0;
      KeyPath = swift_getKeyPath();
      MEMORY[0x245CCC9B0](v190);
      v203 = (v192 + *(v336 + 36));
      v204 = v203 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8) + 28);
      sub_240A29FAC();
      (v354)(v193, v195);
      *v203 = KeyPath;
      v205 = &qword_27E50BDF8;
      v206 = &qword_240A31CC0;
      sub_240919298(v192, v334, &qword_27E50BDF8, &qword_240A31CC0);
      swift_storeEnumTagMultiPayload();
      sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView);
      sub_2409367C0();
      v207 = v335;
      sub_240A2B6EC();
      v208 = &qword_27E50BE18;
      v209 = &qword_240A31CE0;
      sub_240919298(v207, v339, &qword_27E50BE18, &qword_240A31CE0);
    }

    else
    {
      if (v139 != *MEMORY[0x277CED700])
      {
        v231 = v344;
        if (v139 != *MEMORY[0x277CED708])
        {
          sub_240A2B56C();
          v241 = v304;
          sub_240A2B23C();
          v242 = v305;
          v243 = v353;
          (*(v305 + 16))(v351, v241, v353);
          swift_storeEnumTagMultiPayload();
          sub_240936678();
          sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
          sub_240A2B6EC();
          (*(v242 + 8))(v241, v243);
          return (*(v134 + 8))(v138, v133);
        }

        v232 = v322;
        MEMORY[0x245CCC9B0](v343);
        v233 = v298;
        sub_240A29F8C();
        (*(v354 + 8))(v232, v231);
        v234 = v301;
        sub_240A29F4C();
        (*(v299 + 8))(v233, v300);
        v235 = sub_240A2A00C();
        (*(v302 + 8))(v234, v303);
        v236 = *(v235 + 16);

        if (v236)
        {
          sub_24093409C(&v361);
          v368 = v361;
          v369 = v362;
          LOBYTE(v370) = v363;
          BYTE1(v370) = 1;
        }

        else
        {
          sub_24093382C(&v361);
          v368 = v361;
          v369 = v362;
          LOWORD(v370) = v363;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
        sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
        sub_240A2B6EC();
        v248 = v362;
        v249 = v363;
        v250 = BYTE1(v363);
        v354 = v361;
        v347 = v362;
        v251 = v318;
        *v318 = v361;
        v251[1] = v248;
        *(v251 + 32) = v249;
        *(v251 + 33) = v250;
        swift_storeEnumTagMultiPayload();
        v355 = v354;
        *&v354 = *(&v354 + 1);
        v348 = v347;
        sub_240937080(v355);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF30, &qword_240A31D10);
        sub_240936934();
        sub_240936FD0();
        v252 = v319;
        sub_240A2B6EC();
        sub_240919298(v252, v339, &qword_27E50BDB0, &qword_240A31C98);
        swift_storeEnumTagMultiPayload();
        sub_240936704();
        sub_2409368A8();
        v253 = v340;
        sub_240A2B6EC();
        sub_240919300(v252, &qword_27E50BDB0, &qword_240A31C98);
        sub_240919298(v253, v351, &qword_27E50BE20, &qword_240A31CE8);
        swift_storeEnumTagMultiPayload();
        sub_240936678();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        sub_240A2B6EC();
        sub_2409370D8(v355);
        v254 = v253;
        v255 = &qword_27E50BE20;
        v256 = &qword_240A31CE8;
        return sub_240919300(v254, v255, v256);
      }

      v210 = v322;
      MEMORY[0x245CCC9B0](v343);
      sub_240A2A0FC();
      v211 = v354 + 8;
      v212 = *(v354 + 8);
      v213 = v344;
      v212(v210, v344);
      if (sub_240A2A0EC())
      {
        *&v354 = v211;
        v214 = type metadata accessor for DiscoveryView();
        v215 = &v189[v214[12]];
        v216 = *v215;
        if ((v215[8] & 1) == 0)
        {

          sub_240A2C2BC();
          v217 = sub_240A2B84C();
          sub_240A2AFEC();

          v218 = v290;
          sub_240A2B51C();
          swift_getAtKeyPath();
          sub_24090C1E4(v216, 0);
          (*(v291 + 8))(v218, v292);
          v216 = v361;
        }

        v219 = v306;
        if (v216 == 2)
        {
          goto LABEL_20;
        }

        v220 = &v189[v214[13]];
        v221 = *v220;
        if ((v220[8] & 1) == 0)
        {

          sub_240A2C2BC();
          v222 = sub_240A2B84C();
          sub_240A2AFEC();

          v223 = v290;
          sub_240A2B51C();
          swift_getAtKeyPath();
          sub_24090C1E4(v221, 0);
          (*(v291 + 8))(v223, v292);
          v221 = v361;
        }

        if (v221 == 2)
        {
LABEL_20:
          v224 = v214[9];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
          v225 = v289;
          sub_240A2BC5C();
          v227 = v330;
          v226 = v331;
          LODWORD(v224) = (*(v330 + 88))(v225, v331);
          v228 = *MEMORY[0x277CED258];
          (*(v227 + 8))(v225, v226);
          if (v224 == v228)
          {
            v229 = swift_getKeyPath();
            v230 = v286;
            *v286 = v229;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
            swift_storeEnumTagMultiPayload();
            sub_24093A034(v230, v295, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
            swift_storeEnumTagMultiPayload();
            sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
            sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
            sub_240A2B6EC();
            sub_240939FD4(v230, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
          }

          else
          {
            v244 = v287;
            sub_240A2B22C();
            v245 = v288;
            v246 = v296;
            (*(v288 + 16))(v295, v244, v296);
            swift_storeEnumTagMultiPayload();
            sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
            sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
            sub_240A2B6EC();
            (*(v245 + 8))(v244, v246);
          }

          v247 = v308;
          v192 = v313;
          sub_240919298(v219, v310, &qword_27E50BDE0, &qword_240A31CB0);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
          sub_240936A78();
          sub_240936B60();
          sub_240A2B6EC();
          sub_240919300(v219, &qword_27E50BDE0, &qword_240A31CB0);
        }

        else
        {
          v257 = v214[9];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
          v258 = v285;
          sub_240A2BC5C();
          v259 = v331;
          v260 = v330 + 88;
          v261 = (*(v330 + 88))(v258, v331);
          v262 = (v260 - 80);
          if (v261 == *MEMORY[0x277CED240])
          {
            (*v262)(v258, v259);
            v263 = v322;
            MEMORY[0x245CCC9B0](v188);
            v264 = sub_240A29DFC();
            v266 = v265;
            v212(v263, v213);
            started = type metadata accessor for SetupStartViewController();
            v268 = objc_allocWithZone(started);
            v269 = &v268[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
            *v269 = v264;
            v269[1] = v266;
            v366.receiver = v268;
            v366.super_class = started;
            v270 = objc_msgSendSuper2(&v366, sel_initWithContentView_, 0);
            LOBYTE(v368) = 1;
            sub_240A2BD3C();
            v271 = v361;
            v272 = v362;
            sub_240A2C06C();
            v273 = v270;
            v274 = sub_240A2BF1C();

            [v273 showActivityIndicatorWithStatus_];

            LOBYTE(v274) = sub_240A2B88C();
            v275 = sub_240A2B3AC();
            v367 = 0;
            *&v368 = v273;
            *(&v368 + 1) = MEMORY[0x277D84F90];
            v369 = v271;
            LOBYTE(v370) = v272;
            *(&v370 + 1) = v356;
            DWORD1(v370) = *(&v356 + 3);
            *(&v370 + 1) = v275;
            LOWORD(v371) = v274;
          }

          else
          {
            (*v262)(v258, v259);
            v276 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
            LOBYTE(v368) = 1;
            sub_240A2BD3C();
            v277 = v361;
            v278 = v362;
            sub_240A2C06C();
            v279 = v276;
            v280 = sub_240A2BF1C();

            [v279 showActivityIndicatorWithStatus_];

            LOBYTE(v280) = sub_240A2B88C();
            v281 = sub_240A2B3AC();
            v367 = 1;
            *&v368 = v279;
            *(&v368 + 1) = MEMORY[0x277D84F90];
            v369 = v277;
            LOBYTE(v370) = v278;
            *(&v370 + 1) = v356;
            DWORD1(v370) = *(&v356 + 3);
            *(&v370 + 1) = v281;
            LOBYTE(v371) = v280;
            BYTE1(v371) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
          sub_240936BEC();
          sub_240936CA4();
          sub_240A2B6EC();
          v192 = v313;
          v282 = v362;
          v283 = v310;
          *v310 = v361;
          v283[1] = v282;
          v283[2] = v363;
          *(v283 + 24) = v364;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
          sub_240936A78();
          sub_240936B60();
          v247 = v308;
          sub_240A2B6EC();
        }

        v238 = &qword_27E50BDE8;
        v239 = &unk_240A35000;
        sub_240919298(v247, v314, &qword_27E50BDE8, &unk_240A35000);
        swift_storeEnumTagMultiPayload();
        sub_2409369EC();
        sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
        sub_240A2B6EC();
        v240 = v247;
      }

      else
      {
        v237 = v297;
        sub_240933180(v297);
        v238 = &qword_27E50BDB8;
        v239 = &qword_240A31CA0;
        sub_240919298(v237, v314, &qword_27E50BDB8, &qword_240A31CA0);
        swift_storeEnumTagMultiPayload();
        sub_2409369EC();
        sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
        v192 = v313;
        sub_240A2B6EC();
        v240 = v237;
      }

      sub_240919300(v240, v238, v239);
      v205 = &qword_27E50BDF0;
      v206 = &qword_240A31CB8;
      sub_240919298(v192, v318, &qword_27E50BDF0, &qword_240A31CB8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF30, &qword_240A31D10);
      sub_240936934();
      sub_240936FD0();
      v207 = v319;
      sub_240A2B6EC();
      v208 = &qword_27E50BDB0;
      v209 = &qword_240A31C98;
      sub_240919298(v207, v339, &qword_27E50BDB0, &qword_240A31C98);
    }

    swift_storeEnumTagMultiPayload();
    sub_240936704();
    sub_2409368A8();
    v284 = v340;
    sub_240A2B6EC();
    sub_240919300(v207, v208, v209);
    sub_240919298(v284, v351, &qword_27E50BE20, &qword_240A31CE8);
    swift_storeEnumTagMultiPayload();
    sub_240936678();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    sub_240919300(v284, &qword_27E50BE20, &qword_240A31CE8);
    v254 = v192;
    v255 = v205;
    v256 = v206;
    return sub_240919300(v254, v255, v256);
  }

  v318 = v130;
  v140 = v343;
  v141 = v355;
  MEMORY[0x245CCC9B0](v343);
  LODWORD(v348) = sub_240A2A07C();
  v142 = *(v354 + 8);
  v143 = v344;
  v142(v125, v344);
  v144 = v118;
  v145 = v142;
  MEMORY[0x245CCC9B0](v140);
  LODWORD(v354) = sub_240A2A0FC();
  v142(v122, v143);
  MEMORY[0x245CCC9B0](v140);
  v146 = sub_240A2A0BC();
  v148 = v147;
  v149 = v144;
  v150 = v143;
  v145(v149, v143);
  v317 = v145;
  if (v148)
  {
    v151 = v146;
  }

  else
  {
    v151 = 0;
  }

  v152 = 0xE000000000000000;
  if (v148)
  {
    v152 = v148;
  }

  v321 = v152;
  v322 = v151;
  v153 = v140;
  MEMORY[0x245CCC9B0](v140);
  LODWORD(v320) = sub_240932DE0();
  v145(v114, v150);
  v154 = type metadata accessor for DiscoveryView();
  LODWORD(v319) = v141[v154[6]];
  v155 = v323;
  sub_240A2BD1C();
  swift_getKeyPath();
  v156 = v325;
  sub_240A2BD0C();

  sub_240919300(v155, &qword_27E50BD18, &qword_240A33940);
  swift_getKeyPath();
  sub_240A2BD0C();

  sub_240919300(v156, &qword_27E50BE30, &qword_240A31CF0);
  v157 = v324;
  MEMORY[0x245CCC9B0](v153);
  v342 = sub_240A2A06C();
  v325 = v158;
  v159 = v150;
  v160 = v317;
  v317(v157, v150);
  v161 = v160;
  v162 = v154[8];
  v163 = *&v141[v154[7]];
  v164 = v163;
  sub_240A2BD1C();
  v165 = v154[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  sub_240A2BC5C();
  v166 = v326;
  MEMORY[0x245CCC9B0](v153);
  sub_240A2A0FC();
  v167 = sub_240A2A0EC();
  v168 = 0;
  if ((v167 & 1) == 0)
  {
    v168 = sub_240A2A03C();
  }

  v161(v166, v159);
  sub_240A245C4(v168, v167 & 1, &v368);
  v169 = v318;
  *v318 = v348 & 1;
  *(v169 + 1) = v354;
  v170 = v321;
  *(v169 + 1) = v322;
  *(v169 + 2) = v170;
  *(v169 + 24) = v320 & 1;
  *(v169 + 25) = v319;
  v171 = v332;
  sub_24093A86C(v346, v169 + *(v332 + 36), &qword_27E50BE28, qword_240A320C0);
  v172 = (v169 + v171[10]);
  v173 = v325;
  *v172 = v342;
  v172[1] = v173;
  *(v169 + v171[11]) = v163;
  sub_24093A86C(v345, v169 + v171[12], &qword_27E50BD20, &qword_240A31BC0);
  v174 = v171[13];
  v176 = v330;
  v175 = v331;
  v177 = v347;
  (*(v330 + 16))(v328, v347, v331);
  sub_240A2BC4C();
  (*(v176 + 8))(v177, v175);
  v178 = (v169 + v171[14]);
  v358 = v370;
  v359 = v371;
  v360 = v372;
  v356 = v368;
  v357 = v369;
  sub_240A2BC4C();
  v179 = v364;
  v178[2] = v363;
  v178[3] = v179;
  v178[4] = v365;
  v180 = v362;
  *v178 = v361;
  v178[1] = v180;
  v181 = v171[15];
  *(v169 + v181) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v182 = v169 + v171[16];
  *v182 = swift_getKeyPath();
  v182[8] = 0;
  v183 = v171[17];
  *(v169 + v183) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v184 = v329;
  sub_24093A09C(v169, v329, type metadata accessor for DiscoveringView);
  sub_24093A034(v184, v334, type metadata accessor for DiscoveringView);
  swift_storeEnumTagMultiPayload();
  sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView);
  sub_2409367C0();
  v185 = v335;
  sub_240A2B6EC();
  sub_240919298(v185, v339, &qword_27E50BE18, &qword_240A31CE0);
  swift_storeEnumTagMultiPayload();
  sub_240936704();
  sub_2409368A8();
  v186 = v340;
  sub_240A2B6EC();
  sub_240919300(v185, &qword_27E50BE18, &qword_240A31CE0);
  sub_240919298(v186, v351, &qword_27E50BE20, &qword_240A31CE8);
  swift_storeEnumTagMultiPayload();
  sub_240936678();
  sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
  sub_240A2B6EC();
  sub_240919300(v186, &qword_27E50BE20, &qword_240A31CE8);
  return sub_240939FD4(v184, type metadata accessor for DiscoveringView);
}

uint64_t sub_240932DE0()
{
  v42 = sub_240A2AE0C();
  v0 = *(v42 - 8);
  v1 = *(v0 + 64);
  v3 = MEMORY[0x28223BE20](v42, v2);
  v41 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3, v5);
  v40 = &v30[-v6];
  v39 = sub_240A2AE2C();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39, v9);
  v38 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF58, &qword_240A31E78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v30[-v14];
  sub_240A2A0FC();
  v31 = sub_240A2A0EC();
  sub_240A29F9C();
  v16 = sub_240A29D8C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_240919300(v15, &qword_27E50BF58, &qword_240A31E78);
LABEL_9:
    v29 = 1;
    return v29 & 1;
  }

  else
  {
    v18 = sub_240A29D7C();
    result = (*(v17 + 8))(v15, v16);
    v20 = 0;
    v36 = *(v18 + 16);
    v37 = v18;
    v35 = v7 + 16;
    v34 = *MEMORY[0x277CEDD88];
    v21 = (v0 + 8);
    v32 = v7 + 8;
    v33 = (v0 + 104);
    v22 = v39;
    while (1)
    {
      if (v36 == v20)
      {

        goto LABEL_9;
      }

      if (v20 >= *(v37 + 16))
      {
        break;
      }

      v23 = v38;
      (*(v7 + 16))(v38, v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20++, v22);
      v24 = v40;
      sub_240A2AE1C();
      v26 = v41;
      v25 = v42;
      (*v33)(v41, v34, v42);
      v27 = MEMORY[0x245CCBAC0](v24, v26);
      v28 = *v21;
      (*v21)(v26, v25);
      v28(v24, v25);
      result = (*(v7 + 8))(v23, v22);
      if (v27)
      {

        v29 = v31;
        return v29 & 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240933180@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF60, &qword_240A31E80);
  v1 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49, v2);
  v47 = &v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF18, &qword_240A31D08);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v5);
  v41 = (&v41 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF68, &qword_240A31E88);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42, v8);
  v43 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v41 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF00, &qword_240A31D00);
  v15 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v16);
  v44 = &v41 - v17;
  v18 = sub_240A2A10C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v41 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  sub_240A2A0FC();
  v29 = *(v19 + 8);
  v29(v27, v18);
  if (sub_240A2A0EC())
  {
    MEMORY[0x245CCC9B0](v28);
    v30 = sub_240A2A07C();
    v29(v24, v18);
    if (v30)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x245CCC9B0](v28);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8);
      v33 = v41;
      v34 = v41 + *(v32 + 28);
      sub_240A29FAC();
      v29(v27, v18);
      *v33 = KeyPath;
      sub_240919298(v33, v43, &qword_27E50BF18, &qword_240A31D08);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
      sub_240936EC4();
      v35 = v44;
      sub_240A2B6EC();
      sub_240919300(v33, &qword_27E50BF18, &qword_240A31D08);
    }

    else
    {
      v51 = sub_240A2BFDC();
      v52 = v39;
      sub_24091C4F8();
      sub_240A2B24C();
      v40 = v46;
      (*(v46 + 16))(v43, v14, v10);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
      sub_240936EC4();
      v35 = v44;
      sub_240A2B6EC();
      (*(v40 + 8))(v14, v10);
    }

    sub_240919298(v35, v47, &unk_27E50BF00, &qword_240A31D00);
    swift_storeEnumTagMultiPayload();
    sub_240936E0C();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return sub_240919300(v35, &unk_27E50BF00, &qword_240A31D00);
  }

  else
  {
    v51 = sub_240A2C06C();
    v52 = v36;
    sub_24091C4F8();
    sub_240A2B24C();
    v37 = v46;
    (*(v46 + 16))(v47, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_240936E0C();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return (*(v37 + 8))(v14, v10);
  }
}

void sub_24093382C(void *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for DiscoveryView();
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  v5 = v50[8];
  MEMORY[0x28223BE20](v3, v6);
  v58 = v7;
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2B52C();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() systemBlueColor];
  v13 = [objc_opt_self() configurationWithHierarchicalColor_];

  aBlock = 0xD000000000000022;
  v62 = 0x8000000240A3B260;
  v63 = v13;
  LOBYTE(v64) = 1;
  v14 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v15 = sub_2409E0A0C(&aBlock);
  sub_240A2C01C();
  v16 = *(v4 + 56);
  v60 = v2;
  v17 = v2 + v16;
  v18 = *v17;
  v51 = *(v17 + 8);
  if ((v51 & 1) == 0)
  {

    sub_240A2C2BC();
    v19 = sub_240A2B84C();
    sub_240A2AFEC();

    v20 = v52;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v18, 0);
    (*(v53 + 8))(v20, v8);
  }

  v49 = v8;
  sub_240A2BFFC();
  v67 = 1;
  sub_240A2BD3C();
  v55 = v62;
  v56 = aBlock;
  v54 = v63;
  v67 = 1;
  sub_240A2BD3C();
  v21 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v21 setDismissalType_];
  v22 = sub_240A2BF1C();

  [v21 setTitle_];

  v23 = sub_240A2BF1C();

  [v21 setSubtitle_];

  sub_240A2C01C();
  v24 = v59;
  sub_24093A034(v60, v59, type metadata accessor for DiscoveryView);
  v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v26 = swift_allocObject();
  sub_24093A09C(v24, v26 + v25, type metadata accessor for DiscoveryView);
  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v28 = swift_allocObject();
  v28[2] = sub_24093A104;
  v28[3] = v26;
  v28[4] = v27;
  v29 = v21;

  v30 = sub_240A2BF1C();

  v65 = sub_24093A11C;
  v66 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v50 = &v63;
  v63 = sub_2409DFF20;
  v64 = &block_descriptor_4;
  v31 = _Block_copy(&aBlock);
  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:v30 style:0 handler:v31];

  _Block_release(v31);

  v34 = [v29 addAction_];

  if ((v51 & 1) == 0)
  {

    sub_240A2C2BC();
    v35 = sub_240A2B84C();
    sub_240A2AFEC();

    v36 = v52;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v18, 0);
    (*(v53 + 8))(v36, v49);
  }

  sub_240A2BFFC();
  v37 = v59;
  sub_24093A034(v60, v59, type metadata accessor for DiscoveryView);
  v38 = swift_allocObject();
  sub_24093A09C(v37, v38 + v25, type metadata accessor for DiscoveryView);
  v39 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v40 = swift_allocObject();
  v40[2] = sub_24093A138;
  v40[3] = v38;
  v40[4] = v39;
  v41 = v29;

  v42 = sub_240A2BF1C();

  v65 = sub_24093A8F4;
  v66 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_2409DFF20;
  v64 = &block_descriptor_49;
  v43 = _Block_copy(&aBlock);
  v44 = [v32 actionWithTitle:v42 style:1 handler:v43];

  _Block_release(v43);

  v45 = [v41 addAction_];

  v46 = v57;
  *v57 = v41;
  v47 = v55;
  v48 = v56;
  v46[1] = MEMORY[0x277D84F90];
  v46[2] = v48;
  v46[3] = v47;
  *(v46 + 32) = v54;
}

uint64_t sub_24093409C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_240A2B52C();
  v78 = *(v3 - 1);
  v79 = v3;
  v4 = *(v78 + 8);
  MEMORY[0x28223BE20](v3, v5);
  v77 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_240A29DBC();
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v86, v9);
  v11 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DiscoveryView();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v17 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24093A034(v1, v17, type metadata accessor for DiscoveryView);
  sub_240A2C21C();
  v18 = sub_240A2C20C();
  v19 = *(v14 + 80);
  v76 = ~v19;
  v20 = (v19 + 32) & ~v19;
  v83 = v15;
  v85 = v19;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  v84 = v17;
  sub_24093A09C(v17, v21 + v20, type metadata accessor for DiscoveryView);
  v23 = sub_240A2C20C();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  sub_240A2BD2C();
  v81 = v88;
  v82 = aBlock;
  v75 = v89;
  v25 = v2 + *(v13 + 52);
  sub_240945D78(v11);
  sub_240A2C00C();
  (*(v7 + 8))(v11, v86);
  v26 = *(v13 + 56);
  v86 = v2;
  v27 = v2 + v26;
  v28 = *v27;
  v29 = *(v27 + 8);
  if ((v29 & 1) == 0)
  {

    sub_240A2C2BC();
    v30 = sub_240A2B84C();
    sub_240A2AFEC();

    v31 = v77;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v28, 0);
    (*(v78 + 1))(v31, v79);
  }

  sub_240A2BFFC();
  v93 = 1;

  sub_240A2BD3C();
  v32 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v32 setDismissalType_];
  v33 = sub_240A2BF1C();

  [v32 setTitle_];

  v34 = sub_240A2BF1C();

  [v32 setSubtitle_];

  v35 = v84;
  sub_24093A034(v86, v84, type metadata accessor for DiscoveryView);
  v36 = (v85 + 16) & v76;
  v37 = swift_allocObject();
  sub_24093A09C(v35, v37 + v36, type metadata accessor for DiscoveryView);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_24093A224;
  *(v38 + 24) = v37;
  *(v38 + 32) = 1;
  v93 = v75;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_24093A294;
  *(v39 + 24) = v38;

  v40 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_240937BD4(0, v40[2] + 1, 1, v40, &qword_27E50BF80, &qword_240A31E90);
  }

  v42 = v40[2];
  v41 = v40[3];
  if (v42 >= v41 >> 1)
  {
    v40 = sub_240937BD4((v41 > 1), v42 + 1, 1, v40, &qword_27E50BF80, &qword_240A31E90);
  }

  v40[2] = v42 + 1;
  v43 = &v40[2 * v42];
  v43[4] = sub_24093A2A0;
  v43[5] = v39;
  v75 = v93;
  sub_240A2C06C();
  v44 = v84;
  sub_24093A034(v86, v84, type metadata accessor for DiscoveryView);
  v45 = swift_allocObject();
  v76 = v36;
  sub_24093A09C(v44, v45 + v36, type metadata accessor for DiscoveryView);
  v46 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = swift_allocObject();
  v47[2] = sub_24093A2CC;
  v47[3] = v45;
  v47[4] = v46;
  v48 = v32;

  v49 = sub_240A2BF1C();

  v91 = sub_24093A8F4;
  v92 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v74[1] = &v89;
  v89 = sub_2409DFF20;
  v90 = &block_descriptor_75;
  v50 = _Block_copy(&aBlock);
  v74[0] = objc_opt_self();
  v51 = [v74[0] actionWithTitle:v49 style:0 handler:v50];

  _Block_release(v50);

  v52 = [v48 addAction_];

  if ((v29 & 1) == 0)
  {

    sub_240A2C2BC();
    v53 = sub_240A2B84C();
    sub_240A2AFEC();

    v54 = v77;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v28, 0);
    (*(v78 + 1))(v54, v79);
  }

  sub_240A2BFFC();
  v79 = type metadata accessor for DiscoveryView;
  v55 = v84;
  sub_24093A034(v86, v84, type metadata accessor for DiscoveryView);
  v56 = v76;
  v57 = swift_allocObject();
  v78 = type metadata accessor for DiscoveryView;
  sub_24093A09C(v55, v57 + v56, type metadata accessor for DiscoveryView);
  v58 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v59 = swift_allocObject();
  v59[2] = sub_24093A8F8;
  v59[3] = v57;
  v59[4] = v58;
  v60 = v48;

  v61 = sub_240A2BF1C();

  v91 = sub_24093A8F4;
  v92 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_2409DFF20;
  v90 = &block_descriptor_86;
  v62 = _Block_copy(&aBlock);
  v63 = [v74[0] actionWithTitle:v61 style:1 handler:v62];

  _Block_release(v62);

  v64 = [v60 addAction_];

  sub_24093A034(v86, v55, v79);
  v65 = swift_allocObject();
  sub_24093A09C(v55, v65 + v56, v78);
  LOBYTE(aBlock) = v75;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24093A420;
  *(v66 + 24) = v65;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_240937BD4(0, v40[2] + 1, 1, v40, &qword_27E50BF80, &qword_240A31E90);
  }

  v68 = v40[2];
  v67 = v40[3];
  if (v68 >= v67 >> 1)
  {
    v40 = sub_240937BD4((v67 > 1), v68 + 1, 1, v40, &qword_27E50BF80, &qword_240A31E90);
  }

  v69 = v82;

  v70 = v81;

  v40[2] = v68 + 1;
  v72 = &v40[2 * v68];
  v72[4] = sub_24093A8F0;
  v72[5] = v66;
  LOBYTE(v72) = aBlock;
  v73 = v80;
  *v80 = v60;
  v73[1] = v40;
  v73[2] = v69;
  v73[3] = v70;
  *(v73 + 32) = v72;
  return result;
}

uint64_t sub_240934CBC(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  [a2 setEnabled_];
  v7 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50BD00);
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "User selected to add new teen account, proceeding", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v13 = sub_240A29F7C();
  v14 = sub_240A29F3C();
  sub_240A29FBC();
  v14(v18, 0);
  v13(v19, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v12);
  v15 = sub_240A29F7C();
  v16 = sub_240A29F3C();
  sub_240A29FEC();
  v16(v18, 0);
  v15(v19, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240934F38@<X0>(_BYTE *a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v26 - v4;
  v26 = sub_240A2A01C();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A29F6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_240A2A10C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0](v23);
  sub_240A29F8C();
  (*(v18 + 8))(v22, v17);
  sub_240A29F4C();
  (*(v12 + 8))(v16, v11);
  sub_240A29FCC();
  (*(v6 + 8))(v10, v26);
  v24 = sub_240A2995C();
  LOBYTE(v12) = (*(*(v24 - 8) + 48))(v5, 1, v24) != 1;
  result = sub_240919300(v5, &qword_27E50BFD0, qword_240A31758);
  *v27 = v12;
  return result;
}

uint64_t sub_240935224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v82 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v77 = &v66 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFB0, &qword_240A31EA8);
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81, v7);
  v80 = &v66 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE30, &qword_240A31CF0);
  v9 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79, v10);
  v78 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v76 = &v66 - v15;
  v16 = type metadata accessor for DiscoveryView();
  v74 = *(v16 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v72 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_240A2A01C();
  v85 = *(v70 - 8);
  v19 = *(v85 + 64);
  v21 = MEMORY[0x28223BE20](v70, v20);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v66 - v24;
  v26 = sub_240A29F6C();
  v27 = *(v26 - 8);
  v83 = v26;
  v84 = v27;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v66 - v34;
  v36 = sub_240A2A10C();
  v67 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v66 - v44;
  v69 = v12;
  MEMORY[0x245CCC9B0](v12);
  sub_240A29F8C();
  v46 = *(v37 + 8);
  v46(v45, v36);
  sub_240A29F4C();
  v47 = *(v84 + 8);
  v84 += 8;
  v47(v35, v83);
  v75 = sub_240A2A00C();
  v48 = *(v85 + 8);
  v85 += 8;
  v49 = v70;
  v48(v25, v70);
  v50 = v68;
  MEMORY[0x245CCC9B0](v12);
  sub_240A29F8C();
  v46(v42, v67);
  v51 = v71;
  sub_240A29F4C();
  v52 = v32;
  v53 = v77;
  v47(v52, v83);
  LOBYTE(v37) = sub_240A29FFC();
  v48(v51, v49);
  v54 = v72;
  sub_24093A034(v50, v72, type metadata accessor for DiscoveryView);
  v55 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v56 = swift_allocObject();
  sub_24093A09C(v54, v56 + v55, type metadata accessor for DiscoveryView);
  v57 = v76;
  sub_240A2BD1C();
  swift_getKeyPath();
  v58 = v78;
  sub_240A2BD0C();

  sub_240919300(v57, &qword_27E50BD18, &qword_240A33940);
  swift_getKeyPath();
  v59 = v80;
  sub_240A2BD0C();

  sub_240919300(v58, &qword_27E50BE30, &qword_240A31CF0);
  swift_getKeyPath();
  sub_240A2BD0C();
  v60 = v82;

  sub_240919300(v59, &unk_27E50BFB0, &qword_240A31EA8);
  v87[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBB0, &qword_240A31748);
  sub_240A2BC4C();
  v61 = *(&v88 + 1);
  *(v60 + 16) = v88;
  *(v60 + 24) = v61;
  v87[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFC0, &qword_240A31750);
  sub_240A2BC4C();
  *(v60 + 32) = v88;
  *&v88 = v75;
  *(&v88 + 1) = sub_240927310;
  v89 = 0;
  v90 = sub_2409391CC;
  v91 = 0;
  v92 = sub_24093923C;
  v93 = 0;
  v87[0] = MEMORY[0x277D84F98];
  sub_24093934C(&v88, 1, v87);
  v86 = v87[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BBA0, &qword_240A31740);
  sub_240A2BC4C();
  v62 = v87[1];
  *v60 = v87[0];
  *(v60 + 8) = v62;
  v63 = type metadata accessor for FamilyPicker();
  result = sub_24093A86C(v53, v60 + v63[7], &qword_27E50BB80, &unk_240A31718);
  *(v60 + v63[8]) = v37 & 1;
  v65 = (v60 + v63[9]);
  *v65 = sub_24093A7C4;
  v65[1] = v56;
  return result;
}

uint64_t sub_240935A2C()
{
  v0 = sub_240A2A10C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50BD00);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "User selected to add new teen account, proceeding", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v8 = sub_240A29F7C();
  v9 = sub_240A29F3C();
  sub_240A29FBC();
  v9(v13, 0);
  v8(v14, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v7);
  v10 = sub_240A29F7C();
  v11 = sub_240A29F3C();
  sub_240A29FEC();
  v11(v13, 0);
  v10(v14, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240935C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_240935D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_240919298(a1, &v7 - v5, &qword_27E50BFD0, qword_240A31758);
  return sub_240A29FDC();
}

uint64_t sub_240935DDC(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  [a2 setEnabled_];
  v7 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v8 = sub_240A29F7C();
  v9 = sub_240A29F3C();
  sub_240A29FEC();
  v9(v11, 0);
  v8(v12, 0);
  return sub_240A2BCFC();
}

uint64_t sub_240935F34(void *a1, void *a2)
{
  v4 = sub_240A2A10C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  [a2 setEnabled_];
  v7 = sub_240A2BF1C();
  [a1 showActivityIndicatorWithStatus_];

  if (qword_27E50AED8 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50BD00);
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "User selected to add existing teen account, proceeding", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0]();
  v12 = sub_240A29F7C();
  v13 = sub_240A29F3C();
  sub_240A29FEC();
  v13(v15, 0);
  v12(v16, 0);
  return sub_240A2BCFC();
}

void sub_240936140(void *a1)
{
  v25 = sub_240A2A01C();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_240A29F6C();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v24, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A10C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 actions];
  sub_2409194E8(0, &qword_27E50BF78, 0x277D432F0);
  v19 = sub_240A2C16C();

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x245CCD150](1, v19);
    goto LABEL_4;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v20 = *(v19 + 40);
LABEL_4:
    v21 = v20;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
    MEMORY[0x245CCC9B0](v22);
    sub_240A29F8C();
    (*(v13 + 8))(v17, v12);
    sub_240A29F4C();
    (*(v7 + 8))(v11, v24);
    v23 = sub_240A29FFC();
    (*(v2 + 8))(v6, v25);
    [v21 setEnabled_];

    return;
  }

  __break(1u);
}

uint64_t sub_24093641C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_240A29F2C();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29F6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A10C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x245CCC9B0](v18);
  sub_240A29F8C();
  (*(v13 + 8))(v17, v12);
  sub_240A29F5C();
  (*(v7 + 8))(v11, v6);
  sub_240930814(v5, v20);
  return (*(v1 + 8))(v5, v21);
}

unint64_t sub_240936678()
{
  result = qword_27E50BE38;
  if (!qword_27E50BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BE20, &qword_240A31CE8);
    sub_240936704();
    sub_2409368A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE38);
  }

  return result;
}

unint64_t sub_240936704()
{
  result = qword_27E50BE40;
  if (!qword_27E50BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BE18, &qword_240A31CE0);
    sub_24093A824(&qword_27E50BE48, type metadata accessor for DiscoveringView);
    sub_2409367C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE40);
  }

  return result;
}

unint64_t sub_2409367C0()
{
  result = qword_27E50BE50;
  if (!qword_27E50BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDF8, &qword_240A31CC0);
    sub_24093A824(&qword_27E50BE58, type metadata accessor for DiscoveredView);
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE50);
  }

  return result;
}

unint64_t sub_2409368A8()
{
  result = qword_27E50BE70;
  if (!qword_27E50BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDB0, &qword_240A31C98);
    sub_240936934();
    sub_240936FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE70);
  }

  return result;
}

unint64_t sub_240936934()
{
  result = qword_27E50BE78;
  if (!qword_27E50BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDF0, &qword_240A31CB8);
    sub_2409369EC();
    sub_240936D5C(&qword_27E50BEF0, &qword_27E50BDB8, &qword_240A31CA0, sub_240936E0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE78);
  }

  return result;
}

unint64_t sub_2409369EC()
{
  result = qword_27E50BE80;
  if (!qword_27E50BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDE8, &unk_240A35000);
    sub_240936A78();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BE80);
  }

  return result;
}

unint64_t sub_240936A78()
{
  result = qword_27E50D780;
  if (!qword_27E50D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BDE0, &qword_240A31CB0);
    sub_24093A824(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D780);
  }

  return result;
}

unint64_t sub_240936B60()
{
  result = qword_27E50BEA0;
  if (!qword_27E50BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936BEC();
    sub_240936CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEA0);
  }

  return result;
}

unint64_t sub_240936BEC()
{
  result = qword_27E50BEB0;
  if (!qword_27E50BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D7A0, &unk_240A35020);
    sub_24091CE28(&unk_27E50BEC0, &unk_27E50D7B0, &unk_240A38E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEB0);
  }

  return result;
}

unint64_t sub_240936CA4()
{
  result = qword_27E50BED0;
  if (!qword_27E50BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D7C0, &unk_240A35030);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BED0);
  }

  return result;
}

uint64_t sub_240936D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240936E0C()
{
  result = qword_27E50BEF8;
  if (!qword_27E50BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BF00, &qword_240A31D00);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240936EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BEF8);
  }

  return result;
}

unint64_t sub_240936EC4()
{
  result = qword_27E50BF10;
  if (!qword_27E50BF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50BF18, &qword_240A31D08);
    sub_240936F7C();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF10);
  }

  return result;
}

unint64_t sub_240936F7C()
{
  result = qword_27E50BF20;
  if (!qword_27E50BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF20);
  }

  return result;
}

unint64_t sub_240936FD0()
{
  result = qword_27E50BF28;
  if (!qword_27E50BF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BF30, &qword_240A31D10);
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF28);
  }

  return result;
}

uint64_t sub_240937080(void *a1)
{

  v2 = a1;
}

uint64_t sub_2409370D8(void *a1)
{
}

void sub_240937130(void *a1, void (*a2)(uint64_t), uint64_t a3, char a4)
{
  v7 = sub_240A2B80C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = type metadata accessor for FamilyPicker();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  a2(v13);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF90, &qword_240A31EA0));
  v15 = sub_240A2B5EC();
  sub_240A2B7FC();
  sub_240A2B5AC();
  v16 = sub_240A2B3BC();
  v18 = sub_240A2B5BC();
  if ((*v17 & v16) != 0)
  {
    *v17 &= ~v16;
  }

  v18(v88, 0);
  v19 = v15;
  v20 = [v19 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  [v19 willMoveToParentViewController_];
  [a1 addChildViewController_];
  if (a4)
  {
    v22 = [a1 contentView];
  }

  else
  {
    v22 = [a1 view];
    if (!v22)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  v23 = [v19 view];
  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v23;
  [v22 addSubview_];

  [v19 didMoveToParentViewController_];
  if (a4)
  {
    v25 = [a1 contentView];
    v26 = [v25 mainContentGuide];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_240A318E0;
    v28 = [v19 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 leadingAnchor];

      v31 = [v26 leadingAnchor];
      v32 = [v30 constraintEqualToAnchor_];

      *(v27 + 32) = v32;
      v33 = [v19 view];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 trailingAnchor];

        v36 = [v26 trailingAnchor];
        v37 = [v35 constraintEqualToAnchor_];

        *(v27 + 40) = v37;
        v38 = [v19 view];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 topAnchor];

          v41 = [v26 topAnchor];
          v42 = [v40 constraintEqualToAnchor_];

          *(v27 + 48) = v42;
          v43 = [v19 view];
          if (v43)
          {
            v44 = v43;
            v45 = [v43 bottomAnchor];

            v46 = [v26 bottomAnchor];
            v47 = [v45 constraintEqualToAnchor_];

            *(v27 + 56) = v47;
            v48 = [v19 view];
            if (v48)
            {
              v49 = v48;
              v50 = [v48 centerXAnchor];

              v51 = [v26 centerXAnchor];
              v52 = [v50 constraintEqualToAnchor_];

              *(v27 + 64) = v52;
              v53 = [v19 view];

              if (v53)
              {
                v54 = [v53 centerYAnchor];

                v55 = [v26 centerYAnchor];
                v56 = [v54 constraintEqualToAnchor_];

                *(v27 + 72) = v56;
                sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
                v57 = sub_240A2C15C();

                [v22 addConstraints_];

LABEL_23:
                return;
              }

              goto LABEL_37;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_240A318E0;
  v59 = [v19 view];
  if (!v59)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60 = v59;
  v61 = [v59 leadingAnchor];

  v62 = [v22 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v58 + 32) = v63;
  v64 = [v19 view];
  if (!v64)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v22 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v58 + 40) = v68;
  v69 = [v19 view];
  if (!v69)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v70 = v69;
  v71 = [v69 topAnchor];

  v72 = [v22 topAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v58 + 48) = v73;
  v74 = [v19 view];
  if (!v74)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v75 = v74;
  v76 = [v74 bottomAnchor];

  v77 = [v22 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v58 + 56) = v78;
  v79 = [v19 view];
  if (!v79)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v80 = v79;
  v81 = [v79 centerXAnchor];

  v82 = [v22 centerXAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v58 + 64) = v83;
  v84 = [v19 view];

  if (v84)
  {
    v85 = [v84 centerYAnchor];

    v86 = [v22 centerYAnchor];
    v87 = [v85 constraintEqualToAnchor_];

    *(v58 + 72) = v87;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v57 = sub_240A2C15C();

    [v22 addConstraints_];
    goto LABEL_23;
  }

LABEL_38:
  __break(1u);
}

char *sub_240937AB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C040, &qword_240A31F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_240937BD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF88, &qword_240A31E98);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_240937D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
  v36 = a2;
  result = sub_240A2C5BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24091C780(v25, v37);
      }

      else
      {
        sub_240913DC0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_240A2C72C();
      sub_240A2C09C();
      result = sub_240A2C74C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24091C780(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_240937FB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
  v38 = a2;
  result = sub_240A2C5BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_240A2C72C();
      sub_240A2C09C();
      result = sub_240A2C74C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_240938260(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = sub_240A2995C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59, v8);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A299DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v60 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C000, &qword_240A31F28);
  v54 = a2;
  result = sub_240A2C5BC();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = v11;
    v21 = (v15 + 64);
    v22 = 1 << *(v15 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v15 + 64);
    v25 = (v22 + 63) >> 6;
    v50 = (v20 + 16);
    v51 = v20;
    v48 = v3;
    v49 = v6 + 16;
    v52 = v15;
    v53 = v6;
    v55 = (v6 + 32);
    v56 = (v20 + 32);
    v26 = result + 64;
    v27 = v20;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v19 << 6);
      v33 = *(v15 + 48);
      v57 = *(v27 + 72);
      v34 = v33 + v57 * v32;
      if (v54)
      {
        (*v56)(v60, v34, v10);
        v35 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 32))(v58, v35 + v36 * v32, v59);
      }

      else
      {
        (*v50)(v60, v34, v10);
        v37 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 16))(v58, v37 + v36 * v32, v59);
      }

      v38 = *(v18 + 40);
      sub_24093A824(&qword_27E50BAC0, MEMORY[0x277CED3D8]);
      result = sub_240A2BEEC();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v26 + 8 * v41);
          if (v45 != -1)
          {
            v28 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v56)((*(v18 + 48) + v57 * v28), v60, v10);
      result = (*v55)(*(v18 + 56) + v36 * v28, v58, v59);
      ++*(v18 + 16);
      v27 = v51;
      v15 = v52;
    }

    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v25)
      {
        break;
      }

      v31 = v21[v19];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v21, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_240938708(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
  result = sub_240A2C5BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_24091C780((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_24092702C(v24, &v38);
        sub_240913DC0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_240A2C42C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_24091C780(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_2409389C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_240913DC0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24091C780(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_240938B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_240938CD4()
{
  v1 = v0;
  v45 = sub_240A2995C();
  v48 = *(v45 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v45, v3);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_240A299DC();
  v47 = *(v43 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v43, v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C000, &qword_240A31F28);
  v8 = *v0;
  v9 = sub_240A2C5AC();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_240939028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
  v2 = *v0;
  v3 = sub_240A2C5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_24092702C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_240913DC0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_24091C780(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_24093923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFE0, &qword_240A31F18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_240919298(a1, &v11 - v7, &qword_27E50BFE0, &qword_240A31F18);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (result != 1)
  {
    return sub_24093A86C(v8, a2, &unk_27E50BFF0, &qword_240A31710);
  }

  __break(1u);
  return result;
}

void sub_24093934C(uint64_t *a1, int a2, uint64_t *a3)
{
  v111 = a3;
  v107 = a2;
  v110 = sub_240A299DC();
  v104 = *(v110 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v110, v5);
  v112 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2995C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v109 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v116 = &v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD0, qword_240A31758);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v131 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v126 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFD8, &qword_240A31F10);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v105 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v99 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v103 = &v99 - v32;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BFE0, &qword_240A31F18);
  v132 = *(v130 - 8);
  v33 = *(v132 + 64);
  v35 = MEMORY[0x28223BE20](v130, v34);
  v101 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v122 = &v99 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v106 = &v99 - v41;
  v42 = *a1;
  v115 = a1[1];
  v43 = a1[2];
  v121 = a1[3];
  v135 = v42;
  v44 = a1[4];
  v100 = a1[5];
  v45 = a1[6];
  v46 = *(v42 + 16);
  sub_240919298(&v135, v133, &qword_27E50BFE8, &qword_240A31F20);
  v114 = v8 + 16;
  v124 = (v8 + 48);
  v125 = (v8 + 56);
  v119 = v8;
  v120 = (v8 + 32);
  v47 = (v8 + 8);
  v48 = v46;
  v117 = v47;
  v128 = (v132 + 48);
  v129 = (v132 + 56);
  v108 = (v104 + 32);
  v118 = v43;

  v123 = v44;

  v102 = v45;

  v49 = 0;
  v127 = v7;
  while (2)
  {
    v50 = v126;
    if (v49 == v48)
    {
LABEL_3:
      v51 = 1;
      v132 = v48;
      goto LABEL_7;
    }

    while (1)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v49 >= *(v42 + 16))
      {
        goto LABEL_33;
      }

      (*(v119 + 16))(v50, v42 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v49, v7);
      v51 = 0;
      v132 = v49 + 1;
LABEL_7:
      v52 = 1;
      (*v125)(v50, v51, 1, v7);
      v53 = v50;
      v54 = v131;
      sub_24093A86C(v53, v131, &qword_27E50BFD0, qword_240A31758);
      if ((*v124)(v54, 1, v7) != 1)
      {
        v55 = v116;
        (*v120)(v116, v131, v7);
        v115(v55);
        (*v117)(v55, v7);
        v52 = 0;
      }

      v56 = v42;
      v57 = v130;
      v58 = *v129;
      (*v129)(v30, v52, 1, v130);
      v59 = *v128;
      if ((*v128)(v30, 1, v57) == 1)
      {
        sub_240919300(v30, &qword_27E50BFD8, &qword_240A31F10);
        v64 = 1;
        v65 = v103;
        goto LABEL_15;
      }

      v60 = v48;
      v61 = v30;
      v62 = v30;
      v63 = v122;
      sub_24093A86C(v62, v122, &qword_27E50BFE0, &qword_240A31F18);
      if (v121(v63))
      {
        break;
      }

      sub_240919300(v63, &qword_27E50BFE0, &qword_240A31F18);
      v50 = v126;
      v7 = v127;
      v30 = v61;
      v48 = v60;
      v49 = v132;
      if (v132 == v60)
      {
        goto LABEL_3;
      }
    }

    v66 = v103;
    sub_24093A86C(v63, v103, &qword_27E50BFE0, &qword_240A31F18);
    v65 = v66;
    v64 = 0;
    v30 = v61;
    v48 = v60;
LABEL_15:
    v113 = 1;
    v67 = v65;
    v68 = v130;
    v58(v65, v64, 1, v130);
    v69 = v105;
    sub_24093A86C(v67, v105, &qword_27E50BFD8, &qword_240A31F10);
    if (v59(v69, 1, v68) != 1)
    {
      v70 = v101;
      sub_24093A86C(v105, v101, &qword_27E50BFE0, &qword_240A31F18);
      v100(v70);
      sub_240919300(v70, &qword_27E50BFE0, &qword_240A31F18);
      v113 = 0;
    }

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    v72 = v106;
    (*(*(v71 - 8) + 56))(v106, v113, 1, v71);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BFF0, &qword_240A31710);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {
      sub_240919300(&v135, &qword_27E50BFE8, &qword_240A31F20);

      sub_240919300(&v135, &qword_27E50BFE8, &qword_240A31F20);

      return;
    }

    v74 = *(v73 + 48);
    v75 = *v108;
    v76 = v112;
    (*v108)(v112, v72, v110);
    v77 = *v120;
    (*v120)(v109, &v72[v74], v127);
    v78 = *v111;
    v80 = sub_240925B68(v76);
    v81 = v78[2];
    v82 = (v79 & 1) == 0;
    v83 = v81 + v82;
    if (__OFADD__(v81, v82))
    {
      goto LABEL_34;
    }

    v84 = v75;
    if (v78[3] >= v83)
    {
      v42 = v56;
      if (v107)
      {
        v7 = v127;
        if (v79)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v95 = v79;
        sub_240938CD4();
        v96 = v95;
        v7 = v127;
        if (v96)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      v91 = *v111;
      *(*v111 + 8 * (v80 >> 6) + 64) |= 1 << v80;
      v84(v91[6] + *(v104 + 72) * v80, v112, v110);
      v77((v91[7] + *(v119 + 72) * v80), v109, v7);
      v92 = v91[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (!v93)
      {
        v91[2] = v94;
        v107 = 1;
        v49 = v132;
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v85 = v79;
  v86 = v111;
  sub_240938260(v83, v107 & 1);
  v87 = *v86;
  v88 = sub_240925B68(v112);
  if ((v85 & 1) != (v89 & 1))
  {
LABEL_36:
    sub_240A2C68C();
    __break(1u);
    goto LABEL_37;
  }

  v80 = v88;
  v90 = v85;
  v42 = v56;
  v7 = v127;
  if ((v90 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  v97 = swift_allocError();
  swift_willThrow();
  sub_240919300(&v135, &qword_27E50BFE8, &qword_240A31F20);

  v134 = v97;
  v98 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_240919300(&v135, &qword_27E50BFE8, &qword_240A31F20);
    (*v117)(v109, v7);
    (*(v104 + 8))(v112, v110);

    return;
  }

LABEL_37:
  v133[0] = 0;
  v133[1] = 0xE000000000000000;
  sub_240A2C47C();
  MEMORY[0x245CCCD90](0xD00000000000001BLL, 0x8000000240A3B3B0);
  sub_240A2C57C();
  MEMORY[0x245CCCD90](39, 0xE100000000000000);
  sub_240A2C58C();
  __break(1u);
}