void sub_10006363C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v65 = sub_10076048C();
  v66 = *(v65 - 8);
  *&v3 = __chkstk_darwin(v65).n128_u64[0];
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starImageView;
  v6 = [*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starImageView] layer];
  [v6 removeFromSuperlayer];

  v7 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starLayer;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starLayer] removeFromSuperlayer];
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize];
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled];
  v10 = v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase];
  v11 = [v1 traitCollection];
  v70.receiver = v1;
  v70.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v70, "minimumContentSizeCategory");
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v69, "maximumContentSizeCategory");
  v71.value._rawValue = v12;
  v71.is_nil = v13;
  isa = sub_1007706DC(v71, v72).super.isa;

  HIDWORD(v63) = v8;
  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
LABEL_15:
    v24 = v67;
    v25 = v65;
    v14 = v9;
    v15 = v66;
    goto LABEL_21;
  }

  v14 = v9;
  if (v8 == 3)
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v16 = sub_10076C04C(), *&v68.m14 = v16, *&v68.m21 = sub_10004C7BC(), v17 = sub_10000DB7C(&v68), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10076C90C(), sub_10000CD74(&v68), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v21 = sub_10076C04C(), *&v68.m14 = v21, *&v68.m21 = sub_10004C7BC(), v22 = sub_10000DB7C(&v68), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_10076C90C(), sub_10000CD74(&v68), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = v67;
LABEL_21:
  v26 = v20;
  v27 = &enum case for SystemImage.starFill(_:);
  if (!v14)
  {
    v27 = &enum case for SystemImage.star(_:);
  }

  (*(v15 + 104))(v5, *v27, v25);
  v28 = isa;
  v29 = [v26 configurationWithTraitCollection:isa];
  v30 = sub_10076046C();

  (*(v15 + 8))(v5, v25);
  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = *&v1[v24];
  *&v1[v24] = v31;

  v33 = [objc_allocWithZone(CAReplicatorLayer) init];
  v34 = *&v1[v7];
  *&v1[v7] = v33;
  v35 = v33;

  [v35 setInstanceCount:*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_maxNumberOfStars]];
  if (v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding + 8])
  {
    if (HIDWORD(v63))
    {
      if (HIDWORD(v63) != 4 && HIDWORD(v63) != 2)
      {
        [*&v1[v24] frame];
        Width = CGRectGetWidth(v74);
        goto LABEL_30;
      }

      v36 = 2.0;
    }

    else
    {
      v36 = 6.0;
    }
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
  }

  [*&v1[v24] frame];
  v37 = CGRectGetWidth(v73);
  [v30 contentInsets];
  v39 = v37 - v38;
  [v30 contentInsets];
  Width = v36 + v39 - v40;
LABEL_30:
  v42 = *&v1[v7];
  CATransform3DMakeTranslation(&v68, Width, 0.0, 0.0);
  [v42 setInstanceTransform:&v68];

  [*&v1[v7] setMasksToBounds:1];
  [*&v1[v24] setTintColor:*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor]];
  v43 = *&v1[v24];
  v44 = *&v1[v7];
  v45 = [v43 layer];
  [v44 addSublayer:v45];

  v46 = *&v1[v7];
  [v1 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v30 contentInsets];
  v56 = v55;
  [v30 contentInsets];
  v58 = v57;
  [v30 contentInsets];
  v60 = v59;
  [v30 contentInsets];
  [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];

  v62 = [v1 layer];
  [v62 addSublayer:*&v1[v7]];
}

id sub_100063D90(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_100063DFC(void *a1, uint64_t a2, void *a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v10 = *a4;
  v11 = a3;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, v10);
  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v11);
  sub_100063EAC(v13, a4);
}

void sub_100063EAC(uint64_t a1, SEL *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076048C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v55[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v60, *a2, v9);
  v13 = v12;
  if (!a1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 == sub_10076FF9C() && v16 == v17)
  {

    return;
  }

  v19 = sub_10077167C();

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v20 = v4[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize];
    v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
    HIDWORD(v54) = v4[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding + 8];
    v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
    v23 = v4[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase];
    v24 = [v4 traitCollection];
    v59.receiver = v4;
    v59.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v59, "minimumContentSizeCategory");
    v58.receiver = v4;
    v58.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v58, "maximumContentSizeCategory");
    v61.value._rawValue = v25;
    v61.is_nil = v26;
    v27.super.isa = sub_1007706DC(v61, v62).super.isa;

    if (v20 <= 1)
    {
      if (v20)
      {
        v31 = &UIFontTextStyleCaption2;
      }

      else
      {
        v31 = &UIFontTextStyleHeadline;
      }

      v32 = [objc_opt_self() configurationWithTextStyle:*v31 scale:2];
    }

    else if (v20 == 2)
    {
      v32 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v20 == 3)
    {
      if ((v23 & 1) != 0 || (v28 = sub_10076C04C(), v56 = v28, v57 = sub_10004C7BC(), v29 = sub_10000DB7C(v55), (*(*(v28 - 8) + 104))(v29, enum case for Feature.search_tags(_:), v28), LOBYTE(v28) = sub_10076C90C(), sub_10000CD74(v55), (v28 & 1) == 0))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v30 scale:10.0];
    }

    else
    {
      if ((v23 & 1) != 0 || (v33 = sub_10076C04C(), v56 = v33, v57 = sub_10004C7BC(), v34 = sub_10000DB7C(v55), (*(*(v33 - 8) + 104))(v34, enum case for Feature.search_tags(_:), v33), LOBYTE(v33) = sub_10076C90C(), sub_10000CD74(v55), (v33 & 1) == 0))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v35 scale:6.0];
    }

    v36 = HIDWORD(v54);
    v37 = v32;
    (*(v8 + 104))(v11, enum case for SystemImage.star(_:), v7);
    v38 = [v37 configurationWithTraitCollection:v27.super.isa];
    v39 = sub_10076046C();

    (*(v8 + 8))(v11, v7);
    [v39 contentInsets];
    v41 = v40;
    [v39 contentInsets];
    v43 = v41 + v42;
    [v39 size];
    v45 = v44 - v43;
    [v39 contentInsets];
    v47 = v46;
    [v39 contentInsets];
    v49 = v47 + v48;
    [v39 size];
    v51 = v50;

    if (v36)
    {
      if (v20 == 4 || v20 == 2)
      {
        v21 = 2.0;
      }

      else
      {
        v21 = 6.0;
        if (v20)
        {
          v52 = v43 * (ceilf(v22) + -1.0);
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          v53 = v45 * v22 + v52;
          goto LABEL_39;
        }
      }
    }

    v53 = v45 * v22 + v21 * (ceilf(v22) + -1.0);
LABEL_39:
    [v4 setFrame:{0.0, 0.0, v53, v51 - v49}];
    sub_10006363C();
  }
}

char *sub_10006446C(uint64_t a1, char a2, char a3, uint64_t a4, char a5, void *a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor] = 0;
  v16 = &v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starImageView;
  *&v8[v17] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starLayer;
  *&v8[v18] = [objc_allocWithZone(CAReplicatorLayer) init];
  v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starSize] = a3;
  *v16 = a4;
  v16[8] = a5 & 1;
  *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_maxNumberOfStars] = a1;
  v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled] = a2;
  *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = a1;
  v8[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_useCase] = a7 & 1;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor];
  *&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor] = a6;
  v21 = v19;
  v22 = a6;

  sub_10006314C();
  sub_10006363C();
  v23 = [v21 layer];

  [v23 setMasksToBounds:1];
  sub_10000A5D4(&unk_100945BF0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100783DD0;
  *(v24 + 32) = sub_10076E88C();
  *(v24 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_100016F40(0, &qword_100944E30);
  sub_10077075C();
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v21;
}

unint64_t sub_1000647F4()
{
  result = qword_100944E20;
  if (!qword_100944E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E20);
  }

  return result;
}

unint64_t sub_10006484C()
{
  result = qword_100944E28;
  if (!qword_100944E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E28);
  }

  return result;
}

void sub_1000648EC()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize];
  v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars];
  v7 = v0[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase];
  v8 = [v0 traitCollection];
  v9 = [v0 minimumContentSizeCategory];
  v10 = [v0 maximumContentSizeCategory];
  v26.value._rawValue = v9;
  v26.is_nil = v10;
  v11.super.isa = sub_1007706DC(v26, v27).super.isa;

  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v6 == 2)
  {
    v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v6 == 3)
  {
    if ((v7 & 1) != 0 || (v12 = sub_10076C04C(), v24 = v12, v25 = sub_10004C7BC(), v13 = sub_10000DB7C(v23), (*(*(v12 - 8) + 104))(v13, enum case for Feature.search_tags(_:), v12), LOBYTE(v12) = sub_10076C90C(), sub_10000CD74(v23), (v12 & 1) == 0))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v14 scale:10.0];
  }

  else
  {
    if ((v7 & 1) != 0 || (v16 = sub_10076C04C(), v24 = v16, v25 = sub_10004C7BC(), v17 = sub_10000DB7C(v23), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10076C90C(), sub_10000CD74(v23), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:6.0];
  }

  v19 = v15;
  (*(v2 + 104))(v5, enum case for SystemImage.star(_:), v1);
  v20 = [v19 configurationWithTraitCollection:v11.super.isa];
  v21 = sub_10076046C();

  (*(v2 + 8))(v5, v1);
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
}

double sub_100064DEC(void *a1)
{
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  v51 = v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars];
  v49 = v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase];
  v11 = [a1 traitCollection];
  v12 = [v1 minimumContentSizeCategory];
  v13 = [v1 maximumContentSizeCategory];
  v56.value._rawValue = v12;
  v56.is_nil = v13;
  isa = sub_1007706DC(v56, v57).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v8 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v14 = sub_10076C04C(), v54 = v14, v55 = sub_10004C7BC(), v15 = sub_10000DB7C(v53), (*(*(v14 - 8) + 104))(v15, enum case for Feature.search_tags(_:), v14), LOBYTE(v14) = sub_10076C90C(), sub_10000CD74(v53), (v14 & 1) == 0))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v16 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v18 = sub_10076C04C(), v54 = v18, v55 = sub_10004C7BC(), v19 = sub_10000DB7C(v53), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_10076C90C(), sub_10000CD74(v53), (v18 & 1) == 0))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:6.0];
  }

  v21 = v10;
  v22 = v17;
  v23 = *(v4 + 104);
  v23(v7, enum case for SystemImage.star(_:), v3);
  v24 = [v22 configurationWithTraitCollection:isa];
  v25 = sub_10076046C();

  v26 = *(v4 + 8);
  v26(v7, v3);
  [v25 contentInsets];
  v28 = v27;
  [v25 contentInsets];
  v30 = v28 + v29;
  [v25 size];
  v32 = v31 - v30;
  [v25 contentInsets];
  [v25 contentInsets];
  [v25 size];

  if (!v51)
  {
    goto LABEL_26;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_26;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_26:
    v34 = v32 * v21 + v9 * (v21 + -1.0);
    goto LABEL_27;
  }

  v33 = v30 * (v21 + -1.0);
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v32 * v21 + v33;
LABEL_27:
  v50 = v26;
  if (v8 <= 1)
  {
    if (v8)
    {
      v38 = &UIFontTextStyleCaption2;
    }

    else
    {
      v38 = &UIFontTextStyleHeadline;
    }

    v39 = [objc_opt_self() configurationWithTextStyle:*v38 scale:2];
  }

  else if (v8 == 2)
  {
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v35 = sub_10076C04C(), v54 = v35, v55 = sub_10004C7BC(), v36 = sub_10000DB7C(v53), (*(*(v35 - 8) + 104))(v36, enum case for Feature.search_tags(_:), v35), LOBYTE(v35) = sub_10076C90C(), sub_10000CD74(v53), (v35 & 1) == 0))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v37 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v40 = sub_10076C04C(), v54 = v40, v55 = sub_10004C7BC(), v41 = sub_10000DB7C(v53), (*(*(v40 - 8) + 104))(v41, enum case for Feature.search_tags(_:), v40), LOBYTE(v40) = sub_10076C90C(), sub_10000CD74(v53), (v40 & 1) == 0))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v42 scale:6.0];
  }

  v43 = v39;
  v23(v7, enum case for SystemImage.starFill(_:), v3);
  v44 = isa;
  v45 = [v43 configurationWithTraitCollection:isa];
  v46 = sub_10076046C();

  v50(v7, v3);
  sub_100770E5C();
  [v46 contentInsets];

  return v34;
}

void sub_1000655A4()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starLayer;
  *(v0 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100065698()
{
  result = qword_100944E38;
  if (!qword_100944E38)
  {
    sub_1007698AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E38);
  }

  return result;
}

uint64_t sub_1000656F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100766BCC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_1003767CC(Strong);

  v24 = v10;
  sub_10003F040();
  v11 = v10;
  sub_10000A5D4(&qword_100944E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_100065A08(&v21);
LABEL_6:
    sub_10000A5D4(&qword_100942C70);
    sub_100065A70();
    swift_allocError();
    v14 = sub_10076FC7C();

    return v14;
  }

  sub_100012498(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_10000CF78(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_10000CD74(v25);
    goto LABEL_6;
  }

  sub_10000A5D4(&qword_100942C70);
  v14 = sub_10076FCEC();
  v15 = sub_100765FDC();
  sub_10076F64C();
  sub_10076FC1C();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  sub_100766BBC();
  v16 = sub_100766BAC();
  sub_100761FAC();
  v17 = sub_100761F8C();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  sub_100761F5C();

  (*(v6 + 8))(v8, v5);
  sub_10000CD74(v25);
  return v14;
}

uint64_t sub_100065A08(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100944E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100065A70()
{
  result = qword_100944E50;
  if (!qword_100944E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E50);
  }

  return result;
}

uint64_t sub_100065AC4()
{
  sub_100563DDC(*(v0 + 24), 1, *(v0 + 32));
  sub_10076FC4C();
}

unint64_t sub_100065B24()
{
  result = qword_100944E58;
  if (!qword_100944E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E58);
  }

  return result;
}

unint64_t sub_100065B7C()
{
  result = qword_100944E60;
  if (!qword_100944E60)
  {
    type metadata accessor for BadgeCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E60);
  }

  return result;
}

double sub_100065BD4()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v4 = sub_100765C9C();
  sub_10000A61C(v4, qword_1009A04D8);
  v5 = sub_10076461C();
  sub_100765BDC();
  v7 = v6;

  return v7;
}

uint64_t sub_100065D34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A5D4(&qword_100944EF8);
    v2 = sub_1007715DC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_10000A5D4(&qword_100944F00);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000CD64(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000CD64(v29, v30);
    result = sub_1007713DC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000CD64(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100066040(uint64_t a1, uint64_t (*a2)(__n128), void *a3)
{
  v6 = sub_10000A5D4(&unk_100943200);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  result = a2(v7);
  if (result)
  {
    v11 = result;
    v12 = *(v3 + *a3);
    v13 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {

      return sub_10000CFBC(v9, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v11, 1, v12, v9);

      return (*(v14 + 8))(v9, v13);
    }
  }

  return result;
}

uint64_t sub_1000661DC(uint64_t (*a1)(__n128))
{
  v3 = sub_10000A5D4(&unk_100943200);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_objectGraph);
    v10 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10000CFBC(v6, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_100067008();
}

uint64_t sub_100066390(uint64_t (*a1)(__n128))
{
  v3 = sub_10000A5D4(&unk_100943200);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_objectGraph);
    v10 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10000CFBC(v6, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_100067008();
}

uint64_t sub_100066590()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_10099CAE0 = sub_10076FD4C();
  unk_10099CAE8 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_10099CAC8);
  return sub_10076FD3C();
}

