uint64_t sub_51498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_514D8(uint64_t result, int a2, int a3)
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
      *(result + 120) = (a2 - 1);
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

uint64_t sub_5155C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4948(&qword_19A480);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[7];
LABEL_8:

    return sub_52E0(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_4948(&qword_19A350);
    v8 = a3[16];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[14] + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_5165C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_4948(&qword_19A480);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[7];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[14] + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_4948(&qword_19A350);
    v10 = a4[16];
  }

  return sub_53A8(a1 + v10, a2, a2, v9);
}

unint64_t sub_51744()
{
  sub_189DC(319, &qword_19AE28);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_189DC(319, &qword_19C3F8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_47DD4(319, &qword_19C0A0, type metadata accessor for Badge);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_189DC(319, &unk_19C400);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_248F4(319, &qword_19C0A8, &unk_19C0B0);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            v1 = sub_18A28();
            if (v12 <= 0x3F)
            {
              sub_47DD4(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

unint64_t sub_51970()
{
  result = qword_19C468;
  if (!qword_19C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C468);
  }

  return result;
}

__n128 sub_519FC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 304);
  v3 = *(v1 - 288);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 272);
  return result;
}

double sub_51A20()
{
  *(v0 - 272) = 0;
  result = 0.0;
  *(v0 - 288) = 0u;
  *(v0 - 304) = 0u;
  return result;
}

double sub_51A78()
{
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return result;
}

uint64_t sub_51AB0()
{

  return sub_9414((v0 - 160), v0 - 304);
}

void sub_51ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v6 = sub_4948(&qword_19A480);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v31 = type metadata accessor for Badge();
  __chkstk_darwin(v31);
  v30 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_139A34();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_4948(&qword_19C4C0);
  sub_524B8();

  if (v35[0])
  {
    sub_53D30(v35[0], a3);
  }

  swift_getKeyPath();
  sub_5249C();

  if (v34)
  {
    sub_9414(&v33, v35);
    sub_486B0();
    (*(v13 + 384))(v35, a3);
    sub_3C04(v35);
  }

  else
  {
    sub_CC68(&v33, &qword_19E960);
  }

  swift_getKeyPath();
  sub_5249C();

  if (v34)
  {
    sub_9414(&v33, v35);
    sub_486B0();
    (*(v14 + 384))(v35, a3);
    sub_3C04(v35);
  }

  else
  {
    sub_CC68(&v33, &qword_19E960);
  }

  v15 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  swift_getKeyPath();
  sub_524B8();

  (*(&stru_158.size + (swift_isaMask & *v15)))(v35, a3);
  sub_3C04(v35);
  v16 = a3;
  if (_UISolariumEnabled() && (v18 = v28, v17 = v29, (*(v28 + 104))(v12, enum case for FlagKeys.Solarium(_:), v29), v19 = sub_139A24(), (*(v18 + 8))(v12, v17), (v19 & 1) != 0))
  {
    v20 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_524B8();

    v20 = v35[0];
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator] = v20;
  swift_getKeyPath();
  sub_524B8();

  if (sub_52E0(v8, 1, v31) == 1)
  {
    sub_CC68(v8, &qword_19A480);
    swift_getKeyPath();
    sub_5249C();

    if (v34)
    {
      sub_9414(&v33, v35);
      (*(&stru_158.size + (swift_isaMask & **&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel])))(v35, v16);
      sub_3C04(v35);
    }

    else
    {
      sub_CC68(&v33, &qword_19E960);
    }
  }

  else
  {
    v21 = v30;
    sub_48630(v8, v30);
    sub_31DEC(v21);
    sub_30B74(v21);
  }

  swift_getKeyPath();
  sub_524B8();

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] = v35[0];
  sub_52D60();
  swift_getKeyPath();
  sub_4948(&qword_19C4C8);
  sub_314E0();
  sub_13BAD4();

  v22 = LOBYTE(v35[0]);
  swift_getKeyPath();
  sub_5249C();

  if (v22)
  {
    if (v22 == 1)
    {
      v23 = v33;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 1;
  }

  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  swift_beginAccess();
  v4[v24] = v23;
  sub_52D7C();
  v25 = [v4 contentView];
  swift_getKeyPath();
  sub_5249C();

  if (*(&v33 + 1))
  {
    v26 = sub_13BB54();
  }

  else
  {
    v26 = 0;
  }

  [v25 setAccessibilityLabel:v26];
}

uint64_t sub_521A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleOptionComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_52210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleOptionComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_52278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_522CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_52348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_523C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_52444()
{
  result = qword_19C470;
  if (!qword_19C470)
  {
    type metadata accessor for BundleOption();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C470);
  }

  return result;
}

uint64_t sub_5249C()
{

  return sub_13B5E4();
}

uint64_t sub_524B8()
{

  return sub_13B5E4();
}

id sub_524D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for BadgeView()) init];
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel;
  sub_139BB4();
  v12 = objc_opt_self();
  v13 = [v12 ams_secondaryText];
  v14 = sub_13A2A4();
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleCaption1;
  v15 = *(*(v14 - 8) + 104);
  v15();
  v16 = UIFontTextStyleCaption1;
  *&v5[v11] = sub_57324();
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] = 0;
  v34 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel;
  v17 = [v12 ams_secondaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  v18 = sub_CC08(__src);
  *v18 = UIFontTextStyleCaption2;
  v18[1] = *&UIFontWeightBold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = sub_13A3E4();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  (v15)(v18, enum case for FontSource.useCase(_:), v14);
  v21 = UIFontTextStyleCaption2;
  *&v5[v34] = sub_57324();
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator] = 0;
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel;
  v23 = [v12 ams_primaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleSubheadline;
  v15();
  v24 = UIFontTextStyleSubheadline;
  *&v5[v22] = sub_57324();
  v25 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel;
  v26 = [v12 ams_primaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleHeadline;
  v15();
  v27 = UIFontTextStyleHeadline;
  *&v5[v25] = sub_139BA4();
  v28 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_containerView;
  *&v5[v28] = [objc_allocWithZone(AMSUICommonView) init];
  v29 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView;
  *&v5[v29] = [objc_allocWithZone(AMSUICommonImageView) init];
  v30 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView;
  *&v5[v30] = [objc_allocWithZone(AMSUICommonView) init];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_services] = &_swiftEmptyArrayStorage;
  v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid;
  type metadata accessor for ServicesGridView();
  memset(__src, 0, 40);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  *&v5[v31] = sub_117788(0, 1, __src, 0, 0, 1, 0, 1, v37);
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled] = 0;
  sub_5292C(__src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics], __src, 0x190uLL);
  v35.receiver = v5;
  v35.super_class = type metadata accessor for BundleOptionComponent();
  v32 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  sub_53D80();

  return v32;
}

uint64_t sub_5292C@<X0>(double *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  *&v46 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v6 = sub_139A24(), (*(v3 + 8))(v5, v2), v7 = 10.0, (v6 & 1) == 0))
  {
    v7 = 8.0;
  }

  v44 = &type metadata for Double;
  v45 = &protocol witness table for Double;
  *&v43 = v7;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0x4036000000000000;
  v38 = &type metadata for Double;
  v39 = &protocol witness table for Double;
  *&v37 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v8 = sub_139A24(), (*(v3 + 8))(v5, v2), v9 = 4.0, (v8 & 1) == 0))
  {
    v9 = 5.0;
  }

  v35 = &type metadata for Double;
  v36 = &protocol witness table for Double;
  *&v34 = v9;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v10 = sub_139A24(), (*(v3 + 8))(v5, v2), v11 = 10.0, (v10 & 1) == 0))
  {
    v11 = 5.0;
  }

  v32 = &type metadata for Double;
  v33 = &protocol witness table for Double;
  *&v31 = v11;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v12 = sub_139A24(), (*(v3 + 8))(v5, v2), v13 = 6.0, (v12 & 1) == 0))
  {
    v13 = 8.0;
  }

  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  *&v28 = v13;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v14 = sub_139A24(), (*(v3 + 8))(v5, v2), v15 = 0.0, (v14 & 1) == 0))
  {
    v15 = 8.0;
  }

  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = v15;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_139A24(), (*(v3 + 8))(v5, v2), v17 = 10.0, (v16 & 1) == 0))
  {
    v17 = 14.0;
  }

  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = v17;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v18 = sub_139A24(), (*(v3 + 8))(v5, v2), v19 = 10.0, (v18 & 1) == 0))
  {
    v19 = 8.0;
  }

  *(a1 + 48) = &type metadata for Double;
  *(a1 + 49) = &protocol witness table for Double;
  a1[45] = v19;
  sub_21520(&v46, a1);
  sub_21520(&v43, (a1 + 5));
  sub_21520(&v40, (a1 + 10));
  sub_21520(&v37, (a1 + 15));
  sub_21520(&v34, (a1 + 20));
  sub_21520(&v28, (a1 + 25));
  sub_21520(&v31, (a1 + 30));
  sub_21520(&v25, (a1 + 35));
  return sub_21520(&v22, (a1 + 40));
}

uint64_t sub_52D60()
{
  if (*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible) == 1)
  {
    return sub_54218();
  }

  else
  {
    return sub_54370();
  }
}

void sub_52D7C()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_57304();
  if (v0[v1] != 1)
  {
    sub_54888();
    if (v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] == 1)
    {
      sub_54218();
    }

    v13 = [v0 contentView];
    v14 = [v13 layer];

    if (qword_199F20 != -1)
    {
      sub_572E4();
    }

    [v14 setBorderWidth:*&qword_1B29D8];

    v15 = [v0 contentView];
    v16 = [v15 layer];

    if (qword_199F18 != -1)
    {
      swift_once();
    }

    [v16 setBorderColor:qword_1B29D0];

    v11 = [v0 contentView];
    [v11 setAccessibilityTraits:UIAccessibilityTraitButton];
    goto LABEL_17;
  }

  sub_549CC();
  sub_54370();
  v2 = sub_57388();
  v3 = [v2 layer];

  [v3 setBorderWidth:2.0];
  v4 = sub_57388();
  v5 = [v4 layer];

  v6 = [v0 tintColor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 CGColor];

    [v5 setBorderColor:v8];
    v9 = sub_57388();
    [v9 invalidateIntrinsicContentSize];

    v10 = sub_57388();
    v11 = v10;
    v12 = UIAccessibilityTraitButton;
    if (UIAccessibilityTraitButton)
    {
      if ((UIAccessibilityTraitSelected & ~UIAccessibilityTraitButton) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!UIAccessibilityTraitSelected)
    {
      v12 = 0;
      goto LABEL_16;
    }

    v12 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
LABEL_16:
    [v10 setAccessibilityTraits:v12];
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_53054()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_57304();
  return *(v0 + v1);
}

void sub_53088(char a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_5736C();
  *(v1 + v3) = a1;
  sub_52D7C();
}

uint64_t sub_530D0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BundleOptionComponent();
  v2 = objc_msgSendSuper2(&v9, "prepareForReuse");
  (*(&stru_158.offset + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel])))(v2);
  sub_2D730();
  (*(v3 + 392))();
  sub_2D730();
  (*(v4 + 392))();
  sub_2D730();
  (*(v5 + 392))();
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_5736C();
  v1[v6] = 0;
  sub_52D7C();
  sub_117FB4();
  sub_2D730();
  return (*(v7 + 392))();
}

uint64_t sub_532EC()
{
  sub_13A314();
  sub_9E94();
  v39 = v2;
  v40 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v38 = v4 - v3;
  v66.receiver = v0;
  v66.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55D98(&v0[v9], v65);
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  v37 = v10;
  v42 = sub_139BB4();
  sub_1D3B8();
  v43 = sub_9A68(v11, v12);
  v41 = v10;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  v45 = sub_CACC(0, &qword_19C568);
  v46 = &protocol witness table for UIView;
  v44 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel];
  v48 = v42;
  v49 = v43;
  v47 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel];
  v51 = v42;
  v52 = v43;
  v50 = v15;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel];
  v54 = v42;
  v55 = v43;
  v53 = v16;
  v17 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView];
  v63 = type metadata accessor for BadgeView();
  v64 = &protocol witness table for UIView;
  v62 = v17;
  v18 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView];
  v60 = sub_CACC(0, &qword_19E9B0);
  v61 = &protocol witness table for UIView;
  v59 = v18;
  v19 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid];
  v57 = type metadata accessor for ServicesGridView();
  v58 = &protocol witness table for UIView;
  v56 = v19;
  v65[400] = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator];
  v20 = v37;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = [v0 contentView];
  [v28 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v29 = [v0 contentView];
  v30 = sub_35BE8();
  BundleOptionComponentLayout.placeChildren(relativeTo:in:)(v31, v32, v30, v33, v34, v35);

  (*(v39 + 8))(v38, v40);
  return sub_57220(&v41);
}

id sub_536AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleOptionComponent();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

void sub_53734(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v3, "setHighlighted:", a1 & 1);
  sub_5377C();
}

void sub_5377C()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    v6 = sub_139A24();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      sub_53894([v1 isHighlighted]);
    }
  }
}

void sub_53894(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_55D74;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_E2448;
  v6[3] = &unk_187BB0;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

void sub_539A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentView];

    if (a2)
    {
      if (qword_199F08 != -1)
      {
        swift_once();
      }

      v6 = &qword_1B29C0;
    }

    else
    {
      if (qword_199EF8 != -1)
      {
        swift_once();
      }

      v6 = &qword_1B29B0;
    }

    [v5 setBackgroundColor:*v6];
  }
}

void sub_53AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_5736C();
  *(v0 + v1) = *(v0 + v1);
  sub_52D7C();
}

void sub_53B44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

void sub_53D30(uint64_t a1, uint64_t a2)
{
  v3 = sub_4C488(a1);
  sub_1180F8(v3, a2);

  sub_117FF4();
}

id sub_53D80()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_199EF8 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1B29B0];

  v10 = sub_57354();
  if (qword_199F00 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1B29B8);

  v11 = sub_57354();
  v12 = [v11 layer];

  if (qword_199F20 != -1)
  {
    sub_572E4();
  }

  [v12 setBorderWidth:*&qword_1B29D8];

  if (!_UISolariumEnabled() || (v13 = sub_57344(), v14(v13), v15 = sub_139A24(), (*(v4 + 8))(v8, v2), (v15 & 1) == 0))
  {
    v16 = sub_57354();
    v17 = [objc_opt_self() ams_shadow];
    v18 = [v17 CGColor];

    v19 = sub_4AD60();
    sub_12BE00(v18, v19, v20, v21, v22);
  }

  v23 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_containerView];
  v24 = [objc_opt_self() ams_clear];
  [v23 setBackgroundColor:v24];

  v25 = sub_57354();
  [v25 addSubview:v23];

  v26 = [v23 layer];
  [v26 setMasksToBounds:1];

  v27 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  [v27 setContentMode:2];
  [v23 addSubview:v27];
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (!_UISolariumEnabled() || (v28 = sub_57344(), v29(v28), v30 = sub_139A24(), (*(v4 + 8))(v8, v2), (v30 & 1) == 0))
  {
    sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView);
    sub_54B20();
  }

  v31 = sub_57354();
  [v31 setIsAccessibilityElement:1];

  v32 = sub_57354();
  v33 = UIAccessibilityTraitButton;
  [v32 setAccessibilityTraits:UIAccessibilityTraitButton];

  v34 = sub_57354();
  sub_55CA0(0xD000000000000011, 0x800000000014F720, v34);

  [v27 setIsAccessibilityElement:1];
  return [v27 setAccessibilityTraits:v33];
}

uint64_t sub_54218()
{
  v1 = v0;
  swift_getObjectType();
  [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView) setHidden:1];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (qword_199EF0 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = xmmword_1B29A0;
  sub_118970();
  sub_118068(0, 1, 0);
  v7 = &type metadata for Double;
  v8 = &protocol witness table for Double;
  *&v6 = 0x4018000000000000;
  v3 = v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
  swift_beginAccess();
  sub_3C04(v3 + 128);
  sub_21520(&v6, v3 + 128);
  swift_endAccess();
  sub_5292C(&v6);
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55C44(&v6, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_54370()
{
  v1 = v0;
  swift_getObjectType();
  [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView) setHidden:0];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (qword_199EE8 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = xmmword_1B2990;
  sub_118970();
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  sub_117A18();
  sub_117FF4();
  sub_54478(v5);
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55C44(v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_54478@<X0>(double *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  *&v46 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v6 = sub_139A24(), (*(v3 + 8))(v5, v2), v7 = 10.0, (v6 & 1) == 0))
  {
    v7 = 8.0;
  }

  v44 = &type metadata for Double;
  v45 = &protocol witness table for Double;
  *&v43 = v7;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0x4036000000000000;
  v38 = &type metadata for Double;
  v39 = &protocol witness table for Double;
  *&v37 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v8 = sub_139A24(), (*(v3 + 8))(v5, v2), v9 = 4.0, (v8 & 1) == 0))
  {
    v9 = 5.0;
  }

  v35 = &type metadata for Double;
  v36 = &protocol witness table for Double;
  *&v34 = v9;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v10 = sub_139A24(), (*(v3 + 8))(v5, v2), v11 = 10.0, (v10 & 1) == 0))
  {
    v11 = 5.0;
  }

  v32 = &type metadata for Double;
  v33 = &protocol witness table for Double;
  *&v31 = v11;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v12 = sub_139A24(), (*(v3 + 8))(v5, v2), v13 = 6.0, (v12 & 1) == 0))
  {
    v13 = 8.0;
  }

  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  *&v28 = v13;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v14 = sub_139A24(), (*(v3 + 8))(v5, v2), v15 = 0.0, (v14 & 1) == 0))
  {
    v15 = 8.0;
  }

  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = v15;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_139A24(), (*(v3 + 8))(v5, v2), v17 = 16.0, (v16 & 1) == 0))
  {
    v17 = 8.0;
  }

  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = v17;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v18 = sub_139A24(), (*(v3 + 8))(v5, v2), v19 = 10.0, (v18 & 1) == 0))
  {
    v19 = 8.0;
  }

  *(a1 + 48) = &type metadata for Double;
  *(a1 + 49) = &protocol witness table for Double;
  a1[45] = v19;
  sub_21520(&v46, a1);
  sub_21520(&v43, (a1 + 5));
  sub_21520(&v40, (a1 + 10));
  sub_21520(&v37, (a1 + 15));
  sub_21520(&v34, (a1 + 20));
  sub_21520(&v28, (a1 + 25));
  sub_21520(&v31, (a1 + 30));
  sub_21520(&v25, (a1 + 35));
  return sub_21520(&v22, (a1 + 40));
}

void sub_54888()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710);
  v3 = v2;
  v4 = sub_EE960(0x656C63726963, 0xE600000000000000, v2);
  v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView);
  if (v4)
  {
    if (qword_199F10 != -1)
    {
      swift_once();
    }

    v6 = [v4 imageWithTintColor:qword_1B29C8 renderingMode:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setImage:?];
}

void sub_549CC()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710);
  v3 = v2;
  v4 = sub_EE960(0xD000000000000015, 0x800000000014EC50, v2);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  if (v4)
  {
    v7 = v4;
    v8 = [v1 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 setImage:v10];
}

void sub_54B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_54B9C(double a1, double a2, float a3)
{
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  sub_57304();
  sub_55D98(&v3[v6], v53);
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  v30 = sub_139BB4();
  sub_1D3B8();
  v31 = sub_9A68(v8, v9);
  v29[0] = v7;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  v33 = sub_CACC(0, &qword_19C568);
  v34 = &protocol witness table for UIView;
  v32 = v10;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel];
  v36 = v30;
  v37 = v31;
  v35 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel];
  v39 = v30;
  v40 = v31;
  v38 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel];
  v42 = v30;
  v43 = v31;
  v41 = v13;
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView];
  v51 = type metadata accessor for BadgeView();
  v52 = &protocol witness table for UIView;
  v50 = v14;
  v15 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView];
  v48 = sub_CACC(0, &qword_19E9B0);
  v49 = &protocol witness table for UIView;
  v47 = v15;
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid];
  v45 = type metadata accessor for ServicesGridView();
  v46 = &protocol witness table for UIView;
  v44 = v16;
  v53[400] = 1;
  v17 = v7;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  sub_27C54();
  sub_13BE64();
  v25 = [v3 contentView];
  sub_55DF4(v25, v29);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v26;
  }

  sub_57220(v29);
  return v27;
}

