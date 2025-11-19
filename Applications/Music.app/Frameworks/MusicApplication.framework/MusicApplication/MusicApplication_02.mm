void sub_2F7F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2F890();
  }
}

uint64_t sub_2F890()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  [result music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  UIEdgeInsetsInsetRect(v10, v12, v14, v16, v5, v7);
  [*&v1[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView] sizeThatFits:{v17, v18}];
  v20 = v19;
  v22 = v21;
  type metadata accessor for CGSize(0);
  [v1 preferredContentSize];
  v25 = v23;
  v26 = v24;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setPreferredContentSize:{v20, v22, *&v20, *&v22, v25, v26}];
  }

  return result;
}

id sub_2FA38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBadgingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2FAF8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_2FB38(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_buttonAlignment] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for FooterButtonReusableView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setAllowsGroupOpacity:0];

  v13 = [v11 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = sub_30214();
  [v11 addSubview:v14];

  return v11;
}

Swift::Int sub_2FD54()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

Swift::Int sub_2FDC8()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

void sub_2FE0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320);
  v3 = __chkstk_darwin(a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v9 = &v16 - v8;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title);
  v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title);
  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title + 8);
  *v10 = v6;
  v10[1] = v7;
  v13 = v11 == v6 && v12 == v7;
  if (v13 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v14 = sub_30214();
    sub_ABA8E0();
    v15 = sub_ABA8C0();
    if ((*(*(v15 - 8) + 48))(v9, 1, v15))
    {
      sub_307DC(v9, v5);
      sub_ABA8F0();
      sub_3084C(v9);
    }

    else
    {

      sub_ABA8B0();
      sub_ABA8F0();
    }
  }
}

void sub_2FFC8()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for FooterButtonReusableView();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v0 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  v15 = v14;
  v17 = v16;
  v18 = sub_30214();
  [v18 sizeThatFits:{v15, v17}];

  v19 = OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button;
  v20 = *&v0[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button];
  sub_ABA490();
  [v20 setFrame:?];

  v21 = *&v0[v19];
  [v21 frame];
  v23 = v22;
  sub_ABA470();
  [v21 setFrame:v23];
}

id sub_30214()
{
  v1 = v0;
  v2 = sub_ABA830();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_ABA8C0();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button;
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button);
  }

  else
  {
    sub_13C80(0, &qword_DF13D0);
    sub_ABA8A0();
    sub_ABA820();

    sub_ABA8B0();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    sub_ABA850();
    sub_13C80(0, &unk_E05310);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_ABA7D0();
    v10 = sub_ABA8D0();
    v11 = *(v0 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v12 = v8;
  return v9;
}

void sub_30470()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    if (v2)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler]);

      v2();
      sub_17654(v2);
    }

    else
    {
    }
  }
}

id sub_30508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FooterButtonReusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ImpressionsElement.DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionsElement.DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_30738()
{
  result = qword_DE8268;
  if (!qword_DE8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8268);
  }

  return result;
}

uint64_t sub_3078C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_307CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_307DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3084C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_308B4(char *a1)
{
  v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically] = 1;
  v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel;
  *&v1[v4] = sub_311A8();
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_style] = a1;
  if (a1)
  {
    if (a1 == &dword_0 + 1)
    {
      v5 = 16.0;
      v6 = 16.0;
    }

    else
    {
      v7 = a1;
      [v7 lineHeight];
      v5 = v8;
      [v7 lineHeight];
      v6 = v9;
    }
  }

  else
  {
    v5 = 24.0;
    v6 = 24.0;
  }

  v30.receiver = v1;
  v30.super_class = type metadata accessor for NotificationBadgeView();
  v10 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, v5, v6);
  [v10 setHidden:1];
  [v10 setUserInteractionEnabled:0];
  v11 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView;
  [*&v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView] setContentMode:2];
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel]];
  result = [v10 tintColor];
  if (result)
  {
    v14 = result;
    [v10 bounds];
    Width = CGRectGetWidth(v31);
    [v10 bounds];
    Height = CGRectGetHeight(v32);
    if (Height >= Width)
    {
      Height = Width;
    }

    v17 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v14, Height * 0.5);

    [*&v10[v11] setImage:v17];
    sub_3137C();
    v18 = *&v10[v12];
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 whiteColor];
    [v20 setTextColor:v21];

    v22 = *&v10[v12];
    if (a1)
    {
      if (a1 != &dword_0 + 1)
      {
        v29 = v22;
        v28 = a1;
        goto LABEL_15;
      }

      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 systemFontOfSize:11.0 weight:UIFontWeightRegular];
    }

    else
    {
      v26 = objc_opt_self();
      v27 = v22;
      v25 = [v26 systemFontOfSize:14.0 weight:UIFontWeightMedium];
    }

    v28 = v25;
LABEL_15:
    sub_31828(a1);
    [v22 setFont:v28];

    sub_31838(a1);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_30D14(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value];
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value] = result;
  if (v3 != result)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel];
    sub_31848();
    sub_ABAB30();
    v5 = sub_AB9260();

    [v4 setText:v5];

    if (*&v1[v2])
    {
      v6 = 0;
    }

    else
    {
      v6 = v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically];
    }

    return [v1 setHidden:v6];
  }

  return result;
}

id sub_311A8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setNumberOfLines:1];
  v4 = [v1 whiteColor];
  [v2 setTextColor:v4];

  [v2 setTextAlignment:1];
  [v2 setAdjustsFontSizeToFitWidth:1];
  return v2;
}

void sub_312AC()
{
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    Width = CGRectGetWidth(v7);
    [v0 bounds];
    Height = CGRectGetHeight(v8);
    if (Height >= Width)
    {
      Height = Width;
    }

    v5 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v2, Height * 0.5);

    [*&v0[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView] setImage:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_3137C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled) != 1 || (type metadata accessor for CGSize(0), [v0 bounds], v28 = v2, v29 = v3, v26 = 0, v27 = 0, (sub_AB38D0() & 1) == 0))
  {
    v24 = [v0 layer];
    [v24 setShadowOpacity:0.0];
    goto LABEL_8;
  }

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  [v0 bounds];
  Height = CGRectGetHeight(v31);
  if (Height >= Width)
  {
    Height = Width;
  }

  v14 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, Height * 0.5}];
  v15 = [v1 layer];
  v16 = [v14 CGPath];
  [v15 setShadowPath:v16];

  v17 = [v1 layer];
  [v17 setShadowOffset:{0.0, 1.0}];

  v18 = [v1 layer];
  v19 = [objc_opt_self() blackColor];
  v20 = [v19 cgColor];
  v21 = v19;
  if (v20)
  {
    v22 = v20;
    [v18 setShadowColor:v22];

    v23 = [v1 layer];
    [v23 setShadowRadius:2.0];

    v24 = [v1 layer];
    LODWORD(v25) = 1045220557;
    [v24 setShadowOpacity:v25];

LABEL_8:
    return;
  }

  __break(1u);
}

id sub_31670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication21NotificationBadgeViewC5StyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_31748(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3179C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_317F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_31828(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_31838(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_31848()
{
  result = qword_DE82C8;
  if (!qword_DE82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE82C8);
  }

  return result;
}

char *sub_3189C()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView;
  *&v0[v5] = sub_32914();
  v6 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  sub_32A34(&selRef_systemGreenColor);
  *&v0[v6] = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  sub_32A34(&selRef_systemRedColor);
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler] = 0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  v10 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 setAllowsGroupBlending:0];

  v15 = [v12 layer];
  [v15 setAllowsGroupOpacity:0];

  v16 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  v17 = *&v12[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView];
  v18 = [v12 traitCollection];
  if ([v18 horizontalSizeClass] == &dword_0 + 2)
  {
    v19 = [v11 clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v19 = qword_E713C8;
  }

  v20 = v19;

  [v17 setBackgroundColor:v20];
  v21 = [*&v12[v16] layer];
  v22 = [v12 traitCollection];

  [v22 userInterfaceStyle];
  sub_AB92A0();

  v23 = sub_AB9260();

  [v21 setCompositingFilter:v23];

  v24 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  v25 = *&v12[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  v27 = sub_33094();
  v28 = v12;
  *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v25, 64, sub_33070, v26, v27);

  v29 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  v30 = *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v30;

  swift_allocObject();
  *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v32, 64, sub_330E0, v31, v27);

  [v28 addSubview:*&v12[v16]];
  [v28 addSubview:*&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView]];
  [v28 addSubview:*&v12[v24]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

void sub_31D6C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + *a3);
    if (v6)
    {

      v6(v5);
      sub_17654(v6);
    }
  }
}

void sub_31E48(uint64_t a1, uint64_t a2)
{
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9230();
  __chkstk_darwin(v7 - 8);
  v8 = &v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
  if ((*&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName] != a1 || *&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName + 8] != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
    sub_AB9220();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v11 = v2;
    sub_AB9210(v21);
    v12 = *v8;
    v13 = v8[1];

    v22._countAndFlagsBits = v12;
    v22._object = v13;
    sub_AB9200(v22);

    v23._object = 0x8000000000B49D80;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    sub_AB9210(v23);
    sub_AB9240();
    sub_AB3550();
    v14 = sub_AB9320();
    v15 = (v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v16 = *(v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v17 = *(v10 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
    *v15 = v14;
    v15[1] = v18;
    sub_38FB24(v16, v17);

    [v11 setNeedsLayout];
    v19 = [v11 superview];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for PromotionalParallaxContentStackView();
      if (swift_dynamicCastClass())
      {
        sub_34AEA0(0);
      }
    }
  }
}

id sub_320B8()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  objc_msgSendSuper2(&v40, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView] setFrame:{v2, v4, v6, v8}];
  v41.origin.x = v12;
  v41.origin.y = v14;
  v41.size.width = v16;
  v41.size.height = v18;
  Width = CGRectGetWidth(v41);
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  [v19 sizeThatFits:{v16, v18}];
  v21 = v20;
  v22 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [*&v19[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
  v42.origin.y = v14 + 30.0 - v23;
  v42.origin.x = v12;
  v42.size.width = Width;
  v42.size.height = v21;
  v24 = CGRectGetMaxY(v42) + 18.0;
  [*&v19[v22] _baselineOffsetFromBottom];
  v26 = v24 - v25;
  v43.origin.x = v12;
  v43.origin.y = v26;
  v43.size.width = v16;
  v43.size.height = v18;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v28 = v18 - (MinY - CGRectGetMinY(v44));
  v45.origin.x = v12;
  v45.origin.y = v26;
  v45.size.width = v16;
  v45.size.height = v28;
  CGRectGetWidth(v45);
  sub_AB39F0();
  v30 = v29;
  v31 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton];
  [v31 sizeThatFits:{v16, v28}];
  v33 = v32;
  v34 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton];
  [v34 sizeThatFits:{v16, v28}];
  if (v33 > v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  if (v36 > 44.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 44.0;
  }

  v46.origin.x = v12;
  v46.origin.y = v26;
  v46.size.width = v30;
  v46.size.height = v37;
  CGRectGetMaxX(v46);
  v47.origin.x = v12;
  v47.origin.y = v26;
  v47.size.width = v30;
  v47.size.height = v37;
  CGRectGetMinY(v47);
  sub_ABA490();
  [v19 setFrame:?];
  sub_ABA490();
  [v31 setFrame:?];
  sub_ABA490();
  return [v34 setFrame:?];
}

id sub_32474(double a1)
{
  [v1 music_inheritedLayoutInsets];
  if (a1 > 0.0)
  {
    a1 = a1 - v3 - v4;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];

  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  v7 = 0.0;
  [v6 sizeThatFits:{a1, 0.0}];
  v8 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [*&v6[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
  [*&v6[v8] _firstBaselineOffsetFromTop];
  if (a1 > 0.0)
  {
    sub_AB39F0();
    v7 = v9;
  }

  [*&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton] sizeThatFits:{v7, 0.0}];
  return [*&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton] sizeThatFits:{v7, 0.0}];
}

void sub_32698(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView];
  v5 = [v1 traitCollection];
  if ([v5 horizontalSizeClass] == &dword_0 + 2)
  {
    v6 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v6 = qword_E713C8;
  }

  v7 = v6;

  [v4 setBackgroundColor:v7];
  v8 = [v4 layer];
  v9 = [v1 traitCollection];
  [v9 userInterfaceStyle];
  sub_AB92A0();

  v10 = sub_AB9260();

  [v8 setCompositingFilter:v10];

  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  v12 = [v2 traitCollection];
  v13 = [v12 horizontalSizeClass];

  *(v11 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8) = v13 == &dword_0 + 1;
  sub_38FDFC();
}

char *sub_32914()
{
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v0 = qword_E713D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6A28 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v4 = qword_E713D8;
  LOBYTE(v9) = 0;
  *(&v9 + 1) = 1;
  v10 = v2;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  v15 = qword_E713D8;
  v5 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v6 = v4;
  return sub_38F7B8(&v9);
}

void sub_32A34(SEL *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() buttonWithType:0];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v6, 8.0);

  [v4 setBackgroundImage:v7 forState:0];
  v8 = [v5 whiteColor];
  v9 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  v10 = [v8 _colorBlendedWithColor:v9 compositingFilter:kCAFilterPlusD];

  if (v10)
  {
    v11 = _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v10, 8.0);

    [v4 setBackgroundImage:v11 forState:1];
    v12 = [v5 *a1];
    [v4 setTitleColor:v12 forStates:0];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v13 = sub_AB9260();

    [v4 setTitle:v13 forState:0];

    v14 = [v4 titleLabel];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightBold];
      [v15 setFont:v16];
    }

    [v4 setTitleEdgeInsets:{0.0, 8.0, 0.0, 8.0}];
  }

  else
  {
    __break(1u);
  }
}

id sub_32D88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_32ED4(int a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_32F04()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView;
  *(v0 + v5) = sub_32914();
  v6 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  sub_32A34(&selRef_systemGreenColor);
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  sub_32A34(&selRef_systemRedColor);
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_33038()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_33094()
{
  result = qword_DF13D0;
  if (!qword_DF13D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF13D0);
  }

  return result;
}

