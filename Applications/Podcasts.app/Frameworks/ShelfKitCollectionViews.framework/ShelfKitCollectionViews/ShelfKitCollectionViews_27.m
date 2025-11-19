double String.height(for:font:numberOfLines:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0.0;
  }

  v11 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v11 setMaximumNumberOfLines:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
  inited = swift_initStackObject();
  *(inited + 32) = NSFontAttributeName;
  *(inited + 16) = xmmword_315420;
  *(inited + 40) = a1;
  *(inited + 48) = NSParagraphStyleAttributeName;
  v13 = qword_3FAE78;
  v14 = NSFontAttributeName;
  v15 = a1;
  v16 = NSParagraphStyleAttributeName;
  if (v13 != -1)
  {
    swift_once();
  }

  v17 = qword_42AB90;
  *(inited + 56) = qword_42AB90;
  v18 = v17;
  v19 = sub_2D6EEC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A140);
  swift_arrayDestroy();
  v20 = v11;
  v21 = sub_2D618C(v19);
  v22 = sub_268E60(a5, 1.79769313e308, a3, a4, 1uLL, v21, v11);

  if (qword_3FAE40 != -1)
  {
    swift_once();
  }

  sub_303D28();

  if (v43)
  {
    v23 = sub_30C098();
    sub_2D618C(v19);
    type metadata accessor for Key(0);
    sub_CFA40();
    isa = sub_30BF88().super.isa;

    [v23 boundingRectWithSize:1 options:isa attributes:v20 context:{a5, 1.79769313e308, v22}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_303D38();

    v33 = v26;
    v34 = v28;
    v35 = v30;
    v36 = v32;
  }

  else
  {
    v35 = v41;
    v36 = v42;
    v33 = v39;
    v34 = v40;
  }

  Height = CGRectGetHeight(*&v33);

  return Height;
}

unint64_t sub_2D6750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DB00);
    v3 = sub_30D698();
    v4 = a1 + 32;

    while (1)
    {
      sub_EB00(v4, &v11, &qword_40A6F8);
      v5 = v11;
      result = sub_1977EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DA94(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DAF8);
    v3 = sub_30D698();
    v4 = a1 + 32;

    while (1)
    {
      sub_EB00(v4, &v11, &unk_40A710);
      v5 = v11;
      result = sub_1977EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DA94(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D69A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408B50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DB08);
    v7 = sub_30D698();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_EB00(v9, v5, &qword_408B50);
      result = sub_1918A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_30A4E8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DAE0);
    v3 = sub_30D698();
    v4 = a1 + 32;

    while (1)
    {
      sub_EB00(v4, &v11, &qword_40DAE8);
      v5 = v11;
      result = sub_1977EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DA94(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C398);
    v3 = sub_30D698();
    v4 = a1 + 32;

    while (1)
    {
      sub_EB00(v4, &v11, &unk_3FFD50);
      v5 = v11;
      result = sub_1977EC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DA94(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DAD8);
    v3 = sub_30D698();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_2AD948(v6, v7, *i);
      result = sub_1919B4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079C8);
    v3 = sub_30D698();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1977EC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D6FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DAF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3B0);
    v7 = sub_30D698();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_EB00(v9, v5, &qword_40DAF0);
      v11 = *v5;
      result = sub_191B1C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for UberScrollConfiguration();
      result = sub_2D75A4(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for UberScrollConfiguration);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D71C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E0);
    v3 = sub_30D698();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_191BA4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D72B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DB10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3E8);
    v7 = sub_30D698();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_EB00(v9, v5, &qword_40DB10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_19182C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
      result = sub_2D75A4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_2D74A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C3A8);
  v3 = sub_30D698();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_191CC8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_191CC8(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2D75A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2D760C()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:0];
  [v0 setDistribution:0];
  v1 = v0;
  v2 = [v1 layer];
  [v2 setAllowsGroupBlending:0];

  [v1 setLayoutMarginsRelativeArrangement:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 setAlignment:1];
  [v1 setSpacing:6.0];
  return v1;
}

char *sub_2D76F4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView);
  }

  else
  {
    v4 = sub_2D7754();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2D7754()
{
  type metadata accessor for ArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = v0;
  v4 = [v1 clearColor];
  v5 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = v4;
  v6 = v4;

  sub_2BE604();
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0;
  sub_2BE604();

  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v7];
  return v3;
}

void SubscriptionNameAreaView.titleLabel.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel) = a1;
}

char *sub_2D7888()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAD08 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_429D90;
  v12[3] = unk_429DA0;
  v13[0] = xmmword_429DB0;
  *(v13 + 10) = *(&xmmword_429DB0 + 10);
  v12[0] = xmmword_429D70;
  v12[1] = unk_429D80;
  v10[2] = xmmword_429D90;
  v10[3] = unk_429DA0;
  v11[0] = xmmword_429DB0;
  *(v11 + 10) = *(&xmmword_429DB0 + 10);
  v10[0] = xmmword_429D70;
  v10[1] = unk_429D80;
  sub_8FC54(v12, &v9);
  v0 = sub_235C3C(v10, 2, 0, 1);
  sub_124C4(0, &qword_408100);
  v1 = sub_30CCF8();
  [v0 setFont:v1];

  v2 = v0;
  [v2 setAlpha:0.5];
  v3 = [v2 layer];

  v4 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v3 setCompositingFilter:v4];

  v5 = v2;
  [v5 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v7];
  [v5 setNumberOfLines:1];
  [v5 setLineBreakMode:4];

  return v5;
}

void (*SubscriptionNameAreaView.titleLabel.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SubscriptionNameAreaView.titleLabel.getter();
  return sub_2D7ADC;
}

void sub_2D7ADC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel) = v2;
}

id sub_2D7B14(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void SubscriptionNameAreaView.channelLinkButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton) = a1;
}

char *sub_2D7B88()
{
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_429D30;
  v13[3] = unk_429D40;
  v14[0] = xmmword_429D50;
  *(v14 + 10) = *(&xmmword_429D50 + 10);
  v13[0] = xmmword_429D10;
  v13[1] = unk_429D20;
  v11[2] = xmmword_429D30;
  v11[3] = unk_429D40;
  v12[0] = xmmword_429D50;
  *(v12 + 10) = *(&xmmword_429D50 + 10);
  v11[0] = xmmword_429D10;
  v11[1] = unk_429D20;
  v0 = objc_allocWithZone(type metadata accessor for ChevronButton());
  sub_8FC54(v13, &v10);
  v1 = sub_143168(v11, 1);
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_adjustsFontSizeToFitWidth;
  swift_beginAccess();
  v1[v2] = 1;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setAdjustsFontSizeToFitWidth:1];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_useTopBottomMargin;
  swift_beginAccess();
  v1[v3] = 0;
  sub_142494();
  v4 = v1;
  [v4 setAlpha:0.5];
  v5 = [v4 layer];

  v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v5 setCompositingFilter:v6];

  LODWORD(v7) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v8];
  return v4;
}

void (*SubscriptionNameAreaView.channelLinkButton.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SubscriptionNameAreaView.channelLinkButton.getter();
  return sub_2D7DC4;
}

void sub_2D7DC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton) = v2;
}

char *sub_2D7E64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_model] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_hStackView;
  *&v4[v10] = sub_2D760C();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_objectGraph] = 0;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_hStackView;
  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_hStackView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_31D480;
  v15 = v11;
  v16 = v13;
  *(v14 + 32) = SubscriptionNameAreaView.titleLabel.getter();
  *(v14 + 40) = sub_2D76F4();
  *(v14 + 48) = [objc_allocWithZone(UIView) init];
  *(v14 + 56) = SubscriptionNameAreaView.channelLinkButton.getter();
  v17._rawValue = v14;
  sub_30C688(v17);

  [v15 addSubview:*&v11[v12]];
  v18 = *&v11[v12];
  sub_30CE98();

  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_317F20;
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView;
  v22 = [*&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView] widthAnchor];
  v23 = [v22 constraintEqualToConstant:140.0];

  *(v20 + 32) = v23;
  v24 = [*&v15[v21] heightAnchor];
  v25 = [v24 constraintEqualToConstant:14.0];

  *(v20 + 40) = v25;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v19 activateConstraints:isa];

  return v15;
}

char *sub_2D81C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_model))
  {

    sub_307E58();

    v4 = sub_3031C8();
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
    {
      sub_125E18(v3);
      return sub_2D76F4();
    }
  }

  else
  {
    v6 = sub_3031C8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  }

  sub_125E18(v3);
  return SubscriptionNameAreaView.titleLabel.getter();
}

uint64_t SubscriptionNameAreaView.applyModel(model:)(uint64_t a1)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_3019B8();
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v90 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_303758();
  v89 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_3041E8();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v9 - 8);
  v84 = &v79 - v10;
  v11 = sub_303398();
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v79 - v14;
  v16 = sub_3031C8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_objectGraph;
  result = swift_beginAccess();
  v25 = *(v2 + v23);
  if (v25)
  {
    v80 = v5;
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_model) = v93;

    sub_307E58();
    v26 = (*(v17 + 48))(v15, 1, v16);
    v27 = &selRef_registerImage_withTraitCollection_;
    v81 = v25;
    if (v26 == 1)
    {
      sub_125E18(v15);
      v28 = sub_2D76F4();
      [v28 setHidden:1];

      v29 = SubscriptionNameAreaView.titleLabel.getter();
      [v29 setHidden:0];

      v30 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel);
      v31 = sub_307E98();
      if (v32)
      {
        v94 = v31;
        v95 = v32;
        sub_E504();
        sub_30D3D8();

        v49 = sub_30C098();
      }

      else
      {
        v49 = 0;
      }

      [v30 setText:v49];
    }

    else
    {
      sub_6D85C(v15, v22);
      v33 = sub_2D76F4();
      [v33 setHidden:0];

      v34 = SubscriptionNameAreaView.titleLabel.getter();
      [v34 setHidden:1];

      v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView;
      v36 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView);
      sub_6D8C0(v22, v19);
      v37 = sub_303DF8();
      (*(*(v37 - 8) + 56))(v84, 1, 1, v37);
      v38 = v36;
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v82 + 8))(v8, v83);
      v39 = [objc_opt_self() mainScreen];
      [v39 scale];

      v40 = v85;
      v27 = &selRef_registerImage_withTraitCollection_;
      sub_303358();
      type metadata accessor for ArtworkView();
      sub_221DB4();
      sub_308E28();

      (*(v86 + 8))(v40, v87);
      v41 = *(v2 + v35);
      sub_303198();
      v42 = &v41[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
      *v42 = v43;
      *(v42 + 1) = v44;
      [v41 setNeedsLayout];

      v45 = *(v2 + v35);
      v47 = v88;
      v46 = v89;
      v48 = v80;
      (*(v89 + 104))(v88, enum case for ArtworkAspectRule.aspectFit(_:), v80);
      v49 = v45;
      if ([v49 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
      {
        v50 = 12;
      }

      else
      {
        v50 = 11;
      }

      [v49 setContentMode:v50];
      sub_6D924(v22);
      v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
      swift_beginAccess();
      (*(v46 + 40))(&v49[v51], v47, v48);
      swift_endAccess();
    }

    v52 = SubscriptionNameAreaView.channelLinkButton.getter();
    [v52 v27[207]];

    v53 = sub_307E88();
    if (v53)
    {
      v54 = v53;
      v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton;
      v56 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
      v58 = sub_30B018();
      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v70 = [objc_opt_self() mainBundle];
        v78._countAndFlagsBits = 0xE000000000000000;
        v96._countAndFlagsBits = 0x4148435F57454956;
        v96._object = 0xEC0000004C454E4ELL;
        v97.value._countAndFlagsBits = v58;
        v97.value._object = 0;
        v71.super.isa = v70;
        v98._countAndFlagsBits = 0;
        v98._object = 0xE000000000000000;
        v58 = sub_301AB8(v96, v97, v71, v98, v78);
        v59 = v72;
      }

      v73 = *&v56[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel];
      v94 = v58;
      v95 = v59;
      v74 = v73;
      v75 = v90;
      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      (*(v91 + 8))(v75, v92);

      v76 = sub_30C098();

      [v74 setText:v76];

      v77 = *(v2 + v55);
      ChevronButton.setAction(_:)(v54);

      v69 = *(v2 + v55);
      [v69 setEnabled:1];
    }

    else
    {
      v60 = sub_307E78();
      if (v61)
      {
        v62 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton;
        v63 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
        v64 = *&v63[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel];
        v94 = v60;
        v95 = v61;
        v65 = v63;
        v66 = v64;
        v67 = v90;
        sub_3019A8();
        sub_E504();
        sub_30D3E8();
        (*(v91 + 8))(v67, v92);

        v68 = sub_30C098();

        [v66 setText:v68];

        v69 = *(v2 + v62);
        [v69 setEnabled:0];
      }

      else
      {
        v69 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
        [v69 v27[207]];
      }
    }
  }

  return result;
}

uint64_t SubscriptionNameAreaView.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = SubscriptionNameAreaView.channelLinkButton.getter();
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *&v4[v5] = a1;
}

id sub_2D8EA4@<X0>(void *a1@<X8>)
{
  result = SubscriptionNameAreaView.titleLabel.getter();
  *a1 = result;
  return result;
}

void sub_2D8ED0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel);
  *(*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel) = *a1;
  v3 = v2;
}

id sub_2D8F20@<X0>(void *a1@<X8>)
{
  result = SubscriptionNameAreaView.channelLinkButton.getter();
  *a1 = result;
  return result;
}

void sub_2D8F4C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton);
  *(*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton) = *a1;
  v3 = v2;
}

void sub_2D8FC0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_model) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_hStackView;
  *(v0 + v1) = sub_2D760C();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___wordmarkArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView____lazy_storage___channelLinkButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

id sub_2D9078()
{
  v1 = v0;
  v2 = [v0 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_30C0D8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = NSFontAttributeName;
  v9 = NSFontAttributeName;
  result = [v1 font];
  if (result)
  {
    *(inited + 40) = result;
    v11 = sub_2D6EEC(inited);
    swift_setDeallocating();
    sub_2B8C7C(inited + 32);
    if (v6)
    {
      v12 = sub_2D618C(v11);
      v13 = sub_268E60(Width, 1.79769313e308, v4, v6, 1uLL, v12, 0);

      if (qword_3FAE40 != -1)
      {
        swift_once();
      }

      sub_303D28();

      if (v33)
      {
        v14 = sub_30C098();
        sub_2D618C(v11);
        type metadata accessor for Key(0);
        sub_CFA40();
        isa = sub_30BF88().super.isa;

        [v14 boundingRectWithSize:1 options:isa attributes:0 context:{Width, 1.79769313e308, v13}];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        sub_303D38();

        v24 = v23;
        v25 = v21;
        v26 = v19;
        v27 = v17;
      }

      else
      {
        v25 = v31;
        v24 = v32;
        v27 = v29;
        v26 = v30;
      }
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
    }

    Height = CGRectGetHeight(*&v27);

    [v1 bounds];
    return (CGRectGetHeight(v35) < Height);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2D936C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.447058824 green:0.141176471 blue:0.847058824 alpha:1.0];
  qword_40DB70 = result;
  return result;
}

id sub_2D93E0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.611764706 green:0.352941176 blue:0.949019608 alpha:1.0];
  qword_40DB78 = result;
  return result;
}

void sub_2D9454()
{
  sub_A803C();
  if (qword_3FAFA8 != -1)
  {
    swift_once();
  }

  v0 = qword_3FAFB0;
  v1 = qword_40DB70;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_40DB78;
  v3 = sub_30CFB8();

  qword_40DB80 = v3;
}

void sub_2D9580()
{
  sub_A803C();
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.85 alpha:1.0];
  v1 = [objc_opt_self() blackColor];
  v2 = sub_30CFB8();

  qword_40DB90 = v2;
}

id sub_2D9640(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_2D96A0()
{
  sub_A803C();
  v0 = [objc_opt_self() clearColor];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3];
  v2 = sub_30CFB8();

  qword_42B010 = v2;
}

void sub_2D973C()
{
  sub_A803C();
  v0 = objc_opt_self();
  v1 = [v0 clearColor];
  v2 = [v0 blackColor];
  v3 = sub_30CFB8();

  qword_42B018 = v3;
}

void sub_2D97D0()
{
  sub_A803C();
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.6];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.6];
  v2 = sub_30CFB8();

  qword_42B020 = v2;
}

void sub_2D98B0()
{
  if (_UISolariumEnabled())
  {
    v0 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    sub_A803C();
    if (qword_3FAFA8 != -1)
    {
      swift_once();
    }

    v1 = qword_3FAFB0;
    v2 = qword_40DB70;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = qword_40DB78;
    v0 = sub_30CFB8();
  }

  qword_42B040 = v0;
}

void sub_2D99B0()
{
  sub_A803C();
  isa = sub_30D048(0.85089, 0.85103, 0.85088, 1.0).super.isa;
  v1 = sub_30D048(0.17255, 0.17255, 0.18039, 1.0).super.isa;
  v2 = sub_30CFB8();

  qword_42B048 = v2;
}

void static ToolbarBlurEffect.effectForAppearance(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() effectWithBlurRadius:30.0];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = 2.0;
    if (a1 == 2)
    {
      v4 = 1.0;
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    v6 = [v3 colorEffectSaturate:v4];
    v7 = [objc_opt_self() systemBackgroundColor];
    v8 = objc_opt_self();
    v9 = [v8 effectCompositingColor:v7 withMode:v5 alpha:0.88];

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_31D470;
      *(v10 + 32) = v2;
      *(v10 + 40) = v6;
      *(v10 + 48) = v9;
      sub_2D9E3C();
      v11 = v2;
      v12 = v6;
      v13 = v9;
      isa = sub_30C358().super.isa;

      [v8 effectCombiningEffects:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

id ToolbarBlurEffect.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolbarBlurEffect();
  return objc_msgSendSuper2(&v2, "init");
}

id ToolbarBlurEffect.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToolbarBlurEffect();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ToolbarBlurEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolbarBlurEffect();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2D9E3C()
{
  result = qword_40D660;
  if (!qword_40D660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_40D660);
  }

  return result;
}

id sub_2D9EF0()
{
  result = [*&v0[qword_40DBC0] superview];
  if (result)
  {
    v2 = result;
    sub_293E0();
    v3 = v0;
    v4 = sub_30D098();

    return (v4 & 1);
  }

  return result;
}

void sub_2D9FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (sub_2D9EF0())
  {
    v1 = *&v0[qword_40DBC0];
    [v0 bounds];
    [v1 setFrame:?];
  }
}

void sub_2DA068(void *a1)
{
  v1 = a1;
  sub_2D9FC4();
}

id sub_2DA0D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id UIBarButtonItem.init(title:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_6EB34();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = v6;

  v9 = sub_30D0C8();
  [v8 setPrimaryAction:{v9, 0, 0, 0, sub_74D00, v7}];

  return v8;
}

id UIBarButtonItem.init(barButtonSystemItem:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:a1 target:0 action:0];
  sub_6EB34();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v5;
  sub_A0EF8(a2, a3);
  v8 = sub_30D0C8();
  [v7 setPrimaryAction:{v8, 0, 0, 0, sub_231CD4, v6}];

  sub_2B8D4(a2, a3);
  return v7;
}

id UIBarButtonItem.init(image:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_6EB34();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a1;

  v9 = v6;
  v10 = sub_30D0C8();
  [v9 setPrimaryAction:{v10, 0, 0, 0, sub_747B0, v7}];

  return v9;
}

uint64_t sub_2DA550()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2DA588()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2DA5D0()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 16);
  if (v1)
  {
    v6 = *v0;
    v7[0] = v2;
    *(v7 + 9) = *(v0 + 25);
    v3 = *(v0 + 64);
    v14 = *(v0 + 48);
    *v15 = v3;
    *&v15[9] = *(v0 + 73);
    sub_30D808(1uLL);
    sub_8FC54(v0, &v8);
    sub_248308();
    sub_248308();
    sub_232C20(&v14);
    return sub_232C20(&v6);
  }

  else
  {
    v8 = *v0;
    v9 = v2;
    v5 = *(v0 + 48);
    v10 = *(v0 + 32);
    v11 = v5;
    *v12 = *(v0 + 64);
    *&v12[9] = *(v0 + 73);
    v13 = v1;
    v14 = v8;
    *v15 = v9;
    *&v15[16] = v10;
    v15[24] = BYTE8(v10);
    sub_30D808(0);
    sub_8FC54(v0, &v6);
    sub_248308();
    return sub_F0520(&v8);
  }
}

Swift::Int sub_2DA6DC()
{
  sub_30D7F8();
  sub_2DA5D0();
  sub_30C0D8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2DA770()
{
  sub_2DA5D0();
  sub_30C0D8();
  sub_30C1F8();
}

Swift::Int sub_2DA800()
{
  sub_30D7F8();
  sub_2DA5D0();
  sub_30C0D8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2DA890(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v14[2] = a1[2];
  v14[3] = v2;
  v15[0] = a1[4];
  *(v15 + 10) = *(a1 + 74);
  v3 = a1[1];
  v14[0] = *a1;
  v14[1] = v3;
  v4 = a2[1];
  v16[0] = *a2;
  v16[1] = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *&v17[10] = *(a2 + 74);
  v16[3] = v6;
  *v17 = v7;
  v16[2] = v5;
  if (sub_23253C(v14, v16))
  {
    v8 = sub_30C0D8();
    v10 = v9;
    if (v8 == sub_30C0D8() && v10 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_30D728();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2DA980()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DC60);
  __swift_allocate_value_buffer(v0, qword_40DC48);
  __swift_project_value_buffer(v0, qword_40DC48);
  v1 = [objc_opt_self() defaultCenter];
  sub_124C4(0, &qword_40DC68);
  sub_2DADE8();
  return sub_308618();
}

id sub_2DAA3C(__int128 *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[1];
  v45 = a1[2];
  v46 = v3;
  v5 = a1[3];
  *v47 = a1[4];
  *&v47[10] = *(a1 + 74);
  v6 = a1[1];
  v43 = *a1;
  v44 = v6;
  v57 = v45;
  v58 = v5;
  v59[0] = a1[4];
  *(v59 + 10) = *(a1 + 74);
  v55 = v43;
  v56 = v4;
  sub_8FC54(&v43, &v48);
  v7 = [a2 preferredContentSizeCategory];
  v50 = v57;
  v51 = v58;
  v52 = v59[0];
  v53 = v59[1];
  v48 = v55;
  v49 = v56;
  v54 = v7;
  if (qword_3FB038 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DC60);
  __swift_project_value_buffer(v8, qword_40DC48);
  swift_beginAccess();
  v33 = v52;
  v34 = v53;
  v35 = v54;
  v29 = v48;
  v30 = v49;
  v31 = v50;
  v32 = v51;
  sub_2DAD80(&v48, &v55);
  sub_308628();
  v59[0] = v33;
  v59[1] = v34;
  v60 = v35;
  v55 = v29;
  v56 = v30;
  v57 = v31;
  v58 = v32;
  sub_2DADB8(&v55);
  if (v36)
  {
    swift_endAccess();
    sub_2DADB8(&v48);
    return v36;
  }

  else
  {
    swift_endAccess();
    v11 = *(&v43 + 1);
    v10 = v43;
    v13 = *(&v44 + 1);
    v12 = v44;
    v14 = v45;
    v15 = BYTE8(v45);
    if (v47[25])
    {
      v21 = BYTE8(v45);
      v22 = v45;
      v23 = *(&v44 + 1);
      v24 = v44;
      v25 = *(&v43 + 1);
      v26 = v43;
      v11 = *(&v46 + 1);
      v16 = v46;
      v12 = *v47;
      v13 = *&v47[8];
      v14 = *&v47[16];
      v17 = v47[24];
      sub_124C4(0, &qword_4019C0);
      sub_8FC54(&v43, &v29);
      if (sub_30C978())
      {
        sub_A01F8(v16, v11, v12, v13, v14, v17);
        v11 = v25;
        v10 = v26;
        v13 = v23;
        v12 = v24;
        v14 = v22;
        v15 = v21;
      }

      else
      {
        sub_A01F8(v26, v25, v24, v23, v22, v21);
        v18 = v17;
        v10 = v16;
        v15 = v18;
      }
    }

    else
    {
      sub_8FC54(&v43, &v29);
    }

    v37 = v10;
    v38 = v11;
    v39 = v12;
    v40 = v13;
    v41 = v14;
    v42 = v15;
    v19 = sub_2483FC(a2);
    sub_A01F8(v10, v11, v12, v13, v14, v15);
    v28 = v19;
    v33 = v52;
    v34 = v53;
    v35 = v54;
    v29 = v48;
    v30 = v49;
    v31 = v50;
    v32 = v51;
    swift_beginAccess();
    sub_2DAD80(&v48, v27);
    v20 = v19;
    sub_308638();
    swift_endAccess();
    sub_2DADB8(&v48);
    return v20;
  }
}

unint64_t sub_2DADE8()
{
  result = qword_40DC70;
  if (!qword_40DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40DC70);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2DAE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2DAEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2DAF1C()
{
  result = qword_40DC78;
  if (!qword_40DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40DC78);
  }

  return result;
}

uint64_t static UIHoverStyle.defaultFloatingView(subtractingInternalPadding:)()
{
  v0 = sub_304C68();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406140);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_2DB270();
  sub_30C6D8();
  sub_30C6B8();
  sub_304C38();
  sub_304C48();
  (*(v1 + 8))(v3, v0);
  (*(v1 + 56))(v6, 0, 1, v0);
  return sub_30C718();
}

uint64_t static UIShape.defaultFloatingHoverRoundedRect(subtractingInternalPadding:)()
{
  v0 = sub_304C68();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30C6D8();
  sub_30C6B8();
  sub_304C38();
  sub_304C48();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_2DB270()
{
  result = qword_4061A0;
  if (!qword_4061A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4061A0);
  }

  return result;
}

void sub_2DB2E0(void *a1, double a2, double a3, double a4)
{
  v9 = [v4 layer];
  v10 = [a1 CGColor];
  [v9 setShadowColor:v10];

  v11 = [v4 layer];
  [v11 setShadowRadius:a2];

  v12 = [v4 layer];
  [v12 setShadowOffset:{a3, a4}];

  v14 = [v4 layer];
  LODWORD(v13) = 1.0;
  [v14 setShadowOpacity:v13];
}

void sub_2DB418()
{
  v11 = [objc_allocWithZone(NSMutableAttributedString) init];
  v1 = sub_30C098();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() textAttachmentWithImage:v2];
    v4 = [objc_opt_self() attributedStringWithAttachment:v3];

    if (v4)
    {
      [v11 appendAttributedString:v4];
      v5 = objc_allocWithZone(NSAttributedString);
      v6 = sub_30C098();
      v7 = [v5 initWithString:v6];

      [v11 appendAttributedString:v7];
      v8 = objc_allocWithZone(NSAttributedString);
      v9 = sub_30C098();
      v10 = [v8 initWithString:v9];

      [v11 appendAttributedString:v10];
    }
  }

  [v0 setAttributedText:v11];
}

uint64_t sub_2DB5F8(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v1 |= 4uLL;
    goto LABEL_5;
  }

  if ((a1 & 2) == 0)
  {
    v1 = 0;
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = 2;
  if ((a1 & 4) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    return v1 | 8;
  }

  return v1;
}

void UIScrollView.perform(testCase:runner:)(uint64_t a1, void *a2)
{
  v5 = objc_opt_self();
  if (![v5 isRecapAvailable])
  {
    v14 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v14);
    (*(v15 + 16))(a1, 0xD000000000000013, 0x8000000000345D70, v14, v15);
    return;
  }

  v6 = *(a1 + 56) >> 6;
  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }

    v7 = [v2 window];
    if (!v7)
    {
      v19 = a2[3];
      v20 = a2[4];
      __swift_project_boxed_opaque_existential_1Tm(a2, v19);
      (*(v20 + 16))(a1, 0xD000000000000028, 0x8000000000345D90, v19, v20);
      return;
    }

    v8 = v7;
    v9 = objc_allocWithZone(RPTResizeTestParameters);
    v10 = v8;
    v11 = sub_30C098();
    v25 = sub_2DB948;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_914CC;
    v24 = &block_descriptor_74;
    v12 = _Block_copy(&v21);

    v13 = [v9 initWithTestName:v11 window:v10 completionHandler:v12];
    _Block_release(v12);

    [v5 runTestWithParameters:v13];
  }

  else
  {
    v16 = objc_allocWithZone(RPTScrollViewTestParameters);
    v17 = sub_30C098();
    v25 = sub_2DB93C;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_914CC;
    v24 = &block_descriptor_3_0;
    v18 = _Block_copy(&v21);

    v13 = [v16 initWithTestName:v17 scrollView:v2 completionHandler:v18];
    _Block_release(v18);

    RPTAmplitudeFromPagesOfView();
    [v13 setAmplitude:?];
    [v5 runTestWithParameters:v13];
  }
}

uint64_t sub_2DB954(const char *a1)
{
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304168();
  v6 = sub_3041D8();
  v7 = sub_30C778();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t UITabBarItem.navigationTab.getter()
{
  [v0 tag];

  return sub_308438();
}

uint64_t static UITableViewCell.defaultReuseIdentifier.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_30C0D8();

  return v2;
}

void sub_2DBBFC(double a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = sub_2DBCF0(v3);
    [v5 _scaledValueForValue:1 useLanguageAwareScaling:a1];
  }

  else
  {
    if (qword_3FB040 != -1)
    {
      swift_once();
    }

    v6 = sub_2DBCF0(qword_42B078);
    v7 = sub_2DBCF0(v3);
    [v6 _bodyLeading];
    [v7 _bodyLeading];
  }
}