id sub_54EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleOptionComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_55040(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_550A8;
}

void sub_550A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_52D7C();
  }
}

id sub_550DC()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension:150.0];
  v2 = [v0 absoluteDimension:260.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id sub_55188()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && (v10 = sub_57344(), v11(v10), v12 = sub_139A24(), (*(v2 + 8))(v6, v0), (v12 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = v14 - (v17 + v17);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v20 = v19;
    swift_unknownObjectRelease();
    v18 = v20 - v9;
  }

  if (v18 <= 360.0)
  {
    v21 = v18;
  }

  else
  {
    v21 = 360.0;
  }

  v22 = objc_opt_self();
  v23 = [v22 absoluteDimension:v21];
  v24 = [v22 estimatedDimension:200.0];
  v25 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v24];

  return v25;
}

uint64_t sub_5540C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 28.0, (v5 & 1) == 0))
  {
    v6 = 24.0;
  }

  *&xmmword_1B2990 = v6;
  *(&xmmword_1B2990 + 1) = v6;
  return result;
}

uint64_t sub_55514()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 28.0, (v5 & 1) == 0))
  {
    v6 = 32.0;
  }

  *&xmmword_1B29A0 = v6;
  *(&xmmword_1B29A0 + 1) = v6;
  return result;
}

id sub_55620()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1B29B0 = result;
  return result;
}

uint64_t sub_5574C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1B29B8 = *&v6;
  return result;
}

id sub_55850()
{
  result = [objc_opt_self() ams_primarySystemFillColor];
  qword_1B29C0 = result;
  return result;
}

id sub_5588C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_tertiaryText;
  }

  else
  {
    v5 = &selRef_ams_secondaryText;
  }

  result = [objc_opt_self() *v5];
  qword_1B29C8 = result;
  return result;
}

void sub_559B8()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1B29D0 = v7;
}

uint64_t sub_55B40()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1B29D8 = *&v6;
  return result;
}

void sub_55CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  [a3 setAccessibilityIdentifier:v4];
}

uint64_t sub_55D04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_55D3C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_55D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_55DF4(uint64_t a1, void *a2)
{
  v104 = sub_13A514();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_13A4F4();
  *&v132 = *(v101 - 8);
  v111 = v132;
  __chkstk_darwin(v101);
  v100 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = v97 - v7;
  __chkstk_darwin(v8);
  v97[0] = v97 - v9;
  v115 = sub_13A4C4();
  v135 = *(v115 - 8);
  __chkstk_darwin(v115);
  v131 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_13A4B4();
  v125 = *(v113 - 8);
  v126 = v113 - 8;
  v134 = v125;
  __chkstk_darwin(v113 - 8);
  v112 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_13A454();
  v136 = *(v133 - 8);
  __chkstk_darwin(v133);
  v109 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13C114();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[53];
  v18 = a2[54];
  sub_162F0(a2 + 50, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v19 = *(v14 + 8);
  v19(v16, v13);
  v20 = a2[48];
  v21 = a2[49];
  sub_162F0(a2 + 45, v20);
  sub_20038(v20, v21);
  sub_13A404();
  v19(v16, v13);
  v22 = a2[43];
  v23 = a2[44];
  sub_162F0(a2 + 40, v22);
  sub_20038(v22, v23);
  sub_13A404();
  v19(v16, v13);
  sub_162F0(a2, a2[3]);
  v106 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v110 = *(v132 + 72);
  v24 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v25 = swift_allocObject();
  v132 = xmmword_13E660;
  *(v25 + 16) = xmmword_13E660;
  v107 = v24;
  v98 = v25;
  v108 = v25 + v24;
  v27 = a2[13];
  v26 = a2[14];
  v28 = sub_162F0(a2 + 10, v27);
  *(&v142 + 1) = v27;
  v143 = *(v26 + 8);
  v29 = sub_CC08(&v141);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v130 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v30 = *(v136 + 104);
  v129 = v136 + 104;
  v128 = v30;
  v30(v109);
  v127 = sub_4948(&qword_19AFE8);
  v31 = *(v125 + 72);
  v32 = v115;
  v33 = v134;
  v125 = *(v134 + 80);
  v114 = ((v125 + 32) & ~v125) + 3 * v31;
  v126 = (v125 + 32) & ~v125;
  v34 = swift_allocObject();
  *(v34 + 16) = v132;
  sub_13A484();
  sub_13A494();
  v105 = 2 * v31;
  sub_13A4A4();
  v137 = v34;
  v124 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v123 = sub_4948(&qword_19AFF0);
  v122 = sub_1D268();
  v35 = v112;
  v36 = v113;
  sub_13BF64();
  v121 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v37 = v135;
  v38 = *(v135 + 104);
  v120 = v135 + 104;
  v119 = v38;
  v39 = v131;
  v38(v131);
  v40 = v109;
  sub_13A4E4();
  v41 = *(v37 + 8);
  v135 = v37 + 8;
  v118 = v41;
  v41(v39, v32);
  v42 = *(v33 + 8);
  v134 = v33 + 8;
  v117 = v42;
  v43 = v36;
  v42(v35, v36);
  v44 = *(v136 + 8);
  v136 += 8;
  v116 = v44;
  v45 = v40;
  v46 = v133;
  v44(v40, v133);
  sub_1D2CC(&v138);
  sub_3C04(&v141);
  v48 = a2[18];
  v47 = a2[19];
  v49 = sub_162F0(a2 + 15, v48);
  *(&v142 + 1) = v48;
  v143 = *(v47 + 8);
  v50 = sub_CC08(&v141);
  (*(*(v48 - 8) + 16))(v50, v49, v48);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v128(v45, v130, v46);
  v51 = swift_allocObject();
  *(v51 + 16) = v132;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v137 = v51;
  v52 = v43;
  sub_13BF64();
  v53 = v131;
  v54 = v115;
  v119(v131, v121, v115);
  v55 = v110;
  v56 = v108;
  sub_13A4E4();
  v118(v53, v54);
  v117(v35, v52);
  v57 = v133;
  v116(v45, v133);
  sub_1D2CC(&v138);
  sub_3C04(&v141);
  v143 = 0;
  v97[1] = v56 + 2 * v55;
  v141 = 0u;
  v142 = 0u;
  v58 = v57;
  v128(v45, v130, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v132;
  sub_13A484();
  sub_13A494();
  v108 = v31;
  sub_13A4A4();
  *&v138 = v59;
  sub_13BF64();
  v119(v53, v121, v54);
  sub_13A4E4();
  v118(v53, v54);
  v117(v35, v52);
  v60 = v45;
  v116(v45, v58);
  sub_1D2CC(&v141);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A324() & 1) == 0)
  {
    v62 = v101;
    goto LABEL_7;
  }

  sub_162F0(a2 + 20, a2[23]);
  v61 = sub_13A364();
  v62 = v101;
  if (v61)
  {
LABEL_7:
    v69 = v98;
    goto LABEL_8;
  }

  sub_162F0(a2 + 20, a2[23]);
  sub_13A384();
  sub_162F0(a2 + 20, a2[23]);
  sub_13A374();
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v63 = v133;
  v128(v45, v130, v133);
  v64 = swift_allocObject();
  *(v64 + 16) = v132;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v137 = v64;
  v65 = v112;
  v66 = v113;
  sub_13BF64();
  v67 = v131;
  v68 = v115;
  v119(v131, v121, v115);
  sub_13A4E4();
  v118(v67, v68);
  v117(v65, v66);
  v116(v60, v63);
  sub_1D2CC(&v138);
  sub_3C04(&v141);
  v69 = v98;
  v71 = *(v98 + 16);
  v70 = *(v98 + 24);
  if (v71 >= v70 >> 1)
  {
    sub_58ABC(v70 > 1, v71 + 1, 1, v98);
    v69 = v96;
  }

  *(v69 + 16) = v71 + 1;
  (*(v111 + 32))(v69 + v107 + v71 * v110, v97[0], v62);
LABEL_8:
  if (sub_58A4C())
  {
    sub_162F0(a2 + 30, a2[33]);
    sub_13A374();
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v72 = v133;
    v128(v60, v130, v133);
    v73 = v131;
    v74 = v115;
    v119(v131, v121, v115);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_140280;
    sub_13A484();
    v137 = v75;
    v76 = v112;
    v77 = v113;
    sub_13BF64();
    sub_13A4E4();
    v117(v76, v77);
    v118(v73, v74);
    v116(v60, v72);
    sub_1D2CC(&v138);
    sub_3C04(&v141);
    v79 = *(v69 + 16);
    v78 = *(v69 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_58ABC(v78 > 1, v79 + 1, 1, v69);
      v69 = v95;
    }

    *(v69 + 16) = v79 + 1;
    (*(v111 + 32))(v69 + v107 + v79 * v110, v99, v62);
  }

  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v80 = v60;
  v81 = v133;
  v128(v60, v130, v133);
  v82 = swift_allocObject();
  *(v82 + 16) = v132;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v138 = v82;
  v83 = v112;
  v84 = v113;
  sub_13BF64();
  v85 = v131;
  v86 = v115;
  v119(v131, v121, v115);
  v87 = v100;
  sub_13A4E4();
  v118(v85, v86);
  v117(v83, v84);
  v116(v80, v81);
  sub_1D2CC(&v141);
  v89 = *(v69 + 16);
  v88 = *(v69 + 24);
  if (v89 >= v88 >> 1)
  {
    sub_58ABC(v88 > 1, v89 + 1, 1, v69);
    v69 = v94;
  }

  *(v69 + 16) = v89 + 1;
  (*(v111 + 32))(v69 + v107 + v89 * v110, v87, v62);
  v90 = v102;
  sub_13A4D4();
  sub_13A464();
  v92 = v91;
  (*(v103 + 8))(v90, v104);
  return v92;
}

id sub_572C8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);
  v6 = *(v3 + 3576);

  return [v2 v6];
}

uint64_t sub_572E4()
{

  return swift_once();
}

uint64_t sub_57304()
{

  return swift_beginAccess();
}

uint64_t sub_57324()
{

  return sub_139BA4();
}

id sub_57354()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t sub_5736C()
{

  return swift_beginAccess();
}

id sub_57388()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t BundleOptionComponentLayout.init(metrics:titleView:selectionStatusView:subtitleView:disclaimerView:propositionLabel:badgeView:separatorView:gridView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  sub_5AA24();
  v17 = v16;
  *(v16 + 720) = 1;
  memcpy((v16 + 320), v18, 0x190uLL);
  sub_9414(v15, v17);
  sub_9414(v14, v17 + 40);
  sub_9414(v13, v17 + 80);
  sub_9414(v12, v17 + 120);
  sub_9414(v11, v17 + 160);
  sub_9414(v10, v17 + 280);
  sub_9414(v9, v17 + 240);

  return sub_9414(a9, v17 + 200);
}

uint64_t BundleOptionComponentLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v167 = a2;
  v174 = sub_13A4F4();
  v197 = *(v174 - 8);
  *&v199 = v174 - 8;
  v180 = v197;
  __chkstk_darwin(v174 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_2159C(&v153 - v14);
  v15 = sub_13A314();
  v16 = sub_5A838(v15, &v198);
  v165 = v17;
  __chkstk_darwin(v16);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v18);
  sub_2159C(&v153 - v19);
  v20 = sub_13A514();
  v21 = sub_5A838(v20, &v196);
  v162 = v22;
  __chkstk_darwin(v21);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_2159C(&v153 - v24);
  v25 = sub_13A4C4();
  v26 = sub_5A838(v25, &v210);
  v202 = v27;
  __chkstk_darwin(v26);
  sub_9EC0();
  sub_2159C(v29 - v28);
  v181 = sub_13A4B4();
  v192 = *(v181 - 8);
  v193 = v181 - 8;
  v204 = v192;
  __chkstk_darwin(v181 - 8);
  sub_9EC0();
  sub_2159C(v31 - v30);
  v32 = sub_13A454();
  v33 = sub_5A838(v32, &v207 + 8);
  v203 = v34;
  __chkstk_darwin(v33);
  sub_9EC0();
  sub_2159C(v36 - v35);
  v37 = sub_13C114();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  sub_9EC0();
  *&v41 = v40 - v39;
  sub_5A924(v6 + 50);
  sub_5A8DC();
  v195 = v42;
  v43 = *(v38 + 8);
  v44 = sub_9FA4();
  v43(v44);
  sub_5A924(v6 + 55);
  sub_5A8DC();
  v196 = v45;
  v46 = sub_9FA4();
  v43(v46);
  sub_5A924(v6 + 45);
  sub_5A8DC();
  v47 = sub_9FA4();
  v43(v47);
  sub_5A924(v6 + 40);
  sub_5A8DC();
  v49 = v48;
  v154 = v41;
  v156 = v37;
  v155 = v38 + 8;
  v153 = v43;
  (v43)(*&v41, v37);
  sub_5A9E0(v6);
  sub_13A384();
  v51 = v50;
  sub_5A9E0(v6);
  v211.origin.x = a3;
  v211.origin.y = a4;
  v211.size.width = a5;
  v211.size.height = a6;
  CGRectGetMinX(v211);
  v212.origin.x = sub_5A850();
  CGRectGetMinY(v212);
  sub_5A850();
  sub_13BE44();
  sub_13A354();
  sub_5A9E0(v6 + 5);
  v213.origin.x = sub_5A850();
  CGRectGetMinX(v213);
  v214.origin.x = sub_5A850();
  CGRectGetMinY(v214);
  v177 = a1;
  sub_5A850();
  sub_13BE44();
  sub_13A354();
  sub_13BE34();
  sub_5AA10();
  v168 = a3;
  v170 = a4;
  v169 = a6;
  sub_13BE44();
  sub_4948(&qword_19AFE0);
  v178 = *(v197 + 72);
  v52 = (*(v180 + 80) + 32) & ~*(v180 + 80);
  *&v53 = COERCE_DOUBLE(swift_allocObject());
  v199 = xmmword_13E660;
  v158 = *&v53;
  *(v53 + 16) = xmmword_13E660;
  v172 = v52;
  v173 = v53 + v52;
  v55 = v6[13];
  v54 = v7[14];
  v56 = sub_162F0(v7 + 10, v7[13]);
  *(&v208 + 1) = v55;
  v209 = *(v54 + 8);
  v57 = sub_CC08(&v207);
  (*(*(v55 - 8) + 16))(v57, v56, v55);
  v58 = sub_5AA8C();
  LODWORD(v196) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v59 = *(v203 + 104);
  v197 = v203 + 104;
  v195 = v59;
  v59(v200, v58);
  v194 = sub_4948(&qword_19AFE8);
  v60 = *(v192 + 72);
  v193 = *(v204 + 80);
  v61 = (v193 + 32) & ~v193;
  v183 = 3 * v60;
  v62 = swift_allocObject();
  sub_5A8C8(v62);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v205 = v55;
  v192 = sub_20068();
  v191 = sub_4948(&qword_19AFF0);
  v190 = sub_1D268();
  v63 = v179;
  v64 = v181;
  sub_13BF64();
  v189 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v65 = v202;
  v66 = v202 + 104;
  v188 = *(v202 + 104);
  v67 = v198;
  v68 = v201;
  (v188)(v198);
  v69 = v200;
  sub_13A4E4();
  v70 = *(v65 + 8);
  v202 = v65 + 8;
  v187 = v70;
  v70(v67, v68);
  v71 = *(v204 + 8);
  v204 += 8;
  v186 = v71;
  v72 = v63;
  v71(v63, v64);
  v73 = *(v203 + 8);
  v203 += 8;
  v185 = v73;
  v73(v69, v182);
  sub_1D2CC(&v206);
  sub_3C04(&v207);
  v74 = v7[18];
  v75 = v7[19];
  v76 = sub_162F0(v7 + 15, v74);
  *(&v208 + 1) = v74;
  v209 = *(v75 + 8);
  v77 = sub_CC08(&v207);
  (*(*(v74 - 8) + 16))(v77, v76, v74);
  sub_5AA8C();
  sub_5AAE4();
  v78();
  v79 = sub_5A900();
  sub_5A8C8(v79);
  sub_13A484();
  v184 = v60;
  sub_13A494();
  sub_13A4A4();
  v205 = v74;
  v80 = v72;
  sub_5A8B4();
  v81 = v181;
  sub_13BF64();
  v82 = v198;
  sub_5A9D0();
  v84 = *(v83 - 256);
  v188();
  v85 = v178;
  v86 = v173;
  sub_13A4E4();
  v187(v82, v84);
  v186(v80, v81);
  v87 = v182;
  sub_217E8();
  v88();
  sub_1D2CC(&v206);
  sub_3C04(&v207);
  v209 = 0;
  v157 = v86 + 2 * v85;
  v207 = 0u;
  v208 = 0u;
  sub_5AAE4();
  v89();
  v90 = sub_5A900();
  sub_5A8C8(v90);
  v173 = v61;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v206 = v87;
  sub_5A8B4();
  v91 = v181;
  sub_5AA50();
  sub_5A9D0();
  v171 = v66;
  v188();
  sub_13A4E4();
  v92 = sub_9FA4();
  (v187)(v92);
  v186(v80, v91);
  sub_217E8();
  v93();
  sub_1D2CC(&v207);
  sub_13A4D4();
  sub_13A474();
  sub_13A2D4();
  v95 = v49 + v51 + 0.0 + v94;
  sub_5AB34();
  if (sub_13A324())
  {
    sub_5AB34();
    if ((sub_13A364() & 1) == 0)
    {
      v96 = v7[73];
      v97 = v7[74];
      sub_162F0(v7 + 70, v96);
      v98 = v154;
      sub_20038(v96, v97);
      sub_13A404();
      v157 = v99;
      (v153)(*&v98, v156);
      sub_5A9E0(v7 + 20);
      sub_13A384();
      v156 = v100;
      v155 = v101;
      sub_5A95C();
      sub_13BE34();
      sub_5AA10();
      sub_5AA7C();
      sub_13BE44();
      v158 = a5;
      v103 = v102;
      v154 = v95;
      v105 = v104;
      v107 = v106;
      v109 = v108;
      sub_5A9E0(v7 + 20);
      v215.origin.x = v103;
      v215.origin.y = v105;
      v215.size.width = v107;
      v215.size.height = v109;
      CGRectGetMinX(v215);
      v216.origin.x = v103;
      v216.origin.y = v105;
      v216.size.width = v107;
      v216.size.height = v109;
      CGRectGetMinY(v216);
      sub_5AA7C();
      sub_13BE44();
      sub_13A354();
    }
  }

  v110 = v174;
  v111 = v7;
  if (sub_58A4C())
  {
    sub_162F0(v7 + 30, v7[33]);
    sub_13A374();
    sub_5AA8C();
    v112 = sub_5A9A4();
    v113(v112);
    sub_5A9D0();
    sub_5AB0C();
    v114();
    v115 = sub_5A900();
    *(v115 + 16) = xmmword_140280;
    sub_13A484();
    v205 = v115;
    sub_5A8B4();
    sub_5AA50();
    sub_13A4E4();
    sub_5AAF8();
    v116();
    sub_5AAD0();
    v117();
    sub_217E8();
    v118();
    sub_1D2CC(&v206);
    sub_3C04(&v207);
    sub_5A98C();
    sub_58FE8(0, 1, 1, v119, v120, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v122 = v121;
    v124 = *(v121 + 16);
    v123 = *(v121 + 24);
    v111 = (v124 + 1);
    if (v124 >= v123 >> 1)
    {
      sub_58FE8(v123 > 1, v124 + 1, 1, v121, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
      v122 = v152;
    }

    v122[2] = v111;
    sub_5AA9C();
    (*(v180 + 32))(v125 + v124 * v126, v159, v110);
  }

  else
  {
    v122 = &_swiftEmptyArrayStorage;
  }

  v209 = 0;
  v207 = 0u;
  v208 = 0u;
  v127 = sub_5A9A4();
  v128(v127);
  v129 = sub_5A900();
  sub_5A8C8(v129);
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  v206 = v111;
  sub_5A8B4();
  sub_5AA50();
  sub_5A9D0();
  sub_5AB0C();
  v130();
  v131 = v160;
  sub_13A4E4();
  sub_5AAD0();
  v132();
  sub_5AAF8();
  v133();
  sub_217E8();
  v134();
  sub_1D2CC(&v207);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_5A98C();
    sub_58FE8(0, v148 + 1, 1, v122, v149, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v122 = v150;
  }

  v136 = v122[2];
  v135 = v122[3];
  if (v136 >= v135 >> 1)
  {
    sub_58FE8(v135 > 1, v136 + 1, 1, v122, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v122 = v151;
  }

  v122[2] = v136 + 1;
  sub_5AA9C();
  (*(v180 + 32))(v137 + v136 * v138, v131, v174);
  v139 = v161;
  sub_13A4D4();
  sub_5A95C();
  sub_13BE34();
  sub_5AA10();
  sub_5AA7C();
  sub_13BE44();
  v140 = v163;
  sub_13A474();
  sub_13A2D4();
  v217.origin.x = sub_5AB20();
  CGRectGetMinX(v217);
  v218.origin.x = sub_5AB20();
  CGRectGetMinY(v218);
  sub_13A2C4();
  v141 = *(v165 + 8);
  v142 = v140;
  v143 = v166;
  v141(v142, v166);
  v144 = *(v162 + 8);
  v145 = v139;
  v146 = v164;
  v144(v145, v164);
  v141(v176, v143);
  return (v144)(v175, v146);
}

uint64_t BundleOptionComponentLayout.Metrics.init(titleTopSpace:titleTrailingSpace:selectionStatusDimension:selectionStatusTopSpace:subtitleTopSpace:propositionRowTopSpace:disclaimerTopSpace:separatorTopSpace:gridTopSpace:badgeTopSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10)
{
  sub_5AA24();
  v18 = v17;
  sub_9414(v19, v17);
  sub_9414(v16, v18 + 40);
  sub_9414(v15, v18 + 80);
  sub_9414(v14, v18 + 120);
  sub_9414(v13, v18 + 160);
  sub_9414(v11, v18 + 200);
  sub_9414(v12, v18 + 240);
  sub_9414(v10, v18 + 280);
  sub_9414(a9, v18 + 320);

  return sub_9414(a10, v18 + 360);
}

uint64_t ServiceOptionComponentLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 240);

  return sub_9414(a1, v1 + 240);
}

