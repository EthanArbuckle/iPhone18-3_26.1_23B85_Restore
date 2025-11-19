void sub_2A5C14(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85F0;
  v5 = objc_opt_self();
  v6 = v5;
  if (a2)
  {
    v7 = &selRef_clearColor;
  }

  else
  {
    v7 = &selRef_blackColor;
  }

  if (a2)
  {
    v8 = &selRef_blackColor;
  }

  else
  {
    v8 = &selRef_clearColor;
  }

  v9 = [v5 *v7];
  v10 = [v9 CGColor];
  type metadata accessor for CGColor(0);
  v12 = v11;
  *(v4 + 56) = v11;
  *(v4 + 32) = v10;

  v13 = [v6 *v8];
  v14 = [v13 CGColor];
  *(v4 + 88) = v12;
  *(v4 + 64) = v14;

  isa = sub_AB9740().super.isa;

  [a1 setColors:isa];
}

id sub_2A5D74(uint64_t a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF82E0;
  sub_13C80(0, &qword_DF1300);
  *(v3 + 32) = sub_ABA770(0);
  *(v3 + 40) = sub_ABA770(1);
  *(v3 + 48) = sub_ABA770(0);
  isa = sub_AB9740().super.isa;

  [v2 setLocations:isa];

  [v2 setCompositingFilter:kCAFilterDestOut];
  sub_2A5C14(v2, a1);
  return v2;
}

id sub_2A5EB0(int a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor] = 2;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor] = 0;
  v11 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer;
  _s6SpacerCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = UIView.forAutolayout.getter();

  *&v6[v11] = v14;
  v15 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer;
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = UIView.forAutolayout.getter();

  *&v6[v15] = v17;
  v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
  type metadata accessor for TextViewLabel();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(v19) init];
  v21 = UIView.forAutolayout.getter();

  v22 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
  v23 = *v22;
  v24 = v22[1];

  v25 = UIView.withAccessibilityIdentifier(_:)(v23, v24);

  *&v6[v18] = v25;
  v26 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  v27 = [objc_allocWithZone(type metadata accessor for TextButton()) init];
  v28 = UIView.forAutolayout.getter();

  v29 = AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];

  v32 = UIView.withAccessibilityIdentifier(_:)(v30, v31);

  *&v6[v26] = v32;
  v33 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  v34 = [objc_allocWithZone(UILabel) init];
  v35 = UIView.forAutolayout.getter();

  v36 = AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];

  v39 = UIView.withAccessibilityIdentifier(_:)(v37, v38);

  *&v6[v33] = v39;
  v40 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer;
  v41 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v42 = UIView.forAutolayout.getter();

  *&v6[v40] = v42;
  v43 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
  v44 = [objc_allocWithZone(v19) init];
  v45 = UIView.forAutolayout.getter();

  v46 = AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor();
  v47 = *v46;
  v48 = v46[1];

  v49 = UIView.withAccessibilityIdentifier(_:)(v47, v48);

  *&v6[v43] = v49;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___descriptionLabelHeightConstraint] = 0;
  v50 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton;
  *&v6[v50] = [objc_allocWithZone(type metadata accessor for MoreButton()) init];
  v51 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v52 = qword_E71438;
  *&v6[v51] = qword_E71438;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_curatorsTitleView] = 0;
  v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
  v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = 0;
  v53 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v54 = v52;
  *v53 = PlayIntentLayoutHelper.init()();
  *(v53 + 1) = v55;
  v53[16] = v56;
  v53[17] = v57;
  *(v53 + 3) = v58;
  v59 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView;
  v60 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v61 = UIView.forAutolayout.getter();

  *&v6[v59] = v61;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___actionsHeightConstraint] = 0;
  v62 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch;
  v63 = [objc_allocWithZone(type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v64 = UIView.forAutolayout.getter();

  *&v6[v62] = v64;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer] = 0;
  v65 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  *v65 = a1;
  v65[1] = BYTE1(a1) & 1;
  v65[2] = BYTE2(a1) & 1;
  v69.receiver = v6;
  v69.super_class = type metadata accessor for DetailHeader.DetailsView();
  v66 = objc_msgSendSuper2(&v69, "initWithFrame:", a2, a3, a4, a5);
  sub_2A1428();
  sub_2A1A4C();

  return v66;
}

id sub_2A690C()
{
  v0[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TextButton();
  v1 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 _setWantsContentAwareTypesettingLanguage:1];
  }

  v4 = [v1 titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setAdjustsFontForContentSizeCategory:1];
  }

  v6 = [v1 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines:0];
  }

  v8 = [v1 titleLabel];

  v9 = v1;
  if (v8)
  {
    [v8 setLineBreakMode:4];

    v9 = v8;
  }

  return v1;
}

void sub_2A6A7C()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 font];
    if (!v3)
    {

      return;
    }

    v4 = v3;
    [v0 frame];
    v6 = v5;
    v7 = [v2 text];
    if (v7)
    {
      v8 = v7;
      sub_AB92A0();
    }

    v9 = sub_AB9260();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
    *(inited + 40) = v4;
    v11 = NSFontAttributeName;
    v12 = v4;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8);
    type metadata accessor for Key(0);
    sub_2A98B8(&qword_DE6EF0, type metadata accessor for Key);
    isa = sub_AB8FD0().super.isa;

    [v9 boundingRectWithSize:1 options:isa attributes:0 context:{v6, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    Height = CGRectGetHeight(v26);
    [v12 lineHeight];
    v24 = v23;

    v25 = ceil(Height / v24);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2A6D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = sub_AB9260();
    v9.receiver = v3;
    v9.super_class = type metadata accessor for TextButton();
    objc_msgSendSuper2(&v9, "setTitle:forState:", v7, a3);

    result = String.containsExcessiveHeightCharacters.getter(a1, a2);
  }

  else
  {
    v9.receiver = v3;
    v9.super_class = type metadata accessor for TextButton();
    objc_msgSendSuper2(&v9, "setTitle:forState:", 0, a3);
    result = 0;
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters) = result & 1;
  return result;
}

id sub_2A70A4()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = &v0[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MoreButton();
  v4 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  [v6 setTitleColor:v7 forState:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v8 = sub_AB9260();
  [v6 setTitle:v8 forState:0];

  v9 = [v6 titleLabel];
  if (v9)
  {
    [v9 setAdjustsFontForContentSizeCategory:1];
  }

  v10 = [v6 titleLabel];

  if (v10)
  {
    sub_13C80(0, &qword_DE6EE0);
    v11 = sub_ABA550();
    [v10 setFont:v11];
  }

  [v6 setHidden:1];
  v12 = AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v13, v14);
  [v6 setContentEdgeInsets:{0.0, 0.0, 0.01, 0.01}];

  return v6;
}

char *sub_2A755C(double a1, double a2, double a3, double a4)
{
  v9 = [objc_opt_self() effectWithStyle:1];
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v9];

  *&v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView] = v10;
  v11 = [objc_opt_self() buttonWithType:0];
  *&v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button] = v11;
  v37.receiver = v4;
  v37.super_class = type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView();
  v12 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setClipsToBounds:0];
  v16 = [v14 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v14 layer];
  [v17 setAllowsGroupBlending:0];

  UIView.Shadow.init(color:opacity:radius:offset:)([v13 blackColor], v38, 0.4, 10.0, 0.0, 4.0);
  UIView.shadow.setter(v38);

  v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView;
  v19 = [*&v14[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView] contentView];
  v20 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.6];
  [v19 setBackgroundColor:v20];

  v21 = [*&v14[v18] layer];
  [v21 setMasksToBounds:1];

  v22 = OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button;
  v23 = *&v14[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];
  v24 = sub_AB9260();
  v25 = [objc_opt_self() systemImageNamed:v24];

  [v23 setImage:v25 forStates:0];
  v26 = *&v14[v22];
  v27 = objc_allocWithZone(UIColor);
  v28 = v26;
  v29 = [v27 initWithWhite:0.0 alpha:0.5];
  [v28 setTintColor:v29];

  v30 = [*&v14[v22] imageView];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 layer];

    [v32 setCompositingFilter:kCAFilterPlusD];
  }

  v33 = [*&v14[v22] imageView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentMode:1];
  }

  v35 = [*&v14[v18] contentView];
  [v35 addSubview:*&v14[v22]];

  [v14 addSubview:*&v14[v18]];
  return v14;
}

void sub_2A7AE8()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView];
  [v9 setFrame:?];
  v10 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];
  [v9 bounds];
  [v10 setFrame:?];
  v11 = [v9 layer];
  [v9 frame];
  Width = CGRectGetWidth(v20);
  [v9 frame];
  Height = CGRectGetHeight(v21);
  if (Height >= Width)
  {
    Height = Width;
  }

  [v11 setCornerRadius:Height * 0.5];

  v14 = [v0 layer];
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  v15 = CGRectGetWidth(v22);
  v23.origin.x = v2;
  v23.origin.y = v4;
  v23.size.width = v6;
  v23.size.height = v8;
  v16 = CGRectGetHeight(v23);
  if (v16 >= v15)
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, v16 * 0.5}];
  v18 = [v17 CGPath];

  [v14 setShadowPath:v18];
}

uint64_t sub_2A7E8C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_title];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents];
  *v10 = sub_2A8FBC();
  v10[1] = v11;
  v12 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton;
  *&v4[v12] = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  type metadata accessor for TextStackView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30.receiver = v4;
  v30.super_class = type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView();
  v14 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton];
  v16 = v14;
  [v16 addSubview:v15];
  v17 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView]];
  v18 = *&v16[v17];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v19 = v18;
  v20 = TextDrawing.Cache.init()();
  v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v22 = *&v19[v21];
  *&v19[v21] = v20;

  sub_2E6210(v22);

  v24 = *&v16[v17];
  v25 = *&v16[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents + 8];
  if (!(v25 >> 62))
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_11:

    return v16;
  }

  result = sub_ABB060();
  v26 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v26 >= 1)
  {
    v27 = v24;

    for (i = 0; i != v26; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = sub_36003C(i, v25);
      }

      else
      {
        v29 = *(v25 + 8 * i + 32);
      }

      TextStackView.add(_:)(v29);
    }

    return v16;
  }

  __break(1u);
  return result;
}

void sub_2A8150()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 effectiveUserInterfaceLayoutDirection];
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v10 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetMaxX(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v12;
  v18.size.height = v14;
  CGRectGetWidth(v18);
  sub_ABA470();
  CGRectGetWidth(v19);
  v15 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView];
  sub_ABA490();
  [v15 setFrame:*&v14];
  sub_ABA490();
  [v10 setFrame:?];
}

id sub_2A83B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for DetailHeader.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailHeader.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2A85C4()
{
  result = qword_DFCB88;
  if (!qword_DFCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCB88);
  }

  return result;
}

double sub_2A8640@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23 = Int.seconds.getter(7);
  v22 = Int.seconds.getter(300);
  v5 = Int.seconds.getter(34);
  v21 = Int.seconds.getter(42);
  v20 = Int.seconds.getter(44);
  v6 = Int.seconds.getter(26);
  v7 = Int.seconds.getter(25);
  v8 = Int.seconds.getter(20);
  v9 = Int.seconds.getter(16);
  v10 = Int.seconds.getter(12);
  v11 = Int.seconds.getter(48);
  sub_13C80(0, &qword_DE6EE0);
  v12 = sub_ABA550();
  v13 = objc_opt_self();
  v14 = [v13 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v15 = sub_ABA550();
  v16 = [v13 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v17 = sub_ABA550();
  v18 = [objc_opt_self() configurationWithFont:v17 scale:1];

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5;
  *(a2 + 24) = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v6;
  result = a3;
  *(a2 + 48) = a3;
  *(a2 + 56) = a1;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = v8;
  *(a2 + 88) = v5;
  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v11;
  *(a2 + 128) = 4;
  *(a2 + 136) = v12;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v18;
  return result;
}

void sub_2A8864(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [*(*(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
  v5 = [v4 numberOfGlyphs];
  v32[0] = 0uLL;
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      [v4 lineFragmentRectForGlyphAtIndex:v8 effectiveRange:v32];
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v8 = *(&v32[0] + 1) + *&v32[0];
      ++v7;
      if (*(&v32[0] + 1) + *&v32[0] >= v6)
      {

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
LABEL_7:
  sub_2A6A7C();
  v11 = v10;
  v12 = *(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  v13 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  [*&v12[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] ascender];
  v15 = v14;
  [v12 bounds];
  Height = CGRectGetHeight(v33);
  [*&v12[v13] descender];
  v18 = v17;
  v19 = [*(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel) font];
  if (!v19)
  {
LABEL_18:
    __break(1u);
  }

  v20 = v19;
  v21 = 80.0;
  if (v9 > 1 && v11 > 1)
  {
    v21 = 54.0;
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  if (v11 == 1 && v9 == 1)
  {
    v21 = 90.0;
  }

  v24 = v21 + v15 - (Height + v18);
  [v19 descender];
  v26 = v24 - v25;

  sub_2A8640(v22, v32, v26);
  v27 = v32[9];
  a2[8] = v32[8];
  a2[9] = v27;
  a2[10] = v32[10];
  v28 = v32[5];
  a2[4] = v32[4];
  a2[5] = v28;
  v29 = v32[7];
  a2[6] = v32[6];
  a2[7] = v29;
  v30 = v32[1];
  *a2 = v32[0];
  a2[1] = v30;
  v31 = v32[3];
  a2[2] = v32[2];
  a2[3] = v31;
}

double sub_2A8ACC@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v23 = Int.seconds.getter(7);
  v22 = Int.seconds.getter(144);
  v21 = Int.seconds.getter(72);
  v20 = Int.seconds.getter(37);
  v19 = Int.seconds.getter(26);
  v3 = Int.seconds.getter(32);
  v4 = Int.seconds.getter(20);
  v5 = Int.seconds.getter(19);
  v6 = Int.seconds.getter(44);
  v7 = Int.seconds.getter(14);
  v8 = Int.seconds.getter(12);
  v9 = Int.seconds.getter(22);
  sub_13C80(0, &qword_DE6EE0);
  v10 = sub_ABA550();
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v13 = sub_ABA550();
  v14 = sub_ABA550();
  v15 = [v11 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v16 = sub_ABA550();
  v17 = [objc_opt_self() configurationWithFont:v16 scale:1];

  *a1 = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v19;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v4;
  result = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = v8;
  *(a1 + 112) = 2;
  *(a1 + 120) = v4;
  *(a1 + 128) = v9;
  *(a1 + 136) = v4;
  *(a1 + 144) = v4;
  *(a1 + 152) = 1;
  *(a1 + 160) = v10;
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  *(a1 + 184) = v14;
  *(a1 + 192) = v15;
  *(a1 + 200) = v17;
  return result;
}

uint64_t sub_2A8D28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF12F0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_2A8DA4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_editingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle) = 1;
  v3 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator;
  _s9SeparatorCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator;
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v6) = swift_allocObject();
  v7 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v9 = sub_80104(v8);

  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = 0;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkContainerView) = 0;
  v11 = v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_calculatedShadowSize;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView) = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow;
  *(v1 + v12) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_2A8FBC()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *&v16[0] = v3;
  *(&v16[0] + 1) = v6;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v2;
  v20 = 1;
  v21 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v7 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v16);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  sub_2F118(v16, v22);

  sub_AB91E0();
  sub_AB3550();
  v11 = sub_AB9320();
  v13 = v12;
  swift_beginAccess();
  *(v7 + 112) = v11;
  *(v7 + 120) = v13;

  sub_2EB704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82B0;
  *(v14 + 32) = v7;

  v22[0] = v3;
  v22[1] = v6;
  v23 = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v2;
  v27 = 1;
  v28 = xmmword_AF7C30;
  sub_2F174(v22);
  return v7;
}

void sub_2A92AC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = 2;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor) = 0;
  v2 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer;
  _s6SpacerCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer;
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = UIView.forAutolayout.getter();

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
  type metadata accessor for TextViewLabel();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(v10) init];
  v12 = UIView.forAutolayout.getter();

  v13 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];

  v16 = UIView.withAccessibilityIdentifier(_:)(v14, v15);

  *(v1 + v9) = v16;
  v17 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  v18 = [objc_allocWithZone(type metadata accessor for TextButton()) init];
  v19 = UIView.forAutolayout.getter();

  v20 = AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];

  v23 = UIView.withAccessibilityIdentifier(_:)(v21, v22);

  *(v1 + v17) = v23;
  v24 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  v25 = [objc_allocWithZone(UILabel) init];
  v26 = UIView.forAutolayout.getter();

  v27 = AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  v30 = UIView.withAccessibilityIdentifier(_:)(v28, v29);

  *(v1 + v24) = v30;
  v31 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer;
  v32 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v33 = UIView.forAutolayout.getter();

  *(v1 + v31) = v33;
  v34 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
  v35 = [objc_allocWithZone(v10) init];
  v36 = UIView.forAutolayout.getter();

  v37 = AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor();
  v38 = *v37;
  v39 = v37[1];

  v40 = UIView.withAccessibilityIdentifier(_:)(v38, v39);

  *(v1 + v34) = v40;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___descriptionLabelHeightConstraint) = 0;
  v41 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton;
  *(v1 + v41) = [objc_allocWithZone(type metadata accessor for MoreButton()) init];
  v42 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v43 = qword_E71438;
  *(v1 + v42) = qword_E71438;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_curatorsTitleView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls) = 0;
  v44 = v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper;
  v45 = v43;
  *v44 = PlayIntentLayoutHelper.init()();
  *(v44 + 8) = v46;
  *(v44 + 16) = v47;
  *(v44 + 17) = v48;
  *(v44 + 24) = v49;
  v50 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView;
  v51 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v52 = UIView.forAutolayout.getter();

  *(v1 + v50) = v52;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___actionsHeightConstraint) = 0;
  v53 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch;
  v54 = [objc_allocWithZone(type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v55 = UIView.forAutolayout.getter();

  *(v1 + v53) = v55;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_2A972C()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents);
  *v2 = sub_2A8FBC();
  v2[1] = v3;
  v4 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton;
  *(v0 + v4) = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_2A9810()
{
  result = qword_DFCBA8;
  if (!qword_DFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBA8);
  }

  return result;
}

