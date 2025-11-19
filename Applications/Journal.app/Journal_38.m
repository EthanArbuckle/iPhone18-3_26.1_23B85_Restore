uint64_t sub_1004045AC(uint64_t a1)
{
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if (Date.isDateInToday.getter() & 1) != 0 || (Date.isDateInYesterday.getter())
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (sub_1004923D4())
  {

    return sub_100403758();
  }

  else
  {
    v6 = sub_1004927E8();
    if ((v7 & 1) == 0 && (v6 - 30) >= 0xFFFFFFFFFFFFFFE4)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 0x2064657469736956;
      v8._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      v9._countAndFlagsBits = sub_100492BF0();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);

      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    return sub_100403BA4(a1);
  }
}

unint64_t sub_100404874()
{
  result = qword_100AE38F8;
  if (!qword_100AE38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE38F8);
  }

  return result;
}

unint64_t sub_1004048DC()
{
  result = qword_100AE3900;
  if (!qword_100AE3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3900);
  }

  return result;
}

unint64_t sub_100404934()
{
  result = qword_100AE3908;
  if (!qword_100AE3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3908);
  }

  return result;
}

id sub_100404988()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];

  [v0 setNumberOfLines:2];
  [v0 setTextAlignment:4];
  return v0;
}

id sub_100404ABC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_suggestionItem];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_stackView;
  v11 = [objc_allocWithZone(UIStackView) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAxis:1];
  [v11 setSpacing:11.0];
  [v11 setDistribution:0];
  [v11 setAlignment:1];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_iconImageView;
  v13 = [objc_allocWithZone(UIImageView) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setContentMode:1];

  v14 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleLargeTitle scale:1];
  [v13 setPreferredSymbolConfiguration:v14];

  *&v4[v12] = v13;
  v15 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_emojiLabel;
  v16 = [objc_allocWithZone(UILabel) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAdjustsFontForContentSizeCategory:0];
  [v16 setNumberOfLines:1];
  v17 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v16 setFont:v17];

  *&v4[v15] = v16;
  v18 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_titleLabel;
  *&v4[v18] = sub_100404988();
  *&v4[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_horizontalMargin] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_verticalMargin] = 0x4028000000000000;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for SearchSuggestionCollectionViewCell();
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  sub_100405030();

  return v19;
}

id sub_100404D84(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_suggestionItem];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_stackView;
  v5 = [objc_allocWithZone(UIStackView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:1];
  [v5 setSpacing:11.0];
  [v5 setDistribution:0];
  [v5 setAlignment:1];
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_iconImageView;
  v7 = [objc_allocWithZone(UIImageView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setContentMode:1];

  v8 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleLargeTitle scale:1];
  [v7 setPreferredSymbolConfiguration:v8];

  *&v1[v6] = v7;
  v9 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_emojiLabel;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAdjustsFontForContentSizeCategory:0];
  [v10 setNumberOfLines:1];
  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v10 setFont:v11];

  *&v1[v9] = v10;
  v12 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_titleLabel;
  *&v1[v12] = sub_100404988();
  *&v1[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_horizontalMargin] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_verticalMargin] = 0x4028000000000000;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for SearchSuggestionCollectionViewCell();
  v13 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    sub_100405030();
  }

  return v14;
}

id sub_100405030()
{
  v1 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_stackView;
  v2 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_iconImageView;
  [*&v0[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_stackView] addArrangedSubview:*&v0[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_iconImageView]];
  v31 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_emojiLabel;
  [*&v0[v1] addArrangedSubview:*&v0[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_emojiLabel]];
  v3 = OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_titleLabel;
  [*&v0[v1] addArrangedSubview:*&v0[OBJC_IVAR____TtC7Journal34SearchSuggestionCollectionViewCell_titleLabel]];
  v4 = [v0 contentView];
  [v4 addSubview:*&v0[v1]];

  v30 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941830;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [*&v0[v1] trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-16.0];
  *(v5 + 40) = v13;
  v14 = [*&v0[v1] topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:12.0];
  *(v5 + 48) = v17;
  v18 = [*&v0[v1] bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-12.0];
  *(v5 + 56) = v21;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  LODWORD(v23) = 1132068864;
  [*&v0[v3] setContentCompressionResistancePriority:1 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [*&v0[v3] setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [*&v0[v2] setContentHuggingPriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [*&v0[v2] setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [*&v0[v31] setContentHuggingPriority:1 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [*&v0[v31] setContentCompressionResistancePriority:1 forAxis:v28];

  return [v0 setAccessibilityContainerType:4];
}

id sub_100405410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004054C0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AE4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100405528()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  if (qword_100AD03C0 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_100B303B8];
  [v0 setTextAlignment:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  return v0;
}

id sub_10040562C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl;
  v12 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 initWithItems:isa];

  [v14 setSelectedSegmentIndex:0];
  [v14 setApportionsSegmentWidthsByContent:1];
  *&v4[v11] = v14;
  v15 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_titleLabel;
  *&v4[v15] = sub_100405528();
  v19.receiver = v4;
  v19.super_class = type metadata accessor for LocationPickerTitleCell();
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setAccessibilityContainerType:4];
  if (qword_100AD0848 != -1)
  {
    swift_once();
  }

  v17 = String._bridgeToObjectiveC()();
  [v16 setAccessibilityLabel:v17];

  return v16;
}

id sub_1004057F0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl;
  v6 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithItems:isa];

  [v8 setSelectedSegmentIndex:0];
  [v8 setApportionsSegmentWidthsByContent:1];
  *&v1[v5] = v8;
  v9 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_titleLabel;
  *&v1[v9] = sub_100405528();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for LocationPickerTitleCell();
  v10 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    [v12 setAccessibilityContainerType:4];
    if (qword_100AD0848 != -1)
    {
      swift_once();
    }

    v13 = String._bridgeToObjectiveC()();
    [v12 setAccessibilityLabel:v13];

    a1 = v13;
  }

  return v11;
}

void sub_1004059A4()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_10021DE14();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

LABEL_10:

  v8 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_titleLabel;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_titleLabel]];
  v9 = *&v1[v8];
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v11 = [v9 superview];
  v12 = &selRef_setSuggestedName_;
  if (v11)
  {
    v13 = v11;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v9 leadingAnchor];
    v15 = [v13 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:36.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v16 = 0;
    v13 = v9;
  }

  v17 = *&v1[v8];
  v18 = [v17 p_ivar_lyt[467]];
  if (v18)
  {
    v19 = v18;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v17 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:-36.0];
    if (v22)
    {
      [v22 setActive:1];
    }

    v12 = &selRef_setSuggestedName_;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v22 = 0;
    v19 = v17;
  }

  v23 = *&v1[v8];
  v24 = sub_100028DA0(0, 1, 12.0);

  v25 = *&v1[v8];
  v26 = [v25 p_ivar_lyt[467]];
  if (v26)
  {
    v27 = v26;
    [v25 v12[278]];
    v28 = [v25 topAnchor];
    v29 = [v27 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    [v30 setConstant:0.0];
    if (v30)
    {
      [v30 setActive:1];
    }
  }

  else
  {
    v30 = 0;
    v27 = v25;
  }

  v31 = *&v1[v8];
  v32 = String._bridgeToObjectiveC()();
  [v31 setText:v32];
}

void sub_100405DF8(uint64_t a1, uint64_t a2, char a3, char a4, int a5)
{
  v6 = v5;
  v10 = [v5 subviews];
  sub_10021DE14();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    [v14 removeFromSuperview];
  }

LABEL_10:
  v45 = a4;
  v46 = a5;

  v16 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl;
  [v6 addSubview:*&v6[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl]];
  [*&v6[v16] addTarget:v6 action:"tapSegmentedControl" forControlEvents:4096];
  v17 = *&v6[v16];
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v19 = [v17 superview];
  v20 = &selRef_setSuggestedName_;
  if (v19)
  {
    v21 = v19;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v17 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:20.0];
    if (v24)
    {
      [v24 setActive:1];
    }

    v20 = &selRef_setSuggestedName_;
  }

  else
  {
    v24 = 0;
    v21 = v17;
  }

  v25 = *&v6[v16];
  v26 = [v25 superview];
  if (v26)
  {
    v27 = v26;
    [v25 v20[278]];
    v28 = [v25 trailingAnchor];
    v29 = [v27 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    [v30 setConstant:-20.0];
    if (v30)
    {
      [v30 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v30 = 0;
    v27 = v25;
  }

  v31 = *&v6[v16];
  v32 = [v31 p_ivar_lyt[467]];
  if (v32)
  {
    v33 = v32;
    [v31 v20[278]];
    v34 = [v31 topAnchor];
    v35 = [v33 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    [v36 setConstant:0.0];
    v37 = v46;
    if (v36)
    {
      [v36 setActive:1];
    }

    v38 = a3;
  }

  else
  {
    v36 = 0;
    v33 = v31;
    v37 = v46;
    v38 = a3;
  }

  v39 = *&v6[v16];
  v40 = sub_100028DA0(0, 1, 12.0);

  v41 = &v6[OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle];
  *v41 = a1;
  *(v41 + 1) = a2;

  sub_1000F24EC(&qword_100AE2C68);
  if (v38)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100940050;
    *(v42 + 32) = 0;
    v43 = (v42 + 33);
    v44 = 2;
  }

  else
  {
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100940080;
    v43 = (v42 + 32);
    v44 = 1;
  }

  *v43 = 1;
  if (v45)
  {
    v42 = sub_1003E6094(1, v44 + 1, 1, v42);
    *(v42 + 16) = v44 + 1;
    *(v42 + v44 + 32) = 2;
  }

  sub_1004064BC(v42, v37);
}

void sub_10040632C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl);
  v2 = [v1 titleForSegmentAtIndex:{objc_msgSend(v1, "selectedSegmentIndex")}];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = *(v0 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle + 8);
    if (v6 && (v3 == *(v0 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle) ? (v7 = v6 == v5) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v8 = *(v0 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged);
      if (!v8)
      {
        return;
      }

      v9 = 0;
    }

    else
    {
      v10 = _s7Journal14LocationOptionO3forACSgSS_tcfC_0(v3, v5);
      if (v10 == 3)
      {
        return;
      }

      v8 = *(v0 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged);
      if (!v8)
      {
        return;
      }

      v9 = v10;
    }

    v8(v9);

    sub_100004DF8(v8);
  }
}

id sub_1004064BC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl;
  v29 = [*(v2 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_segmentedControl) numberOfSegments];
  [*(v2 + v5) removeAllSegments];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v3 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_nearImageryTabTitle;
    v9 = a1 + 32;
    do
    {
      if (*(v9 + v7))
      {
        v13 = *(v3 + v5);
        if (*(v9 + v7) != 2)
        {
          v14 = qword_100AD0618;
          v11 = v13;
          if (v14 == -1)
          {
            goto LABEL_4;
          }

LABEL_13:
          swift_once();
          goto LABEL_4;
        }

        v10 = qword_100AD0610;
        v11 = v13;
        if (v10 != -1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*(v8 + 8))
        {
          v15 = *(v3 + v5);

          v11 = v15;
          goto LABEL_5;
        }

        v16 = qword_100AD0620;
        v11 = *(v3 + v5);
        if (v16 != -1)
        {
          goto LABEL_13;
        }
      }

LABEL_4:

LABEL_5:
      v12 = String._bridgeToObjectiveC()();

      [v11 insertSegmentWithTitle:v12 atIndex:v7++ animated:0];
    }

    while (v6 != v7);
  }

  LODWORD(v17) = a2;
  if (a2 == 3)
  {
    v18 = 0;
  }

  else
  {
    v19 = *(v3 + v5);
    v20 = sub_1004068AC();

    if (a2)
    {
      if (a2 == 1)
      {
        if (qword_100AD0618 != -1)
        {
          swift_once();
        }

        v21 = &xmmword_100B30810;
      }

      else
      {
        if (qword_100AD0610 != -1)
        {
          swift_once();
        }

        v21 = &xmmword_100B30800;
      }
    }

    else
    {
      if (qword_100AD0620 != -1)
      {
        swift_once();
      }

      v21 = &xmmword_100B30820;
    }

    v23 = *v21;
    v22 = *(v21 + 1);

    v24 = *(v20 + 2);
    if (v24)
    {
      v18 = 0;
      v25 = v20 + 5;
      while (1)
      {
        v26 = *(v25 - 1) == v23 && *v25 == v22;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v18;
        v25 += 2;
        if (v24 == v18)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      v18 = 0;
    }

    LODWORD(v17) = a2;
  }

  [*(v3 + v5) setSelectedSegmentIndex:v18];
  result = [*(v3 + v5) numberOfSegments];
  if (v29 != result)
  {
    v28 = *(v3 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged);
    if (v28)
    {
      if (v17 == 3)
      {
        v17 = 1;
      }

      else
      {
        v17 = v17;
      }

      v28(v17);

      return sub_100004DF8(v28);
    }
  }

  return result;
}