uint64_t BundleOptionComponentLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 360);

  return sub_9414(a1, v1 + 360);
}

double BundleOptionComponentLayout.measurements(fitting:in:)()
{
  swift_getObjectType();
  v0 = sub_2171C();

  return sub_590DC(v0, v1);
}

uint64_t sub_58A4C()
{
  sub_5A9E0((v0 + 240));
  if (sub_13A364())
  {
    return 0;
  }

  sub_5A9E0((v0 + 200));
  if ((sub_13A324() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 720);
  }
}

void sub_58AFC()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      sub_4948(&qword_19C598);
      v6 = sub_5AAB4();
      v7 = j__malloc_size(v6);
      sub_5A9FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_5A894();
        sub_4CDA4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_4948(&qword_19C5A0);
    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58BCC()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C578);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDCC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_5A884();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58C88()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C590);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 16);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58D58()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      sub_4948(&qword_19C580);
      v6 = sub_5AAB4();
      v7 = j__malloc_size(v6);
      sub_5A9FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_5A894();
        sub_4CDA4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58E18()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      sub_4948(&qword_19C588);
      v6 = sub_5AAB4();
      v7 = j__malloc_size(v6);
      sub_5A9FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_5A894();
        sub_4CE14(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58ED8()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C318);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 32);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CE5C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58FE8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    sub_5A874();
    if (v12 != v13)
    {
      sub_5AA44();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_5A864();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

double sub_590DC(uint64_t a1, void *a2)
{
  v102 = sub_13A514();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_13A4F4();
  *&v131 = *(v105 - 8);
  v110 = v131;
  __chkstk_darwin(v105);
  v99 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = v96 - v7;
  __chkstk_darwin(v8);
  v96[0] = v96 - v9;
  v127 = sub_13A4C4();
  v133 = *(v127 - 8);
  __chkstk_darwin(v127);
  v130 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_13A4B4();
  v124 = *(v112 - 8);
  v125 = v112 - 8;
  v135 = v124;
  __chkstk_darwin(v112 - 8);
  v111 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_13A454();
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v108 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13C114();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[53];
  v18 = a2[54];
  sub_162F0(a2 + 50, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v19 = *(v14 + 8);
  v19(v16, v13);
  v20 = a2[48];
  v21 = a2[49];
  sub_162F0(a2 + 45, v20);
  sub_20038(v20, v21);
  sub_13A404();
  v19(v16, v13);
  v22 = a2[43];
  v23 = a2[44];
  sub_162F0(a2 + 40, v22);
  sub_20038(v22, v23);
  sub_13A404();
  v19(v16, v13);
  sub_162F0(a2, a2[3]);
  v104 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v109 = *(v131 + 72);
  v24 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v25 = swift_allocObject();
  v131 = xmmword_13E660;
  *(v25 + 16) = xmmword_13E660;
  v106 = v24;
  v97 = v25;
  v107 = v25 + v24;
  v27 = a2[13];
  v26 = a2[14];
  v28 = sub_162F0(a2 + 10, v27);
  *(&v141 + 1) = v27;
  v142 = *(v26 + 8);
  v29 = sub_CC08(&v140);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v129 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v30 = *(v134 + 104);
  v128 = v134 + 104;
  v113 = v30;
  v30(v108);
  v126 = sub_4948(&qword_19AFE8);
  v31 = *(v124 + 72);
  v32 = v127;
  v124 = *(v135 + 80);
  v114 = ((v124 + 32) & ~v124) + 3 * v31;
  v125 = (v124 + 32) & ~v124;
  v33 = swift_allocObject();
  *(v33 + 16) = v131;
  sub_13A484();
  sub_13A494();
  v103 = 2 * v31;
  sub_13A4A4();
  v136 = v33;
  v123 = sub_20068();
  v122 = sub_4948(&qword_19AFF0);
  v121 = sub_1D268();
  v34 = v111;
  v35 = v112;
  sub_13BF64();
  v120 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v36 = v133;
  v37 = *(v133 + 104);
  v119 = v133 + 104;
  v118 = v37;
  v38 = v130;
  v37(v130);
  v39 = v108;
  sub_13A4E4();
  v40 = *(v36 + 8);
  v133 = v36 + 8;
  v117 = v40;
  v40(v38, v32);
  v41 = *(v135 + 8);
  v135 += 8;
  v116 = v41;
  v41(v34, v35);
  v42 = *(v134 + 8);
  v134 += 8;
  v115 = v42;
  v43 = v39;
  v44 = v132;
  v42(v39, v132);
  sub_1D2CC(&v137);
  sub_3C04(&v140);
  v46 = a2[18];
  v45 = a2[19];
  v47 = sub_162F0(a2 + 15, v46);
  *(&v141 + 1) = v46;
  v142 = *(v45 + 8);
  v48 = sub_CC08(&v140);
  (*(*(v46 - 8) + 16))(v48, v47, v46);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v113(v43, v129, v44);
  v49 = swift_allocObject();
  *(v49 + 16) = v131;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v136 = v49;
  v50 = v34;
  sub_13BF64();
  v51 = v130;
  v52 = v127;
  v118(v130, v120, v127);
  v53 = v109;
  v54 = v107;
  sub_13A4E4();
  v117(v51, v52);
  v116(v50, v35);
  v55 = v132;
  v115(v43, v132);
  sub_1D2CC(&v137);
  sub_3C04(&v140);
  v142 = 0;
  v96[1] = v54 + 2 * v53;
  v140 = 0u;
  v141 = 0u;
  v56 = v55;
  v113(v43, v129, v55);
  v57 = swift_allocObject();
  *(v57 + 16) = v131;
  sub_13A484();
  sub_13A494();
  v107 = v31;
  sub_13A4A4();
  *&v137 = v57;
  sub_13BF64();
  v118(v51, v120, v52);
  sub_13A4E4();
  v117(v51, v52);
  v116(v50, v35);
  v58 = v43;
  v115(v43, v56);
  sub_1D2CC(&v140);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A324() & 1) == 0)
  {
    v60 = v105;
    goto LABEL_7;
  }

  sub_162F0(a2 + 20, a2[23]);
  v59 = sub_13A364();
  v60 = v105;
  if (v59)
  {
LABEL_7:
    v68 = v97;
    v62 = v113;
    goto LABEL_8;
  }

  sub_162F0(a2 + 20, a2[23]);
  sub_13A384();
  sub_162F0(a2 + 20, a2[23]);
  sub_13A374();
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v61 = v132;
  v62 = v113;
  v113(v43, v129, v132);
  v63 = swift_allocObject();
  *(v63 + 16) = v131;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v136 = v63;
  v64 = v111;
  v65 = v112;
  sub_13BF64();
  v66 = v130;
  v67 = v127;
  v118(v130, v120, v127);
  sub_13A4E4();
  v117(v66, v67);
  v116(v64, v65);
  v115(v58, v61);
  sub_1D2CC(&v137);
  sub_3C04(&v140);
  v68 = v97;
  v70 = *(v97 + 16);
  v69 = *(v97 + 24);
  if (v70 >= v69 >> 1)
  {
    sub_58FE8(v69 > 1, v70 + 1, 1, v97, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v68 = v95;
  }

  *(v68 + 16) = v70 + 1;
  (*(v110 + 32))(v68 + v106 + v70 * v109, v96[0], v60);
LABEL_8:
  if (sub_58A4C())
  {
    sub_162F0(a2 + 30, a2[33]);
    sub_13A374();
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v71 = v132;
    v62(v58, v129, v132);
    v72 = v130;
    v73 = v127;
    v118(v130, v120, v127);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_140280;
    sub_13A484();
    v136 = v74;
    v75 = v111;
    v76 = v112;
    sub_13BF64();
    sub_13A4E4();
    v116(v75, v76);
    v117(v72, v73);
    v115(v58, v71);
    sub_1D2CC(&v137);
    sub_3C04(&v140);
    v78 = *(v68 + 16);
    v77 = *(v68 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_58FE8(v77 > 1, v78 + 1, 1, v68, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
      v68 = v94;
    }

    v60 = v105;
    *(v68 + 16) = v78 + 1;
    (*(v110 + 32))(v68 + v106 + v78 * v109, v98, v60);
  }

  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v79 = v58;
  v80 = v132;
  v62(v58, v129, v132);
  v81 = swift_allocObject();
  *(v81 + 16) = v131;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v137 = v81;
  v82 = v111;
  v83 = v112;
  sub_13BF64();
  v84 = v130;
  v85 = v127;
  v118(v130, v120, v127);
  v86 = v99;
  sub_13A4E4();
  v117(v84, v85);
  v116(v82, v83);
  v115(v79, v80);
  sub_1D2CC(&v140);
  v88 = *(v68 + 16);
  v87 = *(v68 + 24);
  if (v88 >= v87 >> 1)
  {
    sub_58FE8(v87 > 1, v88 + 1, 1, v68, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v68 = v93;
  }

  *(v68 + 16) = v88 + 1;
  (*(v110 + 32))(v68 + v106 + v88 * v109, v86, v60);
  v89 = v100;
  sub_13A4D4();
  sub_13A464();
  v91 = v90;
  (*(v101 + 8))(v89, v102);
  return v91;
}

unint64_t sub_5A58C()
{
  result = qword_19C570;
  if (!qword_19C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C570);
  }

  return result;
}

uint64_t sub_5A5E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 721))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5A628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 712) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 720) = 0;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 721) = 1;
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

    *(result + 721) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5A740(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 400))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5A780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_5A8C8(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t sub_5A8DC()
{

  return sub_13A404();
}

uint64_t sub_5A900()
{

  return swift_allocObject();
}

uint64_t sub_5A924(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

uint64_t sub_5A9FC(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_5AA50()
{

  return sub_13BF64();
}

double sub_5AA8C()
{
  *(v0 - 208) = 0;
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t sub_5AAB4()
{

  return swift_allocObject();
}

uint64_t sub_5AB34()
{
  v1 = *(v0 + 184);
  sub_162F0((v0 + 160), v1);
  return v1;
}

uint64_t type metadata accessor for BundlePreview()
{
  result = qword_19C608;
  if (!qword_19C608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v82 = a3;
  v5 = sub_4948(&qword_19A420);
  __chkstk_darwin(v5 - 8);
  v7 = &v81 - v6;
  v8 = sub_13B584();
  v90 = *(v8 - 8);
  v91 = v8;
  __chkstk_darwin(v8);
  sub_18B60();
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v12 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v16 = type metadata accessor for BundlePreview();
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v89 = swift_initStackObject();
  sub_2B570();
  v20 = sub_BB310();
  if (v3)
  {

    v20 = 0;
    v21 = 0;
  }

  *v19 = v20;
  *(v19 + 1) = v21;
  v87 = v21;
  __chkstk_darwin(v20);
  sub_5BD04();
  sub_2B570();
  sub_9DB8(v22, v23, v24, v25, v26, v27, v28, v29);
  v86 = v30;
  *(v19 + 2) = v30;
  sub_2B570();
  v31 = sub_BB310();
  v81 = 0;
  *&v93 = v31;
  *(&v93 + 1) = v32;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738();
  if (sub_52E0(v7, 1, v12) == 1)
  {
    sub_928C(v7, &qword_19A420);
LABEL_6:
    sub_13BAB4();
    sub_5BC9C();
    sub_5B8C8(v33, v34);
    sub_9F18();
    *v35 = 0xD000000000000011;
    v35[1] = 0x800000000014E730;
    v35[2] = v16;
    sub_2B538();
    (*(v36 + 104))();
    swift_willThrow();
    v37 = sub_5BCD4();
    v38(v37);

    v39 = sub_13B7A4();
    sub_53A8(v15, 1, 1, v39);
    v40 = 0;
    goto LABEL_8;
  }

  v41 = sub_5BCD4();
  v42(v41);
  sub_92E4(v7, v15);
  v40 = v81;
LABEL_8:
  sub_92E4(v15, &v19[*(v16 + 40)]);
  v43 = v83;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    sub_13BAB4();
    sub_5BC9C();
    sub_5B8C8(v44, v45);
    swift_allocError();
    *v46 = 0x6575676573;
    v46[1] = 0xE500000000000000;
    v46[2] = v16;
    sub_2B538();
    (*(v47 + 104))();
    swift_willThrow();
    v85(v43, v91);

    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    goto LABEL_12;
  }

  sub_139BC4();
  if (v40)
  {

    sub_18BAC();
    sub_928C(v92, &unk_19E320);
    goto LABEL_11;
  }

  v85(v43, v91);
  v48 = sub_9414(v92, &v93);
LABEL_12:
  v49 = &v19[*(v16 + 44)];
  v50 = v94;
  *v49 = v93;
  *(v49 + 1) = v50;
  *(v49 + 4) = v95;
  __chkstk_darwin(v48);
  sub_5BD04();
  sub_2B570();
  sub_9DB8(v51, v52, v53, v54, v55, v56, v57, v58);
  *(v19 + 3) = v59;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_5BC9C();
    sub_5B8C8(v60, v61);
    sub_9F18();
    *v62 = 0x656C746974627573;
    v62[1] = 0xE800000000000000;
    v62[2] = v16;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();
    v64 = sub_5BCEC();
    v65(v64);

    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  else
  {
    sub_139DB4();
    v76 = sub_5BCEC();
    v77(v76);
    sub_9414(v92, &v93);
  }

  v66 = v94;
  *(v19 + 2) = v93;
  *(v19 + 3) = v66;
  *(v19 + 8) = v95;
  v67 = v84;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_5BC9C();
    sub_5B8C8(v69, v70);
    sub_9F18();
    *v71 = 0x656C746974;
    v71[1] = 0xE500000000000000;
    v71[2] = v16;
    sub_2B538();
    (*(v72 + 104))();
    swift_willThrow();

    v73 = sub_5BCB4();
    MEMORY[0x656C746974](v73);
    MEMORY[0x656C746974](v67, a1);
    v74 = v81;
    sub_13B5A4();
    sub_9F94();
    (*(v75 + 8))(v96);

    if (!v74)
    {

      sub_928C((v19 + 32), &qword_19E960);
      sub_9238((v19 + 112));
      sub_928C(&v19[*(v16 + 40)], &qword_19A350);
      return sub_928C(&v19[*(v16 + 44)], &unk_19E320);
    }
  }

  else
  {
    v68 = v96;
    sub_139DB4();
    v78 = sub_5BCB4();
    MEMORY[0x656C746974](v78);
    MEMORY[0x656C746974](v67, a1);
    sub_9414(v92, &v93);
    sub_9414(&v93, (v19 + 72));
    sub_5B910(v19, v82);
    sub_13B5A4();
    sub_9F94();
    (*(v79 + 8))(v68);
    return sub_5B974(v19);
  }

  return result;
}

uint64_t sub_5B6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_139F94();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_139F84();
  *a3 = result;
  return result;
}

uint64_t sub_5B8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5B910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundlePreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B974(uint64_t a1)
{
  v2 = type metadata accessor for BundlePreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5B9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_5BA8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_5BB18()
{
  sub_24850();
  if (v0 <= 0x3F)
  {
    sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_248F4(319, &qword_19C0A8, &unk_19C0B0);
      if (v2 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48);
        if (v3 <= 0x3F)
        {
          sub_18A28();
          if (v4 <= 0x3F)
          {
            sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            if (v5 <= 0x3F)
            {
              sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
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

uint64_t sub_5BCD4()
{
  result = v0;
  *(v1 - 264) = *(*(v1 - 224) + 8);
  return result;
}

void sub_5BD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19C6A8);
  sub_13B5E4();

  if (v12[0])
  {
    sub_5CAD8(v12[0], a3);
  }

  swift_getKeyPath();
  sub_5C2E0();

  if (v12[0])
  {
    sub_19330();
    (*(v5 + 296))(v12[0], a3);
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView] setHidden:1];
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v11)
  {
    sub_9414(&v10, v12);
    sub_19330();
    (*(v6 + 384))(v12, a3);
    sub_3C04(v12);
  }

  else
  {
    sub_2519C(&v10);
  }

  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  swift_getKeyPath();
  sub_5C2E0();

  (*(&stru_158.size + (swift_isaMask & *v7)))(v12, a3);
  sub_3C04(v12);
  v8 = [v3 contentView];
  swift_getKeyPath();
  sub_5C2E0();

  if (v12[1])
  {
    v9 = sub_13BB54();
  }

  else
  {
    v9 = 0;
  }

  [v8 setAccessibilityLabel:v9];
}

uint64_t sub_5BFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundlePreviewComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_5C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundlePreviewComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_5C0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_5C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_5C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_5C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_5C288()
{
  result = qword_19C658;
  if (!qword_19C658)
  {
    type metadata accessor for BundlePreview();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C658);
  }

  return result;
}

uint64_t sub_5C2E0()
{

  return sub_13B5E4();
}

id sub_5C2FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView;
  v11 = objc_allocWithZone(sub_139CF4());
  *&v4[v10] = sub_139CE4();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel;
  sub_139BB4();
  v13 = objc_opt_self();
  v14 = [v13 ams_secondaryText];
  v15 = sub_13A2A4();
  *(&v31 + 1) = v15;
  v32 = &protocol witness table for FontSource;
  *sub_CC08(&v30) = UIFontTextStyleSubheadline;
  v16 = *(*(v15 - 8) + 104);
  v16();
  v17 = UIFontTextStyleSubheadline;
  *&v4[v12] = sub_139BA4();
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel;
  v19 = [v13 ams_primaryText];
  *(&v31 + 1) = v15;
  v32 = &protocol witness table for FontSource;
  *sub_CC08(&v30) = UIFontTextStyleHeadline;
  v16();
  v20 = UIFontTextStyleHeadline;
  *&v4[v18] = sub_139BA4();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_containerView;
  *&v5[v21] = [objc_allocWithZone(AMSUICommonView) init];
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView;
  *&v5[v22] = [objc_allocWithZone(AMSUICommonView) init];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_services] = &_swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid;
  type metadata accessor for ServicesGridView();
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  *&v5[v23] = sub_117788(0, 1, &v30, 0, 0, 1, 0, 1, v28);
  v24 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics];
  *v24 = vdupq_n_s64(0x4044000000000000uLL);
  v24[1].i64[0] = 0x4020000000000000;
  v24[2].i64[1] = &type metadata for Double;
  v24[3].i64[0] = &protocol witness table for Double;
  v24[3].i64[1] = 0;
  v24[5].i64[0] = &type metadata for Double;
  v24[5].i64[1] = &protocol witness table for Double;
  v24[6].i64[0] = 0x4020000000000000;
  v24[7].i64[1] = &type metadata for Double;
  v24[8].i64[0] = &protocol witness table for Double;
  v24[8].i64[1] = 0x4014000000000000;
  v24[10].i64[0] = &type metadata for Double;
  v24[10].i64[1] = &protocol witness table for Double;
  v24[11].i64[0] = 0x4020000000000000;
  v24[12].i64[1] = &type metadata for Double;
  v24[13].i64[0] = &protocol witness table for Double;
  v24[13].i64[1] = 0x4020000000000000;
  v24[15].i64[0] = &type metadata for Double;
  v24[15].i64[1] = &protocol witness table for Double;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for BundlePreviewComponent();
  v25 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_5CB28();

  return v25;
}

