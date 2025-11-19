void sub_10027B8BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_1000AA0AC([v6 init]);
    v7 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      SearchAd.adTransparencyAction.getter();
      Action.title.getter();
      v11 = v10;

      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_1009750A8];
        v18 = *&v15[qword_1009750A8];
        *v17 = sub_10027BEC0;
        v17[1] = v16;

        v19 = v15;

        sub_10001F63C(v18);
      }
    }

    v20 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
    if (v20)
    {
      sub_100005744(0, &qword_100970180);
      v21 = v20;
      v22 = static UIColor.secondaryText.getter();
      [v21 setTintColor:v22];
    }

    v23 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    sub_100005744(0, &qword_100970180);
    v24 = static UIColor.secondaryText.getter();
    [v23 setTextColor:v24];

    v25 = type metadata accessor for Feature();
    v38[3] = v25;
    v38[4] = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature);
    v26 = sub_1000056E0(v38);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25);
    LOBYTE(v24) = isFeatureEnabled(_:)();
    sub_100007000(v38);
    v27 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    if (v24)
    {
      v28 = static UIColor.secondaryText.getter();
    }

    else
    {
      v28 = static UIColor.tertiaryText.getter();
    }

    v29 = v28;
    [v27 setTextColor:v28];

    SearchAd.advertisingText.getter();
    v31 = v30;
    v32 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
    v33 = [v32 superview];
    if (!v33 || (v34 = v33, sub_100005744(0, &qword_100972EB0), v35 = v3, v36 = static NSObject.== infix(_:_:)(), v34, v35, (v36 & 1) == 0))
    {
      [v3 addSubview:v32];
    }

    [v32 setHidden:v31 == 0];
    if (v31)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    [v32 setText:v37];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_1000AA154();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_1000AA154();
    v13 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_10027BD48(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_10027BEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10027BF1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_10027BF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98 = a3;
  v9 = type metadata accessor for Paragraph.Alignment();
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v94 = &v92 - v15;
  __chkstk_darwin(v16);
  v93 = &v92 - v17;
  v18 = sub_10002849C(&qword_10097C3F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v92 - v22;
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v92 - v28;
  v101 = v6;
  [v6 bounds];
  v32 = sub_10012BA18(v30, v31, a1, a6);
  v97 = a1;
  v33 = ProductDescription.paragraph.getter();
  sub_10002849C(&qword_100975770);
  sub_100135E58();
  WritableStateLens<A>.currentValue.getter();
  v34 = aBlock;
  if (aBlock == 2)
  {
    v34 = Paragraph.isCollapsed.getter();
  }

  v96 = v9;
  v99 = v33;
  if ((v34 & v32 & 1) == 0)
  {
    v94 = v13;
    v55 = Paragraph.text.getter();
    v56 = [a6 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10010279C;
    *(v60 + 24) = v59;
    v106 = sub_1001027AC;
    v107 = v60;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_1006606C4;
    v105 = &unk_1008BB908;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v29 = v95;
      v44 = *&v101[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      Paragraph.alignment.getter();
      v65 = v96;
      (*(v100 + 56))(v29, 0, 1, v96);
      v66 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_1005A0320();
      }

      v52 = v70;
      sub_10059FCD8(v70);
      v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_10027D5B8(v29, v20);
      v71 = v100;
      if ((*(v100 + 48))(v20, 1, v65) != 1)
      {
        v77 = v94;
        (*(v71 + 32))(v94, v20, v65);
        v78 = v92;
        (*(v71 + 16))(v92, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v101;
        }

        else
        {
          v72 = v101;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v94, v65);
        goto LABEL_39;
      }

      v54 = v20;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v35 = Paragraph.collapsedText.getter();
  v36 = [a6 traitCollection];
  v37 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v35];
  v95 = [v35 length];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100126854;
  *(v39 + 24) = v38;
  v106 = sub_100126848;
  v107 = v39;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1006606C4;
  v105 = &unk_1008BB9A8;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  [v35 enumerateAttributesInRange:0 options:v95 usingBlock:{0x100000, v40}];

  _Block_release(v40);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v101[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v42;
  Paragraph.alignment.getter();
  v46 = v96;
  (*(v100 + 56))(v29, 0, 1, v96);
  v47 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_1005A0320();
  }

  v52 = v51;
  sub_10059FCD8(v51);
  v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_10027D5B8(v29, v25);
  v53 = v100;
  if ((*(v100 + 48))(v25, 1, v46) != 1)
  {
    v73 = v93;
    (*(v53 + 32))(v93, v25, v46);
    v74 = v94;
    (*(v53 + 16))(v94, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v101;
    }

    else
    {
      v72 = v101;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v94, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v25;
LABEL_14:
  sub_10002B894(v54, &qword_10097C3F0);
  v72 = v101;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10002B894(v29, &qword_10097C3F0);
  ProductDescription.tags.getter();
  type metadata accessor for RibbonBarItem();
  v81 = Array.isNotEmpty.getter();

  v82 = v98;
  if (v81)
  {
    v83 = ProductDescription.tags.getter();
    v84 = ProductDescription.numberOfTagRowsStandard.getter();
    v85 = ProductDescription.numberOfTagRowsAX.getter();
    sub_1005EC638(v83, v84, v85);
  }

  v86 = ProductDescription.developerAction.getter();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    Action.title.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    v90 = &v87[OBJC_IVAR____TtC8AppStore17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC8AppStore17DeveloperLinkView_tapHandler];
    *v90 = sub_10027D628;
    v90[1] = v89;
    sub_10001F63C(v91);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_10027CB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_10027CCB8()
{
  sub_10002849C(&qword_100975770);
  sub_100135E58();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

uint64_t sub_10027CD30()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_10027CEC8()
{
  result = qword_10097C3D8;
  if (!qword_10097C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C3D8);
  }

  return result;
}

unint64_t sub_10027CF20()
{
  result = qword_10097C3E0;
  if (!qword_10097C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C3E0);
  }

  return result;
}

uint64_t sub_10027CF74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductDescriptionLayout();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10097C3F8);
  sub_100135E58();
  StateLens<A>.currentValue.getter();
  v9 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    ProductDescription.paragraph.getter();
    v9 = Paragraph.isCollapsed.getter();
  }

  v43 = ProductDescription.paragraph.getter();
  if (v9)
  {
    v10 = Paragraph.collapsedText.getter();
    v41 = 3;
  }

  else
  {
    v10 = Paragraph.text.getter();
    v41 = 0;
  }

  v48 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v49 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100126854;
  *(v14 + 24) = v13;
  v59 = sub_100126848;
  v60 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v58 = &unk_1008BBA20;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  v42 = v10;
  [v10 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v17;
    v21 = ProductDescription.tags.getter();
    v22 = ProductDescription.numberOfTagRowsStandard.getter();
    v23 = ProductDescription.numberOfTagRowsAX.getter();
    if (ProductDescription.developerAction.getter())
    {
      v49 = Action.title.getter();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v29 = v20;
    v30 = LayoutViewPlaceholder.init(measureWith:)();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = LayoutViewPlaceholder.init(measureWith:)();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = LayoutViewPlaceholder.init(measureWith:)();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    type metadata accessor for RibbonBarItem();
    LOBYTE(v34) = Array.isNotEmpty.getter();

    if (v34)
    {
      sub_10002C0AC(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_100129F58(v44);
    sub_10002C0AC(aBlock, &v52);
    sub_10002C0AC(v56, &v51);
    sub_10002C0AC(v55, &v50);
    v38 = v45;
    ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
    sub_10027D630(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout);
    v39 = v47;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v46 + 8))(v38, v39);
    sub_10002B894(v53, &qword_100975610);
    sub_100007000(v55);
    sub_100007000(v56);
    return sub_100007000(aBlock);
  }

  return result;
}

uint64_t sub_10027D5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097C3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027D630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr1008A96D1C5StateVwet(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_10027D744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPreviewDestination.ContentType();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FlowPage();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a2;
    v42 = a1;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v20 = sub_10002849C(&unk_1009731D0);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v22 = &qword_100977FB8;
      v23 = v16;
LABEL_11:
      sub_10002B894(v23, v22);
      a2 = v19;
      goto LABEL_16;
    }

    ReadOnlyLens.value.getter();
    (*(v21 + 8))(v16, v20);
    sub_100005A38(&v48, v50);
    sub_10002C0AC(v50, v46);
    sub_10002849C(&qword_100973D50);
    sub_10002849C(&qword_10097C550);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_100007000(v50);
      v22 = &unk_10097C558;
      v23 = &v43;
      goto LABEL_11;
    }

    sub_100005A38(&v43, &v48);
    sub_10002A400(&v48, v49);
    a2 = v19;
    if (dispatch thunk of ClickableModel.clickAction.getter())
    {
      type metadata accessor for FlowAction();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v39;
        v37 = v24;
        FlowAction.page.getter();
        v26 = FlowPage.isPreviewingSupported.getter();
        (*(v40 + 8))(v25, v41);
        if ((v26 & 1) == 0)
        {
          sub_100007000(v50);

          goto LABEL_15;
        }

        sub_10002C0AC(v50, v46);
        type metadata accessor for TodayCard();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10002A400(&v48, v49);

          dispatch thunk of ClickableModel.clickSender.getter();
          sub_10027E0AC(v50, v38);
          FlowPreviewDestination.init(flowAction:sender:contentType:)();

          sub_100007000(v50);
          v36 = type metadata accessor for FlowPreviewDestination();
          (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
          return sub_100007000(&v48);
        }
      }
    }

    sub_100007000(v50);
LABEL_15:
    sub_100007000(&v48);
  }

LABEL_16:
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_29:
    v34 = type metadata accessor for FlowPreviewDestination();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v28 = v27;
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  (*(v5 + 8))(v7, v4);
  v29 = sub_10002849C(&unk_1009731D0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10002B894(v13, &qword_100977FB8);
    goto LABEL_29;
  }

  ReadOnlyLens.value.getter();
  (*(v30 + 8))(v13, v29);
  sub_100005A38(&v48, v50);
  sub_10002C0AC(v50, v46);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_10097C538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_100007000(v50);
    sub_10002B894(&v43, &qword_10097C540);
    goto LABEL_29;
  }

  sub_100005A38(&v43, &v48);
  sub_10002A400(&v48, v49);
  IndexPath.item.getter();
  dispatch thunk of NestedShelfClickableModel.click(for:)();
  if (!v43)
  {
    sub_100007000(v50);
    sub_10002B894(&v43, &qword_10097C548);
    sub_100007000(&v48);
    goto LABEL_29;
  }

  v46[0] = v43;
  v46[1] = v44;
  v47 = v45;
  sub_100031660(v46, &v43, &qword_10097C510);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCastClass())
  {

    sub_10002B894(v46, &qword_10097C510);
    sub_100007000(v50);
    sub_10002B894(&v43 + 8, &unk_1009711D0);
LABEL_28:
    sub_100007000(&v48);
    goto LABEL_29;
  }

  sub_10002B894(&v43 + 8, &unk_1009711D0);
  v31 = v39;
  FlowAction.page.getter();
  v32 = FlowPage.isPreviewingSupported.getter();
  (*(v40 + 8))(v31, v41);
  if ((v32 & 1) == 0)
  {

    sub_10002B894(v46, &qword_10097C510);
    sub_100007000(v50);
    goto LABEL_28;
  }

  sub_100031660(v46, &v43, &qword_10097C510);

  sub_10027E0AC(v50, v38);
  FlowPreviewDestination.init(flowAction:sender:contentType:)();

  sub_10002B894(v46, &qword_10097C510);
  sub_100007000(v50);
  v33 = type metadata accessor for FlowPreviewDestination();
  (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  return sub_100007000(&v48);
}