unint64_t sub_2A9864()
{
  result = qword_DFCBB0;
  if (!qword_DFCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBB0);
  }

  return result;
}

uint64_t sub_2A98B8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2A9930(uint64_t a1)
{
  result = *(*(v1 + 16) + 88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2A9940()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2A99C0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
  }
}

id sub_2A9A30(id result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result)
  {
    v10 = result;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;

    return a6;
  }

  return result;
}

uint64_t sub_2A9AA0()
{

  return swift_deallocObject();
}

id sub_2A9AEC()
{
  v1 = *(v0 + 16);
  [v1 frame];
  [v1 setFrame:?];
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2A9BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A9BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2A9CB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A9CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2A9D98()
{
  result = qword_DFCBF0;
  if (!qword_DFCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBF0);
  }

  return result;
}

unint64_t sub_2A9DF0()
{
  result = qword_DFCBF8;
  if (!qword_DFCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBF8);
  }

  return result;
}

void sub_2A9E7C(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v187 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570);
  __chkstk_darwin(v6 - 8);
  v8 = &v187 - v7;
  sub_15F84((a1 + 3), &v218, &unk_DE8E40);
  if (!*(&v219 + 1))
  {
    sub_12E1C(&v218, &unk_DE8E40);
    v15 = _s23MusicPerformanceContextVMa();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    goto LABEL_9;
  }

  v9 = _s23MusicPerformanceContextVMa();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v8, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
LABEL_9:
    sub_12E1C(v8, &unk_DEE570);
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 1;
    v223 = 0;
    v224 = 0;
    v225 = 0;
LABEL_10:
    sub_12E1C(&v218, &unk_DEA520);
    v14 = *a1;
    if (!*a1)
    {
      return;
    }

LABEL_11:
    type metadata accessor for JSMediaItem();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v202 = v1;
    v18 = v14;
    v19 = sub_414F14();
    if (!v19)
    {

      return;
    }

    v20 = v19;
    v21 = [v19 storeContentItemObject];
    if (!v21)
    {

      return;
    }

    v197 = v5;
    v22 = *(&stru_B8.reserved2 + (swift_isaMask & *v17));
    v200 = v21;
    v23 = v21;
    v24 = v22();
    v201 = v20;
    if (v24)
    {
      v25 = v24;
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v196 = a1;
        v199 = v23;
        v26 = swift_allocObject();
        *(v26 + 16) = v17;
        type metadata accessor for JSContainerDetailComponentController();
        v27 = *&stru_108.segname[swift_isaMask & *v17];
        v28 = v18;
        v29 = v25;
        v30 = v28;
        v31 = v29;
        v32 = v27();

        v198 = v31;
        v33 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v31, v32, 1, sub_2AC328, v26);
        v193 = v17;
        if (v33)
        {
          v34 = v33;

          v35 = v26;
LABEL_28:
          v44 = *&v34[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_29:
          v194 = v35;
          v195 = v30;
          v45 = v34;
          v46 = v34;
          v47 = type metadata accessor for JSContainerDetailModelRequest();
          v48 = objc_allocWithZone(v47);
          v49 = &v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v49 = 0;
          v49[1] = 0;
          v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v50 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v48[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v48[v50] = v44;
          v203.receiver = v48;
          v203.super_class = v47;
          v51 = v44;
          v52 = objc_msgSendSuper2(&v203, "init");
          if ((v51[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
          {
            sub_13C80(0, &qword_DE8E90);
            v53 = v52;
            v54 = static MPModelAlbum.defaultMusicKind.getter();
            [v53 setSectionKind:v54];

            v55 = [objc_opt_self() kindWithVariants:3];
            v56 = v55;
          }

          else
          {
            sub_13C80(0, &qword_DE9C10);
            v55 = static MPModelPlaylistEntry.defaultMusicKind.getter();
            v57 = objc_opt_self();
            v56 = v52;
            v58 = [v57 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v55 options:0];
            [v56 setSectionKind:v58];

            v53 = v55;
          }

          v59 = v193;
          [v52 setItemKind:v55];

          v60 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v61 = *&v51[v60];
          v62 = v61;
          v63 = v198;

          v64 = JSViewModel.playActivityRecommendationData.getter();
          v66 = v65;
          sub_466A4(0, 0xF000000000000000);
          *v234 = v205[0];
          *&v234[3] = *(v205 + 3);
          v226 = v52;
          v227 = v44;
          v228 = v200;
          v229 = v59;
          v230 = v45;
          v231 = 0;
          v232 = v61;
          v233 = 0;
          v235 = v64;
          v236 = v66;
          *&v218 = v52;
          *(&v218 + 1) = v44;
          *&v219 = v200;
          *(&v219 + 1) = v59;
          v220 = v45;
          *&v221 = v61;
          BYTE8(v221) = 0;
          HIDWORD(v221) = *(v205 + 3);
          *(&v221 + 9) = v205[0];
          v222 = v64;
          v223 = v66;
          sub_70EB0(&v226, &v207);
          sub_70F0C(&v218);
          objc_opt_self();
          v23 = v199;
          if (swift_dynamicCastObjCClass())
          {
            v67 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
            v68 = sub_2D72DC(&v226);

LABEL_36:
            sub_4148FC(&v218);
            if (v222 == 1)
            {
              sub_12E1C(&v218, &unk_DEA520);
              isa = 0;
              Strong = 0;
            }

            else
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              sub_1611C(&v218);
              if (Strong && (v74 = Strong, v75 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(0), v77 = v76, v74, v77 >> 60 != 15))
              {
                isa = sub_AB3250().super.isa;
                sub_466A4(v75, v77);
              }

              else
              {
                isa = 0;
              }
            }

            v88 = v202;
            [v68 setPlayActivityForwardedRecommendationData:isa];

            [v68 setPlayActivityFeatureNameSourceViewController:Strong];
            if (Strong)
            {
              v89 = [Strong navigationController];
              if (v89)
              {
                v90 = v89;
                [v89 showViewController:v68 sender:v88];
              }

              else
              {
              }
            }

            else
            {
            }

            return;
          }

          objc_opt_self();
          v69 = swift_dynamicCastObjCClass();
          v70 = v201;
          if (v69)
          {
            v71 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
            v68 = sub_39891C(&v226, 0);

            goto LABEL_36;
          }

          sub_70F0C(&v226);

          a1 = v196;
LABEL_69:
          v96 = v23;
          sub_4148FC(&v207);
          if (v216 == 1)
          {

            v97 = &unk_DEA520;
          }

          else
          {
            sub_17704(&v207, &v218);
            v98 = sub_AB9990();
            v99 = v197;
            (*(*(v98 - 8) + 56))(v197, 1, 1, v98);
            sub_15F28(&v218, &v207);
            sub_2D384(a1, v205);
            sub_AB9940();
            v100 = v96;
            v101 = sub_AB9930();
            v102 = swift_allocObject();
            *(v102 + 16) = v101;
            *(v102 + 24) = &protocol witness table for MainActor;
            *(v102 + 32) = v100;
            sub_17704(&v207, v102 + 40);
            v103 = v205[1];
            *(v102 + 136) = v205[0];
            *(v102 + 152) = v103;
            *(v102 + 168) = v205[2];
            *(v102 + 184) = v206;
            sub_DBDC8(0, 0, v99, &unk_B082E0, v102);

            sub_414AFC(&v207);
            if (v210)
            {
              __swift_project_boxed_opaque_existential_1(&v207, v210);
              v104 = swift_unknownObjectWeakLoadStrong();
              if (v104)
              {
                v105 = v104;
                _s30CollectionViewSelectionHandlerVMa();
                v106 = sub_AB3770().super.isa;
                [v105 deselectItemAtIndexPath:v106 animated:1];

                sub_1611C(&v218);
              }

              else
              {

                sub_1611C(&v218);
              }

              __swift_destroy_boxed_opaque_existential_0(&v207);
              return;
            }

            sub_1611C(&v218);
            v97 = &unk_DE8E30;
          }

          sub_12E1C(&v207, v97);
          return;
        }

        v42 = v199;
        v43 = v27();

        v34 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v42, v43, 1, sub_2AC328, v26);
        v35 = v26;
        if (v34)
        {
          goto LABEL_28;
        }

        objc_opt_self();
        v92 = swift_dynamicCastObjCClass();
        if (v92)
        {
          v93 = v92;
          v94 = MPModelPropertyPlaylistType;
          v95 = v42;
          if ([v93 hasLoadedValueForKey:v94] && objc_msgSend(v93, "type") == &dword_8 + 1)
          {
            v34 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
            v44 = *&v34[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

            goto LABEL_29;
          }
        }

LABEL_125:
        sub_ABAFD0();
        __break(1u);
        return;
      }

      goto LABEL_67;
    }

    v36 = *(&stru_B8.offset + (swift_isaMask & *v17));
    v37 = v36();
    if (v37)
    {
      v38 = v37;
      v39 = JSIdentifierSet.ContentIdentifierKind.library.unsafeMutableAddressor();
      if ((*(&stru_108.flags + (swift_isaMask & *v38)))(*v39))
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = [v40 orphanMusicVideo];
          if (v41)
          {

            sub_4148FC(&v218);
            if (v222 == 1)
            {

              sub_12E1C(&v218, &unk_DEA520);
LABEL_68:

              goto LABEL_69;
            }

            v160 = swift_unknownObjectWeakLoadStrong();
            sub_1611C(&v218);
            if (!v160 || (v161 = [v160 traitCollection], v160, v162 = UITraitCollection.isMediaPicker.getter(), v161, !v162))
            {

              goto LABEL_69;
            }
          }

          v163 = [objc_allocWithZone(MPModelLibraryRequest) init];
          sub_13C80(0, &qword_DE8E90);
          v164 = v163;
          v165 = static MPModelAlbum.defaultMusicKind.getter();
          [v164 setSectionKind:v165];

          v166 = [objc_opt_self() kindWithVariants:3];
          [v164 setItemKind:v166];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v167 = swift_allocObject();
          *(v167 + 16) = xmmword_AF82B0;
          *(v167 + 32) = v23;
          sub_13C80(0, &qword_DEDE20);
          v199 = v23;
          v168 = v23;
          v169 = sub_AB9740().super.isa;

          v198 = v164;
          [v164 setScopedContainers:v169];

          type metadata accessor for JSContainerDetailComponentController();
          v170 = *&stru_108.segname[swift_isaMask & *v17];
          v197 = v18;
          v171 = v168;
          v172 = v170();
          v173 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v171, v172, 1, UIScreen.Dimensions.size.getter, 0);
          if (v173)
          {
            v174 = v173;
            v175 = *&v173[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_104:
            v176 = JSViewModel.playActivityRecommendationData.getter();
            v178 = v177;
LABEL_119:
            sub_466A4(0, 0xF000000000000000);
            *v215 = v205[0];
            *&v215[3] = *(v205 + 3);
            v183 = v198;
            v207 = v198;
            v208 = v175;
            v209 = v200;
            v210 = v17;
            v212 = 0;
            v213 = 0;
            v211 = v174;
            v214 = 0;
            v216 = v176;
            v217 = v178;
            *&v218 = v198;
            *(&v218 + 1) = v175;
            *&v219 = v200;
            *(&v219 + 1) = v17;
            *&v221 = 0;
            v220 = v174;
            BYTE8(v221) = 0;
            *(&v221 + 9) = v205[0];
            HIDWORD(v221) = *(v205 + 3);
            v222 = v176;
            v223 = v178;
            sub_70EB0(&v207, &v226);
            sub_70F0C(&v218);
            v184 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
            v68 = sub_2D72DC(&v207);

            v23 = v199;
            goto LABEL_36;
          }

          objc_opt_self();
          v175 = swift_dynamicCastObjCClass();
          if (v175)
          {
            v179 = MPModelPropertyPlaylistType;
            v180 = v171;
            if ([v175 hasLoadedValueForKey:v179] && objc_msgSend(v175, "type") == &dword_8 + 1)
            {
              v174 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
              v175 = *(v174 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);

              goto LABEL_104;
            }

            v174 = 0;
            v175 = 0;
          }

          else
          {
            v174 = 0;
          }

          v176 = 0;
          v178 = 0xF000000000000000;
          goto LABEL_119;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v107 = [objc_allocWithZone(MPModelLibraryRequest) init];
          sub_13C80(0, &qword_DE9C10);
          v108 = static MPModelPlaylistEntry.defaultMusicKind.getter();
          v109 = objc_opt_self();
          v110 = v107;
          v198 = v110;
          v111 = [v109 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v108 options:0];
          [v110 setSectionKind:v111];

          v197 = v108;
          [v110 setItemKind:v108];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_AF82B0;
          *(v112 + 32) = v23;
          sub_13C80(0, &qword_DEDE20);
          v199 = v23;
          v113 = v23;
          v114 = sub_AB9740().super.isa;

          [v198 setScopedContainers:v114];

          type metadata accessor for JSContainerDetailComponentController();
          v115 = *&stru_108.segname[swift_isaMask & *v17];
          v195 = v18;
          v116 = v113;
          v117 = v115();
          v118 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v116, v117, 1, UIScreen.Dimensions.size.getter, 0);
          v194 = v116;
          if (v118)
          {
            v119 = v118;
            v120 = *&v118[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
            v23 = v199;
LABEL_82:
            v121 = JSViewModel.playActivityRecommendationData.getter();
            v123 = v122;
LABEL_122:
            sub_466A4(0, 0xF000000000000000);
            *v215 = v205[0];
            *&v215[3] = *(v205 + 3);
            v185 = v198;
            v207 = v198;
            v208 = v120;
            v209 = v200;
            v210 = v17;
            v212 = 0;
            v213 = 0;
            v211 = v119;
            v214 = 0;
            v216 = v121;
            v217 = v123;
            *&v218 = v198;
            *(&v218 + 1) = v120;
            *&v219 = v200;
            *(&v219 + 1) = v17;
            *&v221 = 0;
            v220 = v119;
            BYTE8(v221) = 0;
            *(&v221 + 9) = v205[0];
            HIDWORD(v221) = *(v205 + 3);
            v222 = v121;
            v223 = v123;
            sub_70EB0(&v207, &v226);
            sub_70F0C(&v218);
            v186 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
            v68 = sub_39891C(&v207, 0);

            goto LABEL_36;
          }

          objc_opt_self();
          v120 = swift_dynamicCastObjCClass();
          v23 = v199;
          if (v120)
          {
            v181 = MPModelPropertyPlaylistType;
            v182 = v116;
            if ([v120 hasLoadedValueForKey:v181] && objc_msgSend(v120, "type") == &dword_8 + 1)
            {
              v119 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
              v120 = *(v119 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);

              goto LABEL_82;
            }

            v120 = 0;
          }

          v119 = 0;
          v121 = 0;
          v123 = 0xF000000000000000;
          goto LABEL_122;
        }

LABEL_66:
LABEL_67:

        goto LABEL_68;
      }
    }

    v78 = v36();
    if (!v78)
    {
      v91 = v201;
LABEL_65:

      goto LABEL_66;
    }

    v79 = v78;
    v80 = *JSIdentifierSet.ContentIdentifierKind.store.unsafeMutableAddressor();
    v81 = *(&stru_108.flags + (swift_isaMask & *v79));
    v198 = v79;
    v82 = v81(v80);
    v83 = v201;
    if ((v82 & 1) == 0)
    {
      v84 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v84, 0);
      if (!v85)
      {
LABEL_64:

        v91 = v198;
        goto LABEL_65;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v86 = v36();
      if (v86)
      {
        v87 = v86;
        v192 = (*&stru_158.segname[swift_isaMask & *v86])();
      }

      else
      {
        v192 = 0;
      }

      v124 = swift_allocObject();
      *(v124 + 16) = v17;
      v199 = type metadata accessor for JSContainerDetailComponentController();
      v125 = *&stru_108.segname[swift_isaMask & *v17];
      v126 = v18;
      v127 = v23;
      v128 = v125();
      v195 = v126;

      v191 = v124;
      v129 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v127, v128, 1, sub_2ABF88, v124);
      v194 = v127;
      if (v129)
      {
        v130 = v129;
        v131 = *&v129[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
      }

      else
      {
        objc_opt_self();
        v132 = swift_dynamicCastObjCClass();
        if (!v132)
        {
          goto LABEL_125;
        }

        v133 = v132;
        v134 = MPModelPropertyPlaylistType;
        v135 = v127;
        if (![v133 hasLoadedValueForKey:v134] || objc_msgSend(v133, "type") != &dword_8 + 1)
        {

          goto LABEL_125;
        }

        v130 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
        v131 = *&v130[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
      }

      v136 = v201;
      v199 = v23;
      v137 = type metadata accessor for JSContainerDetailModelRequest();
      v138 = objc_allocWithZone(v137);
      v139 = &v138[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
      *v139 = 0;
      v139[1] = 0;
      v138[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
      swift_unknownObjectWeakInit();
      v140 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
      *&v138[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
      v138[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
      *&v138[v140] = v131;
      v204.receiver = v138;
      v204.super_class = v137;
      v190 = v131;
      v141 = v131;
      v142 = v192;
      v188 = v192;
      v189 = v130;
      v143 = objc_msgSendSuper2(&v204, "init");
      if ((v141[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
      {
        sub_13C80(0, &qword_DE8E90);
        v144 = v143;
        v145 = static MPModelAlbum.defaultMusicKind.getter();
        [v144 setSectionKind:v145];

        v146 = [objc_opt_self() kindWithVariants:3];
        [v144 setItemKind:v146];

        if (v142)
        {
LABEL_92:

          goto LABEL_95;
        }
      }

      else
      {
        sub_13C80(0, &qword_DE9C10);
        v147 = static MPModelPlaylistEntry.defaultMusicKind.getter();
        v148 = objc_opt_self();
        v149 = v143;
        v150 = [v148 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v147 options:0];
        [v149 setSectionKind:v150];

        v136 = v201;
        [v149 setItemKind:v147];

        if (v142)
        {
          goto LABEL_92;
        }
      }

      v151 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
      swift_beginAccess();
      v142 = *&v141[v151];
      v152 = v142;
LABEL_95:
      v23 = v199;

      v153 = JSViewModel.playActivityRecommendationData.getter();
      v155 = v154;
      sub_466A4(0, 0xF000000000000000);
      *v234 = v205[0];
      *&v234[3] = *(v205 + 3);
      v226 = v143;
      v227 = v190;
      v228 = v200;
      v229 = v17;
      v230 = v130;
      v231 = 0;
      v232 = v142;
      v233 = 0;
      v235 = v153;
      v236 = v155;
      *&v218 = v143;
      *(&v218 + 1) = v190;
      *&v219 = v200;
      *(&v219 + 1) = v17;
      v220 = v130;
      *&v221 = v142;
      BYTE8(v221) = 0;
      HIDWORD(v221) = *(v205 + 3);
      *(&v221 + 9) = v205[0];
      v222 = v153;
      v223 = v155;
      sub_70EB0(&v226, &v207);
      sub_70F0C(&v218);
      objc_opt_self();
      v156 = v194;
      if (swift_dynamicCastObjCClass())
      {
        v157 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController());
        v158 = sub_2D72DC(&v226);
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          sub_70F0C(&v226);

          goto LABEL_69;
        }

        v159 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
        v158 = sub_39891C(&v226, 0);
      }

      v68 = v158;

      goto LABEL_36;
    }

    goto LABEL_64;
  }

  sub_15F84(v8, &v218, &unk_DEA520);
  sub_2AC2C4(v8, _s23MusicPerformanceContextVMa);
  if (v222 == 1)
  {
    goto LABEL_10;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  sub_1611C(&v218);
  if (v12)
  {
    v13 = [v12 traitCollection];

    UITraitCollection.isMediaPicker.getter();
  }

  v14 = *a1;
  if (*a1)
  {
    goto LABEL_11;
  }
}

uint64_t sub_2ABAD4(void *a1, void *a2)
{
  v4 = (*(&stru_158.reloff + (swift_isaMask & *a2)))();
  v5 = (*(&stru_248.flags + (swift_isaMask & *a1)))(v4);
  v6 = (*&stru_158.segname[(swift_isaMask & *a2) + 16])(v5);
  return (*(&stru_1F8.offset + (swift_isaMask & *a1)))(v6);
}

uint64_t sub_2ABC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  sub_AB9940();
  v6[24] = sub_AB9930();
  v8 = sub_AB98B0();

  return _swift_task_switch(sub_2ABCA8, v8, v7);
}

uint64_t sub_2ABCA8()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_2D384(*(v0 + 184), v0 + 112);
  sub_15F28(v2, v0 + 16);
  v3 = swift_allocObject();
  v4 = *(v0 + 128);
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 144);
  *(v3 + 64) = *(v0 + 160);
  sub_17704(v0 + 16, v3 + 72);
  sub_1109D4(v1, 0, 0, 1, v2, sub_2AC2B8, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2ABDE0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
  }

  return swift_deallocObject();
}

uint64_t sub_2ABE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_2ABC0C(a1, v4, v5, v6, (v1 + 5), (v1 + 17));
}

uint64_t sub_2ABF50()
{

  return swift_deallocObject();
}

uint64_t sub_2ABFA4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 1)
  {
    sub_4150EC(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_12E1C(v4, &unk_DEA510);
    }

    else
    {
      sub_140E58(v4, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = UIViewController.playActivityInformation.getter();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter();
        v20 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v20 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {

          v21 = sub_AB9260();
        }

        else
        {
          v21 = 0;
        }

        [v19 setPlayActivityFeatureName:v21];

        if (v18 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = sub_AB3250().super.isa;
        }

        [v19 setPlayActivityRecommendationData:isa];

        sub_466A4(v16, v18);
      }

      sub_37D3DC(0);
      return sub_2AC2C4(v9, type metadata accessor for PlaybackIntentDescriptor);
    }
  }

  return result;
}