uint64_t sub_5C650()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BundlePreviewComponent();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v2 = [v1 setHidden:0];
  (*(&stru_108.reloff + (swift_isaMask & *v1)))(v2);
  sub_1D38C();
  (*(v3 + 392))();
  sub_1D38C();
  (*(v4 + 392))();
  return sub_117FB4();
}

uint64_t sub_5C7D0()
{
  v29 = sub_13A314();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BundlePreviewComponent();
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  sub_5D428(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics], &v31);
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v30[3] = sub_139CF4();
  v30[4] = &protocol witness table for UIView;
  v30[0] = v9;
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  v11 = sub_139BB4();
  v30[8] = v11;
  sub_1D3B8();
  v14 = sub_9A68(v12, v13);
  v30[5] = v10;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel];
  v30[13] = v11;
  v30[14] = v14;
  v30[9] = v14;
  v30[10] = v15;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v30[23] = sub_CACC(0, &qword_19E9B0);
  v30[24] = &protocol witness table for UIView;
  v30[20] = v16;
  v17 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v30[18] = type metadata accessor for ServicesGridView();
  v30[19] = &protocol witness table for UIView;
  v30[15] = v17;
  v18 = v9;
  v19 = v10;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = [v0 contentView];
  [v23 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v24 = [v0 contentView];
  sub_35BE8();
  sub_5E4D4(v25, v26);

  (*(v1 + 8))(v3, v29);
  return sub_5E22C(v30);
}

void sub_5CAD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_4C488(a1);
  sub_1180F8(v3, a2);

  sub_117FF4();
}

void sub_5CB28()
{
  v1 = v0;
  v2 = [v0 contentView];
  sub_CACC(0, &qword_19B3D0);
  v3 = objc_opt_self();
  v4 = [v3 ams_primaryGroupedBackground];
  v5 = [v3 ams_primaryGroupedBackground];
  v6 = [v3 ams_componentBackground];
  v7.super.isa = [v3 ams_componentBackground];
  v8.super.isa = v4;
  v9.super.isa = v5;
  v10.super.isa = v6;
  isa = sub_13BED4(v8, v9, v10, v7).super.isa;
  [v2 setBackgroundColor:isa];

  v12 = sub_5E2E0();
  sub_127EDC(18.0);

  v13 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_containerView];
  v14 = [v3 ams_clear];
  [v13 setBackgroundColor:v14];

  v15 = sub_5E2E0();
  [v15 addSubview:v13];

  v16 = [v13 layer];
  [v16 setMasksToBounds:1];

  v17 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v18 = [v17 layer];
  v19 = [v3 ams_mediaBorder];
  v20 = [v19 CGColor];

  [v18 setBorderColor:v20];
  v21 = [v17 layer];
  [v21 setBorderWidth:1.0];

  v22 = sub_5E2D4();
  [v22 v23];
  v24 = sub_5E2D4();
  [v24 v25];
  v26 = sub_5E2D4();
  [v26 v27];
  v28 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v29 = sub_5E2D4();
  [v29 v30];
  v31 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v32 = sub_5E2D4();
  [v32 v33];
  sub_5CEB4();
  [v28 setHidden:0];
  __asm { FMOV            V0.2D, #24.0 }

  *(v31 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = _Q0;
  sub_118970();
  *(v31 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  sub_117A18();
  sub_117FF4();
  v39 = sub_5E2E0();
  [v39 setIsAccessibilityElement:1];

  v40 = sub_5E2E0();
  [v40 setAccessibilityTraits:UIAccessibilityTraitButton];
}

void sub_5CEB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_5CF30(double a1, double a2, float a3)
{
  sub_5D428(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics], &v35);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v23[3] = sub_139CF4();
  v23[4] = &protocol witness table for UIView;
  v23[0] = v6;
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  v24 = sub_139BB4();
  sub_1D3B8();
  v10 = sub_9A68(v8, v9);
  v23[5] = v7;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel];
  v27 = v24;
  v28 = v10;
  v25 = v10;
  v26 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v33 = sub_CACC(0, &qword_19E9B0);
  v34 = &protocol witness table for UIView;
  v32 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v30 = type metadata accessor for ServicesGridView();
  v31 = &protocol witness table for UIView;
  v29 = v13;
  v14 = v6;
  v15 = v7;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  sub_27C54();
  sub_13BE64();
  v19 = [v3 contentView];
  sub_5D484(v19, v23);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v21 = a1;
  }

  else
  {
    v21 = v20;
  }

  sub_5E22C(v23);
  return v21;
}

id sub_5D1D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundlePreviewComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_5D2DC(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  v3 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = 200.0;
  }

  else
  {
    v4 = 32.0;
  }

  v5 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = [v5 absoluteDimension:v7 - v4];
  v9 = [v5 estimatedDimension:200.0];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  return v10;
}

double sub_5D484(uint64_t a1, void *a2)
{
  v91 = sub_13A514();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_13A4F4();
  v103 = *(v106 - 8);
  v105 = v106 - 8;
  v111 = v103;
  __chkstk_darwin(v106 - 8);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v77 - v7;
  v112 = sub_13A4C4();
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_13A4B4();
  v9 = *(v109 - 8);
  v102 = v109 - 8;
  v104 = v9;
  v113 = v9;
  __chkstk_darwin(v109 - 8);
  v108 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13A454();
  v12 = *(v11 - 8);
  v115 = v11;
  v116 = v12;
  __chkstk_darwin(v11);
  v107 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13C114();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[40];
  v19 = a2[41];
  sub_162F0(a2 + 37, v18);
  sub_20038(v18, v19);
  sub_13A404();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = a2[35];
  v22 = a2[36];
  sub_162F0(a2 + 32, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v20(v17, v14);
  sub_162F0(a2 + 5, a2[8]);
  v90 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v23 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v105 = *(v103 + 9);
  v24 = swift_allocObject();
  v77 = xmmword_140280;
  *(v24 + 16) = xmmword_140280;
  v25 = a2[13];
  v26 = a2[14];
  v27 = sub_162F0(a2 + 10, v25);
  *(&v122 + 1) = v25;
  v123 = *(v26 + 8);
  v28 = sub_CC08(&v121);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v29 = *(v116 + 104);
  v30 = v107;
  v86 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v85 = v116 + 104;
  v103 = v29;
  v29(v107);
  v31 = sub_4948(&qword_19AFE8);
  v32 = *(v104 + 72);
  v33 = v113;
  v34 = *(v113 + 80);
  v35 = (v34 + 32) & ~v34;
  v81 = 3 * v32;
  v101 = v34;
  v83 = v31;
  v36 = swift_allocObject();
  v80 = xmmword_13E660;
  *(v36 + 16) = xmmword_13E660;
  v102 = v35;
  sub_13A484();
  sub_13A494();
  v79 = 2 * v32;
  v84 = v32;
  sub_13A4A4();
  v117 = v36;
  v37 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v38 = sub_4948(&qword_19AFF0);
  v39 = sub_1D268();
  v40 = v108;
  v99 = v38;
  v98 = v39;
  v41 = v109;
  v100 = v37;
  sub_13BF64();
  v42 = v114;
  v43 = *(v114 + 104);
  v44 = v110;
  v97 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v45 = v112;
  v96 = v114 + 104;
  v95 = v43;
  v43(v110);
  v104 = v23;
  v82 = v24;
  sub_13A4E4();
  v46 = *(v42 + 8);
  v114 = v42 + 8;
  v94 = v46;
  v46(v44, v45);
  v47 = *(v33 + 8);
  v113 = v33 + 8;
  v93 = v47;
  v47(v40, v41);
  v48 = *(v116 + 8);
  v116 += 8;
  v92 = v48;
  v48(v30, v115);
  sub_1D2CC(&v118);
  sub_3C04(&v121);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
  {
    v50 = v86;
    v55 = v82;
  }

  else
  {
    sub_162F0(a2 + 20, a2[23]);
    sub_13A374();
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    v49 = v107;
    v50 = v86;
    (v103)(v107, v86, v115);
    v51 = v110;
    v95(v110, v97, v112);
    v52 = swift_allocObject();
    *(v52 + 16) = v77;
    sub_13A484();
    v117 = v52;
    v53 = v108;
    v54 = v109;
    sub_13BF64();
    sub_13A4E4();
    v93(v53, v54);
    v94(v51, v112);
    v92(v49, v115);
    sub_1D2CC(&v118);
    sub_3C04(&v121);
    v55 = v82;
    v57 = *(v82 + 16);
    v56 = *(v82 + 24);
    v58 = v57 + 1;
    v59 = v106;
    if (v57 >= v56 >> 1)
    {
      *&v77 = v57 + 1;
      sub_58ABC(v56 > 1, v57 + 1, 1, v82);
      v58 = v77;
      v55 = v76;
    }

    *(v55 + 16) = v58;
    v111[4](v55 + v104 + v57 * v105, v78, v59);
  }

  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v60 = v107;
  v61 = v115;
  (v103)(v107, v50, v115);
  v62 = swift_allocObject();
  *(v62 + 16) = v80;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v118 = v62;
  v63 = v108;
  v64 = v109;
  sub_13BF64();
  v65 = v110;
  v66 = v112;
  v95(v110, v97, v112);
  v67 = v87;
  sub_13A4E4();
  v94(v65, v66);
  v93(v63, v64);
  v92(v60, v61);
  sub_1D2CC(&v121);
  v69 = *(v55 + 16);
  v68 = *(v55 + 24);
  if (v69 >= v68 >> 1)
  {
    sub_58ABC(v68 > 1, v69 + 1, 1, v55);
    v55 = v75;
  }

  v70 = v106;
  *(v55 + 16) = v69 + 1;
  v111[4](v55 + v104 + v69 * v105, v67, v70);
  v71 = v88;
  sub_13A4D4();
  sub_13A464();
  v73 = v72;
  (*(v89 + 8))(v71, v91);
  return v73;
}

id sub_5E2E0()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t sub_5E300(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 456))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5E340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E404(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5E444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
      *(result + 256) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v128 = a1;
  v99 = a2;
  v4 = sub_13A4F4();
  v5 = sub_5A838(v4, &v122);
  v120 = v6;
  __chkstk_darwin(v5);
  sub_21548();
  sub_2159C(v7);
  v8 = sub_13A314();
  v9 = sub_5A838(v8, &v128);
  v97 = v10;
  __chkstk_darwin(v9);
  sub_2162C();
  v95 = v11;
  __chkstk_darwin(v12);
  sub_2159C(v88 - v13);
  v14 = sub_13A514();
  v15 = sub_5A838(v14, &v126);
  v94 = v16;
  __chkstk_darwin(v15);
  sub_2162C();
  v93 = v17;
  __chkstk_darwin(v18);
  sub_2159C(v88 - v19);
  v20 = sub_13A4C4();
  v21 = sub_5A838(v20, &v138);
  v129 = v22;
  __chkstk_darwin(v21);
  sub_21548();
  sub_2159C(v23);
  v24 = sub_13A4B4();
  v25 = sub_5A838(v24, &v137);
  v127 = v26;
  __chkstk_darwin(v25);
  sub_21548();
  sub_2159C(v27);
  v28 = sub_13A454();
  v29 = sub_5A838(v28, &v139);
  v125 = v30;
  __chkstk_darwin(v29);
  sub_21548();
  sub_2159C(v31);
  v32 = sub_13C114();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(v2, v2[3]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v2, v2[3]);
    sub_13A324();
  }

  sub_162F0(v2 + 47, v2[50]);
  sub_13A3F4();
  v88[1] = v36;
  sub_162F0(v2 + 27, v2[30]);
  sub_601E8();
  sub_601C8();
  v37 = *(v33 + 8);
  v37(v35, v32);
  sub_162F0(v2 + 32, v2[35]);
  sub_601E8();
  sub_601C8();
  v37(v35, v32);
  sub_5A9E0(v2);
  v140.origin.x = sub_40710();
  CGRectGetMinX(v140);
  v141.origin.x = sub_40710();
  CGRectGetMinY(v141);
  v90 = v2[25];
  sub_13A354();
  sub_601A8();
  sub_5AA10();
  sub_40710();
  sub_13BE44();
  v88[5] = v38;
  sub_4948(&qword_19AFE0);
  v116 = *(v120 + 72);
  v39 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v40 = swift_allocObject();
  v88[3] = v40;
  *(v40 + 16) = xmmword_13E650;
  v89 = v39;
  v88[2] = v40 + v39;
  v42 = v2[8];
  v41 = v3[9];
  v43 = sub_162F0(v3 + 5, v3[8]);
  *(&v135 + 1) = v42;
  v136 = *(v41 + 8);
  v44 = sub_CC08(&v134);
  (*(*(v42 - 8) + 16))(v44, v43, v42);
  v133 = 0;
  v131 = 0u;
  v132 = 0u;
  v115 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v45 = v125;
  v46 = *(v125 + 104);
  v114 = v125 + 104;
  v113 = v46;
  v46(v124);
  v112 = sub_4948(&qword_19AFE8);
  v47 = *(v127 + 72);
  v110 = *(v127 + 80);
  v111 = (v110 + 32) & ~v110;
  v109 = 3 * v47;
  v48 = swift_allocObject();
  v107 = xmmword_13E660;
  *(v48 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  v88[6] = 2 * v47;
  sub_13A4A4();
  v130 = v48;
  v108 = sub_20068();
  v106 = sub_4948(&qword_19AFF0);
  v105 = sub_1D268();
  v49 = v117;
  v50 = v118;
  sub_13BF64();
  v104 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v129 + 104;
  v103 = *(v129 + 104);
  v52 = v119;
  v53 = v123;
  v103(v119);
  v54 = v124;
  sub_13A4E4();
  v102 = *(v129 + 8);
  v129 += 8;
  v102(v52, v53);
  v55 = *(v127 + 8);
  v127 += 8;
  v101 = v55;
  v55(v49, v50);
  v56 = *(v45 + 8);
  v125 = v45 + 8;
  v100 = v56;
  v57 = v126;
  v56(v54, v126);
  sub_1D2CC(&v131);
  sub_3C04(&v134);
  v58 = v3[13];
  v59 = v3[14];
  v60 = sub_162F0(v3 + 10, v58);
  *(&v135 + 1) = v58;
  v136 = *(v59 + 8);
  v61 = sub_CC08(&v134);
  (*(*(v58 - 8) + 16))(v61, v60, v58);
  v133 = 0;
  v131 = 0u;
  v132 = 0u;
  v62 = v124;
  v113(v124, v115, v57);
  v63 = sub_60170();
  sub_60194(v63);
  sub_13A484();
  sub_13A494();
  v88[7] = v47;
  sub_13A4A4();
  v130 = v58;
  sub_60158();
  sub_13BF64();
  v64 = v123;
  v88[4] = v51;
  (v103)(v52, v104, v123);
  sub_13A4E4();
  v102(v52, v64);
  v101(v49, v50);
  v100(v62, v126);
  sub_1D2CC(&v131);
  sub_3C04(&v134);
  sub_13A4D4();
  v65 = v122;
  sub_13A474();
  sub_13A2D4();
  sub_5A9E0(v3 + 20);
  if ((sub_13A364() & 1) == 0)
  {
    sub_5A9E0(v3 + 15);
    if (sub_13A324())
    {
      sub_5A9E0(v3 + 20);
      v142.origin.x = sub_40710();
      CGRectGetMinX(v142);
      v143.origin.x = sub_40710();
      CGRectGetMinY(v143);
      sub_13A354();
    }
  }

  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v66 = v124;
  v67 = v126;
  v113(v124, v115, v126);
  v68 = sub_60170();
  sub_60194(v68);
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v131 = v65;
  v69 = v117;
  sub_60158();
  v70 = v118;
  sub_13BF64();
  v71 = v119;
  v72 = v123;
  (v103)(v119, v104, v123);
  v73 = v91;
  sub_13A4E4();
  v102(v71, v72);
  v101(v69, v70);
  v100(v66, v67);
  sub_1D2CC(&v134);
  sub_58ABC(0, 1, 1, &_swiftEmptyArrayStorage);
  v75 = v74;
  v77 = *(v74 + 16);
  v76 = *(v74 + 24);
  if (v77 >= v76 >> 1)
  {
    sub_58ABC(v76 > 1, v77 + 1, 1, v74);
    v75 = v87;
  }

  *(v75 + 16) = v77 + 1;
  (*(v120 + 32))(v75 + v89 + v77 * v116, v73, v92);
  v78 = v93;
  sub_13A4D4();
  sub_601A8();
  sub_5AA10();
  sub_40710();
  sub_13BE44();
  v79 = v95;
  sub_13A474();
  sub_13A2D4();
  v144.origin.x = sub_40710();
  CGRectGetMinX(v144);
  v145.origin.x = sub_40710();
  CGRectGetMinY(v145);
  sub_13A2C4();
  v80 = *(v97 + 8);
  v81 = v79;
  v82 = v98;
  v80(v81, v98);
  v83 = *(v94 + 8);
  v84 = v78;
  v85 = v96;
  v83(v84, v96);
  v80(v122, v82);
  return (v83)(v121, v85);
}

double sub_5F324(uint64_t a1)
{
  swift_getObjectType();

  return sub_5F3E0(a1, v1);
}

unint64_t sub_5F38C()
{
  result = qword_19C718;
  if (!qword_19C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C718);
  }

  return result;
}