double *sub_1004068AC()
{
  result = [v0 numberOfSegments];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v6 = [v0 titleForSegmentAtIndex:v3];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_10009BCC8(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_10009BCC8((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v5 = &v4[16 * v12];
        *(v5 + 4) = v8;
        *(v5 + 5) = v10;
      }

      v3 = (v3 + 1);
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

id sub_1004069CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPickerTitleCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100406B28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_100406B98()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v1 setView:v2];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v4 setBackgroundColor:v6];

  v7 = &v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings];
  swift_beginAccess();
  v8 = *(v7 + 4);
  if (v8 == 2)
  {
    sub_1000F24EC(&unk_100AE88B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100940080;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = 0x100000000000001ELL;
    *(v9 + 40) = 0x80000001008F1630;
    print(_:separator:terminator:)();

    return;
  }

  v10 = *v7;
  v11 = *(v7 + 1);
  v13 = *(v7 + 2);
  v12 = *(v7 + 3);
  v14 = *(v7 + 5);
  v702 = v8 & 1;
  v701 = BYTE1(v8) & 1;
  v700 = BYTE2(v8) & 1;
  v699 = BYTE3(v8) & 1;
  v698 = BYTE4(v8) & 1;
  v697 = BYTE5(v8) & 1;
  v696 = HIBYTE(v8) & 1;
  v695 = v14 & 1;
  v694 = BYTE1(v14) & 1;
  v693 = BYTE2(v14) & 1;
  v692 = BYTE3(v14) & 1;
  v691 = BYTE4(v14) & 1;
  v690 = BYTE5(v14) & 1;
  v689 = BYTE6(v14) & 1;
  v688 = HIBYTE(v14) & 1;
  v687 = v7[48] & 1;
  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  v682 = v13;
  v674 = v12;
  v663 = v10;
  v686 = v5;
  v17 = *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollView];
  [v15 addSubview:v17];

  v18 = *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollViewContainer];
  [v17 addSubview:v18];
  v19 = sub_100406AF8();
  [v18 addArrangedSubview:v19];

  v20 = sub_100406B04();
  [v18 addArrangedSubview:v20];

  v21 = sub_100406B10();
  [v18 addArrangedSubview:v21];

  v22 = sub_100406B1C();
  [v18 addArrangedSubview:v22];

  v23 = [v17 leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26 constant:20.0];
  [v27 setActive:1];

  v28 = [v17 trailingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  v662 = v11;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31 constant:-20.0];
  [v32 setActive:1];

  v33 = [v17 topAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor:v36 constant:20.0];
  [v37 setActive:1];

  v38 = [v17 bottomAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = [v39 bottomAnchor];

  v42 = [v38 constraintEqualToAnchor:v41 constant:-20.0];
  [v42 setActive:1];

  v43 = [v18 leadingAnchor];
  v44 = [v17 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  [v45 setActive:1];
  v46 = [v18 trailingAnchor];
  v47 = [v17 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setActive:1];
  v49 = [v18 topAnchor];
  v50 = [v17 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setActive:1];
  v52 = [v18 bottomAnchor];
  v53 = [v17 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  [v54 setActive:1];
  v55 = [v18 widthAnchor];
  v56 = [v17 widthAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  [v57 setActive:1];
  v58 = [objc_allocWithZone(UILabel) init];
  [v58 setTextAlignment:0];
  v59 = objc_opt_self();
  v60 = [v59 systemFontOfSize:20.0];
  [v58 setFont:v60];

  v61 = [v686 blackColor];
  [v58 setTextColor:v61];

  v62 = String._bridgeToObjectiveC()();
  [v58 setText:v62];

  v63 = v58;
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view1;
  [*&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view1] addSubview:v63];
  v65 = [v63 topAnchor];
  v661 = v63;

  v66 = [*&v1[v64] topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  [v67 setActive:1];
  v68 = *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelEntries];
  [v68 setTextAlignment:0];
  v685 = v59;
  v69 = [v59 systemFontOfSize:20.0];
  [v68 setFont:v69];

  v70 = [v686 blackColor];
  [v68 setTextColor:v70];

  v71 = String._bridgeToObjectiveC()();
  [v68 setText:v71];

  [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v64] addSubview:v68];
  v72 = [v68 topAnchor];
  v679 = v64;
  v73 = [*&v1[v64] topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:10.0];

  [v74 setActive:1];
  v75 = *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderBatchCount];
  v76 = *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBatchCount];
  v77 = v75;
  _StringGuts.grow(_:)(22);

  v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v78);

  v79 = v682;
  v684 = v1;
  v80 = *&v1[v64];
  [v76 setTextAlignment:0];
  v81 = [v59 systemFontOfSize:13.0];
  [v76 setFont:v81];

  v82 = [v686 blackColor];
  [v76 setTextColor:v82];

  v83 = [v686 clearColor];
  [v76 setBackgroundColor:v83];

  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v80 addSubview:v76];
  LODWORD(v84) = 1.0;
  [v77 setMinimumValue:v84];
  LODWORD(v85) = 1133903872;
  [v77 setMaximumValue:v85];
  [v77 setContinuous:1];
  v683 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_tintColor];
  [v77 setTintColor:?];
  v86 = [v686 clearColor];
  [v77 setBackgroundColor:v86];

  *&v87 = v79;
  [v77 setValue:v87];
  [v77 addTarget:v684 action:"actionBatchCountSliderValueDidChangeWithSender:" forControlEvents:4096];
  v88 = String._bridgeToObjectiveC()();

  [v76 setText:v88];

  [v77 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v80 addSubview:v77];
  v89 = v68;
  v90 = [v76 topAnchor];
  v91 = [v89 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  [v92 setActive:1];
  v93 = [v76 widthAnchor];
  v94 = [v80 widthAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  [v95 setActive:1];
  v96 = [v76 heightAnchor];
  v97 = [v96 constraintEqualToConstant:30.0];

  [v97 setActive:1];
  v98 = [v77 topAnchor];
  v99 = [v76 bottomAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  [v100 setActive:1];
  v101 = [v77 widthAnchor];
  v102 = [v80 widthAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  [v103 setActive:1];
  v104 = [v77 heightAnchor];
  v105 = [v104 constraintEqualToConstant:30.0];

  [v105 setActive:1];
  v106 = v684;
  v107 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderDatesDaysCount];
  v108 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelDatesDaysCount];
  v109 = v107;
  _StringGuts.grow(_:)(27);

  v110._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v110);

  v111 = *&v684[v679];
  v112 = v674;
  v675 = v77;
  v113 = v111;
  [v108 setTextAlignment:0];
  v114 = [v685 systemFontOfSize:13.0];
  [v108 setFont:v114];

  v115 = [v686 blackColor];
  [v108 setTextColor:v115];

  v116 = [v686 clearColor];
  [v108 setBackgroundColor:v116];

  [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v113 addSubview:v108];
  [v109 setMinimumValue:0.0];
  LODWORD(v117) = 1120403456;
  [v109 setMaximumValue:v117];
  [v109 setContinuous:1];
  [v109 setTintColor:v683];
  v118 = [v686 clearColor];
  [v109 setBackgroundColor:v118];

  *&v119 = v112;
  [v109 setValue:v119];
  [v109 addTarget:v684 action:"actionLastRandomDaysSliderValueDidChangeWithSender:" forControlEvents:4096];
  v120 = String._bridgeToObjectiveC()();

  [v108 setText:v120];

  [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v113 addSubview:v109];
  v121 = v675;
  v122 = [v108 topAnchor];
  v673 = v121;
  v123 = [v121 bottomAnchor];
  v124 = [v122 constraintEqualToAnchor:v123];

  [v124 setActive:1];
  v125 = [v108 widthAnchor];
  v126 = [v113 widthAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];

  [v127 setActive:1];
  v128 = [v108 heightAnchor];
  v129 = [v128 constraintEqualToConstant:30.0];

  [v129 setActive:1];
  v130 = [v109 topAnchor];
  v131 = [v108 bottomAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  [v132 setActive:1];
  v133 = [v109 widthAnchor];
  v134 = [v113 widthAnchor];
  v135 = [v133 constraintEqualToAnchor:v134];

  [v135 setActive:1];
  v136 = [v109 heightAnchor];
  v137 = [v136 constraintEqualToConstant:30.0];

  [v137 setActive:1];
  v138 = [*&v684[v679] heightAnchor];
  v139 = [v138 constraintEqualToConstant:220.0];

  [v139 setActive:1];
  v140 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsNeeded];
  [v140 setTextAlignment:0];
  v141 = [v685 systemFontOfSize:20.0];
  [v140 setFont:v141];

  v142 = [v686 blackColor];
  [v140 setTextColor:v142];

  v143 = String._bridgeToObjectiveC()();
  [v140 setText:v143];

  [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
  v144 = OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view2;
  [*&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view2] addSubview:v140];
  v145 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAssetsNeeded;
  [*&v106[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAssetsNeeded] addTarget:v106 action:"actionAssetsNeededSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [*&v684[v145] setOn:?];
  [*&v684[v145] setTintColor:v683];
  [*&v684[v145] setOnTintColor:v683];
  [*&v684[v145] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v106[v144] addSubview:*&v106[v145]];
  v146 = [*&v684[v145] heightAnchor];
  v147 = [v146 constraintEqualToConstant:30.0];

  [v147 setActive:1];
  v148 = [v140 widthAnchor];
  v149 = [*&v684[v144] widthAnchor];
  v150 = [v148 constraintEqualToAnchor:v149];

  [v150 setActive:1];
  v151 = [v140 heightAnchor];
  v152 = [v151 constraintEqualToConstant:30.0];

  [v152 setActive:1];
  v153 = [v140 leadingAnchor];
  v154 = [*&v684[v145] trailingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154 constant:20.0];

  [v155 setActive:1];
  v156 = [v140 topAnchor];
  v157 = [*&v684[v144] topAnchor];
  v158 = [v156 constraintEqualToAnchor:v157];

  [v158 setActive:1];
  v159 = [*&v684[v144] heightAnchor];
  v160 = [v159 constraintEqualToConstant:30.0];

  [v160 setActive:1];
  v161 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsToGen];
  [v161 setTextAlignment:0];
  v162 = [v685 systemFontOfSize:20.0];
  [v161 setFont:v162];

  v163 = [v686 blackColor];
  [v161 setTextColor:v163];

  v164 = String._bridgeToObjectiveC()();
  [v161 setText:v164];

  [v161 setTranslatesAutoresizingMaskIntoConstraints:0];
  v165 = OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view3;
  [*&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view3] addSubview:v161];
  v670 = v161;
  v166 = [v161 widthAnchor];
  v167 = [*&v684[v165] widthAnchor];
  v168 = [v166 constraintEqualToAnchor:v167];

  [v168 setActive:1];
  v169 = [v161 topAnchor];
  v680 = v165;
  v170 = [*&v684[v165] topAnchor];
  v171 = [v169 constraintEqualToAnchor:v170];

  [v171 setActive:1];
  v172 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos];
  v173 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPhotos];
  v174 = *&v684[v165];
  v175 = v172;
  v176 = v173;
  [v176 setTextAlignment:0];
  v177 = [v685 systemFontOfSize:13.0];
  [v176 setFont:v177];

  v178 = [v686 blackColor];
  [v176 setTextColor:v178];

  v179 = String._bridgeToObjectiveC()();
  [v176 setText:v179];

  v180 = v176;
  [v180 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v174 addSubview:v180];
  [v175 addTarget:v684 action:"actionAssetTypePhotosSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v175 setOn:v701];
  [v175 setTintColor:v683];
  [v175 setOnTintColor:v683];
  [v175 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v174 addSubview:v175];
  v181 = [v175 heightAnchor];
  v182 = [v181 constraintEqualToConstant:30.0];

  [v182 setActive:1];
  v183 = [v180 widthAnchor];
  v184 = [v174 widthAnchor];
  v185 = [v183 constraintEqualToAnchor:v184];

  [v185 setActive:1];
  v186 = [v180 heightAnchor];
  v187 = [v186 constraintEqualToConstant:30.0];

  [v187 setActive:1];
  v188 = v180;
  v189 = [v180 leadingAnchor];
  v190 = [v175 trailingAnchor];
  v191 = [v189 constraintEqualToAnchor:v190 constant:20.0];

  [v191 setActive:1];
  v192 = [v175 topAnchor];
  v193 = [v670 bottomAnchor];
  v194 = [v192 constraintEqualToAnchor:v193];

  [v194 setActive:1];
  v195 = [v180 topAnchor];
  v196 = [v670 bottomAnchor];
  v197 = [v195 constraintEqualToAnchor:v196];

  [v197 setActive:1];
  v676 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_view3SwitchesHeight;
  *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_view3SwitchesHeight] = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_view3SwitchesHeight] + 34.0;
  v198 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic];
  v199 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMusic];
  v200 = *&v684[v165];
  v201 = v198;
  v202 = v199;
  [v202 setTextAlignment:0];
  v203 = [v685 systemFontOfSize:13.0];
  [v202 setFont:v203];

  v204 = [v686 blackColor];
  [v202 setTextColor:v204];

  v205 = String._bridgeToObjectiveC()();
  [v202 setText:v205];

  v206 = v202;
  [v206 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v200 addSubview:v206];
  [v201 addTarget:v684 action:"actionAssetTypeMusicSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v201 setOn:v700];
  [v201 setTintColor:v683];
  [v201 setOnTintColor:v683];
  [v201 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v200 addSubview:v201];
  v207 = [v201 heightAnchor];
  v208 = [v207 constraintEqualToConstant:30.0];

  [v208 setActive:1];
  v209 = [v206 widthAnchor];
  v210 = [v200 widthAnchor];
  v211 = [v209 constraintEqualToAnchor:v210];

  [v211 setActive:1];
  v212 = [v206 heightAnchor];
  v213 = [v212 constraintEqualToConstant:30.0];

  [v213 setActive:1];
  v214 = [v206 leadingAnchor];
  v215 = [v201 trailingAnchor];
  v216 = [v214 constraintEqualToAnchor:v215 constant:20.0];

  [v216 setActive:1];
  v217 = [v201 topAnchor];
  v218 = [v188 bottomAnchor];
  v219 = [v217 constraintEqualToAnchor:v218];

  [v219 setActive:1];
  v220 = [v206 topAnchor];
  v660 = v188;
  v221 = [v188 bottomAnchor];
  v222 = [v220 constraintEqualToAnchor:v221];

  [v222 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v223 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts];
  v224 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPodcasts];
  v225 = *&v684[v680];
  v226 = v223;
  v227 = v224;
  [v227 setTextAlignment:0];
  v228 = [v685 systemFontOfSize:13.0];
  [v227 setFont:v228];

  v229 = [v686 blackColor];
  [v227 setTextColor:v229];

  v230 = String._bridgeToObjectiveC()();
  [v227 setText:v230];

  v231 = v227;
  [v231 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v225 addSubview:v231];
  [v226 addTarget:v684 action:"actionAssetTypePodcastsSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v226 setOn:v699];
  [v226 setTintColor:v683];
  [v226 setOnTintColor:v683];
  [v226 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v225 addSubview:v226];
  v232 = [v226 heightAnchor];
  v233 = [v232 constraintEqualToConstant:30.0];

  [v233 setActive:1];
  v234 = [v231 widthAnchor];
  v235 = [v225 widthAnchor];
  v236 = [v234 constraintEqualToAnchor:v235];

  [v236 setActive:1];
  v237 = [v231 heightAnchor];
  v238 = [v237 constraintEqualToConstant:30.0];

  [v238 setActive:1];
  v239 = [v231 leadingAnchor];
  v240 = [v226 trailingAnchor];
  v241 = [v239 constraintEqualToAnchor:v240 constant:20.0];

  [v241 setActive:1];
  v242 = [v226 topAnchor];
  v243 = [v206 bottomAnchor];
  v244 = [v242 constraintEqualToAnchor:v243];

  [v244 setActive:1];
  v245 = [v231 topAnchor];
  v659 = v206;
  v246 = [v206 bottomAnchor];
  v247 = [v245 constraintEqualToAnchor:v246];

  [v247 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v248 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks];
  v249 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBooks];
  v250 = *&v684[v680];
  v251 = v248;
  v252 = v249;
  [v252 setTextAlignment:0];
  v253 = [v685 systemFontOfSize:13.0];
  [v252 setFont:v253];

  v254 = [v686 blackColor];
  [v252 setTextColor:v254];

  v255 = String._bridgeToObjectiveC()();
  [v252 setText:v255];

  v256 = v252;
  [v256 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v250 addSubview:v256];
  [v251 addTarget:v684 action:"actionAssetTypeBooksSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v251 setOn:v698];
  [v251 setTintColor:v683];
  [v251 setOnTintColor:v683];
  [v251 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v250 addSubview:v251];
  v257 = [v251 heightAnchor];
  v258 = [v257 constraintEqualToConstant:30.0];

  [v258 setActive:1];
  v259 = [v256 widthAnchor];
  v260 = [v250 widthAnchor];
  v261 = [v259 constraintEqualToAnchor:v260];

  [v261 setActive:1];
  v262 = [v256 heightAnchor];
  v263 = [v262 constraintEqualToConstant:30.0];

  [v263 setActive:1];
  v264 = [v256 leadingAnchor];
  v265 = [v251 trailingAnchor];
  v266 = [v264 constraintEqualToAnchor:v265 constant:20.0];

  [v266 setActive:1];
  v267 = [v251 topAnchor];
  v268 = [v231 bottomAnchor];
  v269 = [v267 constraintEqualToAnchor:v268];

  [v269 setActive:1];
  v270 = [v256 topAnchor];
  v658 = v231;
  v271 = [v231 bottomAnchor];
  v272 = [v270 constraintEqualToAnchor:v271];

  [v272 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v273 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit];
  v274 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVisit];
  v275 = *&v684[v680];
  v276 = v273;
  v277 = v274;
  [v277 setTextAlignment:0];
  v278 = [v685 systemFontOfSize:13.0];
  [v277 setFont:v278];

  v279 = [v686 blackColor];
  [v277 setTextColor:v279];

  v280 = String._bridgeToObjectiveC()();
  [v277 setText:v280];

  v281 = v277;
  [v281 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v275 addSubview:v281];
  [v276 addTarget:v684 action:"actionAssetTypeVisitSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v276 setOn:v697];
  [v276 setTintColor:v683];
  [v276 setOnTintColor:v683];
  [v276 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v275 addSubview:v276];
  v282 = [v276 heightAnchor];
  v283 = [v282 constraintEqualToConstant:30.0];

  [v283 setActive:1];
  v284 = [v281 widthAnchor];
  v285 = [v275 widthAnchor];
  v286 = [v284 constraintEqualToAnchor:v285];

  [v286 setActive:1];
  v287 = [v281 heightAnchor];
  v288 = [v287 constraintEqualToConstant:30.0];

  [v288 setActive:1];
  v289 = [v281 leadingAnchor];
  v290 = [v276 trailingAnchor];
  v291 = [v289 constraintEqualToAnchor:v290 constant:20.0];

  [v291 setActive:1];
  v292 = [v276 topAnchor];
  v293 = [v256 bottomAnchor];
  v294 = [v292 constraintEqualToAnchor:v293];

  [v294 setActive:1];
  v295 = [v281 topAnchor];
  v657 = v256;
  v296 = [v256 bottomAnchor];
  v297 = [v295 constraintEqualToAnchor:v296];

  [v297 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v298 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMultiPinMap];
  v299 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMultiPinMap];
  v300 = *&v684[v680];
  v301 = v298;
  v302 = v299;
  [v302 setTextAlignment:0];
  v303 = [v685 systemFontOfSize:13.0];
  [v302 setFont:v303];

  v304 = [v686 blackColor];
  [v302 setTextColor:v304];

  v305 = String._bridgeToObjectiveC()();
  [v302 setText:v305];

  v306 = v302;
  [v306 setTranslatesAutoresizingMaskIntoConstraints:0];
  v307 = v306;
  [v300 addSubview:v306];
  [v301 addTarget:v684 action:"actionAssetTypeMultiPinMapSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v301 setOn:v697];
  [v301 setTintColor:v683];
  [v301 setOnTintColor:v683];
  [v301 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v300 addSubview:v301];
  v308 = [v301 heightAnchor];
  v309 = [v308 constraintEqualToConstant:30.0];

  [v309 setActive:1];
  v310 = [v307 widthAnchor];
  v311 = [v300 widthAnchor];
  v312 = [v310 constraintEqualToAnchor:v311];

  [v312 setActive:1];
  v313 = [v307 heightAnchor];
  v314 = [v313 constraintEqualToConstant:30.0];

  [v314 setActive:1];
  v315 = [v307 leadingAnchor];
  v316 = [v301 trailingAnchor];
  v317 = [v315 constraintEqualToAnchor:v316 constant:20.0];

  [v317 setActive:1];
  v318 = [v301 topAnchor];
  v319 = [v281 bottomAnchor];
  v320 = [v318 constraintEqualToAnchor:v319];

  [v320 setActive:1];
  v672 = v307;
  v321 = [v307 topAnchor];
  v656 = v281;
  v322 = [v281 bottomAnchor];
  v323 = [v321 constraintEqualToAnchor:v322];

  [v323 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v324 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo];
  v325 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVideo];
  v326 = *&v684[v680];
  v327 = v324;
  v328 = v325;
  [v328 setTextAlignment:0];
  v329 = [v685 systemFontOfSize:13.0];
  [v328 setFont:v329];

  v330 = [v686 blackColor];
  [v328 setTextColor:v330];

  v331 = String._bridgeToObjectiveC()();
  [v328 setText:v331];

  v332 = v328;
  [v332 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v326 addSubview:v332];
  [v327 addTarget:v684 action:"actionAssetTypeVideoSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v327 setOn:v695];
  [v327 setTintColor:v683];
  [v327 setOnTintColor:v683];
  [v327 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v326 addSubview:v327];
  v333 = [v327 heightAnchor];
  v334 = [v333 constraintEqualToConstant:30.0];

  [v334 setActive:1];
  v335 = [v332 widthAnchor];
  v336 = [v326 widthAnchor];
  v337 = [v335 constraintEqualToAnchor:v336];

  [v337 setActive:1];
  v338 = [v332 heightAnchor];
  v339 = [v338 constraintEqualToConstant:30.0];

  [v339 setActive:1];
  v340 = [v332 leadingAnchor];
  v341 = [v327 trailingAnchor];
  v342 = [v340 constraintEqualToAnchor:v341 constant:20.0];

  [v342 setActive:1];
  v343 = [v327 topAnchor];
  v344 = [v672 bottomAnchor];
  v345 = [v343 constraintEqualToAnchor:v344];

  [v345 setActive:1];
  v346 = [v332 topAnchor];
  v347 = [v672 bottomAnchor];
  v348 = [v346 constraintEqualToAnchor:v347];

  [v348 setActive:1];
  v349 = v332;
  *&v676[v684] = *&v676[v684] + 34.0;
  v350 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio];
  v351 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAudio];
  v352 = *&v684[v680];
  v353 = v350;
  v354 = v351;
  [v354 setTextAlignment:0];
  v355 = [v685 systemFontOfSize:13.0];
  [v354 setFont:v355];

  v356 = [v686 blackColor];
  [v354 setTextColor:v356];

  v357 = String._bridgeToObjectiveC()();
  [v354 setText:v357];

  v358 = v354;
  [v358 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v352 addSubview:v358];
  [v353 addTarget:v684 action:"actionAssetTypeAudioSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v353 setOn:v696];
  [v353 setTintColor:v683];
  [v353 setOnTintColor:v683];
  [v353 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v352 addSubview:v353];
  v359 = [v353 heightAnchor];
  v360 = [v359 constraintEqualToConstant:30.0];

  [v360 setActive:1];
  v361 = [v358 widthAnchor];
  v362 = [v352 widthAnchor];
  v363 = [v361 constraintEqualToAnchor:v362];

  [v363 setActive:1];
  v364 = [v358 heightAnchor];
  v365 = [v364 constraintEqualToConstant:30.0];

  [v365 setActive:1];
  v366 = [v358 leadingAnchor];
  v367 = [v353 trailingAnchor];
  v368 = [v366 constraintEqualToAnchor:v367 constant:20.0];

  [v368 setActive:1];
  v369 = [v353 topAnchor];
  v370 = [v349 bottomAnchor];
  v371 = [v369 constraintEqualToAnchor:v370];

  [v371 setActive:1];
  v671 = v358;
  v372 = [v358 topAnchor];
  v655 = v349;
  v373 = [v349 bottomAnchor];
  v374 = [v372 constraintEqualToAnchor:v373];

  [v374 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v375 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity];
  v376 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelActivity];
  v377 = *&v684[v680];
  v378 = v375;
  v379 = v376;
  [v379 setTextAlignment:0];
  v380 = [v685 systemFontOfSize:13.0];
  [v379 setFont:v380];

  v381 = [v686 blackColor];
  [v379 setTextColor:v381];

  v382 = String._bridgeToObjectiveC()();
  [v379 setText:v382];

  v383 = v379;
  [v383 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v377 addSubview:v383];
  [v378 addTarget:v684 action:"actionAssetTypeActivitySwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v378 setOn:v694];
  [v378 setTintColor:v683];
  [v378 setOnTintColor:v683];
  [v378 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v377 addSubview:v378];
  v384 = [v378 heightAnchor];
  v385 = [v384 constraintEqualToConstant:30.0];

  [v385 setActive:1];
  v386 = [v383 widthAnchor];
  v387 = [v377 widthAnchor];
  v388 = [v386 constraintEqualToAnchor:v387];

  [v388 setActive:1];
  v389 = [v383 heightAnchor];
  v390 = [v389 constraintEqualToConstant:30.0];

  [v390 setActive:1];
  v391 = [v383 leadingAnchor];
  v392 = [v378 trailingAnchor];
  v393 = [v391 constraintEqualToAnchor:v392 constant:20.0];

  [v393 setActive:1];
  v394 = [v378 topAnchor];
  v395 = [v671 bottomAnchor];
  v396 = [v394 constraintEqualToAnchor:v395];

  [v396 setActive:1];
  v669 = v383;
  v397 = [v383 topAnchor];
  v398 = [v671 bottomAnchor];
  v399 = [v397 constraintEqualToAnchor:v398];

  [v399 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v400 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute];
  v401 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRoute];
  v402 = *&v684[v680];
  v403 = v400;
  v404 = v401;
  [v404 setTextAlignment:0];
  v405 = [v685 systemFontOfSize:13.0];
  [v404 setFont:v405];

  v406 = [v686 blackColor];
  [v404 setTextColor:v406];

  v407 = String._bridgeToObjectiveC()();
  [v404 setText:v407];

  v408 = v404;
  [v408 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v402 addSubview:v408];
  [v403 addTarget:v684 action:"actionAssetTypeRouteSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v403 setOn:v693];
  [v403 setTintColor:v683];
  [v403 setOnTintColor:v683];
  [v403 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v402 addSubview:v403];
  v409 = [v403 heightAnchor];
  v410 = [v409 constraintEqualToConstant:30.0];

  [v410 setActive:1];
  v411 = [v408 widthAnchor];
  v412 = [v402 widthAnchor];
  v413 = [v411 constraintEqualToAnchor:v412];

  [v413 setActive:1];
  v414 = [v408 heightAnchor];
  v415 = [v414 constraintEqualToConstant:30.0];

  [v415 setActive:1];
  v416 = [v408 leadingAnchor];
  v417 = [v403 trailingAnchor];
  v418 = [v416 constraintEqualToAnchor:v417 constant:20.0];

  [v418 setActive:1];
  v419 = [v403 topAnchor];
  v420 = [v669 bottomAnchor];
  v421 = [v419 constraintEqualToAnchor:v420];

  [v421 setActive:1];
  v668 = v408;
  v422 = [v408 topAnchor];
  v423 = [v669 bottomAnchor];
  v424 = [v422 constraintEqualToAnchor:v423];

  [v424 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v425 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink];
  v426 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelLink];
  v427 = *&v684[v680];
  v428 = v425;
  v429 = v426;
  [v429 setTextAlignment:0];
  v430 = [v685 systemFontOfSize:13.0];
  [v429 setFont:v430];

  v431 = [v686 blackColor];
  [v429 setTextColor:v431];

  v432 = String._bridgeToObjectiveC()();
  [v429 setText:v432];

  v433 = v429;
  [v433 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v427 addSubview:v433];
  [v428 addTarget:v684 action:"actionAssetTypeLinkSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v428 setOn:v692];
  [v428 setTintColor:v683];
  [v428 setOnTintColor:v683];
  [v428 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v427 addSubview:v428];
  v434 = [v428 heightAnchor];
  v435 = [v434 constraintEqualToConstant:30.0];

  [v435 setActive:1];
  v436 = [v433 widthAnchor];
  v437 = [v427 widthAnchor];
  v438 = [v436 constraintEqualToAnchor:v437];

  [v438 setActive:1];
  v439 = [v433 heightAnchor];
  v440 = [v439 constraintEqualToConstant:30.0];

  [v440 setActive:1];
  v441 = [v433 leadingAnchor];
  v442 = [v428 trailingAnchor];
  v443 = [v441 constraintEqualToAnchor:v442 constant:20.0];

  [v443 setActive:1];
  v444 = [v428 topAnchor];
  v445 = [v668 bottomAnchor];
  v446 = [v444 constraintEqualToAnchor:v445];

  [v446 setActive:1];
  v667 = v433;
  v447 = [v433 topAnchor];
  v448 = [v668 bottomAnchor];
  v449 = [v447 constraintEqualToAnchor:v448];

  [v449 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v450 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchContact];
  v451 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelContact];
  v452 = *&v684[v680];
  v453 = v450;
  v454 = v451;
  [v454 setTextAlignment:0];
  v455 = [v685 systemFontOfSize:13.0];
  [v454 setFont:v455];

  v456 = [v686 blackColor];
  [v454 setTextColor:v456];

  v457 = String._bridgeToObjectiveC()();
  [v454 setText:v457];

  v458 = v454;
  [v458 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v452 addSubview:v458];
  [v453 addTarget:v684 action:"actionAssetTypeContactSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v453 setOn:v691];
  [v453 setTintColor:v683];
  [v453 setOnTintColor:v683];
  [v453 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v452 addSubview:v453];
  v459 = [v453 heightAnchor];
  v460 = [v459 constraintEqualToConstant:30.0];

  [v460 setActive:1];
  v461 = [v458 widthAnchor];
  v462 = [v452 widthAnchor];
  v463 = [v461 constraintEqualToAnchor:v462];

  [v463 setActive:1];
  v464 = [v458 heightAnchor];
  v465 = [v464 constraintEqualToConstant:30.0];

  [v465 setActive:1];
  v466 = [v458 leadingAnchor];
  v467 = [v453 trailingAnchor];
  v468 = [v466 constraintEqualToAnchor:v467 constant:20.0];

  [v468 setActive:1];
  v469 = [v453 topAnchor];
  v470 = [v433 bottomAnchor];
  v471 = [v469 constraintEqualToAnchor:v470];

  [v471 setActive:1];
  v666 = v458;
  v472 = [v458 topAnchor];
  v473 = [v433 bottomAnchor];
  v474 = [v472 constraintEqualToAnchor:v473];

  [v474 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v475 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutRoute];
  v476 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutRoute];
  v477 = *&v684[v680];
  v478 = v475;
  v479 = v476;
  [v479 setTextAlignment:0];
  v480 = [v685 systemFontOfSize:13.0];
  [v479 setFont:v480];

  v481 = [v686 blackColor];
  [v479 setTextColor:v481];

  v482 = String._bridgeToObjectiveC()();
  [v479 setText:v482];

  v483 = v479;
  [v483 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v477 addSubview:v483];
  [v478 addTarget:v684 action:"actionAssetTypeWorkoutRouteSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v478 setOn:v690];
  [v478 setTintColor:v683];
  [v478 setOnTintColor:v683];
  [v478 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v477 addSubview:v478];
  v484 = [v478 heightAnchor];
  v485 = [v484 constraintEqualToConstant:30.0];

  [v485 setActive:1];
  v486 = [v483 widthAnchor];
  v487 = [v477 widthAnchor];
  v488 = [v486 constraintEqualToAnchor:v487];

  [v488 setActive:1];
  v489 = [v483 heightAnchor];
  v490 = [v489 constraintEqualToConstant:30.0];

  [v490 setActive:1];
  v491 = [v483 leadingAnchor];
  v492 = [v478 trailingAnchor];
  v493 = [v491 constraintEqualToAnchor:v492 constant:20.0];

  [v493 setActive:1];
  v494 = [v478 topAnchor];
  v495 = [v666 bottomAnchor];
  v496 = [v494 constraintEqualToAnchor:v495];

  [v496 setActive:1];
  v497 = [v483 topAnchor];
  v498 = [v666 bottomAnchor];
  v499 = [v497 constraintEqualToAnchor:v498];

  [v499 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v500 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutIcon];
  v501 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutIcon];
  v502 = *&v684[v680];
  v503 = v500;
  v504 = v501;
  [v504 setTextAlignment:0];
  v505 = [v685 systemFontOfSize:13.0];
  [v504 setFont:v505];

  v506 = [v686 blackColor];
  [v504 setTextColor:v506];

  v507 = String._bridgeToObjectiveC()();
  [v504 setText:v507];

  v508 = v504;
  [v508 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v502 addSubview:v508];
  [v503 addTarget:v684 action:"actionAssetTypeWorkoutIconSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v503 setOn:v689];
  [v503 setTintColor:v683];
  [v503 setOnTintColor:v683];
  [v503 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v502 addSubview:v503];
  v509 = [v503 heightAnchor];
  v510 = [v509 constraintEqualToConstant:30.0];

  [v510 setActive:1];
  v511 = [v508 widthAnchor];
  v512 = [v502 widthAnchor];
  v513 = [v511 constraintEqualToAnchor:v512];

  [v513 setActive:1];
  v514 = [v508 heightAnchor];
  v515 = [v514 constraintEqualToConstant:30.0];

  [v515 setActive:1];
  v516 = [v508 leadingAnchor];
  v517 = [v503 trailingAnchor];
  v518 = [v516 constraintEqualToAnchor:v517 constant:20.0];

  [v518 setActive:1];
  v519 = [v503 topAnchor];
  v520 = [v483 bottomAnchor];
  v521 = [v519 constraintEqualToAnchor:v520];

  [v521 setActive:1];
  v665 = v508;
  v522 = [v508 topAnchor];
  v654 = v483;
  v523 = [v483 bottomAnchor];
  v524 = [v522 constraintEqualToAnchor:v523];

  [v524 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v525 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMotionActivity];
  v526 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMotionActivity];
  v527 = *&v684[v680];
  v528 = v525;
  v529 = v526;
  [v529 setTextAlignment:0];
  v530 = [v685 systemFontOfSize:13.0];
  [v529 setFont:v530];

  v531 = [v686 blackColor];
  [v529 setTextColor:v531];

  v532 = String._bridgeToObjectiveC()();
  [v529 setText:v532];

  v533 = v529;
  [v533 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v527 addSubview:v533];
  [v528 addTarget:v684 action:"actionAssetTypeMotionActivitySwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v528 setOn:v687];
  [v528 setTintColor:v683];
  [v528 setOnTintColor:v683];
  [v528 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v527 addSubview:v528];
  v534 = [v528 heightAnchor];
  v535 = [v534 constraintEqualToConstant:30.0];

  [v535 setActive:1];
  v536 = [v533 widthAnchor];
  v537 = [v527 widthAnchor];
  v538 = [v536 constraintEqualToAnchor:v537];

  [v538 setActive:1];
  v539 = [v533 heightAnchor];
  v540 = [v539 constraintEqualToConstant:30.0];

  [v540 setActive:1];
  v541 = [v533 leadingAnchor];
  v542 = [v528 trailingAnchor];
  v543 = [v541 constraintEqualToAnchor:v542 constant:20.0];

  [v543 setActive:1];
  v544 = [v528 topAnchor];
  v545 = [v665 bottomAnchor];
  v546 = [v544 constraintEqualToAnchor:v545];

  [v546 setActive:1];
  v664 = v533;
  v547 = [v533 topAnchor];
  v548 = [v665 bottomAnchor];
  v549 = [v547 constraintEqualToAnchor:v548];

  [v549 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v550 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchConfetti];
  v551 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelConfetti];
  v552 = *&v684[v680];
  v553 = v550;
  v554 = v551;
  [v554 setTextAlignment:0];
  v555 = [v685 systemFontOfSize:13.0];
  [v554 setFont:v555];

  v556 = [v686 blackColor];
  [v554 setTextColor:v556];

  v557 = String._bridgeToObjectiveC()();
  [v554 setText:v557];

  [v554 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v552 addSubview:v554];
  [v553 addTarget:v684 action:"actionAssetTypeConfettiSwitchStateDidChangeWithSender:" forControlEvents:4096];
  [v553 setOn:v688];
  [v553 setTintColor:v683];
  [v553 setOnTintColor:v683];
  [v553 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v552 addSubview:v553];
  v558 = [v553 heightAnchor];
  v559 = [v558 constraintEqualToConstant:30.0];

  [v559 setActive:1];
  v560 = [v554 widthAnchor];
  v561 = [v552 widthAnchor];
  v562 = [v560 constraintEqualToAnchor:v561];

  [v562 setActive:1];
  v563 = [v554 heightAnchor];
  v564 = [v563 constraintEqualToConstant:30.0];

  [v564 setActive:1];
  v565 = [v554 leadingAnchor];
  v566 = [v553 trailingAnchor];
  v567 = [v565 constraintEqualToAnchor:v566 constant:20.0];

  [v567 setActive:1];
  v568 = [v553 topAnchor];
  v569 = [v533 bottomAnchor];
  v570 = [v568 constraintEqualToAnchor:v569];

  [v570 setActive:1];
  v571 = [v554 topAnchor];
  v572 = [v533 bottomAnchor];
  v573 = [v571 constraintEqualToAnchor:v572];

  [v573 setActive:1];
  *&v676[v684] = *&v676[v684] + 34.0;
  v574 = [*&v684[v680] heightAnchor];
  v575 = [v574 constraintEqualToConstant:*&v676[v684]];

  [v575 setActive:1];
  v576 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRand];
  [v576 setTextAlignment:0];
  v577 = [v685 systemFontOfSize:20.0];
  [v576 setFont:v577];

  v578 = [v686 blackColor];
  [v576 setTextColor:v578];

  v579 = String._bridgeToObjectiveC()();
  [v576 setText:v579];

  [v576 setTranslatesAutoresizingMaskIntoConstraints:0];
  v580 = OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view4;
  [*&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view4] addSubview:v576];
  v581 = [v576 widthAnchor];
  v582 = [*&v684[v580] widthAnchor];
  v583 = [v581 constraintEqualToAnchor:v582];

  [v583 setActive:1];
  v584 = [v576 topAnchor];
  v585 = [*&v684[v580] topAnchor];
  v586 = [v584 constraintEqualToAnchor:v585];

  [v586 setActive:1];
  v587 = [v576 widthAnchor];
  v681 = v580;
  v588 = [*&v684[v580] widthAnchor];
  v589 = [v587 constraintEqualToAnchor:v588];

  [v589 setActive:1];
  v590 = [v576 heightAnchor];
  v591 = [v590 constraintEqualToConstant:30.0];

  [v591 setActive:1];
  v592 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin];
  v593 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin];
  v594 = v592;
  _StringGuts.grow(_:)(25);

  v595._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v595);

  v677 = *&v684[v580];
  [v593 setTextAlignment:0];
  v596 = [v685 systemFontOfSize:13.0];
  [v593 setFont:v596];

  v597 = [v686 blackColor];
  [v593 setTextColor:v597];

  v598 = [v686 clearColor];
  [v593 setBackgroundColor:v598];

  [v593 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v677 addSubview:v593];
  LODWORD(v599) = 1.0;
  [v594 setMinimumValue:v599];
  LODWORD(v600) = 10.0;
  [v594 setMaximumValue:v600];
  [v594 setContinuous:1];
  [v594 setTintColor:v683];
  v601 = [v686 clearColor];
  [v594 setBackgroundColor:v601];

  *&v602 = v663;
  [v594 setValue:v602];
  [v594 addTarget:v684 action:"actionMinRangeSliderValueDidChangeWithSender:" forControlEvents:4096];
  v603 = String._bridgeToObjectiveC()();

  [v593 setText:v603];

  [v594 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v677 addSubview:v594];
  v604 = v576;
  v605 = [v593 topAnchor];
  v606 = [v604 bottomAnchor];
  v607 = [v605 constraintEqualToAnchor:v606];

  [v607 setActive:1];
  v608 = [v593 widthAnchor];
  v609 = [v677 widthAnchor];
  v610 = [v608 constraintEqualToAnchor:v609];

  [v610 setActive:1];
  v611 = [v593 heightAnchor];
  v612 = [v611 constraintEqualToConstant:30.0];

  [v612 setActive:1];
  v613 = [v594 topAnchor];
  v614 = [v593 bottomAnchor];
  v615 = [v613 constraintEqualToAnchor:v614];

  [v615 setActive:1];
  v616 = [v594 widthAnchor];
  v617 = [v677 widthAnchor];
  v618 = [v616 constraintEqualToAnchor:v617];

  [v618 setActive:1];
  v619 = [v594 heightAnchor];
  v620 = [v619 constraintEqualToConstant:30.0];

  [v620 setActive:1];
  v621 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax];
  v622 = *&v684[OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax];
  v623 = v621;
  _StringGuts.grow(_:)(25);

  v624._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v624);

  v625 = *&v684[v681];
  v678 = v594;
  v626 = v625;
  [v622 setTextAlignment:0];
  v627 = [v685 systemFontOfSize:13.0];
  [v622 setFont:v627];

  v628 = [v686 blackColor];
  [v622 setTextColor:v628];

  v629 = [v686 clearColor];
  [v622 setBackgroundColor:v629];

  [v622 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v626 addSubview:v622];
  LODWORD(v630) = 1.0;
  [v623 setMinimumValue:v630];
  LODWORD(v631) = 10.0;
  [v623 setMaximumValue:v631];
  [v623 setContinuous:1];
  [v623 setTintColor:v683];
  v632 = [v686 clearColor];
  [v623 setBackgroundColor:v632];

  *&v633 = v662;
  [v623 setValue:v633];
  [v623 addTarget:v684 action:"actionMaxRangeSliderValueDidChangeWithSender:" forControlEvents:4096];
  v634 = String._bridgeToObjectiveC()();

  [v622 setText:v634];

  [v623 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v626 addSubview:v623];
  v635 = v678;
  v636 = [v622 topAnchor];
  v637 = [v635 bottomAnchor];
  v638 = [v636 constraintEqualToAnchor:v637];

  [v638 setActive:1];
  v639 = [v622 widthAnchor];
  v640 = [v626 widthAnchor];
  v641 = [v639 constraintEqualToAnchor:v640];

  [v641 setActive:1];
  v642 = [v622 heightAnchor];
  v643 = [v642 constraintEqualToConstant:30.0];

  [v643 setActive:1];
  v644 = [v623 topAnchor];
  v645 = [v622 bottomAnchor];
  v646 = [v644 constraintEqualToAnchor:v645];

  [v646 setActive:1];
  v647 = [v623 widthAnchor];
  v648 = [v626 widthAnchor];
  v649 = [v647 constraintEqualToAnchor:v648];

  [v649 setActive:1];
  v650 = [v623 heightAnchor];
  v651 = [v650 constraintEqualToConstant:30.0];

  [v651 setActive:1];
  v652 = [*&v684[v681] heightAnchor];
  v653 = [v652 constraintEqualToConstant:240.0];

  [v653 setActive:1];
  sub_10040DD10(v702);
  if ((v702 & 1) == 0)
  {
    sub_10040D800();
  }
}

