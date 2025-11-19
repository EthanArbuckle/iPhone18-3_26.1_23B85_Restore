uint64_t sub_E1734@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305AA8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D48);
  return sub_DEB18(v1, a1 + *(v3 + 44));
}

unint64_t sub_E1788()
{
  result = qword_401E18;
  if (!qword_401E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E18);
  }

  return result;
}

unint64_t sub_E17DC()
{
  result = qword_401E20;
  if (!qword_401E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401D50);
    sub_E1898();
    sub_E2088(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E20);
  }

  return result;
}

unint64_t sub_E1898()
{
  result = qword_401E28;
  if (!qword_401E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E30);
    sub_E1950();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E28);
  }

  return result;
}

unint64_t sub_E1950()
{
  result = qword_401E38;
  if (!qword_401E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E48);
    sub_E1A44();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_401E68, &qword_401E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E38);
  }

  return result;
}

unint64_t sub_E1A44()
{
  result = qword_401E50;
  if (!qword_401E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E48);
    sub_E1F14(&qword_401E58, &qword_401E60);
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E50);
  }

  return result;
}

uint64_t sub_E1BCC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_E1BE4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_E1BE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_E1BF4()
{
  result = qword_401E88;
  if (!qword_401E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E80);
    sub_E1CAC();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E88);
  }

  return result;
}

unint64_t sub_E1CAC()
{
  result = qword_401E90;
  if (!qword_401E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401E98);
    sub_E1D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401E90);
  }

  return result;
}

unint64_t sub_E1D38()
{
  result = qword_401EA0;
  if (!qword_401EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EA0);
  }

  return result;
}

unint64_t sub_E1D8C()
{
  result = qword_401EA8;
  if (!qword_401EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EA8);
  }

  return result;
}

unint64_t sub_E1DE0()
{
  result = qword_401EB8;
  if (!qword_401EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401DB8);
    sub_EC8C(&qword_401EC0, &qword_401DC0);
    sub_EC8C(&qword_401EC8, &qword_401D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EB8);
  }

  return result;
}

unint64_t sub_E1EC0()
{
  result = qword_401ED8;
  if (!qword_401ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401ED8);
  }

  return result;
}

uint64_t sub_E1F14(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_E1F84()
{
  result = qword_401EF0;
  if (!qword_401EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401EE0);
    sub_E1F14(&qword_401EE8, &qword_401EE0);
    sub_E1D8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401EF0);
  }

  return result;
}

uint64_t sub_E2088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E20E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_EBD8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_E2130(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_EBC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_E21CC@<X0>(void *a1@<X8>)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);

  if ((v8 & 1) == 0)
  {
    sub_30C7A8();
    v9 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v7 = v35;
  }

  v10 = (v1 + *(type metadata accessor for CategoryBrickCell() + 20));
  v34 = *v10;
  v11 = sub_308B28();
  v12 = v11[5];
  v13 = type metadata accessor for BrickContentView();
  v14 = a1 + v13[6];
  sub_EB00(v10 + v12, v14, &unk_402FF0);
  v15 = *(v10 + v11[6]);
  v16 = (v10 + v11[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v10 + v11[8]);
  v20 = v19[1];
  v32 = *v19;
  v33 = v17;
  v21 = v7;
  v22 = v11[10];
  v23 = type metadata accessor for BrickListContentView.Model(0);
  sub_EB00(v10 + v22, v14 + v23[11], &unk_3FBB40);
  v24 = (v14 + v23[5]);
  *v24 = 0;
  v24[1] = 0;
  *(v14 + v23[6]) = 0;
  v25 = v14 + v23[7];
  *v25 = v15;
  *(v25 + 4) = 0;
  v26 = (v14 + v23[8]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v14 + v23[9]);
  v28 = v32;
  *v27 = v33;
  v27[1] = v18;
  v29 = (v14 + v23[10]);
  *v29 = v28;
  v29[1] = v20;
  v30 = v34;
  *a1 = v21;
  a1[1] = v30;
  *(a1 + v13[7]) = 1;
  *(a1 + v13[8]) = 1;
}

uint64_t sub_E2444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v9 = a4 + *(a3 + 20);

  return sub_E2718(a2, v9);
}

uint64_t sub_E24E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E29B4(&qword_401F40, type metadata accessor for CategoryBrickCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t type metadata accessor for CategoryBrickCell()
{
  result = qword_401FA0;
  if (!qword_401FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2718(uint64_t a1, uint64_t a2)
{
  v4 = sub_308B28();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E2790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_308B28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E2848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_308B28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E28E8()
{
  sub_D7D8();
  if (v0 <= 0x3F)
  {
    sub_308B28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E29B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E2A00@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v6 - 8);
  v36 = &v34 - v7;
  v8 = type metadata accessor for BrickListContentView.Model(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_305A08();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_30C7A8();
    v15 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
    a1 = v37;
  }

  v35 = sub_307D98();
  sub_307DA8();
  v34 = sub_307DB8();
  v17 = v16;
  v18 = sub_307D88();
  v20 = v19;
  v21 = sub_307DE8();
  if (!v21)
  {
    v22 = a1;
LABEL_8:
    v24 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v22 = a1;
  if (!v21[2])
  {

    goto LABEL_8;
  }

  v24 = v21[4];
  v23 = v21[5];

LABEL_9:
  v25 = &v10[v8[11]];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  sub_E2F78(v36, v10);
  v26 = &v10[v8[5]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v10[v8[6]] = 1;
  v27 = &v10[v8[7]];
  *v27 = 0;
  v27[4] = 1;
  v28 = &v10[v8[8]];
  *v28 = v34;
  v28[1] = v17;
  v29 = &v10[v8[9]];
  *v29 = v18;
  v29[1] = v20;
  v30 = &v10[v8[10]];
  *v30 = v24;
  *(v30 + 1) = v23;
  v31 = v35;
  *a3 = v22;
  a3[1] = v31;
  v32 = type metadata accessor for BrickContentView();
  result = sub_E2FE8(v10, a3 + v32[6]);
  *(a3 + v32[7]) = 1;
  *(a3 + v32[8]) = 1;
  return result;
}

uint64_t sub_E2D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_307048();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *a2;
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_E2DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E304C();

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

unint64_t sub_E2E04()
{
  result = qword_401FE0;
  if (!qword_401FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401FE0);
  }

  return result;
}

unint64_t sub_E2E60()
{
  result = qword_401FE8;
  if (!qword_401FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401FE8);
  }

  return result;
}

unint64_t sub_E2ED4()
{
  result = qword_401FF0;
  if (!qword_401FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401FF0);
  }

  return result;
}

uint64_t sub_E2F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E2FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickListContentView.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E304C()
{
  result = qword_402000;
  if (!qword_402000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402000);
  }

  return result;
}

uint64_t sub_E30F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E3144(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_bookmarkButtonPresenter;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_bookmarkButtonPresenter] = a1;

  if (*&v1[v2])
  {
    sub_E3AA4();

    v3 = v1;
    sub_30A3A8();
  }
}

void sub_E31D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v40 = &v38 - v5;
  v7 = sub_302AB8();
  v41 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_bookmarkButtonPresenter] = 0;
  sub_E3AFC(a1, &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_iconsSet]);
  v11 = *(type metadata accessor for PlayControlsIconsSet(0) + 20);
  v38 = v8;
  v39 = a1;
  v44 = *(v8 + 16);
  v44(v10, a1 + v11, v7);
  v12 = sub_3029E8();
  v13 = *(v12 - 8);
  v42 = *(v13 + 56);
  v43 = v13 + 56;
  v42(v6, 1, 1, v12);
  v14 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v14 = 0;
  v14[1] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48);
  v16 = objc_opt_self();
  v17 = [v16 systemGray6Color];
  v18 = [v16 systemGray5Color];
  v19 = sub_30CFB8();

  *&v2[v15] = v19;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v2[v20] = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v22 = [objc_allocWithZone(UIView) init];
  [v22 setClipsToBounds:1];
  [v22 setUserInteractionEnabled:0];
  *&v2[v21] = v22;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v24 = [objc_opt_self() effectWithStyle:16];
  v25 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v24];

  v26 = v25;
  v27 = v40;
  [v26 setUserInteractionEnabled:0];
  [v26 setClipsToBounds:1];

  *&v2[v23] = v26;
  v28 = v41;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v29 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v29 = 0;
  v29[1] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v42(&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v12);
  v44(&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v10, v28);
  swift_beginAccess();
  sub_A8088(v27, &v2[v30]);
  swift_endAccess();
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v31 = *&v2[v20];
  v32 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  *v32 = v31;
  v32[24] = 0;
  v33 = type metadata accessor for GlyphButton();
  v45.receiver = v2;
  v45.super_class = v33;
  v34 = v31;
  v35 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (*(v35 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24))
  {
    __break(1u);
  }

  else
  {
    v36 = objc_opt_self();
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;
    [v36 activateConstraints:isa];

    sub_A80F8(v27);
    (*(v38 + 8))(v10, v28);
    [v35 addTarget:v35 action:"primaryActionTriggered" forControlEvents:0x2000];
    sub_E3B60(v39);
  }
}

uint64_t sub_E3838()
{

  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_iconsSet;

  return sub_E3B60(v1);
}

uint64_t type metadata accessor for BookmarkBadge()
{
  result = qword_402038;
  if (!qword_402038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E3918()
{
  result = type metadata accessor for PlayControlsIconsSet(319);
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

uint64_t sub_E39B4(char a1)
{
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_iconsSet;
  if ((a1 & 1) == 0)
  {
    v8 += *(type metadata accessor for PlayControlsIconsSet(0) + 20);
  }

  (*(v4 + 16))(v7, v8, v3, v5);
  return sub_24E704(v7);
}

unint64_t sub_E3AA4()
{
  result = qword_402048;
  if (!qword_402048)
  {
    type metadata accessor for BookmarkBadge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402048);
  }

  return result;
}

uint64_t sub_E3AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayControlsIconsSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3B60(uint64_t a1)
{
  v2 = type metadata accessor for PlayControlsIconsSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_E3BD0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_302AB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_configProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  (*(v12 + 56))(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_glyph], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph] = 0;
  v15 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button] = v15;
  v17 = v15;
  sub_3029B8();
  v18 = sub_302A08();
  (*(v12 + 8))(v14, v11);
  [v17 setImage:v18 forState:0];

  [*&v5[v16] setPointerInteractionEnabled:1];
  v19 = *&v5[v16];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 tertiaryLabelColor];
  [v21 setTintColor:v22];

  v23 = [*&v5[v16] imageView];
  if (v23)
  {
    v24 = v23;
    [v23 setContentMode:1];
  }

  v49.receiver = v5;
  v49.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button;
  v27 = *&v25[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button];
  v47 = 0;
  v48 = 0xE000000000000000;
  v28 = v25;
  v29 = v27;
  v50._object = 0x8000000000336AD0;
  v50._countAndFlagsBits = 0xD00000000000001ELL;
  sub_30C238(v50);
  v51._countAndFlagsBits = 46;
  v51._object = 0xE100000000000000;
  sub_30C238(v51);
  v46[15] = 3;
  sub_30D638();
  v30 = sub_30C098();

  [v29 setAccessibilityIdentifier:v30];

  v31 = *&v25[v26];
  v32 = v28;
  [v32 addSubview:v31];
  [*&v25[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_31D470;
  v35 = [*&v25[v26] centerYAnchor];
  v36 = [v32 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [*&v25[v26] trailingAnchor];
  v39 = [v32 trailingAnchor];

  v40 = [v38 constraintEqualToAnchor:v39];
  *(v34 + 40) = v40;
  v41 = [*&v25[v26] leadingAnchor];
  v42 = [v32 leadingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];

  *(v34 + 48) = v43;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v33 activateConstraints:isa];

  [v32 setContextMenuInteractionEnabled:1];
  [v32 setShowsMenuAsPrimaryAction:1];

  return v32;
}

uint64_t type metadata accessor for DynamicContextMenuButton()
{
  result = qword_402088;
  if (!qword_402088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E43A8()
{
  sub_E4458();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_E4458()
{
  if (!qword_402098)
  {
    sub_302AB8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_402098);
    }
  }
}

uint64_t sub_E44C0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph) = a1;
}

uint64_t sub_E4508(double a1, double a2)
{
  v5 = sub_302268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3022E8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph];
  if (v13)
  {

    v14 = sub_30CE68();
    if (v14)
    {
      v15 = v14;
      v16 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_configProvider];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v16 + 1);
        v23 = v6;
        ObjectType = swift_getObjectType();
        *&v20[1] = a2;
        *&v20[2] = a1;
        v17 = v15;
        v2;
        sub_302298();
        sub_30CE78();
        v18 = (*(v21 + 8))(v13, v12, v8, ObjectType);

        swift_unknownObjectRelease();

        (*(v23 + 8))(v8, v5);
        (*(v10 + 8))(v12, v9);
        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_E4764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E47D0()
{
  result = qword_4020A0;
  if (!qword_4020A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4020A0);
  }

  return result;
}

Swift::Int EpisodeInfoViewCapabilities.hashValue.getter()
{
  sub_30D7F8();
  sub_30D808(0);
  return sub_30D858();
}

Swift::Int sub_E48A0()
{
  sub_30D7F8();
  sub_30D808(0);
  return sub_30D858();
}

uint64_t sub_E48E0(uint64_t a1)
{
  *(v1 + 48) = a1;

  if (*(v1 + 48))
  {
    sub_E5498(&qword_402198, v2, type metadata accessor for EpisodeStateControlsPresenter);

    sub_30A3B8();
  }
}

uint64_t sub_E4994(uint64_t a1)
{
  *(v1 + 56) = a1;

  if (*(v1 + 56))
  {
    sub_E5498(&qword_402190, v2, type metadata accessor for EpisodeStateControlsPresenter);

    sub_30A428();
  }
}

uint64_t EpisodeStateControlsPresenter.deinit()
{
  sub_2B83C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  return v0;
}

uint64_t EpisodeStateControlsPresenter.__deallocating_deinit()
{
  sub_2B83C(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_E4AF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30A3F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_30A388();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + 40) = a1;

  sub_309A78();
  v12 = swift_dynamicCastClass();

  if (v12)
  {
    *v11 = sub_309A68();
    v11[1] = v13;
    v14 = &enum case for BookmarkButtonPresenter.Data.uuid(_:);
  }

  else
  {
    *v11 = sub_307D98();
    v14 = &enum case for BookmarkButtonPresenter.Data.adamId(_:);
  }

  (*(v9 + 104))(v11, *v14, v8);
  sub_30A3C8();
  swift_allocObject();
  swift_retain_n();
  v15 = sub_30A398();
  sub_E48E0(v15);
  if (swift_dynamicCastClass())
  {
    *v7 = sub_309A68();
    v7[1] = v16;
    (*(v5 + 104))(v7, enum case for DownloadButtonPresenter.Data.uuid(_:), v4);
  }

  else
  {
    *v7 = a1;
    (*(v5 + 104))(v7, enum case for DownloadButtonPresenter.Data.lockup(_:), v4);
  }

  sub_30A438();
  swift_allocObject();
  v17 = sub_30A408();
  sub_E4994(v17);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v2 + 56);

    v20 = swift_retain_n();
    sub_E3144(v20);
    sub_19AA70(v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_E4DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_E4F18();
  sub_E4F80(a3);

  return sub_E5070(a3);
}

uint64_t sub_E4E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_E4F18();
  sub_E4F80(a5);

  return sub_E5070(a5);
}

uint64_t sub_E4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_E4F18();
  sub_E4F80(a4);

  return sub_E5070(a4);
}

uint64_t sub_E4ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_E4F18();
  sub_E4F80(a6);

  return sub_E5070(a6);
}

uint64_t sub_E4F18()
{
  v1 = *(v0 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (v1 == 1)
  {
    if (!result)
    {
      return result;
    }

    v4 = 1;
    v3 = &v4;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = 0;
    v3 = &v5;
  }

  sub_E5E7C(v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_E4F80(uint64_t result)
{
  if (!*(v1 + 48))
  {
    return result;
  }

  v2 = result;

  v3 = sub_30A368();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_bookmarkBadge);
      v6 = v2 & 1;
      v7 = 0;
LABEL_8:
      sub_E5F84(v7, v5, v6);

      return swift_unknownObjectRelease();
    }
  }

  else if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_bookmarkBadge);
    v6 = v2 & 1;
    v7 = 2;
    goto LABEL_8;
  }
}

uint64_t sub_E5070(uint64_t result)
{
  if (!*(v1 + 40) || !*(v1 + 56))
  {
    return result;
  }

  v2 = result;

  v3 = sub_3094B8();
  v4 = sub_30A3D8();
  if (v3 != 2)
  {
    v8 = v4;
    v9 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = Strong;
    if ((v9 & 1) == 0 || v8)
    {
      if (Strong)
      {
        v11 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_downloadBadge);
        v12 = v2 & 1;
        v13 = 0;
        goto LABEL_13;
      }
    }

    else if (Strong)
    {
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
LABEL_10:
  v11 = *(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_downloadBadge);
  v12 = v2 & 1;
  v13 = 2;
LABEL_13:
  sub_E5F84(v13, v11, v12);

  swift_unknownObjectRelease();
LABEL_15:
}

uint64_t sub_E5198()
{
  v1 = v0[5];
  if (!v1)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1Tm(v0 + 9, v0[12]);
  v4[3] = sub_309548();
  v4[4] = sub_E5498(&qword_3FEA60, 255, &type metadata accessor for LegacyEpisodeLockup);
  v4[0] = v1;
  swift_retain_n();
  v2 = sub_30A9D8();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

unint64_t sub_E534C()
{
  result = qword_402180;
  if (!qword_402180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402180);
  }

  return result;
}

unint64_t sub_E53A4()
{
  result = qword_402188;
  if (!qword_402188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402188);
  }

  return result;
}

uint64_t sub_E53F8(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);
  sub_30B9A8();

  sub_30BE78();
  sub_28DC8(&v4, v1 + 72);
  return v1;
}

