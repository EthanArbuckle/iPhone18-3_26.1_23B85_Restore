id AudiogramDebugViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2417E416C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AudiogramDebugViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramDebugViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2417DCB6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7465726163 && a2 == 0xE500000000000000 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemBrownColor;
  }

  else if (a1 == 0x625F6465736F6C63 && a2 == 0xEE0074656B636172 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemIndigoColor;
  }

  else if (a1 == 0x635F6465736F6C63 && a2 == 0xEB000000006C6965 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemOrangeColor;
  }

  else if (a1 == 0x635F6465736F6C63 && a2 == 0xEE006E6F72766568 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemGreenColor;
  }

  else if (a1 == 111 && a2 == 0xE100000000000000 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemRedColor;
  }

  else if (a1 == 0x6172625F6E65706FLL && a2 == 0xEC00000074656B63 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemMintColor;
  }

  else if (a1 == 0x6965635F6E65706FLL && a2 == 0xE90000000000006CLL || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemYellowColor;
  }

  else if (a1 == 0x6568635F6E65706FLL && a2 == 0xEC0000006E6F7276 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemTealColor;
  }

  else if (a1 == 0x657261757173 && a2 == 0xE600000000000000 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemCyanColor;
  }

  else if (a1 == 0x656C676E61697274 && a2 == 0xE800000000000000 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemPurpleColor;
  }

  else if (a1 == 118 && a2 == 0xE100000000000000 || (sub_2417E450C() & 1) != 0)
  {
    v4 = &selRef_systemDarkGrayColor;
  }

  else
  {
    v4 = &selRef_systemBlueColor;
    if ((a1 != 120 || a2 != 0xE100000000000000) && (sub_2417E450C() & 1) == 0)
    {
      v4 = &selRef_systemLightGrayColor;
    }
  }

  v5 = [objc_opt_self() *v4];

  return v5;
}

id sub_2417DCF78(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_selectedSymbols;
    swift_beginAccess();
    v10 = *(v3 + v9);
    objc_allocWithZone(type metadata accessor for AIAudiogramSymbolChoiceButton());

    v11 = a2;
    v12 = v3;
    v13 = sub_2417D95F4(v11, v10);
    v14 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v12 action:*a3];
    [v13 addGestureRecognizer_];

    v15 = *(v12 + v4);
    *(v12 + v4) = v13;
    v6 = v13;

    v5 = 0;
  }

  v16 = v5;
  return v6;
}

char *AIAudiogramSymbolsSelectionViewController.init(title:delegate:selectedSymbols:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_selectedSymbols] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_spacingBetweenButtons] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_percentageOfStackViewSize] = 0x3FE4CCCCCCCCCCCDLL;
  v7 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_continueButton;
  v8 = objc_opt_self();
  *&v4[v7] = [v8 boldButton];
  v9 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_firstRowButtons;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v10 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_secondRowButtons;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v11 = &v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_learnMoreURL];
  *v11 = 0xD00000000000004ALL;
  *(v11 + 1) = 0x80000002417ECE60;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController____lazy_storage___leftEarXButton] = 0;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController____lazy_storage___rightEarCircleButton] = 0;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController____lazy_storage___leftEarSquareButton] = 0;
  *&v4[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController____lazy_storage___rightEarTriangleButton] = 0;
  v12 = sub_2417E416C();

  v32.receiver = v4;
  v32.super_class = type metadata accessor for AIAudiogramSymbolsSelectionViewController();
  v13 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v12, 0, 0, 2);

  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_selectedSymbols;
  swift_beginAccess();
  *&v13[v14] = a4;
  v15 = v13;

  v16 = [v8 boldButton];
  v17 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_continueButton;
  v18 = *&v15[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_continueButton];
  *&v15[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_continueButton] = v16;
  v19 = v16;

  v20 = sub_2417E416C();
  v21 = aiLocString(v20);

  if (!v21)
  {
    sub_2417E419C();
    v21 = sub_2417E416C();
  }

  [v19 setTitle:v21 forState:{0, a3}];

  v22 = *&v15[v17];
  v23 = v15;
  [v22 addTarget:v23 action:sel_selectFrequencies_ forControlEvents:64];
  v24 = [v23 buttonTray];
  [v24 addButton_];

  v25 = *&v15[v17];
  v26 = *&v13[v14];
  if (v26 >> 62)
  {
    v31 = *&v15[v17];
    v27 = sub_2417E442C();
    v25 = v31;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v25 setEnabled_];
  v28 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v23 action:sel_cancelTapped_];

  v29 = [v23 navigationItem];
  [v29 setRightBarButtonItem_];

  swift_unknownObjectRelease();
  return v23;
}