void sub_1000666D4(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100066390(a2);
  }
}

void sub_100066730(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100066040(&OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_requestInfo, a2, &OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_objectGraph);
  }
}

void *sub_10006679C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_10001FAF8(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

void sub_1000669CC()
{
  v0 = sub_10075DB7C();
  __chkstk_darwin(v0 - 8);
  sub_10075DB3C();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100066B5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_referrer);

  return v1;
}

id sub_100066C84()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_100066CD8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_100066D98(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10001F308(v2);
  return sub_100019FCC;
}

void *sub_100066E08(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_10001FAF8(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

uint64_t sub_100066E34(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100067388(&qword_100944EE8);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100066EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100067388(&qword_100944EE8);

  return a3(ObjectType, v4);
}

uint64_t sub_100067008()
{
  v0 = sub_10075F38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F3FC();
  sub_10076F64C();
  sub_10076FC1C();
  (*(v1 + 104))(v3, enum case for AppStoreEngagementEvent.didSubscribeToArcade(_:), v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10075F39C();

  (*(v1 + 8))(v3, v0);

  type metadata accessor for InAppMessagesManager();
  sub_10076FC1C();
  sub_10028484C();
}

void sub_1000671D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + *a3);
      v10 = Strong;

      v11 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10000CFBC(v7, &unk_100943200);
      }

      else
      {
        sub_100263BF0(a1, 1, v9, v7);

        (*(v12 + 8))(v7, v11);
      }
    }
  }
}

uint64_t sub_100067388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1000673C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_dynamicDelegate] = 0;
  *&v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridPresenter] = 0;
  v13 = &v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridView];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_objectGraph] = a5;
  *&v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_requestInfo] = a2;
  v14 = &v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_referrer];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_100760C4C();

  sub_10076F5CC();
  *&v6[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_artworkLoader] = v38;
  sub_10076148C();
  sub_10076F5CC();
  v15 = sub_10076147C();

  sub_10075DB1C(v16);
  v18 = v17;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, "initWithBag:URL:", v15, v17);
  swift_unknownObjectRelease();

  sub_1000200B4();
  v20 = v19;
  sub_10076F5CC();
  v21 = v38;
  v22 = [v38 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  if (sub_10076564C())
  {
    v23.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v20 setMetricsOverlay:v23.super.isa];

  [v20 setAnonymousMetrics:1];
  v24 = sub_10076563C();
  if (v24)
  {
    sub_100065D34(v24);

    v25.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v20 setClientOptions:v25.super.isa];

  v26 = v20;
  sub_10076149C();
  v27 = sub_10076FF6C();

  [v26 setMediaClientIdentifier:v27];

  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_allocWithZone(sub_10076986C());
  v32 = sub_10076985C();

  v33 = OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_dynamicDelegate;
  *&v26[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_dynamicDelegate] = v32;
  swift_unknownObjectRelease();
  [v26 setDelegate:{*&v26[v33], v28, sub_100067BE0, v29, sub_100067C10, v30}];
  sub_10076925C();
  v34 = sub_10076924C();
  [v26 setMediaContentDelegate:v34];

  v35 = sub_10075DB7C();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v26;
}

uint64_t sub_100067920()
{
  if (qword_10093F578 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099CAC8, qword_10099CAE0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000DB7C(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_10076F30C();
  sub_10000CFBC(v3, &unk_1009434C0);
  sub_10076FBEC();
}

uint64_t sub_100067AE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067C68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007617CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v8], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v7, &v2[v8], v4);
  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v2 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_10076179C(v12, v10, v13);

  v14 = *(v5 + 8);
  v14(v7, v4);
  [v2 setNeedsDisplay];
  return (v14)(a1, v4);
}

char *sub_100067E28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  v15 = enum case for HorizontalRule.Style.solid(_:);
  v16 = sub_1007617CC();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor;
  sub_100016F40(0, &qword_100942F10);
  *&v5[v17] = sub_100770CDC();
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = [v18 contentView];
  v21 = [v20 layer];

  [v21 addSublayer:*&v18[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer]];
  return v18;
}

void sub_1000681B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007617CC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  [v17 setFrame:{v10, v12, v14, v16}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v18], v3);
  v19 = [v1 traitCollection];
  v20 = sub_1007617BC();

  (*(v4 + 8))(v7, v3);
  [v17 setPath:v20];
}

uint64_t sub_1000683FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007617CC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "_dynamicUserInterfaceTraitDidChange", v5);
  v8 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v8], v3);
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v1 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_10076179C(v12, v10, v13);

  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata accessor for HorizontalRuleCollectionViewCell()
{
  result = qword_100944F30;
  if (!qword_100944F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000686BC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_1007617CC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100068794(void *a1)
{
  v2 = v1;
  v4 = sub_1007617CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineColor] = a1;
  v9 = a1;

  v10 = OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v10], v4);
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32HorizontalRuleCollectionViewCell_lineLayer];
  v12 = [v9 CGColor];
  v13 = [v2 traitCollection];
  v14.super.super.isa = v11;
  v15.super.isa = v13;
  sub_10076179C(v14, v12, v15);

  (*(v5 + 8))(v7, v4);
  return [v2 setNeedsDisplay];
}

char *sub_10006892C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate] = 0;
  v13 = [objc_allocWithZone(sub_10076CB3C()) initWithFrame:{a1, a2, a3, a4}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_smallPlayerCard] = v13;
  v14 = v13;
  v15 = sub_10076CAAC();

  v16 = [objc_opt_self() systemGrayColor];
  [v15 setTintColor:v16];

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_smallPlayerCard]];

  return v17;
}

void sub_100068CA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = a2;
    *(v7 + 4) = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
    v10 = objc_allocWithZone(updated);
    *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 4;
    v11 = &v10[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
    *v11 = sub_100069660;
    v11[1] = v7;
    v12 = &v10[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
    *v12 = sub_10006966C;
    v12[1] = v8;
    v26.receiver = v10;
    v26.super_class = updated;

    v13 = objc_msgSendSuper2(&v26, "init");
    v14 = objc_opt_self();
    v15 = [v14 daemonProxy];
    [v15 addDataUpdateDelegate:v13];

    v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate);
    *(v2 + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = v13;
    v17 = v13;

    if (sub_1007613AC())
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(updated);
      *&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 21;
      v20 = &v19[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
      *v20 = sub_100069098;
      v20[1] = 0;
      v21 = &v19[OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
      *v21 = sub_100069690;
      v21[1] = v18;
      v25.receiver = v19;
      v25.super_class = updated;
      v22 = objc_msgSendSuper2(&v25, "init");
      v23 = [v14 daemonProxy];
      v24 = v22;
      [v23 addDataUpdateDelegate:v24];

      v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate);
      *(v3 + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = v24;
    }
  }
}

void sub_100068F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_10076FF9C();
  v15 = v6;
  sub_10077140C();
  if (!*(a1 + 16) || (v7 = sub_10060FEFC(v16), (v8 & 1) == 0))
  {
    sub_100016C74(v16);
    return;
  }

  sub_10000CD08(*(a1 + 56) + 32 * v7, v17);
  sub_100016C74(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v14 == a2 && v15 == a3)
  {
  }

  else
  {
    v9 = sub_10077167C();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

    v13 = sub_10076CADC();
    if (v13)
    {
      v13();
      sub_1000167E0(v13);
    }
  }
}

uint64_t sub_100069098(uint64_t a1)
{
  sub_10076FF9C();
  sub_10077140C();
  if (!*(a1 + 16))
  {
    return sub_100016C74(v5);
  }

  v2 = sub_10060FEFC(v5);
  if ((v3 & 1) == 0)
  {
    return sub_100016C74(v5);
  }

  sub_10000CD08(*(a1 + 56) + 32 * v2, v6);
  sub_100016C74(v5);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1000696B4();
    sub_10077051C();
  }

  return result;
}

void sub_10006917C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

uint64_t type metadata accessor for SmallContactCardCollectionViewCell()
{
  result = qword_100944F80;
  if (!qword_100944F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006929C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10006943C()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000695E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069620()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000696B4()
{
  result = qword_100944FD8;
  if (!qword_100944FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100944FD8);
  }

  return result;
}

unint64_t sub_100069724()
{
  result = qword_100944FE0;
  if (!qword_100944FE0)
  {
    sub_10076939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944FE0);
  }

  return result;
}

uint64_t sub_10006977C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_10075F6CC();
    v8 = a1;
    sub_10076938C();
    sub_10075F66C();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_100016F40(0, &qword_1009471F0);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_10077068C();
    sub_10076FC6C();

    return sub_10000CD74(v14);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_10006A888();
    swift_allocError();
    *v13 = 0;
    sub_10076FCAC();
  }
}

