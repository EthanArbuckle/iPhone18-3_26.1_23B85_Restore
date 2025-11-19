uint64_t sub_11FA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_8818(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_11FA9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11FAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextGradient();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11FB48(uint64_t a1)
{
  v2 = type metadata accessor for TextGradient();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TextGradient.GradientStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x11FC70);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextGradient.GradientOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TextGradient.GradientOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_11FDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_11FE78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_11FF04()
{
  sub_248F4(319, &qword_19AE40, &qword_19AE48);
  if (v0 <= 0x3F)
  {
    sub_18A28();
    if (v1 <= 0x3F)
    {
      sub_54D0();
      if (v2 <= 0x3F)
      {
        sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_120004()
{
  result = qword_1A1950;
  if (!qword_1A1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1950);
  }

  return result;
}

uint64_t sub_120090()
{
  result = v0;
  *(v1 - 256) = *(*(v1 - 248) + 8);
  return result;
}

id sub_1200CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_1A19A0);
  sub_120770();

  if ((v12[1] & 1) == 0)
  {
    swift_getKeyPath();
    sub_120770();

    if (v12[0] && v12[0] != 1)
    {
    }

    else
    {
      v5 = sub_13C144();

      if ((v5 & 1) == 0)
      {
        swift_getKeyPath();
        sub_120770();

        swift_getKeyPath();
        sub_120760();
        sub_13B5E4();

        sub_1214E0();
      }
    }
  }

  swift_getKeyPath();
  sub_120760();
  sub_13B5E4();

  if (v11)
  {
    sub_9414(&v10, v12);
    sub_C87D8();
    (*(v6 + 384))(v12, a3);
    sub_3C04(v12);
  }

  else
  {
    sub_2519C(&v10);
  }

  swift_getKeyPath();
  sub_120760();
  sub_13B5E4();

  if (v11)
  {
    sub_9414(&v10, v12);
    sub_C87D8();
    (*(v7 + 384))(v12, a3);
    sub_3C04(v12);
  }

  else
  {
    sub_2519C(&v10);
  }

  v8 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_titleLabel];
  swift_getKeyPath();
  sub_120770();

  (*(&stru_158.size + (swift_isaMask & *v8)))(v12, a3);
  sub_3C04(v12);
  return [v3 layoutIfNeeded];
}

uint64_t sub_1203F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextGradientComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_120458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextGradientComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_1204C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_120514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_120590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_12060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_120718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_120770()
{

  return sub_13B5E4();
}

id sub_120788(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_headlineLabel;
  sub_139BB4();
  v10 = objc_opt_self();
  v11 = [v10 ams_primaryText];
  v12 = sub_13A2A4();
  *&__src[3] = v12;
  *&__src[4] = &protocol witness table for FontSource;
  v13 = sub_CC08(__src);
  *v13 = UIFontTextStyleFootnote;
  v13[1] = *&UIFontWeightBold;
  v14 = enum case for FontUseCase.preferredFontDerivative(_:);
  v34 = enum case for FontUseCase.preferredFontDerivative(_:);
  v15 = sub_13A3E4();
  v33 = *(*(v15 - 8) + 104);
  v33(v13, v14, v15);
  v32 = enum case for FontSource.useCase(_:);
  v16 = *(*(v12 - 8) + 104);
  (v16)(v13);
  v17 = UIFontTextStyleFootnote;
  *&v4[v31] = sub_121838();
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_subtitleLabel;
  v19 = [v10 ams_primaryText];
  *&__src[3] = v12;
  *&__src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleBody;
  v16();
  v20 = UIFontTextStyleBody;
  *&v4[v18] = sub_121838();
  v21 = [v10 ams_primaryText];
  *&__src[3] = v12;
  *&__src[4] = &protocol witness table for FontSource;
  v22 = sub_CC08(__src);
  sub_E7E8();
  v23 = static UIApplication.isCompact()();
  v24 = &UIFontTextStyleTitle1;
  if ((v23 & 1) == 0)
  {
    v24 = &UIFontTextStyleLargeTitle;
  }

  v25 = *v24;
  v26 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_titleLabel;
  *v22 = v25;
  v22[1] = *&UIFontWeightBold;
  v33(v22, v34, v15);
  (v16)(v22, v32, v12);
  *&v4[v26] = sub_139BA4();
  v27 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_gradientView;
  *&v5[v27] = [objc_allocWithZone(AMSUICommonView) init];
  v28 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_gradientLayer;
  *&v5[v28] = [objc_allocWithZone(CAGradientLayer) init];
  sub_120B1C(0, __src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_metrics], __src, 0x78uLL);
  v35.receiver = v5;
  v35.super_class = type metadata accessor for TextGradientComponent();
  v29 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  sub_12140C();

  return v29;
}

uint64_t sub_120B1C@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  if (result)
  {
    v3 = 31.0;
    v4 = 11.0;
  }

  else
  {
    if (qword_19A1D8 != -1)
    {
      result = swift_once();
    }

    v3 = *&qword_1A19A8;
    v4 = 2.0;
  }

  *(a2 + 3) = &type metadata for CGFloat;
  *(a2 + 4) = &protocol witness table for CGFloat;
  *a2 = v3;
  *(a2 + 8) = &type metadata for CGFloat;
  *(a2 + 9) = &protocol witness table for CGFloat;
  a2[5] = 15.0;
  *(a2 + 13) = &type metadata for CGFloat;
  *(a2 + 14) = &protocol witness table for CGFloat;
  a2[10] = v4;
  return result;
}

uint64_t sub_120BD8()
{
  v26 = sub_13A514();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v25 = sub_13A314();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for TextGradientComponent();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v13 = [v0 contentView];
  [v13 bounds];
  sub_1D3D0();

  sub_A8FE8();
  sub_13BE34();
  sub_1D3D0();
  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_metrics;
  swift_beginAccess();
  sub_121734(&v0[v14], v27);
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_headlineLabel];
  v16 = sub_139BB4();
  v27[18] = v16;
  v17 = sub_270D8();
  v27[15] = v15;
  v18 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_subtitleLabel];
  v27[23] = v16;
  v27[24] = v17;
  v27[19] = v17;
  v27[20] = v18;
  v19 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_titleLabel];
  v27[28] = v16;
  v27[29] = v17;
  v27[25] = v19;
  v20 = v15;
  v21 = v18;
  v22 = v19;
  v23 = [v0 contentView];
  sub_121A34();
  sub_13A474();

  (*(v2 + 8))(v6, v26);
  (*(v8 + 8))(v12, v25);
  return sub_121790(v27);
}

double sub_120EA8(double a1, double a2, float a3)
{
  v6 = sub_13A514();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  sub_A8FE8();
  sub_13BE64();
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_metrics;
  swift_beginAccess();
  sub_121734(&v3[v13], v26);
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_headlineLabel];
  v15 = sub_139BB4();
  v26[18] = v15;
  v16 = sub_270D8();
  v26[15] = v14;
  v17 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_subtitleLabel];
  v26[23] = v15;
  v26[24] = v16;
  v26[19] = v16;
  v26[20] = v17;
  v18 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_titleLabel];
  v26[28] = v15;
  v26[29] = v16;
  v26[25] = v18;
  v19 = v14;
  v20 = v17;
  v21 = v18;
  v22 = [v3 contentView];
  sub_121A34();
  sub_13A464();

  (*(v8 + 8))(v12, v6);
  sub_A8FE8();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v24 = a1;
  }

  else
  {
    v24 = v23;
  }

  sub_121790(v26);
  return v24;
}

uint64_t sub_121130()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TextGradientComponent();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_4ACC4();
  (*(v1 + 392))();
  sub_4ACC4();
  (*(v2 + 392))();
  sub_4ACC4();
  return (*(v3 + 392))();
}

uint64_t sub_121294(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TextGradientComponent();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_13BDE4();

  if (!a1 || (result = sub_13BDE4(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    v8 = sub_13BDE4();

    sub_120B1C(v8 & 1, v10);
    v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_metrics;
    swift_beginAccess();
    sub_121694(v10, v2 + v9);
    return swift_endAccess();
  }

  return result;
}

void sub_12140C()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_headlineLabel]];

  v2 = [v0 contentView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_subtitleLabel]];

  v3 = [v0 contentView];
  [v3 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21TextGradientComponent_titleLabel]];
}

uint64_t sub_1214E0()
{
  sub_4948(&qword_19E998);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_140280;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 1329876820;
  *(v0 + 40) = 0xE400000000000000;
  sub_13C1F4();
}

id sub_1215B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextGradientComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1216F0()
{
  sub_E7E8();
  result = static UIApplication.hasNotch()();
  v1 = 20.0;
  if (result)
  {
    v1 = 29.0;
  }

  qword_1A19A8 = *&v1;
  return result;
}

uint64_t sub_121838()
{

  return sub_139BA4();
}

uint64_t sub_12185C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_12189C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_121938()
{
  v0 = sub_13A514();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  sub_121A34();
  sub_13A474();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_121A34()
{
  v1 = v0;
  v46 = sub_13A4C4();
  sub_9E94();
  v48 = v2;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v44 = sub_13A454();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_9EC0();
  v17 = v16 - v15;
  sub_4948(&qword_19AFE8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v54 = v18;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v19 = v0[18];
  v20 = v0[19];
  v21 = sub_162F0(v1 + 15, v1[18]);
  v55 = v19;
  v56 = *(v20 + 8);
  v22 = sub_CC08(&v54);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v8 + 104))(v12);
  (*(v48 + 104))(v6);
  v47 = v17;
  sub_13A4E4();
  (*(v48 + 8))(v6, v46);
  v45 = *(v8 + 8);
  v45(v12, v44);
  sub_1D2CC(&v51);
  sub_3C04(&v54);
  v23 = v1[28];
  v24 = v1[29];
  v25 = sub_162F0(v1 + 25, v23);
  v55 = v23;
  v56 = *(v24 + 8);
  v26 = sub_CC08(&v54);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  sub_122308();
  v27 = sub_13A324();
  v28 = v1;
  if (v27)
  {
    sub_122308();
    v29 = sub_13A364();
    v30 = 10;
    if (v29)
    {
      v30 = 0;
    }

    v28 = &v1[v30];
  }

  sub_4B14(v28, &v51);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1222C0();
  v31();
  sub_1222F4();
  v32();
  sub_13A4E4();
  v33 = sub_1222DC();
  v34(v33);
  v45(v12, v44);
  sub_1D2CC(v49);
  sub_3C04(&v51);
  sub_3C04(&v54);
  v36 = v1[23];
  v35 = v1[24];
  v37 = sub_162F0(v1 + 20, v36);
  v55 = v36;
  v56 = *(v35 + 8);
  v38 = sub_CC08(&v54);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_1222C0();
  v39();
  sub_1222F4();
  v40();
  sub_13A4E4();
  v41 = sub_1222DC();
  v42(v41);
  v45(v12, v44);
  sub_1D2CC(&v51);
  sub_3C04(&v54);
  sub_13A4D4();
  return (*(v14 + 8))(v47, v13);
}

double sub_122160()
{
  v0 = sub_13A514();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  sub_121A34();
  sub_13A464();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return v8;
}

unint64_t sub_12226C()
{
  result = qword_1A1A08;
  if (!qword_1A1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1A08);
  }

  return result;
}

uint64_t sub_122308()
{
  v1 = *(v0 + 144);
  sub_162F0((v0 + 120), v1);
  return v1;
}

uint64_t type metadata accessor for TextHeader()
{
  result = qword_1A1A70;
  if (!qword_1A1A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1223C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184348;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_122414(char a1)
{
  if (!a1)
  {
    return 0x657261757173;
  }

  if (a1 == 1)
  {
    return 0x6C6F626D7973;
  }

  return 1952671090;
}

uint64_t sub_122480@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1223C8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1224B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_122414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1224E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v8 = v95 - v7;
  v9 = sub_13B584();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  sub_18B60();
  __chkstk_darwin(v12);
  v13 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v14);
  v98 = v95 - v15;
  v16 = type metadata accessor for TextHeader();
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v102 = swift_initStackObject();
  v105 = a2;
  sub_2B570();
  sub_9DD0(v20, v21, v22, v23, v24, v25, v26, v27);
  if (v3)
  {

    v28 = 0;
  }

  v100 = v28;
  *v19 = v28;
  sub_2B570();
  v29 = sub_BB310();
  v110 = a2;
  v31 = sub_1223C8(v29, v30);
  if (v31 == 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  v19[8] = v32;
  __chkstk_darwin(v31);
  v95[-2] = v110;
  sub_2B570();
  sub_9DD0(v33, v34, v35, v36, v37, v38, v39, v40);
  v42 = v41;
  *(v19 + 2) = v41;
  sub_2B570();
  v43 = sub_BB310();
  v96 = 0;
  v95[1] = v42;
  *&v107 = v43;
  *(&v107 + 1) = v44;
  sub_13BFB4();
  sub_13B594();
  v45 = sub_13B564();
  v46 = v110;
  if (v45)
  {
    goto LABEL_9;
  }

  sub_7738();
  if (sub_52E0(v8, 1, v13) == 1)
  {
    sub_928C(v8, &qword_19A420);
LABEL_9:
    v47 = v46;
    sub_13BAB4();
    sub_123828();
    sub_123240(v48, v49);
    swift_allocError();
    *v50 = 0xD000000000000011;
    v50[1] = 0x800000000014E730;
    v50[2] = v16;
    sub_2B538();
    (*(v51 + 104))();
    swift_willThrow();
    v52 = sub_123860();
    v53(v52);

    v54 = sub_13B7A4();
    v55 = v98;
    sub_53A8(v98, 1, 1, v54);
    v56 = 0;
    goto LABEL_11;
  }

  v47 = v46;
  v57 = sub_123860();
  v58(v57);
  v55 = v98;
  sub_92E4(v8, v98);
  v56 = v96;
LABEL_11:
  v59 = sub_92E4(v55, &v19[*(v16 + 44)]);
  __chkstk_darwin(v59);
  v95[-2] = v47;
  sub_2B570();
  sub_631C();
  if (v56)
  {

    v60 = 0;
    v62 = 0;
  }

  else
  {
    v62 = v61 & 1;
  }

  *(v19 + 3) = v60;
  v19[32] = v62;
  v19[33] = v56 != 0;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_123828();
    sub_123240(v63, v64);
    sub_9F18();
    *v65 = 0x6575676573;
    v65[1] = 0xE500000000000000;
    v65[2] = v16;
    sub_2B538();
    (*(v66 + 104))();
    swift_willThrow();
    v67 = sub_123878();
    v68(v67);

    v109 = 0;
    v107 = 0u;
    v108 = 0u;
  }

  else
  {
    sub_139BC4();
    v88 = sub_123878();
    v89(v88);
    sub_9414(v106, &v107);
  }

  v69 = &v19[*(v16 + 48)];
  v70 = v108;
  *v69 = v107;
  *(v69 + 1) = v70;
  *(v69 + 4) = v109;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_123828();
    sub_123240(v71, v72);
    sub_9F18();
    *v73 = 0x656C746974627573;
    v73[1] = 0xE800000000000000;
    v73[2] = v16;
    sub_2B538();
    (*(v74 + 104))();
    swift_willThrow();
    v75 = sub_123890();
    v76(v75);

    v109 = 0;
    v107 = 0u;
    v108 = 0u;
  }

  else
  {
    sub_139DB4();
    v90 = sub_123890();
    v91(v90);
    sub_9414(v106, &v107);
  }

  v77 = v108;
  *(v19 + 40) = v107;
  *(v19 + 56) = v77;
  *(v19 + 9) = v109;
  v78 = v99;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_123828();
    sub_123240(v80, v81);
    sub_9F18();
    *v82 = 0x656C746974;
    v82[1] = 0xE500000000000000;
    v82[2] = v16;
    sub_2B538();
    (*(v83 + 104))();
    swift_willThrow();

    v84 = sub_123840();
    MEMORY[0x656C746974](v84);
    MEMORY[0x656C746974](v78, a1);
    v85 = v110;
    v86 = v96;
    sub_13B5A4();
    sub_9F94();
    (*(v87 + 8))(v85);

    if (!v86)
    {
      sub_928C((v19 + 40), &qword_19E960);
      sub_9238((v19 + 120));
      sub_928C(&v19[*(v16 + 44)], &qword_19A350);
      return sub_928C(&v19[*(v16 + 48)], &unk_19E320);
    }
  }

  else
  {
    v79 = v110;
    sub_139DB4();
    v92 = sub_123840();
    MEMORY[0x656C746974](v92);
    MEMORY[0x656C746974](v78, a1);
    sub_9414(v106, &v107);
    sub_9414(&v107, (v19 + 80));
    sub_123290(v19, v97);
    sub_13B5A4();
    sub_9F94();
    (*(v93 + 8))(v79);
    return sub_1232F4(v19);
  }

  return result;
}

uint64_t sub_123074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_B86B8(v13, v9);
  *a3 = result;
  *(a3 + 8) = v16 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_123240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_123290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1232F4(uint64_t a1)
{
  v2 = type metadata accessor for TextHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TextHeader.ArtworkStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x12341CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_123468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 44);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_123510(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 44);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_12359C()
{
  sub_12377C(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_12377C(319, &qword_19B6F8, &type metadata accessor for DynamicArtwork);
    if (v1 <= 0x3F)
    {
      sub_12372C();
      if (v2 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48);
        if (v3 <= 0x3F)
        {
          sub_18A28();
          if (v4 <= 0x3F)
          {
            sub_12377C(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
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

void sub_12372C()
{
  if (!qword_1A1A80)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_1A1A80);
    }
  }
}

void sub_12377C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1237D4()
{
  result = qword_1A1AD0;
  if (!qword_1A1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1AD0);
  }

  return result;
}

uint64_t sub_123860()
{
  result = v0;
  *(v1 - 288) = *(*(v1 - 256) + 8);
  return result;
}

uint64_t sub_1238A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_4948(&qword_1A1B20);
  sub_13B5E4();

  v6 = v13[3] != 0;
  sub_2519C(v13);
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_isLargeTitle) = v6;
  sub_124BA0();
  swift_getKeyPath();
  sub_123ECC();

  v7 = v13[0];
  if (v13[0])
  {
    swift_getKeyPath();
    sub_123ECC();

    sub_1252B4(v7, v13[0], a3);
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v12)
  {
    sub_9414(&v11, v13);
    (*(&stru_158.size + (swift_isaMask & **(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel))))(v13, a3);
    sub_3C04(v13);
  }

  else
  {
    sub_2519C(&v11);
  }

  v8 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_titleLabel);
  swift_getKeyPath();
  sub_123ECC();

  (*(&stru_158.size + (swift_isaMask & *v8)))(v13, a3);
  sub_3C04(v13);
  swift_getKeyPath();
  sub_123ECC();

  if (v13[0])
  {
    *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtwork) = v13[0];

    sub_124D90(v10);
  }

  return result;
}