uint64_t sub_33104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84E0);
  __chkstk_darwin(v8 - 8);
  v10 = (v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84E8);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84F0);
  __chkstk_darwin(v14);
  v16 = v28 - v15;
  *v10 = sub_AB7A00();
  v10[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84F8);
  sub_3355C(a1, a2, a3, a4, v10 + *(v18 + 44));
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_AB5510();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v29)
    {

      sub_AB7A30();
      sub_AB5E90();
      sub_36B0C(v10, v13, &qword_DE84E0);
      v19 = &v13[*(v11 + 36)];
      v20 = v31;
      *(v19 + 4) = v30;
      *(v19 + 5) = v20;
      *(v19 + 6) = v32;
      v21 = v28[2];
      *v19 = v28[1];
      *(v19 + 1) = v21;
      v22 = v29;
      *(v19 + 2) = v28[3];
      *(v19 + 3) = v22;
      v23 = [objc_opt_self() tertiarySystemFillColor];
      v24 = sub_AB7510();
      v25 = sub_AB6AA0();
      sub_36B0C(v13, v16, &qword_DE84E8);
      v26 = &v16[*(v14 + 36)];
      *v26 = v24;
      v26[8] = v25;
      Corner.extraLarge.unsafeMutableAddressor();
      sub_36890();
      View.corner(_:)();
      return sub_12E1C(v16, &qword_DE84F0);
    }

    __break(1u);
  }

  type metadata accessor for Environment(0);
  sub_365F8(&qword_DE8498, type metadata accessor for Environment);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_3355C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8528);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  *v12 = sub_AB6440();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8530);
  sub_33770(a1, a2, a3, a4, &v12[*(v13 + 44)]);
  if (!a1)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v14 = v23;
  if (!v23)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for Environment(0);
    sub_365F8(&qword_DE8498, type metadata accessor for Environment);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v15 = [v23 horizontalSizeClass];

  v16 = v15 == &dword_0 + 1;
  if (v15 == &dword_0 + 1)
  {
    v17 = 0x4040000000000000;
  }

  else
  {
    v17 = 0x4055000000000000;
  }

  if (v16)
  {
    v18 = 0x4036000000000000;
  }

  else
  {
    v18 = 0x4034000000000000;
  }

  v19 = sub_AB6AA0();
  sub_36B0C(v12, a5, &qword_DE8528);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8538);
  v21 = a5 + *(result + 36);
  *v21 = v19;
  *(v21 + 8) = 0x402A000000000000;
  *(v21 + 16) = v17;
  *(v21 + 24) = v18;
  *(v21 + 32) = v17;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_33770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a3;
  v123 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540);
  v120 = *(v8 - 8);
  v121 = v8;
  __chkstk_darwin(v8);
  v124 = &v100 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8548);
  __chkstk_darwin(v119);
  v11 = &v100 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8550);
  __chkstk_darwin(v115);
  v117 = &v100 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8558);
  __chkstk_darwin(v116);
  v118 = &v100 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8560);
  v14 = __chkstk_darwin(v113);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v114 = &v100 - v18;
  __chkstk_darwin(v17);
  v130 = &v100 - v19;
  v160 = JSListenNowMusicSiriUpsell.title.getter();
  v161 = v20;
  sub_36A48();
  v21 = sub_AB6F20();
  v134 = v22;
  v135 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v132 = v24 & 1;
  LOBYTE(v160) = v24 & 1;
  sub_AB6B90();
  sub_AB6C10();
  v131 = sub_AB6C60();

  v129 = swift_getKeyPath();
  v27 = objc_opt_self();
  v28 = [v27 labelColor];
  *(&v128 + 1) = sub_AB7510();
  *&v128 = swift_getKeyPath();
  if (!a1)
  {
    goto LABEL_13;
  }

  v136 = v26;
  v137 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB5510();

  v29 = v170;
  if (!v170)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v170 horizontalSizeClass];

  sub_AB7A30();
  sub_AB5970();
  v107 = v184;
  v108 = v182;
  v105 = v187;
  v106 = v186;
  v178 = 1;
  v177 = v183;
  v176 = v185;
  v160 = JSListenNowMusicSiriUpsell.subtitle.getter();
  v161 = v30;
  v31 = sub_AB6F20();
  v111 = v32;
  v112 = v31;
  v34 = v33;
  v127 = v35;
  v110 = swift_getKeyPath();
  v109 = v34 & 1;
  LOBYTE(v160) = v34 & 1;
  *(&v126 + 1) = sub_AB6B70();
  *&v126 = swift_getKeyPath();
  v36 = [v27 secondaryLabelColor];
  v37 = sub_AB7510();
  v125 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v38 = v170;
  if (!v170)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v170 horizontalSizeClass];

  sub_AB7A30();
  sub_AB5970();
  v102 = v190;
  v103 = v188;
  v101 = v192;
  v104 = v193;
  v175 = 1;
  v174 = v189;
  v173 = v191;
  v39 = swift_allocObject();
  v41 = v122;
  v40 = v123;
  v39[2] = a1;
  v39[3] = v40;
  v39[4] = v41;
  v39[5] = a4;
  __chkstk_darwin(v39);
  *(&v100 - 4) = a1;
  *(&v100 - 3) = v42;
  *(&v100 - 2) = v43;
  *(&v100 - 1) = a4;

  v44 = a4;
  v45 = v124;
  sub_AB7690();
  v46 = sub_AB6B00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!v170)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_AB5690();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  (*(v120 + 32))(v11, v45, v121);
  v55 = &v11[*(v119 + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v170)
  {
    v124 = v37;

    sub_AB5690();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v117;
    sub_36B0C(v11, v117, &qword_DE8548);
    v66 = v65 + *(v115 + 36);
    *v66 = v56;
    *(v66 + 8) = v58;
    *(v66 + 16) = v60;
    *(v66 + 24) = v62;
    *(v66 + 32) = v64;
    *(v66 + 40) = 0;
    v67 = sub_AB7430();
    v68 = sub_AB6AA0();
    v69 = v118;
    sub_36B0C(v65, v118, &qword_DE8550);
    v70 = v69 + *(v116 + 36);
    *v70 = v67;
    *(v70 + 8) = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v170)
    {
      v71 = v164;

      v72 = v114;
      v73 = &v114[*(v113 + 36)];
      v74 = *(sub_AB5E60() + 20);
      v75 = enum case for RoundedCornerStyle.continuous(_:);
      v76 = sub_AB63A0();
      (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
      *v73 = v71;
      *(v73 + 1) = v71;
      *&v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20) + 36)] = 256;
      sub_36B0C(v69, v72, &qword_DE8558);
      v77 = v130;
      sub_36B0C(v72, v130, &qword_DE8560);
      v78 = v178;
      LOBYTE(v72) = v177;
      v79 = v176;
      v80 = v175;
      v81 = v174;
      LODWORD(v123) = v173;
      sub_15F84(v77, v137, &qword_DE8560);
      *(&v139 + 1) = v196[0];
      DWORD1(v139) = *(v196 + 3);
      *(&v140 + 11) = v194;
      HIBYTE(v140) = v195;
      *(a5 + 88) = v78;
      v82 = v107;
      *(a5 + 96) = v108;
      *(a5 + 104) = v72;
      *(a5 + 112) = v82;
      *(a5 + 120) = v79;
      v83 = v105;
      *(a5 + 128) = v106;
      *(a5 + 136) = v83;
      DWORD1(v144) = *&v181[3];
      *(&v144 + 1) = *v181;
      HIBYTE(v145) = v180;
      *(&v145 + 11) = v179;
      *(a5 + 232) = v80;
      v84 = v102;
      *(a5 + 240) = v103;
      *(a5 + 248) = v81;
      *(a5 + 256) = v84;
      *(a5 + 264) = v123;
      *&v138 = v135;
      *(&v138 + 1) = v134;
      LOBYTE(v139) = v132;
      *(&v139 + 1) = v136;
      *&v140 = KeyPath;
      v85 = v104;
      *(a5 + 272) = v101;
      *(a5 + 280) = v85;
      WORD4(v140) = 1;
      BYTE10(v140) = 1;
      *&v141 = v129;
      *(&v141 + 1) = v131;
      v142 = v128;
      v86 = v138;
      v87 = v139;
      v88 = v128;
      *(a5 + 48) = v141;
      *(a5 + 64) = v88;
      v89 = v140;
      *(a5 + 16) = v87;
      *(a5 + 32) = v89;
      *a5 = v86;
      *(a5 + 80) = 0;
      v91 = v111;
      v90 = v112;
      *&v143 = v112;
      *(&v143 + 1) = v111;
      LOBYTE(v77) = v109;
      LOBYTE(v144) = v109;
      v92 = v110;
      *(&v144 + 1) = v127;
      *&v145 = v110;
      WORD4(v145) = 1;
      BYTE10(v145) = 1;
      v146 = v126;
      *&v147 = v125;
      *(&v147 + 1) = v124;
      v93 = v143;
      v94 = v144;
      v95 = v147;
      *(a5 + 192) = v126;
      *(a5 + 208) = v95;
      v96 = v145;
      *(a5 + 160) = v94;
      *(a5 + 176) = v96;
      *(a5 + 144) = v93;
      *(a5 + 224) = 0;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8568);
      v98 = v137;
      sub_15F84(v137, a5 + *(v97 + 96), &qword_DE8560);
      sub_15F84(&v138, &v160, &qword_DE8570);
      sub_15F84(&v143, &v160, &qword_DE8570);
      sub_12E1C(v130, &qword_DE8560);
      sub_12E1C(v98, &qword_DE8560);
      v148[0] = v90;
      v148[1] = v91;
      v149 = v77;
      *v150 = *v181;
      *&v150[3] = *&v181[3];
      v151 = v127;
      v152 = v92;
      v153 = 1;
      v154 = 1;
      v155 = v179;
      v156 = v180;
      v157 = v126;
      v158 = v125;
      v159 = v124;
      sub_12E1C(v148, &qword_DE8570);
      v160 = v135;
      v161 = v134;
      v162 = v132;
      *v163 = v196[0];
      *&v163[3] = *(v196 + 3);
      v164 = v136;
      v165 = KeyPath;
      v166 = 1;
      v167 = 1;
      v168 = v194;
      v169 = v195;
      v170 = v129;
      v171 = v131;
      v172 = v128;
      return sub_12E1C(&v160, &qword_DE8570);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  type metadata accessor for Environment(0);
  sub_365F8(&qword_DE8498, type metadata accessor for Environment);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

double sub_343E8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_34474(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510();
    if (v3)
    {

      v3(v1);
      return sub_17654(v3);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for Environment(0);
    sub_365F8(&qword_DE8498, type metadata accessor for Environment);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_34598())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
  if (v2)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;

    return sub_36C04;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_34670@<X0>(uint64_t a1@<X8>)
{
  JSListenNowMusicSiriUpsell.buttonTitle.getter();
  sub_36A48();
  v2 = sub_AB6F20();
  v4 = v3;
  v6 = v5;
  sub_AB6C80();
  sub_AB6C10();
  sub_AB6C60();

  v7 = sub_AB6E80();
  v9 = v8;
  v11 = v10;

  sub_36B74(v2, v4, v6 & 1);

  sub_AB74B0();
  v12 = sub_AB6E10();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_36B74(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double sub_347B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

double sub_34854@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_348D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_34950@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_349D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_367CC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
  }

  sub_307CC(v1);

  return sub_AB5520();
}

double sub_34AE4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_34B74(uint64_t a1)
{
  v1 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_AB5520();
}

uint64_t sub_34C14()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__width;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__onButtonSelect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__specs;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_34D54()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D0);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__width;
  *&v18 = 0;
  sub_AB54D0();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__onButtonSelect;
  v18 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE83A0);
  sub_AB54D0();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__specs;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE83B0);
  sub_AB54D0();
  (*(v1 + 32))(v0 + v14, v3, v17);
  return v0;
}

uint64_t sub_34FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

id sub_3504C(void *a1)
{
  *(v1 + qword_DE8440) = a1;
  type metadata accessor for Environment(0);
  swift_allocObject();
  v3 = a1;
  v4 = sub_34D54();
  v5 = qword_DE8340;
  *(v1 + qword_DE8340) = v4;
  sub_365F8(&qword_DE8498, type metadata accessor for Environment);
  v6 = v3;
  sub_AB5F20();
  v8 = v7;
  type metadata accessor for JSListenNowMusicSiriUpsell();
  sub_365F8(&qword_DE84A0, type metadata accessor for JSListenNowMusicSiriUpsell);
  v9 = sub_AB5B50();
  v11 = v10;
  v12 = *(v1 + v5);

  v19 = sub_AB5490();

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84A8);
  sub_36640();
  v18 = sub_AB77E0();
  v14 = sub_AB64F0();

  [v14 traitCollection];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5520();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_36784;
  *(v16 + 24) = v15;

  swift_retain_n();
  sub_AB5520();

  return v14;
}

void sub_3536C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_353C0();
  }
}

void sub_353C0()
{
  v1 = sub_AB3430();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v58 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v64);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v12 = __chkstk_darwin(v11 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v20 = *&v0[qword_DE8440];
  v61 = v19;
  v62 = v20;
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v73 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v0, v71, v70);
  v21 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  v22 = *(*(v21 - 8) + 56);
  v63 = v18;
  v22(v18, 1, 1, v21);
  sub_12AFE8();
  v24 = v23;
  sub_15F84(v68, &v65, &unk_DE8E30);
  if (!*(&v66 + 1))
  {
    sub_12E1C(&v65, &unk_DE8E30);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
  v25 = _s30CollectionViewSelectionHandlerVMa();
  v26 = swift_dynamicCast();
  v27 = *(v25 - 8);
  (*(v27 + 56))(v10, v26 ^ 1u, 1, v25);
  if ((*(v27 + 48))(v10, 1, v25) == 1)
  {
LABEL_5:
    sub_12E1C(v10, &qword_E037A0);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v4 + 16))(v15, &v10[*(v25 + 20)], v3);
  sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  v30 = v4;
  (*(v4 + 56))(v15, v28, 1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, !v34))
  {
    sub_12E1C(v15, &unk_DE8E20);
    v41 = 0;
    v42 = v24;
    v43 = v24;
    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  (*(v36 + 8))(ObjectType, v36);
  v39 = v38;
  swift_unknownObjectRelease();
  v40 = v57;
  sub_15F84(v15, v57, &unk_DE8E20);
  if ((*(v30 + 48))(v40, 1, v3) == 1)
  {
    sub_12E1C(v40, &unk_DE8E20);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  else
  {
    (*(v30 + 32))(v56, v40, v3);
    sub_365F8(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
  }

  v42 = v24;
  v44 = swift_getObjectType();
  v45 = v58;
  sub_3B8F68();
  v41 = sub_21CCAC(1, v45, &v65, v44, v39);
  (*(v59 + 8))(v45, v60);
  sub_12E1C(&v65, &qword_DF2BD0);
  sub_12E1C(v15, &unk_DE8E20);
  swift_unknownObjectRelease();
  v43 = v24;
  if (!v24)
  {
LABEL_14:
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      sub_12AFE8();
      v43 = v48;
    }

    else
    {
      v43 = 0;
    }
  }

LABEL_17:
  sub_15F28(v70, &v65);
  sub_15F84(v68, (v7 + 104), &unk_DE8E30);
  v50 = v63;
  v49 = v64;
  sub_15F84(v63, &v7[*(v64 + 28)], &unk_DEA510);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 1;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  v51 = v42;
  sub_2D594(&v65, v7);
  *(v7 + 12) = 0;
  v52 = *v61;
  *(&v66 + 1) = v49;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
  sub_2D604(v7, boxed_opaque_existential_0);
  v54 = v52;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v62, 0, v41, v43, &v65);
  sub_12E1C(v50, &unk_DEA510);
  sub_12E1C(v68, &unk_DE8E30);
  sub_1611C(v70);
  sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v65, &unk_DE8E40);
}

Swift::Void __swiftcall JSListenNowMusicSiriUpsellViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    v5 = [v1 traitCollection];
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = sub_AB5500();
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = v6;
      *(v7 + 48) = v5;

      v9(&v12, 0);

      v10 = [v1 view];
      if (v10)
      {
        v11 = v10;
        [v10 setNeedsLayout];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_35DBC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSListenNowMusicSiriUpsellViewController.traitCollectionDidChange(_:)(v9);
}

Swift::Void __swiftcall JSListenNowMusicSiriUpsellViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_35E70(0, 0, 1);
}

id sub_35E70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    result = [v3 view];
    if (!result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 = result;
    [result bounds];
  }

  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [objc_opt_self() music_defaultLayoutInsetsInView:result];

  sub_ABA530();
  v8 = v7;
  sub_AB64B0();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v3 preferredContentSize];
  if (v10 + v12 != v11)
  {
    [v3 preferredContentSize];
    [v3 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v12 != v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_AB5520();
  }

  return result;
}

void sub_360B0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_35E70(0, 0, 1);
}

uint64_t sub_36174()
{
}

uint64_t sub_361B4(uint64_t a1)
{
}

void sub_36200()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_36238()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_36298()
{
  sub_363CC();
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_DE8398, &qword_DE83A0);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_DE83A8, &unk_DE83B0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_363CC()
{
  if (!qword_DFE850)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DFE850);
    }
  }
}

void sub_3641C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_AB5540();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_36490(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_36548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_365F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_36640()
{
  result = qword_DE84B0;
  if (!qword_DE84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84A8);
    sub_366F8();
    sub_36A00(&qword_DE84C0, &qword_DE84C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE84B0);
  }

  return result;
}

unint64_t sub_366F8()
{
  result = qword_DE84B8;
  if (!qword_DE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE84B8);
  }

  return result;
}

uint64_t sub_3674C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_36794()
{

  return swift_deallocObject();
}

uint64_t sub_367DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_36824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_36890()
{
  result = qword_DE8500;
  if (!qword_DE8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84F0);
    sub_36948();
    sub_36A00(&qword_DE8518, &qword_DE8520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8500);
  }

  return result;
}

unint64_t sub_36948()
{
  result = qword_DE8508;
  if (!qword_DE8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84E8);
    sub_36A00(&qword_DE8510, &qword_DE84E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8508);
  }

  return result;
}

uint64_t sub_36A00(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_36A48()
{
  result = qword_DF2B30;
  if (!qword_DF2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2B30);
  }

  return result;
}

uint64_t sub_36AB4()
{

  return swift_deallocObject();
}

uint64_t sub_36B0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_36B74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_36B84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84F0);
  sub_36890();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_36C1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_36C60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_altText];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled] = 2;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText];
  *v16 = 0;
  v16[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment] = 0;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView] = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  sub_3ECDC(v63);
  v21 = v63[1];
  *v20 = v63[0];
  *(v20 + 1) = v21;
  *(v20 + 4) = v64;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textStackViewInsets];
  *v22 = xmmword_AF8270;
  v22[1] = xmmword_AF8270;
  v23 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView] = 0;
  v24 = OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView;
  type metadata accessor for ShadowBackdropView();
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v25 setUserInteractionEnabled:0];
  v26 = [v25 layer];

  [v26 setZPosition:-1.0];
  *&v4[v24] = v25;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference] = 2;
  v62.receiver = v4;
  v62.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v28 = [v27 traitCollection];
  v29 = v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (v29 == 2)
  {

    v30 = 1.0;
  }

  else
  {
    v31 = v28;
    v32 = [v28 horizontalSizeClass] == &dword_0 + 2;

    v30 = dbl_AF8280[v32];
    if ((v29 & 1) == 0)
    {
      v30 = 0.75;
    }
  }

  sub_45C3A4(v30);
  v33 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v34 = *&v27[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v35 = &v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  result = swift_beginAccess();
  v37 = *(v35 + 4);
  if (v37 >> 62)
  {
    result = sub_ABB060();
    v38 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    v43 = v27;
    goto LABEL_16;
  }

  v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
  if (!v38)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v38 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v39 = v27;
  v40 = v34;

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v42 = sub_36003C(i, v37);
    }

    else
    {
      v42 = *(v37 + 8 * i + 32);
    }

    TextStackView.add(_:)(v42);
  }

