Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SymbolButton(0);
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v5 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v0 + v5, v3, type metadata accessor for SymbolButton.Configuration);
  sub_100BEF154(v3);
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

uint64_t SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  CGRect.center.getter();
  v13 = v12 - v10 * 0.5;
  CGRect.center.getter();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_100BED030(v4);
}

id sub_100BED030(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_10010FC20(&qword_1011B6D30);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &aBlock - v6;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v9 = [v2 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 6)
    {
      v11 = objc_opt_self();
      if ([v11 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v12 = swift_allocObject();
          *(v12 + 16) = v2;
          v29 = sub_100BF8F5C;
          v30 = v12;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_10002BC98;
          v28 = &unk_1010E8960;
          v13 = _Block_copy(&aBlock);
          v14 = v2;

          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          v29 = sub_100BF8F84;
          v30 = v15;
          aBlock = _NSConcreteStackBlock;
          v26 = 1107296256;
          v27 = sub_1005C3688;
          v28 = &unk_1010E89B0;
          v16 = _Block_copy(&aBlock);
          v17 = v14;

          [v11 animateWithDuration:0x20000 delay:v13 options:v16 animations:0.1 completion:0.0];
          _Block_release(v16);
          _Block_release(v13);
        }

        else
        {
          sub_100009F78(0, &qword_1011B7C10);
          sub_100009F78(0, &qword_1011B7C38);
          v18 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v19 = swift_allocObject();
          *(v19 + 16) = v2;
          v20 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v18, 0, sub_100BF8F3C, v19, 0, 0, 0.0);
        }
      }
    }

    v21 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = [objc_opt_self() areAnimationsEnabled];
    if (v22)
    {
      v23 = 0x3FD0000000000000;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 3075;
    }

    else
    {
      v24 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, v23, 0, v24, v22 ^ 1);
    return sub_1000095E8(v7, &qword_1011B6D30);
  }

  return result;
}

id sub_100BED3DC(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_100BED43C(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_100009F78(0, &qword_1011B7C10);
    sub_100009F78(0, &qword_1011B7C38);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_100BF94A4, v3, 0, 0, 0.0);
  }
}

id sub_100BED58C(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = a3(0);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_100BED5E0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_100BED71C(char a1, SEL *a2, SEL *a3)
{
  v7 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SymbolButton(0);
  v18.receiver = v3;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, *a2);
  v17.receiver = v3;
  v17.super_class = v10;
  objc_msgSendSuper2(&v17, *a3, a1 & 1);
  result = [v3 *a2];
  if (v11 != result)
  {
    v13 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = [objc_opt_self() areAnimationsEnabled];
    if (v14)
    {
      v15 = 0x3FD0000000000000;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = 3075;
    }

    else
    {
      v16 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v9, v15, 0, v16, v14 ^ 1);
    return sub_1000095E8(v9, &qword_1011B6D30);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100BF71E0;
    *(v6 + 24) = v5;
    v10[4] = sub_1001D3174;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100029B9C;
    v10[3] = &unk_1010E8100;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100BEDA54(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_100BEDADC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_100BEDC00()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_100BF7028(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_100BF16F8(v18);
    sub_100BCF5C0(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_100BEDD78()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_100BF7098(v15, v14);
    v9 = sub_100BF193C(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100BEDE80(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_100BEE064()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{sub_100058728(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_100BEE248()
{
  result = [objc_opt_self() defaultMetrics];
  qword_1011B76B0 = result;
  return result;
}

uint64_t sub_100BEE284@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v6 - 8);
  v75 = &v74 - v7;
  v8 = type metadata accessor for SymbolButton.Metrics(0);
  v9 = v8[5];
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(*(v10 - 8) + 56);
  v81 = v9;
  v11(&a3[v9], 1, 1, v10);
  v12 = &a3[v8[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v76 = v12;
  v12[16] = 1;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = (a1 + v13[16]);
  v77 = *v14;
  v80 = a2;
  if (v77 == 1)
  {
    v15 = [a2 preferredContentSizeCategory];
    v16 = *(v14 + 1);
    if (v16)
    {
      v17 = v16;
      v18 = static UIContentSizeCategory.>= infix(_:_:)();
      if (v18)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      if (v18)
      {
        v15 = v17;
      }
    }

    v20 = *(v14 + 2);
    if (v20)
    {
      v21 = v20;
      if (static UIContentSizeCategory.< infix(_:_:)())
      {

        goto LABEL_15;
      }
    }

    v21 = v15;
  }

  else
  {
    v21 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v22 = objc_opt_self();
  v79 = v21;
  v23 = [v22 traitCollectionWithPreferredContentSizeCategory:v21];
  *a3 = v23;
  v24 = objc_opt_self();
  v25 = *(a1 + 136);
  v74 = v23;
  v26 = v23;
  v27 = [v24 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:v26];
  v28 = objc_opt_self();
  v78 = v27;
  [v27 pointSize];
  *&a3[v8[6]] = [v28 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v29 = [v24 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v26];
    [v29 pointSize];
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v30];
  }

  else
  {
    v31 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v8[7]] = v31;
  *&a3[v8[8]] = *(a1 + v13[12]);
  v32 = *(a1 + 80);
  v33 = v80;
  if (v32 == 255)
  {
    *&a3[v8[9]] = UIOffsetZero;
    if (v77)
    {
      goto LABEL_23;
    }

LABEL_29:

    v66 = (a1 + v13[15]);
    v67 = &a3[v8[12]];
    v68 = v66[1];
    *v67 = *v66;
    *(v67 + 1) = v68;
    *&a3[v8[10]] = *(a1 + v13[13]);
    v69 = a1 + v13[14];
    LOBYTE(v67) = *(v69 + 16);
    v70 = *v69;
    v71 = v76;
    *v76 = v70;
    *(v71 + 16) = v67;
    v72 = v13[9];
    v73 = v81;
    sub_1000095E8(&a3[v81], &qword_1011B7710);
    sub_1000089F8(a1 + v72, &a3[v73], &qword_1011B7710);
    return sub_100BF7180(a1, type metadata accessor for SymbolButton.Configuration);
  }

  v34 = *(a1 + 72);
  if ((v32 & 1) == 0)
  {
    [v80 displayScale];
    static UIOffset./ infix(_:_:)();
    v63 = &a3[v8[9]];
    *v63 = v64;
    *(v63 + 1) = v65;
    if (v77)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v35 = &a3[v8[9]];
  *v35 = *(a1 + 64);
  *(v35 + 1) = v34;
  if (!v77)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_1011B07C0 != -1)
  {
    swift_once();
  }

  v36 = qword_1011B76B0;
  v37 = (a1 + v13[15]);
  v38 = v37[1];
  v39 = v37[2];
  v40 = v37[3];
  [qword_1011B76B0 scaledValueForValue:v26 compatibleWithTraitCollection:*v37];
  v42 = v41;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v38];
  v44 = v43;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v39];
  v46 = v45;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v40];
  v47 = &a3[v8[12]];
  *v47 = v42;
  *(v47 + 1) = v44;
  *(v47 + 2) = v46;
  *(v47 + 3) = v48;
  v49 = (a1 + v13[13]);
  v50 = v49[1];
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v49];
  v52 = v51;
  [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v50];
  v53 = &a3[v8[10]];
  *v53 = v52;
  *(v53 + 1) = v54;
  v55 = a1 + v13[14];
  if ((*(v55 + 16) & 1) == 0)
  {
    v56 = *(v55 + 8);
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:*v55];
    v58 = v57;
    [v36 scaledValueForValue:v26 compatibleWithTraitCollection:v56];
    v59 = v76;
    *v76 = v58;
    *(v59 + 1) = v60;
    *(v59 + 16) = 0;
  }

  v61 = v75;
  sub_100BEE8B8(a1 + v13[9], v74, v75);

  sub_100BF7180(a1, type metadata accessor for SymbolButton.Configuration);
  return sub_10006B010(v61, &a3[v81], &qword_1011B7710);
}

uint64_t sub_100BEE8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v29 = a3;
  v27 = type metadata accessor for UIView.Corner.Radius();
  v4 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for UIView.Corner();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1000089F8(a1, v12, &qword_1011B7710);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_1011B7710);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    UIView.Corner.radius.getter();
    v17 = v27;
    v18 = (*(v4 + 88))(v9, v27);
    if (v18 == enum case for UIView.Corner.Radius.value(_:))
    {
      v19 = v18;
      (*(v4 + 96))(v9, v17);
      v20 = *v9;
      v21 = v9[8];
      v22 = v29;
      (*(v14 + 16))(v29, v16, v13);
      [v25[1] scaledValueForValue:v26 compatibleWithTraitCollection:v20];
      *v7 = v23;
      v7[8] = v21;
      (*(v4 + 104))(v7, v19, v17);
      UIView.Corner.radius.setter();
      (*(v14 + 8))(v16, v13);
      return (*(v14 + 56))(v22, 0, 1, v13);
    }

    (*(v14 + 8))(v16, v13);
    (*(v4 + 8))(v9, v17);
  }

  return sub_1000089F8(v28, v29, &qword_1011B7710);
}

uint64_t sub_100BEEC4C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B7C18);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &qword_1011B7C18);
  v13 = type metadata accessor for SymbolButton.Metrics(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100BF8FF4(v11, a1, type metadata accessor for SymbolButton.Metrics);
  }

  sub_1000095E8(v11, &qword_1011B7C18);
  v15 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v1 + v15, v5, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v5, [v1 traitCollection], a1);
  sub_100BF8F8C(a1, v9, type metadata accessor for SymbolButton.Metrics);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10006B010(v9, v1 + v12, &qword_1011B7C18);
  return swift_endAccess();
}

uint64_t sub_100BEEEF4(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011B7C18);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  sub_100BEEC4C(&v16 - v11);
  sub_100BF8F8C(a1, v5, type metadata accessor for SymbolButton.Metrics);
  (*(v7 + 56))(v5, 0, 1, v6);
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_10006B010(v5, v1 + v13, &qword_1011B7C18);
  swift_endAccess();
  sub_100BEEC4C(v10);
  v14 = sub_100BF4F14(v10, v12);
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
  if ((v14 & 1) == 0)
  {
    sub_100BEEC4C(v10);
    sub_100BEFF5C();
    sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_100BF7180(a1, type metadata accessor for SymbolButton.Metrics);
  return sub_100BF7180(v12, type metadata accessor for SymbolButton.Metrics);
}