uint64_t sub_123B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_123BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_123C2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_123C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_123CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_123D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_123E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_123ECC()
{

  return sub_13B5E4();
}

double sub_123EE8(unsigned __int8 a1)
{
  result = 0.0;
  if (a1 >= 2u)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    result = 42.0;
    if (v3 != &dword_0 + 1)
    {
      return 28.0;
    }
  }

  return result;
}

void sub_123F64(uint64_t a1@<X8>)
{
  sub_126784();
  v4 = (*(v3 + 152))();
  v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkTopSpace);
  *(a1 + 40) = &type metadata for CGFloat;
  *(a1 + 48) = &protocol witness table for CGFloat;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 80) = &type metadata for CGFloat;
  *(a1 + 88) = &protocol witness table for CGFloat;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = 0x4034000000000000;
  *a1 = v4;
}

id sub_12400C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_widthInset] = 0;
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetchSubject;
  sub_4948(&unk_19EBD0);
  swift_allocObject();
  *&v4[v9] = sub_13A644();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetchSubscription] = 0;
  v10 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetcher];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkTopSpace] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtwork] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkView;
  if (qword_19A1E0 != -1)
  {
    swift_once();
  }

  v12 = objc_allocWithZone(sub_139CF4());
  sub_1D498();
  *&v4[v11] = sub_139CE4();
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel;
  sub_139BB4();
  v14 = objc_opt_self();
  v15 = [v14 ams_primaryText];
  v16 = sub_13A2A4();
  v29 = v16;
  v30 = &protocol witness table for FontSource;
  *sub_CC08(v28) = UIFontTextStyleBody;
  v17 = *(*(v16 - 8) + 104);
  v17();
  v18 = UIFontTextStyleBody;
  *&v4[v13] = sub_139BA4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_titleLabel;
  v20 = [v14 ams_primaryText];
  v29 = v16;
  v30 = &protocol witness table for FontSource;
  v21 = sub_CC08(v28);
  *v21 = UIFontTextStyleTitle1;
  v21[1] = *&UIFontWeightBold;
  v22 = enum case for FontUseCase.preferredFontDerivative(_:);
  sub_13A3E4();
  sub_9F94();
  (*(v23 + 104))(v21, v22);
  (v17)(v21, enum case for FontSource.useCase(_:), v16);
  v24 = UIFontTextStyleTitle1;
  *&v4[v19] = sub_139BA4();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView] = 0;
  swift_weakInit();
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_isLargeTitle] = 1;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for TextHeaderComponent();
  v25 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v25 setUserInteractionEnabled:0];
  sub_124ACC();

  return v25;
}

void sub_12438C()
{
  sub_126790();
  v30 = v1;
  v31 = v2;
  v3 = v0;
  v4 = sub_13A314();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = type metadata accessor for TextHeaderComponent();
  v29.receiver = v0;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, "layoutSubviews");
  if (qword_19A1E8 != -1)
  {
    sub_126764();
  }

  v12 = [v0 contentView];
  [v12 bounds];

  sub_2D724();
  sub_13BE34();
  sub_123F64(v28);
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkView];
  v28[20] = sub_139CF4();
  v28[21] = &protocol witness table for UIView;
  v28[17] = v13;
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel];
  v15 = sub_139BB4();
  v28[25] = v15;
  sub_12674C();
  v18 = sub_1266AC(v16, v17);
  v28[22] = v14;
  v19 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_titleLabel];
  v28[30] = v15;
  v28[31] = v18;
  v28[26] = v18;
  v28[27] = v19;
  v20 = v13;
  v21 = v14;
  v22 = v19;
  v23 = [v3 contentView];
  sub_126800(v23);

  (*(v6 + 8))(v10, v4);
  v24 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView];
  if (v24)
  {
    v25 = v24;
    sub_12597C();
    [v25 frame];
    sub_125438(v25, v26, v27);
  }

  sub_1266F4(v28);
  sub_1267B0();
}

void sub_12467C()
{
  sub_126790();
  v22 = v1;
  v23 = v2;
  v3 = sub_13A514();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  if (qword_19A1E8 != -1)
  {
    sub_126764();
  }

  sub_1267EC();
  sub_13BE64();
  sub_123F64(v21);
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkView];
  v21[20] = sub_139CF4();
  v21[21] = &protocol witness table for UIView;
  v21[17] = v10;
  v11 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel];
  v12 = sub_139BB4();
  v21[25] = v12;
  sub_12674C();
  v15 = sub_1266AC(v13, v14);
  v21[22] = v11;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_titleLabel];
  v21[30] = v12;
  v21[31] = v15;
  v21[26] = v15;
  v21[27] = v16;
  v17 = v10;
  v18 = v11;
  v19 = v16;
  v20 = [v0 contentView];
  sub_12699C(v9);
  sub_2D724();
  sub_13A464();

  (*(v5 + 8))(v9, v3);
  sub_1267EC();
  sub_13BE74();
  sub_1266F4(v21);
  sub_2D724();
  sub_1267B0();
}

uint64_t sub_124934()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TextHeaderComponent();
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView];
  if (v1)
  {
    v2 = *(&stru_108.reloff + (swift_isaMask & *v1));
    v3 = v1;
    v2();
  }

  sub_1D38C();
  (*(v4 + 320))();
  sub_1D38C();
  (*(v5 + 392))();
  sub_1D38C();
  return (*(v6 + 392))();
}

void sub_124ACC()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkView]];

  v2 = [v0 contentView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel]];

  v3 = [v0 contentView];
  [v3 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_titleLabel]];
}

uint64_t sub_124BA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_isLargeTitle);
  sub_126784();
  (*(v2 + 184))(1);
  v3 = [objc_opt_self() ams_primaryText];
  sub_126784();
  (*(v4 + 208))();
  if (v1 == 1)
  {
    v5 = sub_13A2A4();
    v17 = v5;
    v18 = &protocol witness table for FontSource;
    v6 = sub_CC08(v16);
    v7 = v6;
    v8 = &UIFontTextStyleLargeTitle;
  }

  else
  {
    v5 = sub_13A2A4();
    v17 = v5;
    v18 = &protocol witness table for FontSource;
    v6 = sub_CC08(v16);
    v7 = v6;
    v8 = &UIFontTextStyleTitle1;
  }

  v9 = *v8;
  *v6 = *v8;
  v6[1] = *&UIFontWeightBold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  sub_13A3E4();
  sub_9F94();
  (*(v11 + 104))(v7, v10);
  (*(*(v5 - 8) + 104))(v7, enum case for FontSource.useCase(_:), v5);
  sub_126784();
  v13 = *(v12 + 240);
  v14 = v9;
  return v13(v16);
}

uint64_t sub_124D90(uint64_t a1)
{
  v2 = v1;
  swift_weakAssign();
  v4 = objc_allocWithZone(sub_139CF4());
  sub_1D498();
  sub_2D724();
  v5 = sub_139CE4();
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView;
  v7 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView];
  *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView] = v5;

  v8 = [v1 contentView];
  v9 = [v8 layer];

  [v9 setMasksToBounds:0];
  v10 = *&v2[v6];
  if (v10)
  {
    v11 = v10;
    v12 = [v2 layer];
    [v12 setZPosition:-100.0];

    v13 = [v2 contentView];
    [v13 addSubview:v11];

    v14 = [v2 contentView];
    [v14 sendSubviewToBack:v11];
  }

  sub_1D450();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = v16;
  *(v17 + 4) = v2;
  *(v17 + 5) = a1;
  v18 = &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetcher];
  v19 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetcher];
  *v18 = sub_1266A0;
  v18[1] = v17;

  v2;

  sub_C9FC(v19);

  v20 = *v18;
  if (*v18)
  {

    (v20)(v21);
    sub_C9FC(v20);
  }

  return sub_125CFC();
}

void sub_124FFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      if (qword_19A018 != -1)
      {
        swift_once();
      }

      v10 = sub_139A14();
      sub_4910(v10, qword_1B2B00);
      sub_4948(&unk_19E010);
      sub_1399C4();
      *(swift_allocObject() + 16) = xmmword_13E660;
      v15 = type metadata accessor for TextHeaderComponent();
      v14[0] = a3;
      v11 = a3;
      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v14);
      sub_139974();
      v15 = sub_139F94();
      v14[0] = a4;

      sub_139984();
      sub_928C(v14, &unk_1A06F0);
      sub_1399F4();

      (*&stru_108.segname[(swift_isaMask & *v9) + 16])(a4, v7);
    }

    else
    {
    }
  }
}

void sub_1252B4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkView);
  sub_125390(a2);
  sub_126784();
  (*(v9 + 160))();
  (*&stru_108.segname[(swift_isaMask & *v8) + 16])(a1, a3);
  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkTopSpace) = sub_123EE8(a2);
}

double sub_125390(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 92.0;
    }

    else
    {
      return 220.0;
    }
  }

  else
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    result = 80.0;
    if (v3 == &dword_0 + 1)
    {
      return 90.0;
    }
  }

  return result;
}

uint64_t sub_125438(void *a1, double a2, double a3)
{
  v7 = sub_139954();
  __chkstk_darwin(v7 - 8);
  sub_9EC0();
  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v8 = sub_139A14();
  sub_4910(v8, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v26 = type metadata accessor for TextHeaderComponent();
  v31 = v26;
  v29 = *&v3;
  v9 = COERCE_DOUBLE(v3);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v29);
  v28 = v9;
  sub_1399A4();
  sub_139944();
  v32._countAndFlagsBits = 0xD00000000000002DLL;
  v32._object = 0x8000000000152D20;
  sub_139934(v32);
  v27 = *(&stru_68.reserved2 + (swift_isaMask & *a1));
  v12 = v27();
  v31 = &type metadata for Bool;
  LOBYTE(v29) = v12 & 1;
  sub_139924();
  sub_1267D0();
  v33._countAndFlagsBits = 0x726F77747261203BLL;
  v33._object = 0xEF203A657A69536BLL;
  sub_139934(v33);
  v13 = *(&stru_68.offset + (swift_isaMask & *a1));
  v14 = v13();
  v16 = v15;
  type metadata accessor for CGSize(0);
  v18 = v17;
  v31 = v17;
  v29 = v14;
  v30 = v16;
  sub_139924();
  sub_1267D0();
  v34._countAndFlagsBits = 0x6E65746E6F63203BLL;
  v34._object = 0xEF203A657A695374;
  sub_139934(v34);
  v31 = v18;
  v29 = a2;
  v30 = a3;
  sub_139924();
  sub_1267D0();
  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  sub_139934(v35);
  sub_139964();
  sub_1399F4();

  if (((v27)(v19) & 1) != 0 && (v13() == a2 ? (v21 = v20 == a3) : (v21 = 0), v21))
  {
    *(swift_allocObject() + 16) = xmmword_13E660;
    v31 = v26;
    v29 = v28;
    v23 = *&v28;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v29);
    sub_1399A4();
    sub_139974();
    sub_1399F4();
  }

  else
  {
    (*(&stru_68.reloff + (swift_isaMask & *a1)))(a2, a3);
    sub_4948(&unk_19EBD0);
    sub_CBC0(&qword_19A610, &unk_19EBD0);
    return sub_13A654();
  }
}

void sub_12597C()
{
  sub_126790();
  v23 = v1;
  v24 = v2;
  v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_backgroundArtworkView];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v0;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_14;
  }

  sub_139E64();
  sub_13B6B4();
  v5 = v3;
  v6 = sub_13B9A4();
  v7 = *(*v22[0] + 88);
  v8 = (v7)(v6);
  if (!v8 || (v9 = v8, v10 = [v8 topViewController], v9, !v10))
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4();
    }

    v14 = sub_139A14();
    sub_4910(v14, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v22[3] = type metadata accessor for TextHeaderComponent();
    v22[0] = v4;
    v15 = v4;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v22);
    sub_139974();
    sub_1399E4();

    goto LABEL_14;
  }

  v11 = v7();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];

    [v13 frame];
  }

  v18 = v5;
  [v4 frame];
  [v4 frame];
  v19 = [v10 view];
  if (v19)
  {
    v20 = v19;
    [v19 frame];

    [*&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_subtitleLabel] frame];
    CGRectGetMaxY(v25);
    sub_2D724();
    [v18 setFrame:NSDirectionalEdgeInsets.edgeInsets.getter(v21)];

LABEL_14:
    sub_1267B0();
    return;
  }

  __break(1u);
}

uint64_t sub_125CFC()
{
  v1 = sub_4948(&unk_19EBE0);
  __chkstk_darwin(v1 - 8);
  v3 = v24 - v2;
  sub_13BF24();
  sub_9E94();
  v28 = v5;
  v29 = v4;
  __chkstk_darwin(v4);
  sub_9EC0();
  v8 = v7 - v6;
  sub_4948(&qword_19A5F0);
  sub_9E94();
  v31 = v9;
  v32 = v10;
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  sub_4948(&unk_19EBF0);
  sub_9E94();
  v33 = v13;
  v34 = v14;
  __chkstk_darwin(v13);
  v27 = v24 - v15;
  v36 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetchSubject);

  sub_13BF14();
  v26 = objc_opt_self();
  v16 = [v26 mainRunLoop];
  v35 = v16;
  v25 = sub_13BF04();
  sub_53A8(v3, 1, 1, v25);
  sub_4948(&unk_19EBD0);
  v24[1] = sub_1263A4();
  sub_CBC0(&unk_19EC00, &unk_19EBD0);
  sub_1266AC(&qword_19A600, sub_1263A4);
  sub_13A684();
  sub_928C(v3, &unk_19EBE0);

  (*(v28 + 8))(v8, v29);

  v17 = [v26 mainRunLoop];
  v36 = v17;
  sub_53A8(v3, 1, 1, v25);
  sub_CBC0(&unk_19EC10, &qword_19A5F0);
  v18 = v27;
  v19 = v31;
  sub_13A674();
  sub_928C(v3, &unk_19EBE0);

  (*(v32 + 8))(v12, v19);
  sub_1D450();
  swift_allocObject();
  v20 = v30;
  swift_unknownObjectWeakInit();
  sub_CBC0(&qword_19A608, &unk_19EBF0);
  v21 = v33;
  v22 = sub_13A6B4();

  (*(v34 + 8))(v18, v21);
  *(v20 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetchSubscription) = v22;
}

void sub_1261C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin19TextHeaderComponent_artworkFetcher);
    sub_C9EC(v2);

    if (v2)
    {
      v2();
      sub_C9FC(v2);
    }
  }
}

id sub_12628C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextHeaderComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1263A4()
{
  result = qword_19A5F8;
  if (!qword_19A5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19A5F8);
  }

  return result;
}

uint64_t sub_1263E8()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_126424()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 80.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 90.0;
  }

  qword_1A1B28 = *&v2;
  unk_1A1B30 = *&v2;
}

uint64_t sub_12649C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled() || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), v5 = 0.0, (v4 & 1) == 0))
  {
    v5 = 20.0;
  }

  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v7 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v8 = 0.0, (v7 & 1) == 0))
  {
    v8 = 20.0;
  }

  qword_1A1B38 = 0;
  qword_1A1B40 = *&v5;
  qword_1A1B48 = 0x4030000000000000;
  qword_1A1B50 = *&v8;
  return result;
}

uint64_t sub_12661C()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_126650()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1266AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_126764()
{

  return swift_once();
}

uint64_t sub_1267D0()
{

  return sub_928C(v1 - 152, v0);
}

uint64_t sub_126800(void *a1)
{
  v2 = v1;
  v4 = sub_13A514();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  sub_12699C(v9 - v8);
  sub_13A474();
  (*(v6 + 8))(v10, v4);
  v11 = [a1 traitCollection];
  sub_13BDE4();

  sub_162F0((v2 + 136), *(v2 + 160));
  sub_162F0((v2 + 136), *(v2 + 160));
  sub_13A344();
  return sub_13A354();
}

