void sub_235010(void *a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor);
  *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_headlineColor) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v8 = a1;
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication21FeaturedRadioShowCell_textComponents);
    v10 = v2;
    sub_234E6C(v2, v9);

    v7 = v4;
    goto LABEL_8;
  }

  sub_13C80(0, qword_DFAAC0);
  v5 = v2;
  v11 = v4;
  v6 = sub_ABA790();

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v2 = *(v1 + v3);
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_235110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v2 == 1)
    {
      sub_13C80(0, &qword_DFA720);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

LABEL_8:
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_ABB3C0();
}

void sub_2351D4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) setEditable:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled)];
  [*(v0 + v1) setSelectable:*(v0 + v2)];
  v3 = *(v0 + v2);
  v4 = [*(v0 + v1) textContainer];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 setLineBreakMode:0];

    v6 = [*(v0 + v1) textContainer];
    [v6 setMaximumNumberOfLines:0];
  }

  else
  {
    [v4 setLineBreakMode:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode)];

    v6 = [*(v0 + v1) textContainer];
    [v6 setMaximumNumberOfLines:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines)];
  }

  [*(v0 + v1) setScrollEnabled:*(v0 + v2)];

  sub_236500();
}

void sub_235318()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v3 = [*&v0[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView] layoutManager];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v20[4] = sub_2373A4;
  v20[5] = v4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_3F29C4;
  v20[3] = &block_descriptor_80;
  v5 = _Block_copy(v20);
  v6 = v0;

  [v3 enumerateLineFragmentsForGlyphRange:0 usingBlock:{0x7FFFFFFFFFFFFFFFLL, v5}];
  _Block_release(v5);

  swift_beginAccess();
  if (*(v1 + 16))
  {
    goto LABEL_5;
  }

  v7 = [*&v0[v2] layoutManager];
  v8 = [*&v0[v2] textContainer];
  v9 = [v7 glyphRangeForTextContainer:v8];
  v11 = v10;

  v12 = [*&v0[v2] layoutManager];
  v13 = [v12 characterRangeForGlyphRange:v9 actualGlyphRange:{v11, 0}];
  v15 = v14;

  if (__OFADD__(v13, v15))
  {
    __break(1u);
  }

  else
  {
    v16 = *&v0[v2];
    v17 = [v16 text];
    if (v17)
    {
      v18 = v17;
      sub_AB92A0();

      v19 = sub_AB9500();

      *(v1 + 16) = v13 + v15 < v19;
LABEL_5:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_23558C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v9 = [*(a5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
  v10 = [v9 truncatedGlyphRangeInLineFragmentForGlyphAtIndex:a2];

  result = sub_AB2A10();
  if (v10 != result)
  {
    result = swift_beginAccess();
    *(a6 + 16) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_23562C()
{
  v1 = v0;
  v2 = sub_AB2E70();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB2F20();
  v50 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = sub_AB2F50();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_236884();
  v16 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v15 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16) != 2)
    {

      return 0;
    }

    v44 = v5;
    v45 = v15;

    sub_AB2F40();
    v21 = [objc_opt_self() defaultParagraphStyle];
    [v21 mutableCopy];
    sub_ABAB50();
    sub_13C80(0, &unk_E05360);
    swift_dynamicCast();
    v22 = v51;

    swift_unknownObjectRelease();
    v23 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
    if (v23 != 255)
    {
      v24 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
      if ((v23 & 1) == 0)
      {
        v25 = [objc_opt_self() defaultMetrics];
        [v25 scaledValueForValue:v24];
        v24 = v26;
      }

      [v22 setMinimumLineHeight:v24];
      [v22 setMaximumLineHeight:v24];
    }

    [v22 setAlignment:*(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment)];
    v52 = v22;
    sub_B4908();
    v43 = v22;
    sub_AB2F70();
    v52 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
    v27 = v52;
    sub_B4860();
    v28 = v27;
    sub_AB2F70();
    v52 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor);
    v29 = v52;
    sub_B48B4();
    v30 = v29;
    sub_AB2F70();
    v31 = v45;
    v52 = v16;
    v53 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750);
    swift_allocObject();
    sub_23732C(v16, v31, 2);
    sub_AB3890();
    sub_AB3880();

    v33 = v48;
    v32 = v49;
    (*(v48 + 104))(v4, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v49);
    sub_AB2E40();
    (*(v33 + 8))(v4, v32);
    sub_13C80(0, &unk_DECB20);
    v34 = v50;
    v35 = v44;
    (*(v50 + 16))(v8, v10, v44);
    v20 = sub_ABA1C0();

    (*(v34 + 8))(v10, v35);
    (*(v46 + 8))(v13, v47);
    v36 = v16;
    v37 = v31;
    v38 = 2;
    goto LABEL_11;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
  {
    v39 = objc_allocWithZone(NSMutableAttributedString);
    sub_23732C(v16, v15, 1);
    v20 = [v39 initWithAttributedString:v16];
    sub_3E856C(v14);
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    [v20 addAttributes:isa range:{0, objc_msgSend(v16, "length")}];

    v36 = v16;
    v37 = v15;
    v38 = 1;
LABEL_11:
    sub_2372F0(v36, v37, v38);

    return v20;
  }

  sub_23732C(*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), 0);
  sub_3E856C(v14);
  v17 = objc_allocWithZone(NSAttributedString);
  v18 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  v19 = sub_AB8FD0().super.isa;

  v20 = [v17 initWithString:v18 attributes:v19];

  sub_2372F0(v16, v15, 0);

  return v20;
}

char *sub_235CE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  *&v4[v9] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor;
  v11 = objc_opt_self();
  *&v4[v10] = [v11 labelColor];
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode] = 4;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight];
  *v12 = 0;
  v12[8] = -1;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment] = 4;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor;
  *&v4[v14] = [v11 placeholderTextColor];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate];
  v15[1] = 0u;
  v15[2] = 0u;
  *v15 = 0u;
  v16 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide;
  *&v4[v16] = [objc_allocWithZone(UILayoutGuide) init];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -1;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideFirst] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideLast] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  *&v4[v18] = sub_236BB4();
  v40.receiver = v4;
  v40.super_class = type metadata accessor for TextViewLabel();
  v19 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v21 = *&v19[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
  v22 = v19;
  [v21 setDelegate:v22];
  v23 = *&v19[v20];
  v24 = v22;
  [v24 addSubview:v23];
  [v24 addLayoutGuide:*&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide]];
  v25 = [*&v19[v20] layoutManager];
  [v25 setDelegate:v24];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_B036F0;
  v27 = [*&v19[v20] leftAnchor];
  v28 = [v24 leftAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v26 + 32) = v29;
  v30 = [*&v19[v20] topAnchor];
  v31 = [v24 topAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v26 + 40) = v32;
  v33 = [*&v19[v20] bottomAnchor];
  v34 = [v24 bottomAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v26 + 48) = v35;
  v36 = [*&v19[v20] rightAnchor];
  v37 = [v24 rightAnchor];

  v38 = [v36 constraintEqualToAnchor:v37];
  *(v26 + 56) = v38;
  *(v26 + 64) = sub_236AC4();
  *(v26 + 72) = sub_236AD8();
  Array<A>.activate()(v26);

  return v24;
}

id sub_2361D8()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) != 1)
  {
    return [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) intrinsicContentSize];
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v1 == 255)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) lineHeight];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v1 & 1) == 0)
    {
      v3 = [objc_opt_self() defaultMetrics];
      [v3 scaledValueForValue:v2];
    }
  }

  return [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) leading];
}

void sub_236300()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v1 == 255)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) sizeThatFits:?];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v1 & 1) == 0)
    {
      v3 = [objc_opt_self() defaultMetrics];
      [v3 scaledValueForValue:v2];
    }

    v4 = [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
    v5 = [v4 numberOfGlyphs];
    v9 = 0;
    v10 = 0;
    if (v5 < 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      do
      {
        [v4 lineFragmentRectForGlyphAtIndex:v8 effectiveRange:&v9];
        if (__OFADD__(v7, 1))
        {
          __break(1u);
        }

        v8 = v10 + v9;
        ++v7;
      }

      while (v10 + v9 < v6);
    }
  }
}

void sub_236500()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) == 1)
  {

    v2 = v0;
    v3 = sub_236884();
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor);
    v5 = NSForegroundColorAttributeName;
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_91C1C(v6, v5, isUniquelyReferenced_nonNull_native);

    v8 = v3;
    v9 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);
    sub_3E856C(v8);
    v10 = objc_allocWithZone(NSAttributedString);
    v11 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    v13 = [v10 initWithString:v11 attributes:isa];

    [v9 setAttributedPlaceholder:v13];
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);

    [v1 setAttributedPlaceholder:0];
  }
}

void sub_2366F4()
{
  v1 = sub_23562C();
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView);
  if (v1)
  {
    [v3 setAttributedText:v1];
    v4 = *(v0 + v2);
    v5 = sub_236884();
    sub_3E856C(v5);
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    [v4 setTypingAttributes:isa];

    v7 = sub_236AC4();
    v8 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font) lineHeight];
    v10 = v9;
    [*(v0 + v8) descender];
    [v7 setConstant:v10 + v11];

    v12 = sub_236AD8();
    [*(v0 + v8) descender];
    [v12 setConstant:?];
  }

  else
  {
    v1 = v3;
    v12 = sub_AB9260();
    [v1 setText:?];
  }
}

unint64_t sub_236884()
{
  v1 = [objc_opt_self() defaultParagraphStyle];
  [v1 mutableCopy];
  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();

  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight + 8);
  if (v2 != 255)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight);
    if ((v2 & 1) == 0)
    {
      v4 = [objc_opt_self() defaultMetrics];
      [v4 scaledValueForValue:v3];
      v3 = v5;
    }

    [v17 setMinimumLineHeight:v3];
    [v17 setMaximumLineHeight:v3];
  }

  [v17 setAlignment:*(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA730);
  inited = swift_initStackObject();
  *(inited + 32) = NSParagraphStyleAttributeName;
  *(inited + 16) = xmmword_AF8820;
  *(inited + 40) = v17;
  *(inited + 48) = NSFontAttributeName;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
  *(inited + 56) = v7;
  *(inited + 64) = NSForegroundColorAttributeName;
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor);
  *(inited + 72) = v8;
  v9 = NSParagraphStyleAttributeName;
  v10 = v17;
  v11 = NSFontAttributeName;
  v12 = v7;
  v13 = NSForegroundColorAttributeName;
  v14 = v8;
  v15 = sub_96A34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC590);
  swift_arrayDestroy();

  return v15;
}

id sub_236AEC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = [*&v2[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide] *a2];
    v8 = [v2 *a2];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = *&v2[v3];
    *&v2[v3] = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_236BB4()
{
  v0 = [objc_allocWithZone(UITextView) init];
  [v0 setEditable:0];
  [v0 setScrollEnabled:0];
  v1 = v0;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v1 setAdjustsFontForContentSizeCategory:1];
  v2 = [v1 textContainer];
  [v2 setLineFragmentPadding:0.0];

  v3 = [v1 textContainer];
  [v3 setLineBreakMode:4];

  v4 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v4];

  [v1 _setWantsContentAwareTypesettingLanguage:1];
  return v1;
}

id sub_236DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextViewLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_236FA4(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;

    v7 = v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
    v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
    *v7 = v4;
    *(v7 + 8) = v6;
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;
    sub_2372F0(v8, v9, v10);
    v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate);
    if (v11)
    {

      v11(v1);

      sub_17654(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication13TextViewLabelCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for TextViewLabel.LineHeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TextViewLabel.LineHeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_2372F0(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_237304(a1, a2, a3);
  }
}

void sub_237304(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

id sub_23732C(id result, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_237364()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2373C4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  *(v0 + v1) = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textColor;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 labelColor];
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineBreakMode) = 4;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_maximumNumberOfLines) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_lineHeight;
  *v4 = 0;
  *(v4 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textAlignment) = 4;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderText);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_placeholderTextColor;
  *(v0 + v6) = [v3 placeholderTextColor];
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_delegate);
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  v8 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_baselinesLayoutGuide;
  *(v0 + v8) = [objc_allocWithZone(UILayoutGuide) init];
  v9 = v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = -1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideFirst) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel____lazy_storage___baselinesLayoutGuideLast) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView;
  *(v0 + v10) = sub_236BB4();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_237598(uint64_t a1, uint64_t a2, void *a3)
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
    sub_13C80(0, &unk_E05340);
    **(*(v4 + 64) + 40) = sub_AB9760();

    return swift_continuation_throwingResume();
  }
}

void *sub_23768C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237764()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71320);
  __swift_project_value_buffer(v0, qword_E71320);
  return static Logger.music(_:)();
}

uint64_t sub_2377C8(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = sub_AB2A90();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = sub_AB31C0();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_2378FC, 0, 0);
}

uint64_t sub_2378FC()
{
  v1 = v0[33];
  v2 = sub_AB9260();
  v3 = [v1 urlForBagKey:v2];

  if (v3)
  {
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[37];
    v7 = v0[38];
    v8 = v0[32];
    sub_AB3150();

    (*(v7 + 32))(v4, v5, v6);
    v9 = UIImageJPEGRepresentation(v8, 0.8);
    if (v9)
    {
      v10 = v9;
      v11 = sub_AB3260();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v0[42] = v11;
    v0[43] = v13;
    (*(v0[38] + 16))(v0[39], v0[41], v0[37]);
    sub_AB2A50();
    sub_AB2A20();
    v34.value._countAndFlagsBits = 0x706A2F6567616D69;
    v36._countAndFlagsBits = 0x2D746E65746E6F43;
    v36._object = 0xEC00000065707954;
    v34.value._object = 0xEA00000000006765;
    sub_AB2A80(v34, v36);
    v17 = [objc_allocWithZone(NSUUID) init];
    v18 = [v17 UUIDString];
    if (v18)
    {
      v19 = v18;

      v20 = sub_AB9260();
      v21 = [v19 stringByAppendingPathExtension:v20];

      if (v21)
      {
        v22 = sub_AB92A0();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v0[44] = v24;
      v37._countAndFlagsBits = 0xD000000000000013;
      v37._object = 0x8000000000B52A20;
      v35.value._countAndFlagsBits = v22;
      v35.value._object = v24;
      sub_AB2A80(v35, v37);
      sub_9007C(v11, v13);
      sub_AB2A70();
      sub_13C80(0, &unk_DF2B00);
      v25 = static ICUserIdentity.active.getter();
      v26 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v25];
      v0[45] = v26;

      v27 = objc_allocWithZone(ICStoreURLRequest);
      v28 = v26;
      v29 = sub_AB2A30();
      v30 = [v27 initWithURLRequest:v29 requestContext:v28];
      v0[46] = v30;

      sub_13C80(0, &qword_E07CC0);
      v31 = static ICURLSessionManager.musicSession.getter();
      v0[47] = v31;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_237DC0;
      v32 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_23B884;
      v0[13] = &block_descriptor_9_2;
      v0[14] = v32;
      [v31 enqueueUploadRequest:v30 withCompletionHandler:v0 + 10];
      v18 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v18);
  }

  else
  {
    sub_23B6C0();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x8000000000B52A00;
    *(v14 + 16) = 1;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_237DC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_238200;
  }

  else
  {
    v2 = sub_237ED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_237ED0()
{
  v1 = *(v0 + 248);

  v32 = v1;
  v2 = [v1 parsedBodyDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB8FF0();

    *(v0 + 216) = 0x6E656B6F74;
    *(v0 + 224) = 0xE500000000000000;
    sub_ABAD10();
    if (*(v4 + 16) && (v5 = sub_2EC004(v0 + 144), (v6 & 1) != 0))
    {
      sub_808B0(*(v4 + 56) + 32 * v5, v0 + 184);
      sub_8085C(v0 + 144);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 368);
        v7 = *(v0 + 344);
        v9 = *(v0 + 328);
        v8 = *(v0 + 336);
        v11 = *(v0 + 296);
        v10 = *(v0 + 304);
        v12 = *(v0 + 280);
        v13 = *(v0 + 288);
        v14 = *(v0 + 272);

        sub_466A4(v8, v7);
        (*(v12 + 8))(v13, v14);
        (*(v10 + 8))(v9, v11);
        v15 = *(v0 + 232);
        v16 = *(v0 + 240);

        v17 = *(v0 + 8);

        return v17(v15, v16);
      }
    }

    else
    {
      sub_8085C(v0 + 144);
    }
  }

  v19 = *(v0 + 360);
  v20 = *(v0 + 344);
  v31 = *(v0 + 368);
  v21 = *(v0 + 336);
  v22 = *(v0 + 304);
  v29 = *(v0 + 296);
  v30 = *(v0 + 328);
  v23 = *(v0 + 280);
  v24 = *(v0 + 288);
  v25 = *(v0 + 272);
  sub_23B6C0();
  swift_allocError();
  *v26 = xmmword_AF8620;
  *(v26 + 16) = 2;
  swift_willThrow();

  sub_466A4(v21, v20);
  (*(v23 + 8))(v24, v25);
  (*(v22 + 8))(v30, v29);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_238200()
{
  v1 = v0[45];
  v12 = v0[47];
  v13 = v0[46];
  v2 = v0[43];
  v3 = v0[42];
  v11 = v0[41];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  swift_willThrow();

  sub_466A4(v3, v2);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_238328(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_AB8FF0();

  v4 = sub_16A8C4(v3);

  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = sub_AB92A0();
  if (!*(v4 + 16) || (v7 = sub_2EBF88(v5, v6), (v8 & 1) == 0))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;

    goto LABEL_13;
  }

  sub_9ACA0(*(v4 + 56) + 40 * v7, &v17);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_12E1C(&v17, &qword_DF2BD0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

LABEL_15:
    v12 = sub_AB92A0();
    v11 = v13;
    sub_23B6C0();
    swift_allocError();
    *v14 = v12;
    *(v14 + 8) = v11;
    *(v14 + 16) = 1;
    swift_willThrow();
    return v11;
  }

  if (!*(v16 + 16) || (v9 = sub_2EBF88(0x746C7561666564, 0xE700000000000000), (v10 & 1) == 0) || (sub_9ACA0(*(v16 + 56) + 40 * v9, &v17), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  v11 = v16;

  return v11;
}

uint64_t sub_23856C(uint64_t a1)
{
  v1[35] = a1;
  v2 = sub_AB2A90();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v1[39] = swift_task_alloc();
  v3 = sub_AB31C0();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_2386F8, 0, 0);
}

uint64_t sub_2386F8()
{
  v1 = sub_238328(*(v0 + 280));
  *(v0 + 352) = v2;
  v3 = v2;
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = v1;
  sub_ABAD90(75);
  v31._countAndFlagsBits = 0x2F2F3A7370747468;
  v31._object = 0xE800000000000000;
  sub_AB94A0(v31);
  v32._countAndFlagsBits = v7;
  v32._object = v3;
  sub_AB94A0(v32);
  v33._object = 0x8000000000B59880;
  v33._countAndFlagsBits = 0xD000000000000041;
  sub_AB94A0(v33);
  sub_AB3180();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_12E1C(*(v0 + 312), &unk_DF2AE0);
    sub_23B6C0();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 312), *(v0 + 320));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA778);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(v0 + 248) = 0x65756C6176;
    *(v0 + 256) = 0xE500000000000000;
    sub_ABAD10();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    *(inited + 72) = &off_CF0CC8;
    *(v0 + 360) = sub_97E70(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DEBB90);
    v12 = objc_opt_self();
    isa = sub_AB8FD0().super.isa;
    *(v0 + 264) = 0;
    v14 = [v12 dataWithJSONObject:isa options:0 error:v0 + 264];
    v15 = *(v0 + 264);

    if (v14)
    {
      v16 = sub_AB3260();
      v18 = v17;
    }

    else
    {
      sub_AB3050();

      swift_willThrow();

      v16 = 0;
      v18 = 0xF000000000000000;
    }

    *(v0 + 368) = v16;
    *(v0 + 376) = v18;
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
    sub_AB2A50();
    sub_AB2A20();
    v19 = sub_AB92A0();
    v21 = v20;
    v35._countAndFlagsBits = sub_AB92A0();
    v23 = v22;
    v34.value._countAndFlagsBits = v19;
    v34.value._object = v21;
    v35._object = v23;
    sub_AB2A80(v34, v35);

    sub_9007C(v16, v18);
    sub_AB2A70();
    sub_13C80(0, &qword_DF4F60);
    v24 = static ICMusicKitRequestContext.music.getter();
    v25 = objc_allocWithZone(ICMusicKitURLRequest);
    v26 = sub_AB2A30();
    v27 = [v25 initWithURLRequest:v26 requestContext:v24];
    *(v0 + 384) = v27;

    [v27 setCancelOnHTTPErrors:0];
    sub_13C80(0, &qword_E07CC0);
    v28 = static ICURLSessionManager.musicSession.getter();
    *(v0 + 392) = v28;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_238CD0;
    v29 = swift_continuation_init();
    *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770);
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_23B884;
    *(v0 + 208) = &block_descriptor_19_3;
    *(v0 + 216) = v29;
    [v28 enqueueUploadRequest:v27 withCompletionHandler:v0 + 184];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_238CD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_238F5C;
  }

  else
  {
    v2 = sub_238E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_238E0C()
{
  v11 = *(v0 + 392);
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);

  sub_466A4(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_238F5C()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v12 = v0[49];
  v11 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[36];
  swift_willThrow();

  sub_466A4(v3, v1);
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v11, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2390AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[112] = a4;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  v5 = sub_AB2A90();
  v4[113] = v5;
  v4[114] = *(v5 - 8);
  v4[115] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v4[116] = swift_task_alloc();
  v6 = sub_AB31C0();
  v4[117] = v6;
  v4[118] = *(v6 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();

  return _swift_task_switch(sub_239250, 0, 0);
}

uint64_t sub_239250()
{
  v1 = sub_238328(*(v0 + 880));
  *(v0 + 976) = v2;
  v3 = v2;
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  v7 = v1;
  sub_ABAD90(31);

  v50._countAndFlagsBits = v7;
  v50._object = v3;
  sub_AB94A0(v50);
  v51._object = 0x8000000000B59860;
  v51._countAndFlagsBits = 0xD000000000000015;
  sub_AB94A0(v51);
  sub_AB3180();

  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    sub_12E1C(*(v0 + 928), &unk_DF2AE0);
    sub_23B6C0();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 960);
  v12 = *(v0 + 872);
  (*(*(v0 + 944) + 32))(*(v0 + 968), *(v0 + 928), *(v0 + 936));
  v13 = sub_96B2C(&off_CF0D08);
  sub_12E1C(&unk_CF0D28, &qword_DEE730);
  URL.parametrize(_:)(v13, v11);

  v14 = sub_97E70(_swiftEmptyArrayStorage);
  v15 = *(v12 + 8);
  if (v15)
  {
    v16 = **(v0 + 872);
    *(v0 + 816) = 1701667182;
    *(v0 + 824) = 0xE400000000000000;
    sub_ABAD10();
    *(v0 + 440) = &type metadata for String;
    *(v0 + 416) = v16;
    *(v0 + 424) = v15;
    sub_9ACFC((v0 + 416), (v0 + 608));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 608), v0 + 144, isUniquelyReferenced_nonNull_native);
    sub_8085C(v0 + 144);
  }

  v18 = *(v0 + 872);
  v19 = *(v18 + 24);
  if (v19)
  {
    v20 = *(v18 + 16);
    *(v0 + 784) = 0x656C646E6168;
    *(v0 + 792) = 0xE600000000000000;
    sub_ABAD10();
    *(v0 + 536) = &type metadata for String;
    *(v0 + 512) = v20;
    *(v0 + 520) = v19;
    sub_9ACFC((v0 + 512), (v0 + 480));

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 480), v0 + 264, v21);
    sub_8085C(v0 + 264);
  }

  v22 = *(v0 + 896);
  if (v22)
  {
    v23 = *(v0 + 888);
    strcpy((v0 + 752), "artworkToken");
    *(v0 + 765) = 0;
    *(v0 + 766) = -5120;
    sub_ABAD10();
    *(v0 + 408) = &type metadata for String;
    *(v0 + 384) = v23;
    *(v0 + 392) = v22;
    sub_9ACFC((v0 + 384), (v0 + 704));

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v14;
    sub_913C0((v0 + 704), v0 + 344, v24);
    v25 = v0 + 344;
  }

  else
  {
    if (*(*(v0 + 872) + 32))
    {
      goto LABEL_13;
    }

    strcpy((v0 + 736), "artworkToken");
    *(v0 + 749) = 0;
    *(v0 + 750) = -5120;
    sub_ABAD10();
    *(v0 + 664) = &type metadata for String;
    *(v0 + 640) = 0;
    *(v0 + 648) = 0xE000000000000000;
    sub_9ACFC((v0 + 640), (v0 + 672));
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v14;
    sub_913C0((v0 + 672), v0 + 304, v47);
    v25 = v0 + 304;
  }

  sub_8085C(v25);
  v14 = v48;