id sub_2DBCF0(void *a1)
{
  v3 = v1[1];
  v55 = *v1;
  v56 = v3;
  v4 = v1[3];
  v57 = v1[2];
  v58 = v4;
  v59[0] = v1[4];
  *(v59 + 10) = *(v1 + 74);
  v5 = v55;
  v6 = WORD4(v59[1]);
  v7 = WORD4(v59[1]) >> 14;
  if (!v7)
  {
    v10 = [objc_opt_self() preferredFontForTextStyle:v55 compatibleWithTraitCollection:a1];

    return v10;
  }

  if (v7 == 1)
  {
    *&v50 = v55;
    *(&v50 + 1) = DWORD2(v55);
    *&v52 = 0;
    v51 = 0uLL;
    BYTE8(v52) = 0;
    v54[25] = 0;
    sub_1728F0(&v55, v49);
    v8 = sub_2DAA3C(&v50, a1);
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

    sub_232BCC(&v55);
    return v9;
  }

  v43 = *(&v55 + 1);
  v12 = *(&v56 + 1);
  v13 = v56;
  v14 = v58;
  v47 = *(&v59[0] + 1);
  v48 = *&v59[0];
  v45 = v56;
  v46 = *&v59[1];
  v15 = *(&v57 + 1);
  v16 = v57;
  v40 = *(&v58 + 1);
  v41 = v58;
  if ((WORD4(v59[1]) & 0x100) != 0)
  {
    v39 = v57;
    sub_111AE0();
    *&v54[10] = *(v1 + 74);
    v22 = v1[3];
    v52 = v1[2];
    v53 = v22;
    *v54 = v1[4];
    v23 = v1[1];
    v50 = *v1;
    v51 = v23;
    *&v54[24] &= 0x3FFFu;
    sub_8FC54(&v50, v49);
    if ((sub_30C978() & 1) == 0)
    {
      v16 = v39;
      sub_A01F8(v5, v43, v45, v12, v39, v15);
      v20 = *(&v14 + 1);
      v42 = v14;
      v19 = v43;
      v21 = v47;
      v13 = v48;
      v24 = v46;
      v25 = v6;
      goto LABEL_13;
    }

    sub_A01F8(v14, *(&v14 + 1), v48, v47, v46, v6);
    v42 = v5;
    v19 = v43;
    v20 = v43;
    v13 = v45;
    v21 = v12;
    v16 = v39;
  }

  else
  {
    *&v54[10] = *(v1 + 74);
    v17 = v1[3];
    v52 = v1[2];
    v53 = v17;
    *v54 = v1[4];
    v18 = v1[1];
    v50 = *v1;
    v51 = v18;
    *&v54[24] &= 0x3FFFu;
    sub_8FC54(&v50, v49);
    v42 = v5;
    v19 = v43;
    v20 = v43;
    v21 = v12;
  }

  v24 = v16;
  v25 = v15;
LABEL_13:
  if (v25 == 2)
  {
    v27 = v20;
    v28 = objc_opt_self();

    v29 = [a1 preferredContentSizeCategory];
    v30 = v13();

    v31 = [v28 systemFontOfSize:v30 weight:*&v24];

    v32 = v42;
    v33 = v27;
    v34 = v13;
    v35 = v21;
    v36 = v24;
    v37 = 2;
  }

  else
  {
    if (v25)
    {
LABEL_17:
      sub_A01F8(v42, v20, v13, v21, v24, v25);
      *&v50 = v5;
      *(&v50 + 1) = v19;
      *&v51 = v45;
      *(&v51 + 1) = v12;
      *&v52 = v16;
      *(&v52 + 1) = v15;
      *&v53 = v41;
      *(&v53 + 1) = v40;
      *v54 = v48;
      *&v54[8] = v47;
      *&v54[16] = v46;
      *&v54[24] = v6 & 0x3FFF;
      v26 = sub_2DAA3C(&v50, a1);
      v9 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];

      return v9;
    }

    if (v20)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v38 = v20;
    v31 = [objc_opt_self() preferredFontForTextStyle:v42 compatibleWithTraitCollection:a1];
    v32 = v42;
    v33 = v38;
    v34 = v13;
    v35 = v21;
    v36 = v24;
    v37 = 0;
  }

  sub_A01F8(v32, v33, v34, v35, v36, v37);
  return v31;
}

void sub_2DC11C()
{
  v0 = objc_opt_self();
  v1 = UIContentSizeCategoryLarge;
  v2 = [v0 traitCollectionWithPreferredContentSizeCategory:v1];

  qword_42B078 = v2;
}

uint64_t sub_2DC188(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v34 = a1[2];
  v35 = v3;
  v4 = a1[3];
  *v36 = a1[4];
  *&v36[10] = *(a1 + 74);
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a2[1];
  v7 = v6;
  v37 = *a2;
  v38 = v6;
  *&v41[10] = *(a2 + 74);
  v8 = a2[3];
  *v41 = a2[4];
  v9 = a2[3];
  v39 = a2[2];
  v40 = v9;
  v42[0] = v32;
  v42[1] = v2;
  *(v43 + 10) = *(a1 + 74);
  v42[2] = v34;
  v42[3] = v4;
  v43[0] = a1[4];
  v43[2] = v37;
  v43[3] = v7;
  *(v44 + 10) = *(a2 + 74);
  v10 = a2[4];
  v43[5] = v8;
  v44[0] = v10;
  v43[4] = v39;
  v11 = *&v36[24] >> 14;
  if (!v11)
  {
    if ((*&v41[24] & 0xC000) != 0)
    {
      goto LABEL_13;
    }

    v18 = sub_30C0D8();
    v20 = v19;
    if (v18 == sub_30C0D8() && v20 == v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_30D728();
    }

    sub_1728F0(&v37, v29);
    sub_1728F0(&v32, v29);
    sub_1728F0(&v32, v29);
    sub_1728F0(&v37, v29);

LABEL_18:
    sub_2DC4B4(v42);
    sub_232BCC(&v37);
    sub_232BCC(&v32);
    return v22 & 1;
  }

  v12 = DWORD2(v32);
  if (v11 != 1)
  {
    v26[0] = v32;
    v26[1] = v33;
    v26[2] = v34;
    v26[3] = v35;
    v26[4] = *v36;
    v27 = *&v36[16];
    v28 = *&v36[24] & 0x3FFF;
    if ((*&v41[24] & 0xC000) != 0x8000)
    {
      goto LABEL_13;
    }

    v29[0] = v37;
    v29[1] = v38;
    v29[2] = v39;
    v29[3] = v40;
    v29[4] = *v41;
    v30 = *&v41[16];
    v31 = *&v41[24] & 0x3FFF;
    sub_1728F0(&v37, v25);
    sub_1728F0(&v32, v25);
    sub_1728F0(&v32, v25);
    sub_1728F0(&v37, v25);
    v22 = sub_23253C(v26, v29);
    goto LABEL_18;
  }

  if ((*&v41[24] & 0xC000) != 0x4000)
  {
LABEL_13:
    sub_1728F0(&v32, v29);
    sub_1728F0(&v37, v29);
    sub_2DC4B4(v42);
    v22 = 0;
    return v22 & 1;
  }

  v13 = DWORD2(v37);
  v14 = sub_30C0D8();
  v16 = v15;
  if (v14 == sub_30C0D8() && v16 == v17)
  {
    sub_1728F0(&v32, v29);
    sub_1728F0(&v37, v29);

    sub_2DC4B4(v42);
LABEL_15:
    v22 = v12 == v13;
    return v22 & 1;
  }

  v23 = sub_30D728();
  sub_1728F0(&v32, v29);
  sub_1728F0(&v37, v29);

  sub_2DC4B4(v42);
  v22 = 0;
  if (v23)
  {
    goto LABEL_15;
  }

  return v22 & 1;
}

uint64_t sub_2DC4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40DD18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2DC540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 90))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 88) >> 7) & 0x7C | (*(a1 + 88) >> 14)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2DC594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 80) = 0;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 88) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

Swift::Void __swiftcall UIView.addConstraintsFillingSuperview()()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_31D480;
    v6 = [v1 leftAnchor];
    v7 = [v3 leftAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    *(v5 + 32) = v8;
    v9 = [v1 rightAnchor];
    v10 = [v3 rightAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v5 + 40) = v11;
    v12 = [v1 topAnchor];
    v13 = [v3 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v5 + 48) = v14;
    v15 = [v1 bottomAnchor];
    v16 = [v3 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v5 + 56) = v17;
    sub_91304();
    isa = sub_30C358().super.isa;

    [v4 activateConstraints:isa];
  }
}

void UIView.addSizeConstraints(_:)(double a1, double a2)
{
  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_317F20;
  v8 = [v3 widthAnchor];
  v9 = [v8 constraintEqualToConstant:a1];

  *(v7 + 32) = v9;
  v10 = [v3 heightAnchor];
  v11 = [v10 constraintEqualToConstant:a2];

  *(v7 + 40) = v11;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v6 activateConstraints:isa];
}

void UIView.addConstraintsFillingSuperview(insets:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 superview];
  if (v10)
  {
    v11 = v10;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_31D480;
    v14 = [v5 leadingAnchor];
    v15 = [v11 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:a2];

    *(v13 + 32) = v16;
    v17 = [v5 trailingAnchor];
    v18 = [v11 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-a4];

    *(v13 + 40) = v19;
    v20 = [v5 topAnchor];
    v21 = [v11 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:a1];

    *(v13 + 48) = v22;
    v23 = [v5 bottomAnchor];
    v24 = [v11 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-a3];

    *(v13 + 56) = v25;
    sub_91304();
    isa = sub_30C358().super.isa;

    [v12 activateConstraints:isa];
  }
}

void *static UIView.disableTranslatesAutoresizingMaskIntoConstraints(on:)(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result + 4;
    do
    {
      v3 = *v2++;
      result = v3;
      if (v3)
      {
        result = [result setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      --v1;
    }

    while (v1);
  }

  return result;
}

double UIView.firstBaselineFromTop.getter()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double UIView.lastBaselineMaxY.getter()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double UIButton.lastBaselineFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

double UIButton.firstBaselineFromTop.getter()
{
  [v0 bounds];
  [v0 contentRectForBounds:?];
  MinY = CGRectGetMinY(v10);
  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 _firstBaselineOffsetFromTop];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [v0 contentEdgeInsets];
  v7 = v6;
  [v0 titleEdgeInsets];
  return MinY + v5 + v7 + v8;
}

double UIImageView.firstBaselineFromTop.getter()
{
  v1 = [v0 image];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 size];
  v4 = v3;

  return v4;
}

Swift::Void __swiftcall UIVisualEffectView.setBlurEffect(_:animated:)(UIBlurEffect_optional _, Swift::Bool animated)
{
  is_nil = _.is_nil;
  isa = _.value.super.super.isa;
  v4 = [v2 effect];
  if (v4)
  {
    v5 = v4;
    if (isa)
    {
      sub_124C4(0, &qword_40D660);
      v6 = isa;
      v7 = sub_30D098();

      if (v7)
      {
        return;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

  if (isa)
  {
LABEL_10:
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = isa;
    if (is_nil)
    {
      v12 = objc_opt_self();
      aBlock[4] = sub_2DD590;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_75;
      v13 = _Block_copy(aBlock);
      v14 = isa;

      [v12 animateWithDuration:v13 animations:0.15];

      _Block_release(v13);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v16 = isa;
      if (Strong)
      {
        v17 = v16;

        [Strong setEffect:v17];
      }
    }

    return;
  }

  v8 = 0;
}

void sub_2DD4B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setEffect:a2];
  }
}

uint64_t sub_2DD518()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2DD550()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2DD5B0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:a1];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:a2];
  v5 = [v3 contentView];
  [v5 addSubview:v4];

  v6 = [v4 superview];
  if (v6)
  {
    v7 = v6;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_31D480;
    v10 = [v4 leftAnchor];
    v11 = [v7 leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v4 rightAnchor];
    v14 = [v7 rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v4 topAnchor];
    v17 = [v7 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v4 bottomAnchor];
    v20 = [v7 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v8 activateConstraints:isa];
  }

  return v3;
}

id sub_2DD8A8(uint64_t a1, uint64_t a2)
{
  sub_2DDAD0(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_30D718();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for UnpreventableHoverGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_9097C(a1);
  return v13;
}

id sub_2DDA78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnpreventableHoverGestureRecognizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2DDAD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2DDBF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellArtwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2DDCA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (sub_3090C8())
  {
    v4 = [v0 traitCollection];
    v5 = sub_30C968();

    if ((v5 & 1) == 0)
    {
      sub_302BD8();
    }
  }

  else
  {
    sub_309078();
    v6 = sub_3031C8();
    if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
    {
      sub_125E18(v3);
    }

    else
    {
      sub_303198();
      sub_6D924(v3);
    }
  }
}

void sub_2DDE8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_gradientView);
}

void *sub_2DDF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_logoArtworkView);
  v2 = v1;
  return v1;
}

void sub_2DDFB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_logoArtworkView);
}

void *sub_2DE074()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_logoArtworkView);
  v2 = v1;
  return v1;
}

_BYTE *sub_2DE0A4()
{
  type metadata accessor for ArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 4;
  v8 = v1;
  sub_2DE78(&v8);
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  v4 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v4 = v3;
  *(v4 + 8) = xmmword_3333C0;
  *(v4 + 3) = 0x401C000000000000;
  v6 = v3;

  sub_2D294();
  return v0;
}

char *sub_2DE1A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v9 = v1;
  sub_2DE78(&v9);
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v0 setBackgroundColor:v3];

  v4 = v0;
  v5 = [v2 clearColor];
  v6 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = v5;
  v7 = v5;

  sub_2BE604();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0;
  sub_2BE604();

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

char *sub_2DE2CC(uint64_t a1, void *a2, char a3)
{
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_backgroundArtworkView;
  *(v3 + v6) = sub_2DE0A4();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_logoArtworkView;
  *(v3 + v7) = sub_2DE1A0();
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_gradientView;
  type metadata accessor for UpsellTitleBarGradientView();
  *(v3 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v64 = a2;
  v9 = sub_2DF510(a1, v64);
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_backgroundArtworkView;
  v11 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_backgroundArtworkView];
  v62 = OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView;
  v12 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView];
  v13 = v9;
  [v13 insertSubview:v11 belowSubview:v12];
  v14 = *&v9[v10];
  sub_30CE98();

  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_gradientView;
  [*&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_gradientView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addSubview:*&v13[v15]];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_31D480;
  v18 = [*&v13[v15] leadingAnchor];
  v19 = [v13 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [*&v13[v15] trailingAnchor];
  v22 = [v13 trailingAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v17 + 40) = v23;
  v24 = [*&v13[v15] topAnchor];
  v25 = [v13 topAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v17 + 48) = v26;
  v27 = [*&v13[v15] heightAnchor];
  v28 = [v27 constraintEqualToConstant:100.0];

  *(v17 + 56) = v28;
  sub_91304();
  isa = sub_30C358().super.isa;

  v63 = v16;
  [v16 activateConstraints:isa];

  v30 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_logoArtworkView];
  if (v30)
  {
    v31 = objc_allocWithZone(UIView);
    v32 = v30;
    v33 = [v31 init];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addSubview:v33];
    v34 = v32;
    [v33 addSubview:v34];
    if (a3)
    {
      v35 = 38.0;
    }

    else
    {
      v35 = 54.0;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_32B8D0;
    v37 = [v33 topAnchor];
    v38 = [v13 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:v35];

    *(v36 + 32) = v39;
    v40 = [v33 leadingAnchor];
    v41 = [v13 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v36 + 40) = v42;
    v43 = [v33 trailingAnchor];
    v44 = [v13 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v36 + 48) = v45;
    v46 = [v33 bottomAnchor];
    v47 = [*&v9[v62] topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v36 + 56) = v48;
    v49 = [v34 heightAnchor];

    v50 = [v49 constraintEqualToConstant:70.0];
    *(v36 + 64) = v50;
    v51 = [v34 widthAnchor];

    sub_303E38();
    v52 = [v51 constraintEqualToConstant:v65];

    *(v36 + 72) = v52;
    v53 = [v34 centerYAnchor];

    v54 = [v33 centerYAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    *(v36 + 80) = v55;
    v56 = [v34 centerXAnchor];

    v57 = [v33 centerXAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v36 + 88) = v58;
    v59 = sub_30C358().super.isa;

    [v63 activateConstraints:v59];
  }

  return v13;
}

void sub_2DEAD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_gradientView);
}

void *sub_2DEBB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_logoArtworkView);
  v2 = v1;
  return v1;
}

void sub_2DEC24()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_gradientView);
}

void *sub_2DED04()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_logoArtworkView);
  v2 = v1;
  return v1;
}

_BYTE *sub_2DED34()
{
  v0 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  v8 = v1;
  sub_2DE78(&v8);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  v4 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v4 = v3;
  *(v4 + 8) = xmmword_3333C0;
  *(v4 + 3) = 0x401C000000000000;
  v6 = v3;

  sub_2D294();
  return v0;
}

char *sub_2DEE4C(uint64_t a1, void *a2, char a3)
{
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_backgroundArtworkView;
  *(v3 + v7) = sub_2DED34();
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_logoArtworkView) = 0;

  v32 = a2;
  v8 = sub_2DF510(a1, v32);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_backgroundArtworkView;
  v10 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_backgroundArtworkView];
  v11 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView];
  v12 = v8;
  [v12 insertSubview:v10 belowSubview:v11];
  if (a3)
  {
    v13 = 58.0;
  }

  else
  {
    v13 = 74.0;
  }

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_31FDA0;
  v15 = [*&v8[v9] topAnchor];
  v16 = [v12 topAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:v13];

  *(v14 + 32) = v17;
  v18 = [*&v8[v9] heightAnchor];
  v19 = [v18 constraintGreaterThanOrEqualToConstant:30.0];

  *(v14 + 40) = v19;
  v20 = [*&v8[v9] centerXAnchor];
  v21 = [v12 centerXAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  *(v14 + 48) = v22;
  v23 = [*&v8[v9] widthAnchor];
  v24 = [*&v8[v9] heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v14 + 56) = v25;
  v26 = [*&v8[v9] bottomAnchor];
  v27 = [v12 bottomAnchor];

  v28 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:-35.0];
  *(v14 + 64) = v28;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v31 activateConstraints:isa];

  return v12;
}

void sub_2DF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = *a4;
  *(a1 + v7) = sub_2DED34();
  *(a1 + *a5) = 0;
  sub_30D648();
  __break(1u);
}

void sub_2DF230()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_logoArtworkView);
}

void *sub_2DF2F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews33UpsellSquareFallbackCompactHeader_logoArtworkView);
  v2 = v1;
  return v1;
}

id sub_2DF320(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_317F20;
  v11 = objc_allocWithZone(UIColor);
  v12 = v9;
  *(v10 + 32) = [v11 initWithWhite:0.0 alpha:0.32];
  *(v10 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
  v16 = 0;
  v15 = v10;
  v17 = xmmword_317F30;
  v18 = xmmword_317F40;
  v19 = kCAGradientLayerAxial;
  v13 = kCAGradientLayerAxial;
  sub_254AD8(&v15);

  return v12;
}

char *sub_2DF510(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for UpsellShowGridView());
  v7 = a2;

  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView] = sub_2EF940(v7, a1);
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellInformation] = v7;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_objectGraph] = a1;
  v27.receiver = v3;
  v27.super_class = type metadata accessor for UpsellArtwork();
  v8 = v7;

  v9 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:{1, v27.receiver, v27.super_class}];
  [v9 setPreservesSuperviewLayoutMargins:1];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView;
  [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:*&v9[v10]];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_31D480;
  v13 = [*&v9[v10] leadingAnchor];
  v14 = [v9 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [*&v9[v10] trailingAnchor];
  v17 = [v9 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [*&v9[v10] topAnchor];
  v20 = [v9 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [*&v9[v10] bottomAnchor];
  v23 = [v9 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor:v23];
  *(v12 + 56) = v24;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v11 activateConstraints:isa];

  return v9;
}

void sub_2DF858(int a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v122 = a2;
  v101 = a1;
  v4 = sub_303758();
  v111 = *(v4 - 8);
  v112 = v4;
  __chkstk_darwin(v4);
  v99 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v97 - v7;
  v9 = sub_3039D8();
  __chkstk_darwin(v9 - 8);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_3041E8();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v12 - 8);
  v118 = &v97 - v13;
  v110 = sub_303398();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_303DF8();
  v120 = *(v15 - 8);
  v121 = v15;
  __chkstk_darwin(v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v21 - 8);
  v100 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = &v97 - v24;
  __chkstk_darwin(v25);
  v27 = &v97 - v26;
  v28 = sub_3031C8();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v103 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v104 = &v97 - v32;
  __chkstk_darwin(v33);
  v35 = &v97 - v34;
  v36 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellInformation];
  sub_309078();
  v37 = *(v29 + 48);
  v117 = v29 + 48;
  v119 = v37;
  v38 = v37(v27, 1, v28);
  v113 = v28;
  v115 = v36;
  if (v38 == 1)
  {
    v39 = v3;
    sub_125E18(v27);
    v40 = v116;
  }

  else
  {
    v98 = v8;
    sub_6D85C(v27, v35);
    sub_3030E8();
    v41 = v20;
    v42 = v3;
    if (sub_3090C8())
    {
      v43 = v41;
      v44 = [v3 traitCollection];
      v45 = sub_30C968();

      v46 = v120;
      if (v45)
      {
        v41 = v43;
        v47 = v43;
        v48 = v121;
        (*(v120 + 8))(v47, v121);
        (*(v46 + 104))(v41, enum case for CropCode.upsellMac(_:), v48);
      }

      else
      {
        v49 = sub_302BD8();
        v41 = v43;
        v50 = v43;
        v51 = v121;
        (*(v46 + 8))(v50, v121);
        v52 = &enum case for CropCode.upsellWide(_:);
        if ((v49 & 1) == 0)
        {
          v52 = &enum case for CropCode.upsellTall(_:);
        }

        (*(v46 + 104))(v17, *v52, v51);
        (*(v46 + 32))(v41, v17, v51);
      }
    }

    v97 = v41;
    sub_6D8C0(v35, v104);
    v53 = v122;
    v54 = v116;
    sub_2DDCA8();
    v55 = v120;
    v56 = v121;
    v57 = v118;
    (*(v120 + 16))(v118, v41, v121);
    (*(v55 + 56))(v57, 0, 1, v56);
    v58 = v105;
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v106 + 8))(v58, v107);
    sub_3039C8();
    v59 = v108;
    sub_303378();
    v60 = *(v54 + 8);
    v61 = v60(v53, v54);
    type metadata accessor for ArtworkView();
    sub_221DB4();
    sub_308E28();

    v62 = v60(v53, v54);
    sub_303368();
    v63 = &v62[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
    *v63 = v64;
    *(v63 + 1) = v65;
    [v62 setNeedsLayout];

    v39 = v42;
    v40 = v54;
    v66 = v60(v53, v54);
    v68 = v111;
    v67 = v112;
    v69 = v98;
    (*(v111 + 104))(v98, enum case for ArtworkAspectRule.aspectFill(_:), v112);
    [v66 effectiveUserInterfaceLayoutDirection];
    [v66 setContentMode:5];
    (*(v109 + 8))(v59, v110);
    (*(v120 + 8))(v97, v121);
    sub_6D924(v35);
    v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
    swift_beginAccess();
    v71 = &v66[v70];
    v28 = v113;
    (*(v68 + 40))(v71, v69, v67);
    swift_endAccess();
  }

  v72 = v114;
  sub_309028();
  if (v119(v72, 1, v28) == 1)
  {
    sub_125E18(v72);
    v73 = v39;
  }

  else
  {
    v74 = v103;
    sub_6D85C(v72, v103);
    v73 = v39;
    v75 = (*(v40 + 16))(v122, v40);
    if (v75)
    {
      v76 = v75;
      [v75 frame];
      sub_6D8C0(v74, v104);
      (*(v120 + 56))(v118, 1, 1, v121);
      v77 = v105;
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v106 + 8))(v77, v107);
      v78 = [objc_opt_self() mainScreen];
      [v78 scale];

      v79 = v108;
      sub_303358();
      type metadata accessor for ArtworkView();
      sub_221DB4();
      sub_308E28();
      (*(v109 + 8))(v79, v110);
      sub_303198();
      v80 = &v76[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
      *v80 = v81;
      *(v80 + 1) = v82;
      [v76 setNeedsLayout];
      v84 = v111;
      v83 = v112;
      v85 = v99;
      (*(v111 + 104))(v99, enum case for ArtworkAspectRule.aspectFit(_:), v112);
      if ([v76 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
      {
        v86 = 12;
      }

      else
      {
        v86 = 11;
      }

      [v76 setContentMode:v86];
      sub_6D924(v74);
      v87 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
      swift_beginAccess();
      (*(v84 + 40))(&v76[v87], v85, v83);
      swift_endAccess();
    }

    else
    {
      sub_6D924(v74);
    }
  }

  v88 = sub_309058();
  v90 = v88;
  LOBYTE(v91) = v89;
  if (v89 == -1)
  {
    v94 = v88;
    v91 = v100;
    sub_309078();
    if (v119(v91, 1, v113) == 1)
    {
      sub_125E18(v91);
      v93 = 0;
      v90 = 0;
      LOBYTE(v91) = -1;
      goto LABEL_25;
    }

    v90 = *(v91 + 56);
    v95 = v91;
    LODWORD(v91) = *(v91 + 64);
    sub_12FCF8(v90, v91);
    sub_6D924(v95);
    if (v91 == 255)
    {
      v93 = 0;
      goto LABEL_25;
    }

    sub_12FD0C(v90, v91);
    v88 = v94;
    v89 = -1;
  }

  sub_12FCF8(v88, v89);
  v92 = sub_303D48();
  sub_860E0(v90, v91);
  v93 = sub_30D018();

LABEL_25:
  v96 = (*(v40 + 8))(v122, v40);
  [v96 setBackgroundColor:v93];

  [v73 setBackgroundColor:v93];
  sub_12FD20(v90, v91);
}

char *sub_2E05B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 4;
  v33 = v8;
  sub_2DE78(&v33);
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_logoArtworkView) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_gradientView;
  type metadata accessor for UpsellTitleBarGradientView();
  *(v3 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v10 = a2;
  v11 = sub_2DF510(a1, v10);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_backgroundArtworkView;
  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_backgroundArtworkView];
  v14 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView];
  v15 = v11;
  [v15 insertSubview:v13 belowSubview:v14];
  v16 = *&v11[v12];
  sub_30CE98();

  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_gradientView;
  [*&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellEditorialHeader_gradientView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:*&v15[v17]];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_31D480;
  v20 = [*&v15[v17] leadingAnchor];
  v21 = [v15 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [*&v15[v17] trailingAnchor];
  v24 = [v15 trailingAnchor];

  v25 = [v23 constraintEqualToAnchor:v24];
  *(v19 + 40) = v25;
  v26 = [*&v15[v17] topAnchor];
  v27 = [v15 topAnchor];

  v28 = [v26 constraintEqualToAnchor:v27];
  *(v19 + 48) = v28;
  v29 = [*&v15[v17] heightAnchor];
  v30 = [v29 constraintEqualToConstant:100.0];

  *(v19 + 56) = v30;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v18 activateConstraints:isa];

  return v15;
}

char *sub_2E0948(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_backgroundArtworkView;
  *(v2 + v5) = sub_2DED34();
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_logoArtworkView) = 0;

  v28 = a2;
  v6 = sub_2DF510(a1, v28);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_backgroundArtworkView;
  v8 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews26UpsellSquareFallbackHeader_backgroundArtworkView];
  v9 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView];
  v10 = v6;
  [v10 insertSubview:v8 belowSubview:v9];
  type metadata accessor for CGSize(0);
  sub_303E38();
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_31FDA0;
  v12 = [*&v6[v7] topAnchor];
  v13 = [v10 topAnchor];
  sub_303E38();
  v14 = [v12 constraintEqualToAnchor:v13 constant:v29];

  *(v11 + 32) = v14;
  v15 = [*&v6[v7] bottomAnchor];
  v16 = [v10 bottomAnchor];

  sub_303E38();
  v17 = [v15 constraintEqualToAnchor:v16 constant:-v29];

  *(v11 + 40) = v17;
  v18 = [*&v6[v7] widthAnchor];
  v19 = [v18 constraintEqualToConstant:v29];

  *(v11 + 48) = v19;
  v20 = [*&v6[v7] heightAnchor];
  v21 = [v20 constraintEqualToConstant:v30];

  *(v11 + 56) = v21;
  v22 = [*&v6[v7] centerXAnchor];
  v23 = [v10 centerXAnchor];

  v24 = [v22 constraintEqualToAnchor:v23];
  *(v11 + 64) = v24;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v27 activateConstraints:isa];

  return v10;
}

char *sub_2E0CDC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 4;
  v36 = v8;
  sub_2DE78(&v36);
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_logoArtworkView) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_gradientView;
  type metadata accessor for UpsellTitleBarGradientView();
  *(v3 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v10 = a2;
  v11 = sub_2DF510(a1, v10);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_backgroundArtworkView;
  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_backgroundArtworkView];
  v14 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews13UpsellArtwork_upsellShowGridView];
  v15 = v11;
  [v15 insertSubview:v13 belowSubview:v14];
  v16 = *&v11[v12];
  sub_30CE98();

  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_gradientView;
  [*&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellFallbackCompactHeader_gradientView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:*&v15[v17]];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_31FDA0;
  v20 = [v15 heightAnchor];
  v21 = [v15 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [*&v15[v17] leadingAnchor];
  v24 = [v15 leadingAnchor];

  v25 = [v23 constraintEqualToAnchor:v24];
  *(v19 + 40) = v25;
  v26 = [*&v15[v17] trailingAnchor];
  v27 = [v15 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27];
  *(v19 + 48) = v28;
  v29 = [*&v15[v17] topAnchor];
  v30 = [v15 topAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v19 + 56) = v31;
  v32 = [*&v15[v17] heightAnchor];
  v33 = [v32 constraintEqualToConstant:100.0];

  *(v19 + 64) = v33;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v18 activateConstraints:isa];

  return v15;
}

void sub_2E10D4(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = *a1;
  type metadata accessor for ArtworkView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 4;
  v11 = v9;
  sub_2DE78(&v11);
  *(v6 + v7) = v8;
  *(v6 + *a2) = 0;
  v10 = *a3;
  type metadata accessor for UpsellTitleBarGradientView();
  *(v6 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_30D648();
  __break(1u);
}

uint64_t sub_2E11C0()
{
  v1 = v0;
  sub_2E13B0();
  sub_302C18();
  v3 = v2;
  result = sub_302C18();
  if (v3 != v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView];
    v7 = *(v6 + qword_40E018);
    *(v6 + qword_40E018) = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass];
    if (v7 == 8 || (sub_302C18(), v9 = v8, sub_302C18(), v9 != v10))
    {
      sub_2E404C();
    }

    sub_2E13FC();
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2E1FAC;
    *(v13 + 24) = v12;
    v17[4] = sub_293C0;
    v17[5] = v13;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_19D688;
    v17[3] = &block_descriptor_76;
    v14 = _Block_copy(v17);
    v15 = v1;

    [v11 performWithoutAnimation:v14];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2E13B0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass;
  result = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass];
  if (result == 8)
  {
    [v0 bounds];
    CGRectGetWidth(v3);
    result = sub_302BF8();
    v0[v1] = result;
  }

  return result;
}