void sub_100069A50(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  sub_10076938C();
  v8 = sub_10076FF6C();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_10000A5D4(&qword_100944FF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100783DD0;
  *(v11 + 32) = sub_10076937C();
  *(v11 + 40) = v12;
  isa = sub_1007701AC().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_10006A980;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10006A574;
  v18[3] = &unk_100886080;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100069C5C(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v58 = sub_10075F65C();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100765F6C();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766EDC();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076F4FC();
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = sub_10076C15C();
  __chkstk_darwin(v23);
  v26 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v27 = sub_10076FD4C();
    sub_10000A61C(v27, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v28 = v64;
    v29 = v65;
    *(&v70 + 1) = v65;
    v30 = sub_10000DB7C(&v69);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_10076F32C();
    sub_1000258C0(&v69);
    sub_10076FBEC();

    sub_10076FCAC();
  }

  v53 = v11;
  v54 = v16;
  v55 = v8;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  if (v62)
  {
    if (v62 >> 62)
    {
      v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v13;
      v47 = v25;
      result = sub_10077158C();
      v25 = v47;
      v13 = v52;
      v26 = v51;
      if (result)
      {
LABEL_8:
        v52 = v13;
        v62 = v19;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = v25;
          v36 = v26;
          v37 = sub_10077149C();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = v25;
          v36 = v26;
          v37 = *(v34 + 32);
        }

        v38 = v37;
        v39 = v57;
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v40 = *(v35 + 104);
        v51 = v36;
        v40(v36, enum case for FlowPage.gameCenterLeaderboards(_:), v23);
        v41 = sub_10075DB7C();
        (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
        v42 = sub_10076096C();
        (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
        v68 = &type metadata for GameCenterLeaderboardsPage;
        v66 = v38;
        v67 = v39;
        v43 = v38;
        v44 = v39;
        v45 = v43;
        v57 = v44;
        sub_10076F4DC();
        (*(v56 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v53);
        (*(v33 + 104))(v10, enum case for FlowAnimationBehavior.infer(_:), v55);
        (*(v32 + 104))(v7, enum case for FlowOrigin.inapp(_:), v58);
        sub_10076FA2C();
        sub_10075F63C();
        swift_allocObject();
        v46 = sub_10075F5EC();
        sub_100563FF8(v46, 1, v59);
        sub_10076FC4C();
      }
    }

    else
    {
      result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v48 = sub_10076FD4C();
  sub_10000A61C(v48, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  sub_10006A888();
  swift_allocError();
  *v49 = 1;
  sub_10076FCAC();
}

uint64_t sub_10006A574(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016F40(0, &qword_100944FF8);
    v4 = sub_1007701BC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10006A618()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_10006A770(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10000A5D4(&qword_100942C70);
  v4 = sub_10076FCEC();
  sub_10075F6CC();
  v7[3] = sub_100016F40(0, &qword_1009471F0);
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_10077068C();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_10075F67C();

  sub_10000CD74(v7);
  return v4;
}

unint64_t sub_10006A888()
{
  result = qword_100944FE8;
  if (!qword_100944FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944FE8);
  }

  return result;
}

uint64_t sub_10006A8DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A938()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006A9B8()
{
  result = qword_100945000;
  if (!qword_100945000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945000);
  }

  return result;
}

uint64_t type metadata accessor for AccountButton()
{
  result = qword_100945080;
  if (!qword_100945080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AA5C()
{
  sub_100070D10();
  if (v0 <= 0x3F)
  {
    sub_10075DD7C();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_10006AB7C()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.personCropCircle(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_100945010 = v5;
  return result;
}

uint64_t sub_10006AC74()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770CEC();
  qword_100945018 = result;
  return result;
}

uint64_t sub_10006ACB8()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_100945020);
  sub_10000A61C(v4, qword_100945020);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t (*sub_10006AE14(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000718B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100071910;
}

void sub_10006AECC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = qword_100945050;
    if (*&Strong[qword_100945050])
    {

      if (sub_10076F0FC())
      {
        goto LABEL_16;
      }

      v6 = [v4 backgroundImageForState:0];
      if (v6)
      {
      }

      else
      {
        v7 = v4[qword_100945038];
        v4[qword_100945038] = 0;
        if (v7 == 1)
        {
          v8 = [v4 layer];
          [v8 setBorderColor:0];

          v9 = [v4 layer];
          [v9 setBorderWidth:0.0];

          [v4 setNeedsDisplay];
        }

        if (qword_10093F580 != -1)
        {
          swift_once();
        }

        [v4 setImage:qword_100945010 forState:0];
        [v4 alpha];
        if (v10 <= COERCE_DOUBLE(1))
        {
          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v4;
          aBlock[4] = sub_1000718A0;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_100886228;
          v13 = _Block_copy(aBlock);
          v14 = v4;

          [v11 animateWithDuration:4 delay:v13 options:0 animations:0.33 completion:0.0];
          _Block_release(v13);
        }
      }

      *&v4[v5] = 0;

      if ((a2 & 1) == 0)
      {
LABEL_16:
      }

      else
      {
        v15 = swift_unknownObjectWeakLoadStrong();

        if (v15)
        {
          *(v15 + qword_100945EE8) = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void sub_10006B198()
{
  sub_10000CFBC(v0 + qword_10099CB18, &qword_100945140);
  sub_10000CC8C(v0 + qword_10099CB20);

  v1 = qword_100945058;
  v2 = sub_10075DD7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_100945078);
}

id sub_10006B280()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10006B2F8(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_10006B384(uint64_t a1)
{
  sub_10000CFBC(a1 + qword_10099CB18, &qword_100945140);
  sub_10000CC8C(a1 + qword_10099CB20);

  v2 = qword_100945058;
  v3 = sub_10075DD7C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_100945078);
}

uint64_t sub_10006B470()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1007702EC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1007702CC();
  v6 = v0;
  v7 = sub_1007702BC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_10016FE40(0, 0, v4, &unk_1007875D8, v8);
}

uint64_t sub_10006B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_10000A5D4(&qword_1009451A0);
  v5[20] = swift_task_alloc();
  v5[21] = sub_1007702CC();
  v5[22] = sub_1007702BC();
  v7 = sub_10077029C();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_10006B67C, v7, v6);
}

uint64_t sub_10006B67C()
{
  v1 = [objc_opt_self() defaultService];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_10006B7BC;
  v2 = swift_continuation_init();
  v0[17] = sub_10000A5D4(&qword_1009451D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006BA00;
  v0[13] = &unk_1008864F8;
  v0[14] = v2;
  [v1 shouldUseModernUpdatesWithCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006B7BC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_10006B8C4, v2, v1);
}

uint64_t sub_10006B8C4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v10 = *(v0 + 144);

  v3 = *(v0 + 208);

  v4 = sub_1007702EC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v10;
  v6 = sub_1007702BC();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v3;
  *(v7 + 40) = v10;
  sub_10016FE40(0, 0, v2, &unk_1007875F0, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006BA00(uint64_t a1, char a2)
{
  **(*(*sub_10000CF78((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10006BA5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 180) = a4;
  sub_10076F2EC();
  *(v5 + 96) = swift_task_alloc();
  sub_1007702CC();
  *(v5 + 104) = sub_1007702BC();
  v7 = sub_10077029C();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return _swift_task_switch(sub_10006BB24, v7, v6);
}

uint64_t sub_10006BB24()
{
  if (*(v0 + 180) == 1)
  {
    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    v1 = sub_10076FD4C();
    *(v0 + 128) = v1;
    *(v0 + 136) = sub_10000A61C(v1, qword_100945020);
    *(v0 + 144) = sub_10000A5D4(&unk_100942A60);
    v2 = *(sub_10076F33C() - 8);
    *(v0 + 152) = *(v2 + 72);
    *(v0 + 176) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076FBCC();

    v3 = sub_10075EEFC();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_10006BF38;

    return BaseObjectGraph.inject<A>(_:)(v0 + 72, v3, v3);
  }

  else
  {

    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = sub_10076FD4C();
    sub_10000A61C(v6, qword_100945020);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076FBCC();

    v7 = [objc_opt_self() defaultCenter];
    sub_10075EC3C();
    v8 = sub_10075EC1C();
    [v7 addObserver:v5 selector:"refreshUpdatesCount" name:v8 object:0];

    if (*(v5 + qword_100945078))
    {
      sub_10006E0F4();
    }

    else
    {
      sub_10006F4CC();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10006BF38()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10006C118;
  }

  else
  {
    v5 = sub_10006C074;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006C074()
{
  v1 = v0[11];

  v2 = qword_100945078;
  v3 = *(v1 + qword_100945078);
  *(v1 + qword_100945078) = v0[9];

  if (*(v1 + v2))
  {
    sub_10006E0F4();
  }

  else
  {
    sub_10006F4CC();
  }

  sub_10006E7BC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006C118()
{

  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v7._object = 0x80000001007D0730;
  v7._countAndFlagsBits = 0xD000000000000024;
  sub_10076F2CC(v7);
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  v3 = sub_10000DB7C(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  sub_10076F29C();
  sub_10000CFBC((v0 + 2), &unk_1009434C0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_10076F2CC(v8);
  sub_10076F2FC();
  sub_10076FBEC();

  v4 = v0[1];

  return v4();
}

void sub_10006C2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_100945068;
  v6 = *&v2[qword_100945068];
  if (a2)
  {
    if (v6)
    {
      v8 = v6;
      sub_10026A628(a1, a2);
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CountBadgeView());
      v10 = sub_10026A064(0, a1, a2);
      [v3 addSubview:v10];
      v8 = *&v3[v5];
      *&v3[v5] = v10;
    }

    [v3 setNeedsLayout];
  }

  else
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v6 = *&v2[v5];
    }

    *&v2[v5] = 0;
  }
}

void sub_10006C3B8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AccountButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }

  v8 = *&v0[qword_100945068];
  if (v8)
  {
    v9 = v8;
    [v0 frame];
    [v9 sizeThatFits:{v10, v11}];
    [v0 bounds];
    CGRectGetMaxX(v15);
    [v0 bounds];
    CGRectGetMinY(v16);
    [v0 bounds];
    sub_100770A4C();
    [v9 setFrame:?];
  }
}

void sub_10006C570(void *a1)
{
  v1 = a1;
  sub_10006C3B8();
}

void sub_10006C5B8(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountButton();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "invalidateIntrinsicContentSize");
  v2 = &v1[qword_100945060];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
}

double sub_10006C624(void *a1)
{
  v1 = a1;
  sub_10006C668();
  v3 = v2;

  return v3;
}

void sub_10006C668()
{
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_100945060];
  if (v0[qword_100945060 + 16])
  {
    if (qword_1009409B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10076D3DC();
    v7 = sub_10000A61C(v6, qword_1009A0B38);
    v8 = [v0 traitCollection];
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    (*(v2 + 104))(v4, enum case for FontSource.useCase(_:), v1);
    v19[3] = v1;
    v19[4] = &protocol witness table for FontSource;
    v9 = sub_10000DB7C(v19);
    (*(v2 + 16))(v9, v4, v1);
    sub_10076C8EC();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_10000CD74(v19);
    v12 = floor(v11);
    Main = JUScreenClassGetMain();

    if (Main == 1)
    {
      v14 = v12 + -5.0;
    }

    else
    {
      v14 = v12;
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    [v0 bounds];
    Height = CGRectGetHeight(v21);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height >= v14 || Height <= 0.0)
    {
      Height = v14;
    }

    *v5 = Height;
    v5[1] = Height;
    *(v5 + 16) = 0;
  }
}

void sub_10006C914()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v52 = &v43 - v2;
  v47 = sub_10075F65C();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100765F6C();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100766EDC();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_10076C15C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  v53 = v17;
  v54 = v0;
  if (v22)
  {
    v23 = v5;
    v24 = v4;
    sub_100765D7C();
    sub_10076F5CC();
    v25 = v57;
    v26 = sub_100765D5C();

    if (v26)
    {
      if (qword_10093F590 != -1)
      {
        swift_once();
      }

      v27 = sub_10076FD4C();
      sub_10000A61C(v27, qword_100945020);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076FBCC();

      sub_10006D47C(v26);

      return;
    }

    v4 = v24;
    v5 = v23;
    v17 = v53;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.account(_:), v18);
  v28 = sub_10075DB7C();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = sub_10076096C();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v55 = 0u;
  v56 = 0u;
  sub_10006D1BC();
  v30 = v49;
  ObjectType = *(v45 + 104);
  ObjectType(v10, enum case for FlowPresentationContext.infer(_:), v49);
  (*(v5 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v44 + 104))(v4, enum case for FlowOrigin.inapp(_:), v47);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v31 = sub_10075F5EC();
  v32 = ASKDeviceTypeGetCurrent();
  v33 = sub_10076FF9C();
  v35 = v34;
  if (v33 == sub_10076FF9C() && v35 == v36)
  {

    v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
  }

  else
  {
    v38 = sub_10077167C();

    v37 = &enum case for FlowPresentationContext.presentModal(_:);
    if (v38)
    {
      v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }
  }

  ObjectType(v51, *v37, v30);
  sub_10075F5CC();
  v39 = *(v54 + qword_100945040);
  v40 = sub_10000A5D4(&unk_1009428E0);
  v41 = v52;
  sub_10076F5AC();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v41, 1, v40) == 1)
  {

    sub_10000CFBC(v41, &unk_100943200);
  }

  else
  {
    sub_100263C24(v31, 1, v39, v41);

    (*(v42 + 8))(v41, v40);
  }
}

uint64_t sub_10006D1BC()
{
  v0 = sub_10076F75C();
  __chkstk_darwin(v0 - 8);
  sub_10000A5D4(&qword_1009451C8);
  v1 = sub_10076FB6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100783DD0;
  sub_10076FB2C();
  sub_10017A1E0(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_1000FD3F0(_swiftEmptyArrayStorage);
  sub_10076305C();
  swift_allocObject();
  sub_10076304C();
  sub_10000A5D4(&qword_1009451D0);
  sub_10076F3BC();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076084C();
  sub_10076F74C();
  sub_10076F4EC();
}

void sub_10006D434(void *a1)
{
  v1 = a1;
  sub_10006C914();
}

void sub_10006D47C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AAUISignInController) init];
  [v4 setServiceType:AIDAServiceTypeStore];
  [v4 setDelegate:v1];
  if (qword_10093F590 != -1)
  {
    swift_once();
  }

  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_100945020);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076FBCC();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = ObjectType;
  v11[4] = sub_1000721C8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1005F04D8;
  v11[3] = &unk_1008864A8;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v4;

  [v10 prepareInViewController:v9 completion:v8];
  _Block_release(v8);
}

id sub_10006D728(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v9 = sub_10076FD4C();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_10076253C();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F4FC();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_100945020);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    return [a3 presentViewController:a4 animated:1 completion:0];
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v40 = v14;
  v20 = sub_10075DA3C();
  v21 = [v20 domain];
  v22 = sub_10076FF9C();
  v24 = v23;

  if (v22 == sub_10076FF9C() && v24 == v25)
  {

    goto LABEL_12;
  }

  v26 = sub_10077167C();

  if (v26)
  {
LABEL_12:
    if ([v20 code] == -7005)
    {
      if (qword_10093F590 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v9, qword_100945020);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      *(&v47 + 1) = sub_100016F40(0, &unk_10094FA10);
      *&v46 = v20;
      v27 = v20;
      sub_10076F30C();
      sub_10000CFBC(&v46, &unk_1009434C0);
      sub_10076FBEC();

      v49._object = 0x80000001007D0620;
      v49._countAndFlagsBits = 0xD000000000000017;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_1007622EC(v49, v51);
      v50._countAndFlagsBits = 0xD00000000000002ALL;
      v50._object = 0x80000001007D0640;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_1007622EC(v50, v52);
      sub_10076F4DC();
      (*(v41 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
      sub_10075FAAC();
      swift_allocObject();
      v28 = sub_10075FA7C();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = *(Strong + qword_100945040);
        v31 = Strong;

        v32 = sub_10000A5D4(&unk_1009428E0);
        v33 = v40;
        sub_10076F5AC();
        v34 = *(v32 - 8);
        if ((*(v34 + 48))(v33, 1, v32) == 1)
        {

          return sub_10000CFBC(v33, &unk_100943200);
        }

        else
        {
          sub_100264030(v28, 1, v30, v33);

          return (*(v34 + 8))(v33, v32);
        }
      }

      else
      {
      }
    }
  }

LABEL_19:
  if (qword_10093F590 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v9, qword_100945020);
  v36 = v43;
  (*(v43 + 16))(v11, v35, v9);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  if (a2)
  {
    swift_getErrorValue();
    v37 = v44;
    v38 = v45;
    *(&v47 + 1) = v45;
    v39 = sub_10000DB7C(&v46);
    (*(*(v38 - 8) + 16))(v39, v37, v38);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  sub_10076F30C();
  sub_10000CFBC(&v46, &unk_1009434C0);
  sub_10076FBEC();

  return (*(v36 + 8))(v11, v9);
}

void sub_10006E094(char *a1)
{
  v1 = *&a1[qword_100945078];
  v2 = a1;
  if (v1)
  {
    sub_10006E0F4();
  }

  else
  {
    sub_10006F4CC();
  }
}

void sub_10006E0F4()
{
  v1 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_100945078);
  if (v4)
  {
    v5 = sub_1007702EC();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007702CC();
    v7 = v4;

    v8 = sub_1007702BC();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v6;

    sub_10016FE40(0, 0, v3, &unk_1007875B8, v9);
  }

  else
  {
    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    v10 = sub_10076FD4C();
    sub_10000A61C(v10, qword_100945020);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }
}

uint64_t sub_10006E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = sub_10075ED7C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v5[12] = sub_1007702CC();
  v5[13] = sub_1007702BC();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_10006E4C8;

  return AppUpdatesDataSource.getUpdatesCounts()(v7);
}

uint64_t sub_10006E4C8()
{
  *(*v1 + 120) = v0;

  v3 = sub_10077029C();
  if (v0)
  {
    v4 = sub_10006E6D8;
  }

  else
  {
    v4 = sub_10006E624;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10006E624()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10006F144();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006E6D8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_100945068;
    v4 = *(Strong + qword_100945068);
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006E7BC()
{
  v1 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10000A5D4(&qword_1009451A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(v0 + qword_100945078);
  if (v11)
  {
    v20 = v11;
    sub_10075EEDC();
    v12 = sub_1007702EC();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, v10, v4);
    sub_1007702CC();

    v14 = sub_1007702BC();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    (*(v5 + 32))(v16 + v15, v7, v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

    sub_10016FE40(0, 0, v3, &unk_100787598, v16);

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    v18 = sub_10076FD4C();
    sub_10000A61C(v18, qword_100945020);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }
}

uint64_t sub_10006EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10075ED7C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10000A5D4(&qword_1009451B0);
  v5[10] = swift_task_alloc();
  v7 = sub_10000A5D4(&unk_1009451B8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_1007702CC();
  v5[15] = sub_1007702BC();
  v9 = sub_10077029C();
  v5[16] = v9;
  v5[17] = v8;

  return _swift_task_switch(sub_10006ED4C, v9, v8);
}

uint64_t sub_10006ED4C()
{
  sub_10000A5D4(&qword_1009451A8);
  sub_1007702FC();
  swift_beginAccess();
  v1 = sub_1007702BC();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10006EE44;
  v3 = v0[10];
  v4 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_10006EE44()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10006EF88, v3, v2);
}

uint64_t sub_10006EF88()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_10006F144();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = sub_1007702BC();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_10006EE44;
    v10 = v0[10];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
  }
}

uint64_t sub_10006F144()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_1009451A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_10075ED6C();
  v6 = sub_1007702EC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1007702CC();
  v7 = v0;
  v8 = sub_1007702BC();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = ObjectType;
  sub_10016FE40(0, 0, v4, &unk_100787580, v9);
}

uint64_t sub_10006F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007702CC();
  v5[4] = sub_1007702BC();
  v7 = sub_10077029C();

  return _swift_task_switch(sub_10006F324, v7, v6);
}

uint64_t sub_10006F324()
{
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + qword_100945070) == v1)
  {
    if (qword_10093F590 != -1)
    {
      swift_once();
    }

    v3 = sub_10076FD4C();
    sub_10000A61C(v3, qword_100945020);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();
  }

  else
  {
    *(v2 + qword_100945070) = v0[3];
    sub_10006FB9C();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006F4CC()
{
  sub_10000A5D4(&qword_100945190);
  v0 = sub_10076FCEC();
  sub_10075EC3C();
  v1 = sub_10075EC2C();
  v8 = sub_100071CF4;
  v9 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10006F6B4;
  v7 = &unk_100886390;
  v2 = _Block_copy(v6);

  [v1 getUpdatesWithCompletionBlock:v2];
  _Block_release(v2);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100016F40(0, &qword_1009471F0);

  v4 = sub_10077068C();
  v7 = v3;
  v8 = &protocol witness table for OS_dispatch_queue;
  v6[0] = v4;
  sub_10076FC6C();

  sub_10000CD74(v6);
}

uint64_t sub_10006F6B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016F40(0, &qword_100945198);
  v2 = sub_1007701BC();

  v1(v2);
}

uint64_t sub_10006F738(unint64_t *a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (v10 >> 62)
  {
    result = sub_10077158C();
    v13 = result;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v3;
  v34 = v2;
  v31 = v5;
  v32 = v6;
  v29 = v9;
  v30 = v7;
  if (!v13)
  {
    goto LABEL_19;
  }

  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (v10 & 0xC000000000000001) != 0 ? sub_10077149C() : *(v10 + 8 * v15 + 32);
    v17 = v16;
    v18 = [v16 updateState];
    if (!v18 || v18 == 3 || v18 == 4)
    {
      break;
    }

LABEL_8:
    if (v13 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v19 = [v17 autoUpdateEnabled];

  if (v19)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v14++, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  v14 = 0;
LABEL_20:
  sub_100016F40(0, &qword_1009471F0);
  v21 = sub_10077068C();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v14;
  aBlock[4] = sub_100071D64;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008863E0;
  v23 = _Block_copy(aBlock);
  v24 = v12;

  v25 = v29;
  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  v26 = v31;
  v27 = v34;
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v23);

  (*(v33 + 8))(v26, v27);
  return (*(v30 + 8))(v25, v32);
}

void sub_10006FB14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_100945068;
    v3 = *(Strong + qword_100945068);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

void sub_10006FB9C()
{
  v1 = v0;
  v2 = *(v0 + qword_100945048);
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076A45C();
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_100945070;
  v6 = *(v1 + qword_100945070);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else if (qword_10093F590 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v8 = sub_10076FD4C();
  sub_10000A61C(v8, qword_100945020);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DE0;
  sub_10076F27C();
  v9 = *(v1 + v5);
  v17 = &type metadata for Int;
  v16[0] = v9;
  sub_10076F30C();
  sub_10000CFBC(v16, &unk_1009434C0);
  sub_10076F27C();
  v17 = &type metadata for Int;
  v16[0] = v4;
  sub_10076F30C();
  sub_10000CFBC(v16, &unk_1009434C0);
  sub_10076F27C();
  v17 = &type metadata for Int;
  v16[0] = v7;
  sub_10076F30C();
  sub_10000CFBC(v16, &unk_1009434C0);
  sub_10076F27C();
  sub_10076FBCC();

  if (v7 < 1)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v10 = objc_opt_self();
    sub_100016F40(0, &qword_1009492D0);
    isa = sub_100770ECC(v7).super.super.isa;
    v12 = [v10 localizedStringFromNumber:isa numberStyle:1];

    v13 = sub_10076FF9C();
    v15 = v14;
  }

  sub_10006C2B4(v13, v15);
}

void sub_10006FED8(void *a1)
{
  v1 = a1;
  sub_10006FF28(1);
}

void sub_10006FF28(char a1)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_100072474;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000706E8;
  v6[3] = &unk_100886368;
  v5 = _Block_copy(v6);

  [v2 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v5 completion:44.0];
  _Block_release(v5);
}

void sub_100070050(void *a1, uint64_t a2, char a3)
{
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!a1)
    {
      if (a3)
      {
        sub_10075DD1C();
        sub_10075DD6C();
        v25 = sub_10075DD0C();
        v26 = *(v6 + 8);
        v26(v8, v5);
        v26(v11, v5);
        v27 = v13[qword_100945038];
        v13[qword_100945038] = 0;
        if (v27 == 1)
        {
          v28 = [v13 layer];
          [v28 setBorderColor:0];

          v29 = [v13 layer];
          [v29 setBorderWidth:0.0];

          [v13 setNeedsDisplay];
        }

        if (qword_10093F580 != -1)
        {
          swift_once();
        }

        [v13 setImage:qword_100945010 forState:0];
        [v13 alpha];
        if (v30 <= COERCE_DOUBLE(1))
        {
          if (v25)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 16) = v13;
            v47 = sub_100072450;
            v48 = v32;
            aBlock = _NSConcreteStackBlock;
            v44 = 1107296256;
            v45 = sub_10009AEDC;
            v46 = &unk_100886278;
            v33 = _Block_copy(&aBlock);
            v13 = v13;

            [v31 animateWithDuration:4 delay:v33 options:0 animations:0.33 completion:0.0];
            _Block_release(v33);
          }

          else
          {
            [v13 setAlpha:1.0];
          }
        }
      }

LABEL_23:

      return;
    }

    v14 = a1;
    [v13 intrinsicContentSize];
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    [v13 intrinsicContentSize];
    [v14 drawInRect:{0.0, 0.0, v15, v16}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    sub_10075DD1C();
    sub_10075DD6C();
    v18 = sub_10075DD0C();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);
    [v13 setImage:v17 forState:0];
    [v13 alpha];
    if (v20 <= COERCE_DOUBLE(1))
    {
      if (v18)
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v13;
        v47 = sub_100072450;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_10009AEDC;
        v46 = &unk_1008862C8;
        v23 = _Block_copy(&aBlock);
        v24 = v13;

        [v21 animateWithDuration:4 delay:v23 options:0 animations:0.33 completion:0.0];

        _Block_release(v23);
LABEL_16:
        v34 = v13[qword_100945038];
        v13[qword_100945038] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = [v13 layer];
          if (qword_10093F588 != -1)
          {
            swift_once();
          }

          v36 = [qword_100945018 CGColor];
          [v35 setBorderColor:v36];

          v37 = [v13 layer];
          v38 = [v13 traitCollection];
          sub_10076E20C();
          v40 = v39;

          [v37 setBorderWidth:v40];
          [v13 setNeedsDisplay];
        }

        v41 = qword_100945050;
        if (*&v13[qword_100945050])
        {

          sub_10076F11C();

          *&v13[v41] = 0;

          return;
        }

        goto LABEL_23;
      }

      [v13 setAlpha:1.0];
    }

    goto LABEL_16;
  }
}

