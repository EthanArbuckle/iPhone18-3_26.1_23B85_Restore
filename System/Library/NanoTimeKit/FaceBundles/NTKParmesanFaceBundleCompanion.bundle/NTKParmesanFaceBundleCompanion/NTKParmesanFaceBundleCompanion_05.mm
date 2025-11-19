id sub_23BF9BD80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BF9BF08(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance;
    v4 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance];
    v5 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = a1;
    v6 = a1;
    v7 = v4;
    v13 = v2;

    v8 = *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
    if (v8)
    {
      v9 = *&v2[v3];
      v10 = v8;
      v11 = v9;
      sub_23BF7BD1C(v11);
    }

    v12 = *&v2[v3];
    sub_23BFBD4D8(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23BF9C180()
{
  v1 = [v0 timeAppearance];
  v2 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];

  v3 = *&v2[OBJC_IVAR___NTKParmesanTimeLayout_scale];
  sub_23BF4A264(&unk_27E1E1BD0);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_12;
      }

LABEL_11:

      return v3;
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
    v3 = 1;
    goto LABEL_11;
  }

  if (v3 == 3)
  {
    v3 = *&v2[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
    if (!v3)
    {
      goto LABEL_11;
    }

    if (v3 == 1)
    {
LABEL_10:
      v3 = 2;
      goto LABEL_11;
    }
  }

LABEL_12:
  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

void sub_23BF9C2B8()
{
  v1 = [v0 timeAppearance];
  v2 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];

  sub_23BFE5C7C(*&v2[OBJC_IVAR___NTKParmesanTimeLayout_alignment], *&v2[OBJC_IVAR___NTKParmesanTimeLayout_scale]);
  v3 = [objc_opt_self() currentDevice];
  if (v3)
  {
    v4 = v3;
    [v3 screenBounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF9C45C(char a1)
{
  v2 = *(v1 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v2)
  {
    v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition] = a1;
    v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView];
    if (v3)
    {
      v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeTransition] = a1;
      v4 = v2;
      v5 = v3;
      sub_23BFA8DB4(v7);

      sub_23BF9C60C(v7);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23BF9C680();
      sub_23BFF91B0();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23BF9C680()
{
  result = qword_27E1E24B0;
  if (!qword_27E1E24B0)
  {
    _s5ModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E24B0);
  }

  return result;
}

void sub_23BF9C6D8()
{
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_currentItem) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility) = 0;
  v1 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ParmesanVibrantEffectView()) initWithFrame_];
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView) = 0;
  v2 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  v3 = type metadata accessor for ParmesanGalleryTransitionContainerView();
  *(v0 + v2) = [objc_allocWithZone(v3) initWithFrame_];
  v4 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  *(v0 + v4) = [objc_allocWithZone(v3) initWithFrame_];
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_contentEffect) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_isGeneratingSwatch) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_pausedState) = 1;
  *(v0 + OBJC_IVAR___NTKParmesanGalleryView_tritiumProgress) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for ParmesanGalleryTransitionCoordinator()) init];
  v6 = (v0 + OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR___NTKParmesanGalleryView_tritiumTransition);
  type metadata accessor for ParmesanGalleryTransitionTritiumOn();
  *v7 = swift_allocObject();
  v7[1] = &off_284EBFF38;
  sub_23BFFAB00();
  __break(1u);
}

id sub_23BF9C89C(id result, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result)
  {
    swift_unknownObjectRetain();
    sub_23BF9C900(a3, a4);

    return sub_23BF0FA40(a5, a6);
  }

  return result;
}

id sub_23BF9C900(id result, void *a2)
{
  if (a2)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_23BF9C940(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    sub_23BF9C9A4(a3, a4);

    sub_23BF10498(a5, a6);
  }
}

void sub_23BF9C9A4(void *a1, void *a2)
{
  if (a2)
  {
  }
}

uint64_t sub_23BF9C9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_23BF9CBB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanBackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BF9CC10()
{
  result = qword_27E1E1BF0;
  if (!qword_27E1E1BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E1BF0);
  }

  return result;
}

id sub_23BF9CD0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTextAlignment_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  return v0;
}

id sub_23BF9CEB0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 buttonWithType_];
  v11 = OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton;
  *&v4[v11] = [v10 buttonWithType_];
  v12 = OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel;
  *&v4[v12] = sub_23BF9CD0C();
  v13 = OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for ParmesanExpandableDescription()) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ParmesanEditorNavigationBar();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23BF9D01C();

  return v14;
}

void sub_23BF9D01C()
{
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  sub_23BF4A264(&qword_27E1E05E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23C001B90;
  v3 = *&v0[OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton];
  *(v2 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v5 = v3;
  v6 = [v4 initWithFrame_];
  v7 = *&v0[OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton];
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_23BF4BDF0(0, &qword_27E1E1998);
  v9 = v7;
  v10 = sub_23BFFA450();

  v11 = [v8 initWithArrangedSubviews_];

  [v11 setAxis_];
  [v11 setAlignment_];
  v12 = v11;
  [v0 addSubview_];
  v13 = OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel;
  [v0 addSubview_];
  v14 = OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel;
  [v0 addSubview_];
  v15 = *MEMORY[0x277D75060];
  v16 = *(MEMORY[0x277D75060] + 8);
  v17 = *(MEMORY[0x277D75060] + 16);
  v18 = *(MEMORY[0x277D75060] + 24);
  [v12 constrainToSuperviewWithEdges:11 insets:1 useLayoutMargins:{*MEMORY[0x277D75060], v16, v17, v18}];
  [*&v0[v13] constrainToSuperviewWithEdges:10 insets:1 useLayoutMargins:{v15, v16, v17, v18}];
  [*&v0[v14] constrainToSuperviewWithEdges:10 insets:1 useLayoutMargins:{v15, v16, v17, v18}];
  v29 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C001B90;
  v20 = [*&v0[v13] topAnchor];
  v21 = [v12 bottomAnchor];

  v22 = [v20 constraintEqualToAnchor:v21 constant:6.0];
  *(v19 + 32) = v22;
  v23 = [*&v0[v14] topAnchor];
  v24 = [*&v0[v13] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];

  *(v19 + 40) = v25;
  v26 = [v0 bottomAnchor];
  v27 = [*&v0[v14] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  *(v19 + 48) = v28;
  sub_23BF4BDF0(0, &qword_27E1E0610);
  v30 = sub_23BFFA450();

  [v29 activateConstraints_];
}

char *sub_23BF9D64C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_numberOfNonExpandedLines] = 3;
  v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded] = 0;
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_stackView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_moreLessButton] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for ParmesanExpandableDescription();
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setClipsToBounds_];
  v12 = *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_stackView];
  [v12 setAlignment_];
  [v12 setAxis_];
  [v12 setDistribution_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setSpacing_];
  [v11 addSubview_];
  v13 = *MEMORY[0x277D75060];
  v14 = *(MEMORY[0x277D75060] + 8);
  v15 = *(MEMORY[0x277D75060] + 16);
  v16 = *(MEMORY[0x277D75060] + 24);
  [v12 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], v14, v15, v16}];
  v17 = *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel];
  v18 = [objc_opt_self() preferredFontForTextStyle_];
  [v17 setFont_];

  v19 = BPSDetailTextColor();
  [v17 setTextColor_];

  [v17 setTextAlignment_];
  if (v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded])
  {
    v20 = 0;
  }

  else
  {
    v20 = 3;
  }

  [v17 setNumberOfLines_];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addArrangedSubview_];
  [v17 constrainToSuperviewWithEdges:10 insets:1 useLayoutMargins:{v13, v14, v15, v16}];
  [v12 layoutIfNeeded];

  return v11;
}

uint64_t sub_23BF9D998()
{
  v1 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel];
  [v1 setNumberOfLines_];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23BF9E344;
  *(v4 + 24) = v3;
  v38 = sub_23BF9E360;
  v39 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_23BF9DE88;
  v37 = &unk_284EC0BF0;
  v5 = _Block_copy(&aBlock);
  v6 = v0;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = [v1 text];
  v9 = &qword_27E1E1000;
  if (v8)
  {
    v10 = v8;
    v11 = [v1 font];
    if (v11)
    {
      v12 = v11;
      [v1 layoutIfNeeded];
      [v1 bounds];
      v14 = v13;
      sub_23BF4A264(&qword_27E1E0EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23C001BB0;
      v16 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = sub_23BF4BDF0(0, &qword_27E1E0EB8);
      *(inited + 40) = v12;
      v17 = v16;
      v18 = v12;
      sub_23BFE4148(inited);
      swift_setDeallocating();
      sub_23BF9E3A8(inited + 32);
      type metadata accessor for Key(0);
      sub_23BF6DCEC();
      v19 = sub_23BFFA260();

      [v10 boundingRectWithSize:1 options:v19 attributes:0 context:{v14, 1.79769313e308}];
      v21 = v20;

      v9 = &qword_27E1E1000;
      [v1 bounds];
      v23 = v22;

      if (v23 < v21)
      {
        [v1 setHidden_];
        sub_23BF9DF2C();
      }
    }

    else
    {
    }
  }

  v24 = *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_moreLessButton];
  if (!v24)
  {
    v27 = 0;
    goto LABEL_11;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v6;
  v26 = swift_allocObject();
  v27 = sub_23BF9E3A0;
  *(v26 + 16) = sub_23BF9E3A0;
  *(v26 + 24) = v25;
  v38 = sub_23BF9E600;
  v39 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_23BF9DE88;
  v37 = &unk_284EC0C68;
  v28 = _Block_copy(&aBlock);
  v29 = v24;
  v30 = v6;
  v31 = v29;

  [v2 performWithoutAnimation_];

  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = &qword_27E1E1000;
LABEL_11:
  if (v6[v9[388]])
  {
    v33 = 0;
  }

  else
  {
    v33 = 3;
  }

  [v1 setNumberOfLines_];
  [v6 updateConstraintsIfNeeded];
  [v6 layoutIfNeeded];

  return sub_23BF4A21C(v27);
}

id sub_23BF9DEB0(void *a1)
{
  sub_23BF9E10C();
  v2 = sub_23BFFA2C0();

  [a1 setTitle:v2 forState:0];

  return [a1 layoutIfNeeded];
}

void sub_23BF9DF2C()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_moreLessButton;
  if (!*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_moreLessButton))
  {
    v2 = [objc_opt_self() buttonWithType_];
    v3 = BPSBridgeTintColor();
    [v2 setTintColor_];

    v4 = [v2 titleLabel];
    if (v4)
    {
      v5 = v4;
      [v4 setAdjustsFontForContentSizeCategory_];
    }

    v6 = [v2 titleLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() preferredFontForTextStyle_];
      v9 = [v8 _fontAdjustedForCurrentContentSizeCategory];

      [v7 setFont_];
    }

    sub_23BF9E10C();
    v10 = sub_23BFFA2C0();

    [v2 setTitle:v10 forState:0];

    [v2 addTarget:v0 action:sel_moreLessButtonTapped_ forControlEvents:64];
    [*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_stackView) addArrangedSubview_];
    v11 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

uint64_t sub_23BF9E10C()
{
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_23BFFA2C0();
  v2 = sub_23BFFA2C0();
  v3 = [ObjCClassFromMetadata localizedStringForKey:v1 comment:v2];

  v4 = sub_23BFFA300();
  return v4;
}

id sub_23BF9E28C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BF9E388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BF9E3A8(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BF9E410()
{
  v1 = OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 buttonWithType_];
  v3 = OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton;
  *(v0 + v3) = [v2 buttonWithType_];
  v4 = OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel;
  *(v0 + v4) = sub_23BF9CD0C();
  v5 = OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for ParmesanExpandableDescription()) initWithFrame_];
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BF9E50C()
{
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_numberOfNonExpandedLines) = 3;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_expanded) = 0;
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_stackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_descriptionLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanExpandableDescription_moreLessButton) = 0;
  sub_23BFFAB00();
  __break(1u);
}

CGPoint __swiftcall CGPoint.clip(within:)(__C::CGRect within)
{
  v3 = v2;
  v4 = v1;
  height = within.size.height;
  width = within.size.width;
  y = within.origin.y;
  x = within.origin.x;
  MinX = CGRectGetMinX(within);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxX = CGRectGetMaxX(v17);
  if (MaxX >= v4)
  {
    MaxX = v4;
  }

  if (MinX > MaxX)
  {
    v11 = MinX;
  }

  else
  {
    v11 = MaxX;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxY = CGRectGetMaxY(v19);
  if (MaxY >= v3)
  {
    MaxY = v3;
  }

  if (MinY > MaxY)
  {
    v14 = MinY;
  }

  else
  {
    v14 = MaxY;
  }

  v15 = v11;
  result.y = v14;
  result.x = v15;
  return result;
}

id sub_23BF9E7AC(uint64_t a1, void *a2)
{
  sub_23BF6D608(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_23BF4C484(v16, v17);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_23BFFACA0();
    (*(v7 + 8))(v9, v5);
    sub_23BF4A9A4(v16);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for ParmesanNumeralsEditOption();
  v15.receiver = v2;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithJSONObjectRepresentation_forDevice_, v10, a2);

  swift_unknownObjectRelease();
  v13 = v12;
  sub_23BF6D5A0(a1);
  if (v13)
  {
  }

  return v13;
}

id sub_23BF9E9E4(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ParmesanNumeralsEditOption();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_23BF9EA5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanNumeralsEditOption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF9EAB4()
{
  type metadata accessor for ParmesanAssetCompositionCache();
  v0 = swift_allocObject();
  result = sub_23BF9EE6C();
  qword_27E1EB5C0 = v0;
  return result;
}

uint64_t sub_23BF9EAF0(void *a1, uint64_t a2)
{
  v5 = sub_23BF4A264(&qword_27E1E1C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_23BF4C484(a1, a1[3]);
  sub_23BFA17BC();
  sub_23BFFAE40();
  v11 = a2;
  v10[15] = 0;
  sub_23BF4A264(&qword_27E1E1C50);
  sub_23BFA18CC();
  sub_23BFFAC50();
  if (!v2)
  {
    v10[14] = 1;
    sub_23BFFAC40();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BF9ECA4()
{
  if (*v0)
  {
    return 7697004;
  }

  else
  {
    return 0x6568636163;
  }
}

uint64_t sub_23BF9ECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6568636163 && a2 == 0xE500000000000000;
  if (v6 || (sub_23BFFACC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7697004 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BFFACC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BF9EDAC(uint64_t a1)
{
  v2 = sub_23BFA17BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF9EDE8(uint64_t a1)
{
  v2 = sub_23BFA17BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BF9EE24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BFA15E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_23BF9EE6C()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (qword_27E1DFDB8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB4F8);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA640();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "initialized", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  sub_23BFA0BA8();
  return v1;
}

uint64_t sub_23BF9EF64(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  v6 = v5;
  v123 = a4;
  v11 = sub_23BFFA0E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v126 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BFFA100();
  v125 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v124 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentDevice];
  if (v16)
  {
    v17 = v16;
    [v16 screenBounds];
    v19 = v18;
    v21 = v20;
    [v17 screenScale];
    v23 = v22;

    v24 = v19 * v23;
    v25 = v21 * v23;
  }

  else
  {
    v25 = 0.0;
    v24 = 0.0;
  }

  v127 = a5;
  v128 = a3;
  v122 = a2;
  if (a3 && a5)
  {
    aBlock.a = 0.0;
    aBlock.b = -2.68156159e154;
    v26 = a3;
    sub_23BFFA9F0();
    v27 = *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
    v28 = *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8);

    aBlock.a = v27;
    aBlock.b = v28;
    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v131 = *(a1 + OBJC_IVAR___NTKParmesanAsset_photoVersion);
    v29 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v29);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v30 = [a2 description];
    v31 = sub_23BFFA300();
    v33 = v32;

    MEMORY[0x23EEC3090](v31, v33);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v131 = *&v26[OBJC_IVAR___NTKParmesanAssetMask_style];
    sub_23BFA1AE0();
    v34 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v34);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v35 = sub_23BFFA580();
    MEMORY[0x23EEC3090](v35);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v36 = sub_23BFFA580();
    MEMORY[0x23EEC3090](v36);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    LODWORD(v131) = 1;
    v37 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v37);
  }

  else
  {
    aBlock.a = 0.0;
    aBlock.b = -2.68156159e154;
    sub_23BFFA9F0();
    v38 = *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
    v39 = *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8);

    aBlock.a = v38;
    aBlock.b = v39;
    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v131 = *(a1 + OBJC_IVAR___NTKParmesanAsset_photoVersion);
    v40 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v40);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v41 = [a2 description];
    v42 = sub_23BFFA300();
    v44 = v43;

    MEMORY[0x23EEC3090](v42, v44);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v45 = sub_23BFFA580();
    MEMORY[0x23EEC3090](v45);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    v46 = sub_23BFFA580();
    MEMORY[0x23EEC3090](v46);

    MEMORY[0x23EEC3090](64, 0xE100000000000000);
    LODWORD(v131) = 1;
    v47 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v47);
  }

  v49 = *&aBlock.a;
  v48 = *&aBlock.b;

  swift_beginAccess();
  v50 = *(v6 + 24);
  v51 = __CFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_16;
  }

  *(v6 + 24) = v52;
  v53 = *(v6 + 16);
  if (*(v53 + 16))
  {

    v54 = sub_23BFE2D08(v49, v48);
    v56 = v55;

    if (v56)
    {
      v57 = *(*(v53 + 56) + 8 * v54);

      if (qword_27E1DFDB8 != -1)
      {
        swift_once();
      }

      v58 = sub_23BFF92B0();
      sub_23BF4A22C(v58, qword_27E1EB4F8);

      v59 = sub_23BFF9290();
      v60 = sub_23BFFA640();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = COERCE_DOUBLE(swift_slowAlloc());
        aBlock.a = v62;
        *v61 = 136315138;
        v63 = sub_23BF62294(v49, v48, &aBlock);

        *(v61 + 4) = v63;
        _os_log_impl(&dword_23BF0C000, v59, v60, "hit %s", v61, 0xCu);
        sub_23BF4A9A4(*&v62);
        MEMORY[0x23EEC4DF0](*&v62, -1, -1);
        MEMORY[0x23EEC4DF0](v61, -1, -1);
      }

      else
      {
      }

      v57[8] = *(v6 + 24);
      return v57;
    }
  }

  if (qword_27E1DFDB8 != -1)
  {
    goto LABEL_47;
  }