void sub_2E13FC()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_viewConstraints;
  sub_91304();

  isa = sub_30C358().super.isa;

  [v1 deactivateConstraints:isa];

  *(v0 + v2) = sub_2E1770();

  v4 = sub_30C358().super.isa;

  [v1 activateConstraints:v4];
}

char *sub_2E14F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_imageProvider];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView;
  v15 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
  *&v4[v14] = sub_2E423C(0, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass] = 8;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_viewConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_objectGraph] = 0;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_304698();
  v17 = sub_3046C8();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  sub_30CA88();
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView;
  [*&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v16 contentView];
  [v19 addSubview:*&v16[v18]];

  sub_2E13B0();
  *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_viewConstraints] = sub_2E1770();

  v20 = objc_opt_self();
  sub_91304();

  isa = sub_30C358().super.isa;

  [v20 activateConstraints:isa];

  return v16;
}

void *sub_2E1770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView];
  v4 = [v3 topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(inited + 32) = v7;
  v8 = [v3 bottomAnchor];
  v9 = [v1 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(inited + 40) = v11;
  v12 = [v3 leadingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(inited + 48) = v15;
  sub_14A360(inited);
  if (sub_302BD8())
  {
    v16 = [v3 widthAnchor];
    v17 = [v16 constraintEqualToConstant:370.0];
  }

  else
  {
    v18 = [v3 trailingAnchor];
    v19 = [v1 contentView];
    v20 = [v19 trailingAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
  }

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_2E1AD4(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);

  sub_30B8E8();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_imageProvider;
  swift_beginAccess();
  sub_15AAE0(v6, v2 + v4);
  swift_endAccess();
  return sub_2E306C(a1);
}

void sub_2E1B94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView);
  sub_2E20D4(a1);
  v3 = sub_2E13B0();
  v4 = *(v2 + qword_40E018);
  *(v2 + qword_40E018) = v3;
  if (v4 == 8 || (sub_302C18(), v6 = v5, sub_302C18(), v6 != v7))
  {
    sub_2E404C();
  }
}

uint64_t sub_2E1CCC()
{
  v1 = sub_307158();
  sub_2E13B0();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass) = v1;

  return sub_2E11C0();
}

uint64_t sub_2E1D28(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2E1F2C(&qword_40DFE0, v3, type metadata accessor for UpsellBannerCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_2E1F2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2E1F74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2E1FE4()
{
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_imageProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_bannerView;
  v3 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
  *(v0 + v2) = sub_2E423C(0, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell____lazy_storage___sizeClass) = 8;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_viewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16UpsellBannerCell_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

id sub_2E20D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_303398();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v97 - v9;
  v11 = sub_3031C8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v2[qword_40E0B8];
  if (result)
  {
    v100 = v5;
    v101 = v4;
    v102 = result;

    sub_2E3D20(v16);
    sub_307EE8();
    v17 = 1;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_EB68(v10, &unk_402FF0);
      v18 = qword_40E080;
      v2[qword_40E080] = 0;
      v19 = sub_2E4D5C();
      [v19 setHidden:sub_2E6138()];

      v20 = sub_2E5E88(&qword_40E0A0, sub_2E5EEC);
      v21 = qword_40E010;
      if (v2[qword_40E010])
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      (*&stru_B8.segname[(swift_isaMask & *v20) - 8])(v22);

      v23 = *&v2[qword_40E0B0];
      if (sub_2E6138())
      {
        v24 = 1;
      }

      else
      {
        v24 = v2[v21] ^ 1;
      }

      [v23 setHidden:v24 & 1];
      v40 = sub_2E61E0(v2);
      v41 = *&v2[qword_40E058];
      [v41 setNumberOfLines:v40];
      v42 = [v2 traitCollection];
      v43 = [v42 userInterfaceIdiom];

      if (v43 == &dword_0 + 1 && v2[qword_40E028] == 1 && v2[v18] == 1)
      {
        [*&v2[qword_40E048] setAlignment:3];
      }
    }

    else
    {
      sub_6D85C(v10, v14);
      v98 = qword_40E080;
      v2[qword_40E080] = 1;
      v25 = sub_2E4D5C();
      [v25 setHidden:sub_2E6138()];

      v26 = sub_2E5E88(&qword_40E0A0, sub_2E5EEC);
      v27 = qword_40E010;
      if (v2[qword_40E010])
      {
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      (*&stru_B8.segname[(swift_isaMask & *v26) - 8])(v28);

      v29 = *&v2[qword_40E0B0];
      if (!sub_2E6138())
      {
        v17 = v2[v27] ^ 1;
      }

      v99 = v29;
      [v29 setHidden:v17 & 1];
      v30 = sub_2E61E0(v2);
      v31 = *&v2[qword_40E058];
      [v31 setNumberOfLines:v30];
      v32 = [v2 traitCollection];
      v33 = [v32 userInterfaceIdiom];

      if (v33 == &dword_0 + 1 && v2[qword_40E028] == 1 && v2[v98] == 1)
      {
        [*&v2[qword_40E048] setAlignment:3];
      }

      v2[v27] = sub_307E68() & 1;
      v34 = *&v2[qword_40E0A8];
      [v34 setHidden:sub_2E6138()];

      v35 = *&v2[qword_40E0A0];
      if (v2[v27])
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      v37 = *&stru_B8.segname[(swift_isaMask & *v35) - 8];
      v38 = v35;
      v37(v36);

      if (sub_2E6138())
      {
        v39 = 1;
      }

      else
      {
        v39 = v2[v27] ^ 1;
      }

      v41 = v31;
      [v99 setHidden:v39 & 1];
      [v31 setNumberOfLines:sub_2E61E0(v2)];
      v44 = [v2 traitCollection];
      v45 = [v44 userInterfaceIdiom];

      v46 = v100;
      if (v45 == &dword_0 + 1 && v2[qword_40E028] == 1 && v2[v98] == 1)
      {
        [*&v2[qword_40E048] setAlignment:3];
      }

      sub_303168();
      type metadata accessor for ArtworkView();
      sub_2E8200(&qword_404350, type metadata accessor for ArtworkView);
      sub_308E28();
      (*(v46 + 8))(v7, v101);
      sub_6D924(v14);
    }

    v47 = sub_307EB8();
    if (v48)
    {
      v104[0] = v47;
      v104[1] = v48;
      sub_E504();
      sub_30D3D8();
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = sub_2E5E88(&qword_40E070, sub_2E571C);
    v52 = *&v51[qword_40E820];

    if (v50)
    {
      v53 = sub_30C098();
    }

    else
    {
      v53 = 0;
    }

    [v52 setTitle:v53 forState:0];

    SubscriptionNameAreaView.applyModel(model:)(a1);
    sub_307E38();
    if (v54)
    {
      v55 = sub_30C098();
    }

    else
    {
      v55 = 0;
    }

    [v41 setText:v55];

    sub_307EF8();
    v57 = v56;
    v58 = sub_2E5E88(&qword_40E060, sub_2E53B4);
    if (v57)
    {
      v59 = sub_30C098();
    }

    else
    {
      v59 = 0;
    }

    [v58 setText:v59];

    if (sub_307E48())
    {

      v60 = qword_40E060;
      result = [*&v2[qword_40E060] textColor];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v61 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315420;
      *(inited + 32) = NSUnderlineStyleAttributeName;
      *(inited + 40) = 1;
      *(inited + 64) = &type metadata for Int;
      *(inited + 72) = NSUnderlineColorAttributeName;
      *(inited + 104) = sub_124C4(0, &qword_3FFD48);
      *(inited + 80) = v61;
      v63 = NSUnderlineStyleAttributeName;
      v64 = NSUnderlineColorAttributeName;
      v65 = v61;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
      swift_arrayDestroy();
      v66 = *&v2[v60];
      v67 = [v66 text];
      if (v67)
      {
        v68 = v67;
        sub_30C0D8();
      }

      v69 = objc_allocWithZone(NSAttributedString);
      v70 = sub_30C098();

      type metadata accessor for Key(0);
      sub_2E8200(&qword_3FB410, type metadata accessor for Key);
      isa = sub_30BF88().super.isa;

      v72 = [v69 initWithString:v70 attributes:isa];

      [v66 setAttributedText:v72];
      [*&v2[v60] setUserInteractionEnabled:1];
    }

    if (sub_307E88() || (v104[0] = a1, sub_307F18(), sub_30AB98()))
    {

      v73 = *&v2[qword_40E820];
      v74 = [v73 gestureRecognizers];
      if (!v74 || (v75 = v74, sub_124C4(0, &qword_404A28), v76 = sub_30C368(), v75, v77 = sub_2E3F68(), v104[0] = v77, __chkstk_darwin(v77), v96 = v104, v78 = sub_22F62C(sub_2E7BE0, v95, v76), v77, , (v78 & 1) == 0))
      {
        v79 = sub_2E3F68();
        [v73 addGestureRecognizer:v79];
      }
    }

    v80 = sub_307E28();
    [*&v2[qword_40E070] setHidden:v80 & 1];
    v81 = sub_2E3FEC();
    [v81 setHidden:(v80 & 1) == 0];

    v104[0] = a1;
    sub_307F18();
    v82 = sub_30AB98();
    if (v82)
    {
      v83 = v82;
      v84 = sub_2E3FEC();
      sub_30B018();
      if (v85)
      {
        v86 = sub_30C098();
      }

      else
      {
        v86 = 0;
      }

      [v84 setTitle:v86 forState:0];

      v93 = *&v2[qword_40E078];
      v105 = sub_30B038();
      v106 = sub_2E8200(&qword_3FBDA0, &type metadata accessor for Action);
      v104[0] = v83;
      v94 = v93;

      sub_30D388();
    }

    else
    {
      v87 = *&v2[qword_40E070];
      v88 = sub_307EC8();
      v105 = sub_30B038();
      v106 = sub_2E8200(&qword_3FBDA0, &type metadata accessor for Action);
      v104[0] = v88;
      v89 = qword_40E820;
      sub_30D388();
      sub_12670(v104, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
      if (swift_dynamicCast())
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_308D68();

        v90 = *&v87[v89];
        sub_124C4(0, &qword_408080);
        v91 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v95[1] = sub_2E7BB0;
        v96 = v91;
        v95[0] = 0;
        v92 = sub_30D0C8();
        [v90 addAction:v92 forControlEvents:0x2000];
      }

      else
      {
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  return result;
}

uint64_t sub_2E306C(uint64_t a1)
{
  *(v1 + qword_40E0B8) = a1;

  v3 = *(v1 + qword_40E050);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews24SubscriptionNameAreaView_objectGraph;
  swift_beginAccess();
  *(v3 + v4) = a1;
  swift_retain_n();

  v5 = SubscriptionNameAreaView.channelLinkButton.getter();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *&v5[v6] = a1;
}

id sub_2E3134()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellSubscribeButton_progressView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellSubscribeButton_progressView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21UpsellSubscribeButton_progressView];
  }

  else
  {
    v4 = v0;
    LOBYTE(v38) = 1;
    LOBYTE(v37) = 1;
    v29 = 0uLL;
    LOBYTE(v30) = 1;
    v31 = xmmword_31FE70;
    v32 = 0;
    v33 = 0;
    LOBYTE(v34) = 1;
    v35 = 0u;
    v36 = 0u;
    v5 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    CircularProgressView.init(style:)(&v29);
    v7 = v6;
    v8 = [v4 titleLabel];
    v9 = [v8 textColor];

    [v7 setTintColor:v9];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v7];
    v10 = [v7 centerYAnchor];
    v11 = [v4 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setActive:1];
    v13 = [v7 centerXAnchor];
    v14 = [v4 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setActive:1];
    v16 = [v7 heightAnchor];
    v17 = [v4 traitCollection];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == &dword_4 + 1)
    {
      v19 = 16.0;
    }

    else
    {
      v19 = 28.0;
    }

    v20 = [v16 constraintEqualToConstant:v19];

    [v20 setActive:1];
    v21 = [v7 widthAnchor];
    v22 = [v4 traitCollection];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == &dword_4 + 1)
    {
      v24 = 16.0;
    }

    else
    {
      v24 = 28.0;
    }

    v25 = [v21 constraintEqualToConstant:v24];

    [v25 setActive:1];
    [v7 setHidden:1];

    v26 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v27 = v2;
  return v3;
}

id sub_2E348C()
{
  v1 = qword_4293F0;
  v2 = *&v0[qword_4293F0];
  if (v2)
  {
    v3 = *&v0[qword_4293F0];
  }

  else
  {
    v4 = v0;
    LOBYTE(v44) = 1;
    LOBYTE(v43) = 1;
    v35 = 0uLL;
    LOBYTE(v36) = 1;
    v37 = xmmword_31FE70;
    v38 = 0;
    v39 = 0;
    LOBYTE(v40) = 1;
    v41 = 0u;
    v42 = 0u;
    v5 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    CircularProgressView.init(style:)(&v35);
    v6 = *&v0[qword_40E820];
    v8 = v7;
    v9 = [v6 titleLabel];
    v10 = [v9 textColor];

    [v8 setTintColor:v10];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [*&v4[qword_40E938] contentView];
    [v11 addSubview:v8];

    v12 = [v8 centerYAnchor];
    v13 = [v4 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setActive:1];
    v15 = [v8 centerXAnchor];
    v16 = [v4 centerXAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setActive:1];
    v18 = [v8 heightAnchor];
    v19 = &v4[qword_4059C0];
    v20 = type metadata accessor for VEVButtonContainer.Style(0);
    v21 = &v19[*(v20 + 24)];
    if (v21[16])
    {
      v22 = [v4 traitCollection];
      v23 = [v22 userInterfaceIdiom];

      v24 = 28.0;
      if (v23 == &dword_4 + 1)
      {
        v24 = 16.0;
      }
    }

    else
    {
      v24 = *v21;
    }

    v25 = [v18 constraintEqualToConstant:v24];

    [v25 setActive:1];
    v26 = [v8 widthAnchor];
    v27 = &v19[*(v20 + 24)];
    if (v27[16])
    {
      v28 = [v4 traitCollection];
      v29 = [v28 userInterfaceIdiom];

      v30 = 28.0;
      if (v29 == &dword_4 + 1)
      {
        v30 = 16.0;
      }
    }

    else
    {
      v30 = *v27;
    }

    v31 = [v26 constraintEqualToConstant:v30];

    [v31 setActive:1];
    [v8 setHidden:1];

    v32 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v33 = v2;
  return v3;
}

void sub_2E387C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_2E3134();
  v5 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState];
  swift_beginAccess();
  *v5 = 0;
  v5[8] = 1;
  v6 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign];
  v7 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  swift_beginAccess();
  v8 = 0.0;
  if ((v7[56] & 1) == 0)
  {
    v8 = *v5;
    LODWORD(v8) = 1.0;
    if (v5[8] & 1 | (*v5 == 0.0))
    {
      *&v8 = 0.0;
    }
  }

  [v6 setOpacity:v8];
  v9 = *v5;
  LODWORD(v9) = 1.0;
  if (v5[8] & 1 | (*v5 == 0.0))
  {
    *&v9 = 0.0;
  }

  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing] setOpacity:v9];
  v10 = *v5;
  if (v5[8] & 1 | (*v5 == 0.0))
  {
    v10 = 0.85;
  }

  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring] setStrokeEnd:v10];
  sub_199348();
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  v11 = a1 ^ 1;
  [v4 setHidden:(a1 ^ 1) & 1];
  v12 = [v2 titleLabel];
  if (v12)
  {
    v13 = 1.0;
    if (a1)
    {
      v13 = 0.0;
    }

    v14 = v12;
    [v12 setAlpha:v13];
  }

  [v2 setUserInteractionEnabled:v11 & 1];
}

void sub_2E3A58(char a1)
{
  v2 = v1;
  v4 = sub_2E348C();
  v5 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState];
  swift_beginAccess();
  *v5 = 0;
  v5[8] = 1;
  v6 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign];
  v7 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  swift_beginAccess();
  v8 = 0.0;
  if ((v7[56] & 1) == 0)
  {
    v8 = *v5;
    LODWORD(v8) = 1.0;
    if (v5[8] & 1 | (*v5 == 0.0))
    {
      *&v8 = 0.0;
    }
  }

  [v6 setOpacity:v8];
  v9 = *v5;
  LODWORD(v9) = 1.0;
  if (v5[8] & 1 | (*v5 == 0.0))
  {
    *&v9 = 0.0;
  }

  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing] setOpacity:v9];
  v10 = *v5;
  if (v5[8] & 1 | (*v5 == 0.0))
  {
    v10 = 0.85;
  }

  [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring] setStrokeEnd:v10];
  sub_199348();
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  [v4 setHidden:(a1 & 1) == 0];
  [*(v2 + qword_40E820) setHidden:a1 & 1];
}

void sub_2E3C30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3(0);
  }
}

void sub_2E3CC0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3(1);
  }
}

uint64_t sub_2E3D20(uint64_t a1)
{
  *&v1[qword_40E000] = a1;

  if (v1[qword_40E018] == 8)
  {

    v2 = 0;
    v3 = 0;
    return sub_2B8D4(v2, v3);
  }

  sub_2E7C00();
  sub_2E4E64();
  [*&v1[qword_40E050] setHidden:sub_2E629C() & 1];
  [*&v1[qword_40E040] setLayoutMargins:{*&v1[qword_40E030], *&v1[qword_40E030 + 8], *&v1[qword_40E030 + 16], *&v1[qword_40E030 + 24]}];
  v4 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2E1FAC;
  *(v5 + 24) = v3;
  v9[4] = sub_293C0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_19D688;
  v9[3] = &block_descriptor_77;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v4 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    [v7 setNeedsLayout];
    [v7 layoutIfNeeded];

    v2 = sub_2E1FAC;
    return sub_2B8D4(v2, v3);
  }

  __break(1u);
  return result;
}

id sub_2E3F68()
{
  v1 = qword_40E088;
  v2 = *(v0 + qword_40E088);
  if (v2)
  {
    v3 = *(v0 + qword_40E088);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"viewTapped"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2E3FEC()
{
  v1 = qword_40E078;
  v2 = *(v0 + qword_40E078);
  if (v2)
  {
    v3 = *(v0 + qword_40E078);
  }

  else
  {
    v4 = sub_2E5B4C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2E404C()
{
  if (v0[qword_40E018] != 8)
  {
    sub_2E7C00();
    sub_2E4E64();
    [*&v0[qword_40E050] setHidden:sub_2E629C() & 1];
    [*&v0[qword_40E040] setLayoutMargins:{*&v0[qword_40E030], *&v0[qword_40E030 + 8], *&v0[qword_40E030 + 16], *&v0[qword_40E030 + 24]}];
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2E8254;
    *(v3 + 24) = v2;
    v6[4] = sub_74D04;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_19D688;
    v6[3] = &block_descriptor_33;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v1 performWithoutAnimation:v4];
    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }

    else
    {
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
    }
  }
}

char *sub_2E423C(char a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  *(v8 + qword_40DFF0) = 0x4033000000000000;
  *(v8 + qword_40DFF8) = 0x401C000000000000;
  *(v8 + qword_40E000) = 0;
  *(v8 + qword_40E008) = 1;
  *(v8 + qword_40E010) = 1;
  *(v8 + qword_40E018) = 8;
  *(v8 + qword_40E020) = 0;
  v17 = qword_40E040;
  v18 = [objc_allocWithZone(UIStackView) init];
  [v18 setAxis:1];
  [v18 setDistribution:0];
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending:0];

  [v18 setAlignment:0];
  [v18 setLayoutMarginsRelativeArrangement:1];
  *(v9 + v17) = v18;
  v20 = qword_40E048;
  *(v9 + v20) = sub_2E52D4();
  v21 = qword_40E050;
  type metadata accessor for SubscriptionNameAreaView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v23];
  *(v9 + v21) = v22;
  v24 = qword_40E058;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACF0 != -1)
  {
    swift_once();
  }

  v84[2] = xmmword_429C70;
  v84[3] = unk_429C80;
  v85[0] = xmmword_429C90;
  *(v85 + 10) = *(&xmmword_429C90 + 10);
  v84[0] = xmmword_429C50;
  v84[1] = unk_429C60;
  v82[2] = xmmword_429C70;
  v82[3] = unk_429C80;
  v83[0] = xmmword_429C90;
  *(v83 + 10) = *(&xmmword_429C90 + 10);
  v82[0] = xmmword_429C50;
  v82[1] = unk_429C60;
  sub_8FC54(v84, v81);
  v25 = sub_235C3C(v82, 2, 0, 1);
  [v25 setNumberOfLines:3];
  [v25 setLineBreakMode:4];

  LODWORD(v26) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v26];
  *(v9 + v24) = v25;
  *(v9 + qword_40E060) = 0;
  *(v9 + qword_40E068) = 0;
  *(v9 + qword_40E070) = 0;
  *(v9 + qword_40E078) = 0;
  *(v9 + qword_40E080) = 0;
  *(v9 + qword_40E088) = 0;
  *(v9 + qword_40E090) = 0;
  v27 = qword_40E098;
  type metadata accessor for ArtworkView();
  *(v9 + v27) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v9 + qword_40E0A0) = 0;
  *(v9 + qword_40E0A8) = 0;
  v28 = qword_40E0B0;
  v29 = objc_opt_self();
  v30 = sub_30C098();
  if (qword_3FB048 != -1)
  {
    swift_once();
  }

  v31 = [v29 __systemImageNamed:v30 withConfiguration:qword_40DFE8];

  v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];
  *(v9 + v28) = v32;
  *(v9 + qword_40E0B8) = 0;
  *(v9 + qword_40E028) = a1 & 1;
  v33 = (v9 + qword_40E030);
  *v33 = a5;
  v33[1] = a6;
  v33[2] = a7;
  v33[3] = a8;
  v34 = *&a2;
  v35 = *&a3;
  v36 = 57.0;
  if (a1)
  {
    v36 = 23.0;
  }

  if (a4)
  {
    v34 = v36;
    v35 = v36;
  }

  v37 = (v9 + qword_40E038);
  *v37 = v34;
  v37[1] = v35;
  v38 = *(v9 + v17);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 effectWithStyle:8];
  v42 = [objc_opt_self() effectForBlurEffect:v41 style:0];
  v43 = sub_2DD5B0(v41, v42);
  v45 = v44;

  *(v9 + qword_40E820) = v40;
  v46 = v40;
  v47 = sub_159428(v40, v43, v45);
  v48 = [v47 layer];
  v49 = v48;
  v50 = 12.0;
  if (v47[qword_40E028])
  {
    v50 = 0.0;
  }

  [v48 setCornerRadius:v50];

  [v47 setClipsToBounds:1];
  v51 = *&v47[qword_40E0B0];
  v52 = objc_opt_self();
  v53 = v51;
  v54 = [v52 labelColor];
  [v53 setTintColor:v54];

  *&v82[0] = _swiftEmptyArrayStorage;
  sub_303E38();
  v55 = v81[0];
  v56 = sub_2E5E88(&qword_40E070, sub_2E571C);
  v57 = *&v56[qword_40E820];

  v58 = [v57 heightAnchor];
  v59 = [v58 constraintEqualToConstant:v55];

  sub_30C888();
  sub_30CA28(v86);

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v60 = [*(*&v47[qword_40E070] + qword_40E820) widthAnchor];
  v61 = [v60 constraintLessThanOrEqualToConstant:95.0];

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  sub_303E38();
  v62 = v81[0];
  v63 = sub_2E3FEC();
  v64 = [v63 heightAnchor];

  v65 = [v64 constraintEqualToConstant:v62];
  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v66 = [*&v47[qword_40E078] widthAnchor];
  v67 = [v66 constraintEqualToConstant:v62];

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v68 = sub_2E4D5C();
  v69 = [v68 widthAnchor];

  v70 = &v47[qword_40E038];
  v71 = [v69 constraintEqualToConstant:*&v47[qword_40E038]];

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v72 = [*&v47[qword_40E0A8] heightAnchor];
  v73 = [v72 constraintEqualToConstant:*(v70 + 1)];

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v74 = [v47 heightAnchor];
  v75 = [v74 constraintGreaterThanOrEqualToConstant:67.0];

  sub_30C348();
  if (*(&dword_10 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v82[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v76 = &v47[qword_40E928];
  *v76 = 2;
  v76[8] = 0;
  sub_158384(0);

  sub_2E4E64();
  v77 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;
  [v77 activateConstraints:isa];

  return v47;
}

id sub_2E4D5C()
{
  v1 = qword_40E0A8;
  v2 = *(v0 + qword_40E0A8);
  if (v2)
  {
    v3 = *(v0 + qword_40E0A8);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [v4 layer];
    [v5 setCornerRadius:11.0];

    [v4 setClipsToBounds:1];
    v6 = v0;
    v7 = sub_2E5E88(&qword_40E0A0, sub_2E5EEC);
    sub_30CE98();

    v8 = *(v0 + v1);
    *(v6 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_2E4E64()
{
  v1 = sub_2E5E88(&qword_40E068, sub_2E55D4);
  v2 = [v1 arrangedSubviews];

  sub_124C4(0, &qword_3FBD90);
  v3 = sub_30C368();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [*(v0 + qword_40E048) arrangedSubviews];
  v10 = sub_30C368();

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_30D578();
      }

      else
      {
        if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 removeFromSuperview];

      ++v12;
      if (v15 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v16 = [*(v0 + qword_40E040) arrangedSubviews];
  v17 = sub_30C368();

  if (v17 >> 62)
  {
    goto LABEL_39;
  }

  for (k = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); k; k = sub_30D668())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_30D578();
      }

      else
      {
        if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == k)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  sub_2E6448();
  v23 = *(v0 + qword_40E0B0);
  [v23 removeFromSuperview];
  v24 = *(v0 + qword_40E820);
  [v24 addSubview:v23];
  [v24 bringSubviewToFront:v23];
  v25 = [v23 centerXAnchor];
  v26 = sub_2E4D5C();
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:0.5];
  [v28 setActive:1];

  v29 = [v23 centerYAnchor];
  v30 = [*(v0 + qword_40E0A8) topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:0.5];

  [v31 setActive:1];

  return [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
}

id sub_2E52D4()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:0];
  [v0 setDistribution:0];
  v1 = v0;
  v2 = [v1 layer];
  [v2 setAllowsGroupBlending:0];

  [v1 setLayoutMarginsRelativeArrangement:1];
  [v1 setSpacing:10.0];
  [v1 setHitTestDirectionalInsets:{0.0, 0.0, -14.0, 0.0}];

  return v1;
}

char *sub_2E53B4(uint64_t a1)
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_429D30;
  v12[3] = unk_429D40;
  v13[0] = xmmword_429D50;
  *(v13 + 10) = *(&xmmword_429D50 + 10);
  v12[0] = xmmword_429D10;
  v12[1] = unk_429D20;
  v10[2] = xmmword_429D30;
  v10[3] = unk_429D40;
  v11[0] = xmmword_429D50;
  *(v11 + 10) = *(&xmmword_429D50 + 10);
  v10[0] = xmmword_429D10;
  v10[1] = unk_429D20;
  sub_8FC54(v12, &v9);
  v2 = sub_235C3C(v10, 2, 0, 1);
  [v2 setAlpha:0.5];
  v3 = v2;
  [v3 setNumberOfLines:2];
  [v3 setMinimumScaleFactor:0.7];
  [v3 setAdjustsFontSizeToFitWidth:1];

  v4 = [v3 layer];
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v4 setCompositingFilter:v5];

  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"subtitleLabelTapped"];
  [v3 addGestureRecognizer:v7];
  [v3 setHitTestDirectionalInsets:{-14.0, -14.0, -14.0, 0.0}];

  return v3;
}