double sub_5F3E0(uint64_t a1, void *a2)
{
  v91 = sub_13A514();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_13A4F4();
  v103 = *(v106 - 8);
  v105 = v106 - 8;
  v111 = v103;
  __chkstk_darwin(v106 - 8);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v77 - v7;
  v112 = sub_13A4C4();
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_13A4B4();
  v9 = *(v109 - 8);
  v102 = v109 - 8;
  v104 = v9;
  v113 = v9;
  __chkstk_darwin(v109 - 8);
  v108 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13A454();
  v12 = *(v11 - 8);
  v115 = v11;
  v116 = v12;
  __chkstk_darwin(v11);
  v107 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13C114();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[40];
  v19 = a2[41];
  sub_162F0(a2 + 37, v18);
  sub_20038(v18, v19);
  sub_13A404();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = a2[35];
  v22 = a2[36];
  sub_162F0(a2 + 32, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v20(v17, v14);
  sub_162F0(a2 + 5, a2[8]);
  v90 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v23 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v105 = *(v103 + 9);
  v24 = swift_allocObject();
  v77 = xmmword_140280;
  *(v24 + 16) = xmmword_140280;
  v25 = a2[13];
  v26 = a2[14];
  v27 = sub_162F0(a2 + 10, v25);
  *(&v122 + 1) = v25;
  v123 = *(v26 + 8);
  v28 = sub_CC08(&v121);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v29 = *(v116 + 104);
  v30 = v107;
  v86 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v85 = v116 + 104;
  v103 = v29;
  v29(v107);
  v31 = sub_4948(&qword_19AFE8);
  v32 = *(v104 + 72);
  v33 = v113;
  v34 = *(v113 + 80);
  v35 = (v34 + 32) & ~v34;
  v81 = 3 * v32;
  v101 = v34;
  v83 = v31;
  v36 = swift_allocObject();
  v80 = xmmword_13E660;
  *(v36 + 16) = xmmword_13E660;
  v102 = v35;
  sub_13A484();
  sub_13A494();
  v79 = 2 * v32;
  v84 = v32;
  sub_13A4A4();
  v117 = v36;
  v37 = sub_20068();
  v38 = sub_4948(&qword_19AFF0);
  v39 = sub_1D268();
  v40 = v108;
  v99 = v38;
  v98 = v39;
  v41 = v109;
  v100 = v37;
  sub_13BF64();
  v42 = v114;
  v43 = *(v114 + 104);
  v44 = v110;
  v97 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v45 = v112;
  v96 = v114 + 104;
  v95 = v43;
  v43(v110);
  v104 = v23;
  v82 = v24;
  sub_13A4E4();
  v46 = *(v42 + 8);
  v114 = v42 + 8;
  v94 = v46;
  v46(v44, v45);
  v47 = *(v33 + 8);
  v113 = v33 + 8;
  v93 = v47;
  v47(v40, v41);
  v48 = *(v116 + 8);
  v116 += 8;
  v92 = v48;
  v48(v30, v115);
  sub_1D2CC(&v118);
  sub_3C04(&v121);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
  {
    v50 = v86;
    v55 = v82;
  }

  else
  {
    sub_162F0(a2 + 20, a2[23]);
    sub_13A374();
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    v49 = v107;
    v50 = v86;
    (v103)(v107, v86, v115);
    v51 = v110;
    v95(v110, v97, v112);
    v52 = swift_allocObject();
    *(v52 + 16) = v77;
    sub_13A484();
    v117 = v52;
    v53 = v108;
    v54 = v109;
    sub_13BF64();
    sub_13A4E4();
    v93(v53, v54);
    v94(v51, v112);
    v92(v49, v115);
    sub_1D2CC(&v118);
    sub_3C04(&v121);
    v55 = v82;
    v57 = *(v82 + 16);
    v56 = *(v82 + 24);
    v58 = v57 + 1;
    v59 = v106;
    if (v57 >= v56 >> 1)
    {
      *&v77 = v57 + 1;
      sub_58ABC(v56 > 1, v57 + 1, 1, v82);
      v58 = v77;
      v55 = v76;
    }

    *(v55 + 16) = v58;
    v111[4](v55 + v104 + v57 * v105, v78, v59);
  }

  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v60 = v107;
  v61 = v115;
  (v103)(v107, v50, v115);
  v62 = swift_allocObject();
  *(v62 + 16) = v80;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v118 = v62;
  v63 = v108;
  v64 = v109;
  sub_13BF64();
  v65 = v110;
  v66 = v112;
  v95(v110, v97, v112);
  v67 = v87;
  sub_13A4E4();
  v94(v65, v66);
  v93(v63, v64);
  v92(v60, v61);
  sub_1D2CC(&v121);
  v69 = *(v55 + 16);
  v68 = *(v55 + 24);
  if (v69 >= v68 >> 1)
  {
    sub_58ABC(v68 > 1, v69 + 1, 1, v55);
    v55 = v75;
  }

  v70 = v106;
  *(v55 + 16) = v69 + 1;
  v111[4](v55 + v104 + v69 * v105, v67, v70);
  v71 = v88;
  sub_13A4D4();
  sub_13A464();
  v73 = v72;
  (*(v89 + 8))(v71, v91);
  return v73;
}

uint64_t sub_60170()
{

  return swift_allocObject();
}

__n128 sub_60194(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

uint64_t sub_601A8()
{

  return sub_13BE34();
}

uint64_t sub_601C8()
{

  return sub_13A404();
}

uint64_t sub_601E8()
{

  return sub_20038(v0, v1);
}

uint64_t type metadata accessor for BundleTile()
{
  result = qword_19C780;
  if (!qword_19C780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_602A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v135 = a3;
  v130 = sub_139A34();
  sub_9E94();
  v129 = v5;
  __chkstk_darwin(v6);
  v128 = (&v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_4948(&qword_19A420);
  __chkstk_darwin(v8 - 8);
  v127 = &v125 - v9;
  v126 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v10);
  v133 = &v125 - v11;
  sub_13B584();
  sub_9E94();
  v141 = v13;
  v142 = v12;
  __chkstk_darwin(v12);
  v137 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v134 = &v125 - v16;
  __chkstk_darwin(v17);
  v19 = &v125 - v18;
  __chkstk_darwin(v20);
  v22 = &v125 - v21;
  __chkstk_darwin(v23);
  v132 = &v125 - v24;
  __chkstk_darwin(v25);
  v27 = &v125 - v26;
  __chkstk_darwin(v28);
  v30 = &v125 - v29;
  v140 = type metadata accessor for BundleTile();
  sub_9F94();
  __chkstk_darwin(v31);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v139 = swift_initStackObject();
  v34 = sub_BB310();
  v36 = v3;
  v131 = v19;
  v125 = v22;
  if (v3)
  {

    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  v37 = 0x6E6F69746361;
  *v33 = v34;
  *(v33 + 1) = v35;
  v138 = v35;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_139DB4();
  if (v36)
  {

    sub_18BAC();
    sub_928C(v143, &qword_19E960);
LABEL_6:
    sub_13BAB4();
    sub_61720();
    sub_61304(v38, v39);
    v40 = sub_9F18();
    sub_61760(v40, v41);
    sub_9EF8();
    (*(v42 + 104))();
    swift_willThrow();
    v43 = *(v141 + 8);
    v43(v30, v142);

    sub_18B90();
    goto LABEL_7;
  }

  v43 = *(v141 + 8);
  v43(v30, v142);
  v44 = sub_249B4();
  v37 = v140;
LABEL_7:
  v45 = v145;
  *(v33 + 1) = v144;
  *(v33 + 2) = v45;
  *(v33 + 6) = v146;
  __chkstk_darwin(v44);
  sub_5BD04();
  sub_9DD0(0x6B726F77747261, 0xE700000000000000, v37, sub_24498, v46, v47, v48, v49);
  v50 = 0x6C6961746564;
  *(v33 + 7) = v51;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_61720();
    sub_61304(v52, v53);
    v54 = sub_9F18();
    sub_61760(v54, v55);
    sub_9EF8();
    (*(v56 + 104))();
    swift_willThrow();
    sub_47E58();
    (v43)(v27);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    (v43)(v27);
    sub_249B4();
    v50 = v140;
  }

  v57 = v145;
  *(v33 + 4) = v144;
  *(v33 + 5) = v57;
  *(v33 + 12) = v146;
  v58 = sub_BB310();
  v138 = v43;
  *&v144 = v58;
  *(&v144 + 1) = v59;
  sub_13BFB4();
  v60 = v132;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v61 = v127;
    sub_7738();
    if (sub_52E0(v61, 1, v126) != 1)
    {
      sub_47E58();
      v138(v60);
      v70 = v133;
      sub_92E4(v61, v133);
      goto LABEL_16;
    }

    sub_928C(v61, &qword_19A420);
  }

  v62 = sub_13BAB4();
  sub_61720();
  sub_61304(v63, v64);
  v65 = swift_allocError();
  v67 = sub_61784(v65, v66);
  *v68 = 0xD000000000000011;
  v68[1] = 0x800000000014E730;
  sub_61778(v67, v68);
  (*(*(v62 - 8) + 104))();
  swift_willThrow();
  sub_47E58();
  v138(v60);
  v50 = v140;

  v69 = sub_13B7A4();
  v70 = v133;
  sub_53A8(v133, 1, 1, v69);
LABEL_16:
  sub_92E4(v70, &v33[*(v50 + 52)]);
  sub_BB458();
  v71 = v137;
  sub_61738();
  v33[112] = v72 & 1;
  if (_UISolariumEnabled() && (a1 = v128, (*(v129 + 104))(v128, enum case for FlagKeys.Solarium(_:), v130), v73 = sub_139A24(), sub_61738(), v74(), (v73 & 1) != 0) && (a1 = &qword_19E960, sub_9D58((v33 + 16), &v144, &qword_19E960), v75 = *(&v145 + 1), sub_61738(), v50 = v140, sub_928C(v76, v77), v75))
  {
    v78 = v125;
    sub_13B594();
    v79 = sub_13B564();
    v80 = v134;
    if (v79)
    {
      sub_13BAB4();
      sub_61720();
      sub_61304(v81, v82);
      v83 = sub_9F18();
      v85 = sub_61784(v83, v84);
      *v86 = &qword_19E960;
      v86[1] = 0xE500000000000000;
      sub_61778(v85, v86);
      sub_9EF8();
      (*(v87 + 104))();
      swift_willThrow();
      sub_47E58();
      v138(v78);
      v50 = v140;

      sub_18B90();
    }

    else
    {
      sub_617BC();
      sub_47E58();
      v138(v78);
      sub_249B4();
    }

    sub_61748(*(v50 + 60));
    sub_617A8(*(v50 + 56));
  }

  else
  {
    sub_617A8(*(v50 + 60));
    v89 = v131;
    sub_13B594();
    v90 = sub_13B564();
    v80 = v134;
    if (v90)
    {
      sub_13BAB4();
      sub_61720();
      sub_61304(v91, v92);
      v93 = sub_9F18();
      v95 = sub_61784(v93, v94);
      *v96 = a1;
      v96[1] = 0xE500000000000000;
      sub_61778(v95, v96);
      sub_9EF8();
      (*(v97 + 104))();
      swift_willThrow();
      sub_47E58();
      v138(v89);
      v50 = v140;

      sub_18B90();
    }

    else
    {
      sub_617BC();
      sub_47E58();
      v138(v89);
      sub_249B4();
    }

    sub_61748(*(v50 + 56));
    v71 = v137;
  }

  __chkstk_darwin(v88);
  sub_5BD04();
  sub_9DB8(0x4965636976726573, 0xEC000000736E6F63, v50, sub_6134C, v98, v99, v100, v101);
  v102 = v139;
  *(v33 + 13) = v103;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_61720();
    sub_61304(v104, v105);
    v106 = sub_9F18();
    v108 = sub_61784(v106, v107);
    *v109 = 0x656C746974627573;
    v109[1] = 0xE800000000000000;
    sub_61778(v108, v109);
    sub_9EF8();
    (*(v110 + 104))();
    swift_willThrow();
    sub_47E58();
    v138(v80);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    v138(v80);
    sub_249B4();
  }

  v111 = v145;
  *(v33 + 120) = v144;
  *(v33 + 136) = v111;
  *(v33 + 19) = v146;
  sub_13B594();
  if (sub_13B564())
  {
    v112 = sub_13BAB4();
    sub_61720();
    sub_61304(v113, v114);
    v115 = sub_9F18();
    v117 = sub_61784(v115, v116);
    *v118 = 0x656C746974;
    v118[1] = 0xE500000000000000;
    sub_61778(v117, v118);
    sub_9EF8();
    (*(v119 + 104))();
    swift_willThrow();

    v120 = sub_61790();
    MEMORY[0xE500000000000000](v120);
    MEMORY[0xE500000000000000](v71, v112);

    sub_18B90();
  }

  else
  {
    sub_139DB4();

    v124 = sub_61790();
    MEMORY[0xE500000000000000](v124);
    MEMORY[0xE500000000000000](v71, v102);
    sub_249B4();
  }

  v121 = v145;
  *(v33 + 10) = v144;
  *(v33 + 11) = v121;
  *(v33 + 24) = v146;
  sub_61378(v33, v135);
  sub_13B5A4();
  sub_9F94();
  (*(v122 + 8))(v147);
  return sub_613DC(v33);
}

uint64_t sub_61304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6134C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39AFC();
  *a1 = result;
  return result;
}

uint64_t sub_61378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_613DC(uint64_t a1)
{
  v2 = type metadata accessor for BundleTile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_614F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_61580()
{
  sub_24850();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_248F4(319, &qword_19C790, &unk_19C798);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

__n128 sub_61748@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 160);
  v5 = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 128);
  return result;
}

void *sub_61760(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  a2[2] = *(v4 - 232);
  return result;
}

double sub_617A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t sub_617BC()
{

  return sub_139BC4();
}

uint64_t sub_617E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_13C0C4();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void sub_61804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_139A34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = sub_4948(&qword_19C840);
  sub_6250C();

  if (v53)
  {
    sub_9414(&v52, v54);
    if (_UISolariumEnabled() && ((*(v8 + 104))(v10, enum case for FlagKeys.Solarium(_:), v7), v12 = sub_139A24(), (*(v8 + 8))(v10, v7), (v12 & 1) != 0))
    {
      v13 = *(*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton] + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView);
      v14 = v55;
      v15 = v56;
      v16 = sub_162F0(v54, v55);
      sub_91BF0(v16, a3, v13, v14, v15);
      swift_getKeyPath();
      sub_624EC();

      sub_3C04(v54);
      v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue;
      swift_beginAccess();
      sub_4BEA8(&v52, &v4[v17]);
      swift_endAccess();
    }

    else
    {
      sub_624D4();
      v18 = sub_62524();
      v19(v18);
      sub_3C04(v54);
    }
  }

  else
  {
    sub_2519C(&v52);
  }

  swift_getKeyPath();
  sub_6250C();

  v20 = v54[0];
  if (v54[0])
  {
    v21 = sub_617E0(v54[0]);
    if (v21)
    {
      v22 = v21;
      *&v52 = &_swiftEmptyArrayStorage;
      sub_4CF5C(0, v21 & ~(v21 >> 63), 0);
      if (v22 < 0)
      {
        __break(1u);
        return;
      }

      v48 = a3;
      v49 = v11;
      v50 = v4;
      v51 = a1;
      v23 = 0;
      v24 = v52;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = sub_13C004();
        }

        else
        {
          v25 = *(v20 + 8 * v23 + 32);
        }

        v55 = &_s4ItemVN;
        v56 = &off_187F88;
        sub_62530();
        v26 = swift_allocObject();
        v54[0] = v26;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 64) = v25;
        *(v26 + 96) = &type metadata for DynamicPlainText;
        *(v26 + 104) = &protocol witness table for DynamicPlainText;
        sub_62530();
        *(v26 + 72) = swift_allocObject();
        sub_139D54();
        *(v26 + 144) = 0;
        *(v26 + 112) = 0u;
        *(v26 + 128) = 0u;
        *&v52 = v24;
        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          sub_4CF5C((v27 > 1), v28 + 1, 1);
        }

        ++v23;
        v29 = v55;
        v30 = v56;
        v31 = sub_4D884(v54, v55);
        v32 = __chkstk_darwin(v31);
        v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34, v32);
        sub_4D7EC(v28, v34, &v52, v29, v30);
        sub_3C04(v54);
        v24 = v52;
      }

      while (v22 != v23);

      v4 = v50;
      a3 = v48;
    }

    else
    {

      v24 = &_swiftEmptyArrayStorage;
    }

    sub_1180F8(v24, a3);
  }

  swift_getKeyPath();
  sub_6250C();

  v36 = v54[0];
  if (v54[0])
  {
    sub_624D4();
    (*(v37 + 296))(v36, a3);
  }

  swift_getKeyPath();
  sub_624EC();

  if (v53)
  {
    sub_9414(&v52, v54);
    sub_624D4();
    v38 = sub_62524();
    v39(v38);
    sub_3C04(v54);
  }

  else
  {
    sub_2519C(&v52);
  }

  swift_getKeyPath();
  sub_624EC();

  if (v53)
  {
    sub_9414(&v52, v54);
    sub_624D4();
    v40 = sub_62524();
    v41(v40);
    sub_3C04(v54);
  }

  else
  {
    sub_2519C(&v52);
  }

  swift_getKeyPath();
  sub_624EC();

  if (v53)
  {
    sub_9414(&v52, v54);
    sub_624D4();
    v42 = sub_62524();
    v43(v42);
    sub_3C04(v54);
  }

  else
  {
    sub_2519C(&v52);
  }

  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph] = a3;

  v44 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  swift_getKeyPath();
  sub_6250C();

  [v44 setHidden:(v54[0] & 1) == 0];
  v45 = [v4 contentView];
  swift_getKeyPath();
  sub_13B5E4();

  if (v54[1])
  {
    v46 = sub_13BB54();
  }

  else
  {
    v46 = 0;
  }

  [v45 setAccessibilityLabel:v46];
}

uint64_t sub_61FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleTileComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_62028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleTileComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_62090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_6210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_62188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_62208()
{
  result = qword_19C7F0;
  if (!qword_19C7F0)
  {
    type metadata accessor for BundleTile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C7F0);
  }

  return result;
}

void *sub_62260()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_62300()
{
  if (*(v0 + 40))
  {
    sub_3C04(v0 + 16);
  }

  sub_3C04(v0 + 72);
  if (*(v0 + 136))
  {
    sub_3C04(v0 + 112);
  }

  sub_62530();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_62364()
{

  if (*(v0 + 80))
  {
    sub_3C04(v0 + 56);
  }

  sub_62530();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_623B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_623F8(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_62468(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_4948(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_624EC()
{

  return sub_13B5E4();
}

uint64_t sub_6250C()
{

  return sub_13B5E4();
}

id sub_6253C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for DynamicButton()) init];
  v11 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel;
  sub_139BB4();
  v13 = objc_opt_self();
  v14 = [v13 ams_appTint];
  v15 = sub_13A2A4();
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = UIFontTextStyleSubheadline;
  v16 = *(*(v15 - 8) + 104);
  sub_27C88();
  v16();
  v42 = UIFontTextStyleSubheadline;
  sub_64E08();
  *&v5[v12] = sub_139BA4();
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView;
  v18 = objc_allocWithZone(sub_139CF4());
  *&v5[v17] = sub_139CE4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel;
  v20 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = v42;
  sub_27C88();
  v16();
  sub_64E08();
  *&v5[v19] = sub_139BA4();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator;
  v43 = type metadata accessor for BundleTileComponent();
  *&v5[v21] = sub_62A90();
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph] = 0;
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v23 = type metadata accessor for ServicesGridView();
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v24 = objc_allocWithZone(v23);
  v47[3] = &type metadata for CGFloat;
  v47[4] = &protocol witness table for CGFloat;
  v46[4] = &protocol witness table for CGFloat;
  v47[0] = 0x4018000000000000;
  v46[3] = &type metadata for CGFloat;
  v46[0] = 0;
  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v25 = &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v25 = 0;
  v25[1] = 0;
  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = &_swiftEmptyArrayStorage;
  v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v46, &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  __asm { FMOV            V0.2D, #28.0 }

  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize] = _Q0;
  v31 = &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v47, &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(&v50, (v31 + 48));
  sub_4F1A8(v48, (v31 + 88));
  sub_4B14(v46, (v31 + 128));
  v31[40] = 1;
  v31[168] = 0;
  *(v31 + 22) = 1;
  v31[184] = 0;
  v45.receiver = v24;
  v45.super_class = v23;
  v32 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(v48);
  sub_4F258(&v50);
  sub_3C04(v46);
  sub_3C04(v47);
  *&v5[v22] = v32;
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel;
  v34 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = v42;
  sub_27C88();
  v16();
  sub_64E08();
  *&v5[v33] = sub_139BA4();
  v35 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel;
  v36 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = UIFontTextStyleHeadline;
  sub_27C88();
  v16();
  v37 = UIFontTextStyleHeadline;
  *&v5[v35] = sub_139BA4();
  v38 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics];
  *(v38 + 5) = &type metadata for CGFloat;
  *(v38 + 6) = &protocol witness table for CGFloat;
  *(v38 + 2) = 0x4024000000000000;
  *(v38 + 12) = &type metadata for CGFloat;
  *(v38 + 13) = &protocol witness table for CGFloat;
  *(v38 + 9) = 0x4024000000000000;
  *(v38 + 17) = &type metadata for Double;
  *(v38 + 18) = &protocol witness table for Double;
  *(v38 + 14) = 0x4024000000000000;
  *(v38 + 22) = &type metadata for Double;
  *(v38 + 23) = &protocol witness table for Double;
  *(v38 + 19) = 0x4020000000000000;
  *(v38 + 27) = &type metadata for Double;
  *(v38 + 28) = &protocol witness table for Double;
  *(v38 + 24) = 0x4020000000000000;
  *(v38 + 32) = &type metadata for Double;
  *(v38 + 33) = &protocol witness table for Double;
  *(v38 + 29) = 0x4020000000000000;
  *(v38 + 37) = &type metadata for Double;
  *(v38 + 38) = &protocol witness table for Double;
  *(v38 + 34) = 0;
  *v38 = vdupq_n_s64(0x4048000000000000uLL);
  __asm { FMOV            V0.2D, #22.0 }

  *(v38 + 56) = _Q0;
  v44.receiver = v5;
  v44.super_class = v43;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_63640();

  return v40;
}

id sub_62A90()
{
  v0 = [objc_allocWithZone(AMSUICommonImageView) init];
  sub_CACC(0, &unk_1A0710);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = sub_EE960(0x2E6E6F7276656863, 0xED00007468676972, [v1 configurationWithPointSize:4 weight:1 scale:16.0]);
  [v2 setImage:v3];

  [v2 setContentMode:1];
  if (qword_199F50 != -1)
  {
    swift_once();
  }

  [v2 setTintColor:qword_1B2A08];

  return v2;
}

id sub_62C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleTileComponent();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_62C8C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_128260([v1 isHighlighted], 1);
}