uint64_t sub_E5498(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_E54E0()
{
  [v0 setAxis:0];
  [v0 setAlignment:3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v1 = swift_allocObject();
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_bookmarkBadge];
  *(v1 + 16) = xmmword_31D470;
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_downloadBadge];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton];
  *(v1 + 48) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8._rawValue = v1;
  sub_30C688(v8);

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentMode:4];
  [v6 setContentMode:4];
  if ([v0 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v9 = 8;
  }

  else
  {
    v9 = 7;
  }

  [v7 setContentMode:v9];
  v10 = [v7 widthAnchor];
  v11 = [v10 constraintEqualToConstant:22.0];

  sub_30C888();
  [v11 setPriority:?];
  v28 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_31FDA0;
  v13 = [v5 widthAnchor];
  v14 = [v13 constraintEqualToConstant:28.0];

  sub_30C888();
  isa = sub_30CA28(v31).super.isa;

  *(v12 + 32) = isa;
  v16 = [v5 heightAnchor];
  v17 = [v5 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  sub_30C888();
  v19 = sub_30CA28(v32).super.isa;

  *(v12 + 40) = v19;
  v20 = [v6 widthAnchor];
  v21 = [v20 constraintEqualToConstant:28.0];

  sub_30C888();
  v22 = sub_30CA28(v33).super.isa;

  *(v12 + 48) = v22;
  v23 = [v6 heightAnchor];
  v24 = [v6 widthAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  sub_30C888();
  v26 = sub_30CA28(v34).super.isa;

  *(v12 + 56) = v26;
  *(v12 + 64) = v11;
  sub_91304();
  v27 = v11;
  v29 = sub_30C358().super.isa;

  [v28 activateConstraints:v29];
}

void sub_E58A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_expandedTapAreaInsets], *&NSDirectionalEdgeInsetsZero.top), vceqq_f64(*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_expandedTapAreaInsets + 16], *&NSDirectionalEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    v17 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedBounds];
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (!CGRectEqualToRect(*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedBounds], v41))
    {
      v18 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedMoreButtonFrame];
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      if (!CGRectEqualToRect(*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedMoreButtonFrame], v42))
      {
        *v17 = a1;
        v17[1] = a2;
        v17[2] = a3;
        v17[3] = a4;
        *v18 = a5;
        v18[1] = a6;
        v18[2] = a7;
        v18[3] = a8;
        v35.origin.x = a5;
        v35.origin.y = a6;
        v35.size.width = a7;
        v35.size.height = a8;
        MinY = CGRectGetMinY(v35);
        v36.origin.x = a5;
        v36.origin.y = a6;
        v36.size.width = a7;
        v36.size.height = a8;
        MinX = CGRectGetMinX(v36);
        v37.origin.x = a1;
        v37.origin.y = a2;
        v37.size.width = a3;
        v37.size.height = a4;
        Height = CGRectGetHeight(v37);
        v38.origin.x = a5;
        v38.origin.y = a6;
        v38.size.width = a7;
        v38.size.height = a8;
        v31 = Height - CGRectGetMaxY(v38);
        v39.origin.x = a1;
        v39.origin.y = a2;
        v39.size.width = a3;
        v39.size.height = a4;
        Width = CGRectGetWidth(v39);
        v40.origin.x = a5;
        v40.origin.y = a6;
        v40.size.width = a7;
        v40.size.height = a8;
        v20 = Width - CGRectGetMaxX(v40);
        v21 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton];
        [v8 hitTestInsets];
        v23 = v22 - MinY;
        [v8 hitTestInsets];
        v25 = v24 - MinX;
        [v8 hitTestInsets];
        v27 = v26 - v31;
        [v8 hitTestInsets];
        v29 = v28 - v20;

        [v21 setHitTestInsets:{v23, v25, v27, v29}];
      }
    }
  }
}

uint64_t type metadata accessor for EpisodeStateControlsStackView()
{
  result = qword_402200;
  if (!qword_402200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E5D18()
{
  result = type metadata accessor for PlayControlsIconsSet(319);
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

uint64_t sub_E5DFC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_objectGraph) = a1;

  *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton) + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph) = a1;
}

void sub_E5E7C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_bookmarkBadge);
  v4 = objc_opt_self();
  v5 = v4;
  if (v2)
  {
    v6 = &selRef_whiteColor;
  }

  else
  {
    v6 = &selRef_systemGray2Color;
  }

  v7 = [v4 *v6];
  [v3 setTintColor:v7];

  v8 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton);
  v9 = [v5 *v6];
  [*(v8 + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button) setTintColor:v9];

  *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_downloadBadge) + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_episodeCellState) = v2;
  v10 = v2;
  sub_19B464(&v10);
}

uint64_t sub_E5F84(unsigned __int8 a1, void *a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_currentVisibilities;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_191BA4(a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + v10);
    result = swift_endAccess();
    if (v12 == a1)
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_29590C(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v21;
  swift_endAccess();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = v15;
  *(v16 + 40) = a3 & 1;
  if (a3)
  {
    v17 = objc_opt_self();
    aBlock[4] = sub_E6BC8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_20;
    v18 = _Block_copy(aBlock);

    v19 = a2;

    [v17 animateWithDuration:v18 animations:0.25];

    _Block_release(v18);
  }

  else
  {

    sub_E61BC(a1, a2, v15, 0);
  }
}

void sub_E61BC(char a1, id a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v6 = 0.0;
    if (a1 == 1)
    {
      goto LABEL_6;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 1.0;
  }

  [a2 setHidden:v7];
LABEL_6:
  [a2 setAlpha:v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setNeedsLayout];
  }

  if (a4)
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 layoutIfNeeded];
    }
  }
}

id sub_E62B0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = sub_302AB8();
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14);
  v50 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = type metadata accessor for DownloadButton.Style(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PlayControlsIconsSet(0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton;
  *&v7[v29] = [objc_allocWithZone(type metadata accessor for DynamicContextMenuButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_currentVisibilities;
  *&v7[v30] = sub_2D71C8(_swiftEmptyArrayStorage);
  v31 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedBounds];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedMoreButtonFrame];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_objectGraph] = 0;
  sub_E6850(a2, &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_iconsSet], type metadata accessor for PlayControlsIconsSet);
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_episodeStateControlsPresenter] = a1;
  v33 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_expandedTapAreaInsets];
  *v33 = a3;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  sub_E6850(a2, v28, type metadata accessor for PlayControlsIconsSet);
  v34 = objc_allocWithZone(type metadata accessor for BookmarkBadge());

  sub_E31D0(v28);
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_bookmarkBadge] = v35;
  sub_E6850(a2 + *(v26 + 32), v24, type metadata accessor for DownloadButton.Style);
  v36 = objc_allocWithZone(type metadata accessor for DownloadButton(0));
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_downloadBadge] = sub_19AB24(v24, 1, 0, 1);
  v37 = *(v26 + 36);
  v53 = v29;
  v54 = a2;
  v38 = *&v7[v29];
  v39 = v51;
  v40 = v52;
  (*(v51 + 16))(v21, a2 + v37, v52);
  (*(v39 + 56))(v21, 0, 1, v40);
  v41 = OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_glyph;
  swift_beginAccess();
  v42 = v38;
  sub_E68B8(v21, v38 + v41);
  swift_endAccess();
  sub_E6928(v38 + v41, v18);
  if ((*(v39 + 48))(v18, 1, v40) == 1)
  {
    sub_E4764(v18);
    [*&v42[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button] setHidden:1];
  }

  else
  {
    v43 = v50;
    (*(v39 + 32))(v50, v18, v40);
    v44 = *&v42[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_button];
    v45 = sub_302A08();
    [v44 setImage:v45 forState:0];

    [v44 setHidden:0];
    (*(v39 + 8))(v43, v40);
  }

  sub_E4764(v21);
  *(*&v7[v53] + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_configProvider + 8) = &off_3B9D20;
  swift_unknownObjectWeakAssign();
  v56.receiver = v7;
  v56.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v56, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_E54E0();
  *(a1 + 24) = &off_3B9E50;
  swift_unknownObjectWeakAssign();
  v47 = v46;
  sub_E4F18();
  sub_E4F80(0);
  sub_E5070(0);

  [v47 setHitTestDirectionalInsets:{a3, a4, a5, a6}];
  sub_E3B60(v54);
  return v47;
}

uint64_t sub_E6850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_E68B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_E6998()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for DynamicContextMenuButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_currentVisibilities;
  *(v0 + v2) = sub_2D71C8(_swiftEmptyArrayStorage);
  v3 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedMoreButtonFrame);
  *v4 = 0u;
  v4[1] = 0u;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_E6A74()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for DynamicContextMenuButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_currentVisibilities;
  *(v0 + v2) = sub_2D71C8(_swiftEmptyArrayStorage);
  v3 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_cachedMoreButtonFrame);
  *v4 = 0u;
  v4[1] = 0u;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_E6B50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E6B88()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E6BF0()
{
  v26 = sub_302A98();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for DownloadButton.Style(0);
  __swift_allocate_value_buffer(v13, qword_402210);
  v14 = __swift_project_value_buffer(v13, qword_402210);
  sub_3028F8();
  sub_3028D8();
  sub_302AA8();
  (*(v4 + 8))(v9, v3);
  v15 = sub_302A38();
  (*(v0 + 8))(v2, v26);
  if (v15)
  {
    v16 = sub_30CDA8();
  }

  else
  {
    v16 = 0;
  }

  v28 = 0;
  v27 = 1;
  sub_3028D8();
  v17 = *(v4 + 32);
  v17(v14, v12, v3);
  v18 = v14 + v13[5];
  __asm { FMOV            V0.2D, #12.0 }

  *v18 = _Q0;
  *(v18 + 16) = 0;
  *(v18 + 24) = xmmword_31FE70;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 88) = v16;
  result = (v17)(v14 + v13[6], v6, v3);
  *(v14 + v13[7]) = 0;
  return result;
}

uint64_t sub_E6E88()
{
  v0 = type metadata accessor for DownloadButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for PlayControlsIconsSet(0);
  __swift_allocate_value_buffer(v13, qword_429128);
  v14 = __swift_project_value_buffer(v13, qword_429128);
  sub_3028C8();
  sub_3028E8();
  if (qword_3FAA18 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_402210);
  sub_74800(v15, v2);
  sub_302908();
  v16 = *(v4 + 32);
  v16(v14, v12, v3);
  v16(v14 + v13[5], v9, v3);
  sub_E76E0(v2, v14 + v13[6]);
  return (v16)(v14 + v13[7], v6, v3);
}

uint64_t sub_E70BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_E8108();
    [v4 setAxis:0];
    [v4 setAlignment:3];
    LODWORD(v5) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v5];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t PlayControlsPresenter.deinit()
{
  sub_2B83C(v0 + 16);

  sub_E3B60(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet);
  return v0;
}

uint64_t PlayControlsPresenter.__deallocating_deinit()
{
  sub_2B83C(v0 + 16);

  sub_E3B60(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet);

  return swift_deallocClassInstance();
}

unint64_t sub_E7240()
{
  result = qword_402228;
  if (!qword_402228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402228);
  }

  return result;
}

uint64_t sub_E72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DownloadButton.Style(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_E73BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_302AB8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DownloadButton.Style(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_E74B8()
{
  result = sub_302AB8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DownloadButton.Style(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_E7590()
{
  result = type metadata accessor for PlayControlsIconsSet(319);
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

uint64_t sub_E7674(uint64_t a1)
{
  *(v1 + 48) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_E8268();
    swift_unknownObjectRelease();
  }

  return sub_E4AF0(a1);
}

uint64_t sub_E76E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_E7744(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for PlayControlsIconsSet(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton] = 0;
  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState] = 0;
  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph] = 0;
  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playControlsPresenter] = a1;
  v16 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_expandedTapAreaInsets];
  *v16 = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  sub_E3AFC(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet, v15);
  objc_allocWithZone(type metadata accessor for EpisodeStateControlsStackView());

  v18 = sub_E62B0(v17, v15, a2, 0.0, a4, a5);

  *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_episodeStateControls] = v18;
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  sub_E70BC(v19, &off_3B9F80);
  [v20 setHitTestDirectionalInsets:{a2, a3, a4, a5}];

  return v20;
}

id UpsellSubscriptionPlansView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

void PlayControlsStackView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_accessibilityPlayButtonState) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

Swift::Void __swiftcall PlayControlsStackView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v3 = isa;
    v4 = [(objc_class *)v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_30C0D8();
    v9 = v8;
    if (v7 == sub_30C0D8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_30D728();

      if ((v12 & 1) == 0)
      {
        [v1 invalidateIntrinsicContentSize];
        [v1 setNeedsUpdateConstraints];
      }
    }
  }
}

void sub_E7CC4()
{
  v0 = sub_302AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3028B8();
  v4 = sub_302A08();
  (*(v1 + 8))(v3, v0);
  [v4 size];
  v6 = v5;

  qword_4023A0 = v6;
}

double PlayControlsStackView.intrinsicContentSize.getter()
{
  result = UIViewNoIntrinsicMetric;
  if (qword_3FAA28 != -1)
  {
    swift_once();
    return UIViewNoIntrinsicMetric;
  }

  return result;
}

uint64_t PlayControlsStackView.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
    swift_beginAccess();
    *&v4[v5] = a1;
    swift_retain_n();
    v6 = v4;
  }

  else
  {
  }

  v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_episodeStateControls);
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_objectGraph] = a1;

  v8 = v7;

  *(*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton] + OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph) = a1;
}

void sub_E8108()
{
  v1 = v0;
  v15 = 0;
  v16 = 1;
  v2 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&v15, 0, 0);
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_expandedTapAreaInsets);
  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_expandedTapAreaInsets + 8);
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_expandedTapAreaInsets + 16);
  v7 = v6;
  [v7 setHitTestDirectionalInsets:{v3, v4, v5, 0.0}];
  v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton) = v7;
  v14 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_31D470;
  *(v9 + 32) = v14;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_episodeStateControls);
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  v12 = v11;
  v13._rawValue = v9;
  sub_30C688(v13);
}

void sub_E8268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsStackView_playButton);
  if (v4)
  {
    v5 = v4;

    sub_309758();
    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
    swift_beginAccess();
    sub_749E4(v3, v5 + v6);
    swift_endAccess();
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_74A54;
    *(v9 + 24) = v8;
    aBlock[4] = sub_293C0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19D688;
    aBlock[3] = &block_descriptor_21;
    v10 = _Block_copy(aBlock);
    v11 = v5;

    [v7 performWithoutAnimation:v10];
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      sub_E8528(v3);
    }
  }
}

uint64_t sub_E84C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E8528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_E8590(void *a1, char a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_internalTrailingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_extraTrailingPadding] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_isMultiShowListLayout] = a2;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_contentView] = a1;
  v46.receiver = v3;
  v46.super_class = type metadata accessor for EpisodeCellLayoutGuide();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v46, "init");
  [v7 addLayoutGuide:{v8, v46.receiver, v46.super_class}];
  if (a2)
  {
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_31D480;
    v11 = [v8 leadingAnchor];
    v12 = [v7 layoutMarginsGuide];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor:v13];
    *(v10 + 32) = v14;
    v15 = [v8 trailingAnchor];

    v16 = [v7 layoutMarginsGuide];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17];
    *(v10 + 40) = v18;
    v19 = [v8 topAnchor];

    v20 = [v7 layoutMarginsGuide];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v10 + 48) = v22;
    v23 = [v8 bottomAnchor];

    v24 = [v7 layoutMarginsGuide];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor:v25];
    *(v10 + 56) = v26;
    sub_91304();
    v27.super.isa = sub_30C358().super.isa;

    [v9 activateConstraints:v27.super.isa];
  }

  else
  {
    v28 = [v7 trailingAnchor];
    v29 = [v8 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    v31 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_internalTrailingConstraint];
    *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_internalTrailingConstraint] = v30;
    v32 = v30;

    v33 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_31D480;
    v35 = [v8 leadingAnchor];

    v36 = [v7 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v34 + 32) = v37;
    *(v34 + 40) = v32;
    v38 = v32;
    v39 = [v8 topAnchor];

    v40 = [v7 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v34 + 48) = v41;
    v42 = [v8 bottomAnchor];

    v43 = [v7 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v34 + 56) = v44;
    sub_91304();
    v27.super.isa = sub_30C358().super.isa;

    [v33 activateConstraints:v27.super.isa];
  }

  return v8;
}

id sub_E8B84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeCellLayoutGuide();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_E8D08(uint64_t a1, uint64_t a2)
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C988())
  {
    type metadata accessor for UnpreventableHoverGestureRecognizer();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_ED188(a2, v4, &unk_3BA2B8, sub_EF1C8, &unk_3BA2E0, sub_EF1CC);

    [v2 addGestureRecognizer:v5];
  }
}

void *EpisodeInfoView.titleLabel.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EpisodeInfoView.titleLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t EpisodeInfoView.playStatePublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_E9044()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAxis:0];
    [v4 setAlignment:3];
    [v4 setSpacing:6.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t EpisodeInfoView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*EpisodeInfoView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_E9250;
}

void sub_E9250(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_E92D8()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_capabilities];
  if (*(v1 + 16))
  {
    v2 = v0;
    sub_30D7F8();
    sub_30D808(0);
    v3 = sub_30D858() & ~(-1 << *(v1 + 32));
    if ((*(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
    {
      v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
      swift_beginAccess();
      v5 = *&v0[v4];
      if (v5)
      {
        if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle] == 1 && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleAction])
        {
          v6 = 1;
          v7 = &selRef_textColor;
          v2 = v5;
        }

        else
        {
          v6 = 0;
          v7 = &selRef_backgroundColor;
        }

        v8 = v5;
        v9 = [v2 *v7];
        if (!v9)
        {
          v9 = [objc_opt_self() clearColor];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_315420;
        *(inited + 32) = NSUnderlineStyleAttributeName;
        *(inited + 40) = 1;
        *(inited + 64) = &type metadata for Int;
        *(inited + 72) = NSUnderlineColorAttributeName;
        *(inited + 104) = sub_124C4(0, &qword_3FFD48);
        *(inited + 80) = v9;
        v11 = NSUnderlineStyleAttributeName;
        v12 = NSUnderlineColorAttributeName;
        v13 = v9;
        sub_2D6CB0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
        swift_arrayDestroy();
        v14 = v8;
        v15 = [v14 text];
        if (v15)
        {
          v16 = v15;
          sub_30C0D8();
        }

        v17 = objc_allocWithZone(NSAttributedString);
        v18 = sub_30C098();

        type metadata accessor for Key(0);
        sub_EF794(&qword_3FB410, 255, type metadata accessor for Key);
        isa = sub_30BF88().super.isa;

        v20 = [v17 initWithString:v18 attributes:isa];

        [v14 setAttributedText:v20];
        [v14 setUserInteractionEnabled:v6];
      }
    }
  }
}

id sub_E961C(char *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_303748();
  __chkstk_darwin(v7);
  v8 = *a1;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleAction] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playbackStatusObservance] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowPlayedCheckmark] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowLabel] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLabel] = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010);
  swift_allocObject();
  *&v3[v9] = sub_304D88();
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHovering] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isSuperviewSelected] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilderCancellables] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilder] = 0;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerBuilder] = 0;
  v10 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLockup];
  *v10 = 0;
  v10[8] = 2;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph] = 0;
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style] = v8;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_capabilities] = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setAlignment:1];
  [v11 setAxis:1];
  v13 = v8;
  sub_E98C0(&v13);
  LOBYTE(v3) = sub_195190(a2);

  if (v3)
  {
    sub_E8D08(&unk_3BA290, sub_EF1C0);
  }

  return v11;
}