LABEL_16:
  v64 = sub_23BFF92B0();
  sub_23BF4A22C(v64, qword_27E1EB4F8);

  v65 = sub_23BFF9290();
  v66 = sub_23BFFA640();

  v67 = os_log_type_enabled(v65, v66);
  v121 = v11;
  v120 = v12;
  v119 = v14;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = COERCE_DOUBLE(swift_slowAlloc());
    aBlock.a = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_23BF62294(v49, v48, &aBlock);
    _os_log_impl(&dword_23BF0C000, v65, v66, "miss %s", v68, 0xCu);
    sub_23BF4A9A4(*&v69);
    MEMORY[0x23EEC4DF0](*&v69, -1, -1);
    MEMORY[0x23EEC4DF0](v68, -1, -1);
  }

  v70 = *(v6 + 16);
  if (*(v70 + 16) >= 0x32uLL)
  {
    v116 = v49;
    v117 = v6;
    v12 = v70 + 64;
    v71 = 1 << *(v70 + 32);
    v49 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    else
    {
      v72 = -1;
    }

    v6 = v72 & *(v70 + 64);
    v11 = (v71 + 63) >> 6;

    v118 = 0;
    v14 = 0;
    v73 = 0;
    if (*&v6 == 0.0)
    {
      goto LABEL_25;
    }

    do
    {
LABEL_23:
      while (1)
      {
        v74 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v75 = v74 | (v73 << 6);
        v76 = *(*(v70 + 56) + 8 * v75);
        if (*(v76 + 64) < v49)
        {
          break;
        }

        if (*&v6 == 0.0)
        {
          goto LABEL_25;
        }
      }

      v79 = (*(v70 + 48) + 16 * v75);
      v78 = *v79;
      v115 = v79[1];
      v118 = v78;

      v49 = *(v76 + 64);

      v14 = v115;
    }

    while (*&v6 != 0.0);
    while (1)
    {
LABEL_25:
      v77 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v77 >= v11)
      {
        break;
      }

      v6 = *(v12 + 8 * v77);
      ++v73;
      if (*&v6 != 0.0)
      {
        v73 = v77;
        goto LABEL_23;
      }
    }

    v80 = sub_23BFF9290();
    v81 = sub_23BFFA640();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&aBlock.a = v83;
      *v82 = 136315138;
      v6 = v117;
      v49 = v116;
      v85 = &v132;
      v86 = v118;
      if (v14)
      {
        v87 = v83;

        v88 = sub_23BF62294(v86, v14, &aBlock);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_23BF0C000, v80, v81, "evict %s", v82, 0xCu);
        sub_23BF4A9A4(v87);
        MEMORY[0x23EEC4DF0](v87, -1, -1);
        MEMORY[0x23EEC4DF0](v82, -1, -1);

LABEL_35:
        swift_beginAccess();
        sub_23BFE379C(v86, v14);
        swift_endAccess();

        goto LABEL_36;
      }

      __break(1u);
    }

    else
    {

      v6 = v117;
      v49 = v116;
      v85 = &v132;
      v86 = v118;
      if (v14)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_36:
  v89 = v123;
  v90 = NTKGenerateMonochromeColorMatrixFromImage();
  [v122 normalizedTimeRectWithoutComplications];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  CGAffineTransformMakeScale(&aBlock, v24, v25);
  v133.origin.x = v92;
  v133.origin.y = v94;
  v133.size.width = v96;
  v133.size.height = v98;
  v134 = CGRectApplyAffineTransform(v133, &aBlock);
  v99 = NTKParmesanAnalyzeImage(v89, v24, v25, v134.origin.x, v134.origin.y, v134.size.width, v134.size.height);
  if (!v128 || !v127)
  {
    v100 = 0;
    goto LABEL_41;
  }

  v84 = v128;
  v85 = *&v128[OBJC_IVAR___NTKParmesanAssetMask_style];
  if (v85 < 2)
  {
    v100 = NTKGenerateMonochromeColorMatrixFromImage();
LABEL_41:
    v101 = *(v6 + 24);
    type metadata accessor for ParmesanAssetCompositionDerived();
    v57 = swift_allocObject();
    v57[2] = v49;
    v57[3] = v48;
    v57[4] = 0x3FF0000000000000;
    v57[5] = v90;
    v57[6] = v100;
    v57[7] = v99;
    v57[8] = v101;
    swift_beginAccess();
    v128 = v100;
    v102 = *&v6;
    v103 = v99;

    v104 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = *(*&v102 + 16);
    *(*&v102 + 16) = 0x8000000000000000;
    sub_23BFE809C(v57, v49, v48, isUniquelyReferenced_nonNull_native);

    *(*&v102 + 16) = v129;
    swift_endAccess();
    *(*&v102 + 32) = 1;
    sub_23BFA1A30();
    v106 = sub_23BFFA6D0();
    *&aBlock.tx = sub_23BFA1A7C;
    aBlock.ty = v102;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_23BF58264;
    *&aBlock.d = &unk_284EC0D10;
    v107 = _Block_copy(&aBlock);

    v108 = v124;
    sub_23BFFA0F0();
    *&aBlock.a = MEMORY[0x277D84F90];
    sub_23BFA1A98(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    v109 = v126;
    v110 = v121;
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v108, v109, v107);
    _Block_release(v107);

    (*(v120 + 8))(v109, v110);
    (*(v125 + 8))(v108, v119);
    return v57;
  }

LABEL_50:
  *&aBlock.a = v85;
  v112 = v84;
  v113 = v127;
  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

uint64_t sub_23BF9FD68@<X0>(uint64_t a1@<X8>)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23BFF8D10();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v39[-v11];
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:13 inDomains:1];
  v15 = sub_23BFFA460();

  if (!*(v15 + 16))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v45 = a1;
  v1 = *(v4 + 16);
  v1(v12, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  sub_23BFF8C60();
  sub_23BFF8CC0();
  v16 = sub_23BFFA2C0();

  v17 = [v13 fileExistsAtPath_];

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = sub_23BFF8C40();
  v46[0] = 0;
  v19 = [v13 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v46];

  if (v19)
  {
    v20 = v46[0];
    goto LABEL_9;
  }

  v44 = v7;
  v21 = v46[0];
  v7 = sub_23BFF8BC0();

  swift_willThrow();
  if (qword_27E1DFDB8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v22 = sub_23BFF92B0();
  sub_23BF4A22C(v22, qword_27E1EB4F8);
  v23 = v44;
  v1(v44, v10, v3);
  v24 = v7;
  v25 = sub_23BFF9290();
  v26 = sub_23BFFA650();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v27 = 136315394;
    sub_23BFA1A98(&qword_27E1E0B98, MEMORY[0x277CC9260]);
    v41 = v25;
    v28 = sub_23BFFAC70();
    v40 = v26;
    v30 = v29;
    (*(v4 + 8))(v23, v3);
    v31 = sub_23BF62294(v28, v30, v46);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2112;
    v32 = v7;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v33;
    v35 = v41;
    v34 = v42;
    *v42 = v33;
    _os_log_impl(&dword_23BF0C000, v35, v40, "failed to create directory %s: %@", v27, 0x16u);
    sub_23BF713D8(v34);
    MEMORY[0x23EEC4DF0](v34, -1, -1);
    v36 = v43;
    sub_23BF4A9A4(v43);
    MEMORY[0x23EEC4DF0](v36, -1, -1);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v23, v3);
  }

LABEL_9:
  sub_23BFF8C70();

  v37 = *(v4 + 8);
  v37(v10, v3);
  return (v37)(v12, v3);
}

uint64_t sub_23BFA0280()
{
  v1 = sub_23BFF8D10();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = sub_23BFFA350();
  result = MEMORY[0x28223BE20](v9 - 8);
  if (*(v0 + 32) != 1)
  {
    return result;
  }

  *(v0 + 32) = 0;
  sub_23BFF8B50();
  swift_allocObject();
  sub_23BFF8B40();
  swift_beginAccess();
  v11 = *(v0 + 24);
  v47[0] = *(v0 + 16);
  v47[1] = v11;
  sub_23BFA19DC();

  v12 = sub_23BFF8B30();
  v14 = v13;
  v46 = v12;

  v16 = MEMORY[0x23EEC4190](v15);
  v45 = v14;
  if (v16)
  {
    sub_23BFFA340();
    v44 = sub_23BFFA320();
    v18 = v17;
    if (qword_27E1DFDB8 != -1)
    {
      swift_once();
    }

    v19 = sub_23BFF92B0();
    sub_23BF4A22C(v19, qword_27E1EB4F8);

    v20 = sub_23BFF9290();
    v21 = sub_23BFFA640();

    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_18;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v2;
    v24 = v23;
    v47[0] = v23;
    *v22 = 136315138;
    if (v18)
    {
      v25 = v44;
    }

    else
    {
      v25 = 0xD00000000000001BLL;
    }

    if (!v18)
    {
      v18 = 0x800000023C010A40;
    }

    v26 = sub_23BF62294(v25, v18, v47);
    v44 = v20;
    v27 = v26;

    *(v22 + 4) = v27;
    v20 = v44;
    _os_log_impl(&dword_23BF0C000, v44, v21, "jsonString = %s", v22, 0xCu);
    sub_23BF4A9A4(v24);
    v28 = v24;
    v2 = v43;
    MEMORY[0x23EEC4DF0](v28, -1, -1);
  }

  else
  {
    if (qword_27E1DFDB8 != -1)
    {
      swift_once();
    }

    v29 = sub_23BFF92B0();
    sub_23BF4A22C(v29, qword_27E1EB4F8);
    v20 = sub_23BFF9290();
    v30 = sub_23BFFA670();
    if (!os_log_type_enabled(v20, v30))
    {
      goto LABEL_18;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_23BF0C000, v20, v30, "json encoding succeeded", v22, 2u);
  }

  MEMORY[0x23EEC4DF0](v22, -1, -1);
LABEL_18:

  sub_23BF9FD68(v8);
  sub_23BFF8D50();
  if (qword_27E1DFDB8 != -1)
  {
    swift_once();
  }

  v31 = sub_23BFF92B0();
  sub_23BF4A22C(v31, qword_27E1EB4F8);
  (*(v2 + 16))(v6, v8, v1);
  v32 = sub_23BFF9290();
  v33 = sub_23BFFA670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47[0] = v44;
    *v34 = 136315138;
    v35 = sub_23BFF8CC0();
    v37 = v36;
    v38 = *(v2 + 8);
    v38(v6, v1);
    v39 = sub_23BF62294(v35, v37, v47);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_23BF0C000, v32, v33, "saved to %s", v34, 0xCu);
    v40 = v44;
    sub_23BF4A9A4(v44);
    MEMORY[0x23EEC4DF0](v40, -1, -1);
    MEMORY[0x23EEC4DF0](v34, -1, -1);
    sub_23BF94C00(v46, v45);

    return (v38)(v8, v1);
  }

  else
  {
    sub_23BF94C00(v46, v45);

    v41 = *(v2 + 8);
    v41(v6, v1);
    return (v41)(v8, v1);
  }
}

uint64_t sub_23BFA0BA8()
{
  v1 = v0;
  v2 = sub_23BFF8D10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v74 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  sub_23BF9FD68(&v74 - v11);
  v13 = [objc_opt_self() defaultManager];
  sub_23BFF8CC0();
  v14 = sub_23BFFA2C0();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    v16 = 0;
    v75 = sub_23BFF8D20();
    v76 = v29;
    if (qword_27E1DFDB8 != -1)
    {
      swift_once();
    }

    v30 = sub_23BFF92B0();
    v31 = sub_23BF4A22C(v30, qword_27E1EB4F8);
    (*(v3 + 16))(v7, v12, v2);
    v78 = v31;
    v32 = v3;
    v33 = v2;
    v34 = sub_23BFF9290();
    v35 = sub_23BFFA670();
    v36 = os_log_type_enabled(v34, v35);
    v77 = v32;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v79 = 0;
      v38 = v37;
      v39 = swift_slowAlloc();
      v80[0] = v39;
      *v38 = 136315138;
      v40 = sub_23BFF8CC0();
      v41 = v33;
      v42 = v1;
      v44 = v43;
      v45 = *(v32 + 8);
      v46 = v7;
      v47 = v41;
      v45(v46, v41);
      v48 = sub_23BF62294(v40, v44, v80);
      v1 = v42;

      *(v38 + 4) = v48;
      _os_log_impl(&dword_23BF0C000, v34, v35, "loaded from %s", v38, 0xCu);
      sub_23BF4A9A4(v39);
      v49 = v39;
      v50 = v45;
      MEMORY[0x23EEC4DF0](v49, -1, -1);
      v51 = v38;
      v16 = v79;
      MEMORY[0x23EEC4DF0](v51, -1, -1);

      v52 = v47;
    }

    else
    {

      v50 = *(v32 + 8);
      v50(v7, v33);
      v52 = v33;
    }

    sub_23BFF8B20();
    swift_allocObject();
    sub_23BFF8B10();
    sub_23BFA1988();
    v54 = v75;
    v53 = v76;
    v55 = v16;
    sub_23BFF8B00();
    if (v16)
    {

      v56 = v16;
      v57 = sub_23BFF9290();
      v58 = sub_23BFFA650();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        v61 = v55;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_23BF0C000, v57, v58, "json decoding failed: %@", v59, 0xCu);
        sub_23BF713D8(v60);
        MEMORY[0x23EEC4DF0](v60, -1, -1);
        MEMORY[0x23EEC4DF0](v59, -1, -1);
        sub_23BF94C00(v54, v53);
      }

      else
      {
        sub_23BF94C00(v54, v53);
      }

      return (v50)(v12, v52);
    }

    else
    {

      v63 = v80[0];
      v64 = v80[1];
      v65 = sub_23BFF9290();
      v66 = sub_23BFFA670();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v78 = v52;
        v68 = v64;
        v69 = v63;
        v70 = v50;
        v71 = v1;
        v72 = v67;
        *v67 = 0;
        _os_log_impl(&dword_23BF0C000, v65, v66, "json decoding succeeded", v67, 2u);
        v73 = v72;
        v1 = v71;
        v50 = v70;
        v63 = v69;
        v64 = v68;
        v52 = v78;
        MEMORY[0x23EEC4DF0](v73, -1, -1);
      }

      sub_23BF94C00(v54, v53);

      v50(v12, v52);
      swift_beginAccess();
      *(v1 + 16) = v63;
      *(v1 + 24) = v64;
    }
  }

  else
  {
    if (qword_27E1DFDB8 != -1)
    {
      swift_once();
    }

    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB4F8);
    (*(v3 + 16))(v10, v12, v2);
    v18 = sub_23BFF9290();
    v19 = sub_23BFFA640();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136315138;
      v22 = sub_23BFF8CC0();
      v24 = v23;
      v79 = v12;
      v25 = *(v3 + 8);
      v25(v10, v2);
      v26 = sub_23BF62294(v22, v24, v80);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_23BF0C000, v18, v19, "no cache at %s", v20, 0xCu);
      sub_23BF4A9A4(v21);
      MEMORY[0x23EEC4DF0](v21, -1, -1);
      MEMORY[0x23EEC4DF0](v20, -1, -1);

      return (v25)(v79, v2);
    }

    else
    {

      v28 = *(v3 + 8);
      v28(v10, v2);
      return (v28)(v12, v2);
    }
  }
}

uint64_t sub_23BFA14F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23BFA1550(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23BFA1598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BFA15E4(void *a1)
{
  v3 = sub_23BF4A264(&qword_27E1E1C40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_23BF4C484(a1, v7);
  sub_23BFA17BC();
  sub_23BFFAE20();
  if (!v1)
  {
    sub_23BF4A264(&qword_27E1E1C50);
    v9[7] = 0;
    sub_23BFA1810();
    sub_23BFFABE0();
    v7 = v10;
    v9[6] = 1;
    sub_23BFFABD0();
    (*(v4 + 8))(v6, v3);
  }

  sub_23BF4A9A4(a1);
  return v7;
}

unint64_t sub_23BFA17BC()
{
  result = qword_27E1E1C48;
  if (!qword_27E1E1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C48);
  }

  return result;
}

unint64_t sub_23BFA1810()
{
  result = qword_27E1E1C58;
  if (!qword_27E1E1C58)
  {
    sub_23BF4A2D0(&qword_27E1E1C50);
    sub_23BFA1A98(&qword_27E1E1C60, type metadata accessor for ParmesanAssetCompositionDerived);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C58);
  }

  return result;
}

unint64_t sub_23BFA18CC()
{
  result = qword_27E1E1C70;
  if (!qword_27E1E1C70)
  {
    sub_23BF4A2D0(&qword_27E1E1C50);
    sub_23BFA1A98(&qword_27E1E1C78, type metadata accessor for ParmesanAssetCompositionDerived);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C70);
  }

  return result;
}

unint64_t sub_23BFA1988()
{
  result = qword_27E1E1C80;
  if (!qword_27E1E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C80);
  }

  return result;
}

unint64_t sub_23BFA19DC()
{
  result = qword_27E1E1C88;
  if (!qword_27E1E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C88);
  }

  return result;
}

unint64_t sub_23BFA1A30()
{
  result = qword_27E1E0B30;
  if (!qword_27E1E0B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0B30);
  }

  return result;
}

uint64_t sub_23BFA1A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BFA1A98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BFA1AE0()
{
  result = qword_27E1E1C90;
  if (!qword_27E1E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C90);
  }

  return result;
}

unint64_t sub_23BFA1B48()
{
  result = qword_27E1E1C98;
  if (!qword_27E1E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1C98);
  }

  return result;
}

unint64_t sub_23BFA1BA0()
{
  result = qword_27E1E1CA0;
  if (!qword_27E1E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1CA0);
  }

  return result;
}

unint64_t sub_23BFA1BF8()
{
  result = qword_27E1E1CA8;
  if (!qword_27E1E1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1CA8);
  }

  return result;
}

uint64_t sub_23BFA1C4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BFA1C64(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BFA1C7C(uint64_t *a1, int a2)
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

uint64_t sub_23BFA1CC4(uint64_t result, int a2, int a3)
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

BOOL sub_23BFA1D24(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v32 = a1[5];
  v33 = a2[4];
  v31 = a2[5];
  ObjectType = swift_getObjectType();
  v10 = (*(v2 + 8))(ObjectType, v2);
  v12 = v11;
  v13 = swift_getObjectType();
  if (v10 == (*(v6 + 8))(v13, v6) && v12 == v14)
  {

    if (v3)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (!v8)
    {
      goto LABEL_21;
    }

    v21 = v7;
    if (!v7)
    {
      return 0;
    }

LABEL_19:

    return 0;
  }

  v16 = sub_23BFFACC0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = v4;
  if (!v8)
  {
    if (!v4)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v18 = v7;
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v19 = v18;
  type metadata accessor for ParmesanGalleryItem();
  v20 = sub_23BFFA880();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v22 = v3;
  type metadata accessor for ParmesanGalleryItem();
  v23 = v8;
  v24 = sub_23BFFA880();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (!v5)
  {
    return v33 == 0;
  }

  v17 = v5;
  if (!v33)
  {
LABEL_27:

    return 0;
  }

  type metadata accessor for ParmesanTimeAppearance();
  v25 = v33;
  v26 = sub_23BFFA880();

  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v17 = v32;
  v27 = v31;
  v28 = v27;
  if (v32)
  {
    if (v31)
    {
      v29 = sub_23BFFA880();

      return v29 & 1;
    }

    goto LABEL_27;
  }

  if (v31)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_23BFA2010()
{
  sub_23BFFAE00();
  MEMORY[0x23EEC3A60](*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale));
  MEMORY[0x23EEC3A60](*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_typeface));
  MEMORY[0x23EEC3A60](*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals));
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8) == 1)
    {
      MEMORY[0x23EEC3A60](2);
      sub_23BFFA890();
    }

    else
    {
      MEMORY[0x23EEC3A60](1);
    }
  }

  else
  {
    MEMORY[0x23EEC3A60](0);
    sub_23BFFADC0();
  }

  return sub_23BFFADE0();
}