LABEL_13:
  v26 = *(*(v0 + 872) + 41);
  if (v26 != 2)
  {
    *(v0 + 768) = 0x72616F626E4F7369;
    *(v0 + 776) = 0xEB00000000646564;
    sub_ABAD10();
    *(v0 + 568) = &type metadata for Bool;
    *(v0 + 544) = v26;
    sub_9ACFC((v0 + 544), (v0 + 576));
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0((v0 + 576), v0 + 224, v27);
    sub_8085C(v0 + 224);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA778);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v0 + 832) = 0x7475626972747461;
  *(v0 + 840) = 0xEA00000000007365;
  sub_ABAD10();
  *(v28 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *(v28 + 72) = v14;
  *(v0 + 984) = sub_97E70(v28);
  swift_setDeallocating();
  sub_12E1C(v28 + 32, &qword_DEBB90);
  swift_deallocClassInstance();
  v29 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;
  *(v0 + 864) = 0;
  v31 = [v29 dataWithJSONObject:isa options:0 error:v0 + 864];
  v32 = *(v0 + 864);

  if (v31)
  {
    v33 = sub_AB3260();
    v35 = v34;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v33 = 0;
    v35 = 0xF000000000000000;
  }

  *(v0 + 1000) = v35;
  *(v0 + 992) = v33;
  (*(*(v0 + 944) + 16))(*(v0 + 952), *(v0 + 960), *(v0 + 936));
  sub_AB2A50();
  sub_AB2A20();
  v36 = sub_AB92A0();
  v38 = v37;
  v53._countAndFlagsBits = sub_AB92A0();
  v40 = v39;
  v52.value._countAndFlagsBits = v36;
  v52.value._object = v38;
  v53._object = v40;
  sub_AB2A80(v52, v53);

  sub_9007C(v33, v35);
  sub_AB2A70();
  sub_13C80(0, &qword_DF4F60);
  v41 = static ICMusicKitRequestContext.music.getter();
  v42 = objc_allocWithZone(ICMusicKitURLRequest);
  v43 = sub_AB2A30();
  v44 = [v42 initWithURLRequest:v43 requestContext:v41];
  *(v0 + 1008) = v44;

  [v44 setCancelOnHTTPErrors:0];
  sub_13C80(0, &qword_E07CC0);
  v45 = static ICURLSessionManager.musicSession.getter();
  *(v0 + 1016) = v45;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 856;
  *(v0 + 24) = sub_239B94;
  v46 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA770);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23B884;
  *(v0 + 104) = &block_descriptor_13_2;
  *(v0 + 112) = v46;
  [v45 enqueueDataRequest:v44 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_239B94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1024) = v1;
  if (v1)
  {
    v2 = sub_23A500;
  }

  else
  {
    v2 = sub_239CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_239CD0()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 856);
  *(v0 + 1032) = v2;

  v3 = [v2 urlResponse];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && [v5 statusCode] == &stru_158.flags + 1)
    {
      v6 = [v2 parsedBodyDictionary];
      if (v6)
      {
        v7 = v6;
        v8 = sub_AB8FF0();

        *(v0 + 800) = 0xD000000000000010;
        *(v0 + 808) = 0x8000000000B529A0;
        sub_ABAD10();
        if (*(v8 + 16) && (v9 = sub_2EC004(v0 + 184), (v10 & 1) != 0))
        {
          sub_808B0(*(v8 + 56) + 32 * v9, v0 + 448);
          sub_8085C(v0 + 184);
        }

        else
        {
          sub_8085C(v0 + 184);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
        }

        if (*(v0 + 472))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
          if (swift_dynamicCast())
          {
            v14 = *(v0 + 848);
LABEL_19:
            v15 = *(v0 + 1008);
            v24 = *(v0 + 992);
            v25 = *(v0 + 1000);
            v26 = *(v0 + 960);
            v27 = *(v0 + 968);
            v16 = *(v0 + 944);
            v17 = *(v0 + 936);
            v18 = *(v0 + 920);
            v19 = *(v0 + 912);
            v20 = *(v0 + 904);
            sub_23B6C0();
            swift_allocError();
            *v21 = v14;
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
            swift_willThrow();

            sub_466A4(v24, v25);
            (*(v19 + 8))(v18, v20);
            v22 = *(v16 + 8);
            v22(v26, v17);
            v22(v27, v17);

            v23 = *(v0 + 8);

            return v23();
          }

LABEL_18:
          v14 = _swiftEmptyArrayStorage;
          goto LABEL_19;
        }
      }

      else
      {
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
      }

      sub_12E1C(v0 + 448, &unk_DE8E40);
      goto LABEL_18;
    }
  }

  v11 = swift_task_alloc();
  *(v0 + 1040) = v11;
  *v11 = v0;
  v11[1] = sub_23A0B4;
  v12 = *(v0 + 880);

  return sub_23856C(v12);
}

uint64_t sub_23A0B4()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_23A378;
  }

  else
  {
    v2 = sub_23A1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23A1F4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v13 = *(v0 + 1032);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_466A4(v2, v1);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A378()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v13 = *(v0 + 1032);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);

  sub_466A4(v2, v1);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A500()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v14 = v0[127];
  v12 = v0[120];
  v13 = v0[121];
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];
  swift_willThrow();

  sub_466A4(v3, v2);
  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v9(v12, v5);
  v9(v13, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A694(uint64_t a1, char a2)
{
  *(v2 + 314) = a2;
  *(v2 + 432) = a1;
  return _swift_task_switch(sub_23A6B8, 0, 0);
}

uint64_t sub_23A6B8()
{
  v1 = [objc_opt_self() sharedBagProvider];
  v0[55] = v1;
  sub_13C80(0, &qword_DEE560);
  v2 = static ICStoreRequestContext.current.getter();
  v0[56] = v2;
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_23A82C;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA758);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23B884;
  v0[21] = &block_descriptor_81;
  v0[22] = v3;
  [v1 getBagForRequestContext:v2 withCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23A82C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_23B54C;
  }

  else
  {
    v2 = sub_23A93C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23A93C()
{
  v25 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  *(v0 + 464) = v4;

  v5 = *(v3 + 32);
  *(v0 + 472) = v5;
  if (v5 >= 2)
  {
    v22 = v5;
    v23 = swift_task_alloc();
    *(v0 + 480) = v23;
    *v23 = v0;
    v23[1] = sub_23ABF8;

    return sub_2377C8(v22, v4);
  }

  else
  {
    *(v0 + 512) = 0;
    if (qword_DE69F0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 432);
    v7 = sub_AB4BC0();
    *(v0 + 520) = __swift_project_value_buffer(v7, qword_E71320);
    sub_23B658(v6, v0 + 272);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    sub_23B690(v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 432);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      v13 = *(v10 + 26);
      v14 = v10[1];
      *(v0 + 320) = *v10;
      *(v0 + 336) = v14;
      *(v0 + 346) = v13;
      sub_23B658(v10, v0 + 368);
      v15 = sub_AB9350();
      v17 = sub_425E68(v15, v16, &v24);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Will update profile with=%{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    *v18 = v0;
    v18[1] = sub_23AFBC;
    v19 = *(v0 + 464);
    v20 = *(v0 + 432);

    return sub_2390AC(v20, v19, 0, 0);
  }
}

uint64_t sub_23ABF8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 488) = v2;

  if (v2)
  {
    v7 = sub_23AF54;
  }

  else
  {
    *(v6 + 496) = a2;
    *(v6 + 504) = a1;
    v7 = sub_23AD2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_23AD2C()
{
  v20 = v0;
  v1 = *(v0 + 496);
  sub_D3144(*(v0 + 472));
  v2 = *(v0 + 504);
  *(v0 + 512) = v1;
  if (qword_DE69F0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 432);
  v4 = sub_AB4BC0();
  *(v0 + 520) = __swift_project_value_buffer(v4, qword_E71320);
  sub_23B658(v3, v0 + 272);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();
  sub_23B690(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = *(v7 + 26);
    v11 = v7[1];
    *(v0 + 320) = *v7;
    *(v0 + 336) = v11;
    *(v0 + 346) = v10;
    sub_23B658(v7, v0 + 368);
    v12 = sub_AB9350();
    v14 = sub_425E68(v12, v13, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Will update profile with=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 528) = v15;
  *v15 = v0;
  v15[1] = sub_23AFBC;
  v16 = *(v0 + 464);
  v17 = *(v0 + 432);

  return sub_2390AC(v17, v16, v2, v1);
}

uint64_t sub_23AF54()
{
  v1 = *(v0 + 464);
  sub_D3144(*(v0 + 472));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AFBC()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_23B2E0;
  }

  else
  {

    v2 = sub_23B0D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B0D8()
{
  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 314);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_0, v1, v2, "Updated user profile, refreshing activeUserState=%{BOOL}d", v4, 8u);
  }

  v5 = *(v0 + 314);

  if (v5)
  {
    v6 = [objc_opt_self() shared];
    *(v0 + 544) = v6;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 424;
    *(v0 + 88) = sub_23B350;
    v7 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA760);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_237598;
    *(v0 + 232) = &block_descriptor_5_0;
    *(v0 + 240) = v7;
    [v6 refreshUserStatesWithOptions:1 completion:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23B2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B350()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_23B5C4;
  }

  else
  {
    v2 = sub_23B460;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B460()
{
  v1 = v0[68];

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Active user state updated", v4, 2u);
  }

  v5 = v0[58];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B54C()
{
  v1 = v0[56];
  v2 = v0[55];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B5C4()
{
  v1 = v0[68];
  v2 = v0[58];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_23B6C0()
{
  result = qword_DFA768;
  if (!qword_DFA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA768);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20SocialProfileUpdaterV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication20SocialProfileUpdaterV0D6UpdateV05PhotoF0OSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23B7D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_23B888(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_AB3430();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = *(v12 + 16);
  v34 = a1;
  v14(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath);
  sub_ABAD10();
  sub_AB3420();
  sub_15F84(v36, v35, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v15 = swift_dynamicCast();
  (*(v12 + 56))(v6, v15 ^ 1u, 1, v11);
  v16 = sub_2CD6DC(1u, v10, v6);
  (*(v8 + 8))(v10, v7);
  sub_12E1C(v36, &qword_DF2BD0);
  sub_12E1C(v6, &unk_DE8E20);
  swift_beginAccess();
  v17 = *(v2 + 112);
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = sub_2EC048(v34);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 88);
  if (*(v20 + 144))
  {
    v22 = *(v20 + 16);
  }

  else
  {
    v22 = 0;
  }

  if (*(v20 + 144))
  {
    v23 = *(v20 + 24);
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = (v21 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v22 = *v24;
    v23 = v24[1];
LABEL_13:

    goto LABEL_14;
  }

  if (v23)
  {
    goto LABEL_13;
  }

  v35[0] = *(v20 + 56);
  v22 = sub_ABB330();
  v23 = v32;
LABEL_14:
  swift_beginAccess();
  v25 = *(v2 + 104);
  if (!*(v25 + 16))
  {

LABEL_20:

    return 0;
  }

  v26 = sub_2EBF88(v22, v23);
  if ((v27 & 1) == 0)
  {

    goto LABEL_20;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = *(v28 + 176);

  if (v16)
  {

    v30 = sub_4A365C(v29, v16);

    return v30;
  }

  return 0;
}

void sub_23BD04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0);
    v5 = sub_AB9760();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_23BD84(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_13C80(0, &unk_DF12E0);
    v3.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setLeftBarButtonItems:?];
}

void sub_23BE10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = swift_isaMask;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();

  v10[2] = *(&stru_1F8.size + (v8 & v7));
  v10[3] = *(&stru_1F8.offset + (v8 & v7));
  v10[4] = *(&stru_1F8.reloff + (v8 & v7));
  v10[5] = *(&stru_1F8.flags + (v8 & v7));
  v10[6] = v9;
  v10[7] = a2;
  v10[8] = a3;
  sub_23C260(sub_256594, v10);

  type metadata accessor for ContainerDetailViewController.Layout();
  swift_getWitnessTable();
  if (sub_ABB400())
  {
    v11 = *&stru_B8.segname[(swift_isaMask & *a1) + 8];
    v12 = v11();
    v13 = sub_24EBB0(v12);

    *(v4 + *(&stru_338.size + (swift_isaMask & *v4))) = v13;
    sub_24E4FC();
    sub_24E818(1);
    v14 = v11();
    v15 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v14)))();

    if (v15)
    {
      sub_24C2A8(v15);
    }
  }
}

void sub_23C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_opt_self() sharedApplication];
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v14;
  v16[7] = a2;
  v16[8] = a3;
  aBlock[4] = sub_256614;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_82;
  v17 = _Block_copy(aBlock);

  [v13 _performBlockAfterCATransactionCommits:v17];
  _Block_release(v17);
}

uint64_t sub_23C260(void (*a1)(uint64_t), void *a2)
{
  v4 = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = (v7 + 16);
  v9 = &swift_isaMask;
  v10 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a1;
  v11[4] = a2;
  if (*&v10[qword_DFE2F0] || (swift_getObjectType(), (v13 = swift_conformsToProtocol2()) == 0))
  {
    swift_beginAccess();
    v10 = (*v8 - 1);
    if (!__OFSUB__(*v8, 1))
    {
      *(v7 + 16) = v10;
      swift_retain_n();

      if (!v10)
      {
        a1(v12);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_25:
    a2 = sub_6AA00(0, a2[2] + 1, 1, a2);
    *(v11 + v10) = a2;
  }

  else
  {
    v29 = v13;
    v32 = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_A96B8;
    *(v14 + 24) = v11;
    v30 = v14;
    v3 = qword_DFE260;
    swift_beginAccess();
    a1 = *&v10[v3];
    swift_retain_n();

    v15 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v3] = a1;
    v31 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v18 = *(a1 + 2);
      v17 = *(a1 + 3);
      if (v18 >= v17 >> 1)
      {
        a1 = sub_6AA00((v17 > 1), v18 + 1, 1, a1);
      }

      *(a1 + 2) = v18 + 1;
      v19 = (a1 + 16 * v18);
      v19[4] = sub_36C08;
      v19[5] = v30;
      *&v10[v3] = a1;
      swift_endAccess();
      if ((v31[qword_DFE2C0] & 1) == 0)
      {
        v31[qword_DFE2C0] = 1;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType);
      }

      a1 = v32;
LABEL_13:

      v10 = *(v4 + *(&stru_248.flags + (swift_isaMask & *v4)));
      v4 = swift_allocObject();
      v4[2] = v7;
      v4[3] = a1;
      v4[4] = a2;
      v21 = v10[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate];
      swift_retain_n();

      if (v21)
      {
        sub_A3DD4();
      }

      if (v10[OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing] == 1)
      {
        break;
      }

      v26 = swift_beginAccess();
      v27 = *v8 - 1;
      if (!__OFSUB__(*v8, 1))
      {
        *v8 = v27;
        if (!v27)
        {
          a1(v26);
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_27:
      a1 = sub_6AA00(0, *(a1 + 2) + 1, 1, a1);
      *&v10[v3] = a1;
    }

    v9 = swift_allocObject();
    v9[2] = sub_2596EC;
    v9[3] = v4;
    v11 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
    swift_beginAccess();
    a2 = *(v11 + v10);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v10) = a2;
    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v24 = a2[2];
  v23 = a2[3];
  if (v24 >= v23 >> 1)
  {
    a2 = sub_6AA00((v23 > 1), v24 + 1, 1, a2);
  }

  a2[2] = v24 + 1;
  v25 = &a2[2 * v24];
  v25[4] = sub_2D4D0;
  v25[5] = v9;
  *(v11 + v10) = a2;
  swift_endAccess();
LABEL_23:
}

id sub_23C6F4(uint64_t a1)
{
  if ((*&stru_568.segname[swift_isaMask & *v1])())
  {
    v3 = [v1 traitCollection];
    v4 = UITraitCollection.isMediaPicker.getter();

    v5 = !v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v7 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  result = [*(v6 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton) isEnabled];
  if (v5 != result)
  {
    v9 = *(v6 + v7);

    return [v9 setEnabled:?];
  }

  return result;
}

void *sub_23C840()
{
  v0 = sub_256908();
  v1 = v0;
  return v0;
}

uint64_t (*sub_23C870(uint64_t *a1))()
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
  *(v2 + 32) = sub_2497C8();
  return sub_2596E0;
}

uint64_t (*sub_23C8E4(void *a1))()
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
  v2[4] = sub_23C81C(v2);
  return sub_A8F8C;
}

uint64_t sub_23C94C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 2)
  {
    return 0x4076800000000000;
  }

  else
  {
    return 0x4069000000000000;
  }
}

uint64_t sub_23C9CC(uint64_t a1)
{
  v3 = type metadata accessor for Metrics.Event(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v4 + 20)))
  {
    if (*(a1 + *(v4 + 20)) != 1)
    {
      sub_2594D8(a1, v6, type metadata accessor for Metrics.Event);
      goto LABEL_7;
    }

    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  sub_2594D8(a1, v6, type metadata accessor for Metrics.Event.Action);
  v8 = v3[6];
  v9 = *(a1 + v8);
  v10 = v3[7];
  v11 = v3[8];
  v6[v3[5]] = v7;
  *&v6[v8] = v9;
  *&v6[v10] = 0;
  *&v6[v11] = 0;
  v12 = v9;
LABEL_7:
  (*(**(v1 + 16) + 184))(v6);
  return sub_259250(v6, type metadata accessor for Metrics.Event);
}

uint64_t sub_23CB18()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_23CBD8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(*v3 + 160))();
  a1[1] = v4;
  return sub_23CC44;
}

uint64_t sub_23CC44(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 168);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  sub_307CC(*a1);
  v4(v3, v2);

  return sub_17654(v3);
}

void *sub_23CD04()
{
  v0 = type metadata accessor for ContainerDetailViewController.BarButtonItemLocation();
  sub_ABB340();
  swift_initStackObject();
  v1 = sub_AB9780();
  *v2 = 256;
  sub_AB9870();
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v4 = sub_486410(v1, v0, WitnessTable);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  return v4;
}

uint64_t sub_23CDF4()
{

  v1 = &v0[*&stru_298.segname[swift_isaMask & *v0]];
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);

  sub_466A4(v8, v9);
  v10 = *&stru_298.segname[(swift_isaMask & *v0) + 8];
  v11 = sub_ABA9C0();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);

  sub_12E1C(&v0[*(&stru_298.flags + (swift_isaMask & *v0))], &qword_DFDD40);

  sub_17654(*&v0[*&stru_338.segname[swift_isaMask & *v0]]);

  swift_unknownObjectRelease();
}

id sub_23D340()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = [objc_opt_self() sharedMonitor];
  [v3 unregisterObserver:v1];

  v4 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
  if (v4)
  {
    v5 = *&stru_248.segname[(*v4 & swift_isaMask) - 8];
    v6 = v4;
    v5();
  }

  v8 = *(v2 + 544);
  v9 = *(v2 + 560);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ContainerDetailViewController();
  return objc_msgSendSuper2(&v10, "dealloc", v8, v9);
}

