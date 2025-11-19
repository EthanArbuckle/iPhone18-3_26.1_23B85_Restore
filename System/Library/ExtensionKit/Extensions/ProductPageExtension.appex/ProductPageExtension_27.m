id sub_100310A38(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009434A0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView] + qword_10094D6A8) = v10;
    sub_1001EDB98();
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v9, &v3[v14]);
  swift_endAccess();
  sub_1001EFCF0(*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_10030E194(a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style + 8);

  sub_1000E5778(v22, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

id sub_100310D58()
{
  v1 = v0;
  sub_10030D844();
  [*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6C8) setImage:0];
  sub_1001E47AC();
  sub_1001E47AC();
  sub_1001E47AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  v4 = *v2;
  if (*v2)
  {

    v4(v5);
    sub_1000167E0(v4);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
  sub_1005B9F80();
  v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v6 setHidden:0];
  v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_100310EA4()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  sub_100312548(v2, v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory], &v25);
  v4 = v28;

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  v8 = v1[v3];
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind + 8];
  v10 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  *&v35 = v4;
  *(&v35 + 1) = v5;
  *v36 = v6;
  *&v36[8] = v7;
  v36[16] = v9;
  v36[17] = v8;
  v36[18] = v10;
  v36[19] = v11;
  v36[20] = 0;
  v29 = v25;
  v30 = v26;
  *(v33 + 13) = *&v36[13];
  v32 = v35;
  v33[0] = *v36;
  v31 = v27;
  v12 = v5;
  v13 = v6;
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  sub_10033FA50(v22, v15, v17, v19, v21);

  sub_100311048();
  return sub_100138C80(v34);
}

void sub_100311048()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_10003BDD4(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10000CFBC(v4, &unk_1009434A0);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = sub_1007706DC(v73, v75).super.isa;

          sub_1005DE2F4(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      v59 = sub_100587DD0(v58, &xmmword_1009A2D20, 1);
      sub_10077071C();
      sub_1007704EC();
      v61 = v60;
      sub_10077071C();
      sub_1007704EC();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_1001EDC4C();
      }

      if (v18 >= v64)
      {
        v47 = v64;
      }

      else
      {
        v47 = v18;
      }

      goto LABEL_40;
    }

LABEL_8:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_1001EDC4C();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = sub_10076FF9C();
      v26 = v25;
      if (v24 == sub_10076FF9C() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = sub_10077071C();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = sub_10077167C();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10000CFBC(v7, &unk_1009434A0);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = sub_1007706DC(v72, v74).super.isa;

        sub_1005DE2F4(v40, v15, v44);
        v41 = v45;

        (*(v9 + 8))(v15, v8);
      }
    }

    if (v41 < v21 && v16 == 2)
    {
      v47 = v41;
    }

    else
    {
      v47 = v21;
    }

LABEL_40:
    sub_100313114(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer] frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = sub_10077071C(), v52, (v53 & 1) == 0))
  {
    Width = 570.0;
  }

  else
  {
    v80.origin.x = v29;
    v80.origin.y = v31;
    v80.size.width = v33;
    v80.size.height = v35;
    Width = CGRectGetWidth(v80);
  }

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = sub_10077071C(), v67, (v68 & 1) == 0))
  {
    Height = 325.0;
  }

  else
  {
    v84.origin.x = v29;
    v84.origin.y = v31;
    v84.size.width = v33;
    v84.size.height = v35;
    Height = CGRectGetHeight(v84);
  }

  [v48 setFrame:{MinX, v50, Width, Height}];
}

id sub_100311848(uint64_t a1, double a2, double a3)
{
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    swift_unknownObjectRelease();
    [v4 convertPoint:v11 toCoordinateSpace:{a2, a3}];
    v13 = v12;
    v15 = v14;
    if ([v11 pointInside:a1 withEvent:?])
    {
      v16 = [v11 hitTest:a1 withEvent:{v13, v15}];

      return v16;
    }
  }

  return 0;
}

uint64_t sub_1003119E0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView();
  sub_10031296C(&qword_100952350, type metadata accessor for TodayCardLabelsView);
  v7 = v6;
  sub_10077140C();
  sub_100760BEC();
  return sub_100016C74(v9);
}

uint64_t type metadata accessor for TodayCardInfoLayerView()
{
  result = qword_100952338;
  if (!qword_100952338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100311D4C()
{
  sub_100276FE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100311E54()
{
  result = qword_100952348;
  if (!qword_100952348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952348);
  }

  return result;
}

uint64_t sub_100311EC0(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100311F10(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100311F3C()
{
  swift_weakAssign();
}

void sub_100311FB8(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = sub_10077070C();

    v8 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_1000E53E0();
    }
  }
}

id sub_100312094(char *a1)
{
  sub_10030DF18();
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v2)
  {

    v2(v3);
    sub_1000167E0(v2);
  }

  return [a1 setNeedsLayout];
}

uint64_t sub_100312114(uint64_t a1)
{
  v2 = sub_10076C7EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0.1;
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TodayCard.Style.dark(_:))
  {
    v10 = &selRef_whiteColor;
    v8 = 0.16;
LABEL_9:
    v11 = [objc_opt_self() *v10];
    v12 = [v11 colorWithAlphaComponent:v8];

    return v12;
  }

  if (v7 == enum case for TodayCard.Style.light(_:))
  {
LABEL_8:
    v10 = &selRef_blackColor;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_10077145C(44);

  v14 = 0xD00000000000002ALL;
  v15 = 0x80000001007D3D40;
  v16._countAndFlagsBits = sub_10076C7DC();
  sub_1007700CC(v16);

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_100312344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  sub_1005B9F80();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v10;
    v13 = v10;

    [v13 setAnchorPoint:{0.0, 1.0}];
    v14 = *&v7[v11];
    if (v14)
    {
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      [v14 setTransform:v21];
    }

    [v7 addSubview:v13];
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "overrideUserInterfaceStyle")}];
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];
    v15 = [v13 layer];
    if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = sub_10077071C();

      if (v17)
      {
        v18 = 12;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v18 = 12;
    }

    [v15 setMaskedCorners:v18];
    swift_unknownObjectRelease();
  }

  return [v3 setNeedsLayout];
}

double sub_100312548@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_10077071C())
  {
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v6 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v9 = v8;
    sub_10077071C();
    sub_1007704EC();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v17 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v24 = v23;
    sub_10077071C();
    sub_1007704EC();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      v7 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
      sub_10077071C();
      sub_1007704EC();
      v20 = v19;
      sub_10077071C();
      sub_1007704EC();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v18 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v28 = v27;
    sub_10077071C();
    sub_1007704EC();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_10079B350;
  result = 353.0;
  *(a3 + 40) = xmmword_10079B360;
  return result;
}

uint64_t sub_100312828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100312860()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003128B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003128EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10031290C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10031296C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003129B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_1002091B8;
  v12[1] = 0;
  v12[2] = sub_1007333BC;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_1002091B8;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_100342B64;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *(v0 + v2) = sub_1001ED0D8(v12, &v13);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_1000E4B54(&off_100882C28);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  v9 = sub_10076C38C();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100312C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = sub_100766EBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v8 = sub_100766E7C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !sub_10076C83C())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = sub_10077071C();

  if (v12)
  {
    sub_10076C77C();
    v13 = sub_100766E7C();
    v9(v7, v4);
    if ((v13 & 1) == 0 && sub_10076C83C() && (, type metadata accessor for TodayCardOverlayReusePool(), sub_10076F63C(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = sub_10077071C(), v15, (v16 & 1) != 0)))
  {
    sub_10076C77C();
    v17 = sub_100766E9C();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    sub_10076C77C();
    v18 = sub_100766E9C();
    v9(v7, v4);
    if (v18)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }
}

id sub_100312E6C()
{
  sub_10076C7FC();
  sub_10075E2EC();
  if (!swift_dynamicCastClass())
  {

    v7 = sub_10076C7FC();
    sub_100761BFC();
    sub_10000A5D4(&qword_100945700);
    if (swift_dynamicCast())
    {
      sub_100012498(v5, v8);
      sub_10000CF78(v8, v8[3]);
      if (sub_1007684EC())
      {

        if (qword_10093F708 != -1)
        {
          swift_once();
        }

        v1 = qword_10099CED0;

        sub_10000CD74(v8);
        return v1;
      }

      sub_10000CD74(v8);
    }

    else
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_10000CFBC(v5, &qword_1009456F8);
    }

    if (qword_10093F6F8 != -1)
    {
      swift_once();
    }

    v1 = xmmword_10099CEB0;

    return v1;
  }

  v0 = sub_10075E2DC();
  sub_10000A5D4(&unk_100942870);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007841E0;
  sub_100016F40(0, &qword_100952240);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
  if (result)
  {
    *(v1 + 32) = result;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007841E0;
    result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
    if (result)
    {
      *(v4 + 32) = result;

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100313114(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
  v6 = 0.174532925;
  if (v5 == 4)
  {
    v16 = 48.0;
    goto LABEL_23;
  }

  if (v5 != 6)
  {
    goto LABEL_11;
  }

  v7 = [a1 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = sub_10076FF9C();
  v11 = v10;
  if (v9 == sub_10076FF9C() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = sub_10077167C();

  if (v14)
  {
    *&v15 = 100.0;
  }

  else
  {
LABEL_11:
    *&v15 = 80.0;
  }

LABEL_12:
  v16 = *&v15;
  v17 = a1[v4];
  if (v17 == 4)
  {
    goto LABEL_23;
  }

  if (v17 != 6)
  {
    goto LABEL_21;
  }

  v18 = [a1 traitCollection];
  v19 = sub_10077071C();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_10077167C();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = sub_10076FF9C();
    v29 = v28;
    if (v27 == sub_10076FF9C() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_10077167C();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = sub_10077071C();

      if ((v34 & 1) == 0)
      {
        v35 = 385.0;
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  [a1 bounds];
  v35 = CGRectGetWidth(v58) * 0.5;
LABEL_34:
  v36 = v35 * tan(v6);
  [a1 bounds];
  v37 = ceil(v36 + v16 + CGRectGetHeight(v59) - a2);
  v38 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = sub_10077071C();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = sub_10076FF9C();
        v43 = v42;
        if (v41 == sub_10076FF9C() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = sub_10077167C();

        if (v45)
        {
          goto LABEL_42;
        }
      }

      [a1 bounds];
      CGRectGetMinX(v63);
      [a1 bounds];
      CGRectGetHeight(v64);
      v51 = [a1 traitCollection];
      [a1 bounds];
      sub_1007709CC();
      MinX = v52;
      v48 = v53;
      v55 = v54;
      v57 = v56;

      v50 = v57;
      Width = v55;
      goto LABEL_46;
    }
  }

LABEL_42:
  [a1 bounds];
  MinX = CGRectGetMinX(v60);
  [a1 bounds];
  v47 = CGRectGetHeight(v61) - v37;
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  [a1 bounds];
  Width = CGRectGetWidth(v62);
  v50 = v37;
LABEL_46:
  [v38 setFrame:{MinX, v48, Width, v50}];
  *&v38[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_1000E53E0();
  *&v38[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_1000E53E0();
}

uint64_t sub_1003136A0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_100952360 = v5;
  return result;
}

uint64_t sub_100313798()
{
  v2._object = 0x80000001007DEC20;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_1007622EC(v2, v3);
  qword_100952368 = result;
  unk_100952370 = v1;
  return result;
}

uint64_t sub_1003137DC()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100952378);
  sub_10000A61C(v0, qword_100952378);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FECC();
}

void sub_100313878(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_1007706EC() & 1) != 0 || (sub_10077071C())
  {
    v4 = sub_10077070C();

    v5 = 2;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = sub_10077070C();

    v5 = 2;
    if (v6)
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}

uint64_t sub_100313904()
{
  v0 = sub_10076D9AC();
  __chkstk_darwin(v0 - 8);
  v17[2] = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_100767AFC();
  sub_10000DB18(v7, qword_10099E5C8);
  v17[1] = sub_10000A61C(v7, qword_10099E5C8);
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1438);
  v10 = *(*(v8 - 8) + 16);
  v10(v5, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for FontSource.useCase(_:), v2);
  sub_10075FE4C();
  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A1450);
  v10(v5, v13, v8);
  v12(v5, v11, v2);
  v19 = v2;
  v20 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v18);
  (*(v3 + 16))(v14, v5, v2);
  sub_10076D9BC();
  (*(v3 + 8))(v5, v2);
  v19 = &type metadata for Double;
  v20 = &protocol witness table for Double;
  v18[0] = 0x4030000000000000;
  if (qword_10093FDD0 != -1)
  {
    swift_once();
  }

  v15 = qword_100952360;
  [v15 size];

  return sub_100767AEC();
}