uint64_t sub_23BFA2110(uint64_t a1)
{
  sub_23BF6D608(a1, v11);
  if (!v12)
  {
    sub_23BF6D5A0(v11);
    goto LABEL_12;
  }

  type metadata accessor for ParmesanMiniClockViewConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale) != *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale] || *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_typeface) != *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_typeface] || *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals) != *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals])
  {
LABEL_11:

    goto LABEL_12;
  }

  v2 = v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style;
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style);
  v4 = *(v2 + 8);
  v5 = *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style];
  v6 = v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8];
  if (!v4)
  {

    if (!v6)
    {
      v7 = *&v3 == *&v5;
      return v7 & 1;
    }

    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v6 == 1)
    {
      sub_23BF4C8B4();
      v7 = sub_23BFFA880();

      return v7 & 1;
    }

    goto LABEL_11;
  }

  v7 = v6 == 2 && v5 == 0;

  return v7 & 1;
}

id sub_23BFA230C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanMiniClockViewConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFA237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___NTKParmesanAssetMask_imageName];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___NTKParmesanAssetMask_style] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_23BFA23EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C797473;
  }

  else
  {
    v3 = 0x6D614E6567616D69;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C797473;
  }

  else
  {
    v5 = 0x6D614E6567616D69;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BFFACC0();
  }

  return v8 & 1;
}

uint64_t sub_23BFA2494()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFA2518()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFA2588()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFA2608@<X0>(char *a1@<X8>)
{
  v2 = sub_23BFFAB70();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23BFA2668(uint64_t *a1@<X8>)
{
  v2 = 0x6D614E6567616D69;
  if (*v1)
  {
    v2 = 0x656C797473;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23BFA26A8()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x6D614E6567616D69;
  }
}

uint64_t sub_23BFA26E4@<X0>(char *a1@<X8>)
{
  v2 = sub_23BFFAB70();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23BFA2748(uint64_t a1)
{
  v2 = sub_23BFA33B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BFA2784(uint64_t a1)
{
  v2 = sub_23BFA33B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BFA27C0()
{
  if (!*v0)
  {
    return 0x6C61637379617267;
  }

  if (*v0 == 1)
  {
    return 0x6F6C6F436C6C7566;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

unint64_t sub_23BFA2A88()
{
  sub_23BFFA9F0();

  sub_23BFA1AE0();
  v1 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v1);

  MEMORY[0x23EEC3090](0x4E6567616D69202CLL, 0xEE00203D20656D61);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanAssetMask_imageName);
  v3 = *(v0 + OBJC_IVAR___NTKParmesanAssetMask_imageName + 8);

  MEMORY[0x23EEC3090](v2, v3);

  return 0xD00000000000001BLL;
}

id sub_23BFA2BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanAssetMask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFA2C24(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1D08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_23BF4C484(a1, a1[3]);
  sub_23BFA33B8();
  sub_23BFFAE40();
  v12 = 0;

  sub_23BFFAC10();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v11 = *(v3 + OBJC_IVAR___NTKParmesanAssetMask_style);
    v10[15] = 1;
    sub_23BFA34B4();
    sub_23BFFAC50();
    return (*(v6 + 8))(v8, v5);
  }
}

id sub_23BFA2DF0(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1CE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BFA33B8();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(a1);
    type metadata accessor for ParmesanAssetMask();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_23BFFABA0();
    v11 = &v1[OBJC_IVAR___NTKParmesanAssetMask_imageName];
    *v11 = v9;
    v11[1] = v12;
    v16 = 1;
    sub_23BFA340C();
    sub_23BFFABE0();
    *&v1[OBJC_IVAR___NTKParmesanAssetMask_style] = v17;
    v13 = type metadata accessor for ParmesanAssetMask();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_23BF4A9A4(a1);
  }

  return v3;
}

uint64_t sub_23BFA302C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParmesanAssetMask();
  result = sub_23BFFAA00();
  *a1 = result;
  return result;
}

id sub_23BFA306C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanAssetMask());
  result = sub_23BFA2DF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_23BFA320C(uint64_t a1)
{
  sub_23BF6D608(a1, v7);
  if (v8)
  {
    type metadata accessor for ParmesanAssetMask();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___NTKParmesanAssetMask_imageName) == *&v6[OBJC_IVAR___NTKParmesanAssetMask_imageName] && *(v1 + OBJC_IVAR___NTKParmesanAssetMask_imageName + 8) == *&v6[OBJC_IVAR___NTKParmesanAssetMask_imageName + 8];
      if (v2 || (sub_23BFFACC0() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___NTKParmesanAssetMask_style);
        v4 = *&v6[OBJC_IVAR___NTKParmesanAssetMask_style];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_23BF6D5A0(v7);
  }

  return 0;
}

unint64_t sub_23BFA3364()
{
  result = qword_27E1E1CE0;
  if (!qword_27E1E1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1CE0);
  }

  return result;
}

unint64_t sub_23BFA33B8()
{
  result = qword_27E1E1CF0;
  if (!qword_27E1E1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1CF0);
  }

  return result;
}

unint64_t sub_23BFA340C()
{
  result = qword_27E1E1CF8;
  if (!qword_27E1E1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1CF8);
  }

  return result;
}

unint64_t sub_23BFA3460()
{
  result = qword_27E1E1D00;
  if (!qword_27E1E1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D00);
  }

  return result;
}

unint64_t sub_23BFA34B4()
{
  result = qword_27E1E1D10;
  if (!qword_27E1E1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D10);
  }

  return result;
}

unint64_t sub_23BFA351C()
{
  result = qword_27E1E1D18;
  if (!qword_27E1E1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D18);
  }

  return result;
}

unint64_t sub_23BFA3574()
{
  result = qword_27E1E1D20;
  if (!qword_27E1E1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D20);
  }

  return result;
}

unint64_t sub_23BFA35CC()
{
  result = qword_27E1E1D28;
  if (!qword_27E1E1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D28);
  }

  return result;
}

__n128 sub_23BFA3620(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23BFA3654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_23BFA369C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23BFA370C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_typeface);
  v5 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style);
  v6 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8);
  v33 = sub_23BFA39B0(v4, v5, v6);
  v8 = v7;
  v9 = v1[16];
  if (*(v9 + 16) && (v10 = sub_23BFE571C(v4), (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v14 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale);
  v15 = sub_23BFA3A6C(v4, v5, v6, v14);
  v17 = v16;
  if (v14 != 3)
  {
    v22 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals);
    if (*(v2[3] + 16))
    {
      sub_23BFE571C(v22);
    }

    if (*(v2[5] + 16))
    {
      sub_23BFE571C(v22);
    }

    v18 = v2[1];
    if (!*(v18 + 16) || (v19 = sub_23BFE571C(v22), (v23 & 1) == 0))
    {
      v21 = v2 + 2;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v18 = v2[8];
  if (*(v18 + 16))
  {
    v19 = sub_23BFE571C(*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals));
    if (v20)
    {
LABEL_15:
      v21 = (*(v18 + 56) + 8 * v19);
      goto LABEL_17;
    }
  }

  v21 = v2 + 9;
LABEL_17:
  v24 = *v21;
  sub_23BFF9200();
  v26 = v25;
  v27 = type metadata accessor for ParmesanFontAttributes();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR___NTKParmesanFontAttributes_soft];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v28[OBJC_IVAR___NTKParmesanFontAttributes_grad];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v28[OBJC_IVAR___NTKParmesanFontAttributes_opticalSize];
  *v31 = 0;
  v31[8] = 1;
  *&v28[OBJC_IVAR___NTKParmesanFontAttributes_activeWeight] = v26;
  *&v28[OBJC_IVAR___NTKParmesanFontAttributes_tritiumWeight] = v26;
  *&v28[OBJC_IVAR___NTKParmesanFontAttributes_width] = v24;
  *v29 = v33;
  v29[8] = v8 & 1;
  *v30 = v13;
  v30[8] = v12;
  *v31 = v15;
  v31[8] = v17 & 1;
  v34.receiver = v28;
  v34.super_class = v27;
  return objc_msgSendSuper2(&v34, sel_init);
}

uint64_t sub_23BFA39B0(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27E1DFE18 != -1)
  {
    v9 = a1;
    v10 = a3;
    swift_once();
    a3 = v10;
    a1 = v9;
  }

  if (byte_27E1E1D60 == 1 && a3 == 0)
  {
    v5 = *(v3 + 120);
    if (!*(v5 + 16))
    {
      return 0;
    }
  }

  else
  {
    v5 = *(v3 + 112);
    if (!*(v5 + 16))
    {
      return 0;
    }
  }

  v6 = sub_23BFE571C(a1);
  if (v7)
  {
    return *(*(v5 + 56) + 8 * v6);
  }

  return 0;
}

uint64_t sub_23BFA3A6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 1)
  {
    if (qword_27E1DFE18 != -1)
    {
      v12 = a4;
      v11 = a3;
      swift_once();
      a3 = v11;
      a4 = v12;
    }

    if (byte_27E1E1D60 != 1 || a3 != 0)
    {
      v6 = v4 + 96;
      return *v6;
    }

    v7 = *(v4 + 104);
    if (*(v7 + 16))
    {
      v8 = sub_23BFE571C(a4);
      if (v9)
      {
        v6 = *(v7 + 56) + 8 * v8;
        return *v6;
      }
    }
  }

  return 0;
}

double sub_23BFA3B2C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = sub_23BFE484C(&unk_284EBE078);
  v18 = sub_23BFE484C(&unk_284EBE0C8);
  v17 = sub_23BFE484C(&unk_284EBE118);
  v4 = sub_23BFE484C(&unk_284EBE168);
  v5 = sub_23BFE4860(&unk_284EBE1B8);
  v6 = sub_23BFE4874(&unk_284EBE218);
  v7 = sub_23BFE4874(&unk_284EBE258);
  v8 = sub_23BFE4874(&unk_284EBE2A8);
  v9 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:a1 identitySizeClass:2];
  sub_23BFE4180(&unk_284EBE2D8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE8218(9, isUniquelyReferenced_nonNull_native, 85.5);
  sub_23BFFA680();
  v12 = v11;

  sub_23BFE4180(&unk_284EBE358);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE8218(9, v13, 56.0);
  sub_23BFFA680();
  v15 = v14;

  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = 0x4041800000000000;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0x4083100000000000;
  *(a2 + 40) = v17;
  *(a2 + 48) = 0x407F400000000000;
  *(a2 + 56) = v15;
  *(a2 + 64) = v4;
  *(a2 + 72) = xmmword_23C006270;
  result = 590.0;
  *(a2 + 88) = xmmword_23C006280;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  *(a2 + 128) = v8;
  return result;
}