id sub_10040D800()
{
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAssetsNeeded) setOn:0 animated:1];
  v2 = sub_100406A98();
  if (*(v1 + 32) != 2)
  {
    *(v1 + 33) = 0;
  }

  (v2)(&v30, 0);
  v4 = sub_100406A98();
  if (*(v3 + 32) != 2)
  {
    *(v3 + 34) = 0;
  }

  (v4)(&v30, 0);
  v6 = sub_100406A98();
  if (*(v5 + 32) != 2)
  {
    *(v5 + 35) = 0;
  }

  (v6)(&v30, 0);
  v8 = sub_100406A98();
  if (*(v7 + 32) != 2)
  {
    *(v7 + 36) = 0;
  }

  (v8)(&v30, 0);
  v10 = sub_100406A98();
  if (*(v9 + 32) != 2)
  {
    *(v9 + 37) = 0;
  }

  (v10)(&v30, 0);
  v12 = sub_100406A98();
  if (*(v11 + 32) != 2)
  {
    *(v11 + 40) = 0;
  }

  (v12)(&v30, 0);
  v14 = sub_100406A98();
  if (*(v13 + 32) != 2)
  {
    *(v13 + 39) = 0;
  }

  (v14)(&v30, 0);
  v16 = sub_100406A98();
  if (*(v15 + 32) != 2)
  {
    *(v15 + 8) = 1;
  }

  (v16)(&v30, 0);
  v18 = sub_100406A98();
  if (*(v17 + 32) != 2)
  {
    *v17 = 1;
  }

  (v18)(&v30, 0);
  LODWORD(v19) = 1.0;
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax) setValue:1 animated:v19];
  LODWORD(v20) = 1.0;
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin) setValue:1 animated:v20];
  v21 = *(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin);
  v30 = 0;
  v31 = 0xE000000000000000;
  v22 = v21;
  _StringGuts.grow(_:)(25);

  v30 = 0xD000000000000017;
  v31 = 0x80000001008F15B0;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24 = String._bridgeToObjectiveC()();

  [v22 setText:v24];

  v25 = *(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax);
  v30 = 0;
  v31 = 0xE000000000000000;
  v26 = v25;
  _StringGuts.grow(_:)(25);

  v30 = 0xD000000000000017;
  v31 = 0x80000001008F15D0;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28 = String._bridgeToObjectiveC()();

  [v26 setText:v28];

  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity) setOn:0 animated:1];
  [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute) setOn:0 animated:1];
  return [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink) setOn:0 animated:1];
}