uint64_t sub_23D49C(char *a1)
{

  v2 = &a1[*&stru_298.segname[swift_isaMask & *a1]];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);

  sub_466A4(v9, v10);
  v11 = *&stru_298.segname[(swift_isaMask & *a1) + 8];
  v12 = sub_ABA9C0();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  sub_12E1C(&a1[*(&stru_298.flags + (swift_isaMask & *a1))], &qword_DFDD40);

  sub_17654(*&a1[*&stru_338.segname[swift_isaMask & *a1]]);

  swift_unknownObjectRelease();
}

char *sub_23D9EC()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&stru_248.sectname[swift_isaMask & *v0];
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = *(v0 + v4);
  }

  else
  {
    SymbolButton.Configuration.init()(v3);
    sub_23DAE8(v3);
    v7 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v8 = v3;
    v9 = v0;
    v10 = SymbolButton.init(configuration:handler:)(v8, 0, 0);
    v11 = *(v0 + v4);
    *(v9 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

void sub_23DAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2594D8(a1, v4, type metadata accessor for SymbolButton.Configuration);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_25A964(v4, 0, v8);
  sub_12E1C(v4, &unk_DFAAB0);
  sub_2580A4(v8, a1);
  v9 = SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  LOBYTE(v4) = v9[24];
  v13 = a1 + *(v5 + 64);
  v14 = *(v13 + 8);
  v15 = v11;
  v16 = v12;

  *v13 = v10;
  *(v13 + 8) = v11;
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
}

id sub_23DCC4()
{
  v1 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_23D9EC();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_23DD70()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v2);
  variable initialization expression of SymbolButton.Configuration.symbol(&v15);
  v23 = v17;
  v3 = UIFontTextStyleBody;
  sub_259250(&v23, type metadata accessor for TextStyle);
  v4 = *(v2 + 5);
  v24[4] = *(v2 + 4);
  v24[5] = v4;
  v24[6] = *(v2 + 6);
  v25 = *(v2 + 14);
  v5 = *(v2 + 1);
  v24[0] = *v2;
  v24[1] = v5;
  v6 = *(v2 + 3);
  v24[2] = *(v2 + 2);
  v24[3] = v6;
  sub_155A00(v24);
  *v2 = v15;
  *(v2 + 2) = v18;
  *(v2 + 3) = xmmword_B054A0;
  v7 = v20;
  v8 = v21;
  *(v2 + 4) = v19;
  *(v2 + 5) = v7;
  *(v2 + 2) = v16;
  *(v2 + 3) = v3;
  *(v2 + 6) = v8;
  *(v2 + 14) = v22;
  v9 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v10 = SymbolButton.init(configuration:handler:)(v2, 0, 0);
  v11 = SymbolButton.withProvider(_:)(sub_23DFC0, 0);

  if (qword_DE6BB0 != -1)
  {
    swift_once();
  }

  v12 = UIView.withAccessibilityIdentifier(_:)(*ymmword_E716F8, *&ymmword_E716F8[8]);

  (*&stru_1A8.segname[swift_isaMask & *v12])(1);
  v13 = [objc_opt_self() currentTraitCollection];
  SymbolButton.configureForToolbar(_:)(v13);

  [v12 setHidden:1];
  return v12;
}

uint64_t sub_23DFC0(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208));
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v3 = sub_AB4E50();
  if (v3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x6461622E74786574;
  }

  if (v3)
  {
    v5 = 0x8000000000B59D70;
  }

  else
  {
    v5 = 0xEF73756C702E6567;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

id sub_23E05C()
{
  v2 = *&stru_248.segname[(swift_isaMask & *v0) + 8];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v1 = swift_isaMask & *v0;
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*(v0 + *(v1 + 600))];
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

char *sub_23E120()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = *(v1 + v5);
  }

  else
  {
    v8 = SymbolButton.Configuration.barButtonContextualAction.unsafeMutableAddressor();
    sub_2594D8(v8, v4, type metadata accessor for SymbolButton.Configuration);
    v9 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v10 = SymbolButton.init(configuration:handler:)(v4, 0, 0);
    v11 = *(v1 + v5);
    *(v1 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

id sub_23E228()
{
  v1 = *(&stru_248.size + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_23E120();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_23E2D4(uint64_t a1, char a2)
{
  type metadata accessor for ContainerDetailViewController.BarButtonItemLocation();
  swift_getWitnessTable();
  if (sub_AB9BD0())
  {
    v21 = a2;
    v4 = [v2 navigationItem];
    v5 = [v2 parentViewController];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = v6;
        v8 = [v7 navigationItem];

        v6 = [v7 parentViewController];
        v4 = v8;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = v4;
LABEL_9:
    v9 = [v2 traitCollection];
    v10 = (*(&stru_428.flags + (swift_isaMask & *v2)))();

    if (v10)
    {
      sub_13C80(0, &unk_DF12E0);
      v11.super.isa = sub_AB9740().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    a2 = v21;
    [v8 setLeftBarButtonItems:v11.super.isa animated:v21 & 1];
  }

  if (sub_AB9BD0())
  {
    v12 = [v2 navigationItem];
    v13 = [v2 parentViewController];
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v15 = v14;
        v16 = [v15 navigationItem];

        v14 = [v15 parentViewController];
        v12 = v16;
        if (!v14)
        {
          goto LABEL_21;
        }
      }
    }

    v16 = v12;
LABEL_21:
    v17 = [v2 traitCollection];
    sub_23E70C();
    v19 = v18;

    if (v19)
    {
      sub_13C80(0, &unk_DF12E0);
      v20.super.isa = sub_AB9740().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    [v16 setRightBarButtonItems:v20.super.isa animated:a2 & 1];
  }
}

uint64_t sub_23E67C()
{
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
  {
    v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 56);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_23E70C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  *(v2 + 32) = sub_23E228();
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0 || (*(v0 + *&stru_298.segname[swift_isaMask & *v0] + 56) & 1) == 0)
  {
    v3 = UITraitCollection.mediaLibrary.getter();
    v4 = [objc_opt_self() deviceMediaLibrary];
    if (v4)
    {
      v5 = v4;
      sub_13C80(0, &qword_DF86B0);
      v6 = sub_ABA790();

      if ((v6 & 1) != 0 && (*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) != 0x7A)
      {
        if ((*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) == 0xF8)
        {
          __break(1u);
        }

        else
        {
          sub_23DCC4();
          sub_AB9730();
          if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_23E8DC()
{
  v1 = *(v0 + *(&stru_248.reloff + (swift_isaMask & *v0)));
  v2 = *(v0 + *&stru_298.sectname[swift_isaMask & *v0]);
  v3 = *(&stru_608.reloff + (*v1 & swift_isaMask));
  v4 = v2;
  return v3(v2);
}

uint64_t sub_23E97C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4 + *&stru_298.segname[(swift_isaMask & *v4) - 8];
  *v5 = result;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  v5[24] = a4 & 1;
  return result;
}

void sub_23E9B8()
{
  v1 = v0;
  (*(&stru_6F8.reserved2 + (swift_isaMask & *v0)))(0, 0);
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v3)
  {
    objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v4 = v3;
    v12 = JSMediaPickerEnvironment.init(configuration:)(v4);
    v5 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
    if (v5)
    {
      v6 = *&stru_108.segname[(*v5 & swift_isaMask) - 8];
      v7 = v5;
      v8 = v12;
      v9 = v6(v13);
      v11 = *v10;
      *v10 = v12;

      v9(v13, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_23EB60@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

void sub_23EC20(uint64_t a1)
{
  v2 = v1;
  v3 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }

    v5 = [*(v1 + v3) results];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 totalItemCount];
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E71120);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_0, v9, v10, "Did update containerResponse with result count: %{public}ld", v11, 0xCu);
  }

  if ((sub_23F4C8() & 1) == 0)
  {
    v12 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v13 = *(v2 + v3);
    v14 = *&stru_158.segname[(*v12 & swift_isaMask) - 8];
    v15 = v13;
    v14(v13);
    sub_24FBD8();
    sub_25086C();
    v16 = (*(&stru_6F8.offset + (swift_isaMask & *v2)))(0, _swiftEmptyArrayStorage);
    v17 = swift_isaMask;
    if (!*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32) && *(v2 + v3))
    {
      sub_24E818(1);
      v17 = swift_isaMask;
    }

    v18 = (*&stru_1F8.sectname[v17 & *v12])(v16);
    if (v18)
    {
      v19 = *(v2 + v3);
      v20 = *(v18 + 32);
      *(v18 + 32) = v19;
      v21 = v19;
    }

    sub_251140(v18);

    sub_244654();
  }
}

void *sub_23EF1C()
{
  v1 = *(v0 + *&stru_298.segname[(swift_isaMask & *v0) + 16]);
  v2 = v1;
  return v1;
}

void sub_23EF68(void *a1)
{
  v2 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_23EC20(v4);
}

void sub_23EFE4(void *a1)
{
  v2 = v1;
  v4 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = sub_AB92A0();
    v10 = v9;

    if (!a1)
    {
      if (!v10)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = [a1 identifier];
  v12 = sub_AB92A0();
  v14 = v13;

  if (!v10)
  {
    if (!v14)
    {
      return;
    }

LABEL_18:

    v17 = *(v2 + v4);
    if (!v17)
    {
LABEL_19:
      (*&stru_608.segname[(**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask) + 8])(0);
      goto LABEL_20;
    }

LABEL_15:
    v18 = objc_allocWithZone(SLAttributionView);
    v19 = v17;
    v20 = [v18 initWithHighlight:v19];
    [*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) frame];
    [v20 prepareLayoutWithMaxWidth:CGRectGetWidth(v27)];
    v21 = *&stru_608.segname[(**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask) + 8];
    v22 = v20;
    v21(v20);

LABEL_20:
    v23 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v23)
    {
      v24 = *(v2 + v4) != 0;
      v25 = v23;
      JSContainerDetail.hasSharedContent.setter(v24);
    }

    sub_24BB44();
    return;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  if (v8 != v12 || v10 != v14)
  {
    v16 = sub_ABB3C0();

    if (v16)
    {
      return;
    }

    v17 = *(v2 + v4);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }
}

uint64_t sub_23F31C()
{
  result = (*&stru_608.segname[**(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) & swift_isaMask])();
  if (result)
  {
    v2 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23F3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(&stru_298.flags + (swift_isaMask & *v1));
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &qword_DFDD40);
}

void sub_23F46C(uint64_t a1)
{
  v2 = *(&stru_298.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_23F4C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask & *v0;
  v4 = *(&stru_1F8.offset + (swift_isaMask & v2));
  v5 = sub_ABA9C0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v71 - v8;
  result = (*(v3 + 1240))(v7);
  if (!result)
  {
    return result;
  }

  v11 = result;
  result = [result results];
  if (!result)
  {
LABEL_60:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result totalItemCount];

  if (v13)
  {
    goto LABEL_4;
  }

  v14 = v1 + *&stru_298.segname[swift_isaMask & *v1];
  v83[0] = *(v14 + 1);
  v72 = v83[0];
  if (!v83[0])
  {
    goto LABEL_4;
  }

  v15 = *(v14 + 2);
  if (v15)
  {
    sub_15F84(v83, v75, &unk_DFAAA0);
    v16 = v15;
    v17 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v18 = MPModelObject.bestIdentifier(for:)(*v17, 0);
    v20 = v19;

    v71 = v20;
    if (v20)
    {
      v21 = v18;
      goto LABEL_13;
    }
  }

  else
  {
    sub_15F84(v83, v75, &unk_DFAAA0);
  }

  v21 = JSContainerDetail.containerStoreID.getter();
  v23 = v22;

  v71 = v23;
  if (!v23)
  {
LABEL_23:
    sub_12E1C(v83, &unk_DFAAA0);
LABEL_4:

    return 0;
  }

LABEL_13:
  (*(&stru_478.reserved2 + (swift_isaMask & *v1)))();
  if ((*(*(v4 - 8) + 48))(v9, 1, v4) == 1)
  {
    v24 = (*(v6 + 8))(v9, v5);
LABEL_20:
    v25 = v71;
    goto LABEL_21;
  }

  v24 = swift_dynamicCast();
  if ((v24 & 1) == 0)
  {
    goto LABEL_20;
  }

  v73[6] = v79;
  v73[7] = v80;
  v74 = v81;
  v73[2] = v75[2];
  v73[3] = v76;
  v73[4] = v77;
  v73[5] = v78;
  v73[0] = v75[0];
  v73[1] = v75[1];
  v25 = v71;
  if (*(&v76 + 1))
  {
    v26 = MPModelPropertyPlaylistIsOwner;
    v27 = *(&v76 + 1);
    if ([v27 hasLoadedValueForKey:v26])
    {
      v28 = [v27 isOwner];

      v24 = sub_257CA0(v73);
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v24 = sub_257CA0(v73);
    }
  }

  else
  {
    v24 = sub_257CA0(v73);
  }

LABEL_21:
  if ((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))(v24))
  {
LABEL_22:

    goto LABEL_23;
  }

  if (*(v1 + *&stru_2E8.sectname[swift_isaMask & *v1]) > 2)
  {
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v39 = sub_AB4BC0();
    __swift_project_value_buffer(v39, qword_E71120);

    v40 = sub_AB4BA0();
    v41 = sub_AB9F50();

    if (!os_log_type_enabled(v40, v41))
    {
      sub_12E1C(v83, &unk_DFAAA0);

      return 0;
    }

    v42 = v21;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v75[0] = v44;
    *v43 = 136446210;
    v45 = sub_425E68(v42, v25, v75);

    *(v43 + 4) = v45;
    _os_log_impl(&dword_0, v40, v41, "ContainerDetailRequest had no results, and exceeded maximum retries for container with id: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);

    goto LABEL_34;
  }

  if ((JSContainerDetail.containerDetailedResponseIsReady.getter() & 1) == 0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v46 = sub_AB4BC0();
      __swift_project_value_buffer(v46, qword_E71120);
      v30 = v1;

      v31 = sub_AB4BA0();
      v32 = sub_AB9F50();

      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_44;
      }

      v33 = swift_slowAlloc();
      result = swift_slowAlloc();
      v71 = result;
      *&v75[0] = result;
      *v33 = 134218242;
      v47 = *(v30 + *&stru_2E8.sectname[swift_isaMask & *v30]);
      v35 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (!v35)
      {
        *(v33 + 4) = v48;

        *(v33 + 12) = 2082;
        v49 = sub_425E68(v21, v25, v75);

        *(v33 + 14) = v49;
        v38 = "ContainerDetailRequest had no library results but we have catalog results. Scheduling a catalog request retry (#%ld) for container with id: %{public}s";
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_60;
    }

    if (qword_DE6940 != -1)
    {
LABEL_58:
      swift_once();
    }

    v68 = sub_AB4BC0();
    __swift_project_value_buffer(v68, qword_E71120);
    v40 = sub_AB4BA0();
    v69 = sub_AB9F50();
    if (!os_log_type_enabled(v40, v69))
    {
LABEL_35:
      sub_12E1C(v83, &unk_DFAAA0);

      return 0;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_0, v40, v69, "Container detail response isn't ready yet, still waiting for JS to provide the container's detailed track data.", v70, 2u);
LABEL_34:

    goto LABEL_35;
  }

  if (qword_DE6940 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    v30 = v1;

    v31 = sub_AB4BA0();
    v32 = sub_AB9F50();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v75[0] = v71;
      *v33 = 134218242;
      v34 = *(v30 + *&stru_2E8.sectname[swift_isaMask & *v30]);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        __break(1u);
        goto LABEL_58;
      }

      *(v33 + 4) = v36;

      *(v33 + 12) = 2082;
      v37 = sub_425E68(v21, v25, v75);

      *(v33 + 14) = v37;
      v38 = "ContainerDetailRequest had no results, scheduling a retry (#%ld) for container with id: %{public}s";
LABEL_42:
      _os_log_impl(&dword_0, v31, v32, v38, v33, 0x16u);
      v21 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
    }

    else
    {
LABEL_44:
    }

    v50 = *&stru_2E8.sectname[swift_isaMask & *v1];
    v51 = *(v1 + v50);
    v35 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v35)
    {
      break;
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  *(v1 + v50) = v52;
  v53 = type metadata accessor for JSContainerDetailModelRequest();
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v55 = 0;
  v55[1] = 0;
  v54[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v56 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v54[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v54[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  v57 = v72;
  *&v54[v56] = v72;
  v82.receiver = v54;
  v82.super_class = v53;
  v58 = v57;
  v59 = objc_msgSendSuper2(&v82, "init");
  if ((v58[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90);
    v60 = v59;
    v61 = static MPModelAlbum.defaultMusicKind.getter();
    [v60 setSectionKind:v61];

    v62 = [objc_opt_self() kindWithVariants:3];
    v63 = v62;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10);
    v62 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v64 = objc_opt_self();
    v63 = v59;
    v65 = [v64 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v62 options:0];
    [v63 setSectionKind:v65];

    v60 = v62;
  }

  [v59 setItemKind:{v62, v71}];

  v66 = *&stru_298.segname[swift_isaMask & *v1];
  v67 = *(v1 + v66);
  *(v1 + v66) = v59;

  sub_23E9B8();
  sub_12E1C(v83, &unk_DFAAA0);

  return &dword_0 + 1;
}

BOOL sub_24004C()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  result = 0;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_24012C(uint64_t a1)
{
  v3 = *&stru_2E8.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_2401A0(void *a1)
{
  v1 = a1;
  v2 = sub_2401D4();

  return v2;
}

BOOL sub_2401D4()
{
  if (!*(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0))))
  {
    return 0;
  }

  sub_243C90();
  return v1 <= 0.5;
}

id sub_240230(void *a1)
{
  v1 = a1;
  sub_240298();

  v2 = sub_AB9260();

  return v2;
}

uint64_t sub_240298()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    v8.receiver = v0;
    v8.super_class = type metadata accessor for ContainerDetailViewController();
    v6 = objc_msgSendSuper2(&v8, "playActivityFeatureName");
    v3 = sub_AB92A0();
  }

  return v3;
}

uint64_t sub_2403B0(void *a1, uint64_t a2, void *a3)
{
  sub_AB92A0();
  v5 = a3;
  v6 = a1;
  sub_258108();
}

Class sub_240424()
{
  v0 = sub_2581A4();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    sub_9007C(v0, v1);
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

id sub_2404A0(char a1)
{
  v2 = v1;
  v4 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v22[0] = *(&stru_1F8.size + (swift_isaMask & *v1));
  v22[1] = v4;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v23, "viewWillAppear:", a1 & 1);
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for MediaPickerNavigationController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v6 = [v8 topViewController];

      if (v6)
      {
        sub_13C80(0, &qword_DE7500);
        if ((sub_ABA790() & 1) == 0)
        {
          v10 = [v1 navigationItem];
          v11 = [v2 parentViewController];
          if (v11)
          {
            v12 = v11;
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v13 = v12;
              v14 = [v13 navigationItem];

              v12 = [v13 parentViewController];
              v10 = v14;
              if (!v12)
              {
                goto LABEL_13;
              }
            }
          }

          v14 = v10;
LABEL_13:
          v15 = sub_23E05C();
          if (qword_DE6B28 != -1)
          {
            swift_once();
          }

          objc_setAssociatedObject(v14, qword_E01298, v15, &dword_0 + 1);

          sub_41D3EC(v6);
        }
      }

      else
      {
        v6 = v9;
      }
    }
  }

  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 1;
  v16 = swift_isaMask & *v2;
  v17 = *(v2 + *&stru_298.segname[v16] + 32);
  if (v17)
  {
    v18 = *(&stru_1F8.reloff + (*v17 & swift_isaMask));
    v19 = v17;
    v18(a1 & 1);

    v16 = swift_isaMask & *v2;
  }

  v20 = *(v2 + *(v16 + 856));
  *&v22[0] = 0xD000000000000015;
  *(&v22[0] + 1) = 0x8000000000B48960;
  (*(*v20 + 176))(v22);

  (*(&stru_6F8.reserved2 + (swift_isaMask & *v2)))(0, 0);
  return sub_249B20();
}

void sub_240864(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2404A0(a3);
}

void sub_2408B8(void *a1)
{
  v16 = *(&stru_1F8.size + (swift_isaMask & *v1));
  v17 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v18.receiver = v1;
  v18.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v18, "willMoveToParentViewController:", a1, v16, v17);
  if (a1)
  {
    v3 = [a1 navigationItem];
    if (v3)
    {
      v4 = v3;
      KeyPath = swift_getKeyPath();
      sub_240CF4(KeyPath, v4, 0);

      v6 = swift_getKeyPath();
      sub_240CF4(v6, v4, 0);

      v7 = swift_getKeyPath();
      sub_240CF4(v7, v4, 0);

      v8 = swift_getKeyPath();
      sub_240CF4(v8, v4, 1);

      v9 = swift_getKeyPath();
      sub_240CF4(v9, v4, 1);

      v10 = swift_getKeyPath();
      sub_240CF4(v10, v4, 0);

      v11 = swift_getKeyPath();
      sub_240CF4(v11, v4, 0);

      v12 = swift_getKeyPath();
      sub_240CF4(v12, v4, 0);

      v13 = swift_getKeyPath();
      sub_240CF4(v13, v4, 0);

      v14 = [v1 navigationItem];
      [v4 setLargeTitleDisplayMode:{objc_msgSend(v14, "largeTitleDisplayMode")}];

      v15 = [v1 navigationItem];
      [v4 setHidesSearchBarWhenScrolling:{objc_msgSend(v15, "hidesSearchBarWhenScrolling")}];
    }
  }
}

void sub_240B2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_240B94(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle:?];
}

void sub_240C04(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (qword_DE6B28 != -1)
  {
    v6 = *a2;
    v7 = v3;
    swift_once();
    v4 = v6;
    v3 = v7;
  }

  v5 = qword_E01298;

  objc_setAssociatedObject(v4, v5, v3, &dword_0 + 1);
}