id sub_23BFA3D38(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = type metadata accessor for ParmesanTimeLayout();
      v4 = objc_allocWithZone(v1);
      *&v4[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v4[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
      v10 = v4;
      v3 = &v10;
      goto LABEL_10;
    }

    if (a1 == 4)
    {
      v1 = type metadata accessor for ParmesanTimeLayout();
      v6 = objc_allocWithZone(v1);
      *&v6[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v6[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
      v11.receiver = v6;
      v3 = &v11;
      goto LABEL_10;
    }
  }

  else
  {
    if (a1 < 2)
    {
      v1 = type metadata accessor for ParmesanTimeLayout();
      v2 = objc_allocWithZone(v1);
      *&v2[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
      *&v2[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 3;
      v8 = v2;
      v3 = &v8;
LABEL_10:
      v3->super_class = v1;
      return [(objc_super *)v3 init];
    }

    if (a1 == 2)
    {
      v1 = type metadata accessor for ParmesanTimeLayout();
      v5 = objc_allocWithZone(v1);
      *&v5[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v5[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 2;
      v9 = v5;
      v3 = &v9;
      goto LABEL_10;
    }
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

uint64_t sub_23BFA3EB0(uint64_t a1)
{
  sub_23BFFA9F0();

  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
LABEL_11:
    v2 = sub_23BFFA370();
    v4 = v3;

    MEMORY[0x23EEC3090](v2, v4);

    return 0xD00000000000001ALL;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

unint64_t sub_23BFA4000@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BFA4DAC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23BFA4034()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    switch(v1)
    {
      case 2:
        return 0x6D756964656DLL;
      case 3:
        return 0x6C6C616D73;
      case 4:
        return 0x6C6C616D7378;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    return 0x63696D616E7964;
  }

  if (v1 != 1)
  {
LABEL_13:
    result = sub_23BFFACF0();
    __break(1u);
    return result;
  }

  return 0x656772616CLL;
}

char *sub_23BFA41AC()
{
  result = [v0 _value];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BFA429C()
{
  v1 = [v0 _value];
  if ((v1 - 1) >= 4)
  {
    v1 = 0;
  }

  sub_23BFA3EB0(v1);
  v2 = sub_23BFFA2C0();

  sub_23BFFA9F0();

  v3 = [v0 _value];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = 0xE600000000000000;
      v5 = 0x6C6C616D7378;
      goto LABEL_13;
    }

LABEL_10:
    v4 = 0xE700000000000000;
    v5 = 0x63696D616E7964;
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v4 = 0xE500000000000000;
    v5 = 0x656772616CLL;
    goto LABEL_13;
  }

  if (v3 != 2)
  {
    goto LABEL_10;
  }

  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
LABEL_13:
  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x23EEC3090](v5, v4);

  v7 = sub_23BFFA2C0();

  v8 = [ObjCClassFromMetadata localizedStringForKey:v2 comment:v7];

  v9 = sub_23BFFA300();
  return v9;
}

uint64_t sub_23BFA44B8()
{
  v18 = MEMORY[0x277D84F90];
  sub_23BFCE2A0(0, 5, 0);
  v0 = 0;
  v1 = MEMORY[0x277D837D0];
  v2 = v18;
  while (1)
  {
    v3 = *(&unk_284EBE648 + v0 + 32);
    if (v3 <= 1)
    {
      break;
    }

    switch(v3)
    {
      case 2:
        v4 = 0xE600000000000000;
        v5 = 0x6D756964656DLL;
        break;
      case 3:
        v4 = 0xE500000000000000;
        v5 = 0x6C6C616D73;
        break;
      case 4:
        v4 = 0xE600000000000000;
        v5 = 0x6C6C616D7378;
        break;
      default:
        goto LABEL_17;
    }

LABEL_13:
    sub_23BFFA9B0();
    v17 = v1;
    v18 = v2;
    *(&v15 + 1) = v5;
    *&v16 = v4;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_23BFCE2A0((v6 > 1), v7 + 1, 1);
      v2 = v18;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 72 * v7;
    *(v8 + 32) = v14[0];
    v9 = v14[1];
    v10 = v15;
    v11 = v16;
    *(v8 + 96) = v17;
    *(v8 + 64) = v10;
    *(v8 + 80) = v11;
    *(v8 + 48) = v9;
    v0 += 8;
    if (v0 == 40)
    {
      sub_23BF4A264(&qword_27E1E0BE0);
      *&v14[0] = sub_23BFFAB50();

      sub_23BFC4E58(v12, 1, v14);

      return *&v14[0];
    }
  }

  if (!v3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x63696D616E7964;
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v4 = 0xE500000000000000;
    v5 = 0x656772616CLL;
    goto LABEL_13;
  }

LABEL_17:
  sub_23BFFACF0();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_23BFA48B8(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___NTKParmesanTimeEditOption_positionsToFaceBundleStrings;
  *&v2[v5] = sub_23BFA44B8();
  sub_23BF6D608(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_23BF4C484(v17, v18);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_23BFFACA0();
    (*(v8 + 8))(v10, v6);
    sub_23BF4A9A4(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ParmesanTimeEditOption();
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithJSONObjectRepresentation_forDevice_, v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_23BF6D5A0(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_23BFA4B14(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = OBJC_IVAR___NTKParmesanTimeEditOption_positionsToFaceBundleStrings;
  v7 = a3;
  *&a1[v6] = sub_23BFA44B8();
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ParmesanTimeEditOption();
  v8 = objc_msgSendSuper2(&v10, *a4, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_23BFA4B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTimeEditOption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BFA4C18()
{
  result = qword_27E1E1D38;
  if (!qword_27E1E1D38)
  {
    sub_23BF4A2D0(&qword_27E1E1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D38);
  }

  return result;
}

unint64_t sub_23BFA4C7C(uint64_t a1)
{
  *(a1 + 8) = sub_23BFA4CAC();
  result = sub_23BFA4D00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23BFA4CAC()
{
  result = qword_27E1E1D48;
  if (!qword_27E1E1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D48);
  }

  return result;
}

unint64_t sub_23BFA4D00()
{
  result = qword_27E1E1D50;
  if (!qword_27E1E1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D50);
  }

  return result;
}

unint64_t sub_23BFA4D58()
{
  result = qword_27E1E1D58;
  if (!qword_27E1E1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D58);
  }

  return result;
}

unint64_t sub_23BFA4DAC(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BFA4DBC(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return *&aLarge[8 * a1 - 8];
  }
}

uint64_t sub_23BFA4EFC(uint64_t a1)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 20) & 3;
  }
}

uint64_t sub_23BFA4F18(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_23BFA4F2C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23BFA4F58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 109))
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

uint64_t sub_23BFA4FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 109) = 1;
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

    *(result + 109) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23BFA5010()
{
  result = sub_23BFA5034();
  byte_27E1E1D60 = result & 1;
  return result;
}

id sub_23BFA5034()
{
  v0 = sub_23BFF92B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF92A0();
  if ((sub_23BFFA010() & 1) == 0)
  {
    v8 = sub_23BFF9290();
    v9 = sub_23BFFA640();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Solarium disabled";
LABEL_9:
      _os_log_impl(&dword_23BF0C000, v8, v9, v11, v10, 2u);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result isRunningNapiliGMOrLater];

    if (v6)
    {
      v7 = 1;
LABEL_11:
      (*(v1 + 8))(v3, v0);
      return v7;
    }

    v8 = sub_23BFF9290();
    v9 = sub_23BFFA640();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Current device is not running required OS.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_23BFA52D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalTimeViewFeatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFA5328(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t _s6LayoutV11ArrangementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s6LayoutV11ArrangementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23BFA54DC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23BFA54F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_23BFA5510(uint64_t a1, uint64_t a2)
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

uint64_t sub_23BFA552C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23BFA5570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 2;
    }
  }

  return result;
}

BOOL sub_23BFA55D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_23BFA5C6C(v5, v7);
}

uint64_t sub_23BFA5658()
{
  MEMORY[0x23EEC3090](0x7A696C616D726F6ELL, 0xEB00000000286465);
  type metadata accessor for CGRect(0);
  sub_23BFFAA90();
  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23BFA56F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574756E696DLL;
  }

  else
  {
    v3 = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574756E696DLL;
  }

  else
  {
    v5 = 1920298856;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BFFACC0();
  }

  return v8 & 1;
}

uint64_t sub_23BFA578C()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFA5804()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFA5868()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFA58DC@<X0>(char *a1@<X8>)
{
  v2 = sub_23BFFAB70();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23BFA593C(uint64_t *a1@<X8>)
{
  v2 = 1920298856;
  if (*v1)
  {
    v2 = 0x6574756E696DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_23BFA599C()
{
  result = qword_27E1E1D68;
  if (!qword_27E1E1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D68);
  }

  return result;
}

uint64_t sub_23BFA59F0(char a1)
{
  if (a1 == 2)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 3)
  {
    return 0x64656B63617473;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574756E696DLL;
  }

  else
  {
    v3 = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  MEMORY[0x23EEC3090](v3, v4);

  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return 0x287469676964;
}

BOOL sub_23BFA5AC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4 && *&a2 == *&a5;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && *&a5 == 0.0)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

uint64_t sub_23BFA5B78(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x6574756E696DLL;
  }

  else
  {
    v4 = 1920298856;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v8 = sub_23BFFACC0();

    return v8 & 1;
  }
}

BOOL sub_23BFA5C6C(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if ((v5 & 0xFE) == 2)
    {
      return 0;
    }

    if (v4)
    {
      v6 = 0x6574756E696DLL;
    }

    else
    {
      v6 = 1920298856;
    }

    if (v4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v5)
    {
      v8 = 0x6574756E696DLL;
    }

    else
    {
      v8 = 1920298856;
    }

    if (v5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {

      goto LABEL_25;
    }

    v10 = sub_23BFFACC0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);

  return sub_23BFA5AC0(v11, v12, v16, v13, v14, v15);
}

__n128 _s6LayoutV11AdjustmentsOwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s6LayoutV11AdjustmentsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s6LayoutV11AdjustmentsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23BFA5E6C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23BFA5E84(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s6LayoutV4RectOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

unint64_t sub_23BFA5EF0()
{
  result = qword_27E1E1D70;
  if (!qword_27E1E1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1D70);
  }

  return result;
}

__n128 sub_23BFA5F50(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23BFA5F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 127))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BFA5FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 126) = 0;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 127) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 127) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BFA6058()
{
  v1 = sub_23BFF9950();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_23BFFA660();
    v7 = sub_23BFF9B70();
    sub_23BFF9280();

    sub_23BFF9940();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_23BFA6198@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v62 = sub_23BF4A264(&qword_27E1E1D78);
  MEMORY[0x28223BE20](v62);
  v63 = &v53 - v2;
  v64 = sub_23BF4A264(&qword_27E1E1D80);
  v55 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v54 = &v53 - v3;
  v4 = sub_23BF4A264(&qword_27E1E1D88);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v53 - v5;
  v59 = sub_23BF4A264(&qword_27E1E1D90);
  MEMORY[0x28223BE20](v59);
  v57 = &v53 - v6;
  v7 = sub_23BF4A264(&qword_27E1E1D98);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v53 - v8;
  v60 = sub_23BF4A264(&qword_27E1E1DA0);
  MEMORY[0x28223BE20](v60);
  v67 = &v53 - v9;
  v65 = sub_23BF4A264(&qword_27E1E1DA8);
  MEMORY[0x28223BE20](v65);
  v69 = &v53 - v10;
  v66 = sub_23BF4A264(&qword_27E1E1DB0);
  MEMORY[0x28223BE20](v66);
  v68 = &v53 - v11;
  v12 = *(v1 + 40);
  *&v71 = *(v1 + 32);
  *(&v71 + 1) = v12;
  sub_23BF66440();

  v13 = sub_23BFF9CB0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v56 = v1;
  v21 = *(v1 + 104);
  v20 = *(v1 + 112);
  v22 = *(v1 + 120) | (*(v1 + 124) << 32);
  v23 = *(v1 + 125);
  v24 = sub_23BFA6058();
  v25 = v58;
  v26 = v21;
  v27 = v57;
  sub_23BFA6968(v26, v20, v22, v23, v24, v13, v15, v17 & 1, v58, v19);
  v28 = v56;

  sub_23BF70124(v13, v15, v17 & 1);

  sub_23BFA72BC((v28 + 48), v27);
  sub_23BF4B2D4(v25, &qword_27E1E1D88);
  if (*(v28 + 96))
  {
    sub_23BF4B33C(v27, v63, &qword_27E1E1D90);
    swift_storeEnumTagMultiPayload();
    v29 = sub_23BFA7ADC();
    *&v71 = v59;
    *(&v71 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v61;
    sub_23BFF9AC0();
  }

  else
  {
    v31 = sub_23BFA7ADC();
    v32 = v54;
    v33 = v59;
    sub_23BFF9DC0();
    v34 = v55;
    v35 = v64;
    (*(v55 + 16))(v63, v32, v64);
    swift_storeEnumTagMultiPayload();
    *&v71 = v33;
    *(&v71 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v30 = v61;
    sub_23BFF9AC0();
    (*(v34 + 8))(v32, v35);
  }

  sub_23BF4B2D4(v27, &qword_27E1E1D90);
  v36 = *(v28 + 97);
  KeyPath = swift_getKeyPath();
  v38 = v67;
  sub_23BF82A20(v30, v67, &qword_27E1E1D98);
  v39 = v38 + *(v60 + 36);
  *v39 = KeyPath;
  if (v36)
  {
    if (v36 == 1)
    {
      *(v39 + 8) = 1;
      sub_23BFFA030();
    }

    else
    {
      *(v39 + 8) = 0;
      sub_23BFFA040();
    }
  }

  else
  {
    *(v39 + 8) = 2;
    sub_23BFFA050();
  }

  v40 = v66;
  sub_23BFF9810();
  v41 = v69;
  sub_23BF82A20(v38, v69, &qword_27E1E1DA0);
  v42 = (v41 + *(v65 + 36));
  v43 = v76;
  v42[4] = v75;
  v42[5] = v43;
  v42[6] = v77;
  v44 = v72;
  *v42 = v71;
  v42[1] = v44;
  v45 = v74;
  v42[2] = v73;
  v42[3] = v45;
  v46 = swift_getKeyPath();
  v47 = v68;
  v48 = &v68[*(v40 + 36)];
  v49 = *(sub_23BF4A264(&qword_27E1E1E60) + 28);
  v50 = *MEMORY[0x277CDFA88];
  v51 = sub_23BFF97D0();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = v46;
  sub_23BF82A20(v41, v47, &qword_27E1E1DA8);
  sub_23BFA7730(*(v28 + 126), (v28 + 16), v70);
  return sub_23BF4B2D4(v47, &qword_27E1E1DB0);
}

uint64_t sub_23BFA6968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v82 = a5;
  v83 = a1;
  v80 = a4;
  v13 = BYTE4(a3);
  v84 = a2;
  v85 = a9;
  v14 = sub_23BF4A264(&qword_27E1E1E18);
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v81 = v68 - v15;
  v16 = sub_23BF4A264(&qword_27E1E1E10);
  v76 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = v68 - v17;
  v18 = sub_23BF4A264(&qword_27E1E1E08);
  v77 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v74 = v68 - v19;
  v20 = sub_23BF4A264(&qword_27E1E1EE0);
  v79 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v78 = v68 - v21;
  v22 = sub_23BF4A264(&qword_27E1E1EE8);
  v23 = MEMORY[0x28223BE20](v22);
  v26 = v68 - v25;
  v27 = v13;
  if (v27 <= 0xFE)
  {
    v68[1] = a8;
    v68[2] = a7;
    v68[3] = v23;
    v69 = v14;
    v70 = v16;
    v71 = v18;
    v72 = v20;
    v68[0] = v24;
    if (v80 == 2)
    {
      v35 = v83;
      v34 = v84;
      v36 = v24;
      sub_23BFA85A8(v83, v84, v24, SBYTE4(v24));
      v37 = COERCE_DOUBLE(sub_23BFF9220());
      if (v38)
      {
        v37 = 0.0;
      }

      *&v91 = sub_23BFB2714(v35, v34, v36 & 0xFFFFFFFFFFLL, v37);
      v39 = sub_23BFF9C90();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v82 = v44;

      v46 = v43 & 1;
      v81 = v39;
      v86 = v39;
      v87 = v41;
      v88 = v46;
      v89 = v45;
      v90 = 1;
      sub_23BF7053C(v39, v41, v46);

      sub_23BFF9AC0();
      v47 = v91;
      v48 = v92;
      v49 = v93;
      *v26 = v91;
      *(v26 + 1) = v48;
      v26[32] = v49;
      swift_storeEnumTagMultiPayload();
      sub_23BFA85FC(v47, *(&v47 + 1), v48);
      sub_23BF4A264(&qword_27E1E1E00);
      sub_23BFA7EA0();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v91 = v69;
      *(&v91 + 1) = OpaqueTypeConformance2;
      v51 = swift_getOpaqueTypeConformance2();
      *&v91 = v70;
      *(&v91 + 1) = v51;
      v52 = swift_getOpaqueTypeConformance2();
      *&v91 = v71;
      *(&v91 + 1) = v52;
      swift_getOpaqueTypeConformance2();
      sub_23BFF9AC0();
      sub_23BFA85C8(v83, v84, v68[0]);
      sub_23BFA8638(v47, *(&v47 + 1), v48);
      sub_23BF70124(v81, v41, v46);
    }

    else
    {
      v54 = v83;
      v53 = v84;
      v55 = v24;
      sub_23BFA85A8(v83, v84, v24, SBYTE4(v24));
      sub_23BFF99F0();
      sub_23BFF9C60();
      if (v27 == 1)
      {
        sub_23BFA85A8(v54, v53, v55, 1);
      }

      v56 = v72;
      v57 = swift_getOpaqueTypeConformance2();
      v58 = v73;
      v59 = v69;
      v60 = v81;
      sub_23BFF9CC0();

      (*(v75 + 8))(v60, v59);
      *&v91 = v59;
      *(&v91 + 1) = v57;
      v61 = swift_getOpaqueTypeConformance2();
      v62 = v74;
      v63 = v70;
      sub_23BFF9CE0();
      (*(v76 + 8))(v58, v63);
      *&v91 = v63;
      *(&v91 + 1) = v61;
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v78;
      v66 = v71;
      sub_23BFF9CD0();
      (*(v77 + 8))(v62, v66);
      v67 = v79;
      (*(v79 + 16))(v26, v65, v56);
      swift_storeEnumTagMultiPayload();
      sub_23BF4A264(&qword_27E1E1E00);
      sub_23BFA7EA0();
      *&v91 = v66;
      *(&v91 + 1) = v64;
      swift_getOpaqueTypeConformance2();
      sub_23BFF9AC0();
      sub_23BFA85C8(v54, v84, v68[0]);
      return (*(v67 + 8))(v65, v56);
    }
  }

  else
  {
    v86 = a6;
    v87 = a7;
    v88 = a8 & 1;
    v89 = a10;
    v90 = 0;
    sub_23BF7053C(a6, a7, a8 & 1);

    sub_23BFF9AC0();
    v28 = v93;
    v29 = v92;
    *v26 = v91;
    *(v26 + 1) = v29;
    v26[32] = v28;
    swift_storeEnumTagMultiPayload();
    sub_23BF4A264(&qword_27E1E1E00);
    sub_23BFA7EA0();
    v30 = swift_getOpaqueTypeConformance2();
    *&v91 = v14;
    *(&v91 + 1) = v30;
    v31 = swift_getOpaqueTypeConformance2();
    *&v91 = v16;
    *(&v91 + 1) = v31;
    v32 = swift_getOpaqueTypeConformance2();
    *&v91 = v18;
    *(&v91 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    return sub_23BFF9AC0();
  }
}

uint64_t sub_23BFA72BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[1] = a2;
  v5 = sub_23BF4A264(&qword_27E1E1E38);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = sub_23BF4A264(&qword_27E1E1ED0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = sub_23BF4A264(&qword_27E1E1DC8);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  sub_23BFA8544(a1, v28);
  sub_23BF4A264(&qword_27E1E1ED8);
  _s18TransitioningFontsCMa();
  if (swift_dynamicCast())
  {
    v14 = v27[2];
    sub_23BF4B33C(v3, v13, &qword_27E1E1D88);
    *&v13[*(sub_23BF4A264(&qword_27E1E1DE8) + 36)] = v14;
    *&v13[*(sub_23BF4A264(&qword_27E1E1DD8) + 36)] = 257;
    KeyPath = swift_getKeyPath();
    v16 = &v13[*(v11 + 36)];
    *v16 = KeyPath;
    *(v16 + 1) = 0;
    v16[16] = 1;
    sub_23BF4B33C(v13, v10, &qword_27E1E1DC8);
    swift_storeEnumTagMultiPayload();
    sub_23BFA7B68();
    sub_23BFA7F1C();
    sub_23BFF9AC0();
    v17 = v13;
    v18 = &qword_27E1E1DC8;
  }

  else
  {
    v20 = a1[3];
    v19 = a1[4];
    sub_23BF4C484(a1, v20);
    (*(v19 + 8))(v20, v19);
    v21 = sub_23BFF9C20();
    v22 = swift_getKeyPath();
    sub_23BF4B33C(v3, v7, &qword_27E1E1D88);
    v23 = &v7[*(sub_23BF4A264(&qword_27E1E1E58) + 36)];
    *v23 = v22;
    v23[1] = v21;
    *&v7[*(sub_23BF4A264(&qword_27E1E1E48) + 36)] = 257;
    v24 = swift_getKeyPath();
    v25 = &v7[*(v5 + 36)];
    *v25 = v24;
    *(v25 + 1) = 0;
    v25[16] = 1;
    sub_23BF4B33C(v7, v10, &qword_27E1E1E38);
    swift_storeEnumTagMultiPayload();
    sub_23BFA7B68();
    sub_23BFA7F1C();
    sub_23BFF9AC0();
    v17 = v7;
    v18 = &qword_27E1E1E38;
  }

  return sub_23BF4B2D4(v17, v18);
}

uint64_t sub_23BFA7668(uint64_t a1)
{
  v2 = sub_23BFF97D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23BFF98A0();
}

void sub_23BFA7730(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v27 = a3;
  v25 = sub_23BF4A264(&qword_27E1E1E68);
  MEMORY[0x28223BE20](v25);
  v5 = &v22[-v4];
  v26 = sub_23BF4A264(&qword_27E1E1E70);
  MEMORY[0x28223BE20](v26);
  v7 = &v22[-v6];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[7];
  v10 = a2[8];
  sub_23BF4C484(a2 + 4, v11);
  v12 = *(v10 + 8);

  v13 = v12(v11, v10);
  v14 = objc_allocWithZone(type metadata accessor for TimeFontTypographicBounds());
  v15 = sub_23BF6D9DC(v8, v9, v13);

  if (v23)
  {
    v16 = sub_23BFFA020();
    v18 = v17;
    sub_23BFB7304(v15, v33);
    memcpy(v30, v33, sizeof(v30));
    memcpy(v31, v33, sizeof(v31));
    sub_23BF4B33C(v30, v32, &qword_27E1E1EC8);
    sub_23BF4B2D4(v31, &qword_27E1E1EC8);
    memcpy(v29, v30, sizeof(v29));
    v19 = sub_23BFFA030();
    v21 = v20;
    v32[0] = v16;
    v32[1] = v18;
    memcpy(&v32[2], v29, 0x1C0uLL);
    LOBYTE(v32[58]) = 0;
    v32[59] = v19;
    v32[60] = v21;
    sub_23BF4B33C(v24, v7, &qword_27E1E1DB0);
    memcpy(&v7[*(v26 + 36)], v32, 0x1E8uLL);
    v33[0] = v16;
    v33[1] = v18;
    memcpy(&v33[2], v29, 0x1C0uLL);
    v34 = 0;
    v35 = v19;
    v36 = v21;
    sub_23BF4B33C(v32, &v28, &qword_27E1E1EC0);
    sub_23BF4B2D4(v33, &qword_27E1E1EC0);
    sub_23BF4B33C(v7, v5, &qword_27E1E1E70);
    swift_storeEnumTagMultiPayload();
    sub_23BF4A264(&qword_27E1E1DB0);
    sub_23BFA81C4();
    sub_23BFA827C();
    sub_23BFF9AC0();

    sub_23BF4B2D4(v7, &qword_27E1E1E70);
  }

  else
  {
    sub_23BF4B33C(v24, v5, &qword_27E1E1DB0);
    swift_storeEnumTagMultiPayload();
    sub_23BF4A264(&qword_27E1E1DB0);
    sub_23BFA81C4();
    sub_23BFA827C();
    sub_23BFF9AC0();
  }
}

unint64_t sub_23BFA7ADC()
{
  result = qword_27E1E1DB8;
  if (!qword_27E1E1DB8)
  {
    sub_23BF4A2D0(&qword_27E1E1D90);
    sub_23BFA7B68();
    sub_23BFA7F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DB8);
  }

  return result;
}

unint64_t sub_23BFA7B68()
{
  result = qword_27E1E1DC0;
  if (!qword_27E1E1DC0)
  {
    sub_23BF4A2D0(&qword_27E1E1DC8);
    sub_23BFA7C20();
    sub_23BF4BE40(&qword_27E1E1E20, &qword_27E1E1E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DC0);
  }

  return result;
}

unint64_t sub_23BFA7C20()
{
  result = qword_27E1E1DD0;
  if (!qword_27E1E1DD0)
  {
    sub_23BF4A2D0(&qword_27E1E1DD8);
    sub_23BFA7CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DD0);
  }

  return result;
}

unint64_t sub_23BFA7CAC()
{
  result = qword_27E1E1DE0;
  if (!qword_27E1E1DE0)
  {
    sub_23BF4A2D0(&qword_27E1E1DE8);
    sub_23BFA7D38();
    sub_23BF87BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DE0);
  }

  return result;
}

unint64_t sub_23BFA7D38()
{
  result = qword_27E1E1DF0;
  if (!qword_27E1E1DF0)
  {
    sub_23BF4A2D0(&qword_27E1E1D88);
    sub_23BFA7EA0();
    sub_23BF4A2D0(&qword_27E1E1E08);
    sub_23BF4A2D0(&qword_27E1E1E10);
    sub_23BF4A2D0(&qword_27E1E1E18);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DF0);
  }

  return result;
}

unint64_t sub_23BFA7EA0()
{
  result = qword_27E1E1DF8;
  if (!qword_27E1E1DF8)
  {
    sub_23BF4A2D0(&qword_27E1E1E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1DF8);
  }

  return result;
}

unint64_t sub_23BFA7F1C()
{
  result = qword_27E1E1E30;
  if (!qword_27E1E1E30)
  {
    sub_23BF4A2D0(&qword_27E1E1E38);
    sub_23BFA7FD4();
    sub_23BF4BE40(&qword_27E1E1E20, &qword_27E1E1E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E30);
  }

  return result;
}

unint64_t sub_23BFA7FD4()
{
  result = qword_27E1E1E40;
  if (!qword_27E1E1E40)
  {
    sub_23BF4A2D0(&qword_27E1E1E48);
    sub_23BFA8060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E40);
  }

  return result;
}