id sub_10040DD10(char a1)
{
  v3 = 1.0;
  if ((a1 & 1) == 0)
  {
    sub_10040D800();
    v3 = 0.05;
  }

  v23 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax) setUserInteractionEnabled:a1 & 1];
  v22 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin) setUserInteractionEnabled:a1 & 1];
  v21 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos) setUserInteractionEnabled:a1 & 1];
  v20 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic) setUserInteractionEnabled:a1 & 1];
  v19 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts) setUserInteractionEnabled:a1 & 1];
  v17 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks) setUserInteractionEnabled:a1 & 1];
  v15 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit) setUserInteractionEnabled:a1 & 1];
  v18 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo) setUserInteractionEnabled:a1 & 1];
  v16 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio) setUserInteractionEnabled:a1 & 1];
  v14 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity) setUserInteractionEnabled:a1 & 1];
  v13 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute) setUserInteractionEnabled:a1 & 1];
  v4 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink) setUserInteractionEnabled:a1 & 1];
  v5 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchContact;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchContact) setUserInteractionEnabled:a1 & 1];
  v6 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutRoute;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutRoute) setUserInteractionEnabled:a1 & 1];
  v7 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutIcon;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutIcon) setUserInteractionEnabled:a1 & 1];
  v8 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchConfetti;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchConfetti) setUserInteractionEnabled:a1 & 1];
  v9 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutActivity;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutActivity) setUserInteractionEnabled:a1 & 1];
  v10 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMotionActivity;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMotionActivity) setUserInteractionEnabled:a1 & 1];
  [*(v1 + v23) setAlpha:v3];
  [*(v1 + v22) setAlpha:v3];
  [*(v1 + v21) setAlpha:v3];
  [*(v1 + v20) setAlpha:v3];
  [*(v1 + v19) setAlpha:v3];
  [*(v1 + v17) setAlpha:v3];
  [*(v1 + v15) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMultiPinMap) setAlpha:v3];
  [*(v1 + v18) setAlpha:v3];
  [*(v1 + v16) setAlpha:v3];
  [*(v1 + v14) setAlpha:v3];
  [*(v1 + v13) setAlpha:v3];
  [*(v1 + v4) setAlpha:v3];
  [*(v1 + v5) setAlpha:v3];
  [*(v1 + v6) setAlpha:v3];
  [*(v1 + v7) setAlpha:v3];
  [*(v1 + v8) setAlpha:v3];
  [*(v1 + v9) setAlpha:v3];
  [*(v1 + v10) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPhotos) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMusic) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPodcasts) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBooks) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVisit) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMultiPinMap) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVideo) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAudio) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelActivity) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRoute) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelLink) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelContact) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutRoute) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutIcon) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelConfetti) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMotionActivity) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsToGen) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRand) setAlpha:v3];
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin) setAlpha:v3];
  v11 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax);

  return [v11 setAlpha:v3];
}

void (*sub_10040E368(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = (result)(v15, 0);
    if (a1)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!a1)
  {
    __break(1u);
    return result;
  }

  *(v4 + 32) = [a1 isOn];
  v5(v15, 0);
LABEL_6:
  result = sub_10040DD10([a1 isOn]);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040E5A4(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 33) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040E7CC(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 34) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040E9F4(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 35) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040EC1C(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 36) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040EE44(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 37) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040F06C(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 38) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040F294(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 40) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040F4BC(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 39) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040F6E4(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 41) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040F90C(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 42) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040FB34(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 43) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040FD5C(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 44) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_10040FF84(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 45) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_1004101AC(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 46) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_1004103D4(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 47) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

uint64_t (*sub_1004105FC(void *a1))(_OWORD *, void)
{
  result = sub_100406A98();
  v5 = result;
  if (*(v4 + 32) == 2)
  {
    result = result(v15, 0);
  }

  else
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    *(v4 + 48) = [a1 isOn];
    result = v5(v15, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v8 = *(v7 + 32);
    if (v8 != 2)
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 32) & 1;
      v11 = vdupq_n_s64(v8);
      v12 = *(v7 + 48) & 1;
      v13 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v13;
      v16 = v10;
      *v11.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v11, xmmword_100954580), vshlq_u64(v11, xmmword_100954570))), 0x1000100010001);
      v17 = vuzp1_s8(*v11.i8, *v11.i8).u32[0];
      v18 = BYTE5(v8) & 1;
      v19 = BYTE6(v8) & 1;
      v20 = HIBYTE(v8) & 1;
      v14 = vdupq_n_s64(v9);
      v21 = v9 & 1;
      *v14.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_100954580), vshlq_u64(v14, xmmword_100954570))), 0x1000100010001);
      v22 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v23 = BYTE5(v9) & 1;
      v24 = BYTE6(v9) & 1;
      v25 = HIBYTE(v9) & 1;
      v26 = v12;

      v6(v15);
      return sub_100004DF8(v6);
    }
  }

  return result;
}

void sub_100410824(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax);
  _StringGuts.grow(_:)(25);

  *&v36[0] = 0xD000000000000017;
  *(&v36[0] + 1) = 0x80000001008F15D0;
  v5 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax) value];
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = String._bridgeToObjectiveC()();

  [v4 setText:v8];

  v10 = sub_100406A98();
  if (*(v9 + 32) == 2)
  {
    (v10)(v36, 0);
    goto LABEL_10;
  }

  v11 = v9;
  [*(v2 + v5) value];
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_29;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v11 + 8) = v12;
  (v10)(v36, 0);
LABEL_10:
  [*(v2 + v5) value];
  v14 = v13;
  v15 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin;
  [*(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin) value];
  if (v14 >= v16)
  {
    goto LABEL_22;
  }

  v18 = sub_100406A98();
  if (*(v17 + 32) == 2)
  {
    (v18)(v36, 0);
  }

  else
  {
    v19 = v17;
    [*(v2 + v5) value];
    if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 <= -9.2234e18)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v20 >= 9.2234e18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    *v19 = v20;
    (v18)(v36, 0);
  }

  v21 = *(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin);
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  v22 = v21;
  _StringGuts.grow(_:)(25);

  *&v36[0] = 0xD000000000000017;
  *(&v36[0] + 1) = 0x80000001008F15B0;
  [*(v2 + v5) value];
  if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_32;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25 = String._bridgeToObjectiveC()();

  [v22 setText:v25];

  if (!a1)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v26 = *(v2 + v15);
  [a1 value];
  [v26 setValue:?];

LABEL_22:
  v27 = *(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v27)
  {
    v28 = v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    swift_beginAccess();
    v29 = *(v28 + 32);
    if (v29 != 2)
    {
      v30 = *(v28 + 40);
      v31 = *(v28 + 32) & 1;
      v32 = vdupq_n_s64(v29);
      v33 = *(v28 + 48) & 1;
      v34 = *(v28 + 16);
      v36[0] = *v28;
      v36[1] = v34;
      v37 = v31;
      *v32.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v32, xmmword_100954580), vshlq_u64(v32, xmmword_100954570))), 0x1000100010001);
      v38 = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
      v39 = BYTE5(v29) & 1;
      v40 = BYTE6(v29) & 1;
      v41 = HIBYTE(v29) & 1;
      v35 = vdupq_n_s64(v30);
      v42 = v30 & 1;
      *v35.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v35, xmmword_100954580), vshlq_u64(v35, xmmword_100954570))), 0x1000100010001);
      v43 = vuzp1_s8(*v35.i8, *v35.i8).u32[0];
      v44 = BYTE5(v30) & 1;
      v45 = BYTE6(v30) & 1;
      v46 = HIBYTE(v30) & 1;
      v47 = v33;

      v27(v36);
      sub_100004DF8(v27);
    }
  }
}

void sub_100410DA8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin);
  _StringGuts.grow(_:)(25);

  *&v36[0] = 0xD000000000000017;
  *(&v36[0] + 1) = 0x80000001008F15B0;
  v5 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin;
  [*(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin) value];
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = String._bridgeToObjectiveC()();

  [v4 setText:v8];

  v10 = sub_100406A98();
  if (*(v9 + 32) == 2)
  {
    (v10)(v36, 0);
    goto LABEL_10;
  }

  v11 = v9;
  [*(v2 + v5) value];
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_29;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *v11 = v12;
  (v10)(v36, 0);
LABEL_10:
  [*(v2 + v5) value];
  v14 = v13;
  v15 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax;
  [*(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax) value];
  if (v16 >= v14)
  {
    goto LABEL_22;
  }

  v18 = sub_100406A98();
  if (*(v17 + 32) == 2)
  {
    (v18)(v36, 0);
  }

  else
  {
    v19 = v17;
    [*(v2 + v5) value];
    if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 <= -9.2234e18)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v20 >= 9.2234e18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    *(v19 + 8) = v20;
    (v18)(v36, 0);
  }

  v21 = *(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax);
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  v22 = v21;
  _StringGuts.grow(_:)(25);

  *&v36[0] = 0xD000000000000017;
  *(&v36[0] + 1) = 0x80000001008F15D0;
  [*(v2 + v5) value];
  if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_32;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25 = String._bridgeToObjectiveC()();

  [v22 setText:v25];

  if (!a1)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v26 = *(v2 + v15);
  [a1 value];
  [v26 setValue:?];

LABEL_22:
  v27 = *(v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v27)
  {
    v28 = v2 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    swift_beginAccess();
    v29 = *(v28 + 32);
    if (v29 != 2)
    {
      v30 = *(v28 + 40);
      v31 = *(v28 + 32) & 1;
      v32 = vdupq_n_s64(v29);
      v33 = *(v28 + 48) & 1;
      v34 = *(v28 + 16);
      v36[0] = *v28;
      v36[1] = v34;
      v37 = v31;
      *v32.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v32, xmmword_100954580), vshlq_u64(v32, xmmword_100954570))), 0x1000100010001);
      v38 = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
      v39 = BYTE5(v29) & 1;
      v40 = BYTE6(v29) & 1;
      v41 = HIBYTE(v29) & 1;
      v35 = vdupq_n_s64(v30);
      v42 = v30 & 1;
      *v35.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v35, xmmword_100954580), vshlq_u64(v35, xmmword_100954570))), 0x1000100010001);
      v43 = vuzp1_s8(*v35.i8, *v35.i8).u32[0];
      v44 = BYTE5(v30) & 1;
      v45 = BYTE6(v30) & 1;
      v46 = HIBYTE(v30) & 1;
      v47 = v33;

      v27(v36);
      sub_100004DF8(v27);
    }
  }
}

id sub_10041132C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = xmmword_100955130;
  v7[48] = 0;
  v8 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelEntries;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBatchCount;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderBatchCount;
  *&v3[v10] = [objc_allocWithZone(UISlider) init];
  v11 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelDatesDaysCount;
  *&v3[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderDatesDaysCount;
  *&v3[v12] = [objc_allocWithZone(UISlider) init];
  v13 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsNeeded;
  *&v3[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAssetsNeeded;
  *&v3[v14] = [objc_allocWithZone(UISwitch) init];
  v15 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos;
  *&v3[v15] = [objc_allocWithZone(UISwitch) init];
  v16 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic;
  *&v3[v16] = [objc_allocWithZone(UISwitch) init];
  v17 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts;
  *&v3[v17] = [objc_allocWithZone(UISwitch) init];
  v18 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks;
  *&v3[v18] = [objc_allocWithZone(UISwitch) init];
  v19 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit;
  *&v3[v19] = [objc_allocWithZone(UISwitch) init];
  v20 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMultiPinMap;
  *&v3[v20] = [objc_allocWithZone(UISwitch) init];
  v21 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo;
  *&v3[v21] = [objc_allocWithZone(UISwitch) init];
  v22 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio;
  *&v3[v22] = [objc_allocWithZone(UISwitch) init];
  v23 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity;
  *&v3[v23] = [objc_allocWithZone(UISwitch) init];
  v24 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute;
  *&v3[v24] = [objc_allocWithZone(UISwitch) init];
  v25 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink;
  *&v3[v25] = [objc_allocWithZone(UISwitch) init];
  v26 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchContact;
  *&v3[v26] = [objc_allocWithZone(UISwitch) init];
  v27 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutRoute;
  *&v3[v27] = [objc_allocWithZone(UISwitch) init];
  v28 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutIcon;
  *&v3[v28] = [objc_allocWithZone(UISwitch) init];
  v29 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchConfetti;
  *&v3[v29] = [objc_allocWithZone(UISwitch) init];
  v30 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutActivity;
  *&v3[v30] = [objc_allocWithZone(UISwitch) init];
  v31 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMotionActivity;
  *&v3[v31] = [objc_allocWithZone(UISwitch) init];
  v32 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax;
  *&v3[v32] = [objc_allocWithZone(UILabel) init];
  v33 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax;
  *&v3[v33] = [objc_allocWithZone(UISlider) init];
  v34 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin;
  *&v3[v34] = [objc_allocWithZone(UILabel) init];
  v35 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin;
  *&v3[v35] = [objc_allocWithZone(UISlider) init];
  v36 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPhotos;
  *&v3[v36] = [objc_allocWithZone(UILabel) init];
  v37 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMusic;
  *&v3[v37] = [objc_allocWithZone(UILabel) init];
  v38 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPodcasts;
  *&v3[v38] = [objc_allocWithZone(UILabel) init];
  v39 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBooks;
  *&v3[v39] = [objc_allocWithZone(UILabel) init];
  v40 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVisit;
  *&v3[v40] = [objc_allocWithZone(UILabel) init];
  v41 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMultiPinMap;
  *&v3[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVideo;
  *&v3[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAudio;
  *&v3[v43] = [objc_allocWithZone(UILabel) init];
  v44 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelActivity;
  *&v3[v44] = [objc_allocWithZone(UILabel) init];
  v45 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRoute;
  *&v3[v45] = [objc_allocWithZone(UILabel) init];
  v46 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelLink;
  *&v3[v46] = [objc_allocWithZone(UILabel) init];
  v47 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelContact;
  *&v3[v47] = [objc_allocWithZone(UILabel) init];
  v48 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutRoute;
  *&v3[v48] = [objc_allocWithZone(UILabel) init];
  v49 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutIcon;
  *&v3[v49] = [objc_allocWithZone(UILabel) init];
  v50 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelConfetti;
  *&v3[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMotionActivity;
  *&v3[v51] = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsToGen;
  *&v3[v52] = [objc_allocWithZone(UILabel) init];
  v53 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRand;
  *&v3[v53] = [objc_allocWithZone(UILabel) init];
  v54 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_tintColor;
  *&v3[v54] = [objc_opt_self() blueColor];
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_dimmedAlpha] = 0x3FA999999999999ALL;
  v55 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollView;
  v56 = [objc_allocWithZone(UIScrollView) init];
  [v56 setShowsVerticalScrollIndicator:0];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v55] = v56;
  v57 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollViewContainer;
  v58 = [objc_allocWithZone(UIStackView) init];
  [v58 setAxis:1];
  [v58 setSpacing:10.0];
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v57] = v58;
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view1] = 0;
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view2] = 0;
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view3] = 0;
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view4] = 0;
  *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_view3SwitchesHeight] = 0;
  if (a2)
  {
    v59 = String._bridgeToObjectiveC()();
  }

  else
  {
    v59 = 0;
  }

  v62.receiver = v3;
  v62.super_class = type metadata accessor for BatchSettingsVC();
  v60 = objc_msgSendSuper2(&v62, "initWithNibName:bundle:", v59, a3);

  return v60;
}

id sub_100411A9C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = xmmword_100955130;
  v4[48] = 0;
  v5 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelEntries;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBatchCount;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderBatchCount;
  *&v1[v7] = [objc_allocWithZone(UISlider) init];
  v8 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelDatesDaysCount;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderDatesDaysCount;
  *&v1[v9] = [objc_allocWithZone(UISlider) init];
  v10 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsNeeded;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAssetsNeeded;
  *&v1[v11] = [objc_allocWithZone(UISwitch) init];
  v12 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPhotos;
  *&v1[v12] = [objc_allocWithZone(UISwitch) init];
  v13 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMusic;
  *&v1[v13] = [objc_allocWithZone(UISwitch) init];
  v14 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchPodcasts;
  *&v1[v14] = [objc_allocWithZone(UISwitch) init];
  v15 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchBooks;
  *&v1[v15] = [objc_allocWithZone(UISwitch) init];
  v16 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVisit;
  *&v1[v16] = [objc_allocWithZone(UISwitch) init];
  v17 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMultiPinMap;
  *&v1[v17] = [objc_allocWithZone(UISwitch) init];
  v18 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchVideo;
  *&v1[v18] = [objc_allocWithZone(UISwitch) init];
  v19 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchAudio;
  *&v1[v19] = [objc_allocWithZone(UISwitch) init];
  v20 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchActivity;
  *&v1[v20] = [objc_allocWithZone(UISwitch) init];
  v21 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchRoute;
  *&v1[v21] = [objc_allocWithZone(UISwitch) init];
  v22 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchLink;
  *&v1[v22] = [objc_allocWithZone(UISwitch) init];
  v23 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchContact;
  *&v1[v23] = [objc_allocWithZone(UISwitch) init];
  v24 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutRoute;
  *&v1[v24] = [objc_allocWithZone(UISwitch) init];
  v25 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutIcon;
  *&v1[v25] = [objc_allocWithZone(UISwitch) init];
  v26 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchConfetti;
  *&v1[v26] = [objc_allocWithZone(UISwitch) init];
  v27 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchWorkoutActivity;
  *&v1[v27] = [objc_allocWithZone(UISwitch) init];
  v28 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_switchMotionActivity;
  *&v1[v28] = [objc_allocWithZone(UISwitch) init];
  v29 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMax;
  *&v1[v29] = [objc_allocWithZone(UILabel) init];
  v30 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMax;
  *&v1[v30] = [objc_allocWithZone(UISlider) init];
  v31 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMin;
  *&v1[v31] = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderMin;
  *&v1[v32] = [objc_allocWithZone(UISlider) init];
  v33 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPhotos;
  *&v1[v33] = [objc_allocWithZone(UILabel) init];
  v34 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMusic;
  *&v1[v34] = [objc_allocWithZone(UILabel) init];
  v35 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelPodcasts;
  *&v1[v35] = [objc_allocWithZone(UILabel) init];
  v36 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBooks;
  *&v1[v36] = [objc_allocWithZone(UILabel) init];
  v37 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVisit;
  *&v1[v37] = [objc_allocWithZone(UILabel) init];
  v38 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMultiPinMap;
  *&v1[v38] = [objc_allocWithZone(UILabel) init];
  v39 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelVideo;
  *&v1[v39] = [objc_allocWithZone(UILabel) init];
  v40 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAudio;
  *&v1[v40] = [objc_allocWithZone(UILabel) init];
  v41 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelActivity;
  *&v1[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRoute;
  *&v1[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelLink;
  *&v1[v43] = [objc_allocWithZone(UILabel) init];
  v44 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelContact;
  *&v1[v44] = [objc_allocWithZone(UILabel) init];
  v45 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutRoute;
  *&v1[v45] = [objc_allocWithZone(UILabel) init];
  v46 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelWorkoutIcon;
  *&v1[v46] = [objc_allocWithZone(UILabel) init];
  v47 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelConfetti;
  *&v1[v47] = [objc_allocWithZone(UILabel) init];
  v48 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelMotionActivity;
  *&v1[v48] = [objc_allocWithZone(UILabel) init];
  v49 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelAssetsToGen;
  *&v1[v49] = [objc_allocWithZone(UILabel) init];
  v50 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelRand;
  *&v1[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_tintColor;
  *&v1[v51] = [objc_opt_self() blueColor];
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_dimmedAlpha] = 0x3FA999999999999ALL;
  v52 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollView;
  v53 = [objc_allocWithZone(UIScrollView) init];
  [v53 setShowsVerticalScrollIndicator:0];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v52] = v53;
  v54 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_scrollViewContainer;
  v55 = [objc_allocWithZone(UIStackView) init];
  [v55 setAxis:1];
  [v55 setSpacing:10.0];
  [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v54] = v55;
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view1] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view2] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view3] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC____lazy_storage___view4] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15BatchSettingsVC_view3SwitchesHeight] = 0;
  v58.receiver = v1;
  v58.super_class = type metadata accessor for BatchSettingsVC();
  v56 = objc_msgSendSuper2(&v58, "initWithCoder:", a1);

  if (v56)
  {
  }

  return v56;
}

id sub_1004121A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchSettingsVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100412590()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelBatchCount);
  _StringGuts.grow(_:)(22);

  *&v21[0] = 0xD000000000000014;
  *(&v21[0] + 1) = 0x80000001008F1610;
  v3 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderBatchCount;
  result = [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderBatchCount) value];
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v2 setText:v7];

  v9 = sub_100406A98();
  if (*(v8 + 32) == 2)
  {
    result = (v9)(v21, 0);
    goto LABEL_10;
  }

  v10 = v8;
  result = [*(v1 + v3) value];
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(v10 + 16) = v11;
  result = (v9)(v21, 0);