uint64_t sub_62CE8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BundleTileComponent();
  v1 = objc_msgSendSuper2(&v6, "prepareForReuse");
  (*(&stru_108.reloff + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView])))(v1);
  sub_1D38C();
  (*(v2 + 392))();
  sub_117FB4();
  sub_1D38C();
  (*(v3 + 392))();
  sub_1D38C();
  return (*(v4 + 392))();
}

uint64_t sub_62E90()
{
  sub_13A314();
  sub_9E94();
  v30 = v2;
  v31 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v29 = v4 - v3;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  sub_64838(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics], v32);
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
  v28 = v5;
  v32[42] = type metadata accessor for DynamicButton();
  v32[43] = &protocol witness table for UIView;
  v32[39] = v5;
  v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel];
  v27 = v6;
  v7 = sub_139BB4();
  v32[47] = v7;
  v8 = sub_270D8();
  v32[48] = v8;
  v32[44] = v6;
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView];
  v32[52] = sub_139CF4();
  v32[53] = &protocol witness table for UIView;
  v32[49] = v9;
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel];
  v32[57] = v7;
  v32[58] = v8;
  v32[54] = v10;
  v11 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  v12 = sub_CACC(0, &qword_19C568);
  v32[63] = &protocol witness table for UIView;
  v32[62] = v12;
  v32[59] = v11;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView];
  v32[67] = type metadata accessor for ServicesGridView();
  v32[68] = &protocol witness table for UIView;
  v32[64] = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel];
  v32[72] = v7;
  v32[73] = v8;
  v32[69] = v14;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel];
  v32[77] = v7;
  v32[78] = v8;
  v32[74] = v15;
  v16 = v28;
  v17 = v27;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = [v0 contentView];
  [v24 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v25 = [v0 contentView];
  sub_65070(v25);

  (*(v30 + 8))(v29, v31);
  return sub_64AA8(v32);
}

double sub_63198(double a1, double a2, float a3)
{
  sub_64838(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics], v32);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
  v31 = v6;
  v32[42] = type metadata accessor for DynamicButton();
  v32[43] = &protocol witness table for UIView;
  v32[39] = v6;
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel];
  v8 = sub_139BB4();
  v32[47] = v8;
  v9 = sub_270D8();
  v32[48] = v9;
  v32[44] = v7;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView];
  v32[52] = sub_139CF4();
  v32[53] = &protocol witness table for UIView;
  v32[49] = v10;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel];
  v32[57] = v8;
  v32[58] = v9;
  v32[54] = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  v13 = sub_CACC(0, &qword_19C568);
  v32[63] = &protocol witness table for UIView;
  v32[62] = v13;
  v32[59] = v12;
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView];
  v32[67] = type metadata accessor for ServicesGridView();
  v32[68] = &protocol witness table for UIView;
  v32[64] = v14;
  v15 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel];
  v32[72] = v8;
  v32[73] = v9;
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel];
  v32[69] = v15;
  v32[77] = v8;
  v32[78] = v9;
  v32[74] = v16;
  v17 = v31;
  v18 = v7;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  sub_27C54();
  sub_13BE64();
  v26 = v25;
  v27 = [v3 contentView];
  sub_64894(v27, v32, v26);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v29 = a1;
  }

  else
  {
    v29 = v28;
  }

  sub_64AA8(v32);
  return v29;
}

void sub_63454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

void sub_63640()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_199F48 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1B2A00];

  v10 = sub_57354();
  if (qword_199F30 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1B29E8);

  v11 = sub_57354();
  v12 = [v11 layer];

  if (qword_199F38 != -1)
  {
    swift_once();
  }

  [v12 setBorderWidth:*&qword_1B29F0];

  v13 = sub_57354();
  v14 = [v13 layer];

  if (qword_199F40 != -1)
  {
    swift_once();
  }

  [v14 setBorderColor:qword_1B29F8];

  if (!_UISolariumEnabled() || (v15 = sub_64E34(), v16(v15), v17 = sub_139A24(), (*(v4 + 8))(v8, v2), (v17 & 1) == 0))
  {
    v18 = sub_57354();
    v19 = [objc_opt_self() ams_shadow];
    v20 = [v19 CGColor];

    v21 = sub_4AD60();
    sub_12BE00(v20, v21, v22, v23, v24);
  }

  if (_UISolariumEnabled() && (v25 = sub_64E34(), v26(v25), v27 = sub_139A24(), (*(v4 + 8))(v8, v2), (v27 & 1) != 0))
  {
    v28 = sub_57354();
    v29 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
    [v28 addSubview:v29];

    v30 = sub_57354();
    [v30 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView]];

    sub_118068(0, 1, 0);
    if (qword_199F28 != -1)
    {
      swift_once();
    }

    v31 = qword_1B29E0;
    v32 = qword_1B29E0;
    sub_8E8AC(v31);
    [v29 addTarget:v1 action:"runActionButtonSegue" forControlEvents:64];
  }

  else
  {
    v33 = sub_57354();
    sub_1D474(v33, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel);
  }

  v34 = sub_57354();
  sub_1D474(v34, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView);

  v35 = sub_57354();
  v36 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  [v35 addSubview:v36];

  v37 = sub_57354();
  sub_1D474(v37, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel);

  v38 = sub_57354();
  sub_1D474(v38, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel);

  v39 = sub_57354();
  sub_1D474(v39, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel);

  [v36 setHidden:1];
  v40 = sub_57354();
  [v40 setIsAccessibilityElement:1];

  v41 = sub_57354();
  [v41 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t sub_63B88()
{
  v1 = sub_139E74();
  __chkstk_darwin(v1 - 8);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = sub_13B834();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue;
  swift_beginAccess();
  sub_64264(v0 + v12, &v17);
  if (!*(&v18 + 1))
  {
    return sub_CC68(&v17, &unk_19E320);
  }

  sub_9414(&v17, v20);
  v13 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph);
  if (v13)
  {
    sub_139E84();
    sub_13B6B4();

    sub_13B9A4();
    v14 = v17;
    sub_13B9A4();
    (*(v7 + 16))(v4, v11, v5);
    v15 = sub_4948(&unk_19B7E0);
    sub_53A8(v4, 0, 1, v15);
    v17 = 0u;
    v18 = 0u;
    v19 = -1;
    (*(*v14 + 216))(v20, v4, v13, &v17);

    sub_CC68(&v17, &unk_19E330);
    sub_3BDFC(v4);
    (*(v7 + 8))(v11, v5);
  }

  return sub_3C04(v20);
}

id sub_63E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleTileComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_63FD4(void *a1)
{
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  if (_UISolariumEnabled() && (v9 = sub_64E1C(), v10(v9), v11 = sub_139A24(), (*(v4 + 8))(v8, v2), (v11 & 1) != 0))
  {
    v12 = [a1 container];
    swift_getObjectType();
    sub_BBC90();
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = v14 + v14;
  }

  else
  {
    v16 = [a1 container];
    swift_getObjectType();
    v17 = sub_BBC00();
    swift_unknownObjectRelease();
    if (v17)
    {
      v15 = 200.0;
    }

    else
    {
      v15 = 32.0;
    }
  }

  [objc_msgSend(a1 "container")];
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = v19 - v15;
  if (_UISolariumEnabled())
  {
    v21 = sub_64E1C();
    v22(v21);
    v23 = sub_139A24();
    (*(v4 + 8))(v8, v2);
    if (v23)
    {
      v20 = fmin(v20, 360.0);
    }
  }

  v24 = [objc_opt_self() absoluteDimension:v20];
  v25 = [objc_opt_self() estimatedDimension:200.0];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  return v26;
}

uint64_t sub_64264(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_19E320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_642D4()
{
  v0 = [objc_opt_self() ams_appTint];
  v1 = [v0 colorWithAlphaComponent:0.15];

  qword_1B29E0 = v1;
}

uint64_t sub_64340()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1B29E8 = *&v6;
  return result;
}

uint64_t sub_64444()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1B29F0 = *&v6;
  return result;
}

void sub_64548()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1B29F8 = v7;
}

id sub_646D0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1B2A00 = result;
  return result;
}

id sub_647FC()
{
  result = [objc_opt_self() ams_tertiaryText];
  qword_1B2A08 = result;
  return result;
}

double sub_64894(uint64_t a1, void *a2, double a3)
{
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_64AFC(a1, a2);
  sub_64C6C(a1, a2);
  sub_6544C(v13);
  sub_162F0(v13, v13[3]);
  sub_13A384();
  sub_3C04(v13);
  sub_162F0(a2 + 39, a2[42]);
  if (sub_13A324())
  {
    v10 = a2[17];
    v11 = a2[18];
    sub_162F0(a2 + 14, v10);
    sub_20038(v10, v11);
    sub_13A404();
    (*(v7 + 8))(v9, v6);
    sub_162F0(a2 + 39, a2[42]);
    sub_13A384();
  }

  return a3;
}

double sub_64AFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 392), *(a2 + 416));
  v7 = 0.0;
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0((a2 + 392), *(a2 + 416));
    if (sub_13A324())
    {
      v8 = *a2;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      sub_162F0((a2 + 16), v9);
      sub_20038(v9, v10);
      sub_13A404();
      v12 = v11;
      (*(v4 + 8))(v6, v3);
      return v8 + v12;
    }
  }

  return v7;
}

uint64_t sub_64C6C(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a2 + 59, a2[62]);
  result = sub_13A364();
  if ((result & 1) == 0)
  {
    v8 = a2[12];
    v9 = a2[13];
    sub_162F0(a2 + 9, v8);
    sub_20038(v8, v9);
    sub_13A404();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_64E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 632))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_64F90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_65070(uint64_t a1)
{
  v2 = v1;
  v4 = sub_13C114();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v20 = sub_13A314();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  sub_162F0(v1 + 49, v1[52]);
  sub_13A354();
  swift_getObjectType();
  sub_65FA8(a1, v1);
  sub_66118(a1, v1);
  v22.origin.x = sub_3001C();
  CGRectGetMinX(v22);
  v23.origin.x = sub_3001C();
  CGRectGetMinY(v23);
  v24.origin.x = sub_3001C();
  CGRectGetHeight(v24);
  sub_6544C(v21);
  sub_6627C(v21, v21[3]);
  sub_13A544();
  sub_3C04(v21);
  sub_6627C(v2 + 39, v2[42]);
  if (sub_13A324())
  {
    v17 = v1[17];
    v18 = v2[18];
    sub_162F0(v2 + 14, v2[17]);
    sub_20038(v17, v18);
    sub_13A404();
    (*(v6 + 8))(v10, v4);
    sub_6627C(v2 + 49, v2[52]);
    sub_13A344();
    CGRectGetMaxY(v25);
    sub_13A304();
    sub_13A2D4();
    v26.origin.x = sub_3001C();
    CGRectGetWidth(v26);
    v27.origin.x = sub_3001C();
    CGRectGetHeight(v27);
    sub_6627C(v2 + 39, v2[42]);
    sub_66270();
    sub_13A384();
    sub_6627C(v2 + 39, v2[42]);
    v28.origin.x = sub_3001C();
    CGRectGetMinX(v28);
    sub_66270();
    sub_13A354();
  }

  sub_6627C(v2 + 59, v2[62]);
  sub_66270();
  if ((sub_13A364() & 1) == 0)
  {
    sub_6627C(v2 + 59, v2[62]);
    v29.origin.x = sub_3001C();
    CGRectGetMinX(v29);
    v30.origin.x = sub_3001C();
    CGRectGetWidth(v30);
    v31.origin.x = sub_3001C();
    CGRectGetMidY(v31);
    sub_66270();
    sub_13A354();
  }

  sub_3001C();
  sub_13A2B4();
  return (*(v12 + 8))(v16, v20);
}

uint64_t sub_6544C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v47 = sub_13A4C4();
  sub_9E94();
  v53 = v3;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v46 = sub_13A454();
  sub_9E94();
  v52 = v8;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_9EC0();
  v51 = v15 - v14;
  sub_4948(&qword_19AFE8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v55 = v16;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v40 = v13;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13F4C0;
  v17 = v1[77];
  v18 = v1[78];
  sub_6627C(v2 + 74, v2[77]);
  *(&v56 + 1) = v17;
  sub_2A360(*(v18 + 8));
  sub_2B538();
  (*(v19 + 16))();
  v20 = sub_66260();
  v45 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v50 = *(v52 + 104);
  v50(v12, v20);
  v49 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v48 = *(v53 + 104);
  v48(v7);
  sub_13A4E4();
  v44 = *(v53 + 8);
  v44(v7, v47);
  v43 = *(v52 + 8);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v21 = v1[72];
  v22 = v1[73];
  sub_162F0(v1 + 69, v21);
  *(&v56 + 1) = v21;
  sub_2A360(*(v22 + 8));
  sub_2B538();
  (*(v23 + 16))();
  v24 = sub_66260();
  (v50)(v12, v45, v46, v24);
  (v48)(v7, v49, v47);
  sub_13A4E4();
  v44(v7, v47);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  (v50)(v12, v45, v46);
  v25 = v7;
  (v48)(v7, v49, v47);
  v26 = v2;
  sub_13A4E4();
  v44(v25, v47);
  v43(v12, v46);
  sub_1D2CC(&v55);
  v28 = v2[57];
  v27 = v2[58];
  sub_162F0(v26 + 54, v26[57]);
  *(&v56 + 1) = v28;
  sub_2A360(*(v27 + 8));
  sub_2B538();
  (*(v29 + 16))();
  v30 = sub_66260();
  (v50)(v12, v45, v46, v30);
  (v48)(v25, v49, v47);
  sub_13A4E4();
  v31 = sub_66294();
  v32(v31);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v34 = v2[47];
  v33 = v2[48];
  sub_162F0(v26 + 44, v26[47]);
  *(&v56 + 1) = v34;
  sub_2A360(*(v33 + 8));
  sub_2B538();
  (*(v35 + 16))();
  v36 = sub_66260();
  (v50)(v12, v45, v46, v36);
  (v48)(v25, v49, v47);
  sub_13A4E4();
  v37 = sub_66294();
  v38(v37);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  a1[3] = sub_13A514();
  a1[4] = &protocol witness table for VerticalFlowLayout;
  a1[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(a1);
  sub_13A4D4();
  return (*(v41 + 8))(v51, v40);
}

double sub_65D30(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_65D88(a1, v2, a2);
}

double sub_65D88(uint64_t a1, void *a2, double a3)
{
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_65FA8(a1, a2);
  sub_66118(a1, a2);
  sub_6544C(v13);
  sub_162F0(v13, v13[3]);
  sub_13A384();
  sub_3C04(v13);
  sub_162F0(a2 + 39, a2[42]);
  if (sub_13A324())
  {
    v10 = a2[17];
    v11 = a2[18];
    sub_162F0(a2 + 14, v10);
    sub_20038(v10, v11);
    sub_13A404();
    (*(v7 + 8))(v9, v6);
    sub_162F0(a2 + 39, a2[42]);
    sub_13A384();
  }

  return a3;
}

double sub_65FA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 392), *(a2 + 416));
  v7 = 0.0;
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0((a2 + 392), *(a2 + 416));
    if (sub_13A324())
    {
      v8 = *a2;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      sub_162F0((a2 + 16), v9);
      sub_20038(v9, v10);
      sub_13A404();
      v12 = v11;
      (*(v4 + 8))(v6, v3);
      return v8 + v12;
    }
  }

  return v7;
}