char *sub_100313CA8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v57 = v4;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView] = v16;
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1438);
  v19 = *(v17 - 8);
  v55 = *(v19 + 16);
  v55(v14, v18, v17);
  v20 = *(v19 + 56);
  v20(v14, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v10 + 104);
  v54(v56, enum case for DirectionalTextAlignment.none(_:), v9);
  v22 = sub_1007626BC();
  v53 = v9;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v57[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] = sub_1007626AC();
  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v17, qword_1009A1450);
  v55(v14, v25, v17);
  v20(v14, 0, 1, v17);
  v54(v56, v21, v53);
  v26 = objc_allocWithZone(v23);
  v27 = sub_1007626AC();
  v28 = v57;
  *&v57[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] = v27;
  v29 = type metadata accessor for DeveloperLinkView();
  v60.receiver = v28;
  v60.super_class = v29;
  v30 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView;
  v36 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView];
  sub_100016F40(0, &qword_100942F10);
  v37 = v36;
  v38 = sub_100770D1C();
  [v37 setTintColor:v38];

  v39 = qword_10093FDD0;
  v40 = *&v34[v35];
  if (v39 != -1)
  {
    swift_once();
  }

  [v40 setImage:qword_100952360];

  if (qword_10093FDE0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v41, qword_100952378);
  v58 = v34;
  v42 = v34;
  sub_10075FDCC();

  v43 = v59;
  v44 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:v59];
  [*&v42[v44] _setTextColorFollowsTintColor:1];
  v45 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v43];
  v46 = *&v42[v45];
  v61._object = 0x80000001007DEC20;
  v61._countAndFlagsBits = 0xD000000000000016;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007622EC(v61, v62);
  v47 = sub_10076FF6C();

  [v46 setText:v47];

  v48 = *&v42[v45];
  v49 = sub_100770D1C();
  [v48 setTextColor:v49];

  v50 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v42 action:"didTapLink:"];
  [v42 addGestureRecognizer:v50];
  [v42 addSubview:*&v34[v35]];
  [v42 addSubview:*&v42[v44]];
  [v42 addSubview:*&v42[v45]];

  return v42;
}

uint64_t sub_1003143A0()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767AFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100767B1C();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeveloperLinkView();
  v39.receiver = v0;
  v39.super_class = v11;
  v25[1] = v11;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView];
  v13 = [v0 traitCollection];
  v14 = sub_1007706FC();

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v1 traitCollection];
    v15 = sub_10077071C();
  }

  [v12 setHidden:v15 & 1];
  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v4, qword_10099E5C8);
  (*(v5 + 16))(v7, v17, v4);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel];
  v37 = sub_1007626BC();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v18;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel];
  v34 = v37;
  v33 = v19;
  v31 = sub_100016F40(0, &qword_10094A280);
  v32 = &protocol witness table for UIView;
  v30 = v12;
  v20 = v18;
  v21 = v19;
  v22 = v12;
  sub_100767B0C();
  sub_10076422C();
  v23 = v27;
  sub_100767ADC();
  (*(v28 + 8))(v23, v29);
  return (*(v8 + 8))(v10, v26);
}

double sub_100314778()
{
  v1 = sub_100767AFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100767B1C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v1, qword_10099E5C8);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel);
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19[10] = &protocol witness table for UILabel;
  v19[11] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel);
  v19[9] = v20;
  v19[6] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView);
  v19[4] = sub_100016F40(0, &qword_10094A280);
  v19[5] = &protocol witness table for UIView;
  v19[1] = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_100767B0C();
  sub_100767ACC();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

double sub_100314A80(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v43 = a3;
  v47 = sub_10076997C();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_100767AFC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100767B1C();
  v49 = *(v50 - 8);
  *&v12 = __chkstk_darwin(v50).n128_u64[0];
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706FC();

  v16 = 2;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  v42 = v16;
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  sub_10000A61C(v17, qword_1009A1438);
  v18 = [a1 traitCollection];
  v19 = sub_100770B3C();

  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v17, qword_1009A1450);
  v51 = a1;
  v20 = [a1 traitCollection];
  v41 = sub_100770B3C();

  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v9, qword_10099E5C8);
  (*(v10 + 16))(v52, v21, v9);
  v22 = sub_10076C04C();
  v57[3] = v22;
  v40 = sub_10004C7BC();
  v57[4] = v40;
  v23 = sub_10000DB7C(v57);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(*(v22 - 8) + 104);
  v25(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v22);

  v26 = v19;
  sub_10076C90C();
  sub_10000CD74(v57);
  v44 = v26;
  sub_10076996C();
  sub_10076994C();
  v27 = *(v46 + 8);
  v28 = v8;
  v29 = v47;
  v27(v28, v47);
  if (qword_10093FDD8 != -1)
  {
    swift_once();
  }

  v56[3] = v22;
  v56[4] = v40;
  v30 = sub_10000DB7C(v56);
  v25(v30, v24, v22);

  v31 = v41;
  sub_10076C90C();
  sub_10000CD74(v56);
  v32 = v45;
  sub_10076996C();
  sub_10076994C();
  v27(v32, v29);
  if (qword_10093FDD0 != -1)
  {
    swift_once();
  }

  [qword_100952360 size];
  v33 = sub_10076DDDC();
  swift_allocObject();
  v34 = sub_10076DDBC();
  v54 = v33;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v34;
  v35 = v48;
  sub_100767B0C();
  sub_100767ACC();
  v37 = v36;

  (*(v49 + 8))(v35, v50);
  return v37;
}

id sub_1003151C4(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DeveloperLinkView();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FDE0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_100952378);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v8];
  }

  return result;
}

id sub_1003153A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeveloperLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100315468()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_100315520();
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_100316098(v4, v6);
    sub_1003160EC(v7, v8);
  }

  sub_100316154(v2, v3);
  return v4;
}

uint64_t sub_100315520()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10000A5D4(&qword_100952410);
    inited = swift_initStackObject();
    v34 = xmmword_100783DD0;
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = sub_10076740C();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = sub_1000FD3F0(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100948BD0);
    sub_1007673DC();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_10000CFBC(v2, &unk_1009435D0);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v38 = v3;
      v13 = sub_10000DB7C(&v37);
      (*(v4 + 16))(v13, v6, v3);
      sub_10000CD64(&v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_10024AD30(v36, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v12 = v35;
    }

    v15 = sub_10076741C();
    if (v16)
    {
      v38 = &type metadata for String;
      *&v37 = v15;
      *(&v37 + 1) = v16;
      sub_10000CD64(&v37, v36);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_10024AD30(v36, 0x796E61706D6F63, 0xE700000000000000, v17);
      v12 = v35;
    }

    v18 = sub_1007673EC();
    if (v19)
    {
      v38 = &type metadata for String;
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_10000CD64(&v37, v36);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_10024AD30(v36, 0x79726F6765746163, 0xE800000000000000, v20);
      v12 = v35;
    }

    v21 = sub_1007673FC();
    if ((v22 & 1) == 0)
    {
      v38 = &type metadata for Int64;
      *&v37 = v21;
      sub_10000CD64(&v37, v36);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_10024AD30(v36, 0x7A69735F656C6966, 0xE900000000000065, v23);
      v12 = v35;
    }

    v24 = sub_10076742C();
    if (v25)
    {
      v38 = &type metadata for String;
      *&v37 = v24;
      *(&v37 + 1) = v25;
      sub_10000CD64(&v37, v36);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_10024AD30(v36, 0x79745F616964656DLL, 0xEA00000000006570, v26);
    }

    v27 = objc_opt_self();
    isa = sub_10076FE3C().super.isa;

    *&v37 = 0;
    v29 = [v27 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v37];

    v30 = v37;
    if (v29)
    {
      v31 = sub_10075DB9C();

      return v31;
    }

    else
    {
      v32 = v30;
      sub_10075DA4C();

      swift_willThrow();
      if (qword_1009412D8 != -1)
      {
        swift_once();
      }

      v33 = sub_10076FD4C();
      sub_10000A61C(v33, qword_1009A25D0);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = v34;
      sub_10076F27C();
      sub_10076FBEC();

      return 0;
    }
  }

  return result;
}

void sub_100315BE0(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_10077167C();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_100315468();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_100315CDC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_10076FF9C();
  v5 = v4;
  if (v3 == sub_10076FF9C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10077167C();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_100315468();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_100315FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100316098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1003160EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100316100(a1, a2);
  }

  return a1;
}