uint64_t sub_2AC21C()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v1);
  }

  if (*(v0 + 136))
  {
  }

  if (*(v0 + 152))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2AC2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AC344()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
  }

  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    return 1;
  }

  else
  {
    return v1[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds];
  }
}

void sub_2AC448(double a1, double a2, double a3, double a4)
{
  v25.receiver = v4;
  v25.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v9 = objc_msgSendSuper2(&v25, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = v9;
  if ([v10 invalidateEverything] & 1) != 0 || (objc_msgSend(v10, "invalidateDataSourceCounts"))
  {
    goto LABEL_17;
  }

  v12 = [v4 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
  }

  if ((sub_ABA520() & 1) == 0)
  {
LABEL_17:
  }

  else
  {
    v24 = v11;
    v14 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    v15 = *&v4[v14];
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        [v10 setInvalidateFlowLayoutDelegateMetrics:0];
        [v10 setInvalidateFlowLayoutAttributes:0];
        v11 = v24;
        goto LABEL_17;
      }

      v18 = *(v15 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        do
        {
LABEL_14:
          v18 &= v18 - 1;

          v22 = sub_AB9260();
          sub_AB3820();
          isa = sub_AB9740().super.isa;
          [v10 invalidateSupplementaryElementsOfKind:v22 atIndexPaths:isa];
        }

        while (v18);
        continue;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2AC768(void *a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v71 - v9;
  __chkstk_darwin(v8);
  v12 = v71 - v11;
  v13 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v92.receiver = v1;
  v92.super_class = v13;
  objc_msgSendSuper2(&v92, "invalidateLayoutWithContext:", a1);
  if (([a1 invalidateEverything] & 1) != 0 || (objc_msgSend(a1, "invalidateDataSourceCounts") & 1) != 0 || (v14 = objc_msgSend(a1, "invalidatedSupplementaryIndexPaths")) == 0)
  {
    v69 = sub_98FF4(_swiftEmptyArrayStorage);
    v70 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    *&v1[v70] = v69;
  }

  v15 = v14;
  v76 = v3;
  v73 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCC48);
  v16 = sub_AB8FF0();

  v17 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
  swift_beginAccess();
  v75 = v1;
  v74 = v17;
  v18 = *&v1[v17];
  v19 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v85 = v4;
  v82 = (v4 + 8);
  v83 = v4 + 16;

  v25 = 0;
  v78 = v12;
  v77 = v16;
  v79 = v16 + 64;
  v86 = v23;
LABEL_7:
  while (2)
  {
    v80 = v18;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v22)
          {
            while (1)
            {
              v27 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v27 >= v23)
              {

                *&v75[v74] = v18;
              }

              v26 = *(v19 + 8 * v27);
              ++v25;
              if (v26)
              {
                v25 = v27;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

          v26 = v22;
LABEL_15:
          v22 = (v26 - 1) & v26;
        }

        while (!*(v18 + 16));
        v28 = __clz(__rbit64(v26)) | (v25 << 6);
        v29 = (*(v16 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        v32 = *(*(v16 + 56) + 8 * v28);

        v89 = v32;

        v88 = v31;
        v33 = sub_2EBF88(v31, v30);
        if (v34)
        {
          break;
        }
      }

      v84 = v30;
      v35 = *(*(v18 + 56) + 8 * v33);
      v36 = sub_2D668();

      v37 = v76;
      v38 = sub_AB9B70();
      v91[0] = v38;
      v39 = v35[2];
      v87 = v22;
      if (v39)
      {
        v72 = v36;
        v40 = *(v85 + 80);
        v81 = v35;
        v41 = v35 + ((v40 + 32) & ~v40);
        v90 = *(v85 + 72);
        v42 = *(v85 + 16);
        v43 = v78;
        v44 = v37;
        v45 = v7;
        v46 = v82;
        do
        {
          v42(v43, v41, v44);
          sub_1C47C(v45, v43);
          (*v46)(v45, v44);
          v41 += v90;
          --v39;
        }

        while (v39);

        v81 = v91[0];
        v7 = v45;
        v37 = v44;
        v23 = v86;
        v22 = v87;
      }

      else
      {
        v81 = v38;
      }

      v47 = v89;
      v48 = sub_AB9B70();
      v91[0] = v48;
      v49 = *(v47 + 16);
      if (v49)
      {
        v50 = v47 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v90 = *(v85 + 72);
        v51 = *(v85 + 16);
        v52 = v73;
        v53 = v82;
        do
        {
          v51(v52, v50, v37);
          sub_1C47C(v7, v52);
          (*v53)(v7, v37);
          v50 += v90;
          --v49;
        }

        while (v49);

        v54 = v91[0];
        v23 = v86;
        v22 = v87;
      }

      else
      {
        v54 = v48;
      }

      if (*(v54 + 16) <= v81[2] >> 3)
      {
        v91[0] = v81;
        sub_1C4FD8(v54);

        v56 = v91[0];
      }

      else
      {
        v55 = sub_1C7540(v54, v81);

        v56 = v55;
      }

      v16 = v77;
      v57 = *(v56 + 16);
      v19 = v79;
      if (v57)
      {
        break;
      }

      v18 = v80;
      v58 = sub_2EBF88(v88, v84);
      if (v59)
      {
        v67 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v18;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_3337F0();
          v18 = v91[0];
        }

        sub_27F6EC(v67, v18);

        v23 = v86;
        goto LABEL_7;
      }
    }

    v90 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
    v60 = *(v85 + 72);
    v61 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v62 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v62);
    if (!v60)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

    if (result - v61 != 0x8000000000000000 || v60 != -1)
    {
      v62[2] = v57;
      v62[3] = 2 * ((result - v61) / v60);
      v64 = sub_131440(v91, v62 + v61, v57, v90);
      v89 = v91[1];
      v81 = v91[2];
      v72 = v91[3];
      v71[1] = v91[4];

      result = sub_2BB88();
      if (v64 == v57)
      {

        v65 = v80;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v65;
        sub_9495C(v62, v88, v84, v66);

        v18 = v91[0];
        v19 = v79;
        v23 = v86;
        continue;
      }

      goto LABEL_48;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_2ACEF4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    if ([v1 delegate])
    {
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (v3)
      {
        v4 = v3;
        [v3 collectionView:v2 heightForGlobalHeaderIn:v0];
        *&v0[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] = v5;
        [v4 collectionView:v2 heightForGlobalFooterIn:v0];
        *&v0[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] = v6;

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  *&v0[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] = 0;
}

uint64_t sub_2AD0E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight;
  if (*&v4[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v15 = sub_AB9260();

    sub_AB3810();
    isa = sub_AB3770().super.isa;
    (*(v11 + 8))(v13, v10);
    v17 = [v5 layoutAttributesForSupplementaryViewOfKind:v15 atIndexPath:isa];

    if (v17)
    {
      v18 = v17;
      [v18 size];
      a2 = a2 - v19;
      [v18 size];
      v21 = v20;

      a4 = v21 + a4;
    }
  }

  v22 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v105.receiver = v5;
  v105.super_class = v22;
  v23 = objc_msgSendSuper2(&v105, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  v93 = v11;
  v98 = sub_2AED30();
  v25 = sub_AB9760();

  v99 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds;
  v26 = v5[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds];
  if (v26 != 1)
  {
    v27 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight;
    if (*&v5[v14] > 0.0 || *&v5[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] > 0.0)
    {
      goto LABEL_11;
    }

    return v25;
  }

  v27 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight;
LABEL_11:
  v29 = *&v5[v27];
  v30 = (v25 >> 62);
  v94 = v17;
  v100 = v5;
  v95 = v10;
  v97 = v13;
  if (v29 <= 0.0)
  {
    v91 = 0;
  }

  else
  {
    v31 = UICollectionElementKindGlobalFooter;
    sub_AB3810();
    v32 = sub_AB3770().super.isa;
    (*(v93 + 8))(v13, v10);
    v91 = [v5 layoutAttributesForSupplementaryViewOfKind:v31 atIndexPath:v32];

    LOBYTE(v26) = *(v99 + v5);
  }

  v104 = &_swiftEmptySetSingleton;
  if ((v26 & 1) == 0)
  {
    goto LABEL_45;
  }

  v102 = &_swiftEmptySetSingleton;
  if (v30)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

  result = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_43:
    v55 = &_swiftEmptySetSingleton;
LABEL_44:
    sub_1C4DBC(v55);

LABEL_45:
    v103 = _swiftEmptyArrayStorage;
    if (v30)
    {
      v56 = sub_ABB060();
      if (v56)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v56 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v56)
      {
LABEL_47:
        if (v56 >= 1)
        {
          v57 = 0;
          v96 = UICollectionElementKindSectionHeader;
          v92 = (v93 + 8);
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v58 = sub_361668(v57, v25);
            }

            else
            {
              v58 = *(v25 + 8 * v57 + 32);
            }

            v59 = v58;
            [v58 copy];
            sub_ABAB50();
            swift_dynamicCast();
            v60 = v101;
            swift_unknownObjectRelease();
            if (*(v99 + v5) != 1 || [v60 representedElementCategory] != &dword_0 + 1)
            {
              goto LABEL_62;
            }

            v61 = [v60 representedElementKind];
            if (!v61)
            {
              break;
            }

            v62 = v61;
            v63 = sub_AB92A0();
            v65 = v64;

            v66 = sub_AB92A0();
            if (!v65)
            {
              goto LABEL_61;
            }

            if (v63 == v66 && v65 == v67)
            {
            }

            else
            {
              v70 = sub_ABB3C0();

              if ((v70 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v71 = v96;
            v72 = [v60 indexPath];
            v73 = v97;
            sub_AB3790();
            v74 = sub_AB3770().super.isa;
            (*v92)(v73, v95);

            v75 = [v100 layoutAttributesForSupplementaryViewOfKind:v71 atIndexPath:v74];
            v17 = v94;
            if (v75)
            {
              [v75 frame];
              [v60 setFrame:?];
            }

LABEL_65:
            v68 = v60;
            sub_AB9730();
            if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
              v17 = v94;
            }

            sub_AB97F0();
            v28 = v103;
            v69 = [v68 representedElementCategory];
            v5 = v100;
            if (v69 == &dword_0 + 1)
            {
              sub_2AE93C(v68);
            }

            ++v57;

            if (v56 == v57)
            {
              goto LABEL_74;
            }
          }

          sub_AB92A0();
LABEL_61:

LABEL_62:
          if (v17)
          {
            [v17 frame];
            CGRectGetHeight(v106);
          }

          [v60 frame];
          [v60 setFrame:?];
          goto LABEL_65;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_74:

    if (*(v104 + 2))
    {
      v76 = 0;
      v77 = v104 + 56;
      v78 = 1 << v104[32];
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      v80 = v79 & *(v104 + 7);
      v81 = (v78 + 63) >> 6;
      v99 = UICollectionElementKindSectionHeader;
      v82 = (v93 + 8);
      if (!v80)
      {
        goto LABEL_80;
      }

      do
      {
LABEL_78:
        while (1)
        {
          v80 &= v80 - 1;
          v83 = v99;
          v84 = v97;
          sub_AB37C0();
          v85 = sub_AB3770().super.isa;
          (*v82)(v84, v95);
          v86 = [v100 layoutAttributesForSupplementaryViewOfKind:v83 atIndexPath:v85];

          v17 = v94;
          if (v86)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_80;
          }
        }

        v88 = v86;
        sub_AB9730();
        if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v17 = v94;
        }

        sub_AB97F0();

        v28 = v103;
      }

      while (v80);
      while (1)
      {
LABEL_80:
        v87 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v87 >= v81)
        {
          break;
        }

        v80 = *&v77[8 * v87];
        ++v76;
        if (v80)
        {
          v76 = v87;
          goto LABEL_78;
        }
      }

      if (v17)
      {
        goto LABEL_91;
      }

      goto LABEL_93;
    }

    if (!v17)
    {
LABEL_93:
      if (v91)
      {
        v90 = v91;
        sub_AB9730();
        if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v17 = v94;
        }

        sub_AB97F0();

        return v103;
      }

      else
      {
      }

      return v28;
    }

LABEL_91:
    v89 = v17;
    sub_AB9730();
    if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_92:
      sub_AB97F0();
      v28 = v103;
      goto LABEL_93;
    }

LABEL_101:
    sub_AB97A0();
    v17 = v94;
    goto LABEL_92;
  }

LABEL_17:
  v92 = (v25 >> 62);
  v34 = result - 1;
  if (result >= 1)
  {
    v35 = 0;
    v96 = UICollectionElementKindSectionHeader;
    v36 = (v93 + 8);
    v37 = &selRef_setSubtitleText_;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v42 = sub_361668(v35, v25);
      }

      else
      {
        v42 = *(v25 + 8 * v35 + 32);
      }

      v43 = v42;
      if (![v42 v37[500]])
      {
        v38 = [v43 indexPath];
        v39 = v97;
        sub_AB3790();
        v40 = sub_AB37F0();
        (*v36)(v39, v10);
        v41 = v40;
        v37 = &selRef_setSubtitleText_;
        sub_1A5B0(&v103, v41);

        v5 = v100;
        goto LABEL_20;
      }

      if ([v43 v37[500]] != &dword_0 + 1)
      {

        goto LABEL_20;
      }

      v44 = [v43 representedElementKind];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = sub_AB92A0();
      v48 = v47;

      v49 = sub_AB92A0();
      if (!v48)
      {
        v10 = v95;
        v37 = &selRef_setSubtitleText_;
        goto LABEL_35;
      }

      if (v46 == v49 && v48 == v50)
      {
      }

      else
      {
        v51 = sub_ABB3C0();

        if ((v51 & 1) == 0)
        {

          v5 = v100;
          v10 = v95;
          v37 = &selRef_setSubtitleText_;
LABEL_20:
          if (v34 == v35)
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      v52 = [v43 indexPath];
      v53 = v97;
      sub_AB3790();
      v54 = sub_AB37F0();
      v10 = v95;
      (*v36)(v53, v95);
      sub_1A5B0(&v103, v54);

      v5 = v100;
      v37 = &selRef_setSubtitleText_;
      if (v34 == v35)
      {
LABEL_40:
        v55 = v102;
        v17 = v94;
        v30 = v92;
        goto LABEL_44;
      }

LABEL_21:
      ++v35;
    }

    sub_AB92A0();
LABEL_35:

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *sub_2ADD4C()
{
  isa = sub_AB3770().super.isa;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v2 = objc_msgSendSuper2(&v6, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v2)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  [v2 copy];

  sub_ABAB50();
  swift_unknownObjectRelease();
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_9BC10(&v7);
    return 0;
  }

  sub_2AED30();
  if (swift_dynamicCast())
  {
    v3 = v5;
    [v3 frame];
    [v3 setFrame:?];

    return v5;
  }

  return 0;
}

char *sub_2ADF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = [v2 collectionView];
  if (v13)
  {
    v14 = v13;
    v15 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
    v16 = *v15 == a1 && v15[1] == a2;
    if (v16 || (sub_ABB3C0() & 1) != 0)
    {
      v17 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v19 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v17 withIndexPath:isa];

      [v14 bounds];
      [v19 setFrame:?];
      sub_2AE93C(v19);

      return v19;
    }
  }

  v57 = v6;
  v20 = [v2 collectionView];
  if (v20)
  {
    v21 = v20;
    v56 = v7;
    if (sub_AB92A0() == a1 && v22 == a2)
    {
    }

    else
    {
      v24 = sub_ABB3C0();

      if ((v24 & 1) == 0)
      {

        v7 = v56;
        goto LABEL_16;
      }
    }

    v33 = sub_AB9260();
    v34 = sub_AB3770().super.isa;
    v19 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v33 withIndexPath:v34];

    result = [v21 numberOfSections];
    v36 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
LABEL_29:

        return v19;
      }

      v37 = [v21 numberOfItemsInSection:v36];
      v38 = __OFSUB__(v37, 1);
      result = v37 - 1;
      if (!v38)
      {
        v39 = v56;
        if ((result & 0x8000000000000000) == 0)
        {
          sub_AB37C0();
          v40 = sub_AB3770().super.isa;
          v41 = [v3 layoutAttributesForItemAtIndexPath:v40];

          if (v41)
          {
            [v21 bounds];
            v43 = v42;
            v45 = v44;
            [v41 frame];
            [v19 setFrame:{v43, CGRectGetMaxY(v60), v45, *&v3[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight]}];
          }

          sub_2AE93C(v19);

          (*(v39 + 8))(v12, v57);
          return v19;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_16:
  v25 = sub_AB9260();
  v26 = sub_AB3770().super.isa;
  v27 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v59.receiver = v2;
  v59.super_class = v27;
  v28 = objc_msgSendSuper2(&v59, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v25, v26);

  if (!v28)
  {
    return 0;
  }

  v29 = IndexPath.safeSection.getter();
  [v28 copy];
  sub_ABAB50();
  sub_2AED30();
  swift_dynamicCast();
  v19 = v58;
  swift_unknownObjectRelease();
  [v19 frame];
  [v19 setFrame:?];
  v30 = [v3 collectionView];
  if (!v30)
  {
LABEL_39:
    sub_2AE93C(v19);

    return v19;
  }

  v31 = v30;
  if (sub_AB92A0() == a1 && v32 == a2)
  {
  }

  else
  {
    v46 = sub_ABB3C0();

    if ((v46 & 1) == 0)
    {
LABEL_38:

      goto LABEL_39;
    }
  }

  if (v3[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds] != 1)
  {
    goto LABEL_38;
  }

  v47 = v31;
  [v47 contentOffset];
  v49 = v48;
  [v47 adjustedContentInset];
  v51 = v50;

  v52 = [v47 numberOfItemsInSection:v29];
  [v19 frame];
  if (CGRectGetMinY(v61) >= v49 + v51)
  {
    goto LABEL_38;
  }

  result = v52 - 1;
  if (!__OFSUB__(v52, 1))
  {
    sub_AB37C0();
    v53 = sub_AB3770().super.isa;
    (*(v7 + 8))(v10, v57);
    v54 = [v3 layoutAttributesForItemAtIndexPath:v53];

    if (v54)
    {
      [v54 frame];
      CGRectGetMaxY(v62);
      [v19 frame];
      CGRectGetHeight(v63);
    }

    [v19 frame];
    [v19 setFrame:?];
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_2AE734(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = v2;
    v4 = UICollectionElementKindSectionHeader;
    isa = sub_AB3770().super.isa;
    v6 = [v2 layoutAttributesForSupplementaryViewOfKind:v4 atIndexPath:isa];

    if (v6)
    {
      [v6 frame];
      CGRectGetHeight(v7);
      [v3 sectionInset];
    }
  }
}

id sub_2AE93C(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 representedElementKind];
  if (result)
  {
    v9 = result;
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);

    v23 = v10;
    if (v15 && (v16 = sub_2EBF88(v10, v12), (v17 & 1) != 0))
    {
      v18 = *(*(v14 + 56) + 8 * v16);
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = [a1 indexPath];
    sub_AB3790();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_6AE4C(0, v18[2] + 1, 1, v18);
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_6AE4C(v20 > 1, v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + v13);
    *(v2 + v13) = 0x8000000000000000;
    sub_9495C(v18, v23, v12, isUniquelyReferenced_nonNull_native);

    *(v2 + v13) = v24;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2AECC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2AED30()
{
  result = qword_E04510;
  if (!qword_E04510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E04510);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2AEDA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2AEDE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2AEE64()
{
  v1 = *v0;
  if (*v0)
  {
    if ([*v0 hasLoadedValueForKey:MPModelPropertyAlbumEditorNotes])
    {
      v2 = [v1 editorNotes];
      if (v2)
      {
        v3 = v2;
        v4 = sub_AB92A0();
        v6 = v5;

        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          return v4;
        }
      }
    }

    if ([v1 hasLoadedValueForKey:MPModelPropertyAlbumShortEditorNotes])
    {
      result = [v1 shortEditorNotes];
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = sub_AB92A0();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        return v10;
      }
    }
  }

  return 0;
}

id sub_2AEFA8(void *a1, SEL *a2, void *a3)
{
  v4 = *v3;
  if (v4 && [v4 hasLoadedValueForKey:*a1])
  {
    result = [v4 *a2];
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ([result hasLoadedValueForKey:*a3])
    {
      v9 = v8;
      v10 = [v9 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_AB92A0();

        return v12;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_2AF080(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v6 + v5);
      if (v10 == 6)
      {
        v14 = *(a1 + 16);
        v15 = (a1 + 32);
        while (v14)
        {
          v16 = *v15++;
          --v14;
          if (v16 == 5)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v10 == 4)
      {
        v11 = *(a1 + 16);
        v12 = (a1 + 32);
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == 3)
          {
            goto LABEL_6;
          }
        }
      }

      v18 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_6D5C0(0, *(v7 + 2) + 1, 1);
        v7 = v18;
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        sub_6D5C0((v8 > 1), v9 + 1, 1);
        v7 = v18;
      }

      *(v7 + 2) = v9 + 1;
      v7[v9 + 32] = v10;
LABEL_6:
      ++v5;
    }

    while (v5 != v4);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v18 = v7;

  sub_162F48(&v18);

  *v2 = v18;
  return result;
}

uint64_t sub_2AF21C()
{
  v1 = *v0;
  v2 = xmmword_AF82C0;
  v3 = 0uLL;
  if (*v0)
  {
    sub_2AF59C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v1;
    v6 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
    v7 = [v5 hasLoadedValuesForPropertySet:v6];

    if (v7)
    {
      v8 = [v5 libraryAddStatusObserverConfiguration];

      v9 = v8 & 0x100000000;
      v10 = vdupq_n_s64(v8);
      v3 = vandq_s8(v10, xmmword_AFC580);
      v2 = vandq_s8(v10, xmmword_AFC590);
    }

    else
    {

      v9 = 0;
      v3 = 0uLL;
      v2 = xmmword_AF82C0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = vorrq_s8(v2, v3);
  return *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v9;
}

id sub_2AF328()
{
  v1 = *v0;
  if (*v0)
  {
    sub_2AF59C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = v1;
    v4 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v5 = [v3 hasLoadedValuesForPropertySet:v4];

    if (v5)
    {
      v6 = [v3 newKeepLocalStatusObserverConfiguration];

      return v6;
    }
  }

  v8 = objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);

  return [v8 init];
}

id sub_2AF3FC()
{
  v1 = *v0;
  if (*v0 && [*v0 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
  {
    return [v1 artworkCatalog];
  }

  else
  {
    return 0;
  }
}

id sub_2AF460()
{
  v1 = *v0;
  if (!*v0 || ![*v0 hasLoadedValueForKey:MPModelPropertyAlbumTitle])
  {
    return 0;
  }

  result = [v1 title];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();

    return v4;
  }

  return result;
}

id sub_2AF4F0()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = MPModelPropertyAlbumIsFavorite;
  v3 = v1;
  if ([v3 hasLoadedValueForKey:v2])
  {
    v4 = [v3 isFavorite];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_2AF59C()
{
  result = qword_DE8E90;
  if (!qword_DE8E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8E90);
  }

  return result;
}

id sub_2AF5F8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator] = 1;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] = _swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels] = _swiftEmptyArrayStorage;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ItemizedTextListView();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

id sub_2AF738()
{
  v1 = sub_2B1B68();

  String.trim()();

  v2 = sub_AB9260();

  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel];

  v4 = sub_AB9260();
  v5 = [v4 _isNaturallyRTL];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v3 setTextAlignment:v6];

  result = [v0 setNeedsLayout];
  v8 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  if (v8)
  {

    v8(v0);

    return sub_17654(v8);
  }

  return result;
}