id sub_100BEF154(uint64_t a1)
{
  v3 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  v5 = __chkstk_darwin(v112);
  v110 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v102 - v7;
  if (qword_1011B04C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_10121B578);
  sub_100BF8F8C(a1, v8, type metadata accessor for SymbolButton.Configuration);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v113 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v118 = v15;
    *v14 = 136446466;
    v16 = &v10[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v19 = v17;
    }

    else
    {
      v20 = v10;
      v109 = v15;
      v21 = v20;
      v22 = [v20 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v23;
    }

    v24 = sub_100010744(v18, v19, &v118);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2082;
    v25 = SymbolButton.Configuration.description.getter();
    v27 = v26;
    sub_100BF7180(v8, type metadata accessor for SymbolButton.Configuration);
    v28 = sub_100010744(v25, v27, &v118);

    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Applying configuration=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100BF7180(v8, type metadata accessor for SymbolButton.Configuration);
  }

  v29 = v113;
  v30 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v31 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v31;
  v126[2] = *(a1 + 264);
  sub_100BF0E28(v126);
  v32 = [v30 contentView];
  v33 = *(a1 + 280);
  v34 = *(a1 + 288);
  v35 = *(a1 + 296);
  v36 = v35;
  UIView.border.setter(v33, v34, v35);

  v109 = *&v29[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v37 = *(a1 + 200);
  v38 = *(a1 + 208);
  if (v38 == 1)
  {
    if (qword_1011B07B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_10121BAF8;
    v41 = qword_10121BB00;
    v42 = qword_10121BB08;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 200);
    v42 = *(a1 + 224);
    v43 = *(a1 + 208);
    v40 = v43;
    v41 = *(a1 + 216);
  }

  sub_100BF7108(v37, v38);
  sub_100BF12A4(v40, v39, v41, v42);

  v44 = v113;
  v45 = sub_100BEDC00();
  v46 = *(a1 + 80);
  v122 = *(a1 + 64);
  v123 = v46;
  v124 = *(a1 + 96);
  v125 = *(a1 + 112);
  v47 = *(a1 + 16);
  v118 = *a1;
  v119 = v47;
  v48 = *(a1 + 48);
  v120 = *(a1 + 32);
  v121 = v48;
  sub_100BF16F8(&v118);

  v49 = sub_100BEDD78();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_100BF1AC4(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = String._bridgeToObjectiveC()();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  v57 = &selRef_objectAtIndexedSubscript_;
  v109 = v52;
  if (v56 == 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_100BEDE80(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*&v67[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_100BF2078();
      sub_100B10F40(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_100BEDE80(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      v57 = &selRef_objectAtIndexedSubscript_;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_100BF2078();
      sub_100B10F40(v108, v107, v56);
    }

    else
    {
      sub_100B10F40(v108, v107, v56);
      v57 = &selRef_objectAtIndexedSubscript_;
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 16);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 32);
  v116 = *(v89 + 48);
  sub_100BEFD58(v115);
  [v44 v57[172]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_100BEEC4C(v111);
  sub_100BF7180(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_100BF8F8C(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v93, v91, v92);
  sub_100BEEEF4(v92);
  sub_100BEEC4C(v92);
  sub_100BF0094(v92);
  sub_100BF7180(v92, type metadata accessor for SymbolButton.Metrics);
  sub_100BEFBCC();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = String._bridgeToObjectiveC()();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = String._bridgeToObjectiveC()();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = String._bridgeToObjectiveC()();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_100BEFBCC()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = String._bridgeToObjectiveC()();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:0];
}

void **sub_100BEFD58(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_100009F78(0, &qword_1011B7C10);
    v9 = v5;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_100BEE064();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

uint64_t sub_100BEFF5C()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100BEDC00();
  sub_100BEEC4C(v3);
  v5 = *&v3[*(v1 + 36)];
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Metrics);
  [v4 setPreferredSymbolConfiguration:v5];

  v6 = sub_100BEDD78();
  sub_100BEEC4C(v3);
  v7 = *&v3[*(v1 + 32)];
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Metrics);
  [v6 setFont:v7];

  sub_100BEEC4C(v3);
  sub_100BF0094(v3);
  return sub_100BF7180(v3, type metadata accessor for SymbolButton.Metrics);
}

uint64_t sub_100BF0094(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011B7710);
  v4 = __chkstk_darwin(v3 - 8);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v12 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_1000089F8(a1 + v12, v10, &qword_1011B7710);
  UIView.corner.setter();
  v44 = v1;
  sub_1000089F8(a1 + v12, v10, &qword_1011B7710);
  UIView.corner.setter();
  v13 = [v11 contentView];
  v14 = [v13 clipsToBounds];

  if (v14)
  {
    sub_1000089F8(a1 + v12, v8, &qword_1011B7710);
    v15 = type metadata accessor for UIView.Corner();
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_1000095E8(v8, &qword_1011B7710);
    if (v16 != 1)
    {
      v17 = [v11 contentView];
      [v17 setClipsToBounds:0];
    }
  }

  v18 = v44;
  if (*(v44 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v43 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v11 _setAllowsGroupFiltering:1];
    v19 = [v11 contentView];
    v20 = [v19 subviews];

    sub_100009F78(0, &qword_1011B7C10);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = v18 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v24 = 0;
      v25 = v21 & 0xC000000000000001;
      v26 = v21 & 0xFFFFFFFFFFFFFF8;
      v18 = &selRef_compoundStringWithElements_;
      v45 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v26 + 16))
          {
            goto LABEL_22;
          }

          v27 = *(v21 + 8 * v24 + 32);
        }

        v28 = v27;
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v28 v18[491]] & 1) == 0)
        {
          v30 = type metadata accessor for SymbolButton.Configuration(0);
          v31 = v23[*(v30 + 76)];
          if (v31 == 2)
          {
            v32 = &v23[*(v30 + 36)];
            v33 = v25;
            v34 = v21;
            v35 = i;
            v36 = v23;
            v37 = v18;
            v38 = v46;
            sub_1000089F8(v32, v46, &qword_1011B7710);
            v39 = type metadata accessor for UIView.Corner();
            LOBYTE(v31) = (*(*(v39 - 8) + 48))(v38, 1, v39) != 1;
            v40 = v38;
            v18 = v37;
            v23 = v36;
            i = v35;
            v21 = v34;
            v25 = v33;
            v26 = v45;
            sub_1000095E8(v40, &qword_1011B7710);
          }

          [v28 setClipsToBounds:v31 & 1];
        }

        ++v24;
        if (v29 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v44 + v43) = 0;
  }

  return sub_100BF0510();
}