LABEL_16:
  v44 = *&v27[v33];

  v45 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v44[v45] = 1;

  v46 = sub_3733C();
  v47 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v46[v47] = 0;

  v48 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  v49 = *&v27[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView];
  result = sub_373B4();
  v51 = v50;
  if (v50 >> 62)
  {
    result = sub_ABB060();
    v52 = result;
    if (result)
    {
LABEL_18:
      if (v52 >= 1)
      {

        for (j = 0; j != v52; ++j)
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v54 = sub_36003C(j, v51);
          }

          else
          {
            v54 = *(v51 + 8 * j + 32);
          }

          TextStackView.add(_:)(v54);
        }

        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
      return result;
    }
  }

  else
  {
    v52 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (v52)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v55 = [v27 contentView];
  [v55 addSubview:*&v27[v48]];

  [v27 insertSubview:*&v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView] atIndex:0];
  v56 = sub_45C560();

  sub_13C80(0, &qword_DE8700);
  v57 = UIImage.init(systemName:pointSize:weight:)(20.0, 0xD000000000000010, 0x8000000000B4A550, 4);
  if (v57)
  {
    v58 = v57;
    v59 = [v57 imageWithRenderingMode:2];
  }

  else
  {
    v59 = 0;
  }

  [v56 setImage:v59 forState:0];

  v60 = *&v27[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
  if (qword_DE6720 != -1)
  {
    swift_once();
  }

  v65[0] = xmmword_DE85C8;
  v65[1] = unk_DE85D8;
  v66 = qword_DE85E8;
  v61 = xmmword_DE85C8;
  UIView.shadow.setter(v65);

  return v27;
}

id sub_3733C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView);
  }

  else
  {
    type metadata accessor for TextStackView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_373B4()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  }

  else
  {
    sub_3EF34(2, v8);
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v3 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000016, 0x8000000000B4A440, v8);

    sub_3F050(v9);
    swift_allocObject();
    v4 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000019, 0x8000000000B4A460, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_AF7C50;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    v6 = *v1;
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    swift_retain_n();

    sub_3F11C(v6);
  }

  sub_3F168(v2);
  return v3;
}

void sub_3758C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (v4 == 2)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v3;
    v7 = [v3 horizontalSizeClass] == &dword_0 + 2;

    v5 = dbl_AF8280[v7];
    if ((v4 & 1) == 0)
    {
      v5 = 0.75;
    }
  }

  sub_45C3A4(v5);
  sub_37650();
}

void sub_37650()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  swift_beginAccess();
  sub_3CA88(v2);
  swift_endAccess();

  v4 = v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference];
  v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference] = 2;
  sub_3CD68(v4);
  v5 = *(v3 + 4);
  v6 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (v5 >> 62)
  {
    v7 = sub_ABB060();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = sub_36003C(i, v5);
    }

    else
    {
      v9 = *(v5 + 8 * i + 32);
    }

    TextStackView.add(_:)(v9);
  }

LABEL_10:

  v10 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = sub_ABA320();
  v14 = sub_373B4();
  v16 = v15;
  v18 = v17;
  if (v13)
  {
    v19 = 1;
  }

  else if (v10 == 2 || (v10 & 1) == 0)
  {
    swift_beginAccess();
    v20 = *(v16 + 120);
    v21 = *(v16 + 112) & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v20) & 0xF;
    }

    if (v21)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = 3;
  }

  swift_beginAccess();
  *(v14 + 88) = v19;
  sub_2EB2A8();
  v22 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  *v22 = v14;
  v22[1] = v16;
  v22[2] = v18;
  sub_3F11C(v23);
}

uint64_t sub_3791C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_title];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v7 = String.trim()();

      v8 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
      swift_beginAccess();
      v9 = *&v3[v8];
      swift_beginAccess();
      v9[7] = v7;

      sub_2EB704();

      v10 = *&v3[OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent];
      if (v10)
      {
        swift_beginAccess();
        v10[7] = v7;

        sub_2EB704();
      }

      else
      {
      }

      sub_37650();
      sub_13C80(0, &qword_DE8ED0);
      v11 = swift_allocObject();
      *(v11 + 16) = v3;
      v12 = v3;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v11);
    }
  }

  return result;
}

uint64_t sub_37AC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_3791C(v4, v5);
}

uint64_t sub_37B14(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_37650();
    sub_13C80(0, &qword_DE8ED0);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_37CA8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 2);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_37650();
    sub_13C80(0, &qword_DE8ED0);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_37EC8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = v2;
    v10 = sub_373B4();

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_38184();
    sub_37650();
    sub_13C80(0, &qword_DE8ED0);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v13 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_38048(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = v2;
      v5 = sub_373B4();

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      sub_38184();
      sub_37650();
      sub_13C80(0, &qword_DE8ED0);
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      v8 = v4;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v7);
    }
  }

  return result;
}

void sub_38184()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v6 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [v6 removeFromSuperview];

    v7 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
LABEL_9:
    v15 = v7;
    [v7 removeFromSuperview];
    goto LABEL_24;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v5 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [*(v4 + 112) addSubview:v5];
  }

  else
  {
    v5 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [v5 removeFromSuperview];
  }

  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8);
    if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle) & 0xFFFFFFFFFFFFLL))
    {
      v12 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8);
      if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText) & 0xFFFFFFFFFFFFLL))
      {
        v7 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
        goto LABEL_9;
      }
    }
  }

  v14 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v15 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
  [*(v14 + 112) addSubview:?];
LABEL_24:
}

uint64_t sub_3838C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = v2;
    sub_373B4();
    v11 = v10;

    v12 = String.trim()();

    swift_beginAccess();
    v11[7] = v12;

    sub_2EB704();

    sub_38184();
    sub_37650();
    sub_13C80(0, &qword_DE8ED0);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v13);
  }
}

uint64_t sub_38508(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  result = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText + 8);
  *v4 = a1;
  v4[1] = a2;
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    v7 = result == a1 && v6 == a2;
    if (!v7 && (sub_ABB3C0() & 1) == 0)
    {
LABEL_12:
      v8 = v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
      swift_beginAccess();
      v9 = *(v8 + 24);

      v10 = String.trim()();
      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();
    }
  }
}

uint64_t sub_3863C(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled];
  v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled] = result;
  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  sub_38184();
  sub_13C80(0, &qword_DE8ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v3);
}

void sub_38720(int a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled) = a1;
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2 || ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  v4 = sub_45C560();
  [v4 setHidden:(v2 & 1) == 0];
}

uint64_t sub_387C4(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled];
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 == 2 || ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
  swift_beginAccess();
  v4 = *&v1[v3];
  result = swift_beginAccess();
  v5 = *(v4 + 120);
  v6 = *(v4 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    v7 = [v1 effectiveUserInterfaceLayoutDirection];
    v8 = *&v1[v3];
    if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v10 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
    v11 = UIFontTextStyleBody;
    if ((v10 & 1) == 0)
    {
      v11 = UIFontTextStyleSubheadline;
    }

    if (v10 == 2)
    {
      v12 = UIFontTextStyleSubheadline;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    sub_13C80(0, &qword_DE6EE0);

    v14 = sub_ABA550();
    v15 = objc_opt_self();
    v16 = [v15 whiteColor];
    v17 = [v15 clearColor];

    if (v2)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *(v18 + 32) = v9;
      *(v18 + 40) = 4;
      *(v18 + 48) = 0;
      v19 = 0x8000000000000000;
      *(v18 + 56) = 0;
      *(v18 + 64) = v14;
      *(v18 + 72) = v7 == &dword_0 + 1;
      v20 = sub_3FB30;
      v17 = 0xEF656C7469546C6CLL;
      v16 = 0x6543726574736F50;
      v14 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v9;
      v18 = 4;
    }

    *&v26 = v16;
    *(&v26 + 1) = v17;
    *&v27 = v20;
    *(&v27 + 1) = v18;
    *&v28 = 0;
    *(&v28 + 1) = v19;
    *&v29 = v14;
    *(&v29 + 1) = 1;
    v30 = xmmword_AF8290;
    swift_beginAccess();
    v22 = v8[3];
    v21 = v8[4];
    v23 = v8[6];
    v31[3] = v8[5];
    v31[4] = v23;
    v31[1] = v22;
    v31[2] = v21;
    v31[0] = v8[2];
    v8[5] = v29;
    v8[6] = xmmword_AF8290;
    v24 = v27;
    v8[2] = v26;
    v8[3] = v24;
    v8[4] = v28;
    sub_2F118(&v26, v25);
    sub_2F174(v31);
    sub_2EB2A8();
    sub_2F174(&v26);
  }

  return result;
}

uint64_t sub_38A9C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled) = a1;
  return sub_387C4(v2);
}

void sub_38AB4(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8];
  if (!a2)
  {
    if (!v4)
    {
      return;
    }

LABEL_10:
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {

      v7 = sub_38C64();
      v8 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v7)))(v13);
      *(v9 + 120) = v3;
      *(v9 + 128) = v4;

      v8(v13, 0);

      v10 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
      [*&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] setContentVerticalAlignment:3];
      v11 = [*&v2[v10] superview];
      if (v11)
      {
      }

      else
      {
        [v2 addSubview:*&v2[v10]];
      }

      return;
    }

    goto LABEL_15;
  }

  if (v4)
  {
    v5 = v3 == a1 && v4 == a2;
    if (v5 || (sub_ABB3C0() & 1) != 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  v12 = sub_38C64();
  [v12 removeFromSuperview];
}

id sub_38C64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v38 - v2;
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v4);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
  }

  else
  {
    v41 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
    SymbolButton.Configuration.init()(v6);
    static SymbolButton.Title.with(_:)(sub_3C818, v42);
    sub_3F974(v42, (v6 + 15));
    v9 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v39 = v9[2];
    v40 = v0;
    v13 = v6[25];
    v14 = v6[26];

    v15 = v11;
    sub_3F9D0(v13, v14);
    v6[25] = v10;
    v6[26] = v11;
    v6[27] = v39;
    v6[28] = v12;
    sub_ABA670();
    v16 = sub_ABA680();
    (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
    sub_3FA14(v3, v6 + v4[9]);
    __asm { FMOV            V0.2D, #20.0 }

    *(v6 + v4[13]) = _Q0;
    v22 = (v6 + v4[15]);
    *v22 = xmmword_AF82A0;
    v22[1] = xmmword_AF82A0;
    v23 = SymbolButton.Configuration.Accessibility.init(automaticallyAdjustsForAccessibility:minimumContentSizeCategory:maximumContentSizeCategory:showsLargeContentViewer:)(0);
    v25 = v24;
    v27 = v26;
    LOBYTE(v14) = v28;
    v29 = v6 + v4[16];

    *v29 = v23 & 1;
    *(v29 + 1) = v25;
    *(v29 + 2) = v27;
    v29[24] = v14 & 1;
    v30 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v31 = SymbolButton.init(configuration:handler:)(v6, 0, 0);
    v32 = swift_allocObject();
    v33 = v40;
    swift_unknownObjectWeakInit();

    v34 = SymbolButton.withProvider(_:)(sub_3FA84, v32);

    v35 = *(v33 + v41);
    *(v33 + v41) = v34;
    v8 = v34;

    v7 = 0;
  }

  v36 = v7;
  return v8;
}

uint64_t sub_38F48(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_38AB4(v4, v5);
}

void sub_38F98(unsigned __int8 a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor) = a1;
  if (v3 != 2)
  {
    v7 = sub_38C64();
    v8 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_12E1C(v6, &unk_DFAAB0);
  }
}

uint64_t sub_390A4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (result == 2)
  {
    if (v3 == 2)
    {
      return result;
    }
  }

  else if (v3 != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  v4 = [v1 traitCollection];
  v5 = v1[v2];
  if (v5 == 2)
  {

    v6 = 1.0;
  }

  else
  {
    v7 = v4;
    v8 = [v4 horizontalSizeClass] == &dword_0 + 2;

    v6 = dbl_AF8280[v8];
    if ((v5 & 1) == 0)
    {
      v6 = 0.75;
    }
  }

  sub_45C3A4(v6);
  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] != 1 || v1[v2] != 2 || (v9 = *(*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128)) == 0 || (v10 = [v9 player], v10, !v10))
  {
    sub_3926C();
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  sub_3F5C0(v11, v1[v2]);
  sub_13C80(0, &qword_DE8ED0);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
}

void sub_3926C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) == 2)
  {
    v4 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = 1;
      *(v10 + 32) = v17;
      *(v10 + 40) = v6;
      *(v10 + 48) = v9;
      v11 = v5;
      v12 = v17;
      v13 = v11;

      sub_379490(v5, 1, sub_3EB7C, v8, sub_3EB9C, v10);

      return;
    }
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_12:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

void sub_3953C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_11;
  }

  v4 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = 1;
    *(v10 + 32) = v17;
    *(v10 + 40) = v6;
    *(v10 + 48) = v9;
    v11 = v5;
    v12 = v17;
    v13 = v11;

    sub_379490(v5, 1, sub_3FC40, v8, sub_3F1F0, v10);

    return;
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_11:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

void sub_397F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_11;
  }

  v4 = (*(&stru_388.reserved2 + (swift_isaMask & *v0)))();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = 1;
    *(v10 + 32) = v17;
    *(v10 + 40) = v6;
    *(v10 + 48) = v9;
    v11 = v5;
    v12 = v17;
    v13 = v11;

    sub_379490(v5, 1, sub_3F2A4, v8, sub_3F2F8, v10);

    return;
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_11:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

uint64_t sub_39AC8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) = a1;
  return sub_390A4(v2);
}

uint64_t sub_39AE0(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment;
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 1952867692;
  }

  else
  {
    v4 = 0x7265746E6563;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v6 = 1952867692;
  }

  else
  {
    v6 = 0x7265746E6563;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      if (v1[v2])
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      sub_3F5C0(v11, v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle]);
      sub_13C80(0, &qword_DE8ED0);
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      v13 = v1;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
    }
  }

  return result;
}

uint64_t sub_39C54(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment) = a1 & 1;
  return sub_39AE0(v2);
}

uint64_t sub_39C70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  [v1 bounds];
  [v4 sizeThatFits:{v5, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = v1[v2];
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v11 = *&v1[v3];
    v12 = [v11 traitCollection];
    [v12 displayScale];
    v14 = v13;

    if (v9 <= 5.99231045e307)
    {
      v15 = v9;
    }

    else
    {
      v15 = 5.99231045e307;
    }

    sub_2E94A4(v18, 0.0, 0.0, v7, v15, v14);
    sub_3F250(v18);
  }

  v16 = [v1 traitCollection];
  [v16 displayScale];

  return sub_AB3A00();
}

void sub_39E1C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize);
  *v3 = a1;
  v3[1] = a2;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v5 = v4[10];
  v6 = v4[11];
  v4[10] = a1;
  v4[11] = a2;
  sub_75614(v5, v6);
  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    v7 = v4[12];
    v8 = v4[13];
    *(v4 + 6) = *v3;
    sub_756F8(v7, v8);
  }
}

void sub_39ED8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler];
    if (v4)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler]);

      v4(a1);
      sub_17654(v4);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    if (v5[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] == 1 && v5[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle] == 2 && *(*&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128))
    {
      v6 = v5;
      v7 = [*(*&v5[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128) player];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_3926C();
    }
  }
}

void sub_3A044(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed);
  v4 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) = a1;
  if (v3 != (a1 & 1))
  {
    v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v6 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = v4;
    sub_76070(v6);
    if (*(v1 + v2) != 1 || *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) != 2 || (v7 = *(v5 + 128)) == 0 || (v8 = [v7 player], v8, !v8))
    {

      sub_3926C();
    }
  }
}

void sub_3A120()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {

      v3(v4);

      sub_17654(v3);
    }
  }
}

id sub_3A204()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_3733C();
    v4 = [v3 superview];

    if (v4)
    {
      return v4;
    }

    v6 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView) superview];
    if (result)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  }

  v7 = *(v0 + v6);

  return v7;
}

uint64_t sub_3A2E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_373B4();
  }

  else
  {
    v4 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
    swift_beginAccess();
    v3 = *(v0 + v4);
  }

  return v3;
}

id sub_3A374()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_3733C();
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  }
}

double sub_3A3B0()
{
  v1 = v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v2 = [v0 traitCollection];
  if (v1 == 2)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_ABA330();

    result = 86.0;
    if (v5)
    {
      return 172.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

id sub_3A4D8()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) == 2)
  {
    return [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
  }

  else
  {
    return 0;
  }
}

id sub_3A534()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) != 1 || *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) != 2)
  {
    return 0;
  }

  result = *(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 128);
  if (result)
  {
    return [result player];
  }

  return result;
}