void sub_E98C0(char *a1)
{
  v2 = (&off_3BA820)[*a1];
  v3 = v2[2];
  if (!v3)
  {

    v68 = 0;
LABEL_50:

    return;
  }

  v4 = v1;
  v76 = *a1;
  v73 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel;
  v74 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLabel;
  v69 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack;
  v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowLabel;
  v71 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  v72 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_capabilities;
  swift_beginAccess();
  v77 = 0;
  v5 = 4;
  v6 = 32;
  v75 = v2;
  while (1)
  {
    v7 = *(v2 + v6);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v17 = v76;
        if (qword_3FAA58 != -1)
        {
          swift_once();
          v17 = v76;
        }

        v88 = xmmword_429298;
        v89 = unk_4292A8;
        v90[0] = xmmword_4292B8;
        *(v90 + 10) = *(&xmmword_4292B8 + 10);
        v86 = xmmword_429278;
        v87 = unk_429288;
        v84 = unk_4292A8;
        v85[0] = xmmword_4292B8;
        *(v85 + 10) = *(&xmmword_4292B8 + 10);
        __src = xmmword_429278;
        v82 = unk_429288;
        v83 = xmmword_429298;
        if (v17)
        {
          sub_8FC54(&v86, v79);
          v18 = 2;
        }

        else
        {
          sub_8FC54(&v86, v79);
          v18 = 4;
        }

        type metadata accessor for DynamicTypeLabel();
        v47 = sub_235C3C(&__src, v18, 0, 1);
        type metadata accessor for UILayoutPriority(0);
        LODWORD(v79[0]) = 1144750080;
        sub_EF794(&qword_4025E8, 255, type metadata accessor for UILayoutPriority);
        v48 = v47;
        sub_3043C8();
        LODWORD(v49) = __src;
        [v48 setContentCompressionResistancePriority:1 forAxis:v49];
        v50 = objc_opt_self();
        v51 = v48;
        v52 = [v50 secondaryLabelColor];
        [v51 setTextColor:v52];

        [v51 setLineBreakMode:4];
        v53 = *&v4[v73];
        *&v4[v73] = v51;
        v54 = v51;

        [v4 addArrangedSubview:v54];
        v55 = [v54 widthAnchor];

        v56 = [v4 readableContentGuide];
        v57 = [v56 widthAnchor];

        v58 = [v55 constraintLessThanOrEqualToAnchor:v57];
        [v58 setActive:1];
        if (v5 == 4)
        {

          v2 = v75;
          v16 = v77;
        }

        else
        {
          v2 = v75;
          if (v77 && v5 == 1)
          {
            v16 = v77;
            v59 = v77;
            [v4 setCustomSpacing:v59 afterView:2.5];
          }

          else
          {

            v16 = v77;
          }
        }
      }

      else
      {
        if (qword_3FAA60 != -1)
        {
          swift_once();
        }

        v84 = unk_429308;
        v85[0] = xmmword_429318;
        *(v85 + 10) = *(&xmmword_429318 + 10);
        __src = xmmword_4292D8;
        v82 = unk_4292E8;
        v83 = xmmword_4292F8;
        v30 = type metadata accessor for DynamicTypeLabel();
        v31 = objc_allocWithZone(v30);
        sub_8FC54(&__src, v79);
        v32 = [v31 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v32 setNumberOfLines:1];
        [v32 setLineBreakMode:4];
        v33 = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 16];
        v86 = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase];
        v87 = v33;
        v35 = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 48];
        v34 = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 64];
        v36 = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 32];
        *(v90 + 10) = *&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase + 74];
        v89 = v35;
        v90[0] = v34;
        v88 = v36;
        memmove(&v32[OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase], &__src, 0x5AuLL);
        sub_8FC54(&__src, v79);
        v37 = v32;
        sub_EB68(&v86, &qword_4025E0);
        v38 = [v37 traitCollection];

        v79[2] = v83;
        v79[3] = v84;
        v80[0] = v85[0];
        *(v80 + 10) = *(v85 + 10);
        v79[0] = __src;
        v79[1] = v82;
        v39 = sub_2DAA3C(v79, v38);
        v40 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];

        sub_EB68(&__src, &qword_3FFD68);
        v78.receiver = v37;
        v78.super_class = v30;
        objc_msgSendSuper2(&v78, "setFont:", v40);

        v41 = objc_opt_self();
        v42 = v37;
        v43 = [v41 secondaryLabelColor];
        [v42 setTextColor:v43];

        v44 = *&v4[v74];
        *&v4[v74] = v42;
        v45 = v42;

        [v4 addArrangedSubview:v45];
        v16 = v77;
        if (v77)
        {
          v46 = v77;
          [v4 setCustomSpacing:v46 afterView:3.0];
        }

        v2 = v75;
      }
    }

    else if (*(v2 + v6))
    {
      v19 = v76;
      if (qword_3FAA48 != -1)
      {
        swift_once();
        v19 = v76;
      }

      v88 = xmmword_4291D8;
      v89 = unk_4291E8;
      v90[0] = xmmword_4291F8;
      *(v90 + 10) = *(&xmmword_4291F8 + 10);
      v86 = xmmword_4291B8;
      v87 = unk_4291C8;
      v84 = unk_4291E8;
      v85[0] = xmmword_4291F8;
      *(v85 + 10) = *(&xmmword_4291F8 + 10);
      __src = xmmword_4291B8;
      v82 = unk_4291C8;
      v83 = xmmword_4291D8;
      v20 = qword_320378[v19];
      type metadata accessor for DynamicTypeLabel();
      sub_8FC54(&v86, v79);
      v21 = sub_235C3C(&__src, v20, 0, 1);
      v22 = *&v4[v72];
      if (*(v22 + 16))
      {
        sub_30D7F8();
        sub_30D808(0);
        v23 = sub_30D858() & ~(-1 << *(v22 + 32));
        if ((*(v22 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23))
        {
          v24 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"titleTapped"];
          [v21 addGestureRecognizer:v24];
        }
      }

      v25 = objc_opt_self();
      v26 = v21;
      v27 = [v25 labelColor];
      [v26 setTextColor:v27];

      [v26 setLineBreakMode:4];
      v28 = *&v4[v71];
      *&v4[v71] = v26;
      v29 = v26;

      [v4 addArrangedSubview:v29];
      if (v5 == 4 || !v77 || v5)
      {

        v16 = v77;
      }

      else
      {
        v16 = v77;
        v60 = v77;
        [v4 setCustomSpacing:v60 afterView:1.5];
      }
    }

    else
    {
      type metadata accessor for DynamicTypeLabel();
      if (qword_3FAA40 != -1)
      {
        swift_once();
      }

      v88 = xmmword_429178;
      v89 = unk_429188;
      v90[0] = xmmword_429198;
      *(v90 + 10) = *(&xmmword_429198 + 10);
      v86 = xmmword_429158;
      v87 = unk_429168;
      v84 = unk_429188;
      v85[0] = xmmword_429198;
      *(v85 + 10) = *(&xmmword_429198 + 10);
      __src = xmmword_429158;
      v82 = unk_429168;
      v83 = xmmword_429178;
      sub_8FC54(&v86, v79);
      v8 = sub_235C3C(&__src, 1, 0, 1);
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 secondaryLabelColor];
      [v10 setTextColor:v11];

      v12 = *&v4[v70];
      *&v4[v70] = v10;
      v13 = v10;

      v14 = sub_E9044();
      [v14 addArrangedSubview:v13];

      LODWORD(v15) = 1148846080;
      [v13 setContentHuggingPriority:1 forAxis:v15];

      [v4 addArrangedSubview:*&v4[v69]];
      v16 = v77;
    }

    v61 = [v4 arrangedSubviews];
    sub_124C4(0, &qword_3FBD90);
    v62 = sub_30C368();

    if (v62 >> 62)
    {
      v63 = sub_30D668();
      if (!v63)
      {
LABEL_3:

        v77 = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v63 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
      if (!v63)
      {
        goto LABEL_3;
      }
    }

    v64 = __OFSUB__(v63, 1);
    v65 = v63 - 1;
    if (v64)
    {
      break;
    }

    if ((v62 & 0xC000000000000001) != 0)
    {
      v66 = sub_30D578();
    }

    else
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v65 >= *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_53;
      }

      v66 = *(v62 + 8 * v65 + 32);
    }

    v67 = v66;

    v77 = v67;
LABEL_4:
    ++v6;
    v5 = v7;
    if (!--v3)
    {

      v68 = v77;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

Swift::Void __swiftcall EpisodeInfoView.endUpdates()()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilderCancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_30D668();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_30D578();
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_304D08();

      ++v4;
    }

    while (v5 != v3);
  }

  *(v0 + v1) = _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall EpisodeInfoView.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "willMoveToWindow:", isa);
  if (isa)
  {
    EpisodeInfoView.beginUpdates()();
  }
}

Swift::Void __swiftcall EpisodeInfoView.beginUpdates()()
{
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilder])
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010);
    sub_EC8C(&qword_402470, &qword_403010);
    sub_3033C8();

    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_304F58();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style] == 2)
  {
    if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerBuilder])
    {

      sub_3033D8();

      __swift_project_boxed_opaque_existential_1Tm(v5, v6);
      v1 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter];

      v3 = [v0 effectiveUserInterfaceLayoutDirection];
      v4 = swift_allocObject();
      v4[2] = v1;
      v4[3] = v2;
      v4[4] = v3;
      sub_304F58();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
      sub_EC8C(&qword_4019A0, &unk_408F90);
      sub_304CF8();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }
}

uint64_t sub_EA8D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

Swift::Void __swiftcall EpisodeInfoView.didMoveToWindow()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilderCancellables;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_5:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_30D578();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_18:
            v4 = sub_30D668();
            goto LABEL_5;
          }

          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        sub_304D08();

        ++v5;
      }

      while (v6 != v4);
    }
  }
}

void sub_EAB14(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowLabel);
    if (v4)
    {
      v5 = v4;

      if (v1)
      {
        sub_30C248();
        v3 = sub_30C098();
      }

      else
      {
        v3 = 0;
      }

      [v5 setText:v3];
    }
  }
}

void sub_EABD8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLabel);
    if (!v10)
    {
LABEL_15:

      return;
    }

    v11 = v10;

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      goto LABEL_13;
    }

    if (*(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLockup + 8) == 2)
    {

      goto LABEL_13;
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLockup + 8];

      if (a3)
      {
LABEL_8:
        v15.value._countAndFlagsBits = sub_302698();
        a3 = v16;
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
      if (a3)
      {
        goto LABEL_8;
      }
    }

    v15.value._countAndFlagsBits = 0;
LABEL_11:
    v19.value._countAndFlagsBits = v6;
    v19.value._object = v7;
    v15.value._object = a3;
    sub_30C4D8(v19, v14 & 1, v15, a4 == 1, 0);
    v18 = v17;

    if (v18)
    {
      v9 = sub_30C098();

LABEL_14:
      [v11 setText:v9];

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_EAD78()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_EADC4()
{
  sub_30C0D8();
  sub_30C1F8();

  sub_30C1F8();
  sub_30D808(*(v0 + 24));
  v1 = type metadata accessor for EpisodeInfoView.CacheKey();
  sub_303728();
  v2 = *(v0 + *(v1 + 32));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_30D838(*&v2);
}

Swift::Int sub_EAE6C()
{
  sub_30D7F8();
  sub_EADC4();
  return sub_30D858();
}

Swift::Int sub_EAEB0()
{
  sub_30D7F8();
  sub_EADC4();
  return sub_30D858();
}

uint64_t sub_EAEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4025F8);
  swift_allocObject();
  result = sub_303D08();
  qword_429148 = result;
  return result;
}

void EpisodeInfoView.prepareForLayout(fitting:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeInfoView.CacheKey();
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (v11)
  {
    v12 = v11;
    v13 = [v12 text];
    if (!v13)
    {

      return;
    }

    v39 = v12;
    v14 = v13;
    v15 = sub_30C0D8();
    v17 = v16;

    v18 = [v2 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    v20 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style];
    swift_beginAccess();

    sub_304D58();

    *v9 = v19;
    *(v9 + 1) = v15;
    *(v9 + 2) = v17;
    v9[24] = v20;
    *&v9[*(v4 + 32)] = a1;
    if (qword_3FAA30 != -1)
    {
      swift_once();
    }

    sub_303D28();
    v21 = v39;
    if ((v44 & 1) == 0)
    {
      sub_EB3DC(v43);
      goto LABEL_15;
    }

    [v39 sizeThatFits:{a1, UIViewNoIntrinsicMetric}];
    v23 = v22;
    v24 = [v2 traitCollection];
    v25 = [v24 preferredContentSizeCategory];
    v26 = v25;
    if (qword_3FAA38 != -1)
    {
      v25 = swift_once();
    }

    LOBYTE(v41) = 1;
    v42 = *&v26;
    __chkstk_darwin(v25);
    *(&v39 - 16) = v27;
    *(&v39 - 1) = v24;
    sub_303D18();

    v28 = v40;
    [v40 lineHeight];
    v30 = v29;

    v31 = floor(v23 / v30);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v31 > -9.22337204e18)
    {
      if (v31 < 9.22337204e18)
      {
        v32 = v31;
        sub_EB3DC(v31);
        [v2 setNeedsLayout];
        [v2 layoutIfNeeded];
        LODWORD(v33) = 1148846080;
        LODWORD(v34) = 1112014848;
        [v2 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:UIViewNoIntrinsicMetric verticalFittingPriority:{v33, v34}];
        v36 = v35 + 0.0;
        v38 = v37 + 1.0;
        sub_EF7DC(v9, v6, type metadata accessor for EpisodeInfoView.CacheKey);
        v41 = v36;
        v42 = v38;
        v43 = v32;
        v44 = 0;
        sub_303D38();
LABEL_15:

        sub_ED0F0(v9);
        return;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t type metadata accessor for EpisodeInfoView.CacheKey()
{
  result = qword_402588;
  if (!qword_402588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_EB3DC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style))
  {
    if (a1 < 2)
    {
LABEL_3:
      v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel;
      result = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel);
      if (result)
      {
        result = [result setHidden:0];
        v6 = *(v1 + v4);
        if (v6)
        {
          v7 = *(v1 + v2);
          result = v6;
          v8 = qword_320378[v7];
          if (__OFSUB__(v8, a1))
          {
            __break(1u);
          }

          else
          {
            v9 = result;
            [result setNumberOfLines:v8 - a1];

            result = *(v1 + v4);
            if (result)
            {
              v10 = "setLineBreakMode:";
              v11 = 4;

              return [result v10];
            }
          }
        }
      }

      return result;
    }
  }

  else if (a1 < 4)
  {
    goto LABEL_3;
  }

  result = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel);
  if (result)
  {
    v10 = "setHidden:";
    v11 = 1;

    return [result v10];
  }

  return result;
}

uint64_t EpisodeInfoView.bind(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph;
  swift_beginAccess();
  *(v2 + v4) = a1;

  sub_3026B8();

  sub_30B8E8();
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter) = v6;
}

void sub_EB794(char a1, void *a2)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    if (a1)
    {
      v7 = v6;
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [a2 locationInView:v7];
      v22.x = v16;
      v22.y = v17;
      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      v18 = CGRectContainsPoint(v23, v22);
      v19 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle);
      *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle) = v18;
      if (v18 == v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle);
      *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle) = 0;
      v21 = v6;
      if ((v20 & 1) == 0)
      {
LABEL_7:

        return;
      }
    }

    sub_E92D8();
    goto LABEL_7;
  }
}

uint64_t sub_EB910(uint64_t a1, int a2)
{
  v3 = v2;
  v18[1] = a2;
  v5 = sub_303418();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  v12 = sub_3033A8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_309548();
  v21 = sub_EF794(&qword_3FE950, 255, &type metadata accessor for LegacyEpisodeLockup);
  v19 = a1;

  sub_309438();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for EyebrowBuilder.ListContext.single(_:), v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_EB68(v11, &qword_3FEC50);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  if (*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter))
  {

    sub_302698();
  }

  (*(v6 + 104))(v8, enum case for EyebrowBuilder.Style.default(_:), v5);
  sub_303458();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilder) = sub_303448();
}

uint64_t sub_EBC58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_307D88();
    if (v7)
    {
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = v5;
        v10 = sub_30C098();

        [v9 setText:v10];

        [v9 setHidden:0];
LABEL_9:
        v11 = sub_309468();

        *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleAction) = v11;
      }
    }

    [v5 setHidden:1];
    [v5 setText:0];
    goto LABEL_9;
  }

  return result;
}

void sub_EBD88()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel);
  if (!v1)
  {
    return;
  }

  v6 = v1;
  v2 = sub_3094E8();
  if (v2)
  {
    v3 = v2;
    if ((sub_304288() & 1) == 0)
    {
      v4 = v6;
      v5 = sub_304238();
      [v4 setAttributedText:v5];

      [v4 setHidden:0];
      goto LABEL_8;
    }
  }

  [v6 setText:0];
  [v6 setHidden:1];
LABEL_8:
}

void sub_EBE88(void *a1)
{
  v2 = v1;
  v4 = sub_303418();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLabel];
  if (!v9)
  {
    return;
  }

  v10 = v6;
  v34[0] = v9;
  v11 = sub_3094D8();
  v13 = v12;
  v14 = sub_309508();
  if (v13)
  {
    if (v15)
    {
      v34[0] = v34[0];
      v16 = sub_30C098();
      goto LABEL_20;
    }

    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style] == 2)
    {
      v17 = v14;

      sub_303458();
      v34[4] = sub_309548();
      v34[5] = sub_EF794(&qword_3FE950, 255, &type metadata accessor for LegacyEpisodeLockup);
      v34[1] = a1;
      (*(v5 + 104))(v8, enum case for EyebrowBuilder.Style.default(_:), v10);

      *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerBuilder] = sub_303438();

      v18 = sub_307D08();
      v19 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLockup];
      *v19 = v17;
      v19[8] = v18 & 1;
      [v34[0] setHidden:0];

      return;
    }

    v34[0] = v34[0];
    v24 = sub_307D08();
    if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter])
    {

      v25 = sub_302698();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v31 = [v2 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1;
    v37.value._countAndFlagsBits = v11;
    v37.value._object = v13;
    v39.value._countAndFlagsBits = v25;
    v39.value._object = v27;
    sub_30C4D8(v37, v24 & 1, v39, v31, 0);
    v30 = v32;

LABEL_18:

    if (!v30)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v16 = sub_30C098();
LABEL_20:

LABEL_21:
    [v34[0] setText:v16];

    [v34[0] setHidden:0];
    goto LABEL_22;
  }

  if ((v15 & 1) == 0)
  {
    v34[0] = v34[0];
    v20 = sub_307D08();
    if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter])
    {

      v21 = sub_302698();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v28 = [v2 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1;
    v36.value._countAndFlagsBits = 0;
    v36.value._object = 0;
    v38.value._countAndFlagsBits = v21;
    v38.value._object = v23;
    sub_30C4D8(v36, v20 & 1, v38, v28, 0);
    v30 = v29;
    goto LABEL_18;
  }

  [v34[0] setText:0];
  [v34[0] setHidden:1];
LABEL_22:
  v33 = v34[0];
}