id sub_2E55D4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setAxis:1];
  [v2 setAlignment:0];
  v3 = v2;
  v4 = [v3 layer];
  [v4 setAllowsGroupBlending:0];

  [v3 setBaselineRelativeArrangement:1];
  result = [*(a1 + qword_40E058) font];
  if (result)
  {
    v6 = result;
    v7 = sub_30CDA8();

    [v7 scaledValueForValue:19.0];
    v9 = v8;

    [v3 setSpacing:v9];
    [v3 setHitTestDirectionalInsets:{0.0, -14.0, -14.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_2E571C(void *a1)
{
  v2 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v2);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2E5A98();
  if (qword_3FAD08 != -1)
  {
    swift_once();
  }

  v42 = xmmword_429D90;
  v43 = unk_429DA0;
  v44[0] = xmmword_429DB0;
  *(v44 + 10) = *(&xmmword_429DB0 + 10);
  v40 = xmmword_429D70;
  v41 = unk_429D80;
  v5 = v2[5];
  v6 = sub_302AB8();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  sub_8FC54(&v40, v39);
  sub_30C6E8();
  v7 = v43;
  v4[2] = v42;
  v4[3] = v7;
  v4[4] = v44[0];
  *(v4 + 74) = *(v44 + 10);
  v8 = v41;
  *v4 = v40;
  v4[1] = v8;
  v9 = v4 + v2[6];
  __asm { FMOV            V4.2D, #16.0 }

  *v9 = _Q4;
  v9[16] = 0;
  v15 = (v4 + v2[8]);
  *v15 = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  *(v4 + v2[9]) = 14;
  *(v4 + v2[7]) = 1;
  v20 = objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
  v21 = sub_1584B8(v4);
  v22 = [a1 traitCollection];
  v23 = sub_30C968();

  if (v23)
  {
    v24 = *&v21[qword_40E820];
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 whiteColor];
    [v26 setBackgroundColor:v27];
  }

  v28 = qword_40E820;
  v29 = *&v21[qword_40E820];
  v30 = v21;
  v31 = [v29 titleLabel];
  if (v31)
  {
    v32 = v31;
    sub_124C4(0, &qword_408100);
    v33 = sub_30CCF8();
    [v32 setFont:v33];
  }

  v34 = [*&v21[v28] titleLabel];
  [v34 setAdjustsFontSizeToFitWidth:1];

  v35 = *&v21[v28];
  sub_30C888();
  [v35 setContentCompressionResistancePriority:0 forAxis:?];

  v36 = *&v21[v28];
  LODWORD(v37) = 1148846080;
  [v36 setContentHuggingPriority:0 forAxis:v37];

  [v30 setHidden:1];
  return v30;
}

uint64_t sub_2E5A98()
{
  v1 = qword_40E018;
  if (!v0[qword_40E018] || v0[qword_40E018] == 1 && (v2 = [v0 traitCollection], v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, v3 == &dword_0 + 1))
  {
    if (v0[qword_40E028] != 1)
    {
      return 1;
    }
  }

  if (v0[v1] - 2 > 3)
  {
    return 0;
  }

  return v0[qword_40E028];
}

void *sub_2E5B4C()
{
  v0 = sub_30D218();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30D278();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_30D258();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.Size.medium(_:), v0);
  sub_30D148();
  v11 = sub_30C098();
  v12 = [objc_opt_self() systemImageNamed:v11];

  sub_30D248();
  v13 = [objc_opt_self() configurationWithScale:2];
  sub_30D0F8();
  sub_124C4(0, &qword_3FE8A0);
  (*(v5 + 16))(v7, v10, v4);
  v14 = sub_30D288();
  [v14 setHidden:1];
  (*(v5 + 8))(v10, v4);
  return v14;
}

id sub_2E5DC4()
{
  v1 = qword_40E090;
  v2 = *(v0 + qword_40E090);
  if (v2)
  {
    v3 = *(v0 + qword_40E090);
  }

  else
  {
    v4 = sub_2E5E88(&qword_40E060, sub_2E53B4);
    v5 = [v4 widthAnchor];

    v6 = [v5 constraintLessThanOrEqualToConstant:120.0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2E5E88(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_2E5EEC()
{
  type metadata accessor for RoundedCornerView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(&stru_68.reserved2 + (swift_isaMask & *v0)))(0, 20.0);
  (*&stru_B8.segname[(swift_isaMask & *v0) - 8])(2);
  v1 = v0;
  [v1 setClipsToBounds:1];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor:v3];

  v4 = [v1 layer];
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.17];

  v7 = [v6 CGColor];
  [v4 setShadowColor:v7];

  v8 = [v1 layer];
  [v8 setShadowRadius:5.0];

  sub_30CE98();
  return v1;
}

id sub_2E60F4()
{
  result = [objc_opt_self() configurationWithPointSize:8 weight:8.0];
  qword_40DFE8 = result;
  return result;
}

BOOL sub_2E6138()
{
  result = 1;
  if (v0[qword_40E080] == 1)
  {
    if (v0[qword_40E018])
    {
      if (v0[qword_40E018] != 1)
      {
        return 0;
      }

      v1 = [v0 traitCollection];
      v2 = [v1 userInterfaceIdiom];

      if (v2 != &dword_0 + 1)
      {
        return 0;
      }
    }

    if (v0[qword_40E028] == 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2E61E0(_BYTE *a1)
{
  if (a1[qword_40E080] == 1 && (a1[qword_40E018] && (a1[qword_40E018] != 1 || (v1 = a1, v2 = [a1 traitCollection], v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, a1 = v1, v3 != &dword_0 + 1)) || a1[qword_40E028] == 1) && a1[qword_40E028] != 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2E629C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = qword_40E000;
  if (*(v0 + qword_40E000))
  {

    sub_307E58();

    v5 = sub_3031C8();
    v6 = 1;
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = sub_3031C8();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  }

  v6 = 0;
LABEL_6:
  sub_EB68(v3, &unk_402FF0);
  if (*(v0 + v4) && (, v8 = sub_307E98(), v10 = v9, , v10))
  {

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6;
    }

    if ((v12 & 1) == 0)
    {
      return 1;
    }
  }

  else if ((v6 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

id sub_2E6448()
{
  v1 = v0;
  v2 = *&v0[qword_40E040];
  [v2 setBaselineRelativeArrangement:0];
  v3 = *&v0[qword_40E048];
  v4 = sub_2E4D5C();
  [v3 addArrangedSubview:v4];

  v5 = sub_2E5A98();
  v6 = sub_2E5DC4();
  v7 = v6;
  if (v5)
  {
    v8 = [v1 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == &dword_0 + 1)
    {
      v10 = v1[qword_40E028] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    [v7 setActive:v10 & 1];

    [v3 setAlignment:4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_31FDA0;
    v27 = *&v1[qword_40E0A8];
    *(v26 + 32) = v27;
    v28 = v27;
    *(v26 + 40) = sub_2E5E88(&qword_40E060, sub_2E53B4);
    *(v26 + 48) = [objc_allocWithZone(UIView) init];
    *(v26 + 56) = sub_2E5E88(&qword_40E070, sub_2E571C);
    *(v26 + 64) = sub_2E3FEC();
    v29._rawValue = v26;
    sub_30C688(v29);

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_31D470;
    v31 = *&v1[qword_40E050];
    v32 = *&v1[qword_40E058];
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    *(v30 + 48) = v3;
    v33 = v31;
    v34 = v32;
    v35 = v3;
    v36._rawValue = v30;
    sub_30C688(v36);

    v37 = [v1 traitCollection];
    LOBYTE(v30) = sub_30C968();

    if ((v30 & 1) != 0 && v1[qword_40E028] == 1)
    {
      [v35 setAlignment:3];
    }

    [v2 setCustomSpacing:v33 afterView:7.0];
    v38 = 7.0;
    v39 = v2;
    v40 = v34;
  }

  else
  {
    [v6 setActive:0];

    [v3 setAlignment:3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_317F20;
    v12 = *&v1[qword_40E050];
    *(v11 + 32) = v12;
    *(v11 + 40) = v3;
    v13 = v3;
    v51 = v12;
    v14._rawValue = v11;
    sub_30C688(v14);

    if (sub_2E629C() & 1) != 0 || *&v1[qword_40E000] && (, v15 = sub_307EA8(), , (v15))
    {
      v16 = sub_2E5E88(&qword_40E068, sub_2E55D4);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_317F20;
      v18 = *&v1[qword_40E058];
      *(v17 + 32) = v18;
      v49 = v18;
      *(v17 + 40) = sub_2E5E88(&qword_40E060, sub_2E53B4);
      v19._rawValue = v17;
      sub_30C688(v19);

      v20 = swift_allocObject();
      v21 = *&v1[qword_40E0A8];
      *(v20 + 16) = xmmword_31D480;
      v22 = *&v1[qword_40E068];
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      v23 = v21;
      v24 = v22;
      *(v20 + 48) = sub_2E5E88(&qword_40E070, sub_2E571C);
      *(v20 + 56) = sub_2E3FEC();
      v25._rawValue = v20;
      sub_30C688(v25);
    }

    else
    {
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_31D470;
      v42 = *&v1[qword_40E058];
      *(v41 + 32) = v42;
      v49 = v42;
      *(v41 + 40) = sub_2E5E88(&qword_40E070, sub_2E571C);
      *(v41 + 48) = sub_2E3FEC();
      v43._rawValue = v41;
      sub_30C688(v43);

      v44 = sub_2E5E88(&qword_40E060, sub_2E53B4);
      [v2 addArrangedSubview:v44];

      [v2 setCustomSpacing:v13 afterView:4.0];
    }

    if ((sub_2E629C() & 1) == 0)
    {
      if (*&v1[qword_40E000])
      {

        v45 = sub_307EA8();

        if (v45)
        {
          [v13 setAlignment:4];
        }
      }
    }

    v46 = [v1 traitCollection];
    v47 = sub_30C968();

    if ((v47 & 1) != 0 && v1[qword_40E008] == 1)
    {
      [v2 setBaselineRelativeArrangement:1];
      v38 = 18.0;
      v39 = v2;
      v40 = v51;
    }

    else
    {
      [v2 setCustomSpacing:v51 afterView:7.0];
      v38 = 7.0;
      v39 = v2;
      v40 = v50;
    }
  }

  return [v39 setCustomSpacing:v40 afterView:v38];
}

void sub_2E6AD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_3041E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23[-1] - v8;
  v10 = qword_40E000;
  if (*&v0[qword_40E000])
  {
    v25[0] = *&v0[qword_40E000];
    sub_307F18();
    v11 = sub_30AB98();
    if (v11)
    {
      v12 = v11;
      sub_3041C8();
      v13 = sub_3041D8();
      v14 = sub_30C7B8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Performing Entitlements action on Upsell Banner click.", v15, 2u);
      }

      (*(v4 + 8))(v9, v3);
      v26 = sub_30B038();
      v27 = sub_2E8200(&qword_3FBDA0, &type metadata accessor for Action);
      v24 = ObjectType;
      v25[0] = v12;
      v23[0] = v1;
      sub_2E8200(&qword_40E300, type metadata accessor for UpsellBannerView);

      v16 = v1;
LABEL_6:
      sub_3025C8();

      sub_EB68(v23, &unk_3FBB70);
      __swift_destroy_boxed_opaque_existential_1(v25);
      return;
    }

    if (*&v0[v10])
    {

      v17 = sub_307E88();

      if (v17)
      {
        sub_3041C8();
        v18 = sub_3041D8();
        v19 = sub_30C7B8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_0, v18, v19, "Performing channel link action on Upsell Banner click.", v20, 2u);
        }

        (*(v4 + 8))(v6, v3);
        v26 = sub_30B038();
        v27 = sub_2E8200(&qword_3FBDA0, &type metadata accessor for Action);
        v25[0] = v17;

        v21 = SubscriptionNameAreaView.channelLinkButton.getter();
        v24 = type metadata accessor for ChevronButton();
        v23[0] = v21;
        sub_2E8200(&qword_40E300, type metadata accessor for UpsellBannerView);
        goto LABEL_6;
      }
    }
  }
}

void sub_2E6ED8(void *a1)
{
  v1 = a1;
  sub_2E6AD4();
}

uint64_t sub_2E6F20()
{
  swift_getObjectType();
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18[-1] - v6;
  if (*(v0 + qword_40E000) && (, v8 = sub_307E48(), , v8))
  {
    sub_3041C8();
    v9 = sub_3041D8();
    v10 = sub_30C7B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Performing OAuth action on Upsell Banner subtitle click.", v11, 2u);
    }

    (*(v2 + 8))(v7, v1);
    v19[3] = sub_30B038();
    v19[4] = sub_2E8200(&qword_3FBDA0, &type metadata accessor for Action);
    v19[0] = v8;

    v12 = sub_2E5E88(&qword_40E060, sub_2E53B4);
    v18[3] = type metadata accessor for DynamicTypeLabel();
    v18[0] = v12;
    sub_2E8200(&qword_40E300, type metadata accessor for UpsellBannerView);
    sub_3025C8();

    sub_EB68(v18, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_3041C8();
    v14 = sub_3041D8();
    v15 = sub_30C798();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "User clicked on OAuth but there was no action available.", v16, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_2E7260(void *a1)
{
  v1 = a1;
  sub_2E6F20();
}

char *sub_2E72A8(unsigned __int8 *a1)
{
  v1 = a1[qword_40E008];
  v2 = a1;
  if (v1 == 1)
  {
    if (sub_2E629C())
    {
      v3 = sub_2E5E88(&qword_40E060, sub_2E53B4);
    }

    else
    {
      v3 = *&v2[qword_40E050];
    }

    v4 = v3;

    v2 = v4;
  }

  return v2;
}

unsigned __int8 *sub_2E733C(unsigned __int8 *a1)
{
  v1 = a1[qword_40E008];
  v2 = a1;
  if (v1 == 1)
  {
    v3 = sub_2E5E88(&qword_40E060, sub_2E53B4);

    v2 = v3;
  }

  return v2;
}

id sub_2E73B4(id a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (a1)
  {
    v6 = sub_30C0D8();
    v8 = v7;
    if (v6 == sub_30C0D8() && v8 == v9)
    {

      goto LABEL_14;
    }

    v11 = sub_30D728();

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12 = sub_2E5E88(&qword_40E068, sub_2E55D4);
  result = [*&v2[qword_40E058] font];
  if (result)
  {
    v14 = result;
    v15 = sub_30CDA8();

    [v15 scaledValueForValue:19.0];
    v17 = v16;

    [v12 setSpacing:v17];
LABEL_14:
    [*&v2[qword_40E050] setHidden:sub_2E629C() & 1];
    return [*&v2[qword_40E040] setLayoutMargins:{*&v2[qword_40E030], *&v2[qword_40E030 + 8], *&v2[qword_40E030 + 16], *&v2[qword_40E030 + 24]}];
  }

  __break(1u);
  return result;
}

void sub_2E75DC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2E73B4(a3);
}

void *sub_2E7670(void *a1)
{
  v1 = a1;
  v2 = sub_2E5E88(&qword_40E070, sub_2E571C);

  v3 = *&v2[qword_40E820];
  v4 = v3;

  return v3;
}

id sub_2E76DC(void *a1)
{
  v1 = a1;
  v2 = sub_2E5E88(&qword_40E060, sub_2E53B4);

  return v2;
}

uint64_t sub_2E773C()
{
}

uint64_t sub_2E786C(uint64_t a1)
{
}

uint64_t type metadata accessor for UpsellBannerView()
{
  result = qword_40E0E8;
  if (!qword_40E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2E7ABC()
{
  result = qword_40E2F8;
  if (!qword_40E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40E2F8);
  }

  return result;
}

uint64_t sub_2E7B48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E7C00()
{
  if (sub_2E5A98())
  {
    if (qword_3FACE0 != -1)
    {
      swift_once();
    }

    v5 = unk_429BB0;
    v6 = unk_429BC0;
    v7[0] = xmmword_429BD0;
    *(v7 + 10) = *(&xmmword_429BD0 + 10);
    v3 = xmmword_429B90;
    v4 = unk_429BA0;
    sub_8FC54(&v3, &v8);
    if (qword_3FACF0 != -1)
    {
      swift_once();
    }

    v10 = xmmword_429C70;
    v11 = unk_429C80;
    v12[0] = xmmword_429C90;
    *(v12 + 10) = *(&xmmword_429C90 + 10);
    v8 = xmmword_429C50;
    v9 = unk_429C60;
    sub_8FC54(&v8, v2);
    sub_F0044(&v3, &v8, v2);
    v0 = v2;
  }

  else
  {
    if (qword_3FACF0 != -1)
    {
      swift_once();
    }

    v10 = xmmword_429C70;
    v11 = unk_429C80;
    v12[0] = xmmword_429C90;
    *(v12 + 10) = *(&xmmword_429C90 + 10);
    v8 = xmmword_429C50;
    v9 = unk_429C60;
    v5 = xmmword_429C70;
    v6 = unk_429C80;
    v7[0] = xmmword_429C90;
    *(v7 + 10) = *(&xmmword_429C90 + 10);
    v3 = xmmword_429C50;
    v4 = unk_429C60;
    sub_8FC54(&v8, v2);
    v0 = &v3;
  }

  return sub_235E5C(v0);
}

uint64_t sub_2E7DA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2E7E08()
{
  v1 = v0;
  *(v0 + qword_40DFF0) = 0x4033000000000000;
  *(v0 + qword_40DFF8) = 0x401C000000000000;
  *(v0 + qword_40E000) = 0;
  *(v0 + qword_40E008) = 1;
  *(v0 + qword_40E010) = 1;
  *(v0 + qword_40E018) = 8;
  *(v0 + qword_40E020) = 0;
  v2 = qword_40E040;
  v3 = [objc_allocWithZone(UIStackView) init];
  [v3 setAxis:1];
  [v3 setDistribution:0];
  v4 = [v3 layer];
  [v4 setAllowsGroupBlending:0];

  [v3 setAlignment:0];
  [v3 setLayoutMarginsRelativeArrangement:1];
  *(v1 + v2) = v3;
  v5 = qword_40E048;
  *(v1 + v5) = sub_2E52D4();
  v6 = qword_40E050;
  type metadata accessor for SubscriptionNameAreaView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  *(v1 + v6) = v7;
  v9 = qword_40E058;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FACF0 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_429C70;
  v21[3] = unk_429C80;
  v22[0] = xmmword_429C90;
  *(v22 + 10) = *(&xmmword_429C90 + 10);
  v21[0] = xmmword_429C50;
  v21[1] = unk_429C60;
  v19[2] = xmmword_429C70;
  v19[3] = unk_429C80;
  v20[0] = xmmword_429C90;
  *(v20 + 10) = *(&xmmword_429C90 + 10);
  v19[0] = xmmword_429C50;
  v19[1] = unk_429C60;
  sub_8FC54(v21, v18);
  v10 = sub_235C3C(v19, 2, 0, 1);
  [v10 setNumberOfLines:3];
  [v10 setLineBreakMode:4];

  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  *(v1 + v9) = v10;
  *(v1 + qword_40E060) = 0;
  *(v1 + qword_40E068) = 0;
  *(v1 + qword_40E070) = 0;
  *(v1 + qword_40E078) = 0;
  *(v1 + qword_40E080) = 0;
  *(v1 + qword_40E088) = 0;
  *(v1 + qword_40E090) = 0;
  v12 = qword_40E098;
  type metadata accessor for ArtworkView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + qword_40E0A0) = 0;
  *(v1 + qword_40E0A8) = 0;
  v13 = qword_40E0B0;
  v14 = objc_opt_self();
  v15 = sub_30C098();
  if (qword_3FB048 != -1)
  {
    swift_once();
  }

  v16 = [v14 __systemImageNamed:v15 withConfiguration:qword_40DFE8];

  v17 = [objc_allocWithZone(UIImageView) initWithImage:v16];
  *(v1 + v13) = v17;
  *(v1 + qword_40E0B8) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2E8200(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2E825C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_30D4A8();
    sub_124C4(0, &qword_40E3B0);
    sub_2ECE2C();
    sub_30C578();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
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

  while (v1 < 0)
  {
    if (!sub_30D4B8() || (sub_124C4(0, &qword_40E3B0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_649B0();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_30C348();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2E84C8()
{
  type metadata accessor for DynamicTypeLabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setNumberOfLines:1];
  [v0 setLineBreakMode:4];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor:v2];

  v3 = v0;
  v4 = sub_30C098();
  [v3 setAccessibilityIdentifier:v4];

  return v3;
}

id sub_2E85D4()
{
  type metadata accessor for DynamicTypeLabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:3];
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  sub_30C888();
  [v0 setContentCompressionResistancePriority:1 forAxis:?];
  v2 = v0;
  v3 = sub_30C098();
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

char *sub_2E86F0()
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAD10 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_429DF0;
  v9[3] = unk_429E00;
  v10[0] = xmmword_429E10;
  *(v10 + 10) = *(&xmmword_429E10 + 10);
  v9[0] = xmmword_429DD0;
  v9[1] = unk_429DE0;
  sub_EB00(v9, v11, &qword_3FFD68);
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_429D30;
  v11[3] = unk_429D40;
  v12[0] = xmmword_429D50;
  *(v12 + 10) = *(&xmmword_429D50 + 10);
  v11[0] = xmmword_429D10;
  v11[1] = unk_429D20;
  sub_EB00(v11, v8, &qword_3FFD68);
  sub_F0044(v9, v11, v8);
  v0 = sub_235C3C(v8, 1, 4, 0);
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor:v4];

  [v3 setTextAlignment:1];
  v5 = v3;
  v6 = sub_30C098();
  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_2E8900(uint64_t a1)
{
  type metadata accessor for UpsellSubscribeButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [v2 layer];
  [v3 setCornerRadius:*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 24) * 0.5];

  v4 = v2;
  v5 = sub_30C098();
  [v4 setAccessibilityIdentifier:v5];

  return v4;
}

id sub_2E89D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2E8A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405358);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_30D278();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(UIButton) init];
  sub_30D238();
  sub_304C28();
  v13 = sub_304C18();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_30D208();
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_30D2A8();
  v14 = [v12 layer];
  [v14 setCornerRadius:*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 32) * 0.5];

  v15 = v12;
  v16 = sub_30C098();
  [v15 setAccessibilityIdentifier:v16];

  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t sub_2E8D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_301B18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_124C4(0, &qword_408100);
  sub_30CDD8();
  sub_D81D0();
  return sub_301B28();
}

id sub_2E8DB8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = v4;
    v5 = sub_30C098();
    [v3 setAccessibilityIdentifier:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2E8E88(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2E8EE8()
{
  v0 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setAxis:1];
  [v0 setAlignment:3];
  v1 = v0;
  v2 = sub_30C098();
  [v1 setAccessibilityIdentifier:v2];

  return v1;
}

id sub_2E8F9C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setAxis:1];
    v3 = v4;
    v5 = sub_30C098();
    [v3 setAccessibilityIdentifier:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2E906C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_317F20;
  v3 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
  v4 = [v3 leadingAnchor];

  v5 = sub_2E8DB8();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton) trailingAnchor];
  v9 = [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView) trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v2 + 40) = v10;
  return v2;
}

uint64_t sub_2E91D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_2E9238(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_31D480;
  v3 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
  v4 = [v3 leadingAnchor];

  v5 = [a1 leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton;
  v8 = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton] trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9];

  *(v2 + 40) = v10;
  v11 = [*&a1[v7] widthAnchor];
  v12 = [v11 constraintGreaterThanOrEqualToConstant:*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 16]];

  *(v2 + 48) = v12;
  v13 = [*&a1[v7] centerXAnchor];
  v14 = [a1 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  return v2;
}

id sub_2E9434(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___compactSubscribeButtonConstraints] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___regularSubscribeButtonConstraints] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_objectGraph] = a1;
  sub_308EE8();

  sub_30B8E8();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_metricsController] = *&v19[0];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellInformation] = a2;
  v6 = type metadata accessor for UpsellSubscriptionPlansView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons] = _swiftEmptyArrayStorage;
  v8 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = a2;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlans] = sub_309088();
  v18.receiver = v7;
  v18.super_class = v6;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (sub_3090A8())
  {
    sub_2F1AD4();
  }

  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellSubscriptionPlansView] = v10;
  v11 = v9;
  sub_2EE9E4(v11, v19);
  v12 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style];
  v13 = v19[1];
  *v12 = v19[0];
  *(v12 + 1) = v13;
  *(v12 + 4) = v20;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = sub_30C098();
  [v14 setAccessibilityIdentifier:v15];

  sub_2E96B8();

  return v14;
}

void sub_2E96B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  v29 = xmmword_31D470;
  *(inited + 16) = xmmword_31D470;
  *(inited + 32) = sub_2E8DB8();
  *(inited + 40) = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView, sub_2E8EE8);
  *(inited + 48) = sub_2E8F9C();
  v3 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

  for (i = *(inited + 32); ; i = sub_30D578())
  {
    v5 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:{0, v29}];

    if (v3)
    {
      v6 = sub_30D578();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_19;
      }

      v6 = *(inited + 40);
    }

    v7 = v6;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v3)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v8 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = sub_30D578();
LABEL_10:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView] addSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView]];
  [v1 addSubview:*&v1[v10]];
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView]];
  v13 = *&v1[v11];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_317F20;
  v15 = v13;
  *(v14 + 32) = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel, sub_2E84C8);
  *(v14 + 40) = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subtitleLabel, sub_2E85D4);
  v16._rawValue = v14;
  sub_30C688(v16);

  v17 = [v1 traitCollection];
  LOBYTE(v14) = sub_30C968();

  if (v14)
  {
    [*&v1[v11] setBaselineRelativeArrangement:1];
    if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellInformation])
    {
      v18 = sub_3090A8();
      v19 = 22.0;
      if (v18)
      {
        v19 = 20.0;
      }

      [*&v1[v11] setCustomSpacing:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel] afterView:v19];
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_15:
    v20 = *&v1[v12];
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    v22 = v20;
    *(v21 + 32) = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel, sub_2E86F0);
    v23 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellSubscriptionPlansView];
    if (!v23)
    {
      __break(1u);
      goto LABEL_24;
    }

    *(v21 + 40) = v23;
    v24 = v23;
    *(v21 + 48) = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
    v25._rawValue = v21;
    sub_30C688(v25);

    v26 = *&v1[v12];
    sub_303E38();
    [v26 setCustomSpacing:v24 afterView:v30];

    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style] == 1)
    {
      v27 = *&v1[v12];
      v28 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton, sub_2E8A34);
      [v27 addArrangedSubview:v28];
    }

    [v1 bounds];
    CGRectGetWidth(v31);
    sub_302BF8();
    sub_2E9B5C();
    sub_2E9C68();
  }
}

void sub_2E9B5C()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_viewConstraints;
  sub_124C4(0, &qword_403000);

  isa = sub_30C358().super.isa;

  [v1 deactivateConstraints:isa];

  *(v0 + v2) = sub_2EB218();

  v4 = sub_30C358().super.isa;

  [v1 activateConstraints:v4];
}

void sub_2E9C68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v94 = v93 - v3;
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v93[1] = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30B898();
  __chkstk_darwin(v6 - 8);
  v93[2] = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_30B858();
  v8 = *(v96 - 8);
  __chkstk_darwin(v96);
  v10 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v93 - v12;
  v14 = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel, sub_2E84C8);
  v95 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style;
  v15 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 8);
  [v14 setFont:v15];

  v16 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellInformation);
  if (!v16)
  {
    goto LABEL_71;
  }

  v17 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel);
  sub_3090D8();
  v18 = sub_30C098();

  [v17 setText:v18];

  v19 = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subtitleLabel, sub_2E85D4);
  [v19 setFont:v15];

  v20 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subtitleLabel);
  sub_309108();
  if (v21)
  {
    v22 = sub_30C098();
  }

  else
  {
    v22 = 0;
  }

  v23 = v96;
  [v20 setText:v22];

  v24 = sub_309098();
  v96 = v16;
  if (v24)
  {
    v93[0] = sub_303508();
    sub_309038();
    v25 = sub_30B7F8();
    v26 = *(v8 + 8);
    v26(v13, v23);
    if (v25)
    {
      v27 = v94;
      if (*(v25 + 16) && (v28 = sub_19182C(0x6174654465676170, 0xEB00000000736C69), (v29 & 1) != 0))
      {
        sub_1DA1C(*(v25 + 56) + 32 * v28, &v99);
      }

      else
      {

        v99 = 0u;
        v100 = 0u;
      }
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v27 = v94;
    }

    sub_309038();
    v34 = sub_30B7F8();
    v26(v10, v23);
    if (v34)
    {
      if (*(v34 + 16))
      {
        v35 = sub_19182C(0x6C725565676170, 0xE700000000000000);
        if (v36)
        {
          sub_1DA1C(*(v34 + 56) + 32 * v35, &v97);

          if (*(&v98 + 1))
          {
            swift_dynamicCast();
LABEL_23:
            sub_308D58();
            sub_309118();
            sub_308D08();

            sub_9097C(&v99);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
            sub_30B7E8();
            *(swift_allocObject() + 16) = xmmword_315430;
            sub_307E18();
            sub_30BA18();
            sub_30B878();
            v37 = sub_30BAA8();
            (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
            v38 = sub_30AF68();
            sub_30AFB8();
            sub_30AFB8();
            if (sub_30AFB8() != v38)
            {
              sub_30AFB8();
            }

            v39 = sub_30A2F8();
            swift_allocObject();
            v40 = sub_30A2E8();
            v41 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton, sub_2E8A34);
            v42 = [objc_opt_self() mainBundle];
            v92._countAndFlagsBits = 0xE000000000000000;
            v102._countAndFlagsBits = 0x776F4E20746F4ELL;
            v102._object = 0xE700000000000000;
            v104.value._countAndFlagsBits = 0;
            v104.value._object = 0;
            v43.super.isa = v42;
            v106._countAndFlagsBits = 0;
            v106._object = 0xE000000000000000;
            sub_301AB8(v102, v104, v43, v106, v92);

            v44 = sub_30C098();

            [v41 setTitle:v44 forState:0];

            v45 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton);
            *(&v100 + 1) = v39;
            v101 = sub_2EEC08(&qword_40E3D0, &type metadata accessor for UpsellDismissingAction);
            *&v99 = v40;
            v46 = v45;

            sub_30D388();

            goto LABEL_28;
          }

LABEL_22:
          sub_9097C(&v97);
          goto LABEL_23;
        }
      }
    }

    v97 = 0u;
    v98 = 0u;
    goto LABEL_22;
  }

  v30 = sub_309048();
  if (!v30)
  {
    goto LABEL_29;
  }

  v31 = v30;
  v32 = sub_30B018();
  if (!v33)
  {
    v47 = [objc_opt_self() mainBundle];
    v92._countAndFlagsBits = 0xE000000000000000;
    v103._countAndFlagsBits = 0xD000000000000012;
    v103._object = 0x8000000000346880;
    v105.value._countAndFlagsBits = v32;
    v105.value._object = 0;
    v48.super.isa = v47;
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    sub_301AB8(v103, v105, v48, v107, v92);
  }

  v49 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton, sub_2E8A34);
  v50 = sub_30C098();

  [v49 setTitle:v50 forState:0];

  v51 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton);
  *(&v100 + 1) = sub_30B038();
  v101 = sub_2EEC08(&qword_3FBDA0, &type metadata accessor for Action);
  *&v99 = v31;
  v46 = v51;

  sub_30D388();
LABEL_28:

  __swift_destroy_boxed_opaque_existential_1(&v99);
  v16 = v96;