uint64_t sub_10027E0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002C0AC(a1, v8);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Review();
  if (swift_dynamicCast() || (type metadata accessor for ReviewsContainer(), swift_dynamicCast()))
  {

    sub_100007000(v8);
    v3 = enum case for FlowPreviewDestination.ContentType.source(_:);
    v4 = type metadata accessor for FlowPreviewDestination.ContentType();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  else
  {
    v6 = enum case for FlowPreviewDestination.ContentType.flowDestination(_:);
    v7 = type metadata accessor for FlowPreviewDestination.ContentType();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    return sub_100007000(v8);
  }
}

uint64_t sub_10027E1E8()
{
  v34 = type metadata accessor for IndexPath();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v1 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v2 - 8);
  v32 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10002849C(&unk_1009731D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  v15 = Strong;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    v16 = &qword_100977FB8;
    v17 = v9;
LABEL_8:
    sub_10002B894(v17, v16);
    goto LABEL_9;
  }

  (*(v11 + 32))(v13, v9, v10);
  ReadOnlyLens.value.getter();
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_10097C520);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v11 + 8))(v13, v10);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v16 = &qword_10097C528;
    v17 = &v37;
    goto LABEL_8;
  }

  sub_100005A38(&v37, v40);
  ReadOnlyLens.value.getter();
  type metadata accessor for TodayCard();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10002A400(v40, v41);
    v20 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();
    (*(v11 + 8))(v13, v10);
    goto LABEL_33;
  }

  (*(v11 + 8))(v13, v10);

  sub_100007000(v40);
LABEL_9:
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    (*(v11 + 56))(v6, 1, 1, v10);
    goto LABEL_16;
  }

  v19 = v18;
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  (*(v33 + 8))(v1, v34);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
LABEL_16:
    sub_10002B894(v6, &qword_100977FB8);
    goto LABEL_17;
  }

  sub_10002849C(&qword_10097C530);
  if (!swift_dynamicCast())
  {
LABEL_17:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_18;
  }

  if (!*(&v44 + 1))
  {
LABEL_18:
    sub_10002B894(&v43, &qword_10097C518);
    goto LABEL_19;
  }

  sub_100005A38(&v43, v40);
  sub_10002A400(v40, v41);
  IndexPath.item.getter();
  dispatch thunk of ComponentModelContainment.model(at:)();
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_10097C520);
  if (swift_dynamicCast())
  {
    sub_100005A38(v35, &v43);
    sub_10002A400(&v43, *(&v44 + 1));
    v20 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();
    sub_100007000(&v43);
LABEL_33:
    sub_100007000(v40);
    return v20;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_10002B894(v35, &qword_10097C528);
  sub_100007000(v40);
LABEL_19:
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.optional<A>(_:)();
  if (v40[0])
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = v32;
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      if ((*(v11 + 48))(v23, 1, v10) == 1)
      {

        v24 = &qword_100977FB8;
        v25 = v23;
LABEL_23:
        sub_10002B894(v25, v24);
        return 0;
      }

      ReadOnlyLens.value.getter();
      (*(v11 + 8))(v23, v10);
      sub_10002849C(&qword_100973D50);
      v26 = type metadata accessor for AdvertsSearchResult();
      if (swift_dynamicCast())
      {
        v27 = v43;
        v41 = v26;
        v42 = sub_10027F218(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult);
        v40[0] = v27;

        v28 = AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)();
        sub_100007000(v40);
        if (v28)
        {
          dispatch thunk of AdvertRotationController.currentAdvert.getter();
          sub_10002849C(&unk_10097E360);
          sub_10002849C(&qword_10097C520);
          if (swift_dynamicCast())
          {
            sub_100005A38(&v37, &v43);
            sub_10002A400(&v43, *(&v44 + 1));
            v29 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();

            sub_100007000(&v43);
            return v29;
          }

          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v24 = &qword_10097C528;
          v25 = &v37;
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

id sub_10027EA60(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ShelfBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v16 = Strong;
  v17 = v5;
  v18 = v6;
  v33 = a1;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v19 = sub_10002849C(&unk_1009731D0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10002B894(v14, &qword_100977FB8);
    v6 = v18;
    v5 = v17;
LABEL_4:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_5;
  }

  ReadOnlyLens.value.getter();
  (*(v20 + 8))(v14, v19);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_10096FB18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v6 = v18;
    v5 = v17;
    goto LABEL_5;
  }

  v6 = v18;
  v5 = v17;
  if (!*(&v35 + 1))
  {
LABEL_5:
    sub_10002B894(&v34, &unk_10096FB20);
    goto LABEL_6;
  }

  sub_100005A38(&v34, v37);
  sub_10002A400(v37, v37[3]);
  dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
  v25 = type metadata accessor for ItemBackground();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_10002B894(v11, &unk_1009804F0);
  }

  else
  {
    v31 = ItemBackground.isSolidColorAdBackground.getter();
    (*(v26 + 8))(v11, v25);
    if (v31)
    {
      if (qword_10096EFB0 != -1)
      {
        swift_once();
      }

      v32 = qword_1009D3A08;
      sub_100007000(v37);
      return v32;
    }
  }

  sub_100007000(v37);
LABEL_6:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    IndexPath.section.getter();
    dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

    v23 = sub_10002849C(&unk_1009731F0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_10002B894(v4, &unk_10098FFB0);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v24 + 8))(v4, v23);
      if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
      {
        (*(v6 + 96))(v8, v5);
        v27 = *v8;
        v28 = *(sub_10002849C(&qword_100972A40) + 48);
        v29 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v29 - 8) + 8))(&v8[v28], v29);
        return v27;
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return [objc_opt_self() clearColor];
}

uint64_t sub_10027F07C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10027F154(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_100031660(a2, &v4, &unk_1009711D0);

  SyncEvent.post(_:)();
  return sub_10002B894(&v3, &qword_10097C510);
}