uint64_t sub_EC2B0()
{
  v1 = v0;
  result = swift_beginAccess();
  if (off_40D118)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_30AC38();
    swift_unknownObjectRelease();
    v4 = sub_309A68();
    v6 = v5;
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();

    v7 = sub_2A38D8(v4, v6, v3);

    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playbackStatusObservance) = v7;

    v8 = swift_unknownObjectRetain();
    sub_2A2D04(v8, &off_3BA0A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_EC3D8(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  if (off_40D118)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = sub_30AC38();
    swift_unknownObjectRelease();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();

    v6 = sub_2A3A84(a1, v5);

    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playbackStatusObservance) = v6;

    v7 = swift_unknownObjectRetain();
    sub_2A2D04(v7, &off_3BA0A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_EC4E8()
{
  result = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleAction);
  if (v2)
  {
    v12[3] = sub_30B038();
    v12[4] = sub_EF794(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v12[0] = v2;
    v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
    swift_beginAccess();
    v5 = *(v0 + v3);
    if (v5)
    {
      v6 = type metadata accessor for DynamicTypeLabel();
    }

    else
    {
      v6 = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v5;
    v11[3] = v6;
    sub_EF794(&qword_4025F0, v4, type metadata accessor for EpisodeInfoView);
    swift_retain_n();
    v7 = v5;
    sub_3025C8();

    sub_EB68(v11, &unk_3FBB70);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v0, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_EC6FC(uint64_t a1)
{
  v3 = sub_303748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = objc_opt_self();
  sub_EF7DC(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), &type metadata accessor for EpisodePlayState);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_EF98C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_EF9F0;
  *(v9 + 24) = v8;
  aBlock[4] = sub_293C0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D688;
  aBlock[3] = &block_descriptor_121;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v6 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_EC908(uint64_t a1, uint64_t a2)
{
  sub_EC984();
  sub_ECE7C(a2);
  swift_beginAccess();

  sub_304D48();
}

void sub_EC984()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_style) == 2)
  {
    return;
  }

  v1 = v0;
  v2 = sub_3036E8();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowPlayedCheckmark;
  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowPlayedCheckmark);
  if ((v2 & 1) == 0)
  {
    if (!v4)
    {
      return;
    }

    v5 = 1;
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = 0;
LABEL_8:

    [v4 setHidden:v5];
    return;
  }

  sub_124C4(0, &qword_408100);
  v6 = sub_30CCE8();
  v7 = sub_30C098();
  v8 = [objc_opt_self() systemImageNamed:v7];

  v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
  v10 = [objc_opt_self() configurationWithFont:v6 scale:2];
  [v9 setPreferredSymbolConfiguration:v10];

  v11 = [objc_opt_self() secondaryLabelColor];
  [v9 setTintColor:v11];

  v12 = [objc_allocWithZone(UIView) init];
  [v12 addSubview:v9];
  v13 = [v9 superview];
  if (v13)
  {
    v14 = v13;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_31D480;
    v16 = [v9 leadingAnchor];
    v32 = v8;
    v17 = [v14 leadingAnchor];
    v33 = v6;
    v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

    *(v15 + 32) = v18;
    v19 = [v9 trailingAnchor];
    v20 = [v14 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-0.0];

    *(v15 + 40) = v21;
    v22 = [v9 topAnchor];
    v23 = [v14 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];

    *(v15 + 48) = v24;
    v25 = [v9 bottomAnchor];
    v26 = [v14 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-1.0];

    v8 = v32;
    *(v15 + 56) = v27;
    sub_124C4(0, &qword_403000);
    isa = sub_30C358().super.isa;

    [v31 activateConstraints:isa];

    v6 = v33;
  }

  v29 = *(v1 + v3);
  *(v1 + v3) = v12;
  v34 = v12;

  v30 = sub_E9044();
  [v30 insertArrangedSubview:v34 atIndex:0];

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack) setCustomSpacing:v34 afterView:2.0];
}

void sub_ECE7C(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    sub_EF7DC(a1, v5, &type metadata accessor for EpisodePlayState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v10 = qword_3FAA50;
        v7 = v7;
        if (v10 != -1)
        {
          swift_once();
        }

        v11 = &xmmword_429218;
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      v9 = v7;
      sub_EB68(v5, &unk_40BAB0);
LABEL_10:
      if (qword_3FAA48 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_4291B8;
LABEL_13:
      v13 = v11[3];
      v20 = v11[2];
      v21 = v13;
      v22[0] = v11[4];
      v14 = v22[0];
      *(v22 + 10) = *(v11 + 74);
      v15 = v11[1];
      v19[0] = *v11;
      v19[1] = v15;
      v17[2] = v20;
      v17[3] = v13;
      v18[0] = v14;
      *(v18 + 10) = *(v22 + 10);
      v17[0] = v19[0];
      v17[1] = v15;
      sub_8FC54(v19, v16);
      sub_235E5C(v17);

      return;
    }

    v12 = v7;
    goto LABEL_10;
  }
}

uint64_t sub_ED070(uint64_t a1)
{
  sub_EC984();
  sub_ECE7C(a1);
  swift_beginAccess();

  sub_304D48();
}

uint64_t sub_ED0F0(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeInfoView.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v12 = objc_getAssociatedObject(v6, &unk_40A8E0);
  swift_endAccess();
  if (v12)
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v22 = 0u;
  }

  v23[0] = v20;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4025D8);
    if (swift_dynamicCast())
    {
      v13 = v19;
      goto LABEL_9;
    }
  }

  else
  {
    sub_EB68(v23, &unk_3FBB70);
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_9:
  v21 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();

  v15 = v6;
  v16 = sub_ED3C0(v15, a4, v14, a5, a6);

  sub_30C348();
  if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  isa = sub_30C358().super.isa;

  swift_beginAccess();
  objc_setAssociatedObject(v15, &unk_40A8E0, isa, &dword_0 + 1);
  swift_endAccess();

  return v16;
}

uint64_t sub_ED3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v5 + 24) = a5;
  *(v5 + 32) = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    [v12 addTarget:v5 action:"handleActionFromGestureRecognizer:"];
  }

  return v5;
}

void sub_ED47C(void *a1, void (*a2)(uint64_t))
{
  type metadata accessor for UnpreventableHoverGestureRecognizer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

void sub_ED50C(void *a1, void (*a2)(uint64_t))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

void sub_ED5A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state];
    if (v4 != &dword_0 + 1)
    {
      LOBYTE(v4) = [a1 state] == &dword_0 + 2;
    }

    sub_EF450(v4, a1);
  }
}

void sub_ED630(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EFA6C;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_134;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_ED7E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF1D4;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EF1E0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_22;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_ED990(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF734;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_112;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_EDB40(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF664;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_73;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_EDCF0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF6C4;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_99;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_EDEA0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF694;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_86_0;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_EE050(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 state] == &dword_0 + 1 || objc_msgSend(a1, "state") == &dword_0 + 2;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = a1;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_EF650;
    *(v7 + 24) = v5;
    aBlock[4] = sub_EFADC;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_914CC;
    aBlock[3] = &block_descriptor_60_0;
    v8 = _Block_copy(aBlock);
    v9 = a1;
    v10 = v3;

    [v6 animateWithDuration:65574 delay:v8 options:0 animations:0.12 completion:0.0];

    _Block_release(v8);
  }
}

void sub_EE200(char a1, char a2, uint64_t a3, void *a4)
{
  if (*(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHovering) != (a2 & 1))
  {
    *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHovering) = a2 & 1;
    if (a2)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_style + 1);
    sub_124C4(0, &qword_4019C0);
    if (sub_30C978())
    {
      if (v9)
      {
        v10 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_labelContainerMask);
        if (v10)
        {
          [v10 setAlpha:v8];
        }
      }
    }

    [*(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_durationLabel) setAlpha:1.0];
  }

  if ((a2 & 1) == 0)
  {
    v24 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle);
    *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle) = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_titleLabel);
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [a4 locationInView:v11];
  v30.x = v20;
  v30.y = v21;
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  v22 = CGRectContainsPoint(v31, v30);
  v23 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle);
  *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews11EpisodeView_isHoveringOnTitle) = v22;
  if (v22 != v23)
  {
LABEL_14:
    sub_8C5C0();
  }

LABEL_15:
  ObjectType = swift_getObjectType();
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v26;
    v28 = (*(v26 + 16))(ObjectType, v26);
    if (a2)
    {
      sub_2587EC(a4, ObjectType, v27);
    }

    sub_2A6FC(a2 & 1, a1 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_EE434(char a1, char a2, _BYTE *a3, void *a4)
{
  if (a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHovering] != (a2 & 1))
  {
    a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHovering] = a2 & 1;
  }

  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  v9 = *&a3[v8];
  if (v9)
  {
    if (a2)
    {
      v10 = v9;
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [a4 locationInView:v10];
      v31.x = v19;
      v31.y = v20;
      v32.origin.x = v12;
      v32.origin.y = v14;
      v32.size.width = v16;
      v32.size.height = v18;
      v21 = CGRectContainsPoint(v32, v31);
      v22 = a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle];
      a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle] = v21;
      if (v21 == v22)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v23 = a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle];
      a3[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle] = 0;
      v24 = v9;
      if ((v23 & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    sub_E92D8();
    goto LABEL_9;
  }

LABEL_10:
  ObjectType = swift_getObjectType();
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + 16);
    v29 = a3;
    v30 = v28(ObjectType, v27);
    if (a2)
    {
      sub_2587EC(a4, ObjectType, v27);
    }

    sub_2A6FC(a2 & 1, a1 & 1);
  }
}

void sub_EE618(char a1, char a2, uint64_t a3, void *a4, void *a5)
{
  if (*(a3 + *a5) != (a2 & 1))
  {
    *(a3 + *a5) = a2 & 1;
  }

  ObjectType = swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = v9;
    v11 = (*(v9 + 16))(ObjectType, v9);
    if (a2)
    {
      sub_2587EC(a4, ObjectType, v10);
    }

    sub_2A6FC(a2 & 1, a1 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_EE6FC(char a1, char a2, uint64_t a3, void *a4)
{
  if (*(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_isHovering) != (a2 & 1))
  {
    *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_isHovering) = a2 & 1;
    v7 = *(a3 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer);
    if (!v7)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v8 = v7;
    sub_2A6FC(a2 & 1, 0);
  }

  ObjectType = swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = (*(v10 + 16))(ObjectType, v10);
  if (a2)
  {
    sub_2587EC(a4, ObjectType, v11);
  }

  sub_2A6FC(a2 & 1, a1 & 1);
}

BOOL sub_EE824(uint64_t a1, uint64_t a2)
{
  v4 = sub_30C0D8();
  v6 = v5;
  if (v4 == sub_30C0D8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_30D728();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) || (sub_30D728()) && *(a1 + 24) == *(a2 + 24))
  {
    v10 = type metadata accessor for EpisodeInfoView.CacheKey();
    if (sub_303718())
    {
      return *(a1 + *(v10 + 32)) == *(a2 + *(v10 + 32));
    }
  }

  return 0;
}

double _s23ShelfKitCollectionViews15EpisodeInfoViewC15estimatedHeight3for05traitC012CoreGraphics7CGFloatVAA0efG5StyleO_So07UITraitC0CtFZ_0(char *a1, id a2)
{
  v28 = *a1;
  v2 = (&off_3BA820)[v28];
  v3 = v2[2];
  if (!v3)
  {

    return 0.0;
  }

  v5 = 32;
  v6 = 0.0;
  do
  {
    if (*(v2 + v5) > 1u)
    {
      if (*(v2 + v5) != 2)
      {
        v21 = [a2 preferredContentSizeCategory];
        v22 = v21;
        if (qword_3FAA38 != -1)
        {
          v21 = swift_once();
        }

        __chkstk_darwin(v21);
        sub_303D18();

        [v29 lineHeight];
        v24 = v23;
        [v29 leading];
        v26 = v25;

        v14 = v24 + v26;
        goto LABEL_6;
      }
    }

    else
    {
      if (*(v2 + v5))
      {
        v7 = [a2 preferredContentSizeCategory];
        v8 = v7;
        if (qword_3FAA38 != -1)
        {
          v7 = swift_once();
        }

        __chkstk_darwin(v7);
        sub_303D18();

        v9 = dbl_320390[v28];
        [v29 lineHeight];
        v11 = v10;
        [v29 leading];
        v13 = v12;

        v14 = v9 * (v11 + v13);
LABEL_6:
        v6 = v6 + ceil(v14);
        goto LABEL_7;
      }

      v15 = [a2 preferredContentSizeCategory];
      v16 = v15;
      if (qword_3FAA38 != -1)
      {
        v15 = swift_once();
      }

      __chkstk_darwin(v15);
      sub_303D18();

      [v29 lineHeight];
      v18 = v17;
      [v29 leading];
      v20 = v19;

      v6 = v6 + ceil(v18 + v20) + 1.0;
    }

LABEL_7:
    ++v5;
    --v3;
  }

  while (v3);

  return v6;
}

unint64_t sub_EECD4()
{
  result = qword_402498;
  if (!qword_402498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402498);
  }

  return result;
}

unint64_t sub_EED2C()
{
  result = qword_4024A0;
  if (!qword_4024A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4024A0);
  }

  return result;
}

uint64_t sub_EED80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_EEDDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t getEnumTagSinglePayload for EpisodeInfoView.FooterLockup(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EpisodeInfoView.FooterLockup(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_EEF6C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_303748();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_EF02C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_303748();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_EF0D0()
{
  type metadata accessor for UIContentSizeCategory(319);
  if (v0 <= 0x3F)
  {
    sub_303748();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_EF258()
{
  v1 = sub_303748();
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleAction) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playbackStatusObservance) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowPlayedCheckmark) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLabel) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010);
  swift_allocObject();
  *(v0 + v2) = sub_304D88();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView____lazy_storage___headerStack) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isHoveringOnTitle) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_isSuperviewSelected) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilderCancellables) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_eyebrowBuilder) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerBuilder) = 0;
  v3 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_footerLockup;
  *v3 = 0;
  *(v3 + 8) = 2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

void sub_EF450(char a1, void *a2)
{
  v3 = v2;
  v6 = a1 & 1;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering;
  v21 = v3;
  if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering] == v6)
  {
    v13 = a2;
    v14 = v21;
  }

  else
  {
    v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_isHovering] = a1 & 1;
    v8 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_blurView];
    v9 = a2;
    v10 = v21;
    [v8 setHidden:v6];
    v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_background];
    if (*(v21 + v7))
    {
      if (qword_3FAFB8 != -1)
      {
        swift_once();
      }

      v12 = qword_40DB80;
    }

    else
    {
      v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
    }

    v15 = v12;
    [v11 setBackgroundColor:v12];
  }

  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 16);
    v20 = v21;
    v21 = v19(ObjectType, v18);
    if (a1)
    {
      sub_2587EC(a2, ObjectType, v18);
    }

    sub_2A6FC(a1 & 1, 0);
  }

  else
  {
    v20 = a2;
  }
}