LABEL_29:
  v52 = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel, sub_2E86F0);
  v53 = *(v95 + 1);
  v54 = &selRef_registerImage_withTraitCollection_;
  [v52 setHidden:*(v95 + 1)];

  v55 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel);
  sub_3090E8();
  v56 = sub_30C098();

  [v55 setText:v56];

  if (sub_309098())
  {
    v57 = sub_309048();
    if (v57)
    {
      v58 = v57;
      v59 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
      *(&v100 + 1) = sub_30B038();
      v101 = sub_2EEC08(&qword_3FBDA0, &type metadata accessor for Action);
      *&v99 = v58;
      sub_30D388();
      sub_12670(&v99, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
      if (swift_dynamicCast())
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_308D68();

        sub_124C4(0, &qword_408080);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = &selRef_registerImage_withTraitCollection_;
        v60 = sub_30D0C8();
        [v59 addAction:v60 forControlEvents:0x2000];
      }

      __swift_destroy_boxed_opaque_existential_1(&v99);
    }

    v61 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
    sub_3090F8();
    v62 = sub_30C098();

    [v61 setTitle:v62 forState:0];

    goto LABEL_64;
  }

  *&v99 = v16;
  sub_309128();
  v63 = sub_30AB98();
  if (v63)
  {
    v64 = v63;
    v65 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
    *(&v100 + 1) = sub_30B038();
    v101 = sub_2EEC08(&qword_3FBDA0, &type metadata accessor for Action);
    *&v99 = v64;

    sub_30D388();
    sub_12670(&v99, &v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v66 = sub_309088();
  v67 = v66;
  LODWORD(v95) = v53;
  if (!(v66 >> 62))
  {
    v68 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    if (v68)
    {
      goto LABEL_40;
    }

    goto LABEL_55;
  }

LABEL_54:
  v68 = sub_30D668();
  if (!v68)
  {
LABEL_55:

    v78 = sub_309088();
    if (v78 >> 62)
    {
      v91 = v78;
      v79 = sub_30D668();
      v78 = v91;
    }

    else
    {
      v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
    }

    v53 = v95;
    v54 = &selRef_registerImage_withTraitCollection_;
    if (!v79)
    {

      goto LABEL_65;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v80 = sub_30D578();
LABEL_61:
      v81 = v80;

      v82 = sub_30A308();

      v65 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
      *(&v100 + 1) = sub_309168();
      v101 = sub_2EEC08(&qword_40E3C8, &type metadata accessor for ChannelOfferAction);
      *&v99 = v82;

      sub_30D388();
      sub_12670(&v99, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
      if (swift_dynamicCast())
      {
LABEL_62:
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_308D68();

        sub_124C4(0, &qword_408080);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = sub_30D0C8();
        [v65 addAction:v83 forControlEvents:0x2000];
        v54 = &selRef_registerImage_withTraitCollection_;
      }

LABEL_63:

      __swift_destroy_boxed_opaque_existential_1(&v99);
      v84 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton);
      sub_3090F8();
      v62 = sub_30C098();

      [v84 setTitle:v62 forState:0];

LABEL_64:
      goto LABEL_65;
    }

    if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
    {
      v80 = *(v78 + 32);
      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_40:
  v69 = 0;
  while (1)
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v70 = sub_30D578();
    }

    else
    {
      if (v69 >= *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_53;
      }

      v70 = *(v67 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (sub_30A318())
    {
      break;
    }

    ++v69;
    if (v72 == v68)
    {
      goto LABEL_55;
    }
  }

  v73 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
  v74 = sub_30A308();
  *(&v100 + 1) = sub_309168();
  v101 = sub_2EEC08(&qword_40E3C8, &type metadata accessor for ChannelOfferAction);
  *&v99 = v74;
  sub_30D388();
  sub_12670(&v99, &v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
  if (swift_dynamicCast())
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_308D68();

    sub_124C4(0, &qword_408080);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = sub_30D0C8();
    [v73 addAction:v75 forControlEvents:0x2000];
  }

  v53 = v95;
  v54 = &selRef_registerImage_withTraitCollection_;
  __swift_destroy_boxed_opaque_existential_1(&v99);
  v76 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton);
  sub_30A348();
  v77 = sub_30C098();

  [v76 setTitle:v77 forState:0];

LABEL_65:
  v85 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellSubscriptionPlansView);
  if (v85)
  {
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellSubscriptionPlansView) v54[207]];
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_objectGraph);
    v88 = swift_allocObject();
    *(v88 + 16) = v86;
    *(v88 + 24) = v87;
    v89 = (v85 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
    swift_beginAccess();
    v90 = *v89;
    *v89 = sub_2EECD4;
    v89[1] = v88;

    sub_1EBD0(v90);

    return;
  }

LABEL_72:
  __break(1u);
}

void *sub_2EB218()
{
  v1 = v0;
  if (sub_302BD8())
  {
    v2 = sub_2E91D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___regularSubscribeButtonConstraints, sub_2E9238);
    v3 = &selRef_constraintLessThanOrEqualToAnchor_;
    v4 = &selRef_constraintGreaterThanOrEqualToAnchor_;
  }

  else
  {
    v2 = sub_2E91D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___compactSubscribeButtonConstraints, sub_2E906C);
    v4 = &selRef_constraintEqualToAnchor_;
    v3 = &selRef_constraintEqualToAnchor_;
  }

  sub_14A360(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_317F20;
  v6 = sub_2E8DB8();
  v7 = [v6 leadingAnchor];

  v8 = [v1 leadingAnchor];
  v9 = [v7 *v4];

  *(inited + 32) = v9;
  v10 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView] trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 *v3];

  *(inited + 40) = v12;
  sub_14A360(inited);
  v13 = [objc_opt_self() sharedApplication];
  v14 = sub_2EBCC0();

  if (v14)
  {
    [v14 safeAreaInsets];
  }

  else
  {
    [v1 safeAreaInsets];
  }

  v15 = [v1 traitCollection];
  [v15 userInterfaceIdiom];

  sub_303E38();
  v16 = [v1 traitCollection];
  v17 = sub_30C968();

  v18 = 0.0;
  if (v17)
  {
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 1])
    {
      v18 = -5.0;
    }

    else
    {
      v18 = 0.0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_334B40;
  v20 = sub_2E8DB8();
  v21 = [v20 widthAnchor];

  v22 = [v21 constraintLessThanOrEqualToConstant:400.0];
  sub_30C888();
  isa = sub_30CA28(v84).super.isa;

  *(v19 + 32) = isa;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView;
  v25 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView] topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v19 + 40) = v27;
  v28 = [*&v1[v24] bottomAnchor];
  v29 = sub_2E8F9C();
  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:-v18];
  *(v19 + 48) = v31;
  v32 = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView, sub_2E8EE8);
  v33 = [v32 leadingAnchor];

  v34 = [*&v1[v24] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v19 + 56) = v35;
  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView;
  v37 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView] trailingAnchor];
  v38 = [*&v1[v24] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v19 + 64) = v39;
  v40 = [*&v1[v36] topAnchor];
  v41 = [*&v1[v24] topAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:8.0];

  *(v19 + 72) = v42;
  v43 = [*&v1[v36] bottomAnchor];
  v44 = [*&v1[v24] bottomAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-8.0];

  *(v19 + 80) = v45;
  v46 = [*&v1[v36] centerYAnchor];
  v47 = [*&v1[v24] centerYAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v19 + 88) = v48;
  v49 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView;
  v50 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView] leadingAnchor];
  v51 = [*&v1[v24] leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v19 + 96) = v52;
  v53 = [*&v1[v49] trailingAnchor];
  v54 = [*&v1[v24] trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v19 + 104) = v55;
  v56 = [*&v1[v49] bottomAnchor];
  v57 = [v1 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:v83];

  *(v19 + 112) = v58;
  v59 = sub_2E8E88(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel, sub_2E86F0);
  v60 = [v59 lastBaselineAnchor];

  v61 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);
  v62 = [v61 topAnchor];

  sub_303E38();
  v63 = [v60 constraintEqualToAnchor:v62 constant:v83];

  *(v19 + 120) = v63;
  v64 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton;
  v65 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton] heightAnchor];
  v66 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style];
  v67 = [v65 constraintGreaterThanOrEqualToConstant:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_style + 24]];

  *(v19 + 128) = v67;
  sub_14A360(v19);
  if (*v66 == 1)
  {
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_31D480;
    v69 = [*&v1[v64] bottomAnchor];
    v70 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton, sub_2E8A34);
    v71 = [v70 topAnchor];

    v72 = [v69 constraintEqualToAnchor:v71 constant:-14.0];
    *(v68 + 32) = v72;
    v73 = OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton;
    v74 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton] heightAnchor];
    v75 = [v74 constraintEqualToConstant:v66[4]];

    *(v68 + 40) = v75;
    v76 = [*&v1[v73] leadingAnchor];
    v77 = [*&v1[v64] leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v68 + 48) = v78;
    v79 = [*&v1[v73] trailingAnchor];
    v80 = [*&v1[v64] trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v68 + 56) = v81;
    sub_14A360(v68);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_2EBCC0()
{
  v1 = [v0 connectedScenes];
  sub_124C4(0, &qword_40E3B0);
  sub_2ECE2C();
  v2 = sub_30C548();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v17 = *(v2 + 32);
    v43 = ((1 << v17) + 63) >> 6;
    if ((v17 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

  v4 = &_swiftEmptySetSingleton;
  v46 = &_swiftEmptySetSingleton;
  v2 = sub_30D4A8();
  for (i = sub_30D4B8(); i; i = sub_30D4B8())
  {
    v44 = i;
    swift_dynamicCast();
    v6 = v45;
    if ([v45 activationState])
    {
    }

    else
    {
      if (v4[3] <= v4[2])
      {
        sub_2ED0B8();
      }

      v4 = v46;
      v7 = sub_30D088(v46[5]);
      v8 = (v46 + 7);
      v9 = -1 << *(v46 + 32);
      v10 = v7 & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v46[(v10 >> 6) + 7]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v46[(v10 >> 6) + 7])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v15 = v11 == v14;
          if (v11 == v14)
          {
            v11 = 0;
          }

          v13 |= v15;
          v16 = *&v8[8 * v11];
        }

        while (v16 == -1);
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
      }

      *&v8[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v4[6] + 8 * v12) = v6;
      ++v4[2];
    }
  }

LABEL_37:
  sub_2E825C(v4);
  v2 = v31;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!sub_30D668())
      {
        goto LABEL_61;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        v32 = *(v2 + 32);
LABEL_42:
        v33 = v32;

        v34 = [v33 windows];

        sub_124C4(0, &qword_3FC1C8);
        v2 = sub_30C368();

        if (v2 >> 62)
        {
          v35 = sub_30D668();
          if (!v35)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v35 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
          if (!v35)
          {
            goto LABEL_61;
          }
        }

        v36 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v37 = sub_30D578();
          }

          else
          {
            if (v36 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_56;
            }

            v37 = *(v2 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_55;
          }

          if ([v37 isKeyWindow])
          {

            return v38;
          }

          ++v36;
          if (v39 == v35)
          {
            goto LABEL_61;
          }
        }
      }

      __break(1u);
LABEL_64:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v41 = swift_slowAlloc();
        v4 = sub_2EE7E8(v41, v43, v2, sub_2ECC20);

        goto LABEL_37;
      }

LABEL_22:
      v42[1] = v42;
      __chkstk_darwin(v3);
      v19 = v42 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v19, v18);
      v20 = 0;
      v21 = 0;
      v22 = 1 << *(v2 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v2 + 56);
      v25 = (v22 + 63) >> 6;
      while (v24)
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_32:
        v29 = v26 | (v21 << 6);
        if (![*(*(v2 + 48) + 8 * v29) activationState])
        {
          *&v19[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
          if (__OFADD__(v20++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_2EDEFC(v19, v43, v20, v2);
            goto LABEL_37;
          }
        }
      }

      v27 = v21;
      while (1)
      {
        v21 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v21 >= v25)
        {
          goto LABEL_36;
        }

        v28 = *(v2 + 56 + 8 * v21);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v24 = (v28 - 1) & v28;
          goto LABEL_32;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    v32 = sub_30D578();
    goto LABEL_42;
  }

  if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_39;
  }

LABEL_61:

  return 0;
}

uint64_t sub_2EC258()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);

    v3 = sub_30A308();
    v16[3] = sub_309168();
    v16[4] = sub_2EEC08(&qword_40E3C8, &type metadata accessor for ChannelOfferAction);
    v16[0] = v3;
    sub_30D388();
    sub_12670(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_308D68();

      sub_124C4(0, &qword_408080);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = sub_30D0C8();
      [v2 addAction:v5 forControlEvents:{0x2000, 0, 0, 0, sub_2EECF4, v4}];
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2E89D0(&OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton, sub_2E8900);

    sub_30A348();
    v9 = sub_30C098();

    [v8 setTitle:v9 forState:0];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_30A308();
    v12 = sub_30B028();
    v14 = v13;

    sub_2EC5C4(v12, v14);
  }

  return result;
}

void sub_2EC5C4(uint64_t a1, uint64_t a2)
{
  v26[2] = a2;
  v26[3] = a1;
  v28 = sub_30B7E8();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30B858();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  __chkstk_darwin(v13);
  v15 = v26 - v14;
  v27 = v2;
  if (!*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_upsellInformation))
  {
    __break(1u);
    return;
  }

  sub_309038();
  v16 = sub_30B7F8();
  v17 = *(v7 + 8);
  v17(v15, v6);
  if (v16)
  {
    if (*(v16 + 16))
    {
      v18 = sub_19182C(0x644965676170, 0xE600000000000000);
      if (v19)
      {
        sub_1DA1C(*(v16 + 56) + 32 * v18, v33);

        goto LABEL_8;
      }
    }
  }

  memset(v33, 0, 32);
LABEL_8:
  v26[1] = sub_309118();
  sub_309038();
  v20 = sub_30B7F8();
  v17(v12, v6);
  if (v20)
  {
    if (*(v20 + 16))
    {
      v21 = sub_19182C(0x6C725565676170, 0xE700000000000000);
      if (v22)
      {
        sub_1DA1C(*(v20 + 56) + 32 * v21, v32);

        goto LABEL_14;
      }
    }
  }

  memset(v32, 0, sizeof(v32));
LABEL_14:
  sub_309038();
  v23 = sub_30B7F8();
  v17(v9, v6);
  if (!v23)
  {
LABEL_19:
    memset(v31, 0, sizeof(v31));
    goto LABEL_20;
  }

  if (!*(v23 + 16) || (v24 = sub_19182C(0x6174654465676170, 0xEB00000000736C69), (v25 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_1DA1C(*(v23 + 56) + 32 * v24, v31);

LABEL_20:
  sub_303518();
  sub_EB00(v33, v29, &unk_3FBB70);
  if (v30)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_9097C(v29);
  }

  sub_EB00(v32, v29, &unk_3FBB70);
  if (v30)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_9097C(v29);
  }

  sub_308D58();
  sub_308CF8();

  sub_307E18();
  sub_308EC8();

  (*(v3 + 8))(v5, v28);
  sub_9097C(v31);
  sub_9097C(v32);
  sub_9097C(v33);
}

Swift::Void __swiftcall UIButton.addSolariumShadow()()
{
  v1 = [v0 layer];
  [v1 setMasksToBounds:0];

  v2 = [v0 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.3];

  v5 = [v4 CGColor];
  [v2 setShadowColor:v5];

  v6 = [v0 layer];
  [v6 setShadowOffset:{0.0, 2.0}];

  v7 = [v0 layer];
  LODWORD(v8) = 0.5;
  [v7 setShadowOpacity:v8];

  v9 = [v0 layer];
  [v9 setShadowRadius:6.0];
}

unint64_t sub_2ECE2C()
{
  result = qword_40E3B8;
  if (!qword_40E3B8)
  {
    sub_124C4(255, &qword_40E3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40E3B8);
  }

  return result;
}

uint64_t sub_2ECE94()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B38);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_30D7E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2ED0B8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E3C0);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_30D088(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2ED2E0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406CA8);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_30D7F8();
      sub_30C1F8();
      result = sub_30D858();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2ED540()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B90);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_30D7F8();
      sub_30D808(v16);
      result = sub_30D858();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2ED790()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B48);
  result = sub_30D528();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_9FFD4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4);
      sub_30D7F8();
      sub_30C1F8();
      result = sub_30D858();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_9FFD4(v4, *(v7 + 48) + v15 * v19);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v28;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_2EDA88()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B60);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_30D7E8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2EDCAC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406D50);
  result = sub_30D528();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_30D7F8();
      sub_30D838(v16);
      result = sub_30D858();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2EDEFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E3C0);
  result = sub_30D538();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_30D088(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2EE0F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B48);
  result = sub_30D538();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v31 + 72);
    sub_EB00(v19 + v20 * (v16 | (v14 << 6)), v10, &qword_406B40);
    sub_30D7F8();
    sub_30C1F8();
    result = sub_30D858();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_9FFD4(v10, *(v11 + 48) + v24 * v20);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2EE3BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406D50);
  result = sub_30D538();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_30D7F8();
    sub_30D838(v16);
    result = sub_30D858();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2EE5C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406CA8);
  result = sub_30D538();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_30D7F8();

    sub_30C1F8();
    result = sub_30D858();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2EE7E8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2EE878(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_2EE878(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_2EDEFC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2EE9E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_309048();
  if (v4)
  {
  }

  v5 = sub_3090A8();
  v6 = sub_3090A8();
  sub_124C4(0, &qword_408100);
  if (v6)
  {
    v7 = sub_30CCA8();
    v8 = sub_30CC98();
  }

  else
  {
    v7 = sub_30CC98();
    v8 = sub_30CD48();
  }

  v9 = v8;
  v10 = sub_30CD28();
  v11 = v4 != 0;

  sub_124C4(0, &qword_4019C0);
  v12 = sub_30C978();

  v13 = 48.0;
  if (v12)
  {
    v13 = 34.0;
  }

  v14 = 327.0;
  *a2 = v11;
  *(a2 + 1) = v5 & 1;
  *(a2 + 8) = v10;
  if (v12)
  {
    v14 = 250.0;
  }

  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v13;
}

void sub_2EEB20()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView_viewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___captionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___subscribeButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___seeAllButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackViewContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___topStackView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___bottomStackView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___compactSubscribeButtonConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews23UpsellInfoContainerView____lazy_storage___regularSubscribeButtonConstraints) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2EEC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2EEC5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2EEC94()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_2EECF8()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.08];

  qword_40E3D8 = v1;
}

id sub_2EED64()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView);
  }

  else
  {
    v4 = sub_2EEDC4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2EEDC4()
{
  type metadata accessor for GradientView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_317F20;
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  v4 = [v3 colorWithAlphaComponent:0.0];

  *(v1 + 32) = v4;
  *(v1 + 40) = [v2 systemBackgroundColor];
  v8 = 0;
  v7 = v1;
  v9 = xmmword_317F30;
  v10 = xmmword_317F40;
  v11 = kCAGradientLayerAxial;
  v5 = kCAGradientLayerAxial;
  sub_254AD8(&v7);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v7, v8, v9, v10, v11}];
  return v0;
}

id sub_2EEF00()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint);
  }

  else
  {
    v4 = sub_2EEF60();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2EEF60()
{
  v1 = v0;
  sub_2EF144();
  v2 = sub_309068();
  if (sub_302BE8())
  {

LABEL_4:
    v4 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack] heightAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];
    goto LABEL_5;
  }

  v3 = *(v2 + 16);

  if (v3 < 2)
  {
    goto LABEL_4;
  }

  v8 = [v1 traitCollection];
  v9 = sub_30C968();

  if (v9)
  {
    v4 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack] heightAnchor];
    v5 = [v4 constraintEqualToConstant:56.0];
  }

  else
  {
    v10 = sub_302BD8();
    v11 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack] heightAnchor];
    v4 = v11;
    if ((v10 & 1) == 0)
    {
      v12 = [v1 layoutMarginsGuide];
      v13 = [v12 widthAnchor];

      v6 = [v4 constraintEqualToAnchor:v13 multiplier:0.5];
      v4 = v13;
      goto LABEL_6;
    }

    v5 = [v11 constraintEqualToConstant:90.0];
  }

LABEL_5:
  v6 = v5;
LABEL_6:

  return v6;
}

uint64_t sub_2EF144()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___sizeClass;
  result = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___sizeClass];
  if (result == 8)
  {
    [v0 bounds];
    CGRectGetWidth(v3);
    result = sub_302BF8();
    v0[v1] = result;
  }

  return result;
}

uint64_t sub_2EF190()
{
  v1 = sub_3031C8();
  __chkstk_darwin(v1 - 8);
  v68 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  v67 = type metadata accessor for UpsellShowGridView.ArtworkColumn();
  *&v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v9 = swift_allocObject();
  v70 = xmmword_31BF90;
  *(v9 + 16) = xmmword_31BF90;
  *(v9 + 32) = sub_2EEF00();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v7 deactivateConstraints:isa];

  v11 = sub_2EEF60();
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint;
  v13 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint) = v11;

  v65 = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v70;
  v15 = *(v0 + v12);
  *(v14 + 32) = v15;
  v16 = v15;
  v17 = sub_30C358().super.isa;

  [v7 activateConstraints:v17];

  *&v70 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack);
  v18 = [v70 arrangedSubviews];
  sub_124C4(0, &qword_3FBD90);
  v19 = sub_30C368();

  if (v19 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v21 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = sub_30D578();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      [v22 removeFromSuperview];

      ++v21;
      if (v24 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v25 = v66;
  v26 = sub_2EED64();
  [v26 removeFromSuperview];

  sub_2EF144();
  v27 = sub_309068();
  if (sub_302BE8())
  {
    goto LABEL_15;
  }

  v28 = *(v27 + 16);

  if (v28 < 2)
  {
    return result;
  }

  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView;
  [v25 insertSubview:*&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView] belowSubview:v70];
  v31 = *&v25[v30];
  sub_30CE98();

  v32 = sub_2EFD94();
  v33 = v32[2];
  if (!v33)
  {
LABEL_15:
  }

  else
  {
    v34 = *(v64 + 80);
    v62 = v32;
    v35 = v32 + ((v34 + 32) & ~v34);
    v36 = *(v64 + 72);
    v64 = xmmword_317F20;
    v37 = v69;
    v63 = v36;
    do
    {
      sub_2F12DC(v35, v37, type metadata accessor for UpsellShowGridView.ArtworkColumn);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E438) + 48);
        sub_6D85C(v37, v5);
        v39 = v37 + v38;
        v40 = v68;
        sub_6D85C(v39, v68);
        v41 = sub_2F1114(v5);
        v42 = sub_2F1114(v40);
        sub_2F0C38(v41, v5);
        sub_2F0C38(v42, v40);
        v43 = objc_allocWithZone(UIStackView);
        v44 = [v43 init];
        [v44 setAxis:1];
        [v44 setSpacing:8.0];
        v45 = swift_allocObject();
        *(v45 + 16) = v64;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v46 = v41;
        v47 = v42;
        v48 = v46;
        v49 = v47;
        v50._rawValue = v45;
        sub_30C688(v50);

        [v70 addArrangedSubview:v44];
        v51 = [v48 heightAnchor];
        v52 = [v48 widthAnchor];

        v53 = [v51 constraintEqualToAnchor:v52];
        [v53 setActive:1];

        v54 = [v49 heightAnchor];
        v55 = [v49 widthAnchor];

        v56 = [v54 constraintEqualToAnchor:v55];
        [v56 setActive:1];

        v36 = v63;
        sub_6D924(v68);
      }

      else
      {
        sub_6D85C(v37, v5);
        v57 = sub_2F1114(v5);
        sub_2F0C38(v57, v5);
        v58 = v57;
        [v70 addArrangedSubview:v58];
        v59 = [v58 heightAnchor];
        v60 = [v58 widthAnchor];

        v61 = [v59 constraintEqualToAnchor:v60];
        [v61 setActive:1];
      }

      sub_6D924(v5);
      v35 += v36;
      --v33;
      v37 = v69;
    }

    while (v33);
  }
}

char *sub_2EF940(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack;
  v8 = [objc_allocWithZone(UIStackView) init];
  [v8 setAxis:0];
  [v8 setSpacing:8.0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___sizeClass] = 8;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_upsellInformation] = a1;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_objectGraph] = a2;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v25 = a1;

  v9 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setPreservesSuperviewLayoutMargins:1];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack;
  [v9 addSubview:*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack]];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_31D480;
  v14 = [*&v9[v11] topAnchor];
  v15 = [v9 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [*&v9[v11] bottomAnchor];
  v18 = [v9 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v13 + 40) = v19;
  v20 = [*&v9[v11] centerXAnchor];
  v21 = [v9 centerXAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  *(v13 + 48) = v22;
  *(v13 + 56) = sub_2EEF00();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v12 activateConstraints:isa];

  sub_2EF190();

  return v9;
}