void sub_1000706E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100070754(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountButton();
  v4 = v7.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", v5);
  [v4 invalidateIntrinsicContentSize];
  v6 = [v4 backgroundImageForState:0];
  if (v6)
  {

    sub_10006FF28(1);
  }
}

id sub_100070800(char a1)
{
  v3 = [v1 layer];
  v4 = v3;
  if (a1)
  {
    if (qword_10093F588 != -1)
    {
      swift_once();
    }

    v5 = [qword_100945018 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v1 layer];
    v7 = [v1 traitCollection];
    sub_10076E20C();
    v9 = v8;

    [v6 setBorderWidth:v9];
  }

  else
  {
    [v3 setBorderColor:0];

    v6 = [v1 layer];
    [v6 setBorderWidth:0.0];
  }

  return [v1 setNeedsDisplay];
}

void sub_100070970(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AccountButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_100070800(v1[qword_100945038]);
}

uint64_t sub_1000709D8(char *a1)
{
  v2 = sub_10075D7BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v6 = *&a1[qword_100945078];
  v7 = a1;
  if (v6)
  {
    sub_10006E0F4();
  }

  else
  {
    sub_10006F4CC();
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_100070AD4(void *a1)
{
  v1 = a1;
  sub_100070B4C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100070B4C()
{
  v1 = *(v0 + qword_100945068);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel];
    v3 = v1;
    v4 = [v2 text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_10076FF9C();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_100070BE4(void *a1, uint64_t a2, void *a3)
{
  sub_100016F40(0, &unk_100945180);
  v5 = sub_10076FE4C();
  v6 = a3;
  v7 = a1;
  sub_100071938(v5);
}

void sub_100070C80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100071B44();
}

void sub_100070D10()
{
  if (!qword_100945118)
  {
    sub_10075F37C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100945118);
    }
  }
}

char *sub_100070D70(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = sub_10076F9AC();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10076F0EC();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v53 = &v49[-v12];
  v51 = sub_10076F08C();
  __chkstk_darwin(v51);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000A5D4(&qword_100945138);
  __chkstk_darwin(v14 - 8);
  v16 = &v49[-v15];
  *&v3[qword_10099CB20 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_100945038] = 0;
  *&v3[qword_100945048] = 0;
  *&v3[qword_100945050] = 0;
  sub_10075DD6C();
  v17 = &v3[qword_100945060];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  *&v3[qword_100945068] = 0;
  *&v3[qword_100945070] = 0;
  *&v3[qword_100945078] = 0;
  v59 = a2;
  sub_1000716B8(a2, &v3[qword_10099CB18]);
  *&v3[qword_100945040] = a3;
  v19 = type metadata accessor for AccountButton();
  v67.receiver = v3;
  v67.super_class = v19;

  v20 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10076A46C();
  sub_10076F64C();
  v21 = v20;
  sub_10076FC1C();
  v22 = qword_100945048;
  v23 = *&v21[qword_100945048];
  *&v21[qword_100945048] = aBlock;

  v24 = *&v21[v22];
  if (v24)
  {
    v25 = v24;
    sub_10076A44C();

    sub_10000A5D4(&qword_100945148);
    sub_100071820(&qword_100945150, &qword_100945148);
    sub_10076F45C();
    sub_10076F46C();

    sub_10000CD74(&aBlock);
    v18 = 0;
  }

  v26 = sub_10000A5D4(&qword_100945158);
  (*(*(v26 - 8) + 56))(v16, v18, 1, v26);
  sub_10000CFBC(v16, &qword_100945138);
  v27 = v21;
  sub_1007641DC();
  [v27 setAlpha:0.0];
  v28 = v27;
  [v28 addTarget:v28 action:"goToAccount" forControlEvents:64];
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v28 selector:"profilePictureStoreDidChange" name:ASKProfilePictureStoreDidChange object:0];

  v31 = [objc_opt_self() sharedStore];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v65 = sub_100071798;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_1000706E8;
  v64 = &unk_100886188;
  v34 = _Block_copy(&aBlock);

  [v31 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v34 completion:44.0];
  _Block_release(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v50 & 1;
  v65 = sub_1000717BC;
  v66 = v36;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10009AEDC;
  v64 = &unk_1008861D8;
  _Block_copy(&aBlock);
  v60 = _swiftEmptyArrayStorage;
  sub_1000717C8();

  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10076F12C();
  swift_allocObject();
  v37 = sub_10076F10C();

  *&v28[qword_100945050] = v37;

  sub_100016F40(0, &qword_1009471F0);
  v38 = sub_10077068C();
  sub_10076F0DC();
  v39 = v53;
  sub_10076F15C();
  v40 = v55;
  v41 = *(v54 + 8);
  v41(v10, v55);
  sub_10077065C();

  v41(v39, v40);
  v42 = [v29 defaultCenter];
  sub_10076255C();
  v43 = v28;
  v44 = sub_10076254C();
  [v42 addObserver:v43 selector:"automaticUpdatesEnabledDidChange:" name:v44 object:0];

  v45 = [v43 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:2];
  }

  [v43 setContentHorizontalAlignment:3];

  [v43 setContentVerticalAlignment:3];
  v47 = v56;
  sub_10076F93C();
  sub_100770B9C();
  (*(v57 + 8))(v47, v58);
  sub_10006B470();

  sub_10000CFBC(v59, &qword_100945140);
  return v43;
}

uint64_t sub_1000716B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100945140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071760()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000717A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000717C8()
{
  result = qword_100945160;
  if (!qword_100945160)
  {
    sub_10076F08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945160);
  }

  return result;
}

uint64_t sub_100071820(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100071868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000718D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100071938(uint64_t a1)
{
  if (qword_10093F590 != -1)
  {
    swift_once();
  }

  v2 = sub_10076FD4C();
  sub_10000A61C(v2, qword_100945020);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F31C();
  sub_10076F27C();
  v5[3] = sub_10000A5D4(&unk_1009632B0);
  v5[0] = a1;

  sub_10076F30C();
  sub_10000CFBC(v5, &unk_1009434C0);
  sub_10076FBCC();

  sub_100765D7C();
  sub_10076F5CC();
  v3 = v5[0];
  v4 = sub_100765D5C();

  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100071B44()
{
  if (qword_10093F590 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_100945020);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076FBCC();

  sub_100765D7C();
  sub_10076F5CC();
  v1 = sub_100765D5C();

  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100071D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100025A64;

  return sub_10006F28C(a1, v4, v5, v6, v7);
}

uint64_t sub_100071E68()
{
  v1 = sub_10000A5D4(&qword_1009451A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100071F4C(uint64_t a1)
{
  v4 = *(sub_10000A5D4(&qword_1009451A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000257CC;

  return sub_10006EBB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100072078()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000720C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100025A64;

  return sub_10006E3A4(a1, v4, v5, v7, v6);
}

uint64_t sub_100072180()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000721DC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100072228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100025A64;

  return sub_10006B5A8(a1, v4, v5, v7, v6);
}

uint64_t sub_100072314()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100072354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100025A64;

  return sub_10006BA5C(a1, v4, v5, v6, v7);
}

double sub_100072478()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1000725B0(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1000725B0(uint64_t a1)
{
  v2 = sub_10076C38C();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007669EC();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v46 - v7;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10000A5D4(&qword_1009451E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v54 = sub_100766A2C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076B6EC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  sub_10076465C();
  sub_10076B6AC();
  sub_100072E28(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v59 = sub_10077124C();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v58 = a1;
  v26 = sub_10076462C();
  v27 = v47;
  (*(v47 + 56))(v16, 1, 1, v4);
  v50 = v16;
  v28 = v16;
  v29 = v27;
  sub_100072E70(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v48 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_100072EE0(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v49;
  v32(v49, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v52;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, v62);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10093FB08 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB00, v62);
  }

  else
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, v62);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_10000A570(v62, v61);
  sub_10005312C();
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D3DC();
  sub_10000A61C(v36, qword_1009A1D68);
  v37 = [v26 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v38 = sub_10076D9AC();
  v39 = sub_10000A61C(v38, qword_1009A2350);
  v60[3] = v38;
  v60[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000DB7C(v60);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v51;
  sub_100766A0C();
  swift_unknownObjectRelease();
  sub_10000CD74(v62);
  (*(v29 + 8))(v31, v4);
  sub_100072EE0(v50);
  v42 = v55;
  sub_10076460C();
  sub_10076C2FC();
  (*(v56 + 8))(v42, v57);
  v43 = sub_10076462C();
  v44 = sub_1002F92CC(v41, v43);
  swift_unknownObjectRelease();
  (*(v53 + 8))(v41, v54);
  return v44;
}

uint64_t sub_100072E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100072E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009451E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072EE0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009451E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100072F4C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_100072FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10007302C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100073040(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100073088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000730D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1000731D4()
{
  result = qword_100945280;
  if (!qword_100945280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945280);
  }

  return result;
}

void sub_100073228()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  __break(1u);
}

void sub_100073298(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = a1 & 1;

  v6 = *((swift_isaMask & *v1) + 0x128);

  v6();
}

id sub_100073368(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(UICollectionView);

  return [v10 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

void sub_1000733E0()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = [v0 view];
    if (!v6)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v6;
    [v6 safeAreaInsets];
    v9 = v8;

    v5 = -v9;
  }

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 contentInset];
  v13 = v12;

  if (v13 == v5)
  {
    return;
  }

  v26 = [v0 collectionView];
  if (!v26)
  {
    goto LABEL_19;
  }

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  [v14 contentInset];
  v17 = v16;

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  [v18 contentInset];
  v21 = v20;

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 contentInset];
  v25 = v24;

  [v26 setContentInset:{v5, v17, v21, v25}];
}

uint64_t sub_1000735EC()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_10003F040();
  v4 = sub_1007701BC();

  if (v4 >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_10077149C();
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = sub_100770EEC();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

void *sub_100073708()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_100073738(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController);
  sub_10076857C();

  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  (*((swift_isaMask & *v1) + 0x178))();
  sub_10076856C();
}

void sub_10007381C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007389C(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = a1;
  v2 = (*((swift_isaMask & *v1) + 0x198))();
  v3 = [v1 navigationItem];
  v5 = v3;
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [v3 setLargeTitleDisplayMode:v4];
}

void sub_100073964(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_1000739B4();
}

void sub_100073998(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_1000739B4();
}

void sub_1000739B4()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8])
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance + 8])
    {
      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:0];
    }

    else
    {
      v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
      v9 = [v0 navigationItem];
      v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

      if (v10)
      {
        v11 = [v0 navigationItem];
        [v11 _autoScrollEdgeTransitionDistance];
        v13 = v12;

        if (v13 == v8)
        {
          return;
        }
      }

      v14 = [v0 navigationItem];
      [v14 _setManualScrollEdgeAppearanceEnabled:0];

      v15 = [v0 navigationItem];
      [v15 _setAutoScrollEdgeTransitionDistance:v8];

      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:1];
    }
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress];
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (v3)
    {
      v4 = [v0 navigationItem];
      [v4 _manualScrollEdgeAppearanceProgress];
      v6 = v5;

      if (v6 == v1)
      {
        return;
      }
    }

    v7 = [v0 navigationItem];
    [v7 _setManualScrollEdgeAppearanceEnabled:1];

    v16 = [v0 navigationItem];
    [v16 _setManualScrollEdgeAppearanceProgress:v1];
  }
}