LABEL_10:
  v12 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v12)
  {
    v13 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v14 = *(v13 + 32);
    if (v14 != 2)
    {
      v15 = *(v13 + 40);
      v16 = *(v13 + 32) & 1;
      v17 = vdupq_n_s64(v14);
      v18 = *(v13 + 48) & 1;
      v19 = *(v13 + 16);
      v21[0] = *v13;
      v21[1] = v19;
      v22 = v16;
      *v17.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_100954580), vshlq_u64(v17, xmmword_100954570))), 0x1000100010001);
      v23 = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
      v24 = BYTE5(v14) & 1;
      v25 = BYTE6(v14) & 1;
      v26 = HIBYTE(v14) & 1;
      v20 = vdupq_n_s64(v15);
      v27 = v15 & 1;
      *v20.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_100954580), vshlq_u64(v20, xmmword_100954570))), 0x1000100010001);
      v28 = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
      v29 = BYTE5(v15) & 1;
      v30 = BYTE6(v15) & 1;
      v31 = HIBYTE(v15) & 1;
      v32 = v18;

      v12(v21);
      return sub_100004DF8(v12);
    }
  }

  return result;
}

id sub_100412890()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_labelDatesDaysCount);
  _StringGuts.grow(_:)(27);

  *&v21[0] = 0xD000000000000019;
  *(&v21[0] + 1) = 0x80000001008F15F0;
  v3 = OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderDatesDaysCount;
  result = [*(v0 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_sliderDatesDaysCount) value];
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v2 setText:v7];

  v9 = sub_100406A98();
  if (*(v8 + 32) == 2)
  {
    result = (v9)(v21, 0);
    goto LABEL_10;
  }

  v10 = v8;
  result = [*(v1 + v3) value];
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(v10 + 24) = v11;
  result = (v9)(v21, 0);
LABEL_10:
  v12 = *(v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass);
  if (v12)
  {
    v13 = v1 + OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings;
    result = swift_beginAccess();
    v14 = *(v13 + 32);
    if (v14 != 2)
    {
      v15 = *(v13 + 40);
      v16 = *(v13 + 32) & 1;
      v17 = vdupq_n_s64(v14);
      v18 = *(v13 + 48) & 1;
      v19 = *(v13 + 16);
      v21[0] = *v13;
      v21[1] = v19;
      v22 = v16;
      *v17.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_100954580), vshlq_u64(v17, xmmword_100954570))), 0x1000100010001);
      v23 = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
      v24 = BYTE5(v14) & 1;
      v25 = BYTE6(v14) & 1;
      v26 = HIBYTE(v14) & 1;
      v20 = vdupq_n_s64(v15);
      v27 = v15 & 1;
      *v20.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_100954580), vshlq_u64(v20, xmmword_100954570))), 0x1000100010001);
      v28 = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
      v29 = BYTE5(v15) & 1;
      v30 = BYTE6(v15) & 1;
      v31 = HIBYTE(v15) & 1;
      v32 = v18;

      v12(v21);
      return sub_100004DF8(v12);
    }
  }

  return result;
}

void sub_100412B90(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v56 = a1;
  v7 = sub_1000F24EC(&qword_100AE3BA8);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  v55 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v46 - v9;
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for JournalFeatureFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, enum case for JournalFeatureFlags.recentlyDeleted(_:), v16);
  v20 = JournalFeatureFlags.isEnabled.getter();
  (*(v17 + 8))(v19, v16);
  v57 = a2;
  v21 = a2 >> 62;
  if (v20)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v22 = v14;
    v23 = a3;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._object = 0x80000001008F1BA0;
    v24._countAndFlagsBits = 0xD000000000000026;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
    if (v21)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v14;
    v23 = a3;
    aBlock = v25;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v26._object = 0x80000001008F1BD0;
    v26._countAndFlagsBits = 0x1000000000000028;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v27 = [v23 traitCollection];
  v28 = [v27 userInterfaceIdiom];

  if (v28 == 5)
  {
    if (v21)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v30 = String._bridgeToObjectiveC()();

  v52 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:v52];

  if (v21)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v54 = v23;
  v48 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v46[1] = String.init(localized:table:bundle:locale:comment:)();
  v31 = v50;
  v32 = v51;
  v49 = *(v51 + 16);
  v47 = v10;
  v49(v10, v56, v50);
  v33 = *(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v57;
  v51 = *(v32 + 32);
  (v51)(v34 + ((v33 + 24) & ~v33), v10, v31);

  v35 = String._bridgeToObjectiveC()();

  v62 = sub_100416C14;
  v63 = v34;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10016B4D8;
  v61 = &unk_100A6C308;
  v36 = _Block_copy(&aBlock);

  v37 = objc_opt_self();
  v57 = [v37 actionWithTitle:v35 style:2 handler:v36];
  _Block_release(v36);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v38 = v47;
  v49(v47, v56, v31);
  v39 = swift_allocObject();
  (v51)(v39 + ((v33 + 16) & ~v33), v38, v31);
  v40 = String._bridgeToObjectiveC()();

  v62 = sub_100416D54;
  v63 = v39;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10016B4D8;
  v61 = &unk_100A6C358;
  v41 = _Block_copy(&aBlock);

  v42 = [v37 actionWithTitle:v40 style:1 handler:v41];
  _Block_release(v41);

  v43 = v52;
  v44 = v57;
  [v52 addAction:v57];
  [v43 addAction:v42];
  v45 = [v43 popoverPresentationController];
  [v45 setSourceItem:v53];

  [v54 presentViewController:v43 animated:1 completion:0];
}

uint64_t sub_1004134E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a2;
  sub_1004EC158(0, 0, v5, &unk_100955178, v8);

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:1 forKey:v10];

  v12[15] = 1;
  sub_1000F24EC(&qword_100AE3BA8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004136A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for MergeableEntryAttributes();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6260);
  v4[9] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE4C80);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for UserEngagement.StateSnapshot();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v11;
  v4[26] = v10;

  return _swift_task_switch(sub_10041397C, v11, v10);
}

uint64_t sub_10041397C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_100413A58;

  return sub_10003FA1C(v1, v3, 0, 0, 1);
}

uint64_t sub_100413A58()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 208);
  v7 = *(v2 + 200);
  if (v0)
  {
    v8 = sub_100413FD8;
  }

  else
  {
    v8 = sub_100413BF0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100413BF0()
{
  v1 = v0[5];

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    v30 = v0[1];

    return v30();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v41 = v0[19];
    v4 = v0[14];
    v5 = v0[7];
    v40 = v1 & 0xC000000000000001;
    v38 = (v4 + 8);
    v39 = (v4 + 104);
    v34 = v0[5] + 32;
    v35 = (v5 + 48);
    v33 = (v5 + 16);
    v32 = (v5 + 8);
    v31 = (v0[11] + 8);
    v37 = enum case for JournalFeatureFlags.enhancedSync(_:);
    v36 = (v0[17] + 32);
    v42 = result;
    while (1)
    {
      if (v40)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v34 + 8 * v3);
      }

      v18 = v0[15];
      v19 = v0[13];
      static Date.now.getter();
      (*v39)(v18, v37, v19);
      v20 = JournalFeatureFlags.isEnabled.getter();
      (*v38)(v18, v19);
      if (v20)
      {
        v21 = v0[9];
        v22 = v0[6];
        v23 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
        swift_beginAccess();
        sub_10007BD08(v17 + v23, v21);
        if ((*v35)(v21, 1, v22))
        {
          sub_100416458(v0[9]);
LABEL_15:
          v8 = 0;
          v10 = 0xE000000000000000;
          goto LABEL_8;
        }

        v24 = v0[12];
        v25 = v0[9];
        v26 = v0[10];
        v27 = v0[8];
        v28 = v0[6];
        (*v33)(v27, v25, v28);
        sub_100416458(v25);
        MergeableEntryAttributes.text.getter();
        (*v32)(v27, v28);
        v29 = CRAttributedString.attributedString.getter();
        (*v31)(v24, v26);
        v7 = [v29 string];
      }

      else
      {
        v6 = *(v17 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
        if (!v6)
        {
          goto LABEL_15;
        }

        v7 = [v6 string];
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

LABEL_8:
      ++v3;
      v11 = v0[20];
      v12 = v0[18];
      v13 = v0[16];
      v14 = sub_1001D7928(v17);
      v15 = *(v17 + 40);
      (*v36)(v11, v12, v13);
      v16 = (v11 + v41[5]);
      *v16 = v8;
      v16[1] = v10;
      *(v11 + v41[6]) = v14;
      *(v11 + v41[7]) = v15;
      sub_1001D6F90(v11, v11, 3);

      sub_1004163FC(v11);
      if (v42 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100413FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004140A0(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v38 = sub_1000F24EC(&qword_100AE3BA8);
  v4 = *(v38 - 8);
  v42 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = *(v4 + 16);
  v35 = v4 + 16;
  v36 = v11;
  v12 = v38;
  v11(v6, a1, v38);
  v33 = *(v4 + 80);
  v13 = (v33 + 16) & ~v33;
  v31 = v13;
  v14 = swift_allocObject();
  v32 = *(v4 + 32);
  v15 = v14 + v13;
  v16 = v12;
  v32(v15, v6, v12);
  v17 = String._bridgeToObjectiveC()();

  v47 = sub_100416B90;
  v48 = v14;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C128;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v34 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v20 = v6;
  v21 = v16;
  v36(v6, v37, v16);
  v22 = v31;
  v23 = swift_allocObject();
  v32(v23 + v22, v20, v21);
  v24 = String._bridgeToObjectiveC()();

  v47 = sub_100417340;
  v48 = v23;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C178;
  v25 = _Block_copy(&aBlock);

  v26 = [v19 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  v27 = v39;
  v28 = v34;
  [v39 addAction:v34];
  [v27 addAction:v26];
  v29 = [v27 popoverPresentationController];
  [v29 setSourceItem:v40];

  [v41 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_10041469C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setBool:1 forKey:v1];

  sub_1000F24EC(&qword_100AE3BA8);
  return CheckedContinuation.resume(returning:)();
}

void sub_100414758(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v52 = a4;
  v57 = a1;
  v56 = sub_1000F24EC(&qword_100AE3BA8);
  v6 = *(v56 - 8);
  v55 = *(v6 + 64);
  __chkstk_darwin(v56);
  v51 = v48 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v16 = [a2 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  v18 = 0;
  v58 = a3;
  v54 = (a3 >> 62);
  if (v17 == 5)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._object = 0x80000001008F1750;
    v19._countAndFlagsBits = 0xD000000000000013;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    if (v54)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    aBlock = v20;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v21._countAndFlagsBits = 0x73656972746E4520;
    v21._object = 0xE90000000000003FLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v18 = v22;
  }

  v23 = [a2 traitCollection];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != 5 && v54)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (v18)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v26 = String._bridgeToObjectiveC()();

  v50 = [objc_opt_self() alertControllerWithTitle:v25 message:v26 preferredStyle:0];

  v27 = [a2 traitCollection];
  v28 = [v27 userInterfaceIdiom];

  v53 = a2;
  if (v28 == 5)
  {
    String.LocalizationValue.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._object = 0x80000001008F1750;
    v29._countAndFlagsBits = 0xD000000000000013;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
    if (v54)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    aBlock = v30;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v31._countAndFlagsBits = 0x73656972746E4520;
    v31._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  static Locale.current.getter();
  v48[0] = v13;
  String.init(localized:table:bundle:locale:comment:)();
  v48[1] = v10;
  v54 = *(v6 + 16);
  v32 = v51;
  v33 = v56;
  v54(v51, v57, v56);
  v34 = v6;
  v35 = *(v6 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v58;
  v49 = *(v34 + 32);
  v49(v36 + ((v35 + 24) & ~v35), v32, v33);

  v37 = String._bridgeToObjectiveC()();

  v63 = sub_100416330;
  v64 = v36;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v48[2] = &v61;
  v61 = sub_10016B4D8;
  v62 = &unk_100A6C060;
  v38 = _Block_copy(&aBlock);

  v39 = objc_opt_self();
  v58 = [v39 actionWithTitle:v37 style:2 handler:v38];
  _Block_release(v38);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v40 = v56;
  v54(v32, v57, v56);
  v41 = swift_allocObject();
  v49(v41 + ((v35 + 16) & ~v35), v32, v40);
  v42 = String._bridgeToObjectiveC()();

  v63 = sub_100417340;
  v64 = v41;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_10016B4D8;
  v62 = &unk_100A6C0B0;
  v43 = _Block_copy(&aBlock);

  v44 = [v39 actionWithTitle:v42 style:1 handler:v43];
  _Block_release(v43);

  v45 = v50;
  v46 = v58;
  [v50 addAction:v58];
  [v45 addAction:v44];
  v47 = [v45 popoverPresentationController];
  [v47 setSourceItem:v52];

  [v53 presentViewController:v45 animated:1 completion:0];
}

uint64_t sub_100415094(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a2;
  sub_1004EC158(0, 0, v5, &unk_100955160, v8);

  v10[15] = 1;
  sub_1000F24EC(&qword_100AE3BA8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1004151F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for MergeableEntryAttributes();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6260);
  v4[9] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE4C80);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for UserEngagement.StateSnapshot();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v11;
  v4[26] = v10;

  return _swift_task_switch(sub_1004154CC, v11, v10);
}

uint64_t sub_1004154CC()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_1004155A8;

  return sub_10003FA1C(v1, v3, 0, 0, 1);
}

uint64_t sub_1004155A8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 208);
  v7 = *(v2 + 200);
  if (v0)
  {
    v8 = sub_1004172F0;
  }

  else
  {
    v8 = sub_100417318;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_100415740(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v38 = sub_1000F24EC(&qword_100AE3BA8);
  v4 = *(v38 - 8);
  v42 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = *(v4 + 16);
  v35 = v4 + 16;
  v36 = v11;
  v12 = v38;
  v11(v6, a1, v38);
  v33 = *(v4 + 80);
  v13 = (v33 + 16) & ~v33;
  v31 = v13;
  v14 = swift_allocObject();
  v32 = *(v4 + 32);
  v15 = v14 + v13;
  v16 = v12;
  v32(v15, v6, v12);
  v17 = String._bridgeToObjectiveC()();

  v47 = sub_100417344;
  v48 = v14;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C268;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v34 = [v19 actionWithTitle:v17 style:2 handler:v18];
  _Block_release(v18);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v20 = v6;
  v21 = v16;
  v36(v6, v37, v16);
  v22 = v31;
  v23 = swift_allocObject();
  v32(v23 + v22, v20, v21);
  v24 = String._bridgeToObjectiveC()();

  v47 = sub_100417340;
  v48 = v23;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C2B8;
  v25 = _Block_copy(&aBlock);

  v26 = [v19 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  v27 = v39;
  v28 = v34;
  [v39 addAction:v34];
  [v27 addAction:v26];
  v29 = [v27 popoverPresentationController];
  [v29 setSourceItem:v40];

  [v41 presentViewController:v27 animated:1 completion:0];
}

void sub_100415D34(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v38 = sub_1000F24EC(&qword_100AE3BA8);
  v4 = *(v38 - 8);
  v42 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = *(v4 + 16);
  v35 = v4 + 16;
  v36 = v11;
  v12 = v38;
  v11(v6, a1, v38);
  v33 = *(v4 + 80);
  v13 = (v33 + 16) & ~v33;
  v31 = v13;
  v14 = swift_allocObject();
  v32 = *(v4 + 32);
  v15 = v14 + v13;
  v16 = v12;
  v32(v15, v6, v12);
  v17 = String._bridgeToObjectiveC()();

  v47 = sub_100416C0C;
  v48 = v14;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C1C8;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v34 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v20 = v6;
  v21 = v16;
  v36(v6, v37, v16);
  v22 = v31;
  v23 = swift_allocObject();
  v32(v23 + v22, v20, v21);
  v24 = String._bridgeToObjectiveC()();

  v47 = sub_100417340;
  v48 = v23;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10016B4D8;
  v46 = &unk_100A6C218;
  v25 = _Block_copy(&aBlock);

  v26 = [v19 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  v27 = v39;
  v28 = v34;
  [v39 addAction:v34];
  [v27 addAction:v26];
  v29 = [v27 popoverPresentationController];
  [v29 setSourceItem:v40];

  [v41 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_100416348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004151F4(a1, v4, v5, v6);
}

uint64_t sub_1004163FC(uint64_t a1)
{
  v2 = type metadata accessor for UserEngagement.StateSnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100416458(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD6260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004164C0(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() actionWithTitle:v7 style:0 handler:0];

  [v6 addAction:v8];
  [a1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_100416764(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100416800, v4, v3);
}

uint64_t sub_100416800()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {

    v4 = v0[1];

    return v4(1);
  }

  else
  {
    v6 = v0[3];
    v7 = v0[2];
    v8 = static MainActor.shared.getter();
    v0[8] = v8;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1004169C4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 11, v8, &protocol witness table for MainActor, 0xD000000000000052, 0x80000001008F1870, sub_100416B88, v9, &type metadata for Bool);
  }
}

uint64_t sub_1004169C4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100416B24, v3, v2);
}

uint64_t sub_100416B24()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100416B90()
{
  sub_1000F24EC(&qword_100AE3BA8);

  return sub_10041469C();
}

uint64_t sub_100416C2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1000F24EC(&qword_100AE3BA8) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100416CC0()
{
  v1 = sub_1000F24EC(&qword_100AE3BA8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100416D5C()
{
  sub_1000F24EC(&qword_100AE3BA8);
  sub_1000F24EC(&qword_100AE3BA8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100416E00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100416E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1004136A4(a1, v4, v5, v6);
}

void sub_100416EF4(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 integerForKey:v6];

  if (v7 <= 2)
  {
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    if (sub_10034657C())
    {
      v8 = [v4 standardUserDefaults];
      v9 = [v4 standardUserDefaults];
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 integerForKey:v10];

      if (__OFADD__(v11, 1))
      {
        __break(1u);
      }

      else
      {
        v12 = String._bridgeToObjectiveC()();
        [v8 setInteger:v11 + 1 forKey:v12];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v13 = String._bridgeToObjectiveC()();

        v14 = String._bridgeToObjectiveC()();

        v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v16 = String._bridgeToObjectiveC()();

        v17 = [objc_opt_self() actionWithTitle:v16 style:0 handler:0];

        [v15 addAction:v17];
        [a1 presentViewController:v15 animated:1 completion:0];
      }
    }
  }
}

BOOL sub_100417348()
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 <= 0.001;
  if (v5 > 0.001)
  {
    v1 = 0;
  }

  return v4 <= 0.001 && v1;
}

BOOL sub_1004173E4()
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = v6 >= 0.99;
  if (v5 < 0.99)
  {
    v1 = 0;
  }

  return v4 >= 0.99 && v1;
}

uint64_t sub_100417480()
{
  v20 = 0.0;
  v21 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  [v0 getRed:&v21 green:&v20 blue:&v19 alpha:&v18];
  sub_1000F24EC(&unk_100AD5B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100942000;
  v2 = v21 * 255.0;
  v3 = lroundf(v2);
  *(v1 + 56) = &type metadata for Int;
  *(v1 + 64) = &protocol witness table for Int;
  *(v1 + 32) = v3;
  v4 = v20 * 255.0;
  v5 = lroundf(v4);
  *(v1 + 96) = &type metadata for Int;
  *(v1 + 104) = &protocol witness table for Int;
  *(v1 + 72) = v5;
  v6 = v19 * 255.0;
  v7 = lroundf(v6);
  *(v1 + 136) = &type metadata for Int;
  *(v1 + 144) = &protocol witness table for Int;
  *(v1 + 112) = v7;
  result = String.init(format:_:)();
  v9 = v18;
  if (v18 < 1.0)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    v12 = v9 * 255.0;
    v13 = lroundf(v12);
    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = v13;
    v14 = String.init(format:_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    return v10;
  }

  return result;
}

id sub_100417670(void *a1)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [v1 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return [objc_allocWithZone(UIColor) initWithRed:v4 * v7 + (1.0 - v4) * v11 green:v4 * v6 + (1.0 - v4) * v10 blue:v4 * v5 + (1.0 - v4) * v9 alpha:1.0];
}

double sub_100417798()
{
  v3 = 0;
  v4 = 0.0;
  v2 = 0;
  [v0 getRed:&v4 green:&v3 blue:&v2 alpha:0];
  return v4;
}

uint64_t sub_100417820()
{
  v18 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v15 = 0;
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  [v2 getRed:&v18 green:&v17 blue:&v16 alpha:&v15];
  _StringGuts.grow(_:)(18);

  v3 = v18 * 255.0;
  if (COERCE__INT64(fabs(v18 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = v17 * 255.0;
  if (COERCE__INT64(fabs(v17 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v16 * 255.0;
  if (COERCE__INT64(fabs(v16 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v9 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2109216;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 677537650;
}

uint64_t sub_100417B20()
{
  v1 = sub_100417820();
  v3 = v2;
  v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v5 = [v0 resolvedColorWithTraitCollection:v4];

  v6 = sub_100417820();
  v8 = v7;

  v9 = v1 == v6 && v3 == v8;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v10._countAndFlagsBits = v1;
    v10._object = v3;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8236;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    return 0x61642D746867696CLL;
  }

  return v1;
}

uint64_t sub_100417C88(void *a1)
{
  v60 = sub_1000F24EC(&qword_100AE3EA0);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v53 - v2;
  v71 = type metadata accessor for UUID();
  v61 = *(v71 - 8);
  __chkstk_darwin(v71);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE3EA8);
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v67 = &v53 - v5;
  v6 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v6 - 8);
  v70 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v53 - v9;
  v10 = sub_1000F24EC(&qword_100AE3EB0);
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  v12 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v57 = sub_1000F24EC(&qword_100AE3EB8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v16 = &v53 - v15;
  v55 = sub_1000F24EC(&qword_100AE3EC0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = &v53 - v17;
  v19 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
  __chkstk_darwin(v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000F24EC(&qword_100AE3EC8);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v23 = &v53 - v22;
  sub_10000CA14(a1, a1[3]);
  sub_1004204D8();
  v75 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100017FD8(v72, v21, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v77 = 0;
        sub_10042067C();
        v26 = v75;
        v25 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v54 + 8))(v18, v55);
        return (*(v73 + 8))(v26, v25);
      }

      else
      {
        v78 = 1;
        sub_100420628();
        v46 = v75;
        v47 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v56 + 8))(v16, v57);
        return (*(v73 + 8))(v46, v47);
      }
    }

    v39 = *(sub_1000F24EC(&unk_100AE9060) + 48);
    v40 = v61;
    v41 = v59;
    v42 = v71;
    (*(v61 + 32))(v59, v21, v71);
    sub_100021CEC(&v21[v39], v70, &qword_100AD57F0);
    v85 = 4;
    sub_10042052C();
    v43 = v62;
    v38 = v75;
    v37 = v76;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v84 = 0;
    sub_1000142D0(&qword_100AD8280, &type metadata accessor for UUID);
    v44 = v60;
    v45 = v74;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v45)
    {
      v83 = 1;
      type metadata accessor for CanvasContentInputType();
      sub_1000142D0(&qword_100AE3ED0, type metadata accessor for CanvasContentInputType);
      v51 = v70;
      v52 = v62;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v58 + 8))(v52, v44);
      sub_100004F84(v51, &qword_100AD57F0);
      (*(v40 + 8))(v41, v42);
      return (*(v73 + 8))(v75, v76);
    }

    (*(v58 + 8))(v43, v44);
    sub_100004F84(v70, &qword_100AD57F0);
    (*(v40 + 8))(v41, v42);
    return (*(v73 + 8))(v38, v37);
  }

  v28 = v14;
  v30 = v63;
  v29 = v64;
  v32 = v65;
  v31 = v66;
  v34 = v67;
  v33 = v68;
  v35 = v69;
  if (!EnumCaseMultiPayload)
  {
    sub_100021CEC(v21, v28, &qword_100AD1420);
    v79 = 2;
    sub_1004205D4();
    v36 = v30;
    v38 = v75;
    v37 = v76;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1000142D0(&qword_100AD8280, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v29 + 8))(v36, v32);
    sub_100004F84(v28, &qword_100AD1420);
    return (*(v73 + 8))(v38, v37);
  }

  v48 = &v21[*(sub_1000F24EC(&qword_100AD8498) + 48)];
  sub_100021CEC(v48, v31, &qword_100AD57F0);
  v82 = 3;
  sub_100420580();
  v49 = v75;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v81 = 0;
  v50 = v74;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  if (!v50)
  {
    v80 = 1;
    type metadata accessor for CanvasContentInputType();
    sub_1000142D0(&qword_100AE3ED0, type metadata accessor for CanvasContentInputType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v33 + 8))(v34, v35);
  sub_100004F84(v31, &qword_100AD57F0);
  return (*(v73 + 8))(v49, v76);
}

uint64_t sub_100418744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = sub_1000F24EC(&qword_100AE3E38);
  v72 = *(v69 - 8);
  __chkstk_darwin(v69);
  v75 = &v59 - v3;
  v80 = sub_1000F24EC(&qword_100AE3E40);
  v71 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v59 - v4;
  v68 = sub_1000F24EC(&qword_100AE3E48);
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v79 = &v59 - v5;
  v67 = sub_1000F24EC(&qword_100AE3E50);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v78 = &v59 - v6;
  v65 = sub_1000F24EC(&qword_100AE3E58);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v73 = &v59 - v7;
  v81 = sub_1000F24EC(&qword_100AE3E60);
  v77 = *(v81 - 8);
  __chkstk_darwin(v81);
  v9 = &v59 - v8;
  v10 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = a1[3];
  v82 = a1;
  sub_10000CA14(a1, v22);
  sub_1004204D8();
  v23 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_9;
  }

  v61 = v18;
  v24 = v78;
  v60 = v15;
  v25 = v79;
  v62 = v12;
  v26 = v80;
  v83 = v10;
  v63 = v21;
  v27 = v81;
  v28 = KeyedDecodingContainer.allKeys.getter();
  v29 = (2 * *(v28 + 16)) | 1;
  v84 = v28;
  v85 = v28 + 32;
  v86 = 0;
  v87 = v29;
  v30 = sub_10001DA94();
  if (v30 != 5 && v86 == v87 >> 1)
  {
    if (v30 <= 1u)
    {
      if (v30)
      {
        v88 = 1;
        sub_100420628();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v77;
        (*(v66 + 8))(v24, v67);
      }

      else
      {
        v88 = 0;
        sub_10042067C();
        v39 = v73;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v77;
        (*(v64 + 8))(v39, v65);
      }

      (*(v40 + 8))(v9, v27);
      swift_unknownObjectRelease();
      v50 = v63;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v30 != 2)
      {
        if (v30 == 3)
        {
          v88 = 3;
          sub_100420580();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v31 = v27;
          v32 = v76;
          v33 = v77;
          v44 = v31;
          v88 = 0;
          v45 = v26;
          v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v52 = v51;
          v79 = 0;
          v53 = v46;
          sub_1000F24EC(&qword_100AD8498);
          v54 = v60;
          *v60 = v53;
          v54[1] = v52;
          type metadata accessor for CanvasContentInputType();
          v88 = 1;
          sub_1000142D0(&qword_100AE3E78, type metadata accessor for CanvasContentInputType);
          v55 = v74;
          v56 = v79;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          if (v56)
          {
            (*(v71 + 8))(v55, v45);
            (*(v33 + 8))(v9, v44);
            swift_unknownObjectRelease();

            goto LABEL_9;
          }

          (*(v71 + 8))(v55, v45);
          (*(v33 + 8))(v9, v44);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v54;
        }

        else
        {
          v88 = 4;
          sub_10042052C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v32 = v76;
          v43 = v77;
          type metadata accessor for UUID();
          v88 = 0;
          sub_1000142D0(&qword_100AD81F0, &type metadata accessor for UUID);
          v47 = v62;
          v48 = v69;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_1000F24EC(&unk_100AE9060);
          type metadata accessor for CanvasContentInputType();
          v88 = 1;
          sub_1000142D0(&qword_100AE3E78, type metadata accessor for CanvasContentInputType);
          v57 = v75;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v72 + 8))(v57, v48);
          (*(v43 + 8))(v9, v81);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v47;
        }

        v50 = v63;
        sub_10005741C(v58, v63, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
        v49 = v82;
LABEL_18:
        sub_10005741C(v50, v32, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
        v37 = v49;
        return sub_10000BA7C(v37);
      }

      v88 = 2;
      sub_1004205D4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for UUID();
      sub_1000142D0(&qword_100AD81F0, &type metadata accessor for UUID);
      v41 = v61;
      v42 = v68;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v70 + 8))(v25, v42);
      (*(v77 + 8))(v9, v27);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v50 = v63;
      sub_10005741C(v41, v63, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
    }

    v49 = v82;
    v32 = v76;
    goto LABEL_18;
  }

  v34 = type metadata accessor for DecodingError();
  swift_allocError();
  v36 = v35;
  sub_1000F24EC(&qword_100AD8100);
  *v36 = v83;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
  swift_willThrow();
  (*(v77 + 8))(v9, v27);
  swift_unknownObjectRelease();
LABEL_9:
  v37 = v82;
  return sub_10000BA7C(v37);
}