void sub_240C88(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2408B8(a3);
}

uint64_t sub_240CF4(void *a1, void *a2, int a3)
{
  v26 = a3;
  v24 = a2;
  v3 = *(*a1 + class metadata base offset for ReferenceWritableKeyPath + 8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(v3 + 16);
  v12 = *(v11 - 8);
  __chkstk_darwin(v8);
  v25 = &v22 - v13;
  v23 = v14;
  v15 = [v14 navigationItem];
  v27[4] = v15;
  v16 = swift_readAtKeyPath();
  (*(v4 + 16))(v10);
  v16(v27, 0);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v18 = v25;
  (*(v12 + 32))(v25, v10, v11);
  (*(v12 + 16))(v7, v18, v11);
  v19 = *(v12 + 56);
  v19(v7, 0, 1, v11);
  v27[0] = v24;
  v20 = v24;
  swift_setAtReferenceWritableKeyPath();

  if (v26)
  {
    v21 = [v23 navigationItem];
    v19(v7, 1, 1, v11);
    v27[0] = v21;
    swift_setAtReferenceWritableKeyPath();
  }

  return (*(v12 + 8))(v18, v11);
}

void sub_241058(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for MetricsEvent.Page(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 560);
  v25[0] = *(v4 + 544);
  v25[1] = v12;
  v13 = type metadata accessor for ContainerDetailViewController();
  v26.receiver = v2;
  v26.super_class = v13;
  objc_msgSendSuper2(&v26, "viewDidAppear:", a1 & 1);
  v14 = swift_isaMask;
  v15 = swift_isaMask & *v2;
  v16 = *(v2 + *&stru_338.segname[v15 + 8]);
  if (v16)
  {
    v17 = *(*v16 + 264);

    v17(v18);

    v14 = swift_isaMask;
    v15 = swift_isaMask & *v2;
  }

  v19 = *(v2 + *(v15 + 680) + 32);
  if (v19)
  {
    v20 = *(&stru_1F8.flags + (*v19 & v14));
    v21 = v19;
    v20(a1 & 1);
  }

  sub_2447E8();
  sub_130028(1);

  sub_23F3E8(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &qword_DFDD40);
  }

  else
  {
    sub_2591E8(v7, v11, type metadata accessor for MetricsEvent.Page);
    if (*(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32))
    {
      sub_259250(v11, type metadata accessor for MetricsEvent.Page);
    }

    else
    {
      v22 = MetricsReportingController.shared.unsafeMutableAddressor();
      v23 = *(&stru_68.reloff + (swift_isaMask & **v22));
      v24 = *v22;
      v23(v11, 0, 0, 0, 0, 0);
      sub_259250(v11, type metadata accessor for MetricsEvent.Page);
    }
  }

  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 1;
}

void sub_241404(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_241058(a3);
}

void sub_241458(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = swift_isaMask & *v2;
  v5 = *(&stru_1F8.offset + v4);
  v39 = *(v5 - 8);
  __chkstk_darwin(a1);
  v36 = &v33 - v6;
  v7 = sub_ABA9C0();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v10);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = *(v4 + 544);
  *(&v15 + 1) = v5;
  v35 = *(v4 + 560);
  v41 = v15;
  v42 = v35;
  v16 = type metadata accessor for ContainerDetailViewController();
  v43.receiver = v2;
  v43.super_class = v16;
  objc_msgSendSuper2(&v43, "viewWillDisappear:", v3 & 1);
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  v17 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 32);
  if (v17)
  {
    v18 = *(&stru_1F8.reserved2 + (*v17 & swift_isaMask));
    v19 = v17;
    v18(v3 & 1);
  }

  if (sub_2B510C())
  {
    v20 = [v2 navigationController];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 topViewController];

      if (v22)
      {
        v23 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
        if (*v23)
        {
          v33 = v23[1];
          v34 = v22;
          *v40 = 1;
          swift_storeEnumTagMultiPayload();
          v24 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
          v25 = swift_unknownObjectRetain();
          v24(v25);
          v26 = v39;
          if ((*(v39 + 48))(v9, 1, v5))
          {
            (*(v37 + 8))(v9, v38);
            v27 = 0;
          }

          else
          {
            v28 = v36;
            (*(v26 + 16))(v36, v9, v5);
            (*(v37 + 8))(v9, v38);
            v27 = (*(*(&v35 + 1) + 24))(v5);
            (*(v26 + 8))(v28, v5);
          }

          ObjectType = swift_getObjectType();
          v30 = v12[6];
          v31 = v12[7];
          v32 = v12[8];
          sub_2591E8(v40, v14, type metadata accessor for Metrics.Event.Action);
          v14[v12[5]] = 0;
          *&v14[v30] = v27;
          *&v14[v31] = 0;
          *&v14[v32] = 0;
          (*(v33 + 32))(v14, ObjectType);
          sub_259250(v14, type metadata accessor for Metrics.Event);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

void sub_241980(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_241458(a3);
}

uint64_t sub_2419D4(char a1)
{
  v2 = v1;
  v13 = *(&stru_1F8.size + (swift_isaMask & *v1));
  v14 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v15, "viewDidDisappear:", a1 & 1, v13, v14);
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = *(v1 + *&stru_338.segname[v5 + 8]);
  if (v6)
  {
    v7 = *(*v6 + 272);

    v7(v8);

    v4 = swift_isaMask;
    v5 = swift_isaMask & *v2;
  }

  v9 = *(v2 + *(v5 + 680) + 32);
  if (v9)
  {
    v10 = *&stru_248.sectname[*v9 & v4];
    v11 = v9;
    v10(a1 & 1);
  }

  sub_2447E8();
  sub_127EB8();

  sub_130028(0);

  return (*(&stru_428.offset + (swift_isaMask & *v2)))(1);
}

void sub_241BD8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2419D4(a3);
}

id sub_241C2C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v7 = *(&stru_1F8.size + (v3 & v2));
  v8 = *(&stru_1F8.offset + (v3 & v2));
  v9 = *(&stru_1F8.reloff + (v3 & v2));
  v10 = *(&stru_1F8.flags + (v3 & v2));
  *&v73 = v7;
  *(&v73 + 1) = v8;
  *&v74 = v9;
  *(&v74 + 1) = v10;
  v11 = type metadata accessor for ContainerDetailViewController();
  v72.receiver = v0;
  v72.super_class = v11;
  v61 = v11;
  objc_msgSendSuper2(&v72, "viewDidLoad");
  v12 = (v1 + *&stru_298.segname[swift_isaMask & *v1]);
  v13 = v12[3];
  v75 = v12[2];
  v76 = v13;
  v77 = v12[4];
  v14 = v12[1];
  v73 = *v12;
  v74 = v14;
  sub_70EB0(&v73, &aBlock);
  v15 = sub_24EAB8(&v73);
  sub_70F0C(&v73);
  *(v1 + *(&stru_338.size + (swift_isaMask & *v1))) = v15;
  sub_24E4FC();
  sub_256154();
  v16 = objc_opt_self();
  v17 = [v16 sharedMonitor];
  v18 = [v17 isRemoteServerLikelyReachable];

  if (v18 && (v65 = *(v1 + *(&stru_338.size + (swift_isaMask & *v1))), v64 = 3, aBlock = v7, v67 = v8, v68 = v9, v69 = v10, type metadata accessor for ContainerDetailViewController.Layout(), swift_getWitnessTable(), (sub_ABB400() & 1) != 0))
  {
    result = [v1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = sub_24E69C();
    [v20 addSubview:v21];

    v22 = objc_opt_self();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v7;
    v24[3] = v8;
    v24[4] = v9;
    v24[5] = v10;
    v24[6] = v23;
    v70 = sub_2591B0;
    v71 = v24;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_1546C;
    v69 = &block_descriptor_213_0;
    v25 = _Block_copy(&aBlock);

    v26 = [v22 scheduledTimerWithTimeInterval:0 repeats:v25 block:2.0];
    _Block_release(v25);
    v27 = *(&stru_338.offset + (swift_isaMask & *v1));
    v28 = *(v1 + v27);
    *(v1 + v27) = v26;
  }

  else
  {
    v29 = *&stru_338.segname[(swift_isaMask & *v1) - 8];
    v30 = *(v1 + v29);
    *(v1 + v29) = 1;
    sub_24C1A8(v30);
  }

  v60 = v16;
  v65 = *(v1 + *(&stru_338.size + (swift_isaMask & *v1)));
  v64 = 3;
  aBlock = v7;
  v67 = v8;
  v68 = v9;
  v69 = v10;
  type metadata accessor for ContainerDetailViewController.Layout();
  swift_getWitnessTable();
  v31 = sub_ABB400();
  v32 = *v1;
  v33 = swift_isaMask;
  v63 = v7;
  if (v31)
  {
    goto LABEL_11;
  }

  v34 = *(v1 + *&stru_298.segname[swift_isaMask & v32] + 24);
  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = *&stru_1A8.segname[(*v34 & swift_isaMask) + 8];
  v36 = v34;
  v37 = v35();

  if (!v37)
  {
    v32 = *v1;
    v33 = swift_isaMask;
LABEL_11:
    v38 = *(v1 + *(&stru_248.reserved2 + (v33 & v32)));
    v39 = *&stru_5B8.segname[(**(v1 + *(&stru_248.reloff + (v33 & v32))) & v33) - 8];
    v40 = v38;
    v39(v38);
    goto LABEL_12;
  }

  sub_24C2A8(v37);

LABEL_12:
  sub_250C1C();
  v41 = swift_isaMask & *v1;
  v42 = *(v1 + *&stru_298.segname[v41] + 32);
  if (v42)
  {
    v43 = *(&stru_1F8.offset + (*v42 & swift_isaMask));
    v44 = v42;
    v43();

    v41 = swift_isaMask & *v1;
  }

  v45 = *(v1 + *(v41 + 648));
  if (qword_DE6C80 != -1)
  {
    swift_once();
  }

  [v45 setViewBackgroundColor:qword_E718C0];
  sub_A2FD8(0);
  (*(&stru_6F8.offset + (swift_isaMask & *v1)))(0, _swiftEmptyArrayStorage);
  (*(&stru_6F8.reloff + (swift_isaMask & *v1)))(*(v1 + *(&stru_248.reserved2 + (swift_isaMask & *v1))));
  v46 = sub_23D9EC();
  [v46 addTarget:v1 action:"addKeepLocalControlAction:" forControlEvents:64];

  [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) addTarget:v1 action:"mediaPickerAddAction:" forControlEvents:64];
  aBlock = v1;
  v47 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:sub_ABB3A0() action:"presentPlaylistPicker:"];
  swift_unknownObjectRelease();
  [*(v1 + *&stru_248.sectname[swift_isaMask & *v1]) addGestureRecognizer:v47];
  v48 = sub_23E120();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v49 = sub_AB9260();

  [v48 setAccessibilityLabel:v49];

  v50 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  [*(v1 + v50) setContextMenuInteractionEnabled:1];
  [*(v1 + v50) setShowsMenuAsPrimaryAction:1];
  v51 = [v60 sharedMonitor];
  [v51 registerObserver:v1];

  sub_2502E0();
  v52 = [v1 traitCollection];
  v53 = UITraitCollection.isMediaPicker.getter();

  if (!v53)
  {
    v54 = sub_23CD04();
    sub_23E2D4(v54, 0);
  }

  v55 = *(v1 + *(&stru_298.offset + (swift_isaMask & *v1)));
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v57[2] = v63;
  v57[3] = v8;
  v57[4] = v9;
  v57[5] = v10;
  v57[6] = v56;
  v58 = *(v55 + 16);
  *(v55 + 16) = sub_25919C;
  *(v55 + 24) = v57;

  sub_17654(v58);
}

void sub_2426A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + *&stru_298.segname[swift_isaMask & *Strong] + 56))
    {
      *(Strong + *(&stru_338.size + (swift_isaMask & *Strong))) = 1;
      sub_24E4FC();
      sub_24E818(0);
    }

    else
    {
      v2 = sub_24E69C();
      LoadingView.style.setter(0x100000000);

      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      aBlock[4] = sub_2591E0;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_219_0;
      v5 = _Block_copy(aBlock);
      v6 = v1;

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:4.0];
      _Block_release(v5);
      v8 = *(&stru_338.offset + (swift_isaMask & *v6));
      v1 = *(v6 + v8);
      *(v6 + v8) = v7;
    }
  }
}

void sub_2428A0(uint64_t a1, void *a2)
{
  *(a2 + *(&stru_338.size + (swift_isaMask & *a2))) = 1;
  sub_24E4FC();
  sub_24E818(0);
}

void sub_2428FC(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24AD48(a1, a2 & 1);
  }
}

void sub_24296C(void *a1)
{
  v1 = a1;
  sub_241C2C();
}

void sub_2429B4()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v45.receiver = v0;
  v45.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v45, "viewDidLayoutSubviews");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = v3;
  [v3 bounds];
  v5 = (v0 + *(&stru_338.reserved2 + (swift_isaMask & *v0)));
  v6 = *v5;
  v7 = v5[1];
  *v5 = v8;
  *(v5 + 1) = v9;
  sub_24F9BC(v6, v7);

  sub_2439A8();
  v10 = [v0 navigationItem];
  v11 = [v0 parentViewController];
  if (v11)
  {
    v12 = v11;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v13 = v12;
      v14 = [v13 navigationItem];

      v12 = [v13 parentViewController];
      v10 = v14;
      if (!v12)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = v10;
LABEL_9:
  v15 = [v14 searchController];

  if (v15)
  {
    v16 = [v15 searchBar];

    if (v16)
    {
      v17 = [v0 view];
      if (v17)
      {
        v18 = v17;
        [v17 music_inheritedLayoutInsets];
        v20 = v19;
        v22 = v21;

        v23 = [v0 traitCollection];
        v24 = [v23 horizontalSizeClass];

        if (v24 != &dword_0 + 1)
        {
LABEL_15:
          [v16 _setOverrideContentInsets:15 forRectEdges:{4.0, v20, 16.0, v22}];
          v28 = [v16 searchTextField];
          if (*(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0))))
          {
            v29 = (*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))();
            v30 = objc_opt_self();
            v31 = &selRef_secondaryLabelColor;
            if ((v29 & 1) == 0)
            {
              v31 = &selRef_whiteColor;
            }

            v32 = [v30 *v31];
            v33 = v28;
            v34 = [v33 leftView];
            if (v34)
            {
              v35 = v34;
              [v34 setTintColor:v32];
            }

            v36 = [v33 rightView];
            if (v36)
            {
              v37 = v36;
              [v36 setTintColor:v32];
            }

            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_AF4EC0;
            *(inited + 32) = NSForegroundColorAttributeName;
            *(inited + 64) = sub_13C80(0, qword_DFAAC0);
            *(inited + 40) = v32;
            v39 = NSForegroundColorAttributeName;
            v40 = v32;
            sub_96EB8(inited);
            swift_setDeallocating();
            sub_12E1C(inited + 32, &qword_DE6EE8);
            v41 = objc_allocWithZone(NSAttributedString);
            v42 = sub_AB9260();
            type metadata accessor for Key(0);
            sub_256CA4(&qword_DE6EF0, type metadata accessor for Key);
            isa = sub_AB8FD0().super.isa;

            v44 = [v41 initWithString:v42 attributes:isa];

            [v33 setAttributedPlaceholder:v44];
          }

          else
          {
            v33 = v16;
          }

          return;
        }

        v25 = [v0 view];
        if (v25)
        {
          v26 = v25;
          [v25 layoutMargins];
          v22 = v27;

          goto LABEL_15;
        }

LABEL_28:
        __break(1u);
        return;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }
}

void sub_242FFC(void *a1)
{
  v1 = a1;
  sub_2429B4();
}

id sub_243044(char a1, uint64_t a2)
{
  v6 = *(&stru_1F8.size + (swift_isaMask & *v2));
  v7 = *(&stru_1F8.reloff + (swift_isaMask & *v2));
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v8, "setEditing:animated:", a1 & 1, a2 & 1, v6, v7);
  (*(&stru_6F8.offset + (swift_isaMask & *v2)))(a2, _swiftEmptyArrayStorage);
  sub_24BB90();
  [*(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) setEditing:a1 & 1 animated:a2 & 1];
  return sub_249B20();
}

void sub_243168(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  sub_243044(a3, a4);
}

void sub_2431C4(void *a1)
{
  v14 = *(&stru_1F8.size + (swift_isaMask & *v1));
  v15 = *(&stru_1F8.reloff + (swift_isaMask & *v1));
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1, v14, v15);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_AB92A0();
    v8 = v7;
    if (v6 == sub_AB92A0() && v8 == v9)
    {

      goto LABEL_15;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = *(v1 + *&stru_338.sectname[swift_isaMask & *v1]);
  [*(v12 + 64) removeAllObjects];
  [*(v12 + 80) removeAllObjects];
  if (*(v12 + 96))
  {
    *(v12 + 104) = 1;
  }

  else
  {
    v13 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v12];
  }

LABEL_15:
  sub_250C1C();
  sub_24BB44();
}

void sub_24340C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2431C4(a3);
}

void sub_243478()
{
  v1 = *(&stru_1F8.size + (swift_isaMask & *v0));
  v2 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v3, "viewSafeAreaInsetsDidChange", v1, v2);
  sub_2439A8();
}

void sub_2434F4(void *a1)
{
  v1 = a1;
  sub_243478();
}

void sub_24353C(void *a1, double a2, double a3)
{
  v7 = *(&stru_1F8.reloff + (swift_isaMask & *v3));
  v11 = *(&stru_1F8.size + (swift_isaMask & *v3));
  v12 = v7;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ContainerDetailViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3, v11, v12);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v13 = sub_259194;
  v14 = v8;
  *&v11 = _NSConcreteStackBlock;
  *(&v11 + 1) = 1107296256;
  *&v12 = sub_CF24C;
  *(&v12 + 1) = &block_descriptor_202_0;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
}

void sub_243690(uint64_t a1, void *a2)
{
  v2 = (*(&stru_158.offset + (**(a2 + *(&stru_248.reloff + (swift_isaMask & *a2))) & swift_isaMask)))();
  v3 = [v2 collectionViewLayout];

  [v3 invalidateLayout];
  sub_2437D0();
  sub_24BB90();
}

void sub_243750(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_24353C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_2437D0()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 <= 592.0)
  {
  }

  else
  {
    v8 = sub_ABA340();

    if (v8)
    {
      v9 = 0;
      v10 = swift_isaMask;
      v11 = swift_isaMask & *v1;
      v12 = 1;
      goto LABEL_7;
    }
  }

  v10 = swift_isaMask;
  v11 = swift_isaMask & *v1;
  v12 = 2 * (*(v1 + *(&stru_298.reserved2 + v11)) != 0);
  v9 = 1;
LABEL_7:
  (*(&stru_5B8.reloff + (**(v1 + *(v11 + 640)) & v10)))(v12);
  v13 = sub_23F31C();
  if (v13)
  {
    v14 = v13;
    [v13 updateAlignment:v9];
  }
}

void sub_2439A8()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v2 = v0;
    v30 = v1;
    v3 = sub_4D3DD0();
    [v3 bounds];
    [v30 setFrame:?];

    v4 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
    v5 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
    [*(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView) bounds];
    Width = CGRectGetWidth(v32);
    [*(v2 + v5) bounds];
    [v4 sizeThatFits:{Width, CGRectGetHeight(v33)}];
    v8 = v7;
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      [v9 safeAreaInsets];
      v12 = v11;

      v13.n128_f64[0] = v8 + v12;
      v14 = v30;
      v15 = *&v30[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight];
      *&v30[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] = v8 + v12;
      if (v8 + v12 != v15)
      {
        v14 = [v30 setNeedsLayout];
      }

      v16 = (*&stru_5B8.sectname[**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask])(v14, v13);
      v17 = v30;
      if (v16)
      {
        v18 = v16;
        [v30 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v34.origin.x = v20;
        v34.origin.y = v22;
        v34.size.width = v24;
        v34.size.height = v26;
        CGRectGetWidth(v34);
        [v18 bounds];
        [v18 setBounds:?];
        v17 = v18;
      }

      v27 = *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]);
      if (v27)
      {
        v28 = *(*v27 + 264);

        v28(v29);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_243C90()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_ABA320();
  if (v2)
  {
    v4 = *(v1 + *(&stru_298.reserved2 + (swift_isaMask & *v1)));
    if (v4)
    {
      [v4 frame];
      CGRectGetHeight(v18);
    }
  }

  else
  {
    v5 = [v1 view];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    CGRectGetWidth(v19);
  }

  v15 = sub_4D3DD0();
  UIScrollView.normalizedContentOffset.getter();

  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_243E70()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView);
    sub_243C90();
    v3 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha;
    v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha];
    *&v2[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha] = v5;
    v7 = v5;
    v8 = v4;
    if (sub_AB38D0())
    {
      v6 = sub_4F2C2C();
      [v6 setAlpha:{*&v2[v3], v7, v8}];

      v2 = v6;
    }
  }
}

void sub_243F48()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v61 - v6;
  v8 = [v0 navigationItem];
  v9 = [v1 parentViewController];
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v11 = v10;
      v12 = [v11 navigationItem];

      v10 = [v11 parentViewController];
      v8 = v12;
      if (!v10)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = v8;