uint64_t sub_EF6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_EF75C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_EF794(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_EF7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_EF844()
{
  v1 = *(sub_303748() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_301DC8();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_EF98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_303748();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF9F0()
{
  v1 = *(sub_303748() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_EC908(v2, v3);
}

uint64_t sub_EFB1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402600);
  swift_allocObject();
  result = sub_303D08();
  qword_429150 = result;
  return result;
}

Swift::Int sub_EFB6C()
{
  v1 = *v0;
  sub_30D7F8();
  sub_30D808(v1);
  sub_30C0D8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_EFBE8()
{
  sub_30D808(*v0);
  sub_30C0D8();
  sub_30C1F8();
}

Swift::Int sub_EFC54()
{
  v1 = *v0;
  sub_30D7F8();
  sub_30D808(v1);
  sub_30C0D8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_EFCCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = sub_30C0D8();
    v4 = v3;
    if (v2 == sub_30C0D8() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_30D728();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_EFD6C@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_3FAA58 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_429278;
    }

    else
    {
      if (qword_3FAA60 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_4292D8;
    }
  }

  else if (a1)
  {
    if (qword_3FAA48 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_4291B8;
  }

  else
  {
    if (qword_3FAA40 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_429158;
  }

  v6 = v5[3];
  v15 = v5[2];
  v16 = v6;
  v17[0] = v5[4];
  *(v17 + 10) = *(v5 + 74);
  v7 = v5[1];
  v14[0] = *v5;
  v14[1] = v7;
  v12[2] = v15;
  v12[3] = v16;
  v13[0] = v17[0];
  *(v13 + 10) = *(v17 + 10);
  v12[0] = v14[0];
  v12[1] = v7;
  sub_8FC54(v14, &v11);
  v8 = sub_2DAA3C(v12, a2);
  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

  result = sub_F0520(v14);
  *a3 = v9;
  return result;
}

void sub_EFF40()
{
  if (qword_3FACF0 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429C70;
  v1[3] = unk_429C80;
  v2[0] = xmmword_429C90;
  *(v2 + 10) = *(&xmmword_429C90 + 10);
  v1[0] = xmmword_429C50;
  v1[1] = unk_429C60;
  sub_8FC54(v1, v3);
  if (qword_3FAD20 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429EB0;
  v3[3] = unk_429EC0;
  v4[0] = xmmword_429ED0;
  *(v4 + 10) = *(&xmmword_429ED0 + 10);
  v3[0] = xmmword_429E90;
  v3[1] = unk_429EA0;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_429158);
}

void sub_F0044(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 40);
  if (*(a1 + 89))
  {
    v15 = a1[1];
    v17 = *a1;
    sub_A01F8(*(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 88));
    v6 = v15;
    v5 = v17;
  }

  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 4);
  v12 = *(a2 + 40);
  if (*(a2 + 89))
  {
    v13 = *(a2 + 88);
    v14 = *(a2 + 10);
    v16 = a2[3];
    v18 = a2[4];
    sub_A01F8(v10, *(&v10 + 1), v9, *(&v9 + 1), v11, v12);
    v11 = v14;
    v12 = v13;
    v10 = v16;
    v9 = v18;
  }

  *(a3 + 48) = v10;
  *(a3 + 64) = v9;
  *(a3 + 80) = v11;
  *(a3 + 88) = v12;
  *(a3 + 89) = 1;
}

void sub_F0110()
{
  if (qword_3FACA8 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429910;
  v1[3] = unk_429920;
  v2[0] = xmmword_429930;
  *(v2 + 10) = *(&xmmword_429930 + 10);
  v1[0] = xmmword_4298F0;
  v1[1] = unk_429900;
  sub_8FC54(v1, v3);
  if (qword_3FACB8 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_4299D0;
  v3[3] = unk_4299E0;
  v4[0] = xmmword_4299F0;
  *(v4 + 10) = *(&xmmword_4299F0 + 10);
  v3[0] = xmmword_4299B0;
  v3[1] = unk_4299C0;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_4291B8);
}

void sub_F0214()
{
  if (qword_3FACB0 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429970;
  v1[3] = unk_429980;
  v2[0] = xmmword_429990;
  *(v2 + 10) = *(&xmmword_429990 + 10);
  v1[0] = xmmword_429950;
  v1[1] = unk_429960;
  sub_8FC54(v1, v3);
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429A30;
  v3[3] = unk_429A40;
  v4[0] = xmmword_429A50;
  *(v4 + 10) = *(&xmmword_429A50 + 10);
  v3[0] = xmmword_429A10;
  v3[1] = unk_429A20;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_429218);
}

void sub_F0318()
{
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429B50;
  v1[3] = unk_429B60;
  v2[0] = xmmword_429B70;
  *(v2 + 10) = *(&xmmword_429B70 + 10);
  v1[0] = xmmword_429B30;
  v1[1] = unk_429B40;
  sub_8FC54(v1, v3);
  if (qword_3FACE8 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429C10;
  v3[3] = unk_429C20;
  v4[0] = xmmword_429C30;
  *(v4 + 10) = *(&xmmword_429C30 + 10);
  v3[0] = xmmword_429BF0;
  v3[1] = unk_429C00;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_429278);
}

void sub_F041C()
{
  if (qword_3FACD8 != -1)
  {
    swift_once();
  }

  v1[2] = xmmword_429B50;
  v1[3] = unk_429B60;
  v2[0] = xmmword_429B70;
  *(v2 + 10) = *(&xmmword_429B70 + 10);
  v1[0] = xmmword_429B30;
  v1[1] = unk_429B40;
  sub_8FC54(v1, v3);
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v3[2] = xmmword_429D30;
  v3[3] = unk_429D40;
  v4[0] = xmmword_429D50;
  *(v4 + 10) = *(&xmmword_429D50 + 10);
  v3[0] = xmmword_429D10;
  v3[1] = unk_429D20;
  sub_8FC54(v3, &v0);
  sub_F0044(v1, v3, &xmmword_4292D8);
}

uint64_t sub_F0520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F0598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_F05E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_F0630()
{
  result = qword_402608;
  if (!qword_402608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402608);
  }

  return result;
}

unint64_t sub_F0688()
{
  result = qword_402610;
  if (!qword_402610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402610);
  }

  return result;
}

uint64_t sub_F06DC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_303748();
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_3039A8();
  swift_storeEnumTagMultiPayload();
  v8 = sub_303718();
  sub_2B454(v4);
  result = sub_2B454(v7);
  *a1 = v8 & 1;
  return result;
}

uint64_t sub_F07D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402618);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_F08A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402618);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeTextAreaView()
{
  result = qword_402678;
  if (!qword_402678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F09A0()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_F0A3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_F0A3C()
{
  if (!qword_402688)
  {
    v0 = sub_30A638();
    if (!v1)
    {
      atomic_store(v0, &qword_402688);
    }
  }
}

uint64_t sub_F0AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026C0);
  __chkstk_darwin(v1);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026C8);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  if (*(v0 + 8) == 1)
  {
    v7 = sub_305BE8();
    __chkstk_darwin(v7);
    *(&v21 - 2) = v0;
    sub_302C98();
    v8 = &v6[*(v4 + 36)];
    *v8 = sub_F1210;
    v8[1] = 0;
    sub_F1418(v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026D0);
    sub_F123C();
    sub_F1320();
    sub_305D48();
    return sub_F1488(v6);
  }

  else
  {
    v10 = sub_F10B8();
    v14 = v13;
    if (v13)
    {
      v15 = v10;
      v16 = v11;
      v17 = v12;
      v18 = *(v0 + 16);
      KeyPath = swift_getKeyPath();
      v20 = v17 & 1;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v20 = 0;
      KeyPath = 0;
      v18 = 0;
    }

    *v3 = v15;
    *(v3 + 1) = v16;
    *(v3 + 2) = v20;
    *(v3 + 3) = v14;
    *(v3 + 4) = KeyPath;
    *(v3 + 5) = v18;
    v3[48] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026D0);
    sub_F123C();
    sub_F1320();
    return sub_305D48();
  }
}

uint64_t sub_F0D30()
{
  v0 = sub_302C28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_F10B8();
  v37 = v1;
  if (v7)
  {
    v8 = v6;
    v9 = v4;
    v10 = v5;
    sub_EBD8(v4, v5, v6 & 1);

    sub_302C38();
    v11 = sub_302CF8();
    (*(v1 + 8))(v3, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_315430;
    *(v12 + 32) = v11;
    sub_302CD8();

    v13 = sub_302CE8();
    sub_EBC8(v9, v10, v8 & 1);
  }

  else
  {
    v13 = sub_302CE8();
  }

  v14 = sub_309458();
  if (v17)
  {
    v18 = v14;
    v19 = v15;
    v20 = v16;
    sub_306158();
    v35 = v20 & 1;
    v39 = v20 & 1;
    v21 = sub_306388();
    v32 = v0;
    v23 = v22;
    v36 = v13;
    v25 = v24;
    v34 = v18;

    v38 = sub_305E98();
    sub_306348();
    v33 = v19;
    sub_EBC8(v21, v23, v25 & 1);

    sub_302C38();
    v26 = sub_302CF8();
    (*(v37 + 8))(v3, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_315430;
    *(v27 + 32) = v26;
    sub_302CD8();

    v28 = sub_302CE8();
    sub_EBC8(v34, v33, v35);
    v13 = v36;
  }

  else
  {
    v28 = sub_302CE8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_315420;
  *(v29 + 32) = v13;
  *(v29 + 40) = v28;
  v30 = sub_302CD8();

  return v30;
}

uint64_t sub_F10B8()
{
  result = sub_309538();
  v3 = v2;
  if (v4)
  {
    v5 = v1;
    v6 = result;
    type metadata accessor for EpisodeTextAreaView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402618);
    sub_30A628();
    if (v13 == 1)
    {
      sub_306198();
    }

    else
    {
      sub_3061B8();
    }

    v7 = sub_306318();
    v9 = v8;
    v11 = v10;
    sub_306168();
    v12 = sub_306388();

    sub_EBC8(v7, v9, v11 & 1);

    sub_EBC8(v6, v5, v3 & 1);

    return v12;
  }

  return result;
}

unint64_t sub_F123C()
{
  result = qword_4026D8;
  if (!qword_4026D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4026C8);
    sub_F12C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4026D8);
  }

  return result;
}

unint64_t sub_F12C8()
{
  result = qword_4026E0;
  if (!qword_4026E0)
  {
    sub_302CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4026E0);
  }

  return result;
}

unint64_t sub_F1320()
{
  result = qword_4026E8;
  if (!qword_4026E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4026D0);
    sub_4A194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4026E8);
  }

  return result;
}

unint64_t sub_F13A4()
{
  result = qword_3FD448;
  if (!qword_3FD448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD448);
  }

  return result;
}

uint64_t sub_F1418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F1488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4026C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_F14F4()
{
  result = qword_4026F8;
  if (!qword_4026F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402700);
    sub_F123C();
    sub_F1320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4026F8);
  }

  return result;
}

uint64_t sub_F15A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v3 - 8);
  v66 = &v61 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402738);
  __chkstk_darwin(v67);
  v79 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = (&v61 - v7);
  v8 = sub_305A08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodeTextAreaView();
  __chkstk_darwin(v12);
  v78 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = (&v61 - v15);
  v16 = type metadata accessor for AccessibilityEpisodeArtworkView(0);
  __chkstk_darwin(v16);
  v70 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v61 - v19);
  v77 = sub_30B368();
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402740);
  __chkstk_darwin(v25 - 8);
  v74 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  *v29 = sub_305AA8();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402748) + 44);
  v72 = v29;
  sub_F1FC8(a1, &v29[v30]);
  type metadata accessor for AccessibilityChartEpisodeCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  sub_305168();
  v73 = v24;
  sub_30B378();
  v31 = *a1;
  *v20 = *a1;
  v81 = 0x4049000000000000;
  sub_70648();
  swift_retain_n();
  v75 = v20;
  sub_305158();
  v32 = *(a1 + 8);
  v33 = *(a1 + 16);

  v65 = v33;
  if ((v33 & 1) == 0)
  {
    sub_30C7A8();
    v34 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v62 = v11;
  v63 = v9;
  v64 = v8;
  v35 = v80;
  *v80 = v31;
  *(v35 + 8) = 0;
  v35[2] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);

  sub_30B8E8();
  sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402750);
  sub_EC8C(&qword_402758, &qword_402750);
  sub_30A618();

  if ((v65 & 1) == 0)
  {
    sub_30C7A8();
    v36 = sub_306088();
    sub_304108();

    v37 = v62;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v63 + 8))(v37, v64);
    v32 = v81;
  }

  v38 = *(type metadata accessor for ChartEpisodeEyebrowView(0) + 28);
  KeyPath = swift_getKeyPath();
  v40 = v68;
  *(v68 + v38) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC568);
  swift_storeEnumTagMultiPayload();
  *v40 = v31;
  v40[1] = v32;
  sub_30A478();
  v41 = sub_3033A8();
  (*(*(v41 - 8) + 56))(v66, 1, 1, v41);

  sub_30A458();
  sub_F2760(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator);
  v40[2] = sub_3053C8();
  v40[3] = v42;
  sub_306248();
  sub_3061C8();
  v43 = sub_306218();

  v44 = swift_getKeyPath();
  v45 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402760) + 36));
  *v45 = v44;
  v45[1] = v43;
  LODWORD(v44) = sub_305E98();
  *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402768) + 36)) = v44;
  *(v40 + *(v67 + 36)) = 256;
  v46 = v74;
  sub_EB00(v72, v74, &qword_402740);
  v47 = v69;
  v48 = *(v69 + 16);
  v49 = v76;
  v48(v76, v73, v77);
  v50 = v70;
  sub_F2D40(v75, v70, type metadata accessor for AccessibilityEpisodeArtworkView);
  sub_F2D40(v80, v78, type metadata accessor for EpisodeTextAreaView);
  sub_EB00(v40, v79, &qword_402738);
  v51 = v46;
  v52 = v71;
  sub_EB00(v51, v71, &qword_402740);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402770);
  v54 = v49;
  v55 = v77;
  v48((v52 + v53[12]), v54, v77);
  sub_F2D40(v50, v52 + v53[16], type metadata accessor for AccessibilityEpisodeArtworkView);
  v56 = v78;
  sub_F2D40(v78, v52 + v53[20], type metadata accessor for EpisodeTextAreaView);
  v57 = v52 + v53[24];
  v58 = v79;
  sub_EB00(v79, v57, &qword_402738);
  sub_EB68(v40, &qword_402738);
  sub_F2DA8(v80, type metadata accessor for EpisodeTextAreaView);
  sub_F2DA8(v75, type metadata accessor for AccessibilityEpisodeArtworkView);
  v59 = *(v47 + 8);
  v59(v73, v55);
  sub_EB68(v72, &qword_402740);
  sub_EB68(v58, &qword_402738);
  sub_F2DA8(v56, type metadata accessor for EpisodeTextAreaView);
  sub_F2DA8(v50, type metadata accessor for AccessibilityEpisodeArtworkView);
  v59(v76, v55);
  return sub_EB68(v74, &qword_402740);
}

uint64_t sub_F1FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_305A08();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402778);
  __chkstk_darwin(v44);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = *a1;
  v12 = sub_307DC8();
  if (v13)
  {
    v47 = v12;
    v48 = v13;
    sub_E504();
    v14 = sub_3063C8();
    v16 = v15;
    v18 = v17;
    sub_306168();
    v40 = v7;
    sub_306198();
    sub_306218();
    v37 = a2;
    v38 = a1;

    v19 = sub_306388();
    v36 = v20;
    v22 = v21;
    v39 = v11;
    v24 = v23;
    a2 = v37;
    a1 = v38;

    sub_EBC8(v14, v16, v18 & 1);

    v25 = v22 & 1;
    v7 = v40;
    v46 = v19;
    v26 = v19;
    v27 = v36;
    sub_EBD8(v26, v36, v25);
    v45 = v24;
    v11 = v39;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v27 = 0;
    v25 = 0;
  }

  v28 = *(a1 + 16);

  if ((v28 & 1) == 0)
  {
    sub_30C7A8();
    v29 = sub_306088();
    sub_304108();

    v30 = v41;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v42 + 8))(v30, v43);
  }

  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  type metadata accessor for EpisodeContextMenuWithStatusView();
  v47 = 0x4020000000000000;
  sub_70648();
  sub_305158();
  *v10 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA68);

  sub_30B8E8();
  *(v10 + 1) = sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198);
  sub_30B8E8();
  v31 = sub_303B28();

  *(v10 + 2) = v31;
  *&v10[*(v44 + 36)] = sub_305E98();
  sub_EB00(v10, v7, &qword_402778);
  v33 = v45;
  v32 = v46;
  *a2 = v46;
  *(a2 + 8) = v27;
  *(a2 + 16) = v25;
  *(a2 + 24) = v33;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402780);
  sub_EB00(v7, a2 + *(v34 + 64), &qword_402778);
  sub_4A24C(v32, v27, v25, v33);
  sub_4A290(v32, v27, v25, v33);
  sub_EB68(v10, &qword_402778);
  sub_EB68(v7, &qword_402778);
  return sub_4A290(v32, v27, v25, v33);
}

double sub_F2440@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402720);
  sub_F15A0(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402728) + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  LOBYTE(KeyPath) = sub_306128();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402730) + 36);
  *v6 = KeyPath;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_F2508@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a2;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  sub_70648();
  sub_305158();
  v5 = sub_307048();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_F25C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F2760(&qword_402788, type metadata accessor for AccessibilityChartEpisodeCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_F2760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F285C()
{
  v0 = sub_3054E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  sub_309508();
  if (v7)
  {
    return sub_30A448();
  }

  v9 = sub_30A448();
  v11 = v10;
  type metadata accessor for ChartEpisodeEyebrowView(0);
  sub_33CF4(v6);
  (*(v1 + 104))(v3, enum case for LayoutDirection.rightToLeft(_:), v0);
  v12 = sub_3054D8();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  v16.value._countAndFlagsBits = v9;
  v16.value._object = v11;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v14 = sub_30C4D8(v16, 0, v17, v12 & 1, 0);

  return v14;
}

uint64_t sub_F2A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402900);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_F285C();
  sub_307D08();
  v3 = enum case for ExplicitAppendingView.Separator.eyebrowSeparator(_:);
  v4 = sub_309D08();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  return sub_309CF8();
}

uint64_t sub_F2BC4(uint64_t a1)
{
  v2 = sub_3054E8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_305798();
}

uint64_t sub_F2C90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305848();
  *a1 = result;
  return result;
}

uint64_t sub_F2CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305848();
  *a1 = result;
  return result;
}

uint64_t sub_F2D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_F2DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_F2E1C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_F2EEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F2F9C()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_30B9A8();
    if (v1 <= 0x3F)
    {
      sub_F306C();
      if (v2 <= 0x3F)
      {
        sub_F334C(319, &unk_402808, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_F306C()
{
  if (!qword_402800)
  {
    sub_30A478();
    sub_F2760(&qword_3FEC58, &type metadata accessor for EpisodeCaptionGenerator);
    v0 = sub_3053D8();
    if (!v1)
    {
      atomic_store(v0, &qword_402800);
    }
  }
}

uint64_t sub_F3114(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_F31E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F3294()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_F334C(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph);
    if (v1 <= 0x3F)
    {
      sub_7A2DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_F334C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3050B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_F33A4()
{
  result = qword_4028D8;
  if (!qword_4028D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402730);
    sub_F3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4028D8);
  }

  return result;
}

unint64_t sub_F3430()
{
  result = qword_4028E0;
  if (!qword_4028E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402728);
    sub_EC8C(&qword_4028E8, &qword_4028F0);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4028E0);
  }

  return result;
}

unint64_t sub_F34E8()
{
  result = qword_4028F8;
  if (!qword_4028F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4028F8);
  }

  return result;
}

unint64_t sub_F355C()
{
  result = qword_402908;
  if (!qword_402908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402910);
    sub_F2760(&qword_402918, &type metadata accessor for ExplicitAppendingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402908);
  }

  return result;
}