void sub_3A5A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v198 = sub_ABA620();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_ABA680();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v192 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v6 = __chkstk_darwin(v5 - 8);
  v202 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v193 = &v189 - v9;
  v10 = __chkstk_darwin(v8);
  v194 = &v189 - v11;
  v12 = __chkstk_darwin(v10);
  v201 = &v189 - v13;
  __chkstk_darwin(v12);
  v15 = &v189 - v14;
  v212.receiver = v1;
  v212.super_class = ObjectType;
  objc_msgSendSuper2(&v212, "layoutSubviews");
  v207 = [v1 traitCollection];
  [v207 displayScale];
  v203 = v16;
  v208 = [v1 effectiveUserInterfaceLayoutDirection];
  v17 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView];
  [v17 bounds];
  v209 = v18;
  v211 = v19;
  v21 = v20;
  *&v210 = v22;
  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 8];
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 16];
  *&v199 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 24];
  v26 = [v1 contentView];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v213.origin.x = v28;
  v213.origin.y = v30;
  v213.size.width = v32;
  v213.size.height = v34;
  Width = CGRectGetWidth(v213);
  v36 = [v1 traitCollection];
  v37 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v38 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v195 = v15;
  if (v38 == 2)
  {

    v39 = 1.0;
  }

  else
  {
    v40 = v36;
    v41 = [v36 horizontalSizeClass] == &dword_0 + 2;

    v39 = dbl_AF8280[v41];
    if ((v38 & 1) == 0)
    {
      v39 = 0.75;
    }
  }

  sub_45C3A4(v39);
  v42 = v1[v37];
  v43 = v209;
  v44 = v211;
  if (v42 == 2 || (v42 & 1) != 0)
  {
    swift_beginAccess();
    sub_AB3A00();
    v46 = v45;
  }

  else
  {
    v47 = v207;
    [v207 displayScale];
    sub_AB3A00();
    v49 = v48;
    v50 = [v47 preferredContentSizeCategory];
    v51 = sub_ABA330();

    v52 = 86.0;
    if (v51)
    {
      v52 = 172.0;
    }

    v46 = v49 + v52;
    v44 = v211;
  }

  sub_39E1C(Width, v46);
  sub_76B28(v43, v44, Width, v46);
  v53 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v54 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8];
  v55 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText] & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v54) & 0xF;
  }

  v200 = v55;
  v56 = v1[v37] == 2;
  v205 = v17;
  if (v56)
  {
    v57 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v58 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v59 = &v58[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    swift_beginAccess();
    v60 = *v59;
    *(v59 + 4) = 0;
    *v59 = 0u;
    *(v59 + 1) = 0u;
    v61 = v58;
    v62 = &selRef__authenticateReturningError_;
    v63 = v61;

    [v63 setNeedsLayout];
    v64 = *&v1[v57];
    v65 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v64 + v65) = 1;
    v66 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView];
    [v1 bounds];
    [v66 setFrame:{UIEdgeInsetsInsetRect(v67, v68, v69, v70, 7.0, 7.0)}];
    v71 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView];
    if (v71)
    {
      [v71 setHidden:0];
    }

    v72 = sub_3733C();
    [v72 frame];
    [v72 setFrame:18.0];

    v46 = *&v199;
  }

  else
  {
    v191 = v37;
    [v17 setFrame:{v43, v44, v21, v46}];
    v73 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v74 = qword_DE6710;
    v75 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v76 = v75;
    if (v74 != -1)
    {
      swift_once();
    }

    v77 = xmmword_DE8578;
    v78 = &v76[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    v210 = *(&xmmword_DE8578 + 8);
    v199 = unk_DE8590;
    swift_beginAccess();
    v79 = *v78;
    *v78 = v77;
    *(v78 + 24) = v199;
    *(v78 + 8) = v210;
    v80 = v77;

    [v76 setNeedsLayout];
    v81 = *&v1[v73];
    v82 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v81 + v82) = 2;
    v83 = sub_3733C();
    v190 = v73;
    if (qword_DE6718 != -1)
    {
      swift_once();
    }

    v84 = xmmword_DE85A0;
    v85 = &v83[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    v210 = *(&xmmword_DE85A0 + 8);
    v199 = *&algn_DE85B0[8];
    swift_beginAccess();
    v86 = *v85;
    *v85 = v84;
    *(v85 + 24) = v199;
    *(v85 + 8) = v210;
    v87 = v84;

    [v83 setNeedsLayout];
    v88 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView];
    v89 = 0.0;
    *&v199 = v21;
    [v88 setFrame:{UIEdgeInsetsInsetRect(v43, v44, v21, v46, 7.0, 7.0)}];
    v90 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView];
    v37 = v191;
    if (v90)
    {
      [v90 setHidden:1];
    }

    v91 = v200;
    v92 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
    [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView] setHidden:v200 == 0];
    v93 = 0.0;
    v94 = 0.0;
    v95 = 0.0;
    if (v91)
    {
      sub_373B4();
      v97 = v96;

      v98 = sub_2F48A4(v97, v207, 0, 0);

      swift_bridgeObjectRelease_n();
      v89 = UIEdgeInsetsInsetRect(v209, v44, *&v199, v98, 0.0, 18.0);
      v94 = v99;
    }

    v100 = *(v53 + 1);
    v101 = *v53 & 0xFFFFFFFFFFFFLL;
    if ((v100 & 0x2000000000000000) != 0)
    {
      v101 = HIBYTE(v100) & 0xF;
    }

    if (v101 || (v107 = *&v1[v92], *&v1[v190] == v107))
    {
      *&v210 = v95;
      v102 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
      v62 = &selRef__authenticateReturningError_;
      if (v102 && *(*&v102[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
      {
        v103 = v102;
        [v103 frame];
        CGRectGetWidth(v214);
      }

      v104 = *(v53 + 1);
      v105 = *v53 & 0xFFFFFFFFFFFFLL;
      if ((v104 & 0x2000000000000000) != 0)
      {
        v105 = HIBYTE(v104) & 0xF;
      }

      if (v105)
      {
        v106 = *&v1[v92];
      }

      else
      {
        v106 = *&v1[v190];
      }

      v108 = v106;
      v43 = v209;
      v44 = v211;
      v21 = *&v199;
      sub_ABA490();
      [v108 setFrame:?];

      sub_42AB1C();
      v23 = v43;
      v24 = v44;
      v25 = v21;
      *&v210 = v46;
    }

    else
    {
      [v107 setFrame:{v89, v93, v94, v95}];
      v43 = v209;
      v23 = v209;
      v24 = v44;
      v21 = *&v199;
      v25 = *&v199;
      *&v210 = v46;
      v62 = &selRef__authenticateReturningError_;
    }
  }

  v111 = UIEdgeInsetsInsetRect(v23, v24, v25, v46, 0.0, 12.0);
  v113 = v112;
  v114 = v109;
  if (v1[v37] == 2)
  {
    sub_ABA470();
    v111 = v115;
    v117 = v116;
    v114 = v118;
    v120 = v119;
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView] sizeThatFits:{v109, v110}];
    v120 = v121;
    v215.origin.x = v43;
    v215.origin.y = v44;
    v215.size.width = v21;
    *&v215.size.height = v210;
    MaxY = CGRectGetMaxY(v215);
    v216.origin.x = v111;
    v216.origin.y = v113;
    v216.size.width = v114;
    v216.size.height = v120;
    v123 = MaxY - CGRectGetHeight(v216);
    v44 = v211;
    v117 = v123 + -12.0;
  }

  v124 = *(v53 + 1);
  v125 = *v53 & 0xFFFFFFFFFFFFLL;
  if ((v124 & 0x2000000000000000) != 0)
  {
    v125 = HIBYTE(v124) & 0xF;
  }

  if (v125)
  {
    v126 = sub_3733C();
    v127 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v128 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

    if (v126 != v128)
    {
      [*v127 setFrame:{v111, v117, v114, v120}];
      v129 = v201;
      goto LABEL_58;
    }
  }

  else
  {
    v127 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  }

  v130 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
  if (v130 && *(*&v130[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v131 = v130;
    [v131 frame];
    CGRectGetWidth(v217);

    v44 = v211;
  }

  v132 = *(v53 + 1);
  v133 = *v53 & 0xFFFFFFFFFFFFLL;
  if ((v132 & 0x2000000000000000) != 0)
  {
    v133 = HIBYTE(v132) & 0xF;
  }

  if (v133)
  {
    v134 = sub_3733C();
  }

  else
  {
    v134 = *v127;
  }

  v135 = v134;
  v129 = v201;
  sub_ABA490();
  [v135 setFrame:?];

  sub_42AB1C();
LABEL_58:
  sub_3BAAC(v111, v117, v114, v120);
  v136 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled];
  if (v136 != 2 && (v136 & 1) != 0)
  {
    v137 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
    v138 = [v137 superview];

    if (v138)
    {
      [v138 bringSubviewToFront:*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView]];
    }

    v218.origin.x = v43;
    v218.origin.y = v44;
    v218.size.width = v21;
    v139 = *&v210;
    *&v218.size.height = v210;
    v140 = CGRectGetHeight(v218) * 0.3;
    v219.origin.x = v43;
    v219.origin.y = v44;
    v219.size.width = v21;
    v219.size.height = v139;
    CGRectGetMaxY(v219);
    v220.origin.y = v44;
    v220.origin.x = v43;
    v220.size.width = v21;
    v220.size.height = v139;
    v141 = CGRectGetWidth(v220);
    v142 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView;
    v143 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView];
    [v1 v62[56]];
    sub_ABA490();
    [v143 setFrame:?];

    v144 = *&v1[v142];
    sub_ABA690();
    v145 = v204;
    v146 = *(v204 + 48);
    v147 = v206;
    if (v146(v129, 1, v206))
    {
      sub_12E1C(v129, &unk_DFFBC0);
      v148 = 1;
      v149 = v195;
    }

    else
    {
      v150 = v192;
      (*(v145 + 16))(v192, v129, v147);
      sub_12E1C(v129, &unk_DFFBC0);
      v149 = v195;
      sub_ABA630();
      v147 = v206;
      (*(v145 + 8))(v150, v206);
      v148 = 0;
    }

    v151 = *(v145 + 56);
    v151(v149, v148, 1, v147);
    sub_ABA6A0();

    v62 = &selRef__authenticateReturningError_;
    if (v200)
    {
      v152 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
      v153 = [v152 superview];

      if (v153)
      {
        [v153 bringSubviewToFront:*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView]];
      }

      v154 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView;
      [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView] setFrame:{0.0, 0.0, v141, v140}];
      v155 = *&v1[v154];
      v156 = v193;
      sub_ABA690();
      v157 = v206;
      if (v146(v156, 1, v206))
      {
        sub_12E1C(v156, &unk_DFFBC0);
        v158 = 1;
        v159 = v194;
      }

      else
      {
        v160 = v156;
        v161 = v204;
        v162 = v192;
        (*(v204 + 16))(v192, v160, v157);
        sub_12E1C(v160, &unk_DFFBC0);
        v159 = v194;
        sub_ABA630();
        v157 = v206;
        (*(v161 + 8))(v162, v206);
        v158 = 0;
      }

      v151(v159, v158, 1, v157);
      sub_ABA6A0();
    }
  }

  v163 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled];
  v164 = v204;
  v165 = v205;
  if (v163 != 2 && (v163 & 1) != 0)
  {
    v166 = sub_45C560();
    v167 = [v166 imageForState:0];

    if (v167)
    {
      v168 = sub_38C64();
      v169 = [v168 superview];

      if (!v169)
      {
        [v167 size];
        [v165 v62[56]];
        CGRectGetMinY(v223);
        [v165 v62[56]];
        CGRectGetMinX(v224);
        v188 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
        sub_ABA490();
        [v188 setFrame:?];

        goto LABEL_83;
      }
    }
  }

  v170 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8];
  if (v170)
  {
    if ((v170 & 0x2000000000000000) != 0 ? HIBYTE(v170) & 0xF : *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText] & 0xFFFFFFFFFFFFLL)
    {
      v172 = sub_38C64();
      [v172 frame];

      v173 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
      [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] sizeThatFits:{v21, *&v210}];
      [v165 v62[56]];
      CGRectGetMinY(v221);
      [v165 v62[56]];
      CGRectGetMinX(v222);
      v174 = *&v1[v173];
      [v1 v62[56]];
      sub_ABA490();
      [v174 setFrame:?];

      [*&v1[v173] setUserInteractionEnabled:0];
    }
  }

LABEL_83:
  [v1 v62[56]];
  v176 = v175;
  v178 = v177;
  v180 = v179;
  v182 = v181;
  v183 = v202;
  sub_ABA690();
  if ((*(v164 + 48))(v183, 1, v206))
  {
    sub_12E1C(v183, &unk_DFFBC0);
    v184 = 0.0;
  }

  else
  {
    v185 = v196;
    sub_ABA650();
    sub_12E1C(v183, &unk_DFFBC0);
    sub_ABA610();
    v184 = v186;
    (*(v197 + 8))(v185, v198);
  }

  v187 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v176 curve:{v178, v180, v182, v184}];
  [v1 setFocusEffect:v187];
}

void sub_3BAAC(double a1, double a2, CGFloat a3, double a4)
{
  v5 = v4;
  v10 = sub_3C330();
  [v10 sizeThatFits:{a3, a4}];
  v12 = v11;

  v13 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView;
  [*(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView) setFrame:{a1, a2, a3, v12}];
  v14 = *(v5 + v13);
  v15 = [v14 traitCollection];
  [v15 displayScale];
  v17 = v16;

  if (v12 <= 5.99231045e307)
  {
    v18 = v12;
  }

  else
  {
    v18 = 5.99231045e307;
  }

  sub_2E94A4(v20, 0.0, 0.0, a3, v18, v17);
  sub_3F250(v20);

  v19 = *(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference);
  *(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference) = v20[7] < 2;
  sub_3CD68(v19);
}

id sub_3BBDC(uint64_t *a1, double a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF7C50;
    v11 = objc_opt_self();
    v12 = [v11 blackColor];
    v13 = [v12 colorWithAlphaComponent:a2];

    *(v10 + 32) = v13;
    v14 = [v11 blackColor];
    v15 = [v14 colorWithAlphaComponent:a3];

    *(v10 + 40) = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF82B0;
    v17 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v18) = 1050589266;
    LODWORD(v19) = 1008981770;
    LODWORD(v20) = 1058306785;
    LODWORD(v21) = 1064011039;
    *(v16 + 32) = [v17 initWithControlPoints:v18 :v19 :v20 :v21];
    static Gradient.vertical(colors:locations:interpolations:)(v10, 0, v16, v27);

    v22 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v23 = Gradient.View.init(configuration:)(v27);
    v24 = *(v8 + v4);
    *(v8 + v4) = v23;
    v6 = v23;

    v5 = 0;
  }

  v25 = v5;
  return v6;
}

uint64_t sub_3BF18()
{
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  sub_AB94A0(v10);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v11._countAndFlagsBits = sub_AB92A0();
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_AB94A0(v12);
  sub_ABAF70();
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 34;
  v14._object = 0xE100000000000000;
  sub_AB94A0(v14);
  v15._countAndFlagsBits = 0x223D656C74697420;
  v15._object = 0xE800000000000000;
  sub_AB94A0(v15);

  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_AB94A0(v16);

  v17._countAndFlagsBits = 34;
  v17._object = 0xE100000000000000;
  sub_AB94A0(v17);
  v18._countAndFlagsBits = 0x6C74697462757320;
  v18._object = 0xEB00000000223D65;
  sub_AB94A0(v18);

  sub_ABAD90(21);

  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8);

  v19._countAndFlagsBits = v7;
  v19._object = v8;
  sub_AB94A0(v19);

  v20._countAndFlagsBits = 34;
  v20._object = 0xE100000000000000;
  sub_AB94A0(v20);
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000000B4A4A0;
  sub_AB94A0(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_AB94A0(v22);
  return 0;
}

uint64_t sub_3C168()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = sub_3C330();
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  swift_retain_n();
  sub_2E6210(v11);

  v12 = sub_3733C();
  v13 = *(v1 + v3);
  v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = v13;
  swift_retain_n();
  sub_2E6210(v15);
}

id sub_3C330()
{
  v1 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView);
  }

  else
  {
    v4 = sub_3C6A8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_3C394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_3C168();
}

void (*sub_3C480(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_3C4F4;
}

void sub_3C4F4(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_3C168();
  }

  free(v3);
}

double sub_3C550()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.45, 1.0, 0.0, 1.0);
  result = *v2;
  xmmword_DE8578 = v2[0];
  unk_DE8588 = v2[1];
  qword_DE8598 = v3;
  return result;
}

double sub_3C5C4()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.25, 30.0, 0.0, 4.0);
  result = *v2;
  xmmword_DE85A0 = v2[0];
  *algn_DE85B0 = v2[1];
  qword_DE85C0 = v3;
  return result;
}

double sub_3C634()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.2, 10.0, 0.0, 3.0);
  result = *v2;
  xmmword_DE85C8 = v2[0];
  unk_DE85D8 = v2[1];
  qword_DE85E8 = v3;
  return result;
}