uint64_t sub_1004194B4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x63616C5079646F62;
  }
}

uint64_t sub_100419500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63616C5079646F62 && a2 == 0xEF7265646C6F6865;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008F23B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1004195EC(uint64_t a1)
{
  v2 = sub_100420580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100419628(uint64_t a1)
{
  v2 = sub_100420580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100419664()
{
  v1 = *v0;
  v2 = 0x65706F6C65766564;
  v3 = 0x6974736567677573;
  v4 = 0x746E456B6E616C62;
  if (v1 != 3)
  {
    v4 = 0x7972746E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6165537972746E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10041971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009EE00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100419750(uint64_t a1)
{
  v2 = sub_1004204D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10041978C(uint64_t a1)
{
  v2 = sub_1004204D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004197C8(uint64_t a1)
{
  v2 = sub_10042067C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100419804(uint64_t a1)
{
  v2 = sub_10042067C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100419840()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x44497972746E65;
  }
}

uint64_t sub_100419880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44497972746E65 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008F23B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100419964(uint64_t a1)
{
  v2 = sub_10042052C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004199A0(uint64_t a1)
{
  v2 = sub_10042052C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004199DC(uint64_t a1)
{
  v2 = sub_100420628();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100419A18(uint64_t a1)
{
  v2 = sub_100420628();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100419A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657463656C6573 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100419B00(uint64_t a1)
{
  v2 = sub_1004205D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100419B3C(uint64_t a1)
{
  v2 = sub_1004205D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100419BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1000F24EC(&qword_100AE3C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000F24EC(&qword_100AE3E10);
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for JournalTimelineViewController.State(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100420484();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
    sub_1000142D0(&qword_100AE3E20, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
    sub_100021CEC(v6, v12, &qword_100AE3C90);
    sub_10005741C(v12, v13, type metadata accessor for JournalTimelineViewController.State);
  }

  return sub_10000BA7C(a1);
}

uint64_t sub_100419E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001008F2390 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100419ECC(uint64_t a1)
{
  v2 = sub_100420484();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100419F08(uint64_t a1)
{
  v2 = sub_100420484();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100419F5C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE3E28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_100420484();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
  sub_1000142D0(&qword_100AE3E30, type metadata accessor for JournalTimelineViewController.RestorableNavigation);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10041A0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
  swift_beginAccess();
  return sub_1000082B4(v1 + v3, a1, &qword_100AE3E08);
}

uint64_t sub_10041A13C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(a1, v1 + v3, &qword_100AE3E08);
  return swift_endAccess();
}

uint64_t sub_10041A2E8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_currentFilterOption) = 0;
  v3 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView;
  type metadata accessor for ComposeButtonsView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__syncingButtonItem;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v21 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__composeButtonItem;
  UIViewController.ViewLoading.init()();
  v24 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__overflowMenu;
  sub_1000065A8(0, &qword_100AE3C78);
  UIViewController.ViewLoading.init()();
  v22 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__doneButtonItem;
  UIViewController.ViewLoading.init()();
  v20 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__selectAllButton;
  UIViewController.ViewLoading.init()();
  v19 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__deselectAllButton;
  UIViewController.ViewLoading.init()();
  v17 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__searchButtonItem;
  UIViewController.ViewLoading.init()();
  v4 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__moveItem;
  UIViewController.ViewLoading.init()();
  v5 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__bookmarkItem;
  UIViewController.ViewLoading.init()();
  v6 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__deleteItem;
  UIViewController.ViewLoading.init()();
  v18 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController__searchController;
  type metadata accessor for SuggestedSearchController();
  UIViewController.ViewLoading.init()();

  *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_tipsTask) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_insightsTask) = 0;
  v7 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
  v16 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
  v8 = sub_1000F24EC(&qword_100AE3EF0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
  v10 = type metadata accessor for JournalTimelineViewController.State(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);

  v11 = sub_1000F24EC(&unk_100AEED40);
  v12 = *(*(v11 - 8) + 8);
  v12(v1 + v23, v11);
  v12(v1 + v21, v11);
  v13 = sub_1000F24EC(&qword_100AE3EF8);
  (*(*(v13 - 8) + 8))(v1 + v24, v13);
  v12(v1 + v22, v11);
  v12(v1 + v20, v11);
  v12(v1 + v19, v11);
  v12(v1 + v17, v11);
  v12(v1 + v4, v11);
  v12(v1 + v5, v11);
  v12(v1 + v6, v11);
  v14 = sub_1000F24EC(&qword_100AE3F00);
  (*(*(v14 - 8) + 8))(v1 + v18, v14);

  sub_100057734(v1 + v16, _s14descr100A531E1V32SuggestionSheetPresentationStateOMa);
  sub_100004F84(v1 + v9, &qword_100AE3E08);
  type metadata accessor for JournalTimelineViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10041A7AC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v26.value.super.isa = 0;
  v33.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v26, v33, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_100AD08F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30DD0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v27.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27.value.super.isa = 0;
  v34.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v27, v34, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v6;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 systemImageNamed:v10];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28.value.super.isa = 0;
  v35.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v28, v35, v40);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v9;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v24.is_nil = 0;
  UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v24, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17.value._countAndFlagsBits = v14;
  v17.value._object = v16;
  v29.value.super.isa = 0;
  v36.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v17, v29, v36, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v13;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22.value._countAndFlagsBits = v19;
  v22.value._object = v21;
  v30.value.super.isa = 0;
  v37.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v22, v30, v37, v42);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v18;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25.is_nil = 0;
  UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemSearch, v25, v32);
  swift_getKeyPath();
  swift_getKeyPath();
  v23;
  static UIViewController.ViewLoading.subscript.setter();
  sub_10041CA68(0);
}

uint64_t sub_10041B0C4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for JournalTimelineViewController(0);
  result = objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
  if (*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_tipsTask])
  {

    Task.cancel()();
  }

  if (*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_insightsTask])
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  return result;
}

void sub_10041B1F4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  if ([v3 isEditing])
  {
    [v3 setEditing:0 animated:a1 & 1];
    sub_100016804(a1 & 1);
    sub_10041CA68(a1 & 1);
    sub_10041CD74(a1 & 1);
    v4 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView];
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _UISolariumEnabled();
    }

    [v4 setHidden:v7];

    sub_10041B368();
  }
}

void sub_10041B368()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  v6 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  v7 = *(v5 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v7)
  {
    v8 = v7;
    if ([v8 isEditing])
    {
      sub_100310FB8();
      if (v9 < 1)
      {
        v23 = [v0 navigationItem];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v24 = String._bridgeToObjectiveC()();

        [v23 setTitle:v24];

        [v8 setAccessibilityValue:0];
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v11._countAndFlagsBits = 0x73656972746E4520;
        v11._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v12 = [v0 navigationItem];
        v13 = String._bridgeToObjectiveC()();
        [v12 setTitle:v13];

        v14 = v8;
        v15 = String._bridgeToObjectiveC()();

        [v14 setAccessibilityValue:v15];
      }

      return;
    }
  }

  v16 = [v0 navigationItem];

  sub_10002EEEC();
  v18 = v17;

  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v16 setTitle:v19];

  v20 = *(v5 + v6);
  if (v20)
  {
    v21 = v20;
    v22 = [v1 navigationItem];
    v25 = [v22 title];

    [v21 setAccessibilityValue:v25];
  }
}

uint64_t sub_10041B830()
{
  v1 = v0[6];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[9] = v2;
  v0[10] = v4;

  return _swift_task_switch(sub_10009ED0C, v2, v4);
}

uint64_t sub_10041B8C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[9];
    v5 = v2[10];

    return _swift_task_switch(sub_10041BA18, v4, v5);
  }
}

uint64_t sub_10041BA18()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100163E38, v1, v2);
}

uint64_t sub_10041BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_10041BB14, v6, v5);
}

uint64_t sub_10041BB14()
{
  v1 = *(v0 + 48);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10041BBD4;

  return (sub_1006CF47C)(v1, &protocol witness table for MainActor);
}

uint64_t sub_10041BBD4(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10041BD20, v4, v3);
}

uint64_t sub_10041BD20()
{
  v1 = *(v0 + 80);

  if (v1 != 6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10089D6E8(*(v0 + 80));
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10041BDC0()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  if (([v1 isEditing] & 1) == 0)
  {
    [v1 setEditing:1 animated:1];
    sub_100016804(1);
    sub_10041CA68(1);
    sub_10041CD74(1);
    sub_10041EE2C();
    sub_10041B368();
    [*&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView] setHidden:1];
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 setToolbarHidden:v3 != 1 animated:1];
    }
  }
}

uint64_t sub_10041BF94(uint64_t (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v3 = Strong;

  v5 = sub_1005A7E48(v4);

  a1(v5);
}

void sub_10041C054()
{
  v0 = type metadata accessor for EntryListType();
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for JournalFeatureFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 104))(v6, enum case for JournalFeatureFlags.search(_:), v3);
    v9 = JournalFeatureFlags.isEnabled.getter();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      sub_1008A101C(v8);
    }

    else
    {
      v10 = [v8 userActivity];
      v11 = type metadata accessor for JournalSearchViewController();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = 0;
      objc_allocWithZone(type metadata accessor for JournalSearchResultsViewController());
      v13 = v10;
      v14 = sub_1005600B4(v10, 0);
      *&v12[OBJC_IVAR____TtC7Journal27JournalSearchViewController_resultsViewController] = v14;
      v20.receiver = v12;
      v20.super_class = v11;
      v15 = objc_msgSendSuper2(&v20, "initWithSearchResultsController:", v14);
      [v15 setHidesNavigationBarDuringPresentation:0];
      [v15 setShowsSearchResultsController:1];

      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v16 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
      v17 = sub_1000F24EC(&qword_100AD47A0);
      (*(*(v17 - 8) + 56))(v2, 2, 2, v17);
      type metadata accessor for EntryListViewModel(0);
      swift_allocObject();
      v18 = sub_100010AF4(v2, v16);
      *&v15[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = v18;

      sub_1003032B4(v18, 1, 0);

      [v8 presentViewController:v15 animated:1 completion:0];
    }
  }
}

void sub_10041C3A8(uint64_t a1)
{
  v2 = v1;
  sub_1000082B4(a1, v7, &qword_100AD13D0);
  if (!v8)
  {
    sub_100004F84(v7, &qword_100AD13D0);
LABEL_6:
    v4 = objc_allocWithZone(type metadata accessor for AdminMenuController());
    v5 = UIHostingController.init(rootView:)();
    [v5 setModalPresentationStyle:2];
    [v2 presentViewController:v5 animated:1 completion:0];

    return;
  }

  sub_1000065A8(0, &qword_100AE3EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [v6 state];

  if (v3 == 1)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10041C5C8(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v12)
  {
    v20 = result;
    sub_1000065A8(0, &qword_100AD6210);
    v13 = v12;
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = a1 & 1;
    *(v16 + 24) = v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = DebugData.init(name:);
    *(v16 + 48) = 0;
    aBlock[4] = sub_100034890;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6C608;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000142D0(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v20);
  }

  return result;
}

void sub_10041C954(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v2 = [v3 searchBar];

  [v2 setEnabled:a1 & 1];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v3 setEnabled:a1 & 1];
}