unint64_t sub_23BFA8060()
{
  result = qword_27E1E1E50;
  if (!qword_27E1E1E50)
  {
    sub_23BF4A2D0(&qword_27E1E1E58);
    sub_23BFA7D38();
    sub_23BF4BE40(&qword_27E1E0FC8, &qword_27E1E0FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E50);
  }

  return result;
}

uint64_t sub_23BFA8118@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFF98C0();
  *a1 = result;
  return result;
}

uint64_t sub_23BFA816C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF98E0();
  *a1 = result;
  return result;
}

unint64_t sub_23BFA81C4()
{
  result = qword_27E1E1E78;
  if (!qword_27E1E1E78)
  {
    sub_23BF4A2D0(&qword_27E1E1E70);
    sub_23BFA827C();
    sub_23BF4BE40(&qword_27E1E1EB8, &qword_27E1E1EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E78);
  }

  return result;
}

unint64_t sub_23BFA827C()
{
  result = qword_27E1E1E80;
  if (!qword_27E1E1E80)
  {
    sub_23BF4A2D0(&qword_27E1E1DB0);
    sub_23BFA8334();
    sub_23BF4BE40(&qword_27E1E1EB0, &qword_27E1E1E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E80);
  }

  return result;
}

unint64_t sub_23BFA8334()
{
  result = qword_27E1E1E88;
  if (!qword_27E1E1E88)
  {
    sub_23BF4A2D0(&qword_27E1E1DA8);
    sub_23BFA83C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E88);
  }

  return result;
}

unint64_t sub_23BFA83C0()
{
  result = qword_27E1E1E90;
  if (!qword_27E1E1E90)
  {
    sub_23BF4A2D0(&qword_27E1E1DA0);
    sub_23BFA8478();
    sub_23BF4BE40(&qword_27E1E1EA0, &qword_27E1E1EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E90);
  }

  return result;
}

unint64_t sub_23BFA8478()
{
  result = qword_27E1E1E98;
  if (!qword_27E1E1E98)
  {
    sub_23BF4A2D0(&qword_27E1E1D98);
    sub_23BF4A2D0(&qword_27E1E1D90);
    sub_23BFA7ADC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1E98);
  }

  return result;
}

uint64_t sub_23BFA8544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BFA85A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_23BFA85C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_23BFA85DC(result, a2, a3, SBYTE4(a3));
  }

  return result;
}

uint64_t sub_23BFA85DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_23BFA85FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_23BF7053C(a1, a2, a3 & 1);
}

uint64_t sub_23BFA8638(uint64_t a1, uint64_t a2, char a3)
{
  sub_23BF70124(a1, a2, a3 & 1);
}

unint64_t sub_23BFA8674()
{
  result = qword_27E1E1EF0;
  if (!qword_27E1E1EF0)
  {
    sub_23BF4A2D0(&qword_27E1E1EF8);
    sub_23BFA81C4();
    sub_23BFA827C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1EF0);
  }

  return result;
}

uint64_t sub_23BFA8700()
{
  sub_23BFA8DB4(v9);
  v1 = v9[0];

  sub_23BF9C60C(v9);
  *&v12[9] = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 41);
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 32);
  v11 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 16);
  *v12 = v2;
  v10 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout);
  *(v14 + 9) = *(v1 + 57);
  v3 = v1[2];
  v13[0] = v1[1];
  v13[1] = v3;
  v14[0] = v1[3];
  if (sub_23BFA9BA0(v13, &v10))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BF9C680();
    sub_23BFF91B0();
  }

  else
  {
    v6 = *&v12[9];
    v8 = v11;
    v7 = *v12;
    v1[1] = v10;
    v1[2] = v8;
    v1[3] = v7;
    *(v1 + 57) = v6;
  }
}

void sub_23BFA88F8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DigitalTimeView();
  objc_msgSendSuper2(&v7, sel_setHidden_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController];
  if (v3)
  {
    v4 = v3;
    [v1 isHidden];
    swift_getObjectType();
    v5 = sub_23BFF99C0();
    sub_23BFF9B00();
    v5(&v6, 0);
  }
}

uint64_t sub_23BFA8CCC(char a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v6 = (a3 >> 8) & 1;
  v7 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);
  [v7 setShowSeconds_];
  [v7 setIncludeSeparatorInTimeSubstringFromSeparatorText_];
  [v7 setZeroPadTimeSubstringToSeparatorText_];
  [v7 setForcedNumberSystem_];
  sub_23BFA8DB4(v9);
  sub_23BF4A264(&qword_27E1E1F50);
  sub_23BFF9EE0();
  sub_23BF9C60C(v9);
  sub_23BFB43B4(v7);
}

uint64_t sub_23BFA8DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView;
  v5 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView);
  v4 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 8);
  v6 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 16);
  v7 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 24);
  v8 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 32);
  v9 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 40);
  v10 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView + 48);
  if (v5)
  {
    v11 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView);
    v12 = v4;
    v13 = v6;
    v14 = v9;
    v15 = v10;
    v16 = v7;
    v17 = v8;
  }

  else
  {
    sub_23BFA8F14(v1, &v24);
    v18 = v25;
    v19 = v26;
    v20 = v28;
    v22 = *v3;
    *v3 = v24;
    *(v3 + 16) = v18;
    *(v3 + 24) = v19;
    *(v3 + 32) = v27;
    *(v3 + 48) = v20;
    sub_23BFA9E00(&v24, v23);
    sub_23BFA9E5C(v22);
    v14 = *(&v27 + 1);
    v15 = v28;
    v16 = v26;
    v17 = v27;
    v13 = v25;
    v12 = *(&v24 + 1);
    v11 = v24;
  }

  result = sub_23BFA9EC8(v5);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_23BFA8F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_23BFF96E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v48[-v7];
  v58 = _s15BackgroundStyleOMa();
  v9 = MEMORY[0x28223BE20](v58);
  v54 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v48[-v11];
  v13 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 16);
  v70 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout);
  v14 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 32);
  v71 = v13;
  *v72 = v14;
  *&v72[9] = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout + 41);
  v15 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_font;
  swift_beginAccess();
  sub_23BFA8544(a1 + v15, v69);
  v56 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_fontTracking);
  v55 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_fontTracking + 8);
  v16 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle);
  v17 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle + 8);
  v49 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle + 16);
  v18 = v49;
  v64 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle + 20);
  v60 = v12;
  sub_23BFA9F38(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backgroundStyle, v12);
  v50 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_maskStyle);
  v19 = v50;
  v20 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_opacity);
  v57 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeTransition);
  v21 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_scaleEffectSize);
  v22 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_scaleEffectSize + 8);
  v23 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backdropGroupName + 8);
  v63 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backdropGroupName);
  v61 = v23;
  v24 = *MEMORY[0x277CDF3C0];
  v52 = v4;
  v25 = *(v4 + 104);
  v59 = v8;
  v51 = v3;
  v25(v8, v24, v3);
  sub_23BFF9250();
  swift_allocObject();
  v26 = v18;
  LOBYTE(v18) = v64;
  sub_23BFA85A8(v16, v17, v26, v64);
  sub_23BFA9F9C(v19);

  v53 = sub_23BFF9240();
  v68 = 0;
  sub_23BFA8544(v69, v67);
  v27 = v54;
  sub_23BFA9F38(v12, v54);
  (*(v4 + 16))(v65, v8, v3);
  _s5ModelCMa();
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle;
  swift_storeEnumTagMultiPayload();
  v30 = v16;
  v31 = v16;
  v32 = v17;
  v33 = v17;
  v34 = v49;
  sub_23BFA85A8(v31, v33, v49, v18);
  v35 = v50;
  sub_23BFA9F9C(v50);

  sub_23BFF91D0();
  v36 = v71;
  v37 = *v72;
  *(v28 + 16) = v70;
  *(v28 + 32) = v36;
  *(v28 + 48) = v37;
  *(v28 + 57) = *&v72[9];
  sub_23BF7D948(v67, v28 + 80);
  *(v28 + 120) = v56;
  *(v28 + 128) = v55;
  *(v28 + 136) = v30;
  *(v28 + 144) = v32;
  *(v28 + 152) = v34;
  *(v28 + 156) = v18;
  sub_23BFA9FAC(v28 + v29);
  sub_23BFAA008(v27, v28 + v29);
  *(v28 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle) = v35;
  v38 = v52;
  v39 = v51;
  (*(v52 + 32))(v28 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme, v65, v51);
  *(v28 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity) = v20;
  *(v28 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition) = v57;
  v40 = (v28 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  *v40 = v21;
  v40[1] = v22;
  _s12TimeProviderCMa();
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0xE000000000000000;
  v41[4] = 0;
  v41[5] = 0xE000000000000000;
  v41[6] = 0;
  v41[7] = 0xE000000000000000;
  v41[8] = 0;
  v41[9] = 0xE000000000000000;
  v41[10] = 0;
  v41[11] = 0xE000000000000000;
  v41[12] = 0;
  v41[13] = 0xE000000000000000;
  sub_23BFF91D0();
  v66 = v41;
  sub_23BFF9ED0();
  v42 = v67[0];
  v43 = v53;
  sub_23BFF9230();

  sub_23BFAA06C(v35);
  sub_23BFA85DC(v30, v32, v34, v64);
  (*(v38 + 8))(v59, v39);
  sub_23BFA9FAC(v60);
  result = sub_23BF4A9A4(v69);
  v45 = v68;
  v46 = v62;
  *v62 = v28;
  v46[1] = v43;
  *(v46 + 16) = v45;
  *(v46 + 3) = v42;
  v47 = v61;
  v46[5] = v63;
  v46[6] = v47;
  return result;
}