LABEL_8:
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v1)))() & 1) == 0)
  {
    v14 = [objc_opt_self() whiteColor];
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 tintColor];

      if (v17)
      {
        sub_243C90();
        v13 = UIColor.interpolate(to:ratio:)(v17, v18);

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v13 = 0;
LABEL_13:
  [v12 setPreferredNavigationBarTintColor:v13];

  sub_243C90();
  v20 = v19;
  v21 = sub_23E120();
  v22 = *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]);
  v23 = *(&stru_1A8.reloff + (*v22 & swift_isaMask));
  v24 = v22;
  v23();

  if (v20 >= 0.25)
  {
    v48 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = v48[3];

    v53 = v50;
    SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v49, v50, v51, v52, 0, 0, v7);
    sub_259250(v5, type metadata accessor for SymbolButton.Configuration);

    v30 = SymbolButton.Animation.default.unsafeMutableAddressor();
    (*&stru_1F8.segname[(swift_isaMask & *v21) + 8])(v7, *v30, v30[1], v30[2], 0, _swiftEmptyArrayStorage);
    sub_259250(v7, type metadata accessor for SymbolButton.Configuration);

    v31 = sub_23D9EC();
    v54 = *(v1 + *&stru_248.sectname[swift_isaMask & *v1]);
    v55 = *(&stru_1A8.reloff + (*v54 & swift_isaMask));
    v56 = v54;
    v55();

    v57 = *v48;
    v58 = v48[1];
    v60 = v48[2];
    v59 = v48[3];

    v39 = v58;
    v41 = v7;
    v42 = 0;
    v43 = v57;
    v44 = v58;
    v45 = v60;
    v46 = v59;
    v47 = 0;
    v40 = 0;
  }

  else
  {
    v62 = "UISceneActivationState";
    v25 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];

    v61 = v27;
    SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(1, v26, v27, v28, v29, 0xD00000000000001DLL, 0x8000000000B59DF0, v7);
    sub_259250(v5, type metadata accessor for SymbolButton.Configuration);

    v30 = SymbolButton.Animation.default.unsafeMutableAddressor();
    (*&stru_1F8.segname[(swift_isaMask & *v21) + 8])(v7, *v30, v30[1], v30[2], 0, _swiftEmptyArrayStorage);
    sub_259250(v7, type metadata accessor for SymbolButton.Configuration);

    v31 = sub_23D9EC();
    v32 = *(v1 + *&stru_248.sectname[swift_isaMask & *v1]);
    v33 = *(&stru_1A8.reloff + (*v32 & swift_isaMask));
    v34 = v32;
    v33();

    v35 = *v25;
    v36 = v25[1];
    v38 = v25[2];
    v37 = v25[3];

    v39 = v36;
    v40 = v62 | 0x8000000000000000;
    v41 = v7;
    v42 = 1;
    v43 = v35;
    v44 = v36;
    v45 = v38;
    v46 = v37;
    v47 = 0xD00000000000001DLL;
  }

  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(v42, v43, v44, v45, v46, v47, v40, v41);
  sub_259250(v5, type metadata accessor for SymbolButton.Configuration);

  (*&stru_1F8.segname[(swift_isaMask & *v31) + 8])(v7, *v30, v30[1], v30[2], 0, _swiftEmptyArrayStorage);
  sub_259250(v7, type metadata accessor for SymbolButton.Configuration);

  [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_244654()
{
  if (((*(&stru_4C8.reserved2 + (swift_isaMask & *v0)))() & 1) != 0 && (v1 = (*&stru_4C8.segname[swift_isaMask & *v0])()) != 0)
  {
    v2 = v1;
    v3 = [v1 isEmpty];
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_isaMask;
  v5 = swift_isaMask & *v0;
  v6 = *(v0 + *(&stru_298.reserved2 + v5));
  if (v6)
  {
    [*(*(v6 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) setHidden:v3];
    v4 = swift_isaMask;
    v5 = swift_isaMask & *v0;
  }

  v7 = (*&stru_5B8.sectname[**(v0 + *(v5 + 640)) & v4])();
  [v7 setHidden:v3];
}

uint64_t sub_2447E8()
{
  v1 = *(&stru_2E8.size + (swift_isaMask & *v0));
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for ContainerDetailViewController();
    type metadata accessor for VerticalStackViewControllerImpressionTracker();
    v3 = v0;
    v4 = sub_4D3DD0();
    v2 = sub_17E4C(v3, v4, _swiftEmptyArrayStorage, 1);
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_2448F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v75 = swift_isaMask & *v2;
  v6 = *(&stru_1F8.offset + (swift_isaMask & v5));
  v73 = *(v6 - 8);
  __chkstk_darwin(a1);
  v72 = &v66 - v7;
  v8 = sub_ABA9C0();
  v9 = __chkstk_darwin(v8);
  v12 = &v66 - v11;
  if (a1 == -3)
  {
    *&v79 = 0xD000000000000019;
    *(&v79 + 1) = 0x8000000000B4E290;
    *&v80 = 0xD000000000000019;
    *(&v80 + 1) = 0x8000000000B4E290;
    v81 = xmmword_AFAA70;
    LOWORD(v82[0]) = 512;
    BYTE2(v82[0]) = 20;
    *(v82 + 8) = 0u;
    *(&v82[1] + 8) = 0u;
    *(&v82[2] + 8) = 0u;
    *(&v82[3] + 8) = 0u;
    *(&v82[4] + 1) = 0;
    LOBYTE(v83[0]) = 1;
    *(&v83[0] + 1) = 0;
    *&v83[1] = 0;
    BYTE8(v83[1]) = 2;
    *&v84 = 0xD000000000000019;
    *(&v84 + 1) = 0x8000000000B4E290;
    v85 = 0xD000000000000019;
    v86 = 0x8000000000B4E290;
    v87 = xmmword_AFAA70;
    v88 = 512;
    v89 = 20;
    v94 = 0;
    memset(v93, 0, sizeof(v93));
    v92 = 0u;
    v95 = 1;
    v97 = 0;
    v98 = 0;
    v99 = 2;
    sub_465F4(&v79, &v109);
    sub_46650(&v84);
    v106 = v82[3];
    v107 = v82[4];
    v108[0] = v83[0];
    *(v108 + 9) = *(v83 + 9);
    v102 = v81;
    v103 = v82[0];
    v104 = v82[1];
    v105 = v82[2];
    v100 = v79;
    v101 = v80;
    UIScreen.Dimensions.size.getter(*&v79);
    v115 = v106;
    v116 = v107;
    v117[0] = v108[0];
    v18 = *(v108 + 9);
LABEL_54:
    *(v117 + 9) = v18;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v114 = v105;
    v109 = v100;
    v110 = v101;
    goto LABEL_55;
  }

  if (a1 == -1)
  {
    v67 = v10;
    v68 = v9;
    v13 = *(v2 + *(v75 + 680) + 8);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
      swift_beginAccess();
      v15 = *&v13[v14];
      if (v15)
      {
        v16 = v13;
        v17 = v15;
        if ([v17 storeID])
        {
          sub_ABAB50();

          swift_unknownObjectRelease();
        }

        else
        {
          v109 = 0u;
          v110 = 0u;
        }

        sub_15F84(&v109, &v100, &unk_DE8E40);
        if (*(&v101 + 1))
        {
          sub_9ACFC(&v100, &v84);
          __swift_project_boxed_opaque_existential_1(&v84, v86);
          sub_ABB3A0();
          v20 = MPStoreItemMetadataStringNormalizeStoreIDValue();
          if (v20)
          {
            v21 = v20;
            v71 = sub_AB92A0();
            v23 = v22;
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            v71 = 0;
            v23 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(&v84);
          sub_12E1C(&v109, &unk_DE8E40);
LABEL_18:
          v24 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
          v25 = *(*(v24 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
          v26 = *v25;
          v27 = *(v25 + 8);
          v28 = *(v25 + 16);
          v74 = v13;
          v69 = v24;
          if (v28 > 1)
          {
            if (v28 != 2)
            {
              v31 = 0;
              v33 = 0xE000000000000000;
              goto LABEL_24;
            }
          }

          else if (v28)
          {
            v29 = [v26 string];
            v70 = v23;
            v30 = v29;
            v31 = sub_AB92A0();
            v33 = v32;

            v23 = v70;
            sub_2372F0(v26, v27, 1);
            goto LABEL_25;
          }

          v31 = v26;
          v33 = v27;
LABEL_24:
          sub_258078(v26, v27, v28);
LABEL_25:

          if ((v33 & 0x2000000000000000) != 0)
          {
            v35 = HIBYTE(v33) & 0xF;
            v36 = v74;
            if (!v35)
            {
LABEL_30:
              v70 = v23;
              if (v36)
              {
                v37 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
                v34 = swift_beginAccess();
                v38 = *&v36[v37];
                if (v38)
                {
                  v39 = v38;
                  v40 = [v39 name];
                  if (v40)
                  {
                    v41 = v40;
                    v42 = sub_AB92A0();
                    v44 = v43;

                    v45 = v69;
LABEL_37:
                    v47 = v36[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
                    v75 = v42;
                    v73 = v44;
                    if (v47 == 2)
                    {
                      LODWORD(v72) = 0;
                    }

                    else
                    {
                      if (v47 == 3)
                      {
                        v48 = 2;
                      }

                      else
                      {
                        v48 = 1;
                      }

                      LODWORD(v72) = v48;
                    }

                    v68 = v36;
LABEL_46:
                    v51 = v35 == 0;
                    v53 = *(v45 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
                    v52 = *(v45 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText + 8);

                    v54 = v36;

                    v74 = v36;
                    if (v36)
                    {
                      type metadata accessor for JSMediaItem();
                      v55 = swift_dynamicCastClass();
                      if (v55)
                      {
                        v56 = *&stru_1A8.sectname[swift_isaMask & *v55];
                        v57 = v54;
                        v54 = v56();

                        v58 = v54 != 0;
LABEL_53:

                        *&v79 = v71;
                        *(&v79 + 1) = v70;
                        *&v80 = v75;
                        *(&v80 + 1) = v73;
                        v81 = v68;
                        LOBYTE(v82[0]) = v58;
                        *(v82 + 3) = v77;
                        BYTE7(v82[0]) = v78;
                        DWORD1(v83[0]) = *&v76[3];
                        *(v83 + 1) = *v76;
                        BYTE1(v82[0]) = 2;
                        BYTE2(v82[0]) = v72;
                        *(&v82[0] + 1) = 0;
                        *&v82[1] = 0;
                        *(&v82[1] + 1) = v74;
                        memset(&v82[2], 0, 32);
                        *&v82[4] = v53;
                        *(&v82[4] + 1) = v52;
                        LOBYTE(v83[0]) = v51;
                        *(&v83[0] + 1) = 0;
                        *&v83[1] = 0;
                        BYTE8(v83[1]) = 2;
                        *&v84 = v71;
                        *(&v84 + 1) = v70;
                        v85 = v75;
                        v86 = v73;
                        v87 = v68;
                        LOBYTE(v88) = v58;
                        HIBYTE(v88) = 2;
                        v89 = v72;
                        v91 = v78;
                        v90 = v77;
                        v92 = 0uLL;
                        v93[0] = v74;
                        memset(&v93[1], 0, 32);
                        v93[5] = v53;
                        v94 = v52;
                        v95 = v51;
                        *v96 = *v76;
                        *&v96[3] = *&v76[3];
                        v97 = 0;
                        v98 = 0;
                        v99 = 2;
                        sub_465F4(&v79, &v109);
                        sub_46650(&v84);
                        v106 = v82[3];
                        v107 = v82[4];
                        v108[0] = v83[0];
                        *(v108 + 9) = *(v83 + 9);
                        v102 = v81;
                        v103 = v82[0];
                        v104 = v82[1];
                        v105 = v82[2];
                        v100 = v79;
                        v101 = v80;
                        UIScreen.Dimensions.size.getter(*&v79);
                        v115 = v106;
                        v116 = v107;
                        v117[0] = v108[0];
                        v18 = *(v108 + 9);
                        goto LABEL_54;
                      }

                      type metadata accessor for JSSearchLandingUpsell();
                      if (swift_dynamicCastClass())
                      {
                        v59 = v54;
                        v60 = JSSearchLandingUpsell.tallVideoArtwork.getter();
                        if (v60)
                        {
                          v54 = v60;

                          v58 = 1;
                        }

                        else
                        {
                          v54 = JSSearchLandingUpsell.wideArtwork.getter();

                          v58 = v54 != 0;
                        }

                        goto LABEL_53;
                      }
                    }

                    v58 = 0;
                    goto LABEL_53;
                  }
                }
              }

              (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(v34);
              v46 = v73;
              if ((*(v73 + 48))(v12, 1, v6))
              {
                (*(v67 + 8))(v12, v68);
                v42 = 0;
                v44 = 0;
                v45 = v69;
                if (v36)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v49 = v72;
                (*(v46 + 16))(v72, v12, v6);
                (*(v67 + 8))(v12, v68);
                v42 = (*(*(v75 + 568) + 48))(v6);
                v44 = v50;
                (*(v46 + 8))(v49, v6);
                v45 = v69;
                if (v36)
                {
                  goto LABEL_37;
                }
              }

              v73 = v44;
              v75 = v42;
              LODWORD(v72) = 20;
              v68 = 8;
              goto LABEL_46;
            }
          }

          else
          {
            v35 = v31 & 0xFFFFFFFFFFFFLL;
            v36 = v74;
            if (!v35)
            {
              goto LABEL_30;
            }
          }

          v23 = 0xE500000000000000;
          v71 = 0x7365746F6ELL;
          goto LABEL_30;
        }

        sub_12E1C(&v109, &unk_DE8E40);
      }

      else
      {
        v19 = v13;
      }
    }

    v71 = 0;
    v23 = 0;
    goto LABEL_18;
  }

  sub_465CC(&v109);
LABEL_55:
  v61 = v116;
  a2[6] = v115;
  a2[7] = v61;
  a2[8] = v117[0];
  *(a2 + 137) = *(v117 + 9);
  v62 = v112;
  a2[2] = v111;
  a2[3] = v62;
  v63 = v114;
  a2[4] = v113;
  a2[5] = v63;
  result = *&v109;
  v65 = v110;
  *a2 = v109;
  a2[1] = v65;
  return result;
}

void sub_2452B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a1;
  v60 = a2;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v57 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v61 = &v54 - v18;
  v19 = *&v3[*(&stru_248.reloff + (v5 & v4))];
  v58 = v6;
  v55 = *(v6 + 1240);
  v56 = (v6 + 1240);
  v20 = (v55)(v17);
  v21 = sub_AB3820();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (*(&stru_6A8.offset + (swift_isaMask & *v19)))(v20, v9);
  sub_12E1C(v9, &unk_DE8E20);

  v22 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &unk_DEA510);
  }

  else
  {
    v23 = v61;
    sub_2591E8(v12, v61, type metadata accessor for PlaybackIntentDescriptor);
    v24 = v59;
    [v59 bounds];
    v72[0] = v24;
    v72[1] = v25;
    v72[2] = v26;
    v72[3] = v27;
    v72[4] = v28;
    v73 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v72, 15, v64);
    v68[0] = v64[0];
    v68[1] = v64[1];
    v69 = v65;
    v70 = v66;
    v71 = v67;
    v29 = v24;
    v30 = v3;
    v31 = PresentationSource.init(viewController:position:)(v30, v68, v63);
    v32 = (*(&stru_6A8.size + (swift_isaMask & *v19)))(v31);
    if (v32)
    {
      v33 = v32;
      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      v59 = qword_E70E48;
      v56 = v55();
      v34 = v23;
      v35 = v57;
      sub_2594D8(v34, v57, type metadata accessor for PlaybackIntentDescriptor);
      sub_15F28(v63, v62);
      v36 = (*(v22 + 80) + 48) & ~*(v22 + 80);
      v37 = (v15 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      v41 = v58;
      *(v40 + 16) = *(v58 + 544);
      *(v40 + 24) = *(v41 + 552);
      *(v40 + 40) = *(v41 + 568);
      sub_2591E8(v35, v40 + v36, type metadata accessor for PlaybackIntentDescriptor);
      *(v40 + v37) = v60;
      *(v40 + v38) = v30;
      *(v40 + v39) = v33;
      sub_17704(v62, v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
      v42 = v30;
      v43 = v33;
      v44 = v33;
      v45 = v56;
      sub_1109D4(v44, v56, 0, 1, v63, sub_257FB8, v40);
    }

    else
    {
      sub_15F28(v63, v62);
      sub_245974(0, v62, v23, v60, v30);
      sub_12E1C(v62, &unk_DEA520);
    }

    v46 = [v30 navigationItem];
    v47 = [v30 parentViewController];
    if (v47)
    {
      v48 = v47;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v49 = v48;
        v50 = [v49 navigationItem];

        v48 = [v49 parentViewController];
        v46 = v50;
        if (!v48)
        {
          goto LABEL_15;
        }
      }
    }

    v50 = v46;
LABEL_15:
    v51 = [v50 searchController];
    if (v51)
    {
      v52 = v51;

      v50 = [v52 searchBar];
      [v50 resignFirstResponder];
    }

    v53 = v61;
    sub_1611C(v63);
    sub_259250(v53, type metadata accessor for PlaybackIntentDescriptor);
  }
}

void sub_245974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = PlaybackIntentDescriptor.intent.getter(v13);
  [v14 setShuffleMode:a4];

  v16 = PlaybackIntentDescriptor.intent.getter(v15);
  [v16 setRepeatMode:0];

  if (!a1 || (v24[1] = a1, sub_13C80(0, &qword_DEDE20), v17 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA9B0), (swift_dynamicCast() & 1) == 0))
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_10;
  }

  if (!*(&v26 + 1))
  {
LABEL_10:
    sub_12E1C(&v25, &unk_DFA9A0);
LABEL_11:
    sub_37D3DC(0);
    return;
  }

  sub_70DF8(&v25, v28);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if (((*(v19 + 16))(v18, v19) & 1) != 0 || (v20 = (*&stru_4C8.segname[swift_isaMask & *a5])()) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    goto LABEL_11;
  }

  v21 = v20;
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_2594D8(a3, v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaybackIntentDescriptor);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = swift_allocObject();
  sub_2591E8(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PlaybackIntentDescriptor);
  sub_111FD0(v28, v21, a2, sub_256A98, v23);

  __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_245C78(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (result == 1)
  {
    v12[16] = v6;
    v12[17] = v7;
    sub_15F28(a6, v12);
    sub_245974(a5, v12, a2, a3, a4);
    return sub_12E1C(v12, &unk_DEA520);
  }

  return result;
}

void sub_245D00(void *a1)
{
  v3 = sub_AB3430();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v65 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v66);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v67 = &v58 - v19;
  v20 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 8);
  if (!v20)
  {
    return;
  }

  v21 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if (!v22)
  {
    return;
  }

  v60 = v22;
  v59 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  [a1 bounds];
  v82[0] = a1;
  v82[1] = v23;
  v82[2] = v24;
  v82[3] = v25;
  v82[4] = v26;
  v83 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v82, 15, v74);
  v78[0] = v74[0];
  v78[1] = v74[1];
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v27 = a1;
  PresentationSource.init(viewController:position:)(v1, v78, v73);
  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  (*(*(v28 - 8) + 56))(v67, 1, 1, v28);
  sub_15F84(v71, &v68, &unk_DE8E30);
  if (*(&v69 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    v30 = swift_dynamicCast();
    v31 = *(v29 - 8);
    (*(v31 + 56))(v11, v30 ^ 1u, 1, v29);
    v32 = (*(v31 + 48))(v11, 1, v29);
    v33 = v65;
    if (v32 != 1)
    {
      (*(v65 + 16))(v17, &v11[*(v29 + 20)], v5);
      sub_259250(v11, _s30CollectionViewSelectionHandlerVMa);
      v34 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_12E1C(&v68, &unk_DE8E30);
    v35 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
    v33 = v65;
  }

  sub_12E1C(v11, &qword_E037A0);
  v34 = 1;
LABEL_8:
  (*(v33 + 56))(v17, v34, 1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v37 = Strong, sub_12B2FC(), v39 = v38, v41 = v40, v37, v39))
  {
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(ObjectType, v41);
    v44 = v43;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20);
    if ((*(v33 + 48))(v15, 1, v5) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      v68 = 0u;
      v69 = 0u;
      v70 = 0;
    }

    else
    {
      (*(v33 + 32))(v61, v15, v5);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v46 = swift_getObjectType();
    v47 = v62;
    sub_3B8F68();
    v45 = sub_21CCAC(1, v47, &v68, v46, v44);
    (*(v63 + 8))(v47, v64);
    sub_12E1C(&v68, &qword_DF2BD0);
    sub_12E1C(v17, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20);
    v45 = 0;
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    sub_12AFE8();
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  sub_15F28(v73, &v68);
  sub_15F84(v71, (v8 + 104), &unk_DE8E30);
  v52 = v66;
  v53 = v67;
  sub_15F84(v67, &v8[*(v66 + 28)], &unk_DEA510);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v68, v8);
  *(v8 + 12) = 0;
  v54 = *v59;
  *(&v69 + 1) = v52;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v68);
  sub_2594D8(v8, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v56 = v54;
  v57 = v60;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v60, 0, v45, v51, &v68);
  sub_12E1C(v53, &unk_DEA510);
  sub_12E1C(v71, &unk_DE8E30);
  sub_1611C(v73);
  sub_259250(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v68, &unk_DE8E40);
}

void sub_2465A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_245D00(v4);
}