void sub_10041CA68(char a1)
{
  if ([*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] isEditing])
  {
    v3 = _UISolariumEnabled();
    sub_1000F24EC(&unk_100AD4780);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_100941D70;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v4 + 32) = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v4 + 40) = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v4 + 48) = v8;
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100941040;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v5 + 32) = v8;
      v6 = objc_opt_self();
      *(v5 + 40) = [v6 flexibleSpaceItem];
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v5 + 48) = v8;
      *(v5 + 56) = [v6 flexibleSpaceItem];
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v5 + 64) = v8;
    }

    sub_1000065A8(0, &qword_100AD43B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:isa animated:a1 & 1];
  }
}

void sub_10041CD74(char a1)
{
  if ([*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] isEditing])
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 5)
    {
      sub_1003031B0();
      v5 = [v1 navigationItem];
      sub_1000F24EC(&unk_100AD4780);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v6 + 32) = v8;
      sub_1000065A8(0, &qword_100AD43B0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 setLeftBarButtonItems:isa animated:a1 & 1];
    }
  }
}

void sub_10041CF18(char a1)
{
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941D60;
  *(v3 + 32) = [objc_opt_self() flexibleSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v3 + 40) = v5;
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:isa animated:a1 & 1];
}

BOOL sub_10041D03C()
{
  v1 = [*&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] isEditing];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v2 = [v6 isActive];

  if ((v2 & 1) != 0 || (v1 & 1) == 0 && !_UISolariumEnabled())
  {
    return 1;
  }

  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  return v5 != 1;
}

id sub_10041D164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalTimelineViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10041D45C(void *a1)
{
  v2 = sub_1000F24EC(&unk_100ADFB90);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  result = [a1 isEditing];
  if ((result & 1) == 0)
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v8(v5, 1, 1, v7);
    sub_100307AFC(v5);
    sub_100004F84(v5, &unk_100ADFB90);
    v8(v5, 1, 1, v7);
    v9 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection;
    swift_beginAccess();
    sub_100014318(v5, a1 + v9, &unk_100ADFB90);
    return swift_endAccess();
  }

  return result;
}

id sub_10041D5C8()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_10041D600(unsigned __int8 a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v23 - v16;
  if (*(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_currentFilterOption) != a1)
  {
    *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_currentFilterOption) = a1;
    sub_1000065A8(0, &qword_100AD6210);
    v24 = v4;
    v23 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v18 = *(v11 + 8);
    v18(v14, v10);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    aBlock[4] = sub_1004206D0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6C518;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000142D0(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v23;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v24 + 8))(v6, v3);
    (*(v25 + 8))(v9, v26);
    return (v18)(v17, v10);
  }

  return result;
}

void sub_10041D9EC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
    if (v5)
    {
      type metadata accessor for FadeBlurTransition();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a2;
      v8 = v5;

      sub_10032DAE4(v8, sub_1004206DC, v7);
    }
  }
}

uint64_t sub_10041DB08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    sub_1000F24EC(&qword_100AD65A8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    *(v11 + 32) = a4;
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;

    sub_100304E18(v11, 0, sub_1004206E8, v12);
  }

  return result;
}

void sub_10041DC28(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsUpdateContentUnavailableConfiguration];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    [v5 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_10041DCE4()
{
  v1 = v0;
  sub_10089DC04();
  v2 = [v0 viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {
      v5 = [v4 rootViewController];

      if (v5)
      {
        type metadata accessor for SceneSplitViewController(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = *(v6 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController);

          v5 = v7;
          sub_10002CCF8(0);
        }
      }
    }
  }

  v8 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  if (sub_100303598())
  {
    sub_10041C954(0);
  }

  *(v8 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive) = 0;
}

void sub_10041DDE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v1 = [v8 isActive];

  if (v1)
  {
    v2 = [v0 viewIfLoaded];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 window];

      if (v4)
      {
        v5 = [v4 rootViewController];

        if (v5)
        {
          type metadata accessor for SceneSplitViewController(0);
          v6 = swift_dynamicCastClass();
          if (v6)
          {
            v7 = *(v6 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController);

            sub_10013FA4C();
            v5 = v7;
          }
        }
      }
    }
  }
}

uint64_t sub_10041DF1C(uint64_t a1)
{
  sub_10089DC04();
  v3 = *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);
  v4 = v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest;
  *v4 = a1;
  *(v4 + 8) = 0;
  swift_retain_n();

  if (*(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) == 2)
  {
    *v4 = 0;
    *(v4 + 8) = 0;

    sub_100304A74(a1, 0);
  }
}

uint64_t sub_10041DFCC(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE3ED8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for EntriesSortOrder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v20 - v12;
  if ([a1 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    v15 = &qword_100AD13D0;
    v16 = v23;
    return sub_100004F84(v16, v15);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  EntriesSortOrder.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v15 = &qword_100AE3ED8;
    v16 = v5;
    return sub_100004F84(v16, v15);
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v9, v13, v6);
  static EntriesSortOrder.timeline.setter();
  v17 = *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model);
  static EntriesSortOrder.timeline.getter();
  v18 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
  swift_beginAccess();
  (*(v7 + 24))(v17 + v18, v9, v6);
  swift_endAccess();
  sub_100022BB4();
  v19 = *(v7 + 8);
  v19(v9, v6);
  (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController)) + 0x388))(v17, 0, 1);
  sub_100303B98();
  return (v19)(v13, v6);
}

void sub_10041E4EC()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for JournalFeatureFlags.search(_:), v5, v7);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1008A101C(v1);
  }

  else
  {
    v11 = [v1 userActivity];
    v12 = type metadata accessor for JournalSearchViewController();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = 0;
    objc_allocWithZone(type metadata accessor for JournalSearchResultsViewController());
    v14 = v11;
    v15 = sub_1005600B4(v11, 0);
    *&v13[OBJC_IVAR____TtC7Journal27JournalSearchViewController_resultsViewController] = v15;
    v20.receiver = v13;
    v20.super_class = v12;
    v16 = objc_msgSendSuper2(&v20, "initWithSearchResultsController:", v15);
    [v16 setHidesNavigationBarDuringPresentation:0];
    [v16 setShowsSearchResultsController:1];

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v17 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v18 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v18 - 8) + 56))(v4, 2, 2, v18);
    type metadata accessor for EntryListViewModel(0);
    swift_allocObject();
    v19 = sub_100010AF4(v4, v17);
    *&v16[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = v19;

    sub_1003032B4(v19, 1, 0);

    [v1 presentViewController:v16 animated:1 completion:0];
  }
}

uint64_t sub_10041E860(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Selector.== infix(_:_:)())
  {
    (*(v6 + 104))(v8, enum case for JournalFeatureFlags.search(_:), v5);
    v9 = JournalFeatureFlags.isEnabled.getter();
    (*(v6 + 8))(v8, v5);
  }

  else if (static Selector.== infix(_:_:)())
  {
    v10 = v2;
    if (sub_100303598() || (v11 = [v2 navigationItem], v12 = objc_msgSend(v11, "searchController"), v11, v12) && (v13 = objc_msgSend(v12, "isActive"), v12, (v13 & 1) != 0))
    {
      v9 = 0;
    }

    else
    {
      v23 = [v10 presentedViewController];
      if (v23)
      {

        v9 = 0;
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    sub_1000082B4(a2, v25, &qword_100AD13D0);
    v14 = v26;
    if (v26)
    {
      v15 = sub_10000CA14(v25, v26);
      v16 = *(v14 - 8);
      v17 = __chkstk_darwin(v15);
      v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19, v17);
      v20 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v16 + 8))(v19, v14);
      sub_10000BA7C(v25);
    }

    else
    {
      v20 = 0;
    }

    v21 = type metadata accessor for JournalTimelineViewController(0);
    v24.receiver = v2;
    v24.super_class = v21;
    v9 = objc_msgSendSuper2(&v24, "canPerformAction:withSender:", a1, v20);
    swift_unknownObjectRelease();
  }

  return v9 & 1;
}

void sub_10041EC04()
{
  if (!qword_100AE3DC0)
  {
    type metadata accessor for UUID();
    sub_1000F2A18(&qword_100AD57F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AE3DC0);
    }
  }
}

void sub_10041ED14(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v3 && (v4 = [v3 indexPathsForSelectedItems]) != 0)
  {
    v5 = v4;
    type metadata accessor for IndexPath();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *(v7 + 2);

  if (v8 || (v9 = [v1 traitCollection], v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10 != 5))
  {
    sub_10041BDC0();
    sub_10041EE2C();
    sub_10041CD74(1);
  }

  else
  {
    if (![a1 isEditing])
    {
      return;
    }

    sub_10041B1F4(1);
  }

  sub_10041B368();
}

void sub_10041EE2C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D70;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(inited + 32) = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(inited + 40) = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(inited + 48) = v23;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);
  if (![v5 isEditing])
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    return;
  }

  v6 = *&v5[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v6 && (v7 = [v6 indexPathsForSelectedItems]) != 0)
  {
    v8 = v7;
    type metadata accessor for IndexPath();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  v12 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(inited + 32);
  }

  v14 = v13;
  [v13 setEnabled:v11 != 0];

  if (v12)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_29;
    }

    v15 = *(inited + 40);
  }

  v16 = v15;
  [v15 setEnabled:v11 != 0];

  if (v12)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v17 = *(inited + 48);
LABEL_18:
  v18 = v17;

  [v18 setEnabled:v11 != 0];

  LOBYTE(inited) = sub_100302D24();
  if (qword_100AD08F8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v19 = qword_100B30DD0;
  if (qword_100AD0908 != -1)
  {
    swift_once();
  }

  v20 = qword_100B30DE0;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  if (inited)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  [v23 setImage:v21];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v22 = String._bridgeToObjectiveC()();

  [v23 setTitle:v22];
}

void sub_10041F3A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    sub_1008BAA94();
  }
}

void sub_10041F414()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    sub_100302D24();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    [v7 toggleBookmark];
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = UIAccessibilityAnnouncementNotification;
  v9 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v8, v9);
}

uint64_t sub_10041F654()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      Strong = v5;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10030F810(Strong, sub_10013EA30, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10041F794()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10041B1F4(1);
  }
}

void sub_10041F7EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    sub_1003027EC();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_10041EE2C();
    sub_10041CD74(1);
    sub_10041B368();
  }
}

void sub_10041F898()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);

    v3 = *&v2[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v3)
    {
      v4 = v3;
      sub_1006018C4();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_10041EE2C();
    sub_10041CD74(1);
    sub_10041B368();
  }
}

void sub_10041F964()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v1 presentViewController:v2 animated:1 completion:0];
  }
}

void sub_10041FA24()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  if ([v1 isEditing])
  {
    v2 = 1;
    [v1 setEditing:0 animated:1];
    sub_100016804(1);
    sub_10041CA68(1);
    sub_10041CD74(1);
    v3 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView];
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 5)
    {
      v2 = _UISolariumEnabled();
    }

    [v3 setHidden:v2];

    sub_10041B368();
  }
}

void sub_10041FB38()
{
  sub_10041EE2C();
  sub_10041CD74(1);

  sub_10041B368();
}

void sub_10041FBBC()
{
  sub_100016804(0);
  sub_10041CA68(0);
  sub_10041CD74(0);
}

char *sub_10041FBF4(uint64_t a1, void *a2, int a3)
{
  v47 = a3;
  v6 = type metadata accessor for EntryListType();
  __chkstk_darwin(v6 - 8);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE3E08);
  v9 = __chkstk_darwin(v8 - 8);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v44 - v12;
  __chkstk_darwin(v11);
  v46 = &v44 - v13;
  v3[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_currentFilterOption] = 0;
  v14 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView;
  type metadata accessor for ComposeButtonsView();
  *&v3[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AE3C78);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v48 = type metadata accessor for SuggestedSearchController();
  UIViewController.ViewLoading.init()();
  *&v3[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_tipsTask] = 0;
  *&v3[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_insightsTask] = 0;
  v15 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
  v16 = sub_1000F24EC(&qword_100AE3EF0);
  v17 = 1;
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
  v19 = type metadata accessor for JournalTimelineViewController.State(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(&v3[v18], 1, 1, v19);
  *&v3[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model] = a1;
  v22 = objc_allocWithZone(type metadata accessor for JournalEntryCollectionViewController(0));
  v23 = a2;
  v24 = v46;

  v51 = a2;
  v25 = a2;
  LOBYTE(a2) = v47;
  *&v3[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] = sub_100013708(v25, v47);
  v26 = type metadata accessor for JournalTimelineViewController(0);
  v53.receiver = v3;
  v53.super_class = v26;
  v27 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
  [v27 setUserActivity:v23];
  if (a2)
  {
    sub_1000142D0(&qword_100AD8490, type metadata accessor for JournalTimelineViewController);
    v28 = v45;
    RestorableController.getRestorableStateFromUserActivity()();
    v29 = *(v20 + 48);
    if (v29(v28, 1, v19) == 1)
    {
      v30 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
      (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
      if (v29(v28, 1, v19) != 1)
      {
        sub_100004F84(v28, &qword_100AE3E08);
      }
    }

    else
    {
      sub_10005741C(v28, v24, type metadata accessor for JournalTimelineViewController.State);
    }

    v17 = 0;
  }

  v21(v24, v17, 1, v19);
  v31 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(v24, &v27[v31], &qword_100AE3E08);
  swift_endAccess();
  v32 = *&v27[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model];
  v33 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  v34 = v50;
  sub_100017FD8(v32 + v33, v50, type metadata accessor for EntryListType);
  v35 = &v27[v31];
  v36 = v49;
  sub_1000082B4(v35, v49, &qword_100AE3E08);
  LOBYTE(v32) = (*(v20 + 48))(v36, 1, v19) != 1;
  sub_100004F84(v36, &qword_100AE3E08);
  v37 = objc_allocWithZone(v48);
  v38 = v23;
  v39 = sub_10002837C(v34, v51, v32);

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v39;
  v40 = v27;
  static UIViewController.ViewLoading.subscript.setter();
  v41 = [v40 traitCollection];

  v42 = [v41 userInterfaceIdiom];
  if (!v42)
  {
    [v40 setDefinesPresentationContext:1];
  }

  return v40;
}

id sub_1004202AC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    [v3 setAccessibilityElementsHidden:0];
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result setAccessibilityViewIsModal:0];

    v6 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView];

    return [v6 setAccessibilityElementsHidden:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100420380()
{
  sub_10041EE2C();
  sub_10041CD74(1);
  sub_10041B368();
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = *(*&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
    if (v3 && (v4 = [v3 indexPathsForSelectedItems]) != 0)
    {
      v5 = v4;
      type metadata accessor for IndexPath();
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = *(v7 + 2);

    if (!v8)
    {

      sub_10041B1F4(1);
    }
  }
}

unint64_t sub_100420484()
{
  result = qword_100AE3E18;
  if (!qword_100AE3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E18);
  }

  return result;
}

unint64_t sub_1004204D8()
{
  result = qword_100AE3E68;
  if (!qword_100AE3E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E68);
  }

  return result;
}

unint64_t sub_10042052C()
{
  result = qword_100AE3E70;
  if (!qword_100AE3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E70);
  }

  return result;
}

unint64_t sub_100420580()
{
  result = qword_100AE3E80;
  if (!qword_100AE3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E80);
  }

  return result;
}

unint64_t sub_1004205D4()
{
  result = qword_100AE3E88;
  if (!qword_100AE3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E88);
  }

  return result;
}

unint64_t sub_100420628()
{
  result = qword_100AE3E90;
  if (!qword_100AE3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E90);
  }

  return result;
}

unint64_t sub_10042067C()
{
  result = qword_100AE3E98;
  if (!qword_100AE3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3E98);
  }

  return result;
}

uint64_t sub_1004206F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10073C404(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100420824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10041BA7C(a1, v4, v5, v6);
}

uint64_t sub_1004208D8(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE3ED8);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for EntriesSortOrder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v20 - v11;
  [a1 action];
  result = static Selector.== infix(_:_:)();
  if (result)
  {
    if ([a1 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        EntriesSortOrder.init(rawValue:)();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          v14 = &qword_100AE3ED8;
          v15 = v4;
LABEL_10:
          sub_100004F84(v15, v14);
          goto LABEL_11;
        }

        (*(v6 + 32))(v12, v4, v5);
        static EntriesSortOrder.timeline.getter();
        sub_1000142D0(&qword_100AE3EE8, &type metadata accessor for EntriesSortOrder);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v23[0] == v21)
        {
          v17 = *(v6 + 8);
          v17(v8, v5);
          v17(v12, v5);

          v16 = 1;
          return [a1 setState:v16];
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v19 = *(v6 + 8);
        v19(v8, v5);
        v19(v12, v5);

        if (v18)
        {
          v16 = 1;
          return [a1 setState:v16];
        }
      }

LABEL_11:
      v16 = 0;
      return [a1 setState:v16];
    }

    v14 = &qword_100AD13D0;
    v15 = v23;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100420C54(uint64_t a1)
{
  v3 = *(type metadata accessor for TapToRadarUtilities.RadarClassification() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10059C014(a1, v1[2], v1[3], v1[4], v1[5], (v1 + v4), *(v1 + v5), *(v1 + v5 + 8));
}

unint64_t sub_100420DA8()
{
  result = qword_100AE3F08;
  if (!qword_100AE3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F08);
  }

  return result;
}

unint64_t sub_100420E00()
{
  result = qword_100AE3F10;
  if (!qword_100AE3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F10);
  }

  return result;
}

unint64_t sub_100420E58()
{
  result = qword_100AE3F18;
  if (!qword_100AE3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F18);
  }

  return result;
}

unint64_t sub_100420EB0()
{
  result = qword_100AE3F20;
  if (!qword_100AE3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F20);
  }

  return result;
}

unint64_t sub_100420F08()
{
  result = qword_100AE3F28;
  if (!qword_100AE3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F28);
  }

  return result;
}

unint64_t sub_100420F60()
{
  result = qword_100AE3F30;
  if (!qword_100AE3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F30);
  }

  return result;
}

unint64_t sub_100420FB8()
{
  result = qword_100AE3F38;
  if (!qword_100AE3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F38);
  }

  return result;
}

unint64_t sub_100421010()
{
  result = qword_100AE3F40;
  if (!qword_100AE3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F40);
  }

  return result;
}

unint64_t sub_100421068()
{
  result = qword_100AE3F48;
  if (!qword_100AE3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F48);
  }

  return result;
}

unint64_t sub_1004210C0()
{
  result = qword_100AE3F50;
  if (!qword_100AE3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F50);
  }

  return result;
}

unint64_t sub_100421118()
{
  result = qword_100AE3F58;
  if (!qword_100AE3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F58);
  }

  return result;
}

unint64_t sub_100421170()
{
  result = qword_100AE3F60;
  if (!qword_100AE3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F60);
  }

  return result;
}

unint64_t sub_1004211C8()
{
  result = qword_100AE3F68;
  if (!qword_100AE3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F68);
  }

  return result;
}

unint64_t sub_100421220()
{
  result = qword_100AE3F70;
  if (!qword_100AE3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F70);
  }

  return result;
}

unint64_t sub_100421278()
{
  result = qword_100AE3F78;
  if (!qword_100AE3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F78);
  }

  return result;
}

unint64_t sub_1004212D0()
{
  result = qword_100AE3F80;
  if (!qword_100AE3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F80);
  }

  return result;
}

unint64_t sub_100421328()
{
  result = qword_100AE3F88;
  if (!qword_100AE3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F88);
  }

  return result;
}

unint64_t sub_100421380()
{
  result = qword_100AE3F90;
  if (!qword_100AE3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F90);
  }

  return result;
}

unint64_t sub_1004213D8()
{
  result = qword_100AE3F98;
  if (!qword_100AE3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3F98);
  }

  return result;
}