uint64_t sub_66118(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a2 + 59, a2[62]);
  result = sub_13A364();
  if ((result & 1) == 0)
  {
    v8 = a2[12];
    v9 = a2[13];
    sub_162F0(a2 + 9, v8);
    sub_20038(v8, v9);
    sub_13A404();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

double sub_66260()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t sub_662A8(char a1)
{
  if (a1)
  {
    return 1668184435;
  }

  else
  {
    return 0x636E797361;
  }
}

uint64_t sub_662D4(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_13C104(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_66324(char a1)
{
  if (a1)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

BOOL sub_66350(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1841D0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

uint64_t sub_663BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_184130;
  result = sub_662D4(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_663F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_662A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_66444@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_184180;
  result = sub_662D4(*a1, *(a1 + 8), v3);
  *a2 = result;
  return result;
}

uint64_t sub_6647C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_66324(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_664B4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_66350(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_66500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_66574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v97 = a3;
  v5 = sub_4948(&qword_19C8C8);
  __chkstk_darwin(v5 - 8);
  v100 = &v95 - v6;
  v99 = sub_4948(&qword_19A498);
  sub_2B538();
  __chkstk_darwin(v7);
  v101 = &v95 - v8;
  sub_13B5D4();
  sub_9E94();
  v105 = v9;
  v106 = v10;
  __chkstk_darwin(v9);
  sub_9EC0();
  v102 = v12 - v11;
  v13 = sub_13B584();
  sub_9E94();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_18B60();
  __chkstk_darwin(v17);
  v104 = &v95 - v18;
  __chkstk_darwin(v19);
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18B60();
  __chkstk_darwin(v21);
  v22 = type metadata accessor for BundleTwoPanelPageDestination();
  sub_2B538();
  __chkstk_darwin(v23);
  sub_9EC0();
  v107 = (v25 - v24);
  sub_139DC4();
  inited = swift_initStackObject();
  v110 = a1;
  v111 = inited;
  sub_13B594();
  v27 = sub_13B564();
  v109 = v15;
  if ((v27 & 1) == 0)
  {
    sub_139DB4();
    if (!v3)
    {
      v30 = *(v109 + 8);
      v46 = sub_681DC();
      v30(v46);
      sub_681E8();
      goto LABEL_5;
    }

    sub_6819C();
    sub_184DC(v112, &qword_19E960);
    v15 = v109;
  }

  sub_13BAB4();
  sub_677B8();
  sub_9F18();
  *v28 = 0x6567646162;
  v28[1] = 0xE500000000000000;
  v28[2] = v22;
  sub_2B538();
  (*(v29 + 104))();
  swift_willThrow();
  v30 = *(v15 + 8);
  v31 = sub_681DC();
  v30(v31);

  v115 = 0;
  v113 = 0u;
  v114 = 0u;
LABEL_5:
  v37 = v114;
  v38 = v107;
  *v107 = v113;
  *(v38 + 16) = v37;
  *(v38 + 32) = v115;
  sub_6EB8(0x6F506E6F74747562, 0xEE006E6F69746973, v22, v32, v33, v34, v35, v36);
  v39 = v116;
  *(v38 + 40) = v40 & 1;
  __chkstk_darwin(v40);
  *(&v95 - 2) = v39;
  sub_9DB8(0x736E6F74747562, 0xE700000000000000, v22, sub_67810, (&v95 - 4), v41, v42, v43);
  v108 = v22;
  v96 = v30;
  v95 = v13;
  *(v38 + 48) = v44;
  result = sub_BB598(0x6F436E6D756C6F63, 0xEB00000000746E75, v22);
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v104 = 0;
  *(v38 + 56) = result;
  *(v38 + 64) = 0;
  v47 = v103;
  v48 = v110;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v49 = 0x7470697263736564;
    v49[1] = 0xEB000000006E6F69;
    sub_681D0(v49, v49);
    sub_2B538();
    (*(v50 + 104))();
    swift_willThrow();

    v51 = v48;
    v52 = v95;
    v53 = v96;
    (v96)(v51, v95);
    v53(v47, v52);
    v54 = 0;
    v55 = 0;
    goto LABEL_11;
  }

  sub_139DB4();
  v59 = v109 + 8;
  v60 = v47;
  v61 = v96;
  (v96)(v60, v95);
  sub_681E8();
  sub_9414(&v113, v38 + 72);
  sub_13B594();
  v62 = sub_13B564();
  v109 = v59;
  if (v62)
  {
    sub_13BAB4();
    sub_677B8();
    sub_18B70();
    *v63 = 0x6D69616C63736964;
    v63[1] = 0xEA00000000007265;
    sub_681D0(v63, v63);
    sub_2B538();
    (*(v64 + 104))();
    swift_willThrow();
    v65 = sub_681DC();
    v61(v65);

    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    sub_139DB4();
    sub_681AC();
    v74();
    sub_681E8();
  }

  v66 = v114;
  *(v38 + 112) = v113;
  *(v38 + 128) = v66;
  *(v38 + 144) = v115;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_27;
  }

  v67 = v100;
  sub_80C0();
  if (sub_52E0(v67, 1, v99) == 1)
  {
    sub_184DC(v67, &qword_19C8C8);
LABEL_27:
    sub_13BAB4();
    sub_677B8();
    sub_18B70();
    *v68 = 0x7274654D65676170;
    v68[1] = 0xEB00000000736369;
    sub_681D0(v68, v68);
    sub_2B538();
    (*(v69 + 104))();
    swift_willThrow();
    sub_681AC();
    v70();

    v71 = v101;
    v72 = v105;
    sub_53A8(v101, 1, 1, v105);
    goto LABEL_28;
  }

  sub_681AC();
  v73();
  v71 = v101;
  sub_678FC(v67, v101);
  v72 = v105;
  if (sub_52E0(v71, 1, v105) == 1)
  {
LABEL_28:
    sub_13B5C4();
    if (sub_52E0(v71, 1, v72) != 1)
    {
      sub_184DC(v71, &qword_19A498);
    }

    goto LABEL_32;
  }

  (*(v106 + 32))(v102, v71, v72);
LABEL_32:
  v75 = v108;
  v76 = (*(v106 + 32))(v38 + *(v108 + 52), v102, v72);
  __chkstk_darwin(v76);
  *(&v95 - 2) = v116;
  sub_9DB8(0x7365636976726573, 0xE800000000000000, v75, sub_511D0, (&v95 - 4), v77, v78, v79);
  *(v38 + 152) = v80;
  sub_7048(0x4D676E6963617073, 0xEC0000006C65646FLL, v75, v81, v82, v83, v84, v85);
  *(v38 + 160) = 0;
  v86 = v98;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v87 = v116;
    sub_139DB4();
    sub_681BC();
    v93 = *(v92 - 256);
    v93();
    (v93)(v86, 0xE500000000000000);
    sub_681E8();
    sub_9414(&v113, v38 + 168);
    sub_6783C(v38, v97);
    sub_13B5A4();
    sub_5224();
    (*(v94 + 8))(v87);
    return sub_678A0(v38);
  }

  sub_13BAB4();
  sub_677B8();
  sub_9F18();
  *v88 = 0x656C746974;
  v88[1] = 0xE500000000000000;
  sub_681D0(v88, v88);
  sub_2B538();
  (*(v89 + 104))();
  swift_willThrow();

  sub_681BC();
  v91 = *(v90 - 256);
  v91();
  (v91)(v86, 0xE500000000000000);
  v54 = 1;
  v55 = 1;
LABEL_11:
  v56 = v116;
  v57 = v104;
  sub_13B5A4();
  sub_5224();
  (*(v58 + 8))(v56);
  result = sub_184DC(v38, &qword_19E960);
  if (v57)
  {
    if (!v54)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v54)
    {
LABEL_13:
      if (!v55)
      {
        goto LABEL_14;
      }

LABEL_18:

      if (!v54)
      {
        return result;
      }

      return (*(v106 + 8))(v38 + *(v108 + 52), v105);
    }
  }

  sub_3C04(v38 + 72);
  result = sub_184DC(v38 + 112, &qword_19E960);
  if (v55)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v54)
  {
    return result;
  }

  return (*(v106 + 8))(v38 + *(v108 + 52), v105);
}

uint64_t sub_6734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_13B584();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  sub_139BD4();
  swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v26 = a2;
  sub_139BC4();
  if (v34[7])
  {

    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_184DC(v28, &unk_19E320);
LABEL_4:
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v12 = 0x6E6F69746361;
    v12[1] = 0xE600000000000000;
    v12[2] = &type metadata for BundleTwoPanelPageDestination.Button;
    sub_2B538();
    (*(v13 + 104))();
    swift_willThrow();
    v14 = *(v7 + 8);
    v15 = sub_681DC();
    v14(v15);
    (v14)(v11, v5);
    sub_13B5A4();
    sub_5224();
    return (*(v16 + 8))(a2);
  }

  v18 = *(v7 + 8);
  v18(v11, v5);
  sub_9414(v28, &v30);
  sub_9414(&v30, v33);
  sub_707C(1684957547, 0xE400000000000000, &type metadata for BundleTwoPanelPageDestination.Button, v19, v20, v21, v22, v23);
  v33[40] = v24 & 1;
  sub_BB310();
  v31 = &type metadata for DynamicMarkdownText;
  v32 = &protocol witness table for DynamicMarkdownText;
  *&v30 = swift_allocObject();
  sub_139DF4();
  v18(a1, v5);
  sub_9414(&v30, v34);
  sub_679DC(v33, a3);
  sub_13B5A4();
  sub_5224();
  (*(v25 + 8))(v26);
  return sub_67A14(v33);
}

uint64_t type metadata accessor for BundleTwoPanelPageDestination()
{
  result = qword_19C928;
  if (!qword_19C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_677B8()
{
  result = qword_19A428;
  if (!qword_19A428)
  {
    sub_13BAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A428);
  }

  return result;
}

uint64_t sub_67810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39B28();
  *a1 = result;
  return result;
}

uint64_t sub_6783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTwoPanelPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_678A0(uint64_t a1)
{
  v2 = type metadata accessor for BundleTwoPanelPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_678FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19A498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6796C()
{

  if (*(v0 + 112))
  {
    sub_3C04(v0 + 88);
  }

  return _swift_deallocObject(v0, 208, 7);
}

_BYTE *sub_67A5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x67B28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleTwoPanelPageDestination.SpacingModel(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x67BFCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_67C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_67CE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_67D64()
{
  sub_67F30();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_67F94(319, &qword_19C938, &type metadata for BundleTwoPanelPageDestination.Button, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_67F94(319, &qword_19C940, &type metadata for UInt, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v6 = sub_18A28();
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_67F94(319, &qword_19C948, &type metadata for MarketingItemService, &type metadata accessor for Array);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_67F94(319, &unk_19C950, &type metadata for BundleTwoPanelPageDestination.SpacingModel, &type metadata accessor for Optional);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            v1 = sub_13B5D4();
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_67F30()
{
  if (!qword_19AE40)
  {
    sub_558C(&qword_19AE48);
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19AE40);
    }
  }
}

void sub_67F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_67FE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_68024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_6808C()
{
  result = qword_19C9A0;
  if (!qword_19C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9A0);
  }

  return result;
}

unint64_t sub_680E4()
{
  result = qword_19C9A8;
  if (!qword_19C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9A8);
  }

  return result;
}

unint64_t sub_6813C()
{
  result = qword_19C9B0;
  if (!qword_19C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9B0);
  }

  return result;
}

double sub_6819C()
{
  *(v0 - 160) = 0;
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t sub_681E8()
{

  return sub_9414((v0 - 192), v0 - 144);
}

_BYTE *storeEnumTagSinglePayload for CarouselDisplayMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x682CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_68318(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 56);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    if (*(*(sub_4948(&qword_19A350) - 8) + 84) == a2)
    {
      v6 = *(a3 + 36);
    }

    else
    {
      sub_4948(&qword_19C9B8);
      v6 = *(a3 + 48);
    }

    v7 = sub_69D70(v6);

    return sub_52E0(v7, v8, v9);
  }
}

uint64_t sub_6840C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    if (*(*(sub_4948(&qword_19A350) - 8) + 84) == a3)
    {
      v6 = *(a4 + 36);
    }

    else
    {
      sub_4948(&qword_19C9B8);
      v6 = *(a4 + 48);
    }

    v7 = sub_69D70(v6);

    return sub_53A8(v7, v8, a2, v9);
  }

  return result;
}

void sub_68508()
{
  sub_189DC(319, &qword_19CA28);
  if (v0 <= 0x3F)
  {
    sub_18AD4(319, &qword_19CA30, &qword_19CA38);
    if (v1 <= 0x3F)
    {
      sub_189DC(319, &qword_19CA40);
      if (v2 <= 0x3F)
      {
        sub_686AC(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        if (v3 <= 0x3F)
        {
          sub_18AD4(319, &qword_19A3C8, &unk_19A3D0);
          if (v4 <= 0x3F)
          {
            sub_189DC(319, &qword_19AE28);
            if (v5 <= 0x3F)
            {
              sub_686AC(319, &qword_19CA48, type metadata accessor for Carousel.Button);
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

void sub_686AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_18BF0();
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_68730(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
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

  else
  {
    sub_4948(&qword_19A350);
    v7 = sub_69D70(*(a3 + 20));

    return sub_52E0(v7, v8, v9);
  }
}

uint64_t sub_687E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_4948(&qword_19A350);
    v6 = sub_69D70(*(a4 + 20));

    return sub_53A8(v6, v7, a2, v8);
  }

  return result;
}

void sub_68868()
{
  sub_189DC(319, &qword_19AE28);
  if (v0 <= 0x3F)
  {
    sub_686AC(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_68918(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184208;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6896C(char a1)
{
  if (a1)
  {
    return 0x6C6C41776F6873;
  }

  else
  {
    return 0x73726946776F6873;
  }
}

uint64_t sub_689CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68918(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_689FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6896C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_68AE8()
{
  result = qword_19CB30;
  if (!qword_19CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CB30);
  }

  return result;
}

uint64_t sub_68B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v6 = sub_4948(&qword_19C9B8);
  __chkstk_darwin(v6 - 8);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v7);
  v93 = &v85 - v8;
  v9 = sub_4948(&qword_19A420);
  __chkstk_darwin(v9 - 8);
  v88 = &v85 - v10;
  v95 = sub_13B584();
  sub_9E94();
  v102 = v11;
  __chkstk_darwin(v12);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18B60();
  __chkstk_darwin(v14);
  v15 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  v19 = type metadata accessor for Carousel(0);
  sub_9F94();
  __chkstk_darwin(v20);
  sub_9EC0();
  v23 = v22 - v21;
  sub_139BD4();
  inited = swift_initStackObject();
  v96 = a2;
  v97 = a2;
  sub_69D38();
  sub_9DB8(v24, v25, v26, v27, v28, v29, v30, v31);
  if (v3)
  {

    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  *(v23 + 16) = v33;
  sub_69D38();
  *v23 = sub_BB598(v34, v35, v36);
  *(v23 + 8) = 0;
  sub_69D38();
  sub_70B0(v37, v38, v39, v40, v41, v42, v43, v44);
  *(v23 + 9) = v45 & 1;
  sub_69D38();
  *(v23 + 24) = sub_BB458() & 1;
  sub_69D38();
  v46 = sub_BB310();
  v86 = v18;
  *&v99 = v46;
  *(&v99 + 1) = v47;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  v48 = v88;
  sub_7738();
  if (sub_52E0(v48, 1, v15) == 1)
  {
    sub_928C(v48, &qword_19A420);
LABEL_7:
    sub_13BAB4();
    sub_69D00();
    sub_69B94(v49, v50);
    sub_18BF0();
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x800000000014E730;
    v51[2] = v19;
    sub_2B538();
    (*(v52 + 104))();
    swift_willThrow();
    v53 = sub_69D44();
    v54(v53);

    v55 = sub_13B7A4();
    v56 = v86;
    sub_53A8(v86, 1, 1, v55);
    goto LABEL_9;
  }

  v57 = sub_69D44();
  v58(v57);
  v56 = v86;
  sub_47868(v48, v86, &qword_19A350);
LABEL_9:
  sub_47868(v56, v23 + v19[9], &qword_19A350);
  v59 = v91;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_69D00();
    sub_69B94(v60, v61);
    sub_18B70();
    *v62 = 0x6575676573;
    v62[1] = 0xE500000000000000;
    v62[2] = v19;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();
    v64 = sub_69D18();
    v59(v64);

    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  else
  {
    sub_139BC4();
    v84 = sub_69D18();
    v59(v84);
    sub_9414(&v98, &v99);
  }

  v65 = v23 + v19[10];
  v66 = v100;
  *v65 = v99;
  *(v65 + 16) = v66;
  *(v65 + 32) = v101;
  v67 = v92;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v68 = v90;
    sub_69980(v67, v96, sub_69544, type metadata accessor for Carousel.Button, v90);
    v69 = type metadata accessor for Carousel.Button(0);
    if (sub_52E0(v68, 1, v69) != 1)
    {
      sub_24988();
      v76 = v87;
      (v87)(v67, 0xE500000000000000);
      v77 = v68;
      v59 = v76;
      v75 = v93;
      sub_69C98(v77, v93);
      sub_53A8(v75, 0, 1, v69);
      goto LABEL_17;
    }

    sub_928C(v68, &qword_19C9B8);
    v59 = v87;
  }

  sub_13BAB4();
  sub_69D00();
  sub_69B94(v70, v71);
  sub_18B70();
  *v72 = 0xD000000000000010;
  v72[1] = 0x800000000014F920;
  v72[2] = v19;
  sub_2B538();
  (*(v73 + 104))();
  swift_willThrow();
  sub_24988();
  (v59)(v67, 0xE500000000000000);

  v74 = type metadata accessor for Carousel.Button(0);
  v75 = v93;
  sub_53A8(v93, 1, 1, v74);
LABEL_17:
  sub_47868(v75, v23 + v19[12], &qword_19C9B8);
  sub_69D38();
  v78 = sub_BB310();
  v80 = v79;
  sub_24988();
  (v59)(a1, 0xE500000000000000);
  v81 = (v23 + v19[11]);
  *v81 = v78;
  v81[1] = v80;
  sub_69BD8(v23, v94);
  sub_13B5A4();
  sub_9F94();
  (*(v82 + 8))(v96);
  return sub_69C3C(v23);
}

uint64_t sub_69544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a3;
  v42 = sub_13B584();
  sub_9E94();
  v40 = v5;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_4948(&qword_19A350);
  __chkstk_darwin(v10 - 8);
  sub_69D60();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v43 = &v39 - v15;
  v16 = type metadata accessor for Carousel.Button(0);
  sub_9F94();
  __chkstk_darwin(v17);
  sub_9EC0();
  v20 = (v19 - v18);
  v21 = sub_BB310();
  v41 = v16;
  if (v3)
  {

    v21 = 0;
    v22 = 0;
  }

  *v20 = v21;
  v20[1] = v22;
  v23 = a1;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_69980(v9, v45, &ImpressionMetrics.init(deserializing:using:), &type metadata accessor for ImpressionMetrics, v13);
    v24 = sub_13B7A4();
    if (sub_52E0(v13, 1, v24) != 1)
    {
      v34 = *(v40 + 8);
      v35 = v42;
      v34(a1, v42);
      v34(v9, v35);
      sub_2B538();
      v33 = v43;
      (*(v36 + 32))(v43, v13, v24);
      sub_53A8(v33, 0, 1, v24);
      v28 = v41;
      goto LABEL_8;
    }

    sub_928C(v13, &qword_19A350);
    v23 = a1;
  }

  sub_13BAB4();
  sub_69D00();
  sub_69B94(v25, v26);
  sub_18B70();
  *v27 = 0xD000000000000011;
  v27[1] = 0x800000000014E730;
  v28 = v41;
  v27[2] = v41;
  sub_2B538();
  (*(v29 + 104))();
  swift_willThrow();
  v30 = *(v40 + 8);
  v31 = v42;
  v30(v23, v42);
  v30(v9, v31);

  v32 = sub_13B7A4();
  v33 = v43;
  sub_53A8(v43, 1, 1, v32);
LABEL_8:
  sub_47868(v33, v20 + *(v28 + 20), &qword_19A350);
  sub_69C98(v20, v44);
  sub_13B5A4();
  sub_9F94();
  return (*(v37 + 8))(v45);
}

uint64_t sub_69980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_13B5A4();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  sub_13B584();
  sub_9E94();
  __chkstk_darwin(v17);
  sub_9EC0();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18, a1);
  (*(v12 + 16))(v16, a2, v10);
  a3(v20, v16);
  v22 = a4(0);
  return sub_53A8(a5, 0, 1, v22);
}

uint64_t sub_69B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39B48();
  *a1 = result;
  return result;
}

uint64_t sub_69B68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39B48();
  *a1 = result;
  return result;
}

uint64_t sub_69B94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_69BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Carousel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69C3C(uint64_t a1)
{
  v2 = type metadata accessor for Carousel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_69C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Carousel.Button(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_69D44()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 72) + 8);
  return result;
}

StoreDynamicUIPlugin::CarouselCellBadge_optional __swiftcall CarouselCellBadge.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_184258;
  v6._object = object;
  v3 = sub_13C104(v2, v6);

  if (v3 == 1)
  {
    v4.value = StoreDynamicUIPlugin_CarouselCellBadge_share;
  }

  else
  {
    v4.value = StoreDynamicUIPlugin_CarouselCellBadge_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CarouselCellBadge.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6572616873;
  }

  else
  {
    return 0x6E656D6D6F636572;
  }
}

unint64_t sub_69E1C()
{
  result = qword_19CB38;
  if (!qword_19CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CB38);
  }

  return result;
}

StoreDynamicUIPlugin::CarouselCellBadge_optional sub_69E88@<W0>(Swift::String *a1@<X0>, StoreDynamicUIPlugin::CarouselCellBadge_optional *a2@<X8>)
{
  result.value = CarouselCellBadge.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_69EB8@<X0>(uint64_t *a1@<X8>)
{
  result = CarouselCellBadge.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarouselCellBadge(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x69FB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_69FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 68);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_6A0A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 68);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CarouselCell()
{
  result = qword_19CB98;
  if (!qword_19CB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_6A17C()
{
  sub_248F4(319, &qword_19AE40, &qword_19AE48);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_248F4(319, &qword_19CBA8, &qword_19CBB0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_6A378(319, &qword_19CBB8, &type metadata for PluginComponent, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_248F4(319, &qword_19C0A8, &unk_19C0B0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_18A28();
      if (v7 <= 0x3F)
      {
        sub_6A378(319, &unk_19CBC0, &type metadata for MarketingItemValueProposition, &type metadata accessor for Optional);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_54D0();
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_6A378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_6A484(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v201 = a2;
  v175 = a3;
  v4 = sub_4948(&qword_19A420);
  __chkstk_darwin(v4 - 8);
  v177 = &v174 - v5;
  v176 = sub_4948(&qword_19A350);
  sub_2B538();
  __chkstk_darwin(v6);
  sub_2159C(&v174 - v7);
  v194 = sub_13B5A4();
  sub_9E94();
  v193 = v8;
  __chkstk_darwin(v9);
  v186 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19B778);
  __chkstk_darwin(v11 - 8);
  sub_2159C(&v174 - v12);
  v191 = sub_13BAA4();
  sub_9E94();
  v185 = v13;
  __chkstk_darwin(v14);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_2159C(&v174 - v16);
  v17 = sub_13B584();
  sub_9E94();
  v195 = v18;
  __chkstk_darwin(v19);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v21);
  sub_18C34();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v25);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v26);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v27);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v28);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v29);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v30);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v31);
  v32 = type metadata accessor for CarouselCell();
  sub_2B538();
  __chkstk_darwin(v33);
  v35 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = objc_opt_self();
  v36 = [v187 ams_componentBackground];
  v199 = sub_13B1E4();
  v198 = v35;
  *(v35 + 7) = &_swiftEmptyArrayStorage;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v197 = swift_initStackObject();
  v208 = a1;
  sub_13B594();
  v37 = sub_13B564();
  v202 = v17;
  v38 = v32;
  v200 = v32;
  if (v37)
  {
    goto LABEL_4;
  }

  sub_6BEF0();
  v39 = v196;
  sub_139DB4();
  if (v39)
  {

    sub_18B90();
    sub_6BDB4(v207, &qword_19E960);
    v38 = v200;
LABEL_4:
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v40, v41);
    sub_18B70();
    strcpy(v42, "accessoryText");
    *(v42 + 7) = -4864;
    *(v42 + 2) = v38;
    sub_2B538();
    (*(v43 + 104))();
    swift_willThrow();
    v44 = sub_6BF68();
    v196 = v45;
    v45(v44);

    sub_6BEE0();
    goto LABEL_5;
  }

  v97 = sub_6BF68();
  v196 = v98;
  v98(v97);
  v46 = sub_6BF2C();
  v38 = v200;