void *sub_2EFD94()
{
  v0 = sub_309068();
  sub_2EF144();
  if (sub_302BD8())
  {
    v1 = *(v0 + 16);
    if (v1 != 2)
    {
      if (v1 - 3 > 1)
      {
        if (v1 - 5 <= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
          v2 = *(type metadata accessor for UpsellShowGridView.ArtworkColumn() - 8);
          v3 = *(v2 + 72);
          v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v5 = 4 * v3;
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_328A70;
          v7 = v6 + v4;
          v8 = *(sub_3031C8() - 8);
          v9 = v0 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
          v10 = *(v8 + 72);
          sub_2F12DC(v9 + 4 * v10, v7, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v9 + v10, v7 + v3, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v9, v7 + 2 * v3, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v9 + 2 * v10, v7 + 3 * v3, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          v11 = v9 + 3 * v10;
LABEL_15:
          sub_2F12DC(v11, v7 + v5, &type metadata accessor for ArtworkModel);

          goto LABEL_16;
        }

        if (v1 >= 7)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
          v38 = *(type metadata accessor for UpsellShowGridView.ArtworkColumn() - 8);
          v39 = *(v38 + 72);
          v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_334BF0;
          v41 = v6 + v40;
          v42 = *(sub_3031C8() - 8);
          v43 = v0 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
          v44 = *(v42 + 72);
          sub_2F12DC(v43 + 6 * v44, v41, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43 + 4 * v44, v41 + v39, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43 + v44, v41 + 2 * v39, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43, v41 + 3 * v39, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43 + 2 * v44, v41 + 4 * v39, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43 + 3 * v44, v41 + 5 * v39, &type metadata accessor for ArtworkModel);
          swift_storeEnumTagMultiPayload();
          sub_2F12DC(v43 + 5 * v44, v41 + 6 * v39, &type metadata accessor for ArtworkModel);

          goto LABEL_16;
        }

LABEL_23:

        return _swiftEmptyArrayStorage;
      }

LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
      v31 = *(type metadata accessor for UpsellShowGridView.ArtworkColumn() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v5 = 2 * v32;
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_318FC0;
      v7 = v6 + v33;
      v34 = *(sub_3031C8() - 8);
      v35 = v0 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v36 = *(v34 + 72);
      sub_2F12DC(v35 + v36, v7, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      sub_2F12DC(v35, v7 + v32, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      v11 = v35 + 2 * v36;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v12 = sub_3090B8();
  v13 = *(v0 + 16);
  if ((v12 & 1) == 0)
  {
    if (v13 != 2)
    {
      if (v13 - 3 <= 6)
      {
        goto LABEL_14;
      }

      if (v13 < 0xA)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
      v45 = type metadata accessor for UpsellShowGridView.ArtworkColumn();
      v46 = *(*(v45 - 8) + 72);
      v47 = (*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80);
      v81 = 4 * v46;
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_328A70;
      v48 = v6 + v47;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E438);
      v50 = *(v49 + 48);
      v51 = v49;
      v52 = *(sub_3031C8() - 8);
      v53 = v0 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v54 = *(v52 + 72);
      sub_2F12DC(v53 + 6 * v54, v48, &type metadata accessor for ArtworkModel);
      sub_2F12DC(v53 + 8 * v54, v48 + v50, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      v75 = v46;
      v76 = v51;
      v55 = *(v51 + 48);
      sub_2F12DC(v53 + 2 * v54, v48 + v46, &type metadata accessor for ArtworkModel);
      sub_2F12DC(v53 + 4 * v54, v48 + v46 + v55, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      v56 = 2 * v46;
      v57 = v48 + 2 * v46;
      v58 = *(v76 + 48);
      sub_2F12DC(v53, v57, &type metadata accessor for ArtworkModel);
      sub_2F12DC(v53 + v54, v57 + v58, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      v59 = v48 + v56 + v75;
      v60 = *(v76 + 48);
      sub_2F12DC(v53 + 3 * v54, v59, &type metadata accessor for ArtworkModel);
      sub_2F12DC(v53 + 5 * v54, v59 + v60, &type metadata accessor for ArtworkModel);
      swift_storeEnumTagMultiPayload();
      v61 = v48 + v81;
      v62 = *(v76 + 48);
      sub_2F12DC(v53 + 7 * v54, v61, &type metadata accessor for ArtworkModel);
      v63 = 9 * v54;
LABEL_25:
      sub_2F12DC(v53 + v63, v61 + v62, &type metadata accessor for ArtworkModel);

      goto LABEL_16;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
    v25 = *(type metadata accessor for UpsellShowGridView.ArtworkColumn() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_315420;
    v28 = v6 + v27;
    v29 = *(sub_3031C8() - 8);
    v30 = v0 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    sub_2F12DC(v30, v28, &type metadata accessor for ArtworkModel);
    swift_storeEnumTagMultiPayload();
    sub_2F12DC(v30 + *(v29 + 72), v28 + v26, &type metadata accessor for ArtworkModel);

    goto LABEL_16;
  }

  if (v13 == 2)
  {
    goto LABEL_12;
  }

  if (v13 - 3 <= 3)
  {
    goto LABEL_14;
  }

  if (v13 - 7 > 1)
  {
    if (v13 < 9)
    {
      goto LABEL_23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
    v82 = type metadata accessor for UpsellShowGridView.ArtworkColumn();
    v64 = *(*(v82 - 8) + 72);
    v65 = (*(*(v82 - 8) + 80) + 32) & ~*(*(v82 - 8) + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_328A70;
    v66 = v6 + v65;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E438);
    v68 = *(v67 + 48);
    v69 = v67;
    v77 = v67;
    v70 = *(sub_3031C8() - 8);
    v53 = v0 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v71 = *(v70 + 72);
    sub_2F12DC(v53 + 6 * v71, v66, &type metadata accessor for ArtworkModel);
    sub_2F12DC(v53 + 8 * v71, v66 + v68, &type metadata accessor for ArtworkModel);
    swift_storeEnumTagMultiPayload();
    v72 = *(v69 + 48);
    sub_2F12DC(v53 + v71, v66 + v64, &type metadata accessor for ArtworkModel);
    sub_2F12DC(v53 + 2 * v71, v66 + v64 + v72, &type metadata accessor for ArtworkModel);
    swift_storeEnumTagMultiPayload();
    sub_2F12DC(v53, v66 + 2 * v64, &type metadata accessor for ArtworkModel);
    swift_storeEnumTagMultiPayload();
    v73 = v66 + 3 * v64;
    v74 = *(v77 + 48);
    sub_2F12DC(v53 + 3 * v71, v73, &type metadata accessor for ArtworkModel);
    sub_2F12DC(v53 + 4 * v71, v73 + v74, &type metadata accessor for ArtworkModel);
    swift_storeEnumTagMultiPayload();
    v61 = v66 + 4 * v64;
    v62 = *(v77 + 48);
    sub_2F12DC(v53 + 5 * v71, v61, &type metadata accessor for ArtworkModel);
    v63 = 7 * v71;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E440);
  v14 = *(type metadata accessor for UpsellShowGridView.ArtworkColumn() - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v80 = 4 * *(v14 + 72);
  v16 = *(v14 + 72);
  v78 = v16;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_328A70;
  v17 = v6 + v15;
  v18 = *(sub_3031C8() - 8);
  v19 = v0 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  sub_2F12DC(v19 + 6 * v20, v17, &type metadata accessor for ArtworkModel);
  swift_storeEnumTagMultiPayload();
  v21 = v17 + v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E438);
  v22 = *(v79 + 48);
  sub_2F12DC(v19 + v20, v21, &type metadata accessor for ArtworkModel);
  sub_2F12DC(v19 + 2 * v20, v21 + v22, &type metadata accessor for ArtworkModel);
  swift_storeEnumTagMultiPayload();
  sub_2F12DC(v19, v17 + 2 * v78, &type metadata accessor for ArtworkModel);
  swift_storeEnumTagMultiPayload();
  v23 = v17 + 3 * v78;
  v24 = *(v79 + 48);
  sub_2F12DC(v19 + 3 * v20, v23, &type metadata accessor for ArtworkModel);
  sub_2F12DC(v19 + 4 * v20, v23 + v24, &type metadata accessor for ArtworkModel);
  swift_storeEnumTagMultiPayload();
  sub_2F12DC(v19 + 5 * v20, v17 + v80, &type metadata accessor for ArtworkModel);

LABEL_16:
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t sub_2F0C38(char *a1, uint64_t a2)
{
  v25 = a2;
  v26 = sub_303758();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_3031C8();
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_303398();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F12DC(a2, v12, &type metadata accessor for ArtworkModel);
  v17 = sub_303DF8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v18 = [objc_opt_self() mainScreen];
  [v18 scale];

  sub_303358();
  type metadata accessor for ArtworkView();
  sub_221DB4();
  sub_308E28();
  (*(v14 + 8))(v16, v13);
  sub_303198();
  v19 = &a1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
  *v19 = v20;
  *(v19 + 1) = v21;
  [a1 setNeedsLayout];
  v22 = v26;
  (*(v4 + 104))(v6, enum case for ArtworkAspectRule.aspectFill(_:), v26);
  [a1 effectiveUserInterfaceLayoutDirection];
  [a1 setContentMode:6];
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
  swift_beginAccess();
  (*(v4 + 40))(&a1[v23], v6, v22);
  return swift_endAccess();
}

uint64_t type metadata accessor for UpsellShowGridView.ArtworkColumn()
{
  result = qword_40E4B8;
  if (!qword_40E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2F1114(uint64_t a1)
{
  type metadata accessor for ArtworkView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (*(a1 + 64) == 255)
  {
    if (qword_3FAFE8 != -1)
    {
      swift_once();
    }

    v3 = qword_42B028;
  }

  else
  {
    v3 = sub_303D48();
  }

  v4 = v3;
  [v2 setBackgroundColor:v3];
  v14 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  sub_2DE78(&v14);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FF0000000000000;
  v5 = v2;
  sub_2BE604();
  if (qword_3FB050 != -1)
  {
    swift_once();
  }

  v6 = qword_40E3D8;
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_40E3D8;
  v8 = v6;

  sub_2BE604();
  LODWORD(v9) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v5 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [v5 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v12];

  return v5;
}

uint64_t sub_2F12DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2F1344()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView_horizontalStack;
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setAxis:0];
  [v2 setSpacing:8.0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___hStackHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___sizeClass) = 8;
  sub_30D648();
  __break(1u);
}

void sub_2F1430()
{
  sub_3031C8();
  if (v0 <= 0x3F)
  {
    sub_2F14A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2F14A4()
{
  if (!qword_40E4C8)
  {
    sub_3031C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_40E4C8);
    }
  }
}

id UpsellSubscriptionPlansView.__allocating_init(upsellInformation:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlans] = sub_309088();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (sub_3090A8())
  {
    sub_2F1AD4();
  }

  return v5;
}

void sub_2F1698()
{
  sub_124C4(0, &qword_3FFD48);
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.15];

  v3 = [v0 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.7];

  v5 = sub_30CFB8();
  qword_40E510 = v5;
}

uint64_t sub_2F178C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2F3DA0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_9FF04(v4);
}

uint64_t sub_2F182C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2F3D68;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_9FF04(v3);
  return sub_1EBD0(v8);
}

uint64_t UpsellSubscriptionPlansView.didSelect.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  swift_beginAccess();
  v2 = *v1;
  sub_9FF04(*v1);
  return v2;
}

uint64_t UpsellSubscriptionPlansView.didSelect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1EBD0(v6);
}

id UpsellSubscriptionPlansView.init(upsellInformation:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons] = _swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlans] = sub_309088();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (sub_3090A8())
  {
    sub_2F1AD4();
  }

  return v5;
}

uint64_t sub_2F1AD4()
{
  v1 = v0;
  type metadata accessor for ShadowView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FB070 != -1)
  {
    swift_once();
  }

  v3 = qword_3FB060;
  v4 = qword_40E510;
  if (v3 != -1)
  {
    v29 = v4;
    swift_once();
    v4 = v29;
  }

  v5 = qword_40E500;
  if (qword_3FB068 != -1)
  {
    v30 = v4;
    swift_once();
    v4 = v30;
  }

  v6 = qword_40E508;
  v7 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  v8 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
  *v7 = v4;
  *(v7 + 1) = v5;
  *(v7 + 2) = 0;
  *(v7 + 3) = v6;
  v9 = v4;

  sub_2BF1DC();
  [v1 addSubview:v2];
  sub_30CE98();
  v10 = [objc_allocWithZone(UIStackView) init];
  [v10 setAxis:0];
  [v10 setDistribution:1];
  if (qword_3FB058 != -1)
  {
    swift_once();
  }

  [v10 setSpacing:*&qword_40E4F8];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v10];
  sub_30CE98();
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlans];
  if (v11 >> 62)
  {
    v12 = sub_30D668();
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v33 = _swiftEmptyArrayStorage;
    result = sub_30D5D8();
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = v2;
    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = sub_30D578();
      }

      else
      {
        v18 = *(v11 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = type metadata accessor for UpsellSubscriptionPlanButton();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack] = 0;
      *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel] = 0;
      *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel] = 0;
      *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___subtitleLabel] = 0;
      v22 = v19;
      sub_30A358();
      v24 = v23;

      if (v24)
      {
      }

      ++v15;
      v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_style] = v24 == 0;
      *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_subscriptionPlan] = v22;
      v32.receiver = v21;
      v32.super_class = v20;
      v16 = v22;
      v17 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      [v17 setIsAccessibilityElement:1];
      sub_2F2DB8();

      [v17 addTarget:v1 action:"planButtonTappedWithButton:" forControlEvents:64];
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
    }

    while (v12 != v15);
    v13 = v33;
    v2 = v31;
  }

  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons] = v13;

  v26 = *&v1[v25];
  if (v26 >> 62)
  {
    sub_124C4(0, &qword_3FBD90);

    v27 = sub_30D658();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_30D738();
    sub_124C4(0, &qword_3FBD90);
    v27 = v26;
  }

  v28._rawValue = v27;
  sub_30C688(v28);
}

uint64_t sub_2F206C(uint64_t result)
{
  v18 = result;
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_subscriptionPlanButtons);
  if (v2 >> 62)
  {
    result = sub_30D668();
    v3 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_30D578();
    }

    else
    {
      v7 = *(v2 + 8 * i + 32);
    }

    v8 = v7;
    v9 = v7 == v18;
    v10 = type metadata accessor for UpsellSubscriptionPlanButton();
    v22.receiver = v8;
    v22.super_class = v10;
    v11 = objc_msgSendSuper2(&v22, "isSelected");
    v21.receiver = v8;
    v21.super_class = v10;
    objc_msgSendSuper2(&v21, "setSelected:", v9);
    v20.receiver = v8;
    v20.super_class = v10;
    if (v11 != objc_msgSendSuper2(&v20, "isSelected"))
    {
      v19.receiver = v8;
      v19.super_class = v10;
      v12 = objc_msgSendSuper2(&v19, "isSelected");
      v13 = [v8 layer];
      v14 = v13;
      if (v12)
      {
        [v13 setBorderWidth:3.0];

        v5 = [v8 layer];
        if (qword_3FAFB8 != -1)
        {
          swift_once();
        }

        v6 = [qword_40DB80 CGColor];
        [v5 setBorderColor:v6];
      }

      else
      {
        [v13 setBorderWidth:1.0];

        v6 = [v8 layer];
        if (qword_3FB090 != -1)
        {
          swift_once();
        }

        [v6 setBorderColor:qword_40E530];
      }
    }
  }

LABEL_19:
  v15 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews27UpsellSubscriptionPlansView_didSelect);
  result = swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_subscriptionPlan];

    v16(v17);
    return sub_1EBD0(v16);
  }

  return result;
}

void sub_2F25A8()
{
  sub_124C4(0, &qword_3FFD48);
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.08];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.1];

  v5 = sub_30CFB8();
  v6 = [v5 CGColor];

  qword_40E530 = v6;
}

id sub_2F26B8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setUserInteractionEnabled:0];
    [v4 setAxis:1];
    [v4 setAlignment:3];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2F2788()
{
  type metadata accessor for DynamicTypeLabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  sub_124C4(0, &qword_408100);
  v2 = sub_30CCE8();
  v3 = sub_30CCF8();
  v4 = sub_30CD28();

  [v0 setFont:v4];
  v5 = v0;
  [v5 setNumberOfLines:1];
  [v5 setLineBreakMode:4];
  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  [v5 setTextColor:qword_40DB80];

  return v5;
}

id sub_2F28BC()
{
  type metadata accessor for DynamicTypeLabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  sub_124C4(0, &qword_408100);
  v2 = sub_30CDD8();
  [v0 setFont:v2];

  v3 = v0;
  [v3 setNumberOfLines:1];
  [v3 setLineBreakMode:4];
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor:v4];

  return v3;
}

id sub_2F29BC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2F2A1C()
{
  type metadata accessor for DynamicTypeLabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  sub_124C4(0, &qword_408100);
  v2 = sub_30CDE8();
  v3 = sub_30CD58();
  v4 = sub_30CD28();

  [v0 setFont:v4];
  v5 = v0;
  [v5 setNumberOfLines:1];
  [v5 setLineBreakMode:4];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor:v6];

  return v5;
}

void sub_2F2C3C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, "isSelected");
  v2 = [v0 layer];
  v3 = v2;
  if (v1)
  {
    [v2 setBorderWidth:3.0];

    v4 = [v0 layer];
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v5 = [qword_40DB80 CGColor];
    [v4 setBorderColor:v5];
  }

  else
  {
    [v2 setBorderWidth:1.0];

    v5 = [v0 layer];
    if (qword_3FB090 != -1)
    {
      swift_once();
    }

    [v5 setBorderColor:qword_40E530];
  }
}

void sub_2F2DB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() systemBackgroundColor];
  [v1 setBackgroundColor:v3];

  v4 = [v1 layer];
  [v4 setCornerRadius:14.0];

  v5 = sub_2F26B8();
  [v1 addSubview:v5];

  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack;
  v7 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack];
  sub_30CE98();

  v8 = [*&v1[v6] heightAnchor];
  if (qword_3FB078 != -1)
  {
    swift_once();
  }

  v9 = [v8 constraintGreaterThanOrEqualToConstant:*&qword_40E518];

  [v9 setActive:1];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_style])
  {
    sub_2F3704();
  }

  else
  {
    sub_2F32D8();
  }

  v10 = sub_30A318();
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v26, "isSelected");
  v25.receiver = v1;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "setSelected:", v10 & 1);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  if (v11 != objc_msgSendSuper2(&v24, "isSelected"))
  {
    sub_2F2C3C();
  }

  sub_2F2C3C();
  v12 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel, sub_2F28BC);
  v13 = [v12 text];

  if (v13)
  {
    sub_30C0D8();
    v14 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___subtitleLabel, sub_2F2A1C);
    v15 = [v14 text];

    if (v15)
    {

      v16 = sub_30C0D8();
      v18 = v17;

      v27._countAndFlagsBits = 8236;
      v27._object = 0xE200000000000000;
      sub_30C238(v27);
      v28._countAndFlagsBits = v16;
      v28._object = v18;
      sub_30C238(v28);

      v13 = sub_30C098();
    }

    [v1 setAccessibilityLabel:v13];
  }

  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "isSelected");
  [v1 setAccessibilityTraits:?];
  sub_30A308();
  v19 = sub_309158();
  v21 = v20;

  sub_E504();
  sub_30D428();

  v22 = sub_30C098();
  [v1 setAccessibilityIdentifier:{v22, 0x594C48544E4F4DLL, 0xE700000000000000, v19, v21}];
}

void sub_2F32D8()
{
  if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_style] & 1) == 0)
  {
    v1 = v0;
    v2 = [v0 traitCollection];
    v3 = sub_30C968();

    if ((v3 & 1) == 0)
    {
      v4 = sub_2F26B8();
      [v4 setSpacing:3.0];
    }

    v5 = sub_2F26B8();
    [v5 setLayoutMarginsRelativeArrangement:1];

    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack;
    v7 = qword_3FB080;
    v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___vStack];
    if (v7 != -1)
    {
      swift_once();
    }

    if (qword_3FB088 != -1)
    {
      swift_once();
    }

    [v8 setLayoutMargins:?];

    sub_30A338();
    if (v9)
    {
      v10 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel, sub_2F2788);
      v11 = sub_30C098();

      [v10 setText:v11];

      [*&v1[v6] addArrangedSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel]];
    }

    else
    {
      v12 = *&v1[v6];
      v13 = objc_allocWithZone(UIView);
      v14 = v12;
      v15 = [v13 init];
      [v14 addArrangedSubview:v15];
    }

    v16 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel, sub_2F28BC);
    sub_30A328();
    v17 = sub_30C098();

    [v16 setText:v17];

    v18 = OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel;
    [*&v1[v6] addArrangedSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel]];
    v19 = [v1 traitCollection];
    v20 = sub_30C968();

    if (v20)
    {
      [*&v1[v6] setCustomSpacing:*&v1[v18] afterView:3.0];
    }

    sub_30A358();
    if (v21)
    {
      v22 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___subtitleLabel, sub_2F2A1C);
      v23 = sub_30C098();

      [v22 setText:v23];

      v24 = *&v1[v6];
      v25 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___subtitleLabel];

      [v24 addArrangedSubview:v25];
    }

    else
    {
      v26 = *&v1[v6];
      v27 = objc_allocWithZone(UIView);
      v28 = v26;
      v29 = [v27 init];
      [v28 addArrangedSubview:v29];
    }
  }
}

void sub_2F3704()
{
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton_style] == 1)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(UIView) init];
    [v2 setUserInteractionEnabled:0];
    v3 = [objc_allocWithZone(UIStackView) init];
    [v3 setAxis:1];
    [v3 setAlignment:3];
    v4 = v3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 traitCollection];
    v6 = sub_30C968();

    if ((v6 & 1) == 0)
    {
      [v4 setSpacing:3.0];
    }

    [v2 addSubview:v4];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_31FDA0;
    v9 = [v4 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v8 + 32) = v11;
    v12 = [v4 leadingAnchor];
    v13 = [v2 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v8 + 40) = v14;
    v15 = [v4 trailingAnchor];
    v16 = [v2 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v8 + 48) = v17;
    v18 = [v4 topAnchor];
    v19 = [v2 topAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];

    *(v8 + 56) = v20;
    v21 = [v4 bottomAnchor];

    v22 = [v2 bottomAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22];

    *(v8 + 64) = v23;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v7 activateConstraints:isa];

    sub_30A338();
    if (v25)
    {
      v26 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel, sub_2F2788);
      v27 = sub_30C098();

      [v26 setText:v27];

      [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___calloutLabel]];
    }

    v28 = sub_2F29BC(&OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel, sub_2F28BC);
    sub_30A328();
    v29 = sub_30C098();

    [v28 setText:v29];

    [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_A89005DB8D4382AA5AEAA7A07C0C750128UpsellSubscriptionPlanButton____lazy_storage___titleLabel]];
    v30 = sub_2F26B8();
    [v30 addArrangedSubview:v2];
  }
}

unint64_t sub_2F3CDC()
{
  result = qword_40E5D0;
  if (!qword_40E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40E5D0);
  }

  return result;
}

uint64_t sub_2F3D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F3D68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

BOOL sub_2F3DD0()
{
  v1 = [v0 traitCollection];
  v2 = sub_30C968();

  if (v2)
  {
    return 0;
  }

  sub_2F60E8();
  if ((sub_302BD8() & 1) != 0 || (sub_3090C8() & 1) == 0)
  {
    return 0;
  }

  v3 = sub_309068();
  if (sub_302BE8())
  {

    return 1;
  }

  else
  {
    v5 = *(v3 + 16);

    return v5 < 2;
  }
}

double sub_2F3E84()
{
  sub_3090A8();
  sub_2F60E8();
  sub_309068();
  sub_302BE8();

  if (sub_309048())
  {
  }

  return 540.0;
}

id sub_2F3F5C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = sub_2F3FC0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2F3FC0(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:a1 action:"closeButtonTapped"];
  v8._object = 0x800000000033C270;
  v8._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v8);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_30C238(v9);
  HIBYTE(v7._object) = 12;
  sub_30D638();
  v2 = sub_30C098();

  [v1 setAccessibilityIdentifier:v2];

  v3 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xEC0000006E6F7474;
  v10._countAndFlagsBits = 0x45534F4C435F5841;
  v10._object = 0xEF4E4F545455425FLL;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v4.super.isa = v3;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_301AB8(v10, v11, v4, v12, v7);

  v5 = sub_30C098();

  [v1 setAccessibilityLabel:v5];

  return v1;
}

id sub_2F4178(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_30BC58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_30BD28();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_purchases] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_didApplyArtwork] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_acknowledgementCompletionBlocks] = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_isAcknowledgementRequired;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_isAcknowledgementRequired] = 0;
  v13 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___closeButton] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass] = 8;
  v14 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___previousWidth];
  *v14 = 0;
  v14[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);
  v28 = a1;
  sub_30B8E8();
  type metadata accessor for UpsellDismissingActionRunner();
  v15 = swift_allocObject();
  v27 = v32;
  swift_unknownObjectWeakInit();
  *(v15 + 16) = v27;
  v16 = sub_2F83B8(&qword_40E728, type metadata accessor for UpsellDismissingActionRunner);
  *&v32 = v15;
  *(&v32 + 1) = v16;

  sub_30B908();

  sub_30BD18();
  sub_30B928();

  (*(v10 + 8))(v12, v9);
  sub_30BC48();
  sub_30B938();

  (*(v6 + 8))(v8, v5);
  sub_303958();
  *&v32 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v29;
  v19 = v18;
  v20 = sub_30B8F8();

  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_objectGraph] = v20;

  sub_30B8E8();
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_metricsController] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B8);
  sub_30B8E8();
  sub_12658(&v32, &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_purchaseController]);
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_upsellInformation] = v19;
  v21 = objc_allocWithZone(type metadata accessor for UpsellInfoContainerView());
  v22 = v19;

  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_infoContainerView] = sub_2E9434(v23, v22);
  v3[v30] = sub_309098() & 1;
  v24 = type metadata accessor for UpsellViewController();
  v31.receiver = v3;
  v31.super_class = v24;
  v25 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);

  swift_unknownObjectWeakAssign();

  return v25;
}

uint64_t sub_2F465C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_308EE8();
  swift_allocObject();

  v5 = sub_308ED8();
  sub_309038();
  v6 = sub_30B858();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  result = sub_308E98();
  *a1 = v5;
  return result;
}

void sub_2F4818(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for UpsellViewController();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_didApplyArtwork;
  if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_didApplyArtwork] & 1) == 0)
  {
    v5 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader];
    if (v5)
    {
      v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader + 8];
      v7 = v5;
      v8 = [v2 view];
      if (v8)
      {
        v9 = v8;
        [v8 setNeedsLayout];

        v10 = [v2 view];
        if (v10)
        {
          v11 = v10;
          [v10 layoutIfNeeded];

          ObjectType = swift_getObjectType();
          v13 = sub_2F60E8();
          sub_2F6530();
          sub_2DF858(v13, ObjectType, v6);

          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_6:
    v2[v4] = 1;
  }
}

void sub_2F49AC(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for UpsellViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_308EB8();
}

void sub_2F4A7C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 setPreservesSuperviewLayoutMargins:0];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  sub_30C6E8();
  [v5 setLayoutMargins:?];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_302AD8();
  v8 = sub_302AC8();
  [v7 setBackgroundColor:v8];

  v9 = [v1 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == &dword_0 + 1)
  {
    sub_2F3E84();
    [v1 setPreferredContentSize:540.0];
  }

  v11 = [v1 navigationItem];
  v12 = sub_2F3F5C();
  [v11 setLeftBarButtonItem:v12];

  sub_2F4C28();

  sub_2F68D0();
}

void sub_2F4C28()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_infoContainerView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 addSubview:v1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_31D470;
  v5 = [v1 leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 layoutMarginsGuide];

  v9 = [v8 leadingAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v4 + 32) = v10;
  v11 = [v1 trailingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 layoutMarginsGuide];

  v15 = [v14 trailingAnchor];
  v16 = [v11 constraintEqualToAnchor:v15];

  *(v4 + 40) = v16;
  v17 = [v1 bottomAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v21 = [v19 bottomAnchor];

  v22 = [v17 constraintEqualToAnchor:v21];
  *(v4 + 48) = v22;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v20 activateConstraints:isa];
}

uint64_t sub_2F4F14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40E710);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  result = sub_309098();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_purchaseController), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_purchaseController + 24));
    sub_303C58();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_EC8C(&qword_40E718, &qword_40E710);
    sub_304F58();

    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();
  }

  return result;
}

void sub_2F5138(uint64_t *a1)
{
  v2 = sub_306E68();
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_306E88();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_3041E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v43[-v12];
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v50 = v4;
    v48 = sub_124C4(0, &qword_3FC1C0);
    sub_30D358();

    v17 = v16;
    v18 = sub_3041D8();
    v19 = sub_30C7B8();

    v20 = os_log_type_enabled(v18, v19);
    v49 = v5;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v14;
      aBlock[0] = v45;
      *v21 = 136315394;
      v46 = v8;
      v47 = v17;
      v22 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FE350);
      v44 = v19;
      sub_EC8C(&qword_40E720, &unk_3FE350);
      sub_E504();
      v23 = sub_30C328();
      v25 = sub_191264(v23, v24, aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_309118();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      v29 = sub_191264(v26, v28, aBlock);
      v17 = v47;

      *(v21 + 14) = v29;
      v7 = v22;
      v8 = v46;
      _os_log_impl(&dword_0, v18, v44, "Got purchase list %s and we're displaying product %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v30 = *(v9 + 8);
    v30(v13, v8);

    v31 = v17;
    v32 = sub_2F8090(v14, v31);

    v33 = *(v32 + 16);

    v34 = v53;
    if (v33)
    {
      sub_30D358();
      v35 = sub_3041D8();
      v36 = sub_30C7B8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "A purchase was made for the product we are upselling, dismissing", v37, 2u);
      }

      v30(v34, v8);
      sub_124C4(0, &qword_3FBF20);
      v38 = sub_30C8F8();
      v39 = swift_allocObject();
      *(v39 + 16) = v31;
      aBlock[4] = sub_2F83B0;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_48_1;
      v40 = _Block_copy(aBlock);
      v41 = v31;

      sub_306E78();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_2F83B8(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
      sub_EC8C(&qword_40D770, &qword_408860);
      v42 = v50;
      sub_30D488();
      sub_30C908();
      _Block_release(v40);

      (*(v52 + 8))(v42, v2);
      (*(v49 + 8))(v7, v51);
    }

    else
    {
    }
  }
}

id sub_2F5800(void *a1)
{
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 presentedViewController];
  if (v7)
  {

    sub_124C4(0, &qword_3FC1C0);
    sub_30D358();
    v8 = a1;
    v9 = sub_3041D8();
    v10 = sub_30C7B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      swift_getObjectType();
      v13 = sub_30D8A8();
      v15 = sub_191264(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "%s is presending an alert. Not dismissing VC.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_2F5A3C()
{
  v1 = v0;
  v32 = sub_30B7E8();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30B858();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  sub_309038();
  v14 = sub_30B7F8();
  v15 = *(v5 + 8);
  v15(v13, v4);
  if (!v14)
  {
    goto LABEL_6;
  }

  if (!*(v14 + 16))
  {

LABEL_6:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_8;
  }

  v16 = sub_19182C(0x644965676170, 0xE600000000000000);
  if (v17)
  {
    sub_1DA1C(*(v14 + 56) + 32 * v16, &v39);
  }

  else
  {

    v39 = 0u;
    v40 = 0u;
  }

LABEL_8:
  v30[1] = sub_309118();
  v30[2] = v18;
  sub_309038();
  v19 = sub_30B7F8();
  v15(v10, v4);
  if (v19)
  {
    if (*(v19 + 16))
    {
      v20 = sub_19182C(0x6C725565676170, 0xE700000000000000);
      if (v21)
      {
        sub_1DA1C(*(v19 + 56) + 32 * v20, v38);

        goto LABEL_14;
      }
    }
  }

  memset(v38, 0, sizeof(v38));
LABEL_14:
  sub_309038();
  v22 = sub_30B7F8();
  v15(v7, v4);
  if (v22)
  {
    if (*(v22 + 16))
    {
      v23 = sub_19182C(0x6174654465676170, 0xEB00000000736C69);
      if (v24)
      {
        sub_1DA1C(*(v22 + 56) + 32 * v23, v37);

        goto LABEL_20;
      }
    }
  }

  memset(v37, 0, sizeof(v37));
LABEL_20:
  if (sub_309098())
  {
    sub_303508();
  }

  else
  {
    sub_303518();
  }

  sub_2DDAD0(&v39, aBlock);
  if (v34)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_EB68(aBlock, &unk_3FBB70);
  }

  sub_2DDAD0(v38, aBlock);
  if (v34)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_EB68(aBlock, &unk_3FBB70);
  }

  sub_308D58();
  sub_308D08();

  sub_307E18();
  sub_308EC8();
  (*(v31 + 8))(v3, v32);
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_acknowledgementCompletionBlocks;
  swift_beginAccess();
  v26 = *&v1[v25];
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v35 = sub_2F7DBC;
  v36 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  v34 = &block_descriptor_39_1;
  v28 = _Block_copy(aBlock);

  [v1 dismissViewControllerAnimated:1 completion:v28];
  _Block_release(v28);

  sub_EB68(v37, &unk_3FBB70);
  sub_EB68(v38, &unk_3FBB70);
  return sub_EB68(&v39, &unk_3FBB70);
}

uint64_t sub_2F6048(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_2F60E8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass;
  result = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass];
  if (result == 8)
  {
    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      CGRectGetWidth(v12);
      result = sub_302BF8();
      v0[v1] = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2F6190()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___previousWidth];
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___previousWidth + 8])
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      *v1 = CGRectGetWidth(v12);
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2F6240()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = sub_302BF8();
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass] = v12;
  sub_2F60E8();
  sub_2E9B5C();
  v14 = [v1 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != &dword_0 + 1)
  {
    return;
  }

  sub_2F6190();
  v17 = v16;
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v51.origin.x = v21;
  v51.origin.y = v23;
  v51.size.width = v25;
  v51.size.height = v27;
  if (v17 == CGRectGetWidth(v51))
  {
    return;
  }

  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;
  [v28 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v52.origin.x = v31;
  v52.origin.y = v33;
  v52.size.width = v35;
  v52.size.height = v37;
  Width = CGRectGetWidth(v52);
  v39 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___previousWidth];
  *v39 = Width;
  *(v39 + 8) = 0;
  if (sub_2F6530())
  {
    sub_2F3E84();
    [v1 setPreferredContentSize:540.0];
  }

  sub_2F68D0();
  v40 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader];
  if (v40)
  {
    v41 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader + 8];
    v48 = v40;
    v42 = [v1 view];
    if (v42)
    {
      v43 = v42;
      [v42 setNeedsLayout];

      v44 = [v1 view];
      if (v44)
      {
        v45 = v44;
        [v44 layoutIfNeeded];

        ObjectType = swift_getObjectType();
        v47 = v1[v13];
        sub_2F6530();
        sub_2DF858(v47, ObjectType, v41);

        return;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

id sub_2F6530()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == &dword_0 + 1)
  {
    result = [v0 presentingViewController];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == &dword_0 + 1)
    {
      v7 = [v4 traitCollection];
      v8 = [v7 horizontalSizeClass];

      return (v8 == &dword_0 + 2);
    }
  }

  return 0;
}

char *sub_2F6628()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = [v0 traitCollection];
  v7 = sub_30C968();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2F6530();
  }

  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_upsellInformation];
  if (sub_3090C8())
  {
    v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_objectGraph];
    objc_allocWithZone(type metadata accessor for UpsellEditorialHeader());

    return sub_2E05B8(v10, v9);
  }

  else
  {
    sub_309028();
    v12 = sub_3031C8();
    v13 = (*(*(v12 - 8) + 48))(v5, 1, v12);
    sub_EB68(v5, &unk_402FF0);
    if (v13 == 1)
    {
      sub_2F60E8();
      if (sub_302BD8())
      {
        objc_allocWithZone(type metadata accessor for UpsellSquareFallbackHeader());
        v14 = v9;

        return sub_2E0948(v15, v14);
      }

      else if (sub_302BE8())
      {
        objc_allocWithZone(type metadata accessor for UpsellSquareFallbackCompactHeader());
        v18 = v9;

        return sub_2DEE4C(v19, v18, v8 & 1);
      }

      else
      {
        objc_allocWithZone(type metadata accessor for UpsellFallbackCompactHeader());
        v20 = v9;

        return sub_2E0CDC(v21, v20);
      }
    }

    else
    {
      objc_allocWithZone(type metadata accessor for UpsellLogoFallbackHeader());
      v16 = v9;

      return sub_2DE2CC(v17, v16, v8 & 1);
    }
  }
}