id sub_3C6A8(uint64_t a1)
{
  type metadata accessor for TextStackView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_DE6728 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_DE8610;
  v7[3] = unk_DE8620;
  v7[4] = xmmword_DE8630;
  v7[0] = xmmword_DE85F0;
  v7[1] = unk_DE8600;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v3 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001CLL, 0x8000000000B4A480, v7);
  sub_2F118(v7, &v6);

  v4 = String.trim()();

  swift_beginAccess();
  v3[7] = v4;

  sub_2EB704();
  TextStackView.add(_:)(v3);
  *(a1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent) = v3;

  return v2;
}

void sub_3C818(uint64_t a1)
{
  objc_storeStrong((a1 + 16), UIFontTextStyleCaption2);
  *(a1 + 24) = UIFontWeightBold;
  v2 = [objc_opt_self() whiteColor];

  *(a1 + 56) = v2;
}

void sub_3C88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor];

    if (v4 != 2)
    {
      if (v4)
      {
        sub_3F9D0(*(a2 + 200), *(a2 + 208));
        *(a2 + 200) = xmmword_AF82C0;
        *(a2 + 216) = 0;
        *(a2 + 224) = 0;
        static SymbolButton.Material.with(_:)(sub_3C9D0, &v18);
        v17 = v18;
        v5 = v19;
        v6 = v20;
        v7 = v21;
        v8 = v22;
        sub_3FA8C(*(a2 + 232), *(a2 + 240), *(a2 + 248));
        *(a2 + 232) = v17;
        *(a2 + 248) = v5;
        *(a2 + 256) = v6;
        *(a2 + 264) = v7;
        *(a2 + 272) = v8;
      }

      else
      {
        v9 = SymbolButton.Background.init()();
        v11 = v10;
        v12 = v9;
        v14 = v13;
        v16 = v15;
        sub_3F9D0(*(a2 + 200), *(a2 + 208));
        *(a2 + 200) = v11;
        *(a2 + 208) = v12;
        *(a2 + 216) = v14;
        *(a2 + 224) = v16;
        sub_3FA8C(*(a2 + 232), *(a2 + 240), *(a2 + 248));
        *(a2 + 232) = 1;
        *(a2 + 240) = 0u;
        *(a2 + 256) = 0u;
        *(a2 + 272) = 0;
      }
    }
  }
}

void sub_3C9D0(id *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 effectWithStyle:12];

  *a1 = v3;
  v4 = [v2 effectWithStyle:12];
  v5 = [objc_opt_self() effectForBlurEffect:v4 style:1];

  a1[2] = v5;
}

uint64_t sub_3CA88(void *a1)
{
  v2 = v1;
  v4 = _swiftEmptyArrayStorage;
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 120);
  v7 = *(v5 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v2[1];
  swift_beginAccess();
  v9 = *(v8 + 120);
  v10 = *(v8 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  if (v10)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v11 = v2[2];
  swift_beginAccess();
  v12 = *(v11 + 120);
  v13 = *(v11 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  if (v13)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_ABA320();

  if ((v15 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
LABEL_26:

      v2[4] = v4;
      return result;
    }
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {

    v17 = sub_36003C(0, _swiftEmptyArrayStorage);

    goto LABEL_25;
  }

  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
  {
    v17 = _swiftEmptyArrayStorage[4];

LABEL_25:

    swift_beginAccess();
    *(v17 + 88) = 1;
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v4 = swift_allocObject();
    v4[1] = xmmword_AF82B0;
    *(v4 + 4) = v17;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_3CD68(unsigned __int8 a1)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference];
  if (a1 == 2)
  {
    if (v3 == 2)
    {
      return;
    }

LABEL_8:
    v5 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    sub_3CF2C(v3 & 1);
    swift_endAccess();
    v6 = *(v5 + 4);
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

    TextStackView.removeAll()();
    if (v6 >> 62)
    {
      v8 = sub_ABB060();
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
LABEL_10:
        if (v8 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v8; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = sub_36003C(i, v6);
          }

          else
          {
            v10 = *(v6 + 8 * i + 32);
          }

          TextStackView.add(_:)(v10);
        }
      }
    }

    sub_13C80(0, &qword_DE8ED0);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v12 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v11);

    return;
  }

  if (v3 != 2 && ((v3 ^ a1) & 1) != 0)
  {
    goto LABEL_8;
  }
}

int64_t sub_3CF2C(int64_t result)
{
  v2 = v1 + 4;
  v3 = v1[4];
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4 == 1)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = sub_36003C(0, v3);
        goto LABEL_6;
      }

      if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        v5 = *(v3 + 32);

LABEL_6:
        swift_beginAccess();
        *(v5 + 88) = 3;
        sub_2EB2A8();
      }

      __break(1u);
      goto LABEL_32;
    }

    if (v4 > 2)
    {
      if (v4 == 3 && (result & 1) == 0)
      {
LABEL_10:
        v3 = v1;
        if (sub_2F32AC())
        {
LABEL_14:

          v8 = *v3;
          swift_beginAccess();
          *(v8 + 88) = 2;
          sub_2EB2A8();
          v9 = *(v3 + 8);
          swift_beginAccess();
          *(v9 + 88) = 1;
          sub_2EB2A8();
          v10 = *(v3 + 16);
          swift_beginAccess();
          *(v10 + 88) = 1;
          return sub_2EB2A8();
        }

        if (!(*v2 >> 62))
        {
          v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
          v7 = __OFSUB__(v6, 1);
          result = v6 - 1;
          if (!v7)
          {
LABEL_13:
            sub_2E5F34(result);
            goto LABEL_14;
          }

          goto LABEL_34;
        }

LABEL_32:
        v20 = sub_ABB060();
        v7 = __OFSUB__(v20, 1);
        result = v20 - 1;
        if (!v7)
        {
          goto LABEL_13;
        }

LABEL_34:
        __break(1u);
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v11 = result;
  v12 = sub_ABB060();
  result = sub_ABB060();
  if (v12 != 1)
  {
    v13 = result <= 2;
    LOBYTE(result) = v11;
    if (!v13)
    {
      if (sub_ABB060() != 3 || (v11 & 1) != 0)
      {
LABEL_25:
        v17 = *v1;
        swift_beginAccess();
        *(v17 + 88) = 1;
        goto LABEL_27;
      }

      result = sub_ABB060();
      if (result)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

LABEL_23:
    if (result)
    {
      v14 = v1[1];
      swift_beginAccess();
      *(v14 + 88) = 2;
      v15 = v1;
      sub_2EB2A8();
      v16 = *v1;
LABEL_28:
      swift_beginAccess();
      *(v16 + 88) = 1;
      sub_2EB2A8();
      v19 = v15[2];
      swift_beginAccess();
      *(v19 + 88) = 1;
      return sub_2EB2A8();
    }

    v18 = *v1;
    swift_beginAccess();
    *(v18 + 88) = 2;
LABEL_27:
    v15 = v1;
    sub_2EB2A8();
    v16 = v1[1];
    goto LABEL_28;
  }

  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

double sub_3D1E8()
{
  sub_3D22C(&v1);
  xmmword_DE8610 = v3;
  unk_DE8620 = v4;
  xmmword_DE8630 = v5;
  result = *&v2;
  xmmword_DE85F0 = v1;
  unk_DE8600 = v2;
  return result;
}

double sub_3D22C@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 24.0;
  *(a1 + 64) = xmmword_AF8290;
  return result;
}

id sub_3D31C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = TextAttributes.toDictionary(tintColor:)(v1);

  sub_3E856C(v2);
  v3 = objc_allocWithZone(NSMutableAttributedString);
  v4 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v6 = [v3 initWithString:v4 attributes:isa];

  v7 = [objc_allocWithZone(NSTextAttachment) init];
  v8 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline];
  v9 = sub_AB9260();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    v11 = v10;
    v12 = [v0 whiteColor];
    v13 = [v11 imageWithTintColor:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setImage:v13];

  String.nonBreakingSpace.unsafeMutableAddressor();
  v14 = objc_allocWithZone(NSAttributedString);

  v15 = sub_AB9260();
  v16 = [v14 initWithString:v15];

  [v6 appendAttributedString:v16];
  v17 = [objc_opt_self() attributedStringWithAttachment:v7];
  [v6 appendAttributedString:v17];

  return v6;
}

id sub_3D63C()
{

  v0 = sub_AB9260();

  return v0;
}

void sub_3D70C()
{

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler));

  sub_3F11C(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents));

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
}

uint64_t type metadata accessor for PosterCell()
{
  result = qword_DE86C0;
  if (!qword_DE86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_3DBD8()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 128);
  v2 = v1;
  return v1;
}

void *sub_3DC14()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_3DC50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler);
  v5 = *v4;
  *v4 = a1;
  v4[1] = a2;
  sub_17654(v5);
  v6 = *(v3 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v9 = *(v6 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  *v8 = sub_3EBD4;
  v8[1] = v7;

  sub_17654(v9);
}

uint64_t sub_3DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, uint64_t))
{
  v13 = *v8;
  v14 = (v13 + *a5);
  v15 = *v14;
  v16 = v14[1];
  *v14 = a1;
  v14[1] = a2;
  a6(v15, v16);
  v17 = (*(v13 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + *a7);
  v18 = *v17;
  v19 = v17[1];
  *v17 = a1;
  v17[1] = a2;
  a8(a1, a2);

  return (a6)(v18, v19);
}

void *sub_3DEA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView);
  v2 = v1;
  return v1;
}

void sub_3DED4()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 layer];
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, 4.0}];
  v11 = [v10 CGPath];

  [v9 setShadowPath:v11];
  v12 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v12, v14, 0.225, 6.0, 0.0, 4.0);
  UIView.shadow.setter(v14);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3E18C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_3E1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterCell.DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PosterCell.DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_3E390(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_3E3AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_3E3D8()
{
  result = qword_DE86F8;
  if (!qword_DE86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE86F8);
  }

  return result;
}

void sub_3E42C(char a1, char a2)
{
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_45CBB4();
      v4 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
      [*&v3[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView] setAlpha:1.0];
      [*&v3[v4] setHidden:0];
    }
  }
}

void sub_3E4C0(char a1, uint64_t a2, void *a3, int a4, id a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E71608);
    v11 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v12 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_37B8E0(a3);
      v16 = sub_425E68(v14, v15, aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_ABB520();
      v19 = sub_425E68(v17, v18, aBlock);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_0, oslog, v12, "Error loading %s: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 1;
      }

      v24 = [objc_opt_self() sharedApplication];
      aBlock[4] = a8;
      aBlock[5] = a7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = a9;
      v25 = _Block_copy(aBlock);

      [v24 _performBlockAfterCATransactionCommits:v25];
      _Block_release(v25);
    }
  }
}

void sub_3E7C8(char a1, uint64_t a2, void *a3, int a4, id a5, char a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71608);
    v9 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v10 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_37B8E0(a3);
      v14 = sub_425E68(v12, v13, aBlock);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_ABB520();
      v17 = sub_425E68(v15, v16, aBlock);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_0, oslog, v10, "Error loading %s: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 1;
      }

      v21 = [objc_opt_self() sharedApplication];
      aBlock[4] = sub_3F310;
      aBlock[5] = a7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_121;
      v22 = _Block_copy(aBlock);

      [v21 _performBlockAfterCATransactionCommits:v22];
      _Block_release(v22);
    }
  }
}

void sub_3EADC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_45C850();
  }
}

void sub_3EB30(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_3EB44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_3EBDC@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = UIFontTextStyleBody;
  if ((a2 & 1) == 0)
  {
    v5 = UIFontTextStyleSubheadline;
  }

  if (a2 == 2)
  {
    v6 = UIFontTextStyleSubheadline;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  sub_13C80(0, &qword_DE6EE0);
  v8 = sub_ABA560();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 clearColor];

  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = a1;
  *(a3 + 24) = 4;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v8;
  *(a3 + 56) = 1;
  result = 20.0;
  *(a3 + 64) = xmmword_AF7C40;
  return result;
}

double sub_3ECDC@<D0>(uint64_t *a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  *&v13[0] = [v3 whiteColor];
  *(&v13[0] + 1) = [v3 clearColor];
  v13[1] = xmmword_AF82D0;
  v14 = 0;
  v15 = 0;
  v16 = v2;
  v17 = 1;
  v18 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x6543726574736F50, 0xEF656C7469546C6CLL, v13);

  sub_3EBDC(3u, 2, v10);
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000012, 0x8000000000B4A4F0, v10);

  sub_3EBDC(3u, 2, v11);
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B4A510, v11);

  sub_3EBDC(3u, 2, v12);
  swift_allocObject();
  v7 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000011, 0x8000000000B4A530, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_AF82E0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

void sub_3EF34(char a1@<W0>, void *a2@<X8>)
{
  v3 = UIFontTextStyleHeadline;
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v4 = 0;
    v5 = 0x4041000000000000;
  }

  else
  {
    v3 = UIFontTextStyleTitle1;
    v4 = 3;
    v5 = 0x404E000000000000;
  }

  v6 = v5;
  v7 = v3;
  sub_13C80(0, &qword_DE6EE0);
  v8 = sub_ABA550();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 clearColor];

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v4;
  a2[3] = 4;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = v8;
  a2[7] = 1;
  a2[8] = v6;
  a2[9] = 0;
}

double sub_3F050@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 clearColor];
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 22.0;
  *(a1 + 64) = xmmword_AF82F0;
  return result;
}

uint64_t sub_3F11C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3F168(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3F1B4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_91Tm()
{

  return swift_deallocObject();
}

void sub_3F32C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled) = 2;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView) = 0;
  v11 = v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
  sub_3ECDC(v18);
  v12 = v18[1];
  *v11 = v18[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v19;
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textStackViewInsets);
  *v13 = xmmword_AF8270;
  v13[1] = xmmword_AF8270;
  v14 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView) = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView;
  type metadata accessor for ShadowBackdropView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v16 setUserInteractionEnabled:0];
  v17 = [v16 layer];

  [v17 setZPosition:-1.0];
  *(v0 + v15) = v16;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference) = 2;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3F5C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = a2;
  v7 = (v3 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents);
  swift_beginAccess();
  v8 = *v7;
  v9 = UIFontTextStyleSubheadline;
  v10 = UIFontTextStyleBody;
  if ((a2 & 1) == 0)
  {
    v10 = UIFontTextStyleSubheadline;
  }

  if (v6 != 2)
  {
    v9 = v10;
  }

  v11 = v9;
  sub_13C80(0, &qword_DE6EE0);

  v12 = sub_ABA550();
  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  v15 = [v13 clearColor];

  *&v40 = v14;
  *(&v40 + 1) = v15;
  *&v41 = a1;
  *(&v41 + 1) = 4;
  v42 = 0uLL;
  *&v43 = v12;
  *(&v43 + 1) = 1;
  v44 = xmmword_AF8290;
  swift_beginAccess();
  v17 = v8[3];
  v16 = v8[4];
  v18 = v8[6];
  v45[3] = v8[5];
  v45[4] = v18;
  v45[1] = v17;
  v45[2] = v16;
  v45[0] = v8[2];
  v8[5] = v43;
  v8[6] = xmmword_AF8290;
  v19 = v41;
  v8[2] = v40;
  v8[3] = v19;
  v8[4] = v42;
  sub_2F118(&v40, v51);
  sub_2F174(v45);
  sub_2EB2A8();
  sub_2F174(&v40);

  v20 = v7[1];

  sub_3EBDC(a1, a2, v49);
  swift_beginAccess();
  v22 = v20[3];
  v21 = v20[4];
  v23 = v20[6];
  v46[3] = v20[5];
  v46[4] = v23;
  v46[1] = v22;
  v46[2] = v21;
  v46[0] = v20[2];
  v24 = v49[4];
  v20[5] = v49[3];
  v20[6] = v24;
  v25 = v49[1];
  v20[2] = v49[0];
  v20[3] = v25;
  v20[4] = v49[2];
  sub_2F118(v49, v51);
  sub_2F174(v46);
  sub_2EB2A8();
  sub_2F174(v49);

  v26 = v7[2];

  sub_3EBDC(a1, a2, v50);
  swift_beginAccess();
  v28 = v26[3];
  v27 = v26[4];
  v29 = v26[6];
  v47[3] = v26[5];
  v47[4] = v29;
  v47[1] = v28;
  v47[2] = v27;
  v47[0] = v26[2];
  v30 = v50[4];
  v26[5] = v50[3];
  v26[6] = v30;
  v31 = v50[1];
  v26[2] = v50[0];
  v26[3] = v31;
  v26[4] = v50[2];
  sub_2F118(v50, v51);
  sub_2F174(v47);
  sub_2EB2A8();
  sub_2F174(v50);

  v32 = sub_373B4();

  sub_3EF34(a2, v51);
  swift_beginAccess();
  v34 = v32[3];
  v33 = v32[4];
  v35 = v32[6];
  v48[3] = v32[5];
  v48[4] = v35;
  v48[1] = v34;
  v48[2] = v33;
  v48[0] = v32[2];
  v36 = v51[4];
  v32[5] = v51[3];
  v32[6] = v36;
  v37 = v51[1];
  v32[2] = v51[0];
  v32[3] = v37;
  v32[4] = v51[2];
  sub_2F118(v51, &v39);
  sub_2F174(v48);
  sub_2EB2A8();
  sub_2F174(v51);
}