uint64_t sub_100316100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100316154(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100316098(a1, a2);
  }

  return a1;
}

unint64_t sub_100316168(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_10076FF9C();
    v4 = v3;
    if (v2 == sub_10076FF9C() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_10077167C();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

id sub_100316250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100770BFC();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C36C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = sub_100770BDC();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_100770BEC();
  sub_100317990(v6);
  sub_100770BBC();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_100940280 != -1)
  {
    swift_once();
  }

  sub_10076C33C();

  return (*(v11 + 8))(v17, v10);
}

void sub_100316818()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100316A90(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_100316C7C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_100316E04(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_100316E7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_100770BFC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = sub_100770BDC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100770BEC();
  sub_100317990(v5);
  sub_100770BBC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_100316A90(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_100317204(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_1003175A4(v37, v33, v32);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100317204(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100317A38;
        *(v10 + 24) = v9;
        aBlock[4] = sub_1000349FC;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_1008912D8;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_1003175A4(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a1;
  }

  v12 = [v3 traitCollection];
  v13 = sub_1007706CC();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a3 + 160))(ObjectType, a3);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_100316250(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a3 + 80))(v19, v17, 1, v11, v20, v21, v18, a3);

  (*(v8 + 8))(v11, v7);
  return a1;
}

id sub_10031781C(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100317990(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003179F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100317A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100317A6C()
{
  sub_10000A5D4(&unk_100948AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0);
  result = swift_arrayDestroy();
  qword_1009524A0 = v1;
  return result;
}

NSNumber sub_100317C6C()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  sub_1001E2870();
  *(v0 + 32) = sub_100770EBC(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result.super.super.isa = sub_100770EBC(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_1009524B0 = v0;
  return result;
}

void sub_100317D0C()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_1009524B8 = v0;
}

NSNumber sub_100317EB0()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10079B610;
  sub_1001E2870();
  *(v0 + 32) = sub_100770EBC(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result.super.super.isa = sub_100770EBC(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_1009524C8 = v0;
  return result;
}

void sub_100317F90()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10079B610;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_1009524D0 = v0;
}

char *sub_100318188(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_10093FE18;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1001E2870();
  isa = sub_1007701AC().super.isa;
  [v20 setLocations:isa];

  v22 = qword_10093FE20;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_10016D8F8(qword_1009524D0);
  v24 = sub_1007701AC().super.isa;

  [v23 setColors:v24];

  v25 = qword_10093FDF0;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0);
  v27 = sub_10076FE3C().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_10000A5D4(&unk_100942870);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100785D70;
  v32 = v30;
  *(v31 + 32) = sub_100770EBC(0.0);
  *(v31 + 40) = sub_100770EBC(1.0);
  v33 = sub_1007701AC().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_10000A5D4(&unk_1009434B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100784500;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = sub_1007701AC().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = sub_10076FE3C().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_10093FE00;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_1007701AC().super.isa;
  [v52 setLocations:v53];

  v54 = qword_10093FE08;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_10016D8F8(qword_1009524B8);
  v56 = sub_1007701AC().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = sub_10076FE3C().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_1003189B0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  Height = CGRectGetHeight(v15);
  if (qword_10093FDF8 != -1)
  {
    swift_once();
  }

  v2 = Height * *&qword_1009524A8;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient];
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [v0 bounds];
  MinY = CGRectGetMinY(v17);
  [v0 bounds];
  [v3 setFrame:{MinX, MinY, CGRectGetWidth(v18), v2}];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_10093FE10 != -1)
    {
      swift_once();
    }

    v6 = Height * *&qword_1009524C0;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v0 bounds];
  v7 = CGRectGetMinX(v19);
  [v0 bounds];
  v8 = CGRectGetMaxY(v20) - v6;
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView];
  [v10 setFrame:{v7, v8, Width, v6}];
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v10 bounds];
  [v11 setFrame:?];
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient];
  [v10 bounds];
  return [v12 setFrame:?];
}

id sub_100318C0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100318CD0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_10077156C();
  __break(1u);
}

BOOL sub_100318E24()
{
  ObjectType = swift_getObjectType();
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076727C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100955BD0);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v71 = v10;
  v72 = v8;
  v74 = v4;
  v75 = v14;
  v73 = v12;
  v20 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v69 = v16;
    v61 = v17;
    v62 = v19;
    v63 = sub_10077158C();
    v19 = v62;
    v17 = v61;
    v22 = v63;
    v16 = v69;
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v69 = v16;
    v64 = v17;
    v65 = v19;
    v66 = sub_10077158C();
    v19 = v65;
    v17 = v64;
    v67 = v66;
    v16 = v69;
    v26 = v6;
    if (!v67)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  v69 = v16;
  v70 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    sub_10077149C();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = sub_10076157C();
  if (v29 >> 62)
  {
    v30 = sub_10077158C();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v70;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v69))
  {
    v49 = &v31[v33];
    v50 = v69;
    (*(v28 + 16))(v27, v49, v69);
    sub_100761FEC();
    (*(v28 + 8))(v27, v50);
    sub_10076B8EC();
    v31 = v70;
    v52 = v51;

    if (v52)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_10076422C();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_10093FE40 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_10000A5D4(&unk_100952630);
  sub_10000A61C(v39, qword_10099E610);
  v77[0] = v70;
  v40 = v70;
  sub_10075FDCC();

  if (sub_10076722C())
  {
    sub_10076422C();
    Width = CGRectGetWidth(v80);
    sub_10076422C();
    Height = CGRectGetHeight(v81) - v2;
  }

  else
  {
    sub_10076726C();
    sub_10000CF78(v77, v78);
    v43 = v71;
    sub_1000FF02C();
    sub_10076D40C();
    v45 = v44;
    (*(v72 + 8))(v43, v7);
    sub_10000CD74(v77);
    sub_10076422C();
    Width = CGRectGetWidth(v82) - (v1 + v45);
    sub_10076422C();
    Height = CGRectGetHeight(v83);
  }

  v46 = *&v40[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  v47 = [v46 text];
  if (v47)
  {
    v48 = v47;
    ObjectType = sub_10076FF9C();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_10093FE38 != -1)
  {
    swift_once();
  }

  v53 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v53, qword_100952540);
  v77[0] = v40;
  v54 = v40;
  sub_10075FDCC();

  [v46 numberOfLines];
  v55 = sub_10076C04C();
  v78 = v55;
  v79 = sub_10031DD98(&qword_100943230, &type metadata accessor for Feature);
  v56 = sub_10000DB7C(v77);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10076C90C();
  sub_10000CD74(v77);
  sub_10076991C();
  v58 = v57;

  (*(v74 + 8))(v26, v23);
  [v46 sizeThatFits:{Width, Height}];
  v60 = v59;

  (*(v73 + 8))(v75, v24);
  return floor(v60 - v58) > 0.0;
}

uint64_t sub_100319684()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076727C();
  sub_10000DB18(v4, qword_10099E5E0);
  v30 = sub_10000A61C(v4, qword_10099E5E0);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v5 = qword_1009525A0;
  [v5 size];

  v6 = qword_1009525A0;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A1270);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = sub_10076D9AC();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  sub_10076D9BC();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v46);
  v35(v16, v3, v0);
  sub_10076D9BC();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v42);
  v21 = v35;
  v35(v20, v3, v0);
  sub_10076D9BC();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(v39);
  v21(v23, v3, v0);
  sub_10076D9BC();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return sub_10076723C();
}

uint64_t sub_100319C08()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076727C();
  sub_10000DB18(v4, qword_10099E5F8);
  v24[2] = sub_10000A61C(v4, qword_10099E5F8);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v5 = qword_1009525A0;
  [v5 size];

  v6 = qword_1009525A0;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A1258);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = sub_10076D9AC();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  sub_10076D9BC();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v7, qword_1009A1270);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v39);
  v30(v16, v3, v0);
  sub_10076D9BC();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v35);
  v30(v20, v3, v0);
  sub_10076D9BC();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v32);
  v30(v22, v3, v0);
  sub_10076D9BC();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return sub_10076723C();
}

uint64_t sub_10031A1BC()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_100952540);
  sub_10000A61C(v7, qword_100952540);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1270);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1258);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10031A39C()
{
  v0 = sub_10076727C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&unk_100952630);
  sub_10000DB18(v7, qword_10099E610);
  sub_10000A61C(v7, qword_10099E610);
  if (qword_10093FE28 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_10099E5E0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10093FE30 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_10099E5F8);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10031A588()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100952570);
  sub_10000A61C(v0, qword_100952570);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FECC();
}

uint64_t sub_10031A624@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_10077070C();

  result = sub_10076722C();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_10031A6A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10031A738()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_1009525A0 = v5;
  return result;
}

char *sub_10031A830(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_100952620);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  sub_10076D4CC();
  sub_100071820(&qword_100952628, &qword_100952620);
  sub_10076E18C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  v16 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_1009525A0];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] = v17;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_100016F40(0, &qword_100942F10);
  v23 = sub_100770D2C();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView];
  v27 = sub_100770D1C();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_10076266C();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = sub_100770D1C();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = sub_100770D2C();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  sub_10076266C();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = sub_100770CFC();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = sub_100770D2C();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_10031ADC0();
  return v21;
}

void sub_10031ADC0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  if (qword_10093FE48 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v2, qword_100952558);
  v3 = v0;
  sub_10075FDCC();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  if (qword_10093FE50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v2, qword_100952570);
  v5 = v3;
  sub_10075FDCC();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_10093FE58;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v2, qword_100952588);
    v10 = v5;
    v9 = v5;
    sub_10075FDCC();

    [v8 setTextAlignment:{v11, v10}];
  }
}

uint64_t sub_10031AFEC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100952650);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_10031C0A4();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v10 = *&v0[v8];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v8] = _swiftEmptyArrayStorage;

    v15 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_10031DCE8(v5, &v0[v16]);
    swift_endAccess();
    sub_10031C22C();
    return sub_10000CFBC(v5, &qword_100952650);
  }

  result = sub_10077158C();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_10076E1EC();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076E21C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10076D1FC();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076729C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076727C();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  if (qword_10093FE38 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v19, qword_100952540);
  v85 = v1;
  v20 = v1;
  sub_10075FDCC();

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  sub_1007625DC();
  v24 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  sub_1007625DC();
  v53 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    sub_1007625DC();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_100318E24();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_10093FE40 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100952630);
  sub_10000A61C(v32, qword_10099E610);
  v85 = v20;
  v33 = v72;
  sub_10075FDCC();
  sub_10076724C();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  sub_10076725C();
  (*(v73 + 16))(v31, v33, v30);
  v35 = sub_1007626BC();
  v86 = v35;
  v87 = &protocol witness table for UILabel;
  v36 = v54;
  v84 = &protocol witness table for UILabel;
  v85 = v54;
  v83 = v35;
  v82 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_10016E560(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v79 = 0;
    v78 = 0;
  }

  v77 = v40;
  v80 = v35;
  v81 = v41;
  v42 = sub_100016F40(0, &qword_10094A280);
  v76 = &protocol witness table for UIView;
  v75 = v42;
  v74 = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  sub_10076728C();
  v46 = v56;
  sub_10076721C();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v86 = sub_10076D67C();
  v87 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v85);
  sub_10076D66C();
  v47 = v69;
  sub_10076E1FC();
  v48 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    sub_10076E1CC();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