char *sub_10042147C(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for PendingPromptCollectionViewCell();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v10 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView;
  v11 = *&v9[OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView];
  v12 = v9;
  [v11 layoutIfNeeded];
  v13 = *&v9[v10];
  v14 = [v13 endOfDocument];
  [v13 insertAnimatedTextPlaceholderAtLocation:v14 numLines:1.75];

  v15 = *&v9[v10];
  [v15 invalidateIntrinsicContentSize];

  return v12;
}

id sub_100421614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingPromptCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PendingPromptCollectionViewCell()
{
  result = qword_100AE3FC8;
  if (!qword_100AE3FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004216D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x1D0))();
  }
}

char *sub_100421764(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer];
  type metadata accessor for AudioPlayer();
  swift_allocObject();
  v5 = sub_100084D8C();
  v6 = sub_100084FA8(&qword_100AE4060, type metadata accessor for AudioPlayer);
  *v4 = v5;
  v4[1] = v6;
  v7 = OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView;
  type metadata accessor for SelfSizingWaveformView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2[OBJC_IVAR____TtC7Journal14AudioAssetView_enableScrubber] = 0;
  *&v2[OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformLoaded] = 0;
  *&v2[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset] = 0;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for AudioAssetView();
  v8 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
    v11 = *&v8[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v12 = v8;
    [v12 addSubview:v11];
    v13 = *&v9[v10];
    sub_100013178(0.0);

    [v12 addSubview:*&v12[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView]];
    v14 = [objc_opt_self() defaultCenter];
    if (qword_100ACFCC8 != -1)
    {
      swift_once();
    }

    [v14 addObserver:v12 selector:? name:? object:?];
  }

  else
  {
    v14 = a1;
  }

  return v9;
}

void sub_100421B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(5, v3);
}

void *sub_100421BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset);
  v2 = v1;
  return v1;
}

id sub_100421BDC()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset];
  v2 = *&v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer];
  v3 = *&v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8];
  v4 = v0[OBJC_IVAR____TtC7Journal14AudioAssetView_enableScrubber];
  v5 = v1;
  swift_unknownObjectRetain();
  sub_1000A8084(v1, v2, v3, v4);

  swift_unknownObjectRelease();
  v0[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformLoaded] = 1;
  result = [v0 frame];
  if (v7 > 0.0)
  {
    result = [v0 frame];
    if (v8 > 0.0)
    {
      v0[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
    }
  }

  return result;
}

void sub_100421CC8()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset);
  if (v3)
  {
    v4 = type metadata accessor for AudioAsset();
    v5 = &off_100A82B98;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v3;
  v14[3] = v4;
  v14[4] = v5;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v3;
  sub_1003609D8(v14, ObjectType, v2);
  swift_unknownObjectRelease();
  sub_100004F84(v14, &unk_100AE9D30);
  v8 = *(v1 + 8);
  v9 = swift_getObjectType();
  v10 = *(v8 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v8) = v10(v9, v8);
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    v11 = *(v1 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 120);
    swift_unknownObjectRetain();
    v13(v12, v11);
    swift_unknownObjectRelease();
  }

  sub_100421E20();
}

void sub_100421E20()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer];
  v3 = *&v0[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3)
  {
    if (qword_100AD0870 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v6 = *(v2 + 1);
  v7 = swift_getObjectType();
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v6) = v8(v7, v6);
  swift_unknownObjectRelease();
  if (v6)
  {
    if (qword_100AD0888 == -1)
    {
LABEL_6:
      v22 = String._bridgeToObjectiveC()();
      [v0 setAccessibilityValue:v22];

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  v9 = *(v2 + 1);
  v10 = swift_getObjectType();
  v11 = *(v9 + 88);
  swift_unknownObjectRetain();
  v11(v23, v10, v9);
  swift_unknownObjectRelease();
  v12 = v24;
  if (v24)
  {
    v13 = v25;
    sub_10000CA14(v23, v24);
    v14 = (*(v13 + 40))(v12, v13);
    v16 = v15;
    sub_10000BA7C(v23);
    if ((v16 & 1) == 0)
    {
      v17 = *&v14;
      if (qword_100AD02E0 != -1)
      {
        v21 = v14;
        swift_once();
        v17 = *&v14;
      }

      v18 = [qword_100AF0050 stringFromTimeInterval:{v17 + 0.5, v21}];
      if (v18)
      {
        v19 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = String._bridgeToObjectiveC()();
      }

      else
      {
        v20 = 0;
      }

      [v1 setAccessibilityValue:v20];
    }
  }

  else
  {
    sub_100004F84(v23, &unk_100AE9D30);
  }
}

uint64_t sub_100422110()
{
  Notification.object.getter();
  if (!v7)
  {
    return sub_100004F84(v6, &qword_100AD13D0);
  }

  sub_1000F24EC(&qword_100AE4080);
  result = swift_dynamicCast();
  if (result)
  {
    if (v5 == *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer) && (v2 = v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate, swift_unknownObjectWeakLoadStrong()))
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, ObjectType, v3);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100422308()
{
  swift_unknownObjectRelease();

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset);
}

id sub_10042248C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004224D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042256C, v6, v5);
}

uint64_t sub_10042256C()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 128);
  swift_unknownObjectRetain();
  v4(ObjectType, v2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100422624()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_1003E9628(0, 0, v3, &unk_100955F30, v7);
}

id sub_100422750(void *a1)
{
  v24 = type metadata accessor for AudioAsset();
  v25 = &off_100A82B98;
  v23[0] = a1;
  v2 = qword_100B2FC98;
  if (qword_100B2FC98)
  {
    v3 = qword_100B2FCA0;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 88);
    a1;
    swift_unknownObjectRetain();
    v5(v20, ObjectType, v3);
    v6 = v21;
    if (v21)
    {
      v7 = v22;
      sub_10000CA14(v20, v21);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      sub_10000BA7C(v20);
      v11 = UUID.uuidString.getter();
      if (v10)
      {
        if (v8 == v11 && v10 == v12)
        {

          goto LABEL_19;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_100004F84(v20, &unk_100AE9D30);
      UUID.uuidString.getter();
    }

LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v15 = a1;
LABEL_14:
  if (qword_100ACFE50 != -1)
  {
    swift_once();
  }

  v16 = qword_100AE5F60;
  sub_10000CA14(v23, v24);
  UUID.uuidString.getter();
  v17 = String._bridgeToObjectiveC()();

  v2 = [v16 objectForKey:v17];

  if (!v2)
  {
    type metadata accessor for AudioPlayer();
    swift_allocObject();
    v2 = sub_100084D8C();

    UUID.uuidString.getter();
    v18 = String._bridgeToObjectiveC()();

    [v16 setObject:v2 forKey:v18];
  }

  sub_100084FA8(&qword_100AE4060, type metadata accessor for AudioPlayer);
LABEL_19:
  sub_10000BA7C(v23);
  return v2;
}

uint64_t sub_100422A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004224D4(a1, v4, v5, v6);
}

unint64_t sub_100422AF4()
{
  result = qword_100AE4078;
  if (!qword_100AE4078)
  {
    sub_1000F2A18(&qword_100AE4068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4078);
  }

  return result;
}

uint64_t sub_100422B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1004224D4(a1, v4, v5, v6);
}

id sub_100422C0C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC7Journal24TouchDetectionRecognizer_type];
  *v5 = 0;
  v5[8] = 1;
  sub_10005D974(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_10000CA14(v17, v18);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_10000BA7C(v17);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TouchDetectionRecognizer();
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithTarget:action:", v12, a2);
  swift_unknownObjectRelease();
  [v14 setCancelsTouchesInView:0];
  sub_1000261D4(a1);
  return v14;
}

BOOL sub_100422E24(void *a1)
{
  type metadata accessor for TouchDetectionRecognizer();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = [v1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_7;
  }

  v6 = v5;
  sub_1000065A8(0, &qword_100ADC670);
  if (static NSObject.== infix(_:_:)())
  {

LABEL_7:
    return 0;
  }

  v8 = [v4 isDescendantOfView:v6];

  return (v8 & 1) != 0;
}

id sub_100423044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchDetectionRecognizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10042309C()
{
  result = qword_100AE40C0;
  if (!qword_100AE40C0)
  {
    sub_1000065A8(255, &qword_100AE40B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE40C0);
  }

  return result;
}

uint64_t sub_10042310C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE40D0);
  v1 = sub_10000617C(v0, qword_100AE40D0);
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30028);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004231D4()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AE40E8);
  sub_10000617C(v0, qword_100AE40E8);
  return UUID.init()();
}

uint64_t sub_100423270@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_pageControl) currentPage];
  IndexPath.init(item:section:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v11 = v15[1];
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v12 = type metadata accessor for UUID();
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    (*(v7 + 8))(v10, v6);
    sub_100004F84(v5, &qword_100AD1420);
    v13 = 1;
  }

  else
  {
    sub_100004F84(v5, &qword_100AD1420);
    (*(v7 + 32))(a1, v10, v6);
    v13 = 0;
  }

  return (*(v7 + 56))(a1, v13, 1, v6);
}

id sub_10042351C()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100423270(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &unk_100ADFB90);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v8 = v13[1];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v8 cellForItemAtIndexPath:isa];

  (*(v4 + 8))(v6, v3);
  result = 0;
  if (v10)
  {
    type metadata accessor for FullScreenAssetCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {

      return 0;
    }

    v12 = *(v11 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView);

    return v12;
  }

  return result;
}

uint64_t sub_10042375C()
{
  v173 = sub_1000F24EC(&qword_100AE42B8);
  v162 = *(v173 - 8);
  v139 = *(v162 + 64);
  __chkstk_darwin(v173);
  v172 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v191 = &v116 - v3;
  v171 = sub_1000F24EC(&qword_100AE42C0);
  v160 = *(v171 - 8);
  v138 = *(v160 + 64);
  __chkstk_darwin(v171);
  v170 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v186 = &v116 - v6;
  v169 = sub_1000F24EC(&qword_100AE42C8);
  v158 = *(v169 - 8);
  v137 = *(v158 + 64);
  __chkstk_darwin(v169);
  v168 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v116 - v9;
  v167 = sub_1000F24EC(&qword_100AE42D0);
  v193 = *(v167 - 8);
  v136 = *(v193 + 64);
  __chkstk_darwin(v167);
  v166 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v180 = &v116 - v12;
  v199 = sub_1000F24EC(&qword_100AE42D8);
  v192 = *(v199 - 8);
  v135 = *(v192 + 64);
  __chkstk_darwin(v199);
  v165 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v143 = &v116 - v15;
  v16 = sub_1000F24EC(&qword_100AE42E0);
  v189 = *(v16 - 8);
  v190 = v16;
  v134 = *(v189 + 64);
  __chkstk_darwin(v16);
  v164 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v175 = &v116 - v19;
  v20 = sub_1000F24EC(&qword_100AE42E8);
  v187 = *(v20 - 8);
  v188 = v20;
  v133 = *(v187 + 64);
  __chkstk_darwin(v20);
  v163 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v142 = &v116 - v23;
  v185 = sub_1000F24EC(&qword_100AE42F0);
  v184 = *(v185 - 8);
  v132 = *(v184 + 64);
  __chkstk_darwin(v185);
  v161 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v116 - v26;
  v182 = sub_1000F24EC(&qword_100AE42F8);
  v181 = *(v182 - 8);
  v131 = *(v181 + 64);
  __chkstk_darwin(v182);
  v159 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v141 = &v116 - v30;
  v179 = sub_1000F24EC(&qword_100AE4300);
  v178 = *(v179 - 8);
  v130 = *(v178 + 64);
  __chkstk_darwin(v179);
  v157 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v140 = &v116 - v33;
  v177 = sub_1000F24EC(&qword_100AE4308);
  v205 = *(v177 - 8);
  v129 = *(v205 + 64);
  __chkstk_darwin(v177);
  v155 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v116 - v36;
  v176 = sub_1000F24EC(&qword_100AE4310);
  v204 = *(v176 - 8);
  v128 = *(v204 + 64);
  __chkstk_darwin(v176);
  v152 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v144 = &v116 - v40;
  v198 = sub_1000F24EC(&qword_100AE4318);
  v203 = *(v198 - 8);
  v127 = *(v203 + 64);
  __chkstk_darwin(v198);
  v150 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v149 = &v116 - v43;
  v197 = sub_1000F24EC(&qword_100AE4320);
  v202 = *(v197 - 8);
  v126 = *(v202 + 64);
  __chkstk_darwin(v197);
  v148 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v151 = &v116 - v46;
  v196 = sub_1000F24EC(&qword_100AE4328);
  v201 = *(v196 - 8);
  v125 = *(v201 + 64);
  __chkstk_darwin(v196);
  v147 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v153 = &v116 - v49;
  v195 = sub_1000F24EC(&qword_100AE4330);
  v200 = *(v195 - 8);
  v124 = *(v200 + 64);
  __chkstk_darwin(v195);
  v146 = &v116 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v154 = &v116 - v52;
  v194 = sub_1000F24EC(&qword_100AE4338);
  v174 = *(v194 - 8);
  v123 = *(v174 + 64);
  __chkstk_darwin(v194);
  v145 = &v116 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v156 = &v116 - v55;
  type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
  type metadata accessor for AudioAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenContactCollectionViewCell();
  type metadata accessor for ContactAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenGenericMapCollectionViewCell();
  type metadata accessor for GenericMapAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenLinkCollectionViewCell();
  type metadata accessor for LinkAsset();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FullScreenLivePhotoCollectionViewCell();
  type metadata accessor for LivePhotoAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenMotionActivityCollectionViewCell();
  type metadata accessor for MotionActivityAsset();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  type metadata accessor for MultiPinMapAsset();
  v56 = v37;
  v122 = v37;
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenMusicCollectionViewCell();
  type metadata accessor for MusicAsset();
  v57 = v140;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FullScreenPhotoCollectionViewCell();
  type metadata accessor for PhotoAsset();
  v58 = v141;
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenPodcastCollectionViewCell();
  type metadata accessor for PodcastAsset();
  v59 = v27;
  v119 = v27;
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenRouteCollectionViewCell();
  type metadata accessor for WorkoutRouteAsset();
  v60 = v142;
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenStateOfMindCollectionViewCell();
  type metadata accessor for StateOfMindAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  type metadata accessor for ThirdPartyMediaAsset();
  v61 = v143;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  v121 = v0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FullScreenVideoCollectionViewCell();
  type metadata accessor for VideoAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenWorkoutCollectionViewCell();
  type metadata accessor for WorkoutIconAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenConfettiCollectionViewCell();
  type metadata accessor for ConfettiAsset();
  UICollectionView.CellRegistration.init(handler:)();
  type metadata accessor for FullScreenUnknownAssetCollectionViewCell();
  type metadata accessor for Asset();
  UICollectionView.CellRegistration.init(handler:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v120 = v206;
  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v174 + 16))(v145, v156, v194);
  (*(v200 + 16))(v146, v154, v195);
  (*(v201 + 16))(v147, v153, v196);
  (*(v202 + 16))(v148, v151, v197);
  (*(v203 + 16))(v150, v149, v198);
  (*(v204 + 16))(v152, v144, v176);
  (*(v205 + 16))(v155, v56, v177);
  v62 = v178;
  (*(v178 + 16))(v157, v57, v179);
  v63 = v181;
  (*(v181 + 16))(v159, v58, v182);
  v64 = v184;
  (*(v184 + 16))(v161, v59, v185);
  v65 = v187;
  (*(v187 + 16))(v163, v60, v188);
  v66 = v189;
  (*(v189 + 16))(v164, v175, v190);
  v67 = v192;
  (*(v192 + 16))(v165, v61, v199);
  v68 = v193;
  (*(v193 + 16))(v166, v180, v167);
  v69 = v158;
  (*(v158 + 16))(v168, v183, v169);
  v70 = v160;
  (*(v160 + 16))(v170, v186, v171);
  v71 = v162;
  (*(v162 + 16))(v172, v191, v173);
  v72 = *(v200 + 80);
  v73 = v123 + v72;
  v74 = *(v201 + 80);
  v124 += v74;
  v75 = *(v202 + 80);
  v76 = v125 + v75;
  v77 = *(v203 + 80);
  v126 += v77;
  v78 = *(v204 + 80);
  v127 += v78;
  v79 = *(v205 + 80);
  v128 += v79;
  v80 = *(v62 + 80);
  v129 += v80;
  v81 = *(v63 + 80);
  v125 = v130 + v81;
  v82 = *(v64 + 80);
  v123 = v131 + v82;
  v83 = *(v65 + 80);
  v117 = v132 + v83;
  v84 = *(v66 + 80);
  v85 = v133 + v84;
  v86 = *(v67 + 80);
  v87 = v134 + v86;
  v88 = *(v68 + 80);
  v89 = v135 + v88;
  v90 = v174;
  v91 = (*(v174 + 80) + 24) & ~*(v174 + 80);
  v92 = (v73 + v91) & ~v72;
  v93 = *(v69 + 80);
  v94 = v136 + v93;
  v95 = (v124 + v92) & ~v74;
  v96 = (v76 + v95) & ~v75;
  v97 = *(v70 + 80);
  v98 = v137 + v97;
  v99 = *(v71 + 80);
  v100 = (v126 + v96) & ~v77;
  v101 = (v127 + v100) & ~v78;
  v102 = (v128 + v101) & ~v79;
  v130 = (v129 + v102) & ~v80;
  v131 = (v125 + v130) & ~v81;
  v132 = (v123 + v131) & ~v82;
  v133 = (v117 + v132) & ~v83;
  v134 = (v85 + v133) & ~v84;
  v135 = (v87 + v134) & ~v86;
  v136 = (v89 + v135) & ~v88;
  v137 = (v94 + v136) & ~v93;
  v103 = (v98 + v137) & ~v97;
  v138 = (v138 + v99 + v103) & ~v99;
  v104 = swift_allocObject();
  *(v104 + 16) = v118;
  (*(v90 + 32))(v104 + v91, v145, v194);
  (*(v200 + 32))(v104 + v92, v146, v195);
  (*(v201 + 32))(v104 + v95, v147, v196);
  (*(v202 + 32))(v104 + v96, v148, v197);
  (*(v203 + 32))(v104 + v100, v150, v198);
  (*(v204 + 32))(v104 + v101, v152, v176);
  (*(v205 + 32))(v104 + v102, v155, v177);
  (*(v178 + 32))(v104 + v130, v157, v179);
  (*(v181 + 32))(v104 + v131, v159, v182);
  (*(v184 + 32))(v104 + v132, v161, v185);
  (*(v187 + 32))(v104 + v133, v163, v188);
  (*(v189 + 32))(v104 + v134, v164, v190);
  (*(v192 + 32))(v104 + v135, v165, v199);
  v105 = v167;
  (*(v193 + 32))(v104 + v136, v166, v167);
  v106 = v158;
  v107 = v169;
  (*(v158 + 32))(v104 + v137, v168, v169);
  v108 = v160;
  v109 = v171;
  (*(v160 + 32))(v104 + v103, v170, v171);
  v110 = v162;
  v111 = v173;
  (*(v162 + 32))(v104 + v138, v172, v173);
  v112 = objc_allocWithZone(sub_1000F24EC(&unk_100AE4220));
  v113 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v206 = v113;
  v114 = v121;
  static UIViewController.ViewLoading.subscript.setter();
  (*(v110 + 8))(v191, v111);
  (*(v108 + 8))(v186, v109);
  (*(v106 + 8))(v183, v107);
  (*(v193 + 8))(v180, v105);
  (*(v192 + 8))(v143, v199);
  (*(v189 + 8))(v175, v190);
  (*(v187 + 8))(v142, v188);
  (*(v184 + 8))(v119, v185);
  (*(v181 + 8))(v141, v182);
  (*(v178 + 8))(v140, v179);
  (*(v205 + 8))(v122, v177);
  (*(v204 + 8))(v144, v176);
  (*(v203 + 8))(v149, v198);
  (*(v202 + 8))(v151, v197);
  (*(v201 + 8))(v153, v196);
  (*(v200 + 8))(v154, v195);
  return (*(v174 + 8))(v156, v194);
}