uint64_t sub_12699C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v67 = sub_13A4C4();
  sub_9E94();
  v83 = v3;
  __chkstk_darwin(v4);
  sub_9EC0();
  v65 = v6 - v5;
  v63 = sub_13A454();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v62 = v11 - v10;
  v12 = sub_13A4B4();
  v82 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v77 = sub_4948(&qword_19AFE8);
  v17 = swift_allocObject();
  v81 = xmmword_13E660;
  *(v17 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v89 = v17;
  v76 = sub_20068();
  v75 = sub_4948(&qword_19AFF0);
  sub_1D268();
  v70 = v16;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v18 = *(sub_13A4F4() - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v68 = *(v18 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = v81;
  v69 = v20;
  v78 = v20 + v19;
  sub_162F0(v2 + 17, v2[20]);
  sub_13A374();
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v21 = v8;
  v22 = v8 + 104;
  v23 = *(v8 + 104);
  v24 = v62;
  LODWORD(v81) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v25 = v63;
  v80 = v22;
  v79 = v23;
  v23(v62);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_140280;
  sub_13A494();
  *&v84[0] = v26;
  v27 = v73;
  sub_13BF64();
  v28 = v83;
  v29 = *(v83 + 104);
  v30 = v65;
  LODWORD(v77) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v31 = v67;
  v76 = v83 + 104;
  v75 = v29;
  v29(v65);
  sub_13A4E4();
  v32 = *(v28 + 8);
  v33 = v30;
  v34 = v30;
  v35 = v31;
  v83 = v28 + 8;
  v74 = v32;
  v32(v34, v31);
  v36 = *(v82 + 8);
  v71 = v12;
  v82 += 8;
  v66 = v36;
  v36(v27, v12);
  v37 = *(v21 + 8);
  v38 = v24;
  v39 = v24;
  v40 = v25;
  v73 = (v21 + 8);
  v64 = v37;
  v37(v39, v25);
  sub_1D2CC(&v86);
  sub_3C04(&v89);
  v41 = v2[30];
  v42 = v2[31];
  v43 = sub_162F0(v2 + 27, v41);
  v90 = v41;
  v91 = *(v42 + 8);
  v44 = sub_CC08(&v89);
  (*(*(v41 - 8) + 16))(v44, v43, v41);
  sub_127454();
  if ((sub_13A324() & 1) != 0 && (sub_127454(), (sub_13A364() & 1) == 0))
  {
    sub_4B14((v2 + 12), &v86);
  }

  else
  {
    *(&v87 + 1) = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    *&v86 = 0;
  }

  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v45 = v38;
  sub_127424();
  v46();
  v47 = v33;
  v48 = v35;
  sub_127440();
  v49();
  v50 = v68;
  v51 = v78;
  v52 = v70;
  sub_13A4E4();
  v74(v33, v35);
  v53 = v64;
  v64(v45, v40);
  sub_1D2CC(v84);
  sub_3C04(&v86);
  sub_3C04(&v89);
  v78 = v51 + 2 * v50;
  v54 = v2[25];
  v55 = v2[26];
  v56 = sub_162F0(v2 + 22, v54);
  v90 = v54;
  v91 = *(v55 + 8);
  v57 = sub_CC08(&v89);
  (*(*(v54 - 8) + 16))(v57, v56, v54);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  sub_127424();
  v58();
  sub_127440();
  v59();
  sub_13A4E4();
  v74(v47, v48);
  v53(v45, v40);
  sub_1D2CC(&v86);
  sub_3C04(&v89);
  sub_13A4D4();
  return v66(v52, v71);
}

double sub_1271CC()
{
  v0 = sub_13A514();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  sub_12699C(v5 - v4);
  sub_13A464();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return v8;
}

unint64_t sub_1272D8()
{
  result = qword_1A1BE0;
  if (!qword_1A1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1BE0);
  }

  return result;
}

uint64_t sub_127364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1273A4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_127454()
{
  v1 = *(v0 + 160);
  sub_162F0((v0 + 136), v1);
  return v1;
}

id TimingCurve.caMediaTimingFunction.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    switch(a1)
    {
      case 1:
        v3 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
        break;
      case 2:
        v3 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
        break;
      case 3:
        v3 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
        break;
      default:
        v3 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        break;
    }

    return v3;
  }

  else
  {
    v6 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v8) = HIDWORD(a1);
    LODWORD(v7) = a1;
    LODWORD(v10) = HIDWORD(a2);
    LODWORD(v9) = a2;

    return [v6 initWithControlPoints:v7 :v8 :v9 :v10];
  }
}

double sub_127608(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = 0;
  v5 = TimingCurve.caMediaTimingFunction.getter(a1, a2, a3 & 1);
  [v5 getControlPointAtIndex:a4 values:&v7];

  return *&v7;
}

unint64_t TimingCurve.reversed.getter(uint64_t a1, uint64_t a2, char a3)
{
  TimingCurve.controlPoint1.getter(a1, a2, a3 & 1);
  *&v6 = 1.0 - TimingCurve.controlPoint2.getter(a1, a2, a3 & 1);
  *&v7 = 1.0 - v7;
  return v6 | (LODWORD(v7) << 32);
}

unint64_t sub_127738()
{
  result = TimingCurve.reversed.getter(0x3B16BB993E404EA5, 0x3F76809D3F0A36E3, 0);
  static TimingCurve.customNavigationPop = result;
  *algn_1B2C48 = v1;
  byte_1B2C50 = 0;
  return result;
}

uint64_t *TimingCurve.customNavigationPop.unsafeMutableAddressor()
{
  if (qword_19A1F0 != -1)
  {
    sub_127940();
  }

  return &static TimingCurve.customNavigationPop;
}

uint64_t static TimingCurve.customNavigationPop.getter()
{
  if (qword_19A1F0 != -1)
  {
    sub_127940();
  }

  return static TimingCurve.customNavigationPop;
}

__n128 initializeBufferWithCopyOfBuffer for TimingCurve(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TimingCurve(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimingCurve(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1278F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_127910(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_127940()
{

  return swift_once();
}

void *static UIApplication.hasNotch()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result safeAreaInsets];
    v3 = v2;

    return (v3 > 0.0);
  }

  return result;
}

void sub_1279B4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_13BF84();
    sub_127D78();
    sub_127DBC();
    sub_13BCE4();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_13BF94() || (sub_127D78(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_24:
        sub_7D220();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      sub_13BC04();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_13BC34();
      }

      sub_13BC54();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *static UIApplication.isCompact()()
{
  result = static UIApplication.window.getter();
  if (result)
  {
    v1 = result;
    [result frame];
    Width = CGRectGetWidth(v3);

    return (Width < 375.0);
  }

  return result;
}

uint64_t static UIApplication.window.getter()
{
  v0 = [swift_getObjCClassFromMetadata() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_127D78();
  sub_127DBC();
  v2 = sub_13BCC4();

  sub_1279B4(v2);
  v4 = v3;

  result = sub_617E0(v4);
  if (!result)
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_13C004();
    goto LABEL_5;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v4 + 32);
LABEL_5:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_127D78()
{
  result = qword_1A1BE8;
  if (!qword_1A1BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A1BE8);
  }

  return result;
}

unint64_t sub_127DBC()
{
  result = qword_1A1BF0;
  if (!qword_1A1BF0)
  {
    sub_127D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1BF0);
  }

  return result;
}

unint64_t sub_127E30(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_127E5C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return !v2 && [v0 verticalSizeClass] == &dword_0 + 1;
}

void sub_127EDC(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius:a1];

  v4 = [v1 layer];
  [v4 setMasksToBounds:1];
}

void sub_127F80(void (*a1)(), uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  v15 = sub_1281C4;
  v16 = v9;
  sub_128244();
  v12 = 1107296256;
  v13 = sub_E2448;
  v14 = &unk_18EFC8;
  v10 = _Block_copy(&v11);

  if (a1)
  {
    v15 = a1;
    v16 = a2;
    sub_128244();
    v12 = 1107296256;
    v13 = sub_1281E8;
    v14 = &unk_18EFF0;
    a1 = _Block_copy(&v11);
  }

  [objc_opt_self() animateWithDuration:134 delay:v10 options:a1 animations:a4 completion:0.0];
  _Block_release(a1);
  _Block_release(v10);
}

uint64_t sub_1280E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_128120(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha:a1];
  }
}

uint64_t sub_12818C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1281D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1281E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_128260(char a1, char a2)
{
  v4 = objc_opt_self();
  v5 = [v4 areAnimationsEnabled];
  [v4 setAnimationsEnabled:a2 & 1];
  sub_1282EC(a1);

  return [v4 setAnimationsEnabled:v5];
}

void sub_1282EC(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v9 = sub_128574;
    v10 = v3;
    v5 = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_E2448;
    v8 = &unk_18F068;
    v4 = _Block_copy(&v5);

    [v2 animateWithDuration:v4 animations:0.165];
  }

  else
  {
    v9 = sub_CB9F0;
    v10 = v3;
    v5 = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_E2448;
    v8 = &unk_18F040;
    v4 = _Block_copy(&v5);

    [v2 animateWithDuration:v4 animations:0.25];
  }

  _Block_release(v4);
}

uint64_t sub_128464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_12849C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CGAffineTransformMakeScale(&v4, 0.97, 0.97);
    [v1 setTransform:&v4];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha:0.5];
  }
}

uint64_t sub_12855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_128584@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v73 = a3;
  v4 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v4 - 8);
  v80 = v67 - v5;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  v71 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = v67 - v12;
  __chkstk_darwin(v13);
  v15 = v67 - v14;
  v16 = sub_13B644();
  sub_9E94();
  v79 = v17;
  __chkstk_darwin(v18);
  sub_21548();
  v76 = v19;
  updated = type metadata accessor for UpdateGranularSettingsAction();
  sub_2B538();
  __chkstk_darwin(v21);
  sub_21548();
  v81 = v22;
  sub_139BD4();
  inited = swift_initStackObject();
  v23 = 0xED00007363697274;
  v24 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v72 = updated;
  v78 = a1;
  v25 = v80;
  sub_128EC8(v15, v87, v80);
  if (sub_52E0(v25, 1, v16) == 1)
  {
    sub_184DC(v25, &qword_19DDA8);
    v24 = v78;
    updated = v72;
LABEL_4:
    sub_13BAB4();
    sub_129464();
    sub_12941C(v26, v27);
    sub_9F18();
    strcpy(v28, "actionMetrics");
    *(v28 + 7) = -4864;
    *(v28 + 2) = updated;
    sub_2B538();
    (*(v29 + 104))();
    swift_willThrow();
    v30 = *(v8 + 8);
    v30(v24, v6);
    v30(v15, v6);
    sub_13B5A4();
    sub_5224();
    return (*(v31 + 8))(v87);
  }

  sub_129494();
  v33 = v8 + 8;
  v34 = *(v8 + 8);
  v69 = v33;
  v34(v15, v6);
  v35 = *(v79 + 32);
  v36 = v76;
  v35(v76, v25, v16);
  v37 = v72;
  v80 = *(v72 + 24);
  v35(v81 + v80, v36, v16);
  v38 = v77;
  sub_13B594();
  v39 = sub_13B564();
  v67[1] = v16;
  v68 = v6;
  v70 = v34;
  if (v39)
  {
    goto LABEL_8;
  }

  v23 = v69;
  v40 = v74;
  sub_139BC4();
  if (v40)
  {

    v83 = 0;
    memset(v82, 0, sizeof(v82));
    sub_184DC(v82, &unk_19E320);
    v34 = v70;
    sub_129494();
LABEL_8:
    sub_13BAB4();
    sub_129464();
    sub_12941C(v41, v42);
    sub_9F18();
    *v43 = v23;
    v43[1] = 0xED00006E6F697463;
    v43[2] = v37;
    sub_2B538();
    (*(v44 + 104))();
    swift_willThrow();
    v34(v38, v6);

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    goto LABEL_9;
  }

  v70(v38, v6);
  sub_9414(v82, &v84);
LABEL_9:
  v45 = v81;
  v46 = v81 + *(v37 + 28);
  v47 = v85;
  *v46 = v84;
  *(v46 + 1) = v47;
  *(v46 + 4) = v86;
  v48 = v78;
  *v45 = sub_BB5C4(0x6163696669746F6ELL, 0xEF7364496E6F6974, v37);
  v45[1] = sub_BB310();
  v45[2] = v49;
  v50 = v71;
  sub_13B594();
  v51 = sub_13B564();
  v52 = v87;
  if (v51)
  {
    sub_13BAB4();
    sub_129464();
    sub_12941C(v53, v54);
    sub_9F18();
    strcpy(v55, "successAction");
    *(v55 + 7) = -4864;
    v66 = v72;
    *(v55 + 2) = v72;
    sub_2B538();
    (*(v56 + 104))();
    swift_willThrow();

    v57 = v68;
    v58 = v70;
    v70(v48, v68);
    v58(v50, v57);

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  else
  {
    sub_139BC4();

    v64 = v68;
    v65 = v70;
    v70(v78, v68);
    v65(v50, v64);
    sub_9414(v82, &v84);
    v66 = v72;
  }

  v59 = *(v66 + 32);
  v60 = v81;
  v61 = v81 + v59;
  v62 = v85;
  *v61 = v84;
  *(v61 + 1) = v62;
  *(v61 + 4) = v86;
  sub_1290E0(v60, v73);
  sub_13B5A4();
  sub_5224();
  (*(v63 + 8))(v52);
  return sub_129144(v60);
}

uint64_t sub_128EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for UpdateGranularSettingsAction()
{
  result = qword_1A1C50;
  if (!qword_1A1C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1290E0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateGranularSettingsAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_129144(uint64_t a1)
{
  updated = type metadata accessor for UpdateGranularSettingsAction();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1291B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 24);

    return sub_52E0(v9, a2, v8);
  }
}