id sub_2AF8AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth;
  *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth] = 0;
  v2 = *(*&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);
  if (v2)
  {
    v3 =  + 64;
    do
    {
      if (*(v3 - 24))
      {
        v4 = *(v3 - 16);
        if (*(v3 - 16))
        {
          v5 = objc_allocWithZone(type metadata accessor for BadgeLabel());
          swift_bridgeObjectRetain_n();

          v6 = [v5 init];
        }

        else
        {
          swift_bridgeObjectRetain_n();

          v6 = sub_2B1E78(1);
        }

        v7 = v6;
        v8 = sub_AB9260();
        [v7 setText:v8];

        sub_ABA510();
        [v7 sizeThatFits:?];
        v10 = v9;

        v11 = v10 + 4.0;
        if (!v4)
        {
          v11 = v10;
        }

        if (*&v0[v1] < v11)
        {
          *&v0[v1] = v11;
        }

        swift_bridgeObjectRelease_n();
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  result = [v0 setNeedsLayout];
  v13 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  if (v13)
  {

    v13(v0);

    return sub_17654(v13);
  }

  return result;
}

id sub_2AFAAC(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ItemizedTextListView();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_2B1888();
    result = [v1 setNeedsLayout];
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    if (v13)
    {

      v13(v1);
      return sub_17654(v13);
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_2AFD34(double a1, double a2)
{
  v3 = v2;
  v84 = [v2 traitCollection];
  [v84 displayScale];
  [v2 music_inheritedLayoutInsets];
  v7 = v6;
  v9 = v8;
  [v2 bounds];
  v12 = UIEdgeInsetsInsetRect(v10, v11, a1, a2, v7, v9);
  v15 = v14;
  v17 = v16;
  v18 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title + 8];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title] & 0xFFFFFFFFFFFFLL;
  }

  rect = v12;
  rect_8 = v13;
  if (v19)
  {
    v20 = v12;
    v21 = v13;
    v22 = sub_2B1B68();
    v89.origin.x = v20;
    v89.origin.y = v15;
    v89.size.width = v17;
    v89.size.height = v21;
    [v22 sizeThatFits:{CGRectGetWidth(v89), 1.79769313e308}];
    v24 = v23;

    v90.origin.x = v20;
    v90.origin.y = v15;
    v90.size.width = v17;
    v90.size.height = v21;
    CGRectGetMinY(v90);
    sub_89F60();
    v25 = sub_ABA550();
    [v25 _scaledValueForValue:36.0];

    v26 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
    [*&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v91.origin.y = v27;
    v91.origin.x = v20;
    v91.size.width = v17;
    v91.size.height = v24;
    MaxY = CGRectGetMaxY(v91);
    [*&v3[v26] _baselineOffsetFromBottom];
    v15 = MaxY - v29;
  }

  v86 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType;
  v30 = v17;
  if ((v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] & 1) == 0)
  {

    goto LABEL_10;
  }

  v31 = sub_ABB3C0();

  if (v31)
  {
LABEL_10:
    [v3 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v3 music_inheritedLayoutInsets];
    v42 = v41;
    v93.origin.x = v34;
    v93.origin.y = v36;
    v93.size.width = v38;
    v93.size.height = v40;
    v43 = CGRectGetWidth(v93) * 0.25 - v42;
    v94.origin.x = v34;
    v94.origin.y = v36;
    v94.size.width = v38;
    v94.size.height = v40;
    v44 = CGRectGetWidth(v94) * 0.5 - v42;
    v17 = v30;
    v45 = v44 + -10.0;
    v46 = *&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth];
    if (v43 > v46)
    {
      v46 = v43;
    }

    v47 = rect_8;
    if (v45 >= v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v45;
    }

    v49 = rect;
    v50 = v15;
    v51 = v30;
    Width = CGRectGetWidth(*(&v47 - 3)) - v48 + -20.0;
    goto LABEL_16;
  }

  v92.origin.x = rect;
  v92.size.height = rect_8;
  v92.origin.y = v15;
  v92.size.width = v17;
  Width = CGRectGetWidth(v92);
LABEL_16:
  v52 = *(*&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);

  if (!v52)
  {
LABEL_40:

    v99.origin.x = rect;
    v99.size.height = rect_8;
    v99.origin.y = v15;
    v99.size.width = v17;
    CGRectGetMinY(v99);
    sub_AB39F0();

    return;
  }

  v54 = 0;
  v85 = v53;
  v55 = (v53 + 72);
  while (v54 < v52)
  {
    v56 = *(v55 - 4);
    v57 = *v55;
    if (v54)
    {

LABEL_23:
      if (v57)
      {
        v58 = 36.0;
      }

      else
      {
        v58 = 18.0;
      }

      goto LABEL_30;
    }

    if ((v3[v86] & 1) == 0)
    {

      v58 = 24.0;
      goto LABEL_30;
    }

    v59 = sub_ABB3C0();

    v58 = 24.0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    sub_89F60();
    v60 = sub_ABA560();
    v61 = sub_2B1E78(0);
    v62 = sub_AB9260();
    [v61 setText:v62];

    v63 = v61;
    [v63 sizeThatFits:{Width, 1.79769313e308}];
    v65 = v64;
    v95.origin.x = rect;
    v95.size.height = rect_8;
    v95.origin.y = v15;
    v95.size.width = v17;
    CGRectGetMinY(v95);
    [v60 _scaledValueForValue:v58];
    [v63 _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v67 = v66;
    [v63 setFrame:{0.0, v66, Width, v65}];

    v96.origin.x = 0.0;
    v96.origin.y = v67;
    v96.size.width = Width;
    v96.size.height = v65;
    v68 = CGRectGetMaxY(v96);
    [v63 _baselineOffsetFromBottom];
    v15 = v68 - v69;
    if (v56)
    {
      if (v3[v86])
      {

        v17 = v30;
      }

      else
      {
        v70 = sub_ABB3C0();

        v17 = v30;
        if ((v70 & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_19;
        }
      }

      if (v3[v86] == 1)
      {

        goto LABEL_37;
      }

      v71 = sub_ABB3C0();

      v72 = 18.0;
      if (v71)
      {
LABEL_37:
        v72 = 24.0;
      }

      v73 = sub_ABA560();
      v74 = sub_2B1E78(1);
      v75 = sub_AB9260();
      [v74 setText:v75];

      v76 = v74;
      [v76 sizeThatFits:{Width, 1.79769313e308}];
      v78 = v77;
      v97.origin.x = rect;
      v97.size.height = rect_8;
      v97.origin.y = v15;
      v97.size.width = v17;
      CGRectGetMinY(v97);
      [v73 _scaledValueForValue:v72];
      v17 = v30;
      [v76 _firstBaselineOffsetFromTop];
      sub_AB39F0();
      v80 = v79;
      [v76 setFrame:{0.0, v79, Width, v78}];

      v98.origin.x = 0.0;
      v98.origin.y = v80;
      v98.size.width = Width;
      v98.size.height = v78;
      v81 = CGRectGetMaxY(v98);
      [v76 _baselineOffsetFromBottom];
      v83 = v82;

      swift_bridgeObjectRelease_n();
      v15 = v81 - v83;
      goto LABEL_19;
    }

    v17 = v30;
LABEL_19:
    ++v54;
    v52 = *(v85 + 16);
    v55 += 48;
    if (v54 == v52)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

id sub_2B059C()
{
  v1 = v0;
  v148.receiver = v0;
  v148.super_class = type metadata accessor for ItemizedTextListView();
  objc_msgSendSuper2(&v148, "layoutSubviews");
  v126 = [v0 traitCollection];
  [v126 displayScale];
  v134 = v2;
  p_name = &selRef__authenticateReturningError_;
  [v0 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v8 = &selRef__authenticateReturningError_;
  [v0 bounds];
  v127 = v9;
  v132 = v11;
  v133 = v10;
  rect = v12;
  v13 = UIEdgeInsetsInsetRect(v9, v10, v11, v12, v5, v7);
  v15 = v14;
  v17 = v16;
  v137 = v18;
  v141 = &v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];

  v19 = sub_AB9260();
  v20 = [v19 _isNaturallyRTL];

  v21 = v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator];
  v22 = sub_2B1AA8();
  v23 = v22;
  v24 = &selRef__authenticateReturningError_;
  v129 = v13;
  v136 = v17;
  if (v21 == 1)
  {
    v25 = [v22 isDescendantOfView:v1];

    if ((v25 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator]];
    }

    [v1 bounds];
    v27 = v26;
    v29 = v28 - v7;
    v30 = 1.0 / v134;
    if (v20)
    {
      v149.origin.x = v127;
      v149.size.width = v132;
      v149.origin.y = v133;
      v149.size.height = rect;
      MaxX = CGRectGetMaxX(v149);
      v150.origin.x = v7;
      v150.origin.y = v27;
      v150.size.width = v29;
      v150.size.height = 1.0 / v134;
      v32 = MaxX - CGRectGetWidth(v150);
      v151.origin.x = v7;
      v151.origin.y = v27;
      v151.size.width = v29;
      v151.size.height = 1.0 / v134;
      v7 = v32 - CGRectGetMinX(v151);
    }

    [*&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator] setFrame:{v7, v27, v29, v30}];
    v15 = v30 + v15;
    v137 = v137 - v30;
    v13 = v129;
  }

  else
  {
    [v22 removeFromSuperview];
  }

  v33 = *(v141 + 1);
  if ((v33 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v34 = *v141 & 0xFFFFFFFFFFFFLL;
  }

  v35 = sub_2B1B68();
  v36 = v35;
  v37 = v127;
  if (v34)
  {
    v38 = [v35 isDescendantOfView:v1];

    if ((v38 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel]];
    }

    v39 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
    v40 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel];
    v152.origin.x = v13;
    v152.origin.y = v15;
    v152.size.width = v136;
    v152.size.height = v137;
    [v40 sizeThatFits:{CGRectGetWidth(v152), 1.79769313e308}];
    v42 = v41;

    v153.origin.x = v13;
    v153.origin.y = v15;
    v153.size.width = v136;
    v153.size.height = v137;
    CGRectGetMinY(v153);
    sub_89F60();
    v43 = sub_ABA550();
    [v43 _scaledValueForValue:36.0];
    v44 = v13;

    [*&v1[v39] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v46 = v45;
    if (v20)
    {
      v154.origin.x = v127;
      v154.size.width = v132;
      v154.origin.y = v133;
      v154.size.height = rect;
      v47 = CGRectGetMaxX(v154);
      v155.origin.x = v44;
      v155.origin.y = v46;
      v155.size.width = v136;
      v155.size.height = v42;
      v48 = v47 - CGRectGetWidth(v155);
      v156.origin.x = v44;
      v156.origin.y = v46;
      v156.size.width = v136;
      v156.size.height = v42;
      v44 = v48 - CGRectGetMinX(v156);
    }

    [*&v1[v39] setFrame:{v44, v46, v136, v42}];
    v157.origin.x = v44;
    v157.origin.y = v46;
    v157.size.width = v136;
    v157.size.height = v42;
    MaxY = CGRectGetMaxY(v157);
    [*&v1[v39] _baselineOffsetFromBottom];
    v15 = MaxY - v50;
    v13 = v129;
  }

  else
  {
    [v35 removeFromSuperview];
  }

  v51 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels;
  result = swift_beginAccess();
  v139 = v51;
  v53 = *&v1[v51];
  if (v53 >> 62)
  {
LABEL_100:
    result = sub_ABB060();
    v54 = result;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
    if (!v54)
    {
      goto LABEL_27;
    }
  }

  if (v54 < 1)
  {
    __break(1u);
LABEL_103:
    __break(1u);
    return result;
  }

  for (i = 0; i != v54; ++i)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = sub_36160C(i, v53);
    }

    else
    {
      v56 = *(v53 + 8 * i + 32);
    }

    v57 = v56;
    [v56 v24[221]];
  }