uint64_t sub_24660C(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(&stru_1F8.offset + v4);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v63 - v9;
  v73 = type metadata accessor for Metrics.Event.Action(0);
  v10 = __chkstk_darwin(v73);
  v78 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v63 - v12;
  v74 = type metadata accessor for Metrics.Event(0);
  v13 = __chkstk_darwin(v74);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v63 - v16;
  v17 = sub_ABA9C0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v77 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v65 = &v63 - v22;
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v69 = v4;
  v25 = (*(v4 + 1592))(a1, 0);
  v72 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
  v72(v25);
  v70 = v6;
  v26 = *(v6 + 48);
  v27 = v26(v24, 1, v5);
  v75 = v5;
  v76 = v18;
  v71 = v15;
  if (v27 == 1)
  {
    result = (*(v18 + 8))(v24, v17);
    v29 = v17;
LABEL_11:
    v30 = v77;
    goto LABEL_12;
  }

  v63 = v17;
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v29 = v63;
    goto LABEL_11;
  }

  v79[6] = v87;
  v79[7] = v88;
  v80 = v89;
  v79[2] = v83;
  v79[3] = v84;
  v79[4] = v85;
  v79[5] = v86;
  v79[0] = v81;
  v79[1] = v82;
  v30 = v77;
  if (!*(&v84 + 1))
  {
    result = sub_257CA0(v79);
    v29 = v63;
    goto LABEL_12;
  }

  v31 = v26;
  v32 = MPModelPropertyPlaylistTraits;
  v33 = *(&v84 + 1);
  if (![v33 hasLoadedValueForKey:v32])
  {

    goto LABEL_20;
  }

  v34 = MPModelPlaylist.supportsSing.getter();

  if ((v34 & 1) == 0)
  {
LABEL_20:
    result = sub_257CA0(v79);
    v29 = v63;
    v26 = v31;
LABEL_12:
    v42 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
    if (*v42)
    {
      v43 = v42[1];
      swift_storeEnumTagMultiPayload();
      v44 = swift_unknownObjectRetain();
      v72(v44);
      v45 = v75;
      if (v26(v30, 1, v75))
      {
        (*(v76 + 8))(v30, v29);
        v46 = 0;
      }

      else
      {
        v47 = v70;
        v48 = v68;
        (*(v70 + 16))(v68, v30, v45);
        (*(v76 + 8))(v30, v29);
        v46 = (*(*(v69 + 568) + 24))(v45);
        (*(v47 + 8))(v48, v45);
      }

      v49 = v71;
      ObjectType = swift_getObjectType();
      v51 = v74;
      v52 = v74[6];
      v53 = v74[7];
      v54 = v74[8];
      sub_2591E8(v78, v49, type metadata accessor for Metrics.Event.Action);
      *(v49 + v51[5]) = 0;
      *(v49 + v52) = v46;
      *(v49 + v53) = 0;
      *(v49 + v54) = 0;
      (*(v43 + 32))(v49, ObjectType, v43);
      sub_259250(v49, type metadata accessor for Metrics.Event);
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v36 = v75;
  v35 = v76;
  v37 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  if (*v37)
  {
    v78 = v37[1];
    swift_storeEnumTagMultiPayload();
    v38 = swift_unknownObjectRetain();
    v39 = v65;
    v72(v38);
    v40 = v36;
    if (v31(v39, 1, v36))
    {
      (*(v35 + 8))(v39, v63);
      v41 = 0;
    }

    else
    {
      v55 = v70;
      v56 = v64;
      (*(v70 + 16))(v64, v39, v40);
      (*(v35 + 8))(v39, v63);
      v41 = (*(*(v69 + 568) + 24))(v40);
      (*(v55 + 8))(v56, v40);
    }

    v57 = swift_getObjectType();
    v58 = v74;
    v59 = v74[6];
    v60 = v74[7];
    v61 = v74[8];
    v62 = v66;
    sub_2591E8(v67, v66, type metadata accessor for Metrics.Event.Action);
    *(v62 + v58[5]) = 0;
    *(v62 + v59) = v41;
    *(v62 + v60) = 0;
    *(v62 + v61) = 0;
    (*(v78 + 32))(v62, v57);
    sub_259250(v62, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
  }

  return sub_257CA0(v79);
}

void sub_246E20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24660C(v4);
}

uint64_t sub_246E88(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(&stru_1F8.offset + v3);
  v29 = *(v4 - 8);
  __chkstk_darwin(a1);
  v27 = &v26 - v5;
  v6 = sub_ABA9C0();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v3 + 1592))(a1, 1);
  v16 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
  if (*v16)
  {
    v26 = v3;
    v28 = v16[1];
    swift_storeEnumTagMultiPayload();
    v17 = *(&stru_478.reserved2 + (swift_isaMask & *v1));
    v18 = swift_unknownObjectRetain();
    v17(v18);
    v19 = v29;
    if ((*(v29 + 48))(v8, 1, v4))
    {
      (*(v30 + 8))(v8, v31);
      v20 = 0;
    }

    else
    {
      v21 = v27;
      (*(v19 + 16))(v27, v8, v4);
      (*(v30 + 8))(v8, v31);
      v20 = (*(*(v26 + 568) + 24))(v4);
      (*(v19 + 8))(v21, v4);
    }

    ObjectType = swift_getObjectType();
    v23 = v12[6];
    v24 = v12[7];
    v25 = v12[8];
    sub_2591E8(v11, v14, type metadata accessor for Metrics.Event.Action);
    v14[v12[5]] = 0;
    *&v14[v23] = v20;
    *&v14[v24] = 0;
    *&v14[v25] = 0;
    (*(v28 + 32))(v14, ObjectType);
    sub_259250(v14, type metadata accessor for Metrics.Event);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24729C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_246E88(v4);
}

void sub_247304(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2581D4(v5);
}

void sub_247368()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40);
  __chkstk_darwin(v5 - 8);
  v7 = &v95 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v95 - v9;
  v109 = type metadata accessor for Metrics.Event.Action(0);
  v11 = __chkstk_darwin(v109);
  v108 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(&stru_1F8.offset + (v3 & v2));
  v110 = *(v13 - 8);
  __chkstk_darwin(v11);
  v15 = &v95 - v14;
  v16 = sub_ABA9C0();
  v111 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v95 - v17;
  v106 = type metadata accessor for Metrics.Event(0);
  v19 = __chkstk_darwin(v106);
  v105 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v107 = &v95 - v22;
  v23 = (*(v4 + 1240))(v21);
  if (v23)
  {
    v103 = v7;
    v104 = v10;
    v112 = v23;
    v24 = [v23 results];
    if (!v24)
    {
      __break(1u);
      goto LABEL_75;
    }

    v25 = v24;
    v26 = [v24 firstSection];

    if (v26)
    {
      v27 = v26;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        objc_opt_self();
        v101 = v29;
        v30 = swift_dynamicCastObjCClass();
        v98 = v27;
        if (v30)
        {
          v99 = 0;
        }

        else
        {
          v99 = [v112 results];
        }

        v32 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        v33 = sub_AB9260();
        [v32 appendSection:v33];

        v100 = v32;
        v34 = [v32 appendItem:v101];
        v35 = swift_isaMask & *v1;
        v36 = *(v1 + *(&stru_1F8.reserved2 + v35));
        v37 = v36[15];
        if ((v37 & 0xFE) != 0xF8)
        {
          v96 = v36[11];
          v95 = v36[12];
          v97 = v36[14];
          v38 = v36[16];
          v39 = v36[13];
          v102 = v37;
          (*(v35 + 1216))(v34);
          v40 = v110;
          if ((*(v110 + 48))(v18, 1, v13))
          {
            (*(v111 + 8))(v18, v16);
            v41 = 0;
          }

          else
          {
            (*(v40 + 16))(v15, v18, v13);
            (*(v111 + 8))(v18, v16);
            v42 = v40;
            v41 = (*(*(v4 + 568) + 24))(v13);
            (*(v42 + 8))(v15, v13);
          }

          v43 = v102 & 0xFE;
          v44 = v102 >> 1;
          if (v43 == 122)
          {
            goto LABEL_22;
          }

          if (v102 >> 1 <= 0x7D)
          {
            if ((v44 - 62) < 2 || v44 == 125)
            {
LABEL_22:

              goto LABEL_32;
            }

            goto LABEL_27;
          }

          if (v44 == 126)
          {
            v111 = v38;
          }

          else
          {
            if (v44 != 127)
            {
LABEL_27:
              v111 = v38;
              goto LABEL_28;
            }

            v111 = v38;
          }

LABEL_28:
          v45 = v108;
          swift_storeEnumTagMultiPayload();
          v46 = v106;
          v47 = v106[6];
          v48 = v106[7];
          v49 = v106[8];
          v50 = v45;
          v51 = v105;
          sub_2591E8(v50, v105, type metadata accessor for Metrics.Event.Action);
          *(v51 + v46[5]) = 0;
          *(v51 + v47) = v41;
          *(v51 + v48) = 0;
          *(v51 + v49) = 0;
          v52 = v51;
          v53 = v107;
          sub_2591E8(v52, v107, type metadata accessor for Metrics.Event);
          v54 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
          if (*v54)
          {
            v55 = v54[1];
            ObjectType = swift_getObjectType();
            v57 = *(v55 + 32);
            swift_unknownObjectRetain();
            v57(v53, ObjectType, v55);
            sub_259250(v53, type metadata accessor for Metrics.Event);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_259250(v53, type metadata accessor for Metrics.Event);
          }

          v38 = v111;
LABEL_32:
          v58 = type metadata accessor for LibraryAddKeepLocalHandlingController();
          v59 = v100;
          swift_unknownObjectRetain();
          v60 = sub_23D9EC();
          [*(v1 + *&stru_248.sectname[swift_isaMask & *v1]) bounds];
          v130[0] = v60;
          v130[1] = v61;
          v130[2] = v62;
          v130[3] = v63;
          v130[4] = v64;
          v131 = 0;
          PresentationSource.Position.init(source:permittedArrowDirections:)(v130, 15, v118);
          v126[0] = v118[0];
          v126[1] = v118[1];
          v127 = v119;
          v128 = v120;
          v129 = v121;
          *&v65 = PresentationSource.init(viewController:position:)(v1, v126, v117).n128_u64[0];
          if (v43 == 122)
          {
            swift_unknownObjectRelease();

            sub_1611C(v117);
LABEL_72:
            swift_unknownObjectRelease();
            return;
          }

          if (v44 <= 124)
          {
            if (v44 != 62)
            {
              if (v44 == 63)
              {
                goto LABEL_38;
              }

LABEL_41:
              if ((v102 & 0x80) != 0)
              {
                v88 = v103;
                MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v38, v103);
                v89 = sub_AB8230();
                v90 = *(v89 - 8);
                if ((*(v90 + 48))(v88, 1, v89) == 1)
                {
                  swift_unknownObjectRelease();

                  sub_1611C(v117);
                  v91 = &qword_DE7F40;
                  v92 = v88;
                }

                else
                {
                  MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v122);
                  (*(v90 + 8))(v88, v89);
                  if (!v124)
                  {
                    goto LABEL_68;
                  }

                  v113[0] = v122[0];
                  v113[1] = v122[1];
                  v113[2] = v122[2];
                  v114 = v123;
                  v115 = v124;
                  v116 = v125;
                  v94 = Alert.uiAlertController.getter();
                  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v94, 1, 1, 0, 0);
                  swift_unknownObjectRelease();

                  sub_1611C(v117);
                  v91 = &unk_DE7F48;
                  v92 = v122;
                }

                sub_12E1C(v92, v91);
LABEL_71:

                goto LABEL_72;
              }

              if ([v59 firstItem])
              {
                objc_opt_self();
                v72 = swift_dynamicCastObjCClass();
                if (v72)
                {
                  v73 = v72;
                  v74 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
                  [v74 setModelObject:v73];
                  [v74 setEnableState:3];
                  v75 = [objc_opt_self() sharedDeviceLibraryController];
                  v76 = v99;
                  [v75 performKeepLocalChangeRequest:v74 withRelatedModelObjects:v99];
                  swift_unknownObjectRelease();

                  sub_1611C(v117);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  return;
                }

                goto LABEL_55;
              }

LABEL_68:
              swift_unknownObjectRelease();

              goto LABEL_69;
            }

            if (![v59 firstItem])
            {
              goto LABEL_68;
            }

            objc_opt_self();
            v80 = swift_dynamicCastObjCClass();
            if (!v80)
            {
LABEL_55:
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
LABEL_69:

              goto LABEL_70;
            }

            v81 = v80;
            if (([v80 libraryRemovalSupportedOptions] & 2) != 0)
            {
              v93 = v81;
              v83 = v99;
              sub_2BA534(v93, v99);
            }

            else
            {
              v82 = v81;
              v83 = v99;
              sub_2BAC50(v82, v99);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            if (v44 == 125)
            {
              if ([v59 firstItem])
              {
                objc_opt_self();
                v77 = swift_dynamicCastObjCClass();
                if (!v77)
                {
                  swift_unknownObjectRelease();
                }
              }

              else
              {
                v77 = 0;
              }

              v84 = sub_AB9990();
              v85 = v104;
              (*(*(v84 - 8) + 56))(v104, 1, 1, v84);
              sub_15F28(v117, v113);
              sub_AB9940();
              v86 = sub_AB9930();
              v87 = swift_allocObject();
              *(v87 + 16) = v86;
              *(v87 + 24) = &protocol witness table for MainActor;
              sub_17704(v113, v87 + 32);
              sub_DBDC8(0, 0, v85, &unk_AF79B0, v87);
              swift_unknownObjectRelease();

              sub_1611C(v117);
              swift_unknownObjectRelease();

              goto LABEL_58;
            }

            if (v44 != 126)
            {
              if (v44 == 127)
              {
LABEL_38:
                v66 = sub_AB9990();
                v67 = v104;
                (*(*(v66 - 8) + 56))(v104, 1, 1, v66);
                sub_15F28(v117, v113);
                v68 = swift_allocObject();
                *(v68 + 16) = 0;
                *(v68 + 24) = 0;
                v69 = v100;
                *(v68 + 32) = v58;
                *(v68 + 40) = v69;
                v70 = v95;
                *(v68 + 48) = v96;
                *(v68 + 56) = v70;
                *(v68 + 64) = v39;
                *(v68 + 72) = v97;
                *(v68 + 80) = v102;
                *(v68 + 81) = v122[0];
                *(v68 + 84) = *(v122 + 3);
                v71 = v101;
                *(v68 + 88) = v38;
                *(v68 + 96) = v71;
                *(v68 + 104) = v99;
                sub_17704(v113, v68 + 112);
                sub_DC0B8(0, 0, v67, &unk_AF79C0, v68);
                sub_1611C(v117);

                swift_unknownObjectRelease();
LABEL_58:

                return;
              }

              goto LABEL_41;
            }

            if (![v59 firstItem])
            {
              goto LABEL_68;
            }

            objc_opt_self();
            v78 = swift_dynamicCastObjCClass();
            v79 = v99;
            if (!v78)
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
LABEL_70:
              sub_1611C(v117);
              goto LABEL_71;
            }

            sub_2B9FD0(v78, v99, v117);
            swift_unknownObjectRelease();
          }

          sub_1611C(v117);

          swift_unknownObjectRelease();
          goto LABEL_72;
        }

LABEL_75:
        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v112;
    }
  }
}

void sub_24823C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*&stru_4C8.segname[swift_isaMask & *v0])(v10);
  if (v13)
  {
    v24 = v13;
    v14 = [v13 results];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 firstSection];

      if (v16)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          v19 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
          v20 = sub_AB3820();
          (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
          (*(&stru_6A8.offset + (swift_isaMask & *v19)))(0, v4);
          sub_12E1C(v4, &unk_DE8E20);
          if ((*(v9 + 48))(v7, 1, v8) == 1)
          {
            sub_12E1C(v7, &unk_DEA510);
          }

          else
          {
            v22 = sub_2591E8(v7, v12, type metadata accessor for PlaybackIntentDescriptor);
            if ((*&stru_1F8.sectname[swift_isaMask & *v19])(v22))
            {
              sub_3B8FA0(v12, v18, v1, &off_D04950);
              sub_259250(v12, type metadata accessor for PlaybackIntentDescriptor);

              swift_unknownObjectRelease();

              return;
            }

            sub_259250(v12, type metadata accessor for PlaybackIntentDescriptor);
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v21 = v24;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2486B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_ABAB50();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_12E1C(v9, &unk_DE8E40);
}

uint64_t sub_248740(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v6 = *v3;
  v7 = swift_isaMask;
  v49 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v49);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&stru_1F8.offset + (v7 & v6));
  v11 = sub_ABA9C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  sub_46B304();
  v15 = sub_23B888(a3);
  v51 = v16;

  (*(&stru_478.reserved2 + (swift_isaMask & *v3)))(v17);
  if ((*(*(v10 - 8) + 48))(v14, 1, v10) == 1)
  {
    v18 = (*(v12 + 8))(v14, v11);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v31 = (v4 + *&stru_388.segname[(swift_isaMask & *v4) + 8]);
    if (*v31)
    {
      v32 = v31[1];
      ObjectType = swift_getObjectType();
      type metadata accessor for Metrics.Event.Action(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      v35 = v49[7];
      v36 = v49[8];
      v37 = v49[6];
      v9[v49[5]] = 2;
      *&v9[v37] = v34;
      *&v9[v35] = v15;
      *&v9[v36] = 0;
      v38 = *(v32 + 32);

      v39 = v34;
      swift_unknownObjectRetain();
      v38(v9, ObjectType, v32);
      sub_259250(v9, type metadata accessor for Metrics.Event);
      v18 = swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  v52[6] = v60;
  v52[7] = v61;
  v53 = v62;
  v52[2] = v56;
  v52[3] = v57;
  v52[4] = v58;
  v52[5] = v59;
  v52[0] = v54;
  v52[1] = v55;
  if (!*(&v57 + 1))
  {
    goto LABEL_11;
  }

  v19 = MPModelPropertyPlaylistTraits;
  v20 = *(&v57 + 1);
  if (![v20 hasLoadedValueForKey:v19])
  {

    goto LABEL_11;
  }

  v21 = MPModelPlaylist.supportsSing.getter();

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v18 = sub_257CA0(v52);
    goto LABEL_12;
  }

  v22 = (v4 + *&stru_388.segname[(swift_isaMask & *v4) + 8]);
  if (*v22)
  {
    v23 = v22[1];
    v24 = swift_getObjectType();
    type metadata accessor for Metrics.Event.Action(0);
    swift_storeEnumTagMultiPayload();
    v25 = v50;
    v26 = v49[7];
    v27 = v49[8];
    v28 = v49[6];
    v9[v49[5]] = 2;
    *&v9[v28] = v25;
    *&v9[v26] = v15;
    *&v9[v27] = 0;
    v29 = *(v23 + 32);

    v30 = v25;
    swift_unknownObjectRetain();
    v29(v9, v24, v23);
    sub_259250(v9, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
  }

  v18 = sub_257CA0(v52);
LABEL_14:
  sub_251140(v18);
  v40 = [v4 navigationItem];
  v41 = [v4 parentViewController];
  if (v41)
  {
    v42 = v41;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v43 = v42;
      v44 = [v43 navigationItem];

      v42 = [v43 parentViewController];
      v40 = v44;
      if (!v42)
      {
        goto LABEL_21;
      }
    }
  }

  v44 = v40;
LABEL_21:
  v45 = [v44 searchController];

  if (v45)
  {
    v46 = [v45 searchBar];

    [v46 resignFirstResponder];
  }
}

void sub_248CA0(void *a1, void *a2)
{
  v5 = sub_AB3430();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin(v90);
  v91 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v89);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v94 = &v79 - v22;
  v23 = [a2 identifiers];
  v24 = [v23 universalStore];

  if (!v24)
  {
    return;
  }

  v25 = [v24 adamID];
  swift_unknownObjectRelease();
  v26 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
  if (!v26)
  {
    return;
  }

  v84 = a2;
  v27 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_recordLabelLinkIdentifierMap;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (!v28)
  {
    return;
  }

  if (!*(v28 + 16))
  {
    return;
  }

  v83 = v2;
  v29 = sub_2F5A90(v25);
  if ((v30 & 1) == 0)
  {
    return;
  }

  v31 = *(*(v28 + 56) + 8 * v29);
  v82 = v28;

  v32 = v31;
  v81 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v33 = [a1 view];
  if (!v33)
  {
    __break(1u);
    return;
  }

  v34 = v33;
  sub_D5958(v101);
  v35 = v102;
  v36 = v103;
  v37 = v104;

  v105[0] = v101[0];
  v105[1] = v101[1];
  v106 = v35;
  v107 = v36;
  v108 = v37;
  v80 = v83;
  PresentationSource.init(viewController:position:)(v80, v105, v100);
  v38 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v98, 0, sizeof(v98));
  v99 = 0;
  (*(*(v38 - 8) + 56))(v94, 1, 1, v38);
  sub_15F84(v98, &v95, &unk_DE8E30);
  if (*(&v96 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v39 = _s30CollectionViewSelectionHandlerVMa();
    v40 = swift_dynamicCast();
    v41 = *(v39 - 8);
    (*(v41 + 56))(v14, v40 ^ 1u, 1, v39);
    if ((*(v41 + 48))(v14, 1, v39) != 1)
    {
      v43 = v92;
      v42 = v93;
      (*(v92 + 16))(v20, &v14[*(v39 + 20)], v93);
      sub_259250(v14, _s30CollectionViewSelectionHandlerVMa);
      v44 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_12E1C(&v95, &unk_DE8E30);
    v45 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
  }

  sub_12E1C(v14, &qword_E037A0);
  v44 = 1;
  v43 = v92;
  v42 = v93;
LABEL_12:
  (*(v43 + 56))(v20, v44, 1, v42);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v47 = Strong, sub_12B2FC(), v49 = v48, v51 = v50, v47, v49))
  {
    ObjectType = swift_getObjectType();
    (*(v51 + 8))(ObjectType, v51);
    v54 = v53;
    swift_unknownObjectRelease();
    sub_15F84(v20, v18, &unk_DE8E20);
    if ((*(v43 + 48))(v18, 1, v42) == 1)
    {
      sub_12E1C(v18, &unk_DE8E20);
      v95 = 0u;
      v96 = 0u;
      v97 = 0;
    }

    else
    {
      (*(v43 + 32))(v85, v18, v42);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v55 = swift_getObjectType();
    v56 = v86;
    sub_3B8F68();
    v93 = sub_21CCAC(1, v56, &v95, v55, v54);
    (*(v87 + 8))(v56, v88);
    sub_12E1C(&v95, &qword_DF2BD0);
    sub_12E1C(v20, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v20, &unk_DE8E20);
    v93 = 0;
  }

  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = v32;
    sub_12AFE8();
    v61 = v60;
  }

  else
  {
    v59 = v32;
    v61 = 0;
  }

  sub_15F28(v100, &v95);
  sub_15F84(v98, (v11 + 104), &unk_DE8E30);
  v62 = v89;
  v63 = v94;
  sub_15F84(v94, &v11[*(v89 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v95, v11);
  v64 = v84;
  *(v11 + 12) = v84;
  v65 = *v81;
  *(&v96 + 1) = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v95);
  sub_2594D8(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v67 = v64;
  v68 = v65;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v59, 0, v93, v61, &v95);
  sub_12E1C(v63, &unk_DEA510);
  sub_12E1C(v98, &unk_DE8E30);
  sub_1611C(v100);
  sub_259250(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v95, &unk_DE8E40);

  v69 = v91;
  *v91 = v67;
  type metadata accessor for Metrics.Event.Action(0);
  swift_storeEnumTagMultiPayload();
  v70 = v90[7];
  v71 = v90[8];
  v72 = v90[6];
  *(v69 + v90[5]) = 0;
  *(v69 + v72) = v64;
  *(v69 + v70) = 0;
  *(v69 + v71) = 0;
  v73 = &v80[*&stru_388.segname[(swift_isaMask & *v80) + 8]];
  if (*v73)
  {
    v74 = *(v73 + 1);
    v75 = swift_getObjectType();
    v76 = *(v74 + 32);
    v77 = v67;
    swift_unknownObjectRetain();
    v76(v69, v75, v74);
    sub_259250(v69, type metadata accessor for Metrics.Event);

    swift_unknownObjectRelease();
  }

  else
  {
    v78 = v67;
    sub_259250(v69, type metadata accessor for Metrics.Event);
  }
}