uint64_t sub_F3634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for PlayButtonWrapper();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v87 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v5 - 8);
  v95 = &v82 - v6;
  v7 = sub_309778();
  v99 = *(v7 - 8);
  v100 = v7;
  __chkstk_darwin(v7);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402958);
  __chkstk_darwin(v9 - 8);
  v103 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v82 - v12;
  v13 = sub_305F08();
  v105 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402960);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC560);
  __chkstk_darwin(v18 - 8);
  v84 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v90 = sub_305A08();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for EpisodeTextAreaView();
  __chkstk_darwin(v93);
  v98 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v92 = (&v82 - v29);
  __chkstk_darwin(v30);
  v111 = &v82 - v31;
  v32 = sub_30B368();
  v96 = *(v32 - 8);
  v97 = v32;
  __chkstk_darwin(v32);
  v109 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v82 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402968);
  __chkstk_darwin(v37 - 8);
  v108 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v106 = &v82 - v40;
  sub_F4488(&v82 - v40);
  v107 = v36;
  sub_30B378();
  v41 = a1[2];
  LODWORD(v36) = *(a1 + 24);

  v42 = v41;
  v85 = v36;
  if ((v36 & 1) == 0)
  {
    sub_30C7A8();
    v43 = v25;
    v44 = sub_306088();
    sub_304108();

    v25 = v43;
    v45 = v88;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v89 + 8))(v45, v90);
    v42 = v112;
  }

  v91 = v42;
  v94 = v41;
  v46 = *a1;
  type metadata accessor for AccessibilityEpisodeCell(0);
  sub_33D1C(v25);
  v47 = v105;
  (*(v105 + 104))(v22, enum case for UserInterfaceSizeClass.regular(_:), v13);
  (*(v47 + 56))(v22, 0, 1, v13);
  v48 = *(v15 + 48);
  sub_EB00(v25, v17, &qword_3FC560);
  sub_EB00(v22, &v17[v48], &qword_3FC560);
  v49 = *(v47 + 48);
  if (v49(v17, 1, v13) == 1)
  {
    sub_EB68(v22, &qword_3FC560);
    sub_EB68(v25, &qword_3FC560);
    v50 = v49(&v17[v48], 1, v13);
    v51 = v94;
    if (v50 == 1)
    {
      sub_EB68(v17, &qword_3FC560);
      v52 = 3;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v82 = v25;
  v53 = v84;
  sub_EB00(v17, v84, &qword_3FC560);
  if (v49(&v17[v48], 1, v13) == 1)
  {
    sub_EB68(v22, &qword_3FC560);
    sub_EB68(v82, &qword_3FC560);
    (*(v105 + 8))(v53, v13);
    v51 = v94;
LABEL_8:
    sub_EB68(v17, &qword_402960);
    v52 = 4;
    goto LABEL_12;
  }

  v54 = v105;
  v55 = v83;
  (*(v105 + 32))(v83, &v17[v48], v13);
  sub_F5E1C(&qword_402978, &type metadata accessor for UserInterfaceSizeClass);
  v56 = sub_30C018();
  v57 = *(v54 + 8);
  v57(v55, v13);
  sub_EB68(v22, &qword_3FC560);
  sub_EB68(v82, &qword_3FC560);
  v57(v53, v13);
  sub_EB68(v17, &qword_3FC560);
  v52 = 3;
  if ((v56 & 1) == 0)
  {
    v52 = 4;
  }

  v51 = v94;
LABEL_12:
  v58 = v92;
  *v92 = v46;
  *(v58 + 8) = 1;
  *(v58 + 16) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);

  sub_30B8E8();
  sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402750);
  sub_EC8C(&qword_402758, &qword_402750);
  sub_30A618();

  sub_F68BC(v58, v111, type metadata accessor for EpisodeTextAreaView);

  v59 = v95;
  sub_309758();
  v61 = v99;
  v60 = v100;
  if ((*(v99 + 48))(v59, 1, v100) == 1)
  {
    sub_EB68(v59, &qword_3FEA58);
    v62 = 1;
    v63 = v102;
    v64 = v110;
  }

  else
  {
    v65 = v86;
    (*(v61 + 32))(v86, v59, v60);
    v66 = v87;
    (*(v61 + 16))(v87, v65, v60);
    (*(v61 + 56))(v66, 0, 1, v60);

    if ((v85 & 1) == 0)
    {
      sub_30C7A8();
      v67 = sub_306088();
      sub_304108();

      v68 = v88;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v89 + 8))(v68, v90);
      v51 = v112;
    }

    (*(v61 + 8))(v65, v60);
    v63 = v102;
    v69 = v66 + *(v102 + 20);
    *v69 = 0;
    *(v69 + 8) = 1;
    *(v66 + *(v63 + 24)) = v51;
    v70 = v66 + *(v63 + 28);
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 1;
    v64 = v110;
    sub_F68BC(v66, v110, type metadata accessor for PlayButtonWrapper);
    v62 = 0;
  }

  (*(v101 + 56))(v64, v62, 1, v63);
  v71 = v108;
  sub_EB00(v106, v108, &qword_402968);
  v73 = v96;
  v72 = v97;
  v74 = *(v96 + 16);
  v75 = v109;
  v74(v109, v107, v97);
  v76 = v98;
  sub_F69BC(v111, v98, type metadata accessor for EpisodeTextAreaView);
  v77 = v103;
  sub_EB00(v64, v103, &qword_402958);
  v78 = v104;
  sub_EB00(v71, v104, &qword_402968);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402970);
  v74((v78 + v79[12]), v75, v72);
  sub_F69BC(v76, v78 + v79[16], type metadata accessor for EpisodeTextAreaView);
  sub_EB00(v77, v78 + v79[20], &qword_402958);
  sub_EB68(v110, &qword_402958);
  sub_F6A24(v111, type metadata accessor for EpisodeTextAreaView);
  v80 = *(v73 + 8);
  v80(v107, v72);
  sub_EB68(v106, &qword_402968);
  sub_EB68(v77, &qword_402958);
  sub_F6A24(v76, type metadata accessor for EpisodeTextAreaView);
  v80(v109, v72);
  return sub_EB68(v108, &qword_402968);
}

uint64_t sub_F4488@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402980);
  __chkstk_darwin(v29);
  v3 = v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402988);
  __chkstk_darwin(v4);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402990);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402998);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029A0);
  __chkstk_darwin(v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  if (*(v1 + 8) == 1)
  {
    *v21 = sub_305A98();
    *(v21 + 1) = 0;
    v21[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029C0);
    sub_F4A60(v1, &v21[*(v22 + 44)]);
    sub_F4EF4(0, 1, v15);
    sub_EB00(v21, v18, &qword_4029A0);
    v28[0] = v4;
    v28[1] = v7;
    sub_EB00(v15, v12, &qword_402998);
    sub_EB00(v18, v9, &qword_4029A0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029C8);
    sub_EB00(v12, &v9[*(v23 + 48)], &qword_402998);
    sub_EB68(v12, &qword_402998);
    sub_EB68(v18, &qword_4029A0);
    sub_EB00(v9, v6, &qword_402990);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_4029B0, &qword_402990);
    sub_EC8C(&qword_4029B8, &qword_402980);
    sub_305D48();
    sub_EB68(v9, &qword_402990);
    sub_EB68(v15, &qword_402998);
    v24 = v21;
    v25 = &qword_4029A0;
  }

  else
  {
    *v3 = sub_306098();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029A8);
    sub_F53E0(&v3[*(v26 + 44)]);
    sub_EB00(v3, v6, &qword_402980);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_4029B0, &qword_402990);
    sub_EC8C(&qword_4029B8, &qword_402980);
    sub_305D48();
    v24 = v3;
    v25 = &qword_402980;
  }

  return sub_EB68(v24, v25);
}

uint64_t sub_F4968@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402938);
  sub_F3634(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402940) + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  LOBYTE(KeyPath) = sub_306128();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402948) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402950);
  v8 = (a1 + *(result + 36));
  *v8 = sub_F1210;
  v8[1] = 0;
  return result;
}

uint64_t sub_F4A60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402778);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for AccessibilityEpisodeArtworkView(0);
  __chkstk_darwin(v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  *(v19 - v14) = *a1;
  v19[1] = 0x4049000000000000;
  sub_70648();

  sub_305158();
  sub_F4CA4(v9);
  sub_F69BC(v15, v12, type metadata accessor for AccessibilityEpisodeArtworkView);
  sub_EB00(v9, v6, &qword_402778);
  sub_F69BC(v12, a2, type metadata accessor for AccessibilityEpisodeArtworkView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029D8);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_EB00(v6, a2 + *(v16 + 64), &qword_402778);
  sub_EB68(v9, &qword_402778);
  sub_F6A24(v15, type metadata accessor for AccessibilityEpisodeArtworkView);
  sub_EB68(v6, &qword_402778);
  return sub_F6A24(v12, type metadata accessor for AccessibilityEpisodeArtworkView);
}

uint64_t sub_F4CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);

  if ((v7 & 1) == 0)
  {
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v9 = *v1;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  type metadata accessor for EpisodeContextMenuWithStatusView();
  v13[1] = 0x4020000000000000;
  sub_70648();
  sub_305158();
  *a1 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA68);

  sub_30B8E8();
  *(a1 + 8) = sub_303B28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC198);
  sub_30B8E8();
  v10 = sub_303B28();

  *(a1 + 16) = v10;
  v11 = sub_305E98();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402778);
  *(a1 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_F4EF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FF2B8);
  __chkstk_darwin(v5 - 8);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC50);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_305A08();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3091E8();
  v38 = *(v14 - 8);
  __chkstk_darwin(v14);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029D0);
  __chkstk_darwin(v36);
  v17 = &v33 - v16;
  v18 = *(v3 + 24);

  if ((v18 & 1) == 0)
  {
    sub_30C7A8();
    v19 = sub_306088();
    v34 = v10;
    v35 = v3;
    v20 = a3;
    v21 = v19;
    sub_304108();

    a3 = v20;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v34);
  }

  v22 = sub_3033A8();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);

  if (sub_3091C8())
  {
    v23 = enum case for Text.Case.uppercase(_:);
    v24 = sub_306358();
    v25 = *(v24 - 8);
    v26 = v41;
    (*(v25 + 104))(v41, v23, v24);
    (*(v25 + 56))(v26, 0, 1, v24);
  }

  else
  {
    v27 = sub_306358();
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  }

  v28 = v37;
  sub_3091D8();
  sub_306248();
  sub_3061C8();
  v29 = sub_306218();

  KeyPath = swift_getKeyPath();
  (*(v38 + 32))(v17, v28, v14);
  v31 = &v17[*(v36 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  LODWORD(KeyPath) = sub_305E98();
  sub_F692C(v17, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402998);
  *(a3 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_F53E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  *v13 = sub_305AA8();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029F0);
  sub_F5624(&v13[*(v14 + 44)]);
  *v7 = sub_305BE8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029F8);
  sub_F5830(&v7[*(v15 + 44)]);
  sub_EB00(v13, v10, &qword_4029E8);
  sub_EB00(v7, v4, &qword_4029E0);
  sub_EB00(v10, a1, &qword_4029E8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A00);
  sub_EB00(v4, a1 + *(v16 + 48), &qword_4029E0);
  sub_EB68(v7, &qword_4029E0);
  sub_EB68(v13, &qword_4029E8);
  sub_EB68(v4, &qword_4029E0);
  return sub_EB68(v10, &qword_4029E8);
}

uint64_t sub_F5624@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402778);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402998);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_F4EF4(1, 0, &v17 - v12);
  sub_F4CA4(v7);
  sub_EB00(v13, v10, &qword_402998);
  sub_EB00(v7, v4, &qword_402778);
  sub_EB00(v10, a1, &qword_402998);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A28);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_EB00(v4, a1 + *(v14 + 64), &qword_402778);
  sub_EB68(v7, &qword_402778);
  sub_EB68(v13, &qword_402998);
  sub_EB68(v4, &qword_402778);
  return sub_EB68(v10, &qword_402998);
}

uint64_t sub_F5830@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402998);
  __chkstk_darwin(v1 - 8);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402778);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A08);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  *v17 = sub_305AA8();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A10) + 44)];
  sub_F4CA4(v11);
  sub_EB00(v11, v8, &qword_402778);
  *v18 = 0;
  v18[8] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A18);
  sub_EB00(v8, &v18[*(v19 + 48)], &qword_402778);
  sub_EB68(v11, &qword_402778);
  sub_EB68(v8, &qword_402778);
  sub_F4EF4(0, 1, v5);
  sub_EB00(v17, v14, &qword_402A08);
  v20 = v24;
  sub_EB00(v5, v24, &qword_402998);
  v21 = v25;
  sub_EB00(v14, v25, &qword_402A08);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402A20);
  sub_EB00(v20, v21 + *(v22 + 48), &qword_402998);
  sub_EB68(v5, &qword_402998);
  sub_EB68(v17, &qword_402A08);
  sub_EB68(v20, &qword_402998);
  return sub_EB68(v14, &qword_402A08);
}

uint64_t sub_F5B54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_307038();
  v8 = sub_3070F8();
  v10 = v9;
  if (v8 == sub_3070F8() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_30D728();
  }

  v13 = sub_307048();
  (*(*(v13 - 8) + 8))(a1, v13);
  *a4 = v7;
  *(a4 + 8) = v12 & 1;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v14 = *(a3 + 28);
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC558);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_F5C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F5E1C(&qword_402A30, type metadata accessor for AccessibilityEpisodeCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_F5E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F5F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v43 = sub_3055F8();
  __chkstk_darwin(v43);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v11 - 8);
  v45 = sub_30B198();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402B98);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402BA0);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  __chkstk_darwin(v18);
  v44 = &v42 - v20;
  sub_307DA8();
  type metadata accessor for AccessibilityEpisodeArtworkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  sub_305168();
  sub_305168();
  v21 = sub_303DF8();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  sub_306C38();
  sub_30B178();
  v22 = v43;
  v23 = *(v43 + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_305B68();
  (*(*(v25 - 8) + 104))(&v7[v23], v24, v25);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  sub_307F28();
  v31 = sub_307F38();
  (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
  v32 = sub_F5E1C(&qword_401F00, &type metadata accessor for Artwork);
  v33 = sub_F5E1C(&qword_401E78, &type metadata accessor for RoundedRectangle);
  v34 = v45;
  sub_306458();
  sub_EB68(v5, &qword_401DC8);
  sub_F6A24(v7, &type metadata accessor for RoundedRectangle);
  (*(v46 + 8))(v13, v34);
  v53 = v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402BA8);
  *&v54 = v34;
  *(&v54 + 1) = v22;
  *&v55 = v32;
  *(&v55 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_F7130();
  v38 = v44;
  v39 = v47;
  sub_306698();
  (*(v48 + 8))(v17, v39);
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB680);
  *&v54 = v39;
  *(&v54 + 1) = v35;
  *&v55 = OpaqueTypeConformance2;
  *(&v55 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  sub_D484();
  v40 = v49;
  sub_306798();
  return (*(v50 + 8))(v38, v40);
}

uint64_t sub_F65CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402BC8);
  __chkstk_darwin(v2);
  v4 = v12 - v3;
  v5 = sub_309528();
  if (v6)
  {
    v12[0] = v5;
    v12[1] = v6;
    sub_E504();
    *v4 = sub_3063C8();
    *(v4 + 1) = v7;
    v4[16] = v8 & 1;
    *(v4 + 3) = v9;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402BC0);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402BC0);
    (*(*(v10 - 8) + 16))(v4, a1, v10);
    swift_storeEnumTagMultiPayload();
  }

  sub_EC8C(&qword_402BB8, &qword_402BC0);
  return sub_305D48();
}

uint64_t sub_F6774@<X0>(uint64_t *a1@<X8>)
{
  sub_309528();
  if (v2)
  {
    sub_E504();
    result = sub_3063C8();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_F6808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC560);
  __chkstk_darwin(v2 - 8);
  sub_EB00(a1, &v5 - v3, &qword_3FC560);
  return sub_3057F8();
}

uint64_t sub_F68BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_F692C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4029D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F69BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_F6A24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_F6A98(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_F6B68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F6C18()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_7A2DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_F6CB0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402AC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_F6D80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402AC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F6E30()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_D7D8();
    if (v1 <= 0x3F)
    {
      sub_F6ED4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_F6ED4()
{
  if (!qword_402B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC560);
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_402B38);
    }
  }
}

unint64_t sub_F6F3C()
{
  result = qword_402B70;
  if (!qword_402B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402950);
    sub_F6FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402B70);
  }

  return result;
}

unint64_t sub_F6FC8()
{
  result = qword_402B78;
  if (!qword_402B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402948);
    sub_F7054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402B78);
  }

  return result;
}

unint64_t sub_F7054()
{
  result = qword_402B80;
  if (!qword_402B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402940);
    sub_EC8C(&qword_402B88, &qword_402B90);
    sub_F34E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402B80);
  }

  return result;
}

unint64_t sub_F7130()
{
  result = qword_402BB0;
  if (!qword_402BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402BA8);
    sub_EC8C(&qword_402BB8, &qword_402BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402BB0);
  }

  return result;
}

uint64_t sub_F71F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402BA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FB680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402B98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402BA8);
  sub_30B198();
  sub_3055F8();
  sub_F5E1C(&qword_401F00, &type metadata accessor for Artwork);
  sub_F5E1C(&qword_401E78, &type metadata accessor for RoundedRectangle);
  swift_getOpaqueTypeConformance2();
  sub_F7130();
  swift_getOpaqueTypeConformance2();
  sub_D484();
  return swift_getOpaqueTypeConformance2();
}

void sub_F7458(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);

  sub_30B8E8();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeController;
  swift_beginAccess();
  sub_F859C(v13, v2 + v4);
  swift_endAccess();
  sub_F860C();
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;

  sub_3026B8();

  sub_30B8E8();
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter] = v12;

  v8 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView);
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  sub_21C008(a1);

  v10 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton);
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_objectGraph] = a1;
    v11 = v10;

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_F7614(uint64_t a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v21, "preferredLayoutAttributesFittingAttributes:", a1);
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton];
  if (!v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = v4;
  [v5 size];
  [v6 sizeThatFits:?];
  v8 = v7;

  v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabel];
  [v9 intrinsicContentSize];
  v11 = v10;
  v12 = [v9 text];
  if (v12)
  {
    v13 = v12;
    sub_30C0D8();

    v14 = sub_30C208();

    if (v14 * 12.0 > 24.0)
    {
      v15 = v14 * 12.0;
    }

    else
    {
      v15 = 24.0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  result = [v5 size];
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView];
  if (!v17)
  {
    goto LABEL_13;
  }

  if (v11 > v15)
  {
    v18 = v11;
  }

  else
  {
    v18 = v15;
  }

  v19 = v16 + -62.0 + -10.0 - v18 + -10.0 + -10.0 - v8 + -10.0;
  v20 = v17;
  EpisodeInfoView.prepareForLayout(fitting:)(v19);

  [v5 size];
  [v5 setSize:?];
  return v5;
}

id sub_F78FC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView] = 0;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeController];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episode] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_displayScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_objectGraph] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_F7A3C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView] = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton] = 0;
  v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeController];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episode] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_displayScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_objectGraph] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_F7C50(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episode) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView);
  if (!v4)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_EB910(a1, 0);
  sub_EBC58();
  sub_EBD88();
  sub_EBE88(a1);
  sub_309A78();
  if (swift_dynamicCastClass())
  {

    sub_EC2B0();
  }

  else
  {
    sub_307D98();
    if ((sub_303D78() & 1) == 0)
    {
      v6 = sub_307D98();
      sub_EC3D8(v6);
    }
  }

  EpisodeInfoView.beginUpdates()();

  sub_307DC8();
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabel);
  if (v7)
  {
    v10 = sub_30C098();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText:v10];

  v11 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth);
  if (!v11)
  {
    goto LABEL_18;
  }

  v16 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth);
  if (v8)
  {
    v12 = v11;
    v13 = sub_30C208();
    v14 = 24.0;
    if (v13 * 12.0 > 24.0)
    {
      v14 = v13 * 12.0;
    }
  }

  else
  {
    v15 = v11;
    v14 = 0.0;
  }

  [v16 setConstant:v14];
}

uint64_t sub_F7E34()
{
  swift_getObjectType();

  return sub_3075E8();
}

uint64_t sub_F7E88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_F938C(&qword_402C60, v3, type metadata accessor for ChartEpisodeCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

uint64_t sub_F7F0C()
{
  swift_getObjectType();

  return sub_3075B8();
}

uint64_t sub_F7F74()
{
  swift_getObjectType();

  return sub_3075D8();
}

uint64_t sub_F7FB0()
{
  swift_getObjectType();

  return sub_3075C8();
}

uint64_t sub_F7FFC()
{
  swift_getObjectType();

  return sub_3075A8();
}

uint64_t sub_F8038(uint64_t a1, void *a2)
{
  v3 = 2;
  _s23ShelfKitCollectionViews15EpisodeInfoViewC15estimatedHeight3for05traitC012CoreGraphics7CGFloatVAA0efG5StyleO_So07UITraitC0CtFZ_0(&v3, a2);

  return sub_307198();
}

void *sub_F80A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView);
  v2 = v1;
  return v1;
}