uint64_t sub_100073C14(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  sub_10000A5D4(&qword_1009453E0);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  v8 = (v7 + v6);
  v9 = *(sub_10000A5D4(&qword_1009453E8) + 48);
  *v8 = 1;
  sub_100016E2C(a2, &v8[v9], &qword_100945140);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1000FC424(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100076AA0;
  v11[3] = v10;
  sub_100529FCC(a1);

  *(v4 + 32) = v11;
  return v4;
}

char *sub_100073DD0(unint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100945140);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10075F37C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = sub_10077158C();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_10077158C();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_10077149C();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_100016E2C(v14 + qword_10099CB18, v4, &qword_100945140);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_100945140);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        sub_10076A38C();
        sub_10076F64C();
        sub_10076FC1C();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        sub_10076A37C();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_10077158C();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_10077149C();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_10095D510] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_10095D518] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_10095D520] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_10095D528] = 0;
  [v6 setNeedsLayout];
  sub_10000A5D4(&qword_1009453C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v36;

  v8 = sub_1006CDE94(inited);
  swift_setDeallocating();
  result = sub_10000CFBC(inited + 32, &unk_1009453D0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = sub_10077149C();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100074324()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories];

  v2 = [v0 traitCollection];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v4 = v2;

  v5 = sub_100273E2C(v1, v4, 0, v3);

  v6 = sub_100073DD0(v5);
}

uint64_t sub_100074424(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = *a2;
  *&v3[*a2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = [v3 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v3[v5];
    swift_unknownObjectRetain();
    [v7 *a3];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000744E4(unsigned int *a1)
{
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v7, v11, &unk_10094E1F0);
  if (!v12)
  {
    return sub_10000CFBC(v11, &unk_10094E1F0);
  }

  sub_10000A570(v11, v10);
  sub_10000CFBC(v11, &unk_10094E1F0);
  sub_10000CF78(v10, v10[3]);
  (*(v4 + 104))(v6, *a1, v3);
  sub_10075F2BC();
  (*(v4 + 8))(v6, v3);
  return sub_10000CD74(v10);
}

void sub_1000747FC()
{
  v1 = sub_10076F9AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = *(Strong + OBJC_IVAR___RootViewController_rootViewController), v7 = v6, swift_unknownObjectRelease(), !v6))
  {
    v21 = type metadata accessor for StoreCollectionViewController();
    v26.receiver = v0;
    v26.super_class = v21;
    objc_msgSendSuper2(&v26, "loadView");
    return;
  }

  v8 = [v7 view];

  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24 = [objc_allocWithZone(type metadata accessor for InsetCollectionViewControllerContentView()) initWithFrame:{v10, v12, v14, v16}];
  [v24 setAutoresizingMask:18];
  [v0 setView:v24];
  v17 = [v0 collectionViewLayout];
  v18 = (*((swift_isaMask & *v0) + 0x108))(v10, v12, v14, v16);

  [v18 setAutoresizingMask:18];
  [v18 setDelegate:*(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDelegate)];
  [v18 setDataSource:*(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDataSource)];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 addSubview:v18];

  [v0 setCollectionView:v18];
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_automationSemanticPageId + 8))
  {
    memset(v25, 0, sizeof(v25));

    sub_10076F96C();

    sub_10000CFBC(v25, &unk_1009434C0);
    sub_100770B9C();

    (*(v2 + 8))(v4, v1);
  }

  else
  {

    v22 = v24;
  }
}

id sub_100074BFC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreCollectionViewController();
  v25.receiver = v0;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v7 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v1 + v7, v22, &unk_10094E1F0);
  if (v23)
  {
    sub_10000A570(v22, v21);
    sub_10000CFBC(v22, &unk_10094E1F0);
    sub_10000CF78(v21, v21[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_10075F2BC();
    (*(v3 + 8))(v5, v2);
    sub_10000CD74(v21);
  }

  else
  {
    sub_10000CFBC(v22, &unk_10094E1F0);
  }

  v8 = [v1 navigationItem];
  [v8 _setSupportsTwoLineLargeTitles:1];

  LOBYTE(v8) = (*((swift_isaMask & *v1) + 0x198))();
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [v9 setLargeTitleDisplayMode:v11];

  v12 = (*((swift_isaMask & *v1) + 0x160))();
  if (v12)
  {
    v13 = v12;
    v22[0] = (*((swift_isaMask & *v1) + 0x178))();
    v22[1] = v14;
    v22[2] = v15;
    v23 = v16;
    v24 = 0;
    sub_10076856C();
  }

  sub_10076615C();
  sub_10076F63C();
  if (!v21[0])
  {
    goto LABEL_12;
  }

  result = [v1 collectionView];
  if (result)
  {
    v18 = result;
    [result bounds];

    sub_1007660FC();

LABEL_12:
    sub_10000A5D4(&unk_100945BF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100783DD0;
    *(v19 + 32) = sub_10076E59C();
    *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_10077061C();
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_1000750EC(char a1)
{
  v2 = v1;
  v4 = sub_10075F2AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreCollectionViewController();
  v17.receiver = v2;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v2 + v9, v16, &unk_10094E1F0);
  if (v16[3])
  {
    sub_10000A570(v16, v15);
    sub_10000CFBC(v16, &unk_10094E1F0);
    sub_10000CF78(v15, v15[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_10075F2BC();
    (*(v5 + 8))(v7, v4);
    sub_10000CD74(v15);
  }

  else
  {
    sub_10000CFBC(v16, &unk_10094E1F0);
  }

  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive;
  if ((*(v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v2 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    *(v2 + v10) = 1;
  }

  sub_10076A38C();
  sub_10076F63C();
  v12 = v16[0];
  if (v16[0])
  {
    v13.super.super.isa = v2;
    sub_10076A35C(v13);
  }
}

void sub_1000753A0(char a1)
{
  v2 = v1;
  v4 = sub_10075F2AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StoreCollectionViewController();
  v26.receiver = v2;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, "viewWillDisappear:", a1 & 1);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 parentViewController];
    if (v11 && (v12 = v11, sub_10003F040(), v10 = v10, v13 = sub_100770EEC(), v10, v12, (v13 & 1) != 0) && (v14 = [v10 viewControllers], v15 = sub_1007701BC(), v14, sub_1000C3A80(v2, v15), LOBYTE(v14) = v16, , (v14 & 1) != 0))
    {
      v17 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
      swift_beginAccess();
      sub_100016E2C(v2 + v17, v24, &unk_10094E1F0);
      if (v25)
      {
        sub_10000A570(v24, v22);
        sub_10000CFBC(v24, &unk_10094E1F0);
        sub_10000CF78(v22, v23);
        (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v4);
        sub_10075F2BC();

        (*(v5 + 8))(v7, v4);
        sub_10000CD74(v22);
      }

      else
      {

        sub_10000CFBC(v24, &unk_10094E1F0);
      }
    }

    else
    {
    }
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v2 + v18, v24, &unk_10094E1F0);
  if (v25)
  {
    sub_10000A570(v24, v22);
    sub_10000CFBC(v24, &unk_10094E1F0);
    sub_10000CF78(v22, v23);
    sub_10076FA9C();
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v4);
    sub_10075F2BC();
    (*(v5 + 8))(v7, v4);
    sub_10000CD74(v22);
  }

  else
  {
    sub_10000CFBC(v24, &unk_10094E1F0);
  }

  sub_10076A38C();
  sub_10076F63C();
  v19 = v24[0];
  if (v24[0])
  {
    v20.super.super.isa = v2;
    sub_10076A36C(v20);
  }
}

void sub_1000757B4()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoreCollectionViewController();
  v32.receiver = v1;
  v32.super_class = v10;
  objc_msgSendSuper2(&v32, "as_viewWillBecomeFullyVisible");
  v28 = v1;
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 indexPathsForSelectedItems];

  v26 = v3;
  v27 = v2;
  v25 = v5;
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v14 = sub_1007701BC();

  v15 = v14[2];
  if (v15)
  {
LABEL_6:
    v16 = 0;
    while (v16 < v14[2])
    {
      (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v6);
      v17 = [v28 collectionView];
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      ++v16;
      isa = sub_10075E02C().super.isa;
      [v18 deselectItemAtIndexPath:isa animated:1];

      (*(v7 + 8))(v9, v6);
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v20 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  v21 = v28;
  swift_beginAccess();
  sub_100016E2C(v21 + v20, v30, &unk_10094E1F0);
  if (v31)
  {
    sub_10000A570(v30, v29);
    sub_10000CFBC(v30, &unk_10094E1F0);
    sub_10000CF78(v29, v29[3]);
    v23 = v25;
    v22 = v26;
    v24 = v27;
    (*(v26 + 104))(v25, enum case for StoreViewControllerLifecycleEvent.willBecomeFullyVisible(_:), v27);
    sub_10075F2BC();
    (*(v22 + 8))(v23, v24);
    sub_10000CD74(v29);
  }

  else
  {
    sub_10000CFBC(v30, &unk_10094E1F0);
  }
}

uint64_t sub_100075C0C(SEL *a1, unsigned int *a2)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreCollectionViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v2 + v10, v14, &unk_10094E1F0);
  if (!v15)
  {
    return sub_10000CFBC(v14, &unk_10094E1F0);
  }

  sub_10000A570(v14, v13);
  sub_10000CFBC(v14, &unk_10094E1F0);
  sub_10000CF78(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_10075F2BC();
  (*(v6 + 8))(v8, v5);
  return sub_10000CD74(v13);
}

uint64_t sub_100075EA0(char a1, SEL *a2, unsigned int *a3)
{
  v7 = sub_10075F2AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreCollectionViewController();
  v18.receiver = v3;
  v18.super_class = v11;
  objc_msgSendSuper2(&v18, *a2, a1 & 1);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v3 + v12, v16, &unk_10094E1F0);
  if (!v17)
  {
    return sub_10000CFBC(v16, &unk_10094E1F0);
  }

  sub_10000A570(v16, v15);
  sub_10000CFBC(v16, &unk_10094E1F0);
  sub_10000CF78(v15, v15[3]);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10075F2BC();
  (*(v8 + 8))(v10, v7);
  return sub_10000CD74(v15);
}

id sub_100076514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007689C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_automationSemanticPageId];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v6 = &v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDelegate] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDataSource] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v9, "initWithCollectionViewLayout:", a1);
}