LABEL_27:
  v158.origin.x = v13;
  v158.origin.y = v15;
  v158.size.width = v136;
  v158.size.height = v137;
  MinX = CGRectGetMinX(v158);
  v144 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType;
  if (v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] == 1)
  {

    v24 = (&JSDateDescriptor + 24);
LABEL_30:
    v159.origin.x = v13;
    v159.origin.y = v15;
    v159.size.width = v136;
    v159.size.height = v137;
    Width = CGRectGetWidth(v159);
    goto LABEL_35;
  }

  v58 = sub_ABB3C0();

  v24 = (&JSDateDescriptor + 24);
  if (v58)
  {
    goto LABEL_30;
  }

  [v1 v8[56]];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [v1 p_name[183]];
  v69 = v68;
  v160.origin.x = v61;
  v160.origin.y = v63;
  v160.size.width = v65;
  v160.size.height = v67;
  v70 = CGRectGetWidth(v160) * 0.25 - v69;
  v161.origin.x = v61;
  v161.origin.y = v63;
  v161.size.width = v65;
  v13 = v129;
  v161.size.height = v67;
  v37 = v127;
  Width = CGRectGetWidth(v161) * 0.5 - v69 + -10.0;
  v71 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth];
  if (v70 > v71)
  {
    v71 = v70;
  }

  if (Width >= v71)
  {
    Width = v71;
  }

LABEL_35:
  v130 = Width;
  p_name = (&JSDateDescriptor + 24);
  if (v1[v144] == 1)
  {

LABEL_38:
    v162.origin.x = v13;
    v162.origin.y = v15;
    v162.size.width = v136;
    v162.size.height = v137;
    v73 = CGRectGetMinX(v162);
    goto LABEL_40;
  }

  v72 = sub_ABB3C0();

  if (v72)
  {
    goto LABEL_38;
  }

  v73 = MinX + v130 + 20.0;
LABEL_40:
  v138 = v73;
  if (v1[v144] == 1)
  {
  }

  else
  {
    v74 = sub_ABB3C0();

    if ((v74 & 1) == 0)
    {
      v164.origin.x = v13;
      v164.origin.y = v15;
      v164.size.width = v136;
      v164.size.height = v137;
      v75 = CGRectGetWidth(v164) - v130 + -20.0;
      goto LABEL_45;
    }
  }

  v163.origin.x = v13;
  v163.origin.y = v15;
  v163.size.width = v136;
  v163.size.height = v137;
  v75 = CGRectGetWidth(v163);
LABEL_45:
  v53 = *(*&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);
  v135 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems];

  if (v53)
  {
    v76 = 0;
    v8 = (v135 + 72);
    while (1)
    {
      if (v76 >= v53)
      {
        __break(1u);
        goto LABEL_100;
      }

      v145 = *(v8 - 24);
      v140 = *v8;
      v146 = *(v8 - 4);

      v80 = sub_2B1E78(0);
      v81 = sub_AB9260();
      [v80 setText:v81];

      v82 = v80;
      [v1 addSubview:v82];
      swift_beginAccess();
      v83 = v82;
      sub_AB9730();
      if (*(&dword_10 + (*&v1[v139] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v139] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      swift_endAccess();
      [v83 sizeThatFits:{v75, 1.79769313e308}];
      v85 = v84;

      v86 = sub_AB9260();
      v87 = [v86 _isNaturallyRTL];

      v147 = v138;
      if (v87)
      {
        v166.origin.x = v37;
        v166.size.width = v132;
        v166.origin.y = v133;
        v166.size.height = rect;
        v88 = CGRectGetMaxX(v166);
        v167.origin.y = 0.0;
        v167.origin.x = v138;
        v167.size.width = v75;
        v167.size.height = v85;
        v89 = v88 - CGRectGetWidth(v167);
        v168.origin.y = 0.0;
        v168.origin.x = v138;
        v168.size.width = v75;
        v168.size.height = v85;
        v147 = v89 - CGRectGetMinX(v168);
      }

      v142 = v75;
      if (!v146)
      {
        v93 = v15;
        v92 = 0;
        v94 = 0.0;
        v143 = 0.0;
        v95 = 0.0;
        if (v76)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      if (v145)
      {
        v90 = objc_allocWithZone(type metadata accessor for BadgeLabel());

        v91 = [v90 init];
        sub_AB9390();
        v92 = v91;
      }

      else
      {

        v92 = sub_2B1E78(1);
      }

      v96 = sub_AB9260();

      [v92 setText:v96];

      v97 = v92;
      [v1 addSubview:v97];
      swift_beginAccess();
      sub_AB9730();
      if (*(&dword_10 + (*&v1[v139] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v139] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      swift_endAccess();
      [v97 sizeThatFits:{v75, 1.79769313e308}];
      if (!v145)
      {
        v94 = v99;
        v143 = v130;
        v95 = MinX;
        goto LABEL_72;
      }

      v100 = v98 + 4.0;
      if (v130 < v100)
      {
        v100 = v130;
      }

      v143 = v100;
      if ((v1[v144] & 1) == 0)
      {
        break;
      }

      v101 = sub_ABB3C0();

      if (v101)
      {
        goto LABEL_69;
      }

      v169.origin.x = v13;
      v169.origin.y = v15;
      v169.size.width = v136;
      v169.size.height = v137;
      v95 = CGRectGetMinX(v169);
LABEL_70:
      result = [v83 font];
      if (!result)
      {
        goto LABEL_103;
      }

      v102 = result;
      [result capHeight];
      v104 = v103;

      v94 = v104 + 2.0;
LABEL_72:

      v105 = sub_AB9260();
      v106 = [v105 _isNaturallyRTL];

      v93 = v15;
      if (v106)
      {
        v171.origin.x = v37;
        v171.size.width = v132;
        v171.origin.y = v133;
        v171.size.height = rect;
        v107 = CGRectGetMaxX(v171);
        v172.origin.y = 0.0;
        v172.origin.x = v95;
        v172.size.width = v143;
        v172.size.height = v94;
        v108 = v107 - CGRectGetWidth(v172);
        v173.origin.y = 0.0;
        v173.origin.x = v95;
        v173.size.width = v143;
        v173.size.height = v94;
        v109 = CGRectGetMinX(v173);

        v95 = v108 - v109;
        v13 = v129;
        p_name = (&JSDateDescriptor + 24);
        if (v76)
        {
          goto LABEL_78;
        }
      }

      else
      {

        p_name = &JSDateDescriptor.name;
        if (v76)
        {
          goto LABEL_78;
        }
      }

LABEL_76:
      if ((v1[v144] & 1) == 0)
      {

        v111 = 24.0;
        goto LABEL_82;
      }

      v110 = sub_ABB3C0();

      v111 = 24.0;
      if (v110)
      {
        goto LABEL_82;
      }

LABEL_78:
      if (v140)
      {
        v111 = 36.0;
      }

      else
      {
        v111 = 18.0;
      }

LABEL_82:
      sub_89F60();
      v112 = sub_ABA560();
      if (v1[v144])
      {
      }

      else
      {
        v113 = sub_ABB3C0();

        v114 = 18.0;
        if ((v113 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v114 = 24.0;
LABEL_86:
      v115 = sub_ABA560();
      if ((v1[v144] & 1) == 0)
      {

LABEL_91:
        v176.origin.x = v13;
        v176.origin.y = v93;
        v176.size.width = v136;
        v176.size.height = v137;
        CGRectGetMinY(v176);
        [v112 _scaledValueForValue:v111];
        [v83 p_name[441]];
        sub_AB39F0();
        v121 = v120;
        v177.origin.x = v147;
        v177.origin.y = v121;
        v75 = v142;
        v177.size.width = v142;
        v177.size.height = v85;
        MinY = CGRectGetMinY(v177);
        if (v145)
        {
          [v83 p_name[441]];
          v123 = MinY + v122;
          v178.origin.y = 0.0;
          v178.origin.x = v95;
          v178.size.width = v143;
          v178.size.height = v94;
          MinY = v123 - CGRectGetHeight(v178) + 1.0;
        }

        v124 = &selRef__authenticateReturningError_;
        goto LABEL_96;
      }

      v116 = sub_ABB3C0();

      if (v116)
      {
        goto LABEL_91;
      }

      if (v92)
      {
        v117 = v92;
        v174.origin.x = v13;
        v174.origin.y = v93;
        v174.size.width = v136;
        v174.size.height = v137;
        CGRectGetMinY(v174);
        [v115 _scaledValueForValue:v114];
        p_name = &JSDateDescriptor.name;
        [v117 _firstBaselineOffsetFromTop];
        sub_AB39F0();
        MinY = v118;
        v175.origin.x = v95;
        v175.origin.y = MinY;
        v175.size.width = v143;
        v175.size.height = v94;
        CGRectGetMaxY(v175);
        [v117 _baselineOffsetFromBottom];
      }

      else
      {
        v179.origin.x = v13;
        v179.origin.y = v93;
        v179.size.width = v136;
        v179.size.height = v137;
        CGRectGetMinY(v179);
        MinY = 0.0;
        p_name = &JSDateDescriptor.name;
      }

      [v112 _scaledValueForValue:v111];
      [v83 _firstBaselineOffsetFromTop];
      sub_AB39F0();
      v121 = v125;
      v37 = v127;
      v13 = v129;
      v124 = &selRef__authenticateReturningError_;
      v24 = &JSDateDescriptor.name;
      v75 = v142;
LABEL_96:
      [v83 v124[262]];

      if (v92)
      {
        [v92 v124[262]];
      }

      ++v76;
      v165.origin.x = v147;
      v165.origin.y = v121;
      v165.size.width = v75;
      v165.size.height = v85;
      v77 = CGRectGetMaxY(v165);
      [v83 v24[442]];
      v79 = v78;

      v15 = v77 - v79;
      v53 = *(v135 + 16);
      v8 += 6;
      if (v76 == v53)
      {
        goto LABEL_98;
      }
    }

LABEL_69:
    v170.origin.x = 0.0;
    v170.origin.y = 0.0;
    v170.size.height = 0.0;
    v170.size.width = v143;
    v95 = MinX + v130 - CGRectGetWidth(v170);
    goto LABEL_70;
  }

LABEL_98:
}

uint64_t sub_2B15E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656B63617473;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656B63617473;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_2B1684()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_2B1704()
{
  sub_AB93F0();
}

Swift::Int sub_2B1770()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_2B17EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF1358;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2B184C(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x64656B63617473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2B1888()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_AB92A0();
  v5 = v4;
  if (v3 == sub_AB92A0() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_ABB3C0();

  if ((v8 & 1) == 0)
  {
    v9 = sub_AB92A0();
    v11 = v10;
    if (v9 != sub_AB92A0() || v11 != v12)
    {
      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_6;
      }

      v15 = sub_AB92A0();
      v17 = v16;
      if (v15 != sub_AB92A0() || v17 != v18)
      {
        v20 = sub_ABB3C0();

        if (v20)
        {
          goto LABEL_6;
        }

        v21 = sub_AB92A0();
        v23 = v22;
        if (v21 != sub_AB92A0() || v23 != v24)
        {
          v25 = sub_ABB3C0();

          v19 = v25 & 1;
          goto LABEL_16;
        }
      }
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_6:

LABEL_15:
  v19 = 1;
LABEL_16:
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) = v19;
}

id sub_2B1AA8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2B1B68()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];

    sub_89F60();
    v9 = sub_ABA550();
    [v7 setFont:v9];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2B1C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemizedTextListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2B1D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2B1DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2B1E24()
{
  result = qword_DFCDA0;
  if (!qword_DFCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCDA0);
  }

  return result;
}

id sub_2B1E78(char a1)
{
  v3 = [objc_allocWithZone(UILabel) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setClipsToBounds:0];
  if (a1)
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v7 = &qword_E718D8;
  }

  else
  {
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v7 = &qword_E718C8;
  }

  [v5 setTextColor:*v7];
  [v5 setNumberOfLines:a1 & 1];
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) == 1)
  {

    goto LABEL_11;
  }

  v8 = sub_ABB3C0();

  if (v8)
  {
LABEL_11:

    v9 = sub_AB9260();
    v10 = [v9 _isNaturallyRTL];

    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v12 = sub_AB9260();
  v13 = [v12 _isNaturallyRTL];

  v14 = 2;
  if ((a1 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 2;
  if (a1)
  {
    v15 = 0;
  }

  if (v13)
  {
    v11 = v15;
  }

  else
  {
    v11 = v14;
  }

LABEL_21:
  [v5 setTextAlignment:v11];
  sub_89F60();
  v16 = sub_ABA560();
  [v5 setFont:v16];

  return v5;
}

void sub_2B2128()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator) = 1;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems) = _swiftEmptyArrayStorage;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels) = _swiftEmptyArrayStorage;
  sub_ABAFD0();
  __break(1u);
}

id JSCircleImageViewController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

id JSCircleImageViewController.init(viewModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

void JSCircleImageViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSCircleImageViewController.viewDidLoad()()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel];
  v3 = sub_2B26DC();
  v4 = (*&stru_108.sectname[swift_isaMask & *v2])();
  v6 = v5;
  v7 = &v3[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v4;
  v7[1] = v6;
  sub_2B4200(v8, v9);

  v11 = (*(&stru_B8.reloff + (swift_isaMask & *v2)))(v10);
  if (!v11 || (v12 = v11, v13 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleBoundedBox), v12, !v13))
  {
    v14 = (*&stru_108.segname[(swift_isaMask & *v2) + 8])();
    v16 = v15;
    v17 = [v1 view];
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = v17;
    sub_13C80(0, &qword_E04530);
    v19 = [v18 effectiveUserInterfaceLayoutDirection];

    v13 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v16, v19, 0);
  }

  v20 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v21 = *&v3[v20];
  *&v3[v20] = v13;
  if (v21)
  {
    if (v13)
    {
      sub_13C80(0, &qword_E04530);
      v22 = v13;
      v23 = v21;
      v24 = sub_ABA790();

      if (v24)
      {

        v21 = v23;
LABEL_14:

        goto LABEL_15;
      }

      v13 = *&v3[v20];
    }

    else
    {
      v22 = 0;
    }

LABEL_13:
    v25 = v13;
    sub_74EA4(v13);
    [v3 setNeedsLayout];

    goto LABEL_14;
  }

  if (v13)
  {
    v22 = v13;
    goto LABEL_13;
  }

LABEL_15:
  v26 = [v1 view];
  if (v26)
  {
    v27 = v26;
    [v26 addSubview:v3];

    sub_2B28DC(0, 0, 1);
    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_2B26DC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CircleImageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t CircleImageView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_2B4200(v6, v7);
}

void CircleImageView.ownerArtworkCatalog.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_9;
  }

  if (!a1)
  {
    v6 = 0;
LABEL_9:
    v9 = a1;
    sub_74EA4(a1);
    [v2 setNeedsLayout];

    goto LABEL_10;
  }

  sub_13C80(0, &qword_E04530);
  v6 = a1;
  v7 = v5;
  v8 = sub_ABA790();

  if ((v8 & 1) == 0)
  {
    a1 = *&v2[v4];
    goto LABEL_9;
  }

  v5 = v7;