uint64_t sub_100BF0510()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = __chkstk_darwin(v6);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_10010FC20(&qword_1011B7C40);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v14 = [v0 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    *(&v40 + 1) = type metadata accessor for UIHoverHighlightEffect();
    v41 = &protocol witness table for UIHoverHighlightEffect;
    sub_10001C8B8(&v39);
    static UIHoverEffect<>.highlight.getter();
  }

  else
  {
    *(&v40 + 1) = type metadata accessor for UIHoverLiftEffect();
    v41 = &protocol witness table for UIHoverLiftEffect;
    sub_10001C8B8(&v39);
    static UIHoverEffect<>.lift.getter();
  }

  sub_1000095E8(&v42, &qword_1011B7C48);
  v42 = v39;
  v43 = v40;
  v44 = v41;
  sub_1000089F8(&v42, &v37, &qword_1011B7C48);
  if (v38)
  {
    v29 = v3;
    v30 = v2;
    v35 = v13;
    sub_100059A8C(&v37, &v39);
    v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v32 = v41;
    v16 = sub_10000954C(&v39, *(&v40 + 1));
    v31 = &v29;
    __chkstk_darwin(v16);
    (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(&v1[v19], v10, type metadata accessor for SymbolButton.Configuration);
    v34 = v6;
    v20 = *(v6 + 36);
    v21 = type metadata accessor for UIView.Corner();
    v22 = *(*(v21 - 8) + 48);
    if (v22(&v10[v20], 1, v21))
    {
      sub_100BF7180(v10, type metadata accessor for SymbolButton.Configuration);
      static UIPointerShape.defaultCornerRadius.getter();
    }

    else
    {
      UIView.Corner.radius.getter();
      sub_100BF7180(v10, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      UIView.Corner.Radius.value(in:)();
      (*(v29 + 8))(v5, v30);
    }

    v24 = v36;
    sub_100BF8F8C(&v1[v19], v36, type metadata accessor for SymbolButton.Configuration);
    if (v22((v24 + *(v34 + 36)), 1, v21))
    {
      v25 = 0;
    }

    else
    {
      v25 = UIView.Corner.mask.getter();
    }

    v26 = v35;
    sub_100009F78(0, &qword_1011B7C50);
    sub_100BF7180(v24, type metadata accessor for SymbolButton.Configuration);
    UIRectCorner.init(_:)(v25);
    static UIShape.rect(cornerRadius:cornerCurve:maskedCorners:)();
    v27 = type metadata accessor for UIShape();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = UIHoverStyle.init<A>(effect:shape:)();
    [v33 setHoverStyle:v28];

    sub_1000095E8(&v42, &qword_1011B7C48);
    return sub_10000959C(&v39);
  }

  else
  {
    sub_1000095E8(&v37, &qword_1011B7C48);
    [v1 setHoverStyle:0];
    return sub_1000095E8(&v42, &qword_1011B7C48);
  }
}

void sub_100BF0E28(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_100009F78(0, &qword_1011B7C58);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_100009F78(0, &qword_1011B7C58);
      v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_100009F78(0, &qword_1011B7C58);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_10010FC20(&qword_1011B5630);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6C0;
  *(v9 + 32) = v6;
  sub_100009F78(0, &qword_1011B7C58);
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_10010FC20(&qword_1011B5630);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6C0;
  *(v16 + 32) = v4;
  sub_100009F78(0, &qword_1011B7C58);
  v17 = v4;
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_100BF11F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100BF12A4(void *a1, double a2, uint64_t a3, NSString a4)
{
  v8 = [v4 layer];
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  [v8 setCompositingFilter:a4];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a2;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a2)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_100BF1464();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_100009F78(0, &qword_1011B4940);
  v12 = a1;
  v16 = v10;
  v13 = static NSObject.== infix(_:_:)();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_100BF1464()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_100BF92C0;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003640C;
  v11[3] = &unk_1010E8B68;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_100BF15C4(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_100BF16F8(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = String._bridgeToObjectiveC()();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_100BF193C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_100BF1AC4(a1);
  sub_100BCF614(a1);

  return v4;
}

id sub_100BF1AC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_100BF2078()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  UIEdgeInsets.init(edges:inset:)();
  CGSize.inset(by:)();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  static UIView.Corner.rounded.getter();
  v15 = type metadata accessor for UIView.Corner();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  UIView.corner.setter();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v29 = v1;
  sub_100BF8F8C(v1 + v11, v8, type metadata accessor for SymbolButton.Configuration);
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v12 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v13 = qword_10121BAD8;
  v14 = unk_10121BAE0;
  v15 = byte_10121BAE8;
  sub_100BF8F8C(v8, v5, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v2 + 64);
  v28 = v2;
  v17 = &v5[v16];
  v18 = *&v5[v16 + 8];
  v19 = v13;
  v20 = v14;

  *v17 = v12;
  *(v17 + 1) = v13;
  *(v17 + 2) = v14;
  v17[24] = v15;
  v21 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v13) = sub_10048C7DC(1, v21);

  if (v13)
  {
    v22 = [objc_opt_self() labelColor];
    sub_100BF7180(v8, type metadata accessor for SymbolButton.Configuration);
    v23 = *(v28 + 72);

    *&v5[v23] = v22;
    sub_100282F24(*(v5 + 25), *(v5 + 26));
    *(v5 + 200) = xmmword_100EBCEE0;
    *(v5 + 27) = 0;
    *(v5 + 28) = 0;
  }

  else
  {
    sub_100BF7180(v8, type metadata accessor for SymbolButton.Configuration);
  }

  sub_100BF8FF4(v5, v10, type metadata accessor for SymbolButton.Configuration);
  v24 = v29;
  SymbolButton.setConfiguration(_:animation:updates:)(v10, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Configuration);
  v25 = UITraitCollection.supportedMaterials.getter();
  v26 = sub_10048C7DC(1, v25);

  if (v26)
  {
    [v24 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v3 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v4 = qword_10121BAD8;
  v5 = unk_10121BAE0;
  v6 = byte_10121BAE8;
  sub_100BF8F8C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  v7 = type metadata accessor for SymbolButton.Configuration(0);
  v8 = a1 + *(v7 + 64);
  v9 = *(v8 + 8);
  v10 = v4;
  v11 = v5;

  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v12 = UITraitCollection.supportedMaterials.getter();
  v13 = sub_10048C7DC(1, v12);

  if (v13)
  {
    v15 = [objc_opt_self() labelColor];
    v16 = *(v7 + 72);

    *(a1 + v16) = v15;
    sub_100282F24(*(a1 + 200), *(a1 + 208));
    result = 0.0;
    *(a1 + 200) = xmmword_100EBCEE0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_100BF2710()
{
  v0 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  sub_100006080(v3, static SymbolButton.Configuration.contextualAction);
  v4 = sub_1000060E4(v3, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v4);
  v24[0] = 0;
  v24[1] = 0;
  *&v23[7] = 0uLL;
  v25[0] = UIFontTextStyleSubheadline;
  v5 = UIFontTextStyleSubheadline;
  sub_1000095E8(v24, &qword_1011B7770);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 == 6;
  if (v7 == 6)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = &UIFontTextStyleTitle3;
  if (!v8)
  {
    v10 = &UIFontTextStyleCallout;
  }

  v11 = *v10;
  sub_100BF7180(v25, _s3__C9TextStyleVMa_0);
  v12 = *v4;
  v13 = *(v4 + 16);
  v14 = *(v4 + 48);
  v21[2] = *(v4 + 32);
  v21[3] = v14;
  v21[0] = v12;
  v21[1] = v13;
  v15 = *(v4 + 64);
  v16 = *(v4 + 80);
  v17 = *(v4 + 96);
  v22 = *(v4 + 112);
  v21[5] = v16;
  v21[6] = v17;
  v21[4] = v15;
  *v4 = xmmword_100EFDCC0;
  *(v4 + 16) = 0;
  *(v4 + 24) = v11;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = v9;
  *(v4 + 56) = 2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = -1;
  v18 = *v23;
  *(v4 + 96) = *&v23[15];
  *(v4 + 104) = 0x3FF0000000000000;
  *(v4 + 81) = v18;
  *(v4 + 112) = 0;
  sub_100BCF5C0(v21);
  static UIView.Corner.rounded.getter();
  v19 = type metadata accessor for UIView.Corner();
  (*(*(v19 - 8) + 56))(v2, 0, 1, v19);
  sub_10006B010(v2, v4 + *(v3 + 36), &qword_1011B7710);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v4 + *(v3 + 52)) = result;
  return result;
}

uint64_t sub_100BF29B8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_1000060E4(v4, a3);
}

uint64_t sub_100BF2A3C()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  sub_100006080(v6, static SymbolButton.Configuration.barButtonContextualAction);
  v22 = sub_1000060E4(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_1011B07C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000060E4(v0, static SymbolButton.Configuration.contextualAction);
  sub_100BF8F8C(v7, v5, type metadata accessor for SymbolButton.Configuration);
  v8 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v9 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v10 = qword_10121BAD8;
  v11 = unk_10121BAE0;
  v12 = byte_10121BAE8;
  sub_100BF8F8C(v5, v2, type metadata accessor for SymbolButton.Configuration);
  v13 = &v2[*(v0 + 64)];
  v14 = *(v13 + 1);
  v15 = v10;
  v16 = v11;

  *v13 = v9;
  *(v13 + 1) = v10;
  *(v13 + 2) = v11;
  v13[24] = v12;
  v17 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v10) = sub_10048C7DC(1, v17);

  if (v10)
  {
    v18 = [objc_opt_self() labelColor];
    v19 = *(v0 + 72);

    *&v2[v19] = v18;
    sub_100282F24(*(v2 + 25), *(v2 + 26));
    *(v2 + 200) = xmmword_100EBCEE0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
  }

  sub_100BF8FF4(v2, v22, type metadata accessor for SymbolButton.Configuration);

  return sub_100BF7180(v5, type metadata accessor for SymbolButton.Configuration);
}

uint64_t sub_100BF2D2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = sub_1000060E4(v5, a2);
  return sub_100BF8F8C(v6, a3, type metadata accessor for SymbolButton.Configuration);
}

void *SymbolButton.Configuration.adding(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v14 = *(a1 + 24);
  v12 = a1[5];
  v13 = a1[4];
  sub_100BF8F8C(v2, a2, type metadata accessor for SymbolButton.Configuration);
  v8 = a2[29];
  v10 = a2[31];
  v11 = a2[30];
  v19 = v6;
  v17 = v7;
  v18 = v5;
  v16 = *(a1 + 2);
  sub_1000089F8(&v19, v15, &qword_1011B7768);
  sub_1000089F8(&v18, v15, &qword_1011B7768);
  sub_1000089F8(&v17, v15, &qword_1011B7768);
  sub_1000089F8(&v16, v15, &qword_1011B7770);
  result = sub_1002ACCD0(v8, v11, v10);
  a2[29] = v6;
  a2[30] = v5;
  a2[31] = v7;
  a2[32] = v14;
  a2[33] = v13;
  a2[34] = v12;
  return result;
}

double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_100BF8F8C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1002ACCD0(*(a1 + 232), *(a1 + 240), *(a1 + 248));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

uint64_t SymbolButton.Configuration.adding(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100BF8F8C(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5[25];
  v12 = a5[26];
  sub_100BF7108(a1, a2);
  result = sub_100282F24(v11, v12);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
  return result;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_100BF8F8C(v1, a1, type metadata accessor for SymbolButton.Configuration);
  sub_100282F24(*(a1 + 200), *(a1 + 208));
  result = 0.0;
  *(a1 + 200) = xmmword_100EBCEE0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100BF8F8C(v5, a5, type metadata accessor for SymbolButton.Configuration);
  v11 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v12 = *(v11 + 8);
  v13 = a2;
  v14 = a3;

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

uint64_t SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v50 = a7;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  v52 = a4;
  v53 = a5;
  LODWORD(v56) = a1;
  v11 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v11 - 8);
  v55 = &v47 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v20 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_10121BAD8;
  v22 = unk_10121BAE0;
  v23 = byte_10121BAE8;
  sub_100BF8F8C(v9, v18, type metadata accessor for SymbolButton.Configuration);
  v24 = *(v13 + 64);
  v54 = v13;
  v25 = &v18[v24];
  v26 = *&v18[v24 + 8];
  v27 = v21;
  v28 = v22;

  *v25 = v20;
  *(v25 + 1) = v21;
  *(v25 + 2) = v22;
  v25[24] = v23;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_10048C7DC(1, v29);

  if (v30)
  {
    v31 = [objc_opt_self() labelColor];

    v32 = v54;
    v33 = *(v54 + 72);

    *&v18[v33] = v31;
    sub_100282F24(*(v18 + 25), *(v18 + 26));
    *(v18 + 200) = xmmword_100EBCEE0;
    *(v18 + 27) = 0;
    *(v18 + 28) = 0;
  }

  else
  {

    v32 = v54;
  }

  sub_100BF8FF4(v18, a8, type metadata accessor for SymbolButton.Configuration);
  v34 = v55;
  static UIView.Corner.rounded.getter();
  v35 = type metadata accessor for UIView.Corner();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_10006B010(v34, a8 + *(v32 + 36), &qword_1011B7710);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v56)
  {
    v56 = [objc_opt_self() effectWithStyle:16];
    sub_100BF8F8C(a8, v15, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v15 + 29);
    v37 = *(v15 + 30);
    v38 = *(v15 + 31);
    v39 = v50;

    sub_1002ACCD0(v36, v37, v38);
    *(v15 + 29) = v56;
    *(v15 + 30) = 0;
    *(v15 + 31) = 0;
    *(v15 + 32) = 2;
    *(v15 + 33) = v48;
    *(v15 + 34) = v39;
    sub_100BF7180(a8, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v15, a8, type metadata accessor for SymbolButton.Configuration);
    sub_100282F24(*(a8 + 200), *(a8 + 208));
    *(a8 + 200) = xmmword_100EBCEE0;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_100BF8F8C(a8, v15, type metadata accessor for SymbolButton.Configuration);
    sub_1002ACCD0(*(v15 + 29), *(v15 + 30), *(v15 + 31));
    *(v15 + 29) = 1;
    *(v15 + 15) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 34) = 0;
    sub_100BF7180(a8, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v15, a8, type metadata accessor for SymbolButton.Configuration);
    v40 = *(a8 + 200);
    v41 = *(a8 + 208);
    v42 = v49;
    v44 = v51;
    v43 = v52;
    v45 = v53;
    sub_100BF7108(v49, v51);
    sub_100282F24(v40, v41);
    *(a8 + 200) = v42;
    *(a8 + 208) = v44;
    *(a8 + 216) = v43;
    *(a8 + 224) = v45;
  }

  return sub_100BF7180(v15, type metadata accessor for SymbolButton.Configuration);
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v58 = a1;
  v59 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a2;
  v12 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v12 - 8);
  v57 = &v49 - v13;
  v14 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v21 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v23 = qword_10121BAD8;
  v22 = unk_10121BAE0;
  v24 = byte_10121BAE8;
  sub_100BF8F8C(v10, v19, type metadata accessor for SymbolButton.Configuration);
  v25 = &v19[*(v14 + 64)];
  v56 = v14;
  v26 = *(v25 + 1);
  v27 = v23;
  v28 = v22;

  *v25 = v21;
  *(v25 + 1) = v23;
  *(v25 + 2) = v22;
  v25[24] = v24;
  v29 = UITraitCollection.supportedMaterials.getter();
  v30 = sub_10048C7DC(1, v29);

  v31 = &unk_100EBC000;
  if (v30)
  {
    v32 = [objc_opt_self() labelColor];

    v33 = v56;
    v34 = *(v56 + 72);

    *&v19[v34] = v32;
    sub_100282F24(*(v19 + 25), *(v19 + 26));
    *(v19 + 200) = xmmword_100EBCEE0;
    *(v19 + 27) = 0;
    *(v19 + 28) = 0;
  }

  else
  {

    v33 = v56;
  }

  sub_100BF8FF4(v19, a9, type metadata accessor for SymbolButton.Configuration);
  v35 = v57;
  static UIView.Corner.rounded.getter();
  v36 = type metadata accessor for UIView.Corner();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_10006B010(v35, a9 + *(v33 + 36), &qword_1011B7710);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v58)
  {
    v37 = [objc_opt_self() effectWithStyle:16];
    sub_100BF8F8C(a9, v16, type metadata accessor for SymbolButton.Configuration);
    v38 = *(v16 + 29);
    v39 = *(v16 + 30);
    v40 = *(v16 + 31);
    v41 = v51;

    sub_1002ACCD0(v38, v39, v40);
    *(v16 + 29) = v37;
    *(v16 + 30) = 0;
    *(v16 + 31) = 0;
    *(v16 + 32) = 2;
    *(v16 + 33) = v50;
    *(v16 + 34) = v41;
    v31 = &unk_100EBC000;
  }

  else
  {
    sub_100BF8F8C(a9, v16, type metadata accessor for SymbolButton.Configuration);
    sub_1002ACCD0(*(v16 + 29), *(v16 + 30), *(v16 + 31));
    *(v16 + 29) = 1;
    *(v16 + 15) = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 34) = 0;
  }

  sub_100BF6E60(v16, a9);
  sub_100BF8F8C(a9, v16, type metadata accessor for SymbolButton.Configuration);
  v42 = *(v16 + 25);
  v43 = *(v16 + 26);
  if (v59)
  {
    sub_100282F24(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = v31[238];
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {
    v44 = v55;

    v45 = v52;
    v46 = v52;
    sub_100282F24(v42, v43);
    v47 = v54;
    *(v16 + 25) = v53;
    *(v16 + 26) = v45;
    *(v16 + 27) = v47;
    *(v16 + 28) = v44;
  }

  return sub_100BF6E60(v16, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1)
{

  v2 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100BF8F8C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = a2;
  return result;
}

id sub_100BF3B38()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_10121BB48 = result;
  qword_10121BB50 = 0;
  qword_10121BB58 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB48;
  v1 = qword_10121BB48;

  return v0;
}

id sub_100BF3C5C()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_10121BB68 = result;
  qword_10121BB70 = 0;
  qword_10121BB78 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB68;
  v1 = qword_10121BB68;

  return v0;
}

id sub_100BF3D30()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_10121BB88 = *&qword_10121BB68;
  qword_10121BB98 = qword_10121BB78;
  v1 = qword_10121BB68;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_1011B07E8 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB88;
  v1 = qword_10121BB88;

  return v0;
}

id sub_100BF3E50()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_10121BBA8 = *&qword_10121BB48;
  qword_10121BBB8 = qword_10121BB58;
  v1 = qword_10121BB48;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_1011B07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BBA8;
  v1 = qword_10121BBA8;

  return v0;
}

id sub_100BF3F70()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_10121BBC8 = 0;
  qword_10121BBD0 = 0;
  static SymbolButton.Material.xr = result;
  byte_10121BBD8 = 2;
  qword_10121BBE0 = 0;
  unk_10121BBE8 = 0;
  return result;
}

uint64_t static SymbolButton.Material.xr.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B07F8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_10121BBC8;
  v3 = qword_10121BBD0;
  v4 = byte_10121BBD8;
  v5 = qword_10121BBE0;
  v6 = unk_10121BBE8;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
}

uint64_t sub_100BF4068()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.capsule);
  sub_1000060E4(v0, static UIView.Corner.capsule);
  return static UIView.Corner.rounded.getter();
}

uint64_t sub_100BF40D8()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.roundedRect);
  sub_1000060E4(v0, static UIView.Corner.roundedRect);
  return static UIView.Corner.value(_:continuous:)();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B6D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;

  sub_100020438(v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_1000095E8(v6, &qword_1011B6D30);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100BF8F8C(a1, v4, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
  v5 = v7[1];

  return v5;
}

id sub_100BF43D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009F78(0, &qword_1011B7C30);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C68);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 64);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    type metadata accessor for UIOffset(0);
    v22 = v21;
    sub_100BF905C(&qword_1011B7C60, type metadata accessor for UIOffset);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 96);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 88) != *(a2 + 88) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104))
  {
    v25 = *(a1 + 112);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_100009F78(0, &qword_1011B4940);
      v27 = v26;
      v28 = v25;
      v29 = static NSObject.== infix(_:_:)();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_100009F78(0, &qword_1011B4940);
    v14 = a4;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a6;
}

uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &unk_1011B7C00);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_100009F78(0, &qword_1011B4940);
          v8 = v7;
          v9 = v6;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 32) != *(a2 + 32) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011B4940);
  v17 = v16;
  v18 = v15;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58);
    v11 = v10;
    v12 = v9;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58);
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_100009F78(0, &qword_1011B4940);
      v10 = a2;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_100BF4F14(void **a1, void **a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_10010FC20(&qword_1011B1188);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v48 = a1;
  v14 = *a1;
  v15 = a2;
  v16 = *a2;
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_24;
    }

    sub_100009F78(0, &unk_1011B7AC0);
    v17 = v16;
    v18 = v14;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v16)
  {
    goto LABEL_24;
  }

  v47 = type metadata accessor for SymbolButton.Metrics(0);
  v20 = *(v47 + 20);
  v21 = *(v11 + 48);
  sub_1000089F8(v48 + v20, v13, &qword_1011B7710);
  v22 = v15 + v20;
  v23 = v15;
  sub_1000089F8(v22, &v13[v21], &qword_1011B7710);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v21], 1, v4) == 1)
    {
      sub_1000095E8(v13, &qword_1011B7710);
      goto LABEL_13;
    }

LABEL_11:
    sub_1000095E8(v13, &qword_1011B1188);
    goto LABEL_24;
  }

  sub_1000089F8(v13, v10, &qword_1011B7710);
  if (v24(&v13[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v21], v4);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  v23 = v15;
  sub_1000095E8(v13, &qword_1011B7710);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_100009F78(0, &unk_1011B7C00);
  v28 = v47;
  v27 = v48;
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v29 = v28[8];
  v30 = *(v27 + v29);
  v31 = *(v23 + v29);
  v32 = 0;
  if (v30 == v31)
  {
    v33 = v28[9];
    v34 = v27 + v33;
    v35 = *(v27 + v33);
    v36 = (v23 + v33);
    if (v35 == *v36 && *(v34 + 8) == v36[1])
    {
      v32 = 0;
      v37 = v28[10];
      v38 = v27 + v37;
      v39 = *(v27 + v37);
      v40 = (v23 + v37);
      if (v39 == *v40 && *(v38 + 8) == v40[1])
      {
        v41 = v28[11];
        v42 = (v27 + v41);
        v43 = *(v27 + v41 + 16);
        v44 = (v23 + v41);
        v45 = *(v23 + v41 + 16);
        if (v43)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v32 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v27 + v28[12]), *(v23 + v28[12])), vceqq_f64(*(v27 + v28[12] + 16), *(v23 + v28[12] + 16)))));
          return v32 & 1;
        }

        if (v45)
        {
LABEL_24:
          v32 = 0;
          return v32 & 1;
        }

        v32 = 0;
        if (*v42 == *v44 && v42[1] == v44[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v32 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v8 - 8);
  v10 = &v139 - v9;
  v11 = sub_10010FC20(&qword_1011B1188);
  __chkstk_darwin(v11);
  v13 = (&v139 - v12);
  v14 = *(a1 + 80);
  v163[4] = *(a1 + 64);
  v163[5] = v14;
  v163[6] = *(a1 + 96);
  v164 = *(a1 + 112);
  v15 = *(a1 + 16);
  v163[0] = *a1;
  v163[1] = v15;
  v16 = *(a1 + 48);
  v163[2] = *(a1 + 32);
  v163[3] = v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[3];
  v165[2] = a2[2];
  v165[3] = v19;
  v165[0] = v17;
  v165[1] = v18;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v166 = *(a2 + 14);
  v165[5] = v21;
  v165[6] = v22;
  v165[4] = v20;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v163, v165))
  {
    return 0;
  }

  v23 = *(a1 + 136);
  v24 = *(a1 + 168);
  v161[2] = *(a1 + 152);
  v161[3] = v24;
  v25 = *(a1 + 184);
  v161[0] = *(a1 + 120);
  v161[1] = v23;
  v26 = *(a2 + 136);
  v27 = *(a2 + 168);
  v162[2] = *(a2 + 152);
  v162[3] = v27;
  v162[4] = *(a2 + 184);
  v28 = *(a2 + 120);
  v162[1] = v26;
  v161[4] = v25;
  v162[0] = v28;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v161, v162))
  {
    return 0;
  }

  v146 = v10;
  v147 = v11;
  v149 = v5;
  v150 = v13;
  v145 = v7;
  v148 = v4;
  v29 = *(a1 + 200);
  v30 = *(a1 + 208);
  v31 = *(a1 + 224);
  v32 = *(a2 + 25);
  v33 = *(a2 + 26);
  v35 = *(a2 + 27);
  v34 = *(a2 + 28);
  if (v30 == 1)
  {
    if (v33 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_100BF7108(*(a2 + 25), *(a2 + 26));
    sub_100BF7108(v29, v30);
    sub_100282F24(v29, v30);
    sub_100282F24(v32, v33);
    return 0;
  }

  if (v33 == 1)
  {
    goto LABEL_7;
  }

  v36 = *(a2 + 25);
  v37 = *(a1 + 216);
  sub_100BF7108(v36, *(a2 + 26));
  sub_100BF7108(v29, v30);
  v38 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v30, v37, v31, v33, v35, v34, *&v29, *&v36);

  sub_100282F24(v29, v30);
  if (!v38)
  {
    return 0;
  }