void sub_100076990()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_automationSemanticPageId);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_registeredForApplicationDidBecomeActive) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
  v3 = v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_collectionViewDataSource) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100076AD0(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_10000A5D4(&unk_100946720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  sub_10076460C();
  sub_10076C24C();
  v18 = v17;
  v15(v10, v7);
  v19 = sub_10076461C();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_100076D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v24 = a6;
  v22 = a2;
  v7 = sub_10076469C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009568B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100766E4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_1007632FC();
  sub_10076A85C();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000CFBC(v13, &qword_1009568B0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_100077074(v23);
  __chkstk_darwin(v19);
  *(&v22 - 2) = v17;
  v20 = sub_100409B88(sub_1000774CC, (&v22 - 4), v19);

  if (v20 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v21._rawValue = v20;
    sub_100760BAC(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

void *sub_100077074(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_100077514();
  LOBYTE(a1) = sub_10076FF1C();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_10076FF1C();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10000A5D4(&qword_100946730);
      sub_10076333C();
      if (v26)
      {
        sub_100012498(&v25, v27);
        sub_10000CF78(v27, v27[3]);
        v17 = sub_10076557C();
        if (v17)
        {
          v18 = v17;
          sub_10000A5D4(&unk_100942870);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007841E0;
          *(v19 + 32) = v18;
          sub_10000CD74(v27);
          return v19;
        }

        sub_10000CD74(v27);
      }

      else
      {
        sub_10000CFBC(&v25, &qword_100957B40);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100077464@<X0>(uint64_t *a1@<X8>)
{
  sub_100766E3C();
  sub_100766E1C();
  result = sub_10076BFCC();
  *a1 = result;
  return result;
}

unint64_t sub_100077514()
{
  result = qword_100942C48;
  if (!qword_100942C48)
  {
    sub_10076B5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942C48);
  }

  return result;
}

uint64_t sub_100077570(void *a1)
{
  if (*v1 == *a1 && (sub_1007713EC() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = sub_10077167C(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_100077654()
{
  sub_1007713FC();
  sub_10077008C();
  sub_10077177C(*(v0 + 72));
}

uint64_t sub_1000776A0()
{
}

uint64_t sub_1000776D0()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10007775C()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10076C2DC();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000A5D4(&qword_100942910);
  v16 = *(sub_10076C20C() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C27C();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  v44 = v6;
  sub_10076C29C();
  v41 = v15;
  v43 = v12;
  sub_10076C1CC();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4008000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007704BC();
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v34 = v9;
  sub_10076C1CC();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4018000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_1009454E0 = v39;
  return result;
}

uint64_t sub_100078178(uint64_t a1)
{
  v3 = sub_10075E57C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
  v12 = *(v4 + 16);
  v26 = a1;
  v12(&v24 - v9, a1, v3, v8);
  v13 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v4 + 24))(v11 + v13, v10, v3);
  swift_endAccess();
  sub_1000CA280();
  v14 = *(v4 + 8);
  v14(v10, v3);
  (v12)(v6, v11 + v13, v3);
  LODWORD(v11) = (*(v4 + 88))(v6, v3);
  LODWORD(v12) = enum case for InAppPurchaseTheme.spotlight(_:);
  v14(v6, v3);
  v15 = v11 == v12;
  v16 = v25;
  if (v15)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView;
    if (!*&v25[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView])
    {
      v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = *&v16[v17];
      if (v19)
      {
        [v19 removeFromSuperview];
        v20 = *&v16[v17];
      }

      else
      {
        v20 = 0;
      }

      *&v16[v17] = v18;
      v21 = v18;

      if (v21)
      {
        [v21 _setCornerRadius:4.0];
        if (qword_10093F5A0 != -1)
        {
          swift_once();
        }

        [v21 setBackgroundColor:qword_10099CB38];
        v22 = [v16 contentView];
        [v22 insertSubview:v21 atIndex:0];
      }

      [v16 setNeedsLayout];
    }
  }

  [v16 setNeedsLayout];
  return (v14)(v26, v3);
}

uint64_t sub_100078490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a4;
  v110 = a2;
  v106 = a1;
  v7 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v7 - 8);
  v108 = &v80 - v8;
  v107 = sub_10076A3AC();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v10 - 8);
  v109 = &v80 - v11;
  v12 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v12 - 8);
  v100 = &v80 - v13;
  v99 = sub_100768FEC();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1007628DC();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v80 - v17;
  __chkstk_darwin(v18);
  v112 = &v80 - v19;
  v20 = sub_10000A5D4(&unk_100946750);
  v102 = *(v20 - 8);
  v103 = v20;
  __chkstk_darwin(v20);
  v101 = &v80 - v21;
  v22 = sub_10075E57C();
  __chkstk_darwin(v22 - 8);
  v92 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076B6EC();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10077164C();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v26 - 8);
  v28 = &v80 - v27;
  v29 = sub_10076664C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10076E21C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a5;
  sub_100079BE0(a5, v36);
  sub_1007665FC();
  sub_10007A980(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v85 = a3;
  LOBYTE(a3) = sub_10077124C();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v97 = v33;
  v96 = v34;
  v111 = v36;
  if (a3)
  {
    (*(v34 + 56))(v28, 1, 1, v33);
    v38 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separator;
    v39 = v93;
    swift_beginAccess();
    sub_10007A910(v28, &v39[v38]);
    swift_endAccess();
    sub_1000797EC();
    sub_10000CFBC(v28, &unk_1009467C0);
    sub_10076660C();
    LOBYTE(v38) = sub_10077124C();
    v37(v32, v29);
    v40 = [v39 contentView];
    v41 = v40;
    v42 = v39;
    if (v38)
    {
      [v40 layoutMargins];
      [v41 setLayoutMargins:?];
    }

    else
    {
      sub_10076E1AC();
      sub_10000CF78(v114, v114[3]);
      v45 = v81;
      sub_1000FF02C();
      sub_10076D40C();
      (*(v82 + 8))(v45, v83);
      [v41 layoutMargins];
      [v41 setLayoutMargins:?];

      sub_10000CD74(v114);
    }
  }

  else
  {
    (*(v34 + 16))(v28, v36, v33);
    (*(v34 + 56))(v28, 0, 1, v33);
    v43 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separator;
    v42 = v93;
    swift_beginAccess();
    sub_10007A910(v28, &v42[v43]);
    swift_endAccess();
    sub_1000797EC();
    sub_10000CFBC(v28, &unk_1009467C0);
    v44 = [v42 contentView];
    [v44 layoutMargins];
    [v44 setLayoutMargins:?];
  }

  v46 = v101;
  v47 = v112;
  v48 = v89;
  sub_10076B6BC();
  sub_10007A980(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v49 = v91;
  v50 = sub_10077124C();
  (*(v90 + 8))(v48, v49);
  v42[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = v50 & 1;
  v51 = v92;
  sub_10075E65C();
  sub_100078178(v51);
  v52 = *&v42[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v53 = *&v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_titleLabel];
  sub_10076BB6C();
  if (v54)
  {
    v55 = sub_10076FF6C();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText:v55];

  v56 = *&v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_descriptionLabel];
  sub_10075E64C();
  if (v57)
  {
    v58 = sub_10076FF6C();
  }

  else
  {
    v58 = 0;
  }

  v59 = v113;
  [v56 setText:v58];

  if (sub_10076BB3C())
  {
    v60 = v86;
    sub_100766A7C();

    v61 = v88;
    (*(v88 + 32))(v47, v60, v59);
    v62 = v87;
    (*(v61 + 104))(v87, enum case for OfferEnvironment.widthConstrainedLockup(_:), v59);
    v63 = sub_1007628BC();
    v64 = *(v61 + 8);
    v64(v62, v59);
    if (v63)
    {
      v65 = v95;
      v66 = v99;
      (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.below(_:), v99);
      (*(v65 + 56))(v100, 1, 1, v66);
      sub_10007A980(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
      sub_10076759C();
      v67 = v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained];
      v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained] = 1;
      if ((v67 & 1) == 0)
      {
        [v52 setNeedsLayout];
      }

      v64(v112, v113);
      v68 = v111;
      goto LABEL_20;
    }

    v64(v47, v59);
  }

  v69 = v95;
  v70 = v99;
  (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.right(_:), v99);
  (*(v69 + 56))(v100, 1, 1, v70);
  sub_10007A980(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10076759C();
  v71 = v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained];
  v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained] = 0;
  v68 = v111;
  if (v71 == 1)
  {
    [v52 setNeedsLayout];
  }

LABEL_20:
  v72 = *&v52[OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_offerButton];
  v73 = sub_10076BB3C();
  v74 = sub_10076BA2C();
  v75 = v104;
  v76 = v107;
  (*(v104 + 104))(v105, enum case for OfferButtonPresenterViewAlignment.left(_:), v107);
  (*(v75 + 56))(v108, 1, 1, v76);
  sub_10007A980(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v77 = v109;
  sub_10076759C();
  v78 = sub_10000A5D4(&qword_100945590);
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_1001F12C8(v73, v74, 0, v77, v46, v110, 0, 0);

  sub_10000CFBC(v77, &unk_100946760);
  [v42 setNeedsLayout];
  (*(v102 + 8))(v46, v103);
  return (*(v96 + 8))(v68, v97);
}

UIColor sub_1000793DC()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  v2.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.168627451 green:0.188235294 blue:0.231372549 alpha:1.0];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_10099CB38 = result.super.isa;
  return result;
}

char *sub_1000794AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  v14 = sub_10076E21C();
  v15 = (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = 0;
  LOBYTE(ObjectType) = (*(ObjectType + 128))(v15);
  v16 = objc_allocWithZone(type metadata accessor for InAppPurchaseLockupView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] = sub_1000CA728(ObjectType & 1);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView]];

  return v17;
}

id sub_1000797EC()
{
  v1 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0);
    v12 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView;
    v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 removeFromSuperview];
      v14 = *&v0[v12];
    }

    else
    {
      v14 = 0;
    }

    *&v0[v12] = 0;

    return [v0 setNeedsLayout];
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v15 = OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView;
    v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v16)
    {
      (*(v5 + 16))(v7, v10, v4);
      v17 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v18 = *(v5 + 24);
      v19 = v16;
      v18(&v16[v17], v7, v4);
      swift_endAccess();
      [v19 setNeedsLayout];

      v20 = *(v5 + 8);
      v20(v7, v4);
      return (v20)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v22 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v23 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v30 = *(v5 + 40);
      v24 = v22;
      v30(&v22[v23], v7, v4);
      swift_endAccess();

      v25 = *&v0[v15];
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *&v0[v15];
      }

      else
      {
        v26 = 0;
      }

      *&v0[v15] = v24;
      v27 = v24;

      v28 = [v0 contentView];
      [v28 addSubview:v27];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_100079BE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094CD50);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v22[-1] - v11;
  v13 = [a1 traitCollection];
  v14 = sub_10077071C();

  if (v14)
  {
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v15 = sub_10076E21C();
    v16 = sub_10000A61C(v15, qword_1009A26E0);
    v17 = *(*(v15 - 8) + 16);

    return v17(a2, v16, v15);
  }

  else
  {
    if (qword_10093F668 != -1)
    {
      swift_once();
    }

    v19 = sub_10075E8CC();
    sub_10000A61C(v19, qword_10099CD58);
    sub_10075E8BC();
    v22[0] = a1;
    sub_10075FDCC();
    (*(v9 + 8))(v12, v8);
    sub_10075E87C();
    sub_10000CF78(v22, v22[3]);
    sub_1000FF02C();
    sub_10076D40C();
    (*(v5 + 8))(v7, v4);
    sub_10000CD74(v22);
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v20 = sub_10076E21C();
    sub_10000A61C(v20, qword_1009A26E0);
    return sub_10076E1BC();
  }
}

id sub_100079F50()
{
  v1 = v0;
  v2 = sub_10075E57C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v61 - v6;
  __chkstk_darwin(v7);
  v64 = &v61 - v8;
  v9 = sub_10076E21C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v73.receiver = v0;
  v73.super_class = v13;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v14 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72.origin.x = v16;
  v72.origin.y = v18;
  v72.size.width = v20;
  v72.size.height = v22;
  v67 = v1;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v62 = v3;
    v25 = *(v10 + 16);
    v25(v12, &v23[v24], v9);
    v26 = v9;
    v27 = v23;
    sub_10076E1CC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v63 = v2;
    v36 = *(v10 + 8);
    v36(v12, v26);
    [v27 setFrame:{v29, v31, v33, v35}];
    v25(v12, &v23[v24], v26);
    v3 = v62;
    sub_100770A6C();

    v36(v12, v26);
    v2 = v63;
  }

  v37 = *&v67[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v38 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v39 = *(v3 + 16);
  v40 = v64;
  v39(v64, &v37[v38], v2);
  v41 = (*(v3 + 88))(v40, v2);
  v42 = enum case for InAppPurchaseTheme.spotlight(_:);
  v64 = *(v3 + 8);
  (v64)(v40, v2);
  if (v41 == v42)
  {
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    CGRectGetMinX(v72);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMinY(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    CGRectGetWidth(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    v43.n128_f64[0] = CGRectGetHeight(v76);
  }

  v48 = *&v67[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView];
  v49 = v65;
  if (v48)
  {
    v50 = v37;
    v51 = v3;
    v52 = v48;
    sub_100770A4C();
    [v52 setFrame:?];

    v3 = v51;
    v37 = v50;
  }

  (v39)(v49, &v37[v38], v2, v43);
  v53 = v66;
  (*(v3 + 104))(v66, v42, v2);
  sub_10007A980(&qword_100947700, &type metadata accessor for InAppPurchaseTheme);
  sub_10077018C();
  sub_10077018C();
  if (v70 != v68 || v71 != v69)
  {
    sub_10077167C();
  }

  v54 = v53;
  v55 = v64;
  (v64)(v54, v2);
  v55(v49, v2);

  v56 = v72.origin.x;
  v57 = v72.origin.y;
  v58 = v72.size.width;
  v59 = v72.size.height;
  CGRectGetMinX(v72);
  v77.origin.x = v56;
  v77.origin.y = v57;
  v77.size.width = v58;
  v77.size.height = v59;
  CGRectGetMinY(v77);
  v78.origin.x = v56;
  v78.origin.y = v57;
  v78.size.width = v58;
  v78.size.height = v59;
  CGRectGetWidth(v78);
  v79.origin.x = v56;
  v79.origin.y = v57;
  v79.size.width = v58;
  v79.size.height = v59;
  CGRectGetHeight(v79);
  sub_100770A4C();
  return [v37 setFrame:?];
}

id sub_10007A680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupCollectionViewCell()
{
  result = qword_100945528;
  if (!qword_100945528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007A79C()
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007A8BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10007A910(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007A9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AA4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10076D39C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007AB0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D39C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration()
{
  result = qword_100945620;
  if (!qword_100945620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007ABFC()
{
  sub_10007ACC8();
  if (v0 <= 0x3F)
  {
    sub_1000325F0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        sub_10076D39C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007ACC8()
{
  if (!qword_100945630)
  {
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100945630);
    }
  }
}

uint64_t sub_10007AD18()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099CB60);
  sub_10000A61C(v0, qword_10099CB60);
  return sub_10076D3AC();
}

uint64_t sub_10007AD6C()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  sub_10000DB18(v4, qword_10099CB78);
  v5 = sub_10000A61C(v4, qword_10099CB78);
  if (qword_10093F5C0 != -1)
  {
    swift_once();
  }

  v6 = qword_10093F5C8;
  v7 = qword_1009455A0;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_1009455B8;
  v11 = xmmword_1009455A8;
  sub_10076D3AC();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_10007AF28()
{
  result = [objc_opt_self() blackColor];
  qword_100945598 = result;
  return result;
}

uint64_t sub_10007AF64()
{
  sub_1000325F0();
  result = sub_100770CEC();
  qword_1009455A0 = result;
  return result;
}

__n128 sub_10007AF98()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1009455A8 = *&UIEdgeInsetsZero.top;
  unk_1009455B8 = v1;
  return result;
}

__n128 sub_10007AFB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075F21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    sub_100760E3C();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = sub_100760E8C();
    v47 = v21;
    v48 = sub_100760E7C();
    v52.n128_u32[0] = v22;

    sub_100760E3C();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    sub_100760E3C();
    if (v16(v8, v4) == v18)
    {
      if (qword_10093F5B8 != -1)
      {
        swift_once();
      }

      v23 = qword_100945598;
    }

    else
    {
      if (qword_10093F5C0 != -1)
      {
        swift_once();
      }

      v23 = qword_1009455A0;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    sub_100760E3C();
    if (v16(v31, v4) == v18)
    {
      v32 = sub_100760E7C();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_10093F5A8 != -1)
        {
          swift_once();
        }

        v34 = sub_10076D39C();
        sub_10000A61C(v34, qword_10099CB60);
        sub_10076D33C();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_10093F5C0 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_1009455A0;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration();
  sub_10076D3AC();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

char *sub_10007B48C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_100760B4C();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10076D9AC();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10076C43C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D3DC();
  v53 = sub_10000A61C(v26, qword_1009A1F78);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_10076D9BC();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000DB7C(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_100760B6C());
  v33 = sub_100760B3C();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_1007626BC());
  *&v34[v35] = sub_1007626AC();
  v38 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v34;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemBackgroundColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:*&v42[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView]];
  v44 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  [v42 addSubview:*&v42[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel]];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView]];
  [*&v42[v44] setNumberOfLines:0];
  v45 = *&v42[v44];
  v46 = [v42 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_10077084C();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000A5D4(&unk_100945BF0);
  v49 = swift_allocObject();
  v63 = xmmword_100783DD0;
  *(v49 + 16) = xmmword_100783DD0;
  *(v49 + 32) = sub_10076E88C();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v39;
  v66[0] = v42;
  v50 = v42;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_10076E59C();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v39;
  v66[0] = v50;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  return v50;
}

uint64_t sub_10007BD48@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v36 = sub_10076DFEC();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v38 = (v34 - v5);
  __chkstk_darwin(v6);
  v37 = (v34 - v7);
  __chkstk_darwin(v8);
  v10 = (v34 - v9);
  v11 = sub_10076D65C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v35 = v34 - v19;
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  sub_10076D63C();
  v41 = *&v20[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView];
  sub_100760B6C();
  sub_10076D2DC();
  sub_10076D64C();
  sub_10000CD74(v44);
  v21 = *(v12 + 8);
  v34[0] = v11;
  v21(v14, v11);
  v34[1] = v12 + 8;
  v22 = *&v20[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v45 = sub_1007626BC();
  v46 = &protocol witness table for UILabel;
  v44[0] = v22;
  *(swift_allocObject() + 16) = v20;
  v23 = v20;
  v24 = v22;
  sub_10076D64C();

  v21(v17, v11);
  sub_10000CD74(v44);
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView];
  v42 = type metadata accessor for ArcadeDownloadPackCategoryListView();
  v43 = sub_10007CB2C();
  v41 = v25;
  *v10 = sub_10007C300;
  v10[1] = 0;
  v26 = *(v2 + 104);
  v27 = v36;
  v26(v10, enum case for Resize.Rule.recalculated(_:), v36);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v26(v37, enum case for Resize.Rule.unchanged(_:), v27);
  v26(v38, v28, v27);
  v26(v39, v28, v27);
  v45 = sub_10076DFFC();
  v46 = &protocol witness table for Resize;
  sub_10000DB7C(v44);
  v29 = v25;
  sub_10076E00C();
  v30 = v40;
  v31 = v34[0];
  v40[3] = v34[0];
  v30[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v30);
  v32 = v35;
  sub_10076D64C();
  v21(v32, v31);
  return sub_10000CD74(v44);
}