void sub_23BFA94EC()
{
  v1 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController];
  if (!*&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController])
  {
    v2 = v0;
    sub_23BFA8DB4(v21);
    sub_23BFA9CF8();
    sub_23BFF9F70();
    v3 = sub_23BFF9B10();

    swift_getObjectType();
    sub_23BFA9DB4();
    v4 = sub_23BFA9D4C(v3);
    v6 = v5;
    swift_getObjectType();
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() clearColor];
      [v8 setBackgroundColor_];

      v10 = [v4 view];
      if (v10)
      {
        v11 = v10;
        [v2 bounds];
        [v11 setFrame_];

        v12 = [v4 view];
        if (v12)
        {
          v13 = v12;
          [v12 setClipsToBounds_];

          v14 = [v4 view];
          if (v14)
          {
            v15 = v14;
            [v14 setUserInteractionEnabled_];

            [v2 isHidden];
            v16 = sub_23BFF99C0();
            sub_23BFF9B00();
            v16(v21, 0);
            v17 = [v4 view];
            if (v17)
            {
              v18 = v17;
              [v2 addSubview_];

              v19 = *v1;
              *v1 = v4;
              *(v1 + 1) = v6;
              v20 = v3;

              [v2 setUserInteractionEnabled_];
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_23BFA9790()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DigitalTimeView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_23BFA989C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalTimeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DigitalTimeView()
{
  result = qword_27E1E1F38;
  if (!qword_27E1E1F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BFA99F4()
{
  result = _s15BackgroundStyleOMa();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

BOOL sub_23BFA9BA0(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 == 3)
    {
      goto LABEL_25;
    }

    return 1;
  }

  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if ((v5 & 0xFE) == 2)
  {
    return 1;
  }

  if (v4)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (v4)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v5)
  {
    v8 = 0x6574756E696DLL;
  }

  else
  {
    v8 = 1920298856;
  }

  if (v5)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {

    goto LABEL_25;
  }

  v10 = sub_23BFFACC0();

  if ((v10 & 1) == 0)
  {
    return 1;
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 1;
  }

  return !sub_23BFA5AC0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a2 + 40), *(a2 + 48), *(a2 + 56));
}

unint64_t sub_23BFA9CF8()
{
  result = qword_27E1E1F58;
  if (!qword_27E1E1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1F58);
  }

  return result;
}

uint64_t sub_23BFA9D4C(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BFA9DB4()
{
  result = qword_27E1E1F60;
  if (!qword_27E1E1F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E1F60);
  }

  return result;
}

uint64_t sub_23BFA9E5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BFA9EC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BFA9F38(uint64_t a1, uint64_t a2)
{
  v4 = _s15BackgroundStyleOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BFA9F9C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23BFA9FAC(uint64_t a1)
{
  v2 = _s15BackgroundStyleOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BFAA008(uint64_t a1, uint64_t a2)
{
  v4 = _s15BackgroundStyleOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BFAA06C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23BFAA07C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23BFAA0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BFAA13C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v37 = sub_23BFF99E0();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23BFF9B40();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BF4A264(&qword_27E1E1F68);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - v8);
  v10 = sub_23BF4A264(&qword_27E1E1F70);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v33 = sub_23BF4A264(&qword_27E1E1F78);
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v15 = &v30 - v14;
  v32 = sub_23BF4A264(&qword_27E1E1F80);
  MEMORY[0x28223BE20](v32);
  v17 = &v30 - v16;
  *v9 = sub_23BFFA030();
  v9[1] = v18;
  v19 = sub_23BF4A264(&qword_27E1E1F88);
  sub_23BFAA664(v9 + *(v19 + 44));
  sub_23BFAD5E4();
  sub_23BFF9D10();
  sub_23BF4B2D4(v9, &qword_27E1E1F68);
  v20 = sub_23BFF97F0();
  v21 = sub_23BFF9BB0();
  v22 = &v12[*(sub_23BF4A264(&qword_27E1E1FA8) + 36)];
  *v22 = v20;
  v22[8] = v21;
  v12[*(v10 + 36)] = sub_23BFF9BB0();
  sub_23BFF9B30();
  v23 = sub_23BFAD69C();
  sub_23BFF9D90();
  (*(v4 + 8))(v6, v31);
  sub_23BF4B2D4(v12, &qword_27E1E1F70);
  v40 = *(v2 + 24);
  sub_23BF4A264(&qword_27E1E1F50);
  sub_23BFF9EE0();
  v24 = v38;
  swift_getKeyPath();
  *&v40 = v24;
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v25 = *(v24 + 96);
  v26 = *(v24 + 104);

  *&v40 = v25;
  *(&v40 + 1) = v26;
  v38 = v10;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  sub_23BF66440();
  v27 = v33;
  sub_23BFF9D70();

  (*(v13 + 8))(v15, v27);
  v28 = v34;
  sub_23BFF99D0();
  sub_23BFF97E0();
  (*(v35 + 8))(v28, v37);
  return sub_23BF4B2D4(v17, &qword_27E1E1F80);
}

uint64_t sub_23BFAA664@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_23BF4A264(&qword_27E1E1FC8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = sub_23BF4A264(&qword_27E1E1FD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_23BF4A264(&qword_27E1E1FD8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_23BFAA968(&v23 - v17);
  sub_23BFAAE94(v12);
  sub_23BFAB3C8(v6);
  sub_23BF4B33C(v18, v16, &qword_27E1E1FD8);
  sub_23BF4B33C(v12, v10, &qword_27E1E1FD0);
  v19 = v4;
  sub_23BF4B33C(v6, v4, &qword_27E1E1FC8);
  v20 = v24;
  sub_23BF4B33C(v16, v24, &qword_27E1E1FD8);
  v21 = sub_23BF4A264(&qword_27E1E1FE0);
  sub_23BF4B33C(v10, v20 + *(v21 + 48), &qword_27E1E1FD0);
  sub_23BF4B33C(v19, v20 + *(v21 + 64), &qword_27E1E1FC8);
  sub_23BF4B2D4(v6, &qword_27E1E1FC8);
  sub_23BF4B2D4(v12, &qword_27E1E1FD0);
  sub_23BF4B2D4(v18, &qword_27E1E1FD8);
  sub_23BF4B2D4(v19, &qword_27E1E1FC8);
  sub_23BF4B2D4(v10, &qword_27E1E1FD0);
  return sub_23BF4B2D4(v16, &qword_27E1E1FD8);
}

uint64_t sub_23BFAA968@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v21 = sub_23BF4A264(&qword_27E1E2170);
  MEMORY[0x28223BE20](v21);
  v3 = v20 - v2;
  v4 = sub_23BFF9F60();
  v20[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BF4A264(&qword_27E1E2178);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = _s15BackgroundStyleOMa();
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  swift_getKeyPath();
  v26 = v13;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v14 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_23BFA9F38(v13 + v14, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v20[0];
      (*(v20[0] + 32))(v6, v12, v4);
      (*(v16 + 16))(v3, v6, v4);
      sub_23BF4B33C(v3, v9, &qword_27E1E2170);
      swift_storeEnumTagMultiPayload();
      sub_23BF4A264(&qword_27E1E2180);
      sub_23BFAF9F4(&qword_27E1E2188, &qword_27E1E2180, &unk_23C007260, sub_23BFAFA78);
      sub_23BFAFB84();
      sub_23BFF9AC0();
      sub_23BF4B2D4(v3, &qword_27E1E2170);
      return (*(v16 + 8))(v6, v4);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      sub_23BF4A264(&qword_27E1E2198);
      sub_23BFAFA78();
      sub_23BFF9AC0();
      v19 = v25;
      *v9 = v24;
      v9[8] = v19;
      swift_storeEnumTagMultiPayload();
      sub_23BF4A264(&qword_27E1E2180);
      sub_23BFAF9F4(&qword_27E1E2188, &qword_27E1E2180, &unk_23C007260, sub_23BFAFA78);
      sub_23BFAFB84();
      return sub_23BFF9AC0();
    }
  }

  else
  {
    v22 = *v12;
    v23 = 1;

    sub_23BF4A264(&qword_27E1E2198);
    sub_23BFAFA78();
    sub_23BFF9AC0();
    v18 = v25;
    *v9 = v24;
    v9[8] = v18;
    swift_storeEnumTagMultiPayload();
    sub_23BF4A264(&qword_27E1E2180);
    sub_23BFAF9F4(&qword_27E1E2188, &qword_27E1E2180, &unk_23C007260, sub_23BFAFA78);
    sub_23BFAFB84();
    sub_23BFF9AC0();
  }
}

uint64_t sub_23BFAAE94@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_23BF4A264(&qword_27E1E2078);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = v32 - v3;
  v40 = sub_23BF4A264(&qword_27E1E2150) - 8;
  MEMORY[0x28223BE20](v40);
  v36 = v32 - v4;
  v5 = *v1;
  swift_getKeyPath();
  v35 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model___observationRegistrar;
  v43 = v5;
  v34 = sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v6 = *(v5 + 136);
  v7 = *(v5 + 144);
  v8 = *(v5 + 152);
  v9 = *(v5 + 156);
  v43 = v5;

  sub_23BFA85A8(v6, v7, v8, v9);
  v33 = v1;
  sub_23BFAC144(v1, v6, v7, v8 | (v9 << 32), &v44);
  v32[1] = v1[1];
  v32[0] = sub_23BF4A264(&qword_27E1E2088);
  sub_23BFF9250();
  sub_23BFAF368();
  sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
  v10 = v37;
  sub_23BFF9D30();
  sub_23BF4B2D4(&v43, &qword_27E1E2088);
  v11 = v33;
  v12 = v36;
  sub_23BFAD278(*(v33 + 16));
  sub_23BFA85DC(v6, v7, v8, v9);
  (*(v38 + 8))(v10, v39);
  swift_getKeyPath();
  v43 = v5;
  sub_23BFF91C0();

  v13 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v14 = (v12 + *(sub_23BF4A264(&qword_27E1E2158) + 36));
  v15 = *(sub_23BF4A264(&qword_27E1E2160) + 28);
  v16 = sub_23BFF96E0();
  (*(*(v16 - 8) + 16))(v14 + v15, v5 + v13, v16);
  *v14 = swift_getKeyPath();
  swift_getKeyPath();
  v42[0] = v5;
  sub_23BFF91C0();

  v17 = *(v5 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity);
  *(v12 + *(sub_23BF4A264(&qword_27E1E2168) + 36)) = v17;
  swift_getKeyPath();
  v42[0] = v5;
  sub_23BFF91C0();

  v18 = v5 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize;
  v19 = *(v5 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v42[0] = v5;
  sub_23BFF91C0();

  v20 = *(v18 + 8);
  sub_23BFFA0A0();
  v21 = (v12 + *(v40 + 44));
  *v21 = v19;
  v21[1] = v20;
  v21[2] = v22;
  v21[3] = v23;
  v24 = 0xE000000000000000;
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_23BFFA9F0();

  strcpy(v42, "ntk-timelabel-");
  HIBYTE(v42[1]) = -18;
  v25 = v11[6];
  if (v25)
  {
    v26 = v11[5];
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v24 = v11[6];
  }

  MEMORY[0x23EEC3090](v26, v24);

  v27 = v42[0];
  v28 = v42[1];
  v29 = v41;
  sub_23BF0FE38(v12, v41);
  result = sub_23BF4A264(&qword_27E1E1FD0);
  v31 = v29 + *(result + 36);
  *v31 = 1;
  *(v31 + 8) = v27;
  *(v31 + 16) = v28;
  return result;
}

uint64_t sub_23BFAB3C8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_23BF4A264(&qword_27E1E1FE8);
  MEMORY[0x28223BE20](v30);
  v3 = (&v26 - v2);
  v26 = sub_23BF4A264(&qword_27E1E1FF0);
  MEMORY[0x28223BE20](v26);
  v5 = (&v26 - v4);
  v27 = sub_23BF4A264(&qword_27E1E1FF8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - v6;
  v8 = sub_23BF4A264(&qword_27E1E2000);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v28 = sub_23BF4A264(&qword_27E1E2008);
  MEMORY[0x28223BE20](v28);
  v12 = &v26 - v11;
  v13 = v1;
  v14 = *v1;
  swift_getKeyPath();
  v31 = v14;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v15 = *(v14 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle);
  if (v15)
  {
    if (v15 == 1)
    {
      *v5 = sub_23BFFA030();
      v5[1] = v16;
      v17 = sub_23BF4A264(&qword_27E1E2070);
      sub_23BFAB948(v13, (v5 + *(v17 + 44)));
      v18 = *(v26 + 36);
      v19 = *MEMORY[0x277CE13C0];
      v20 = sub_23BFFA080();
      (*(*(v20 - 8) + 104))(v5 + v18, v19, v20);
      sub_23BF4B33C(v5, v10, &qword_27E1E1FF0);
      swift_storeEnumTagMultiPayload();
      sub_23BFAF0E0();
      sub_23BFF9AC0();
      sub_23BF4B33C(v12, v7, &qword_27E1E2008);
      swift_storeEnumTagMultiPayload();
      sub_23BFAF9F4(&qword_27E1E2018, &qword_27E1E2008, &unk_23C006F18, sub_23BFAF0E0);
      sub_23BFAF2B0();
      sub_23BFF9AC0();
      sub_23BF4B2D4(v12, &qword_27E1E2008);
      v21 = v5;
      v22 = &qword_27E1E1FF0;
    }

    else
    {

      *v3 = sub_23BFFA030();
      v3[1] = v23;
      v24 = sub_23BF4A264(&qword_27E1E2010);
      sub_23BFABD08(v15, v13, (v3 + *(v24 + 44)));
      sub_23BF4B33C(v3, v7, &qword_27E1E1FE8);
      swift_storeEnumTagMultiPayload();
      sub_23BFAF9F4(&qword_27E1E2018, &qword_27E1E2008, &unk_23C006F18, sub_23BFAF0E0);
      sub_23BFAF2B0();
      sub_23BFF9AC0();
      sub_23BFAA06C(v15);
      v21 = v3;
      v22 = &qword_27E1E1FE8;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_23BFAF0E0();
    sub_23BFF9AC0();
    sub_23BF4B33C(v12, v7, &qword_27E1E2008);
    swift_storeEnumTagMultiPayload();
    sub_23BFAF9F4(&qword_27E1E2018, &qword_27E1E2008, &unk_23C006F18, sub_23BFAF0E0);
    sub_23BFAF2B0();
    sub_23BFF9AC0();
    v21 = v12;
    v22 = &qword_27E1E2008;
  }

  return sub_23BF4B2D4(v21, v22);
}

uint64_t sub_23BFAB948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_23BF4A264(&qword_27E1E2078);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v28 = sub_23BF4A264(&qword_27E1E2080) - 8;
  v6 = MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v23 - v8;
  v26 = sub_23BFF9E70();
  v9 = sub_23BFF9E50();
  v30 = *a1;
  v10 = v30;

  sub_23BFAC144(a1, v9, 0, 0, &v31);
  sub_23BF4A264(&qword_27E1E2088);
  sub_23BFF9250();
  sub_23BFAF368();
  sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
  sub_23BFF9D30();
  sub_23BF4B2D4(&v30, &qword_27E1E2088);
  v11 = v23;
  sub_23BFAD278(*(a1 + 16));

  (*(v24 + 8))(v5, v25);
  swift_getKeyPath();
  v30 = v10;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v12 = v10 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize;
  v13 = *(v10 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v30 = v10;
  sub_23BFF91C0();

  v14 = *(v12 + 8);
  sub_23BFFA0A0();
  v15 = v27;
  v16 = (v11 + *(v28 + 44));
  *v16 = v13;
  v16[1] = v14;
  v16[2] = v17;
  v16[3] = v18;
  sub_23BF4B33C(v11, v15, &qword_27E1E2080);
  v19 = v29;
  *v29 = v26;
  *(v19 + 4) = 256;
  v20 = v19;
  v21 = sub_23BF4A264(&qword_27E1E2108);
  sub_23BF4B33C(v15, v20 + *(v21 + 48), &qword_27E1E2080);

  sub_23BF4B2D4(v11, &qword_27E1E2080);
  sub_23BF4B2D4(v15, &qword_27E1E2080);
}

uint64_t sub_23BFABD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v4 = sub_23BF4A264(&qword_27E1E2078);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v32 = sub_23BF4A264(&qword_27E1E2140) - 8;
  v7 = MEMORY[0x28223BE20](v32);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - v9;

  v10 = sub_23BFF9E70();
  v36 = *a2;
  v11 = v36;

  sub_23BFAC144(a2, v10, 0, 0, &v37);
  sub_23BF4A264(&qword_27E1E2088);
  sub_23BFF9250();
  sub_23BFAF368();
  sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
  sub_23BFF9D30();
  sub_23BF4B2D4(&v36, &qword_27E1E2088);
  v12 = v29;
  sub_23BFAD278(*(a2 + 16));

  (*(v30 + 8))(v6, v31);
  swift_getKeyPath();
  v36 = v11;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v13 = v11 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize;
  v14 = *(v11 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v36 = v11;
  sub_23BFF91C0();

  v15 = *(v13 + 8);
  sub_23BFFA0A0();
  v17 = v16;
  v19 = v18;
  v20 = (v12 + *(sub_23BF4A264(&qword_27E1E2080) + 36));
  *v20 = v14;
  v20[1] = v15;
  v20[2] = v17;
  v20[3] = v19;
  v21 = *(v32 + 44);
  v22 = *MEMORY[0x277CE13C0];
  v23 = sub_23BFFA080();
  (*(*(v23 - 8) + 104))(v12 + v21, v22, v23);
  v24 = v34;
  sub_23BF4B33C(v12, v34, &qword_27E1E2140);
  v25 = v35;
  *v35 = v33;
  *(v25 + 4) = 256;
  v26 = v25;
  v27 = sub_23BF4A264(&qword_27E1E2148);
  sub_23BF4B33C(v24, v26 + *(v27 + 48), &qword_27E1E2140);

  sub_23BF4B2D4(v12, &qword_27E1E2140);
  sub_23BF4B2D4(v24, &qword_27E1E2140);
}

uint64_t sub_23BFAC144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v55 = a4;
  if (*(v9 + 48) != 3)
  {
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFF91C0();

    if (*(v9 + 48) == 2)
    {
      v107[0] = *(a1 + 3);
      sub_23BF4A264(&qword_27E1E1F50);
      sub_23BFF9EE0();
      swift_getKeyPath();
      *&v107[0] = v106[0];
      sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
      sub_23BFF91C0();

      v26 = *(v106[0] + 24);
      v50 = *(v106[0] + 16);

      swift_getKeyPath();
      *&v107[0] = v9;
      sub_23BFF91C0();

      swift_beginAccess();
      sub_23BFA8544(v9 + 80, v65);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_23BFF91C0();

      v27 = *(v9 + 120);
      v28 = *(v9 + 128);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_23BFF91C0();

      v29 = *(v9 + 49);
      v61 = 0x656E696C6E69;
      v62 = 0xE600000000000000;
      v63 = v50;
      v64 = v26;
      v66 = v27;
      v67 = v28;
      v68 = v29;
      v69 = a2;
      v70 = a3;
      v72 = BYTE4(a4);
      v71 = a4;
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_23BFAF804(a2, a3, a4);
      sub_23BFF91C0();

      v30 = *(v9 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
      sub_23BFF9250();
      sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
      v59 = sub_23BFF9700();
      v60 = v31 & 1;
      v73 = v30;
      v74 = 0;
      sub_23BFAF818(&v59, v107);
      v109 = 1;
      sub_23BF4A264(&qword_27E1E20E0);
      sub_23BF4BE40(&qword_27E1E20D8, &qword_27E1E20E0);
      sub_23BFAF5E8();
      sub_23BFF9AC0();
      v32 = &qword_27E1E20D0;
      sub_23BF4B33C(v106, v107, &qword_27E1E20D0);
      v110 = 0;
      sub_23BF4A264(&qword_27E1E20D0);
LABEL_18:
      sub_23BF4A264(&qword_27E1E20F8);
      sub_23BFAF530();
      sub_23BFAF63C();
      sub_23BFF9AC0();
      sub_23BF4B2D4(v106, v32);
      v25 = &v59;
      return sub_23BFAF874(v25);
    }

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFF91C0();

    if ((*(v9 + 48) & 0xFE) == 2)
    {
      goto LABEL_6;
    }

    if (*(v9 + 48))
    {
      v34 = sub_23BFFACC0();

      if ((v34 & 1) == 0)
      {
LABEL_6:
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_23BFF91C0();

        if ((*(v9 + 48) & 0xFE) == 2)
        {
LABEL_7:
          *(a5 + 224) = 0u;
          *(a5 + 240) = 0u;
          *(a5 + 192) = 0u;
          *(a5 + 208) = 0u;
          *(a5 + 160) = 0u;
          *(a5 + 176) = 0u;
          *(a5 + 128) = 0u;
          *(a5 + 144) = 0u;
          *(a5 + 96) = 0u;
          *(a5 + 112) = 0u;
          *(a5 + 64) = 0u;
          *(a5 + 80) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *a5 = 0u;
          *(a5 + 16) = 0u;
          *(a5 + 256) = -1;
          return result;
        }

        if (*(v9 + 48))
        {
        }

        else
        {
          v41 = sub_23BFFACC0();

          if ((v41 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v107[0] = *(a1 + 3);
        sub_23BF4A264(&qword_27E1E1F50);
        sub_23BFF9EE0();
        swift_getKeyPath();
        *&v107[0] = v106[0];
        sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
        sub_23BFF91C0();

        v42 = *(v106[0] + 88);
        v52 = *(v106[0] + 80);

        swift_getKeyPath();
        *&v107[0] = v9;
        sub_23BFF91C0();

        swift_beginAccess();
        sub_23BFA8544(v9 + 80, v65);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_23BFF91C0();

        v43 = *(v9 + 120);
        v44 = *(v9 + 128);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_23BFF91C0();

        v45 = *(v9 + 49);
        v61 = 0x6574756E696DLL;
        v62 = 0xE600000000000000;
        v63 = v52;
        v64 = v42;
        v66 = v43;
        v67 = v44;
        v68 = v45;
        v69 = a2;
        v70 = a3;
        v72 = BYTE4(a4);
        v71 = a4;
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_23BFAF804(a2, a3, a4);
        sub_23BFF91C0();

        v46 = *(v9 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
        sub_23BFF9250();
        sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
        v59 = sub_23BFF9700();
        v60 = v47 & 1;
        v73 = v46;
        v74 = 0;
        sub_23BFAF818(&v59, v107);
        v108 = 1;
        sub_23BFAF5E8();
        sub_23BFF9AC0();
        v32 = &qword_27E1E20F8;
        sub_23BF4B33C(v106, v107, &qword_27E1E20F8);
        v110 = 1;
LABEL_17:
        sub_23BF4A264(&qword_27E1E20D0);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v107[0] = *(a1 + 3);
    sub_23BF4A264(&qword_27E1E1F50);
    sub_23BFF9EE0();
    swift_getKeyPath();
    *&v107[0] = v106[0];
    sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
    sub_23BFF91C0();

    v35 = *(v106[0] + 72);
    v51 = *(v106[0] + 64);

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFF91C0();

    swift_beginAccess();
    sub_23BFA8544(v9 + 80, v65);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFF91C0();

    v36 = *(v9 + 120);
    v37 = *(v9 + 128);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFF91C0();

    v38 = *(v9 + 49);
    v61 = 1920298856;
    v62 = 0xE400000000000000;
    v63 = v51;
    v64 = v35;
    v66 = v36;
    v67 = v37;
    v68 = v38;
    v69 = a2;
    v70 = a3;
    v72 = BYTE4(a4);
    v71 = a4;
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_23BFAF804(a2, a3, a4);
    sub_23BFF91C0();

    v39 = *(v9 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
    sub_23BFF9250();
    sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
    v59 = sub_23BFF9700();
    v60 = v40 & 1;
    v73 = v39;
    v74 = 0;
    sub_23BFAF818(&v59, v107);
    v108 = 0;
    sub_23BFAF5E8();
    sub_23BFF9AC0();
    v32 = &qword_27E1E20F8;
    sub_23BF4B33C(v106, v107, &qword_27E1E20F8);
    v110 = 1;
    goto LABEL_17;
  }

  v111 = *(a1 + 3);
  v107[0] = *(a1 + 3);
  sub_23BF4A264(&qword_27E1E1F50);
  sub_23BFF9EE0();
  v54 = a2;
  swift_getKeyPath();
  *&v107[0] = v106[0];
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v53 = a3;
  v11 = *(v106[0] + 32);
  v10 = *(v106[0] + 40);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  swift_beginAccess();
  sub_23BFA8544(v9 + 80, v97);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  v12 = *(v9 + 120);
  v13 = a4;
  v14 = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  v15 = *(v9 + 49);
  v93 = 1920298856;
  v94 = 0xE400000000000000;
  v95 = v11;
  v96 = v10;
  v97[5] = v12;
  v98 = v14;
  v99 = v15;
  v100 = a2;
  v101 = v53;
  v49 = HIDWORD(v13);
  v103 = BYTE4(v13);
  v102 = v13;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFAF804(a2, v53, v13);
  sub_23BFF91C0();

  v48 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition;
  v16 = *(v9 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
  sub_23BFF9250();
  sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
  v91 = sub_23BFF9700();
  v92 = v17 & 1;
  v104 = v16;
  v105 = 0;
  v107[0] = v111;
  sub_23BFF9EE0();
  v18 = v106[0];
  swift_getKeyPath();
  *&v107[0] = v18;
  sub_23BFF91C0();

  v20 = *(v18 + 80);
  v19 = *(v18 + 88);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  sub_23BFA8544(v9 + 80, v82);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  v21 = *(v9 + 120);
  LOBYTE(v10) = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFF91C0();

  v22 = *(v9 + 49);
  v78 = 0x6574756E696DLL;
  v79 = 0xE600000000000000;
  v80 = v20;
  v81 = v19;
  v82[5] = v21;
  v83 = v10;
  v84 = v22;
  v85 = v54;
  v86 = v53;
  v88 = v49;
  v87 = v55;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_23BFAF804(v54, v53, v55);
  sub_23BFF91C0();

  v23 = *(v9 + v48);
  v76 = sub_23BFF9700();
  v77 = v24 & 1;
  v89 = v23;
  v90 = 0;
  sub_23BFAF818(&v91, v58);
  sub_23BFAF818(&v76, v57);
  sub_23BFAF818(v58, &v59);
  sub_23BFAF818(v57, &v75);
  sub_23BFAF874(v57);
  sub_23BFAF874(v58);
  sub_23BF4B33C(&v59, v107, &qword_27E1E20E0);
  v109 = 0;
  sub_23BF4A264(&qword_27E1E20E0);
  sub_23BF4BE40(&qword_27E1E20D8, &qword_27E1E20E0);
  sub_23BFAF5E8();
  sub_23BFF9AC0();
  sub_23BF4B33C(v106, v107, &qword_27E1E20D0);
  v110 = 0;
  sub_23BF4A264(&qword_27E1E20D0);
  sub_23BF4A264(&qword_27E1E20F8);
  sub_23BFAF530();
  sub_23BFAF63C();
  sub_23BFF9AC0();
  sub_23BF4B2D4(v106, &qword_27E1E20D0);
  sub_23BF4B2D4(&v59, &qword_27E1E20E0);
  sub_23BFAF874(&v76);
  v25 = &v91;
  return sub_23BFAF874(v25);
}

uint64_t sub_23BFAD278(char a1)
{
  v3 = sub_23BF4A264(&qword_27E1E2110);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = sub_23BF4A264(&qword_27E1E2118);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  if (a1)
  {
    v9 = sub_23BFF9E60();
    sub_23BFAD7F0(v9, v8);

    sub_23BF4B33C(v8, v5, &qword_27E1E2118);
    swift_storeEnumTagMultiPayload();
    sub_23BF4A264(&qword_27E1E2078);
    sub_23BFAF6C0();
    v10 = sub_23BF4A2D0(&qword_27E1E2088);
    v11 = sub_23BFF9250();
    v12 = sub_23BFAF368();
    v13 = sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    swift_getOpaqueTypeConformance2();
    sub_23BFF9AC0();
    return sub_23BF4B2D4(v8, &qword_27E1E2118);
  }

  else
  {
    v15 = sub_23BF4A264(&qword_27E1E2078);
    (*(*(v15 - 8) + 16))(v5, v1, v15);
    swift_storeEnumTagMultiPayload();
    sub_23BFAF6C0();
    v16 = sub_23BF4A2D0(&qword_27E1E2088);
    v17 = sub_23BFF9250();
    v18 = sub_23BFAF368();
    v19 = sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_23BFF9AC0();
  }
}

unint64_t sub_23BFAD5E4()
{
  result = qword_27E1E1F90;
  if (!qword_27E1E1F90)
  {
    sub_23BF4A2D0(&qword_27E1E1F68);
    sub_23BF4BE40(&qword_27E1E1F98, &qword_27E1E1FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1F90);
  }

  return result;
}

unint64_t sub_23BFAD69C()
{
  result = qword_27E1E1FB0;
  if (!qword_27E1E1FB0)
  {
    sub_23BF4A2D0(&qword_27E1E1F70);
    sub_23BFAD728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1FB0);
  }

  return result;
}

unint64_t sub_23BFAD728()
{
  result = qword_27E1E1FB8;
  if (!qword_27E1E1FB8)
  {
    sub_23BF4A2D0(&qword_27E1E1FA8);
    sub_23BF4A2D0(&qword_27E1E1F68);
    sub_23BFAD5E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1FB8);
  }

  return result;
}

uint64_t sub_23BFAD7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_23BFF9710();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_23BFFA030();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = sub_23BF4A264(&qword_27E1E2078);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(sub_23BF4A264(&qword_27E1E2118) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_23BF4B33C(v33, v20, &qword_27E1E2138);
  sub_23BF4B33C(&v35, v20, &qword_27E1E2130);
  sub_23BF4B2D4(v40, &qword_27E1E2130);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_23BF4B2D4(v20, &qword_27E1E2138);
}

uint64_t sub_23BFAD9FC(double a1, double a2, double a3, double a4)
{
  v37 = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  slice.origin.x = v4;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v9 = *(*&v4 + 16) * a3 + a1;
  v10 = *(*&v4 + 24) * a4 + a2;
  v11 = *(*&v4 + 32) * a3;
  v12 = *(*&v4 + 40) * a4;
  swift_getKeyPath();
  sub_23BFF91C0();

  if (*(*&v4 + 48) == 3)
  {
    v38.origin.x = v9;
    v38.origin.y = v10;
    v38.size.width = v11;
    v38.size.height = v12;
    memset(&slice, 0, sizeof(slice));
    v13 = CGRectGetHeight(v38) * 0.5;
    memset(&remainder, 0, sizeof(remainder));
    v39.origin.x = v9;
    v39.origin.y = v10;
    v39.size.width = v11;
    v39.size.height = v12;
    CGRectDivide(v39, &slice, &remainder, v13, CGRectMinYEdge);
    y = slice.origin.y;
    height = slice.size.height;
    width = slice.size.width;
    x = slice.origin.x;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v40.origin.x = v9;
    v40.origin.y = v10;
    v40.size.width = v11;
    v40.size.height = v12;
    CGRectDivide(v40, &slice, &remainder, v13, CGRectMaxYEdge);
    v16 = slice.origin.x;
    v17 = slice.origin.y;
    v19 = slice.size.width;
    v18 = slice.size.height;
    swift_getKeyPath();
    slice.origin.x = v4;
    sub_23BFF91C0();

    if (*(*&v4 + 72) >= 2u && *(*&v4 + 56) != 0)
    {
      swift_getKeyPath();
      slice.origin.x = v4;
      sub_23BFF91C0();

      swift_beginAccess();
      sub_23BFA8544(*&v4 + 80, &slice);
      v20 = slice.size.height;
      v21 = v35;
      sub_23BF4C484(&slice, *&slice.size.height);
      v22 = (*(v21 + 8))(COERCE_CGFLOAT(*&v20), v21);
      sub_23BF4A9A4(&slice);
      [v22 descender];
      UIRoundToScale();
      v23 = v16;
      v25 = v24;
      [v22 ascender];
      UIRoundToScale();
      v27 = v26;
      [v22 capHeight];
      UIRoundToScale();
      v29 = v28;

      y = y - (v27 - v29) + -4.0;
      v30 = v27 - v25;
      v16 = v23;
      height = v30 + 8.0;
      v17 = v17 + v18 - v27 + -4.0;
      v18 = v30 + 8.0;
    }

    sub_23BF4A264(&qword_27E1E2228);
    result = swift_allocObject();
    *(result + 16) = xmmword_23C002D30;
    *(result + 32) = x;
    *(result + 40) = y;
    *(result + 48) = width;
    *(result + 56) = height;
    *(result + 64) = v16;
    *(result + 72) = v17;
    *(result + 80) = v19;
    *(result + 88) = v18;
  }

  else
  {
    sub_23BF4A264(&qword_27E1E2228);
    result = swift_allocObject();
    *(result + 16) = xmmword_23C001BB0;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v11;
    *(result + 56) = v12;
  }

  return result;
}

void sub_23BFADDD4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = [objc_opt_self() currentDevice];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (a2)
  {
    v16.origin.x = v9;
    v16.origin.y = v11;
    v16.size.width = v13;
    v16.size.height = v15;
    CGRectGetWidth(v16);
    if ((a4 & 1) == 0)
    {
      return;
    }

LABEL_6:
    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    CGRectGetHeight(v17);
    return;
  }

  if (a4)
  {
    goto LABEL_6;
  }
}

void (*sub_23BFADF84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23BFF9680();
  return sub_23BFAE00C;
}

void sub_23BFAE00C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

__n128 sub_23BFAE058@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 48);
  result = *(v3 + 57);
  *(a2 + 41) = result;
  return result;
}

double sub_23BFAE110(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_23BFB09F4(v3).n128_u64[0];
  return result;
}

uint64_t sub_23BFAE158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  swift_beginAccess();
  return sub_23BFA8544(v3 + 80, a2);
}

uint64_t sub_23BFAE218(uint64_t a1)
{
  sub_23BFA8544(a1, v2);
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91B0();

  return sub_23BF4A9A4(v2);
}

uint64_t sub_23BFAE2F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v5 = *(v3 + 128);
  *a2 = *(v3 + 120);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_23BFAE3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 156);
  *(a2 + 20) = v7;
  return sub_23BFA85A8(v4, v5, v6, v7);
}

uint64_t sub_23BFAE498(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  sub_23BFA85A8(*a1, v2, v3, v4);
  return sub_23BFB0F14(v1, v2, v3 | (v4 << 32));
}

uint64_t sub_23BFAE4F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v4 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_23BFA9F38(v3 + v4, a2);
}

uint64_t sub_23BFAE5C0(uint64_t a1, uint64_t *a2)
{
  v4 = _s15BackgroundStyleOMa();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BFA9F38(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91B0();

  return sub_23BFA9FAC(v6);
}

unint64_t sub_23BFAE6E8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v4 = *(v3 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle);
  *a2 = v4;
  return sub_23BFA9F9C(v4);
}

unint64_t sub_23BFAE79C(unint64_t *a1)
{
  v1 = *a1;
  sub_23BFA9F9C(*a1);
  return sub_23BFB13AC(v1);
}

uint64_t sub_23BFAE7D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v4 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_23BFF96E0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23BFAE8C8(uint64_t a1)
{
  v2 = sub_23BFF96E0();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_23BFB1630(v5);
}

double sub_23BFAE994@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  result = *(v3 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity);
  *a2 = result;
  return result;
}

uint64_t sub_23BFAEA6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  *a2 = *(v3 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
  return result;
}

uint64_t sub_23BFAEB1C()
{
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91B0();
}

__n128 sub_23BFAEBEC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  result = *(v3 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  *a2 = result;
  return result;
}

uint64_t sub_23BFAECC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_23BFAED88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_23BFAEE4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_23BFAEF10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_23BFAEFD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB08F4(&qword_27E1E1FC0, _s12TimeProviderCMa);
  sub_23BFF91C0();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_23BFAF098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_23BFAF0E0()
{
  result = qword_27E1E2020;
  if (!qword_27E1E2020)
  {
    sub_23BF4A2D0(&qword_27E1E1FF0);
    sub_23BFAF16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2020);
  }

  return result;
}

unint64_t sub_23BFAF16C()
{
  result = qword_27E1E2028;
  if (!qword_27E1E2028)
  {
    sub_23BF4A2D0(&qword_27E1E2030);
    sub_23BFAF1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2028);
  }

  return result;
}