void *sub_129250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1292D0()
{
  sub_129374();
  if (v0 <= 0x3F)
  {
    sub_13B644();
    if (v1 <= 0x3F)
    {
      sub_5528();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_129374()
{
  if (!qword_1A1C60)
  {
    v0 = sub_13BC74();
    if (!v1)
    {
      atomic_store(v0, &qword_1A1C60);
    }
  }
}

uint64_t sub_1293C4(uint64_t a1)
{
  result = sub_12941C(&qword_19F178, type metadata accessor for UpdateGranularSettingsAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_12941C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1294A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_127E54(a1);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = sub_13C004();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    sub_12A32C(&v11, a2, a3);
    if (v3)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_129598(uint64_t a1)
{
  v58 = a1;
  updated = type metadata accessor for UpdateGranularSettingsAction();
  v4 = sub_CCF4(updated);
  v57 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_13B994();
  sub_101A8();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  sub_CACC(0, &qword_19DFD8);
  sub_13B6A4();
  v16 = aBlock[0];
  if (aBlock[0])
  {
    v52 = v7;
    v53 = v12;
    v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v15;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v17 = sub_139A14();
    v51 = sub_4910(v17, qword_1B2B00);
    sub_4948(&unk_19E010);
    v18 = sub_1399C4();
    sub_CCF4(v18);
    *(swift_allocObject() + 16) = xmmword_13E650;
    v61 = type metadata accessor for UpdateGranularSettingsActionImplementation();
    aBlock[0] = v2;
    v55 = v2;

    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(aBlock);
    sub_139974();
    sub_1399F4();

    sub_13B6B4();
    v23 = v59;
    sub_13B9A4();
    sub_CACC(0, &unk_19DFE0);
    sub_13B9A4();
    v24 = aBlock[0];
    v51 = aBlock[0];
    v25 = v58;
    v26 = *(v58 + 8);
    v27 = *(v58 + 16);

    v28 = v16;
    v48 = v28;
    v29 = v23;
    v30 = sub_13B984();
    v31 = objc_allocWithZone(AMSNotificationSettingsTask);
    v32 = sub_12AB70(v26, v27, v28, v30);
    v50 = v32;
    [v32 setClientInfo:v24];
    sub_4948(&unk_1A0070);
    v47 = sub_13BA24();
    v49 = [v32 fetchAllSettings];
    v33 = v54;
    sub_1290E0(v25, v54);
    v34 = v53;
    (*(v9 + 16))(v53, v29, v1);
    v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v36 = (v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = v1;
    v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v9 + 80) + v39 + 8) & ~*(v9 + 80);
    v41 = swift_allocObject();
    sub_12ADC8(v33, v41 + v35);
    *(v41 + v36) = v55;
    *(v41 + v37) = v47;
    v42 = v48;
    *(v41 + v39) = v48;
    (*(v9 + 32))(v41 + v40, v34, v38);
    v62 = sub_12AE2C;
    v63 = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_875D0;
    v61 = &unk_18F0D8;
    v43 = _Block_copy(aBlock);

    v44 = v42;

    v45 = v49;
    [v49 addFinishBlock:v43];
    _Block_release(v43);

    v61 = sub_13B7C4();
    v62 = &protocol witness table for SyncTaskScheduler;
    sub_CC08(aBlock);
    sub_13B7B4();
    v22 = sub_13B9C4();

    (*(v9 + 8))(v59, v38);
    sub_3C04(aBlock);
  }

  else
  {
    sub_4948(&qword_19E698);
    sub_12AB1C();
    swift_allocError();
    *v21 = 2;
    return sub_13B9E4();
  }

  return v22;
}

void sub_129BF0(void *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, void *a6)
{
  v6 = a4;
  if (a1)
  {
    v8 = a1;

    v10 = sub_8366C(v9);
    v38 = swift_allocObject();
    v39 = v8;
    *(v38 + 16) = _swiftEmptyArrayStorage;
    v11 = [v8 sections];
    sub_CACC(0, &qword_1A1D68);
    v12 = sub_13BC24();

    sub_1294A8(v12, v38 + 16, v10);

    v13 = *(v38 + 16);
    v14 = sub_127E54(v13);
    v6 = v13 & 0xFFFFFFFFFFFFFF8;

    for (i = 0; v14 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_13C004();
      }

      else
      {
        if (i >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      [v16 setEnabled:1];
    }

    if (sub_127E54(v13))
    {
      v18 = *(a3 + 8);
      v19 = *(a3 + 16);

      v20 = sub_13B984();
      objc_allocWithZone(AMSNotificationSettingsTask);
      v37 = sub_12AB70(v18, v19, a6, v20);
      sub_CACC(0, &qword_1A1D70);

      isa = sub_13BC14().super.isa;

      v22 = [v37 updateSettings:isa];

      if (v22)
      {
        v23 = swift_allocObject();
        v23[2] = a4;
        v23[3] = v38;
        v23[4] = a5;
        v44 = sub_12AFD0;
        v45 = v23;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_E148C;
        updated = &unk_18F150;
        v24 = _Block_copy(&aBlock);

        [v22 addFinishBlock:v24];

        _Block_release(v24);
      }

      else
      {
      }
    }

    else
    {
      if (qword_19A018 != -1)
      {
        swift_once();
      }

      v25 = sub_139A14();
      sub_4910(v25, qword_1B2B00);
      sub_4948(&unk_19E010);
      sub_1399C4();
      *(swift_allocObject() + 16) = xmmword_13E650;
      updated = type metadata accessor for UpdateGranularSettingsActionImplementation();
      aBlock = a4;

      v26 = AMSLogKey();
      if (v26)
      {
        v27 = v26;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(&aBlock);
      sub_139974();
      sub_1399F4();

      LOBYTE(aBlock) = 1;
      sub_13BA14();
    }
  }

  else
  {
    if (!a2)
    {
      sub_12AB1C();
      swift_allocError();
      *v28 = 0;
    }

    swift_errorRetain();
    if (qword_19A018 != -1)
    {
LABEL_30:
      swift_once();
    }

    v29 = sub_139A14();
    sub_4910(v29, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    updated = type metadata accessor for UpdateGranularSettingsActionImplementation();
    aBlock = v6;

    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&aBlock);
    sub_139974();
    swift_getErrorValue();
    v32 = sub_13C1A4();
    updated = &type metadata for String;
    aBlock = v32;
    v41 = v33;
    sub_139984();
    sub_49C8(&aBlock);
    sub_1399E4();

    sub_13BA04();
  }
}

void sub_12A32C(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 items];
  sub_CACC(0, &qword_1A1D70);
  v5 = sub_13BC24();

  v6 = sub_127E54(v5);
  v7 = 0;
  v22 = v5 & 0xFFFFFFFFFFFFFF8;
  v23 = v5 & 0xC000000000000001;
  v21 = v5 + 32;
  while (1)
  {
LABEL_2:
    if (v7 == v6)
    {

      sub_12B35C(0, 0, _swiftEmptyArrayStorage);
      return;
    }

    if (v23)
    {
      v8 = sub_13C004();
    }

    else
    {
      if (v7 >= *(v22 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v21 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7++, 1))
    {
      break;
    }

    v11 = [v8 identifier];
    v12 = sub_13BB84();
    v14 = v13;

    if (*(a3 + 16))
    {
      sub_13C214();
      sub_13BBA4();
      v15 = sub_13C234();
      v16 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(a3 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v18 = (*(a3 + 48) + 16 * v17);
        if (*v18 != v12 || v18[1] != v14)
        {
          v20 = sub_13C144();
          v15 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        sub_13C024();
        sub_13C054();
        sub_13C064();
        sub_13C034();
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_12A55C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_139954();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    updated = type metadata accessor for UpdateGranularSettingsActionImplementation();
    v21[0] = a3;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v21);
    sub_139944();
    v23._countAndFlagsBits = 0xD000000000000037;
    v23._object = 0x8000000000152F30;
    sub_139934(v23);
    swift_beginAccess();
    v12 = *(a4 + 16);
    updated = sub_4948(&qword_1A1D78);
    v21[0] = v12;

    sub_139924();
    sub_49C8(v21);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_139934(v24);
    sub_139964();
    sub_1399F4();

    LOBYTE(v21[0]) = 1;
    return sub_13BA14();
  }

  else
  {
    if (!a2)
    {
      sub_12AB1C();
      swift_allocError();
      *v14 = 1;
    }

    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v15 = sub_139A14();
    sub_4910(v15, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    updated = type metadata accessor for UpdateGranularSettingsActionImplementation();
    v21[0] = a3;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v21);
    sub_139944();
    v25._object = 0x8000000000152F00;
    v25._countAndFlagsBits = 0xD00000000000002BLL;
    sub_139934(v25);
    swift_beginAccess();
    v18 = *(a4 + 16);
    updated = sub_4948(&qword_1A1D78);
    v21[0] = v18;

    sub_139924();
    sub_49C8(v21);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_139934(v26);
    sub_139964();
    swift_getErrorValue();
    v19 = sub_13C1A4();
    updated = &type metadata for String;
    v21[0] = v19;
    v21[1] = v20;
    sub_139984();
    sub_49C8(v21);
    sub_1399E4();

    sub_13BA04();
  }
}

unint64_t sub_12AAA0()
{
  result = qword_19F178;
  if (!qword_19F178)
  {
    type metadata accessor for UpdateGranularSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F178);
  }

  return result;
}

unint64_t sub_12AB1C()
{
  result = qword_1A1D60;
  if (!qword_1A1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1D60);
  }

  return result;
}

id sub_12AB70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_13BB54();

  v8 = [v4 initWithIdentifier:v7 account:a3 bag:a4];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_12ABEC()
{
  updated = type metadata accessor for UpdateGranularSettingsAction();
  v3 = *(*(updated - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(updated - 1) + 64);
  sub_13B994();
  sub_101A8();
  v7 = v6;
  v8 = *(v6 + 80);
  v18 = *(v9 + 64);

  v10 = updated[6];
  v11 = sub_13B644();
  (*(*(v11 - 8) + 8))(v1 + v4 + v10, v11);
  v12 = v1 + v4 + updated[7];
  if (*(v12 + 24))
  {
    sub_3C04(v12);
  }

  v13 = v1 + v4 + updated[8];
  if (*(v13 + 24))
  {
    sub_3C04(v13);
  }

  v14 = v3 | v8;
  v15 = (((((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + v15 + 8) & ~v8;

  (*(v7 + 8))(v1 + v16, v0);

  return _swift_deallocObject(v1, v16 + v18, v14 | 7);
}

uint64_t sub_12ADC8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateGranularSettingsAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

void sub_12AE2C(void *a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateGranularSettingsAction();
  sub_CCF4(updated);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_13B994();
  v11 = *(v2 + v9);
  v12 = *(v2 + v10);
  v13 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_129BF0(a1, a2, v2 + v7, v11, v12, v13);
}

uint64_t sub_12AF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_12AF50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12AF88()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_12B004(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_4948(&qword_1A0B00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *sub_12B0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_4948(a3);
  v8 = a5(0);
  sub_CCF4(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_12B1A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_12B004(v1, 0);

    sub_13BFF4();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_13C0C4();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

uint64_t sub_12B23C(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_12B2A0(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_12B2A0(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_12B1A0(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_12B35C(uint64_t a1, uint64_t a2, int64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_617E0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_624D0(a3);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = sub_624D0(v7);
  v10 = __OFADD__(v13, v11);
  v14 = v13 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_C0948(v14, 1);

  sub_12B41C(a1, a2, v12, a3);
}

void sub_12B41C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_CACC(0, &qword_1A1D70);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_13C0C4();
LABEL_6:
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_12B23C(v4, sub_12B660);
    goto LABEL_17;
  }

  sub_4CE3C(&v9[v7], v15 - v7, (v6 + 8 * v8));
  if (v10)
  {
    v13 = sub_13C0C4();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v5[2] = v13 + v11;
LABEL_12:
  if (v8 < 1)
  {

    goto LABEL_17;
  }

  __chkstk_darwin(v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) == v8)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_12B5E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_CACC(0, &qword_1A1D70);
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

_BYTE *storeEnumTagSinglePayload for UpdateGranularSettingsActionImplementation.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x12B748);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12B784()
{
  result = qword_1A1D80;
  if (!qword_1A1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1D80);
  }

  return result;
}

void sub_12B7E0(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = [v6 superview];
  if (v12)
  {
    v13 = v12;
    if (a1)
    {
      v14 = [v12 safeAreaLayoutGuide];
      v15 = [v14 topAnchor];

      v16 = [v13 safeAreaLayoutGuide];
      v17 = [v16 bottomAnchor];
    }

    else
    {
      v15 = [v12 topAnchor];
      v17 = [v13 bottomAnchor];
    }

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_4948(&qword_1A0B00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_147270;
    v19 = [v6 topAnchor];
    v20 = [v19 constraintEqualToAnchor:v15 constant:a2];

    *(v18 + 32) = v20;
    v21 = [v6 leadingAnchor];
    v22 = [v13 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:a3];

    *(v18 + 40) = v23;
    v24 = [v6 bottomAnchor];
    v25 = [v24 constraintEqualToAnchor:v17 constant:-a4];

    *(v18 + 48) = v25;
    v26 = [v6 trailingAnchor];
    v27 = [v13 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-a5];

    *(v18 + 56) = v28;
    sub_12BAF4();
    isa = sub_13BC14().super.isa;

    [v13 addConstraints:isa];

    sub_12BDE4();
  }

  else
  {
    sub_12BDE4();
  }
}

unint64_t sub_12BAF4()
{
  result = qword_1A0B08;
  if (!qword_1A0B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A0B08);
  }

  return result;
}

void sub_12BB38(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 superview];
  if (v7)
  {
    v26 = v7;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_4948(&qword_1A0B00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_147280;
    v9 = [v3 centerXAnchor];
    v10 = [v26 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v8 + 32) = v11;
    v12 = [v3 centerYAnchor];
    v13 = [v26 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v8 + 40) = v14;
    sub_12BAF4();
    isa = sub_13BC14().super.isa;

    [v26 addConstraints:isa];

    if ((a3 & 1) == 0)
    {
      v16 = *&a1;
      v17 = *&a2;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_147280;
      v19 = [v3 widthAnchor];
      v20 = [v19 constraintEqualToConstant:v16];

      *(v18 + 32) = v20;
      v21 = [v3 heightAnchor];
      v22 = [v21 constraintEqualToConstant:v17];

      *(v18 + 40) = v22;
      v23 = sub_13BC14().super.isa;

      [v3 addConstraints:v23];
    }

    sub_12BDE4();
  }

  else
  {
    sub_12BDE4();
  }
}

void sub_12BE00(uint64_t a1, double a2, float a3, double a4, double a5)
{
  v10 = sub_12BF1C();
  [v10 setShadowColor:a1];

  v11 = sub_12BF1C();
  [v11 setShadowRadius:a2];

  v12 = sub_12BF1C();
  *&v13 = a3;
  [v12 setShadowOpacity:v13];

  v14 = sub_12BF1C();
  [v14 setShadowOffset:{a4, a5}];

  v15 = sub_12BF1C();
  [v15 setMasksToBounds:0];
}

id sub_12BF1C()
{
  v3 = *(v1 + 3760);

  return [v0 v3];
}

id sub_12BF34(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26VisualAreaArtworkComponent_artworkContainer;
  v10 = sub_139E04();
  receiver = v10[1].receiver;
  v17 = &type metadata for VisualAreaImageView.SizeConstraints;
  v18 = &protocol witness table for VisualAreaImageView.SizeConstraints;
  v15[1] = *v10;
  v16 = receiver;
  v12 = objc_allocWithZone(sub_139F54());
  *&v4[v9] = sub_139F44();
  v15[0].receiver = v4;
  v15[0].super_class = type metadata accessor for VisualAreaArtworkComponent();
  v13 = [(objc_super *)v15 initWithFrame:a1, a2, a3, a4];
  sub_12C29C();

  return v13;
}

id sub_12C044()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for VisualAreaArtworkComponent();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26VisualAreaArtworkComponent_artworkContainer];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setFrame:{v4, v6, v8, v10}];
}

double sub_12C140(double a1, double a2, float a3, float a4)
{
  if (a3 != 1000.0)
  {
    a1 = 1.79769313e308;
  }

  if (a4 != 1000.0)
  {
    a2 = 1.79769313e308;
  }

  v7 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin26VisualAreaArtworkComponent_artworkContainer];
  v8 = [v4 contentView];
  [v7 measurementsWithFitting:v8 in:{a1, a2}];
  v10 = v9;

  return v10;
}

void sub_12C29C()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26VisualAreaArtworkComponent_artworkContainer]];

  v2 = [v0 contentView];
  [v2 setIsAccessibilityElement:1];

  v3 = [v0 contentView];
  [v3 setAccessibilityTraits:UIAccessibilityTraitNone];
}

id sub_12C3BC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VisualAreaArtworkComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_12C42C(void *a1)
{
  v2 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v2 absoluteDimension:v4];
  v6 = [v2 estimatedDimension:60.0];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

uint64_t type metadata accessor for VisualAreaArtworkComponentModel()
{
  result = qword_1A1E20;
  if (!qword_1A1E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_4948(&qword_19A420);
  __chkstk_darwin(v5 - 8);
  v57 = &v50 - v6;
  v71 = sub_13B584();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v50 - v10;
  v11 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for VisualAreaArtworkComponentModel();
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v62 = a2;
  v20 = v61;
  sub_6614();
  if (v20)
  {
    (*(v7 + 8))(a1, v71);
    sub_13B5A4();
    sub_9F94();
    return (*(v21 + 8))(a2);
  }

  v53 = v11;
  v54 = v14;
  v55 = inited;
  v61 = v7;
  v56 = a2;
  v23 = v68;
  *v18 = v67;
  *(v18 + 1) = v23;
  *(v18 + 2) = v69;
  v18[48] = v70;
  *&v64 = sub_BB310();
  *(&v64 + 1) = v24;
  v52 = v18;
  sub_13BFB4();
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v51 = v15;
    v25 = v57;
    sub_7738();
    if (sub_52E0(v25, 1, v53) != 1)
    {
      v35 = sub_12D118();
      inited(v35);
      v33 = v54;
      sub_92E4(v25, v54);
      v34 = v51;
      goto LABEL_8;
    }

    sub_928C(v25, &qword_19A420);
    v15 = v51;
  }

  inited = &enum case for JSONError.missingProperty(_:);
  v26 = sub_13BAB4();
  sub_12D0E4();
  sub_12CDF8(v27, v28);
  sub_9F18();
  *v29 = 0xD000000000000011;
  v29[1] = 0x800000000014E730;
  v29[2] = v15;
  (*(*(v26 - 8) + 104))(v29, enum case for JSONError.missingProperty(_:), v26);
  swift_willThrow();
  v30 = sub_12D118();
  enum case for JSONError.missingProperty(_:)(v30, v31);

  v32 = sub_13B7A4();
  v33 = v54;
  sub_53A8(v54, 1, 1, v32);
  v34 = v15;
LABEL_8:
  sub_92E4(v33, &v52[*(v34 + 24)]);
  v36 = v58;
  sub_13B594();
  v37 = sub_13B564();
  v38 = v56;
  if (v37)
  {
    v40 = sub_13BAB4();
    sub_12D0E4();
    sub_12CDF8(v41, v42);
    sub_9F18();
    *v43 = 0x6575676573;
    v43[1] = 0xE500000000000000;
    v43[2] = v34;
    (*(*(v40 - 8) + 104))(v43, enum case for JSONError.missingProperty(_:), v40);
    swift_willThrow();

    v44 = sub_12D0FC();
    inited(v44);
    (inited)(v36, v40);

    v66 = 0;
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    v39 = v55;
    sub_139BC4();

    v49 = sub_12D0FC();
    inited(v49);
    (inited)(v36, v39);
    sub_9414(&v63, &v64);
  }

  v45 = v52;
  v46 = &v52[*(v34 + 28)];
  v47 = v65;
  *v46 = v64;
  *(v46 + 1) = v47;
  *(v46 + 4) = v66;
  sub_12CE40(v45, v59);
  sub_13B5A4();
  sub_9F94();
  (*(v48 + 8))(v38);
  return sub_12CEA4(v45);
}

uint64_t sub_12CDF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12CE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAreaArtworkComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12CEA4(uint64_t a1)
{
  v2 = type metadata accessor for VisualAreaArtworkComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12CF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 24);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_12CFBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_12D048()
{
  sub_54D0();
  if (v0 <= 0x3F)
  {
    sub_5528();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_12D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [v3 bounds];
  Width = CGRectGetWidth(v24);
  swift_getKeyPath();
  sub_4948(&qword_1A1EA8);
  sub_13B5E4();

  if (v18)
  {
    if (Width <= 0.0)
    {
      v6 = 256.0;
    }

    else
    {
      v6 = Width;
    }

    v7 = &unk_14D6D0;
    v8 = vld1q_dup_f64(v7);
    v8.f64[0] = fmin(v6, 256.0);
    v9 = 0x404E000000000000;
  }

  else
  {
    v8 = v17;
    v9 = v16[1];
  }

  v22 = &type metadata for VisualAreaImageView.SizeConstraints;
  v23 = &protocol witness table for VisualAreaImageView.SizeConstraints;
  v20 = v9;
  v21 = v8;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin26VisualAreaArtworkComponent_artworkContainer];
  swift_getKeyPath();
  sub_13B5E4();

  sub_4B14(&v20, v16);
  swift_getKeyPath();
  sub_13B5E4();

  v15 = v13;
  v19 = v12;
  v14[0] = 4;
  (*(&stru_68.flags + (swift_isaMask & *v10)))(v14, a3);
  sub_116A64(v14);
  return sub_3C04(&v20);
}

uint64_t sub_12D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VisualAreaArtworkComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12D380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VisualAreaArtworkComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12D3E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_12D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_12D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_12D534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_12D640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WelcomeCarousel()
{
  result = qword_1A1F10;
  if (!qword_1A1F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12D71C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = sub_4948(&qword_19A420);
  __chkstk_darwin(v4 - 8);
  v6 = &v47[-v5];
  v7 = sub_13B584();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v49 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v14);
  v48 = &v47[-v15];
  v16 = type metadata accessor for WelcomeCarousel();
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_139BD4();
  inited = swift_initStackObject();
  v60 = a1;
  v55 = a1;
  sub_9DB8(0x736C6C6563, 0xE500000000000000, v16, sub_12DD80, v54, v20, v21, v22);
  if (v2)
  {

    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  *v19 = v24;
  *&v57 = sub_BB310();
  *(&v57 + 1) = v25;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738();
  if (sub_52E0(v6, 1, v13) == 1)
  {
    sub_928C(v6, &qword_19A420);
LABEL_7:
    v26 = sub_13BAB4();
    sub_12E0D0();
    sub_12DDAC(v27, v28);
    sub_18B70();
    *v29 = 0xD000000000000011;
    v29[1] = 0x800000000014E730;
    v29[2] = v16;
    (*(*(v26 - 8) + 104))(v29, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    v30 = sub_12E0E8();
    v31(v30);

    v32 = sub_13B7A4();
    v33 = v48;
    sub_53A8(v48, 1, 1, v32);
    goto LABEL_9;
  }

  v34 = sub_12E0E8();
  v35(v34);
  v33 = v48;
  sub_92E4(v6, v48);
LABEL_9:
  sub_92E4(v33, v19 + *(v16 + 24));
  v36 = v49;
  sub_13B594();
  if (sub_13B564())
  {
    v37 = sub_13BAB4();
    sub_12E0D0();
    sub_12DDAC(v38, v39);
    sub_18B70();
    *v40 = 0x6575676573;
    v40[1] = 0xE500000000000000;
    v40[2] = v16;
    (*(*(v37 - 8) + 104))(v40, enum case for JSONError.missingProperty(_:), v37);
    swift_willThrow();

    v41 = sub_12E108();
    MEMORY[0x6575676572](v41);
    MEMORY[0x6575676572](v36, v12);

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
  }

  else
  {
    sub_139BC4();

    v46 = sub_12E108();
    MEMORY[0x6575676572](v46);
    MEMORY[0x6575676572](v36, v12);
    sub_9414(&v56, &v57);
  }

  v42 = v19 + *(v16 + 28);
  v43 = v58;
  *v42 = v57;
  *(v42 + 1) = v43;
  *(v42 + 4) = v59;
  sub_12DDF4(v19, v50);
  sub_13B5A4();
  sub_9F94();
  (*(v44 + 8))(v60);
  return sub_12DE58(v19);
}

uint64_t sub_12DD80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39CD8();
  *a1 = result;
  return result;
}

uint64_t sub_12DDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12DDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeCarousel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12DE58(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeCarousel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12DEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 24);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_12DF70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_12DFFC()
{
  sub_248F4(319, &qword_1A1F20, &unk_1A1F28);
  if (v0 <= 0x3F)
  {
    sub_54D0();
    if (v1 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_12E0E8()
{
  result = v0;
  *(v1 - 280) = *(*(v1 - 232) + 8);
  return result;
}

uint64_t sub_12E11C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  *a6 = swift_getKeyPath();
  sub_4948(&qword_19AC58);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for WelcomeCarouselCellView();
  v14 = v13[5];
  *(a6 + v14) = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  v15 = (a6 + v13[12]);
  type metadata accessor for BundleDetailComponentModel();
  swift_allocObject();
  v39 = sub_3D600();
  sub_13B224();
  v16 = v35;
  v17 = v36;
  *v15 = v35;
  v15[1] = v17;
  sub_12F38C(a1, a6 + v13[6], type metadata accessor for BundleDetail);
  *(a6 + v13[8]) = a2;
  *(a6 + v13[7]) = a7;
  *(a6 + v13[10]) = a3;
  *(a6 + v13[9]) = a4;
  *(a6 + v13[11]) = a5;
  v35 = v16;
  v36 = v17;

  sub_4948(&qword_1A1F60);
  sub_13B234();
  v18 = *a1;
  if (!*a1)
  {
    v19 = [objc_opt_self() ams_componentBackground];
    v18 = 0;
  }

  v20 = v18;
  v21 = sub_13B1E4();
  sub_3C790(v21);

  sub_1300B8();
  sub_9D58((a1 + 2), &v35, &qword_19B770);
  sub_3CAF0(&v35);

  sub_1300B8();

  sub_3CC90(v22);

  sub_1300B8();

  sub_3CDB8(v23);

  sub_1300B8();
  sub_3CEE0(a5);

  sub_1300B8();

  sub_3D008(v24);

  sub_1300B8();
  sub_9D58((a1 + 25), &v35, &qword_19E960);
  v25 = v37;
  if (v37)
  {
    v26 = v38;
    sub_162F0(&v35, v37);
    v27 = (*(v26 + 72))(v25, v26);
    v25 = v28;
    sub_3C04(&v35);
  }

  else
  {
    sub_928C(&v35, &qword_19E960);
    v27 = 0;
  }

  sub_3D2E8(v27, v25);

  sub_1300B8();

  v29 = a1[33];
  v30 = a1[34];
  sub_162F0(a1 + 30, v29);
  v31 = v30[9](v29, v30);
  sub_3D4D8(v31, v32);

  return sub_3AB60(a1);
}

uint64_t sub_12E4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_13AE04();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WelcomeCarouselCellView();
  v6 = v5 - 8;
  v48 = *(v5 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_4948(&qword_1A2028);
  sub_9F94();
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v49 = sub_4948(&qword_1A2030);
  sub_9F94();
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = (v1 + *(v6 + 56));
  v17 = *v15;
  v16 = v15[1];
  *&v57 = v17;
  *(&v57 + 1) = v16;
  sub_4948(&qword_1A1F60);
  sub_13B234();
  v18 = v55;
  v19 = *(v1 + *(v6 + 48));
  KeyPath = swift_getKeyPath();
  *&v11[*(type metadata accessor for BundleDetailComponentView(0) + 24)] = KeyPath;
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  *v11 = v18;
  v11[8] = (v19 & 1) == 0;
  sub_13B3D4();
  sub_13A834();
  v21 = &v11[*(sub_4948(&qword_1A2038) + 36)];
  v22 = v58;
  *v21 = v57;
  *(v21 + 1) = v22;
  *(v21 + 2) = v59;
  sub_130108();
  v23 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v48 = v7;
  v24 = swift_allocObject();
  sub_12F3F0(v8, v24 + v23);
  v25 = sub_13B3C4();
  v27 = v26;
  v28 = &v11[*(sub_4948(&qword_1A2040) + 36)];
  *v28 = sub_12F454;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v27;
  v29 = [objc_opt_self() ams_primaryBackground];
  v30 = sub_13B1E4();
  v31 = sub_13B3C4();
  v32 = &v11[*(v47 + 36)];
  *v32 = v30;
  *(v32 + 4) = 256;
  *(v32 + 2) = v31;
  *(v32 + 3) = v33;
  sub_13B3F4();
  v54 = v2;
  sub_4948(&qword_1A2048);
  sub_12F4DC();
  sub_12F708();
  sub_13B144();

  sub_928C(v11, &qword_1A2028);
  if (qword_19A200 != -1)
  {
    swift_once();
  }

  v34 = qword_1B2C60;
  v35 = &v14[*(v49 + 36)];
  v36 = *(sub_13A9A4() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  sub_13ABA4();
  sub_9F94();
  (*(v38 + 104))(v35 + v36, v37);
  *v35 = v34;
  v35[1] = v34;
  *(v35 + *(sub_4948(&qword_19AAB0) + 36)) = 256;
  sub_130108();
  v39 = swift_allocObject();
  sub_12F3F0(v8, v39 + v23);
  v40 = v50;
  sub_13ADF4();
  sub_4948(&qword_19CD30);
  sub_12FB0C();
  v41 = sub_13A9C4();
  sub_1300F0();
  v44 = sub_12FC2C(v42, v43);
  v55 = v41;
  v56 = v44;
  sub_1300D8();
  swift_getOpaqueTypeConformance2();
  sub_13B0E4();

  (*(v52 + 8))(v40, v53);
  return sub_12FC74(v14);
}

uint64_t sub_12EAA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_13B1A4();
  sub_4948(&qword_1A20B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 32) = *(a1 + *(type metadata accessor for WelcomeCarouselCellView() + 32));
  sub_13A844();
  *(inited + 40) = v6;
  result = sub_13BB14();
  *a2 = v4;
  a2[1] = result;
  return result;
}

double sub_12EB58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WelcomeCarouselCellView();
  sub_13B3C4();
  sub_13A834();
  v4 = sub_4948(&qword_1A20A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_4948(&qword_1A2048) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_12EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WelcomeCarouselCellView();
  if (*(a3 + *(v4 + 36)) == 1 && (*(a3 + *(v4 + 40)) & 1) == 0)
  {
    sub_13AD44();
  }

  sub_13B474();
  sub_13A9C4();
  sub_12FC2C(&qword_19CD98, &type metadata accessor for EmptyVisualEffect);
  return sub_13A824();
}

uint64_t sub_12ED2C()
{
  result = sub_13BB14();
  qword_1B2C58 = result;
  return result;
}

uint64_t sub_12EDD4@<X0>(void *a1@<X8>)
{
  if (qword_19A1F8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1B2C58;
}

uint64_t type metadata accessor for WelcomeCarouselCellView()
{
  result = qword_1A1FC0;
  if (!qword_1A1FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12EEC4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  type metadata accessor for BundleDetail();
  sub_17250();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[12]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_12F01C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for BundleDetail();
      sub_17250();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[12]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  sub_53A8(v11, a2, a2, v10);
}

void sub_12F15C()
{
  sub_12F30C(319, &qword_19A9E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_12F30C(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BundleDetail();
      if (v2 <= 0x3F)
      {
        sub_12F30C(319, &qword_1A1FD0, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_12F30C(319, &unk_1A1FD8, type metadata accessor for BundleDetailComponentModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_12F30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_12F38C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_12F3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeCarouselCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12F454@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeCarouselCellView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_12EAA4(v4, a1);
}

unint64_t sub_12F4DC()
{
  result = qword_1A2050;
  if (!qword_1A2050)
  {
    sub_558C(&qword_1A2028);
    sub_12F594();
    sub_CBC0(&qword_1A2080, &qword_1A2088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2050);
  }

  return result;
}

unint64_t sub_12F594()
{
  result = qword_1A2058;
  if (!qword_1A2058)
  {
    sub_558C(&qword_1A2040);
    sub_12F64C();
    sub_CBC0(&qword_1A2070, &qword_1A2078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2058);
  }

  return result;
}

unint64_t sub_12F64C()
{
  result = qword_1A2060;
  if (!qword_1A2060)
  {
    sub_558C(&qword_1A2038);
    sub_12FC2C(&qword_1A2068, type metadata accessor for BundleDetailComponentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2060);
  }

  return result;
}

unint64_t sub_12F708()
{
  result = qword_1A2090;
  if (!qword_1A2090)
  {
    sub_558C(&qword_1A2048);
    sub_CBC0(&qword_1A2098, &qword_1A20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2090);
  }

  return result;
}

uint64_t sub_12F7C0()
{
  v1 = type metadata accessor for WelcomeCarouselCellView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);

  if (*(v9 + 40))
  {
    sub_3C04(v9 + 16);
    sub_3C04(v9 + 56);

    if (*(v9 + 168))
    {
      v10 = v9 + 120;
    }

    else
    {

      if (!*(v9 + 120))
      {
        goto LABEL_13;
      }

      v10 = v9 + 128;
    }

    sub_3C04(v10);
  }

LABEL_13:

  if (*(v9 + 224))
  {
    sub_3C04(v9 + 200);
  }

  sub_3C04(v9 + 240);
  sub_3C04(v9 + 280);
  v11 = type metadata accessor for BundleDetail();
  v12 = *(v11 + 52);
  v13 = sub_13B7A4();
  if (!sub_52E0(v9 + v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  v14 = v9 + *(v11 + 56);
  if (*(v14 + 24))
  {
    sub_3C04(v14);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_12FA84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WelcomeCarouselCellView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_12EC38(a1, a2, v6);
}

unint64_t sub_12FB0C()
{
  result = qword_1A20A8;
  if (!qword_1A20A8)
  {
    sub_558C(&qword_1A2030);
    sub_558C(&qword_1A2028);
    sub_558C(&qword_1A2048);
    sub_12F4DC();
    sub_12F708();
    swift_getOpaqueTypeConformance2();
    sub_CBC0(&qword_19AB20, &qword_19AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A20A8);
  }

  return result;
}

uint64_t sub_12FC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12FC74(uint64_t a1)
{
  sub_4948(&qword_1A2030);
  sub_9F94();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_12FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_12FD48(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_12FD48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_7FB50(v34);
  v6 = v34[1];
  v7 = v34[3];
  v8 = v34[4];
  v29 = v34[5];
  v30 = v34[0];
  v9 = (v34[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v13 = *(*(v30 + 56) + v12);
      v33[0] = *(*(v30 + 48) + v12);
      v33[1] = v13;
      v29(v32, v33);
      v14 = v32[0];
      v15 = v32[1];
      v16 = *a5;
      v18 = sub_7C4E8(v32[0]);
      v19 = v16[2];
      v20 = (v17 & 1) == 0;
      if (__OFADD__(v19, v20))
      {
        break;
      }

      v21 = v17;
      if (v16[3] >= v19 + v20)
      {
        if ((a4 & 1) == 0)
        {
          sub_4948(&qword_1A20B8);
          sub_13C084();
        }
      }

      else
      {
        sub_7CF68();
        v22 = sub_7C4E8(v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_23;
        }

        v18 = v22;
      }

      v8 &= v8 - 1;
      v24 = *a5;
      if (v21)
      {
        *(v24[7] + 8 * v18) = v15;
      }

      else
      {
        v24[(v18 >> 6) + 8] |= 1 << v18;
        *(v24[6] + 8 * v18) = v14;
        *(v24[7] + 8 * v18) = v15;
        v25 = v24[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_22;
        }

        v24[2] = v27;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_7D220();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_13C174();
  __break(1u);
  return result;
}

double sub_12FFA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_7C890(&v5, *a1, *(a1 + 8));
  result = v5;
  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_12FFE4()
{
  sub_558C(&qword_1A2030);
  sub_558C(&qword_19CD30);
  sub_12FB0C();
  sub_13A9C4();
  sub_1300F0();
  sub_12FC2C(v0, v1);
  sub_1300D8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1300B8()
{

  return sub_13B234();
}

uint64_t sub_130108()
{

  return sub_12F38C(v0, v1, type metadata accessor for WelcomeCarouselCellView);
}

uint64_t sub_130134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
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

  return *&v2;
}

uint64_t sub_130178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for BundleDetail();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24WelcomeCarouselComponent_model;
  swift_getKeyPath();

  sub_4948(&qword_1A23E0);
  sub_13B5E4();

  v11 = v28;
  if (v28)
  {
    v12 = *(v28 + 16);
    if (v12)
    {
      v24[1] = v10;
      v25 = v3;
      v26 = a3;
      v27 = _swiftEmptyArrayStorage;
      sub_4D06C(0, v12, 0);
      v13 = v27;
      v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v15 = v11 + v14;
      v16 = *(v7 + 72);
      do
      {
        sub_3AAFC(v15, v9);
        v27 = v13;
        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          sub_4D06C(v17 > 1, v18 + 1, 1);
          v13 = v27;
        }

        v13[2] = v18 + 1;
        sub_131B68(v9, v13 + v14 + v18 * v16);
        v15 += v16;
        --v12;
      }

      while (v12);

      v4 = v25;
      a3 = v26;
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1307F8(v13);

  sub_130AC4(v19);

  v20 = sub_130748();
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_130400(v21, 0.0);
  sub_130D34(v22);

  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24WelcomeCarouselComponent_objectGraph) = a3;
}

uint64_t sub_130400(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_13BC44();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_13F2A0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_1304B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for WelcomeCarouselComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_130518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for WelcomeCarouselComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_130580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_1305D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_130650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1306CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_130748()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v0, v1);
  sub_8078C();
}

uint64_t sub_13082C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

double sub_130868()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v1, v2);
  sub_8078C();

  return *(v0 + 24);
}

void sub_1308EC(uint64_t a1@<X8>)
{
  *a1 = sub_130868();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_130948()
{
  sub_3007C();
  v7.origin.x = v4;
  v7.origin.y = v3;
  v7.size.width = v2;
  v7.size.height = v1;
  result = CGRectEqualToRect(*(v0 + 24), v7);
  if (result)
  {
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    *(v0 + 40) = v2;
    *(v0 + 48) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_131EA4();
  }

  return result;
}

uint64_t sub_130A14()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v0, v1);
  sub_8078C();
}

uint64_t sub_130AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  sub_131884();

  return a4(a1);
}

uint64_t sub_130B6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;
}

uint64_t sub_130BA8()
{
  sub_3007C();
  *(v0 + 16) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  *(v0 + 88) = 0;
  sub_1398A4();
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  return v0;
}

uint64_t sub_130C08(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_131EA4();
  }

  return result;
}

uint64_t sub_130CA0(uint64_t result)
{
  if (*(v1 + 72) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_131EA4();
  }

  return result;
}

uint64_t sub_130D34(uint64_t a1)
{
  if (sub_131C78(*(v1 + 80), a1))
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_73D6C();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    sub_131EA4();
  }
}

uint64_t sub_130E08(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_73D6C();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_131EA4();
  }

  return result;
}

uint64_t sub_130EA0()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v1, v2);
  sub_8078C();

  return *(v0 + 64);
}

uint64_t sub_130F20()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v1, v2);
  sub_8078C();

  return *(v0 + 72);
}

uint64_t sub_130FA4(uint64_t a1)
{
  sub_131044();
  sub_73DE8();
  v3 = (*(v2 + 192))();

  if (v3 < 2 || (result = sub_130EA0(), (result & 1) != 0))
  {
    sub_130CA0(a1);

    return sub_130C08(0);
  }

  return result;
}

uint64_t sub_131044()
{
  if (sub_130748())
  {
  }

  v8.origin.x = sub_130868();
  CGRectGetWidth(v8);
  sub_139D84();
  swift_allocObject();
  v0 = sub_139D74();
  v1 = *(*v0 + 192);
  if (!v1() || (v2 = (v1)(), v2 == 2))
  {
    v2 = (*(*v0 + 320))(0x404E000000000000, 0);
  }

  if ((v1)(v2) == 1)
  {
    (*(*v0 + 152))(0);
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
  {
    v5 = 0x4056000000000000;
  }

  else
  {
    v9.origin.x = sub_130868();
    CGRectGetWidth(v9);
    sub_B84DC();
    v5 = v6;
  }

  (*(*v0 + 296))(v5, 0);
  return v0;
}

uint64_t sub_131238()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v0, v1);
  sub_8078C();
}

uint64_t sub_1312E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
}

uint64_t sub_131324()
{
  v0 = sub_1315B8();
  v1 = sub_131238();
  if (v0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      v4 = 0.0;
      do
      {
        v5 = *v3++;
        v4 = v4 + v5;
        --v2;
      }

      while (v2);
    }

    return sub_1316C0();
  }

  else
  {
    sub_130134(v1);
  }
}

double sub_1313EC()
{
  v0 = sub_1314C0();
  sub_131044();
  sub_73DE8();
  v2 = (*(v1 + 376))();

  if (v0)
  {
    sub_131044();
    sub_73DE8();
    v4 = (*(v3 + 360))();

    return v2 + v4 * -0.08 * 0.5 + 2.0;
  }

  return v2;
}

uint64_t sub_1314C0()
{
  sub_131044();
  sub_73DE8();
  v1 = (*(v0 + 192))();

  if (v1 > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1315B8() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_131538()
{
  swift_getKeyPath();
  sub_131E8C();
  sub_131C30(v1, v2);
  sub_8078C();

  return *(v0 + 88);
}

uint64_t sub_1315B8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_13BE04();
  if (v0)
  {
    return 1;
  }

  return sub_131538();
}

double sub_131654()
{
  v0 = sub_1316F8();
  result = 0.0;
  if (v0)
  {
    sub_131044();
    sub_73DE8();
    v3 = (*(v2 + 192))();

    result = 35.0;
    if ((v3 & 0xFE) != 0)
    {
      return 15.0;
    }
  }

  return result;
}

uint64_t sub_1316C0()
{
  v0 = sub_130748();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1316F8()
{
  if (sub_1316C0() < 2)
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1315B8() ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_13172C(uint64_t a1)
{
  result = sub_130F20();
  if (result != a1)
  {
    sub_130C08(1);

    return sub_130FA4(a1);
  }

  return result;
}

uint64_t sub_131780()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 10.0;
  }

  qword_1B2C60 = *&v6;
  return result;
}

uint64_t sub_131884()
{
  sub_131E8C();
  sub_131C30(v0, v1);
  return sub_139864();
}

uint64_t sub_13192C()
{

  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29WelcomeCarouselComponentModel___observationRegistrar;
  v2 = sub_1398B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1319A4()
{
  sub_13192C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WelcomeCarouselComponentModel()
{
  result = qword_1A20F0;
  if (!qword_1A20F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_131A50()
{
  result = sub_1398B4();
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

uint64_t sub_131B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleDetail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_131BCC()
{
  sub_3DE78();
  result = sub_131538();
  *v0 = result & 1;
  return result;
}

uint64_t sub_131C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_131C78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_131CD4()
{
  sub_3DE78();
  result = sub_131238();
  *v0 = result;
  return result;
}

uint64_t sub_131D1C()
{
  sub_3DE78();
  result = sub_130F20();
  *v0 = result;
  return result;
}

uint64_t sub_131D78()
{
  sub_3DE78();
  result = sub_130EA0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_131DDC()
{
  sub_3DE78();
  result = sub_130A14();
  *v0 = result;
  return result;
}

__n128 sub_131E2C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_131E44()
{
  sub_3DE78();
  result = sub_130748();
  *v0 = result;
  return result;
}

uint64_t sub_131EA4()
{

  return sub_131884();
}

id sub_131EBC()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24WelcomeCarouselComponent_objectGraph) = 0;
  type metadata accessor for WelcomeCarouselComponentModel();
  swift_allocObject();
  sub_3001C();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24WelcomeCarouselComponent_model) = sub_130BA8();
  v6 = type metadata accessor for WelcomeCarouselComponent();
  v1 = sub_3001C();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  sub_132044();

  return v4;
}

uint64_t sub_131F94()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WelcomeCarouselComponent();
  objc_msgSendSuper2(&v3, "layoutSubviews");

  v1 = sub_132478();
  sub_130E08(v1 & 1);
}

void sub_132044()
{
  type metadata accessor for WelcomeCarouselComponentModel();

  sub_13B224();
  v0 = objc_allocWithZone(sub_4948(&qword_1A2428));
  v1 = sub_13AC14();
  v2 = sub_13273C();
  v3 = v1;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v2 addSubview:v4];

  v6 = sub_132724();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = sub_132724();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = sub_13273C();
  v12 = [v11 topAnchor];

  v13 = sub_3F140();
  sub_75088();

  v14 = sub_132724();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = sub_13273C();
  v18 = [v17 bottomAnchor];

  v19 = sub_3F140();
  sub_75088();

  v20 = sub_132724();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 leftAnchor];

  v23 = sub_13273C();
  v24 = [v23 leftAnchor];

  v25 = sub_3F140();
  sub_75088();

  v26 = sub_132724();
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  v28 = [v26 rightAnchor];

  v29 = sub_13273C();
  v30 = [v29 rightAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  sub_75088();

  v32 = sub_132724();
  if (v32)
  {
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    return;
  }

LABEL_15:
  __break(1u);
}

double sub_1323D8(double a1)
{

  sub_131324();

  return a1;
}

id sub_132478()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == &dword_0 + 1)
  {
    return &dword_0 + 1;
  }

  return sub_132500();
}

id sub_132500()
{
  v1 = v0;
  result = [v0 window];
  if (result)
  {
    v3 = result;
    v4 = [result rootViewController];
    if (v4)
    {
      v5 = v4;
      [v1 bounds];
      [v1 convertRect:v3 toCoordinateSpace:?];
      MaxY = CGRectGetMaxY(v18);
      result = [v5 view];
      if (result)
      {
        v7 = result;
        v8 = [result safeAreaLayoutGuide];

        [v8 layoutFrame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v19.origin.x = v10;
        v19.origin.y = v12;
        v19.size.width = v14;
        v19.size.height = v16;
        v17 = CGRectGetMaxY(v19);

        return (v17 <= MaxY);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_132680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeCarouselComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_132724()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_13273C()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

double sub_132754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v4 = sub_1315B8();

  sub_136E14();
  if (v4)
  {
    type metadata accessor for WelcomeCarouselComponentModel();
    sub_13B224();
  }

  else
  {
    type metadata accessor for CGRect(0);
    sub_13BB14();
    sub_13289C();
  }

  sub_135E4C();
  sub_135EA0();
  sub_13ACD4();
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_13289C()
{
  sub_13B224();
  type metadata accessor for WelcomeCarouselComponentModel();
  sub_13B224();
  return v1;
}

uint64_t sub_132918()
{
  sub_136E08();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  *v3 = sub_135FDC;
  v3[1] = v4;
  v3[2] = sub_135FE4;
  v3[3] = v5;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1329B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_13ABD4();
  *(a4 + 8) = 0x402C000000000000;
  *(a4 + 16) = 0;
  sub_4948(&qword_1A2470);
  return sub_132A28(a2, a3, a1);
}

uint64_t sub_132A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_13A864();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v14 = a1;
  v15 = a2;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v9 = sub_1316C0();

  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = v9;
    swift_getKeyPath();
    (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    (*(v7 + 32))(v12 + v11, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    sub_4948(&qword_19AC80);
    sub_4948(&qword_1A2478);
    sub_16618();
    sub_13613C();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_132C40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55[1] = a4;
  v60 = a5;
  v8 = type metadata accessor for WelcomeCarouselCellView();
  __chkstk_darwin(v8 - 8);
  v62 = (v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_4948(&qword_1A2488);
  __chkstk_darwin(v58);
  v11 = v55 - v10;
  v59 = sub_4948(&qword_1A24A0);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v55 - v12;
  v13 = type metadata accessor for BundleDetail();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = (v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  __chkstk_darwin(v20);
  v61 = v55 - v21;
  v22 = *a1;
  v63 = a2;
  v64 = a3;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v23 = sub_130748();

  if (!v23)
  {
    v54 = 1;
    v53 = v59;
    v52 = v60;
    return sub_53A8(v52, v54, 1, v53);
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < *(v23 + 16))
  {
    sub_3AAFC(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v19);

    v25 = v61;
    sub_136284();
    sub_3AAFC(v25, v16);
    sub_13A844();
    v27 = v26;
    v63 = a2;
    v64 = a3;
    sub_13B234();
    v28 = sub_131044();

    v30 = (*(*v28 + 384))(v29);

    if (v27 - (v30 + v30) > 0.0)
    {
      v31 = v27 - (v30 + v30);
    }

    else
    {
      v31 = 0.0;
    }

    v63 = a2;
    v64 = a3;
    sub_13B234();
    v32 = sub_1315B8();

    v63 = a2;
    v64 = a3;
    sub_13B234();
    v33 = sub_1314C0();

    v63 = a2;
    v64 = a3;
    sub_13B234();
    v34 = sub_130A14();

    sub_12E11C(v16, v22, v32 & 1, v33 & 1, v34, v62, v31);
    sub_4948(&qword_19AAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_13E650;
    v36 = sub_13AEE4();
    *(inited + 32) = v36;
    v37 = sub_13AF04();
    *(inited + 33) = v37;
    v38 = sub_13AEF4();
    sub_13AEF4();
    if (sub_13AEF4() != v36)
    {
      v38 = sub_13AEF4();
    }

    sub_13AEF4();
    if (sub_13AEF4() != v37)
    {
      v38 = sub_13AEF4();
    }

    v63 = a2;
    v64 = a3;
    sub_13B234();
    v39 = sub_131044();

    (*(*v39 + 384))(v40);

    sub_13A6E4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_136284();
    v49 = &v11[*(v58 + 36)];
    *v49 = v38;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = swift_allocObject();
    v50[2] = a2;
    v50[3] = a3;
    v50[4] = v22;
    sub_1361FC();

    v51 = v56;
    sub_13B054();

    sub_7F240(v11, &qword_1A2488);
    sub_3AB60(v61);
    v53 = v59;
    v52 = v60;
    (*(v57 + 32))(v60, v51, v59);
    v54 = 0;
    return sub_53A8(v52, v54, 1, v53);
  }

  __break(1u);
  return result;
}

uint64_t sub_133298()
{
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_133314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_1A2448);
  sub_13B234();
  sub_13172C(a3);
}

uint64_t sub_133384(uint64_t *a1)
{
  v1 = *a1;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v2 = sub_130748();

  if (v2)
  {
    sub_13B234();
    v4 = *(v2 + 16);

    if (v4)
    {
      sub_4D00C(0, v4, 0);
      for (i = 0; i != v4; ++i)
      {
        v6 = 0;
        if (*(v1 + 16))
        {
          v7 = sub_7C4E8(i);
          if (v8)
          {
            v6 = *(*(v1 + 56) + 8 * v7);
          }
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_4D00C((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        _swiftEmptyArrayStorage[v10 + 4] = v6;
      }
    }

    sub_130D34(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1334F4()
{
  v0 = sub_13ACF4();
  sub_7E5D8(v0, qword_1A2430);
  sub_4910(v0, qword_1A2430);
  return sub_13AD84();
}

void *sub_133574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_13ABD4();
  if (qword_199F90 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1B2A80;
  sub_13373C(a1, a2, a3, a4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  sub_136310();
  sub_7F240(v24, &qword_1A24A8);
  memcpy(__src, __dst, 0x58uLL);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  v13 = sub_13AED4();
  sub_13A6E4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = v11;
  result = memcpy((a5 + 40), __src, 0x58uLL);
  *(a5 + 128) = sub_136378;
  *(a5 + 136) = v12;
  *(a5 + 144) = v13;
  *(a5 + 152) = v15;
  *(a5 + 160) = v17;
  *(a5 + 168) = v19;
  *(a5 + 176) = v21;
  *(a5 + 184) = 0;
  return result;
}

uint64_t sub_13373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a4;
  v26 = a3;
  v27 = a4;

  sub_4948(&qword_1A2448);
  sub_13B234();
  v10 = sub_1316C0();

  if (v10 < 2)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    sub_13B254();
    swift_getKeyPath();
    sub_4948(&qword_1A24B8);
    sub_13B2E4();

    v19 = a4;
    v20 = a3;
    v18 = __src[2];

    sub_13B234();
    sub_1316C0();

    v23 = a3;
    v24 = a4;
    sub_13B234();
    v11 = v22;
    sub_13B224();
    v12 = a3;
    v13 = v24;
    v14 = 0x4046000000000000;
    v15 = 0x4024000000000000;
    v16 = 0x4020000000000000;
  }

  __src[0] = v20;
  __src[1] = v19;
  __src[2] = v18;
  __src[3] = v12;
  __src[4] = v13;
  __src[5] = v11;
  __src[6] = v16;
  __src[7] = v15;
  __src[8] = v14;
  *a5 = sub_136384;
  a5[1] = v9;
  memcpy(a5 + 2, __src, 0x48uLL);
  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v12;
  v30 = v13;
  v31 = v11;
  v32 = v16;
  v33 = v15;
  v34 = v14;

  sub_136390(__src, &v23);
  sub_7F240(&v26, &qword_1A24B0);
}

uint64_t sub_1339BC@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v60 = a1;
  v67 = a5;
  v57 = sub_13ADB4();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4948(&qword_1A24C0);
  *&v61 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v52 = sub_4948(&qword_1A24C8);
  *&v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v51 - v13;
  v59 = sub_4948(&qword_1A24D0);
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v51 = &v51 - v15;
  v63 = sub_4948(&qword_1A24D8);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v51 - v16;
  v66 = sub_4948(&qword_1A24E0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v51 - v17;
  sub_13AE74();
  v68 = a1;
  v69 = a2;
  v18 = a3;
  v70 = a3;
  v71 = a4;
  sub_4948(&qword_1A24E8);
  sub_136460();
  sub_13A704();
  v80 = a3;
  v81 = a4;
  sub_4948(&qword_1A2448);
  sub_13B234();
  sub_1316C0();

  v19 = sub_7FAA8(&qword_1A2548, &qword_1A24C0);
  sub_13B084();
  (*(v61 + 8))(v12, v10);
  v80 = v60;
  v81 = a2;
  sub_4948(&qword_1A2550);
  sub_13B234();
  v20 = v72;
  v60 = v18;
  v80 = v18;
  v81 = a4;
  v21 = v52;
  *&v61 = a4;
  v22 = v51;
  sub_13B234();
  v80 = v20;
  v81 = v72;
  v72 = v10;
  v73 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_136734();
  sub_13B114();

  v25 = v54;

  (*(v53 + 8))(v14, v21);
  sub_13ADA4();
  sub_4948(&qword_19D7D8);
  inited = swift_initStackObject();
  v53 = xmmword_13E650;
  *(inited + 16) = xmmword_13E650;
  LOBYTE(v10) = sub_13AE94();
  *(inited + 32) = v10;
  v27 = sub_13AE74();
  *(inited + 33) = v27;
  sub_13AE84();
  sub_13AE84();
  if (sub_13AE84() != v10)
  {
    sub_13AE84();
  }

  sub_13AE84();
  if (sub_13AE84() != v27)
  {
    sub_13AE84();
  }

  v80 = v21;
  v81 = &unk_18F728;
  v82 = OpaqueTypeConformance2;
  v83 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v59;
  sub_13B0D4();
  (*(v56 + 8))(v25, v57);
  (*(v55 + 8))(v22, v30);
  v72 = v60;
  v73 = v61;
  sub_13B254();
  v31 = v80;
  v32 = v81;
  v33 = v82;
  swift_getKeyPath();
  v72 = v31;
  v73 = v32;
  v74 = v33;
  sub_4948(&qword_1A24B8);
  sub_13B2E4();

  v61 = v78;
  v34 = v79;

  v76 = v61;
  v77 = v34;
  sub_13B304();
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v75 = v83;
  sub_13B474();
  *&v78 = v30;
  *(&v78 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v35 = v64;
  v36 = v63;
  sub_13B094();

  (*(v62 + 8))(v29, v36);
  sub_4948(&qword_19AAA0);
  v37 = swift_initStackObject();
  *(v37 + 16) = v53;
  LOBYTE(v32) = sub_13AEE4();
  *(v37 + 32) = v32;
  v38 = sub_13AF04();
  *(v37 + 33) = v38;
  v39 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v32)
  {
    v39 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v38)
  {
    v39 = sub_13AEF4();
  }

  sub_13A6E4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v67;
  (*(v65 + 32))(v67, v35, v66);
  result = sub_4948(&qword_1A2560);
  v50 = v48 + *(result + 36);
  *v50 = v39;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  return result;
}

uint64_t sub_1343AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v9 = sub_4948(&qword_1A2520);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v53 - v11);
  v54 = sub_4948(&qword_1A2508);
  __chkstk_darwin(v54);
  v14 = &v53 - v13;
  v15 = sub_4948(&qword_1A2568);
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v55 = &v53 - v16;
  v61 = sub_4948(&qword_1A24F8);
  __chkstk_darwin(v61);
  v18 = &v53 - v17;
  v19 = sub_4948(&qword_1A2570);
  v62 = *(v19 - 8);
  v63 = v19;
  __chkstk_darwin(v19);
  v60 = &v53 - v20;
  v59 = sub_4948(&qword_1A24E8);
  __chkstk_darwin(v59);
  v58 = &v53 - v21;
  v67 = a3;
  v68 = a4;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v22 = sub_1313EC();

  *v12 = sub_13AB44();
  v12[1] = v22;
  *(v12 + 16) = 0;
  sub_4948(&qword_1A2578);
  v65 = a1;
  v66 = a2;
  sub_1349DC(a1, a2, a3, a4);
  v23 = sub_13AEC4();
  sub_13A6E4();
  v24 = v12 + *(v10 + 44);
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = sub_13AED4();
  v30 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v29)
  {
    v30 = sub_13AEF4();
  }

  v67 = a3;
  v68 = a4;
  sub_13B234();
  v31 = sub_1316F8();

  if (v31)
  {
    v67 = a3;
    v68 = a4;
    sub_13B234();
    sub_131654();
  }

  sub_13A6E4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_136794();
  v40 = &v14[*(v54 + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_136B88(&qword_1A2510, &qword_1A2508, &unk_14DF58, sub_13667C);
  v41 = v55;
  sub_13B0F4();
  sub_7F240(v14, &qword_1A2508);
  v42 = [objc_opt_self() ams_clear];
  v43 = sub_13B1E4();
  v44 = sub_13AEB4();
  (*(v56 + 32))(v18, v41, v57);
  v45 = &v18[*(v61 + 36)];
  *v45 = v43;
  v45[8] = v44;
  if (qword_19A208 != -1)
  {
    swift_once();
  }

  v46 = sub_13ACF4();
  sub_4910(v46, qword_1A2430);
  sub_136554();
  v47 = v60;
  sub_13B0B4();
  sub_7F240(v18, &qword_1A24F8);
  v48 = swift_allocObject();
  v49 = v66;
  *(v48 + 2) = v65;
  *(v48 + 3) = v49;
  *(v48 + 4) = a3;
  *(v48 + 5) = a4;
  v50 = v58;
  (*(v62 + 32))(v58, v47, v63);
  v51 = &v50[*(v59 + 36)];
  *v51 = sub_136788;
  v51[1] = v48;
  sub_136794();
}

uint64_t sub_1349DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_4948(&qword_1A2448);
  sub_13B234();
  v8 = sub_1316C0();

  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;

    sub_4948(&qword_19AC80);
    sub_4948(&qword_1A2580);
    sub_16618();
    sub_1367F8();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_134B40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a2;
  v79 = a3;
  v84 = a6;
  v9 = type metadata accessor for WelcomeCarouselCellView();
  __chkstk_darwin(v9 - 8);
  v81 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_4948(&qword_1A2488);
  __chkstk_darwin(v80);
  v82 = &v72 - v11;
  v73 = sub_4948(&qword_1A25A8);
  __chkstk_darwin(v73);
  v74 = &v72 - v12;
  v77 = sub_4948(&qword_1A2590);
  __chkstk_darwin(v77);
  v14 = &v72 - v13;
  v83 = sub_4948(&qword_1A25C0);
  v76 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - v15;
  v16 = type metadata accessor for BundleDetail();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v19 = (&v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v72 - v21;
  __chkstk_darwin(v23);
  v85 = &v72 - v24;
  v25 = *a1;
  v86 = a4;
  v87 = a5;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v26 = sub_130748();

  if (!v26)
  {
    v71 = 1;
    v70 = v83;
    v69 = v84;
    return sub_53A8(v69, v71, 1, v70);
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v25 >= *(v26 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_3AAFC(v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v25, v22);

  v28 = v85;
  sub_136284();
  sub_3AAFC(v28, v19);
  v86 = a4;
  v87 = a5;
  sub_13B234();
  v29 = sub_131044();

  v31 = (*(*v29 + 360))(v30);

  v86 = a4;
  v87 = a5;
  sub_13B234();
  LOBYTE(v29) = sub_1315B8();

  v86 = a4;
  v87 = a5;
  sub_13B234();
  v32 = sub_1314C0();

  v86 = a4;
  v87 = a5;
  sub_13B234();
  v33 = sub_130A14();

  sub_12E11C(v19, v25, v29 & 1, v32 & 1, v33, v81, v31);
  v34 = sub_13AEE4();
  if (!v25)
  {
    v86 = a4;
    v87 = a5;
    sub_13B234();
    v35 = sub_131044();

    (*(*v35 + 384))(v36);
  }

  sub_13A6E4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v82;
  sub_136284();
  v46 = &v45[*(v80 + 36)];
  *v46 = v34;
  *(v46 + 1) = v38;
  *(v46 + 2) = v40;
  *(v46 + 3) = v42;
  *(v46 + 4) = v44;
  v46[40] = 0;
  v47 = sub_13AF04();
  v86 = a4;
  v87 = a5;
  sub_13B234();
  v48 = sub_1316C0();

  if (!__OFSUB__(v48, 1))
  {
    if (v25 == v48 - 1)
    {
      v86 = a4;
      v87 = a5;
      sub_13B234();
      v49 = sub_131044();

      (*(*v49 + 384))(v50);
    }

    sub_13A6E4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v74;
    sub_136794();
    v60 = &v59[*(v73 + 36)];
    *v60 = v47;
    *(v60 + 1) = v52;
    *(v60 + 2) = v54;
    *(v60 + 3) = v56;
    *(v60 + 4) = v58;
    v60[40] = 0;
    v61 = sub_13B3C4();
    v63 = v62;
    v64 = swift_allocObject();
    *(v64 + 16) = v25;
    sub_136794();
    v65 = &v14[*(v77 + 36)];
    *v65 = sub_1369AC;
    v65[1] = v64;
    v65[2] = v61;
    v65[3] = v63;
    v66 = swift_allocObject();
    v67 = v79;
    v66[2] = v78;
    v66[3] = v67;
    v66[4] = a4;
    v66[5] = a5;
    v66[6] = v25;
    sub_1368B8();

    v68 = v75;
    sub_13B054();

    sub_7F240(v14, &qword_1A2590);
    sub_3AB60(v85);
    v70 = v83;
    v69 = v84;
    (*(v76 + 32))(v84, v68, v83);
    v71 = 0;
    return sub_53A8(v69, v71, 1, v70);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_135328@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_13B1A4();
  sub_4948(&qword_19D860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 32) = a1;
  if (qword_19A208 != -1)
  {
    swift_once();
  }

  v6 = sub_13ACF4();
  sub_4910(v6, qword_1A2430);
  sub_13A854();
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  type metadata accessor for CGRect(0);
  result = sub_13BB14();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_135428()
{
  sub_13B404();
  sub_13A8E4();
}

uint64_t sub_1354B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4948(&qword_1A2448);
  sub_13B234();
  sub_13172C(a5);
}

uint64_t sub_135528()
{

  sub_4948(&qword_1A2550);
  return sub_13B244();
}

uint64_t sub_135580(uint64_t *a1)
{
  v1 = *a1;
  sub_4948(&qword_1A2448);
  sub_13B234();
  v2 = sub_130748();

  if (v2)
  {
    sub_13B234();
    v4 = *(v2 + 16);

    if (v4)
    {
      sub_4D00C(0, v4, 0);
      for (i = 0; i != v4; ++i)
      {
        v6 = 0;
        if (*(v1 + 16))
        {
          v7 = sub_7C4E8(i);
          if (v8)
          {
            v6 = *(*(v1 + 56) + 8 * v7);
          }
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_4D00C((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        _swiftEmptyArrayStorage[v10 + 4] = v6;
      }
    }

    sub_130D34(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_1356F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_13A7E4();
  MidX = CGRectGetMidX(v43);
  if (sub_1314C0())
  {
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 64);
    if (v6)
    {
      v7 = 0;
      v8 = __clz(__rbit64(v6));
      v9 = (v6 - 1) & v6;
      v10 = (v4 + 63) >> 6;
LABEL_10:
      v13 = (*(a3 + 56) + 32 * v8);
      v14 = *v13;
      v15 = v13[1];
      v17 = v13[2];
      v16 = v13[3];

      v39 = v15;
      v40 = v14;
      rect = v17;
      v18 = v16;
      if (!v9)
      {
        goto LABEL_12;
      }

      do
      {
        v38 = v16;
        v19 = v7;
LABEL_16:
        v37 = v18;
        v20 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v21 = (*(a3 + 56) + ((v19 << 11) | (32 * v20)));
        v44.origin.x = *v21;
        v22 = v21[1];
        v36 = *v21;
        v23 = v21[2];
        v24 = v21[3];
        v44.origin.y = v22;
        v44.size.width = v23;
        v44.size.height = v24;
        v35 = vabdd_f64(CGRectGetMidX(v44), MidX);
        v45.origin.x = v14;
        v45.origin.y = v15;
        v45.size.width = v17;
        v45.size.height = v37;
        v25 = v35 < vabdd_f64(CGRectGetMidX(v45), MidX);
        if (v25)
        {
          v26 = v36;
        }

        else
        {
          v26 = v40;
        }

        v16 = v38;
        v27 = v39;
        if (v25)
        {
          v27 = v22;
        }

        v39 = v27;
        v40 = v26;
        v28 = rect;
        if (v25)
        {
          v28 = v23;
        }

        rect = v28;
        if (v25)
        {
          v16 = v24;
          v14 = v36;
          v15 = v22;
          v17 = v23;
          v18 = v24;
        }

        else
        {
          v18 = v37;
        }
      }

      while (v9);
LABEL_12:
      while (1)
      {
        v19 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v19 >= v10)
        {

          v46.origin.y = v39;
          v46.origin.x = v40;
          v46.size.width = rect;
          v46.size.height = v16;
          v29 = CGRectGetMidX(v46);
          sub_13A7E4();
          v31 = v29 + v30 * -0.5;
          v32 = sub_13A7D4();
          *v33 = v31;
          v32(v42, 0);
          return;
        }

        v9 = *(a3 + 64 + 8 * v19);
        ++v7;
        if (v9)
        {
          v38 = v16;
          v7 = v19;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = 0;
      v10 = (v4 + 63) >> 6;
      while (1)
      {
        v7 = v6 + 1;
        if (v6 + 1 >= v10)
        {
          break;
        }

        v12 = *(a3 + 72 + 8 * v6);
        v11 += 64;
        ++v6;
        if (v12)
        {
          v9 = (v12 - 1) & v12;
          v8 = __clz(__rbit64(v12)) + v11;
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t sub_135974@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_13AB44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_4948(&qword_19D940);
  return sub_1359C4(v1);
}

uint64_t sub_1359C4(uint64_t a1)
{
  v7 = *(a1 + 24);
  sub_4948(&qword_19D948);
  result = sub_13B234();
  v3 = v8;
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = v3;
    swift_getKeyPath();
    v4 = swift_allocObject();
    memcpy((v4 + 16), a1, 0x48uLL);
    sub_136CF8(a1, &v7);
    sub_4948(&qword_19AC80);
    sub_4948(&qword_19D950);
    sub_16618();
    v5 = sub_558C(&qword_19D958);
    v6 = sub_7EE60();
    *&v7 = v5;
    *(&v7 + 1) = v6;
    swift_getOpaqueTypeConformance2();
    return sub_13B314();
  }

  return result;
}

uint64_t sub_135B3C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_13B3C4();
  sub_13A834();
  *__dst = *a2;
  *&__dst[16] = a2[2];
  sub_4948(&qword_19D9B0);
  sub_13B2C4();
  v4 = sub_13B1C4();
  if (v3 != __src[0])
  {
    v5 = sub_13B1B4();

    v4 = v5;
  }

  KeyPath = swift_getKeyPath();
  v12 = v14;
  v11 = v16;
  sub_13B3C4();
  sub_13A834();
  __src[0] = v13;
  LOBYTE(__src[1]) = v14;
  __src[2] = v15;
  LOBYTE(__src[3]) = v16;
  __src[4] = v17;
  __src[5] = v18;
  __src[6] = KeyPath;
  __src[7] = v4;
  LOBYTE(__src[14]) = 0;
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x48uLL);
  *(v7 + 88) = v3;
  sub_136CF8(a2, __dst);
  sub_4948(&qword_19D958);
  sub_7EE60();
  sub_13B054();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_7F240(__dst, &qword_19D958);
}

uint64_t sub_135D60()
{
  sub_13B404();
  sub_13A8E4();
}

unint64_t sub_135E4C()
{
  result = qword_1A2450;
  if (!qword_1A2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2450);
  }

  return result;
}

unint64_t sub_135EA0()
{
  result = qword_1A2458;
  if (!qword_1A2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2458);
  }

  return result;
}

unint64_t sub_135F10()
{
  result = qword_1A2460;
  if (!qword_1A2460)
  {
    sub_558C(&qword_1A2468);
    sub_135E4C();
    sub_135EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2460);
  }

  return result;
}

uint64_t sub_135FEC()
{
  v1 = sub_13A864();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1360B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_13A864() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_132C40(a1, v6, v7, v8, a2);
}

unint64_t sub_13613C()
{
  result = qword_1A2480;
  if (!qword_1A2480)
  {
    sub_558C(&qword_1A2478);
    sub_558C(&qword_1A2488);
    sub_1361FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2480);
  }

  return result;
}

unint64_t sub_13622C()
{
  result = qword_1A2498;
  if (!qword_1A2498)
  {
    type metadata accessor for WelcomeCarouselCellView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2498);
  }

  return result;
}

uint64_t sub_136284()
{
  sub_136E08();
  v1(0);
  sub_9F94();
  v2 = sub_17208();
  v3(v2);
  return v0;
}

uint64_t sub_136310()
{
  sub_136E08();
  sub_4948(&qword_1A24A8);
  sub_9F94();
  v1 = sub_17208();
  v2(v1);
  return v0;
}

uint64_t sub_136390(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_1A24B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_136400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_130FA0();
  *a1 = result;
  return result;
}

unint64_t sub_136460()
{
  result = qword_1A24F0;
  if (!qword_1A24F0)
  {
    sub_558C(&qword_1A24E8);
    sub_558C(&qword_1A24F8);
    sub_136554();
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_1A2538, &unk_1A2540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A24F0);
  }

  return result;
}

unint64_t sub_136554()
{
  result = qword_1A2500;
  if (!qword_1A2500)
  {
    sub_558C(&qword_1A24F8);
    sub_558C(&qword_1A2508);
    sub_136B88(&qword_1A2510, &qword_1A2508, &unk_14DF58, sub_13667C);
    swift_getOpaqueTypeConformance2();
    sub_7FAA8(&qword_19AB00, &qword_19AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2500);
  }

  return result;
}

unint64_t sub_13667C()
{
  result = qword_1A2518;
  if (!qword_1A2518)
  {
    sub_558C(&qword_1A2520);
    sub_7FAA8(&qword_1A2528, &unk_1A2530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2518);
  }

  return result;
}

unint64_t sub_136734()
{
  result = qword_1A2558;
  if (!qword_1A2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2558);
  }

  return result;
}

uint64_t sub_136794()
{
  sub_136E08();
  sub_4948(v1);
  sub_9F94();
  v2 = sub_17208();
  v3(v2);
  return v0;
}

unint64_t sub_1367F8()
{
  result = qword_1A2588;
  if (!qword_1A2588)
  {
    sub_558C(&qword_1A2580);
    sub_558C(&qword_1A2590);
    sub_1368B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2588);
  }

  return result;
}

unint64_t sub_1368B8()
{
  result = qword_1A2598;
  if (!qword_1A2598)
  {
    sub_558C(&qword_1A2590);
    sub_136B88(&qword_1A25A0, &unk_1A25A8, &unk_14DFC0, sub_1361FC);
    sub_7FAA8(&qword_1A25B0, &unk_1A25B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2598);
  }

  return result;
}

uint64_t sub_1369BC()
{

  v0 = sub_7FD34();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_136A60()
{
  result = qword_1A25C8;
  if (!qword_1A25C8)
  {
    sub_558C(&qword_1A25D0);
    sub_7FAA8(&qword_1A25D8, &unk_1A25E0);
    sub_7FAA8(&qword_1A25E8, &unk_1A25F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A25C8);
  }

  return result;
}

uint64_t sub_136B88(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_7FD80(0, a2);
    sub_558C(v7);
    a4();
    result = sub_136DD8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_136BE8()
{
  result = qword_1A2608;
  if (!qword_1A2608)
  {
    sub_558C(&qword_1A2610);
    sub_7FAA8(&qword_1A2618, &unk_1A2620);
    sub_7FAA8(&qword_1A25E8, &unk_1A25F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2608);
  }

  return result;
}

uint64_t sub_136DD8()
{

  return swift_getWitnessTable();
}

uint64_t sub_136E14()
{

  return sub_13B234();
}

uint64_t sub_136E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1 == 0x6853726564616568 && a2 == 0xEB00000000666C65;
  if (v4 || (result = sub_13C144(), (result & 1) != 0))
  {
    sub_139F34();
    a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
    a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v6 = swift_allocObject();
    *a3 = v6;
    return memcpy((v6 + 16), __src, 0x58uLL);
  }

  else
  {
    a3[3] = &type metadata for WelcomeSheetLayout.BodySpacing;
    a3[4] = &off_18F858;
  }

  return result;
}

uint64_t sub_136F5C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_137004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_136F5C(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_1370AC()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_137114()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

__n128 sub_137164(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_137180(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 49);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1371CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_137234()
{
  result = qword_1A2628;
  if (!qword_1A2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2628);
  }

  return result;
}

uint64_t sub_137288(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

double sub_1372E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1373B4(a1, a2 & 1, a3, a4, a5);
  if (a2)
  {
    v7 = v6[2];
    v8 = (v6 + 5);
    for (i = 0.0; v7; --v7)
    {
      v10 = *v8;
      v8 += 4;
      v11 = v10;
      if (i <= v10)
      {
        i = v11;
      }
    }
  }

  v12 = sub_137288(v6);

  if (v12)
  {
  }

  return NSDirectionalEdgeInsets.edgeInsets.getter(v13);
}

void *sub_1373B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v214 = sub_13A7C4();
  sub_9E94();
  v209 = v10;
  __chkstk_darwin(v11);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v12);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v16);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v17);
  v19 = &v208 - v18;
  __chkstk_darwin(v20);
  v22 = &v208 - v21;
  v230 = type metadata accessor for WrappingHStackLayout.RowItem();
  sub_9E94();
  v240 = v23;
  __chkstk_darwin(v24);
  sub_69D60();
  *&v244 = v25 - v26;
  __chkstk_darwin(v27);
  sub_18C34();
  v243 = v28;
  __chkstk_darwin(v29);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v30);
  sub_10BEA8(&v208 - v31);
  v233 = sub_4948(&qword_1A2638);
  sub_9F94();
  __chkstk_darwin(v32);
  v34 = &v208 - v33;
  v242 = sub_13A8A4();
  sub_9E94();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_69D60();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v42);
  sub_10BEA8(&v208 - v43);
  v44 = sub_4948(&qword_1A2640);
  __chkstk_darwin(v44 - 8);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v45);
  sub_10BEA8(&v208 - v46);
  v47 = sub_13A8F4();
  sub_9E94();
  v231 = v48;
  __chkstk_darwin(v49);
  sub_10BEA8(&v208 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_4948(&qword_1A2648);
  __chkstk_darwin(v51 - 8);
  sub_10BEA8(&v208 - v52);
  v229 = sub_4948(&qword_1A2650);
  sub_9F94();
  __chkstk_darwin(v53);
  sub_10BEA8(&v208 - v54);
  if (a2)
  {
    v55 = INFINITY;
  }

  else
  {
    v55 = *&a1;
  }

  v56 = sub_1393BC(&qword_1A2658);
  v57 = sub_13BD14();
  v225 = v19;
  v224 = v22;
  v222 = v40;
  v235 = v47;
  v232 = v56;
  v221 = v34;
  if (v57)
  {
    v58 = v57;
    v245 = _swiftEmptyArrayStorage;
    sub_4D0AC(0, v57 & ~(v57 >> 63), 0);
    v59 = a5;
    v60 = v245;
    v61 = v59;
    sub_13BD04();
    if (v58 < 0)
    {
      goto LABEL_85;
    }

    v62 = (v36 + 16);
    v227 = v36;
    v47 = (v36 + 8);
    do
    {
      v63 = sub_13BD44();
      v64 = v237;
      v65 = v59;
      v66 = v242;
      (*v62)(v237);
      v63(&v249, 0);
      sub_13A984();
      LOBYTE(v249) = v67 & 1;
      v248 = v68 & 1;
      sub_13A874();
      v70 = v69;
      v72 = v71;
      (*v47)(v64, v66);
      v245 = v60;
      v74 = v60[2];
      v73 = v60[3];
      if (v74 >= v73 >> 1)
      {
        sub_1396B8(v73);
        sub_1396D0();
        sub_4D0AC(v76, v77, v78);
        v60 = v245;
      }

      v60[2] = v74 + 1;
      v75 = &v60[2 * v74];
      v75[4] = v70;
      v75[5] = v72;
      sub_13BD34();
      --v58;
      v59 = v65;
    }

    while (v58);
    v234 = v60;
    v40 = v222;
    v36 = v227;
  }

  else
  {
    v234 = _swiftEmptyArrayStorage;
    v59 = a5;
  }

  v79 = v231;
  v80 = v228;
  v81 = v235;
  (*(v231 + 16))(v228, v59, v235);
  (*(v79 + 32))(v236, v80, v81);
  sub_1393BC(&qword_1A2660);
  v82 = v215;
  sub_13BBF4();
  v219 = *(v229 + 36);
  *(v82 + v219) = 0;
  v83 = 0;
  v231 = *(sub_4948(&qword_1A2668) + 36);
  v237 = (v36 + 16);
  v84 = v36;
  v85 = (v36 + 32);
  v236 = (v209 + 8);
  v228 = v234 + 4;
  v227 = v84 + 8;
  v22 = _swiftEmptyArrayStorage;
  v5 = 0.0;
  v208 = xmmword_140280;
  v223 = _swiftEmptyArrayStorage;
  v6 = 0.0;
  sub_1396DC();
  for (i = v238; ; i = v238)
  {
    sub_13BD24();
    if (*(v82 + v231) == v249)
    {
      v61 = v233;
      sub_53A8(v47, 1, 1, v233);
    }

    else
    {
      v229 = v83;
      v87 = sub_13BD44();
      sub_1396A8();
      v47 = v220;
      v88 = v242;
      v89(v220);
      v87(&v249, 0);
      v90 = v229;
      sub_13BD34();
      v61 = v233;
      v91 = *(v233 + 48);
      v92 = v221;
      *v221 = v90;
      (*v85)(v92 + v91, v47, v88);
      v93 = __OFADD__(v90, 1);
      v83 = v90 + 1;
      if (v93)
      {
        goto LABEL_80;
      }

      *(v82 + v219) = v83;
      sub_1396DC();
      sub_6D49C(v94, v47, &qword_1A2638);
      sub_53A8(v47, 0, 1, v61);
      v40 = v222;
      i = v238;
    }

    sub_6D49C(v47, i, &qword_1A2640);
    if (sub_52E0(i, 1, v61) == 1)
    {
      sub_139400(v82);

      if (*(v22 + 2))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v214;
        if (isUniquelyReferenced_nonNull_native)
        {
          v142 = v223;
          goto LABEL_43;
        }

        goto LABEL_86;
      }

      v142 = v223;
      v145 = v223[2];
      v61 = v214;
      goto LABEL_47;
    }

    v95 = i;
    v96 = *i;
    (*v85)(v40, v95 + *(v61 + 48), v242);
    v97 = *(v22 + 2);
    if (v97)
    {
      sub_138EB4(&v22[((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * (v97 - 1)], v239);
      if (*(v226 + 32))
      {
        sub_13A894();
        v47 = v225;
        sub_13A894();
        sub_13A7B4();
        v99 = v98;
        sub_1396C4();
        v101 = *v100;
        sub_1396C4();
        v101();
        v82 = v215;
        sub_1396DC();
        sub_1396C4();
        v101();
      }

      else
      {
        v99 = *(v226 + 24);
      }

      v61 = v234;
      sub_138F18(v239);
    }

    else
    {
      v99 = 0.0;
      v61 = v234;
    }

    if ((v96 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v96 >= *(v61 + 16))
    {
      goto LABEL_79;
    }

    v102 = &v228[2 * v96];
    v103 = *v102;
    v104 = v99 + v6 + *v102;
    if (v104 > v55)
    {
      v117 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_139698();
        sub_58ED8();
        v223 = v139;
      }

      v119 = v223[2];
      v118 = v223[3];
      if (v119 >= v118 >> 1)
      {
        sub_1396B8(v118);
        sub_1396D0();
        sub_58ED8();
        v223 = v140;
      }

      v120 = v223;
      v223[2] = v119 + 1;
      v121 = &v120[4 * v119];
      *(v121 + 4) = v117;
      v121[5] = v6;
      v121[6] = v5;
      v121[7] = 0.0;
      sub_4948(&qword_1A1D88);
      v122 = (*(v240 + 80) + 32) & ~*(v240 + 80);
      v22 = swift_allocObject();
      *(v22 + 1) = v208;
      v123 = &v22[v122];
      v124 = *v102;
      v125 = *(v102 + 1);
      sub_1396A8();
      v40 = v222;
      v47 = v242;
      v126(v123, v222, v242);
      v127 = v230;
      *&v123[*(v230 + 20)] = 0;
      v128 = &v123[*(v127 + 24)];
      *v128 = v124;
      *(v128 + 1) = v125;
      v6 = *v102;
      v5 = v102[1];
      v129 = sub_1396E8();
      v130(v129, v47);
      sub_1396DC();
    }

    else
    {
      v105 = v6 + v99;
      v106 = v102[1];
      if (v5 <= v106)
      {
        v5 = v102[1];
      }

      sub_1396A8();
      v107 = v241;
      v108(v241, v40, v242);
      v109 = v230;
      *(v107 + *(v230 + 20)) = v105;
      v110 = (v107 + *(v109 + 24));
      *v110 = v103;
      v110[1] = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_139698();
        sub_58FA8(v131, v132, v133, v22);
        v22 = v134;
      }

      v112 = *(v22 + 2);
      v111 = *(v22 + 3);
      if (v112 >= v111 >> 1)
      {
        sub_1396B8(v111);
        sub_1396D0();
        sub_58FA8(v135, v136, v137, v22);
        v22 = v138;
      }

      v113 = sub_1396E8();
      v114(v113, v242);
      *(v22 + 2) = v112 + 1;
      sub_139680();
      sub_13947C(v241, &v22[v115 + *(v116 + 72) * v112]);
      v6 = v104;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    sub_139698();
    sub_58ED8();
    v142 = v204;
LABEL_43:
    v144 = v142[2];
    v143 = v142[3];
    v145 = v144 + 1;
    if (v144 >= v143 >> 1)
    {
      sub_1396B8(v143);
      v206 = v205;
      sub_58ED8();
      v145 = v206;
      v142 = v207;
    }

    v142[2] = v145;
    v146 = &v142[4 * v144];
    *(v146 + 4) = v22;
    v146[5] = v6;
    v146[6] = v5;
    v146[7] = 0.0;
LABEL_47:
    if (v145 >= 2)
    {
      v5 = *(v226 + 40);
      LODWORD(v161) = *(v226 + 48);
      v237 = (v209 + 16);
      v162 = (v209 + 32);
      v163 = 1;
      v164 = v236 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v147 = v145;
      v165 = v213;
      v166 = v216;
      v210 = v22;
      v238 = v145;
      LODWORD(v231) = v161;
      v241 = v209 + 32;
      while (v163 - 1 < v147)
      {
        if (v163 >= v147)
        {
          goto LABEL_82;
        }

        v167 = &v142[4 * v163];
        v168 = v167[2];
        v6 = v167[3];
        v169 = v5;
        if (v161)
        {
          v235 = v163;
          v223 = v142;
          v170 = *(v167 + 4);
          v171 = *v167;

          v239 = v171;

          v172 = v218;
          sub_13A794();
          v173 = *v237;
          (*v237)(v165, v172, v61);
          v174 = *(v170 + 16);
          if (v174)
          {
            v232 = v173;
            v234 = v164;
            sub_139680();
            v233 = v170;
            v176 = v170 + v175;
            v242 = *(v177 + 72);
            v178 = v61;
            v179 = v225;
            v180 = v162;
            v181 = v224;
            v182 = v243;
            v183 = v236;
            do
            {
              sub_138EB4(v176, v182);
              sub_13A894();
              sub_13AEB4();
              sub_13A7A4();
              v182 = v243;
              v184 = *v183;
              (*v183)(v179, v178);
              sub_138F18(v182);
              v184(v165, v178);
              (*v180)(v165, v181, v178);
              v176 += v242;
              --v174;
            }

            while (v174);
            v61 = v178;
            v166 = v216;
            v185 = v212;
            v162 = v180;
            v164 = v234;
            v173 = v232;
          }

          else
          {
            sub_1396C4();
            v184 = *v186;
            v185 = v212;
          }

          v184(v218, v61);
          v242 = *v162;
          (v242)(v217, v165, v61);

          sub_13A794();
          v173(v185, v166, v61);
          v187 = v164;
          v188 = *(v239 + 16);
          v189 = v185;
          v190 = v61;
          v191 = v225;
          v192 = v224;
          v193 = v244;
          if (v188)
          {
            sub_139680();
            v195 = v239 + v194;
            v197 = *(v196 + 72);
            do
            {
              sub_138EB4(v195, v193);
              sub_13A894();
              sub_13AEB4();
              sub_13A7A4();
              v193 = v244;
              v184(v191, v190);
              sub_138F18(v193);
              v184(v189, v190);
              (v242)(v189, v192, v190);
              v195 += v197;
              --v188;
            }

            while (v188);
          }

          v166 = v216;
          v184(v216, v190);
          v161 = v211;
          v198 = v241;
          (v242)(v211, v189, v190);

          v199 = v217;
          sub_13A7B4();
          v169 = v200;
          v184(v161, v190);
          v184(v199, v190);
          v165 = v213;
          v61 = v190;
          v142 = v223;
          v22 = v210;
          LOBYTE(v161) = v231;
          v162 = v198;
          v164 = v187;
          v163 = v235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_139468();
          v142 = v202;
        }

        v147 = v142[2];
        v201 = v238;
        if (v163 >= v147)
        {
          goto LABEL_83;
        }

        *&v142[4 * v163++ + 7] = v6 + v168 + v169;
        if (v163 == v201)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_81;
    }

    v147 = v145;
LABEL_49:
    if ((*(v226 + 49) & 1) == 0)
    {

      return v142;
    }

    if (!v147)
    {
      break;
    }

    v252 = _swiftEmptyArrayStorage;
    sub_4D08C(0, v147, 0);
    v22 = 0;
    v61 = v252;
    v148 = v142 + 7;
    while (v22 < v142[2])
    {
      v149 = *v148;
      v150 = *(v148 - 1);
      v245 = *(v148 - 3);
      v246 = v150;
      v247 = v149;
      sub_138F74(&v245, &v249, v55);
      v151 = v249;
      v152 = v250;
      v153 = v251;
      v252 = v61;
      v155 = *(v61 + 16);
      v154 = *(v61 + 24);
      if (v155 >= v154 >> 1)
      {
        sub_1396B8(v154);
        sub_1396D0();
        v244 = v157;
        sub_4D08C(v158, v159, v160);
        v152 = v244;
        v61 = v252;
      }

      *(v61 + 16) = v155 + 1;
      v156 = v61 + 32 * v155;
      *(v156 + 32) = v151;
      ++v22;
      *(v156 + 40) = v152;
      *(v156 + 56) = v153;
      v148 += 4;
      if (v147 == v22)
      {

        return v61;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_13875C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v36 = type metadata accessor for WrappingHStackLayout.RowItem();
  sub_9E94();
  v35 = v11;
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1373B4(a1, a2 & 1, v15, v16, a5);
  if (*(v5 + 16) == 1)
  {
    sub_13B3C4();
  }

  sub_138A34();
  v38 = v17[2];
  if (v38)
  {
    v34 = a3;
    v18 = 0;
    v37 = v17 + 4;
    v19 = a2 & 1;
    v20 = a4 & 1;
    v33 = v17;
    while (v18 < v17[2])
    {
      v21 = &v37[4 * v18];
      v22 = *v21;
      v23 = *(*v21 + 16);
      if (v23)
      {
        v40 = v18;
        v24 = v21[1];
        v44 = v21[2];
        v45 = v24;
        v43 = v21[3];
        v25 = *(v36 + 20);
        v41 = *(v36 + 24);
        v42 = v25;
        v26 = v35;
        v27 = v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v39 = v22;

        v28 = a1;
        v29 = *(v26 + 72);
        do
        {
          sub_138EB4(v27, v14);
          v48.origin.x = sub_3001C();
          CGRectGetMinX(v48);
          v49.origin.x = sub_3001C();
          CGRectGetWidth(v49);
          v50.origin.x = sub_3001C();
          CGRectGetMinY(v50);
          NSDirectionalEdgeInsets.edgeInsets.getter(v30);
          sub_13B414();
          v47 = v19;
          v46 = v20;
          sub_13A884();
          sub_138F18(v14);
          v27 += v29;
          --v23;
        }

        while (v23);

        a1 = v28;
        v17 = v33;
        v18 = v40;
      }

      if (++v18 == v38)
      {

        sub_AD9A4();
        return;
      }
    }

    __break(1u);
  }

  else
  {
    sub_AD9A4();
  }
}

uint64_t sub_138A34()
{
  sub_13B3D4();
  if (sub_13B394())
  {

    return sub_13B484();
  }

  else
  {
    sub_13B354();
    if (sub_13B394())
    {

      return sub_13B414();
    }

    else
    {
      sub_13B3A4();
      if (sub_13B394())
      {

        return static UnitPoint.top.getter();
      }

      else
      {
        sub_13B364();
        if (sub_13B394())
        {

          return static UnitPoint.topTrailing.getter();
        }

        else
        {
          sub_13B3E4();
          if (sub_13B394())
          {

            return static UnitPoint.trailing.getter();
          }

          else
          {
            sub_13B384();
            if (sub_13B394())
            {

              return static UnitPoint.bottomTrailing.getter();
            }

            else
            {
              sub_13B3B4();
              if (sub_13B394())
              {

                return static UnitPoint.bottom.getter();
              }

              else
              {
                sub_13B374();
                if (sub_13B394())
                {

                  return static UnitPoint.bottomLeading.getter();
                }

                else
                {

                  return sub_13B474();
                }
              }
            }
          }
        }
      }
    }
  }
}

void (*sub_138D50(void *a1))(void *a1)
{
  v2 = sub_1394F4(0x28uLL);
  *a1 = v2;
  v2[4] = sub_13A6C4();
  return sub_138DC4;
}

void sub_138DC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_138E14()
{
  result = qword_1A2630;
  if (!qword_1A2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A2630);
  }

  return result;
}

uint64_t type metadata accessor for WrappingHStackLayout.RowItem()
{
  result = qword_1A26C8;
  if (!qword_1A26C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_138EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_138F18(uint64_t a1)
{
  v2 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_138F74(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v45 = a2;
  v46 = type metadata accessor for WrappingHStackLayout.RowItem();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v48 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(v10 + 16);
  v47 = v7;
  if (v12)
  {
    v44 = v3;
    v51 = _swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();
    sub_4D00C(0, v12, 0);
    v13 = v51;
    v14 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    do
    {
      sub_138EB4(v14, v9);
      v50 = 0;
      v49 = 0;
      sub_13A874();
      v4 = v16;
      sub_138F18(v9);
      v51 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        sub_4D00C((v17 > 1), v18 + 1, 1);
        v13 = v51;
      }

      v13[2] = v18 + 1;
      *&v13[v18 + 4] = v4;
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v19 = v13[2];
  if (v19)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_4D0CC(0, v19, 0);
    v20 = v51;
    v21 = v51[2];
    v22 = 4;
    v4 = INFINITY;
    do
    {
      v23 = *&v13[v22];
      v51 = v20;
      v24 = v20[3];
      if (v21 >= v24 >> 1)
      {
        sub_4D0CC((v24 > 1), v21 + 1, 1);
        v20 = v51;
      }

      v20[2] = v21 + 1;
      *(v20 + v21 + 32) = v23 == INFINITY;
      ++v22;
      ++v21;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  v25 = a3 - *&v48;
  v26 = v20[2];
  v27 = v47;
  if (!v26)
  {
    goto LABEL_30;
  }

  v28 = 0;
  v29 = 0;
  v30 = v20 + 4;
  do
  {
    v31 = *(v20 + v28 + 32);
    v32 = __OFADD__(v29, v31);
    v29 += v31;
    if (v32)
    {
      __break(1u);
      goto LABEL_39;
    }

    ++v28;
  }

  while (v26 != v28);
  if (v29 <= 0)
  {
LABEL_30:

    v38 = *(v10 + 16);
    v30 = v46;
    if (v38 >= 2)
    {
      v4 = (v38 - 1);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v33 = *(v10 + 16);
  v34 = v46;
  if (!v33)
  {
LABEL_36:

LABEL_37:
    v42 = v45;
    *v45 = v10;
    *(v42 + 1) = v48;
    v42[3] = v11;
    return;
  }

  if (v33 <= v26)
  {
    v35 = 0;
    v25 = v25 / v29;
    v4 = 0.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1394E0(v10);
        v10 = v37;
      }

      if (v35 >= *(v10 + 16))
      {
        while (1)
        {
          __break(1u);
LABEL_41:
          sub_1394E0(v10);
          v10 = v43;
LABEL_32:
          v39 = 1;
          while (1)
          {
            v40 = *(v10 + 16);
            if (v39 >= v40)
            {
              break;
            }

            v41 = v10 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v39;
            *(v41 + *(v30 + 5)) = v25 / v4 * v39++ + *(v41 + *(v30 + 5));
            if (v39 >= v40)
            {
              goto LABEL_37;
            }
          }

LABEL_39:
          __break(1u);
        }
      }

      v36 = v10 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v35;
      *(v36 + *(v34 + 20)) = v4 + *(v36 + *(v34 + 20));
      if (*(v30 + v35) == 1)
      {
        v4 = v25 + v4;
        *(v36 + *(v34 + 24)) = v25 + *(v36 + *(v34 + 24));
      }

      ++v35;
    }

    while (v33 != v35);
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_1393BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_13A8F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_139400(uint64_t a1)
{
  v2 = sub_4948(&qword_1A2650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13947C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1394F4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_13954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_13A8A4();

  return sub_52E0(a1, a2, v4);
}

uint64_t sub_1395A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_13A8A4();

  return sub_53A8(a1, a2, a2, v4);
}

void sub_1395F4()
{
  sub_13A8A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}