LABEL_10:
}

void sub_2B28DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2B3150();
  v8 = sub_2B26DC();
  if (a3)
  {
    v9 = [v4 view];
    if (!v9)
    {
      __break(1u);
      goto LABEL_15;
    }

    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    Width = CGRectGetWidth(v31);
    v20 = 1.79769313e308;
  }

  else
  {
    Width = *&a1;
    v20 = *&a2;
  }

  v21 = fmin(Width, 290.0);
  if (v8[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind])
  {
    v22 = 160.0;
  }

  else
  {
    v22 = 116.0;
  }

  [*&v8[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView] sizeThatFits:{v21, v20}];
  v24 = v23;

  if (v20 >= v22 + v24)
  {
    v20 = v22 + v24;
  }

  type metadata accessor for CGSize(0);
  [v4 preferredContentSize];
  v29 = v25;
  v30 = v26;
  if (sub_AB38D0())
  {
    [v4 setPreferredContentSize:{Width, v20, *&Width, *&v20, v29, v30}];
    v27 = [v4 view];
    if (v27)
    {
      v28 = v27;
      [v27 setNeedsLayout];

      return;
    }

LABEL_15:
    __break(1u);
  }
}

Swift::Void __swiftcall JSCircleImageViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = sub_2B26DC();
    [v11 setFrame:{v4, v6, v8, v10}];

    sub_2B28DC(0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

void JSCircleImageViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v10[4] = sub_2B4354;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_99;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_2B2DB0(double a1, double a2, uint64_t a3, void *a4)
{
  sub_2B28DC(*&a1, *&a2, 0);
  v5 = [a4 view];
  if (v5)
  {
    v6 = v5;
    [v5 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSCircleImageViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_2B28DC(0, 0, 1);
  }
}

void sub_2B3150()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 window];

  if (v4)
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    if (CGRectGetWidth(v27) < 1024.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  CGRectGetWidth(v28);
  sub_471A4();
  v24 = sub_AB3900();
  v25 = sub_2B26DC();
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  sub_2B3368(v26);
}

id sub_2B3368(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind];
  v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind] = result;
  if (v3 != result)
  {
    v4 = v1;
    v5 = sub_2B3CE0();
    sub_2B3D94(v4[v2], v17);
    swift_beginAccess();
    v7 = v5[3];
    v6 = v5[4];
    v8 = v5[6];
    v16[3] = v5[5];
    v16[4] = v8;
    v16[2] = v6;
    v16[0] = v5[2];
    v16[1] = v7;
    v9 = v17[4];
    v5[5] = v17[3];
    v5[6] = v9;
    v10 = v17[1];
    v5[2] = v17[0];
    v5[3] = v10;
    v5[4] = v17[2];
    sub_2F118(v17, v15);
    sub_2F174(v16);
    sub_2EB2A8();
    sub_2F174(v17);

    v11 = *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent];
    if (v4[v2])
    {
      v12 = 160.0;
    }

    else
    {
      v12 = 116.0;
    }

    v13 = *(v11 + 80);
    v14 = *(v11 + 88);
    *(v11 + 80) = v12;
    *(v11 + 88) = v12;
    sub_75614(v13, v14);
    return [v4 setNeedsLayout];
  }

  return result;
}

char *CircleImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v12 = __chkstk_darwin(v11 - 8);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v89 - v14;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog] = 0;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind] = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  *&v5[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v20 = sub_80104(v19);

  *&v5[v18] = v20;
  v21 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  type metadata accessor for TextStackView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v22[v23] = 0;
  *&v5[v21] = v22;
  *&v5[OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel] = 0;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  v26 = *&v24[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent];
  v27 = v24;

  v28 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = *(v28 + 2);
  v34 = *(v26 + 184);
  v35 = *(v26 + 152);
  v96[1] = *(v26 + 168);
  v96[2] = v34;
  v96[0] = v35;
  *(v26 + 152) = v29;
  *(v26 + 160) = v30;
  *(v26 + 168) = v31;
  *(v26 + 176) = v32;
  *(v26 + 184) = v33;
  v36 = v31;
  v37 = v32;
  v38 = v29;
  v39 = v30;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_75948(v96);
  sub_12E1C(v96, &unk_DF8690);

  v44 = UIView.Border.artwork.unsafeMutableAddressor();
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = v44[2];
  v48 = v47;
  sub_75E64(v45, v46, v47);

  v49 = *&v24[v25];
  *(v49 + 24) = 0x6D69656C63726963;
  *(v49 + 32) = 0xEB00000000656761;

  v50 = *&v24[v25];

  sub_ABA670();
  v51 = sub_ABA680();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  v52 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v53 = v90;
  sub_89FAC(v50 + v52, v90);
  swift_beginAccess();
  sub_8A01C(v15, v50 + v52);
  swift_endAccess();
  sub_75AE8(v53);
  sub_12E1C(v53, &unk_DFFBC0);
  sub_12E1C(v15, &unk_DFFBC0);

  v54 = *&v24[v25];
  v55 = *(v54 + 144);
  *(v54 + 144) = 2;
  if (v55 != 2)
  {
    v56 = *(v54 + 112);

    v57 = [v56 image];
    sub_788B8(v57);
  }

  v58 = qword_DE6C90;

  if (v58 != -1)
  {
    swift_once();
  }

  sub_74DD4(qword_E718D0);

  v59 = *&v24[v25];
  v60 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind;
  v61 = 160.0;
  if (!v27[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind])
  {
    v61 = 116.0;
  }

  v62 = *(v59 + 80);
  v63 = *(v59 + 88);
  *(v59 + 80) = v61;
  *(v59 + 88) = v61;

  sub_75614(v62, v63);

  v64 = *&v24[v25];
  v65 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v64 + 16) = *&v27[v65];

  v66 = *&v24[v25];
  v67 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v68 = (v66 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v69 = *(v66 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v68 = sub_8A12C;
  v68[1] = v67;

  sub_17654(v69);

  v70 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  v71 = *&v27[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView];
  v72 = objc_opt_self();
  v73 = v71;
  UIView.Shadow.init(color:opacity:radius:offset:)([v72 blackColor], v94, 0.2, 10.0, 0.0, 3.0);
  UIView.shadow.setter(v94);

  v74 = sub_2B3CE0();
  sub_2B3D94(v27[v60], v95);
  swift_beginAccess();
  v76 = v74[3];
  v75 = v74[4];
  v77 = v74[6];
  v92[3] = v74[5];
  v92[4] = v77;
  v92[1] = v76;
  v92[2] = v75;
  v92[0] = v74[2];
  v78 = v95[4];
  v74[5] = v95[3];
  v74[6] = v78;
  v79 = v95[1];
  v74[2] = v95[0];
  v74[3] = v79;
  v74[4] = v95[2];
  sub_2F118(v95, &v91);
  sub_2F174(v92);
  sub_2EB2A8();
  sub_2F174(v95);

  v80 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  v81 = *&v27[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView];

  TextStackView.add(_:)(v82);

  v83 = *&v27[v80];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v84 = v83;
  v85 = TextDrawing.Cache.init()();
  v86 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v87 = *&v84[v86];
  *&v84[v86] = v85;

  sub_2E6210(v87);

  [v27 addSubview:*&v27[v70]];
  [v27 addSubview:*&v27[v80]];
  [*&v27[v70] addSubview:*(*&v24[v25] + 112)];

  return v27;
}

uint64_t sub_2B3CE0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel);
  }

  else
  {
    sub_2B3D94(*(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind), v4);
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v2 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_2B3D94@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  if (a1)
  {
    v4 = sub_ABA550();
    v5 = qword_DE6C98;
    if (a1 == 1)
    {
      v6 = 0x4050000000000000;
      v7 = 0x4048000000000000;
    }

    else
    {
      v6 = 0x4048000000000000;
      v7 = 0x4040000000000000;
    }

    v8 = v7;
  }

  else
  {
    v4 = sub_ABA550();
    v5 = qword_DE6C98;
    v8 = 0x4040000000000000;
    v6 = 0x4040000000000000;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v9 = qword_E718D8;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  *a2 = v11;
  *(a2 + 8) = v12;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = v6;
  return result;
}

void *CircleImageView.ownerArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*CircleImageView.ownerArtworkCatalog.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_2B4038;
}

void sub_2B4038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *v3;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v3;
  if (a2)
  {
    if (v7)
    {
      if (v4)
      {
        sub_13C80(0, &qword_E04530);
        v8 = v4;
        v9 = v7;
        v10 = sub_ABA790();

        if (v10)
        {

LABEL_18:
          goto LABEL_19;
        }

        v4 = *(v2[4] + v2[5]);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (!v4)
      {
LABEL_19:
        v11 = *v3;
        goto LABEL_22;
      }

      v8 = v4;
    }

    v14 = v2[4];
    v15 = v4;
    sub_74EA4(v4);
    [v14 setNeedsLayout];

    v8 = v7;
    goto LABEL_18;
  }

  if (!v7)
  {
    if (!v4)
    {
      goto LABEL_23;
    }

    v11 = v4;
    goto LABEL_21;
  }

  if (!v4)
  {
    v11 = 0;
LABEL_21:
    v16 = v2[4];
    v17 = v4;
    sub_74EA4(v4);
    [v16 setNeedsLayout];

    v11 = v7;
    goto LABEL_22;
  }

  sub_13C80(0, &qword_E04530);
  v11 = v4;
  v12 = v7;
  v13 = sub_ABA790();

  if ((v13 & 1) == 0)
  {
    v4 = *(v2[4] + v2[5]);
    goto LABEL_21;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

uint64_t sub_2B4200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v3[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  result = swift_beginAccess();
  v8 = *(v6 + 1);
  if (!a2)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v8 || (*v6 == a1 ? (v9 = v8 == a2) : (v9 = 0), !v9 && (result = sub_ABB3C0(), (result & 1) == 0)))
  {
LABEL_10:
    v10 = sub_2B3CE0();
    if (*(v6 + 1))
    {

      v11 = String.trim()();
      countAndFlagsBits = v11._countAndFlagsBits;
      object = v11._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    swift_beginAccess();
    *(v10 + 112) = countAndFlagsBits;
    *(v10 + 120) = object;

    sub_2EB704();

    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_2B431C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CircleImageView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void (*CircleImageView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_2B4470;
}

void sub_2B4470(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_2B4200(v9, v8);
  }

  else
  {
    sub_2B4200(v9, v8);
  }

  free(v2);
}

uint64_t CircleImageView.textDrawingCache.setter(uint64_t a1)
{
  sub_2B4E18(a1);
}

void (*CircleImageView.textDrawingCache.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2B45D0;
}

void sub_2B45D0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

uint64_t CircleImageView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = a1;
}

void (*CircleImageView.artworkCachingReference.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2B4798;
}

void sub_2B4798(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

Swift::Void __swiftcall CircleImageView.layoutSubviews()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v2 = [v0 traitCollection];
  [v2 displayScale];

  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 music_inheritedLayoutInsets];
  UIEdgeInsetsInsetRect(v4, v6, v8, v10, v11, v12);
  v14 = v13;
  v42 = v15 + -17.0;
  sub_ABA490();
  sub_76368(0, 0, 1);
  v38 = v16;
  sub_ABA470();
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView];
  [v19 setFrame:v38];
  [v19 bounds];
  sub_76B28(v20, v21, v22, v23);
  v24 = [v19 layer];
  [v19 bounds];
  v26 = v25;
  v28 = v27;
  v40 = v30;
  v41 = v29;
  [v19 bounds];
  CGRectGetWidth(v44);
  sub_AB3A00();
  v32 = v31;
  [v19 bounds];
  CGRectGetHeight(v45);
  sub_AB3A00();
  v34 = v33;
  v46.origin.x = v26;
  v46.origin.y = v28;
  v46.size.height = v40;
  v46.size.width = v41;
  v35 = CGPathCreateWithRoundedRect(v46, v32, v34, 0);
  [v24 setShadowPath:v35];

  v36 = *&v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView];
  [v36 sizeThatFits:{fmin(v14, 290.0), v42 - v18}];
  v39 = v37;
  sub_ABA470();
  sub_ABA490();
  [v36 setFrame:v39];
}

void (*sub_2B4CF4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CircleImageView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

uint64_t sub_2B4D64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = a1;
}

uint64_t sub_2B4DE0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2B4E18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

void _s16MusicApplication15CircleImageViewC5coderACSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v6 = sub_80104(v5);

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  type metadata accessor for TextStackView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v8[v9] = 0;
  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_2B5050()
{
  result = qword_DFCE00;
  if (!qword_DFCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCE00);
  }

  return result;
}

id sub_2B510C()
{
  result = [v0 isMovingFromParentViewController];
  if (result)
  {
    result = [v0 navigationController];
    if (result)
    {
      v2 = result;
      v3 = [result disappearingViewController];

      if (v3 && (v3, v3 == v0))
      {
        v4 = [v0 navigationController];
        v5 = [v4 topViewController];

        return (v5 != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2B51D8()
{
  v0 = UITraitCollection.mediaLibrary.getter();
  v1 = [objc_opt_self() deviceMediaLibrary];
  if (v1)
  {
    v2 = v1;
    sub_13C80(0, &qword_DF86B0);
    v3 = sub_ABA790();

    result = 0;
    if (v3)
    {
      return result;
    }
  }

  else
  {
  }

  v5 = UITraitCollection.mediaLibrary.getter();
  v6 = [v5 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_AB92A0();

    return v8;
  }

  else
  {

    return 0;
  }
}

UITraitCollection __swiftcall UITraitCollection.combining(with:)(UITraitCollection_optional with)
{
  *&with.is_nil = v1;
  if (with.value.super.isa)
  {
    isa = with.value.super.isa;
    v10 = *&with.is_nil;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF7C50;
    *(v4 + 32) = v10;
    *(v4 + 40) = isa;
    sub_13C80(0, &qword_E00AB0);
    v5 = isa;
    v6 = v10;
    v7 = sub_AB9740().super.isa;
    v8 = [objc_opt_self() traitCollectionWithTraitsFromCollections:v7];

    return v8;
  }

  else
  {

    return v1;
  }
}

void sub_2B53E0()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_E71438 = v1;
}

void sub_2B5550()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 96.0}];
  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController_image]];
  [v2 setContentMode:1];
  [v2 setFrame:{0.0, 0.0, 0.0, 60.0}];
  [v2 setAutoresizingMask:2];
  v3 = [objc_opt_self() effectWithStyle:8];
  v4 = [objc_opt_self() effectForBlurEffect:v3 style:4];

  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];
  v6 = [v5 contentView];
  [v6 addSubview:v2];

  v17 = v5;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  [v17 setFrame:{0.0, 33.0, 0.0, CGRectGetHeight(v19)}];
  [v17 setAutoresizingMask:2];

  [v1 addSubview:v17];
  [v1 bounds];
  [v0 setPreferredContentSize:{v15, v16}];
  [v0 setView:v1];
}