uint64_t sub_10007C1E8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_10077084C();
  return sub_10076D5EC();
}

uint64_t sub_10007C268(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007706CC();

  return sub_10076D5CC();
}

id sub_10007C3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  sub_10076A18C();
  v9 = sub_10076FF6C();

  [v8 setText:v9];

  v10 = sub_10076A15C();
  sub_1005A6410(v10, a2, a3, a4);

  [v4 setNeedsLayout];
  [v4 invalidateIntrinsicContentSize];
  v11 = [v4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = sub_10077084C();
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  return [v8 setTextAlignment:v13];
}

id sub_10007C520()
{
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_10077084C();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return [v1 setTextAlignment:v4];
}

id sub_10007C7D8()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_10077084C();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_10077084C();
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  return [v1 setTextAlignment:v7];
}

double sub_10007C9C4()
{
  sub_10007BD48(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t sub_10007CA98()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10007CB2C()
{
  result = qword_1009456B8;
  if (!qword_1009456B8)
  {
    type metadata accessor for ArcadeDownloadPackCategoryListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009456B8);
  }

  return result;
}

void sub_10007CB84()
{
  v0 = sub_10076771C();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v36 = sub_100760B4C();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076D9AC();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10076C43C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v32 = sub_10000A61C(v18, qword_1009A1F78);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v32, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v44 = v5;
  v45 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v43);
  (*(v6 + 16))(v21, v8, v5);
  sub_10076D9BC();
  (*(v6 + 8))(v8, v5);
  (*(v34 + 104))(v37, enum case for WordmarkView.Alignment.leading(_:), v36);
  v22 = v35;
  v44 = v35;
  v45 = &protocol witness table for StaticDimension;
  v23 = sub_10000DB7C(v43);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_100760B6C());
  v25 = sub_100760B3C();
  (*(v9 + 8))(v11, v22);
  v26 = v42;
  v27 = v32;
  *(v42 + v33) = v25;
  v28 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v29 = v38;
  v20(v38, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v39 + 104))(v41, enum case for DirectionalTextAlignment.none(_:), v40);
  v30 = objc_allocWithZone(sub_1007626BC());
  *(v26 + v28) = sub_1007626AC();
  v31 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

char *sub_10007D1A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  v13 = v10;
  [v12 setContentMode:4];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [*&v13[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:*&v10[v11] atIndex:0];

  return v13;
}

uint64_t sub_10007D360(uint64_t a1)
{
  if (!a1 || (v2 = v1, v12[0] = sub_10076C7FC(), sub_100761BFC(), sub_10000A5D4(&qword_100945700), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_8;
  }

  if (!*(&v10 + 1))
  {
LABEL_8:
    sub_10000CFBC(&v9, &qword_1009456F8);
    return 0;
  }

  sub_100012498(&v9, v12);
  sub_10000CF78(v12, v13);
  v3 = [v1 traitCollection];
  v4 = sub_1007684FC();

  v5 = v4;
  if (!v4)
  {
    sub_10000CF78(v12, v13);
    v6 = [v2 traitCollection];
    v7 = sub_1007684EC();

    if (v7)
    {
      v5 = sub_10076B84C();
    }

    else
    {
      v5 = 0;
    }
  }

  sub_10000CD74(v12);
  return v5;
}

uint64_t sub_10007D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1004CCA80();
  result = sub_10007D360(a1);
  if (result)
  {
    v8 = sub_10076C70C();
    if (!v8)
    {
      v9 = sub_10076BE1C();
      if (!v9)
      {
LABEL_6:
        v12[3] = sub_10076C84C();
        v12[4] = &protocol witness table for TodayCard;
        v12[0] = a1;
        sub_100760C4C();

        sub_10076F5CC();
        (*((swift_isaMask & *v4) + 0xE0))(v12, v11, a3);

        return sub_10000CD74(v12);
      }

      v10 = v9;
      [*(v4 + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView) setBackgroundColor:v9];
      v8 = v10;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_10007D624(uint64_t a1)
{
  v2 = sub_10076BEDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    sub_100764ACC();
    v9 = sub_10076BE9C();
    (*(v3 + 8))(v5, v2);
    [v8 setContentMode:v9];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    [v12 setImage:a1];
  }
}

uint64_t sub_10007D7BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];
  sub_10007E008();
  sub_10007E670(&qword_100966100, sub_10007E008);
  v2 = v1;
  sub_10077140C();
  sub_100760BEC();
  return sub_100016C74(v4);
}

id sub_10007D890()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];

  return [v1 setBackgroundColor:0];
}

id sub_10007D8FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TodayBrickCollectionViewCellWithBackground()
{
  result = qword_1009456E8;
  if (!qword_1009456E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D9E0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = sub_10076BEDC();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100765A2C();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_10076C38C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(v2 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000CFBC(v15, &unk_1009434A0);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10000A570(a1, v41);
  sub_10000A5D4(&unk_100942830);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    v32 = v40;
    sub_10000A570(a1, v41);
    if (swift_dynamicCast())
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_10007D360(v22);

    if (v23)
    {
      v31 = v2;
      v24 = [v2 traitCollection];
      sub_1004CAB60(v24, v12);
      sub_10076C2FC();
      sub_100765A1C();
      sub_10076D36C();
      (*(v33 + 8))(v9, v34);
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v37 + 8))(v6, v38);
      v25 = sub_10076BFCC();

      (*(v35 + 8))(v12, v36);
      v40 = *(v31 + OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
      v26 = v40;
      sub_10007E008();
      sub_10007E670(&qword_100966100, sub_10007E008);
      v27 = v26;
      sub_10077140C();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v25;

      sub_100760B7C();

      sub_10000CFBC(v41, &qword_100943310);
      (*(v17 + 8))(v19, v16);
    }

    (*((swift_isaMask & *v2) + 0x120))(v32, v39);
  }

  return (*(v17 + 8))(v19, v16);
}

unint64_t sub_10007E008()
{
  result = qword_10094A280;
  if (!qword_10094A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094A280);
  }

  return result;
}

uint64_t sub_10007E054()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007E08C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E0D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076BEDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076D39C();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100765A2C();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076C38C();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C84C();
  sub_10007E670(&qword_100947150, &type metadata accessor for TodayCard);
  sub_10076332C();
  if (v37[0])
  {
    v28 = v9;
    v14 = sub_10076C7FC();

    v37[0] = v14;
    sub_100761BFC();
    sub_10000A5D4(&qword_100945700);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        v25 = v4;
        v26 = v3;
        v27 = a2;
        sub_100012498(&v34, v37);
        sub_10000CF78(v37, v38);
        swift_getKeyPath();
        sub_10076338C();

        v15 = v34;
        v16 = sub_1007684FC();

        if (!v16)
        {
          sub_10000CF78(v37, v38);
          swift_getKeyPath();
          sub_10076338C();

          v17 = v34;
          v18 = sub_1007684EC();

          if (!v18)
          {
            return sub_10000CD74(v37);
          }

          sub_10076B84C();
        }

        swift_getKeyPath();
        sub_10076338C();

        swift_getKeyPath();
        sub_10076338C();

        v19 = v34;
        sub_1004CAB60(v34, v11);
        sub_10076C2FC();
        sub_100765A1C();
        sub_10076D36C();
        (*(v30 + 8))(v8, v32);
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v25 + 8))(v6, v26);
        v20 = sub_10076BFCC();

        (*(v33 + 8))(v11, v28);
        (*(v29 + 8))(v13, v31);
        sub_10000A5D4(&unk_100942870);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007841E0;
        *(v21 + 32) = v20;

        v22._rawValue = v21;
        sub_100760BAC(v22);

        return sub_10000CD74(v37);
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  return sub_10000CFBC(&v34, &qword_1009456F8);
}

uint64_t sub_10007E670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007E6C0()
{
  *(v0 + 16) = [objc_opt_self() standardUserDefaults];
  v1 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
  v2 = sub_10000A5D4(&unk_100945748);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_actionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_promptActionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_infoSettingRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuItemRegistration, 1, 1, v2);
  sub_10007F450();
  return v0;
}

uint64_t sub_10007E8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v74 = a3;
  v4 = sub_10000A5D4(&qword_100945918);
  __chkstk_darwin(v4 - 8);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = (&v71 - v16);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  __chkstk_darwin(v24);
  v26 = &v71 - v25;
  __chkstk_darwin(v27);
  v29 = &v71 - v28;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  type metadata accessor for NavigationActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
    v35 = v76;
    swift_beginAccess();
    sub_100082D04(v35 + v34, v32);
    v36 = sub_10000A5D4(&unk_100945748);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v32, 1, v36);
    if (result != 1)
    {
      v77 = v33;
      sub_100016F40(0, &qword_100945920);
      type metadata accessor for DebugSetting();

      v39 = sub_1007705AC();

      (*(v37 + 8))(v32, v36);
      return v39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v72 = v29;
  v40 = v76;
  v41 = v73;
  type metadata accessor for ActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v42 = a2;
    v43 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_actionRegistration;
    swift_beginAccess();
    v44 = v72;
    sub_100082D04(v40 + v43, v72);
    v45 = sub_10000A5D4(&unk_100945748);
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v44, 1, v45);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v77 = v42;
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    (*(v46 + 8))(v44, v45);
    return v39;
  }

  type metadata accessor for StringUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v47 = a2;
    v48 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    sub_100082D04(v40 + v48, v26);
    v49 = sub_10000A5D4(&unk_100945748);
    v50 = *(v49 - 8);
    result = (*(v50 + 48))(v26, 1, v49);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = v47;
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    v51 = *(v50 + 8);
    v52 = v26;
    goto LABEL_14;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v53 = a2;
    v54 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
    swift_beginAccess();
    v55 = v23;
    sub_100082D04(v40 + v54, v23);
    v49 = sub_10000A5D4(&unk_100945748);
    v56 = *(v49 - 8);
    result = (*(v56 + 48))(v55, 1, v49);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v77 = v53;
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    v51 = *(v56 + 8);
    v52 = v55;
LABEL_14:
    v51(v52, v49);
    return v39;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v57 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    v58 = v20;
    sub_100082D04(v40 + v57, v20);
    a2 = sub_10000A5D4(&unk_100945748);
    v17 = *(a2 - 8);
    if (v17[6](v20, 1, a2) != 1)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v59 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
    swift_beginAccess();
    v58 = v17;
    sub_100082D04(v40 + v59, v17);
    a2 = sub_10000A5D4(&unk_100945748);
    v17 = *(a2 - 8);
    result = (v17[6])(v58, 1, a2);
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  type metadata accessor for PromptActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v60 = a2;
    v61 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_promptActionRegistration;
    swift_beginAccess();
    sub_100082D04(v40 + v61, v14);
    v62 = sub_10000A5D4(&unk_100945748);
    v63 = *(v62 - 8);
    result = (*(v63 + 48))(v14, 1, v62);
    if (result == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v77 = v60;
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    (*(v63 + 8))(v14, v62);
    return v39;
  }

  type metadata accessor for InfoDebugSetting();
  if (swift_dynamicCastClass())
  {
    v64 = a2;
    v65 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_infoSettingRegistration;
    swift_beginAccess();
    sub_100082D04(v40 + v65, v11);
    v66 = sub_10000A5D4(&unk_100945748);
    v67 = *(v66 - 8);
    result = (*(v67 + 48))(v11, 1, v66);
    if (result == 1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v77 = v64;
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    (*(v67 + 8))(v11, v66);
    return v39;
  }

  type metadata accessor for MenuDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v68 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuRegistration;
    swift_beginAccess();
    v58 = v8;
    sub_100082D04(v40 + v68, v8);
    a2 = sub_10000A5D4(&unk_100945748);
    v17 = *(a2 - 8);
    if (v17[6](v8, 1, a2) == 1)
    {
      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v77 = v41;
LABEL_22:
    sub_100016F40(0, &qword_100945920);
    type metadata accessor for DebugSetting();

    v39 = sub_1007705AC();

    (v17[1])(v58, a2);
    return v39;
  }

LABEL_32:
  type metadata accessor for MenuItemDebugSetting();
  v69 = a2;
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v70 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  v58 = v41;
  sub_100082D04(v40 + v70, v41);
  a2 = sub_10000A5D4(&unk_100945748);
  v17 = *(a2 - 8);
  result = (v17[6])(v41, 1, a2);
  if (result != 1)
  {
    v77 = v69;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_10007F450()
{
  v1 = sub_10000A5D4(&qword_100945918);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_100016F40(0, &qword_100945920);
  type metadata accessor for DebugSetting();
  sub_10077058C();
  v4 = sub_10000A5D4(&unk_100945748);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_navigationActionRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v6);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_actionRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v7);
  swift_endAccess();
  v8 = *(v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v9;
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v11 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v11);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v12);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v13);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v14 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_promptActionRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v14);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_infoSettingRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v15);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v16 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v16);
  swift_endAccess();
  sub_10077058C();
  v5(v3, 0, 1, v4);
  v17 = OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  sub_100082B58(v3, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_10007FA08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v5 - 8);
  v30 = v26 - v6;
  v7 = sub_10076E2FC();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076E23C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E58C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for NavigationActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v27 = v7;
    v28 = a1;
    v26[1] = v17;

    sub_10076E57C();

    sub_10076E56C();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_1000167E0(v20);
    }

    sub_10076E4FC();
    v32[3] = v13;
    v32[4] = &protocol witness table for UIListContentConfiguration;
    v26[0] = v13;
    v22 = sub_10000DB7C(v32);
    (*(v14 + 16))(v22, v16, v13);
    sub_1007707FC();
    sub_10000A5D4(&qword_100945930);
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    v23 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v24 = sub_10076E24C();
    (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
    v25 = v29;
    sub_10076E2EC();
    sub_10076E28C();
    (*(v31 + 8))(v25, v27);
    (*(v10 + 8))(v23, v9);
    sub_10077093C();

    return (*(v14 + 8))(v16, v26[0]);
  }

  return result;
}