LABEL_5:
  v47 = v204;
  v48 = v198;
  *v198 = v203;
  *(v48 + 1) = v47;
  *(v48 + 4) = v205;
  __chkstk_darwin(v46);
  *(&v174 - 2) = v201;
  sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, v38, sub_30AC0, (&v174 - 4), v49, v50, v51);
  v52 = v23;
  v53 = sub_13B1E4();

  v187 = v53;
  *(v198 + 5) = v53;
  v54 = sub_BB5C4(0x736567646162, 0xE600000000000000, v200);
  v182 = 0;
  v55 = 0;
  v56 = *(v54 + 16);
  v199 = &_swiftEmptyArrayStorage;
LABEL_6:
  v57 = (v54 + 40 + 16 * v55);
  while (v56 != v55)
  {
    if (v55 >= *(v54 + 16))
    {
      __break(1u);
      return;
    }

    ++v55;
    v58 = *(v57 - 1);
    v59 = *v57;

    v60._rawValue = &off_1842A8;
    v209._countAndFlagsBits = v58;
    v209._object = v59;
    v61 = sub_13C104(v60, v209);

    if (!v61)
    {
      v62 = 0;
LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58BCC();
        v199 = v65;
      }

      v63 = v199[2];
      if (v63 >= v199[3] >> 1)
      {
        sub_58BCC();
        v199 = v66;
      }

      v64 = v199;
      v199[2] = v63 + 1;
      *(v64 + v63 + 32) = v62;
      v52 = v23;
      goto LABEL_6;
    }

    v57 += 2;
    v52 = v23;
    if (v61 == 1)
    {
      v62 = 1;
      goto LABEL_13;
    }
  }

  v67 = v196;
  v68 = v198;
  *(v198 + 6) = v199;
  v69 = v189;
  sub_13B594();
  v70 = v190;
  sub_13B544();
  v71 = v195 + 8;
  v67(v69, v202);
  v72 = v191;
  if (sub_52E0(v70, 1, v191) == 1)
  {
    sub_6BDB4(v70, &qword_19B778);
    v195 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v73 = v185;
    v74 = v184;
    (*(v185 + 32))(v184, v70, v72);
    (*(v73 + 16))(v183, v74, v72);
    (*(v193 + 16))(v186, v201, v194);
    sub_6BE10();
    v75 = sub_13BC64();
    (*(v73 + 8))(v74, v72);
    v195 = v75;
    *(v68 + 56) = v75;
  }

  v76 = v188;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_24;
  }

  sub_6BEF0();
  v77 = v182;
  sub_139DB4();
  if (v77)
  {

    sub_18B90();
    sub_6BDB4(v207, &qword_19E960);
LABEL_24:
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v78, v79);
    v80 = sub_9F18();
    sub_47E64(v80, v81);
    *v82 = 0x656E696C64616568;
    v82[1] = 0xE800000000000000;
    v83 = v76;
    v84 = v200;
    v82[2] = v200;
    sub_9EF8();
    (*(v85 + 104))();
    swift_willThrow();
    v67(v83, v202);

    sub_6BEE0();
    goto LABEL_25;
  }

  v67(v76, v202);
  sub_6BF2C();
  v84 = v200;
LABEL_25:
  v86 = v204;
  *(v68 + 64) = v203;
  *(v68 + 80) = v86;
  *(v68 + 96) = v205;
  v87 = sub_BB310();
  v191 = v71;
  *&v203 = v87;
  *(&v203 + 1) = v88;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
LABEL_28:
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v90, v91);
    sub_9F18();
    *v92 = 0xD000000000000011;
    v92[1] = 0x800000000014E730;
    sub_6BF44(v92, v92);
    sub_9EF8();
    (*(v93 + 104))();
    swift_willThrow();
    v94 = sub_6BF68();
    (v67)(v94);
    v84 = v200;

    v95 = sub_13B7A4();
    v96 = v178;
    sub_53A8(v178, 1, 1, v95);
    goto LABEL_32;
  }

  v89 = v177;
  sub_7738();
  if (sub_52E0(v89, 1, v176) == 1)
  {
    sub_6BDB4(v89, &qword_19A420);
    goto LABEL_28;
  }

  v99 = sub_6BF68();
  (v67)(v99);
  v100 = v89;
  v96 = v178;
  sub_92E4(v100, v178);
LABEL_32:
  sub_92E4(v96, v68 + *(v84 + 68));
  sub_13B594();
  v101 = sub_13B564();
  v190 = 0;
  if (v101)
  {
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v102, v103);
    sub_18B70();
    *v104 = 1868983913;
    v104[1] = 0xE400000000000000;
    v104[2] = v84;
    sub_2B538();
    (*(v105 + 104))();
    swift_willThrow();
    sub_6BF00();
    MEMORY[0xE400000000000000]();

    sub_6BEE0();
  }

  else
  {
    sub_6BEF0();
    sub_139DB4();
    sub_6BF00();
    MEMORY[0xE400000000000000]();
    sub_6BF2C();
  }

  v106 = v204;
  *(v68 + 104) = v203;
  *(v68 + 120) = v106;
  *(v68 + 136) = v205;
  v107 = v180;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v108, v109);
    sub_9F18();
    *v110 = 0x7469736F706F7270;
    v110[1] = 0xEB000000006E6F69;
    sub_6BF44(v110, v110);
    sub_9EF8();
    (*(v111 + 104))();
    swift_willThrow();
    MEMORY[0xE400000000000000](v107, v202);

    sub_6BEE0();
  }

  else
  {
    sub_139DB4();
    MEMORY[0xE400000000000000](v107, v202);
    sub_6BF2C();
  }

  v112 = v204;
  *(v68 + 144) = v203;
  *(v68 + 160) = v112;
  *(v68 + 176) = v205;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v113, v114);
    v115 = sub_9F18();
    sub_47E64(v115, v116);
    *v117 = 0x6575676573;
    v117[1] = 0xE500000000000000;
    v155 = v200;
    v117[2] = v200;
    sub_9EF8();
    (*(v118 + 104))();
    swift_willThrow();
    sub_6BF00();
    MEMORY[0xE500000000000000]();

    sub_6BEE0();
  }

  else
  {
    sub_139BC4();
    sub_6BF00();
    MEMORY[0xE500000000000000]();
    v154 = sub_6BF2C();
    v155 = v200;
  }

  v119 = v68 + *(v155 + 72);
  v120 = v204;
  *v119 = v203;
  *(v119 + 16) = v120;
  *(v119 + 32) = v205;
  __chkstk_darwin(v154);
  *(&v174 - 2) = v201;
  sub_9DB8(0x7365636976726573, 0xE800000000000000, v155, sub_511D0, (&v174 - 4), v121, v122, v123);
  v124 = v179;
  *(v68 + 184) = v125;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v126, v127);
    v128 = sub_9F18();
    v130 = sub_47E64(v128, v129);
    *v131 = 0xD000000000000010;
    v131[1] = 0x800000000014F960;
    sub_6BF44(v130, v131);
    sub_9EF8();
    (*(v132 + 104))();
    swift_willThrow();
    v156 = v202;
    MEMORY[0xE500000000000000](v124, v202);

    sub_6BEE0();
  }

  else
  {
    sub_139DB4();
    v156 = v202;
    MEMORY[0xE500000000000000](v124, v202);
    sub_6BF2C();
  }

  v133 = v204;
  *(v68 + 192) = v203;
  *(v68 + 208) = v133;
  *(v68 + 224) = v205;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v134, v135);
    v136 = sub_9F18();
    v138 = sub_47E64(v136, v137);
    *v139 = 0x656C746974627573;
    v139[1] = 0xE800000000000000;
    sub_6BF44(v138, v139);
    sub_9EF8();
    (*(v140 + 104))();
    swift_willThrow();
    v196(v52, v156);

    sub_6BEE0();
  }

  else
  {
    sub_6BEF0();
    sub_139DB4();
    v196(v52, v202);
    sub_6BF2C();
  }

  v141 = v204;
  *(v68 + 232) = v203;
  *(v68 + 248) = v141;
  *(v68 + 264) = v205;
  v142 = v181;
  v143 = v208;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_6BEF0();
    sub_139DB4();
    v199 = (v68 + 312);
    v157 = v196;
    v196(v142, v202);
    sub_6BF2C();
    sub_9414(&v203, v68 + 272);
    v158 = v174;
    v159 = v208;
    sub_13B594();
    if ((sub_13B564() & 1) == 0)
    {
      sub_8290();
      if (*(&v204 + 1) != 1)
      {
        sub_6BF74();
        sub_6BF8C();
        v169 = v202;
        v170 = v196;
        v196(v208, v202);
        v170(v158, v169);
        v166 = v203;
        v167 = v204;
        v168 = v205;
        v165 = v206;
        goto LABEL_57;
      }

      sub_6BDB4(&v203, &qword_19CC30);
      v159 = v208;
      v157 = v196;
    }

    sub_13BAB4();
    sub_6BEC8();
    sub_6BD6C(v160, v161);
    sub_18B70();
    *v162 = 0xD000000000000010;
    v162[1] = 0x800000000014F980;
    sub_6BF44(v162, v162);
    sub_2B538();
    (*(v163 + 104))();
    swift_willThrow();
    sub_6BF74();
    sub_6BF8C();
    v164 = v202;
    v157(v159, v202);
    v157(v158, v164);

    v165 = 0;
    v166 = 0uLL;
    v167 = 0uLL;
    v168 = 0uLL;
LABEL_57:
    v171 = v199;
    *v199 = v166;
    *(v171 + 1) = v167;
    *(v171 + 2) = v168;
    *(v68 + 360) = v165;
    sub_F680(v68, v175);
    v172 = sub_6BF10();
    v173(v172);
    sub_F6E4(v68);
    return;
  }

  sub_13BAB4();
  sub_6BEC8();
  sub_6BD6C(v144, v145);
  sub_9F18();
  *v146 = 0x656C746974;
  v146[1] = 0xE500000000000000;
  v147 = v200;
  v146[2] = v200;
  sub_9EF8();
  (*(v148 + 104))();
  swift_willThrow();
  sub_6BF74();
  sub_6BF8C();
  v149 = v202;
  v150 = v196;
  v196(v143, v202);
  v150(v142, v149);
  v151 = v190;
  v152 = sub_6BF10();
  v153(v152);
  sub_6BF50(v68);

  sub_6BF50(v68 + 64);
  if (!v151)
  {
    sub_6BF50(v68 + 104);
    sub_6BF50(v68 + 144);

    sub_6BF50(v68 + 192);
    sub_6BF50(v68 + 232);
    sub_9238(v68 + 368);
    sub_6BDB4(v68 + *(v147 + 68), &qword_19A350);
    sub_6BDB4(v68 + *(v147 + 72), &unk_19E320);
  }
}

uint64_t sub_6BD6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6BDB4(uint64_t a1, uint64_t *a2)
{
  sub_4948(a2);
  sub_2B538();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_6BE10()
{
  result = qword_19CC38;
  if (!qword_19CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CC38);
  }

  return result;
}

uint64_t sub_6BE64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_4948(a3);
  sub_2B538();
  (*(v5 + 16))(a2, a1);
  return a2;
}

double sub_6BEE0()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t sub_6BF2C()
{

  return sub_9414((v0 - 160), v0 - 224);
}

uint64_t sub_6BF50(uint64_t a1)
{

  return sub_6BDB4(a1, v1);
}

uint64_t sub_6BF74()
{
}

uint64_t sub_6BF8C()
{
}

uint64_t sub_6BFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_6C0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970);
    sub_17250();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_53A8(v11, a2, a2, v10);
}

uint64_t type metadata accessor for CarouselCellView()
{
  result = qword_19CC98;
  if (!qword_19CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6C21C()
{
  sub_105E0(319, &qword_19A9E0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_105E0(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CarouselCellModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_6C338@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_13AB24();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  sub_4948(&qword_19AC60);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for CarouselCellView();
  sub_6DC44(v1 + *(v13 + 20), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_13BD54();
    v16 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_6C500@<X0>(uint64_t a1@<X8>)
{
  *&v114 = a1;
  v2 = sub_13AE04();
  sub_9E94();
  v113 = v3;
  __chkstk_darwin(v4);
  sub_9EC0();
  v112 = v6 - v5;
  v7 = type metadata accessor for CarouselCellView();
  sub_9E94();
  v104 = v8;
  __chkstk_darwin(v9);
  v115 = v10;
  v111 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_13ABC4();
  sub_9E94();
  v101 = v11;
  __chkstk_darwin(v12);
  sub_9EC0();
  v15 = v14 - v13;
  v16 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v16 - 8);
  sub_9EC0();
  v19 = v18 - v17;
  v20 = type metadata accessor for AppleOneOfferPlatterView();
  sub_9F94();
  __chkstk_darwin(v21);
  v23 = (v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v98 - v25;
  v103 = sub_4948(&qword_19CCF0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v27);
  v29 = v98 - v28;
  v105 = sub_4948(&qword_19CCF8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v30);
  v106 = v98 - v31;
  v108 = sub_4948(&qword_19CD00);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v32);
  v110 = v98 - v33;
  v34 = sub_4948(&qword_19CD08);
  sub_9E94();
  v109 = v35;
  sub_171D0();
  __chkstk_darwin(v36);
  v107 = v98 - v37;
  v38 = v7[6];
  v116 = v1;
  v39 = *(v1 + v38);
  v40 = sub_72EDC();
  if (v40)
  {
    v99 = v34;
    v100 = v2;
    v98[1] = v39;
    v41 = v40;
    sub_72C60(v19);
    type metadata accessor for AppleOneOfferPlatterModel();
    swift_allocObject();

    v98[2] = v41;
    v98[0] = sub_F2E4(v19, v41);
    *v23 = swift_getKeyPath();
    sub_4948(&qword_19AC58);
    swift_storeEnumTagMultiPayload();
    v42 = v23 + v20[5];
    LOBYTE(v117) = 0;
    sub_13B224();
    v43 = *(&v119 + 1);
    *v42 = v119;
    *(v42 + 1) = v43;
    v44 = v20[6];
    *(v23 + v44) = swift_getKeyPath();
    sub_4948(&qword_19AC60);
    swift_storeEnumTagMultiPayload();
    v45 = v20[9];
    v46 = objc_opt_self();
    v47 = [v46 ams_secondaryBackground];
    *(v23 + v45) = sub_13B1E4();
    v48 = v20[10];
    v49 = [v46 ams_primarySystemFillColor];
    *(v23 + v48) = sub_13B1E4();
    *(v23 + v20[11]) = 0;
    *(v23 + v20[12]) = 1;
    *(v23 + v20[13]) = 0;
    *(v23 + v20[8]) = 1;
    *(v23 + v20[7]) = v98[0];
    if (qword_199F60 != -1)
    {
      swift_once();
    }

    v50 = qword_1B2A18;

    *(v23 + v45) = v50;
    if (qword_199F78 != -1)
    {
      swift_once();
    }

    v51 = qword_1B2A60;
    sub_6D364(v23, v26, type metadata accessor for AppleOneOfferPlatterView);
    v52 = v20[10];

    *&v26[v52] = v51;
    sub_6D308(v23);
    v53 = v116;
    v54 = *(v116 + v7[11]);
    sub_6D364(v26, v29, type metadata accessor for AppleOneOfferPlatterView);
    v29[v20[11]] = v54;
    sub_6D308(v26);
    v29[v20[12]] = *(v53 + v7[12]);
    sub_6C338(v15);
    LOBYTE(v51) = sub_750BC();
    (*(v101 + 8))(v15, v102);
    v29[v20[13]] = v51 & 1;
    *&v29[*(sub_4948(&qword_19CD10) + 36)] = 256;
    sub_13B3D4();
    sub_13A834();
    v55 = &v29[*(sub_4948(&qword_19CD18) + 36)];
    v56 = v120;
    *v55 = v119;
    *(v55 + 1) = v56;
    *(v55 + 2) = v121;
    v57 = sub_13B3C4();
    v59 = v58;
    v60 = &v29[*(sub_4948(&qword_19CD20) + 36)];
    *v60 = sub_42104;
    v60[1] = 0;
    v60[2] = v57;
    v60[3] = v59;
    sub_6DE20();
    v61 = v111;
    sub_6D364(v53, v111, v62);
    v63 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v64 = swift_allocObject();
    sub_6D3C8(v61, v64 + v63);
    v65 = &v29[*(sub_4948(&qword_19CD28) + 36)];
    *v65 = sub_6D42C;
    v65[1] = v64;
    if (qword_199F58 != -1)
    {
      swift_once();
    }

    v66 = qword_1B2A10;
    v67 = &v29[*(v103 + 36)];
    v68 = *(sub_13A9A4() + 20);
    v69 = enum case for RoundedCornerStyle.continuous(_:);
    sub_13ABA4();
    sub_9F94();
    (*(v70 + 104))(v67 + v68, v69);
    *v67 = v66;
    v67[1] = v66;
    *(v67 + *(sub_4948(&qword_19AAB0) + 36)) = 256;
    v71 = v106;
    if (v54)
    {
      v72 = v114;
      if (qword_199F68 != -1)
      {
        swift_once();
      }

      v73 = &qword_1B2A20;
    }

    else
    {
      v72 = v114;
      if (qword_199F70 != -1)
      {
        swift_once();
      }

      v73 = &qword_1B2A40;
    }

    v76 = v99;
    v77 = *v73;
    v114 = *(v73 + 1);
    v78 = v73[3];

    sub_6D49C(v29, v71, &qword_19CCF0);
    v79 = v71 + *(v105 + 36);
    *v79 = v77;
    *(v79 + 8) = v114;
    *(v79 + 24) = v78;
    v80 = sub_13AED4();
    v81 = sub_13AEF4();
    sub_13AEF4();
    if (sub_13AEF4() != v80)
    {
      v81 = sub_13AEF4();
    }

    sub_72AB0();
    sub_72274();

    sub_13A6E4();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v110;
    sub_6D49C(v71, v110, &qword_19CCF8);
    v91 = v90 + *(v108 + 36);
    *v91 = v81;
    *(v91 + 8) = v83;
    *(v91 + 16) = v85;
    *(v91 + 24) = v87;
    *(v91 + 32) = v89;
    *(v91 + 40) = 0;
    sub_6DE20();
    sub_6D364(v116, v61, v92);
    v93 = swift_allocObject();
    sub_6D3C8(v61, v93 + v63);
    v94 = v112;
    sub_13ADF4();
    sub_4948(&qword_19CD30);
    sub_6D70C();
    v95 = sub_13A9C4();
    v96 = sub_6DB94(&qword_19CD98, &type metadata accessor for EmptyVisualEffect);
    v117 = v95;
    v118 = v96;
    swift_getOpaqueTypeConformance2();
    v97 = v107;
    sub_13B0E4();

    (*(v113 + 8))(v94, v100);
    sub_6DBDC(v90);
    (*(v109 + 32))(v72, v97, v76);
    return sub_53A8(v72, 0, 1, v76);
  }

  else
  {
    v74 = v114;

    return sub_53A8(v74, 1, 1, v34);
  }
}