uint64_t sub_3F938()
{

  return swift_deallocObject();
}

uint64_t sub_3F9D0(uint64_t a1, char *a2)
{
  if (a2 != &dword_0 + 1)
  {
  }

  return result;
}

uint64_t sub_3FA14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_3FA8C(char *result, void *a2, void *a3)
{
  if (result != &dword_0 + 1)
  {
  }

  return result;
}

uint64_t sub_3FAE8()
{

  return swift_deallocObject();
}

unint64_t sub_3FB3C()
{
  result = qword_DE6EF0;
  if (!qword_DE6EF0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6EF0);
  }

  return result;
}

id sub_3FB94()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "setNeedsLayout");
}

void sub_3FC44(uint64_t a1)
{
  *(a1 + qword_DE8710) = 0;
  *(a1 + qword_DE8718) = 1;
  v1 = a1 + qword_DE8720;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (a1 + qword_DE8730);
  *v2 = 0;
  v2[1] = 0;
  *(a1 + qword_DE8738) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_3FCEC()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_3FD7C()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_3FDF4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for JSBrickViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DE8730];
  v12 = *&v1[qword_DE8730];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_DE8720];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_3FF1C(void *a1)
{
  v1 = a1;
  sub_3FDF4();
}

void sub_3FF64(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for JSBrickViewController();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_AB92A0();
    v8 = v7;
    if (v6 == sub_AB92A0() && v8 == v9)
    {

      return;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      return;
    }
  }

  else
  {
  }

  [v1 loadViewIfNeeded];
  v12 = *&v1[qword_DFE2F8];
  if (v12)
  {
    v13 = [v12 collectionViewLayout];
    v14 = &v1[qword_DE8720];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_400E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_3FF64(a3);
}

void *sub_40154()
{
  v1 = qword_DE8710;
  if (*&v0[qword_DE8710])
  {
    v2 = *&v0[qword_DE8710];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8D88);
    swift_allocObject();
    v2 = sub_2BF1F0(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_40220@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSBrickModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_7;
  }

  type metadata accessor for JSBrickItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v54);
    goto LABEL_8;
  }

  v8 = (v7 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText);
  v9 = v7;
  swift_beginAccess();
  v11 = *v8;
  v10 = v8[1];
  swift_unknownObjectRetain();

  v12 = IndexPath.safeItem.getter();
  v13 = sub_27EEA4(v9);
  v15 = v14;
  v16 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
  swift_beginAccess();
  v17 = *(v9 + v16) != 0;
  *&v23 = v13;
  *(&v23 + 1) = v15;
  *&v24 = v11;
  *(&v24 + 1) = v10;
  *&v25 = v9;
  *(&v25 + 1) = v12;
  LOBYTE(v26) = v17;
  *(&v26 + 1) = 5122;
  *(&v26 + 1) = 0;
  *&v27 = 0;
  *(&v27 + 1) = v9;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31[0] = 1;
  *&v31[8] = 0;
  *&v31[16] = 0;
  v31[24] = 2;
  v32[0] = v13;
  v32[1] = v15;
  v32[2] = v11;
  v32[3] = v10;
  v32[4] = v9;
  v32[5] = v12;
  v33 = v17;
  v34 = 5122;
  v35 = 0;
  v36 = 0;
  v37 = v9;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44 = 2;
  sub_465F4(&v23, &v54);
  sub_46650(v32);
  v51 = v29;
  v52 = v30;
  v53[0] = *v31;
  *(v53 + 9) = *&v31[9];
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v45 = v23;
  v46 = v24;
  UIScreen.Dimensions.size.getter(*&v23);
  v60 = v51;
  v61 = v52;
  v62[0] = v53[0];
  *(v62 + 9) = *(v53 + 9);
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v54 = v45;
  v55 = v46;
LABEL_8:
  v18 = v61;
  a1[6] = v60;
  a1[7] = v18;
  a1[8] = v62[0];
  *(a1 + 137) = *(v62 + 9);
  v19 = v57;
  a1[2] = v56;
  a1[3] = v19;
  v20 = v59;
  a1[4] = v58;
  a1[5] = v20;
  result = *&v54;
  v22 = v55;
  *a1 = v54;
  a1[1] = v22;
  return result;
}

uint64_t sub_404BC(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:1];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  [a1 setClipsToBounds:0];
  type metadata accessor for BrickCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for TitleSectionHeaderView();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