uint64_t sub_10007FE74()
{
  v0 = sub_10076E58C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;

    sub_10076E57C();

    sub_10076E56C();
    if (!*(v5 + 80))
    {
      v6 = *(v5 + 88);
      if (v6)
      {
        v6();
      }
    }

    sub_10076E4FC();
    v9[3] = v0;
    v9[4] = &protocol witness table for UIListContentConfiguration;
    v7 = sub_10000DB7C(v9);
    (*(v1 + 16))(v7, v3, v0);
    sub_1007707FC();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100080030(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v26 = a4;
  v29 = a1;
  v5 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v5 - 8);
  v27 = &v24 - v6;
  v7 = sub_10076E2FC();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E23C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076E58C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  type metadata accessor for StringUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = v18;
    v25 = v7;

    sub_10076E57C();

    sub_10076E56C();

    v20 = sub_10076FF6C();

    v21 = [v26 valueForKey:v20];

    if (v21)
    {
      sub_10077123C();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v30 = v33;
    v31 = v34;
    if (*(&v34 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10000CFBC(&v30, &unk_1009434C0);
    }

    sub_10076E4FC();
    *(&v31 + 1) = v14;
    v32 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_10000DB7C(&v30);
    (*(v15 + 16))(v22, v17, v14);
    sub_1007707FC();
    sub_10000A5D4(&qword_100945930);
    v26 = v17;
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
    v23 = sub_10076E24C();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    sub_10076E2EC();
    sub_10076E28C();
    (*(v28 + 8))(v9, v25);
    (*(v11 + 8))(v13, v10);
    sub_10077093C();

    return (*(v15 + 8))(v26, v14);
  }

  return result;
}

uint64_t sub_100080528(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_10076E30C();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E2AC();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E58C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v40 = v13;
    v41 = v9;
    v37[1] = v19;

    sub_10076E55C();

    sub_10076E56C();
    *(&v51 + 1) = v15;
    v52 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_10000DB7C(&v50);
    v38 = v16;
    (*(v16 + 16))(v22, v18, v15);
    v42 = a1;
    sub_1007707FC();
    v23 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

    v24 = sub_10076FF6C();

    v25 = [a4 objectForKey:v24];

    if (v25)
    {
      sub_10077123C();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    v39 = v15;
    if (*(&v49 + 1))
    {
      sub_100016F40(0, &qword_1009492D0);
      if (swift_dynamicCast())
      {
        v26 = v47;
        [v23 setOn:{objc_msgSend(v47, "BOOLValue")}];

LABEL_10:
        sub_100016F40(0, &qword_1009641D0);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a4;
        v28[4] = v21;

        v29 = a4;
        v30 = sub_100770F1C();
        [v23 addAction:v30 forControlEvents:0x2000];
        sub_10000A5D4(&qword_100945930);
        sub_10076E32C();
        *(swift_allocObject() + 16) = xmmword_100783DD0;
        v31 = &v12[*(sub_10000A5D4(&qword_100945940) + 48)];
        v32 = enum case for UICellAccessory.DisplayedState.always(_:);
        v33 = sub_10076E23C();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        *v31 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v31[1] = 0;
        (*(v43 + 104))(v12, enum case for UICellAccessory.Placement.trailing(_:), v44);
        v34 = sub_10076E24C();
        (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
        v35 = v23;
        v36 = v45;
        sub_10076E29C();
        sub_10076E22C();
        (*(v46 + 8))(v36, v40);
        sub_10077093C();

        return (*(v38 + 8))(v18, v39);
      }
    }

    else
    {
      sub_10000CFBC(&v50, &unk_1009434C0);
    }

    [v23 setOn:0];
    goto LABEL_10;
  }

  return result;
}

void sub_100080BC4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isOn];
    v7 = sub_10076FF6C();
    [a3 setBool:v6 forKey:v7];
  }
}

uint64_t sub_100080C5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v5 - 8);
  v24 = v22 - v6;
  v7 = sub_10076E2FC();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076E23C();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E58C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for StringPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_10076E57C();
    v22[1] = a1;
    v22[2] = v17;

    sub_10076E56C();
    swift_getObjectType();
    sub_10076F41C();
    sub_10076E4FC();
    v27[3] = v13;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10000DB7C(v27);
    (*(v14 + 16))(v19, v16, v13);
    sub_1007707FC();
    sub_10000A5D4(&qword_100945930);
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    v20 = v23;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v23);
    v21 = sub_10076E24C();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    sub_10076E2EC();
    sub_10076E28C();
    (*(v25 + 8))(v9, v26);
    (*(v10 + 8))(v12, v20);
    sub_10077093C();

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1000810B4(uint64_t a1)
{
  v35 = a1;
  v1 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10076E30C();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076E2AC();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E58C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v31 = v3;

    sub_10076E55C();

    sub_10076E56C();

    sub_10076E4FC();
    v36[3] = v10;
    v36[4] = &protocol witness table for UIListContentConfiguration;
    v16 = sub_10000DB7C(v36);
    v28 = v11;
    v29 = v10;
    (*(v11 + 16))(v16, v13, v10);
    sub_1007707FC();
    v17 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    sub_10076F41C();
    v18 = v36[0];
    v30 = v7;
    if (LOBYTE(v36[0]) == 2)
    {
      v18 = *(v15 + 88);
    }

    [v17 setOn:v18 & 1];
    sub_100016F40(0, &qword_1009641D0);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v15;

    v21 = sub_100770F1C();
    [v17 addAction:v21 forControlEvents:0x2000];
    sub_10000A5D4(&qword_100945930);
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    v22 = &v6[*(sub_10000A5D4(&qword_100945940) + 48)];
    v23 = enum case for UICellAccessory.DisplayedState.always(_:);
    v24 = sub_10076E23C();
    (*(*(v24 - 8) + 104))(v6, v23, v24);
    *v22 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v22[1] = 0;
    (*(v32 + 104))(v6, enum case for UICellAccessory.Placement.trailing(_:), v33);
    v25 = sub_10076E24C();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v17;
    sub_10076E29C();
    sub_10076E22C();
    (*(v34 + 8))(v9, v30);
    sub_10077093C();

    return (*(v28 + 8))(v13, v29);
  }

  return result;
}

void sub_1000816A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100955860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v4);
    v10[7] = [v9 isOn];
    sub_10076F42C();
  }
}

uint64_t sub_100081808(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v5 - 8);
  v31 = v27 - v6;
  v7 = sub_10076E2FC();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076E23C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E58C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v28 = v7;
    v29 = a1;
    v27[1] = v17;

    sub_10076E57C();

    sub_10076E56C();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_1000167E0(v20);
    }

    sub_10076E4FC();
    sub_100016F40(0, &qword_100942F10);
    sub_100770E1C();
    v22 = sub_10076E54C();
    sub_10076E51C();
    v22(v33, 0);
    v33[3] = v13;
    v33[4] = &protocol witness table for UIListContentConfiguration;
    v27[0] = v13;
    v23 = sub_10000DB7C(v33);
    (*(v14 + 16))(v23, v16, v13);
    sub_1007707FC();
    sub_10000A5D4(&qword_100945930);
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    v24 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v25 = sub_10076E24C();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v30;
    sub_10076E2EC();
    sub_10076E28C();
    (*(v32 + 8))(v26, v28);
    (*(v10 + 8))(v24, v9);
    sub_10077093C();

    return (*(v14 + 8))(v16, v27[0]);
  }

  return result;
}

uint64_t sub_100081CCC()
{
  v0 = sub_10076E58C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    sub_10076E57C();

    sub_10076E56C();

    sub_10076E4FC();
    v7[3] = v0;
    v7[4] = &protocol witness table for UIListContentConfiguration;
    v5 = sub_10000DB7C(v7);
    (*(v1 + 16))(v5, v3, v0);
    sub_1007707FC();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100081E4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10076E23C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10000A5D4(&qword_100945938);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v40 = sub_10076E2DC();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E58C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for MenuDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v36 = v5;
    v34[1] = v19;

    sub_10076E57C();

    v22 = sub_10076E56C();
    v23 = (*(v21 + 80))(v41, v22);
    __chkstk_darwin(v23);
    v34[-2] = v41;
    v25 = sub_100244104(sub_100082C10, &v34[-4], v24);
    v35 = v6;
    if (v25)
    {
    }

    sub_10000CFBC(v41, &qword_100943310);
    sub_10076E4FC();
    sub_100016F40(0, &qword_100942F10);
    sub_100770E1C();
    v26 = sub_10076E54C();
    sub_10076E51C();
    v26(v41, 0);
    v41[3] = v15;
    v41[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_10000DB7C(v41);
    (*(v16 + 16))(v27, v18, v15);
    v34[0] = a1;
    sub_1007707FC();
    sub_10000A5D4(&qword_100945930);
    sub_10076E32C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    v28 = sub_10076E2BC();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = sub_10076E24C();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    sub_100770D0C();
    v30 = v37;
    sub_10076E2CC();
    v32 = v35;
    v31 = v36;
    v33 = v39;
    (*(v35 + 104))(v39, enum case for UICellAccessory.DisplayedState.always(_:), v36);
    sub_10076E27C();
    (*(v32 + 8))(v33, v31);
    (*(v38 + 8))(v30, v40);
    sub_10077093C();

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100082428()
{
  v0 = sub_10000A5D4(&qword_100945928);
  __chkstk_darwin(v0 - 8);
  v20 = v17 - v1;
  v2 = sub_10076E26C();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076E23C();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076E58C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuItemDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v18 = v2;

    sub_10076E55C();

    sub_10076E56C();
    v23[3] = v7;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v13 = sub_10000DB7C(v23);
    (*(v8 + 16))(v13, v10, v7);
    sub_1007707FC();
    if (*(v12 + 72) == 1)
    {
      sub_10000A5D4(&qword_100945930);
      v14 = *(sub_10076E32C() - 8);
      v17[1] = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      v15 = v19;
      (*(v19 + 104))(v6, enum case for UICellAccessory.DisplayedState.always(_:), v22);
      v16 = sub_10076E24C();
      (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
      sub_10076E25C();
      sub_10076E31C();
      (*(v21 + 8))(v4, v18);
      (*(v15 + 8))(v6, v22);
    }

    sub_10077093C();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100082868()
{
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_navigationActionRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_actionRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringUserDefaultRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_stringPreferenceRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_BOOLPreferenceRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_promptActionRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_infoSettingRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuRegistration, &qword_100945918);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension29DebugSettingCellRegistrations_menuItemRegistration, &qword_100945918);
  return v0;
}

uint64_t sub_100082998()
{
  sub_100082868();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugSettingCellRegistrations()
{
  result = qword_100945730;
  if (!qword_100945730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082A44()
{
  sub_100082AF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100082AF4()
{
  if (!qword_100945740)
  {
    sub_10000CE78(&unk_100945748);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100945740);
    }
  }
}

uint64_t sub_100082B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100945918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082BC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100082C30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100082C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100082CB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100082D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100945918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082D78()
{
  v1 = sub_10076E07C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v0 + 424))
  {
    sub_10008300C(v0 + 56, v7);
    sub_10000A570(v0 + 224, v11);
    sub_10000A570(v0 + 304, v13);
    sub_10000A570(v0 + 344, &v14);
    sub_10000A570(v0 + 384, &v15);
    sub_100083068();
  }

  else
  {
    sub_10008325C(v0, v7);
    sub_10000A570(v0 + 224, &v8);
    sub_10000A570(v0 + 264, &v10);
    sub_10000A570(v0 + 344, &v12);
    sub_1000832B8();
  }

  sub_10076E08C();
  swift_getKeyPath();
  sub_100083158(v0 + 160, v7);
  sub_10000A570(v0 + 224, &v9);
  sub_10000A570(v0 + 344, v11);
  sub_10000A570(v0 + 384, v13);
  sub_1000831B4();

  sub_10076E06C();

  sub_100083208(v7);
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_100083068()
{
  result = qword_100945948;
  if (!qword_100945948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945948);
  }

  return result;
}

uint64_t sub_1000830BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007706FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000830EC(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

unint64_t sub_1000831B4()
{
  result = qword_100945950;
  if (!qword_100945950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945950);
  }

  return result;
}

unint64_t sub_1000832B8()
{
  result = qword_100945958;
  if (!qword_100945958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945958);
  }

  return result;
}

uint64_t sub_100083318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 425))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100083360(uint64_t result, int a2, int a3)
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
    *(result + 424) = 0;
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
      *(result + 425) = 1;
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

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100083420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10008345C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000834A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100083538()
{
  v0 = sub_10076E07C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100082D78();
  sub_10076E0FC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_10008365C()
{
  v0 = sub_10076E07C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100082D78();
  sub_10076E0EC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100083770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000838C8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1000837C8()
{
  result = qword_100952E10;
  if (!qword_100952E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952E10);
  }

  return result;
}

unint64_t sub_100083820()
{
  result = qword_100945960;
  if (!qword_100945960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945960);
  }

  return result;
}

unint64_t sub_1000838C8()
{
  result = qword_100945968;
  if (!qword_100945968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945968);
  }

  return result;
}

uint64_t sub_10008392C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076A89C();
  sub_10000DB18(v4, qword_10099CBE8);
  sub_10000A61C(v4, qword_10099CBE8);
  if (qword_100940F48 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1BD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = sub_10076D9AC();
  v10[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  return sub_10076A88C();
}

id sub_100083C50()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10000A5D4(&qword_1009459B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000843B0(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &qword_1009459C0);
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100761FEC();
    sub_100761FDC();
    v11 = sub_10076082C();
    v12 = sub_100107BF4(v11, sub_1000368B8);

    v13 = sub_10076081C();
    sub_10050C274(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100083EE4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076A89C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076A8BC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v8);
  if (qword_10093F5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v2, qword_10099CBE8);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyLabel];
  v16[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v12;
  v13 = v12;
  sub_10076A8AC();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_100084420();
  sub_10076E0EC();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell()
{
  result = qword_1009459A0;
  if (!qword_1009459A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100084270()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_10008434C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10008434C()
{
  if (!qword_1009459B0)
  {
    sub_10000CE78(&qword_1009459B8);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009459B0);
    }
  }
}

uint64_t sub_1000843B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009459C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084420()
{
  result = qword_1009459C8;
  if (!qword_1009459C8)
  {
    sub_10076A8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009459C8);
  }

  return result;
}

char *sub_100084478()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_10076771C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076F9AC();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_100940F48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_1009A1BD0);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyLabel] = sub_10050BDFC(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_10076F95C();
  sub_10000CFBC(v36, &unk_1009434C0);
  sub_10000CFBC(v37, &unk_1009434C0);
  sub_100770B9C();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_10076262C();

  v27 = *&v19[v22];
  sub_1000325F0();
  v28 = v27;
  v29 = sub_100770D1C();
  v30 = *&v28[qword_10095B640];
  *&v28[qword_10095B640] = v29;
  v31 = v29;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}