LABEL_9:
  v40 = *(a1 + 232);
  v39 = *(a1 + 240);
  v41 = *(a1 + 248);
  v42 = *(a1 + 256);
  v44 = *(a1 + 264);
  v43 = *(a1 + 272);
  v46 = *(a2 + 29);
  v45 = *(a2 + 30);
  v48 = *(a2 + 31);
  v47 = *(a2 + 32);
  v49 = *(a2 + 33);
  v50 = *(a2 + 34);
  if (v40 == 1)
  {
    if (v46 == 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v51 = *(a2 + 29);
    v52 = *(a1 + 240);
    v53 = *(a2 + 30);
    v143 = *(a2 + 32);
    v144 = v45;
    v54 = v41;
    v55 = v48;
    v142 = v49;
    sub_100BF9260(v51, v53, v48);
    sub_100BF9260(v40, v52, v54);
    sub_1002ACCD0(v40, v52, v54);
    sub_1002ACCD0(v46, v144, v55);
    return 0;
  }

  if (v46 == 1)
  {
    goto LABEL_13;
  }

  v157[0] = *(a2 + 29);
  v157[1] = v45;
  v157[2] = v48;
  v158 = v47;
  v159 = v49;
  v160 = v50;
  v153[0] = v40;
  v153[1] = v39;
  v153[2] = v41;
  v154 = v42;
  v155 = v44;
  v156 = v43;
  v140 = v48;
  v141 = v39;
  v144 = v45;
  v57 = v41;
  sub_100BF9260(v46, v45, v48);
  sub_100BF9260(v40, v141, v57);
  LODWORD(v143) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v157);

  sub_1002ACCD0(v40, v141, v57);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v58 = *(a1 + 296);
  v59 = *(a2 + 37);
  if (v58)
  {
    v60 = v150;
    if (!v59)
    {
      return 0;
    }

    v61 = *(a1 + 280);
    v62 = *(a1 + 288);
    v63 = *(a2 + 35);
    v64 = *(a2 + 36);
    v65 = v59;
    LOBYTE(v152[0]) = v64 & 1;
    v66 = static UIView.Border.__derived_struct_equals(_:_:)(v61, v62 & 1, v58, v63, v64 & 1);

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = v150;
    if (v59)
    {
      return 0;
    }
  }

  v67 = type metadata accessor for SymbolButton.Configuration(0);
  v68 = *(v67 + 36);
  v69 = *(v147 + 48);
  sub_1000089F8(a1 + v68, v60, &qword_1011B7710);
  sub_1000089F8(a2 + v68, v60 + v69, &qword_1011B7710);
  v70 = v148;
  v71 = *(v149 + 48);
  if (v71(v60, 1, v148) == 1)
  {
    if (v71(v60 + v69, 1, v70) == 1)
    {
      sub_1000095E8(v60, &qword_1011B7710);
      goto LABEL_29;
    }

LABEL_27:
    sub_1000095E8(v60, &qword_1011B1188);
    return 0;
  }

  v72 = v146;
  sub_1000089F8(v60, v146, &qword_1011B7710);
  if (v71(v60 + v69, 1, v70) == 1)
  {
    (*(v149 + 8))(v72, v70);
    goto LABEL_27;
  }

  v150 = v67;
  v73 = v149;
  v74 = v60 + v69;
  v75 = v145;
  (*(v149 + 32))(v145, v74, v70);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = *(v73 + 8);
  v77(v75, v70);
  v77(v72, v70);
  v67 = v150;
  sub_1000095E8(v60, &qword_1011B7710);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v150 = v67;
  v78 = *(v67 + 40);
  v80 = *(a1 + v78);
  v79 = *(a1 + v78 + 8);
  v82 = *(a1 + v78 + 16);
  v81 = *(a1 + v78 + 24);
  v84 = *(a1 + v78 + 32);
  v83 = *(a1 + v78 + 40);
  v85 = *(a1 + v78 + 48);
  v86 = a2 + v78;
  v88 = *v86;
  v87 = *(v86 + 8);
  v90 = *(v86 + 16);
  v89 = *(v86 + 24);
  v92 = *(v86 + 32);
  v91 = *(v86 + 40);
  v93 = *(v86 + 48);
  if (!v80)
  {
    if (!v88)
    {
      v142 = *(v86 + 16);
      v143 = v87;
      v144 = v89;
      v139 = v92;
      v140 = v91;
      v108 = v83;
      v109 = v85;
      sub_100B10F50(0, v79, v82, v81, v84, v83, v85);
      sub_100B10F50(0, v143, v142, v144, v139, v140, v93);
      sub_100B07154(0, v79, v82, v81, v84, v108, v109);
      goto LABEL_36;
    }

LABEL_34:
    v100 = v79;
    v146 = v79;
    v147 = v82;
    v101 = v87;
    v102 = v82;
    v103 = v90;
    v104 = v89;
    v148 = v84;
    v149 = v83;
    v105 = v92;
    v106 = v84;
    v107 = v91;
    v145 = v85;
    sub_100B10F50(v80, v100, v102, v81, v106, v83, v85);
    sub_100B10F50(v88, v101, v103, v104, v105, v107, v93);
    sub_100B07154(v80, v146, v147, v81, v148, v149, v145);
    sub_100B07154(v88, v101, v103, v104, v105, v107, v93);
    return 0;
  }

  if (!v88)
  {
    goto LABEL_34;
  }

  v152[0] = *v86;
  v152[1] = v87;
  v152[2] = v90;
  v152[3] = v89;
  v152[4] = v92;
  v152[5] = v91;
  v152[6] = v93;
  v151[0] = v80;
  v151[1] = v79;
  v151[2] = v82;
  v151[3] = v81;
  v151[4] = v84;
  v151[5] = v83;
  v151[6] = v85;
  v146 = v79;
  v147 = v82;
  v142 = v90;
  v143 = v87;
  v94 = v79;
  v95 = v82;
  v141 = v81;
  v144 = v89;
  v145 = v85;
  v148 = v84;
  v149 = v83;
  v96 = v92;
  v97 = v91;
  sub_100B10F50(v80, v94, v95, v81, v84, v83, v85);
  v99 = v142;
  v98 = v143;
  sub_100B10F50(v88, v143, v142, v144, v96, v97, v93);
  LODWORD(v140) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v151, v152);
  sub_100B07154(v88, v98, v99, v144, v96, v97, v93);
  sub_100B07154(v80, v146, v147, v141, v148, v149, v145);
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v110 = v150;
  v111 = v150[11];
  v112 = (a1 + v111);
  v113 = *(a1 + v111 + 16);
  v114 = (a2 + v111);
  v115 = v114[2];
  if (v113 == 1)
  {
    if (v115 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v115 == 1)
    {
      return 0;
    }

    result = 0;
    v124 = *v112;
    v125 = *v114;
    if (*v112 != *v114)
    {
      return result;
    }

    v126 = v112[1];
    v127 = v114[1];
    if (*&v126 != *&v127)
    {
      return result;
    }

    if (v113)
    {
      if (!v115)
      {
        return 0;
      }

      sub_100009F78(0, &qword_1011B4940);
      sub_100BF7150(v125, v127, v115);
      sub_100BF7150(v124, v126, v113);
      v128 = static NSObject.== infix(_:_:)();
      sub_100B10F40(v124, v126, v113);
      sub_100B10F40(v125, v127, v115);
      v110 = v150;
      if ((v128 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v110 = v150;
      if (v115)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v110[12]) != *(a2 + v110[12]))
  {
    return 0;
  }

  result = 0;
  v116 = v110[13];
  v117 = a1 + v116;
  v118 = *(a1 + v116);
  v119 = (a2 + v116);
  if (v118 == *v119 && *(v117 + 8) == v119[1])
  {
    v120 = v150[14];
    v121 = (a1 + v120);
    v122 = *(a1 + v120 + 16);
    v123 = a2 + v120;
    if (v122)
    {
      if ((*(v123 + 16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (*(v123 + 16))
    {
      return 0;
    }

    result = 0;
    if (*v121 == *v123 && v121[1] == *(v123 + 8))
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v150[15]), *(a2 + v150[15])), vceqq_f64(*(a1 + v150[15] + 16), *(a2 + v150[15] + 16))))))
      {
        v129 = v150[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v129), *(a1 + v129 + 8), *(a1 + v129 + 16), *(a1 + v129 + 24), *(a2 + v129), *(a2 + v129 + 8), *(a2 + v129 + 16), *(a2 + v129 + 24)) & 1) != 0 && *(a1 + v150[17]) == *(a2 + v150[17]))
        {
          v130 = v150[18];
          v131 = *(a1 + v130);
          v132 = *(a2 + v130);
          if (v131)
          {
            if (v132)
            {
              sub_100009F78(0, &qword_1011B4940);
              v133 = v132;
              v134 = v131;
              v135 = static NSObject.== infix(_:_:)();

              if (v135)
              {
LABEL_64:
                v136 = v150[19];
                v137 = *(a1 + v136);
                v138 = *(a2 + v136);
                if (v137 == 2)
                {
                  if (v138 == 2)
                  {
                    return 1;
                  }
                }

                else if (v138 != 2 && ((v138 ^ v137) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v132)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_100BF5F9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_100EFDCA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_100BF5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v5 - 8);
  v58 = &v57 - v6;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v12 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v15 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v15);
  v67.super_class = v15;
  v16 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_100BF0E28(&v68);

  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = *&static SymbolButton.Background.clear;
  v20 = qword_10121BAF8;
  v19 = qword_10121BB00;
  v21 = qword_10121BB08;
  v22 = type metadata accessor for SymbolButton.BackgroundView();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v24 = 0;
  *(v24 + 1) = 0x3FF0000000000000;
  v66.receiver = v23;
  v66.super_class = v22;
  v25 = v20;

  v26 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v20, v18, v19, v21);
  sub_100BF1464();

  *&v4[v17] = v26;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v7 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v27 = v62;
  sub_100BF8F8C(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v28 = *v11;
  v29 = v60;
  v30 = v61;
  *v11 = v60;
  v11[1] = v30;
  sub_100030444(v29);
  sub_100020438(v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *&v32[v33];
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*&v32[v33]];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*&v32[v33] addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView]];
  v38 = [*&v35[v37] contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView]];

  v40 = *&v35[v39];
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = &v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_1000089F8(v46, v58, &qword_1011B7710);
      v48 = type metadata accessor for UIView.Corner();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_1000095E8(v47, &qword_1011B7710);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_100BEF154(v27);
  v49 = v63;
  sub_100BEEC4C(v63);
  sub_100BEFF5C();
  sub_100BF7180(v49, type metadata accessor for SymbolButton.Metrics);
  sub_100009F78(0, &qword_1011B1640);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_100BF7180(v27, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_100BF6928(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (*&v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_100009F78(0, &qword_1011B4940);
        v24 = static NSObject.== infix(_:_:)();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_100BF0E28(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_10121BAF8;
  v12 = qword_10121BB00;
  v14 = qword_10121BB08;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v13, v11, v12, v14);
  sub_100BF1464();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100BF6E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100BF6EC4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100BE793C(v0 + v4, (v0 + v5), v7, v8);
}

uint64_t sub_100BF6F6C()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  return sub_100BE8694(v9, v0 + v4, v0 + v5, v7, v8);
}

void sub_100BF7108(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {

    v3 = a2;
  }
}

id sub_100BF7150(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100BF7180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BF71F4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (*&v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_100BF8F0C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100BF43D0;
  aBlock[3] = &unk_1010E88E8;
  v6 = _Block_copy(aBlock);
  sub_100030444(v2);
  sub_100030444(v2);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_100020438(v2);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  v3 = sub_10010FC20(&unk_1011B7C20);
  __chkstk_darwin(v3 - 8);
  v5 = &v93[-v4];
  v6 = type metadata accessor for UIView.Corner.Radius();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UIView.Corner();
  v9 = *(v8 - 8);
  v108 = v8;
  v109 = v9;
  __chkstk_darwin(v8);
  v99 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&qword_1011B1188);
  __chkstk_darwin(v11);
  v13 = &v93[-v12];
  v14 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v14 - 8);
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v93[-v18];
  __chkstk_darwin(v20);
  v22 = &v93[-v21];
  v110 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v110);
  v103 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v93[-v25];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  v30 = type metadata accessor for UIPointerEffect();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v104 = &v93[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v105 = &v93[-v34];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v36 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v98 = v36;
  v96 = v5;
  v97 = v1;
  v37 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v37, v29, type metadata accessor for SymbolButton.Configuration);
  v38 = *(v29 + 29);
  if (v38 == 1)
  {
    sub_100BF7180(v29, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v39 = v38;
    sub_100BF7180(v29, type metadata accessor for SymbolButton.Configuration);
    if (v38)
    {

      goto LABEL_10;
    }
  }

  if (*(v37 + 208) == 1 && !*(v37 + *(v110 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v40 = [v97 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  v95 = v37;
  if (v41 != 6)
  {
LABEL_19:
    v59 = objc_allocWithZone(UITargetedPreview);
    v60 = [v59 initWithView:v98];
    v61 = [v60 parameters];
    v54 = &selRef__replacePlaceholderViewWithView_;
    v51 = v97;
    [v97 bounds];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_100BF8F8C(v37, v26, type metadata accessor for SymbolButton.Configuration);
    if ((*(v109 + 48))(&v26[*(v110 + 36)], 1, v108))
    {
      sub_100BF7180(v26, type metadata accessor for SymbolButton.Configuration);
      static UIPointerShape.defaultCornerRadius.getter();
      v71 = v70;
    }

    else
    {
      v72 = v100;
      UIView.Corner.radius.getter();
      sub_100BF7180(v26, type metadata accessor for SymbolButton.Configuration);
      [v51 bounds];
      UIView.Corner.Radius.value(in:)();
      v71 = v73;
      (*(v101 + 8))(v72, v102);
    }

    v49 = v105;
    v48 = v106;
    v53 = v104;
    v74 = [objc_opt_self() bezierPathWithRoundedRect:v63 cornerRadius:{v65, v67, v69, v71}];
    [v61 setShadowPath:v74];

    *v49 = v60;
    v50 = &enum case for UIPointerEffect.lift(_:);
    v52 = v103;
    v37 = v95;
    goto LABEL_23;
  }

  sub_1000089F8(v37 + *(v110 + 36), v22, &qword_1011B7710);
  static UIView.Corner.rounded.getter();
  v42 = v108;
  v43 = v109;
  (*(v109 + 56))(v19, 0, 1, v108);
  v44 = *(v11 + 48);
  sub_1000089F8(v22, v13, &qword_1011B7710);
  sub_1000089F8(v19, &v13[v44], &qword_1011B7710);
  v45 = *(v43 + 48);
  if (v45(v13, 1, v42) == 1)
  {
    sub_1000095E8(v19, &qword_1011B7710);
    sub_1000095E8(v22, &qword_1011B7710);
    if (v45(&v13[v44], 1, v42) == 1)
    {
      sub_1000095E8(v13, &qword_1011B7710);
      v37 = v95;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1000089F8(v13, v16, &qword_1011B7710);
  if (v45(&v13[v44], 1, v42) == 1)
  {
    sub_1000095E8(v19, &qword_1011B7710);
    sub_1000095E8(v22, &qword_1011B7710);
    (*(v109 + 8))(v16, v42);
LABEL_16:
    sub_1000095E8(v13, &qword_1011B1188);
    v37 = v95;
    goto LABEL_17;
  }

  v55 = v109;
  v56 = &v13[v44];
  v57 = v99;
  (*(v109 + 32))(v99, v56, v42);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v55 + 8);
  v58(v57, v42);
  sub_1000095E8(v19, &qword_1011B7710);
  sub_1000095E8(v22, &qword_1011B7710);
  v58(v16, v42);
  sub_1000095E8(v13, &qword_1011B7710);
  v37 = v95;
  if (v94)
  {
    goto LABEL_19;
  }

LABEL_17:
  v46 = objc_allocWithZone(UITargetedPreview);
  v47 = [v46 initWithView:v98];
  v49 = v105;
  v48 = v106;
  *v105 = v47;
  v50 = &enum case for UIPointerEffect.highlight(_:);
  v51 = v97;
  v52 = v103;
  v53 = v104;
  v54 = &selRef__replacePlaceholderViewWithView_;
LABEL_23:
  v75 = v107;
  (*(v48 + 104))(v49, *v50, v107);
  (*(v48 + 16))(v53, v49, v75);
  [v51 v54[104]];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_100BF8F8C(v37, v52, type metadata accessor for SymbolButton.Configuration);
  if ((*(v109 + 48))(v52 + *(v110 + 36), 1, v108))
  {
    sub_100BF7180(v52, type metadata accessor for SymbolButton.Configuration);
    static UIPointerShape.defaultCornerRadius.getter();
    v85 = v84;
  }

  else
  {
    v86 = v100;
    UIView.Corner.radius.getter();
    sub_100BF7180(v52, type metadata accessor for SymbolButton.Configuration);
    [v51 v54[104]];
    UIView.Corner.Radius.value(in:)();
    v85 = v87;
    (*(v101 + 8))(v86, v102);
  }

  sub_100009F78(0, &qword_1011B1628);
  v88 = v96;
  *v96 = v77;
  v88[1] = v79;
  v88[2] = v81;
  v88[3] = v83;
  v88[4] = v85;
  v89 = enum case for UIPointerShape.roundedRect(_:);
  v90 = type metadata accessor for UIPointerShape();
  v91 = *(v90 - 8);
  (*(v91 + 104))(v88, v89, v90);
  (*(v91 + 56))(v88, 0, 1, v90);
  v92 = UIPointerStyle.init(effect:shape:)();

  (*(v48 + 8))(v49, v75);
  return v92;
}

unint64_t sub_100BF80EC(uint64_t a1)
{
  result = sub_100BF8114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF8114()
{
  result = qword_1011B7778;
  if (!qword_1011B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7778);
  }

  return result;
}

unint64_t sub_100BF8168(uint64_t a1)
{
  result = sub_100BF8190();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF8190()
{
  result = qword_1011B7780;
  if (!qword_1011B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7780);
  }

  return result;
}

unint64_t sub_100BF81E4(uint64_t a1)
{
  result = sub_100BF820C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF820C()
{
  result = qword_1011B7788;
  if (!qword_1011B7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7788);
  }

  return result;
}

unint64_t sub_100BF8264()
{
  result = qword_1011B7790;
  if (!qword_1011B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7790);
  }

  return result;
}

unint64_t sub_100BF82B8(uint64_t a1)
{
  result = sub_100BF82E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF82E0()
{
  result = qword_1011B7798;
  if (!qword_1011B7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7798);
  }

  return result;
}

unint64_t sub_100BF8334(uint64_t a1)
{
  result = sub_100BF835C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF835C()
{
  result = qword_1011B77A0;
  if (!qword_1011B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B77A0);
  }

  return result;
}

void sub_100BF83B8()
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_100BF8794(319, &qword_1011B77F0, type metadata accessor for SymbolButton.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100BF8558()
{
  sub_1000308A0(319, &qword_1011B7860);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_1011B7868);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &unk_1011B7870);
      if (v2 <= 0x3F)
      {
        sub_100BF8794(319, &qword_1011B1108, &type metadata accessor for UIView.Corner);
        if (v3 <= 0x3F)
        {
          sub_1000308A0(319, &qword_1011B7880);
          if (v4 <= 0x3F)
          {
            sub_1000308A0(319, &qword_1011B7888);
            if (v5 <= 0x3F)
            {
              _s3__C6CGSizeVMa_1(319);
              if (v6 <= 0x3F)
              {
                sub_100BF8794(319, &qword_1011B7890, _s3__C6CGSizeVMa_1);
                if (v7 <= 0x3F)
                {
                  _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                  if (v8 <= 0x3F)
                  {
                    sub_100A21F08(319, &unk_1011B7898, &qword_1011B4940);
                    if (v9 <= 0x3F)
                    {
                      sub_1000308A0(319, &unk_1011B78A8);
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void sub_100BF8794(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100BF87E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_100BF8844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100BF88AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100BF88D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100BF8920(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BF898C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100BF89D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BF8A48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100BF8AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100BF8C20()
{
  sub_100A21F08(319, &qword_1011B7AB8, &unk_1011B7AC0);
  if (v0 <= 0x3F)
  {
    sub_100BF8794(319, &qword_1011B1108, &type metadata accessor for UIView.Corner);
    if (v1 <= 0x3F)
    {
      sub_100009F78(319, &qword_1011B6520);
      if (v2 <= 0x3F)
      {
        sub_100009F78(319, &unk_1011B7AD0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v4 <= 0x3F)
          {
            _s3__C6CGSizeVMa_1(319);
            if (v5 <= 0x3F)
            {
              sub_100BF8794(319, &qword_1011B7890, _s3__C6CGSizeVMa_1);
              if (v6 <= 0x3F)
              {
                _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                if (v7 <= 0x3F)
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
}

unint64_t sub_100BF8DB0()
{
  result = qword_1011B7B20;
  if (!qword_1011B7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B20);
  }

  return result;
}

unint64_t sub_100BF8E08()
{
  result = qword_1011B7B58;
  if (!qword_1011B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B58);
  }

  return result;
}

unint64_t sub_100BF8E60()
{
  result = qword_1011B7B90;
  if (!qword_1011B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B90);
  }

  return result;
}

unint64_t sub_100BF8EB8()
{
  result = qword_1011B7BC8;
  if (!qword_1011B7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7BC8);
  }

  return result;
}

uint64_t sub_100BF8F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF8FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF905C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100BF90A4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;

    return sub_100030444(a4);
  }

  return result;
}

void *sub_100BF90EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_100020438(a4);
  }

  return result;
}

uint64_t sub_100BF9134()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100BE8E94(v6, v0 + v4, (v0 + v5), v7);
}

uint64_t sub_100BF91E8()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_100BF923C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100BF9260(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v5 = result;

    v6 = v5;
    v7 = a2;

    return a3;
  }

  return result;
}

__n128 sub_100BF92E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100BF9308(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100BF9364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100BF93F4()
{
  result = qword_1011B7C78;
  if (!qword_1011B7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7C78);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TextArray.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_100BFA404(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v52 = v5;
    v54 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_10021D0C0(v10, v11, v12);
      v64 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_100BFA404((v15 > 1), v14 + 1, 1);
        v7 = v64;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v54;
    v4 = a3;
    v5 = v52;
  }

  v64 = a2;
  v65 = v4;
  sub_1000098E0();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v61[0] = v17;
  v61[1] = v18;
  v21 = v20 & 1;
  v62 = v20 & 1;
  v63 = v22;
  Array<A>.joined(separator:)(v61, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v64);

  sub_10011895C(v17, v19, v21);

  v24 = 0;
  v25 = v64;
  v55 = v65;
  v53 = v66;
  v26 = v67;
  v27 = v5 + 72;
  v28 = _swiftEmptyArrayStorage;
LABEL_8:
  v29 = (v27 + 48 * v24);
  while (1)
  {
    if (v6 == v24)
    {
      v64 = v28;
      sub_10010FC20(&qword_1011B1758);
      sub_100B246F0();
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v64 = v38;
      v65 = v40;
      v41 = Text.init<A>(_:)();
      v43 = v42;
      v45 = v44;
      v46 = Text.accessibilityLabel(_:)();
      v48 = v47;
      v57 = v49;
      v60 = v50;
      sub_10011895C(v25, v55, v53);

      sub_10011895C(v41, v43, v45 & 1);

      *a4 = v46;
      *(a4 + 8) = v48;
      *(a4 + 16) = v57 & 1;
      *(a4 + 24) = v60;
      return result;
    }

    if (v24 >= v6)
    {
      break;
    }

    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }

    v32 = *v29;
    v29 += 6;
    v31 = v32;
    ++v24;
    if (v32)
    {
      v51 = v26;
      v33 = *(v29 - 7);

      result = swift_isUniquelyReferenced_nonNull_native();
      v34 = v6;
      if ((result & 1) == 0)
      {
        result = sub_100BF9974(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_100BF9974((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v36 + 1;
      v37 = &v28[2 * v36];
      v37[4] = v33;
      v37[5] = v31;
      v24 = v30;
      v6 = v34;
      v26 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000098E0();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100BF98F8@<X0>(uint64_t a1@<X8>)
{
  result = static Text.+ infix(_:_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_100BF9954@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100EC61F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

char *sub_100BF9974(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B5F90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9AA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B1EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_100BF9BD4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100BF9DB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9ED0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7CA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9FF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100BFA100(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011B7C98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BFA234(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B21B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100BFA344(size_t a1, int64_t a2, char a3)
{
  result = sub_100BAC144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA364(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA384(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA3A4(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA3C4(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC64C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100BFA3E4(size_t a1, int64_t a2, char a3)
{
  result = sub_100BAC758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA404(char *a1, int64_t a2, char a3)
{
  result = sub_100BACA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100BFA46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100BFA564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100BFCE50(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  sub_100BFB65C(v9, v6, a3, a5, v21);
  sub_10011895C(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_100BFA7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v83 + 1) = a2;
  v84 = a4;
  v79 = a3;
  *&v83 = a1;
  v80 = a6;
  v82 = sub_10010FC20(&qword_1011B7D48);
  __chkstk_darwin(v82);
  v8 = &v70[-v7];
  v77 = sub_10010FC20(&qword_1011B7D50);
  __chkstk_darwin(v77);
  v75 = &v70[-v9];
  v10 = sub_10010FC20(&qword_1011B7D58);
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  v76 = sub_10010FC20(&qword_1011B7D20);
  __chkstk_darwin(v76);
  v73 = &v70[-v13];
  v81 = sub_10010FC20(&qword_1011B7CE0);
  __chkstk_darwin(v81);
  v78 = &v70[-v14];
  v15 = sub_10010FC20(&qword_1011B7D30);
  __chkstk_darwin(v15);
  v17 = &v70[-v16];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v74 = v8;
        if (a5 == 8)
        {
          v18 = static Color.white.getter();
          KeyPath = swift_getKeyPath();
          v20 = swift_getKeyPath();
          LOBYTE(v110) = v79 & 1;
          LOBYTE(v104) = 0;
          v118 = v83;
          LOBYTE(v119) = v79 & 1;
          *(&v119 + 1) = v84;
          *&v120 = KeyPath;
          *(&v120 + 1) = v18;
          *&v121 = v20;
          *(&v121 + 1) = 1;
          LOBYTE(v122) = 0;
          v124 = v83;
          LOBYTE(v125) = v79 & 1;
          *(&v125 + 1) = v84;
          *&v126 = KeyPath;
          *(&v126 + 1) = v18;
          *&v127 = v20;
          *(&v127 + 1) = 1;
          LOBYTE(v128) = 0;
          sub_10021D0C0(v83, *(&v83 + 1), v79 & 1);

          sub_1000089F8(&v118, &v85, &qword_1011B7D00);
          sub_1000095E8(&v124, &qword_1011B7D00);
          v21 = v121;
          v22 = v74;
          *(v74 + 2) = v120;
          *(v22 + 48) = v21;
          *(v22 + 64) = v122;
          v23 = v119;
          *v22 = v118;
          *(v22 + 16) = v23;
          swift_storeEnumTagMultiPayload();
          sub_10010FC20(&qword_1011B7D00);
          sub_100BFD104();
          sub_100BFD21C();
          return _ConditionalContent<>.init(storage:)();
        }

        goto LABEL_11;
      }

      v55 = static Color.white.getter();
      v74 = v55;
      v56 = swift_getKeyPath();
      v57 = v83;
      *v12 = v83;
      v58 = v79 & 1;
      v12[16] = v58;
      v79 = v58;
      *(v12 + 3) = v84;
      *(v12 + 4) = v56;
      v72 = v56;
      *(v12 + 5) = v55;
      swift_storeEnumTagMultiPayload();
      sub_10021D0C0(v57, *(&v57 + 1), v58);

      sub_10021D0C0(v57, *(&v57 + 1), v58);

      sub_10010FC20(&qword_1011B4D20);
      sub_100BFD3F0();
      sub_100B90234();
      v59 = v73;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v59, v75, &qword_1011B7D20);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011B7CF0);
      sub_100BFD190();
      sub_100BFD364();
      v60 = v78;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v59, &qword_1011B7D20);
      sub_1000089F8(v60, v8, &qword_1011B7CE0);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011B7D00);
      sub_100BFD104();
      sub_100BFD21C();
      _ConditionalContent<>.init(storage:)();
      sub_10011895C(v83, *(&v83 + 1), v79);

      v36 = v60;
      v37 = &qword_1011B7CE0;
      return sub_1000095E8(v36, v37);
    }

LABEL_9:
    v38 = static Color.secondary.getter();
    v74 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v79 & 1;
    LOBYTE(v85) = v79 & 1;
    LOBYTE(v110) = 0;
    v43 = v83;
    v91 = v83;
    LOBYTE(v92) = v79 & 1;
    v44 = v84;
    *(&v92 + 1) = v84;
    *&v93 = v40;
    *(&v93 + 1) = v39;
    *&v94 = v41;
    *(&v94 + 1) = 2;
    v95 = 0;
    v45 = swift_getKeyPath();
    v120 = v93;
    v121 = v94;
    LOBYTE(v122) = v95;
    v118 = v91;
    v119 = v92;
    v96 = v43;
    v97 = v42;
    v98 = v44;
    v99 = v40;
    v100 = v39;
    v101 = v41;
    v102 = 2;
    v103 = 0;
    sub_10021D0C0(v43, *(&v43 + 1), v42);

    sub_1000089F8(&v91, &v124, &qword_1011B7D00);
    sub_1000095E8(&v96, &qword_1011B7D00);
    v106 = v120;
    v107 = v121;
    v104 = v118;
    v105 = v119;
    *&v108 = v122;
    *(&v108 + 1) = v45;
    v109 = 1;
    v112 = v120;
    v113 = v121;
    v110 = v118;
    v111 = v119;
    v114 = v122;
    v115 = v45;
    v116 = 1;
    sub_1000089F8(&v104, &v124, &qword_1011B7D10);
    sub_1000095E8(&v110, &qword_1011B7D10);
    v126 = v106;
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v124 = v104;
    v125 = v105;
    v117 = 1;
    HIBYTE(v129) = 1;
    sub_1000089F8(&v104, &v118, &qword_1011B7D10);
    sub_1000089F8(&v104, &v118, &qword_1011B7D10);
    sub_10010FC20(&qword_1011B7D00);
    sub_10010FC20(&qword_1011B7D10);
    sub_100BFD21C();
    sub_100BFD2C0();
    _ConditionalContent<>.init(storage:)();
    v46 = v88;
    v120 = v87;
    v121 = v88;
    v47 = v89;
    v122 = v89;
    v48 = v90;
    v123 = v90;
    v49 = v85;
    v50 = v86;
    v118 = v85;
    v119 = v86;
    v51 = v75;
    *(v75 + 2) = v87;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v118, &v124, &qword_1011B7CF0);
    sub_10010FC20(&qword_1011B7CF0);
    sub_100BFD190();
    sub_100BFD364();
    v52 = v78;
    _ConditionalContent<>.init(storage:)();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_1000095E8(&v124, &qword_1011B7CF0);
    sub_1000089F8(v52, v74, &qword_1011B7CE0);
    swift_storeEnumTagMultiPayload();
    sub_100BFD104();
    _ConditionalContent<>.init(storage:)();
    v53 = &qword_1011B7D10;
    v54 = &qword_1011B7D10;
LABEL_12:
    sub_1000095E8(&v104, v54);
    sub_1000095E8(&v104, v53);
    v36 = v52;
    v37 = &qword_1011B7CE0;
    return sub_1000095E8(v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v74 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v61 = static Color.primary.getter();
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    LOBYTE(v118) = v79 & 1;
    LOBYTE(v85) = 0;
    v104 = v83;
    LOBYTE(v105) = v79 & 1;
    *(&v105 + 1) = v84;
    *&v106 = v62;
    *(&v106 + 1) = v61;
    *&v107 = v63;
    *(&v107 + 1) = 1;
    LOBYTE(v108) = 0;
    v110 = v83;
    LOBYTE(v111) = v79 & 1;
    *(&v111 + 1) = v84;
    *&v112 = v62;
    *(&v112 + 1) = v61;
    *&v113 = v63;
    *(&v113 + 1) = 1;
    LOBYTE(v114) = 0;
    sub_10021D0C0(v83, *(&v83 + 1), v79 & 1);

    sub_1000089F8(&v104, &v124, &qword_1011B7D00);
    sub_1000095E8(&v110, &qword_1011B7D00);
    v126 = v106;
    v127 = v107;
    LOBYTE(v128) = v108;
    v124 = v104;
    v125 = v105;
    LOBYTE(v96) = 0;
    HIBYTE(v129) = 0;
    sub_1000089F8(&v104, &v118, &qword_1011B7D00);
    sub_1000089F8(&v104, &v118, &qword_1011B7D00);
    sub_10010FC20(&qword_1011B7D00);
    sub_10010FC20(&qword_1011B7D10);
    sub_100BFD21C();
    sub_100BFD2C0();
    _ConditionalContent<>.init(storage:)();
    v64 = v88;
    v120 = v87;
    v121 = v88;
    v65 = v89;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v85;
    v68 = v86;
    v118 = v85;
    v119 = v86;
    v69 = v75;
    *(v75 + 2) = v87;
    *(v69 + 3) = v64;
    *(v69 + 4) = v65;
    *(v69 + 40) = v66;
    *v69 = v67;
    *(v69 + 1) = v68;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v118, &v124, &qword_1011B7CF0);
    sub_10010FC20(&qword_1011B7CF0);
    sub_100BFD190();
    sub_100BFD364();
    v52 = v78;
    _ConditionalContent<>.init(storage:)();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_1000095E8(&v124, &qword_1011B7CF0);
    sub_1000089F8(v52, v74, &qword_1011B7CE0);
    swift_storeEnumTagMultiPayload();
    sub_100BFD104();
    _ConditionalContent<>.init(storage:)();
    v53 = &qword_1011B7D00;
    v54 = &qword_1011B7D00;
    goto LABEL_12;
  }

  v25 = static Color.secondary.getter();
  v72 = swift_getKeyPath();
  v26 = &v17[*(sub_10010FC20(&qword_1011B7D40) + 36)];
  v27 = *(sub_10010FC20(&qword_1011B5420) + 28);
  v71 = enum case for Text.Case.uppercase(_:);
  v28 = type metadata accessor for Text.Case();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26 + v27, v71, v28);
  (*(v29 + 56))(v26 + v27, 0, 1, v28);
  *v26 = swift_getKeyPath();
  v30 = v83;
  *v17 = v83;
  LOBYTE(v28) = v79 & 1;
  v17[16] = v79 & 1;
  v31 = v72;
  *(v17 + 3) = v84;
  *(v17 + 4) = v31;
  *(v17 + 5) = v25;
  v32 = swift_getKeyPath();
  v33 = &v17[*(v15 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;
  sub_1000089F8(v17, v12, &qword_1011B7D30);
  swift_storeEnumTagMultiPayload();
  sub_10021D0C0(v30, *(&v30 + 1), v28);

  sub_10010FC20(&qword_1011B4D20);
  sub_100BFD3F0();
  sub_100B90234();
  v34 = v73;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v34, v75, &qword_1011B7D20);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B7CF0);
  sub_100BFD190();
  sub_100BFD364();
  v35 = v78;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v34, &qword_1011B7D20);
  sub_1000089F8(v35, v74, &qword_1011B7CE0);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B7D00);
  sub_100BFD104();
  sub_100BFD21C();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v35, &qword_1011B7CE0);
  v36 = v17;
  v37 = &qword_1011B7D30;
  return sub_1000095E8(v36, v37);
}

uint64_t sub_100BFB65C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a4;
  LODWORD(v197) = a2;
  v193 = a1;
  v200 = a5;
  sub_1001109D0(&unk_1011B46E0);
  v192 = a3;
  v6 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B5420);
  v7 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B5A00);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for _ConditionalContent();
  v182 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v178 - v10;
  v11 = sub_10010FC20(&qword_1011B5BB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v178 - v12;
  v206 = v7;
  v180 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v178 - v15;
  v205 = v8;
  v184 = *(v8 - 8);
  __chkstk_darwin(v17);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v178 - v21;
  v23 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B6988);
  v24 = type metadata accessor for ModifiedContent();
  v183 = *(v24 - 8);
  __chkstk_darwin(v24);
  v188 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v187 = &v178 - v27;
  v202 = v28;
  v29 = type metadata accessor for _ConditionalContent();
  v186 = *(v29 - 8);
  __chkstk_darwin(v29);
  v185 = &v178 - v30;
  v204 = v31;
  v201 = v9;
  v32 = type metadata accessor for _ConditionalContent();
  v190 = *(v32 - 8);
  __chkstk_darwin(v32);
  v189 = &v178 - v33;
  v208 = v6;
  v34 = *(v6 - 8);
  __chkstk_darwin(v35);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  v191 = *(v23 - 8);
  __chkstk_darwin(v41);
  v43 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v194 = &v178 - v45;
  v196 = v46;
  v203 = v23;
  v47 = type metadata accessor for _ConditionalContent();
  __chkstk_darwin(v47);
  v195 = &v178 - v48;
  v198 = v50;
  v199 = v49;
  if (v197 > 5u)
  {
    if (v197 != 6)
    {
      v51 = v34;
      if (v197 == 7)
      {
        static Color.white.getter();
        v119 = v207;
        View.foregroundColor(_:)();

        v120 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
        v271 = v119;
        v272 = v120;
        v121 = v208;
        WitnessTable = swift_getWitnessTable();
        sub_100B5B86C(v37, v121, WitnessTable);
        v123 = v205;
        v124 = *(v51 + 8);
        v194 = (v51 + 8);
        v197 = v124;
        v124(v37, v121);
        sub_100B5B86C(v40, v121, WitnessTable);
        v125 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
        v269 = WitnessTable;
        v270 = v125;
        v126 = swift_getWitnessTable();
        v127 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
        v267 = v126;
        v268 = v127;
        v128 = swift_getWitnessTable();
        v129 = v181;
        sub_100BFA564(v37, v123, v121);
        v265 = WitnessTable;
        v266 = v127;
        v130 = swift_getWitnessTable();
        v193 = v130;
        v131 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
        v263 = v130;
        v264 = v131;
        v132 = swift_getWitnessTable();
        v261 = v130;
        v262 = v132;
        v133 = v204;
        v134 = swift_getWitnessTable();
        v259 = v128;
        v260 = WitnessTable;
        v135 = v201;
        v136 = swift_getWitnessTable();
        v137 = v189;
        sub_100BFA564(v129, v133, v135);
        (*(v182 + 8))(v129, v135);
        v257 = v134;
        v258 = v136;
        v138 = v196;
        swift_getWitnessTable();
        v69 = v195;
        sub_100BFA46C(v137, v138);
        v139 = v137;
        v96 = v207;
        (*(v190 + 8))(v139, v138);
        v140 = v40;
        v141 = v208;
        v142 = v197;
        v197(v37, v208);
        v142(v140, v141);
        goto LABEL_14;
      }

      v52 = v207;
      if (v197 == 8)
      {
        static Color.white.getter();
        View.foregroundColor(_:)();

        v53 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
        v305 = v52;
        v306 = v53;
        v54 = v208;
        v55 = swift_getWitnessTable();
        v56 = v43;
        View.lineLimit(_:)();
        (*(v51 + 8))(v40, v54);
        v193 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
        v303 = v55;
        v304 = v193;
        v57 = v191;
        v58 = v203;
        v59 = swift_getWitnessTable();
        v60 = v194;
        sub_100B5B86C(v56, v58, v59);
        v197 = *(v57 + 8);
        v197(v56, v58);
        sub_100B5B86C(v60, v58, v59);
        v61 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
        v301 = v59;
        v302 = v61;
        v62 = swift_getWitnessTable();
        v299 = v59;
        v300 = v62;
        v63 = swift_getWitnessTable();
        v64 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
        v297 = v55;
        v298 = v64;
        v295 = swift_getWitnessTable();
        v296 = v193;
        v293 = swift_getWitnessTable();
        v294 = v55;
        v65 = swift_getWitnessTable();
        v291 = v63;
        v292 = v65;
        v66 = v196;
        swift_getWitnessTable();
        v67 = v195;
        sub_100BFA564(v56, v66, v58);
        v68 = v56;
        v69 = v67;
        v70 = v197;
        v197(v68, v58);
        v70(v194, v58);
LABEL_9:
        v96 = v207;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    static Color.secondary.getter();
    v97 = v207;
    View.foregroundColor(_:)();

    v98 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
    v239 = v97;
    v240 = v98;
    v99 = v208;
    v100 = swift_getWitnessTable();
    v101 = v194;
    v102 = v100;
    v192 = v100;
    View.lineLimit(_:)();
    (*(v34 + 8))(v40, v99);
    v193 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
    v237 = v102;
    v238 = v193;
    v103 = v203;
    v104 = swift_getWitnessTable();
    v105 = v188;
    View.multilineTextAlignment(_:)();
    (*(v191 + 8))(v101, v103);
    v106 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
    v235 = v104;
    v236 = v106;
    v107 = v202;
    v108 = swift_getWitnessTable();
    v109 = v187;
    sub_100B5B86C(v105, v107, v108);
    v197 = *(v183 + 8);
    v197(v105, v107);
    sub_100B5B86C(v109, v107, v108);
    v110 = v185;
    v184 = v104;
    sub_100BFA564(v105, v103, v107);
    v233 = v104;
    v234 = v108;
    v111 = v204;
    v112 = swift_getWitnessTable();
    v113 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
    v114 = v192;
    v231 = v192;
    v232 = v113;
    v229 = swift_getWitnessTable();
    v230 = v193;
    v227 = swift_getWitnessTable();
    v228 = v114;
    v115 = swift_getWitnessTable();
    v116 = v189;
    sub_100BFA46C(v110, v111);
    (*(v186 + 8))(v110, v111);
    v225 = v112;
    v226 = v115;
    v117 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_100BFA46C(v116, v117);
    (*(v190 + 8))(v116, v117);
    v96 = v207;
    v118 = v197;
    v197(v188, v107);
    v118(v187, v107);
    goto LABEL_14;
  }

  v179 = v22;
  if (v197 == 4)
  {
    goto LABEL_10;
  }

  v51 = v34;
  v52 = v207;
  if (v197 == 5)
  {
    static Color.secondary.getter();
    View.foregroundColor(_:)();

    v71 = enum case for Text.Case.uppercase(_:);
    v72 = type metadata accessor for Text.Case();
    v73 = *(v72 - 8);
    (*(v73 + 104))(v13, v71, v72);
    (*(v73 + 56))(v13, 0, 1, v72);
    v74 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
    v255 = v52;
    v256 = v74;
    v75 = v208;
    v76 = swift_getWitnessTable();
    v77 = v16;
    View.textCase(_:)();
    sub_1000095E8(v13, &qword_1011B5BB8);
    (*(v51 + 8))(v40, v75);
    v78 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
    v253 = v76;
    v254 = v78;
    v79 = v206;
    v80 = swift_getWitnessTable();
    View.lineLimit(_:)();
    (*(v180 + 8))(v77, v79);
    v81 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
    v251 = v80;
    v252 = v81;
    v82 = v205;
    v83 = swift_getWitnessTable();
    v84 = v179;
    v178 = v19;
    sub_100B5B86C(v19, v82, v83);
    v197 = *(v184 + 8);
    v184 += 8;
    v197(v19, v82);
    sub_100B5B86C(v84, v82, v83);
    v85 = v181;
    sub_100BFA46C(v19, v82);
    v249 = v76;
    v250 = v81;
    v86 = swift_getWitnessTable();
    v87 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
    v247 = v86;
    v194 = v86;
    v248 = v87;
    v88 = swift_getWitnessTable();
    v245 = v86;
    v246 = v88;
    v89 = v204;
    v90 = swift_getWitnessTable();
    v243 = v83;
    v244 = v76;
    v91 = v201;
    v92 = swift_getWitnessTable();
    v93 = v189;
    sub_100BFA564(v85, v89, v91);
    (*(v182 + 8))(v85, v91);
    v241 = v90;
    v242 = v92;
    v94 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_100BFA46C(v93, v94);
    (*(v190 + 8))(v93, v94);
    v95 = v197;
    v197(v178, v82);
    v95(v179, v82);
    goto LABEL_9;
  }

LABEL_12:
  static Color.primary.getter();
  View.foregroundColor(_:)();

  v143 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
  v223 = v52;
  v224 = v143;
  v144 = v208;
  v145 = swift_getWitnessTable();
  v146 = v191;
  v147 = v145;
  v148 = v43;
  View.lineLimit(_:)();
  (*(v51 + 8))(v40, v144);
  v149 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
  v221 = v147;
  v222 = v149;
  v150 = v203;
  v151 = swift_getWitnessTable();
  v152 = v194;
  sub_100B5B86C(v43, v150, v151);
  v197 = *(v146 + 8);
  v191 = v146 + 8;
  v197(v43, v150);
  sub_100B5B86C(v152, v150, v151);
  v153 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
  v219 = v151;
  v220 = v153;
  v193 = v151;
  v154 = swift_getWitnessTable();
  v155 = v185;
  sub_100BFA46C(v148, v150);
  v217 = v151;
  v218 = v154;
  v156 = v204;
  v192 = swift_getWitnessTable();
  v157 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
  v215 = v147;
  v216 = v157;
  v213 = swift_getWitnessTable();
  v214 = v149;
  v211 = swift_getWitnessTable();
  v212 = v147;
  v158 = swift_getWitnessTable();
  v159 = v189;
  v160 = v192;
  sub_100BFA46C(v155, v156);
  (*(v186 + 8))(v155, v156);
  v209 = v160;
  v210 = v158;
  v161 = v207;
  v162 = v196;
  swift_getWitnessTable();
  v163 = v195;
  sub_100BFA46C(v159, v162);
  (*(v190 + 8))(v159, v162);
  v164 = v148;
  v96 = v161;
  v69 = v163;
  v165 = v197;
  v197(v164, v150);
  v165(v194, v150);
LABEL_14:
  v166 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0);
  v289 = v96;
  v290 = v166;
  v167 = swift_getWitnessTable();
  v168 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
  v287 = v167;
  v288 = v168;
  v169 = swift_getWitnessTable();
  v170 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
  v285 = v169;
  v286 = v170;
  v171 = swift_getWitnessTable();
  v283 = v169;
  v284 = v171;
  v172 = swift_getWitnessTable();
  v173 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
  v281 = v167;
  v282 = v173;
  v279 = swift_getWitnessTable();
  v280 = v168;
  v277 = swift_getWitnessTable();
  v278 = v167;
  v174 = swift_getWitnessTable();
  v275 = v172;
  v276 = v174;
  v273 = swift_getWitnessTable();
  v274 = v169;
  v175 = v199;
  v176 = swift_getWitnessTable();
  sub_100B5B86C(v69, v175, v176);
  return (*(v198 + 8))(v69, v175);
}

uint64_t Text.with(style:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = sub_100BFCE50(a2, a3, a4 & 1, a5, a1);
  v10 = v9;
  v12 = v11;
  sub_100BFA7A4(v8, v9, v11 & 1, v13, a1, a6);
  sub_10011895C(v8, v10, v12 & 1);
}

uint64_t sub_100BFCE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      static Font.title2.getter();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      static Font.Weight.semibold.getter();
      v7 = Text.fontWeight(_:)();
      v9 = v8;
      v11 = v10;
      static Font.caption.getter();
      v5 = Text.font(_:)();

      sub_10011895C(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    static Font.body.getter();
    goto LABEL_9;
  }

  static Font.title3.getter();
LABEL_9:
  v5 = Text.font(_:)();

  return v5;
}

unint64_t sub_100BFCFB0()
{
  result = qword_1011B7CC0;
  if (!qword_1011B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CC0);
  }

  return result;
}

uint64_t sub_100BFD024(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BFD078()
{
  result = qword_1011B7CC8;
  if (!qword_1011B7CC8)
  {
    sub_1001109D0(&qword_1011B7CD0);
    sub_100BFD104();
    sub_100BFD21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CC8);
  }

  return result;
}

unint64_t sub_100BFD104()
{
  result = qword_1011B7CD8;
  if (!qword_1011B7CD8)
  {
    sub_1001109D0(&qword_1011B7CE0);
    sub_100BFD190();
    sub_100BFD364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CD8);
  }

  return result;
}

unint64_t sub_100BFD190()
{
  result = qword_1011B7CE8;
  if (!qword_1011B7CE8)
  {
    sub_1001109D0(&qword_1011B7CF0);
    sub_100BFD21C();
    sub_100BFD2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CE8);
  }

  return result;
}

unint64_t sub_100BFD21C()
{
  result = qword_1011B7CF8;
  if (!qword_1011B7CF8)
  {
    sub_1001109D0(&qword_1011B7D00);
    sub_100B90234();
    sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CF8);
  }

  return result;
}

unint64_t sub_100BFD2C0()
{
  result = qword_1011B7D08;
  if (!qword_1011B7D08)
  {
    sub_1001109D0(&qword_1011B7D10);
    sub_100BFD21C();
    sub_100BFD024(&qword_1011B6980, &qword_1011B6988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D08);
  }

  return result;
}

unint64_t sub_100BFD364()
{
  result = qword_1011B7D18;
  if (!qword_1011B7D18)
  {
    sub_1001109D0(&qword_1011B7D20);
    sub_100BFD3F0();
    sub_100B90234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D18);
  }

  return result;
}

unint64_t sub_100BFD3F0()
{
  result = qword_1011B7D28;
  if (!qword_1011B7D28)
  {
    sub_1001109D0(&qword_1011B7D30);
    sub_100BFD494();
    sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D28);
  }

  return result;
}

unint64_t sub_100BFD494()
{
  result = qword_1011B7D38;
  if (!qword_1011B7D38)
  {
    sub_1001109D0(&qword_1011B7D40);
    sub_100B90234();
    sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D38);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100B3336C(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_100B3336C(v12, v11);
  sub_100B3336C(a1, v11);
  sub_1000095E8(v18, &qword_1011B1E08);
  sub_100C00EF4(v12);
  sub_1000095E8(v12, &qword_1011B1E08);
  return sub_1000095E8(a1, &qword_1011B1E08);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_100B3336C(v4, v4 + 416);
  return sub_100BFD7C8;
}

void sub_100BFD7C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_100B3336C(v2 + 624, v2 + 728);
    sub_100B3336C(v2 + 624, v2 + 728);
    sub_100B3336C(v2 + 104, v2 + 728);
    sub_1000095E8(v4, &qword_1011B1E08);
    sub_100C00EF4(v2 + 104);
    sub_1000095E8(v2 + 104, &qword_1011B1E08);
    sub_1000095E8(v2 + 624, &qword_1011B1E08);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_100B3336C(v2 + 208, v2 + 624);
    sub_100B3336C(v4, v2 + 624);
    sub_1000095E8(v2 + 416, &qword_1011B1E08);
    sub_100C00EF4(v2 + 208);
    sub_1000095E8(v2 + 208, &qword_1011B1E08);
    v28 = v4;
  }

  sub_1000095E8(v28, &qword_1011B1E08);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_100C02000(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_100BFDAB8;
}

void sub_100BFDAB8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_100C02000(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_100BFF3FC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

void (*VerticalToggleSlider.value.modify(void (**a1)(float **a1, char a2)))(float **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_100BFDC30;
  }

  return result;
}

void sub_100BFDC30(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_100BFF3FC(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x8000000100E67CB0;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x8000000100E67D00;
    String.append(_:)(v4);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_10121B560);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = sub_100010744(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_100BFDF38;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x8000000100E67CB0;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x8000000100E67D00;
    String.append(_:)(v4);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_10121B560);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = sub_100010744(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_100BFE1D0;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(164);
    v3._object = 0x8000000100E67CB0;
    v3._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 3026478;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    Float.write<A>(to:)();
    v5._countAndFlagsBits = 0xD00000000000005BLL;
    v5._object = 0x8000000100E67D50;
    String.append(_:)(v5);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_10121B560);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136446210;
      v11 = sub_100010744(0, 0xE000000000000000, v12);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      sub_10000959C(v10);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

void (*VerticalToggleSlider.valueRange.modify(void (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_100BFE4AC;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_100BFFE10(0x100000000);
    v5 = sub_100BFF9F8();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_100BFE6BC;
}

void sub_100BFE6BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_100BFFE10(0x100000000);
      v8 = sub_100BFF9F8();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_100BFF974();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100BFEB7C;
}

void sub_100BFEB7C(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = [v2[3] isEnabled] ^ 1;
LABEL_8:
  v8 = *(v2[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v8)
  {
    v9 = 0.4;
    if (!v7)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = sub_100BFF974();
  v11 = v10;
  v12 = 1.0;
  if (v7)
  {
    v12 = 0.5;
  }

  [v10 setAlpha:v12];

LABEL_15:

  free(v2);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_100C007E8();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100BFEF7C;
}

void sub_100BFEF7C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_100C007E8();
  }

  free(v1);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_100BFF340();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_100C011C0(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

void (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100BFF19C;
}

void sub_100BFF19C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_100BFF340();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_100C011C0(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_100BFF28C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100BFF340()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_100BFF28C();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_100BFF3FC(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_100BFFE10(0x100000000);
      v10 = sub_100BFF9F8();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_100BFF508()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100BFF580()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_100BFF974();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_100BFF9F8();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_100C00570();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_100C01F50;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10003640C;
    v20[3] = &unk_1010E9308;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_100BFF9F8();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100BFF8B4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_100BFF974();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_100BFF974()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100BFF9F8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_100BFF974();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_100BFFAB4()
{
  v1 = sub_100BFF340();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_100C011C0(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_100BFF28C();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_100BFFC74()
{
  v1 = sub_100BFF9F8();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_100BFF974();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_100BFFE10(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_100BFFE10(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_100BFF9F8();
    v2 = sub_100BFF974();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_100BFF974();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_100BFF9F8();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_100BFFFEC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_100B3336C(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_100B03E90(v48, v47);
      sub_100B03E90(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = static NSObject.== infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_100BFF974();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      sub_10010FC20(&qword_1011B5630);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100EC3620;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100EFDCE0;
      sub_100B05000(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100EFDCD0;
      v43 = v11;
      sub_100B05000(v41, v42);

      sub_100009F78(0, &qword_1011B4F00);
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_100C05D8C, v45);
    }

    sub_100C00570();
    sub_1000095E8(&v52, &qword_1011B1E08);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_100C00570()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_100B06030();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_100B06030();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_100C007E8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_100C008C8(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = sub_100BFF340();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_100C00C68(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_100C02000(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_100C00B64();
    }
  }
}

void sub_100C00A04(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_100BFF340();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_100C00C68(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_100C02000(v5);
        v6 = sub_100BFF340();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_100C00B64();
    }
  }
}

id sub_100C00B64()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_100C02000(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_100C00C68(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_100BFF340();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_100BFF3FC(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100EFDCF0, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_1011B7D60;
      v29 = *&qword_1011B7D70;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_100C04B28(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_100BFFE10(0x100000000);
    v31 = sub_100BFF9F8();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_100C00EF4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v12;
      v31 = *(a1 + 80);
      v32 = *(a1 + 96);
      v13 = *(a1 + 32);
      v27 = *(a1 + 16);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_100B3336C(v58, v33);
      sub_100B3336C(v58, v33);
      sub_100B3336C(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_1000095E8(v58, &qword_1011B1E08);
      sub_1000095E8(&v26, &qword_1011B1E08);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_1000095E8(v33, &qword_1011B1E08);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_100B3336C(v58, v56);
    sub_100B3336C(a1, v56);
    sub_1000095E8(&v35, &qword_1011B1E08);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v19;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_100B3336C(v58, v56);
  sub_100B3336C(a1, v56);
  sub_1000095E8(&v35, &qword_1011B7EE8);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_100BFFFEC();
}

__n128 sub_100C011C0(id a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || a1 + 1 < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || a1 + 1 < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  sub_100C011C0(0, a2);
  result.n128_u64[1] = v7;
  return result;
}