void sub_249754(uint64_t a1)
{
  v3 = *(&stru_2E8.offset + (swift_isaMask & *v1));
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_249844(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_25896C();
}

void sub_2498A4(void *a1, uint64_t a2, void *a3, double *a4)
{
  v6 = a3;
  v7 = a1;
  sub_258D5C(v6, a4);
}

CGFloat sub_249914()
{
  v1 = *(v0 + *(&stru_298.reserved2 + (swift_isaMask & *v0)));
  if (!v1)
  {
    return 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) bounds];
  result = CGRectGetHeight(v3) + -250.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double sub_24999C()
{
  v1 = [v0 navigationItem];
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v4 = v3;
      v5 = [v4 navigationItem];

      v3 = [v4 parentViewController];
      v1 = v5;
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = v1;
LABEL_8:
  v6 = [v5 navigationBar];

  v7 = 10.0;
  if (v6)
  {
    v8 = [v6 _backgroundView];

    if (v8)
    {
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v18.origin.x = v10;
      v18.origin.y = v12;
      v18.size.width = v14;
      v18.size.height = v16;
      v7 = CGRectGetMaxY(v18) + 10.0;
    }
  }

  return v7 + sub_249914();
}

id sub_249B20()
{
  if ([v0 isEditing])
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
    v3 = *&v2[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView];
    [*&v3[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField] frame];
    [v3 convertRect:v2 toCoordinateSpace:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 view];
    [v2 convertRect:v12 toView:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    MidY = CGRectGetMidY(v28);
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    [result safeAreaInsets];
    v25 = v24;

    v1 = MidY < v25;
  }

  v26 = *(&stru_428.offset + (swift_isaMask & *v0));

  return v26(v1);
}

void sub_249CDC(double a1, double a2)
{
  v5 = sub_4D3DD0();
  [v5 contentSize];
  v7 = v6;
  [v5 adjustedContentInset];
  v9 = v7 + v8;
  [v5 adjustedContentInset];
  v11 = v9 + v10;
  [v5 bounds];
  if (CGRectGetHeight(v24) >= v11 || -sub_24999C() > a2)
  {

    return;
  }

  [v5 contentOffset];
  v13 = v12;
  [v5 adjustedContentInset];
  v15 = -v14;
  if (v13 == v15)
  {
    goto LABEL_9;
  }

  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    v15 = -v19;
    if (-v19 > a2)
    {

      v20 = [v2 view];
      if (v20)
      {
        v21 = v20;
        [v20 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }

LABEL_9:
    [v5 adjustedContentInset];
    v23 = v22;

    sub_249E90(v2, v23 + a1);
    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

double sub_249E90(void *a1, double a2)
{
  v4 = [a1 navigationItem];
  v5 = [a1 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = v4;
LABEL_8:
  v9 = [v8 navigationBar];

  if (v9)
  {
    v10 = [v9 _backgroundView];

    if (v10)
    {
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v21.origin.x = v12;
      v21.origin.y = v14;
      v21.size.width = v16;
      v21.size.height = v18;
      CGRectGetHeight(v21);
    }
  }

  v19 = *(a1 + *(&stru_298.reserved2 + (swift_isaMask & *a1)));
  if (v19)
  {
    [*(v19 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView) bounds];
    CGRectGetHeight(v22);
  }

  return a2;
}

void sub_24A09C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_258E80();
}

id sub_24A128(id result)
{
  v2 = *(&stru_2E8.reloff + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = result;
  if (v3 != *(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1))))
  {
    return [*(v1 + *&stru_248.segname[swift_isaMask & *v1]) setSelected:?];
  }

  return result;
}

id sub_24A1BC(id result)
{
  v2 = *(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1)));
  if (v2 != (result & 1))
  {
    v3 = *&stru_248.segname[swift_isaMask & *v1];
    v4 = *(v1 + v3);
    if (*(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1))))
    {
      [*(v1 + v3) setSelected:*(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1)))];
    }

    return [v4 setHidden:v2 ^ 1u];
  }

  return result;
}

id sub_24A290(char a1)
{
  v2 = *(&stru_2E8.flags + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_24A1BC(v3);
}

uint64_t sub_24A2C4(char a1)
{
  v2 = v1;
  if (sub_24F5B0())
  {
    v4 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
    if (v4)
    {
      v5 = *&stru_B8.segname[(*v4 & swift_isaMask) + 8];
      v6 = v4;
      v7 = v5();

      v8 = (*(&stru_2E8.size + (swift_isaMask & *v7)))();
      if (v8)
      {
        v9 = sub_250FAC();
        Strong = swift_unknownObjectWeakLoadStrong();

        if (!Strong || (Strong, Strong != v8) || (v15 = swift_unknownObjectWeakLoadStrong()) == 0)
        {
          v11 = objc_allocWithZone(type metadata accessor for UpsellBannerViewController());
          v12 = v8;
          v13 = sub_1D4A3C(v8);
          v14 = *&stru_388.segname[swift_isaMask & *v2];
          v15 = *(v2 + v14);
          *(v2 + v14) = v13;
        }

        v16 = *(v2 + *&stru_388.segname[swift_isaMask & *v2]);
        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }
    }
  }

  v17 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
  sub_AB9730();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();

  sub_195F0(v18);
  v19 = sub_25036C();
  v20 = *(v2 + *(&stru_248.flags + (swift_isaMask & *v2)));
  if (v19)
  {
    v21 = *&v20[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v21 >> 62)
    {
      v22 = sub_ABB060();
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    v20;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    if (!v22)
    {
      sub_A363C();
    }
  }

  else
  {
    sub_4D4068(_swiftEmptyArrayStorage, 0);
  }

  sub_4D4068(_swiftEmptyArrayStorage, a1 & 1);
}

void sub_24A69C()
{
  v1 = *(&stru_1F8.reloff + (swift_isaMask & *v0));
  v7 = *(&stru_1F8.size + (swift_isaMask & *v0));
  v8 = v1;
  v2 = type metadata accessor for ContainerDetailViewController();
  v9 = v2;
  *&v7 = v0;
  v3 = v0;
  sub_29CBEC(&v7, "link:", 0);
  sub_12E1C(&v7, &unk_DE8E40);
  v9 = v2;
  *&v7 = v3;
  v4 = v3;
  sub_29CBEC(&v7, "play:", 1u);
  sub_12E1C(&v7, &unk_DE8E40);
  v9 = v2;
  *&v7 = v4;
  v5 = v4;
  sub_29CBEC(&v7, "shuffle:", 2u);
  sub_12E1C(&v7, &unk_DE8E40);
  v9 = v2;
  *&v7 = v5;
  v5;
  sub_29CBEC(&v7, "more:", 3u);
  v6 = sub_12E1C(&v7, &unk_DE8E40);
  sub_251140(v6);
}

void sub_24A848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v2;
  v7 = (*(&stru_6F8.flags + v6))();
  v8 = *&stru_2E8.segname[swift_isaMask & *v2];
  if (v7)
  {
    *(v2 + v8) = 0;
    v9 = (*&stru_748.segname[(swift_isaMask & *v2) + 8])();
    v10 = [v2 traitCollection];
    if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
    {
      v11 = *(v3 + *&stru_298.segname[swift_isaMask & *v3] + 56);

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      v10 = v9;
      [v13 setFilteringOptions:{objc_msgSend(v13, "filteringOptions") | 2}];
    }

LABEL_7:
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = *(v6 + 544);
    *(v15 + 24) = *(v6 + 552);
    *(v15 + 40) = *(v6 + 568);
    *(v15 + 48) = v14;
    *(v15 + 56) = a1;
    *(v15 + 64) = a2;
    v24[4] = sub_257BF4;
    v24[5] = v15;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_151E0;
    v24[3] = &block_descriptor_176;
    v16 = _Block_copy(v24);
    sub_307CC(a1);

    [v9 performWithResponseHandler:v16];
    _Block_release(v16);

    return;
  }

  *(v2 + v8) = 1;
  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = *&stru_2E8.segname[(swift_isaMask & *v3) + 8];
    swift_beginAccess();
    v19 = *(v3 + v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_6AFC0(0, v19[2] + 1, 1, v19);
      *(v3 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_6AFC0((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_257BA4;
    v23[5] = v17;
    *(v3 + v18) = v19;
    swift_endAccess();
  }
}

uint64_t sub_24ABDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_errorRetain();
      sub_24AD48(a2, 1);

LABEL_6:
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v10 = v11;
      sub_24AD48(a1, 0);
      goto LABEL_6;
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  sub_307CC(a4);
  v13 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_257C70, v12);
}

uint64_t (*sub_24AD10(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    return result(a3);
  }

  return result;
}

void sub_24AD48(void *a1, char a2)
{
  if (a2)
  {
    v38 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 16);
    if (v38)
    {
      sub_21A5DC(a1, 1);
      sub_15F84(&v38, &v37, &unk_E02C90);
      v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        sub_12E1C(&v38, &unk_E02C90);
LABEL_16:
        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, qword_E71120);
        sub_21A5DC(a1, 1);

        v22 = sub_AB4BA0();
        v23 = sub_AB9F50();

        sub_21A5E8(a1, 1);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v24 = 136315394;
          v25 = sub_425E68(v7, v8, &v37);

          *(v24 + 4) = v25;
          *(v24 + 12) = 2082;
          swift_getErrorValue();
          v26 = sub_ABB520();
          v28 = sub_425E68(v26, v27, &v37);

          *(v24 + 14) = v28;
          _os_log_impl(&dword_0, v22, v23, "Error processing new container response for container id: %s, error: %{public}s", v24, 0x16u);
          swift_arrayDestroy();

          sub_21A5E8(a1, 1);
        }

        else
        {
          sub_21A5E8(a1, 1);
        }

        return;
      }

      v18 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      v7 = MPModelObject.bestIdentifier(for:)(*v18, 0);
      v8 = v19;
      sub_12E1C(&v38, &unk_E02C90);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_21A5DC(a1, 1);
    }

    v11 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 24);
    if (v11)
    {
      v12 = *(&stru_B8.offset + (*v11 & swift_isaMask));
      v13 = v11;
      v14 = v12();

      if (v14)
      {

        v16 = (*(&stru_B8.reserved2 + (swift_isaMask & *v14)))(v15);
        if (v17)
        {
          v7 = v16;
          v8 = v17;

          goto LABEL_16;
        }

        v7 = (*(&stru_B8.offset + (swift_isaMask & *v14)))(v16);
        v8 = v20;

        if (v8)
        {
          goto LABEL_16;
        }
      }
    }

    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E71120);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136446210;
      swift_getErrorValue();
      v34 = sub_ABB520();
      v36 = sub_425E68(v34, v35, &v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "Error processing new container response, error: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    sub_21A5E8(a1, 1);
  }

  else
  {
    sub_13C80(0, &qword_DE8ED0);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = a1;
    sub_21A5DC(a1, 0);
    sub_21A5DC(a1, 0);
    v10 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2572F4, v9);

    sub_21A5E8(a1, 0);
  }
}

void sub_24B304(void *a1, void *a2)
{
  v4 = *&stru_4C8.segname[(swift_isaMask & *a1) + 8];
  v5 = a2;
  v4(a2);
  v6 = *&stru_2E8.segname[(swift_isaMask & *a1) + 8];
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_24012C(_swiftEmptyArrayStorage);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      *&v27[0] = a2;

      v10(v27);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (![objc_opt_self() isEnabled])
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(v27);
  sub_70C54(v27);
  if ((BYTE8(v27[0]) & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + *&stru_298.segname[swift_isaMask & *a1] + 40);
  if (v11)
  {
    v12 = v11;

    v13 = v12;
    sub_257A58(v11);

    return;
  }

  if (a2)
  {
    v14 = [v5 results];
    if (v14)
    {
      v15 = v14;

      v16 = [v15 firstSection];

      if (v16)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() && (v17 = MPModelObject.bestIdentifier(for:)(3, 2u), v18))
        {
          v19 = v17;
          v20 = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = a1;
          v22 = objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource());
          v23 = a1;
          v24 = [v22 init];
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = sub_257AFC;
          v25[6] = v21;
          v26 = v24;

          sub_449D54(1, sub_257B94, v25);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_6:
  }
}

void sub_24B628(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_AB7C10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB7C50();
  v15 = __chkstk_darwin(v14);
  v17 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v47 = v11;
  v48 = v10;
  v45 = v15;
  v46 = v13;
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v18;
  v42 = a4;
  if (v17)
  {
    v41 = a5;
    v19 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 72);
      while (1)
      {
        v22 = *(v21 - 5);
        v24 = *(v21 - 3);
        v23 = *(v21 - 2);
        v25 = *(v21 - 1);
        v26 = *v21;
        v27 = *(v21 - 32);
        if (v24 == a2 && v23 == a3)
        {

          v31 = v22;

          v24 = a2;
          goto LABEL_21;
        }

        if (sub_ABB3C0())
        {

          v32 = v22;
          goto LABEL_20;
        }

        if (v26)
        {
          if (v25 == a2 && v26 == a3)
          {
            v29 = a3;
            v30 = v22;

            a3 = v23;
            v25 = a2;
            v26 = v29;
            goto LABEL_21;
          }

          if (sub_ABB3C0())
          {
            break;
          }
        }

        v21 += 6;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

      v33 = v22;

LABEL_20:

      a3 = v23;
    }

    else
    {
LABEL_16:
      v22 = 0;
      v27 = 0;
      v24 = 0;
      a3 = 0;
      v25 = 0;
      v26 = 0;
    }

LABEL_21:
    a5 = v41;
  }

  else
  {
    v22 = 0;
    v27 = 0;
    v24 = 0;
    a3 = 0;
    v25 = 0;
    v26 = 0;
  }

  sub_13C80(0, &qword_DE8ED0);
  v41 = sub_ABA150();
  v34 = swift_allocObject();
  v34[2] = v42;
  v34[3] = a5;
  v34[4] = v22;
  v34[5] = v27;
  v40[1] = v27;
  v34[6] = v24;
  v34[7] = a3;
  v34[8] = v25;
  v34[9] = v26;
  aBlock[4] = sub_C3964;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_55_0;
  v42 = _Block_copy(aBlock);

  sub_256B50(v22);

  v35 = v43;
  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_256CA4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v36 = v46;
  v37 = v48;
  sub_ABABB0();
  v38 = v41;
  v39 = v42;
  sub_ABA160();
  sub_256B9C(v22);
  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v45);
  _Block_release(v39);
}

void sub_24BB44()
{
  if ([v0 isViewLoaded])
  {
    sub_24FF04();
    sub_2437D0();
    sub_24BB90();

    sub_251140(v1);
  }
}

void sub_24BB90()
{
  v1 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
  (*(&stru_748.offset + (swift_isaMask & *v0)))(v1, 1);
  v2 = [v1 setNeedsLayout];
  v3 = (*(&stru_158.offset + (**(v0 + *(&stru_248.reloff + (swift_isaMask & *v0))) & swift_isaMask)))(v2);
  [v3 reloadData];
}