void sub_2F68D0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = sub_2F6628();
  v6 = v5;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  [v7 addSubview:v4];

  v9 = sub_2F3DD0();
  v10 = [v4 leadingAnchor];
  v11 = [v1 view];
  v12 = v11;
  v48 = v2;
  v49 = v6;
  if (!v9)
  {
    if (!v11)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v30 = [v11 leadingAnchor];

    v31 = [v10 constraintEqualToAnchor:v30];
    v25 = v31;
    v14 = [v4 trailingAnchor];
    v32 = [v1 view];
    if (!v32)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v33 = v32;
    v19 = [v32 trailingAnchor];

    v22 = &PlayControlsStackView;
    v29 = [v14 constraintEqualToAnchor:v19];
    goto LABEL_13;
  }

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = [v11 leadingAnchor];

  v14 = [v10 anchorWithOffsetToAnchor:v13];
  v15 = [v4 trailingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 anchorWithOffsetToAnchor:v18];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = &PlayControlsStackView;
  v23 = [v20 widthAnchor];

  v24 = [v14 constraintEqualToAnchor:v23 multiplier:0.14];
  v25 = v24;
  v26 = [v1 view];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 widthAnchor];

    v29 = [v19 constraintEqualToAnchor:v28 multiplier:-0.14];
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_31D480;
    *(inited + 32) = v25;
    *(inited + 40) = v29;
    v35 = v29;
    v36 = [v4 topAnchor];
    v37 = [v1 view];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 topAnchor];

      v40 = [v36 *&v22[299]];
      *(inited + 48) = v40;
      v41 = [v4 bottomAnchor];
      v42 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_infoContainerView] topAnchor];
      v43 = [v41 *&v22[299]];

      *(inited + 56) = v43;
      sub_14A360(inited);
      v44 = sub_2F6E04(v4);
      sub_14A360(v44);
      v45 = objc_opt_self();
      sub_124C4(0, &qword_403000);
      isa = sub_30C358().super.isa;

      [v45 activateConstraints:isa];

      v47 = *v48;
      *v48 = v4;
      *(v48 + 1) = v49;

      return;
    }

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

id sub_2F6E04(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_4 + 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_31BF90;
    v6 = [a1 heightAnchor];
    sub_2F60E8();
    v7 = sub_309068();
    if (sub_302BE8())
    {

      v8 = 252.0;
    }

    else
    {
      v11 = *(v7 + 16);

      v8 = 275.0;
      if (v11 < 2)
      {
        v8 = 252.0;
      }
    }

    v12 = [v6 constraintEqualToConstant:v8];

    *(v5 + 32) = v12;
    return v5;
  }

  if (sub_2F6530())
  {
    sub_2F60E8();
    v9 = sub_309068();
    if (sub_302BE8())
    {

      v10 = 360.0;
    }

    else
    {
      v18 = *(v9 + 16);

      if (v18 >= 2)
      {
        v10 = 410.0;
      }

      else
      {
        v10 = 360.0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_31BF90;
    v19 = [a1 heightAnchor];
    v20 = [v19 constraintEqualToConstant:v10];

    *(v5 + 32) = v20;
    return v5;
  }

  type metadata accessor for UpsellFallbackCompactHeader();
  if (swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_31BF90;
    v13 = [a1 heightAnchor];
    result = [v1 view];
    if (result)
    {
      v15 = result;
      v16 = [result widthAnchor];

      v17 = [v13 constraintLessThanOrEqualToAnchor:v16];
      *(v5 + 32) = v17;
      return v5;
    }

    __break(1u);
  }

  else
  {
    sub_30C888();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_317F20;
    v23 = [a1 heightAnchor];
    result = [v1 view];
    if (result)
    {
      v24 = result;
      v25 = [result heightAnchor];

      v26 = [v23 constraintEqualToAnchor:v25 multiplier:0.54];
      v27.rawValue = v22 + -1.0;
      isa = sub_30CA28(v27).super.isa;

      *(v5 + 32) = isa;
      v29 = [a1 heightAnchor];
      v30 = [v29 constraintLessThanOrEqualToConstant:500.0];

      *(v5 + 40) = v30;
      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_2F7254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2F7378(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_acknowledgementCompletionBlocks;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_CA648(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_CA648((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_747B0;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_2F7484(uint64_t a1, uint64_t a2)
{
  v5 = sub_30B898();
  __chkstk_darwin(v5 - 8);
  if (sub_2F7BE8(a1) & 1) != 0 && (sub_12670(a1, aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60), v6 = sub_30B038(), (swift_dynamicCast()))
  {
    v7 = aBlock[6];
    v8 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v10 = Strong, v11 = [Strong presentingViewController], v10, v11) && (type metadata accessor for FlowNavigationController(), v12 = swift_dynamicCastClass(), v11, v12))
    {

      v13 = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4090D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_315430;
      *(v15 + 56) = v6;
      *(v15 + 64) = sub_2F83B8(&qword_3FBDA0, &type metadata accessor for Action);
      *(v15 + 32) = v7;

      sub_30AFB8();
      sub_30B868();
      sub_308A48();
      swift_allocObject();
      v13 = sub_308A18();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10);
    v16 = sub_30BF08();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v25 = *(v8 + 16);
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_acknowledgementCompletionBlocks;
        v21 = v19;
        swift_beginAccess();
        v22 = *&v21[v20];
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v22 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v25;
      *(v23 + 32) = v13;
      *(v23 + 40) = a2;
      *(v23 + 48) = v16;
      *(v23 + 56) = v22;
      aBlock[4] = sub_2F7D10;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_78;
      v24 = _Block_copy(aBlock);

      [v18 dismissViewControllerAnimated:1 completion:v24];

      _Block_release(v24);

      return v16;
    }

    else
    {

      return v16;
    }
  }

  else
  {
    swift_getObjectType();
    return sub_307C18();
  }
}

uint64_t sub_2F785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v14 = sub_30B038();
  v15 = sub_2F83B8(&qword_3FBDA0, &type metadata accessor for Action);
  v13[0] = a3;

  sub_307C18();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  v10 = sub_124C4(0, &qword_3FBF20);

  swift_retain_n();
  v11 = sub_30C8F8();
  v14 = v10;
  v15 = &protocol witness table for OS_dispatch_queue;
  v13[0] = v11;
  sub_30BEA8();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2F79E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_30BEF8();
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = a3 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_2F7A50()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_2F7B18()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_2F7B50(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_2F7EDC(v7, a2, a3);

    return v9;
  }

  return result;
}

uint64_t sub_2F7BE8(uint64_t a1)
{
  sub_12670(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
  sub_309168();
  if (swift_dynamicCast() || (sub_308DC8(), swift_dynamicCast()) || (sub_309EA8(), swift_dynamicCast()))
  {

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_2F7CB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2F7D38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F7D84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F7DC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2F7E04()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_purchases) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_didApplyArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_acknowledgementCompletionBlocks) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_isAcknowledgementRequired) = 0;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_artworkHeader);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___sizeClass) = 8;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController____lazy_storage___previousWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2F7EDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];

    v17 = sub_309118();
    if (v18)
    {
      if (v17 == v16 && v18 == v15)
      {

LABEL_20:
        *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_23:

          return sub_2EE5C4(v23, a2, v24, a3);
        }
      }

      else
      {
        v20 = sub_30D728();

        if (v20)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_23;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2F8090(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v37 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    __chkstk_darwin(v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v35 = 0;
    v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews20UpsellViewController_upsellInformation;
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_13:
      v17 = v14 | (v7 << 6);
      v18 = v4;
      v19 = (*(v4 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v8 = *&v37[v36];

      v22 = sub_309118();
      if (v23)
      {
        if (v22 == v21 && v23 == v20)
        {
          v8 = v23;

          v4 = v18;
LABEL_21:
          *&v34[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
LABEL_24:
            v27 = sub_2EE5C4(v34, v32, v35, v4);

            return v27;
          }
        }

        else
        {
          v8 = v23;
          v25 = sub_30D728();

          v4 = v18;
          if (v25)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {

        v4 = v18;
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_24;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v37;
  v27 = sub_2F7B50(v29, v7, v4, v30);

  return v27;
}

uint64_t sub_2F8378()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2F83B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2F8468(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

void sub_2F863C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for VideoControlBackdrop();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  sub_2F8898();
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v2 contentView];
  v4 = [v3 subviews];

  sub_124C4(0, &qword_3FBD90);
  v5 = sub_30C368();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_12:
    v19 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView];
    [v0 bounds];
    [v19 setFrame:?];
    return;
  }

  v6 = sub_30D668();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_30D578();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v2 contentView];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v9 setFrame:{v12, v14, v16, v18}];
    }

    while (v6 != v7);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2F8898()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView])
  {
    return;
  }

  v2 = [objc_opt_self() colorEffectSaturate:1.8];
  v3 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale();
  v5 = v4;

  v6 = [objc_opt_self() effectWithBlurRadius:v5];
  if (!v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_317F20;
  *(v8 + 32) = v7;
  *(v8 + 40) = v2;
  sub_124C4(0, &qword_40D660);
  v43 = v2;
  v42 = v7;
  isa = sub_30C358().super.isa;

  v10 = [objc_opt_self() effectCombiningEffects:isa];

  v41 = v10;
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
  v12 = *&v0[v1];
  *&v0[v1] = v11;
  v13 = v11;

  if (v13)
  {
    [v13 setUserInteractionEnabled:0];
  }

  v44 = v1;
  [v0 bounds];
  v18 = [objc_allocWithZone(UIView) initWithFrame:{v14, v15, v16, v17}];
  [v18 setUserInteractionEnabled:0];
  if (qword_3FB098 != -1)
  {
    swift_once();
  }

  v19 = qword_40E730;
  v20 = kCAFilterNormalBlendMode;
  v21 = objc_opt_self();
  v22 = [v21 layerWithFillColor:v19 opacity:v20 filterType:1.0];
  v23 = objc_opt_self();
  v24 = [v23 configWithContentConfig:v22];
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 contentConfig];

  if (!v26)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v26 configureLayerView:v18];

  [v0 bounds];
  v31 = [objc_allocWithZone(UIView) initWithFrame:{v27, v28, v29, v30}];
  [v31 setUserInteractionEnabled:0];
  if (qword_3FB0A0 != -1)
  {
    swift_once();
  }

  v32 = [v21 layerWithFillColor:qword_40E738 opacity:v20 filterType:1.0];
  v33 = [v23 configWithContentConfig:v32];
  if (!v33)
  {
    goto LABEL_23;
  }

  v34 = v33;
  v35 = [v33 contentConfig];

  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v35 configureLayerView:v31];

  v36 = *&v0[v44];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v0 insertSubview:v36 atIndex:0];
  v37 = *&v0[v44];
  if (v37)
  {
    v38 = [v37 contentView];
    [v38 addSubview:v18];

    v39 = *&v0[v44];
    if (v39)
    {
      v40 = [v39 contentView];
      [v40 addSubview:v31];
    }
  }
}

id sub_2F8DBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoControlBackdrop();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2F8E7C(uint64_t a1, double a2)
{
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 colorWithAlphaComponent:a2];

  v6 = [objc_opt_self() layerWithFillColor:v5 opacity:kCAFilterPlusL filterType:1.0];
  v7 = [objc_opt_self() configWithContentConfig:v6];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 contentConfig];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v9 configureLayerView:a1];
}

void sub_2F90F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = sub_30C098();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_2F9250()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectedGlyph];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 isSelected];
    v4 = v2;
    if ((v3 & 1) == 0)
    {
      v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_glyph];
    }

    v5 = v4;
    v6 = v2;
    if ([v0 isSelected])
    {
      v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_glyph];
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    v14[4] = sub_2F9C68;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_914CC;
    v14[3] = &block_descriptor_79;
    v9 = _Block_copy(v14);
    v10 = v6;
    v11 = v5;
    v12 = v10;

    [v7 animateWithDuration:v9 animations:0.2];
    _Block_release(v9);
  }

  v13 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectionHandler];
  if (v13)
  {

    v13([v0 isSelected]);
    sub_1EBD0(v13);
  }
}

void sub_2F9498()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for VideoControlButton();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_isGlyphOnlyButton] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_backdrop];
    [v0 bounds];
    [v1 setFrame:?];
    [v0 bounds];
    Width = CGRectGetWidth(v27);
    [v0 bounds];
    if (Width == CGRectGetHeight(v28))
    {
      [v1 bounds];
      v3 = CGRectGetWidth(v29) * 0.5;
      v4 = &selRef__setCornerRadius_;
    }

    else
    {
      [v0 bounds];
      v5 = CGRectGetHeight(v30) <= 40.0;
      v3 = 8.0;
      if (!v5)
      {
        v3 = 16.0;
      }

      v4 = &selRef__setContinuousCornerRadius_;
    }

    [v1 *v4];
  }

  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_glyph];
  [v0 bounds];
  [v6 sizeThatFits:{v7, v8}];
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectedGlyph;
  v14 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_selectedGlyph];
  if (v14)
  {
    v15 = v14;
    [v0 bounds];
    [v15 sizeThatFits:{v16, v17}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  if (v19 >= v10)
  {
    v22 = v19;
  }

  else
  {
    v22 = v10;
  }

  [v0 bounds];
  v23 = (CGRectGetMaxX(v31) - v22) * 0.5;
  [v0 bounds];
  [v6 setFrame:{v23, (CGRectGetMaxY(v32) - v12) * 0.5, v10, v12}];
  v24 = *&v0[v13];
  if (v24)
  {
    v25 = v24;
    [v0 bounds];
    [v25 setFrame:{v23, (CGRectGetMaxY(v33) - v21) * 0.5, v19, v21}];
  }
}

id sub_2F9858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoControlButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2F9934()
{
  result = qword_40E818;
  if (!qword_40E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40E818);
  }

  return result;
}

uint64_t sub_2F99A4(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_3FB0B0 != -1)
        {
          swift_once();
        }

        v1 = &qword_40E780;
      }

      else
      {
        if (qword_3FB0B8 != -1)
        {
          swift_once();
        }

        v1 = &qword_40E788;
      }
    }

    else
    {
      if (qword_3FB0A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_40E778;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_3FB0D0 != -1)
      {
        swift_once();
      }

      v1 = &qword_40E7A0;
    }

    else
    {
      if (qword_3FB0D8 != -1)
      {
        swift_once();
      }

      v1 = &qword_40E7A8;
    }
  }

  else if (a1 == 3)
  {
    if (qword_3FB0C0 != -1)
    {
      swift_once();
    }

    v1 = &qword_40E790;
  }

  else
  {
    if (qword_3FB0C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_40E798;
  }

  return *v1;
}

double sub_2F9B8C()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_isGlyphOnlyButton) == 1)
  {
    [sub_2F99A4(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_type)) size];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_type);
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18VideoControlButton_isFullScreenButton) == 1)
    {
      return dbl_334F68[v2];
    }

    else
    {
      return dbl_334FD8[v2];
    }
  }

  return result;
}

uint64_t sub_2F9C28()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_2F9C68()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:0.0];
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2F9D38(void *a1)
{
  v2 = *&v1[qword_40E928];
  if (v1[qword_40E928 + 8] == 1 && v2)
  {
    v8 = [v1 traitCollection];
    if (a1)
    {
      v4 = [a1 userInterfaceStyle];
    }

    else
    {
      v4 = 0;
    }

    v6 = [v8 userInterfaceStyle];
    if (!a1 || v4 != v6)
    {
      if ([v8 userInterfaceStyle] == &dword_0 + 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      [*&v1[qword_40E930] setOverrideUserInterfaceStyle:v7];
    }
  }

  else
  {
    v5 = *&v1[qword_40E930];

    [v5 setOverrideUserInterfaceStyle:v2];
  }
}

uint64_t sub_2F9F14(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a4(*(&stru_B8.size + (swift_isaMask & *a1)));
  v6 = a3;
  return v5;
}

id sub_2F9F84(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *(&stru_B8.size + (swift_isaMask & *v1)));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_2FA06C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2FA068(a3);
}

void sub_2FA0E0(void *a1)
{
  v1 = a1;
  sub_2FA0D8();
}

double sub_2FA128(void *a1)
{
  v1 = a1;
  sub_2FA16C();
  v3 = v2;

  return v3;
}

id sub_2FA16C()
{
  v1 = *&v0[qword_40E948];
  if (v1)
  {
    v2 = v1;
    [v2 intrinsicContentSize];
    [v0 layoutMargins];
    v3 = sub_1774A4(&off_3B4BC0);
    sub_184768(0, v3);
    sub_184768(1uLL, v3);
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for VisualEffectContainerBase();
    return objc_msgSendSuper2(&v5, "intrinsicContentSize");
  }
}

id sub_2FA2C0(void *a1)
{
  v1 = a1;
  v2 = sub_2FA370(&selRef_viewForFirstBaselineLayout);

  return v2;
}

id sub_2FA318(void *a1)
{
  v1 = a1;
  v2 = sub_2FA370(&selRef_viewForLastBaselineLayout);

  return v2;
}

id sub_2FA370(SEL *a1)
{
  v3 = *&v1[qword_40E948];
  if (v3)
  {
    if (v1[qword_40E940] == 1)
    {

      return v3;
    }

    v6.receiver = v1;
    v6.super_class = type metadata accessor for VisualEffectContainerBase();
    v5 = objc_msgSendSuper2(&v6, *a1);
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = type metadata accessor for VisualEffectContainerBase();
    v5 = objc_msgSendSuper2(&v7, *a1);
  }

  return v5;
}

id sub_2FA4BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2FA518(uint64_t a1)
{
  v2 = *(a1 + qword_40E948);
}

void sub_2FA65C()
{
  v1 = v0 + qword_40E928;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_40E940) = 1;
  *(v0 + qword_40E948) = 0;
  sub_30D648();
  __break(1u);
}

void sub_2FA7C4()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_30C098();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  if (v3)
  {
    [v3 size];
    v5 = v4;

    qword_40EA70 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_2FA8A8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer] setEnabled:(v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer] setEnabled:v1[v3]];
  if (v1[v3] == v2)
  {
    if (v1[v3])
    {

      sub_2FC470();
    }
  }

  else
  {
    [v1 setNeedsLayout];
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_2FD290;
    v14 = v5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_914CC;
    v12 = &block_descriptor_34;
    v6 = _Block_copy(&v9);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_2FD2B4;
    v14 = v7;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_2504C4;
    v12 = &block_descriptor_39_2;
    v8 = _Block_copy(&v9);

    [v4 animateWithDuration:4 delay:v6 options:v8 animations:0.2 completion:0.0];
    _Block_release(v8);
    _Block_release(v6);
  }
}

void sub_2FAAD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong layoutIfNeeded];
  }
}

void sub_2FAB30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded];

    if (v1 == 1)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        sub_2FC470();
      }
    }
  }
}

void sub_2FABBC()
{
  v1 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeObserver];
  *v1 = 0u;
  v1[1] = 0u;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_delegate];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isMuted] = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer;
  *&v0[v3] = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer;
  *&v0[v4] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isDragging] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_backdrop] = [objc_allocWithZone(type metadata accessor for VideoControlBackdrop()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar] = v5;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill] = v6;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob] = v7;
  v8 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph] = v8;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for VolumeControl();
  v9 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_backdrop;
  [v9 addSubview:*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_backdrop]];
  v11 = [objc_opt_self() sharedInstance];
  [v11 outputVolume];
  v13 = v12;

  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel] = v13;
  sub_2FBE58();
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph;
  v15 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph];
  v16 = objc_opt_self();
  v17 = v15;
  v49 = v16;
  v18 = [v16 whiteColor];
  v19 = [v18 colorWithAlphaComponent:0.75];

  sub_30C0D8();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v50 = v14;
  v51 = v10;
  if (v20)
  {
    v21 = v20;
    v22 = v17;
    [v21 _setTextColorFollowsTintColor:1];
    v23 = v22;
    [v21 setTintColor:v19];
    v24 = [v21 layer];

    v25 = objc_allocWithZone(CAFilter);
    v26 = sub_30C098();
    v27 = [v25 initWithType:v26];

    [v24 setCompositingFilter:v27];

LABEL_6:
    v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar;
    v33 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar];
    sub_2F8E60(v33);

    v34 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill;
    v35 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill];
    sub_2F8E6C(v35);

    v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob;
    v37 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob];
    v38 = [v49 _externalSystemWhiteColor];
    [v37 setBackgroundColor:v38];

    [*(*&v9[v51] + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) addSubview:*&v9[v50]];
    [*(*&v9[v51] + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) addSubview:*&v9[v32]];
    [*(*&v9[v51] + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) addSubview:*&v9[v34]];
    [*(*&v9[v51] + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) addSubview:*&v9[v36]];
    v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer;
    [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer] addTarget:v9 action:"didSlideWithGestureRecognizer:"];
    [*&v9[v39] setDelegate:v9];
    [v9 addGestureRecognizer:*&v9[v39]];
    v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer;
    [*&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer] addTarget:v9 action:"didTap"];
    [*&v9[v40] setDelegate:v9];
    [v9 addGestureRecognizer:*&v9[v40]];
    v41 = sub_2FCF08();
    [v41 setUserInteractionEnabled:0];

    v42 = sub_2FCF08();
    [v9 addSubview:v42];

    v43 = sub_30C098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_315430;
    *(v44 + 32) = sub_30C0D8();
    *(v44 + 40) = v45;
    isa = sub_30C358().super.isa;

    IMRegisterAVSystemControllerNotifications();

    v53 = &type metadata for () + 8;
    v47 = [objc_opt_self() defaultCenter];
    [v47 addObserver:v9 selector:"volumeChangedWithNotification:" name:v43 object:0];

    v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeObserver;
    swift_beginAccess();
    sub_2FD200(v52, &v9[v48]);
    swift_endAccess();

    return;
  }

  v28 = objc_opt_self();
  v29 = sub_30C098();
  v24 = [v28 layerWithTintColor:v19 filterType:v29];

  v30 = [objc_opt_self() configWithContentConfig:v24];
  if (v30)
  {
    v31 = v30;
    v27 = [v30 contentConfig];

    if (v27)
    {
      [v27 configureLayerView:v17];

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2FB360()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeObserver;
  swift_beginAccess();
  sub_EB00(v0 + v1, &v5, &unk_3FBB70);
  if (v6)
  {
    sub_1DA94(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1Tm(&v7, v8);
    [v2 removeObserver:sub_30D718()];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_EB68(&v5, &unk_3FBB70);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VolumeControl();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_2FB5B0()
{
  v51.receiver = v0;
  v51.super_class = type metadata accessor for VolumeControl();
  objc_msgSendSuper2(&v51, "layoutSubviews");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded;
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded])
  {
    v2 = 190.0;
  }

  else
  {
    v2 = 60.0;
  }

  [v0 bounds];
  MaxX = CGRectGetMaxX(v52);
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_backdrop];
  [v4 setFrame:{MaxX - v2, 0.0, v2, 47.0}];
  [v0 bounds];
  v5 = CGRectGetHeight(v53) <= 40.0;
  v6 = 8.0;
  if (!v5)
  {
    v6 = 16.0;
  }

  [v4 _setContinuousCornerRadius:v6];
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v4 bounds];
  v19 = UIEdgeInsetsInsetRect(v15, v16, v17, v18, 10.0, 12.0);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph;
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph] sizeThatFits:{v12, v14}];
  v48 = v28;
  v49 = v27;
  if (v0[v1] == 1)
  {
    v54.origin.x = v19;
    v54.origin.y = v21;
    v54.size.width = v23;
    v54.size.height = v25;
    MinX = CGRectGetMinX(v54);
  }

  else
  {
    v55.origin.x = v8;
    v55.origin.y = v10;
    v55.size.width = v12;
    v55.size.height = v14;
    MinX = (CGRectGetWidth(v55) - v49) * 0.5;
  }

  v46 = MinX;
  v30 = *&v0[v26];
  v56.origin.x = v8;
  v56.origin.y = v10;
  v56.size.width = v12;
  v56.size.height = v14;
  [v30 setFrame:{v46, (CGRectGetHeight(v56) - v48) * 0.5, v49}];

  v50 = v19;
  v57.origin.x = v19;
  v57.origin.y = v21;
  v45 = v25;
  v47 = v23;
  v57.size.width = v23;
  v57.size.height = v25;
  v31 = CGRectGetMinX(v57);
  if (qword_3FB100 != -1)
  {
    v44 = v31;
    swift_once();
    v31 = v44;
  }

  v32 = v31 + *&qword_40EA70 + 5.0;
  v58.origin.x = v8;
  v58.origin.y = v10;
  v58.size.width = v12;
  v58.size.height = v14;
  v33 = (CGRectGetHeight(v58) + -5.0) * 0.5;
  v34 = 0.0;
  if (v0[v1] == 1)
  {
    v59.origin.y = v21;
    v59.origin.x = v50;
    v59.size.height = v45;
    v59.size.width = v47;
    v34 = CGRectGetWidth(v59) - v32;
  }

  v35 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar];
  UIRoundToViewScale();
  [v35 _setCornerRadius:?];
  [v35 setFrame:{v32, v33, v34, 5.0}];
  v60.origin.x = v8;
  v60.origin.y = v10;
  v60.size.width = v12;
  v60.size.height = v14;
  v36 = (CGRectGetHeight(v60) + -10.0) * 0.5;
  v37 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob];
  [v37 _setCornerRadius:5.0];
  v38 = v32;
  if (v0[v1] == 1)
  {
    v38 = v32 + v34 * *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel];
  }

  [v37 setFrame:{v38 + -5.0, v36, 10.0, 10.0, *&v45}];
  v39 = 0.0;
  if (v0[v1] == 1)
  {
    [v37 center];
    v39 = v40 - v32;
  }

  v41 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill];
  UIRoundToViewScale();
  [v41 _setCornerRadius:?];
  [v41 setFrame:{v32, v33, v39, 5.0}];
  if (v0[v1])
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  [v35 setAlpha:v42];
  [v41 setAlpha:v42];
  return [v37 setAlpha:v42];
}

void sub_2FBA50(char a1, double a2)
{
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel] = a2;
  sub_2FBE58();
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph;
  v6 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v11 = *&v2[v5];
  [v2 bounds];
  [v11 sizeThatFits:{v12, v13}];
  v15 = v14;
  v17 = v16;

  [v6 setFrame:{v8, v10, v15, v17}];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (a1)
  {

    v19 = sub_2FCF08();
    v20 = [v19 volumeSlider];

    if (!v20)
    {
      __break(1u);
      return;
    }

    *&v21 = a2;
    [v20 setValue:v21];

    sub_2FBD44();
  }

  else if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isDragging] & 1) == 0)
  {
    v22 = objc_opt_self();
    v31 = sub_2FD0EC;
    v32 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    v30 = &block_descriptor_61_0;
    v23 = _Block_copy(aBlock);

    [v22 animateWithDuration:4 delay:v23 options:0 animations:0.1 completion:0.0];
    _Block_release(v23);
  }

  sub_EB00(&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_delegate], aBlock, &qword_40EB20);
  if (v30)
  {
    sub_12670(aBlock, v26);
    sub_EB68(aBlock, &qword_40EB20);
    v24 = v27;
    v25 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    (*(v25 + 8))(v24, v25);

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {

    sub_EB68(aBlock, &qword_40EB20);
  }
}

void sub_2FBD44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar) frame];
    v2 = CGRectGetWidth(v9) * *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel];
    v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill;
    v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill];
    [v4 frame];
    [v4 setFrame:?];

    v5 = *&v1[v3];
    v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob];
    [v5 frame];
    v8 = v2 + v7;
    [v6 center];
    [v6 setCenter:v8];
  }
}

id sub_2FBE58()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel) * 16.0;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  if ((v2 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (qword_3FB0E8 != -1)
    {
      swift_once();
    }

    v3 = &qword_40EA58;
  }

  else if ((v2 - 11) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (qword_3FB0F0 != -1)
    {
      swift_once();
    }

    v3 = &qword_40EA60;
  }

  else
  {
    if ((v2 - 17) < 0xFFFFFFFFFFFFFFFALL)
    {
LABEL_8:
      if (qword_3FB0E0 == -1)
      {
LABEL_9:
        v3 = &qword_40EA50;
        goto LABEL_19;
      }

LABEL_25:
      swift_once();
      goto LABEL_9;
    }

    if (qword_3FB0F8 != -1)
    {
      swift_once();
    }

    v3 = &qword_40EA68;
  }

LABEL_19:
  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_currentVolumeGlyph);
  v5 = *v3;

  return [v4 setImage:v5];
}

void sub_2FC004(void *a1)
{
  v3 = [a1 state];
  if (v3 == &dword_0 + 3)
  {
    sub_2FC470();
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isDragging) = 0;
  }

  else if (v3 == &dword_0 + 2)
  {
    if ([a1 numberOfTouches] >= 1)
    {
      *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isDragging) = 1;
      [a1 locationOfTouch:0 inView:v1];
      v7 = v6;
      v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBar);
      [v8 frame];
      MinX = CGRectGetMinX(v15);
      if (MinX > v7)
      {
        v7 = MinX;
      }

      [v8 frame];
      MaxX = CGRectGetMaxX(v16);
      if (MaxX < v7)
      {
        v7 = MaxX;
      }

      [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeBarFill) frame];
      v12 = v7 - v11;
      [v8 frame];
      v13 = v12 / CGRectGetWidth(v17);

      sub_2FBA50(1, v13);
    }
  }

  else if (v3 == &dword_0 + 1)
  {
    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer;
    v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer);
    if (v5)
    {
      [v5 invalidate];
      v5 = *(v1 + v4);
    }

    *(v1 + v4) = 0;
  }
}

BOOL sub_2FC1F0(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_124C4(0, &qword_40A690);
    v6 = a1;
    if (sub_30D098())
    {
      if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) == 1)
      {
        v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob);
        [v5 translationInView:*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeKnob)];
        v9 = v8;
        v11 = v10;
        [v7 bounds];
        v16 = UIEdgeInsetsInsetRect(v12, v13, v14, v15, -5.0, -5.0);
LABEL_12:
        v27.x = v9;
        v27.y = v11;
        v25 = CGRectContainsPoint(*&v16, v27);
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    sub_124C4(0, &qword_40A690);
    v22 = a1;
    if (sub_30D098())
    {
      [v21 locationInView:v1];
      if ((*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) & 1) == 0)
      {
        v9 = v23;
        v11 = v24;
        [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_backdrop) frame];
        goto LABEL_12;
      }
    }