uint64_t sub_10027F218(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_10027F260(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell()
{
  result = qword_10097C588;
  if (!qword_10097C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10027F640()
{
  sub_10002849C(&qword_10097C598);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_1007B1890;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_1003983EC(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_10097C5A0);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10002849C(&qword_10097C5A8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1007B10D0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10002849C(&qword_10097C5B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10002849C(&qword_10097C5B8);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1003984D8(v8);
  swift_setDeallocating();
  sub_10027F890(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_10027F8F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_10027F890(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10027F8F8()
{
  result = qword_10096F678;
  if (!qword_10096F678)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096F678);
  }

  return result;
}

uint64_t sub_10027F950()
{
  v36 = type metadata accessor for EditorialQuoteLayout.Metrics.Alignment();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditorialQuoteLayout.Metrics();
  sub_100005644(v5, qword_1009CEB90);
  v33 = sub_1000056A8(v5, qword_1009CEB90);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009CEBA8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = type metadata accessor for StaticDimension();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009CEBC0);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v44);
  v19 = v30;
  v30(v18, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v40);
  v19(v21, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return EditorialQuoteLayout.Metrics.init(quoteTopSpace:attributionTopSpace:horizontalMargin:bottomMargin:maxWidth:minHeight:alignment:)();
}

char *sub_10027FF1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009CEBA8);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = type metadata accessor for DynamicTypeLabel();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v18, qword_1009CEBC0);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_100280A30(v39, v39);

  return v39;
}

uint64_t sub_1002804D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = type metadata accessor for LayoutRect();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialQuoteLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009CEB90);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = type metadata accessor for DynamicTypeLabel();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  EditorialQuoteLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100280838(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1)
  {
    return sub_100280A30(v2, v2);
  }

  if ((UITraitCollection.prefersRightToLeftLayouts.getter() ^ v5))
  {
    return sub_100280A30(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = UITraitCollection.isSizeClassCompact.getter() & 1;

  result = UITraitCollection.isSizeClassCompact.getter();
  if ((result & 1) != v7)
  {
    return sub_100280A30(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell()
{
  result = qword_10097C600;
  if (!qword_10097C600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100280A30(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = UITraitCollection.isSizeClassCompact.getter();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    v12(v8, v11, v4);
    return dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

uint64_t sub_100280BF4()
{
  if (qword_10096CF48 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_100280CB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = type metadata accessor for FootnoteLayout.Metrics();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FootnoteLayout();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Footnote.text.getter();
  v12 = Footnote.presentationStyle.getter();
  sub_1000367E8();
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  sub_1000056A8(v13, qword_1009D09B0);
  v33 = a4;
  v14 = [a4 traitCollection];
  v15 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v16 = type metadata accessor for Feature();
  v39[3] = v16;
  v39[4] = sub_10028135C(&qword_100972E50, &type metadata accessor for Feature);
  v17 = sub_1000056E0(v39);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v18 = v15;
  isFeatureEnabled(_:)();
  sub_100007000(v39);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 2) != 0)
  {
    if (qword_10096CF48 != -1)
    {
      swift_once();
    }

    [qword_1009CDB60 size];
    v19 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v20 = LayoutViewPlaceholder.init(representing:)();
    *(&v37 + 1) = v19;
    v38 = &protocol witness table for LayoutViewPlaceholder;
    *&v36 = v20;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v21 = v33;
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = sub_1000056A8(v29, qword_1009CDB48);
  (*(v28 + 16))(v30, v23, v22);
  sub_10002C0AC(v39, v35);
  sub_10005FC74(&v36, v34);
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  [v21 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_10028135C(&qword_100992FD0, &type metadata accessor for FootnoteLayout);
  v24 = v32;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v26 = v25;

  (*(v31 + 8))(v7, v24);
  sub_100007000(v39);
  sub_10005FD2C(&v36);
  return v26;
}

id sub_100281268()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v2 = Footnote.presentationStyle.getter();
  v3 = v1[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
  v1[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v2 & 2) != 0;
  sub_10007B3E8(v3);
  v1[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
  Footnote.text.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  [v1 setNeedsLayout];

  return [v0 setNeedsLayout];
}

uint64_t sub_10028135C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002813A4(uint64_t a1)
{
  v53 = a1;
  v52 = type metadata accessor for _AssistantIntent.PhraseToken();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_10097C680);
  v58 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v41 - v3;
  v5 = sub_10002849C(&qword_10097C6A0);
  __chkstk_darwin(v5);
  sub_100283534();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010080AEB0;
  v6._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v56 = sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 1650553888;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57 = *(v58 + 8);
  v58 += 8;
  v57(v4, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x657461676976614ELL;
  v8._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v2;
  v55 = v2;
  v11 = v2;
  v12 = v57;
  v57(v4, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6874206F74206F47;
  v13._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 1650553888;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x206F74206F47;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v54;
  v49 = *(v54 + 104);
  v50 = v54 + 104;
  v22 = v51;
  v21 = v52;
  v43 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v49(v51, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v52);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23 = *(v20 + 8);
  v23(v22, v21);
  v42 = v23;
  v54 = v20 + 8;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x20656D20776F6853;
  v25._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v19;
  v27 = v52;
  v49(v22, v26, v52);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v22, v27);
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6567617020;
  v29._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x20656D20776F6853;
  v30._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x206567617020;
  v31._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v51;
  v49(v51, v43, v27);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42(v32, v27);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  sub_10002849C(&qword_10097C688);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B73E0;
  v36 = v47;
  *(v35 + 32) = v48;
  *(v35 + 40) = v36;
  v37 = v45;
  *(v35 + 48) = v46;
  *(v35 + 56) = v37;
  v38 = v41;
  *(v35 + 64) = v44;
  *(v35 + 72) = v38;
  *(v35 + 80) = v34;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_100281CE8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_10097C678);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100281E58()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10002849C(&qword_10097C698);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B23A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_100281F6C()
{
  v0 = sub_10002849C(&qword_10097C680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007C44A0;
  v10 = v21;
  *(v9 + 32) = v22;
  *(v9 + 40) = v10;
  v11 = v19;
  *(v9 + 48) = v20;
  *(v9 + 56) = v11;
  v12 = v17;
  *(v9 + 64) = v18;
  *(v9 + 72) = v12;
  *(v9 + 80) = v16;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10028243C()
{
  v0 = sub_10002849C(&qword_10097C680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007C44A0;
  v10 = v21;
  *(v9 + 32) = v22;
  *(v9 + 40) = v10;
  v11 = v19;
  *(v9 + 48) = v20;
  *(v9 + 56) = v11;
  v12 = v17;
  *(v9 + 64) = v18;
  *(v9 + 72) = v12;
  *(v9 + 80) = v16;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100282908()
{
  v0 = sub_10002849C(&qword_10097C680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B5370;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  v11 = v14;
  *(v9 + 48) = v15;
  *(v9 + 56) = v11;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  v12 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v12;
}

uint64_t sub_100282CC4(uint64_t a1, char a2)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[15] = a2;
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  sub_1002835DC();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10002849C(&qword_10097C678);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B10D0;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100282E3C()
{
  v0 = sub_10002849C(&qword_10097C680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002849C(&qword_10097C688);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B1890;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100282FFC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_10097C678);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10028318C()
{
  if (qword_10096D508 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1002831F8()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1006AEAAC();
  sub_100283534();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v4 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v7 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v8 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v9 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002849C(&qword_10097C668);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B5360;
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v11;
}

unint64_t sub_100283534()
{
  result = qword_10097C660;
  if (!qword_10097C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C660);
  }

  return result;
}

unint64_t sub_100283588()
{
  result = qword_10097C670;
  if (!qword_10097C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C670);
  }

  return result;
}

unint64_t sub_1002835DC()
{
  result = qword_10097C690;
  if (!qword_10097C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C690);
  }

  return result;
}

uint64_t sub_100283630(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = type metadata accessor for OfferButtonSubtitlePosition();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_1009701A0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = ArcadeLockup.offerDisplayProperties.getter();
  v20 = ArcadeLockup.unsubscribedButtonAction.getter();
  v21 = ArcadeLockup.subscribedButtonAction.getter();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_100283D94(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  AccessibilityConditional.init(value:axValue:)();
  v22 = sub_10002849C(&unk_100973240);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_100283D94(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_10025B2D0(v19);
  ArcadeLockup.subscribedSubtitle.getter();
  ArcadeLockup.nonsubscribedSubtitle.getter();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v24 = type metadata accessor for ArcadeOfferLabelPresenter();
  swift_allocObject();
  v25 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
  sub_100283D94(&qword_10097C6A8, type metadata accessor for ArcadeLockupView);
  v26 = swift_unknownObjectRetain();
  ArcadeOfferLabelPresenter.view.setter();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_100283DDC(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];
}

id sub_100283C20(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {

    v13 = 0;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return result;
    }

LABEL_10:
    v13 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:static String.isNilOrEmpty(_:)() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_100283D94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100283DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100283E4C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = type metadata accessor for SystemImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097C6C8) = 0;
  *(v2 + qword_10097C6D0) = 0;
  *(v2 + qword_10097C6D8) = 0;
  *(v2 + qword_10097C6E0) = 0;
  *(v2 + qword_10097C6E8) = 0;

  v14 = sub_1003BB2B4(a1, a2);
  v14[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = type metadata accessor for Feature.iOS();
  v38[3] = v17;
  v38[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v18 = sub_1000056E0(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  sub_100007000(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    ArcadeSeeAllGamesDiffablePagePresenter.pageTitle.getter();
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = static SystemImage.load(_:with:)();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_10097C6C8;
  v25 = *&v15[qword_10097C6C8];
  *&v15[qword_10097C6C8] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_100286D14(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_10028437C()
{
  v1 = qword_10097C6D0;
  v2 = *(v0 + qword_10097C6D0);
  if (v2)
  {
    v3 = *(v0 + qword_10097C6D0);
  }

  else
  {
    v4 = sub_100286A68();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1002843DC()
{
  v0 = type metadata accessor for UIButton.Configuration();
  sub_100005644(v0, qword_10097C6B0);
  sub_1000056A8(v0, qword_10097C6B0);
  static UIButton.Configuration.plain()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  UIButton.Configuration.image.setter();
  v3 = [objc_opt_self() configurationWithScale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  return UIButton.Configuration.imagePlacement.setter();
}

void sub_1002844C4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100284604(void *a1)
{
  v2 = *&v1[qword_10097C6D8];
  *&v1[qword_10097C6D8] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_1002846CC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_10097C6E0];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = static NSObject.== infix(_:_:)(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_10097C6D8];
      *&v2[qword_10097C6D8] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_10097C6E0];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = &off_1008BBBD8;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_10028437C();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_10028437C();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_10097C6D0] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_10097C6D0] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_10097C6D8];
    *&v2[qword_10097C6D8] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_10097C6D8];
    *&v2[qword_10097C6D8] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_100284B0C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_10028437C();
  v5 = v4;
  if (v3)
  {
    sub_100005744(0, &qword_100972EB0);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_10097C6D0;
  [*&v1[qword_10097C6D0] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_10097C6D0;
  v12 = qword_10097C6E8;
  v13 = 0.0;
  if (v1[qword_10097C6E8])
  {
    v13 = 1.0;
  }

  [*&v1[qword_10097C6D0] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_100284CAC()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_10028437C();
  sub_100005744(0, &qword_10097CD40);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_100287198, v2}];
}

void sub_100284DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100284DF8();
  }
}

void sub_100284DF8()
{
  v1 = v0;
  ArcadeSeeAllGamesDiffablePagePresenter.beingBatchFacetUpdates()();
  v2 = ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_1000A24A8(v2, 1, v3);

  v7 = *(v1 + qword_10097C6E0);
  *(v1 + qword_10097C6E0) = v5;
  v6 = v5;
  sub_1002846CC(v7);
}

void sub_100284ED0(void *a1)
{
  v1 = a1;
  sub_100284CAC();
}

id sub_100284F18(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_10028437C();
    [v12 sizeToFit];

    return [*&v1[qword_10097C6D0] setNeedsLayout];
  }

  return result;
}

void sub_10028507C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100284F18(a3);
}

uint64_t sub_1002850E8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10002849C(&unk_100984570);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10002849C(&qword_10097CCE0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10002849C(&unk_10097CCE8);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_100413DF0();
  v8 = *(v0 + qword_1009CF3E0);
  ArcadeSeeAllGamesDiffablePagePresenter.onShowEmptyState.getter();
  v9 = sub_100005744(0, &qword_1009729E0);
  v10 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10002849C(&qword_10097CCF8);
  sub_100097060(&unk_10097CD00, &qword_10097CCF8);
  v30 = v0;
  EventEmitter.addObserver<A>(on:target:method:)();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_100007000(v31);
  ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  PageFacetsPresenter.onFacetStateDidChange.getter();

  v12 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10002849C(&unk_100984580);
  sub_100097060(&unk_10097CD10, &unk_100984580);
  v13 = v27;
  EventEmitter.addObserver<A>(on:target:method:)();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_100007000(v31);
  v28 = v11;
  ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  PageFacetsPresenter.onSelectedFacetOptionsChanged.getter();

  v16 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  EventEmitter.addObserver<A>(on:target:method:)();

  v15(v13, v14);
  sub_100007000(v31);
  v17 = type metadata accessor for Feature.iOS();
  v32 = v17;
  v33 = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v18 = sub_1000056E0(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  result = sub_100007000(v31);
  if (v17)
  {
    ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
    PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();

    v20 = static OS_dispatch_queue.main.getter();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10002849C(&qword_100984590);
    sub_100097060(&unk_10097CD20, &qword_100984590);
    v21 = v22;
    EventEmitter.addObserver<A>(on:target:method:)();

    (*(v23 + 8))(v21, v24);
    return sub_100007000(v31);
  }

  return result;
}

void sub_1002856CC(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_10097CD38);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100031660(a1, &v20 - v7, &qword_10097CD38);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.title.getter();
    v13 = v12;
    v14 = ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.subtitle.getter();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView());
    sub_1003D8D40(v11, v13, v14, v16);
    v18 = objc_allocWithZone(type metadata accessor for OverlayViewController());
    v19 = OverlayViewController.init(overlayView:)();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1002844C4(v10);
}

void (*sub_1002858C8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100287190;
}

void (*sub_10028592C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100287174;
}

void (*sub_100285990(void *a1))(uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002871A0;
}

void sub_1002859F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CC98);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Feature.iOS();
  v23[3] = v10;
  v23[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v11 = sub_1000056E0(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = isFeatureEnabled(_:)();
  sub_100007000(v23);
  if (v10)
  {
    sub_100286108();
  }

  else
  {
    PageFacetsPresenter.FacetsState.facets.getter();
    v12 = type metadata accessor for PageFacets();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10002B894(v9, &qword_10097CD30);
      v14 = 0;
    }

    else
    {
      v15 = PageFacets.facetGroups.getter();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_10097C6E8) = v14;
    sub_100284B0C();
    v17 = sub_10028437C();
    type metadata accessor for PageFacetsPresenter();
    v18 = type metadata accessor for PageFacetsPresenter.FacetsState();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    static PageFacetsPresenter.selectedFacetsTitle(for:)();
    sub_10002B894(v6, &qword_10097CC98);
    v20 = String._bridgeToObjectiveC()();

    [v17 setTitle:v20 forState:0];

    v21 = qword_10097C6D0;
    [*(a2 + qword_10097C6D0) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_100285D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100974490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1005F9AF4(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_100285E78(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100286E04;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000A2F74;
}

unint64_t sub_100285F08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_100286DB0();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_100285F60@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_100286D5C();
  *(a1 + 32) = result;
  return result;
}

void sub_100285F94(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097CCC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_100728590(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v6 = v7[1];
    dispatch thunk of VideoPlaybackCoordinator.unregisterAllVideoViews()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100286108()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_1006DBEF4(v6, v5, sub_100286E0C, v7);

  (*(v3 + 8))(v5, v2);
  sub_100005744(0, &qword_100983870);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_1002862E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100286E30();
}

void sub_100286344(void *a1)
{
  v1 = a1;
  ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()();
  sub_100284604(0);
}

uint64_t sub_1002863A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_100031660(v15, v6, &qword_100982460);
  sub_100031660(v18, &v6[v20], &qword_100982460);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100286D14(&qword_100975040, &type metadata accessor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460);
      sub_10002B894(v18, &qword_100982460);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460);
    sub_10002B894(v18, &qword_100982460);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460);
  sub_10002B894(v18, &qword_100982460);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460);
  v23 = 1;
  return v23 & 1;
}

void sub_100286860()
{
  v1 = *(v0 + qword_10097C6E0);
}

void sub_1002868C0(uint64_t a1)
{
  v2 = *(a1 + qword_10097C6E0);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController()
{
  result = qword_10097C718;
  if (!qword_10097C718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002869D4()
{
  ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()();
  v1 = *(v0 + qword_10097C6E0);
  *(v0 + qword_10097C6E0) = 0;
  sub_1002846CC(v1);
}

id sub_100286A68()
{
  v0 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10002849C(&qword_10097CC98);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  type metadata accessor for PageFacetsPresenter();
  v7 = type metadata accessor for PageFacetsPresenter.FacetsState();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  static PageFacetsPresenter.selectedFacetsTitle(for:)();
  sub_10002B894(v5, &qword_10097CC98);
  v8 = String._bridgeToObjectiveC()();

  [v6 setTitle:v8 forState:0];

  if (qword_10096D510 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UIButton.Configuration();
  v10 = sub_1000056A8(v9, qword_10097C6B0);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  UIButton.configuration.setter();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_100286D14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100286D5C()
{
  result = qword_10097CCC8;
  if (!qword_10097CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CCC8);
  }

  return result;
}

unint64_t sub_100286DB0()
{
  result = qword_10097CCD0;
  if (!qword_10097CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CCD0);
  }

  return result;
}

void sub_100286E30()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  ArcadeSeeAllGamesDiffablePagePresenter.toggleDisplayStyle()();
  ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_100286D14(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18[0] == v18[5] && v18[1] == v18[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = type metadata accessor for Feature.iOS();
  v18[3] = v11;
  v18[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v12 = sub_1000056E0(v18);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = isFeatureEnabled(_:)();
  v13 = sub_100007000(v18);
  if (v11)
  {
    sub_100286108(v13);
  }

  else
  {
    v14 = [v1 navigationItem];
    v15 = [v14 rightBarButtonItem];

    [v15 setSelected:v9 & 1];
  }

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v16 = v18[0];
  if (v9)
  {
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  else
  {
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }
}

id sub_1002871A4()
{
  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_window);
  v2 = [v1 rootViewController];

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100287254()
{
  v0 = type metadata accessor for LegacyAppState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AppEvent.hideLockupWhenNotInstalled.getter())
  {
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v11 = v0;
    swift_getObjectType();
    AppEvent.lockup.getter();
    Lockup.adamId.getter();

    dispatch thunk of AppStateController.stateMachine(forApp:)();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    AppEvent.lockup.getter();
    Lockup.includeBetaApps.getter();

    dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
    v8 = LegacyAppState.isLocalApplication.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v3, v11);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

double sub_1002874B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_100287570()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1002875A8(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100287600;
}

void sub_100287600(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1001696DC(v2);
  }

  else
  {
    sub_1001696DC(*a1);
  }
}

uint64_t sub_100287698(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10028786C(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100287754(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028786C(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_10028786C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002878B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyFooterLayout.Metrics();
  sub_100005644(v4, qword_1009CEBE8);
  sub_1000056A8(v4, qword_1009CEBE8);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D10E8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = type metadata accessor for StaticDimension();
  v16[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v13);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return PrivacyFooterLayout.Metrics.init(bodyTopSpace:actionButtonLeadingMargin:maxTextWidth:bottomSpace:)();
}

id sub_100287C10()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10002849C(&unk_100993030);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100288418(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020);
    [*&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ObjectGraphPair.value.getter();
    ObjectGraphPair.objectGraph.getter();
    v11 = LinkableText.linkedSubstrings.getter();
    v12 = sub_1000D6F24(v11, sub_1000C17B0);

    v13 = LinkableText.styledText.getter();
    sub_1002F6004(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100287EA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = type metadata accessor for LayoutRect();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyFooterLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009CEBE8);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  PrivacyFooterLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell()
{
  result = qword_10097CD98;
  if (!qword_10097CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002882D8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    sub_1002883B4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002883B4()
{
  if (!qword_10097CDA8)
  {
    sub_10002D1A8(&unk_100993030);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097CDA8);
    }
  }
}

uint64_t sub_100288418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100288488()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AutomationSemantics();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_10002849C(&unk_100993030);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D10E8);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel] = sub_1002F5B8C(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v36, &unk_1009711D0);
  sub_10002B894(v37, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v27 = *&v19[v22];
  sub_100005744(0, &qword_100970180);
  v28 = v27;
  v29 = static UIColor.secondaryText.getter();
  v30 = *&v28[qword_10097F920];
  *&v28[qword_10097F920] = v29;
  v31 = v29;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

void sub_100288980(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097D4C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_100728BDC(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    SearchChartsAndCategoriesPage.title.getter();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100288B0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100289B74(&qword_10097D4B0, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100289B74(&qword_10097D4B8, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_100288C0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = SearchChartsAndCategoriesDiffablePagePresenter.columnCount.getter();
  v4 = v3;
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v5 = PageGridCache.init()();
  swift_allocObject();
  v6 = PageGridCache.init()();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_100289B20();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_100288CD4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_100289ACC();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100288D08(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100289A04(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_100289A6C(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0);
  sub_1000476A0(&v9[*(v19 + 48)], v18, &qword_100982460);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_100031660(v15, v6, &qword_100982460);
  sub_100031660(v18, &v6[v20], &qword_100982460);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100289B74(&qword_100975040, 255, &type metadata accessor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460);
      sub_10002B894(v18, &qword_100982460);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460);
    sub_10002B894(v18, &qword_100982460);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460);
  sub_10002B894(v18, &qword_100982460);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController()
{
  result = qword_10097CDD8;
  if (!qword_10097CDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002892BC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v58 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  v19 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = type metadata accessor for ShelfHeader.Configuration();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 56);
  v46 = v6;
  v28(v6, 1, 1);
  v47 = v24;
  sub_100031660(v24, v21, &unk_100984380);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10002B894(v21, &unk_100984380);
    v29 = 0;
  }

  else
  {
    v29 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v26 + 8))(v21, v25);
  }

  sub_100512504(v29, v18);

  if (qword_10096E798 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v11, qword_1009D2730);
  if (qword_10096E770 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v11, qword_1009D26B8);
  v32 = v50;
  sub_100289A04(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v12 + 56))(v32, 0, 1, v11);
  v33 = v48;
  sub_100289A04(v18, v48, type metadata accessor for TitleHeaderView.TextConfiguration);
  v34 = v49;
  sub_100289A04(v30, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v53;
  sub_100031660(v32, v53, &qword_1009794E8);
  v36 = v46;
  v37 = v55;
  sub_100031660(v46, v55, &qword_1009794E0);
  v38 = v56;
  (*(v56 + 104))(v57, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v58);
  sub_100028BB8();
  v45 = static UIColor.defaultLine.getter();
  sub_10002B894(v36, &qword_1009794E0);
  sub_10002B894(v32, &qword_1009794E8);
  sub_100289A6C(v18, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v47, &unk_100984380);
  v39 = type metadata accessor for TitleHeaderView.Style(0);
  v40 = v39[8];
  v41 = v54;
  sub_10022A9A0(v33, v54);
  sub_10022A9A0(v34, v41 + v39[5]);
  sub_1000476A0(v35, v41 + v39[6], &qword_1009794E8);
  *(v41 + v39[7]) = 0;
  *(v41 + v40) = 0;
  *(v41 + v39[9]) = 1;
  *(v41 + v39[14]) = 0x4030000000000000;
  *(v41 + v39[12]) = 0;
  *(v41 + v39[13]) = v45;
  (*(v38 + 32))(v41 + v39[11], v57, v58);
  v43 = v51;
  v42 = v52;
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    return (*(v43 + 32))(v41 + v39[10], v37, v42);
  }

  sub_10002B894(v37, &qword_1009794E0);
  return (*(v43 + 104))(v41 + v39[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v42);
}

uint64_t sub_100289A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100289A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100289ACC()
{
  result = qword_10097D4A0;
  if (!qword_10097D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4A0);
  }

  return result;
}

unint64_t sub_100289B20()
{
  result = qword_10097D4A8;
  if (!qword_10097D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4A8);
  }

  return result;
}

uint64_t sub_100289B74(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100289BBC()
{
  v0 = sub_10002849C(&qword_10097D4E0);
  __chkstk_darwin(v0);
  v1 = sub_10002849C(&qword_10097D4E8);
  sub_100005644(v1, qword_10097D4C8);
  sub_1000056A8(v1, qword_10097D4C8);
  sub_100289D00();
  ViewRecycler.init()();
  sub_100289D4C();
  return ReusePool.init(recycler:limit:)();
}

void sub_100289C9C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_100289D00()
{
  result = qword_10097D4F0;
  if (!qword_10097D4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097D4F0);
  }

  return result;
}

unint64_t sub_100289D4C()
{
  result = qword_10097D4F8;
  if (!qword_10097D4F8)
  {
    sub_10002D1A8(&qword_10097D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4F8);
  }

  return result;
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

double UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

uint64_t type metadata accessor for TodayPageLayoutSectionProvider()
{
  result = qword_10097D508;
  if (!qword_10097D508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028A078(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = type metadata accessor for Shelf.ContentType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_10002849C(&unk_1009731F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_10028A654(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    type metadata accessor for BasePageLayoutSectionProvider();
    v30 = method lookup function for BasePageLayoutSectionProvider();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_10002F0EC, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v32 = v51;
    ReadOnlyLens.subscript.getter();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_10040C1D8(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_10040D51C(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_10028A5D4()
{
  BasePageLayoutSectionProvider.deinit();

  return swift_deallocClassInstance();
}

id sub_10028A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = type metadata accessor for ItemLayoutContext();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    sub_100005744(0, &qword_10097D558);
    v109 = static NSCollectionLayoutGroup.emptyLayoutGroup(for:)();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    BasePageLayoutSectionProvider.addSupplementariesAndInsets(to:for:shelfLayoutSpacingProvider:shelfSupplementaryProvider:asPartOf:)();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_1006E2728(a1);
  v22 = *(v21 + 16);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interRowSpace.getter();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &StringUserDefaultsDebugSetting;
  v29 = &StringUserDefaultsDebugSetting;
  v30 = v20;
  v135 = *(v21 + 16);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 16))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *(v134 + 8 * v32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_100005744(0, &qword_10098EFE0);

            _bridgeCocoaArray<A>(_:)();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          type metadata accessor for TodayCard();
          sub_1002208A0();
          ItemLayoutContext.typedModel<A>(as:)();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            BasePageLayoutSectionProvider.componentTypeMappingProvider.getter();
            sub_10002A400(aBlock, v157);
            if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell();
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_100007000(aBlock);
                swift_getKeyPath();
                v43 = v142;
                ItemLayoutContext.subscript.getter();

                swift_getKeyPath();
                ItemLayoutContext.subscript.getter();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                ShelfLayoutContext.contentPageGrid.getter();
                static CGFloat.allColumns.getter();
                PageGrid.componentMeasuringSize(spanning:)();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    PageGrid.columnWidth.getter();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = PageGrid.name.getter();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v71)
                    {
LABEL_37:
                      PageGrid.interColumnSpace.getter();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      PageGrid.componentMeasuringSize(spanning:)();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_10003356C(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_10003356C((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[v84];
                    v34 = v85;
                    v87[4] = v53;
                    v28 = &StringUserDefaultsDebugSetting;
                    goto LABEL_11;
                  default:
                    static CGFloat.allColumns.getter();
                    PageGrid.componentMeasuringSize(spanning:)();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        PageGrid.columnCount.getter();
                        v59 = v58 + -1.0;
                        PageGrid.columnWidth.getter();
                        v61 = v60;
                        PageGrid.interColumnSpace.getter();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        PageGrid.containerWidth.getter();
                        v66 = v65;
                        PageGrid.horizontalMargins.getter();
                        v69 = v66 - (v67 + v68);
                        PageGrid.interColumnSpace.getter();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        PageGrid.containerWidth.getter();
                        v75 = v74;
                        PageGrid.horizontalMargins.getter();
                        v78 = v75 - (v76 + v77);
                        PageGrid.columnWidth.getter();
                        v80 = v78 - v79;
                        PageGrid.interColumnSpace.getter();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        PageGrid.interColumnSpace.getter();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_100007000(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_100007000(aBlock);
            }

            v28 = &StringUserDefaultsDebugSetting;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v153 = objc_opt_self();
      v91 = 4;
      v92 = v138;
      do
      {
        v93 = [v90 v28[42].ivars];
        v94 = [v90 v28[42].ivars];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_100005744(0, &qword_100982860);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v97 = [(SEL *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v90 = v154;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v91;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 v28[42].ivars];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_100005744(0, &qword_10098EFE0);
    v101 = Array._bridgeToObjectiveC()().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interColumnSpace.getter();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v107 = v139 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &StringUserDefaultsDebugSetting;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[385]];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005744(0, &qword_10098EFE0);
LABEL_66:

  v115 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0);
  v116 = Array._bridgeToObjectiveC()().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interRowSpace.getter();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v126 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006BBC70;
    v157 = &unk_1008BBD38;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  BasePageLayoutSectionProvider.addSupplementariesAndInsets(to:for:shelfLayoutSpacingProvider:shelfSupplementaryProvider:asPartOf:)();

  return v110;
}

double *sub_10028B6F8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003687C(v3, 0);
  sub_1003958F4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10028B78C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isAnimating.setter();

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = a1;
  if (v7 != v4)
  {
    v8 = v6;
    sub_1004A3758();
  }
}

char *sub_10028B844(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = type metadata accessor for AutomationSemantics();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RiverViewStyling();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_1007C4950;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  static RiverViewStyling.todayTabSpeed.getter();
  RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
  v18 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_10002849C(&qword_10097D5D0));

  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView] = RiverView.init(dataSource:styling:)();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView] = sub_1004A23B8(v15);
  v47[0] = sub_1000DB5A0;
  v47[1] = 0;
  v47[2] = sub_1005AB60C;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_100113508;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_100287668;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView] = sub_100550DDC(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v35(v11, v36);
  return v26;
}

void sub_10028BEA0()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isAnimating.setter();

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_1004A3758();
  }
}

void sub_10028BF7C()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView) + qword_10098B800) = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_100551D80();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isTransitioning.setter();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_10028C024()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_1000A805C(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_1006D05F8(v22, v15, v17, v19, v21);

    sub_1000A8C48(&v23);
  }
}

id sub_10028C1D0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassRegular.getter();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    RiverViewStyling.interRowSpacing.getter();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
    dispatch thunk of RiverView.itemSize.getter();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        dispatch thunk of RiverView.setItemSize(size:)();
      }
    }
  }

  v27 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = UITraitCollection.isSizeClassCompact.getter();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = UITraitCollection.isSizeClassCompact.getter();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = UITraitCollection.isSizeClassCompact.getter();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = UITraitCollection.prefersAccessibilityLayouts.getter(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_10028C5DC()
{
  sub_1004EE4C4();
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_10098B7F8] = *(v0 + v1);
  v4 = v3;
  sub_100551950();
}

void sub_10028C680()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_10098B7B8] = v0[*v2];
  v3 = v1;
  sub_10055189C();
}

void sub_10028C728(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_10028C938(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_10028E724();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      dispatch thunk of RiverView.isAnimating.setter();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_10028C938(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

uint64_t sub_10028CDD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v129 = a4;
  v7 = type metadata accessor for EditorialDisplayOptions();
  v128 = *(v7 - 8);
  __chkstk_darwin(v7);
  v136 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for TodayCard.Style();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for StringCharacteristics();
  v11 = *(v125 - 8);
  __chkstk_darwin(v125);
  v134 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v112 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v15, &v4[v18]);
  swift_endAccess();
  v135 = a2;
  sub_1004EAB3C(a2);
  v137 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = TodayCard.backgroundColor.getter();
    if (!v21)
    {
      sub_100028BB8();
      v21 = static UIColor.todayCardDefaultBackground.getter();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaRiver();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
  }

  v120 = v24;
  v121 = v11;
  v25 = *&v137[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  v26 = TodayCard.heading.getter();
  v133 = v27;
  v124 = TodayCard.title.getter();
  v130 = v28;
  v116 = TodayCard.shortTitle.getter();
  v132 = v29;
  TodayCard.titleCharacteristics.getter();
  v30 = TodayCard.inlineDescription.getter();
  v123 = v31;
  v131 = v10;
  TodayCard.style.getter();
  TodayCard.editorialDisplayOptions.getter();
  v32 = v135;
  v118 = v23;
  v122 = v7;
  v117 = v30;
  if (v135 == 4)
  {
    v119 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_100287668;
  }

  else
  {
    v33 = sub_100287668;
    v119 = sub_100113508;
  }

  v25[qword_10098B7E8] = 0;
  v34 = *&v25[qword_10098B7D0];
  *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_10098B7C8];
  sub_10006E7C4(v26, v133);
  v36 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v37 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v41 = static String.isNilOrEmpty(_:)();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v114 = objc_opt_self();
      [v114 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v142 = sub_1000A9214;
      v143 = v45;
      v115 = sub_100287668;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_100007A08;
      v141 = &unk_1008BBE48;
      v113 = _Block_copy(&aBlock);
      v46 = v35;
      v112 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v142 = sub_1000A9220;
      v143 = v47;
      v33 = v115;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_100504C5C;
      v141 = &unk_1008BBE98;
      v48 = _Block_copy(&aBlock);
      v49 = v112;

      v50 = v113;
      [v114 animateWithDuration:0 delay:v113 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_10098B7F0];
  *v51 = sub_1000DB5A0;
  v51[1] = 0;
  v51[2] = sub_1005AB60C;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v119;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_100551950();
  v52 = v131;
  if (v130)
  {
    if (v135 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v53 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10028E80C(&qword_100976620, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v132 && v25[qword_10098B7C0] == 4)
    {
      v52 = v131;
      if (v135 == 4)
      {
        v60 = v124;
        v61 = v130;
        v62 = v116;
        v63 = v132;
      }

      else
      {
        v60 = v116;
        v61 = v132;
        v62 = v124;
        v63 = v130;
      }

      sub_10006E8BC(v60, v61, v62, v63);
    }

    else
    {
      sub_10006E7C4(v124, v130);
      v52 = v131;
    }
  }

  v64 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v135;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_10098B7D8];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v123;
  if (v70 || (EditorialDisplayOptions.suppressTagline.getter() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_10098B7E0];
    v75 = &v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v117 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_10098B7E0];
    v75 = &v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = String._bridgeToObjectiveC()();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v142 = sub_1000A8B90;
      v143 = v82;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_100007A08;
      v141 = &unk_1008BBDA8;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v142 = sub_1000A8B98;
      v143 = v85;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_100504C5C;
      v141 = &unk_1008BBDF8;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v131;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_100550798(v52, 1);
  [v25 setNeedsLayout];

  (*(v128 + 8))(v136, v122);
  (*(v126 + 8))(v52, v127);
  (*(v121 + 8))(v134, v125);
  v88 = TodayCardMediaRiver.lockups.getter();
  v89 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v90 = v137;
  v91 = *&v137[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v92 = dispatch thunk of RiverView.dataSource.getter();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = dispatch thunk of RiverView.dataSource.getter();

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v94 + 16) = v144;

  v144 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = dispatch thunk of Lockup.artwork.getter();

    ++v97;
    if (v100)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v98 = v144;
      v97 = v99;
    }
  }

  v101 = sub_10028B6F8(v98);
  v88 = v101;
  v102 = *&v137[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v144 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = Artwork.backgroundColor.getter();

    ++v105;
    if (v108)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v106 = v144;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_1004A2DB8(v110);

  [v137 setNeedsLayout];
}

uint64_t sub_10028DFE8()
{
  type metadata accessor for TodayCard();
  sub_10028E80C(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v8)
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaRiver();
    if (!swift_dynamicCastClass())
    {
    }

    TodayCardMediaRiver.lockups.getter();
    type metadata accessor for Lockup();
    v1 = Array.isNotEmpty.getter();

    if ((v1 & 1) == 0)
    {
    }

    v2 = TodayCardMediaRiver.lockups.getter();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (Lockup.icon.getter())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          Artwork.config(_:mode:prefersLayeredImage:)();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10028E27C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v4 = dispatch thunk of RiverView.dataSource.getter();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  dispatch thunk of RiverView.flushRows()();

  v6 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_1004A2DB8(v8);
}

uint64_t sub_10028E470()
{

  v1 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = type metadata accessor for RiverViewStyling();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell()
{
  result = qword_10097D5C0;
  if (!qword_10097D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028E658()
{
  result = type metadata accessor for RiverViewStyling();
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

id sub_10028E724()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_10098B7C0) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_10028E80C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10028E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10028F204(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v43 = a4;
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((Action.presentationStyle.getter() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100005744(0, &qword_100970180);
    v18 = static UIColor.primaryText.getter();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_10028F24C(v19);
  v21 = type metadata accessor for Accessory();
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100611864(v10, v41);
  sub_10002B894(v10, &qword_100984340);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v26 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = Action.artwork.getter();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1006123AC();
  [v36 setHidden:v35];

LABEL_18:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

void sub_10028ED64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_100611C08([v6 init]);
    v7 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      SearchAd.adTransparencyAction.getter();
      Action.title.getter();
      v11 = v10;

      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_1009750A8];
        v18 = *&v15[qword_1009750A8];
        *v17 = sub_10028F52C;
        v17[1] = v16;

        v19 = v15;

        sub_10001F63C(v18);
      }
    }

    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_10028EF64(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_10028F0F8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

uint64_t sub_10028F204(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10028F24C(void *a1)
{
  if ((Action.presentationStyle.getter() & 4) != 0)
  {
    return 1;
  }

  if ((Action.presentationStyle.getter() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

double sub_10028F2C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  v5 = [a4 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 1)
  {
    [a4 pageMarginInsets];
  }

  type metadata accessor for Action();

  sub_10002849C(&unk_100980530);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v17, *(&v18 + 1));
    v7 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_10002B894(&v17, &unk_100992FE0);
    v7 = 0;
  }

  v8 = Action.title.getter();
  v10 = v9;
  v11 = Action.artwork.getter();
  if (v11)
  {
  }

  v12 = sub_10028F24C(a4);
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for ActionLayout.Metrics();
  v14 = sub_1000056A8(v13, qword_1009D2F68);
  v15 = sub_100614920(v14, a4, v8, v10, v11 != 0, v12, v7 & 1);

  return v15;
}

id sub_10028F534(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ActionLayout.Metrics();
  v6 = sub_1000056A8(v5, qword_1009D2F68);
  v7 = sub_100615214(v6, a3);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension:v7];
  v12 = [v10 absoluteDimension:v9];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = v9 * a1;
  v17 = [v10 absoluteDimension:v7];
  v18 = [v10 absoluteDimension:v16];
  v19 = [v13 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B0B70;
  *(v21 + 32) = v15;
  sub_100005744(0, &qword_10098EFE0);
  v22 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v19 subitems:isa];

  [v24 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_opt_self() fixedSpacing:0.0];
  [v24 setInterItemSpacing:v25];

  return v24;
}

uint64_t type metadata accessor for ProductPageLayoutSectionProvider()
{
  result = qword_10097D620;
  if (!qword_10097D620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028F8AC(uint64_t a1, uint64_t (*a2)(void), double *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v141 = a8;
  v133 = a7;
  v135 = a6;
  v136 = a5;
  v134 = a4;
  v138 = a3;
  v142 = a10;
  v143 = a2;
  v140 = a9;
  v11 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v11 - 8);
  v122 = &v121 - v12;
  v130 = type metadata accessor for PageGrid();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for InformationRibbon.Alignment();
  v128 = *(v131 - 1);
  __chkstk_darwin(v131);
  v127 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ItemLayoutContext();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Shelf.ContentType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  v24 = sub_10002849C(&unk_1009731F0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v121 - v28;
  v137 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v126 = v19;
  v31 = *(v19 + 88);
  v125 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v139 = &v121;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    type metadata accessor for BasePageLayoutSectionProvider();
    v42 = method lookup function for BasePageLayoutSectionProvider();
    v132 = v42(v137, sub_10002F0EC, &v121 - 4, v134, v136, v135, v133, v141, v140, v142);
    v43 = v123;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v44 = v124;
    ReadOnlyLens.subscript.getter();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v143();
      v47 = sub_10040C1D8(v137, v46, v134, v136, v135, v133, v141, v140, v142);
    }

    else
    {
      v48 = v44;
      v47 = v132;
      v49 = v137;
      v50 = v142;
      v51 = v141;
      v52 = v135;
      v53 = v133;
      v54 = v136;
      v55 = v134;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v143();
        v57 = sub_10040D51C(v49, v56, v55, v54, v52, v53, v51, v140, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v100 = v126;
          (*(v126 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v132 setOrthogonalScrollingBehavior:2];
      }
    }

    v100 = v126;
LABEL_30:
    (*(v100 + 8))(v125, v33);
    return v47;
  }

  v35 = v143();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v126 = v35;
  v125 = v36;
  if (v36)
  {
    v37 = v35;
    type metadata accessor for Badge();
    v143 = v139[2];
    v38 = v37 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v39 = v139[9];
    v40 = (v139 + 1);
    v138 = _swiftEmptyArrayStorage;
    (v143)(v17, v38, v15);
    while (1)
    {
      sub_100292870(&qword_100973128, &type metadata accessor for Badge);
      ItemLayoutContext.typedModel<A>(as:)();
      (*v40)(v17, v15);
      if (v146)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v138 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v138 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v143)(v17, v38, v15);
    }
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v58 = v128;
  v59 = v127;
  (*(v128 + 104))(v127, enum case for InformationRibbon.Alignment.justified(_:), v131);
  v60 = v129;
  v61 = v137;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v63 = v62;
  v65 = v64;
  v66 = v132 + 8;
  v67 = *(v132 + 1);
  v68 = v130;
  v67(v60, v130);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v70 = v69;
  v67(v60, v68);
  v71 = ShelfLayoutContext.traitCollection.getter();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v145.receiver = v73;
  v145.super_class = v72;
  v75 = objc_msgSendSuper2(&v145, "init");
  sub_100290A28(v138, v59, v75, v63, v65);
  v77 = v76;

  (*(v58 + 8))(v59, v131);
  if (!*(v77 + 16))
  {

    sub_100005744(0, &unk_100990AB0);
    v97 = type metadata accessor for ShelfLayoutContext();
    v98 = *(v97 - 8);
    v99 = v122;
    (*(v98 + 16))(v122, v61, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v47 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_10002B894(v99, &qword_10097F480);

    return v47;
  }

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v131 = v67;
  v67(v60, v68);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v78, qword_1009D2508);
  v79 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v81 = v80;

  v146 = _swiftEmptyArrayStorage;
  v82 = v136;
  v143 = *(v77 + 16);
  v132 = v66;
  if (!v143)
  {
    v88 = 0.0;
LABEL_32:

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v88];
    v104 = [v102 absoluteDimension:v81];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100005744(0, &qword_10098EFE0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460);
    v108 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setBoundarySupplementaryItems:v108];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670);
    v109 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setDecorationItems:v109];

    v110 = v129;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v112 = v111;
    v114 = v113;
    v131(v110, v130);
    sub_10002A400(v82, v82[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v116 = v115;
    sub_10002A400(v82, v82[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v47 setContentInsets:{v116, v112, v117, v114}];
    [v47 setOrthogonalScrollingBehavior:1];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v118 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v120 = v119;

    if (v118)
    {
      aBlock[4] = v118;
      aBlock[5] = v120;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006BBC70;
      aBlock[3] = &unk_1008BBF50;
      v118 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v118];
    _Block_release(v118);

    return v47;
  }

  v83 = objc_opt_self();
  v138 = objc_opt_self();
  result = objc_opt_self();
  if (v125)
  {
    v85 = result;
    result = v141;
    if (v143 <= v125)
    {
      swift_getObjectType();
      v86 = 0;
      v128 = v77;
      v87 = v77 + 32;
      v88 = 0.0;
      do
      {
        v89 = *(v87 + 8 * v86);
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v138 sizeWithWidthDimension:v90 heightDimension:v91];

        dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
        sub_100005744(0, &qword_100982860);
        v93 = v92;
        v94 = Array._bridgeToObjectiveC()().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v86 = (v86 + 1);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v88 = v88 + v89;
      }

      while (v143 != v86);
      v82 = v136;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100290A28(unint64_t a1, double *a2, void *a3, double a4, double a5)
{
  v10 = type metadata accessor for InformationRibbon.Alignment();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_1007C4B10, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(a4 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v10 = *&_swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_100291050(v29, v27, 0, v21, a3, a4, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10003356C(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_10003356C((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      a2[v15 + 4] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        a4 = a4 - v28;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = (a2 + 4);
        v52 = _swiftEmptyArrayStorage;
        sub_100144108(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = *(v52 + 2);
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = *(v35 + 3);
          if (a3 + v34 >= v37 >> 1)
          {
            sub_100144108((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          *(v35 + 2) = a3 + v34 + 1;
          v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = v35 + 6;
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_100548D50(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            a2[a1] = floor(a4 * (v46 / a5)) + a2[a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_1007C4B00, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

double sub_100291050(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v140 = a5;
  v124 = a4;
  v132 = a3;
  v121 = type metadata accessor for LabelPlaceholderCompatibility();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for BadgeViewSpacing();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = v118 - v15;
  v139 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v133 = *(v139 - 8);
  __chkstk_darwin(v139);
  v17 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v18 - 8);
  v123 = v118 - v19;
  v135 = type metadata accessor for BadgeCaptionCappingType();
  v143 = *(v135 - 8);
  __chkstk_darwin(v135);
  v127 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = v118 - v22;
  v136 = type metadata accessor for FontUseCase();
  v122 = *(v136 - 8);
  __chkstk_darwin(v136);
  v24 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SystemImage();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for BadgeType();
  v138 = *(v144 - 8);
  __chkstk_darwin(v144);
  v126 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v125 = v118 - v31;
  __chkstk_darwin(v32);
  v34 = v118 - v33;
  v141 = a1;
  sub_10007E1E4();
  v134 = a2;
  v129 = v13;
  if (v35)
  {
    if (qword_10096DE58 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v136, qword_1009D0A88);
    v36 = type metadata accessor for Feature();
    v148 = v36;
    v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
    v37 = sub_1000056E0(v147);
    (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);
    isFeatureEnabled(_:)();
    sub_100007000(v147);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  }

  Badge.type.getter();
  v137 = *(v138 + 88);
  v38 = v137(v34, v144);
  v39 = enum case for BadgeType.rating(_:);
  if (v38 != enum case for BadgeType.rating(_:))
  {
    if (v38 == enum case for BadgeType.contentRating(_:))
    {
      v47 = Badge.content.getter();
      v48 = BadgeContentKeyContentRatingResource.getter();
      v45 = v133;
      v46 = v135;
      if (!*(v47 + 16))
      {

        goto LABEL_38;
      }

      v50 = sub_1000072B8(v48, v49);
      v52 = v51;

      if (v52)
      {
        sub_1000073E8(*(v47 + 56) + 32 * v50, v147);

        if (swift_dynamicCast())
        {
          v53 = sub_10032FEB0(v145, v146, 0);

          [v53 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v46 = v135;
    if (v38 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v45) = enum case for BadgeType.rating(_:);
      v54._object = 0x80000001007FF2C0;
      v54._countAndFlagsBits = 0xD000000000000020;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v118[1] = localizedString(_:comment:)(v54, v55)._countAndFlagsBits;
      if (qword_10096DE60 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v45 = v133;
    if (v38 == enum case for BadgeType.editorsChoice(_:))
    {
      sub_1002928B8(0, v140);
      goto LABEL_38;
    }

    v67 = v140;
    v68 = v144;
    if (v38 == enum case for BadgeType.artwork(_:))
    {
      if (qword_10096E6F8 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v139, qword_1009D2508);
      BadgeViewRibbonLayout.Metrics.badgeIconSize.getter();
      v69 = [v67 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      CGSize.scaled(_:)();
      goto LABEL_39;
    }

    if (v38 == enum case for BadgeType.paragraph(_:))
    {
      sub_10007E3A0();
      if (qword_10096DE50 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v136, qword_1009D0A70);
      v72 = type metadata accessor for Feature();
      v148 = v72;
      v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
      v73 = sub_1000056E0(v147);
      (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
      isFeatureEnabled(_:)();
      sub_100007000(v147);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v75 = v74;

      v76 = [v67 traitCollection];
      sub_1005224E0(v75, a6);
    }

    else
    {
      if (v38 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v138 + 8))(v34, v144);
        goto LABEL_39;
      }

      v77 = Badge.content.getter();
      v78 = BadgeContentKeyNativeContentView.getter();
      if (!*(v77 + 16))
      {

        goto LABEL_39;
      }

      v80 = sub_1000072B8(v78, v79);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1000073E8(*(v77 + 56) + 32 * v80, v147);

      sub_100005744(0, &qword_100972EB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v76 = v145;
      [v145 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v40 = [v140 traitCollection];
  v41 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v26 + 104))(v28, enum case for SystemImage.star(_:), v25);
  v42 = v39;
  v43 = [v41 configurationWithTraitCollection:v40];
  v44 = static SystemImage.load(_:with:)();

  v39 = v42;
  (*(v26 + 8))(v28, v25);
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];

  v45 = v133;
  v46 = v135;
  while (1)
  {
LABEL_38:
    v68 = v144;
LABEL_39:
    v83 = v125;
    Badge.type.getter();
    if (v137(v83, v68) == v39)
    {
      v84 = sub_10007F978();
      [v84 frame];
      CGRectGetWidth(v150);

      v85 = v140;
    }

    else
    {
      (*(v138 + 8))(v83, v68);
      if (v124 >= 4)
      {
        Badge.longCaption.getter();
        if (v86)
        {
          v85 = v140;
LABEL_45:
          if (qword_10096DE70 != -1)
          {
            swift_once();
          }

          sub_1000056A8(v136, qword_1009D0AD0);
          v88 = type metadata accessor for Feature();
          v148 = v88;
          v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
          v89 = sub_1000056E0(v147);
          (*(*(v88 - 8) + 104))(v89, enum case for Feature.measurement_with_labelplaceholder(_:), v88);
          isFeatureEnabled(_:)();
          sub_100007000(v147);
          static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

          v68 = v144;
          goto LABEL_48;
        }
      }

      Badge.caption.getter();
      v85 = v140;
      if (v87)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v143 + 104))(v142, enum case for BadgeCaptionCappingType.none(_:), v46);
    v90 = Badge.heading.getter();
    if (v91)
    {
      v92 = v46;
      v147[0] = v90;
      v147[1] = v91;
      v93 = v123;
      static Locale.storefront.getter();
      v94 = type metadata accessor for Locale();
      (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
      sub_10007FED4();
      StringProtocol.uppercased(with:)();
      sub_10002B894(v93, &qword_100972620);

      if (qword_10096DE78 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v136, qword_1009D0AE8);
      v95 = type metadata accessor for Feature();
      v148 = v95;
      v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
      v96 = sub_1000056E0(v147);
      (*(*(v95 - 8) + 104))(v96, enum case for Feature.measurement_with_labelplaceholder(_:), v95);
      isFeatureEnabled(_:)();
      sub_100007000(v147);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      v68 = v144;
      v46 = v92;
    }

    v97 = v131;
    if (qword_10096E6F8 != -1)
    {
      swift_once();
    }

    v98 = v139;
    v99 = sub_1000056A8(v139, qword_1009D2508);
    (*(v45 + 16))(v17, v99, v98);
    v24 = v46;
    (*(v143 + 16))(v127, v142, v46);
    BadgeViewRibbonLayout.Metrics.captionCappingType.setter();
    v100 = v126;
    Badge.type.getter();
    if (v137(v100, v68) == enum case for BadgeType.chartPosition(_:))
    {
      v101 = v129;
      *v129 = 0;
      v102 = v130;
      (*(v130 + 104))(v101, enum case for BadgeViewSpacing.spacing(_:), v97);
    }

    else
    {
      v102 = v130;
      v101 = v129;
      (*(v130 + 104))(v129, enum case for BadgeViewSpacing.standard(_:), v97);
      (*(v138 + 8))(v100, v68);
    }

    v103 = v134;
    (*(v102 + 32))(v128, v101, v97);
    BadgeViewRibbonLayout.Metrics.spacingType.setter();
    v46 = v24;
    if (v132)
    {
      goto LABEL_69;
    }

    v104 = [v85 traitCollection];
    v105 = UITraitCollection.prefersRightToLeftLayouts.getter();
    v106 = v105;
    if (!v103 && (v105 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v124, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v124 - 1 == v103) & v105) == 1)
    {
LABEL_62:
      v107 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v108 + 8) = 0;
      v107(v147, 0);
      v109 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v110 + 8) = 0;
      v109(v147, 0);
      v46 = v135;
    }

    if (!v103 && ((v106 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v124, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v56 = v136;
    v57 = sub_1000056A8(v136, qword_1009D0AA0);
    (*(v122 + 16))(v24, v57, v56);
    v58 = [v140 traitCollection];
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v58).super.isa;
    v60 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v60)
    {
      v61 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];

      v39 = v45;
      if (v61)
      {
        v62 = type metadata accessor for Feature();
        v148 = v62;
        v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
        v63 = sub_1000056E0(v147);
        (*(*(v62 - 8) + 104))(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v62);
        v64 = v61;
        isFeatureEnabled(_:)();
        sub_100007000(v147);
        v65 = v119;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_100292870(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
        v66 = v121;
        dispatch thunk of Measurable.measurements(fitting:in:)();

        (*(v120 + 8))(v65, v66);
        goto LABEL_26;
      }
    }

    else
    {

      v39 = v45;
    }

    v70 = type metadata accessor for Feature();
    v148 = v70;
    v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature);
    v71 = sub_1000056E0(v147);
    (*(*(v70 - 8) + 104))(v71, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
    isFeatureEnabled(_:)();
    sub_100007000(v147);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

LABEL_26:
    (*(v122 + 8))(v24, v136);
    v45 = v133;
  }

  if ((v124 - 1 != v103) | v106 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v111 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
  *(v112 + 24) = 0;
  v111(v147, 0);
  v113 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
  *(v114 + 24) = 0;
  v113(v147, 0);
LABEL_68:

LABEL_69:
  static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)();
  v116 = v115;
  (*(v45 + 8))(v17, v139);
  (*(v143 + 8))(v142, v46);
  return v116;
}

uint64_t sub_100292870(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002928B8(uint64_t a1, void *a2)
{
  v3._object = 0x80000001007FF2F0;
  v4._countAndFlagsBits = 0xD000000000000050;
  v4._object = 0x80000001007FF310;
  v3._countAndFlagsBits = 0xD000000000000017;
  localizedString(_:comment:)(v3, v4);
  v5 = String.count.getter();

  v6 = v5 < 19;
  v7 = sub_10029C454(v5 < 19);
  v8 = sub_10029C720(v6);
  [v7 size];
  [v8 size];

  sub_10029F56C(1, v6, 0, 2, a2);
}

void sub_100292A18()
{
  v1 = type metadata accessor for ArcadeState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore);
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  v16 = v13;
  v17 = String._bridgeToObjectiveC()();
  [v15 setObject:v16 forKey:v17];

  Date.init()();
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v34(v10, 0, 1, v18);
  sub_100294DAC(v10);
  ArcadeSubscriptionManager.subscriptionState.getter();
  v20 = ArcadeState.isSubscribed.getter();
  (*(v2 + 8))(v4, v1);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = [v11 ams_activeiTunesAccount];
  v22 = [v21 ams_DSID];

  v23 = [v14 standardUserDefaults];
  v24 = sub_100737930();

  if (v22)
  {
    if (v24)
    {
      sub_100005744(0, &qword_10097FB80);
      v25 = v22;
      v26 = static NSObject.== infix(_:_:)();

      v27 = v26 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v27 = 1;
  }

  else
  {
    if (v24)
    {
      v27 = 1;
      goto LABEL_7;
    }

    v27 = 0;
  }

LABEL_10:
  v28 = [v14 standardUserDefaults];
  v29 = v35;
  sub_100737A28(v35);

  LODWORD(v28) = (*(v19 + 48))(v29, 1, v18);
  sub_10002B894(v29, &qword_100979710);
  if (v28 == 1 || (v27 & 1) != 0)
  {
    v30 = v22;
    v31 = [v14 standardUserDefaults];
    v32 = v30;
    v33 = String._bridgeToObjectiveC()();
    [v31 setObject:v32 forKey:v33];

    Date.init()();
    v34(v10, 0, 1, v18);
    sub_100294F8C(v10);
  }
}

uint64_t sub_100292E88()
{
  v1 = sub_10002849C(&qword_100979710);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];

  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100295174(v4);
}

uint64_t sub_100293000()
{
  v1 = sub_10002849C(&qword_100979710);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];

  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100294B5C(v4);
}

void sub_100293178(uint64_t a1)
{
  v2 = type metadata accessor for FamilyCircleLookupResult();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v11[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = v8;
    }
  }

  else if (v7 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = *v6;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v13[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v14[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = v12;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10029340C()
{
  if (qword_10096D020 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CDEE8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10002B894(v4, &unk_1009711D0);
  Logger.error(_:)();
}

uint64_t sub_1002935D8(uint64_t a1, void *a2)
{
  v5 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_100294D3C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100979710);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_100005744(0, &qword_100978360);
  if (static NSObject.== infix(_:_:)())
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_100293898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = type metadata accessor for ArcadeState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x8000000100801460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    ArcadeSubscriptionManager.subscriptionState.getter();
    v14 = ArcadeState.isSubscribed.getter();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x8000000100801480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    ArcadeSubscriptionManager.subscriptionState.getter();
    v14 = ArcadeState.isTrialAvailable.getter();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100804BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100804B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000014 && 0x8000000100804B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x8000000100804B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_100737580(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_100737488();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000100804B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_10073732C(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_100737234();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x8000000100804AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_1007377D4(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_1007376DC();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000100804AC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_100737A28(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_100737930();
LABEL_36:
    v24 = v23;

    v25 = sub_1002935D8(v9, v24);
    v27 = v26;

    sub_10002B894(v9, &qword_100979710);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x8000000100804A80 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v46 = sub_100295354();
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_1007377D4(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_1007376DC();

  v38 = COERCE_DOUBLE(sub_1002935D8(v9, v37));
  LOBYTE(v36) = v39;

  sub_10002B894(v9, &qword_100979710);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_100737A28(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_100737930(), v41, v43 = COERCE_DOUBLE(sub_1002935D8(v9, v42)), v45 = v44, v42, sub_10002B894(v9, &qword_100979710), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_1002941D8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10029516C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BBFA0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100294470()
{
  v0 = type metadata accessor for FamilyCircleLookupTask();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    FamilyCircleLookupTask.init()();
    FamilyCircleLookupTask.perform()();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = sub_100005744(0, &qword_1009729E0);
    v7 = static OS_dispatch_queue.main.getter();
    v8[3] = v6;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = v7;
    Promise.then(perform:orCatchError:on:)();

    (*(v1 + 8))(v3, v0);
    sub_100007000(v8);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate()
{
  result = qword_10097D7C0;
  if (!qword_10097D7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100294ACC()
{
  result = type metadata accessor for MetricsPipeline();
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

uint64_t sub_100294B5C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710);
  return sub_10002B894(v7, &qword_100979710);
}

uint64_t sub_100294D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294DAC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710);
  return sub_10002B894(v7, &qword_100979710);
}

uint64_t sub_100294F8C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710);
  return sub_10002B894(v7, &qword_100979710);
}

uint64_t sub_100295174(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710);
  return sub_10002B894(v7, &qword_100979710);
}

uint64_t sub_100295354()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v2 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithPropertyName:v3 bundleID:v4];

  v12[0] = 0;
  v6 = [v5 fetchEligibilityWithError:v12];
  if (v12[0])
  {
    v7 = qword_10096D020;
    v8 = v12[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CDEE8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v12[3] = sub_100005744(0, &qword_10097D7D8);
    v12[0] = v8;
    v10 = v8;
    static LogMessage.safe(_:)();
    sub_10002B894(v12, &unk_1009711D0);
    Logger.error(_:)();
  }

  if (v6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 != 1);
  }
}

id sub_100295658(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = type metadata accessor for WordmarkView.Alignment();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontSource();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for StaticDimension();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Wordmark();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10029BA08(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &qword_100975F00);
    v20 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v2[v20];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v22 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v23 = *&v2[v22];
    if (v23 || ((*(v17 + 56))(v12, 1, 1, v16), v38 = UIFontTextStyleFootnote, *v7 = UIFontTextStyleFootnote, v24 = v39, (*(v39 + 104))(v7, enum case for FontSource.textStyle(_:), v5), v47 = v5, v48 = &protocol witness table for FontSource, v25 = sub_1000056E0(v46), (*(v24 + 16))(v25, v7, v5), v26 = v38, StaticDimension.init(_:scaledLike:)(), (*(v24 + 8))(v7, v5), (*(v40 + 104))(v44, enum case for WordmarkView.Alignment.center(_:), v42), v27 = v43, v47 = v43, v48 = &protocol witness table for StaticDimension, v28 = sub_1000056E0(v46), v29 = v41, (*(v41 + 16))(v28, v9, v27), v30 = objc_allocWithZone(type metadata accessor for WordmarkView()), v31 = v2, v32 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)(), (*(v29 + 8))(v9, v27), v33 = v32, v2 = v31, sub_100298460(v33), (v23 = *&v31[v22]) != 0))
    {
      [v23 setTintColor:v45];
      v34 = *&v2[v22];
      if (v34)
      {
        [v34 setHidden:0];
      }
    }

    swift_beginAccess();
    v35 = *&v2[v22];
    if (v35)
    {
      swift_endAccess();
      v36 = v35;
      v37 = [v2 traitCollection];
      WordmarkView.show(wordmark:with:)();

      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100295C14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ComponentDecoration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_10097D8E0, &type metadata accessor for ComponentDecoration), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_10097D8E8, &type metadata accessor for ComponentDecoration);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100295E2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100972718, &type metadata accessor for Shelf.ContentType), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_100972720, &type metadata accessor for Shelf.ContentType);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100296044(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100005744(0, &qword_100981660), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10029615C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageFacets.Facet.Option();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100296374(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1002964C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100970D38, &type metadata accessor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_10098B750, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

double sub_1002966E0()
{
  v1 = type metadata accessor for AppShowcaseType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShowcaseLockupViewLayout();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  v11 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties];

  v40 = v7;
  sub_100298E8C(v4, v11, v0, v7);

  (*(v2 + 8))(v4, v1);
  v12 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView];
  v68 = type metadata accessor for ArtworkView();
  v69 = &protocol witness table for UIView;
  v39 = v12;
  v67 = v12;
  v13 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v14 = *&v0[v13];
  if (v14)
  {
    v15 = type metadata accessor for WordmarkView();
    v16 = &protocol witness table for UIView;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v63 = 0;
    v64 = 0;
  }

  v62 = v14;
  v65 = v15;
  v66 = v16;
  v38 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v17 = v38;
  v18 = type metadata accessor for DynamicTypeLabel();
  v60 = v18;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v17;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  v57 = v18;
  v56 = v19;
  v20 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton];
  v54 = type metadata accessor for OfferButton();
  v55 = &protocol witness table for UIView;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel];
  v52 = &protocol witness table for UILabel;
  v53 = v20;
  v51 = v18;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v48 = v18;
  v46 = &protocol witness table for UILabel;
  v47 = v22;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v45 = v18;
  v44 = v23;
  v24 = v39;
  v25 = v14;
  v26 = v38;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v41;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  sub_10029BD90(&qword_10097D8F0, &type metadata accessor for AppShowcaseLockupViewLayout);
  v33 = v43;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v35 = v34;
  (*(v42 + 8))(v32, v33);
  return v35;
}

double sub_100296ADC(uint64_t a1, void *a2)
{
  v140 = a2;
  v3 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppShowcaseLockupViewLayout();
  v127 = *(v5 - 8);
  v128 = v5;
  __chkstk_darwin(v5);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OfferLabelStyle();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v108 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v107 - v10;
  v11 = type metadata accessor for OfferButtonMetrics();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v107 - v14;
  v136 = type metadata accessor for FontUseCase();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for LabelPlaceholderCompatibility();
  v16 = *(v141 - 8);
  __chkstk_darwin(v141);
  v121 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v107 - v19;
  __chkstk_darwin(v20);
  v130 = &v107 - v21;
  v22 = type metadata accessor for AppShowcaseType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v124 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v107 - v26;
  __chkstk_darwin(v27);
  v117 = &v107 - v28;
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  __chkstk_darwin(v35);
  v37 = &v107 - v36;
  __chkstk_darwin(v38);
  v40 = &v107 - v39;
  v143 = a1;
  AppShowcase.type.getter();
  v115 = *(v23 + 32);
  v116 = v23 + 32;
  v115(v37, v40, v22);
  v144 = v23;
  v42 = v23 + 88;
  v41 = *(v23 + 88);
  v43 = v41(v37, v22);
  v135 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:) || v43 == enum case for AppShowcaseType.small(_:))
  {
    v44 = v16;
  }

  else
  {
    v44 = v16;
    if (v43 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v144 + 8))(v37, v22);
    }
  }

  v45 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v123 = LayoutViewPlaceholder.init(representing:)();
  v142 = v22;
  AppShowcase.lockup.getter();
  v122 = Lockup.title.getter();
  v113 = v46;

  v47 = v142;
  AppShowcase.type.getter();
  (*(v144 + 16))(v31, v34, v47);
  v48 = v41(v31, v47);
  v49 = v136;
  v114 = v41;
  v112 = v42;
  if (v48 == v135)
  {
    v50 = v134;
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D1628;
LABEL_18:
    v56 = sub_1000056A8(v49, v51);
    v55 = v133;
    (*(v133 + 16))(v50, v56, v49);
    v129 = *(v144 + 8);
    v129(v34, v47);
    goto LABEL_19;
  }

  v50 = v134;
  if (v48 == enum case for AppShowcaseType.small(_:) || v48 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D1640;
    goto LABEL_18;
  }

  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v52 = sub_1000056A8(v49, qword_1009D1640);
  v53 = v133;
  (*(v133 + 16))(v50, v52, v49);
  v54 = *(v144 + 8);
  v54(v34, v47);
  v129 = v54;
  v54(v31, v47);
  v50 = v134;
  v55 = v53;
LABEL_19:
  v57 = sub_100005744(0, &qword_1009730E0);
  v58 = v140;
  v59 = [v140 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v55 + 8))(v50, v49);
  v60 = type metadata accessor for Feature();
  v158[3] = v60;
  v134 = sub_10029BD90(&qword_100972E50, &type metadata accessor for Feature);
  v158[4] = v134;
  v61 = sub_1000056E0(v158);
  v62 = *(v60 - 8);
  v63 = *(v62 + 104);
  LODWORD(v133) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v131 = v62 + 104;
  v132 = v63;
  v63(v61);
  isFeatureEnabled(_:)();
  sub_100007000(v158);
  v64 = v130;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v65 = *(v44 + 8);
  v122 = v44 + 8;
  v130 = v65;
  (v65)(v64, v141);
  v111 = AppShowcase.descriptionText.getter();
  v66 = v49;
  if (qword_10096E240 != -1)
  {
    swift_once();
    v66 = v49;
  }

  sub_1000056A8(v66, qword_1009D1640);
  v67 = [v58 traitCollection];
  v113 = v57;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v68 = v117;
  AppShowcase.type.getter();
  v69 = v118;
  v70 = v68;
  v71 = v142;
  v115(v118, v70, v142);
  v72 = v114(v69, v71);
  if (v72 == v135 || v72 == enum case for AppShowcaseType.small(_:))
  {
    v73 = v140;
  }

  else
  {
    v73 = v140;
    if (v72 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v69, v71);
    }
  }

  v157[3] = v60;
  v157[4] = v134;
  v74 = sub_1000056E0(v157);
  v132(v74, v133, v60);
  isFeatureEnabled(_:)();
  sub_100007000(v157);
  v75 = v119;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v130)(v75, v141);
  v76 = [v73 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v77 = v136;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v78 = qword_100991010;
  }

  else
  {
    v77 = v136;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v78 = qword_100991028;
  }

  v79 = v139;
  v80 = sub_1000056A8(v139, v78);
  v81 = v138;
  v82 = v120;
  (*(v138 + 16))(v120, v80, v79);

  (*(v81 + 32))(v137, v82, v79);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  swift_allocObject();
  v140 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v77, qword_1009D0710);
  v83 = [v73 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v155 = v60;
  v156 = v134;
  v84 = sub_1000056E0(v154);
  v132(v84, v133, v60);
  isFeatureEnabled(_:)();
  sub_100007000(v154);
  v85 = v121;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v130)(v85, v141);
  v86 = v143;
  AppShowcase.lockup.getter();
  v87 = Lockup.offerDisplayProperties.getter();

  if (v87)
  {
    v141 = v45;
    v88 = v73;
    v89 = v107;
    OfferDisplayProperties.offerLabelStyle.getter();
    v90 = v108;
    v91 = v109;
    v92 = v110;
    (*(v109 + 104))(v108, enum case for OfferLabelStyle.preorder(_:), v110);
    v93 = static OfferLabelStyle.== infix(_:_:)();
    v94 = *(v91 + 8);
    v94(v90, v92);
    v94(v89, v92);
    if (v93)
    {
      sub_10002A400(v154, v155);
      v86 = v143;
      dispatch thunk of LayoutView.isHidden.setter();

      v73 = v88;
      v45 = v141;
      goto LABEL_40;
    }

    v73 = v88;
    v45 = v141;
  }

  sub_10002A400(v154, v155);
  dispatch thunk of LayoutView.isHidden.setter();
LABEL_40:
  v95 = sub_10029BA78(v86);
  v96 = v142;
  if (v95)
  {
    swift_allocObject();
    v97 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v97 = 0;
  }

  v98 = v124;
  AppShowcase.type.getter();
  AppShowcase.lockup.getter();
  v99 = Lockup.offerDisplayProperties.getter();

  sub_100298E8C(v98, v99, v73, v125);

  v129(v98, v96);
  v153[14] = &protocol witness table for LayoutViewPlaceholder;
  v153[13] = v45;
  v153[10] = v123;
  if (v97)
  {
    v100 = &protocol witness table for LayoutViewPlaceholder;
    v101 = v45;
  }

  else
  {
    v101 = 0;
    v100 = 0;
    v153[7] = 0;
    v153[6] = 0;
  }

  v153[5] = v97;
  v153[8] = v101;
  v153[9] = v100;
  sub_10002C0AC(v158, v153);
  sub_10002C0AC(v157, &v152);
  v151[8] = v45;
  v151[9] = &protocol witness table for LayoutViewPlaceholder;
  v151[5] = v140;
  sub_10002C0AC(v154, v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v102 = v126;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  sub_10029BD90(&qword_10097D8F0, &type metadata accessor for AppShowcaseLockupViewLayout);
  v103 = v128;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v105 = v104;

  (*(v127 + 8))(v102, v103);
  (*(v138 + 8))(v137, v139);
  sub_100007000(v157);
  sub_100007000(v158);
  sub_100007000(v154);
  return v105;
}

char *sub_100297BD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  type metadata accessor for ArtworkView();
  *&v4[v17] = static ArtworkView.iconArtworkView.getter();
  *&v4[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  v73 = type metadata accessor for DynamicTypeLabel();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1640);
  v21 = *(v19 - 8);
  v70 = *(v21 + 16);
  v70(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v72 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v71 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v73);
  *&v5[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v69 = v10;
  v28 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1000F5284(0);
  v30 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v19, qword_1009D0710);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = &v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v19, qword_1009D1670);
  v70(v16, v36, v19);
  v37 = v72;
  v72(v16, 0, 1, v19);
  v66[2] = v22;
  v38 = v69;
  v39 = v71;
  v71(v13, v35, v69);
  v40 = v73;
  v41 = objc_allocWithZone(v73);
  v66[1] = v34;
  *&v5[v67] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v70 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = type metadata accessor for AppShowcaseType();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  sub_100005744(0, &qword_100970180);
  v54 = v53;
  v55 = static UIColor.secondaryText.getter();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_100298460(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_10029850C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = type metadata accessor for AppShowcaseType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v36 = sub_1000056A8(v35, qword_1009D1628);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v39 = sub_1000056A8(v35, qword_1009D1640);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v38 = sub_1000056A8(v35, qword_1009D1640);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  type metadata accessor for FontUseCase();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_10096E258 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D1688;
LABEL_33:
    v52 = sub_1000056A8(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D1640;
    goto LABEL_33;
  }

  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v51 = sub_1000056A8(v35, qword_1009D1640);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  return [v69 setNeedsLayout];
}

uint64_t sub_100298E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = type metadata accessor for FontSource();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = type metadata accessor for OfferButtonSubtitlePosition();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10002849C(&unk_1009701A0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = type metadata accessor for OfferButtonMetrics();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = type metadata accessor for AppShowcaseType();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v121 = v27;
  if (v41)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v42 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v42 = qword_100991028;
  }

  v43 = v124;
  v44 = sub_1000056A8(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_10029BD90(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);

    AccessibilityConditional.init(value:axValue:)();
    OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_1000056E0(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_1000056E0(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    StaticDimension.init(_:scaledLike:)();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for FontUseCase();
    v120 = sub_1000056A8(v62, qword_1009D1628);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_1000056E0(&v137);
    v59(v67, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_1000056E0(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v68(v16, v14);
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_1000056A8(v118, qword_1009D1640);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_1000056E0(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_1000056E0(&v134);
    v76(v79, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    if (qword_10096E248 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_1000056A8(v118, qword_1009D1658);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_1000056E0(&v134);
    v76(v82, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_1000056E0(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    if (qword_10096E250 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_1000056A8(v118, qword_1009D1670);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_1000056E0(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_1000056E0(&v128);
    v89(v92, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90(v16, v14);
    if (qword_10096E258 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_1000056A8(v118, qword_1009D1688);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_1000056E0(v127);
    v89(v95, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90(v16, v14);
    AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_10029A15C(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_10029A15C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v50);
  v59 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v47 - v7;
  __chkstk_darwin(v8);
  v57 = v47 - v9;
  __chkstk_darwin(v10);
  v56 = v47 - v11;
  __chkstk_darwin(v12);
  v55 = v47 - v13;
  v14 = type metadata accessor for AppShowcaseType();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for AppShowcaseType.smallAlignedLeft(_:), v14, v16);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v78[0] == v75[0] && v78[1] == v75[1])
  {
    v49 = 1;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v15 + 8))(v18, v14);

  v54 = type metadata accessor for ZeroDimension();
  v78[3] = v54;
  v78[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v78);
  static ZeroDimension.zero.getter();
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1640);
  v21 = *(v19 - 8);
  v22 = *(v21 + 16);
  v61 = v21 + 16;
  v62 = v19;
  v22(v4, v20, v19);
  v60 = enum case for FontSource.useCase(_:);
  v52 = v2[13];
  v52(v4);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v75);
  v24 = v2 + 2;
  v65 = v2[2];
  v65(v23, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v64 = v2[1];
  v64(v4, v1);
  v76 = v54;
  v77 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v75);
  static ZeroDimension.zero.getter();
  v22(v4, v20, v19);
  v25 = v60;
  v26 = v52;
  (v52)(v4, v60, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v72);
  v65(v27, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v64(v4, v1);
  v48 = v20;
  v63 = v22;
  v22(v4, v20, v62);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v72);
  v65(v28, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v53 = v2 + 1;
  v64(v4, v1);
  if (qword_10096E248 != -1)
  {
    swift_once();
  }

  v29 = v62;
  v30 = sub_1000056A8(v62, qword_1009D1658);
  v63(v4, v30, v29);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v72);
  v32 = v65;
  v65(v31, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v33 = v64;
  v64(v4, v1);
  *v4 = UIFontTextStyleBody;
  v26(v4, enum case for FontSource.textStyle(_:), v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v72);
  v32(v34, v4, v1);
  v35 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v33(v4, v1);
  v47[1] = v24;
  v36 = v60;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v37 = v62;
  v38 = sub_1000056A8(v62, qword_1009D1670);
  v63(v4, v38, v37);
  v39 = v36;
  v40 = v52;
  (v52)(v4, v39, v1);
  v41 = v50;
  v73 = v50;
  v74 = &protocol witness table for StaticDimension;
  sub_1000056E0(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v42 = sub_1000056E0(v69);
  v43 = v65;
  v65(v42, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v44 = v64;
  v64(v4, v1);
  v63(v4, v48, v37);
  (v40)(v4, v60, v1);
  v70 = v41;
  v71 = &protocol witness table for StaticDimension;
  sub_1000056E0(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v66);
  v43(v45, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v44(v4, v1);
  v67 = v54;
  v68 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v66);
  static ZeroDimension.zero.getter();
  return AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)();
}