unint64_t sub_23BFAF1F8()
{
  result = qword_27E1E2038;
  if (!qword_27E1E2038)
  {
    sub_23BF4A2D0(&qword_27E1E2040);
    sub_23BF4BE40(&qword_27E1E2048, &qword_27E1E2050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2038);
  }

  return result;
}

unint64_t sub_23BFAF2B0()
{
  result = qword_27E1E2058;
  if (!qword_27E1E2058)
  {
    sub_23BF4A2D0(&qword_27E1E1FE8);
    sub_23BF4BE40(&qword_27E1E2060, &qword_27E1E2068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2058);
  }

  return result;
}

unint64_t sub_23BFAF368()
{
  result = qword_27E1E2090;
  if (!qword_27E1E2090)
  {
    sub_23BF4A2D0(&qword_27E1E2088);
    sub_23BF4BE40(&qword_27E1E2098, &qword_27E1E20A0);
    sub_23BFAF420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2090);
  }

  return result;
}

unint64_t sub_23BFAF420()
{
  result = qword_27E1E20A8;
  if (!qword_27E1E20A8)
  {
    sub_23BF4A2D0(&qword_27E1E20B0);
    sub_23BFAF4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E20A8);
  }

  return result;
}

unint64_t sub_23BFAF4A4()
{
  result = qword_27E1E20B8;
  if (!qword_27E1E20B8)
  {
    sub_23BF4A2D0(&qword_27E1E20C0);
    sub_23BFAF530();
    sub_23BFAF63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E20B8);
  }

  return result;
}

unint64_t sub_23BFAF530()
{
  result = qword_27E1E20C8;
  if (!qword_27E1E20C8)
  {
    sub_23BF4A2D0(&qword_27E1E20D0);
    sub_23BF4BE40(&qword_27E1E20D8, &qword_27E1E20E0);
    sub_23BFAF5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E20C8);
  }

  return result;
}

unint64_t sub_23BFAF5E8()
{
  result = qword_27E1E20E8;
  if (!qword_27E1E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E20E8);
  }

  return result;
}

unint64_t sub_23BFAF63C()
{
  result = qword_27E1E20F0;
  if (!qword_27E1E20F0)
  {
    sub_23BF4A2D0(&qword_27E1E20F8);
    sub_23BFAF5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E20F0);
  }

  return result;
}

unint64_t sub_23BFAF6C0()
{
  result = qword_27E1E2120;
  if (!qword_27E1E2120)
  {
    sub_23BF4A2D0(&qword_27E1E2118);
    sub_23BF4A2D0(&qword_27E1E2088);
    sub_23BFF9250();
    sub_23BFAF368();
    sub_23BFB08F4(&qword_27E1E2100, MEMORY[0x277D6F1F0]);
    swift_getOpaqueTypeConformance2();
    sub_23BF4BE40(&qword_27E1E2128, &qword_27E1E2130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2120);
  }

  return result;
}

uint64_t sub_23BFAF804(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_23BFA85A8(result, a2, a3, SBYTE4(a3));
  }

  return result;
}

uint64_t sub_23BFAF8C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_23BFAF92C(uint64_t a1)
{
  v2 = sub_23BFF96E0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BFF9850();
}

uint64_t sub_23BFAF9F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_23BF4A2D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BFAFA78()
{
  result = qword_27E1E2190;
  if (!qword_27E1E2190)
  {
    sub_23BF4A2D0(&qword_27E1E2198);
    sub_23BFAFB30();
    sub_23BF4BE40(&qword_27E1E21A8, &qword_27E1E21B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2190);
  }

  return result;
}

unint64_t sub_23BFAFB30()
{
  result = qword_27E1E21A0;
  if (!qword_27E1E21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E21A0);
  }

  return result;
}

unint64_t sub_23BFAFB84()
{
  result = qword_27E1E21B8;
  if (!qword_27E1E21B8)
  {
    sub_23BF4A2D0(&qword_27E1E2170);
    sub_23BFAFB30();
    sub_23BF4BE40(&qword_27E1E21C0, &qword_27E1E21C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E21B8);
  }

  return result;
}

unint64_t sub_23BFAFC68()
{
  result = qword_27E1E21D0;
  if (!qword_27E1E21D0)
  {
    sub_23BF4A2D0(&qword_27E1E1F80);
    sub_23BF4A2D0(&qword_27E1E1F70);
    sub_23BFAD69C();
    swift_getOpaqueTypeConformance2();
    sub_23BFB08F4(&qword_27E1E1000, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E21D0);
  }

  return result;
}

unint64_t sub_23BFAFD64()
{
  result = qword_27E1E21D8;
  if (!qword_27E1E21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E21D8);
  }

  return result;
}

unint64_t sub_23BFAFDBC()
{
  result = qword_27E1E21E0;
  if (!qword_27E1E21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E21E0);
  }

  return result;
}

uint64_t sub_23BFAFE10(uint64_t (**a1)(uint64_t, char *, uint64_t), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v94 = a1;
  v12 = sub_23BF4A264(&qword_27E1E21E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v72 - v14);
  v98 = sub_23BFF9790();
  v16 = *(v98 - 8);
  v17 = (MEMORY[0x28223BE20])(v98);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v72 - v20;
  v21 = sub_23BF4A264(&qword_27E1E21F0);
  v22 = (MEMORY[0x28223BE20])(v21 - 8);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v72 - v25);
  v82 = sub_23BFF97B0();
  v27 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v93 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23BF4A264(&qword_27E1E21F8);
  MEMORY[0x28223BE20](v29 - 8);
  v91 = &v72 - v30;
  v92 = sub_23BF4A264(&qword_27E1E2200);
  MEMORY[0x28223BE20](v92);
  v32 = &v72 - v31;
  v101.origin.x = a2;
  v101.origin.y = a3;
  v101.size.width = a4;
  v101.size.height = a5;
  result = CGRectIsEmpty(v101);
  if ((result & 1) == 0)
  {
    v87 = v16;
    v97 = v12;
    v80 = v19;
    v79 = v15;
    v84 = sub_23BFAD9FC(a2, a3, a4, a5);
    swift_getKeyPath();
    v34 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model___observationRegistrar;
    v100 = a7;
    v35 = sub_23BFB08F4(&qword_27E1E24B0, _s5ModelCMa);
    v95 = v34;
    v96 = v35;
    sub_23BFF91C0();

    v36 = *(a7 + 72) == 1;
    v83.size.height = a5;
    v83.size.width = a4;
    v89 = v13;
    if (v36)
    {
      v38 = *(a7 + 56);
      v37 = *(a7 + 64);
      sub_23BF4A264(&qword_27E1E2220);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_23C002D30;
      *(v39 + 32) = v38;
      *(v39 + 40) = v37;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    v100 = a7;
    sub_23BFF91C0();

    v40 = *(a7 + 56);
    if (*(a7 + 72))
    {
      v41 = 0.0;
    }

    else
    {
      v41 = *(a7 + 64);
    }

    if (*(a7 + 72))
    {
      v40 = 0.0;
    }

    v88 = v40;
    v42 = v91;
    v43 = v82;
    (*(v27 + 16))(v91, v94, v82);
    (*(v27 + 32))(v93, v42, v43);
    v44 = MEMORY[0x277CDF7F8];
    sub_23BFB08F4(&qword_27E1E2208, MEMORY[0x277CDF7F8]);
    sub_23BFFA410();
    v77 = *(v92 + 36);
    *(v32 + v77) = 0;
    v93 = *(sub_23BF4A264(&qword_27E1E2210) + 36);
    v45 = sub_23BFB08F4(&qword_27E1E2218, v44);
    v91 = 0;
    v78 = (v87 + 16);
    v94 = (v87 + 32);
    v90 = (v89 + 7);
    v89 += 6;
    v74 = v84 + 32;
    v92 = v39;
    v73 = v39 + 32;
    v86 = (v87 + 8);
    v83.origin.y = a3;
    v83.origin.x = a2;
    v46 = v97;
    v47 = v80;
    v87 = v45;
    v75 = v41;
    v76 = v26;
    while (1)
    {
      sub_23BFFA5F0();
      if (*&v93[v32] == v100)
      {
        v48 = 1;
      }

      else
      {
        v49 = v24;
        v50 = sub_23BFFA610();
        v51 = v81;
        v52 = v98;
        (*v78)(v81);
        v50(&v100, 0);
        sub_23BFFA600();
        v53 = *(v46 + 48);
        v54 = v79;
        v55 = v91;
        *v79 = v91;
        result = (*v94)(v54 + v53, v51, v52);
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          __break(1u);
          return result;
        }

        v91 = v57;
        *(v32 + v77) = v57;
        v24 = v49;
        sub_23BF82A20(v54, v49, &qword_27E1E21E8);
        v48 = 0;
        v47 = v80;
        v26 = v76;
      }

      (*v90)(v24, v48, 1, v46);
      sub_23BF82A20(v24, v26, &qword_27E1E21F0);
      if ((*v89)(v26, 1, v46) == 1)
      {
        sub_23BF4B2D4(v32, &qword_27E1E2200);
      }

      v58 = *v26;
      (*v94)(v47, v26 + *(v46 + 48), v98);
      v59 = 0.0;
      if (v58 < 0)
      {
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
      }

      else
      {
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
        if (v58 < *(v84 + 16))
        {
          v63 = (v74 + 32 * v58);
          v59 = *v63;
          v60 = v63[1];
          v61 = v63[2];
          v62 = v63[3];
        }

        if ((v58 & 0x8000000000000000) == 0 && v58 < *(v92 + 16))
        {
          MidY = *(v73 + 8 * v58);
          goto LABEL_26;
        }
      }

      v103.origin.x = v59;
      v103.origin.y = v60;
      v103.size.width = v61;
      v103.size.height = v62;
      MidY = CGRectGetMidY(v103);
LABEL_26:
      swift_getKeyPath();
      v100 = a7;
      sub_23BFF91C0();

      if (*(a7 + 49))
      {
        v65 = v59;
        v66 = v60;
        v67 = v61;
        v68 = v62;
        if (*(a7 + 49) == 1)
        {
          MidX = CGRectGetMidX(*&v65);
          sub_23BFFA0A0();
        }

        else
        {
          MidX = CGRectGetMinX(*&v65);
          sub_23BFFA0B0();
        }
      }

      else
      {
        v104.origin.x = v59;
        v104.origin.y = v60;
        v104.size.width = v61;
        v104.size.height = v62;
        MidX = CGRectGetMaxX(v104);
        sub_23BFFA0C0();
      }

      v46 = v97;
      v71 = COERCE_UNSIGNED_INT64(fabs(v41 + MidY)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE_UNSIGNED_INT64(fabs(v88 + MidX)) <= 0x7FEFFFFFFFFFFFFFLL && !v71)
      {
        v85 = v70;
        swift_getKeyPath();
        v100 = a7;
        sub_23BFF91C0();

        if (*(a7 + 49) - 1 >= 2)
        {
          CGRectGetWidth(v83);
          v105.origin.x = v59;
          v105.origin.y = v60;
          v105.size.width = v61;
          v105.size.height = v62;
          CGRectGetMaxX(v105);
        }

        CGRectGetWidth(v83);
        v102.origin.x = v59;
        v102.origin.y = v60;
        v102.size.width = v61;
        v102.size.height = v62;
        CGRectGetHeight(v102);
        LOBYTE(v100) = 0;
        v99 = 0;
        sub_23BFF9780();
        v46 = v97;
        v41 = v75;
      }

      (*v86)(v47, v98);
    }
  }

  return result;
}