LABEL_9:
    v25 = 0;
LABEL_13:

    return v25;
  }

  return 0;
}

void sub_2FC470()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_2FD0DC;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1D35C0;
  v10[3] = &block_descriptor_43_0;
  v5 = _Block_copy(v10);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.0];
  _Block_release(v5);

  v8 = *(v0 + v1);
  if (v7)
  {
    *(v0 + v1) = v7;
    v9 = v7;

    v8 = [objc_opt_self() mainRunLoop];
    [v8 addTimer:v9 forMode:NSRunLoopCommonModes];
  }

  else
  {
    if (v8)
    {
      [*(v0 + v1) invalidate];
      v8 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }
}

uint64_t sub_2FC638()
{
  v0 = sub_306E68();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_306E88();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_124C4(0, &qword_3FBF20);
  v8 = sub_30C8F8();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_2FD0E4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_47_1;
  v11 = _Block_copy(aBlock);

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_943D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  sub_30D488();
  sub_30C908();
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2FC8F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded;
    v3 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded);
    *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) = 0;
    [*(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer) setEnabled:1];
    v4 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer] setEnabled:v1[v2]];
    v5 = v1[v2];
    if (v3 == v5)
    {
      if (v5)
      {
        sub_2FC470(v4);
      }
    }

    else
    {
      [v1 setNeedsLayout];
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = sub_2FD290;
      v16 = v7;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_914CC;
      v14 = &block_descriptor_52;
      v8 = _Block_copy(&aBlock);

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = sub_2FD2B4;
      v16 = v9;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_2504C4;
      v14 = &block_descriptor_57_0;
      v10 = _Block_copy(&aBlock);

      [v6 animateWithDuration:4 delay:v8 options:v10 animations:0.2 completion:0.0];
      _Block_release(v10);
      _Block_release(v8);
    }
  }
}

void sub_2FCB20(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_30BF98();

  v23 = 0xD000000000000033;
  v24 = 0x8000000000347250;
  sub_30D508();
  if (!*(v5 + 16) || (v6 = sub_191D84(&v17), (v7 & 1) == 0))
  {

    sub_196EC8(&v17);
LABEL_9:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_10;
  }

  sub_1DA1C(*(v5 + 56) + 32 * v6, &v25);
  sub_196EC8(&v17);

  if (!*(&v26 + 1))
  {
LABEL_10:
    sub_EB68(&v25, &unk_3FBB70);
    return;
  }

  if (swift_dynamicCast())
  {
    v8 = *&v17;
    v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded;
    v10 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded];
    v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded] = 1;
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer] setEnabled:0];
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer] setEnabled:v2[v9]];
    v11 = v2[v9];
    if (v10 == v11)
    {
      if (v11)
      {
        sub_2FC470();
      }
    }

    else
    {
      [v2 setNeedsLayout];
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = sub_2FD0B4;
      v22 = v13;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_914CC;
      v20 = &block_descriptor_80;
      v14 = _Block_copy(&v17);

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = sub_2FD0D4;
      v22 = v15;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_2504C4;
      v20 = &block_descriptor_29_3;
      v16 = _Block_copy(&v17);

      [v12 animateWithDuration:4 delay:v14 options:v16 animations:0.2 completion:0.0];
      _Block_release(v16);
      _Block_release(v14);
    }

    sub_2FBA50(0, v8);
  }
}

id sub_2FCF08()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_40EA78);
  swift_endAccess();
  if (v1)
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_EB68(v8, &unk_3FBB70);
    goto LABEL_8;
  }

  sub_124C4(0, &qword_40EB28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = [objc_allocWithZone(MPVolumeView) initWithFrame:{-1000.0, -1000.0, 0.0, 0.0}];
    swift_beginAccess();
    v2 = v3;
    objc_setAssociatedObject(v0, &unk_40EA78, v2, &stru_2E8.segname[9]);
    swift_endAccess();

    return v2;
  }

  return v5;
}

uint64_t sub_2FD07C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2FD0F4()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeObserver);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_delegate;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeLevel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isMuted) = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_panGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_tapGestureRecognizer;
  *(v0 + v4) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isDragging) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13VolumeControl_volumeTimer) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2FD200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FD2B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();
}

uint64_t sub_2FD330()
{
  v1 = OBJC_IVAR____TtCC23ShelfKitCollectionViews21WaveformIndicatorViewP33_867BA4BABBECB87EA7CB6FC491DEFC239ViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40EC50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2FD3D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40EC38);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v25 = v22 - v4;
  v5 = sub_302CC8();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_302C88();
  __chkstk_darwin(v8 - 8);
  v9 = sub_302C58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40EC40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  sub_302C48();
  v17 = [objc_opt_self() tintColor];
  sub_306818();
  swift_retain_n();
  sub_302CB8();
  v18 = sub_2FE6D0(&qword_40EC48, &type metadata accessor for WaveformView);
  sub_306408();
  (*(v23 + 8))(v7, v24);
  (*(v10 + 8))(v12, v9);
  v29 = v9;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_306418();
  (*(v14 + 8))(v16, v13);
  v20 = v26;
  sub_302C68();
  return (*(v27 + 8))(v19, v20);
}

uint64_t sub_2FD810()
{
  v1 = v0;
  v2 = sub_302C88();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = [v1 superview];
  if (v9 && (v9, (v10 = [v1 window]) != 0))
  {

    v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_state;
    swift_beginAccess();
    v12 = *(v3 + 16);
    v12(v8, &v1[v11], v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v12(v6, v8, v2);
  }

  else
  {
    (*(v3 + 104))(v8, enum case for WaveformState.hidden(_:), v2);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v6, v8, v2);
  }

  sub_304E28();
  return (*(v3 + 8))(v8, v2);
}

char *sub_2FDA70(double a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_302C88();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - v9;
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_state;
  (*(v5 + 104))(&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_state], enum case for WaveformState.hidden(_:), v4);
  v49 = v3;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, &v3[v13], v4);
  type metadata accessor for WaveformIndicatorView.ViewModel(0);
  v15 = swift_allocObject();
  v14(v10, v12, v4);
  swift_beginAccess();
  v14(v50, v10, v4);
  sub_304DF8();
  v16 = *(v5 + 8);
  v16(v10, v4);
  swift_endAccess();
  v16(v12, v4);
  v17 = v49;
  *&v49[OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_viewModel] = v15;
  sub_2FE6D0(&qword_40EC58, type metadata accessor for WaveformIndicatorView.ViewModel);

  v53 = sub_3053C8();
  v54 = v18;
  v55 = a1;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40EC60));
  *&v17[OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_contentView] = sub_305448();
  v52.receiver = v17;
  v52.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v52, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_contentView;
  v22 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews21WaveformIndicatorView_contentView];
  v23 = v20;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = v23;
  v25 = *&v20[v21];
  v26 = v24;
  [v26 addSubview:v25];
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_31D660;
  v29 = [*&v20[v21] leadingAnchor];
  v30 = [v26 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 32) = v31;
  v32 = [*&v20[v21] trailingAnchor];
  v33 = [v26 trailingAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  v35 = [*&v20[v21] topAnchor];
  v36 = [v26 topAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v28 + 48) = v37;
  v38 = [*&v20[v21] bottomAnchor];
  v39 = [v26 bottomAnchor];

  v40 = [v38 constraintEqualToAnchor:v39];
  *(v28 + 56) = v40;
  v41 = [v26 widthAnchor];

  v42 = [v41 constraintEqualToConstant:a1];
  *(v28 + 64) = v42;
  v43 = [v26 heightAnchor];

  v44 = [v26 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v28 + 72) = v45;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v27 activateConstraints:isa];

  return v26;
}

void sub_2FE134(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_2FD810();
}

uint64_t sub_2FE26C()
{
  result = sub_302C88();
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

void sub_2FE340()
{
  sub_2FE3D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2FE3D0()
{
  if (!qword_40EBB8)
  {
    sub_302C88();
    v0 = sub_304E38();
    if (!v1)
    {
      atomic_store(v0, &qword_40EBB8);
    }
  }
}

uint64_t sub_2FE428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2FE470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FE4DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();
}

uint64_t sub_2FE55C(uint64_t a1)
{
  v2 = sub_302C88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_304E28();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_2FE6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2FE718()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40EC40);
  sub_302C58();
  sub_2FE6D0(&qword_40EC48, &type metadata accessor for WaveformView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_2FE880(char a1, SEL *a2, const char *a3, SEL *a4)
{
  v8 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_3041E8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v8;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, *a2, a1 & 1, v13);
  sub_304148();
  v16 = sub_3041D8();
  v17 = sub_30C7B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, a3, v18, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v19 = [objc_opt_self() sharedCoordinator];
  [v19 *a4];
}

NSString sub_2FEC7C()
{
  result = sub_30C098();
  qword_40EC68 = result;
  return result;
}

id sub_2FECB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_301CB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v34 = a1;
  sub_229AA8(a1, v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17WebViewController_url);
  v16 = type metadata accessor for WebViewController();
  v36.receiver = v1;
  v36.super_class = v16;
  v17 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  result = [v17 view];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor:v20];

    sub_229AA8(v34, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_229B18(v8);
      (*(v10 + 56))(v5, 1, 1, v9);
      sub_2FF750(1, v5);
      sub_229B18(v34);
      sub_229B18(v5);
    }

    else
    {
      v33 = *(v10 + 32);
      v33(v15, v8, v9);
      v21 = [objc_opt_self() sharedInstance];
      v22 = [objc_allocWithZone(AMSURLParser) initWithBag:v21];
      v32 = v22;

      sub_301C08(v23);
      v25 = v24;
      v26 = [v22 typeForURL:v24];

      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v10 + 16))(v12, v15, v9);
      v28 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v33((v29 + v28), v12, v9);
      aBlock[4] = sub_300398;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2FF6C4;
      aBlock[3] = &block_descriptor_81;
      v30 = _Block_copy(aBlock);

      [v26 addFinishBlock:v30];
      _Block_release(v30);

      sub_229B18(v34);
      (*(v10 + 8))(v15, v9);
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2FF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v32 = a2;
  v6 = sub_306E68();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_306E88();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_301CB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(a1);
  if (v15)
  {
    v17 = [v15 integerValue];
  }

  else
  {
    v17 = &dword_0 + 1;
  }

  sub_124C4(0, &qword_3FBF20);
  v18 = sub_30C8F8();
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v13 + 32))(v20 + v19, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_3004F8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_12_0;
  v21 = _Block_copy(aBlock);

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_943D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  v22 = v31;
  sub_30D488();
  sub_30C908();
  _Block_release(v21);

  (*(v30 + 8))(v8, v22);
  result = (*(v28 + 8))(v11, v29);
  if (v32)
  {
    swift_errorRetain();
    sub_30C798();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_315430;
    v25 = sub_301B38();
    *(v24 + 56) = sub_124C4(0, &qword_40ECD8);
    *(v24 + 64) = sub_30055C();
    *(v24 + 32) = v25;
    sub_124C4(0, &qword_3FC1C0);
    v26 = sub_30D338();
    sub_304108();
  }

  return result;
}

uint64_t sub_2FF56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_301CB8();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a3, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_2FF750(a2, v7);

    return sub_229B18(v7);
  }

  return result;
}

void sub_2FF6C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2FF750(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_301CB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  if (!a1)
  {
    sub_229AA8(a2, v15);
    if ((*(v7 + 48))(v15, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v15, v6);
      v32 = [objc_opt_self() ams_sharedAccountStore];
      v33 = [v32 ams_activeiTunesAccount];

      v34 = [objc_opt_self() sharedInstance];
      v35 = objc_opt_self();
      v36 = v33;
      v37 = [v35 currentProcess];
      v38 = [objc_allocWithZone(AMSUIWebViewController) initWithBag:v34 account:v36 clientInfo:v37];

      sub_301C08(v39);
      v41 = v40;
      v42 = [v38 loadURL:v40];

      (*(v7 + 8))(v9, v6);
      v25 = v38;
      goto LABEL_16;
    }

    sub_229B18(v15);
    v24 = [objc_allocWithZone(UIViewController) init];
LABEL_11:
    v25 = v24;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    sub_229AA8(a2, v18);
    if ((*(v7 + 48))(v18, 1, v6) != 1)
    {
      (*(v7 + 32))(v12, v18, v6);
      v26 = [objc_opt_self() sharedInstance];
      v27 = objc_allocWithZone(AMSUIDynamicViewController);
      sub_301C08(v28);
      v30 = v29;
      v31 = [v27 initWithBag:v26 URL:v29];

      (*(v7 + 8))(v12, v6);
      v25 = v31;
      goto LABEL_16;
    }

    sub_229B18(v18);
    v24 = [objc_allocWithZone(UIViewController) init];
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    v24 = [objc_allocWithZone(UIViewController) init];
    goto LABEL_11;
  }

  sub_229AA8(a2, &v82 - v20);
  if ((*(v7 + 48))(v21, 1, v6) == 1)
  {
    v23 = 0;
  }

  else
  {
    sub_301C08(v22);
    v23 = v43;
    (*(v7 + 8))(v21, v6);
  }

  v44 = [objc_allocWithZone(SKAccountPageViewController) initWithAccountURL:v23];

  [v44 prepareWithCompletionBlock:0];
  v25 = v44;
LABEL_16:
  v45 = v25;
  [v3 addChildViewController:v25];
  v46 = [v3 view];
  if (!v46)
  {
    __break(1u);
    goto LABEL_29;
  }

  v47 = v46;
  v48 = [v45 view];
  if (!v48)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v49 = v48;
  [v47 addSubview:v48];

  v50 = [v45 view];
  if (!v50)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v51 = v50;
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_31D480;
  v53 = [v45 view];
  if (!v53)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v54 = v53;
  v55 = [v53 topAnchor];

  v56 = [v3 view];
  if (!v56)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  *(v52 + 32) = v59;
  v60 = [v45 view];
  if (!v60)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v3 view];
  if (!v63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v64 = v63;
  v65 = [v63 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor:v65];
  *(v52 + 40) = v66;
  v67 = [v45 view];
  if (!v67)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v68 = v67;
  v69 = [v67 leftAnchor];

  v70 = [v3 view];
  if (!v70)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v71 = v70;
  v72 = [v70 leftAnchor];

  v73 = [v69 constraintEqualToAnchor:v72];
  *(v52 + 48) = v73;
  v74 = [v45 view];

  if (!v74)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v75 = [v74 rightAnchor];

  v76 = [v3 view];
  if (v76)
  {
    v77 = v76;
    v78 = objc_opt_self();
    v79 = [v77 rightAnchor];

    v80 = [v75 constraintEqualToAnchor:v79];
    *(v52 + 56) = v80;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v78 activateConstraints:isa];

    return;
  }

LABEL_38:
  __break(1u);
}

id sub_300118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WebViewController()
{
  result = qword_40ECC0;
  if (!qword_40ECC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3001B4()
{
  sub_300244();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_300244()
{
  if (!qword_40ECD0)
  {
    sub_301CB8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40ECD0);
    }
  }
}

uint64_t sub_30029C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3002D4()
{
  v1 = sub_301CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_300398(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_301CB8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2FF104(a1, a2, v6, v7);
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_300434()
{
  v1 = sub_301CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3004F8()
{
  v1 = *(sub_301CB8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2FF56C(v2, v3, v4);
}

unint64_t sub_30055C()
{
  result = qword_40ECE0;
  if (!qword_40ECE0)
  {
    sub_124C4(255, &qword_40ECD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40ECE0);
  }

  return result;
}

void sub_3005CC(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v55 = a1;
  v66 = sub_30D6F8();
  v11 = *(v66 - 8);
  __chkstk_darwin(v66);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v57 = a4;
  v70.origin.x = a3;
  v70.origin.y = a4;
  v70.size.width = a5;
  v70.size.height = a6;
  CGRectGetMinY(v70);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 32);
    v62 = enum case for FloatingPointRoundingRule.awayFromZero(_:);
    v64 = (v11 + 8);
    v65 = (v11 + 104);
    v54 = (v11 + 16);
    v53 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    v52 = a5;
    while (1)
    {
      *&v69[108] = *(v15 + 108);
      v16 = v15[5];
      *&v69[64] = v15[4];
      *&v69[80] = v16;
      *&v69[96] = v15[6];
      v17 = v15[1];
      *v69 = *v15;
      *&v69[16] = v17;
      v18 = v15[3];
      *&v69[32] = v15[2];
      *&v69[48] = v18;
      v19 = v69[123];
      v20 = *v69;
      sub_238F10(v69, v67);
      v21 = [v20 numberOfLines];
      v22 = [objc_allocWithZone(NSStringDrawingContext) init];
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      v23 = v22;
      [v22 setMaximumNumberOfLines:v21];
      [v23 setWrapsForTruncationMode:v21 != 1];
      sub_2697EC(v20, v23, a5, a6);
      v25 = v24;
      v27 = v26;
      v28 = v66;
      v29 = *v65;
      (*v65)(v13, v62, v66);
      sub_302E78();
      v31 = v30;
      sub_302E78();
      v33 = v32;

      v34 = *v64;
      (*v64)(v13, v28);
      if (v19 && ![v20 numberOfLines] || v69[122] == 1 && ((v71.origin.x = v25, v71.origin.y = v27, v71.size.width = v31, v71.size.height = v33, CGRectGetWidth(v71) < COERCE_DOUBLE(1)) || (v72.origin.x = v25, v72.origin.y = v27, v72.size.width = v31, v72.size.height = v33, CGRectGetHeight(v72) < COERCE_DOUBLE(1)) || (v73.origin.x = v25, v73.origin.y = v27, v73.size.width = v31, v73.size.height = v33, a6 < CGRectGetHeight(v73))))
      {
        [v20 setHidden:1];
        sub_238F6C(v69);
      }

      else
      {
        v63 = v33;
        v60 = v27;
        v61 = v31;
        v35 = v25;
        [v20 firstBaselineFromTop];
        sub_9004C(&v69[8], v67);
        if (qword_3FAC38 != -1)
        {
          swift_once();
        }

        v36 = v66;
        v37 = __swift_project_value_buffer(v66, qword_4295D8);
        (*v54)(v13, v37, v36);
        v67[4] = *&v69[72];
        v67[5] = *&v69[88];
        v67[6] = *&v69[104];
        v68 = *&v69[120];
        v67[0] = *&v69[8];
        v67[1] = *&v69[24];
        v67[2] = *&v69[40];
        v67[3] = *&v69[56];
        v38 = [v55 traitCollection];
        sub_231F6C(v38, v13, 1);

        v34(v13, v36);
        sub_900A8(&v69[8]);
        v40 = v56;
        v39 = v57;
        v74.origin.x = v56;
        v74.origin.y = v57;
        v74.size.width = a5;
        v74.size.height = a6;
        MinX = CGRectGetMinX(v74);
        v29(v13, v53, v36);
        sub_302E78();
        v42 = v41;
        v34(v13, v36);
        v75.origin.x = v40;
        v75.origin.y = v39;
        v75.size.width = a5;
        v75.size.height = a6;
        Width = CGRectGetWidth(v75);
        v76.origin.x = v25;
        v45 = v60;
        v44 = v61;
        v76.origin.y = v60;
        v76.size.width = v61;
        v76.size.height = v63;
        v46 = a6;
        Height = CGRectGetHeight(v76);
        v48 = MinX;
        [v20 setFrame:{MinX, v42, Width, Height}];
        [v20 setHidden:0];
        [v20 lastBaselineFromBottom];
        v58 = v49;
        v77.origin.x = v48;
        v77.origin.y = v42;
        v77.size.width = Width;
        a5 = v52;
        v77.size.height = Height;
        CGRectGetMaxY(v77);
        v78.origin.x = v35;
        v78.origin.y = v45;
        v78.size.width = v44;
        v78.size.height = v63;
        v50 = CGRectGetHeight(v78);
        sub_238F6C(v69);
        a6 = v46 - v50;
      }

      v15 += 8;
      if (!--v14)
      {
        return;
      }
    }

    __break(1u);
  }
}

double sub_300B6C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = v5[13];
  v81 = v5[12];
  v82 = v11;
  *v83 = v5[14];
  *&v83[13] = *(v5 + 237);
  v12 = v5[9];
  v77 = v5[8];
  v78 = v12;
  v13 = v5[11];
  v79 = v5[10];
  v80 = v13;
  v14 = v5[5];
  v73 = v5[4];
  v74 = v14;
  v15 = v5[7];
  v75 = v5[6];
  v76 = v15;
  v16 = v5[1];
  *v69 = *v5;
  v70 = v16;
  v17 = v5[3];
  v71 = v5[2];
  v72 = v17;
  v18 = v77;
  sub_300F98(v69, &v54);
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    v21 = sub_30C0D8();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      goto LABEL_7;
    }
  }

  v25 = [v18 text];
  if (v25)
  {

    v26 = 0;
  }

  else
  {
LABEL_7:
    v26 = 1;
  }

  v66 = v81;
  v67 = v82;
  v68[0] = *v83;
  *(v68 + 13) = *&v83[13];
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v65 = v80;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  v61 = v76;
  v54 = *v69;
  v55 = v70;
  v56 = v71;
  v57 = v72;
  v27 = sub_301008(a1);
  v66 = v81;
  v67 = v82;
  v68[0] = *v83;
  *(v68 + 13) = *&v83[13];
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v65 = v80;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  v61 = v76;
  v54 = *v69;
  v55 = v70;
  v56 = v71;
  v57 = v72;
  v28 = sub_301254(a1, v26, a2, a3, a4, a5, v27);
  v29 = v69[0];
  [v69[0] frame];
  MaxY = CGRectGetMaxY(v84);
  [v29 lastBaselineFromBottom];
  v32 = v31;
  sub_238F6C(v69);
  v33 = MaxY - v32;
  v34 = v18;
  [v34 sizeThatFits:{a4, a5}];
  v37 = v36;
  if (((v28 & 1) != 0 || v83[26]) && (v35 < COERCE_DOUBLE(1) || v36 < COERCE_DOUBLE(1)))
  {

    sub_238F6C(&v77);
  }

  else
  {
    v38 = v83[28];
    [v34 lastBaselineFromBottom];
    v40 = v39 - v27;
    sub_9004C(&v77 + 8, &v54);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v41 = sub_30D6F8();
    v42 = __swift_project_value_buffer(v41, qword_4295D8);
    LOWORD(v61) = *&v83[24];
    v43 = [a1 traitCollection];
    sub_231F6C(v43, v42, v38);
    v45 = v44;

    sub_900A8(&v77 + 8);
    v85.origin.x = a2;
    v85.origin.y = a3;
    v85.size.width = a4;
    v85.size.height = a5;
    MinX = CGRectGetMinX(v85);
    v86.origin.y = a3;
    v47 = MinX;
    v48 = v33 + v45 - (v37 - v40);
    v86.origin.x = a2;
    v86.size.width = a4;
    v86.size.height = a5;
    Width = CGRectGetWidth(v86);
    [v34 setFrame:{v47, v48, Width, v37}];

    v87.origin.x = v47;
    v87.origin.y = v48;
    v87.size.width = Width;
    v87.size.height = v37;
    v50 = CGRectGetMaxY(v87);
    [v34 lastBaselineFromBottom];
    v52 = v51;

    sub_238F6C(&v77);
    return v50 - v52;
  }

  return v33;
}

uint64_t sub_300F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40ECE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_301008(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 216);
  v28 = *(v1 + 200);
  v29 = v4;
  v30 = *(v1 + 232);
  v31 = *(v1 + 248);
  v5 = *(v1 + 152);
  v24 = *(v1 + 136);
  v25 = v5;
  v6 = *(v1 + 184);
  v26 = *(v1 + 168);
  v27 = v6;
  v7 = *(v1 + 252);
  sub_9004C(&v24, &v21);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v8 = sub_30D6F8();
  v9 = __swift_project_value_buffer(v8, qword_4295D8);
  LOWORD(v23) = v31;
  v10 = [a1 traitCollection];
  sub_231F6C(v10, v9, v7);
  v12 = v11;

  sub_900A8(&v24);
  v13 = [v3 font];
  if (!v13)
  {
    if (qword_3FACD0 != -1)
    {
      swift_once();
    }

    *v22 = WORD4(xmmword_429B10);
    *&v22[2] = *(&xmmword_429B10 + 10);
    v14 = [a1 traitCollection];
    v15 = sub_2DAA3C(&v21, v14);
    v13 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  }

  [v13 lineHeight];
  v17 = v16;
  [v13 leading];
  v19 = v18;

  return v12 - v17 - v19;
}

uint64_t sub_301254(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v15 = *(v7 + 208);
  *&v72[64] = *(v7 + 192);
  *&v72[80] = v15;
  *&v72[96] = *(v7 + 224);
  *&v72[108] = *(v7 + 236);
  v16 = *(v7 + 144);
  *v72 = *(v7 + 128);
  *&v72[16] = v16;
  v17 = *(v7 + 176);
  *&v72[32] = *(v7 + 160);
  *&v72[48] = v17;
  v18 = *(v7 + 80);
  *&v71[64] = *(v7 + 64);
  *&v71[80] = v18;
  v19 = *(v7 + 112);
  *&v71[96] = *(v7 + 96);
  *&v71[112] = v19;
  v20 = *(v7 + 16);
  *v71 = *v7;
  *&v71[16] = v20;
  v21 = *(v7 + 48);
  *&v71[32] = *(v7 + 32);
  *&v71[48] = v21;
  v22 = *(v7 + 252);
  sub_300F98(v71, &v63);
  sub_238F6C(v72);
  v23 = *v71;
  v24 = v23;
  v25 = &selRef_hitTestInsets;
  if ((a2 & 1) == 0)
  {
    [v23 setNumberOfLines:1];
    [v24 sizeThatFits:{a5, a6}];
    v45 = v44;
    v28 = v46;
    sub_9004C(&v71[8], &v63);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v47 = sub_30D6F8();
    v48 = __swift_project_value_buffer(v47, qword_4295D8);
    v68 = *&v71[88];
    v69 = *&v71[104];
    v63 = *&v71[8];
    v64 = *&v71[24];
    v65 = *&v71[40];
    v70 = *&v71[120];
    v66 = *&v71[56];
    v67 = *&v71[72];
    v49 = [a1 traitCollection];
    sub_231F6C(v49, v48, v22);
    v42 = v50;

    sub_900A8(&v71[8]);
    a7 = 0.0;
    if (v71[122] == 1 && (v45 < COERCE_DOUBLE(1) || v28 < COERCE_DOUBLE(1)))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  [v23 setNumberOfLines:2];
  [v24 sizeThatFits:{a5, a6}];
  v61 = v26;
  v28 = v27;
  [v24 lastBaselineFromBottom];
  v30 = v28 - v29;
  sub_9004C(&v71[8], &v63);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v31 = sub_30D6F8();
  v32 = __swift_project_value_buffer(v31, qword_4295D8);
  v68 = *&v71[88];
  v69 = *&v71[104];
  v63 = *&v71[8];
  v64 = *&v71[24];
  v65 = *&v71[40];
  v70 = *&v71[120];
  v66 = *&v71[56];
  v67 = *&v71[72];
  v33 = [a1 traitCollection];
  sub_231F6C(v33, v32, v22);
  v35 = v34;

  sub_900A8(&v71[8]);
  if (v35 >= v30)
  {
    [v24 setNumberOfLines:1];
    [v24 sizeThatFits:{a5, a6}];
    v52 = v51;
    v28 = v53;
    v68 = *&v71[88];
    v69 = *&v71[104];
    v63 = *&v71[8];
    v64 = *&v71[24];
    v65 = *&v71[40];
    v70 = *&v71[120];
    v66 = *&v71[56];
    v67 = *&v71[72];
    sub_9004C(&v71[8], v62);
    v54 = [a1 traitCollection];
    sub_231F6C(v54, v32, v22);
    v42 = v55;

    sub_900A8(&v71[8]);
    a7 = 0.0;
    if (v71[122] != 1)
    {
      v43 = 0;
      goto LABEL_22;
    }

    if (v52 < COERCE_DOUBLE(1) || (v25 = &selRef_hitTestInsets, v28 < COERCE_DOUBLE(1)))
    {
LABEL_18:

      sub_238F6C(v71);
      return 0;
    }

LABEL_19:
    v43 = 0;
LABEL_23:
    [v24 v25[365]];
    v57 = v56 - a7;
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    MinX = CGRectGetMinX(v73);
    v74.origin.x = a3;
    v74.origin.y = a4;
    v74.size.width = a5;
    v74.size.height = a6;
    v59 = v42 + CGRectGetMinY(v74) - (v28 - v57);
    v75.origin.x = a3;
    v75.origin.y = a4;
    v75.size.width = a5;
    v75.size.height = a6;
    [v24 setFrame:{MinX, v59, CGRectGetWidth(v75), v28}];
    sub_238F6C(v71);

    return v43;
  }

  v68 = *&v71[88];
  v69 = *&v71[104];
  v63 = *&v71[8];
  v64 = *&v71[24];
  v65 = *&v71[40];
  v70 = *&v71[120];
  v66 = *&v71[56];
  v67 = *&v71[72];
  sub_9004C(&v71[8], v62);
  v36 = [a1 traitCollection];
  sub_231F6C(v36, v32, v22);
  v38 = v37;

  sub_900A8(&v71[8]);
  v68 = *&v72[88];
  v69 = *&v72[104];
  v70 = *&v72[120];
  v63 = *&v72[8];
  v64 = *&v72[24];
  v65 = *&v72[40];
  v66 = *&v72[56];
  v67 = *&v72[72];
  sub_9004C(&v72[8], v62);
  v39 = [a1 traitCollection];
  sub_231F6C(v39, v32, v22);
  v41 = v40;

  sub_900A8(&v72[8]);
  v42 = v38 + v41;
  if ((v71[122] & 1) == 0)
  {
    v43 = 1;
LABEL_22:
    v25 = &selRef_hitTestInsets;
    goto LABEL_23;
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v25 = &selRef_hitTestInsets;
    if (v28 >= COERCE_DOUBLE(1))
    {
      v43 = 1;
      goto LABEL_23;
    }
  }

  sub_238F6C(v71);
  return 1;
}

__n128 __swift_memcpy253_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 237) = *(a2 + 237);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_301874(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 253))
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

uint64_t sub_3018BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 252) = 0;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 253) = 1;
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

    *(result + 253) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}