char *sub_40610(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9230();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3B333C(a2);
  v8 = *&v2[qword_DFE2F0];
  v121 = v2;
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v9 results];

  if (!v10)
  {
    goto LABEL_15;
  }

  isa = sub_AB3770().super.isa;
  v12 = [v10 itemAtIndexPath:isa];

  if (!v12)
  {
    LOBYTE(v15) = 0;
    v120 = 0;
    v30 = 0;
LABEL_16:
    v31 = 0;
    v32 = 0;
LABEL_17:
    v33 = 0xE000000000000000;
    goto LABEL_18;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_15:
    LOBYTE(v15) = 0;
    v120 = 0;
    v30 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 contentItem];
  if (!v15)
  {
LABEL_82:
    v24 = 0;
    v27 = 0;
    goto LABEL_83;
  }

  v16 = MPModelStoreBrowseContentItem.kind.getter();
  v18 = v16;
  if (v17 <= 6u)
  {
    if (v17 <= 2u)
    {
      if (!v17)
      {
        v65 = [v16 artist];
        if (v65)
        {
          v66 = v65;
          v67 = [v65 name];
          if (v67)
          {
            v68 = v67;
            v24 = sub_AB92A0();
            v69 = v18;
            v27 = v70;

            v57 = v69;
            v58 = 0;
            goto LABEL_73;
          }
        }

        v16 = v18;
        v17 = 0;
        goto LABEL_80;
      }

      if (v17 != 1)
      {
        goto LABEL_80;
      }

      v53 = [v16 name];
      if (!v53)
      {
        v16 = v18;
        v17 = 1;
        goto LABEL_80;
      }

      v54 = v53;
      v24 = sub_AB92A0();
      v55 = v18;
      v27 = v56;

      v57 = v55;
      v58 = 1;
    }

    else
    {
      if (v17 != 3)
      {
        if (v17 != 4)
        {
          if (v17 == 5)
          {
            v19 = v15;
            v20 = sub_4A3F1C();
            v21 = sub_10AC20(v18);

            LOBYTE(v15) = [v18 shouldVisuallyDisableFor:v21];
            v22 = [v18 name];
            if (v22)
            {
              v23 = v22;
              v24 = sub_AB92A0();
              v25 = v18;
              v27 = v26;

              v28 = v25;
              v29 = 5;
LABEL_59:
              sub_3EB30(v28, v29);

LABEL_83:
              v31 = 0;
              v32 = 0;
              goto LABEL_84;
            }

            v96 = v18;
            v97 = 5;
            goto LABEL_77;
          }

          goto LABEL_80;
        }

        v85 = [v16 name];
        if (v85)
        {
          v86 = v85;
          v24 = sub_AB92A0();
          v87 = v18;
          v27 = v88;

          v57 = v87;
          v58 = 4;
          goto LABEL_73;
        }

        v16 = v18;
        v17 = 4;
LABEL_80:
        sub_3EB30(v16, v17);
        goto LABEL_81;
      }

      v77 = [v16 shortName];
      if (!v77)
      {
        v16 = v18;
        v17 = 3;
        goto LABEL_80;
      }

      v78 = v77;
      v24 = sub_AB92A0();
      v79 = v18;
      v27 = v80;

      v57 = v79;
      v58 = 3;
    }

LABEL_73:
    sub_3EB30(v57, v58);

    LOBYTE(v15) = 0;
    goto LABEL_83;
  }

  if (v17 > 8u)
  {
    switch(v17)
    {
      case 9u:
        v81 = v16;
        v82 = [v16 title];
        if (v82)
        {
          v83 = v82;
          v24 = sub_AB92A0();
          v27 = v84;
        }

        else
        {
          v24 = 0;
          v27 = 0;
        }

        v98 = [v81 tagline];
        if (v98)
        {
          v99 = v98;
          v31 = sub_AB92A0();
          v32 = v100;

          sub_3EB30(v81, 9);
          LOBYTE(v15) = 0;
          goto LABEL_84;
        }

        v57 = v81;
        v58 = 9;
        goto LABEL_73;
      case 0xCu:
        v19 = v15;
        v89 = sub_4A3F1C();
        v90 = sub_10AC20(v18);

        LOBYTE(v15) = [v18 shouldVisuallyDisableFor:v90];
        v91 = [v18 title];
        if (v91)
        {
          v92 = v91;
          v24 = sub_AB92A0();
          v93 = v18;
          v27 = v94;

          v28 = v93;
          v29 = 12;
          goto LABEL_59;
        }

        v96 = v18;
        v97 = 12;
LABEL_77:
        sub_3EB30(v96, v97);

        goto LABEL_82;
      case 0xFFu:
LABEL_81:

        LOBYTE(v15) = 0;
        goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (v17 == 7)
  {
    v19 = v15;
    v71 = sub_4A3F1C();
    v72 = sub_10AC20(v18);

    LOBYTE(v15) = [v18 shouldVisuallyDisableFor:v72];
    v73 = [v18 title];
    if (v73)
    {
      v74 = v73;
      v24 = sub_AB92A0();
      v75 = v18;
      v27 = v76;

      v28 = v75;
      v29 = 7;
      goto LABEL_59;
    }

    v96 = v18;
    v97 = 7;
    goto LABEL_77;
  }

  if (v17 != 8)
  {
    goto LABEL_80;
  }

  v118 = v15;
  v119 = v14;
  v59 = sub_4A3F1C();
  v60 = sub_10AC20(v18);

  LOBYTE(v15) = [v18 shouldVisuallyDisableFor:v60];
  v61 = v18;
  v62 = [v18 title];
  if (v62)
  {
    v63 = v62;
    v117 = sub_AB92A0();
    v27 = v64;
  }

  else
  {
    v117 = 0;
    v27 = 0;
  }

  v14 = v119;
  if ([v61 episodeNumber] < 1)
  {
    sub_3EB30(v61, 8);

    v31 = 0;
    v32 = 0;
  }

  else
  {
    sub_AB9220();
    v122._countAndFlagsBits = 0x2065646F73697045;
    v122._object = 0xE800000000000000;
    sub_AB9210(v122);
    [v61 episodeNumber];
    sub_AB91F0();
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    sub_AB9210(v123);
    sub_AB9240();
    sub_AB3550();
    v31 = sub_AB9320();
    v32 = v95;
    sub_3EB30(v61, 8);
  }

  v24 = v117;
LABEL_84:
  v101 = [v14 headlineText];
  if (v101)
  {
    v102 = v101;
    v103 = sub_AB92A0();
    v105 = v104;

    v106 = HIBYTE(v105) & 0xF;
    if ((v105 & 0x2000000000000000) == 0)
    {
      v106 = v103 & 0xFFFFFFFFFFFFLL;
    }

    if (v106)
    {
      v31 = v103;
      v32 = v105;
    }
  }

  v107 = [v14 titleText];
  if (v107)
  {
    v108 = v107;
    v109 = sub_AB92A0();
    v12 = v110;

    v111 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v111 = v109 & 0xFFFFFFFFFFFFLL;
    }

    if (v111)
    {
      v24 = v109;
    }

    else
    {
      v12 = v27;
    }
  }

  else
  {
    v12 = v27;
  }

  v30 = v24;
  v112 = [v14 subtitleText];
  if (!v112)
  {
    swift_unknownObjectRelease();
LABEL_106:
    v120 = 0;
    goto LABEL_17;
  }

  v113 = v112;
  v114 = sub_AB92A0();
  v33 = v115;

  if ((v33 & 0x2000000000000000) != 0)
  {
    v116 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v116 = v114 & 0xFFFFFFFFFFFFLL;
  }

  swift_unknownObjectRelease();
  if (!v116)
  {

    goto LABEL_106;
  }

  v120 = v114;
LABEL_18:
  v7[OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled] = v15;
  sub_412254();
  if (v32)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  v35 = 0xE000000000000000;
  if (!v32)
  {
    v32 = 0xE000000000000000;
  }

  v36 = &v7[OBJC_IVAR____TtC16MusicApplication9BrickCell_headline];
  *v36 = v34;
  v36[1] = v32;

  v37 = String.trim()();

  v38 = &v7[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  v39 = *&v7[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  swift_beginAccess();
  v39[7] = v37;

  sub_2EB704();

  v40 = v7;
  [v40 setNeedsLayout];
  if (v12)
  {
    v41 = v30;
  }

  else
  {
    v41 = 0;
  }

  if (v12)
  {
    v35 = v12;
  }

  v42 = &v40[OBJC_IVAR____TtC16MusicApplication9BrickCell_title];
  *v42 = v41;
  *(v42 + 1) = v35;

  v43 = String.trim()();

  v44 = *(v38 + 1);
  swift_beginAccess();
  v44[7] = v43;

  sub_2EB704();

  [v40 setNeedsLayout];
  v45 = &v40[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitle];
  *v45 = v120;
  v45[1] = v33;

  v46 = *(v38 + 2);

  v47 = String.trim()();
  swift_beginAccess();
  v46[7] = v47;

  sub_2EB704();

  [v40 setNeedsLayout];

  v48 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v48 = v120 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v48 != 0;
  v50 = v40[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle];
  v40[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle] = v49;
  if (v49 != v50)
  {
    [v40 setNeedsLayout];
  }

  sub_74DD4([v121 viewBackgroundColor]);
  v51 = [v121 viewBackgroundColor];
  [v40 setBackgroundColor:v51];

  return v40;
}

char *sub_41178(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_40610(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_412A0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  type metadata accessor for BrickCell();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(v3 + qword_DFE2F0);
  if (!v7)
  {
    v15 = a2;
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v8 = a2;
  v9 = v7;
  v10 = [v9 results];

  if (!v10)
  {
    goto LABEL_9;
  }

  isa = sub_AB3770().super.isa;
  v12 = [v10 itemAtIndexPath:isa];

  if (!v12)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v14 = [v13 backgroundArtworkCatalog];
  swift_unknownObjectRelease();
LABEL_10:
  v16 = *&v6[OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog];
  *&v6[OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog] = v14;
  v17 = v14;

  v18 = v17;
  sub_74EA4(v14);
  [v6 setNeedsLayout];
}

void sub_41440(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_412A0(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_41564(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v93 = *(v6 - 8);
  v94 = v6;
  __chkstk_darwin(v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  __chkstk_darwin(v9);
  v91 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v15 - 8);
  v95 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v18 = __chkstk_darwin(v17 - 8);
  v92 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v23 = &v81 - v22;
  sub_3B41F4(a1, a2);
  v24 = *&v2[qword_DFE2F0];
  if (!v24)
  {
    return;
  }

  type metadata accessor for JSBrickModelResponse();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    return;
  }

  v26 = v25;
  v82 = v8;
  v90 = v23;
  v87 = v12;
  v27 = *(v25 + OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults);
  v28 = v24;
  isa = sub_AB3770().super.isa;
  v30 = [v27 itemAtIndexPath:isa];

  type metadata accessor for JSBrickItem();
  v89 = swift_dynamicCastClass();
  if (v89)
  {
    v85 = v28;
    v86 = v30;
    v31 = [v26 results];
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = sub_AB3770().super.isa;
    v34 = [v32 itemAtIndexPath:v33];

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    v36 = v98;
    v88 = v35;
    if (!v35)
    {
      swift_unknownObjectRelease();
      v88 = 0;
    }

    v84 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v37 = sub_AB3770().super.isa;
    v38 = [a1 cellForItemAtIndexPath:v37];

    if (v38)
    {
      sub_D5958(v104);
      v83 = v104[0];
      v81 = v104[1];
      v39 = v105;
      v40 = v106;
      v41 = v107;

      v42 = v81;
      v43 = v83;
    }

    else
    {
      v39 = 0;
      v41 = 0;
      v43 = 0uLL;
      v40 = 255;
      v42 = 0uLL;
    }

    v108[0] = v43;
    v108[1] = v42;
    v109 = v39;
    v110 = v40;
    v111 = v41;
    v44 = v3;
    PresentationSource.init(viewController:position:)(v44, v108, v103);
    v45 = _s30CollectionViewSelectionHandlerVMa();
    v102[3] = v45;
    v102[4] = &off_CF7E60;
    v46 = __swift_allocate_boxed_opaque_existential_0(v102) + *(v45 + 20);
    v47 = a2;
    v48 = v97;
    *&v81 = *(v36 + 16);
    (v81)(v46, v47, v97);
    swift_unknownObjectWeakInit();
    *&v83 = v88;
    v49 = [v83 contentItem];
    v50 = [v49 innerObject];

    sub_2641C4(v50, v44, static MPMediaLibraryFilteringOptions.none.getter, 0, v90);
    sub_15F84(v102, &v99, &unk_DE8E30);
    if (*(&v100 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v51 = v95;
      v52 = swift_dynamicCast();
      v53 = *(v45 - 8);
      (*(v53 + 56))(v51, v52 ^ 1u, 1, v45);
      v54 = (*(v53 + 48))(v51, 1, v45);
      v55 = v96;
      if (v54 != 1)
      {
        (v81)(v96, v51 + *(v45 + 20), v48);
        sub_2D6C0(v51, _s30CollectionViewSelectionHandlerVMa);
        v56 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_12E1C(&v99, &unk_DE8E30);
      v51 = v95;
      (*(*(v45 - 8) + 56))(v95, 1, 1, v45);
      v55 = v96;
    }

    sub_12E1C(v51, &qword_E037A0);
    v56 = 1;
LABEL_18:
    (*(v36 + 56))(v55, v56, 1, v48);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v58 = Strong, sub_12B2FC(), v60 = v59, v62 = v61, v58, v60))
    {
      ObjectType = swift_getObjectType();
      (*(v62 + 8))(ObjectType, v62);
      v65 = v64;
      swift_unknownObjectRelease();
      v66 = v92;
      sub_15F84(v55, v92, &unk_DE8E20);
      v67 = v98;
      if ((*(v98 + 48))(v66, 1, v48) == 1)
      {
        sub_12E1C(v66, &unk_DE8E20);
        v99 = 0u;
        v100 = 0u;
        v101 = 0;
      }

      else
      {
        (*(v67 + 32))(v91, v66, v48);
        sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath);
        sub_ABAD10();
      }

      v69 = swift_getObjectType();
      v70 = v82;
      sub_3B8F68();
      v68 = sub_21CCAC(1, v70, &v99, v69, v65);
      (*(v93 + 8))(v70, v94);
      sub_12E1C(&v99, &qword_DF2BD0);
      sub_12E1C(v55, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v55, &unk_DE8E20);
      v68 = 0;
    }

    v71 = swift_unknownObjectWeakLoadStrong();
    if (v71)
    {
      v72 = v71;
      sub_12AFE8();
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    sub_15F28(v103, &v99);
    sub_15F84(v102, (v14 + 104), &unk_DE8E30);
    v75 = v87;
    v76 = v90;
    sub_15F84(v90, &v14[*(v87 + 28)], &unk_DEA510);
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 8) = 1;
    *(v14 + 9) = 0;
    *(v14 + 10) = 0;
    *(v14 + 11) = 0;
    sub_2D594(&v99, v14);
    *(v14 + 12) = v88;
    v77 = *v84;
    *(&v100 + 1) = v75;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v99);
    sub_2D604(v14, boxed_opaque_existential_0);
    v79 = v83;
    v80 = v77;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v89, 0, v68, v74, &v99);

    sub_12E1C(v76, &unk_DEA510);
    sub_1611C(v103);
    sub_2D6C0(v14, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v99, &unk_DE8E40);

    sub_12E1C(v102, &unk_DE8E30);
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_41FD0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_41564(v11, v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_420E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  v8._rawValue = &off_CEFD98;
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  v9 = sub_ABB140(v8, v13);

  if (v9)
  {

    return sub_3DE1D8(a1, a4);
  }

  else
  {
    v11 = sub_3B4574(a2, a3, a4);
    sub_44374(v11);
    return v11;
  }
}

char *sub_4219C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20._rawValue = &off_CEFD98;
  v25._countAndFlagsBits = v13;
  v25._object = v15;
  if (sub_ABB140(v20, v25))
  {
    v21 = sub_3DE1D8(v16, v12);
  }

  else
  {
    v21 = sub_3B4574(v13, v15, v12);

    sub_44374(v21);
  }

  (*(v10 + 8))(v12, v9);

  return v21;
}

void sub_42340()
{
  v1 = *(v0 + qword_DE8728);
  v2 = type metadata accessor for JSBrickModelRequest();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel;
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = 0;
  *&v3[v4] = v1;
  v195.receiver = v3;
  v195.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v195, "init");
  sub_13C80(0, &unk_DE8E60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v191 = v6;
  v9 = [v8 kindWithModelClass:ObjCClassFromMetadata];
  [v191 setItemKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_AF85D0;
  *(v190 + 32) = sub_AB92A0();
  *(v190 + 40) = v10;
  *(v190 + 48) = sub_AB92A0();
  *(v190 + 56) = v11;
  *(v190 + 64) = sub_AB92A0();
  *(v190 + 72) = v12;
  *(v190 + 80) = sub_AB92A0();
  *(v190 + 88) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v188 = inited;
  v189 = inited + 32;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_AF85E0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF4EC0;
  *(v20 + 32) = sub_AB92A0();
  *(v20 + 40) = v21;
  isa = sub_AB9740().super.isa;
  v193 = objc_opt_self();
  v23 = [v193 propertySetWithProperties:isa];

  sub_13C80(0, &qword_DE8E78);
  v24 = sub_10F414();
  v25 = [v23 propertySetByCombiningWithPropertySet:v24];

  v26 = swift_getObjCClassFromMetadata();
  v27 = [v26 requiredLibraryNavigationHandlerProperties];
  v28 = [v26 requiredStoreNavigationHandlerProperties];
  v29 = [v27 propertySetByCombiningWithPropertySet:v28];

  v30 = [v25 propertySetByCombiningWithPropertySet:v29];
  *(v18 + 48) = v30;
  *(v18 + 56) = sub_AB92A0();
  *(v18 + 64) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF4EC0;
  *(v32 + 32) = sub_AB92A0();
  *(v32 + 40) = v33;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_AF4EC0;
  *(v34 + 32) = sub_AB92A0();
  *(v34 + 40) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  v38 = sub_AB9740().super.isa;
  v39 = [v193 propertySetWithProperties:v38];

  *(v34 + 48) = v39;
  sub_96EA4(v34);
  swift_setDeallocating();
  sub_12E1C(v34 + 32, &unk_DE8E80);
  v40 = objc_allocWithZone(MPPropertySet);
  v41 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v42 = sub_AB8FD0().super.isa;

  v43 = [v40 initWithProperties:v41 relationships:v42];

  sub_13C80(0, &qword_DE8E90);
  v44 = sub_10F414();
  v45 = [v43 propertySetByCombiningWithPropertySet:v44];

  v46 = swift_getObjCClassFromMetadata();
  v47 = [v46 requiredLibraryNavigationHandlerProperties];
  v48 = [v46 requiredStoreNavigationHandlerProperties];
  v49 = [v47 propertySetByCombiningWithPropertySet:v48];

  v50 = [v45 propertySetByCombiningWithPropertySet:v49];
  *(v18 + 72) = v50;
  *(v18 + 80) = sub_AB92A0();
  *(v18 + 88) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_AF85F0;
  *(v52 + 32) = sub_AB92A0();
  *(v52 + 40) = v53;
  *(v52 + 48) = sub_AB92A0();
  *(v52 + 56) = v54;
  v55 = sub_AB9740().super.isa;
  v56 = [v193 propertySetWithProperties:v55];

  sub_13C80(0, &unk_E04570);
  v57 = sub_10F414();
  v58 = [v56 propertySetByCombiningWithPropertySet:v57];

  v59 = swift_getObjCClassFromMetadata();
  v60 = [v59 requiredLibraryNavigationHandlerProperties];
  v61 = [v59 requiredStoreNavigationHandlerProperties];
  v62 = [v60 propertySetByCombiningWithPropertySet:v61];

  v63 = [v58 propertySetByCombiningWithPropertySet:v62];
  *(v18 + 96) = v63;
  *(v18 + 104) = sub_AB92A0();
  *(v18 + 112) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_AF4EC0;
  *(v65 + 32) = sub_AB92A0();
  *(v65 + 40) = v66;
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_AF4EC0;
  *(v67 + 32) = sub_AB92A0();
  *(v67 + 40) = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_AF4EC0;
  *(v69 + 32) = sub_AB92A0();
  *(v69 + 40) = v70;
  v71 = sub_AB9740().super.isa;
  v72 = [v193 propertySetWithProperties:v71];

  *(v67 + 48) = v72;
  sub_96EA4(v67);
  swift_setDeallocating();
  sub_12E1C(v67 + 32, &unk_DE8E80);
  v73 = objc_allocWithZone(MPPropertySet);
  v74 = sub_AB9740().super.isa;

  v75 = sub_AB8FD0().super.isa;

  v76 = [v73 initWithProperties:v74 relationships:v75];

  sub_13C80(0, &unk_DE8EA0);
  v77 = sub_10F414();
  v78 = [v76 propertySetByCombiningWithPropertySet:v77];

  v79 = swift_getObjCClassFromMetadata();
  v80 = [v79 requiredLibraryNavigationHandlerProperties];
  v81 = [v79 requiredStoreNavigationHandlerProperties];
  v82 = [v80 propertySetByCombiningWithPropertySet:v81];

  v83 = [v78 propertySetByCombiningWithPropertySet:v82];
  *(v18 + 120) = v83;
  *(v18 + 128) = sub_AB92A0();
  *(v18 + 136) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_AF4EC0;
  *(v85 + 32) = sub_AB92A0();
  *(v85 + 40) = v86;
  v87 = sub_AB9740().super.isa;
  v88 = [v193 propertySetWithProperties:v87];

  sub_13C80(0, &unk_E087D0);
  v89 = sub_10F414();
  v90 = [v88 propertySetByCombiningWithPropertySet:v89];

  v91 = swift_getObjCClassFromMetadata();
  v92 = [v91 requiredLibraryNavigationHandlerProperties];
  v93 = [v91 requiredStoreNavigationHandlerProperties];
  v94 = [v92 propertySetByCombiningWithPropertySet:v93];

  v95 = [v90 propertySetByCombiningWithPropertySet:v94];
  *(v18 + 144) = v95;
  *(v18 + 152) = sub_AB92A0();
  *(v18 + 160) = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_AF8600;
  *(v97 + 32) = sub_AB92A0();
  *(v97 + 40) = v98;
  *(v97 + 48) = sub_AB92A0();
  *(v97 + 56) = v99;
  *(v97 + 64) = sub_AB92A0();
  *(v97 + 72) = v100;
  *(v97 + 80) = sub_AB92A0();
  *(v97 + 88) = v101;
  *(v97 + 96) = sub_AB92A0();
  *(v97 + 104) = v102;
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_AF4EC0;
  *(v103 + 32) = sub_AB92A0();
  *(v103 + 40) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_AF4EC0;
  *(v105 + 32) = sub_AB92A0();
  *(v105 + 40) = v106;
  v107 = sub_AB9740().super.isa;
  v108 = [v193 propertySetWithProperties:v107];

  *(v103 + 48) = v108;
  sub_96EA4(v103);
  swift_setDeallocating();
  sub_12E1C(v103 + 32, &unk_DE8E80);
  v109 = objc_allocWithZone(MPPropertySet);
  v110 = sub_AB9740().super.isa;

  v111 = sub_AB8FD0().super.isa;

  v112 = [v109 initWithProperties:v110 relationships:v111];

  sub_13C80(0, &unk_DE8EB0);
  v113 = sub_10F414();
  v114 = [v112 propertySetByCombiningWithPropertySet:v113];

  v115 = swift_getObjCClassFromMetadata();
  v116 = [v115 requiredLibraryNavigationHandlerProperties];
  v117 = [v115 requiredStoreNavigationHandlerProperties];
  v118 = [v116 propertySetByCombiningWithPropertySet:v117];

  v119 = [v114 propertySetByCombiningWithPropertySet:v118];
  *(v18 + 168) = v119;
  *(v18 + 176) = sub_AB92A0();
  *(v18 + 184) = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_AF85F0;
  *(v121 + 32) = sub_AB92A0();
  *(v121 + 40) = v122;
  *(v121 + 48) = sub_AB92A0();
  *(v121 + 56) = v123;
  v124 = swift_initStackObject();
  *(v124 + 16) = xmmword_AF4EC0;
  *(v124 + 32) = sub_AB92A0();
  *(v124 + 40) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_AF4EC0;
  *(v126 + 32) = sub_AB92A0();
  *(v126 + 40) = v127;
  v128 = sub_AB9740().super.isa;
  v129 = [v193 propertySetWithProperties:v128];

  *(v124 + 48) = v129;
  sub_96EA4(v124);
  swift_setDeallocating();
  sub_12E1C(v124 + 32, &unk_DE8E80);
  v130 = objc_allocWithZone(MPPropertySet);
  v131 = sub_AB9740().super.isa;

  v132 = sub_AB8FD0().super.isa;

  v133 = [v130 initWithProperties:v131 relationships:v132];

  sub_13C80(0, &unk_DE9C00);
  v134 = sub_10F414();
  v135 = [v133 propertySetByCombiningWithPropertySet:v134];

  v136 = swift_getObjCClassFromMetadata();
  v137 = [v136 requiredLibraryNavigationHandlerProperties];
  v138 = [v136 requiredStoreNavigationHandlerProperties];
  v139 = [v137 propertySetByCombiningWithPropertySet:v138];

  v140 = [v135 propertySetByCombiningWithPropertySet:v139];
  *(v18 + 192) = v140;
  *(v18 + 200) = sub_AB92A0();
  *(v18 + 208) = v141;
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_AF85F0;
  *(v142 + 32) = sub_AB92A0();
  *(v142 + 40) = v143;
  *(v142 + 48) = sub_AB92A0();
  *(v142 + 56) = v144;
  v145 = swift_initStackObject();
  *(v145 + 16) = xmmword_AF4EC0;
  *(v145 + 32) = sub_AB92A0();
  *(v145 + 40) = v146;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_AF4EC0;
  *(v147 + 32) = sub_AB92A0();
  *(v147 + 40) = v148;
  v149 = sub_AB9740().super.isa;
  v150 = [v193 propertySetWithProperties:v149];

  *(v145 + 48) = v150;
  sub_96EA4(v145);
  swift_setDeallocating();
  sub_12E1C(v145 + 32, &unk_DE8E80);
  v151 = objc_allocWithZone(MPPropertySet);
  v152 = sub_AB9740().super.isa;

  v153 = sub_AB8FD0().super.isa;

  v154 = [v151 initWithProperties:v152 relationships:v153];

  sub_13C80(0, &unk_DE8EC0);
  v155 = sub_10F414();
  v156 = [v154 propertySetByCombiningWithPropertySet:v155];

  v157 = swift_getObjCClassFromMetadata();
  v158 = [v157 requiredLibraryNavigationHandlerProperties];
  v159 = [v157 requiredStoreNavigationHandlerProperties];
  v160 = [v158 propertySetByCombiningWithPropertySet:v159];

  v161 = [v156 propertySetByCombiningWithPropertySet:v160];
  *(v18 + 216) = v161;
  *(v18 + 224) = sub_AB92A0();
  *(v18 + 232) = v162;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_AF4EC0;
  *(v163 + 32) = sub_AB92A0();
  *(v163 + 40) = v164;
  v165 = sub_AB9740().super.isa;
  v166 = [v193 propertySetWithProperties:v165];

  sub_13C80(0, &unk_E03780);
  v167 = sub_10F414();
  v168 = [v166 propertySetByCombiningWithPropertySet:v167];

  v169 = swift_getObjCClassFromMetadata();
  v170 = [v169 requiredLibraryNavigationHandlerProperties];
  v171 = [v169 requiredStoreNavigationHandlerProperties];
  v172 = [v170 propertySetByCombiningWithPropertySet:v171];

  v173 = [v168 propertySetByCombiningWithPropertySet:v172];
  *(v18 + 240) = v173;
  sub_96EA4(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v174 = objc_allocWithZone(MPPropertySet);
  v175 = sub_AB9740().super.isa;

  v176 = sub_AB8FD0().super.isa;

  v177 = [v174 initWithProperties:v175 relationships:v176];

  *(v188 + 48) = v177;
  sub_96EA4(v188);
  swift_setDeallocating();
  sub_12E1C(v189, &unk_DE8E80);
  v178 = objc_allocWithZone(MPPropertySet);
  v179 = sub_AB9740().super.isa;

  v180 = sub_AB8FD0().super.isa;

  v181 = [v178 initWithProperties:v179 relationships:v180];

  [v191 setItemProperties:v181];
  v182 = *&v192[qword_DFE2F0];
  v183 = *&v191[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
  *&v191[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = v182;
  v184 = v182;

  v185 = swift_allocObject();
  *(v185 + 16) = v192;
  aBlock[4] = sub_46564;
  aBlock[5] = v185;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_3;
  v186 = _Block_copy(aBlock);
  v187 = v192;

  [v191 performWithResponseHandler:v186];
  _Block_release(v186);
}

uint64_t sub_43A18(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v3);
}

void sub_43AE8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    v6 = v4;
    sub_3B4724(a2);
  }
}

void sub_43B54(char a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isViewLoaded])
  {
    return;
  }

  v28 = qword_DE8718;
  if (v2[qword_DE8718] == (a1 & 1))
  {
    return;
  }

  [v2 loadViewIfNeeded];
  v33 = qword_DFE2F8;
  v8 = *&v2[qword_DFE2F8];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v32 = "";
  v10 = sub_AB9260();
  v11 = [v9 indexPathsForVisibleSupplementaryElementsOfKind:v10];

  v12 = sub_AB9760();
  v31 = *(v12 + 16);
  if (!v31)
  {
LABEL_16:

    return;
  }

  v13 = 0;
  v29 = (v5 + 8);
  v30 = v5 + 16;
  while (v13 < *(v12 + 16))
  {
    v14 = v12;
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13;
    v16 = v4;
    (*(v5 + 16))(v7, v15, v4);
    [v2 loadViewIfNeeded];
    v17 = *&v2[v33];
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = v2;
    v19 = v17;
    v20 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v22 = [v19 supplementaryViewForElementKind:v20 atIndexPath:isa];

    if (v22)
    {
      type metadata accessor for TitleSectionHeaderView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23;
        v25 = v18[v28];
        v26 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
        swift_beginAccess();
        v24[v26] = v25;
        if (v25 != v24[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
        {
          v24[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v25;
          [v24 setNeedsLayout];
        }

        v4 = v16;
        (*v29)(v7, v16);

        goto LABEL_8;
      }
    }

    v4 = v16;
    (*v29)(v7, v16);
LABEL_8:
    v2 = v18;
    ++v13;
    v12 = v14;
    if (v31 == v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_43EA0()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 traitCollection];
    v12 = [v11 preferredContentSizeCategory];

    LOBYTE(v11) = sub_ABA330();
    if ((v11 & 1) == 0)
    {
      v13 = [v0 traitCollection];
      sub_45B2C4(v13, v4, v6, v8, v10);
    }

    [v2 music_inheritedLayoutInsets];

    v14 = [v0 traitCollection];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v15, v8);
    [v14 displayScale];
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetWidth(v16);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_44084()
{
  v1 = &v0[qword_DE8720];
  if (v0[qword_DE8720 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      sub_43EA0();
      v5 = v4;
      [v3 bounds];
      v6 = [v0 traitCollection];
      v7 = sub_412B34(v6, v5);
      v9 = v8;

      *v1 = v7;
      *(v1 + 1) = v9;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_44158(double a1, double a2)
{
  v5 = qword_DE8738;
  v6 = *&v2[qword_DE8738];
  if (v6)
  {
    v7 = *&v2[qword_DE8738];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
    swift_beginAccess();
    v8[v9] = 1;
    v7 = v8;
    [v7 setHidden:1];
    [v7 setUserInteractionEnabled:0];
    v10 = *&v2[direct field offset for BrowseCollectionViewController.textDrawingCache];
    v11 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
    swift_beginAccess();
    *&v7[v11] = v10;

    v12 = [v2 view];
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = v12;
    [v12 addSubview:v7];

    v14 = *&v2[v5];
    *&v2[v5] = v7;

    v6 = 0;
  }

  v15 = v6;
  sub_44374(v7);
  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 music_inheritedLayoutInsets];
    v19 = v18;
    v21 = v20;

    [v7 setFrame:{0.0, 0.0, a1 - v19 - v21, a2}];
    [v7 layoutIfNeeded];

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_44374(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v3 - 8);
  v94 = &v93 - v4;
  v5 = sub_ABA680();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v1;
  v96 = *&v1[qword_DE8728];
  v9 = (v96 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle);
  swift_beginAccess();
  v10 = v9[1];
  v93 = v8;
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  swift_beginAccess();
  *v13 = v11;
  *(v13 + 1) = v12;

  sub_182B30();
  v14 = (v96 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
  swift_beginAccess();
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v17 = v15;
  *(v17 + 1) = v16;

  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v19 = String.trim()();

  swift_beginAccess();
  v18[7] = v19;

  sub_2EB704();
  [a1 setNeedsLayout];
  v20 = (v96 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_subtitle);
  swift_beginAccess();
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  swift_beginAccess();
  *v24 = v22;
  *(v24 + 1) = v23;

  sub_183500();
  v25 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_contentArtwork;
  v26 = v96;
  swift_beginAccess();
  v27 = *(v26 + v25);
  if (v27)
  {
    v28 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = ICStoreArtworkInfoCropStyleBoundedBox;
    }

    v33 = v27;
    v34 = v29;
    v35 = JSArtwork.artworkCatalog(defaultCropStyle:)(v30);

    v36 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
    swift_beginAccess();
    v37 = *&a1[v36];
    *&a1[v36] = v35;
    v38 = v35;

    sub_184BB4();
    v39 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
    swift_beginAccess();
    v40 = v33[v39];
    v41 = (v6 + 16);
    if (v40)
    {
      v42 = v93;
      sub_ABA670();
      v43 = *v41;
    }

    else
    {
      v44 = UIView.Corner.small.unsafeMutableAddressor();
      v43 = *v41;
      v42 = v93;
      (*v41)(v93, v44, v5);
    }

    v45 = v94;
    v43(v94, v42, v5);
    (*(v6 + 56))(v45, 0, 1, v5);
    TitleSectionHeaderView.imageArtworkCornerTreatment.setter(v45);
    (*(v6 + 8))(v42, v5);
  }

  else
  {
    v31 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
    swift_beginAccess();
    v32 = *&a1[v31];
    *&a1[v31] = 0;

    sub_184BB4();
  }

  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v46 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v46 = xmmword_AF8610;
  v46[16] = 1;
  sub_1848CC();
  v47 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v47 = xmmword_AF8620;
  v47[16] = 1;
  sub_1846A0();
  [a1 setBackgroundColor:0];
  v48 = v95;
  v49 = v95[qword_DE8718];
  v50 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  a1[v50] = v49;
  if (v49 != a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v49;
    [a1 setNeedsLayout];
  }

  [a1 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0, v93}];
  v51 = a1;
  v52 = [v51 _collectionView];
  v53 = v51;
  if (v52)
  {
    v54 = v52;
    v55 = sub_AB9260();
    v56 = NSSelectorFromString(v55);

    if ([v54 respondsToSelector:v56])
    {
      v57 = [v54 _currentTouch];
      if (v57)
      {
        v58 = v57;
        [v57 locationInView:v51];
        v60 = v59;
        v62 = v61;

        v109.size.width = 0.0;
        v109.size.height = 0.0;
        v109.origin.x = v60;
        v109.origin.y = v62;
        v110 = CGRectInset(v109, -20.0, -20.0);
        x = v110.origin.x;
        y = v110.origin.y;
        width = v110.size.width;
        height = v110.size.height;

        v67 = height;
        v68 = width;
        v69 = y;
        v70 = x;
        goto LABEL_27;
      }
    }

    v53 = v54;
  }

  [v51 bounds];
LABEL_27:
  v107[0] = v51;
  *&v107[1] = v70;
  *&v107[2] = v69;
  *&v107[3] = v68;
  *&v107[4] = v67;
  v108 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v107, 15, v99);
  v103[0] = v99[0];
  v103[1] = v99[1];
  v104 = v100;
  v105 = v101;
  v106 = v102;
  v71 = v51;
  PresentationSource.init(viewController:position:)(v48, v103, v98);
  v72 = (v96 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_accessoryButtonTitle);
  swift_beginAccess();
  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v75 = v73;
  }

  else
  {
    v74 = 0;
    v75 = 0xE000000000000000;
  }

  TitleSectionHeaderView.systemStyleButtonTitle.setter(v74, v75);

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_15F28(v98, v97);
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    sub_17704(v97, v78 + 24);
    v79 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler];
    swift_beginAccess();
    v80 = *v79;
    *v79 = sub_46498;
    v79[1] = v78;

    sub_17654(v80);
  }

  else
  {
    v81 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler];
    swift_beginAccess();
    v82 = *v81;
    *v81 = 0;
    v81[1] = 0;
    sub_17654(v82);
  }

  v83 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_containerDetailLink;
  v84 = v96;
  swift_beginAccess();
  v85 = *(v84 + v83);
  if (v85)
  {
    sub_15F28(v98, v97);
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    sub_17704(v97, v86 + 24);
    v87 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler];
    swift_beginAccess();
    v88 = *v87;
    *v87 = sub_46520;
    v87[1] = v86;
    v89 = v85;

    sub_17654(v88);
    sub_184414();
  }

  else
  {
    v90 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler];
    swift_beginAccess();
    v91 = *v90;
    *v90 = 0;
    v90[1] = 0;
    sub_17654(v91);
    sub_184414();
  }

  return sub_1611C(v98);
}