id sub_2B594C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2B5A20(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  *v12 = sub_2B7184();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v77.receiver = v4;
  v77.super_class = type metadata accessor for MusicVideoVerticalCell();
  v16 = objc_msgSendSuper2(&v77, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupOpacity:0];

  v18 = v16;
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending:0];

  v20 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v26 = v20[5];
  v73 = v26;
  v74 = v25;
  v27 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v75 = *v27;
  v71 = *(v27 + 2);
  v72 = *(v27 + 1);
  v70 = *(v27 + 3);
  *v27 = v21;
  *(v27 + 1) = v22;
  *(v27 + 2) = v23;
  *(v27 + 3) = v24;
  *(v27 + 4) = v25;
  *(v27 + 5) = v26;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  sub_2F1C8(v75, v72, v71, v70);
  v76 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v36 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v37 = *(v36 + 168);
  v78[0] = *(v36 + 152);
  v78[1] = v37;
  v78[2] = *(v36 + 184);
  *(v36 + 152) = v21;
  *(v36 + 160) = v22;
  *(v36 + 168) = v23;
  *(v36 + 176) = v24;
  *(v36 + 184) = v74;
  *(v36 + 192) = v73;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  sub_75948(v78);
  sub_B2A40(v78);

  if (qword_DE6A78 != -1)
  {
    swift_once();
  }

  v46 = xmmword_DFCEB8;
  v47 = qword_DFCEC8;
  v48 = qword_DFCED0;
  v49 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v49 = v46;
  *(v49 + 2) = v47;
  *(v49 + 3) = v48;
  type metadata accessor for UIEdgeInsets(0);
  v50 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v51 = *(v49 + 1);
    *v50 = *v49;
    *(v50 + 1) = v51;
    sub_35D498();
    [v18 setNeedsLayout];
  }

  v52 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v18[v52] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v53 = *&v18[v76];
  v54 = *(v53 + 144);
  *(v53 + 144) = 2;
  if (v54 != 2)
  {
    v55 = *(v53 + 112);

    v56 = [v55 image];
    sub_788B8(v56);
  }

  v57 = &v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  v58 = *&v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
  v59 = *&v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

  v60 = [v18 traitCollection];

  v61 = [v60 preferredContentSizeCategory];
  v62 = sub_ABA320();

  if (v62)
  {
    v63 = 3;
  }

  else
  {
    v63 = 2;
  }

  swift_beginAccess();
  *(v58 + 88) = v63;
  sub_2EB2A8();
  if ([v60 horizontalSizeClass] == &dword_0 + 2)
  {
    v64 = 16.0;
  }

  else
  {
    v64 = 12.0;
  }

  swift_beginAccess();
  *(v59 + 104) = v64;
  sub_2EB2A8();

  v65 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v66 = *(v57 + 3);
  if (!(v66 >> 62))
  {
    v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    if (v67)
    {
      goto LABEL_17;
    }

LABEL_25:

    return;
  }

  v67 = sub_ABB060();
  if (!v67)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v67 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v67; ++i)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = sub_36003C(i, v66);
      }

      else
      {
        v69 = *(v66 + 8 * i + 32);
      }

      TextStackView.add(_:)(v69);
    }
  }
}

uint64_t sub_2B60B8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_2B61CC(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_2B62C8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_2B63E0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_2B64E0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_2B6574(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_2B668C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_2B678C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MusicVideoVerticalCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_2B67E4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7, SEL *a8)
{
  v15 = type metadata accessor for MusicVideoVerticalCell();
  v27.receiver = a1;
  v27.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v27, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26.receiver = v17;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, *a8, a2, a3, a4, a5);
  sub_2B68C8(a7, v19, v21, v23, v25);
}

void sub_2B68C8(SEL *a1, double a2, double a3, double a4, double a5)
{
  v7 = v5;
  CGRectGetWidth(*&a2);
  [v5 *a1];
  Width = CGRectGetWidth(v16);
  if (sub_AB38D0())
  {
    v9 = *&v5[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
    v8 = *&v7[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];
    v10 = [v7 traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    v12 = sub_ABA320();

    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    swift_beginAccess();
    *(v9 + 88) = v13;
    sub_2EB2A8();
    if ([v10 horizontalSizeClass] == &dword_0 + 2)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 12.0;
    }

    swift_beginAccess();
    *(v8 + 104) = v14;
    sub_2EB2A8();
  }
}

void sub_2B6A08()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for MusicVideoVerticalCell();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  swift_beginAccess();
  v11 = sub_76368(0, 0, 1);
  v13 = v12;
  v32.origin.x = v3;
  v32.origin.y = v5;
  v32.size.width = v7;
  v32.size.height = v9;
  CGRectGetMinY(v32);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v11;
  v33.size.height = v13;
  CGRectGetHeight(v33);
  v14 = v3;
  v15 = v9;
  v30 = v13;
  sub_ABA470();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_ABA490();
  if (sub_76B28(v24, v25, v26, v27))
  {
    v34.origin.x = v17;
    v34.origin.y = v19;
    v34.size.width = v21;
    v34.size.height = v23;
    CGRectGetMaxY(v34);
    v35.origin.x = v14;
    v35.origin.y = v5;
    v35.size.width = v7;
    v35.size.height = v15;
    CGRectGetMinY(v35);
  }

  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView];
  if (v28 && *(*&v28[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v29 = v28;
    [v29 sizeToFit];
    [v29 frame];
  }

  sub_42AD54();
}

void sub_2B6CF8(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MusicVideoVerticalCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
  v5 = *(v4 + 2);
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_ABA320();

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  swift_beginAccess();
  *(v6 + 88) = v10;
  sub_2EB2A8();
  if ([v7 horizontalSizeClass] == &dword_0 + 2)
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 12.0;
  }

  swift_beginAccess();
  *(v5 + 104) = v11;
  sub_2EB2A8();
}

__n128 sub_2B6E88()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DFCEB8 = *&UIEdgeInsetsZero.top;
  *&qword_DFCEC8 = v1;
  return result;
}

uint64_t sub_2B6EEC()
{
}

id sub_2B6F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicVideoVerticalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicVideoVerticalCell()
{
  result = qword_DFCF08;
  if (!qword_DFCF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2B7154()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_2B7184()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v26 = v1;
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v39[2] = xmmword_AF82C0;
  v40 = v0;
  v41 = 1;
  v42 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v39);
  v6 = objc_opt_self();
  v23 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v57);
  v24 = v5;

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v33[0] = v8;
  *(&v33[0] + 1) = v10;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v7;
  v37 = 2;
  v38 = xmmword_B03470;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v33, v57);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v13 = [v2 clearColor];
  *&v27[0] = v1;
  *(&v27[0] + 1) = v13;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_B08600;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v27, v57);

  v43[0] = v26;
  v43[1] = v13;
  v44 = xmmword_AF7C20;
  v45 = 0;
  v46 = 0;
  v47 = v12;
  v48 = 1;
  v49 = xmmword_B08600;
  sub_2F174(v43);
  v50[0] = v8;
  v50[1] = v10;
  v51 = xmmword_AF7C20;
  v52 = 0;
  v53 = 0;
  v54 = v7;
  v55 = 2;
  v56 = xmmword_B03470;
  sub_2F174(v50);
  v57[0] = v26;
  v57[1] = v25;
  v58 = xmmword_AF7C20;
  v59 = xmmword_AF82C0;
  v60 = v20;
  v61 = 1;
  v62 = xmmword_AF7C30;
  sub_2F174(v57);

  return v24;
}

double sub_2B75F8(void *a1, char a2, char a3, double a4)
{
  sub_2B7184();
  v9 = v8;
  v11 = v10;
  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_ABA320();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  swift_beginAccess();
  *(v9 + 88) = v14;
  sub_2EB2A8();
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 12.0;
  }

  swift_beginAccess();
  *(v11 + 104) = v15;
  sub_2EB2A8();
  if (a2)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  sub_AB9730();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  if (a3)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  sub_2F48A4(_swiftEmptyArrayStorage, a1, 0, 0);

  if (qword_DE6A78 != -1)
  {
    swift_once();
  }

  [a1 displayScale];
  sub_AB3A00();
  [a1 displayScale];
  sub_AB3A00();

  return a4;
}

void sub_2B78F0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents);
  *v4 = sub_2B7184();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

id sub_2B7B54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryAddKeepLocalHandlingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2B7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_2B7CB0;

  return sub_2B7DD0(a5, v12, a7, a8, v16);
}

uint64_t sub_2B7CB0(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_2B7DB0, 0, 0);
}

uint64_t sub_2B7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[75] = v5;
  v6[74] = a5;
  v6[73] = a4;
  v6[72] = a3;
  v6[71] = a2;
  v6[70] = a1;
  sub_AB9940();
  v6[76] = sub_AB9930();
  v8 = sub_AB98B0();
  v6[77] = v8;
  v6[78] = v7;

  return _swift_task_switch(sub_2B7E80, v8, v7);
}

uint64_t sub_2B7E80()
{
  v27 = v0;
  static ApplicationCapabilities.shared.getter((v0 + 80));
  sub_70C54(v0 + 80);
  if ((*(v0 + 89) & 2) == 0)
  {
    sub_15F28(*(v0 + 592), v0 + 208);
    v1 = *JSBridge.shared.unsafeMutableAddressor();
    sub_1116A8(v0 + 208, v0 + 304);
    v2 = swift_allocObject();
    *(v2 + 16) = 1;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = -1;
    sub_111814(v0 + 304, v2 + 64);
    *(v2 + 160) = 0;
    *(v2 + 168) = 0;
    v3 = *&stru_B8.segname[(swift_isaMask & *v1) + 16];
    v4 = v1;
    v3(sub_111884, v2);
    sub_12E1C(v0 + 208, &unk_DEA520);

LABEL_20:

    v25 = *(v0 + 8);

    return v25(0);
  }

  v5 = *(v0 + 560);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v0 + 568);
  if ((v6 - 2) < 2)
  {
    v11 = v5;

    return _swift_task_switch(sub_2B8294, 0, 0);
  }

  else
  {
    if (v6 == 4)
    {
      v12 = v5;
      static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 400);
      v13 = Alert.uiAlertController.getter();
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v13, 1, 1, 0, 0);

      sub_111904(v0 + 400);
      goto LABEL_20;
    }

    if (v6 != 5)
    {
      v14 = qword_DE6A80;
      v15 = v5;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_AB4BC0();
      __swift_project_value_buffer(v16, qword_DFCF18);
      v17 = sub_AB4BA0();
      v18 = sub_AB9F50();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 568);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136446210;
        *(v0 + 536) = v19;
        type metadata accessor for MPLibraryAddStatus(0);
        v22 = sub_AB9350();
        v24 = sub_425E68(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_0, v17, v18, "Cannot perform add to library for libraryAddStatus=%{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      goto LABEL_20;
    }

    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 672) = v8;
    *v8 = v0;
    v8[1] = sub_2B8898;
    v9 = *(v0 + 592);

    return static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(2, v9, 0);
  }
}

uint64_t sub_2B8294()
{
  v1 = swift_task_alloc();
  v0[39].i64[1] = v1;
  v1[1] = vextq_s8(v0[37], v0[37], 8uLL);
  v2 = swift_task_alloc();
  v0[40].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_2B8388;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[44], 0, 0, 0xD000000000000015, 0x8000000000B5CB60, sub_2BB804, v1, &type metadata for Bool);
}

uint64_t sub_2B8388()
{

  return _swift_task_switch(sub_2B84A0, 0, 0);
}

uint64_t sub_2B84C4()
{
  if (*(v0 + 705) == 1)
  {
    v1 = *(v0 + 584);
    v2 = *(v0 + 576);
    v3 = *(v0 + 560);
    v4 = [objc_allocWithZone(MPModelLibraryImportChangeRequest) init];
    *(v0 + 648) = v4;
    [v4 setShouldLibraryAdd:1];
    [v4 setReferralObject:v2];
    [v4 setModelObjects:v3];
    v5 = [objc_opt_self() sharedDeviceLibraryController];
    *(v0 + 656) = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 544;
    *(v0 + 24) = sub_2B86D8;
    v6 = swift_continuation_init();
    *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF58);
    *(v0 + 472) = _NSConcreteStackBlock;
    *(v0 + 480) = 1107296256;
    *(v0 + 488) = sub_2B8FE0;
    *(v0 + 496) = &block_descriptor_100;
    *(v0 + 504) = v6;
    [v5 performLibraryImportChangeRequest:v4 withRelatedModelObjects:v1 completion:v0 + 472];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 560);

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_2B86D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  v3 = *(v1 + 624);
  v4 = *(v1 + 616);
  if (v2)
  {
    v5 = sub_2B8D94;
  }

  else
  {
    v5 = sub_2B8808;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2B8808()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_2B8898(char a1)
{
  v2 = *v1;
  *(*v1 + 706) = a1;

  v3 = *(v2 + 624);
  v4 = *(v2 + 616);

  return _swift_task_switch(sub_2B89C0, v4, v3);
}

uint64_t sub_2B89C0()
{
  if (*(v0 + 706) != 1 || (v1 = [*(v0 + 560) firstItem], (*(v0 + 680) = v1) == 0))
  {
    v6 = *(v0 + 560);
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v6 = *(v0 + 560);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = v2;
  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  swift_unknownObjectRetain();
  v4 = sub_259C34();
  *(v0 + 688) = v4;
  v5 = v4[9];
  v4[9] = v3;
  swift_unknownObjectRetain();

  sub_25A2AC(0);
  swift_unknownObjectRelease();

  if ((v4[15] & 0xFELL) == 0xF8)
  {
    v6 = *(v0 + 560);

    swift_unknownObjectRelease();
LABEL_7:

    v7 = *(v0 + 8);

    return v7(0);
  }

  v9 = v4[11];
  v10 = *(v0 + 560);
  v11 = swift_task_alloc();
  *(v0 + 696) = v11;
  *v11 = v0;
  v11[1] = sub_2B8BC0;
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 560);

  return sub_2B7DD0(v15, v9, v14, v13, v12);
}

uint64_t sub_2B8BC0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  *(*v1 + 707) = a1;

  v4 = *(v2 + 624);
  v5 = *(v2 + 616);

  return _swift_task_switch(sub_2B8D08, v5, v4);
}

uint64_t sub_2B8D08()
{
  v1 = *(v0 + 560);

  swift_unknownObjectRelease();

  v2 = *(v0 + 707);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2B8D94()
{
  v18 = v0;
  v1 = v0[82];
  swift_willThrow();

  v2 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v2 notificationOccurred:2];

  if (qword_DE6A80 != -1)
  {
    swift_once();
  }

  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, qword_DFCF18);
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[83];
  v8 = v0[81];
  v9 = v0[70];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v0[69] = v7;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    v12 = sub_AB9350();
    v14 = sub_425E68(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "Add to Library failed with error=%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_2B8FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_13C80(0, &qword_DEDE20);
    **(*(v4 + 64) + 40) = sub_AB9760();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2B90D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_AB9940();
  *(v4 + 96) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_2B9168, v6, v5);
}

uint64_t sub_2B9168()
{
  static Alert.userUploadRequiredAlert()(v0 + 16);
  v1 = Alert.uiAlertController.getter();
  sub_111904(v0 + 16);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v1, 1, 1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2B9210(void *a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v38 = a1;
  sub_13C80(0, &qword_DEDE20);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    aBlock = 0u;
    v35 = 0u;
    sub_12E1C(&aBlock, &qword_DFCF70);
    goto LABEL_7;
  }

  sub_70DF8(&aBlock, v39);
  v7 = v40;
  v8 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (!sub_161E74(v7, v8) || (v9 = [objc_opt_self() standardUserDefaults], v10 = objc_msgSend(v9, "prefersSpatialDownloads"), v9, (v10 & 1) != 0) || (v11 = objc_opt_self(), v12 = objc_msgSend(v11, "standardUserDefaults"), Time = NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter(), v12, (Time & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
LABEL_7:
    v14 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
    [v14 setModelObject:v6];
    [v14 setEnableState:1];
    v15 = [objc_opt_self() sharedDeviceLibraryController];
    [v15 performKeepLocalChangeRequest:v14 withRelatedModelObjects:a2];

    return;
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v33 = v11;
  v16 = sub_AB9260();

  v17 = sub_AB9260();

  v32 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a2;
  v31 = a2;
  v19 = v6;
  v20 = sub_AB9260();

  v36 = sub_2BBB84;
  v37 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_1546C;
  *(&v35 + 1) = &block_descriptor_41_0;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v32 addAction:v23];
  [v32 setPreferredAction:v23];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = a2;
  v25 = v19;
  v26 = v31;
  v27 = sub_AB9260();

  v36 = sub_2BBB8C;
  v37 = v24;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_1546C;
  *(&v35 + 1) = &block_descriptor_47;
  v28 = _Block_copy(&aBlock);

  v29 = [v22 actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  [v32 addAction:v29];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v32, 1, 1, 0, 0);
  v30 = [v33 standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter();

  __swift_destroy_boxed_opaque_existential_0(v39);
}

void sub_2B98B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  [v5 setPrefersSpatialDownloads:1];

  v6 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
  [v6 setModelObject:a2];
  [v6 setEnableState:1];
  v7 = [objc_opt_self() sharedDeviceLibraryController];
  [v7 performKeepLocalChangeRequest:v6 withRelatedModelObjects:a3];
}

void sub_2B99B4(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_opt_self() sharedNetworkObserver];
  if (v5)
  {
    v6 = v5;
    [v5 setMusicCellularDownloadingAllowed:1];

    sub_2B9210(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_2B9A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
  [v7 setModelObject:a2];
  [v7 setEnableState:a4];
  v8 = [objc_opt_self() sharedDeviceLibraryController];
  [v8 performKeepLocalChangeRequest:v7 withRelatedModelObjects:a3];
}

void sub_2B9B08(uint64_t a1, void (*a2)(BOOL))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong error];

    a2(v5 == 0);
  }
}

void sub_2B9B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v12 = *(v6 + 16);
  v12(&aBlock[-1] - v10, a1, v5);
  v12(v9, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v11, v5);
  if ([objc_opt_self() requiresTermsVerification])
  {
    sub_15F28(a3, v25);
    v15 = swift_allocObject();
    sub_17704(v25, v15 + 16);
    v16 = objc_allocWithZone(MusicTermsVerificationOperation);
    aBlock[4] = sub_2BB9E4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_17_0;
    v17 = _Block_copy(aBlock);
    v18 = [v16 initWithAdditionalPresentationHandler:v17];
    _Block_release(v17);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_2BB8CC;
    v20[4] = v14;
    v25[4] = sub_2BBAA8;
    v25[5] = v20;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_1B5EB4;
    v25[3] = &block_descriptor_26_3;
    v21 = _Block_copy(v25);
    v22 = v18;

    sub_307CC(sub_2BBAA8);

    [v22 setCompletionBlock:v21];
    _Block_release(v21);

    [v22 start];
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    LOBYTE(v25[0]) = 1;
    sub_AB98D0();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2B9F6C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DFCF18);
  __swift_project_value_buffer(v0, qword_DFCF18);
  return static Logger.music(_:)();
}