uint64_t sub_F812C@<X0>(uint64_t a1@<X8>)
{
  result = sub_30C6E8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 1;
  return result;
}

id sub_F81A0()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_F81C8()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 6;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_F82D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episode);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeController;
    swift_beginAccess();
    sub_F92B4(v0 + v2, &v5);
    if (v6)
    {
      sub_28DC8(&v5, v8);
      __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
      v6 = sub_309548();
      v7 = sub_F938C(&qword_3FEA60, 255, &type metadata accessor for LegacyEpisodeLockup);
      *&v5 = v1;
      swift_retain_n();
      v3 = sub_30A9D8();

      __swift_destroy_boxed_opaque_existential_1(&v5);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v3;
    }

    sub_F9324(&v5);
  }

  return 0;
}

uint64_t sub_F859C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402C68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_F860C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_internalArtworkView] && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView] && *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton])
  {
    return;
  }

  v3 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
  v4 = *&v0[v2];
  *&v0[v2] = v3;
  v5 = v3;

  if (!v5)
  {
    __break(1u);
    goto LABEL_36;
  }

  v122 = v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  sub_2DE78(&v122);

  v6 = *(v1 + v2);
  if (!v6)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = qword_3FAF28;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_42AC88;
  v10 = qword_42ACA0;
  v11 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v12 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v13 = *algn_42AC90;
  *v11 = qword_42AC88;
  *(v11 + 8) = v13;
  *(v11 + 3) = v10;
  v14 = v9;

  sub_2D294();
  v15 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabel);
  sub_124C4(0, &qword_408100);
  v16 = sub_30CDD8();
  [v15 setFont:v16];

  [v15 setAdjustsFontForContentSizeCategory:1];
  v121 = 2;
  v17 = objc_allocWithZone(type metadata accessor for EpisodeInfoView());
  v18 = sub_E961C(&v121, &_swiftEmptySetSingleton);
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView;
  v20 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView) = v18;

  v21 = [objc_allocWithZone(type metadata accessor for DynamicContextMenuButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton;
  v23 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_moreButton) = v21;
  v24 = v21;

  if (!v24)
  {
    goto LABEL_37;
  }

  *&v24[OBJC_IVAR____TtC23ShelfKitCollectionViews24DynamicContextMenuButton_configProvider + 8] = &off_3BA948;
  swift_unknownObjectWeakAssign();

  v25 = [v1 contentView];
  [v25 setEdgesPreservingSuperviewLayoutMargins:0];

  v26 = [v1 contentView];
  [v26 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];

  v27 = [v1 contentView];
  if (!*(v1 + v2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = v27;
  [v27 addSubview:?];

  v29 = [v1 contentView];
  [v29 addSubview:v15];

  v30 = [v1 contentView];
  if (!*(v1 + v19))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = v30;
  [v30 addSubview:?];

  v32 = [v1 contentView];
  if (!*(v1 + v22))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32;
  [v32 addSubview:?];

  v34 = *(v1 + v2);
  if (!v34)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *(v1 + v19);
  if (!v35)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = v22;
  v36 = *(v1 + v22);
  if (!v36)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [v15 widthAnchor];
  v38 = [v37 constraintGreaterThanOrEqualToConstant:0.0];

  v39 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth);
  v118 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_ordinalLabelMinWidth) = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_320DE0;
  v41 = *(v1 + v2);
  if (!v41)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v42 = [v41 leadingAnchor];
  v43 = [v1 contentView];
  v44 = [v43 leadingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v40 + 32) = v45;
  v46 = *(v1 + v2);
  if (!v46)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v47 = [v46 centerYAnchor];
  v48 = [v1 contentView];
  v49 = [v48 centerYAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v40 + 40) = v50;
  v51 = *(v1 + v2);
  if (!v51)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v52 = [v51 topAnchor];
  v53 = [v1 contentView];
  v54 = [v53 topAnchor];

  v55 = [v52 constraintGreaterThanOrEqualToAnchor:v54 constant:8.0];
  *(v40 + 48) = v55;
  v56 = [v1 contentView];
  v57 = [v56 bottomAnchor];

  v58 = *(v1 + v2);
  if (!v58)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v59 = [v58 bottomAnchor];
  v60 = [v57 constraintGreaterThanOrEqualToAnchor:v59 constant:8.0];

  *(v40 + 56) = v60;
  v61 = *(v1 + v2);
  if (!v61)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v62 = [v61 heightAnchor];
  v63 = [v62 constraintEqualToConstant:62.0];

  *(v40 + 64) = v63;
  v64 = *(v1 + v2);
  if (!v64)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v65 = [v64 widthAnchor];
  v66 = [v65 constraintEqualToConstant:62.0];

  *(v40 + 72) = v66;
  v67 = [v15 leadingAnchor];
  v68 = *(v1 + v2);
  if (!v68)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v69 = [v68 trailingAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:10.0];

  *(v40 + 80) = v70;
  v71 = [v15 trailingAnchor];
  v72 = *(v1 + v19);
  if (!v72)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v73 = [v72 leadingAnchor];
  v74 = [v71 constraintEqualToAnchor:v73 constant:-10.0];

  *(v40 + 88) = v74;
  v75 = [v15 centerYAnchor];
  v76 = [v1 contentView];
  v77 = [v76 centerYAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v40 + 96) = v78;
  v79 = *(v1 + v118);
  if (!v79)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v40 + 104) = v79;
  v80 = *(v1 + v19);
  if (!v80)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v81 = v79;
  v82 = [v80 topAnchor];
  v83 = [v1 contentView];
  v84 = [v83 topAnchor];

  v85 = [v82 constraintGreaterThanOrEqualToAnchor:v84 constant:8.0];
  *(v40 + 112) = v85;
  v86 = [v1 contentView];
  v87 = [v86 bottomAnchor];

  v88 = *(v1 + v19);
  if (!v88)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v89 = [v88 bottomAnchor];
  v90 = [v87 constraintGreaterThanOrEqualToAnchor:v89 constant:8.0];

  *(v40 + 120) = v90;
  v91 = *(v1 + v19);
  if (!v91)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v92 = [v91 centerYAnchor];
  v93 = [v1 contentView];
  v94 = [v93 centerYAnchor];

  v95 = [v92 constraintEqualToAnchor:v94];
  *(v40 + 128) = v95;
  v96 = *&v119[v1];
  if (!v96)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v97 = [v96 leadingAnchor];
  v98 = *(v1 + v19);
  if (!v98)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v99 = [v98 trailingAnchor];
  v100 = [v97 constraintEqualToAnchor:v99 constant:10.0];

  *(v40 + 136) = v100;
  v101 = *&v119[v1];
  if (!v101)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v102 = [v101 trailingAnchor];
  v103 = [v1 contentView];
  v104 = [v103 trailingAnchor];

  v105 = [v102 constraintEqualToAnchor:v104 constant:-10.0];
  *(v40 + 144) = v105;
  v106 = *&v119[v1];
  if (!v106)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v107 = objc_opt_self();
  v108 = [v106 centerYAnchor];
  v109 = [v1 contentView];
  v110 = [v109 centerYAnchor];

  v111 = [v108 constraintEqualToAnchor:v110];
  *(v40 + 152) = v111;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v107 activateConstraints:isa];

  LODWORD(v113) = 1148846080;
  [v15 setContentHuggingPriority:0 forAxis:v113];
  LODWORD(v114) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v114];
  [v15 setTextAlignment:1];
  v116 = *&v119[v1];
  if (!v116)
  {
LABEL_60:
    __break(1u);
    return;
  }

  LODWORD(v115) = 1148846080;
  [v116 setContentCompressionResistancePriority:0 forAxis:v115];
  v120 = [v1 contentView];
  LODWORD(v117) = 1148846080;
  [v120 setContentHuggingPriority:1 forAxis:v117];
}

uint64_t sub_F92B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F9324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F938C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_F93E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_F94B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeContextMenuWithStatusView()
{
  result = qword_402CC8;
  if (!qword_402CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F95B4()
{
  sub_309548();
  if (v0 <= 0x3F)
  {
    sub_F9680();
    if (v1 <= 0x3F)
    {
      sub_F971C();
      if (v2 <= 0x3F)
      {
        sub_D7D8();
        if (v3 <= 0x3F)
        {
          sub_7A2DC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F9680()
{
  if (!qword_402CD8)
  {
    sub_303C68();
    sub_FA648(&qword_402CE0, &type metadata accessor for AnyEpisodeBookmarkStateRule);
    v0 = sub_3039B8();
    if (!v1)
    {
      atomic_store(v0, &qword_402CD8);
    }
  }
}

void sub_F971C()
{
  if (!qword_402CE8)
  {
    sub_303A58();
    sub_303C78();
    sub_FA648(&unk_402CF0, &type metadata accessor for AnyEpisodeDownloadStateRule);
    v0 = sub_3039B8();
    if (!v1)
    {
      atomic_store(v0, &qword_402CE8);
    }
  }
}

uint64_t sub_F97E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_305A08();
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D30);
  __chkstk_darwin(v52);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D38);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D40);
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = *(type metadata accessor for EpisodeContextMenuWithStatusView() + 32);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FED68);
  sub_305168();
  v15 = v59[0];
  *v10 = sub_305AA8();
  *(v10 + 1) = v15;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D48);
  sub_F9E1C(&v10[*(v16 + 44)]);
  v17 = sub_306228();
  KeyPath = swift_getKeyPath();
  v19 = v8;
  v20 = &v10[*(v8 + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  v21 = enum case for DynamicTypeSize.accessibility3(_:);
  v22 = sub_305478();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_FA648(&qword_402D50, &type metadata accessor for DynamicTypeSize);
  result = sub_30C018();
  if (result)
  {
    v51 = v14;
    v48 = v4;
    v24 = sub_FA2D8();
    v25 = a1;
    v26 = sub_EC8C(&qword_402D70, &qword_402D30);
    v27 = v13;
    v28 = v52;
    sub_306628();
    sub_EB68(v7, &qword_402D30);
    sub_EB68(v10, &qword_402D38);
    v59[0] = v19;
    v59[1] = v28;
    v59[2] = v24;
    v60 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v54;
    sub_3066F8();
    (*(v53 + 8))(v27, v29);
    LOBYTE(v29) = *(v2 + 32);

    if ((v29 & 1) == 0)
    {
      sub_30C7A8();
      v30 = sub_306088();
      sub_304108();

      v31 = v49;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v50 + 8))(v31, v48);
    }

    v32 = *v2;
    v57 = sub_309548();
    v58 = sub_FA648(&qword_3FEA60, &type metadata accessor for LegacyEpisodeLockup);
    v56 = v32;
    v60 = sub_30ACB8();
    v61 = sub_FA648(&qword_3FF5F0, &type metadata accessor for PodcastsContextMenuProvider);
    __swift_allocate_boxed_opaque_existential_0Tm(v59);

    sub_30ACA8();
    v33 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D78) + 36);
    sub_309888();
    sub_305168();
    LOBYTE(v32) = sub_3060C8();
    sub_304FD8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D80) + 36);
    *v42 = v32;
    *(v42 + 8) = v35;
    *(v42 + 16) = v37;
    *(v42 + 24) = v39;
    *(v42 + 32) = v41;
    *(v42 + 40) = 0;
    v43 = sub_306C58();
    v45 = v44;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D88);
    v46 = (v33 + *(result + 36));
    *v46 = v43;
    v46[1] = v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_F9E1C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D90) - 8;
  __chkstk_darwin(v38);
  v39 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v36 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D98);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402DA0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v35 = &v33 - v13;

  sub_30A648();
  v15 = &v14[*(v10 + 44)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798);
  v17 = *(v16 + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = sub_306958();
  v20 = *(*(v19 - 8) + 104);
  v20(v15 + v17, v18, v19);
  *v15 = swift_getKeyPath();

  v21 = v34;
  sub_30A658();
  v22 = (v21 + *(v5 + 44));
  v20(v22 + *(v16 + 28), v18, v19);
  *v22 = swift_getKeyPath();
  v42 = sub_306928();
  sub_306C58();
  v23 = v36;
  sub_306468();

  v24 = (v23 + *(v38 + 44));
  v20(v24 + *(v16 + 28), enum case for Image.Scale.medium(_:), v19);
  *v24 = swift_getKeyPath();
  v25 = v35;
  v26 = v41;
  sub_EB00(v35, v41, &qword_402DA0);
  v27 = v37;
  sub_EB00(v21, v37, &qword_402D98);
  v28 = v39;
  sub_FA3C4(v23, v39);
  v29 = v26;
  v30 = v40;
  sub_EB00(v29, v40, &qword_402DA0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402DA8);
  sub_EB00(v27, v30 + *(v31 + 48), &qword_402D98);
  sub_FA3C4(v28, v30 + *(v31 + 64));
  sub_EB68(v23, &qword_402D90);
  sub_EB68(v21, &qword_402D98);
  sub_EB68(v25, &qword_402DA0);
  sub_EB68(v28, &qword_402D90);
  sub_EB68(v27, &qword_402D98);
  return sub_EB68(v41, &qword_402DA0);
}

uint64_t sub_FA294@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

unint64_t sub_FA2D8()
{
  result = qword_402D58;
  if (!qword_402D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402D38);
    sub_EC8C(&qword_402D60, &qword_402D68);
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402D58);
  }

  return result;
}

uint64_t sub_FA3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_FA438()
{
  result = qword_402DB0;
  if (!qword_402DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402D78);
    sub_FA4F0();
    sub_EC8C(&qword_402DC8, &qword_402D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402DB0);
  }

  return result;
}

unint64_t sub_FA4F0()
{
  result = qword_402DB8;
  if (!qword_402DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_402D30);
    sub_FA2D8();
    sub_EC8C(&qword_402D70, &qword_402D30);
    swift_getOpaqueTypeConformance2();
    sub_FA648(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_402DB8);
  }

  return result;
}