void sub_2417DD648()
{
  v1 = v0;
  v74.receiver = v0;
  v74.super_class = type metadata accessor for AIAudiogramSymbolsSelectionViewController();
  objc_msgSendSuper2(&v74, sel_viewDidLoad);
  v2 = [v0 headerView];
  LODWORD(v3) = 1036831949;
  [v2 setTitleHyphenationFactor_];

  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v1 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v5 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_firstRowButtons;
  [*&v1[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_firstRowButtons] setAxis_];
  [*&v1[v5] setDistribution_];
  [*&v1[v5] setAlignment_];
  [*&v1[v5] setSpacing_];
  v6 = *&v1[v5];
  v7 = sub_2417DCF18();
  [v6 addArrangedSubview_];

  v8 = *&v1[v5];
  v9 = sub_2417DCF30();
  [v8 addArrangedSubview_];

  v10 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_secondRowButtons;
  [*&v1[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_secondRowButtons] setAxis_];
  [*&v1[v10] setDistribution_];
  [*&v1[v10] setAlignment_];
  [*&v1[v10] setSpacing_];
  v11 = *&v1[v10];
  v12 = sub_2417DCF48();
  [v11 addArrangedSubview_];

  v13 = *&v1[v10];
  v14 = sub_2417DCF60();
  [v13 addArrangedSubview_];

  v15 = sub_2417E416C();
  v16 = aiYodelLocString(v15);

  sub_2417E419C();
  MEMORY[0x245CEF750](32, 0xE100000000000000);
  v17 = sub_2417E416C();
  v18 = aiYodelLocString(v17);

  v19 = sub_2417E419C();
  v21 = v20;

  MEMORY[0x245CEF750](v19, v21);

  v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v23 = sub_2417E416C();
  v24 = [v22 initWithString_];

  v25 = sub_2417E416C();
  v26 = sub_2417E416C();
  v27 = aiYodelLocString(v26);

  if (!v27)
  {
    sub_2417E419C();
    v27 = sub_2417E416C();
  }

  v28 = [v25 rangeOfString_];
  v30 = v29;

  v31 = *MEMORY[0x277D740E8];
  v32 = sub_2417E416C();
  [v24 addAttribute:v31 value:v32 range:{v28, v30}];

  v33 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  [v33 setScrollEnabled_];
  [v33 setEditable_];
  [v33 setSelectable_];
  v73 = v24;
  [v33 setAttributedText_];
  v34 = [objc_opt_self() preferredFontForTextStyle_];
  [v33 setFont_];

  v35 = objc_opt_self();
  v36 = v33;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor_];

  v72 = v35;
  v38 = [v35 secondaryLabelColor];
  [v36 setTextColor_];

  [v36 setAdjustsFontForContentSizeCategory_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6A0);
  v39 = swift_allocObject();
  v40 = *&v1[v5];
  v41 = *&v1[v10];
  *(v39 + 16) = xmmword_2417E8DB0;
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  *(v39 + 48) = v36;
  v42 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2417D9544(0, &unk_27E54B7D0);
  v43 = v40;
  v44 = v41;
  v45 = sub_2417E422C();

  v46 = [v42 initWithArrangedSubviews_];

  [v46 setAxis_];
  [v46 setDistribution_];
  [v46 setAlignment_];
  v47 = v46;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  [v47 setSpacing_];
  [v47 setCustomSpacing:*&v1[v10] afterView:30.0];
  v48 = [v1 contentView];
  [v48 addSubview_];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2417E8E20;
  v50 = [v47 topAnchor];
  v51 = [v1 contentView];
  v52 = [v51 topAnchor];

  v53 = [v50 constraintEqualToAnchor:v52 constant:20.0];
  *(v49 + 32) = v53;
  v54 = [v47 bottomAnchor];
  v55 = [v1 contentView];
  v56 = [v55 bottomAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v49 + 40) = v57;
  v58 = [v47 centerXAnchor];
  v59 = [v1 contentView];
  v60 = [v59 centerXAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v49 + 48) = v61;
  v62 = [v47 widthAnchor];

  v63 = [v1 view];
  if (v63)
  {
    v64 = v63;
    v65 = objc_opt_self();
    v66 = [v64 widthAnchor];

    v67 = [v62 constraintEqualToAnchor:v66 multiplier:0.65];
    *(v49 + 56) = v67;
    sub_2417D9544(0, &qword_27E54B7E0);
    v68 = sub_2417E422C();

    [v65 activateConstraints_];

    v69 = [v1 view];
    if (v69)
    {
      v70 = v69;

      v71 = [v72 secondarySystemBackgroundColor];
      [v70 setBackgroundColor_];

      sub_2417DE11C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2417DE11C()
{
  v1 = sub_2417DCF18();
  v2 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  v3 = [*&v1[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol] text];
  if (v3)
  {
    v4 = v3;
    v5 = [*&v1[v2] font];
    if (v5)
    {
      v6 = v5;
      [v1 frame];
      v8 = v7;
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B858);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2417E8670;
      v12 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = sub_2417D9544(0, &qword_27E54B860);
      *(inited + 40) = v6;
      v13 = v12;
      v14 = v6;
      sub_2417D9090(inited);
      swift_setDeallocating();
      sub_2417DF0A0(inited + 32);
      type metadata accessor for Key(0);
      sub_2417DF108();
      v15 = sub_2417E414C();

      [v4 boundingRectWithSize:32 options:v15 attributes:0 context:{v8, v10}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v106.origin.x = v17;
      v106.origin.y = v19;
      v106.size.width = v21;
      v106.size.height = v23;
      Width = CGRectGetWidth(v106);

      goto LABEL_6;
    }
  }

  Width = 0.0;
LABEL_6:
  v25 = sub_2417DCF30();
  v26 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  v27 = [*&v25[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol] text];
  v28 = 0.0;
  v29 = 0.0;
  if (v27)
  {
    v30 = v27;
    v31 = [*&v25[v26] font];
    if (v31)
    {
      v32 = v31;
      [v25 frame];
      v34 = v33;
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B858);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_2417E8670;
      v38 = *MEMORY[0x277D740A8];
      *(v37 + 32) = *MEMORY[0x277D740A8];
      *(v37 + 64) = sub_2417D9544(0, &qword_27E54B860);
      *(v37 + 40) = v32;
      v39 = v38;
      v40 = v32;
      sub_2417D9090(v37);
      swift_setDeallocating();
      sub_2417DF0A0(v37 + 32);
      type metadata accessor for Key(0);
      sub_2417DF108();
      v41 = sub_2417E414C();

      [v30 boundingRectWithSize:32 options:v41 attributes:0 context:{v34, v36}];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v107.origin.x = v43;
      v107.origin.y = v45;
      v107.size.width = v47;
      v107.size.height = v49;
      v29 = CGRectGetWidth(v107);
      v30 = v40;
    }
  }

  v50 = sub_2417DCF48();
  v51 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  v52 = [*&v50[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol] text];
  if (v52)
  {
    v53 = v52;
    v54 = [*&v50[v51] font];
    if (v54)
    {
      v55 = v54;
      [v50 frame];
      v57 = v56;
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B858);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_2417E8670;
      v61 = *MEMORY[0x277D740A8];
      *(v60 + 32) = *MEMORY[0x277D740A8];
      *(v60 + 64) = sub_2417D9544(0, &qword_27E54B860);
      *(v60 + 40) = v55;
      v62 = v61;
      v63 = v55;
      sub_2417D9090(v60);
      swift_setDeallocating();
      sub_2417DF0A0(v60 + 32);
      type metadata accessor for Key(0);
      sub_2417DF108();
      v64 = sub_2417E414C();

      [v53 boundingRectWithSize:32 options:v64 attributes:0 context:{v57, v59}];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v108.origin.x = v66;
      v108.origin.y = v68;
      v108.size.width = v70;
      v108.size.height = v72;
      v28 = CGRectGetWidth(v108);
      v53 = v63;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B850);
  v73 = swift_initStackObject();
  *(v73 + 16) = xmmword_2417E8670;
  v74 = sub_2417DCF60();
  v75 = OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol;
  v76 = [*&v74[OBJC_IVAR____TtC18AudiogramIngestion29AIAudiogramSymbolChoiceButton_labelForSymbol] text];
  if (!v76)
  {
LABEL_24:

    *(v73 + 32) = 0;

    if (Width <= v29)
    {
      if (v29 > v28)
      {
        if (v29 > 0.0)
        {
          v97 = v29;
        }

        else
        {
          v97 = 0.0;
        }

        goto LABEL_36;
      }
    }

    else if (Width > v28)
    {
      if (Width > 0.0)
      {
        v97 = Width;
      }

      else
      {
        v97 = 0.0;
      }

      goto LABEL_36;
    }

    if (v28 > 0.0)
    {
      v97 = v28;
    }

    else
    {
      v97 = 0.0;
    }

    goto LABEL_36;
  }

  v77 = v76;
  v78 = [*&v74[v75] font];
  if (!v78)
  {

    goto LABEL_24;
  }

  v79 = v78;
  [v74 frame];
  v81 = v80;
  v83 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B858);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_2417E8670;
  v85 = *MEMORY[0x277D740A8];
  *(v84 + 32) = *MEMORY[0x277D740A8];
  *(v84 + 64) = sub_2417D9544(0, &qword_27E54B860);
  *(v84 + 40) = v79;
  v86 = v85;
  v87 = v79;
  sub_2417D9090(v84);
  swift_setDeallocating();
  sub_2417DF0A0(v84 + 32);
  type metadata accessor for Key(0);
  sub_2417DF108();
  v88 = sub_2417E414C();

  [v77 boundingRectWithSize:32 options:v88 attributes:0 context:{v81, v83}];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;

  v109.origin.x = v90;
  v109.origin.y = v92;
  v109.size.width = v94;
  v109.size.height = v96;
  v97 = CGRectGetWidth(v109);

  *(v73 + 32) = v97;

  if (Width > v29)
  {
    v98 = Width;
  }

  else
  {
    v98 = v29;
  }

  if (v98 <= v28)
  {
    v98 = v28;
  }

  if (v98 > v97)
  {
    v97 = v98;
  }

LABEL_36:
  v99 = [v0 view];
  if (v99)
  {
    v100 = v99;
    [v99 frame];
    v102 = v101;

    v103 = (v102 * 0.65 + -10.0) * 0.5 * 0.7 < v97;
    [*&v0[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_firstRowButtons] setAxis_];
    [*&v0[OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_secondRowButtons] setAxis_];
    v104 = [v0 view];
    if (v104)
    {
      v105 = v104;
      [v104 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2417DE954(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = a1;
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for AIAudiogramSymbolChoiceButton();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_2417DED8C(v7);
      v8 = v6;
    }

    else
    {
      v8 = v4;
      v4 = v9;
      v9 = v6;
    }
  }
}

id AIAudiogramSymbolsSelectionViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2417E416C();

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

  v13 = sub_2417E416C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2417E416C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id AIAudiogramSymbolsSelectionViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2417E416C();

  if (a4)
  {
    v12 = sub_2417E416C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id AIAudiogramSymbolsSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AIAudiogramSymbolsSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2417DED8C(char *a1)
{
  v2 = v1;
  [a1 setSelected_];
  v4 = [a1 layer];
  v5 = [a1 isSelected];
  v6 = objc_opt_self();
  v7 = &selRef_blueColor;
  if (!v5)
  {
    v7 = &selRef_lightGrayColor;
  }

  v8 = [v6 *v7];
  v9 = [v8 CGColor];

  [v4 setBorderColor_];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = [a1 isSelected];
  v12 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_selectedSymbols;
  if (v11)
  {
    swift_beginAccess();
    v13 = v10;
    MEMORY[0x245CEF790]();
    if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2417E425C();
    }

    sub_2417E427C();
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v14 = *(v2 + v12);

    v15 = sub_2417D0758(v10, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      swift_beginAccess();
      v18 = sub_2417D1684(v15);
      swift_endAccess();
    }
  }

  sub_2417D9AA8();
  v19 = *(v2 + OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_continueButton);
  v20 = OBJC_IVAR____TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController_selectedSymbols;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21 >> 62)
  {
    v22 = sub_2417E442C();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setEnabled_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_2417D9544(0, &qword_27E54B440);

    v25 = sub_2417E422C();

    [v24 updateSelectedSymbolsWithSelectedSymbols_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2417DF0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2417DF108()
{
  result = qword_27E54B3D0;
  if (!qword_27E54B3D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B3D0);
  }

  return result;
}

unint64_t sub_2417DF170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_2417DF264()
{
  v1 = v0;
  sub_2417E436C();
  MEMORY[0x245CEF750](0xD00000000000001BLL, 0x80000002417ED230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B3F0);
  v2 = swift_allocObject();
  v3 = *(v0 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence);
  v4 = MEMORY[0x277D83A90];
  *(v2 + 16) = xmmword_2417E8670;
  v5 = MEMORY[0x277D83B08];
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v6 = sub_2417E41AC();
  v8 = v7;

  MEMORY[0x245CEF750](v6, v8);

  MEMORY[0x245CEF750](0x3D7373616C6320, 0xE700000000000000);
  v9 = *(v0 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className);
  v10 = *(v0 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className + 8);

  MEMORY[0x245CEF750](v9, v10);

  MEMORY[0x245CEF750](0x3D72746320, 0xE500000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2417E8680;
  v12 = v1 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect;
  MidX = CGRectGetMidX(*(v1 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect));
  CGRectGetMidY(*v12);
  v14 = MEMORY[0x277D85048];
  *(v11 + 56) = MEMORY[0x277D85048];
  v15 = sub_2417E024C();
  *(v11 + 64) = v15;
  *(v11 + 32) = MidX;
  CGRectGetMidX(*v12);
  MidY = CGRectGetMidY(*v12);
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = MidY;
  v17 = sub_2417E41AC();
  v19 = v18;

  MEMORY[0x245CEF750](v17, v19);

  MEMORY[0x245CEF750](0x3D657A697320, 0xE600000000000000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2417E8680;
  *(v20 + 56) = v14;
  *(v20 + 64) = v15;
  v21 = *(v12 + 24);
  *(v20 + 32) = *(v12 + 16);
  *(v20 + 96) = v14;
  *(v20 + 104) = v15;
  *(v20 + 72) = v21;
  v22 = sub_2417E41AC();
  v24 = v23;

  MEMORY[0x245CEF750](v22, v24);

  MEMORY[0x245CEF750](15904, 0xE200000000000000);
  return 0;
}

uint64_t sub_2417DF588()
{
  v1 = 25705;
  v2 = 1952671090;
  if (*v0 != 2)
  {
    v2 = 0x6D614E7373616C63;
  }

  if (*v0)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2417DF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2417E2878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2417DF62C(uint64_t a1)
{
  v2 = sub_2417E01B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2417DF668(uint64_t a1)
{
  v2 = sub_2417E01B0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2417DF6A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindNetModelBoundingBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MindNetModelBoundingBox()
{
  result = qword_27E54B868;
  if (!qword_27E54B868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2417DF7B0()
{
  result = sub_2417E409C();
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

uint64_t sub_2417DF860(void *a1)
{
  v2 = sub_2417E409C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B898);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2417E01B0();
  v10 = v15[0];
  sub_2417E456C();
  v11 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);
  LOBYTE(v16) = 0;
  sub_2417E0204(&qword_27E54B8A0, MEMORY[0x277CC95F0]);
  v12 = v15[1];
  sub_2417E44CC();
  if (v12)
  {
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    LOBYTE(v16) = 1;
    sub_2417E44BC();
    v13 = *(v10 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect + 16);
    v16 = *(v10 + OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect);
    v17 = v13;
    v18 = 2;
    type metadata accessor for CGRect(0);
    sub_2417E0204(&qword_27E54B620, type metadata accessor for CGRect);
    sub_2417E44CC();
    LOBYTE(v16) = 3;

    sub_2417E449C();
    (*(v7 + 8))(v9, v6);
  }
}

char *sub_2417DFBE8(void *a1)
{
  v3 = v1;
  v5 = sub_2417E409C();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B880);
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v28 - v8;
  v33 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
  sub_2417E408C();
  v10 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence;
  *&v3[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence] = 0;
  v11 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2417E01B0();
  v32 = v9;
  sub_2417E455C();
  if (v2)
  {
    v12 = v5;
    v17 = v33;
    v16 = v34;
    __swift_destroy_boxed_opaque_existential_0(v35);
    (*(v16 + 8))(&v3[v17], v12);
    type metadata accessor for MindNetModelBoundingBox();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v10;
    v29 = v7;
    LOBYTE(v37) = 0;
    sub_2417E0204(&qword_27E54B890, MEMORY[0x277CC95F0]);
    v14 = v30;
    v15 = v31;
    sub_2417E448C();
    v19 = v33;
    swift_beginAccess();
    (*(v34 + 40))(&v3[v19], v14, v5);
    swift_endAccess();
    LOBYTE(v37) = 1;
    sub_2417E447C();
    *&v3[v13] = v20;
    type metadata accessor for CGRect(0);
    v39 = 2;
    sub_2417E0204(&qword_27E54B630, type metadata accessor for CGRect);
    sub_2417E448C();
    v21 = &v3[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
    v22 = v38;
    *v21 = v37;
    *(v21 + 1) = v22;
    LOBYTE(v37) = 3;
    v23 = sub_2417E445C();
    v24 = v29;
    v25 = &v3[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className];
    *v25 = v23;
    v25[1] = v26;
    v27 = type metadata accessor for MindNetModelBoundingBox();
    v36.receiver = v3;
    v36.super_class = v27;
    v3 = objc_msgSendSuper2(&v36, sel_init);
    (*(v24 + 8))(v32, v15);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  return v3;
}

uint64_t sub_2417E0060@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v5 = sub_2417E409C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_2417E00EC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MindNetModelBoundingBox());
  result = sub_2417DFBE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2417E01B0()
{
  result = qword_27E54B888;
  if (!qword_27E54B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B888);
  }

  return result;
}

uint64_t sub_2417E0204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2417E024C()
{
  result = qword_27E54B8A8;
  if (!qword_27E54B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B8A8);
  }

  return result;
}

char *sub_2417E02A0(char *a1, int64_t a2, char a3)
{
  result = sub_2417E02C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2417E02C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void sub_2417E03C4(void *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v6 = &unk_278CED000;
  v7 = [a1 shape];
  sub_2417D9544(0, &qword_27E54B440);
  v8 = sub_2417E424C();

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v9 = MEMORY[0x245CEF900](1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_38;
    }

    v9 = *(v8 + 40);
  }

  v10 = v9;

  v11 = sub_2417E42AC();

  v12 = [a1 v6[242]];
  v13 = sub_2417E424C();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x245CEF900](2, v13);
  }

  else
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = *(v13 + 48);
  }

  v15 = v14;

  v16 = sub_2417E42AC();

  if (__OFSUB__(a3, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = (v11 - 1);
  if (__OFSUB__(v11, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (__OFADD__(a3, 1))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((a3 + 1) < v17)
  {
    v17 = a3 + 1;
  }

  v35 = v17;
  if (__OFSUB__(a4, 1))
  {
    goto LABEL_42;
  }

  v18 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__OFADD__(a4, 1))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v19 = (a3 - 1) & ~((a3 - 1) >> 63);
  if ((a4 + 1) >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = a4 + 1;
  }

  if (v17 < v19)
  {
    goto LABEL_45;
  }

  v34 = (a4 - 1) & ~((a4 - 1) >> 63);
  if (v20 < v34)
  {
    goto LABEL_45;
  }

  v32 = a3;
  v33 = a4;
  v21 = MEMORY[0x277D84F90];
  v6 = 0x277CCA000;
  a3 = &unk_278CED000;
  for (i = (a4 - 1) & ~((a4 - 1) >> 63); ; i = v34)
  {
    while (1)
    {
      sub_2417E43DC();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_2417E43BC();
      sub_2417E43EC();
      sub_2417E43FC();
      sub_2417E43CC();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_2417E43BC();
      sub_2417E43EC();
      sub_2417E43FC();
      sub_2417E43CC();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_2417E43BC();
      sub_2417E43EC();
      sub_2417E43FC();
      sub_2417E43CC();
      v24 = sub_2417E422C();

      v25 = [a1 objectForKeyedSubscript_];

      [v25 floatValue];
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2417D39CC(0, *(v21 + 2) + 1, 1, v21);
      }

      a4 = *(v21 + 2);
      v28 = *(v21 + 3);
      v8 = a4 + 1;
      if (a4 >= v28 >> 1)
      {
        v21 = sub_2417D39CC((v28 > 1), a4 + 1, 1, v21);
      }

      *(v21 + 2) = v8;
      *&v21[4 * a4 + 32] = v27;
      if (v20 == i)
      {
        break;
      }

      v23 = __OFADD__(i++, 1);
      if (v23)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    if (v19 == v35)
    {
      break;
    }

    v23 = __OFADD__(v19++, 1);
    if (v23)
    {
      goto LABEL_34;
    }
  }

  v29 = sub_2417DF170(v21);

  if ((v29 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2417E8EA0;
    *(inited + 32) = a2;
    *(inited + 40) = v32;
    *(inited + 48) = v33;
    v31 = sub_2417CDBDC(inited);
    swift_setDeallocating();
    [v31 floatValue];
  }
}

void sub_2417E0844(unint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v194 = sub_2417E409C();
  v8 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B8C0);
  v182 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v172 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B8B0);
  v17 = sub_2417E25D8(&qword_27E54B8C8, &qword_27E54B8B0);
  sub_2417E42BC();
  v205 = a1;
  sub_2417E42CC();
  if (v208[0] == v210)
  {
    return;
  }

  v203 = v8;
  v18 = *(sub_2417E411C() + 16);

  if (v18 != 4)
  {
    return;
  }

  v201 = v16;
  v204 = v13;
  v173 = v15;
  v174 = v10;
  v20 = 0;
  v197 = 0;
  v199 = *(a2 + 16);
  v191 = a2 + 32;
  v21 = (a2 + 40);
  v22 = v208;
  v202 = MEMORY[0x277D84F90];
  v200 = (a2 + 40);
LABEL_4:
  v23 = &v21[16 * v20];
  while (1)
  {
    v24 = v199;
    if (v199 == v20)
    {
      break;
    }

    if (v20 >= v199)
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_160;
    }

    v18 = &v172;
    v17 = *v23;
    v208[0] = *(v23 - 8);
    v208[1] = v17;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    *(&v172 - 2) = v208;

    v25 = v197;
    v26 = sub_2417D12DC(sub_2417E2580, (&v172 - 4), a3);
    v197 = v25;

    ++v20;
    v23 += 16;
    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2417D38C8(0, *(v202 + 2) + 1, 1, v202);
        v202 = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v202 + 2);
      v27 = *(v202 + 3);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2417D38C8((v27 > 1), v28 + 1, 1, v202);
        v202 = isUniquelyReferenced_nonNull_native;
      }

      v21 = v200;
      v29 = v202;
      *(v202 + 2) = v28 + 1;
      *&v29[8 * v28 + 32] = v20 - 1;
      v20 = v10;
      goto LABEL_4;
    }
  }

  v30 = v173;
  sub_2417E412C();
  sub_2417D9544(0, &qword_27E54B8D0);
  v23 = v182;
  (*(v182 + 16))(v204, v30, v174);
  sub_2417E25D8(&qword_27E54B8D8, &qword_27E54B8C0);
  v31 = sub_2417E42EC();
  v17 = v31;
  a3 = &unk_278CED000;
  v10 = &selRef_floatValue;
  if (!*(v202 + 2))
  {
    goto LABEL_21;
  }

  v32 = [v31 shape];
  v201 = sub_2417D9544(0, &qword_27E54B440);
  v22 = sub_2417E424C();

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_174;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_176;
  }

  for (i = *(v22 + 32); ; i = MEMORY[0x245CEF900](0, v22))
  {
    v34 = i;

    v35 = [v34 *(v10 + 800)];

    if (__OFADD__(v24, 8))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      return;
    }

    if (v35 == (v24 + 8))
    {
      v196 = 1;
      v18 = v174;
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
LABEL_21:
      v36 = [v17 *(a3 + 1936)];
      v201 = sub_2417D9544(0, &qword_27E54B440);
      v22 = sub_2417E424C();

      if ((v22 & 0xC000000000000001) != 0)
      {
LABEL_166:
        v37 = MEMORY[0x245CEF900](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_168;
        }

        v37 = *(v22 + 32);
      }

      v38 = v37;

      v22 = [v38 *(v10 + 800)];

      if (__OFADD__(v24, 4))
      {
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        v40 = MEMORY[0x245CEF900](1, v22);
        goto LABEL_30;
      }

      v18 = v174;
      v10 = MEMORY[0x277D84F90];
      if (v22 != v24 + 4)
      {

        (*(v23 + 8))(v173, v18);
        return;
      }

      v196 = 0;
    }

    v39 = [v17 *(a3 + 1936)];
    sub_2417D9544(0, &qword_27E54B440);
    v22 = sub_2417E424C();

    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_169;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_172;
    }

    v40 = *(v22 + 40);
LABEL_30:
    v41 = v40;

    v42 = sub_2417E42AC();

    v43 = [v17 *(a3 + 1936)];
    v22 = sub_2417E424C();

    if ((v22 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v44 = *(v22 + 48);
      goto LABEL_33;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    ;
  }

  v44 = MEMORY[0x245CEF900](2, v22);
LABEL_33:
  v45 = v44;

  v195 = sub_2417E42AC();

  v210 = v10;
  if (v42 < 0)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (!v42)
  {
LABEL_155:

    goto LABEL_156;
  }

  v46 = v195;
  if (v195 < 0)
  {
    goto LABEL_177;
  }

  v204 = 0;
  v200 = v202 + 32;
  v189 = v195;
  v184 = v24 + 2;
  v185 = v24 + 1;
  v183 = v24 + 3;
  v187 = (v203 + 8);
  v188 = (v203 + 24);
  v181 = v24 + 4;
  v172 = v42;
  v186 = v42;
  v179 = v24 + 5;
  v47 = __OFADD__(v24, 5);
  v180 = v47;
  v177 = v24 + 6;
  v48 = __OFADD__(v24, 6);
  v178 = v48;
  v175 = v24 + 7;
  v49 = __OFADD__(v24, 7);
  v176 = v49;
  v18 = &selRef_floatValue;
  v198 = xmmword_2417E8EA0;
  v190 = MEMORY[0x277D84F90];
  v203 = v17;
  while (2)
  {
    if (v46)
    {
      v50 = 0;
      v192 = v204;
      do
      {
        v205 = v50;
        if (v196)
        {
          if (v24)
          {
            v208[0] = MEMORY[0x277D84F90];
            sub_2417E02A0(0, v24, 0);
            v51 = 0;
            v23 = v208[0];
            do
            {
              v52 = *(v202 + 2);
              v53 = v200;
              do
              {
                v54 = 0.0;
                if (!v52)
                {
                  v50 = v205;
                  goto LABEL_61;
                }

                v55 = *v53;
                v53 += 8;
                --v52;
              }

              while (v55 != v51);
              v209 = MEMORY[0x277D84F90];
              sub_2417E43DC();
              [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
              [v56 initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v57 = objc_allocWithZone(MEMORY[0x277CCABB0]);
              v50 = v205;
              [v57 initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v58 = sub_2417E422C();

              v59 = v203;
              v60 = [v203 objectForKeyedSubscript_];

              [v60 *v18];
              v62 = v61;

              if (v62 >= a4)
              {
                sub_2417E03C4(v59, v51, v204, v50);
                if (v62 == v63)
                {
                  v54 = v62;
                }
              }

LABEL_61:
              v208[0] = v23;
              v65 = *(v23 + 16);
              v64 = *(v23 + 24);
              if (v65 >= v64 >> 1)
              {
                sub_2417E02A0((v64 > 1), v65 + 1, 1);
                v23 = v208[0];
              }

              ++v51;
              *(v23 + 16) = v65 + 1;
              *(v23 + 4 * v65 + 32) = v54;
            }

            while (v51 != v24);
            v208[0] = MEMORY[0x277D84F90];
            sub_2417E02A0(0, v24, 0);
            v78 = 0;
            v17 = v208[0];
            do
            {
              v79 = *(v202 + 2);
              v80 = v200;
              while (v79)
              {
                v81 = *v80;
                v80 += 8;
                --v79;
                if (v81 == v78)
                {
                  goto LABEL_80;
                }
              }

              v209 = MEMORY[0x277D84F90];
              sub_2417E43DC();
              [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v82 = objc_allocWithZone(MEMORY[0x277CCABB0]);
              [v82 initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v50 = v205;
              [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              sub_2417E43BC();
              sub_2417E43EC();
              sub_2417E43FC();
              sub_2417E43CC();
              v83 = sub_2417E422C();

              v84 = [v203 objectForKeyedSubscript_];

              [v84 *v18];
              v86 = v85;

              if (v86 < a4 || (sub_2417E03C4(v203, v78, v204, v50), v86 != v87))
              {
LABEL_80:
                v86 = 0.0;
              }

              v208[0] = v17;
              v89 = v17[2];
              v88 = v17[3];
              if (v89 >= v88 >> 1)
              {
                sub_2417E02A0((v88 > 1), v89 + 1, 1);
                v17 = v208[0];
              }

              ++v78;
              v17[2] = v89 + 1;
              *(v17 + v89 + 8) = v86;
              v24 = v199;
            }

            while (v78 != v199);
          }

          else
          {
            v23 = MEMORY[0x277D84F90];
            v17 = MEMORY[0x277D84F90];
          }

          v22 = *(v23 + 16);
          if (v22)
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (!v24)
          {
            v17 = MEMORY[0x277D84F90];
            v22 = *(MEMORY[0x277D84F90] + 16);
            if (v22)
            {
              v23 = MEMORY[0x277D84F90];
LABEL_93:
              a3 = 0;
              for (j = 0; j != v22; ++j)
              {
                if (a3 >= v22)
                {
                  __break(1u);
                  goto LABEL_155;
                }

                if (*(v23 + 32 + 4 * a3) < *(v23 + 4 * j + 32))
                {
                  a3 = j;
                }
              }

              if (a3 < v24)
              {
                goto LABEL_99;
              }

              v10 = 0xE700000000000000;
            }

            else
            {
              a3 = 0;
              v10 = 0xE700000000000000;
              v23 = MEMORY[0x277D84F90];
            }

LABEL_104:
            v92 = 0x6E776F6E6B6E75;
            if (a3 >= v22)
            {
              goto LABEL_161;
            }

            goto LABEL_105;
          }

          v208[0] = MEMORY[0x277D84F90];
          sub_2417E02A0(0, v24, 0);
          v66 = 0;
          v23 = v208[0];
          do
          {
            v209 = MEMORY[0x277D84F90];
            sub_2417E43DC();
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_2417E43BC();
            sub_2417E43EC();
            sub_2417E43FC();
            sub_2417E43CC();
            v67 = objc_allocWithZone(MEMORY[0x277CCABB0]);
            v68 = v204;
            [v67 initWithInteger_];
            sub_2417E43BC();
            sub_2417E43EC();
            sub_2417E43FC();
            sub_2417E43CC();
            v50 = v205;
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_2417E43BC();
            sub_2417E43EC();
            sub_2417E43FC();
            sub_2417E43CC();
            v69 = sub_2417E422C();

            v70 = v203;
            v71 = [v203 objectForKeyedSubscript_];

            [v71 floatValue];
            v73 = v72;

            v74 = 0.0;
            if (v73 >= a4)
            {
              sub_2417E03C4(v70, v66, v68, v50);
              if (v73 == v75)
              {
                v74 = v73;
              }
            }

            v208[0] = v23;
            v77 = *(v23 + 16);
            v76 = *(v23 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_2417E02A0((v76 > 1), v77 + 1, 1);
              v23 = v208[0];
            }

            ++v66;
            *(v23 + 16) = v77 + 1;
            *(v23 + 4 * v77 + 32) = v74;
          }

          while (v24 != v66);
          v17 = MEMORY[0x277D84F90];
          v18 = &selRef_floatValue;
          v22 = *(v23 + 16);
          if (v22)
          {
            goto LABEL_93;
          }
        }

        if (!v24)
        {
          v10 = 0xE700000000000000;
          a3 = v22;
          goto LABEL_104;
        }

        a3 = v22;
LABEL_99:
        v91 = (v191 + 16 * a3);
        v92 = *v91;
        v10 = v91[1];

        if (a3 >= v22)
        {
          goto LABEL_161;
        }

LABEL_105:
        v93 = *(v23 + 4 * a3 + 32);

        if (v93 >= a4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B8);
          inited = swift_initStackObject();
          *(inited + 16) = v198;
          v95 = v204;
          *(inited + 32) = v24;
          *(inited + 40) = v95;
          *(inited + 48) = v50;
          v96 = sub_2417CDBDC(inited);
          v205 = v92;
          v97 = v96;
          swift_setDeallocating();
          [v97 floatValue];
          v99 = v98;

          v100 = swift_initStackObject();
          *(v100 + 16) = v198;
          *(v100 + 32) = v185;
          *(v100 + 40) = v95;
          *(v100 + 48) = v50;
          v101 = sub_2417CDBDC(v100);
          swift_setDeallocating();
          [v101 floatValue];
          v103 = v102;

          v104 = (v50 + v103) / v189;
          v105 = (v192 + v99) / v186;
          v106 = swift_initStackObject();
          *(v106 + 16) = v198;
          *(v106 + 32) = v184;
          *(v106 + 40) = v95;
          *(v106 + 48) = v50;
          v107 = sub_2417CDBDC(v106);
          swift_setDeallocating();
          [v107 floatValue];
          v109 = v108;

          v110 = swift_initStackObject();
          *(v110 + 16) = v198;
          *(v110 + 32) = v183;
          *(v110 + 40) = v95;
          v18 = &selRef_floatValue;
          *(v110 + 48) = v50;
          v111 = sub_2417CDBDC(v110);
          swift_setDeallocating();
          [v111 floatValue];
          v113 = v112;

          v114 = v113;
          v115 = v104 - v113 * 0.5;
          v116 = v105 - v109 * 0.5;
          if (v115 < 0.0)
          {
            v115 = 0.0;
          }

          v117 = fmin(v115, 1.0);
          if (v116 < 0.0)
          {
            v118 = 0.0;
          }

          else
          {
            v118 = v116;
          }

          v119 = fmin(v118, 1.0);
          if (v113 < 0.0)
          {
            v114 = 0.0;
          }

          v120 = fmin(v114, 1.0);
          if (v109 < 0.0)
          {
            v121 = 0.0;
          }

          else
          {
            v121 = v109;
          }

          v122 = fmin(v121, 1.0);
          v123 = v193;
          sub_2417E408C();
          v124 = type metadata accessor for MindNetModelBoundingBox();
          v125 = objc_allocWithZone(v124);
          v126 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
          sub_2417E408C();
          v127 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence;
          *&v125[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence] = 0;
          swift_beginAccess();
          v128 = &v125[v126];
          v23 = v194;
          (*v188)(v128, v123, v194);
          swift_endAccess();
          *&v125[v127] = v93;
          v129 = &v125[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
          *v129 = v117;
          v129[1] = v119;
          v129[2] = v120;
          v129[3] = v122;
          v130 = &v125[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className];
          *v130 = v205;
          v130[1] = v10;
          v206.receiver = v125;
          v206.super_class = v124;
          v131 = objc_msgSendSuper2(&v206, sel_init);
          (*v187)(v123, v23);
          v132 = v131;
          MEMORY[0x245CEF790]();
          if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2417E425C();
          }

          sub_2417E427C();

          v190 = v210;
          v24 = v199;
          if (!v196)
          {
LABEL_49:
            swift_bridgeObjectRelease_n();
            goto LABEL_50;
          }
        }

        else
        {

          if (!v196)
          {
            goto LABEL_49;
          }
        }

        v133 = v17[2];

        if (!v133)
        {
          goto LABEL_135;
        }

        v22 = v17[2];
        if (v22)
        {
          a3 = 0;
          for (k = 0; k != v22; k = (k + 1))
          {
            if (a3 >= v22)
            {
              __break(1u);
              goto LABEL_158;
            }

            if (*(v17 + a3 + 8) < *(v17 + k + 8))
            {
              a3 = k;
            }
          }

          if (a3 >= v24)
          {
            goto LABEL_132;
          }
        }

        else
        {
          a3 = 0;
          if (v24 <= 0)
          {
LABEL_132:
            v136 = 0xE700000000000000;
            v10 = 0x6E776F6E6B6E75;
            goto LABEL_133;
          }
        }

        v135 = (v191 + 16 * a3);
        v10 = *v135;
        v136 = v135[1];

LABEL_133:
        if (a3 >= v22)
        {
          goto LABEL_162;
        }

        v137 = *(v17 + a3 + 8);

        if (v137 < a4)
        {
LABEL_135:

          goto LABEL_50;
        }

        v205 = v10;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B6B8);
        a3 = swift_initStackObject();
        *(a3 + 16) = v198;
        v10 = v18;
        v22 = v203;
        v18 = v204;
        *(a3 + 32) = v181;
        *(a3 + 40) = v18;
        *(a3 + 48) = v50;
        v17 = sub_2417CDBDC(a3);
        swift_setDeallocating();
        [v17 (v10 + 1992)];
        v139 = v138;

        v140 = swift_initStackObject();
        *(v140 + 16) = v198;
        if (v180)
        {
          goto LABEL_163;
        }

        *(v140 + 32) = v179;
        *(v140 + 40) = v18;
        *(v140 + 48) = v50;
        a3 = v140;
        v17 = sub_2417CDBDC(v140);
        swift_setDeallocating();
        [v17 (v10 + 1992)];
        v142 = v141;

        v143 = swift_initStackObject();
        *(v143 + 16) = v198;
        if (v178)
        {
          goto LABEL_164;
        }

        *(v143 + 32) = v177;
        *(v143 + 40) = v18;
        *(v143 + 48) = v50;
        a3 = v143;
        v17 = sub_2417CDBDC(v143);
        swift_setDeallocating();
        [v17 (v10 + 1992)];
        v145 = v144;

        v146 = swift_initStackObject();
        *(v146 + 16) = v198;
        if (v176)
        {
          goto LABEL_165;
        }

        v147 = (v50 + v142) / v189;
        v148 = v192 + v139;
        *(v146 + 32) = v175;
        *(v146 + 40) = v18;
        *(v146 + 48) = v50;
        v149 = v148 / v186;
        v150 = sub_2417CDBDC(v146);
        swift_setDeallocating();
        [v150 (v10 + 1992)];
        v152 = v151;

        v153 = v152;
        v154 = v147 - v152 * 0.5;
        if (v154 < 0.0)
        {
          v154 = 0.0;
        }

        v155 = fmin(v154, 1.0);
        if (v149 - v145 * 0.5 < 0.0)
        {
          v156 = 0.0;
        }

        else
        {
          v156 = v149 - v145 * 0.5;
        }

        v157 = fmin(v156, 1.0);
        if (v152 < 0.0)
        {
          v153 = 0.0;
        }

        v158 = fmin(v153, 1.0);
        if (v145 < 0.0)
        {
          v159 = 0.0;
        }

        else
        {
          v159 = v145;
        }

        v160 = fmin(v159, 1.0);
        v161 = v193;
        sub_2417E408C();
        v162 = type metadata accessor for MindNetModelBoundingBox();
        v163 = objc_allocWithZone(v162);
        v164 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_id;
        sub_2417E408C();
        v165 = OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence;
        *&v163[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence] = 0;
        swift_beginAccess();
        v166 = &v163[v164];
        v167 = v194;
        (*v188)(v166, v161, v194);
        swift_endAccess();
        *&v163[v165] = v137;
        v168 = &v163[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
        *v168 = v155;
        v168[1] = v157;
        v168[2] = v158;
        v168[3] = v160;
        v169 = &v163[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className];
        *v169 = v205;
        v169[1] = v136;
        v207.receiver = v163;
        v207.super_class = v162;
        v170 = objc_msgSendSuper2(&v207, sel_init);
        (*v187)(v161, v167);
        v171 = v170;
        MEMORY[0x245CEF790]();
        v18 = v10;
        if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2417E425C();
        }

        sub_2417E427C();

        v190 = v210;
        v24 = v199;
LABEL_50:
        v17 = v203;
        ++v50;
      }

      while (v50 != v195);
    }

    ++v204;
    v46 = v195;
    if (v204 != v172)
    {
      continue;
    }

    break;
  }

LABEL_158:

  v18 = v174;
  v23 = v182;
LABEL_156:
  (*(v23 + 8))(v173, v18);
}

void sub_2417E1EA4(void *a1, uint64_t a2, unint64_t a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B8B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - v10;
  sub_2417E25D8(&qword_27E54B8B8, &qword_27E54B8B0);
  v12 = a1;
  sub_2417E413C();
  sub_2417E0844(v11, a2, a3, a4);
  v14 = v13;
  v41 = MEMORY[0x277D84F90];
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_13:

    (*(v9 + 8))(v11, v8);
    return;
  }

  v15 = sub_2417E442C();
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x245CEF900](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = type metadata accessor for AudiogramSymbolDetectorResult();
      v20 = objc_allocWithZone(v19);
      v21 = &v18[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
      v22 = *&v18[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
      v23 = *&v18[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect + 8];
      v24 = *&v18[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect + 16];
      v25 = *&v18[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect + 24];
      v26 = v18;
      v42.origin.x = v22;
      v42.origin.y = v23;
      v42.size.width = v24;
      v42.size.height = v25;
      MinX = CGRectGetMinX(v42);
      MinY = CGRectGetMinY(*v21);
      Width = CGRectGetWidth(*v21);
      Height = CGRectGetHeight(*v21);
      v31 = &v20[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box];
      *v31 = MinX;
      v31[1] = MinY;
      v31[2] = Width;
      v31[3] = Height;
      *&v20[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_confidence] = *&v26[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence];
      v32 = *&v26[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className + 8];
      v33 = &v20[OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_labelName];
      *v33 = *&v26[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_className];
      *(v33 + 1) = v32;
      v40.receiver = v20;
      v40.super_class = v19;

      v34 = objc_msgSendSuper2(&v40, sel_init);

      v35 = v34;
      MEMORY[0x245CEF790]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36[1] = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2417E425C();
      }

      ++v16;
      sub_2417E427C();
    }

    while (v15 != v16);
    v9 = v38;
    v8 = v39;
    v11 = v37;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_2417E21FC(void *a1, float a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E54B8B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - v6;
  sub_2417E25D8(&qword_27E54B8B8, &qword_27E54B8B0);
  v8 = a1;
  sub_2417E413C();
  v9 = MEMORY[0x277D84F90];
  sub_2417E0844(v7, &unk_28535EAB0, MEMORY[0x277D84F90], a2);
  v11 = v10;
  result = sub_2417E252C(&unk_28535EAD0);
  v33 = v9;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v26 = MEMORY[0x277D84F90];
LABEL_14:

    v27 = sub_2417D5320(v26, 0.5);

    (*(v5 + 8))(v7, v4);
    return v27;
  }

  result = sub_2417E442C();
  v13 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v29 = v7;
    v30 = v5;
    v31 = v4;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245CEF900](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = type metadata accessor for AudiogramGraphDetectorResult();
      v18 = objc_allocWithZone(v17);
      v19 = &v16[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect];
      MinX = CGRectGetMinX(*&v16[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_rect]);
      MinY = CGRectGetMinY(*v19);
      Width = CGRectGetWidth(*v19);
      Height = CGRectGetHeight(*v19);
      v24 = &v18[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box];
      *v24 = MinX;
      v24[1] = MinY;
      v24[2] = Width;
      v24[3] = Height;
      *&v18[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_confidence] = *&v16[OBJC_IVAR____TtC18AudiogramIngestion23MindNetModelBoundingBox_confidence];
      v32.receiver = v18;
      v32.super_class = v17;
      v25 = objc_msgSendSuper2(&v32, sel_init);
      MEMORY[0x245CEF790]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28[1] = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2417E425C();
      }

      ++v14;
      sub_2417E427C();
    }

    while (v13 != v14);
    v26 = v33;
    v5 = v30;
    v4 = v31;
    v7 = v29;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2417E2580(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2417E450C() & 1;
  }
}

uint64_t sub_2417E25D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MindNetModelBoundingBox.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MindNetModelBoundingBox.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2417E2774()
{
  result = qword_27E54B8E0;
  if (!qword_27E54B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B8E0);
  }

  return result;
}

unint64_t sub_2417E27CC()
{
  result = qword_27E54B8E8;
  if (!qword_27E54B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B8E8);
  }

  return result;
}

unint64_t sub_2417E2824()
{
  result = qword_27E54B8F0;
  if (!qword_27E54B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E54B8F0);
  }

  return result;
}

uint64_t sub_2417E2878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2417E450C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_2417E450C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_2417E450C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_2417E450C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t metadataForHKAudiogramSample_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [AIAudiogramIndividualFrequencyInputViewController tableView:v0 cellForRowAtIndexPath:?];
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}