void sub_10031BDF8()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = sub_10077158C();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000A5D4(&unk_100952640);
      sub_10076E15C();
      swift_endAccess();
      sub_10056D108(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      sub_10077019C();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v4;
      sub_10077025C();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_10031C058@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_10031C0A4()
{
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
    if (v4 >> 62)
    {
      result = sub_10077158C();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = v0;

          sub_10077149C();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = v0;
        }

        sub_10076151C();
        v8 = v7;

        if (v8)
        {
          v2 = sub_10076FF6C();
        }

        else
        {
          v2 = 0;
        }

        v0 = v6;
        goto LABEL_14;
      }
    }

    v2 = 0;
LABEL_14:
    [v3 setText:v2];
    goto LABEL_15;
  }

  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];

  v2 = sub_10076FF6C();

  [v1 setText:v2];
LABEL_15:

  return [v0 setNeedsLayout];
}

void sub_10031C22C()
{
  v1 = sub_10000A5D4(&qword_100955BD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, sub_100761FEC(), (*(v2 + 8))(v4, v1), sub_10076B8EC(), v11 = v10, , v11))
  {
    sub_1007626BC();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10076260C();

    sub_100016F40(0, &qword_100942F10);
    v13 = v12;
    v14 = sub_100770E1C();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = sub_100770D2C();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_10031C59C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = sub_10077070C();

  if (!a1 || (sub_10077070C() & 1) != (v4 & 1))
  {
    sub_10031ADC0();
  }
}