void sub_44D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = sub_AB3430();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v21 - 8);
  v23 = &v53 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  v61 = v9;
  v62 = a4;
  v58 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v59 = *&v25[qword_DE8728];
  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v66, 0, sizeof(v66));
  v67 = 0;
  (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
  sub_15F84(v66, &v63, &unk_DE8E30);
  if (*(&v64 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v27 = _s30CollectionViewSelectionHandlerVMa();
    v28 = swift_dynamicCast();
    v29 = *(v27 - 8);
    (*(v29 + 56))(v14, v28 ^ 1u, 1, v27);
    if ((*(v29 + 48))(v14, 1, v27) != 1)
    {
      (*(v7 + 16))(v20, &v14[*(v27 + 20)], v6);
      sub_2D6C0(v14, _s30CollectionViewSelectionHandlerVMa);
      v30 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v63, &unk_DE8E30);
    v31 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  }

  sub_12E1C(v14, &qword_E037A0);
  v30 = 1;
LABEL_7:
  (*(v7 + 56))(v20, v30, 1, v6);
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32 && (v33 = v32, sub_12B2FC(), v35 = v34, v37 = v36, v33, v35))
  {
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(ObjectType, v37);
    v40 = v39;
    swift_unknownObjectRelease();
    sub_15F84(v20, v18, &unk_DE8E20);
    if ((*(v7 + 48))(v18, 1, v6) == 1)
    {
      sub_12E1C(v18, &unk_DE8E20);
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
    }

    else
    {
      (*(v7 + 32))(v54, v18, v6);
      sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v42 = swift_getObjectType();
    v43 = v55;
    sub_3B8F68();
    v41 = sub_21CCAC(1, v43, &v63, v42, v40);
    (*(v56 + 8))(v43, v57);
    sub_12E1C(&v63, &qword_DF2BD0);
    sub_12E1C(v20, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v20, &unk_DE8E20);
    v41 = 0;
  }

  v44 = v62;
  v45 = swift_unknownObjectWeakLoadStrong();
  v60 = v25;
  if (v45)
  {
    v46 = v45;
    sub_12AFE8();
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  sub_15F28(v44, &v63);
  sub_15F84(v66, (v11 + 104), &unk_DE8E30);
  v49 = v61;
  sub_15F84(v23, &v11[*(v61 + 28)], &unk_DEA510);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v63, v11);
  *(v11 + 12) = 0;
  v50 = *v58;
  *(&v64 + 1) = v49;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v63);
  sub_2D604(v11, boxed_opaque_existential_0);
  v52 = v50;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v59, 1, v41, v48, &v63);
  sub_12E1C(v23, &unk_DEA510);
  sub_12E1C(v66, &unk_DE8E30);
  sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v63, &unk_DE8E40);
}

void sub_455C4(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v55 = sub_AB3430();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v57);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  v56 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_15F84(v62, &v59, &unk_DE8E30);
  if (!*(&v60 + 1))
  {
    sub_12E1C(&v59, &unk_DE8E30);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
  v23 = a3;
  v24 = _s30CollectionViewSelectionHandlerVMa();
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  (*(v26 + 56))(v12, v25 ^ 1u, 1, v24);
  v27 = (*(v26 + 48))(v12, 1, v24);
  a3 = v23;
  if (v27 == 1)
  {
LABEL_5:
    sub_12E1C(v12, &qword_E037A0);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v18, &v12[*(v24 + 20)], v5);
  sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  (*(v6 + 56))(v18, v28, 1, v5);
  v30 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
  {
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(ObjectType, v36);
    v39 = v38;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v6 + 32))(v52, v16, v5);
      sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath);
      sub_ABAD10();
    }

    v41 = swift_getObjectType();
    v42 = v53;
    sub_3B8F68();
    v40 = sub_21CCAC(1, v42, &v59, v41, v39);
    (*(v54 + 8))(v42, v55);
    sub_12E1C(&v59, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v40 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    sub_12AFE8();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  sub_15F28(v30, &v59);
  sub_15F84(v62, (v9 + 104), &unk_DE8E30);
  v47 = v57;
  sub_15F84(v21, &v9[*(v57 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v59, v9);
  *(v9 + 12) = 0;
  v48 = *v56;
  *(&v60 + 1) = v47;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_2D604(v9, boxed_opaque_existential_0);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v40, v46, &v59);
  sub_12E1C(v21, &unk_DEA510);
  sub_12E1C(v62, &unk_DE8E30);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40);
}

void sub_45DD8()
{

  v1 = *(v0 + qword_DE8738);
}

id sub_45E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBrickViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_45E60(uint64_t a1)
{

  v2 = *(a1 + qword_DE8738);
}

uint64_t type metadata accessor for JSBrickViewController()
{
  result = qword_DE8768;
  if (!qword_DE8768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45F9C(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(3u, 1u, 0, &v3, v1);
  return 1;
}

void sub_45FF0(void *a1)
{
  [a1 bounds];

  sub_44158(v1, v2);
}

void sub_46028(char a1)
{
  v2 = *(v1 + qword_DE8718);
  *(v1 + qword_DE8718) = a1;
  sub_43B54(v2);
}

double sub_46040()
{
  v1 = [*v0 traitCollection];
  sub_44084();
  v3 = v2;
  [v1 displayScale];
  sub_AB3A00();

  return v3;
}

double sub_460C4@<D0>(_OWORD *a1@<X8>)
{
  sub_40220(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_46170()
{
  result = qword_DE8D80;
  if (!qword_DE8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE8D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8D80);
  }

  return result;
}

uint64_t sub_461D4(uint64_t a1)
{
  *(a1 + 8) = sub_46258(&qword_DE8DB8, type metadata accessor for JSBrickViewController);
  result = sub_46258(&qword_DE8DC0, type metadata accessor for JSBrickViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_46258(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_462A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for ShelfCollectionViewLayout()) init];
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v0[v1] = 0x4024000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  if (sub_AB38D0())
  {
    *&v0[v2] = *&v0[v1];
    [v0 invalidateLayout];
  }

  return v0;
}

BOOL sub_46364()
{
  v1 = (*(v0 + qword_DE8728) + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
  swift_beginAccess();
  v2 = v1[1];
  result = 0;
  if (v2)
  {
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : *v1 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_463E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4641C()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_464A4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4652C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_46584()
{

  return swift_deallocObject();
}

double sub_465CC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_AF82C0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t sub_466A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_466B8(a1, a2);
  }

  return a1;
}

uint64_t sub_466B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_4670C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor;
  v11 = objc_opt_self();
  *&v5[v10] = [v11 whiteColor];
  v12 = OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor;
  v13 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v14 = *v13;
  *&v5[v12] = *v13;
  v15 = OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor;
  v16 = v14;
  v17 = [v11 blackColor];
  v18 = [v17 colorWithAlphaComponent:0.5];

  *&v5[v15] = v18;
  sub_472EC();
  v19 = UIImage.init(systemName:pointSize:weight:)(15.0, 0x6C69662E79616C70, 0xE90000000000006CLL, 4);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageWithRenderingMode:2];
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  v23 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageView;
  *&v5[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView] = v22;
  [v22 setTintColor:*&v5[v10]];
  [*&v5[v23] setUserInteractionEnabled:0];
  v28.receiver = v5;
  v28.super_class = type metadata accessor for PageHeaderPlayButton();
  v24 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  [v24 setAdjustsImageWhenHighlighted:0];
  v25 = objc_opt_self();
  v26 = v24;
  [v25 easyTouchDefaultHitRectInsets];
  [v26 setHitRectInsets:?];

  [v26 setBackgroundColor:*&v26[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor]];
  [v26 addSubview:*&v26[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView]];

  return v26;
}

uint64_t sub_469B8()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];

  sub_471A4();
  return sub_AB38F0();
}

id sub_46AC8()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for PageHeaderPlayButton();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v10 = [v0 effectiveUserInterfaceLayoutDirection];
  v11 = UIEdgeInsetsInsetRect_0(v2);
  v27 = v12;
  v28 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v0 layer];
  [v17 setCornerCurve:kCACornerCurveCircular];

  v18 = [v0 layer];
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v2;
  v31.origin.y = v4;
  v31.size.width = v6;
  v31.size.height = v8;
  Height = CGRectGetHeight(v31);
  if (Height >= Width)
  {
    Height = Width;
  }

  v21 = Height * 0.5;
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  [v18 setCornerRadius:v21];

  v22 = *&v0[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView];
  [v22 sizeThatFits:{v14, v16}];
  v24 = v23;
  if (v10 == &dword_0 + 1)
  {
    v25 = -0.5;
  }

  else
  {
    v25 = 0.5;
  }

  v32.origin.y = v27;
  v32.origin.x = v28;
  v32.size.width = v14;
  v32.size.height = v16;
  CGRectOffset(v32, v25, 0.0);
  sub_ABA470();
  sub_ABA490();
  return [v22 setFrame:v24];
}