uint64_t sub_24BCA8(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = a2;
  v5 = swift_isaMask & *v2;
  v6 = *(&stru_1F8.offset + v5);
  v7 = sub_ABA9C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = *(v6 - 8);
  v13 = __chkstk_darwin(v9);
  v15 = &v42 - v14;
  (*(v5 + 1216))(v13);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v45 = v12;
  (*(v12 + 32))(v15, v11, v6);
  v17 = *(v5 + 568);
  v18 = v17[6];
  v44 = v15;
  v19 = v18(v6, v17);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v46 = a1;
  v22 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v43 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v24 = *(v22 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v25 = &v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v27 = *&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v26 = *&v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v28 = v24[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v28 || (v21 == v27 ? (v30 = v26 == v23) : (v30 = 0), !v30 && (sub_ABB3C0() & 1) == 0))
  {
    *v25 = v21;
    *(v25 + 1) = v23;
    v25[16] = 0;
    v29 = v24;

    sub_2372F0(v27, v26, v28);
    sub_2366F4();
  }

  v31 = v43;
  sub_2A2D6C();
  v32 = v44;
  v33 = v17[12](v6, v17);
  v34 = v31[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite];
  v31[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = v33 & 1;
  if ((v33 & 1) != v34)
  {
    sub_2A4304();
  }

  v36 = v45;
  v35 = v46;
  if (v47)
  {
    v37 = v17[4](v6, v17);
    v38 = *(*(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent) + 64);
    if (v38 && v37)
    {
      if (([v38 isArtworkVisuallyIdenticalToCatalog:v37] & 1) == 0)
      {
LABEL_26:
        sub_74EA4(v37);
        goto LABEL_27;
      }
    }

    else if (!v38 || v37)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_23C6F4(v35);
  v39 = [v3 traitCollection];
  v40 = UITraitCollection.isMediaPicker.getter();

  v41 = *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls);
  *(v35 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = v40;
  if (v40 != v41)
  {
    v31[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = v40;
    [v31 setNeedsLayout];
  }

  return (*(v36 + 8))(v32, v6);
}

uint64_t sub_24C108(uint64_t result)
{
  v2 = *(&stru_2E8.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = result;
  if (*(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1))) != v3)
  {
    return (*(&stru_6F8.offset + (swift_isaMask & *v1)))(0, &_swiftEmptyArrayStorage);
  }

  return result;
}

void (*sub_24C1A8(void (*result)(void)))(void)
{
  if (*(v1 + *&stru_338.segname[(swift_isaMask & *v1) - 8]) == 1 && (result & 1) == 0)
  {
    v2 = type metadata accessor for ContainerDetailViewController();
    return sub_133930(v2, &off_D04928);
  }

  return result;
}

void (*sub_24C240(char a1))(void)
{
  v2 = *&stru_338.segname[(swift_isaMask & *v1) - 8];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_24C1A8(v3);
}

void sub_24C2A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = (swift_isaMask & *v2);
  v210 = v2;
  v6 = v5;
  v7 = type metadata accessor for SymbolButton.Configuration(0);
  v8 = __chkstk_darwin(v7 - 8);
  v209 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v189 - v10;
  v12 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_cropStyle;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (v13)
  {
    v14 = *(a1 + v12);
  }

  else
  {
    v14 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v13 = 0;
  }

  v15 = v13;
  v16 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v14);

  if (v16)
  {
    [v16 setVideoCacheStoragePolicy:1];
  }

  v17 = *(a1 + v12);
  if (v17)
  {
    v18 = *(a1 + v12);
  }

  else
  {
    v18 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v17 = 0;
  }

  v19 = v17;
  v20 = JSVideoArtwork.artworkCatalog(defaultCropStyle:)(v18);

  v21 = v210;
  v22 = swift_isaMask & *v210;
  v23 = *(v210 + *&stru_338.segname[v22 + 16]);
  if (*(v210 + *(&stru_338.size + v22)) > 1u)
  {
    goto LABEL_19;
  }

  if (!*(v210 + *(&stru_338.size + (swift_isaMask & *v210))))
  {
    if (!*(v210 + *(&stru_298.reserved2 + (swift_isaMask & *v210))))
    {
      v204 = v20;
      v205 = v16;
      v196 = v23;
      v208 = ObjectType;
      type metadata accessor for ParallaxView();
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v25 = (*(&stru_4C8.reserved2 + (swift_isaMask & *v21)))();
      v209 = v24;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      if ((v25 & 1) == 0)
      {
        v30 = sub_4D3DD0();
        [v30 bounds];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v29 = v38;
        v28 = v36;
        v27 = v34;
        v26 = v32;
      }

      v39 = v209;
      [v209 setFrame:{v26, v27, v28, v29}];
      v40 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
      v207 = *(*&v39[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView] + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent);
      *&v203 = v6[68];
      v201 = v6[69];
      v200 = v6[70];
      *&v206 = v6;
      v199 = v6[71];
      v41 = *(&stru_298.reserved2 + (swift_isaMask & *v21));
      v42 = *(v21 + v41);
      *(v21 + v41) = v39;
      swift_retain_n();
      v43 = v39;

      v44 = sub_4D3DD0();
      v45 = v21;
      v46 = *&v44[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView];
      *&v44[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_foregroundView] = v39;
      v47 = v43;
      sub_4DDD94(v46);

      v202 = v47;
      v213 = 0x78616C6C61726170;
      v214 = 0xE800000000000000;
      (*(*v196 + 176))(&v213);
      v48 = *&stru_608.sectname[**(v45 + *(&stru_248.reloff + (swift_isaMask & *v45))) & swift_isaMask];
      v195 = *(v45 + *(&stru_248.reloff + (swift_isaMask & *v45)));
      v48(1);
      v49 = v40;
      v50 = *&v39[v40];
      v51 = *(v45 + *(&stru_248.reserved2 + (swift_isaMask & *v45)));
      v52 = *&v50[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView];
      *&v50[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView] = v51;
      v53 = v51;
      v54 = v50;
      sub_4F19A4(v52);

      v197 = v53;
      *(*&v53[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = 1;
      sub_2A0D84();
      v55 = *&v39[v40];
      v56 = v49;
      v198 = v49;
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v58 = swift_allocObject();
      v59 = v203;
      v60 = v201;
      *(v58 + 2) = v203;
      *(v58 + 3) = v60;
      v61 = v200;
      v62 = v199;
      *(v58 + 4) = v200;
      *(v58 + 5) = v62;
      *(v58 + 6) = v57;
      v63 = &v55[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
      v64 = *&v55[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
      *v63 = sub_256FB0;
      v63[1] = v58;
      v65 = v55;

      sub_17654(v64);

      v66 = v209;
      v67 = *&v56[v209];
      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = swift_allocObject();
      *(v69 + 2) = v59;
      *(v69 + 3) = v60;
      *(v69 + 4) = v61;
      *(v69 + 5) = v62;
      *(v69 + 6) = v68;
      v70 = &v67[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange];
      v71 = *&v67[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange];
      *v70 = sub_256FC4;
      v70[1] = v69;
      v72 = v67;

      sub_17654(v71);

      v73 = *&v198[v66];
      v74 = swift_allocObject();
      v75 = v196;
      *(v74 + 2) = v207;
      *(v74 + 3) = v75;
      *(v74 + 4) = 0x78616C6C61726170;
      *(v74 + 5) = 0xE800000000000000;
      v76 = &v73[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
      v77 = *&v73[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
      *v76 = sub_257024;
      v76[1] = v74;
      v78 = v73;

      sub_17654(v77);

      v79 = [v45 navigationItem];
      v80 = [v45 parentViewController];
      if (v80)
      {
        v81 = v80;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v82 = v81;
          v83 = [v82 navigationItem];

          v81 = [v82 parentViewController];
          v79 = v83;
          if (!v81)
          {
            goto LABEL_23;
          }
        }
      }

      v83 = v79;
LABEL_23:
      v125 = [objc_opt_self() whiteColor];
      [v83 setPreferredNavigationBarTintColor:v125];

      v126 = [objc_allocWithZone(UIView) init];
      (*&stru_5B8.segname[(swift_isaMask & *v195) - 8])(v126);
      v127 = v197[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork];
      v197[OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork] = 0;
      if (v127 == 1)
      {
        sub_29F5E4();
      }

      static SymbolButton.Material.with(_:)(sub_24DCC0, &v213);
      v128 = v213;
      v129 = v214;
      v130 = v215;
      v191 = v215;
      v194 = v216;
      v195 = *(&v217 + 1);
      v197 = v217;
      v131 = sub_23E120();
      v220 = v129;
      v221 = v128;
      v193 = v128;
      v192 = v129;
      v219 = v130;
      v218 = v217;
      v132 = *(&stru_1A8.reserved2 + (swift_isaMask & *v131));
      sub_15F84(&v221, v212, &unk_DFA9E0);
      sub_15F84(&v220, v212, &unk_DFA9E0);
      sub_15F84(&v219, v212, &unk_DFA9E0);
      sub_15F84(&v218, v212, &unk_DEE6F0);
      v190 = v132(v212);
      v134 = v133[29];
      v135 = v133[30];
      v136 = v133[31];
      v189 = v133[34];
      v133[29] = v128;
      v133[30] = v129;
      v137 = v191;
      v138 = v194;
      v133[31] = v191;
      v133[32] = v138;
      v139 = v195;
      v133[33] = v197;
      v133[34] = v139;
      sub_15F84(&v221, v211, &unk_DFA9E0);
      sub_15F84(&v220, v211, &unk_DFA9E0);
      sub_15F84(&v219, v211, &unk_DFA9E0);
      sub_15F84(&v218, v211, &unk_DEE6F0);
      sub_3FA8C(v134, v135, v136);
      v190(v212, 0);

      v140 = v210;
      v141 = sub_23D9EC();
      v142 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v141)))(v212);
      v144 = v143[29];
      v145 = v143[30];
      v146 = v143[31];
      v147 = v192;
      v143[29] = v193;
      v143[30] = v147;
      v148 = v194;
      v143[31] = v137;
      v143[32] = v148;
      v149 = v195;
      v143[33] = v197;
      v143[34] = v149;
      sub_3FA8C(v144, v145, v146);
      v142(v212, 0);

      v150 = *&v198[v209];
      v151 = *&v140[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView];
      v152 = v150;
      v153 = [v140 navigationItem];
      v154 = [v140 parentViewController];
      if (v154)
      {
        v155 = v154;
        while (1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v156 = v155;
          v157 = [v156 navigationItem];

          v155 = [v156 parentViewController];
          v153 = v157;
          if (!v155)
          {
            goto LABEL_32;
          }
        }
      }

      v157 = v153;
LABEL_32:
      v158 = [v157 navigationBar];

      type metadata accessor for ParallaxArtworkVideoPlaybackController(0);
      v159 = swift_allocObject();
      v94 = sub_255AA8(v152, v151, v158, 0x78616C6C61726170, 0xE800000000000000, v159);
      v160 = swift_allocObject();
      v161 = v210;
      swift_unknownObjectWeakInit();
      v162 = swift_allocObject();
      v163 = v202;
      swift_unknownObjectWeakInit();

      v164 = swift_allocObject();
      v165 = v201;
      v164[2] = v203;
      v164[3] = v165;
      v166 = v199;
      v164[4] = v200;
      v164[5] = v166;
      v164[6] = v160;
      v164[7] = v162;
      v164[8] = v208;
      v167 = *&stru_2E8.segname[(swift_isaMask & *v161) + 8];
      swift_beginAccess();
      v168 = *(v161 + v167);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v161 + v167) = v168;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v168 = sub_6AFC0(0, v168[2] + 1, 1, v168);
        *(v210 + v167) = v168;
      }

      v171 = v168[2];
      v170 = v168[3];
      if (v171 >= v170 >> 1)
      {
        v168 = sub_6AFC0((v170 > 1), v171 + 1, 1, v168);
      }

      v168[2] = v171 + 1;
      v172 = &v168[2 * v171];
      v172[4] = sub_2570A8;
      v172[5] = v164;
      v85 = v210;
      *(v210 + v167) = v168;
      swift_endAccess();

      *&v203 = sub_2447E8();

      sub_2439A8();
      sub_243F48();
      sub_2437D0();
      sub_12E1C(&v221, &unk_DFA9E0);
      sub_12E1C(&v220, &unk_DFA9E0);
      sub_12E1C(&v219, &unk_DFA9E0);
      sub_12E1C(&v218, &unk_DEE6F0);

      v23 = v196;
      v121 = v207;
      goto LABEL_37;
    }

LABEL_19:

    return;
  }

  v204 = v20;
  v205 = v16;
  v208 = ObjectType;
  v202 = *(v210 + *(v22 + 656));
  v84 = *&v202[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];
  v85 = v210;
  v86 = swift_allocObject();
  v87 = *(v6 + 35);
  v206 = *(v6 + 34);
  v203 = v87;
  swift_unknownObjectWeakInit();
  v88 = swift_allocObject();
  v89 = v203;
  *(v88 + 16) = v206;
  *(v88 + 32) = v89;
  *(v88 + 48) = v86;
  *(v88 + 56) = v23;
  *(v88 + 64) = 0xD000000000000015;
  *(v88 + 72) = 0x8000000000B48960;
  v90 = (v84 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *&v206 = v6;
  v91 = *(v84 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *v90 = sub_256D90;
  v90[1] = v88;
  v207 = v84;
  swift_retain_n();

  sub_17654(v91);

  v92 = sub_4D3DD0();
  v93 = sub_38E490(v84, v92, 0xD000000000000015, 0x8000000000B48960, 0, 0);
  v199 = v11;
  v94 = v93;
  v95 = **(v85 + *(&stru_248.reloff + (swift_isaMask & *v85))) & swift_isaMask;
  v201 = *(v85 + *(&stru_248.reloff + (swift_isaMask & *v85)));
  v96 = *(v95 + 1832);

  *&v203 = v96(v97);

  v198 = sub_23E120();
  v98 = *(v85 + *&stru_248.segname[(swift_isaMask & *v85) + 16]);
  v99 = *(&stru_1A8.reloff + (*v98 & swift_isaMask));
  v100 = v98;
  v101 = v209;
  v99();

  v102 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v103 = *v102;
  v104 = v102[1];
  v106 = v102[2];
  v105 = v102[3];

  v197 = v104;
  v107 = v199;
  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v103, v104, v106, v105, 0, 0, v199);
  v200 = type metadata accessor for SymbolButton.Configuration;
  sub_259250(v101, type metadata accessor for SymbolButton.Configuration);

  v108 = v198;
  v109 = v107;
  (*(&stru_1A8.flags + (swift_isaMask & *v198)))(v107);

  v110 = sub_23D9EC();
  v111 = *(v85 + *&stru_248.sectname[swift_isaMask & *v85]);
  v112 = *(&stru_1A8.reloff + (*v111 & swift_isaMask));
  v113 = v111;
  v112();

  v114 = *v102;
  v115 = v102[1];
  v117 = v102[2];
  v116 = v102[3];

  v118 = v115;
  v119 = v114;
  v120 = v209;
  SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)(0, v119, v115, v117, v116, 0, 0, v109);
  sub_259250(v120, v200);
  v121 = v207;

  (*(&stru_1A8.flags + (swift_isaMask & *v110)))(v109);
  v122 = *&stru_5B8.segname[(swift_isaMask & *v201) - 8];
  v123 = v202;
  v124 = v202;
  v122(v123);
LABEL_37:
  v173 = v205;
  v174 = v205;
  sub_751F4(v173);
  v175 = v204;
  v176 = v204;
  sub_74EA4(v175);
  v177 = swift_allocObject();
  v177[2] = v121;
  v177[3] = v23;
  v178 = v203;
  v177[4] = v203;
  v177[5] = &off_CFADC8;
  v179 = v94[5];
  v94[5] = sub_256DEC;
  v94[6] = v177;
  swift_unknownObjectRetain_n();

  sub_17654(v179);
  v180 = *(v121 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v121 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = *(v94 + 56);
  sub_76070(v180);

  (*(*v23 + 136))(*(v94 + 56));
  swift_getObjectType();
  sub_130110(*(v94 + 56));
  swift_unknownObjectRelease();
  v181 = v94[8];
  v94[8] = sub_256DF8;
  v94[9] = v23;

  sub_17654(v181);
  v182 = v94[10];
  v94[10] = sub_256E44;
  v94[11] = v23;

  sub_17654(v182);
  v183 = swift_allocObject();
  v184 = v206;
  *(v183 + 16) = *(v206 + 544);
  *(v183 + 24) = *(v184 + 552);
  *(v183 + 40) = *(v184 + 568);
  *(v183 + 48) = v23;
  *(v183 + 56) = v178;
  *(v183 + 64) = &off_CFADC8;
  *(v183 + 72) = v208;
  v185 = v94[12];
  v94[12] = sub_256EAC;
  v94[13] = v183;

  sub_17654(v185);
  v186 = v94[14];
  v94[14] = sub_256EE0;
  v94[15] = v23;

  sub_17654(v186);
  v187 = v94[16];
  v94[16] = sub_256F2C;
  v94[17] = v23;

  v188 = sub_17654(v187);
  (*(*v94 + 264))(v188);
  *(v85 + *&stru_338.segname[(swift_isaMask & *v85) + 8]) = v94;

  swift_unknownObjectRelease();
}

void sub_24D9A4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + *(&stru_248.reserved2 + (swift_isaMask & *Strong)));

    *(*&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView] + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = a1 & 1;
    sub_2A0D84();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsStatusBarAppearanceUpdate];
  }
}

void sub_24DA8C(id a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + *(&stru_248.reserved2 + (swift_isaMask & *Strong)));

    if (a1 && ([a1 hasTitle] & 1) != 0)
    {
      v5 = &off_CF0E88;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = *&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements];
    *&v4[OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements] = v5;

    v8 = sub_12D140(v7, v6);

    if ((v8 & 1) == 0)
    {
      sub_29C7E0();
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + *(&stru_248.reserved2 + (swift_isaMask & *v9)));

    if (a1)
    {
      a1 = [a1 textColor];
    }

    v12 = *&v11[OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor];
    *&v11[OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor] = a1;
    v13 = a1;

    sub_2A0B54(a1);
  }
}

id sub_24DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 112) image];
  if (result)
  {

    v8[0] = a3;
    v8[1] = a4;
    return (*(*a2 + 184))(v8);
  }

  return result;
}

uint64_t sub_24DCC0(uint64_t a1)
{
  v2 = [objc_opt_self() effectWithStyle:16];

  *a1 = v2;

  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x8000000000B59DF0;
  return result;
}

void sub_24DD38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView);

      sub_2447E8();
      sub_1897C(v4, -1);
    }

    else
    {
    }
  }
}

void *sub_24DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + *(&stru_248.reserved2 + (swift_isaMask & *result)));

    v10 = *&v9[OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent];

    v11 = [*(v10 + 112) image];

    if (v11)
    {

      v12[0] = a3;
      v12[1] = a4;
      return (*(*a2 + 184))(v12);
    }
  }

  return result;
}

uint64_t sub_24DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v8);
  (*(*a3 + 136))(a1);
  ObjectType = swift_getObjectType();
  return (*(a5 + 160))(a1, ObjectType, a5);
}

uint64_t sub_24DFC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v21[0] = v12;
  v21[1] = v11;
  (*(*a2 + 216))(v21);

  v13._rawValue = &off_CF0E38;
  v22._countAndFlagsBits = v12;
  v22._object = v11;
  v14 = sub_ABB140(v13, v22);

  if (v14 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 2)
  {
    ObjectType = swift_getObjectType();
    if (v17)
    {
      if (qword_DE6CD8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v7, qword_E71978);
      (*(v8 + 16))(v10, v19, v7);
      sub_256CA4(&qword_DFAA90, &type metadata accessor for IndexPath);
    }

    else
    {
      v20 = -1;
    }

    sub_ABAD10();
    (*(a4 + 144))(v21, ObjectType, a4);
    return sub_8085C(v21);
  }

  return result;
}

uint64_t sub_24E1FC(unsigned __int8 a1)
{
  v1 = 1819042164;
  v2 = 0x686372616573;
  if (a1 != 2)
  {
    v2 = 0x6D72657465646E75;
  }

  if (a1)
  {
    v1 = 0x6C616D726F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E270(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF0EB0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_24E2BC()
{
  swift_getWitnessTable();

  return sub_ABB400();
}

uint64_t sub_24E330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_24E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_24E40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_24E47C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E270(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_24E4B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E1FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_24E4FC()
{
  type metadata accessor for ContainerDetailViewController.Layout();
  swift_getWitnessTable();
  if ((sub_ABB400() & 1) == 0)
  {
    sub_256154();
  }
}

void sub_24E66C(uint64_t a1)
{
  v2 = *(&stru_338.offset + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

char *sub_24E69C()
{
  v1 = *(&stru_338.reloff + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_24E71C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_24E71C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for LoadingView());
  v3 = LoadingView.init(title:style:usesSubtitleTextColor:)(0, 0, 0x10000000000, 1);
  v4 = qword_DE6C58;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setBackgroundColor:qword_E71898];
  result = [a1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    [v5 setFrame:?];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E818(char a1)
{
  if (a1)
  {
    [*(v1 + *(&stru_338.offset + (swift_isaMask & *v1))) invalidate];
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_24E69C();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_256CEC;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_86_0;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_256D40;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_92;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_24EA4C(uint64_t a1, void *a2))(void)
{
  v3 = sub_24E69C();
  [v3 removeFromSuperview];

  v4 = *&stru_338.segname[(swift_isaMask & *a2) - 8];
  v5 = *(a2 + v4);
  *(a2 + v4) = 1;
  return sub_24C1A8(v5);
}

uint64_t sub_24EAB8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return 1;
  }

  v6.isa = *(a1 + 24);
  isa = v6.isa;
  sub_15F84(&isa, v5, &qword_DFA9D0);
  v2 = type metadata accessor for JSMediaItem();
  v3 = sub_256CA4(&qword_DFA9D8, type metadata accessor for JSMediaItem);
  v4 = sub_24EC48(&v6, 0x6B63617065646973, 0xEE006D6574496465, v2, &off_D04690, v3);
  sub_12E1C(&isa, &qword_DFA9D0);
  return v4;
}

uint64_t sub_24EBB0(objc_class *a1)
{
  v4.isa = a1;
  v1 = type metadata accessor for JSHeaderItem();
  v2 = sub_256CA4(&qword_DFA9C8, type metadata accessor for JSHeaderItem);
  return sub_24EC48(&v4, 0x7449726564616568, 0xEA00000000006D65, v1, &off_D046A0, v2);
}

uint64_t sub_24EC48(NSObject *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v75[1] = a6;
  v77 = a2;
  v78 = a5;
  v80 = a3;
  v81 = a1;
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v75 - v12;
  v14 = a4;
  v15 = *(a4 - 8);
  v16 = __chkstk_darwin(v11);
  v75[0] = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v76 = v75 - v19;
  __chkstk_darwin(v18);
  v79 = v75 - v20;
  v21 = [v6 traitCollection];
  v22 = UITraitCollection.isMediaPicker.getter();

  v23 = [v7 traitCollection];
  v24 = [v23 userInterfaceIdiom];

  v25 = [v7 traitCollection];
  v26 = [v25 horizontalSizeClass];

  result = 1;
  if (!v22 && !v24 && v26 == &dword_0 + 1)
  {
    (*(v10 + 16))(v13, v81, v9);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      (*(v10 + 8))(v13, v9);
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v28 = sub_AB4BC0();
      __swift_project_value_buffer(v28, qword_E71120);
      v29 = v80;

      v30 = sub_AB4BA0();
      v31 = sub_AB9F50();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v83[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_425E68(v77, v29, v83);
        _os_log_impl(&dword_0, v30, v31, "Layout undetermined, no %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }

      goto LABEL_19;
    }

    v34 = v79;
    (*(v15 + 32))(v79, v13, v14);
    v35 = (*(v78 + 8))(v14);
    if (!v35)
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v46 = sub_AB4BC0();
      __swift_project_value_buffer(v46, qword_E71120);
      v47 = *(v15 + 16);
      v48 = v76;
      v47(v76, v34, v14);
      v49 = v80;

      v50 = sub_AB4BA0();
      v51 = sub_AB9F50();

      if (!os_log_type_enabled(v50, v51))
      {
        v74 = *(v15 + 8);
        v74(v48, v14);
        v74(v34, v14);

        return 3;
      }

      v52 = swift_slowAlloc();
      v81 = v50;
      v53 = v48;
      v54 = v52;
      v83[0] = swift_slowAlloc();
      *v54 = 136315394;
      *(v54 + 4) = sub_425E68(v77, v49, v83);
      *(v54 + 12) = 2082;
      v55 = v75[0];
      v47(v75[0], v53, v14);
      v56 = *(v15 + 8);
      v56(v53, v14);
      v57 = sub_ABB330();
      v59 = v58;
      v56(v55, v14);
      v60 = sub_425E68(v57, v59, v83);

      *(v54 + 14) = v60;
      v30 = v81;
      _os_log_impl(&dword_0, v81, v51, "Layout undetermined %s: %{public}s", v54, 0x16u);
      swift_arrayDestroy();

      v56(v34, v14);
LABEL_19:

      return 3;
    }

    v36 = v35;
    v37 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_supportsUberArtwork;
    swift_beginAccess();
    v38 = v36[v37];
    if (v38 == 2)
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v39 = sub_AB4BC0();
      __swift_project_value_buffer(v39, qword_E71120);
      v40 = v36;
      v41 = sub_AB4BA0();
      v42 = sub_AB9F50();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        *(v43 + 4) = v40;
        *v44 = v36;
        v45 = v40;
        _os_log_impl(&dword_0, v41, v42, "Layout undetermined (supportsUberArtwork not provided) videoDetailArtwork: %{public}@", v43, 0xCu);
        sub_12E1C(v44, &qword_DF9B20);

        (*(v15 + 8))(v34, v14);
      }

      else
      {
        (*(v15 + 8))(v34, v14);
      }

      return 3;
    }

    LODWORD(v81) = (v38 & 1) == 0;
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v61 = sub_AB4BC0();
    __swift_project_value_buffer(v61, qword_E71120);
    v62 = v36;
    v63 = sub_AB4BA0();
    v64 = sub_AB9F50();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v14;
      v67 = v66;
      v68 = v15;
      v69 = swift_slowAlloc();
      v82 = v69;
      *v65 = 136315394;
      if (v38)
      {
        v70 = 1819042164;
      }

      else
      {
        v70 = 0x6C616D726F6ELL;
      }

      if (v38)
      {
        v71 = 0xE400000000000000;
      }

      else
      {
        v71 = 0xE600000000000000;
      }

      v72 = sub_425E68(v70, v71, &v82);

      *(v65 + 4) = v72;
      *(v65 + 12) = 2114;
      *(v65 + 14) = v62;
      *v67 = v36;
      v73 = v62;
      _os_log_impl(&dword_0, v63, v64, "Layout determined as %s, videoDetailArtwork: %{public}@", v65, 0x16u);
      sub_12E1C(v67, &qword_DF9B20);

      __swift_destroy_boxed_opaque_existential_0(v69);

      (*(v68 + 8))(v79, v80);
      return v81;
    }

    else
    {
      (*(v15 + 8))(v34, v14);

      return v81;
    }
  }

  return result;
}