char *sub_10031C708()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = sub_10077149C();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_10000A5D4(&qword_100952660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783C60;
      *(inited + 32) = sub_10076152C();
      *(inited + 40) = v8;
      *(inited + 48) = sub_10076151C();
      *(inited + 56) = v9;
      *(inited + 64) = sub_10076156C();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = sub_10076157C();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_10077158C();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
          }

          v14 = sub_10076153C();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_10049D6EC((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = sub_10076154C();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_10049D6EC((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10049D954(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10049D954((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_10000A5D4(&unk_10094BB60);
      sub_100071820(&qword_100943480, &unk_10094BB60);
      v38 = sub_10076FEFC();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10049D954(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_10049D954((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = sub_10077158C();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell()
{
  result = qword_100952600;
  if (!qword_100952600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031CDF0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_10031CF38();
    if (v1 <= 0x3F)
    {
      sub_1001D92E0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10031CF38()
{
  if (!qword_100952618)
  {
    sub_10000CE78(&qword_100952620);
    sub_100071820(&qword_100952628, &qword_100952620);
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_100952618);
    }
  }
}

void *sub_10031CFDC(char *a1, int a2, void *a3)
{
  v76 = a2;
  v5 = sub_10076729C();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076727C();
  v86 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v68 - v9;
  v83 = sub_10076997C();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00);
  if (qword_10093FE38 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_10000A5D4(&qword_10094C390);
    sub_10000A61C(v16, qword_100952540);
    v106[0] = a3;
    sub_10075FDCC();
    v79 = a3;
    v17 = [a3 traitCollection];
    v18 = sub_100770B3C();

    (*(v13 + 8))(v15, v12);
    sub_10075F4FC();
    v19 = sub_10076C04C();
    v106[3] = v19;
    v82 = sub_10031DD98(&qword_100943230, &type metadata accessor for Feature);
    v106[4] = v82;
    v20 = sub_10000DB7C(v106);
    v88 = a1;
    v21 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v22 = *(v19 - 8);
    v23 = *(v22 + 104);
    v24 = v22 + 104;
    v23(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
    v91 = v18;
    sub_10076C90C();
    sub_10000CD74(v106);
    sub_10076996C();
    sub_10076994C();
    v25 = v87 + 8;
    v26 = *(v87 + 8);
    v27 = v83;
    v26(v11, v83);
    sub_10075F50C();
    v90 = v28;
    v105[3] = v19;
    v105[4] = v82;
    v29 = sub_10000DB7C(v105);
    v73 = v21;
    v30 = v21;
    v31 = v19;
    v71 = v24;
    v72 = v23;
    v23(v29, v30, v19);
    v32 = v91;
    v15 = sub_10076C90C();
    sub_10000CD74(v105);
    sub_10076996C();
    sub_10076994C();
    v70 = v26;
    v26(v11, v27);
    v33 = sub_10075F4EC();
    v34 = v33;
    v13 = v33 >> 62;
    v35 = v33 >> 62 ? sub_10077158C() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v25;
    v74 = v31;
    v75 = v11;
    if (!v35)
    {
      break;
    }

    *&v99 = _swiftEmptyArrayStorage;
    result = sub_1004BB7D4(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v99;
    v69 = v32;
    v90 = v35;
    v89 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      v37 = sub_10077158C();
    }

    else
    {
      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v34;
    v91 = (v34 & 0xC000000000000001);
    v41 = _s8ItemViewCMa();
    a1 = 0;
    v11 = (v37 & ~(v37 >> 63));
    while (v11 != a1)
    {
      if (v91)
      {
        v42 = sub_10077149C();
      }

      else
      {
        if (a1 >= *(v89 + 16))
        {
          goto LABEL_30;
        }

        v42 = *(v12 + 8 * a1 + 32);
      }

      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v42;
      v44 = sub_10076DDDC();
      swift_allocObject();

      v45 = sub_10076DD9C();
      *(&v103 + 1) = v44;
      v104 = &protocol witness table for LayoutViewPlaceholder;

      *&v102 = v45;
      *&v99 = a3;
      v47 = a3[2];
      v46 = a3[3];
      if (v47 >= v46 >> 1)
      {
        sub_1004BB7D4((v46 > 1), v47 + 1, 1);
      }

      ++a1;
      v48 = *(&v103 + 1);
      v13 = v104;
      v49 = sub_10008B8A4(&v102, *(&v103 + 1));
      v50 = __chkstk_darwin(v49);
      v15 = &v68 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v15, v50);
      sub_10016FC14(v47, v15, &v99, v48, v13);
      sub_10000CD74(&v102);
      a3 = v99;
      if (v90 == a1)
      {

        v39 = v80;
        v38 = v81;
        v40 = v79;
        v32 = v69;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v39 = v80;
  v38 = v81;
  v40 = v79;
LABEL_20:
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  if (sub_10075F4CC())
  {
    sub_10076B8EC();
    v54 = v53;

    if (v54)
    {
      v55 = v74;
      *(&v100 + 1) = v74;
      v101 = v82;
      v56 = sub_10000DB7C(&v99);
      v72(v56, v73, v55);
      v57 = v32;
      sub_10076C90C();
      sub_10000CD74(&v99);
      v58 = v75;
      sub_10076996C();
      sub_10076994C();
      v70(v58, v83);
      sub_10000CFBC(&v102, &qword_10094BB30);
      v102 = v99;
      v103 = v100;
      v104 = v101;
    }
  }

  if (qword_10093FE40 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A5D4(&unk_100952630);
  sub_10000A61C(v59, qword_10099E610);
  *&v99 = v40;
  v60 = v85;
  sub_10075FDCC();
  sub_10076724C();
  v61 = [v40 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  sub_10076725C();
  v62 = v78;
  (*(v86 + 16))(v84, v60, v78);
  sub_10000A570(v106, &v99);
  sub_10000A570(v105, &v98);
  sub_100016E2C(&v102, &v92, &qword_10094BB30);
  v63 = *(&v93 + 1);
  if (*(&v93 + 1))
  {
    v64 = v94;
    v65 = sub_10000CF78(&v92, *(&v93 + 1));
    *(&v96 + 1) = v63;
    v97 = *(v64 + 8);
    v66 = sub_10000DB7C(&v95);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_10000CD74(&v92);
  }

  else
  {
    sub_10000CFBC(&v92, &qword_10094BB30);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v67 = v77;
  sub_10076728C();
  sub_10031DD98(&qword_100952658, &type metadata accessor for ProductAnnotationLayout);
  sub_10076D2AC();

  (*(v39 + 8))(v67, v38);
  (*(v86 + 8))(v85, v62);
  sub_10000CFBC(&v102, &qword_10094BB30);
  sub_10000CD74(v105);
  return sub_10000CD74(v106);
}

uint64_t sub_10031DB84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_10077158C();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10000A5D4(&unk_100952640);
      sub_10076E17C();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031DCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DD58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031DD98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10031DDE0()
{
  v1 = sub_10000A5D4(&qword_100952620);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  sub_10076D4CC();
  sub_100071820(&qword_100952628, &qword_100952620);
  sub_10076E18C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  v7 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10031E00C()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000A5D4(&qword_100955BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_100016E2C(v0 + v11, v6, &qword_100952650);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100952650;
    v13 = v6;
    return sub_10000CFBC(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100761FDC();
  v14 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100943200;
    v13 = v3;
    return sub_10000CFBC(v13, v12);
  }

  sub_100761FEC();
  v17 = sub_100761FDC();
  sub_100263BF0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

double sub_10031E38C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076219C();
  sub_10031E588(&qword_100952668, &type metadata accessor for PrivacyCategory);
  sub_10076332C();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  v5 = sub_100630CB4();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v10 = sub_1001052B0(v4, v5);
  sub_10076DDDC();
  sub_10076D2AC();
  v7 = v6;

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_10031E588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031E5D4(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = sub_10076C2DC();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v10 - 8);
  v51 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = v40 - v13;
  __chkstk_darwin(v14);
  v49 = v40 - v15;
  __chkstk_darwin(v16);
  v45 = v40 - v17;
  __chkstk_darwin(v18);
  v44 = v40 - v19;
  __chkstk_darwin(v20);
  v43 = v40 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  sub_10000A5D4(&qword_100942910);
  v26 = *(sub_10076C20C() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_100783C60;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_10079B7D0, xmmword_10079B7C0);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  v40[1] = v29;
  sub_10076C1CC();
  v57 = 0x3FF0000000000000;
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_10079B7F0, xmmword_10079B7E0);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v57 = 0x3FF0000000000000;
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_10079B810, xmmword_10079B800);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v47;
}

uint64_t sub_10031ED1C()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10076C29C();
  v49 = 0;
  v41 = v7;
  sub_10076C29C();
  v38 = v14;
  v42 = v11;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4014000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100952670 = v37;
  return result;
}

uint64_t sub_10031F6EC()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10076C29C();
  v49 = 0;
  v41 = v7;
  sub_10076C29C();
  v38 = v14;
  v42 = v11;
  sub_10076C1CC();
  v49 = 0x3FF8000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100952678 = v37;
  return result;
}

char *sub_1003200BC()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_10023428C(_swiftEmptyArrayStorage);
  }

  result = sub_1004BBAA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      [v5 contentOffset];
      v8 = v7;
      [v6 adjustedContentInset];
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1004BBAA4((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *&_swiftEmptyArrayStorage[v12 + 4] = v8 + v10;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100320250()
{

  sub_1000167E0(*(v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_1003202B4()
{
  result = sub_1003200BC();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v2;

    v3(v5, v4);

    return sub_1000167E0(v3);
  }

  return result;
}

char *sub_100320328(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell();
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_10076F91C();
  sub_10000CFBC(v24, &unk_1009434C0);
  sub_10000CFBC(v25, &unk_1009434C0);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t sub_1003206DC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  v4 = (v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler);
  v5 = *v4;
  *v4 = 0;
  v4[1] = 0;
  sub_1000167E0(v5);
  v6 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v6);
  v7 = *v4;
  *v4 = 0;
  v4[1] = 0;
  return sub_1000167E0(v7);
}

id sub_1003207C0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_100320908(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *(*&a1[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView] + *a4);
  if (v8)
  {

    v8(v9);
    sub_1000167E0(v8);
  }

  return sub_10000CFBC(v11, &unk_1009434C0);
}

id sub_100320AC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell()
{
  result = qword_100952750;
  if (!qword_100952750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100320BB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension28TabPlaceholderViewController_storeTab;
  v6 = sub_10075F37C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v9 = sub_1006FC188();
  if (v9)
  {
    v10 = v9;
    [v8 setTabBarItem:v9];
    v11 = [v8 title];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [v8 title];
    if (v12)
    {
      v13 = v12;
      v14 = sub_10076FF9C();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {
LABEL_7:
        v18 = [v10 title];
        if (v18)
        {
          v19 = v18;
          sub_10076FF9C();
        }

        else
        {
          sub_10075F36C();
          if (!v21)
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v22 = sub_10076FF6C();

LABEL_15:
        [v8 setTitle:v22];
      }
    }
  }

  else
  {
    sub_10075F36C();
    if (v20)
    {
      v10 = sub_10076FF6C();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];
  }

  result = [v8 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor:v25];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100320E9C(uint64_t a1)
{
  v73 = a1;
  v66 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v66);
  v67 = &v64 - v1;
  v2 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v2 - 8);
  v64 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v64 - v5;
  __chkstk_darwin(v6);
  v70 = &v64 - v7;
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  __chkstk_darwin(v8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  v13 = sub_10000A5D4(&qword_100952798);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  __chkstk_darwin(v26);
  v28 = &v64 - v27;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_1006FB794(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = &unk_10094A890;
    v33 = v18;
LABEL_27:
    sub_10000CFBC(v33, v32);
    v41 = 0;
    return v41 & 1;
  }

  sub_10005DAD8(v18, v31);
  v34 = &v15[*(v13 + 48)];
  sub_10005C684(v31, v15);
  sub_10005C684(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_10005C684(v15, v25);

        v43 = sub_10000A5D4(&unk_100964150);
        v44 = *(v43 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v45 = *(v43 + 48);
          v46 = v70;
          sub_100050DA4(&v25[v44], v70);
          v47 = v34 + v45;
          v48 = v69;
          sub_100050DA4(v47, v69);
          v49 = v67;
          v50 = *(v66 + 48);
          sub_100050CC0(v46, v67);
          sub_100050CC0(v48, v49 + v50);
          v51 = v71;
          v52 = *(v72 + 48);
          if (v52(v49, 1, v71) == 1)
          {
            sub_10000CFBC(v48, &unk_1009435D0);
            sub_10000CFBC(v46, &unk_1009435D0);
            sub_10005C6E8(v31);
            if (v52(v49 + v50, 1, v51) == 1)
            {
              sub_10000CFBC(v49, &unk_1009435D0);
              v41 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v60 = v64;
            sub_100050CC0(v49, v64);
            if (v52(v49 + v50, 1, v51) != 1)
            {
              v61 = v72;
              v62 = v68;
              (*(v72 + 32))(v68, v49 + v50, v51);
              sub_100321948();
              v41 = sub_10076FF1C();
              v63 = *(v61 + 8);
              v63(v62, v51);
              sub_10000CFBC(v69, &unk_1009435D0);
              sub_10000CFBC(v70, &unk_1009435D0);
              sub_10005C6E8(v31);
              v63(v60, v51);
              sub_10000CFBC(v49, &unk_1009435D0);
              goto LABEL_33;
            }

            sub_10000CFBC(v69, &unk_1009435D0);
            sub_10000CFBC(v70, &unk_1009435D0);
            sub_10005C6E8(v31);
            (*(v72 + 8))(v60, v51);
          }

          sub_10000CFBC(v49, &unk_100964140);
          v41 = 0;
          goto LABEL_33;
        }

        sub_10005C6E8(v31);
        sub_10000CFBC(&v25[v44], &unk_1009435D0);
LABEL_26:
        v32 = &qword_100952798;
        v33 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_10005C6E8(v31);
      goto LABEL_26;
    }

    sub_10005C6E8(v31);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_10005C6E8(v34);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_10005C6E8(v31);
        sub_10005C684(v15, v22);

        v53 = sub_10000A5D4(&qword_1009499D0);
        v54 = *(v53 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v58 = sub_1007615AC();
          (*(*(v58 - 8) + 8))(&v22[v54], v58);
          goto LABEL_26;
        }

        v55 = *(v53 + 48);
        v56 = sub_1007615AC();
        v57 = *(*(v56 - 8) + 8);
        v57(v34 + v55, v56);
        v57(&v22[v54], v56);
        break;
      case 44:
        sub_10005C6E8(v31);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_10005C684(v15, v28);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v36 = v71;
          v37 = v72;
          v38 = *(v72 + 32);
          v39 = v68;
          v38(v68, v28, v71);
          v40 = v65;
          v38(v65, v34, v36);
          v41 = sub_10075DB2C();
          v42 = *(v37 + 8);
          v42(v40, v36);
          v42(v39, v36);
          sub_10005C6E8(v31);
LABEL_33:
          sub_10005C6E8(v15);
          return v41 & 1;
        }

        sub_10005C6E8(v31);
        (*(v72 + 8))(v28, v71);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_10005C6E8(v15);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController()
{
  result = qword_100952788;
  if (!qword_100952788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100321890()
{
  result = sub_10075F37C();
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

unint64_t sub_100321948()
{
  result = qword_100944C38;
  if (!qword_100944C38)
  {
    sub_10075DB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C38);
  }

  return result;
}

uint64_t sub_1003219A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100321A10(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076340C();
  v9 = sub_10075E0AC();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_10099CC30];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_100321CD8()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100952860);
  sub_10000A61C(v0, qword_100952860);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_100321D8C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076D9AC();
  __chkstk_darwin(v24);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  if (qword_100940CB8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1420);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v21[2] = v11 + 16;
  v22 = v12;
  v12(v4, v10, v9);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v2[13];
  v14(v4, enum case for FontSource.useCase(_:), v1);
  v27 = v1;
  v28 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v26);
  v16 = v2[2];
  v16(v15, v4, v1);
  sub_10076D9BC();
  v21[1] = v8;
  v17 = v2[1];
  v17(v4, v1);
  if (qword_100940CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v9, qword_1009A1408);
  v22(v4, v18, v9);
  v14(v4, v13, v1);
  v27 = v1;
  v28 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v26);
  v16(v19, v4, v1);
  sub_10076D9BC();
  v17(v4, v1);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_1003220C4()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v0, qword_10099E680);
  sub_10000A61C(v0, qword_10099E680);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10032215C()
{
  v0 = sub_10000A5D4(&unk_10094C370);
  sub_10000DB18(v0, qword_10099E698);
  sub_10000A61C(v0, qword_10099E698);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDFC();
}

char *sub_1003221F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_1007626BC();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_10093FE88;
  v20 = *&v16[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v21, qword_10099E698);
  v22 = [v16 traitCollection];
  sub_10075FDBC();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = sub_1007706FC();
  if (v25)
  {
    if (qword_100940CB8 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A1420;
  }

  else
  {
    if (qword_100940CB0 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A1408;
  }

  v27 = sub_10076D3DC();
  v28 = sub_10000A61C(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  sub_1007625DC();

  v30 = qword_10093FE78;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100942EF0);
  sub_10000A61C(v32, qword_100952860);
  v38[4] = v16;
  v33 = v16;
  sub_10075FDCC();

  sub_100770E7C();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_10000A5D4(&unk_100945BF0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100783DD0;
  *(v35 + 32) = sub_10076E88C();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v38);
  return v33;
}

void sub_100322748(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_10032280C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_100322748([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_10032295C()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = sub_1007706FC();

  v13 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_100770A8C();
    v17 = v16;
    v19 = v18;
    v20 = *&v1[v13];
    if (v20)
    {
      v21 = [v20 image];
      if (v21)
      {
        v22 = v21;
        [v21 contentInsets];
        right = v23;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  right = UIEdgeInsetsZero.right;
LABEL_7:
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  rect = v19;
  v25 = CGRectGetMidY(v40) + v19 * -0.5;
  if (v12)
  {
    v26 = v17;
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v26 = v17;
    MinX = right + CGRectGetMaxX(v42) - v17;
  }

  v28 = ceil(MinX);
  v29 = ceil(v25);
  v30 = *&v1[v13];
  if (v30)
  {
    v31 = v30;
    sub_100770A4C();
    [v31 setFrame:?];
  }

  if (qword_10093FE80 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v32, qword_10099E680);
  v33 = v1;
  sub_10075FDCC();

  if (v12)
  {
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v26;
    v43.size.height = rect;
    CGRectGetMaxX(v43);
  }

  else
  {
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    CGRectGetMinX(v44);
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v34 = CGRectGetWidth(v45) - (v26 + v38);
  v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [v35 sizeThatFits:{v34, CGRectGetHeight(v46)}];
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectGetMidY(v47);
  sub_100770A4C();
  return [v35 setFrame:?];
}

double sub_100322D48(uint64_t a1)
{
  v25 = sub_10077164C();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009528B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10076D9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100321D8C(v8);
  v26 = a1;
  sub_10075FDCC();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  sub_10076D17C();
  sub_10076D40C();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_100321D8C(v8);
  v26 = a1;
  sub_10075FDCC();
  v14(v8, v5);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

id sub_100323054(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FE78 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_100952860);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

id sub_1003231F4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = sub_1007706FC();

  if (v8)
  {
    if (qword_100940CB8 != -1)
    {
      swift_once();
    }

    v9 = qword_1009A1420;
  }

  else
  {
    if (qword_100940CB0 != -1)
    {
      swift_once();
    }

    v9 = qword_1009A1408;
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  sub_10076D3DC();
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_1007625DC();
  if (qword_10093FE88 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v13, qword_10099E698);
  v14 = [v1 traitCollection];
  sub_10075FDBC();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell()
{
  result = qword_1009528A0;
  if (!qword_1009528A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032358C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100323634()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_1007626BC();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10032371C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E6D0);
  sub_10000A61C(v0, qword_10099E6D0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100323880(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v36 = a1;
  sub_1007639FC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0EE0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_10076D9AC();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_1009A0EC8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v38);
  v34(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  sub_100763A3C();
  v32 = v14;
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A0E98);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v38);
  v34(v18, v5, v2);
  sub_10076D9BC();
  v32(v5, v2);
  sub_1007639DC();
  v19 = v11;
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v6, qword_1009A0EB0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_10076D9BC();
  v24 = v32;
  v32(v5, v2);
  sub_100763ACC();
  sub_100763A1C();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v38);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_100323E68()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E6E8);
  sub_10000A61C(v0, qword_10099E6E8);
  if (qword_10093FE90 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099E6D0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100323FCC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D39C();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000DB18(v7, qword_10099E700);
  v74 = v7;
  v75 = sub_10000A61C(v7, qword_10099E700);
  v76 = v6;
  sub_10076D3AC();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_10093FED0 != -1)
  {
    swift_once();
  }

  v8 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = sub_10076D9AC();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  sub_10076D9BC();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = sub_10076D67C();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v151);
  sub_10076D66C();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v148);
  sub_10076D66C();
  v14 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  sub_10076D9BC();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_10093FED8 != -1)
  {
    swift_once();
  }

  v17 = qword_1009528E8;
  *v3 = qword_1009528E8;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  sub_10076D9BC();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  sub_10076D9BC();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v133);
  sub_10076D66C();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v130);
  sub_10076D66C();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v127);
  sub_10076D66C();
  if (qword_10093FEE0 != -1)
  {
    swift_once();
  }

  v29 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  sub_10076D9BC();
  v79(v3, v0);
  v34 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  sub_10076D9BC();
  v38(v3, v0);
  if (qword_10093FEE8 != -1)
  {
    swift_once();
  }

  v42 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_10000DB7C(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  sub_10076D9BC();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_10000DB7C(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  sub_10076D9BC();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_1009528F8;
  *v3 = qword_1009528F8;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_10000DB7C(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  sub_10076D9BC();
  v55(v3, v0);
  v60 = qword_1009528F8;
  *v3 = qword_1009528F8;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_10000DB7C(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  sub_10076D9BC();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_10093FEC0 != -1)
  {
    swift_once();
  }

  v64 = qword_1009528D0;
  *v3 = qword_1009528D0;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_10000DB7C(v87);
  v83(v65, v3, v0);
  v66 = v64;
  sub_10076D9BC();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_100012498(&v166, v67 + v74[5]);
  sub_100012498(&v163, v67 + v68[6]);
  sub_100012498(&v160, v67 + v68[7]);
  sub_100012498(&v157, v67 + v68[8]);
  sub_100012498(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_100012498(&v151, v67 + v68[11]);
  sub_100012498(&v148, v67 + v68[12]);
  sub_100012498(&v145, v67 + v68[13]);
  sub_100012498(&v142, v67 + v68[14]);
  sub_100012498(&v139, v67 + v68[15]);
  sub_100012498(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_100012498(&v133, v67 + v68[18]);
  sub_100012498(&v130, v67 + v68[19]);
  sub_100012498(&v127, v67 + v68[20]);
  sub_100012498(&v124, v67 + v68[21]);
  sub_100012498(&v121, v67 + v68[22]);
  sub_100012498(&v118, v67 + v68[23]);
  sub_100012498(&v115, v67 + v68[24]);
  sub_100012498(&v112, v67 + v68[25]);
  sub_100012498(&v109, v67 + v68[26]);
  sub_100012498(&v106, v67 + v68[27]);
  sub_100012498(&v103, v67 + v68[28]);
  sub_100012498(&v100, v67 + v68[29]);
  sub_100012498(&v97, v67 + v68[30]);
  sub_100012498(&v94, v67 + v68[31]);
  sub_100012498(&v91, v67 + v68[32]);
  return sub_100012498(&v88, v67 + v68[33]);
}

uint64_t sub_100324E20()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D39C();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000DB18(v7, qword_10099E718);
  v52 = v7;
  v53 = sub_10000A61C(v7, qword_10099E718);
  v54 = v6;
  sub_10076D3AC();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = sub_10076D67C();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v136);
  sub_10076D66C();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v127);
  sub_10076D66C();
  if (qword_10093FEB0 != -1)
  {
    swift_once();
  }

  v9 = qword_1009528C0;
  *v3 = qword_1009528C0;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = sub_10076D9AC();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  sub_10076D9BC();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_1009528C0;
  *v3 = qword_1009528C0;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  sub_10076D9BC();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v112);
  sub_10076D66C();
  if (qword_10093FEB8 != -1)
  {
    swift_once();
  }

  v20 = qword_1009528C8;
  *v3 = qword_1009528C8;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  sub_10076D9BC();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v106);
  sub_10076D66C();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v103);
  sub_10076D66C();
  if (qword_10093FEC0 != -1)
  {
    swift_once();
  }

  v23 = qword_1009528D0;
  *v3 = qword_1009528D0;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  sub_10076D9BC();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v97);
  sub_10076D66C();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v94);
  sub_10076D66C();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_10000DB7C(&v88);
  sub_10076D66C();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_10093FEC8 != -1)
  {
    swift_once();
  }

  v27 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  sub_10076D9BC();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v82);
  sub_10076D66C();
  v34 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v33(v3, v0);
  v38 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  sub_10076D9BC();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v73);
  sub_10076D66C();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v70);
  sub_10076D66C();
  v42 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v64);
  sub_10076D66C();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_100012498(&v142, v45 + v52[5]);
  sub_100012498(&v139, v45 + v46[6]);
  sub_100012498(&v136, v45 + v46[7]);
  sub_100012498(&v133, v45 + v46[8]);
  sub_100012498(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_100012498(&v127, v45 + v46[11]);
  sub_100012498(&v124, v45 + v46[12]);
  sub_100012498(&v121, v45 + v46[13]);
  sub_100012498(&v118, v45 + v46[14]);
  sub_100012498(&v115, v45 + v46[15]);
  sub_100012498(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_100012498(&v109, v45 + v46[18]);
  sub_100012498(&v106, v45 + v46[19]);
  sub_100012498(&v103, v45 + v46[20]);
  sub_100012498(&v100, v45 + v46[21]);
  sub_100012498(&v97, v45 + v46[22]);
  sub_100012498(&v94, v45 + v46[23]);
  sub_100012498(&v91, v45 + v46[24]);
  sub_100012498(&v88, v45 + v46[25]);
  sub_100012498(&v85, v45 + v46[26]);
  sub_100012498(&v82, v45 + v46[27]);
  sub_100012498(&v79, v45 + v46[28]);
  sub_100012498(&v76, v45 + v46[29]);
  sub_100012498(&v73, v45 + v46[30]);
  sub_100012498(&v70, v45 + v46[31]);
  sub_100012498(&v67, v45 + v46[32]);
  return sub_100012498(&v64, v45 + v46[33]);
}

void sub_100325A70()
{
  v0 = objc_opt_self();
  if (qword_10093FEB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528C8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952908 = v2;
}

void sub_100325B4C()
{
  v0 = objc_opt_self();
  if (qword_10093FEC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528D8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952918 = v2;
}

void sub_100325C54(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 _preferredFontForTextStyle:v8 weight:UIFontWeightSemibold];

  *a4 = v9;
}

void sub_100325D34(uint64_t a1, void *a2, id *a3, void *a4)
{
  v7 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  v9 = [v7 preferredFontForTextStyle:v8];

  *a4 = v9;
}

void sub_100325DD0()
{
  v0 = objc_opt_self();
  if (qword_10093FEE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528F8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952938 = v2;
}

UIColor sub_100325E80()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_100952940 = result.super.isa;
  return result;
}

id sub_100325F14()
{
  result = [objc_opt_self() blackColor];
  qword_100952948 = result;
  return result;
}

uint64_t sub_100325F50()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077111C();
  sub_10000DB18(v4, qword_100952950);
  sub_10000A61C(v4, qword_100952950);
  sub_1007710CC();
  sub_100770FEC();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  sub_100770F4C();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  sub_10076046C();
  (*(v1 + 8))(v3, v0);
  return sub_1007710BC();
}

id sub_1003260D0()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007706EC();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = sub_1007706FC();

  if (v15)
  {
    if (qword_10093FF38 != -1)
    {
      swift_once();
    }

    v16 = &qword_100952948;
  }

  else
  {
    if (qword_10093FF30 != -1)
    {
      swift_once();
    }

    v16 = &qword_100952940;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  sub_1007706FC();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  sub_1007638AC();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_10075F98C();
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_1007638AC();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = sub_1007706FC();

  if (v25)
  {
    if (qword_10093FEF0 != -1)
    {
      swift_once();
    }

    v26 = &qword_100952900;
  }

  else
  {
    if (qword_10093FF10 != -1)
    {
      swift_once();
    }

    v26 = &qword_100952920;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = sub_1007706FC();

  if (v29)
  {
    if (qword_10093FEF8 != -1)
    {
      swift_once();
    }

    v30 = &qword_100952908;
  }

  else
  {
    if (qword_10093FF18 != -1)
    {
      swift_once();
    }

    v30 = &qword_100952928;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = sub_1007706FC();

  if (v33)
  {
    if (qword_10093FF00 != -1)
    {
      swift_once();
    }

    v34 = &qword_100952910;
  }

  else
  {
    if (qword_10093FF20 != -1)
    {
      swift_once();
    }

    v34 = &qword_100952930;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = sub_1007706FC();

    if (v38)
    {
      if (qword_10093FF08 != -1)
      {
        swift_once();
      }

      v39 = &qword_100952918;
    }

    else
    {
      if (qword_10093FF28 != -1)
      {
        swift_once();
      }

      v39 = &qword_100952938;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = sub_1007706FC();

  v42 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_100328530();
    sub_10032A938();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_10046D7FC(0), sub_10032C990(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003267F0()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = sub_1007706EC();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = sub_10077167C();

      if ((v22 & 1) == 0)
      {
        sub_10050E5DC();
      }
    }

    sub_100016F40(0, &qword_100942F10);
    v23 = sub_100770CFC();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_initWithTabBarSystemItem_tag_;
      v30 = &selRef_initWithTabBarSystemItem_tag_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = sub_100770CFC();
    [v26 setTextColor:v27];
    v28 = &selRef_initWithTabBarSystemItem_tag_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = sub_10077167C();

    if ((v31 & 1) == 0)
    {
      sub_10050E5DC();
    }
  }

  sub_100016F40(0, &qword_100942F10);
  v32 = sub_100770CFC();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_initWithTabBarSystemItem_tag_;
  if (v33)
  {
    v26 = v33;
    v27 = sub_100770D1C();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef_initWithTabBarSystemItem_tag_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_23:
  v34 = [v1 v28[274]];
  v35 = sub_1007706EC();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = sub_10077087C();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[88]];
  v40 = [v1 v28[274]];
  v41 = sub_10077071C();

  if (v41)
  {
    if (qword_10093FE98 != -1)
    {
      swift_once();
    }

    v42 = qword_10099E6E8;
  }

  else
  {
    if (qword_10093FE90 != -1)
    {
      swift_once();
    }

    v42 = qword_10099E6D0;
  }

  v43 = sub_10000A61C(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_100326E58()
{
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  sub_10076FF9C();
  v15 = sub_10076FF6C();

  v2 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView] setHidden:v14];
  sub_10050E5DC();
}

id sub_100327178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
  result = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
  if (!result || (result = [result text]) == 0)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  v39 = v7;
  v16 = v3;
  v17 = a1;
  v18 = result;
  v19 = sub_10076FF9C();
  v21 = v20;

  if (!a2)
  {

    v3 = v16;
    v7 = v39;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_10077167C();

    v3 = v16;
    v7 = v39;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

      return [v3 setNeedsLayout];
    }

LABEL_14:
    v24 = sub_10076D3DC();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v25 = objc_allocWithZone(sub_1007626BC());
    v26 = sub_1007626AC();
    v27 = [v3 traitCollection];
    v28 = sub_1007706FC();

    if (v28)
    {
      if (qword_10093FF08 != -1)
      {
        swift_once();
      }

      v29 = &qword_100952918;
    }

    else
    {
      if (qword_10093FF28 != -1)
      {
        swift_once();
      }

      v29 = &qword_100952938;
    }

    [v26 setFont:*v29];
    if (a2)
    {
      v30 = sub_10076FF6C();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    v31 = *&v3[v14];
    *&v3[v14] = v26;
    v32 = v26;

    v33 = [v3 traitCollection];
    if (sub_10077071C())
    {
      v34 = sub_1007706EC();

      if (v34)
      {
        [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] addSubview:v32];
        sub_100016F40(0, &qword_100942F10);
        v35 = v32;
        v36 = sub_100770D1C();
LABEL_33:
        v37 = v36;
        [v35 setTextColor:v36];

        return [v3 setNeedsLayout];
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v32];
    sub_100016F40(0, &qword_100942F10);
    v35 = v32;
    v36 = sub_100770CFC();
    goto LABEL_33;
  }

LABEL_19:
}

void sub_100327628(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_100327714()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_100327628(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_1003277B4(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_1003278B4()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_1003277B4([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_100327968(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = sub_10076BEDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = sub_10076BE1C();
        if (!v25)
        {
          sub_100016F40(0, &qword_100942F10);
          v25 = sub_100770D5C();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = sub_1007706FC();

        if (v28)
        {
          if (qword_10093FEA8 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_10099E718;
        }

        else
        {
          if (qword_10093FEA0 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_10099E700;
        }

        v31 = sub_10000A61C(v29, v30);
        sub_10019E1C8(v31, v15);
        [v23 bounds];
        sub_10076D36C();
        [v23 bounds];
        sub_10076BEEC();
        v32 = sub_10076BE9C();
        (*(v9 + 8))(v11, v8);
        sub_10076BFCC();
        [*&v23[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView();
          sub_10032C900(&unk_100942840, type metadata accessor for VideoView);
          sub_100760B8C();
        }

        else
        {
          sub_100016F40(0, &qword_10094A280);
          sub_10032E104();
          sub_100760B8C();
        }

        sub_10032E0A4(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

uint64_t sub_100327DC0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork) = result;
  if (result)
  {
    if (v2)
    {
      sub_10076C02C();
      sub_10032C900(&unk_10094BB10, &type metadata accessor for Artwork);
      swift_retain_n();
      v3 = sub_10076FF1C();

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader);

    sub_10049A8F8(v5, v4);

LABEL_9:
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100327EFC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

id sub_100327F98()
{
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_1003280A4()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_10032C900(&unk_100952B00, &type metadata accessor for MediaOverlayStyle);
  v8 = sub_10076FF1C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
    v7(v5, v1 + v6, v2);
    v11 = sub_1007635FC();
    v9(v5, v2);
    [v10 setOverrideUserInterfaceStyle:v11];
    v12 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView);
    v7(v5, v1 + v6, v2);
    v13 = sub_1007635FC();
    v9(v5, v2);
    [v12 setOverrideUserInterfaceStyle:v13];
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView);
    v7(v5, v1 + v6, v2);
    v15 = sub_10076360C();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
    v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView);
    if (v16)
    {
      v7(v5, v1 + v6, v2);
      v17 = v16;
      v18 = sub_1007635FC();
      v9(v5, v2);
      [v17 setOverrideUserInterfaceStyle:v18];
    }

    sub_100326E58();
  }
}

void sub_100328388()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_1009A2560] = 1;
    *&v6[qword_1009602B8 + 8] = &off_1008913D8;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007706FC();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_1003277B4([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007706FC();

    if (v3)
    {
      sub_100328530();
    }

    [v1 setNeedsLayout];
  }
}

id sub_100328530()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_1002831F8(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_10093F780;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0);
  isa = sub_10076FE3C().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_1000F8300();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_100328A74(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100328AC8;
}

void sub_100328AC8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_10032DD5C();
    swift_unknownObjectWeakAssign();
    sub_100328388();
  }

  else
  {
    v2 = *a1;
    sub_10032DD5C();
    swift_unknownObjectWeakAssign();
    sub_100328388();
  }
}

uint64_t sub_100328B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v232 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D1FC();
  v234 = *(v6 - 1);
  v235 = v6;
  __chkstk_darwin(v6);
  v233 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v237 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v190 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v190 - v18;
  v271.receiver = v1;
  v271.super_class = ObjectType;
  objc_msgSendSuper2(&v271, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v272);
  if ((result & 1) == 0)
  {
    v193 = v5;
    v194 = v3;
    sub_10076422C();
    v236 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = sub_1007706FC();

    if (v22)
    {
      if (qword_10093FEA8 != -1)
      {
        swift_once();
      }

      v23 = qword_10099E718;
    }

    else
    {
      if (qword_10093FEA0 != -1)
      {
        swift_once();
      }

      v23 = qword_10099E700;
    }

    v24 = sub_10000A61C(v11, v23);
    sub_10019E1C8(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_10093FF40 != -1)
    {
      swift_once();
    }

    v229 = ObjectType;
    v25 = sub_10077111C();
    sub_10000A61C(v25, qword_100952950);
    swift_beginAccess();
    v26 = sub_1007710AC();
    v231 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = sub_100770F3C();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;
        *&v268 = v35;
        v36 = v28[20];
        sub_10000CD74(&v15[v36]);
        sub_100012498(&v268, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v228) = sub_10077070C();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;

        if (v228)
        {
          *&v268 = v41;
        }

        else
        {
          *&v268 = v39;
        }

        v42 = v28[19];
        sub_10000CD74(&v15[v42]);
        sub_100012498(&v268, &v15[v42]);
        v19 = v231;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = sub_1007706EC();

    if (v44)
    {
      if (Strong)
      {
        v269 = &type metadata for Double;
        v270 = &protocol witness table for Double;

        *&v268 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_10000CD74(&v15[v45]);
        sub_100012498(&v268, &v15[v45]);
      }
    }

    else
    {
    }

    v192 = v11;
    sub_10019EB78(v15, v19);
    sub_10019E1C8(v19, v237);
    v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView];
    v269 = sub_10075F99C();
    v270 = &protocol witness table for UIView;
    v227 = v46;
    *&v268 = v46;
    v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView];
    v266 = sub_10076394C();
    v267 = &protocol witness table for UIView;
    *&v265 = v47;
    v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView];
    v264 = &protocol witness table for UIView;
    v263 = v266;
    v225 = v48;
    v226 = v47;
    *&v262 = v48;
    v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView];
    v50 = sub_100016F40(0, &qword_1009441F0);
    v261 = &protocol witness table for UIView;
    v260 = v50;
    *&v259 = v49;
    v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
    v258 = &protocol witness table for UIView;
    v257 = v50;
    v223 = v51;
    v224 = v49;
    *&v256 = v51;
    v52 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
    v53 = sub_100016F40(0, &qword_10094A280);
    v255 = &protocol witness table for UIView;
    v254 = v53;
    v222 = v52;
    *&v253 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v209 = type metadata accessor for VideoView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v209 = 0;
      v217 = 0;
    }

    v228 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
    v221 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
    if (v221)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v215 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v215 = 0;
    }

    v220 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v220)
    {
      v212 = type metadata accessor for MirrorView();
      v211 = &protocol witness table for UIView;
    }

    else
    {
      v211 = 0;
      v212 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v252 = &protocol witness table for UIView;
    v251 = v56;
    *&v250 = v55;
    v57 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    v218 = v55;
    v219 = v57;
    if (v57)
    {
      v205 = sub_100016F40(0, &qword_100952278);
      v204 = &protocol witness table for UIView;
    }

    else
    {
      v204 = 0;
      v205 = 0;
    }

    v216 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView];
    v58 = v216;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v249 = &protocol witness table for UIView;
    v248 = v59;
    *&v247 = v58;
    v203 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
    v60 = sub_100016F40(0, &qword_100947240);
    v197 = v60;
    v214 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel];
    v61 = v214;
    v62 = sub_1007626BC();
    v63 = &protocol witness table for UILabel;
    v245 = v62;
    v246 = &protocol witness table for UILabel;
    v243 = &protocol witness table for UILabel;
    *&v244 = v61;
    v213 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel];
    v191 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
    v198 = v64;
    v242 = v62;
    v240 = &protocol witness table for UILabel;
    *&v241 = v213;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v199 = v66;
    v200 = v65;
    v210 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
    v239 = v62;
    *&v238 = v210;
    v67 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v201 = v63;
    v202 = v68;
    v69 = v10 + v8[23];
    v208 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    v70 = v208;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v206 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    v73 = v206;
    v207 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView();
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v195 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing;
    v196 = v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing];
    sub_10019EB78(v237, v10);
    sub_100012498(&v268, v10 + v8[5]);
    sub_100012498(&v265, v10 + v8[6]);
    sub_100012498(&v262, v10 + v8[7]);
    sub_100012498(&v259, v10 + v8[8]);
    sub_100012498(&v256, v10 + v8[9]);
    sub_100012498(&v253, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v209;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v217;
    v77 = v10 + v8[12];
    v78 = v220;
    v79 = v221;
    *v77 = v221;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v215;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v211;
    v82 = v212;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_100012498(&v250, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v219;
    *v83 = v219;
    *(v83 + 1) = 0;
    v85 = v204;
    v86 = v205;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_100012498(&v247, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v203;
    *v87 = v203;
    *(v87 + 3) = v197;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_100012498(&v244, v10 + v8[18]);
    sub_100012498(&v241, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v198;
    *v89 = v198;
    *(v89 + 1) = 0;
    v91 = v199;
    v92 = v200;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_100012498(&v238, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v201;
    v95 = v202;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v196;
    v96 = v67;
    v97 = v227;
    v98 = v226;
    v99 = v225;
    v100 = v224;
    v225 = v223;
    v237 = v222;
    Strong = v218;
    v224 = v216;
    v226 = v88;
    v101 = v214;
    v102 = v213;
    v103 = v210;
    v104 = v208;
    v105 = v207;
    v227 = v206;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    sub_10076422C();
    v110 = v233;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v234[1](v110, v235);
    v115 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v273) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v274);
    v235 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v228];
    if (v120 && (v1[v195] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v275);
      v124 = [v1 traitCollection];
      v125 = sub_10077071C();

      if (v125)
      {
        if (*&v1[v191])
        {
          v121 = *&v1[v191];
        }

        else
        {
          v121 = v224;
        }
      }

      v126 = v121;
      v234 = v126;
      [v225 frame];
      v127 = CGRectGetHeight(v276);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v277.origin.x = v129;
      v277.origin.y = v131;
      v277.size.width = v133;
      v277.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v277));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_10046CAB0(v138);
      v154 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = sub_1007706FC();

    if (v161)
    {
      v234 = v10;
      [v227 frame];
      MaxY = CGRectGetMaxY(v278);
      v163 = v231;
      sub_10000CF78(&v231[*(v192 + 128)], *&v231[*(v192 + 128) + 24]);
      v164 = v193;
      sub_1000FF02C();
      sub_10076D40C();
      v166 = v165;
      (*(v232 + 8))(v164, v194);
      v167 = Strong;
      [Strong bounds];
      [v167 setContentSize:{CGRectGetWidth(v279), MaxY + v166 * 0.8}];
      v168 = [v1 traitCollection];
      v169 = sub_1007706EC();

      if (v169)
      {
        v170 = 1;
      }

      else
      {
        [v167 contentSize];
        v176 = v175;
        [v167 bounds];
        v170 = v176 <= CGRectGetHeight(v280);
      }

      v174 = v237;
      [v235 setAlwaysBounceVertical:v170];
      v10 = v234;
    }

    else
    {
      v171 = Strong;
      [Strong bounds];
      [v171 setContentSize:{v172, v173}];
      v163 = v231;
      v174 = v237;
    }

    [v174 bounds];
    sub_100327968(v177, v178, 0);
    v179 = swift_unknownObjectWeakLoadStrong();
    if (v179)
    {
      v180 = v179;
      v181 = [v1 traitCollection];
      v182 = sub_1007706EC();

      if ((v182 & 1) == 0)
      {
        sub_10032E0A4(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_10032E0A4(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v226 frame];
      v184 = v183;
      [v180 frame];
      v186.f64[0] = v185 + -53.0;
      v187 = &v180[qword_1009A2508];
      v188 = *&v180[qword_1009A2508];
      v189 = *&v180[qword_1009A2508 + 16];
      *v187 = xmmword_10079BB10;
      *(v187 + 2) = *&v186.f64[0];
      *(v187 + 3) = v184 + 25.0;
      v186.f64[1] = v184 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_10079BB10, v188), vceqq_f64(v186, v189)))) & 1) == 0)
      {
        sub_1005EEA78();
      }
    }

    sub_10032E0A4(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_10032E0A4(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

void sub_100329E30(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_1004B1A0C();
  v9 = *(v4 + *a2);
  if (v9)
  {

    v9(a1);

    sub_1000167E0(v9);
  }
}

uint64_t sub_100329F30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_100329E30(v8, a4);

  return sub_10000CD74(v8);
}

uint64_t sub_100329FA8(void *a1)
{
  v2 = v1;
  v4 = sub_10076F13C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v42[0]) = 1;
  *&v24 = a1;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  BYTE8(v26) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v27 = _Q0;
  v28 = _Q0;
  v29 = 15;
  sub_100016F40(0, &qword_1009471F0);
  v18 = a1;
  *v8 = sub_10077068C();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a1) = sub_10076F16C();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v32 = xmmword_10094FFF8;
    v33 = xmmword_100950008;
    v34 = xmmword_100950018;
    v30 = xmmword_10094FFD8;
    v31 = xmmword_10094FFE8;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v36 = v24;
    v37 = v25;
    v42[0] = xmmword_10094FFD8;
    v42[1] = xmmword_10094FFE8;
    v42[3] = xmmword_100950008;
    v42[4] = xmmword_100950018;
    v35 = qword_100950028;
    v41 = v29;
    v43 = qword_100950028;
    v42[2] = xmmword_10094FFF8;
    sub_10014F864(&v30, v22);
    xmmword_10094FFF8 = v38;
    xmmword_100950008 = v39;
    xmmword_100950018 = v40;
    qword_100950028 = v41;
    xmmword_10094FFD8 = v36;
    xmmword_10094FFE8 = v37;
    sub_10032E03C(v42);
    v20 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock);
    sub_1001F9960(&v24, v22);
    if (v20)
    {
      v21 = sub_10001CE50(v20);
      v20(v21);
      sub_1000167E0(v20);
    }

    v22[2] = xmmword_10094FFF8;
    v22[3] = xmmword_100950008;
    v22[4] = xmmword_100950018;
    v23 = qword_100950028;
    v22[0] = xmmword_10094FFD8;
    v22[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v30;
    xmmword_10094FFE8 = v31;
    xmmword_10094FFF8 = v32;
    xmmword_100950008 = v33;
    xmmword_100950018 = v34;
    qword_100950028 = v35;
    sub_10032E03C(v22);
    return sub_1001F99BC(&v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032A2D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_1009602F8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_10032E034;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_1005F04D8;
      v6[3] = &unk_100891558;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_10032A410(0, 0);
}

void sub_10032A410(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_1007706FC();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_10032DF88;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_10009AEDC;
        v23[3] = &unk_100891440;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_10032E184;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_10032A86C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

void sub_10032A938()
{
  v1 = sub_10076361C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = sub_1007635FC();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_10032AB60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1009602F8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_10032ABF4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton] setAlpha:a1];
  }
}

void sub_10032AC88(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void *(*sub_10032AD1C(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10032AD74;
}

void *sub_10032AD74(void *result, char a2)
{
  if (a2)
  {

    sub_10032AC88(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

void sub_10032AE1C(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_10032E01C;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10009AEDC;
    v18 = &unk_1008914B8;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_10032E028;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_1000513F0;
    v18 = &unk_100891508;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_10032B0C0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_10032B154(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_10032B210(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_100016F40(0, &unk_10094F000);
    v6 = a1;
    v7 = v4;
    v8 = sub_100770EEC();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_100770EEC();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_10032B368(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_100016F40(0, &unk_10094F000);
    v12 = a1;
    v13 = v11;
    v14 = sub_100770EEC();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_100016F40(0, &qword_1009441F0);
          v15 = v10;
          v3 = v3;
          v16 = sub_100770EEC();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_100016F40(0, &unk_10094F000), v19 = a1, v20 = v18, v21 = sub_100770EEC(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_100016F40(0, &unk_10094F000), v42 = a1, v43 = v41, v44 = sub_100770EEC(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_1009602F0];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1007605AC();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_100016F40(0, &qword_1009441F0);
    v38 = v10;
    v39 = v37;
    v40 = sub_100770EEC();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_100016F40(0, &qword_1009441F0);
  v10 = v10;
  v54 = v52;
  v55 = sub_100770EEC();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = sub_100770EEC();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_10032B864(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_1007706FC() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_1007706FC();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_1003260D0();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_10077071C() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = sub_10077071C();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_10076FF9C();
  v15 = v14;
  if (v13 != sub_10076FF9C() || v15 != v16)
  {
    v17 = sub_10077167C();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1003267F0();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_100326E58();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = sub_10077070C();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView()
{
  result = qword_100952AA8;
  if (!qword_100952AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032BF68()
{
  result = sub_10076361C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10032C09C(void *a1)
{
  sub_10032DD5C();
  swift_unknownObjectWeakAssign();
  sub_100328388();
}

uint64_t (*sub_10032C0EC(uint64_t **a1))()
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
  v2[4] = sub_100328A74(v2);
  return sub_100019A4C;
}

uint64_t (*sub_10032C180(void *a1))()
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
  v2[4] = sub_10032AD1C(v2);
  return sub_10001D41C;
}

id sub_10032C1F0(char a1, char a2)
{
  *(*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive) = a1;
  sub_10050F6AC();
  sub_10050F7B0(a2);

  return [v2 setNeedsLayout];
}

CGFloat sub_10032C2A0()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_10032C2FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10032C370(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10032C3FC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}