void sub_2B9FD0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v8 = [objc_opt_self() sharedMonitor];
  [v8 networkType];

  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v9 = [objc_opt_self() sharedNetworkObserver];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = [v9 isMusicCellularDownloadingAllowed];

    if ((v11 & 1) == 0)
    {
      static DeviceCapabilities.hasWAPICapability.getter();
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v12 = sub_AB9260();

      v13 = sub_AB9260();

      v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      sub_15F28(a3, v26);
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      sub_17704(v26, v15 + 32);
      v16 = a2;
      v17 = a1;
      v18 = sub_AB9260();

      aBlock[4] = sub_2BBB38;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_32_0;
      v19 = _Block_copy(aBlock);

      v20 = objc_opt_self();
      v21 = [v20 actionWithTitle:v18 style:0 handler:v19];
      _Block_release(v19);

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v22 = sub_AB9260();

      v26[4] = UIScreen.Dimensions.size.getter;
      v26[5] = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 1107296256;
      v26[2] = sub_1546C;
      v26[3] = &block_descriptor_35_0;
      v23 = _Block_copy(v26);

      v24 = [v20 actionWithTitle:v22 style:1 handler:v23];
      _Block_release(v23);

      [v14 addAction:v21];
      [v14 addAction:v24];
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v14, 1, 1, 0, 0);

      return;
    }
  }

  sub_2B9210(a1, a2);
}

void sub_2BA534(void *a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    [v22 hasVideo];
    [v23 cloudStatus];
LABEL_4:
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v6 = sub_AB9260();

    v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:0];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = a2;
    v10 = a1;
    v11 = sub_AB9260();

    v29 = sub_2BBBAC;
    v30 = v8;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1546C;
    v28 = &block_descriptor_53_0;
    v12 = _Block_copy(&aBlock);

    v13 = objc_opt_self();
    v24 = [v13 actionWithTitle:v11 style:0 handler:v12];
    _Block_release(v12);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v15 = v10;
    v16 = sub_AB9260();

    v29 = sub_2BBC04;
    v30 = v14;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1546C;
    v28 = &block_descriptor_59;
    v17 = _Block_copy(&aBlock);

    v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
    _Block_release(v17);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v19 = sub_AB9260();

    v29 = UIScreen.Dimensions.size.getter;
    v30 = 0;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1546C;
    v28 = &block_descriptor_62;
    v20 = _Block_copy(&aBlock);

    v21 = [v13 actionWithTitle:v19 style:1 handler:v20];
    _Block_release(v20);

    [v7 addAction:v24];
    [v7 addAction:v18];
    [v7 addAction:v21];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, 1, 1, 0, 0);

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }
}

void sub_2BAC50(void *a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  objc_opt_self();
  swift_dynamicCastObjCClass();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v6 = sub_AB9260();

  v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a2;
  v10 = a1;
  v11 = sub_AB9260();

  aBlock[4] = sub_2BBE30;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_74;
  v12 = _Block_copy(aBlock);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v15 = sub_AB9260();

  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v7 addAction:v14];
  [v7 addAction:v16];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, 1, 1, 0, 0);
}

id sub_2BAFF8()
{
  v0 = objc_opt_self();
  v1 = [v0 emptyPropertySet];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata supportsKeepLocalStatusObservation] & 1) == 0 && !objc_msgSend(ObjCClassFromMetadata, "supportsLibraryAddStatusObservation"))
  {
    return v1;
  }

  sub_13C80(0, &qword_DE8E90);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF4EC0;
    *(v3 + 32) = sub_AB92A0();
    *(v3 + 40) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v6;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF85F0;
    *(v7 + 32) = sub_AB92A0();
    *(v7 + 40) = v8;
    *(v7 + 48) = sub_AB92A0();
    *(v7 + 56) = v9;
    isa = sub_AB9740().super.isa;
    v11 = [v0 propertySetWithProperties:isa];

    *(inited + 48) = v11;
    sub_96EA4(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &unk_DE8E80);
    v12 = objc_allocWithZone(MPPropertySet);
    v13 = sub_AB9740().super.isa;

    sub_13C80(0, &qword_DEA550);
    v14 = sub_AB8FD0().super.isa;

    v15 = [v12 initWithProperties:v13 relationships:v14];
  }

  else
  {
    sub_13C80(0, &unk_DE8EB0);
    if (swift_dynamicCastMetatype())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_AF8820;
      *(v16 + 32) = sub_AB92A0();
      *(v16 + 40) = v17;
      *(v16 + 48) = sub_AB92A0();
      *(v16 + 56) = v18;
      *(v16 + 64) = sub_AB92A0();
      *(v16 + 72) = v19;
      v20.super.isa = sub_AB9740().super.isa;
      v21 = [v0 propertySetWithProperties:v20.super.isa];
    }

    else
    {
      sub_13C80(0, &unk_DE8EA0);
      if (!swift_dynamicCastMetatype())
      {
        sub_13C80(0, &qword_DE9C10);
        if (swift_dynamicCastMetatype())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
          v34 = swift_initStackObject();
          *(v34 + 16) = xmmword_AF8820;
          *(v34 + 32) = sub_AB92A0();
          *(v34 + 40) = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_AF8820;
          *(v36 + 32) = sub_AB92A0();
          *(v36 + 40) = v37;
          *(v36 + 48) = sub_AB92A0();
          *(v36 + 56) = v38;
          *(v36 + 64) = sub_AB92A0();
          *(v36 + 72) = v39;
          v40 = sub_AB9740().super.isa;
          v41 = [v0 propertySetWithProperties:v40];

          *(v34 + 48) = v41;
          *(v34 + 56) = sub_AB92A0();
          *(v34 + 64) = v42;
          *(v34 + 72) = [v0 emptyPropertySet];
          *(v34 + 80) = sub_AB92A0();
          *(v34 + 88) = v43;
          *(v34 + 96) = [v0 emptyPropertySet];
          sub_96EA4(v34);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
          swift_arrayDestroy();
          v44 = objc_allocWithZone(MPPropertySet);
          v45 = sub_AB9740().super.isa;
          sub_13C80(0, &qword_DEA550);
          v46 = sub_AB8FD0().super.isa;

          v15 = [v44 initWithProperties:v45 relationships:v46];
        }

        else
        {
          v15 = [v0 emptyPropertySet];
        }

        goto LABEL_11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_AF4EC0;
      *(v23 + 32) = sub_AB92A0();
      *(v23 + 40) = v24;
      v20.super.isa = sub_AB9740().super.isa;
      v21 = [v0 propertySetWithProperties:v20.super.isa];
    }

    v15 = v21;
  }

LABEL_11:
  v25 = v15;
  v26 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v27 = [v25 propertySetByCombiningWithPropertySet:v26];

  v28 = v27;
  v29 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = v30;
  v32 = [ObjCClassFromMetadata requiredLibraryRemovalProperties];
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  return v33;
}

uint64_t sub_2BB758()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BB838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2BB8CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60);
  return sub_AB98D0();
}

uint64_t sub_2BB970()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_15_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2BBA30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2BBA68()
{

  return swift_deallocObject();
}

uint64_t sub_2BBAB4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BBB44()
{

  return swift_deallocObject();
}

uint64_t sub_2BBBCC()
{

  return swift_deallocObject();
}

void sub_2BBC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MPModelLibraryDeleteEntityChangeRequest) init];
  [v6 setModelObject:a1];
  v7 = [objc_opt_self() sharedDeviceLibraryController];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2BBDA4;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_3A5920;
  v10[3] = &block_descriptor_68;
  v9 = _Block_copy(v10);
  sub_307CC(a2);

  [v7 performDeleteEntityChangeRequest:v6 withRelatedModelObjects:0 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2BBD64()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BBDA4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2BBE54()
{
  result = type metadata accessor for WelcomeViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2BBEF8@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD240);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD248);
  v31 = *(v8 - 8);
  v9 = v31;
  v32 = v8;
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v35 = v1;
  sub_AB6A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD250);
  sub_2BDEB8();
  sub_AB5710();
  *v7 = sub_AB6440();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD280);
  sub_2BCB80(v1, &v7[*(v15 + 44)]);
  sub_AB7A20();
  sub_AB5970();
  v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD288) + 36)];
  v17 = v37;
  *v16 = v36;
  *(v16 + 1) = v17;
  *(v16 + 2) = v38;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD290) + 36)] = 256;
  v18 = sub_AB6A90();
  type metadata accessor for WelcomeView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v19 = &v7[*(v3 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = *(v9 + 16);
  v25 = v32;
  v24(v12, v14, v32);
  v26 = v33;
  sub_15F84(v7, v33, &qword_DFD240);
  v27 = v34;
  v24(v34, v12, v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD298);
  sub_15F84(v26, &v27[*(v28 + 48)], &qword_DFD240);
  sub_12E1C(v7, &qword_DFD240);
  v29 = *(v31 + 8);
  v29(v14, v25);
  sub_12E1C(v26, &qword_DFD240);
  return (v29)(v12, v25);
}

uint64_t sub_2BC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_AB6440();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2F0);
  sub_2BC474(a1, a2 + *(v4 + 44));
  v5 = sub_AB6A90();
  type metadata accessor for WelcomeView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD268) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD250);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_2BC474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2F8);
  v4 = __chkstk_darwin(v3 - 8);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v77 - v6;
  v79 = sub_AB2F20();
  v7 = *(v79 - 1);
  __chkstk_darwin(v79);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD300);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD308);
  v15 = __chkstk_darwin(v14 - 8);
  v80 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = qword_DE6AF0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_E71620;
  v86 = sub_AB75A0();
  v21 = AccessibilityIdentifier.privacyWelcomeImage.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];

  View.accessibilityIdentifier(_:)(v22, v23, v24, v25, &type metadata for Image, &protocol witness table for Image);

  v26 = type metadata accessor for WelcomeViewModel(0);
  v77 = a1;
  v78 = v26;
  (*(v7 + 16))(v9, a1 + *(v26 + 24), v79);
  v27 = sub_AB6F10();
  v29 = v28;
  LOBYTE(v22) = v30;
  sub_AB6B60();
  v31 = sub_AB6E80();
  v33 = v32;
  v79 = v18;
  v35 = v34;

  sub_36B74(v27, v29, v22 & 1);

  sub_AB6BD0();
  v36 = sub_AB6E00();
  v38 = v37;
  LOBYTE(v29) = v39;
  v41 = v40;
  sub_36B74(v31, v33, v35 & 1);

  v86 = v36;
  v87 = v38;
  v88 = v29 & 1;
  v89 = v41;
  v42 = AccessibilityIdentifier.privacyWelcomeTitle.unsafeMutableAddressor();
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];

  View.accessibilityIdentifier(_:)(v43, v44, v45, v46, &type metadata for Text, &protocol witness table for Text);
  sub_36B74(v36, v38, v29 & 1);

  v47 = (v77 + *(v78 + 28));
  v48 = v47[1];
  v86 = *v47;
  v87 = v48;
  sub_36A48();

  v49 = sub_AB6F20();
  v51 = v50;
  LOBYTE(v43) = v52;
  sub_AB6B90();
  v53 = sub_AB6E80();
  v77 = v53;
  v78 = v54;
  v56 = v55;
  LOBYTE(v46) = v57;
  v58 = v54;

  sub_36B74(v49, v51, v43 & 1);

  KeyPath = swift_getKeyPath();
  v86 = v53;
  v87 = v56;
  LOBYTE(v51) = v46 & 1;
  v88 = v46 & 1;
  v89 = v58;
  v90 = KeyPath;
  v91 = 1;
  v60 = AccessibilityIdentifier.privacyWelcomeDescription.unsafeMutableAddressor();
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDBF0);
  v66 = sub_C9170();
  v67 = v82;
  View.accessibilityIdentifier(_:)(v61, v62, v63, v64, v65, v66);
  sub_36B74(v77, v56, v51);

  v69 = v79;
  v68 = v80;
  sub_15F84(v79, v80, &qword_DFD308);
  v70 = v85;
  v71 = v81;
  sub_15F84(v85, v81, &qword_DFD300);
  v72 = v84;
  sub_15F84(v67, v84, &qword_DFD2F8);
  v73 = v83;
  sub_15F84(v68, v83, &qword_DFD308);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD310);
  sub_15F84(v71, v73 + v74[12], &qword_DFD300);
  v75 = v73 + v74[16];
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_15F84(v72, v73 + v74[20], &qword_DFD2F8);
  sub_12E1C(v67, &qword_DFD2F8);
  sub_12E1C(v70, &qword_DFD300);
  sub_12E1C(v69, &qword_DFD308);
  sub_12E1C(v72, &qword_DFD2F8);
  sub_12E1C(v71, &qword_DFD300);
  return sub_12E1C(v68, &qword_DFD308);
}

uint64_t sub_2BCB80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB6900();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0) - 8;
  __chkstk_darwin(v49);
  v8 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A8);
  __chkstk_darwin(v51);
  v50 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2B0);
  v11 = __chkstk_darwin(v10 - 8);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v47 - v13;
  sub_AB7A20();
  sub_AB5970();
  v58 = v61;
  v53 = v62;
  v57 = v63;
  v54 = v64;
  v56 = v65;
  v55 = v66;
  LOBYTE(v67) = v62;
  v60 = v64;
  v14 = (a1 + *(type metadata accessor for WelcomeViewModel(0) + 32));
  v16 = *v14;
  v15 = v14[1];
  v18 = *a1;
  v17 = a1[1];
  v60 = 0;

  sub_307CC(v18);
  sub_AB7630();
  v19 = v67;
  v20 = *(&v67 + 1);
  *&v67 = v16;
  *(&v67 + 1) = v15;
  *&v68 = v18;
  *(&v68 + 1) = v17;
  LOBYTE(v69) = v19;
  *(&v69 + 1) = v20;
  sub_AB68F0();
  sub_2BE04C();
  sub_2BE0A0(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle);
  sub_AB6FB0();
  (*(v48 + 8))(v6, v4);

  sub_17654(v18);

  v21 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2C8) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  LOBYTE(v21) = sub_AB6AC0();
  sub_AB5690();
  v24 = &v8[*(v49 + 44)];
  *v24 = v21;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_AB7A30();
  sub_AB5E90();
  v29 = v50;
  sub_2BE1E4(v8, v50);
  v30 = v51;
  v31 = (v29 + *(v51 + 36));
  v32 = v72;
  v33 = v73;
  v31[4] = v71;
  v31[5] = v32;
  v31[6] = v33;
  v34 = v68;
  *v31 = v67;
  v31[1] = v34;
  v35 = v70;
  v31[2] = v69;
  v31[3] = v35;
  v36 = AccessibilityIdentifier.privacyTermsAcceptButton.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v41 = sub_2BE254();

  v42 = v52;
  View.accessibilityIdentifier(_:)(v37, v38, v39, v40, v30, v41);
  sub_12E1C(v29, &qword_DFD2A8);

  v43 = v59;
  sub_15F84(v42, v59, &qword_DFD2B0);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v58;
  *(a2 + 24) = v53;
  *(a2 + 32) = v57;
  *(a2 + 40) = v54;
  v44 = v55;
  *(a2 + 48) = v56;
  *(a2 + 56) = v44;
  *(a2 + 64) = 256;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2E8);
  sub_15F84(v43, a2 + *(v45 + 64), &qword_DFD2B0);
  sub_12E1C(v42, &qword_DFD2B0);
  return sub_12E1C(v43, &qword_DFD2B0);
}

char *sub_2BD13C()
{
  type metadata accessor for JSPrivacyLinkViewModel();
  v0 = JSPrivacyLinkViewModel.__allocating_init(nativelyHandledPrivacyLinkIdentifier:)(0xD00000000000001FLL, 0x8000000000B5D500);
  v1 = objc_allocWithZone(type metadata accessor for JSPrivacyLinkViewController());
  return JSPrivacyLinkViewController.init(privacyLinkViewModel:)(v0);
}

uint64_t sub_2BD1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE600();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2BD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE600();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_2BD2AC()
{
  sub_2BE600();
  sub_AB6970();
  __break(1u);
}

void sub_2BD334(void *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setModalInPresentation:1];

    v1 = v3;
  }
}

id sub_2BD3BC()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    Width = CGRectGetWidth(v16);
    v12 = 16.0;
    if (Width >= 375.0)
    {
      v12 = 24.0;
    }

    if (Width < 400.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 44.0;
    }

    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    v14 = round(CGRectGetHeight(v17) * 0.09);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v15 != v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = v13;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v15 != v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_AB5520();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2BD5DC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_2BD3BC();
}

uint64_t sub_2BD694()
{
  sub_2BE4F8(v0 + qword_DFCF78);
}

uint64_t sub_2BD6D4(uint64_t a1)
{
  sub_2BE4F8(a1 + qword_DFCF78);
}

double sub_2BD770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_2BD7DC()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_2CCE33B8E3BB7BA60C22C97FF829B42717HostedEnvironment__horizontalInsets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_2CCE33B8E3BB7BA60C22C97FF829B42717HostedEnvironment__topPadding, v2);

  return swift_deallocClassInstance();
}

void sub_2BD8DC()
{
  sub_363CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2BD980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_AB2F20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2BDA40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_AB2F20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2BDAE4()
{
  sub_E8550();
  if (v0 <= 0x3F)
  {
    sub_AB2F20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2BDB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WelcomeViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2BDC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WelcomeViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2BDD3C()
{
  type metadata accessor for WelcomeViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2BDDC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}