uint64_t sub_23BFB08F4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_23BFB093C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_23BFB09F4(uint64_t a1)
{
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v7[0] = v1[3];
  *(v7 + 9) = *(v1 + 57);
  if (sub_23BFA9BA0(v6, a1))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
  }

  else
  {
    v5 = *(a1 + 16);
    v1[1] = *a1;
    v1[2] = v5;
    v1[3] = *(a1 + 32);
    result = *(a1 + 41);
    *(v1 + 57) = result;
  }

  return result;
}

__n128 sub_23BFB0B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v2;
  *(a1 + 48) = *(a2 + 32);
  result = *(a2 + 41);
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_23BFB0B4C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  swift_beginAccess();
  return sub_23BFA8544(v1 + 80, a1);
}

uint64_t sub_23BFB0C0C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_23BFB2080((a1 + 80), a2);
  return swift_endAccess();
}

uint64_t sub_23BFB0C70()
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  return *(v0 + 120);
}

uint64_t sub_23BFB0D14(uint64_t result, char a2)
{
  if ((*(v2 + 128) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 120) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 120) = *&result;
    *(v2 + 128) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91B0();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_23BFB0E4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v1 = *(v0 + 136);
  sub_23BFA85A8(v1, *(v3 + 144), *(v3 + 152), *(v3 + 156));
  return v1;
}

uint64_t sub_23BFB0F14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  v9 = *(v3 + 136);
  v8 = *(v3 + 144);
  v10 = *(v3 + 152);
  if (!*(v3 + 156))
  {
    if (!BYTE4(a3))
    {

      v12 = sub_23BFF9E00();
      sub_23BFA85DC(v9, v8, v10, 0);
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
    sub_23BFA85DC(a1, a2, a3, v7);
  }

  if (*(v3 + 156) != 1)
  {
    if (BYTE4(a3) == 2 && !(a2 | a1) && !a3)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (BYTE4(a3) != 1)
  {
    goto LABEL_20;
  }

  v11 = v9 == a1 && v8 == a2;
  if (!v11 && (sub_23BFFACC0() & 1) == 0 || *&v10 != *&a3)
  {
    goto LABEL_20;
  }

LABEL_17:
  v13 = *(v3 + 136);
  v14 = *(v3 + 144);
  v15 = *(v3 + 152);
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  v16 = *(v3 + 156);
  *(v3 + 156) = v7;

  return sub_23BFA85DC(v13, v14, v15, v16);
}

uint64_t sub_23BFB114C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIDWORD(a4);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  v9 = *(a1 + 156);
  *(a1 + 156) = v5;
  sub_23BFA85A8(a2, a3, a4, v5);
  return sub_23BFA85DC(v6, v7, v8, v9);
}

uint64_t sub_23BFB11C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v3 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_23BFA9F38(v5 + v3, a1);
}

uint64_t sub_23BFB128C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_23BFB229C(a2, a1 + v4);
  return swift_endAccess();
}

unint64_t sub_23BFB12F8()
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v1 = *(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle);
  sub_23BFA9F9C(v1);
  return v1;
}

unint64_t sub_23BFB13AC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle;
  v4 = *(v1 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle);
  if (!v4)
  {
    if (!a1)
    {
      v5 = 0;
      goto LABEL_10;
    }

LABEL_13:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
    sub_23BFAA06C(a1);
  }

  if (v4 != 1)
  {
    if (a1 >= 2)
    {

      v6 = sub_23BFF9E00();
      sub_23BFAA06C(v4);
      if (v6)
      {
        v5 = *(v1 + v3);
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 1)
  {
    goto LABEL_13;
  }

  v5 = 1;
LABEL_10:
  *(v1 + v3) = a1;

  return sub_23BFAA06C(v5);
}

uint64_t sub_23BFB1538@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  v3 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v4 = sub_23BFF96E0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_23BFB1630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BFF96E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_23BFB2330(&qword_27E1E2278, MEMORY[0x277CDF3E0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_23BFFA2B0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_23BFB18D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_23BFF96E0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_23BFB196C()
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  return *(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity);
}

uint64_t sub_23BFB1A14(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity) == a1)
  {
    *(v1 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
  }

  return result;
}

uint64_t sub_23BFB1B34()
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  return *(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__timeTransition);
}

double sub_23BFB1BEC()
{
  swift_getKeyPath();
  sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
  sub_23BFF91C0();

  return *(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
}

uint64_t sub_23BFB1C98(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize);
  if (*(v2 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize) == a1 && *(v2 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB2330(&qword_27E1E24B0, _s5ModelCMa);
    sub_23BFF91B0();
  }

  return result;
}

uint64_t sub_23BFB1DC4()
{
  sub_23BF4A9A4(v0 + 80);
  sub_23BFA85DC(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 156));
  sub_23BFA9FAC(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__backgroundStyle);
  sub_23BFAA06C(*(v0 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle));
  v1 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__colorScheme;
  v2 = sub_23BFF96E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model___observationRegistrar;
  v4 = sub_23BFF91E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t _s5ModelCMa()
{
  result = qword_27E1E2268;
  if (!qword_27E1E2268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BFB1F2C()
{
  result = _s15BackgroundStyleOMa();
  if (v1 <= 0x3F)
  {
    result = sub_23BFF96E0();
    if (v2 <= 0x3F)
    {
      result = sub_23BFF91E0();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *sub_23BFB2080(uint64_t *result, uint64_t *a2)
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
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

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
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_23BFB229C(uint64_t a1, uint64_t a2)
{
  v4 = _s15BackgroundStyleOMa();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_23BFB2300()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__scaleEffectSize) = result;
  return result;
}

double sub_23BFB2318()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__opacity) = result;
  return result;
}

uint64_t sub_23BFB2330(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BFB2394()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle);
  *(v2 + OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel5Model__maskStyle) = v1;
  sub_23BFA9F9C(v1);
  return sub_23BFAA06C(v3);
}

void sub_23BFB2404()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 120) = *(v0 + 24);
  *(v1 + 128) = v2;
}

__n128 sub_23BFB2418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v1 + 57) = *(v2 + 41);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_23BFB2438(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BFB245C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BFB24B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23BFB250C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 sub_23BFB253C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_23BFB2550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23BFB2598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BFB25E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

uint64_t _s15BackgroundStyleOMa()
{
  result = qword_27E1E2280;
  if (!qword_27E1E2280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BFB26A8()
{
  result = sub_23BFF9F60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BFB2714(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v27[2] = a2;
  v7 = sub_23BFF9FD0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v27 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v27 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v27 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v27 - v21;
  v23 = sub_23BFFA000();
  v24 = MEMORY[0x28223BE20](v23);
  if (BYTE4(a3))
  {
    v27[1] = v24;
    if (BYTE4(a3) == 1)
    {
      v27[0] = a3;
      LOBYTE(v28) = 1;
      sub_23BFF9FC0();
      sub_23BFF9F90();
      v25 = *(v8 + 8);
      v25(v17, v7);
      LOBYTE(v28) = 1;
      sub_23BFF9FC0();
      sub_23BFF9F90();
      v25(v11, v7);
      sub_23BFF9FA0();
      v25(v14, v7);
      MEMORY[0x23EEC2C70](v17, a4);
      v25(v17, v7);
      v25(v20, v7);
      sub_23BFF9FF0();
      v25(v22, v7);
    }

    else
    {
      sub_23BFF9FE0();
    }
  }

  else
  {
    v28 = a1;
    sub_23BFB3224();

    v28 = sub_23BFF9EA0();
  }

  return sub_23BFF9750();
}

void sub_23BFB2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  if (BYTE4(a6))
  {
    if (BYTE4(a6) == 1)
    {
      if (BYTE4(a3) == 1)
      {

        sub_23BFF9200();
        return;
      }

      goto LABEL_11;
    }

    if (BYTE4(a3) != 2 || a2 | a1 || a3)
    {
LABEL_11:
      if (a7 >= 0.5)
      {
        sub_23BFA85A8(a1, a2, a3, SBYTE4(a3));
      }

      else
      {
        sub_23BFA85A8(a4, a5, a6, SBYTE4(a6));
      }
    }
  }

  else
  {
    if (BYTE4(a3))
    {
      goto LABEL_11;
    }

    sub_23BFB31D8();

    v7 = sub_23BFFA840();

    v8 = sub_23BFFA840();
    v9 = CLKUIInterpolateBetweenColors();

    if (v9)
    {
      sub_23BFF9DD0();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23BFB2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!BYTE4(a3))
  {
    v7 = 0x5F726F6C6F63;
    v5 = sub_23BFF9DF0();
    MEMORY[0x23EEC3090](v5);

    return v7;
  }

  if (BYTE4(a3) == 1)
  {
    v7 = 0;
    MEMORY[0x23EEC3090](0x5F7373616C67, 0xE600000000000000);
    MEMORY[0x23EEC3090](a1, a2);
    MEMORY[0x23EEC3090](95, 0xE100000000000000);
    sub_23BFFA5A0();
    return v7;
  }

  return 0x746E6172626976;
}

uint64_t sub_23BFB2D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a4))
  {
    if (BYTE4(a4) == 1)
    {
      MEMORY[0x23EEC3A60](0);
      sub_23BFFA3A0();
      return sub_23BFFADC0();
    }

    else
    {
      return MEMORY[0x23EEC3A60](1);
    }
  }

  else
  {
    MEMORY[0x23EEC3A60](2);

    return sub_23BFF9E40();
  }
}

uint64_t sub_23BFB2DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFB2C08(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 20) << 32));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23BFB2DE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  sub_23BFFAD90();
  sub_23BFB2D04(v6, v1, v2, v3 | (v4 << 32));
  return sub_23BFFADF0();
}

uint64_t sub_23BFB2E5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  sub_23BFFAD90();
  sub_23BFB2D04(v6, v1, v2, v3 | (v4 << 32));
  return sub_23BFFADF0();
}

uint64_t sub_23BFB2EB8(float *a1, float *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 20);
  if (*(a1 + 20))
  {
    v6 = *(a2 + 1);
    v7 = a2[4];
    if (*(a1 + 20) == 1)
    {
      if (v5 == 1)
      {
        v8 = a1[4];
        v9 = v3 == v4 && *(a1 + 1) == v6;
        if (v9 || (sub_23BFFACC0() & 1) != 0)
        {
          return v8 == v7;
        }
      }

      return 0;
    }

    return v5 == 2 && (v6 | v4) == 0 && LODWORD(v7) == 0;
  }

  else
  {
    if (*(a2 + 20))
    {
      return 0;
    }

    return sub_23BFF9E00();
  }
}

uint64_t sub_23BFB2F84()
{
  v1 = *v0;
  sub_23BFFAD90();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EEC3A60](2);
      sub_23BFF9E40();
      return sub_23BFFADF0();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EEC3A60](v2);
  return sub_23BFFADF0();
}

uint64_t sub_23BFB2FF8()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x23EEC3A60](v1);
  }

  if (*v0 == 1)
  {
    v1 = 1;
    return MEMORY[0x23EEC3A60](v1);
  }

  MEMORY[0x23EEC3A60](2);

  return sub_23BFF9E40();
}

uint64_t sub_23BFB3078()
{
  v1 = *v0;
  sub_23BFFAD90();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EEC3A60](2);
      sub_23BFF9E40();
      return sub_23BFFADF0();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EEC3A60](v2);
  return sub_23BFFADF0();
}

uint64_t sub_23BFB30E8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_23BFF9E00();
}

unint64_t sub_23BFB312C()
{
  result = qword_27E1E2290;
  if (!qword_27E1E2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2290);
  }

  return result;
}

unint64_t sub_23BFB3184()
{
  result = qword_27E1E2298;
  if (!qword_27E1E2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2298);
  }

  return result;
}

unint64_t sub_23BFB31D8()
{
  result = qword_27E1E0D80;
  if (!qword_27E1E0D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0D80);
  }

  return result;
}

unint64_t sub_23BFB3224()
{
  result = qword_27E1E22A0;
  if (!qword_27E1E22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E22A0);
  }

  return result;
}

uint64_t sub_23BFB3278(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___NTKParmesanTimeLayout_alignment;
  v5 = *(a1 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  v81 = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR___NTKParmesanTimeLayout_scale;
  v7 = *(a1 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BFE5910(v5, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  if (!v17)
  {
    __break(1u);
    goto LABEL_35;
  }

  v18 = v17;
  [v17 screenBounds];
  v20 = v19;
  v22 = v21;

  v23 = v9 / v20;
  v24 = v11 / v22;
  v25 = v13 / v20;
  v26 = v15 / v22;
  v27 = nullsub_2(0.0);
  v76 = v27;
  if (v5 == 1)
  {
    v28 = v24 + v26;
    if (v7 == 3)
    {
      v28 = v27;
      v29 = v23 + v25 * 0.5;
    }

    else
    {
      v29 = 0.0;
    }

    if (v7 != 3)
    {
      v27 = v24 + -0.15;
    }

    v79 = v27;
    v80 = v28;
    if (v7 == 3)
    {
      v30 = v23 + -0.15;
    }

    else
    {
      v30 = 0.0;
    }
  }

  else
  {
    if (v5)
    {
LABEL_36:
      sub_23BF4A264(&unk_27E1E1BD0);
      result = sub_23BFFACB0();
      __break(1u);
      return result;
    }

    if (v7 == 3)
    {
      v31 = v27;
    }

    else
    {
      v31 = v24;
    }

    if (v7 == 3)
    {
      v29 = v23 + v25 * 0.5;
    }

    else
    {
      v29 = 0.0;
    }

    if (v7 != 3)
    {
      v27 = v24 + v26 + 0.15;
    }

    v79 = v27;
    v80 = v31;
    if (v7 == 3)
    {
      v30 = v23 + v25 + 0.15;
    }

    else
    {
      v30 = 0.0;
    }
  }

  v77 = a2;
  v32 = [v16 currentDevice];
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  [v32 screenBounds];

  v34 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v35 = sub_23BFB3904();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v34;
  [v42 setFrame_];
  sub_23BF4A264(&qword_27E1E11E8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C002D30;
  v44 = objc_opt_self();
  v45 = [v44 clearColor];
  v46 = [v45 CGColor];

  type metadata accessor for CGColor(0);
  v48 = v47;
  *(v43 + 56) = v47;
  *(v43 + 32) = v46;
  v49 = [v44 blackColor];
  v50 = [v49 CGColor];

  *(v43 + 88) = v48;
  *(v43 + 64) = v50;
  v51 = sub_23BFFA450();

  [v42 setColors_];

  [v42 setStartPoint_];
  [v42 setEndPoint_];
  v52 = v42;
  MEMORY[0x23EEC3100]();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BFFA480();
  }

  sub_23BFFA4A0();
  v53 = v81;
  if (*(a1 + v6) == 3 || *(a1 + v4) || (v77 | 2) != 3)
  {
  }

  else
  {
    v55 = sub_23BFB3904();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = sub_23BFB3904();
    v64 = v63;
    v78 = v65;
    v67 = v66;
    [v52 setStartPoint_];
    [v52 setEndPoint_];
    [v52 setFrame_];

    v68 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
    [v68 setStartPoint_];
    [v68 setEndPoint_];
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_23C002D30;
    v70 = [v44 clearColor];
    v71 = [v70 CGColor];

    *(v69 + 56) = v48;
    *(v69 + 32) = v71;
    v72 = [v44 blackColor];
    v73 = [v72 CGColor];

    *(v69 + 88) = v48;
    *(v69 + 64) = v73;
    v74 = sub_23BFFA450();

    [v68 setColors_];

    v75 = v68;
    MEMORY[0x23EEC3100]([v75 setFrame_]);
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();

    return v81;
  }

  return v53;
}

uint64_t sub_23BFB3918()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23BFB3998(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BFB3AC8()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_23BFB3B48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BFB3C78()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_23BFB3CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_23BFB3D74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BFB3EA4()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_23BFB3F24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BFB4054()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_23BFB40D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80) == a1 && *(v2 + 88) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BFB4204()
{
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_23BFB4284(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_23BFFACC0() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BFB48B8();
    sub_23BFF91B0();
  }
}

id sub_23BFB43B4(void *a1)
{
  v2 = v1;
  result = [a1 timeText];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  v6 = sub_23BFFA300();
  v8 = v7;

  sub_23BFB3998(v6, v8);
  result = [a1 timeSubstringToSeparatorText];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = result;
  v10 = sub_23BFFA300();
  v12 = v11;

  sub_23BFB3B48(v10, v12);
  result = [a1 timeSubstringToSeparatorTextWithZeroPadding_];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = result;
  v14 = sub_23BFFA300();
  v16 = v15;

  sub_23BFB3D74(v14, v16);
  swift_getKeyPath();
  sub_23BFB48B8();
  sub_23BFF91C0();

  v17 = *(v2 + 32);
  v18 = *(v2 + 40);
  v32 = v17;
  v33 = v18;

  if (sub_23BFFA3B0() >= 2)
  {
    do
    {
      if (!((v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v17 & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if (sub_23BFFA400() == 48 && v20 == 0xE100000000000000)
      {
      }

      else
      {
        v21 = sub_23BFFACC0();

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      if ((v18 & 0x2000000000000000) != 0)
      {
        if ((v18 & 0xF00000000000000) == 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      else if ((v17 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_23;
      }

      sub_23BFFA400();

      result = sub_23BFFA3C0();
      if (v22)
      {
        goto LABEL_24;
      }

      sub_23BFFA390();
      v17 = v32;
      v18 = v33;
    }

    while (sub_23BFFA3B0() > 1);
  }

  sub_23BFB3F24(v17, v18);
  result = [a1 timeSubstringFromSeparatorText];
  if (!result)
  {
    goto LABEL_28;
  }

  v23 = result;
  v24 = sub_23BFFA300();
  v26 = v25;

  sub_23BFB40D4(v24, v26);
  result = AXClockTimeVoiceOverSpokenStringForWatchFaces();
  if (result)
  {
    v27 = result;
    v28 = [result string];

    v29 = sub_23BFFA300();
    v31 = v30;

    sub_23BFB4284(v29, v31);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23BFB46F4()
{

  v1 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel12TimeProvider___observationRegistrar;
  v2 = sub_23BFF91E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s12TimeProviderCMa()
{
  result = qword_27E1E22B0;
  if (!qword_27E1E22B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BFB4814()
{
  result = sub_23BFF91E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23BFB48B8()
{
  result = qword_27E1E1FC0;
  if (!qword_27E1E1FC0)
  {
    _s12TimeProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1FC0);
  }

  return result;
}