uint64_t sub_FA648(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_FA690()
{
  result = -3.0;
  xmmword_402DD0 = xmmword_3211A0;
  *&qword_402DE0 = vdupq_n_s64(0xC044000000000000);
  return result;
}

BOOL sub_FA6B0()
{
  v1 = sub_307048();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_3041E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307038();
  v13 = sub_306FE8();
  if (v12 > 6u)
  {
    if ((v12 == 7 || v12 == 8) && (v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v12 == 3)
  {
    return 1;
  }

  if (v12 != 5)
  {
LABEL_9:
    sub_304158();
    v15 = *(v2 + 16);
    v15(v7, v0, v1);
    v16 = sub_3041D8();
    v25 = sub_30C798();
    if (os_log_type_enabled(v16, v25))
    {
      v17 = swift_slowAlloc();
      v24 = v9;
      v18 = v17;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v18 = 136315138;
      v15(v4, v7, v1);
      v19 = sub_30C148();
      v21 = v20;
      (*(v2 + 8))(v7, v1);
      v22 = sub_191264(v19, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v25, "We are using MultiShowEpisodeCell for an unsupported presentation %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);

      (*(v24 + 8))(v11, v8);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
    }

    return 0;
  }

  return (v13 & 1) != 0;
}

uint64_t sub_FA9E0()
{
  v0 = type metadata accessor for PlayControlsIconsSet(0);
  __swift_allocate_value_buffer(v0, qword_402DF0);
  v1 = __swift_project_value_buffer(v0, qword_402DF0);
  if (qword_3FAA20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_429128);
  return sub_FE64C(v2, v1, type metadata accessor for PlayControlsIconsSet);
}

id sub_FAB44(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_objectGraph] = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_presentation;
  v10 = sub_307048();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_imageProvider];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playStateSubscription] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_displayScale] = 0x3FF0000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MultiShowEpisodeCell();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

void sub_FACD0(uint64_t a1, objc_class *a2)
{
  v3 = v2;
  v202 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v4 - 8);
  v188 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v184 - v7;
  __chkstk_darwin(v9);
  v189 = &v184 - v10;
  __chkstk_darwin(v11);
  v13 = &v184 - v12;
  __chkstk_darwin(v14);
  v190 = &v184 - v15;
  __chkstk_darwin(v16);
  v191 = &v184 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v18 - 8);
  v200 = &v184 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB0);
  __chkstk_darwin(v20 - 8);
  v196 = &v184 - v21;
  v22 = sub_304478();
  v197 = *(v22 - 1);
  v198 = v22;
  __chkstk_darwin(v22);
  v24 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_304458();
  v25 = *(v195 - 1);
  __chkstk_darwin(v195);
  v27 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PlayControlsIconsSet(0);
  __chkstk_darwin(v28);
  v30 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView;
  if (!*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView) || !*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView) || !*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView))
  {
    v187 = v13;
    v186 = v8;
    v31 = [objc_allocWithZone(type metadata accessor for CachingArtworkView()) init];
    v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView;
    v33 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
    *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView) = v31;
    v34 = v31;

    if (v34)
    {
      v35 = v34[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
      v34[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
      v206[0] = v35;
      sub_2DE78(v206);

      v201 = v32;
      v36 = *(v3 + v32);
      if (v36)
      {
        v37 = qword_3FAF28;
        v38 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = qword_42AC88;
        v40 = qword_42ACA0;
        v41 = &v38[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v42 = *&v38[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
        v43 = *algn_42AC90;
        *v41 = qword_42AC88;
        *(v41 + 8) = v43;
        *(v41 + 3) = v40;
        v44 = v39;

        sub_2D294();
        if (qword_3FAA70 != -1)
        {
          swift_once();
        }

        v45 = __swift_project_value_buffer(v28, qword_402DF0);
        sub_FE64C(v45, v30, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for PlayControlsPresenter(0);
        v46 = swift_allocObject();
        *(v46 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        sub_FE64C(v30, v46 + OBJC_IVAR____TtC23ShelfKitCollectionViews21PlayControlsPresenter_iconsSet, type metadata accessor for PlayControlsIconsSet);
        type metadata accessor for EpisodeStateControlsPresenter();
        swift_allocObject();

        v48 = sub_E53F8(v47);

        sub_FE6B4(v30, type metadata accessor for PlayControlsIconsSet);
        *(v46 + 32) = v48;
        *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsPresenter) = v46;

        if (qword_3FAA68 != -1)
        {
          swift_once();
        }

        v49 = xmmword_402DD0;
        v50 = *&qword_402DE0;
        v51 = unk_402DE8;
        v52 = objc_allocWithZone(type metadata accessor for PlayControlsStackView());
        v53 = sub_E7744(v46, *&v49, *(&v49 + 1), v50, v51);
        v54 = *(v3 + v199);
        *(v3 + v199) = v53;

        v206[0] = 1;
        v55 = objc_allocWithZone(type metadata accessor for EpisodeInfoView());
        v56 = sub_E961C(v206, &_swiftEmptySetSingleton);
        v57 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView;
        v58 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView);
        *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView) = v56;

        v59 = *(v3 + v57);
        if (v59)
        {
          v60 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_playStatePublisher;
          swift_beginAccess();
          v204 = *(v59 + v60);
          swift_allocObject();
          swift_unknownObjectWeakInit();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_403010);
          sub_FE754();
          v61 = sub_304F58();

          *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playStateSubscription) = v61;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FB0);
          sub_304548();
          *(swift_allocObject() + 16) = xmmword_315430;
          v62 = v195;
          (*(v25 + 104))(v27, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v195);
          v63 = sub_304488();
          (*(*(v63 - 8) + 56))(v196, 1, 1, v63);
          sub_304468();
          sub_304528();
          (*(v197 + 8))(v24, v198);
          (*(v25 + 8))(v27, v62);
          sub_30CB78();
          if (sub_FC4F4())
          {
            v64 = v200;
            sub_3046B8();
          }

          else
          {
            v64 = v200;
            sub_304698();
          }

          v65 = v201;
          v66 = sub_3046C8();
          (*(*(v66 - 8) + 56))(v64, 0, 1, v66);
          sub_30CA88();
          v67 = [v3 contentView];
          [v67 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

          v68 = [v3 contentView];
          LOBYTE(v67) = sub_FC4F4();
          v69 = [v3 traitCollection];
          v70 = objc_allocWithZone(type metadata accessor for EpisodeCellLayoutGuide());
          v71 = sub_E8590(v68, v67 & 1, v69);
          v72 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide);
          *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide) = v71;
          v73 = v71;

          v74 = *(v3 + v65);
          if (v74)
          {
            v204 = 0;
            v205 = 0xE000000000000000;
            v75 = v74;
            v207._object = 0x8000000000336AD0;
            v207._countAndFlagsBits = 0xD00000000000001ELL;
            sub_30C238(v207);
            v208._countAndFlagsBits = 46;
            v208._object = 0xE100000000000000;
            sub_30C238(v208);
            v203 = 0;
            sub_30D638();
            v76 = sub_30C098();

            [v75 setAccessibilityIdentifier:v76];

            v77 = *(v3 + v57);
            if (v77)
            {
              v204 = 0;
              v205 = 0xE000000000000000;
              v78 = v77;
              v209._object = 0x8000000000336AD0;
              v209._countAndFlagsBits = 0xD00000000000001ELL;
              sub_30C238(v209);
              v210._countAndFlagsBits = 46;
              v210._object = 0xE100000000000000;
              sub_30C238(v210);
              v203 = 2;
              sub_30D638();
              v79 = sub_30C098();

              [v78 setAccessibilityIdentifier:v79];

              v80 = [v3 contentView];
              v81 = v201;
              if (*(v3 + v201))
              {
                v82 = v80;
                [v80 addSubview:?];

                v83 = [v3 contentView];
                v84 = v199;
                v85 = v191;
                if (*(v3 + v57))
                {
                  v86 = v83;
                  [v83 addSubview:?];

                  v87 = [v3 contentView];
                  if (*(v3 + v84))
                  {
                    v88 = v87;
                    [v87 addSubview:?];

                    v89 = *(v3 + v81);
                    if (v89)
                    {
                      [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v90 = *(v3 + v57);
                      if (v90)
                      {
                        [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
                        v91 = *(v3 + v84);
                        if (v91)
                        {
                          [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
                          v92 = *(v3 + v84);
                          if (v92)
                          {
                            v93 = [v92 bottomAnchor];
                            v94 = *(v3 + v81);
                            if (v94)
                            {
                              v200 = v57;
                              v95 = [v94 bottomAnchor];
                              v192 = [v93 constraintEqualToAnchor:v95];

                              v198 = v73;
                              v96 = [v198 bottomAnchor];
                              v97 = *(v3 + v81);
                              if (v97)
                              {
                                v98 = [v97 bottomAnchor];
                                v99 = sub_307048();
                                v100 = *(v99 - 8);
                                v101 = *(v100 + 16);
                                v197 = v100 + 16;
                                v195 = v101;
                                (v101)(v85, v202, v99);
                                v102 = *(v100 + 56);
                                v196 = (v100 + 56);
                                v194 = v102;
                                v102(v85, 0, 1, v99);
                                v103 = v190;
                                sub_FE22C(v85, v190);
                                v193 = *(v100 + 48);
                                v104 = v193(v103, 1, v99);
                                v185 = v100;
                                if (v104 == 1)
                                {
                                  sub_EB68(v85, &qword_402EA0);
                                  sub_EB68(v103, &qword_402EA0);
                                  v105 = v187;
                                }

                                else
                                {
                                  v106 = sub_FA6B0();
                                  sub_EB68(v85, &qword_402EA0);
                                  (*(v100 + 8))(v103, v99);
                                  v107 = 0.0;
                                  v105 = v187;
                                  if (v106)
                                  {
                                    goto LABEL_31;
                                  }
                                }

                                v107 = 16.0;
LABEL_31:
                                v108 = [v96 constraintEqualToAnchor:v98 constant:v107];

                                v109 = v198;
                                v110 = [v198 bottomAnchor];
                                v111 = *(v3 + v84);
                                if (v111)
                                {
                                  v112 = [v111 bottomAnchor];
                                  (v195)(v105, v202, v99);
                                  v194(v105, 0, 1, v99);
                                  v113 = v189;
                                  sub_FE22C(v105, v189);
                                  if (v193(v113, 1, v99) == 1)
                                  {
                                    sub_EB68(v105, &qword_402EA0);
                                    sub_EB68(v113, &qword_402EA0);
                                  }

                                  else
                                  {
                                    v114 = sub_FA6B0();
                                    sub_EB68(v105, &qword_402EA0);
                                    (*(v185 + 8))(v113, v99);
                                    v115 = 0.0;
                                    if (v114)
                                    {
                                      goto LABEL_36;
                                    }
                                  }

                                  v115 = 11.0;
LABEL_36:
                                  v116 = [v110 constraintGreaterThanOrEqualToAnchor:v112 constant:v115];

                                  LODWORD(v117) = 1132068864;
                                  [v192 setPriority:v117];
                                  LODWORD(v118) = 1132068864;
                                  [v108 setPriority:v118];
                                  v190 = v116;
                                  LODWORD(v119) = 1132068864;
                                  [v116 setPriority:v119];
                                  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
                                  v120 = swift_allocObject();
                                  *(v120 + 16) = xmmword_3211B0;
                                  v121 = v201;
                                  v122 = *(v3 + v201);
                                  if (v122)
                                  {
                                    v191 = v108;
                                    v123 = [v122 leadingAnchor];
                                    v124 = [v109 leadingAnchor];
                                    v125 = v109;
                                    v126 = [v123 constraintEqualToAnchor:v124];

                                    *(v120 + 32) = v126;
                                    v127 = *(v3 + v121);
                                    if (v127)
                                    {
                                      v128 = [v127 topAnchor];
                                      v129 = [v125 topAnchor];
                                      v130 = v186;
                                      (v195)(v186, v202, v99);
                                      v194(v130, 0, 1, v99);
                                      v131 = v188;
                                      sub_FE22C(v130, v188);
                                      if (v193(v131, 1, v99) == 1)
                                      {
                                        sub_EB68(v130, &qword_402EA0);
                                        sub_EB68(v131, &qword_402EA0);
                                        v132 = v200;
                                      }

                                      else
                                      {
                                        v133 = sub_FA6B0();
                                        sub_EB68(v130, &qword_402EA0);
                                        (*(v185 + 8))(v131, v99);
                                        v134 = 0.0;
                                        v132 = v200;
                                        if (v133)
                                        {
                                          goto LABEL_42;
                                        }
                                      }

                                      v134 = 16.0;
LABEL_42:
                                      v135 = [v128 constraintEqualToAnchor:v129 constant:v134];

                                      v136 = v191;
                                      *(v120 + 40) = v135;
                                      *(v120 + 48) = v136;
                                      v137 = v201;
                                      v138 = *(v3 + v201);
                                      if (v138)
                                      {
                                        v139 = v136;
                                        v140 = [v138 heightAnchor];
                                        v141 = [v140 constraintEqualToConstant:90.0];

                                        *(v120 + 56) = v141;
                                        v142 = *(v3 + v137);
                                        v143 = v199;
                                        if (v142)
                                        {
                                          v144 = [v142 widthAnchor];
                                          v145 = [v144 constraintEqualToConstant:90.0];

                                          *(v120 + 64) = v145;
                                          v146 = *&v132[v3];
                                          if (v146)
                                          {
                                            v202 = v139;
                                            v147 = [v146 leadingAnchor];
                                            v148 = *(v3 + v137);
                                            if (v148)
                                            {
                                              v149 = [v148 trailingAnchor];
                                              v150 = [v147 constraintEqualToAnchor:v149 constant:10.0];

                                              *(v120 + 72) = v150;
                                              v151 = *&v200[v3];
                                              if (v151)
                                              {
                                                v152 = [v151 topAnchor];
                                                v153 = *(v3 + v137);
                                                if (v153)
                                                {
                                                  v154 = [v153 topAnchor];
                                                  v155 = [v152 constraintEqualToAnchor:v154];

                                                  *(v120 + 80) = v155;
                                                  v156 = *(v3 + v143);
                                                  if (v156)
                                                  {
                                                    v157 = [v156 topAnchor];
                                                    v158 = *&v200[v3];
                                                    if (v158)
                                                    {
                                                      v159 = [v158 bottomAnchor];
                                                      v160 = [v157 constraintGreaterThanOrEqualToAnchor:v159 constant:3.0];

                                                      *(v120 + 88) = v160;
                                                      v161 = *(v3 + v143);
                                                      if (v161)
                                                      {
                                                        v162 = [v161 leadingAnchor];
                                                        v163 = *(v3 + v137);
                                                        if (v163)
                                                        {
                                                          v164 = [v163 trailingAnchor];
                                                          v165 = [v162 constraintEqualToAnchor:v164 constant:10.0];

                                                          *(v120 + 96) = v165;
                                                          v166 = *(v3 + v143);
                                                          v167 = v198;
                                                          if (v166)
                                                          {
                                                            v168 = objc_opt_self();
                                                            v169 = [v166 trailingAnchor];
                                                            v170 = [v167 trailingAnchor];
                                                            v171 = [v169 constraintEqualToAnchor:v170];

                                                            v172 = v190;
                                                            *(v120 + 104) = v171;
                                                            *(v120 + 112) = v172;
                                                            v173 = v192;
                                                            *(v120 + 120) = v192;
                                                            sub_91304();
                                                            v174 = v172;
                                                            v175 = v173;
                                                            isa = sub_30C358().super.isa;

                                                            [v168 activateConstraints:isa];

                                                            if (((*(&stru_158.reloff + (swift_isaMask & *v3)))() & 1) == 0)
                                                            {
                                                              v182.super.isa = v175;
                                                              v175 = v174;
                                                              v174 = v202;
                                                              v183 = v167;
                                                              goto LABEL_57;
                                                            }

                                                            v177 = swift_allocObject();
                                                            *(v177 + 16) = xmmword_31BF90;
                                                            v178 = *&v200[v3];
                                                            if (v178)
                                                            {
                                                              v179 = [v178 trailingAnchor];
                                                              v167 = v198;
                                                              v180 = [v198 trailingAnchor];

                                                              v181 = [v179 constraintEqualToAnchor:v180];
                                                              *(v177 + 32) = v181;
                                                              v182.super.isa = sub_30C358().super.isa;

                                                              [v168 activateConstraints:v182.super.isa];
                                                              v183 = v202;
LABEL_57:

                                                              return;
                                                            }

LABEL_87:
                                                            __break(1u);
                                                            return;
                                                          }

LABEL_86:
                                                          __break(1u);
                                                          goto LABEL_87;
                                                        }

LABEL_85:
                                                        __break(1u);
                                                        goto LABEL_86;
                                                      }

LABEL_84:
                                                      __break(1u);
                                                      goto LABEL_85;
                                                    }

LABEL_83:
                                                    __break(1u);
                                                    goto LABEL_84;
                                                  }

LABEL_82:
                                                  __break(1u);
                                                  goto LABEL_83;
                                                }

LABEL_81:
                                                __break(1u);
                                                goto LABEL_82;
                                              }

LABEL_80:
                                              __break(1u);
                                              goto LABEL_81;
                                            }

LABEL_79:
                                            __break(1u);
                                            goto LABEL_80;
                                          }

LABEL_78:
                                          __break(1u);
                                          goto LABEL_79;
                                        }

LABEL_77:
                                        __break(1u);
                                        goto LABEL_78;
                                      }

LABEL_76:
                                      __break(1u);
                                      goto LABEL_77;
                                    }

LABEL_75:
                                    __break(1u);
                                    goto LABEL_76;
                                  }

LABEL_74:
                                  __break(1u);
                                  goto LABEL_75;
                                }

LABEL_73:
                                __break(1u);
                                goto LABEL_74;
                              }

LABEL_72:
                              __break(1u);
                              goto LABEL_73;
                            }

LABEL_71:
                            __break(1u);
                            goto LABEL_72;
                          }

LABEL_70:
                          __break(1u);
                          goto LABEL_71;
                        }

LABEL_69:
                        __break(1u);
                        goto LABEL_70;
                      }

LABEL_68:
                      __break(1u);
                      goto LABEL_69;
                    }

LABEL_67:
                    __break(1u);
                    goto LABEL_68;
                  }

LABEL_66:
                  __break(1u);
                  goto LABEL_67;
                }

LABEL_65:
                __break(1u);
                goto LABEL_66;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_61;
  }
}

uint64_t sub_FC34C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_FE7B8;
  *(v4 + 24) = a2;
  v7[4] = sub_293C0;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_19D688;
  v7[3] = &block_descriptor_23;
  v5 = _Block_copy(v7);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_FC498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

BOOL sub_FC4F4()
{
  v1 = sub_307048();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_3041E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307038();
  v13 = sub_306FE8();
  if (v12 > 6u)
  {
    if ((v12 == 7 || v12 == 8) && (v13 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_9;
  }

  if (v12 == 3)
  {
    return 0;
  }

  if (v12 != 5)
  {
LABEL_9:
    sub_304158();
    v14 = *(v2 + 16);
    v14(v7, v0, v1);
    v15 = sub_3041D8();
    v25 = sub_30C798();
    if (os_log_type_enabled(v15, v25))
    {
      v16 = swift_slowAlloc();
      v24 = v9;
      v17 = v16;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v17 = 136315138;
      v14(v4, v7, v1);
      v18 = sub_30C148();
      v20 = v19;
      (*(v2 + 8))(v7, v1);
      v21 = sub_191264(v18, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v25, "We are using MultiShowEpisodeCell for an unsupported presentation %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);

      (*(v24 + 8))(v11, v8);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
      (*(v9 + 8))(v11, v8);
    }

    return 0;
  }

  return (v13 & 1) == 0;
}

void sub_FC828(uint64_t a1, objc_class *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_objectGraph) = a1;

  v9 = sub_307048();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_presentation;
  swift_beginAccess();
  sub_FE5DC(v8, v3 + v11);
  swift_endAccess();
  sub_FACD0(a1, a2);
  v12 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView);
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_objectGraph;
  swift_beginAccess();
  *&v12[v13] = a1;
  v14 = v12;

  sub_3026B8();

  sub_30B8E8();
  *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_explicitContentPresenter] = v19;

  v15 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_internalArtworkView);
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_21C008(a1);

  v17 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView);
  if (v17)
  {
    v18 = v17;
    PlayControlsStackView.bind(to:)(a1);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_FCA6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide);
  if (v1)
  {
    v10 = v1;
    sub_307158();
    v2 = v10;
    if ((v10[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_isMultiShowListLayout] & 1) == 0)
    {
      sub_302C18();
      v4 = v3;
      sub_302C18();
      v2 = v10;
      if (v4 == v5 || (sub_302C18(), v7 = v6, sub_302C18(), v2 = v10, v7 == v8))
      {
        *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_extraTrailingPadding] = 0x4024000000000000;
        v9 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_internalTrailingConstraint];
        [v9 setConstant:10.0];

        v2 = v10;
      }
    }
  }
}

void sub_FCB74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v8 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v46 - v11;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for MultiShowEpisodeCell();
  v49.receiver = v2;
  v49.super_class = v18;
  v19 = objc_msgSendSuper2(&v49, "preferredLayoutAttributesFittingAttributes:", a1);
  v20 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_layoutGuide];
  if (v20)
  {
    v21 = v20;
    v22 = [v2 contentView];
    [v22 bounds];
    v24 = v23;

    [v19 bounds];
    v26 = v25;
    v27 = [v2 contentView];
    [v27 directionalLayoutMargins];
    v29 = v28;
    v31 = v30;

    if (v21[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_isMultiShowListLayout] == 1)
    {
      v32 = v24 - v29 - v31;
    }

    else
    {
      v32 = v26 - *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews22EpisodeCellLayoutGuide_extraTrailingPadding];
    }

    v46 = v21;
    v36 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView];
    if (v36)
    {
      v37 = v32 + -90.0 + -10.0;
      v38 = v36;
      EpisodeInfoView.prepareForLayout(fitting:)(v37);

      v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_presentation;
      swift_beginAccess();
      sub_FE22C(&v2[v39], v17);
      sub_FE22C(v17, v14);
      v40 = sub_307048();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v14, 1, v40) == 1)
      {
        sub_EB68(v17, &qword_402EA0);
        sub_EB68(v14, &qword_402EA0);
      }

      else
      {
        sub_FA6B0();
        sub_EB68(v17, &qword_402EA0);
        (*(v41 + 8))(v14, v40);
      }

      v43 = v47;
      sub_FE22C(&v2[v39], v47);
      v44 = v48;
      sub_FE22C(v43, v48);
      if (v42(v44, 1, v40) == 1)
      {
        sub_EB68(v43, &qword_402EA0);
        sub_EB68(v44, &qword_402EA0);
      }

      else
      {
        sub_FA6B0();
        sub_EB68(v43, &qword_402EA0);
        (*(v41 + 8))(v44, v40);
      }

      v45 = v46;
      if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_playControlsView])
      {
        if (qword_3FAA28 != -1)
        {
          swift_once();
        }

        [v19 size];
        [v19 setSize:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_304158();
  v33 = sub_3041D8();
  v34 = sub_30C798();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "It is an error to not have a layoutArea at this point and will definitelly lead to wrong layout and other problems.", v35, 2u);
  }

  (*(v5 + 8))(v7, v4);
}