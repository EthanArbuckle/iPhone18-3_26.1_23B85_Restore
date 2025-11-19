uint64_t sub_64E9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_64EAF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_765240();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75CF00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    sub_75CDD0();
    (*(v10 + 8))(v12, v9);
    sub_765250();
    sub_765210();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    sub_765330();
    v15 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v16 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    v17 = *(v13 + v15);
    sub_765250();
    v18 = sub_765210();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    sub_759210();
    sub_64EEB8(&qword_945810, &type metadata accessor for ArtworkView);
    v20 = v19;
    sub_75A050();
  }
}

uint64_t sub_64EEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_64EF00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699E0();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

double sub_64F0D8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764D70();
  sub_64F344(&qword_95FCD0, &type metadata accessor for Banner);
  sub_75C750();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  if (sub_764D20())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_764D10();
  sub_BD88(&unk_954000);
  v7 = sub_769490();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v13 = v9;
  *(&v13 + 1) = 0x402E000000000000;
  v14 = v9;
  v15 = xmmword_7AB5C0;
  v16 = v5;
  v17 = 0x4022000000000000;
  v18 = v8;
  v19 = xmmword_786B00;
  v20 = xmmword_786B10;
  v10 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v1 + 8))(v3, v0);
  sub_13C170(v4, &v13, v10);
  v6 = v11;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_64F344(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_64F390(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v11 = sub_759030();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v13 = sub_7595D0();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_64F4F0()
{
  v1 = sub_7664F0();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_759270();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_759290();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_93CD68 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99D350);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder];
  v31 = sub_759210();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_438F84();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  sub_759280();
  sub_75D650();
  sub_759250();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_64F864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_64F908()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v3 = sub_759030();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v5 = sub_7595D0();
  v7 = sub_48A70C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_64F9E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_95FD18;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_95FD18;
  [*&v15[qword_95FD18] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_768C10();
  sub_10A2C(v20, &unk_93FBD0);
  sub_10A2C(v21, &unk_93FBD0);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_64FC48()
{
  v1 = *&v0[qword_95FD18];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_64FC9C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_759190();
}

uint64_t sub_64FD34()
{
  sub_763B80();
  sub_6508C8(&unk_93F7A0, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = sub_75C750();
  if (v1)
  {
    sub_763B70();
  }

  return result;
}

uint64_t sub_64FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_740668(a1, a2, a3, a4, a5);
  sub_765B20();
  sub_761E80();
  if (swift_dynamicCastClass())
  {
    v10 = sub_761E70();
    sub_5D3E7C(v10, a3, a4);

    sub_740668(a1, a2, a3, a4, v11);
    [v5 setNeedsLayout];
  }
}

uint64_t sub_64FEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_73D33C(a1, a2, a3, v12);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_5FC64(v3 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10A2C(v9, &unk_955AA0);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_5D56D0(a1, v14);
  return (*(v11 + 8))(v14, v10);
}

void sub_650094(uint64_t a1)
{
  if (*(v1 + qword_99DC98))
  {
    v3 = *(v1 + qword_99DC98 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = *(v1 + qword_95FD18);
  sub_759190();
  sub_759210();
  sub_6508C8(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  v7 = OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView;
  v8 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759190();

  v9 = *(*(v6 + v7) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();
}

void (*sub_650228(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_6508BC;
}

void sub_6502F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if (swift_dynamicCast())
      {
        sub_765B20();

        sub_75B070();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_75F4B0();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Class sub_650584(uint64_t a1)
{
  sub_BD88(&qword_941C10);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_95FD18);
  *(v2 + 16) = xmmword_77B6D0;
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_769450().super.isa;

  return v6.super.isa;
}

void sub_650638(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_769460();
    v6 = a1;
    isa = sub_769450().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", isa);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell()
{
  result = qword_95FD48;
  if (!qword_95FD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_650804()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65083C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_650874()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6508C8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_650910(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_650A20(a2, v11, a7, a5, v7, ObjectType);
}

double sub_650A20(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_7586C0();
  v11 = v10;
  v12 = sub_7586B0();
  v14 = v13;
  v15 = sub_7586F0();
  v17 = v16;
  v18 = sub_370728();
  if (qword_93C808 != -1)
  {
    swift_once();
  }

  sub_53DA04(&unk_99BE98, a3);
  v19 = type metadata accessor for AppEventCardView();
  sub_524F90(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, v19, a6);

  return a1;
}

void *sub_650B68(uint64_t a1, void *a2)
{
  if (qword_93C808 != -1)
  {
    swift_once();
  }

  sub_53DA04(&unk_99BE98, a2);
  type metadata accessor for AppEventCardView();

  return sub_5271CC(a1, a2);
}

double sub_650C28(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, int *a11)
{
  if (qword_93C808 != -1)
  {
    swift_once();
  }

  sub_53DA04(&unk_99BE98, a8);
  v20 = type metadata accessor for AppEventCardView();
  sub_524F90(a1, a2, a3, a9, a4, a5, a6, a7 & 1, a8, v20, a11);
  return a9;
}

void sub_650D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_758660();
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView];
  sub_268FDC(v9);
  [v2 setNeedsLayout];
  v11 = sub_758780();
  if (v11)
  {
    v22 = v11;
    sub_764C80();
    sub_768900();
    sub_650FCC(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v12 = sub_BD88(&unk_950960);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_BD88(&unk_950960);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  swift_beginAccess();
  sub_278AC(v8, &v3[v14]);
  swift_endAccess();
  sub_525B90(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  sub_7688F0();
  v15 = v22;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v17 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v18 = v17;
  sub_26CAC0(v15);
  v19 = *(v10 + v16);
  *(v10 + v16) = v15;
  v20 = v15;

  sub_26CC24(v17);
}

uint64_t sub_650FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_651014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  sub_5276AC(v12, a2, *(a3 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView), a4, a5);
  return (*(v9 + 8))(v12, a4);
}

uint64_t sub_65112C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style();
  sub_161DC(v3, qword_9A0648);
  v4 = sub_BE38(v3, qword_9A0648);
  if (qword_93D3F0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99E410);
  sub_5498C4(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_549AA8(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_651278()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_960120 = result;
  return result;
}

char *sub_6512B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_768C30();
  sub_10A2C(v28, &unk_93FBD0);
  sub_10A2C(v29, &unk_93FBD0);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_651608()
{
  v1 = sub_766950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_102FD8(&v0[v5], &v23);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v6;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_652A1C();
  *&v17 = v7;
  type metadata accessor for ShelfFooterViewLayout();
  v8 = swift_allocObject();
  v9 = v24[0];
  v8[1] = v23;
  v8[2] = v9;
  *(v8 + 41) = *(v24 + 9);
  sub_10914(&v20, (v8 + 4));
  sub_10914(&v17, v8 + 104);
  v10 = v6;
  v11 = v7;
  v12 = [v0 traitCollection];
  sub_1029D0();
  sub_7673F0();
  v14 = v13;

  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_651858()
{
  ObjectType = swift_getObjectType();
  v2 = sub_766950();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_102FD8(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_652A1C();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_10914(&v20, (v10 + 4));
  sub_10914(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_75D650();
  v14 = [v0 traitCollection];
  sub_1029D0();
  sub_7673E0();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_651BB4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v5[3] = sub_BE70(0, &unk_948000);
    v5[0] = v3;
    sub_F714(v2);
    v4 = v3;
    v2(v5);
    sub_F704(v2);
    return sub_10A2C(v5, &unk_93FBD0);
  }

  return result;
}

double sub_651D58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v103 = a3;
  v104 = 0x6C6F686563616C50;
  v92 = sub_766950();
  v102 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_7672E0();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v86 - v10;
  __chkstk_darwin(v11);
  v91 = v86 - v12;
  __chkstk_darwin(v13);
  v90 = v86 - v14;
  v15 = sub_766AF0();
  __chkstk_darwin(v15 - 8);
  v86[1] = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_7672F0();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_7676A0();
  __chkstk_darwin(v89);
  v88 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&qword_94AFE0);
  __chkstk_darwin(v19 - 8);
  v21 = (v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = v86 - v23;
  __chkstk_darwin(v25);
  v27 = v86 - v26;
  __chkstk_darwin(v28);
  v30 = v86 - v29;
  v86[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v86[0]);
  v87 = v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v105 = v86 - v33;
  if (!a2)
  {
    goto LABEL_6;
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    v104 = a1;
    v93 = a2;
  }

  else
  {
LABEL_6:
    v93 = 0xEB00000000726564;
  }

  sub_652948(a4, v30);
  v35 = sub_75C220();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v30, 1, v35) == 1)
  {
    v38 = 0;
    v39 = 24.0;
  }

  else
  {
    sub_652948(v30, v27);
    v40 = (*(v36 + 88))(v27, v35);
    v41 = v27;
    v42 = a4;
    v43 = v24;
    v44 = v40;
    v45 = enum case for ShelfFooterStyle.games(_:);
    (*(v36 + 8))(v41, v35);
    v46 = v44 == v45;
    v24 = v43;
    a4 = v42;
    v38 = v46;
    v39 = 24.0;
    if (v46)
    {
      v39 = 16.0;
    }
  }

  v114[3] = &type metadata for Double;
  v114[4] = &protocol witness table for Double;
  *v114 = v39;
  v115 = v38;
  sub_10A2C(v30, &qword_94AFE0);
  sub_652948(a4, v24);
  v47 = v37(v24, 1, v35);
  v48 = v105;
  if (v47 != 1)
  {
    sub_652948(v24, v21);
    if ((*(v36 + 88))(v21, v35) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v36 + 96))(v21, v35);
      v49 = *v21;
      if (qword_93D3F8 != -1)
      {
        swift_once();
      }

      v50 = sub_BE38(v86[0], qword_99E428);
      sub_5498C4(v50, v48);
      v51 = v103;
      if ([v103 horizontalSizeClass] == &dword_0 + 1 && (v52 = objc_msgSend(v51, "preferredContentSizeCategory"), v53 = sub_769B20(), v52, (v53 & 1) != 0))
      {

        v54 = 0;
        v55 = 0;
      }

      else
      {
        [v49 size];
        v55 = v85;

        v54 = 1;
      }

      goto LABEL_25;
    }

    (*(v36 + 8))(v21, v35);
  }

  if (qword_93D3F0 != -1)
  {
    swift_once();
  }

  v56 = sub_BE38(v86[0], qword_99E410);
  sub_5498C4(v56, v48);
  v54 = 0;
  v55 = 0;
  v51 = v103;
LABEL_25:
  v57 = v98;
  sub_10A2C(v24, &qword_94AFE0);
  if (qword_93D400 != -1)
  {
    swift_once();
  }

  v58 = qword_95A740;
  *(qword_95A740 + OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon) = v54;
  *&v58[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = v55;
  v59 = sub_769210();
  [v58 setTitle:v59 forState:0];

  v60 = v87;
  sub_5498C4(v48, v87);
  v61 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_6529B8(v60, &v58[v61]);
  swift_endAccess();
  sub_54838C();
  sub_549928(v60);
  v62 = [v51 preferredContentSizeCategory];
  sub_769EE0();
  sub_767670();
  sub_769EF0();
  [v58 updateTraitsIfNeeded];
  sub_76A200();
  v64 = v63;
  v66 = v65;
  sub_766AE0();
  sub_766D50();
  *&v113[8] = sub_766D70();
  *&v113[16] = &protocol witness table for LabelPlaceholder;
  sub_B1B4(&v112);
  sub_766D80();
  v67 = v90;
  *(v90 + 3) = &type metadata for CGFloat;
  *(v67 + 4) = &protocol witness table for CGFloat;
  *v67 = v64;
  v68 = enum case for Resize.Rule.replaced(_:);
  v69 = *(v96 + 104);
  v70 = v97;
  v69(v67, enum case for Resize.Rule.replaced(_:), v97);
  v71 = v91;
  *(v91 + 3) = &type metadata for CGFloat;
  *(v71 + 4) = &protocol witness table for CGFloat;
  *v71 = v66;
  v69(v71, v68, v70);
  v72 = enum case for Resize.Rule.unchanged(_:);
  v69(v94, enum case for Resize.Rule.unchanged(_:), v70);
  v69(v95, v72, v70);
  sub_767300();
  sub_102FD8(v114, &v112);
  if (qword_93DFD8 != -1)
  {
    swift_once();
  }

  v73 = qword_960120;
  v74 = v100;
  v110 = v100;
  v111 = &protocol witness table for Resize;
  v75 = sub_B1B4(&v109);
  v76 = v99;
  (*(v99 + 16))(v75, v57, v74);
  v107 = type metadata accessor for ShelfFooterSeparator();
  v108 = sub_652A1C();
  *&v106 = v73;
  type metadata accessor for ShelfFooterViewLayout();
  v77 = swift_allocObject();
  v78 = *v113;
  v77[1] = v112;
  v77[2] = v78;
  *(v77 + 41) = *&v113[9];
  sub_10914(&v109, (v77 + 4));
  sub_10914(&v106, v77 + 104);
  v79 = v73;
  v80 = v101;
  sub_1029D0();
  v81 = v92;
  sub_7673F0();
  v83 = v82;

  (*(v102 + 8))(v80, v81);
  (*(v76 + 8))(v57, v74);
  sub_103044(v114);
  sub_549928(v105);
  return v83;
}

uint64_t sub_652948(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94AFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6529B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_652A1C()
{
  result = qword_960170;
  if (!qword_960170)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_960170);
  }

  return result;
}

void sub_652A74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_94AFE0);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_652948(a4, &v56 - v18);
  v20 = sub_75C220();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_652948(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10A2C(v19, &qword_94AFE0);
  v28 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_653254(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style() + 20))];
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_769210();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_652948(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_652948(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_5498C4(v63, v9);
    v47 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_6529B8(v9, &v30[v47]);
    swift_endAccess();
    sub_54838C();
    sub_549928(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_93D3F8 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v56, qword_99E428);
  sub_5498C4(v42, v39);
  v43 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_6529B8(v39, &v30[v43]);
  swift_endAccess();
  sub_54838C();
  sub_549928(v39);
  v44 = sub_75DA30();
  if ([v44 horizontalSizeClass] != &dword_0 + 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_769B20();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10A2C(v64, &qword_94AFE0);
    v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10A2C(v64, &qword_94AFE0);
  v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_65315C()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t type metadata accessor for ShelfFooterView.Style()
{
  result = qword_9601D0;
  if (!qword_9601D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_653310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6533E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_653498()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v1 <= 0x3F)
  {
    result = sub_BE70(319, &qword_93E540);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_653570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_93DFE8 != -1)
      {
        swift_once();
      }

      v12 = qword_960220;
    }

    else
    {
      if (qword_93DFE0 != -1)
      {
        swift_once();
      }

      v12 = qword_960208;
    }

    v13 = sub_BE38(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_766660();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    sub_765320();
    sub_7651A0();
    sub_759070();
    sub_759210();
    sub_65476C(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
    swift_unknownObjectRelease();
  }
}

double sub_653834(double a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v13 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v13 = qword_960208;
  }

  v14 = sub_BE38(v6, v13);
  (*(v7 + 16))(v9, v14, v6);
  (*(v7 + 32))(v12, v9, v6);
  sub_766660();
  (*(v7 + 8))(v12, v6);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v15 = sub_766CA0();
  sub_BE38(v15, qword_99FE18);
  sub_766470();
  sub_766700();
  (*(v3 + 8))(v5, v2);
  return a1;
}

uint64_t sub_653B2C()
{
  result = sub_75D410();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_653B6C()
{
  sub_759210();
  sub_65476C(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_653C00(uint64_t a1)
{
  result = sub_65476C(&qword_960238, type metadata accessor for EditorialStoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_653CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_75B660();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a5 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits] = v13;
  swift_unknownObjectRelease();
  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel];
  sub_75D450();
  if (v15)
  {
    v16 = sub_769210();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel];
  sub_75D440();
  v18 = sub_769210();

  v41 = v17;
  [v17 setText:v18];

  v19 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel];
  sub_75D420();
  v40 = v14;
  if (v20)
  {
    v21 = sub_769210();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:{v21, v40}];

  sub_75D430();
  v22 = (*(v9 + 88))(v12, v8);
  if (v22 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v12, v8);
    v23 = *(sub_BD88(&qword_94B9A8) + 48);
    v24 = sub_7651A0();

    v25 = sub_75EDA0();
    v26 = *(*(v25 - 8) + 8);
    v27 = v24;
    v26(v12 + v23, v25);
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v22 != enum case for ShelfBackground.color(_:))
    {
      (*(v9 + 8))(v12, v8);
LABEL_21:
      if (qword_93C890 != -1)
      {
        swift_once();
      }

      v33 = qword_99C4F8;
      v24 = 0;
      goto LABEL_24;
    }

    (*(v9 + 96))(v12, v8);
    v24 = *v12;
    v28 = *(sub_BD88(&unk_959640) + 48);
    v29 = sub_75EDA0();
    v30 = *(*(v29 - 8) + 8);
    v27 = v24;
    v30(v12 + v28, v29);
  }

  v31 = v27;
  if (sub_76A0D0())
  {
    if (qword_93C890 != -1)
    {
      swift_once();
    }

    v32 = qword_99C4F8;
  }

  else
  {
    if (qword_93C880 != -1)
    {
      swift_once();
    }

    v32 = qword_99C4E8;
  }

  v33 = v32;

LABEL_24:
  [v40 setTextColor:v33];

  if (v24)
  {
    v34 = v24;
    if (sub_76A0D0())
    {
      if (qword_93C898 != -1)
      {
        swift_once();
      }

      v35 = qword_99C500;
    }

    else
    {
      if (qword_93C888 != -1)
      {
        swift_once();
      }

      v35 = qword_99C4F0;
    }

    v36 = v35;
  }

  else
  {
    if (qword_93C898 != -1)
    {
      swift_once();
    }

    v36 = qword_99C500;
  }

  [v41 setTextColor:v36];

  if (v24)
  {
    v37 = v24;
    if (sub_76A0D0())
    {
      if (qword_93C898 != -1)
      {
        swift_once();
      }

      v38 = qword_99C500;
    }

    else
    {
      if (qword_93C888 != -1)
      {
        swift_once();
      }

      v38 = qword_99C4F0;
    }

    v39 = v38;
  }

  else
  {
    if (qword_93C898 != -1)
    {
      swift_once();
    }

    v39 = qword_99C500;
    v37 = 0;
  }

  [v19 setTextColor:v39];

  [v6 setNeedsLayout];
}

id sub_654334()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v13 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v13 = qword_960208;
  }

  v14 = sub_BE38(v4, v13);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  sub_766660();
  v16 = v15;
  (*(v5 + 8))(v10, v4);
  v17 = objc_opt_self();
  v18 = [v17 absoluteDimension:v12];
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v19 = sub_766CA0();
  sub_BE38(v19, qword_99FE18);
  sub_766470();
  sub_766700();
  v21 = v20;
  (*(v1 + 8))(v3, v0);
  v22 = [v17 absoluteDimension:round(v16) + v21];
  v23 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v22];

  v24 = [objc_opt_self() itemWithLayoutSize:v23];
  v25 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_77D9F0;
  *(v26 + 32) = v24;
  sub_4FB2C();
  v27 = v24;
  isa = sub_769450().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v23 subitems:isa];

  return v29;
}

uint64_t sub_65476C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_6547B4()
{
  v1 = sub_75DAB0();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7656C0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  sub_769DA0();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell();
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    sub_75C7B0();

    sub_765590();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_93CF58 != -1)
    {
      swift_once();
    }

    sub_765670();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_EDA68(v0 + v31, v14);
    v25 = v24;
    sub_10A2C(v14, &unk_955AA0);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    sub_75EAF0();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      sub_75C720();
      sub_760B30();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

UIColor sub_654D20()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_960290 = result.super.isa;
  return result;
}

id sub_654E00()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_959540);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_93DFF0 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_960290];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      sub_75D9F0();
      v22 = v25;
      sub_75C7E0();
      sub_768760();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      sub_75A110();
      sub_768900();
      v23 = v20;
      sub_768ED0();
      sub_758EF0();

      sub_10A2C(v27, &unk_963040);
      sub_BEB8(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_655254()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_6547B4();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_705B8(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController()
{
  result = qword_9602E8;
  if (!qword_9602E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_655770()
{
  result = sub_75C840();
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

void sub_65589C(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_655948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = sub_75C840();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_BD88(&qword_9477F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77B6D0;
  *(v22 + 32) = sub_767890();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  sub_769900();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

id sub_655B6C()
{
  v1 = v0;
  v2 = sub_75B240();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.8];
LABEL_5:
    v10 = v9;

    return v10;
  }

  if (v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v12 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v13 = v7;
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 colorWithAlphaComponent:0.6];

  if (v13 != v12)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

id sub_655D9C(char a1)
{
  v2 = v1;
  v4 = sub_75B240();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v9 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v11 = [objc_opt_self() whiteColor];
    v12 = v11;
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    v14 = [v11 colorWithAlphaComponent:v13];
  }

  else
  {
    v15 = v9;
    v16 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v17 = [objc_opt_self() blackColor];
    v18 = v17;
    v19 = 0.7;
    if (a1)
    {
      v19 = 1.0;
    }

    v14 = [v17 colorWithAlphaComponent:v19];

    if (v15 != v16)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return v14;
}

id sub_655F9C()
{
  v1 = v0;
  v2 = sub_75B240();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.75];

    return v10;
  }

  else
  {
    v12 = v7;
    v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 colorWithAlphaComponent:0.75];

    if (v12 != v13)
    {
      (*(v3 + 8))(v6, v2);
    }

    return v15;
  }
}

double sub_656174()
{
  v1 = v0;
  v2 = sub_75E580();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75E5A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v2, qword_9A0660);
  (*(v3 + 16))(v5, v10, v2);
  v16[11] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  sub_7665D0();
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel);
  v16[4] = sub_75BB20();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v11;
  v12 = v11;
  sub_75E590();
  sub_658810(&qword_9603D0, &type metadata accessor for ReviewSummaryLayout);
  sub_7673F0();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_65640C()
{
  v0 = sub_75E580();
  sub_161DC(v0, qword_9A0660);
  sub_BE38(v0, qword_9A0660);
  v2[3] = sub_BD88(&unk_93F5A0);
  v2[4] = sub_16194(&qword_93F5D0, &unk_93F5A0);
  sub_B1B4(v2);
  sub_BD88(&qword_93FBE0);
  sub_7592D0();
  return sub_75E570();
}

uint64_t sub_656514()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FF0();
  qword_960300 = result;
  return result;
}

char *sub_656558(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v63 = v4;
  v64 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v15, qword_99EA10);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v65 = objc_opt_self();
  v22 = [v65 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_1A4998(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_1ED18(v14, v11, &unk_93E530);
  v26 = v25;
  sub_75BA40();

  sub_10A2C(v14, &unk_93E530);
  v27 = *(v16 + 8);
  v66 = v15;
  v27(v18, v15);

  v28 = v63;
  *&v63[v64] = v26;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  sub_75BB20();
  *&v28[v29] = sub_75BB00();
  v30 = &v28[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = sub_75A480();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v68.receiver = v28;
  v68.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView];
  v39 = [v65 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_1A5974();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v49 = 0;
  *(v49 + 1) = 0;
  v51 = v48;
  sub_F704(v50);
  [*&v51[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v52 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  v53 = qword_93E000;
  v54 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  if (v53 != -1)
  {
    swift_once();
  }

  [v54 setTextColor:qword_960300];

  v55 = *&v34[v52];
  sub_BE70(0, &qword_93F900);
  v56 = qword_93D7B0;
  v57 = v55;
  if (v56 != -1)
  {
    swift_once();
  }

  sub_BE38(v66, qword_99EF08);
  v58 = [v34 traitCollection];

  v59 = sub_769E10();
  [v57 setFont:v59];

  [*&v34[v52] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v52]];
  sub_BD88(&qword_9477F0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_77B6D0;
  *(v60 + 32) = sub_767B80();
  *(v60 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v34;
}

void sub_656D08()
{
  v1 = sub_BD88(&qword_947688);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_75A480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle + 8];
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  v18 = v8;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_1ED18(&v0[v11], v3, &qword_947688);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10A2C(v3, &qword_947688);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v15 = sub_658400(v17, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v18 setAttributedText:v15];
}

uint64_t sub_657008()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75E580();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_75E5A0();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = sub_7699D0();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer];
  sub_75D650();
  [v17 setFrame:{sub_705B8(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v3, qword_9A0660);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  sub_75E560();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  sub_7665D0();
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  v34 = sub_75BB20();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  sub_75E590();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_658810(&qword_9603D0, &type metadata accessor for ReviewSummaryLayout);
  v27 = v32;
  sub_7673E0();

  [v17 bounds];
  v28 = [v1 traitCollection];
  sub_7673F0();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView()
{
  result = qword_960358;
  if (!qword_960358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6575E0()
{
  sub_657698();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_657698()
{
  if (!qword_960368)
  {
    sub_75A480();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_960368);
    }
  }
}

uint64_t sub_657738(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_BD88(&qword_960378);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_BD88(&qword_960380);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = sub_756E80();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_756E60();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_756E90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_960388);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_7666D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = sub_756EB0();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_93D7A0 != -1)
    {
      swift_once();
    }

    v29 = sub_BE38(v16, qword_99EED8);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_93D7A8 != -1)
    {
      swift_once();
    }

    v31 = qword_99EEF0;
  }

  else
  {
    if (qword_93D790 != -1)
    {
      swift_once();
    }

    v32 = sub_BE38(v16, qword_99EEA8);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_93D798 != -1)
    {
      swift_once();
    }

    v31 = qword_99EEC0;
  }

  v33 = sub_BE38(v16, v31);
  v30(v66, v33, v16);
  sub_756EA0();
  (*(v10 + 16))(v15, v12, v9);
  sub_658810(&qword_960390, &type metadata accessor for AttributedString.Runs);
  sub_7696C0();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      sub_7696F0();
      sub_658810(&qword_960398, &type metadata accessor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = sub_7691C0();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10A2C(v15, &qword_960388);
        sub_BE70(0, &qword_9562D0);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = sub_769A50();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = sub_769710();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      sub_769700();
      sub_756E50();
      sub_75BC30();
      sub_658810(&unk_9603A0, &type metadata accessor for JetFontAttribute);
      v42 = v78;
      sub_756E70();
      (*v68)(v40, v41);
      v43 = sub_75BC20();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_BE70(0, &qword_93F900);
      v81 = sub_769E10();
      sub_16194(&qword_9603B0, &qword_960380);
      v34 = sub_756EE0();
      sub_756E30();
      sub_658810(&qword_9603B8, &type metadata accessor for AttributeScopes.UIKitAttributes);
      v35 = sub_756F40();
      sub_BD88(&unk_9603C0);
      sub_1EABC();
      sub_756FD0();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10A2C(v79, &qword_960380);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_BE70(0, &qword_93F900);
    v81 = sub_769E10();
    sub_16194(&qword_9603B0, &qword_960380);
    v46 = sub_756EE0();
    sub_756E30();
    sub_658810(&qword_9603B8, &type metadata accessor for AttributeScopes.UIKitAttributes);
    v47 = sub_756F40();
    sub_BD88(&unk_9603C0);
    sub_1EABC();
    sub_756FD0();
    v47(v80, 0);

    v46(v82, 0);
    sub_10A2C(v79, &qword_960380);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = sub_76A940();
  __break(1u);
  return result;
}

uint64_t sub_658400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_75A480();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_769210();
  v13 = [v11 initWithString:v12];

  if (!a3)
  {
    return v13;
  }

  sub_BE70(0, &qword_95A810);

  v14 = sub_769C60();
  if (sub_765190())
  {
    v15 = sub_759910();
  }

  else
  {
    if ((sub_765180() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_56EBA8(a3, v14);
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    return v13;
  }

  v14 = [objc_allocWithZone(NSTextAttachment) init];
  sub_BE70(0, &qword_93E540);
  v17 = sub_769FF0();
  v18 = [v16 imageWithTintColor:v17];

  [v14 setImage:v18];
  (*(v8 + 16))(v10, a4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_769210();
    v22 = [v20 initWithString:v21];

    [v13 insertAttributedString:v22 atIndex:0];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 insertAttributedString:v23 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = sub_769210();
    v26 = [v24 initWithString:v25];

    [v13 appendAttributedString:v26];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 appendAttributedString:v23];
    goto LABEL_13;
  }

  result = sub_76A940();
  __break(1u);
  return result;
}

uint64_t sub_6587C4@<X0>(uint64_t *a1@<X8>)
{
  sub_756E40();
  result = sub_756E30();
  *a1 = result;
  return result;
}

uint64_t sub_658810(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_658858()
{
  v1 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v7, qword_99EA10);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_1A4998(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1ED18(v6, v3, &unk_93E530);
  v18 = v17;
  sub_75BA40();

  sub_10A2C(v6, &unk_93E530);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  sub_75BB20();
  *(v19 + v20) = sub_75BB00();
  v21 = (v19 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = sub_75A480();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_658C08(uint64_t result)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = result;
  if (v2 != (result & 1))
  {
    v3 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v3 & 1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_658CA0()
{
  sub_13238(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_658D2C(void *result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentInset];
    v7 = v5 + v6;
    [v3 contentOffset];

    return sub_658C08(v7 + v8 <= v2);
  }

  return result;
}

void sub_658DC0(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_2630C();
      v15 = a1;
      v8 = v7;
      sub_769C90();

      if ((v17 & 1) == 0)
      {
        MaxY = CGRectGetMaxY(v16);
        *(v3 + 16) = MaxY;
        *(v3 + 24) = 0;
        [a3 _systemContentInset];
        v11 = v10;
        [a3 contentInset];
        v13 = v11 + v12;
        [a3 contentOffset];
        sub_658C08(v13 + v14 <= MaxY);
      }
    }
  }
}

uint64_t sub_658F04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_658F60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_65902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_6590B0()
{
  v1 = sub_7649E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_75ECD0();
  v17 = *(v9 - 8);
  v18 = v9;
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BEC0();
  sub_6593F8();
  result = sub_75C750();
  if (v19)
  {
    v16 = v0;
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 88))(v4, v1) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v2 + 96))(v4, v1);
      v13 = v17;
      v14 = v4;
      v15 = v18;
      (*(v17 + 32))(v11, v14, v18);
      *(*(v16 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = sub_75ECC0();

      sub_4FD578();

      return (*(v13 + 8))(v11, v15);
    }

    else
    {

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

unint64_t sub_6593F8()
{
  result = qword_940008;
  if (!qword_940008)
  {
    sub_75BEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940008);
  }

  return result;
}

id sub_659480(uint64_t a1)
{
  sub_75A110();
  sub_768900();
  sub_768ED0();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artworkLoader] = v12;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artwork] = a1;
  v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v3 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setMinimumInteritemSpacing:0.0];
  [v3 setMinimumLineSpacing:0.0];
  [v3 setScrollDirection:1];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for GalleryViewController();
  v4 = objc_msgSendSuper2(&v11, "initWithCollectionViewLayout:", v3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setContentInsetAdjustmentBehavior:2];
  }

  v7 = v4;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v7 action:"dismissFrom:"];

  [v8 setRightBarButtonItem:v9];

  return v7;
}

id sub_6596B0()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_659868(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for GalleryViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_75A0A0();
}

void sub_6598F0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GalleryViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_75A0A0();
}

void sub_659960()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBarsOnTap:1];
  }

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 barHideOnTapGestureRecognizer];

    [v5 addTarget:v0 action:"tapStateChangedOn:"];
  }

  v6 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v6 setDirection:8];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addGestureRecognizer:v6];

    v9 = [v0 collectionView];
    if (v9)
    {
      if (qword_93E008 != -1)
      {
        v23 = v9;
        swift_once();
        v9 = v23;
      }

      v10 = v9;
      [v9 setBackgroundColor:qword_960490];
    }

    v11 = [v0 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setAllowsSelection:0];
    }

    v13 = [v0 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setAlwaysBounceHorizontal:1];
    }

    v15 = [v0 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setShowsHorizontalScrollIndicator:0];
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setPagingEnabled:1];
    }

    v19 = [v0 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ArtworkCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v22 = sub_769210();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_659C94(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

char *sub_659E30(void *a1)
{
  result = [a1 state];
  if (result == &dword_0 + 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_65AB8C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_23F0CC;
    v7[3] = &unk_89BA50;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_659F54(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_93E010 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_960498;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_93E008 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_960490;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_65A104()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_65AB6C;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_23F0CC;
      v10[3] = &unk_89BA00;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_65A28C(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_93E010 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_960498];
  }
}

unint64_t sub_65A3F0(void *a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell();
  sub_769BD0();
  v5 = sub_769210();

  isa = sub_757550().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artwork);
  result = sub_7575C0();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  sub_765260();
  sub_765260();
  sub_765260();
  [*&v8[v9] contentMode];
  sub_765330();
  v21 = *&v8[v9];
  sub_7652E0();
  sub_7591B0();
  [v21 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();

  v22 = *&v8[v9];
  sub_759210();
  sub_14FA38();
  v23 = v22;
  sub_75A050();

  return v8;
}

uint64_t sub_65AB34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65AB74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_65ABA0(uint64_t a1)
{
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = sub_765610();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_BD88(&qword_940A70);
  v18 = *(sub_765540() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_780120;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_62634();
  sub_7655D0();
  v63 = 15.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v60 = v15;
  v54 = v12;
  sub_765500();
  v63 = a1;
  sub_7655D0();
  v63 = 15.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  sub_7655D0();
  v63 = 0.0;
  v55 = v9;
  sub_7655D0();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  sub_765500();
  v46 = 2 * v34;
  v63 = v22;
  sub_7655D0();
  v63 = 20.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v40 = v46;
  v41 = v35;
  sub_765500();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  sub_7655D0();
  v63 = 20.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  *v41 = v47;
  v38(v41, v36, v39);
  sub_7697A0();
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  v46 = 4 * v42;
  v63 = v22;
  sub_7655D0();
  v63 = 24.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  v63 = v22;
  sub_7655D0();
  v63 = 24.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  return v51;
}

id sub_65B598()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_75C7B0();

    sub_765550();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    v8 = 0.0;
    if (v7 > 1.0)
    {
      v8 = 16.0;
    }

    return [v5 _setCornerRadius:v8];
  }

  return result;
}

char *sub_65B730(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_65B9A0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  sub_75D650();
  sub_769D10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  sub_767500();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView];
  sub_75D650();
  sub_769D20();
  [v10 setFrame:?];
}

id sub_65BB80()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_65BD1C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_769210();
  v3 = [v0 player];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentItem];

    if (v5)
    {
      v7 = v5;
      sub_65C474();
      v5 = sub_76A930();
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 addObserver:v0 selector:"playerItemDidPlayToEndWithNotification:" name:v2 object:v5];

  return swift_unknownObjectRelease();
}

id sub_65C2C4(uint64_t a1)
{
  v2 = sub_7570A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  sub_757040(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProvider20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_65C474()
{
  result = qword_9605E8;
  if (!qword_9605E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9605E8);
  }

  return result;
}

unint64_t sub_65C4C4()
{
  result = qword_9413D8;
  if (!qword_9413D8)
  {
    type metadata accessor for BadgeCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9413D8);
  }

  return result;
}

double sub_65C51C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v4 = sub_75F070();
  sub_BE38(v4, qword_99DED8);
  v5 = sub_75DA30();
  sub_75EFB0();
  v7 = v6;

  return v7;
}

uint64_t sub_65C67C(char a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_94F1A8);
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v6 = sub_764CF0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_760770();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  if ((a1 & 1) != 0 && (sub_75BCC0(), v14 = *(v8 + 104), v38 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v39 = v8 + 104, v37 = v14, v14(v10), sub_65CB0C(), v15 = sub_7691C0(), v16 = *(v8 + 8), v16(v10, v7), v16(v13, v7), (v15 & 1) == 0))
  {
    sub_764F00();
    sub_764F50();
    v36[25] = v17;
    v36[24] = sub_764EE0();
    v18 = sub_764F30();
    v36[22] = v19;
    v36[23] = v18;
    v20 = sub_764EF0();
    v36[20] = v21;
    v36[21] = v20;
    v22 = sub_764F70();
    v36[18] = v23;
    v36[19] = v22;
    v24 = sub_764E20();
    v36[16] = v25;
    v36[17] = v24;
    v26 = sub_764E30();
    v36[14] = v27;
    v36[15] = v26;
    v28 = sub_764EA0();
    v36[12] = v29;
    v36[13] = v28;
    v30 = sub_764ED0();
    v36[10] = v31;
    v36[11] = v30;
    v32 = sub_764F40();
    v36[8] = v33;
    v36[9] = v32;
    v36[7] = sub_764F10();
    v36[6] = sub_764DA0();
    v36[5] = v34;
    v36[4] = sub_764DB0();
    v36[3] = sub_764EC0();
    v36[2] = sub_764D80();
    v36[1] = sub_764DF0();
    sub_764E50();
    sub_75BC50();
    sub_75BCF0();
    sub_75BC70();
    v37(v13, v38, v7);
    sub_75BCD0();
    sub_75BC40();
    sub_75BD00();
    swift_allocObject();
    return sub_75BCE0();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_65CB0C()
{
  result = qword_954EE8;
  if (!qword_954EE8)
  {
    sub_760770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954EE8);
  }

  return result;
}

unint64_t sub_65CB64()
{
  v0 = sub_75BC70();
  if (v0 >> 62)
  {
    v3 = sub_76A860();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v1 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));

    if (v1)
    {
      return 1;
    }
  }

  result = sub_75BCF0();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v6 = result;
  v7 = sub_76A860();
  result = v6;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v4 = sub_765750();

  if (v4 >> 62)
  {
    v5 = sub_76A860();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  return v5 != 0;
}

uint64_t sub_65CCB8(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_7674E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_767510();
  v73 = *(v74 - 8);
  *&v19 = __chkstk_darwin(v74).n128_u64[0];
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v8 contentView];
  [a3 pageMarginInsets];
  v23 = v22;
  [a3 pageMarginInsets];
  [v21 setLayoutMargins:{a5, v23, a7}];

  v24 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
  v75 = a1;
  sub_764D30();
  v25 = sub_759CE0();
  v26 = sub_759CF0();
  v77 = a4;
  v27 = v24;
  v28 = sub_5F0FC8(v26, sub_5F0FC0);

  sub_4EAAA8(v25, v28);

  v76 = a2;
  if (a2)
  {
    (*(v16 + 104))(v18, enum case for Separator.Position.bottom(_:), v15);
    v81[3] = sub_766970();
    v81[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v81);
    sub_766960();
    v29 = v72;
    sub_7674F0();
    v30 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v31 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    v32 = *(v73 + 40);
    v33 = v30;
    v32(&v30[v31], v29, v74);
    swift_endAccess();

    v34 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView;
    v35 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
    if (v35)
    {
      [v35 removeFromSuperview];
      v36 = *&v8[v34];
    }

    else
    {
      v36 = 0;
    }

    *&v8[v34] = v33;
    v40 = v33;

    v41 = [v8 contentView];
    [v41 addSubview:v40];

    [*&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
    sub_396E8();
    v42 = sub_769FD0();
    v43 = type metadata accessor for DynamicTypeLinkedTextView();
    v80.receiver = v27;
    v80.super_class = v43;
    v44 = objc_msgSendSuper2(&v80, "textColor");
    v79.receiver = v27;
    v79.super_class = v43;
    objc_msgSendSuper2(&v79, "setTextColor:", v42);
    v78.receiver = v27;
    v78.super_class = v43;
    v45 = objc_msgSendSuper2(&v78, "textColor");
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (!v44)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v37 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView;
  v38 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
  if (v38)
  {
    [v38 removeFromSuperview];
    v39 = *&v8[v37];
  }

  else
  {
    v39 = 0;
  }

  *&v8[v37] = 0;

  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:0];
  sub_396E8();
  v42 = sub_769FF0();
  v49 = type metadata accessor for DynamicTypeLinkedTextView();
  v84.receiver = v27;
  v84.super_class = v49;
  v44 = objc_msgSendSuper2(&v84, "textColor");
  v83.receiver = v27;
  v83.super_class = v49;
  objc_msgSendSuper2(&v83, "setTextColor:", v42);
  v82.receiver = v27;
  v82.super_class = v49;
  v45 = objc_msgSendSuper2(&v82, "textColor");
  if (!v45)
  {
    goto LABEL_14;
  }

LABEL_8:
  v46 = v45;
  if (!v44)
  {

    goto LABEL_15;
  }

  v47 = v44;
  v48 = sub_76A1C0();

  if ((v48 & 1) == 0)
  {
LABEL_15:
    sub_4E9E24();
    goto LABEL_16;
  }

  v44 = v47;
LABEL_16:

  v42 = v44;
LABEL_17:

  sub_396E8();
  v50 = sub_76A0F0();
  [v27 setTintColor:v50];

  v51 = sub_764D20();
  sub_13CC68(v51);

  v52 = sub_764D40();
  sub_13AFEC(v52);
  v53 = sub_764D50();
  v54 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = v53;
  v55 = v53;

  sub_13B27C();
  v56 = *(sub_764D10() + 16);

  v57 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow;
  v58 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
  if (v56)
  {
    v59 = v77;
    if (v58)
    {
      v60 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
    }

    else
    {
      type metadata accessor for BannerButtonRow();
      v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v62 = v58;
    v63 = sub_764D10();
    sub_3605A0(v63, v59);

    v64 = *&v8[v57];
    if (v64)
    {
      type metadata accessor for BannerButtonRow();
      v65 = v60;
      v58 = v64;
      v66 = sub_76A1C0();

      if ((v66 & 1) == 0)
      {
        [v58 removeFromSuperview];
      }
    }

    else
    {
      v67 = v60;
      v58 = 0;
    }

    v68 = *&v8[v57];
    *&v8[v57] = v60;
    v69 = v60;

    sub_13B074(v64);
  }

  else
  {
    if (v58)
    {
      [v58 removeFromSuperview];
      v61 = *&v8[v57];
    }

    else
    {
      v61 = 0;
    }

    *&v8[v57] = 0;

    sub_13B074(v58);
  }

  v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics] = v76 & 1;
  [v8 setNeedsLayout];
  sub_75A110();
  sub_768900();
  sub_768ED0();
  sub_65D4AC();
  [v8 setNeedsLayout];
}

void sub_65D4AC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v6 = v2;
      v3 = [v0 traitCollection];
      sub_13C02C(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        sub_765320();
        sub_75A110();
        sub_759210();
        sub_75A090();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_75A040();

        sub_10A2C(v7, &unk_9443A0);
      }
    }
  }
}

void sub_65D674(id a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BD88(&qword_944448);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_765120();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_35FDF4(a3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &qword_944448);
  }

  else
  {
    v30 = a1;
    v18 = *(v9 + 32);
    v18(v17, v7, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v20 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork), v21 = Strong, , v21, v20))
    {
      sub_765380();

      v18(v14, v11, v8);
      sub_65DBD4(&qword_947B80, &type metadata accessor for Artwork.URLTemplate);
      v22 = sub_7691C0();
      v23 = *(v9 + 8);
      v23(v14, v8);
      v23(v17, v8);
      a1 = v30;
      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v9 + 8))(v17, v8);
      a1 = v30;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView);
    v26 = v24;
    v27 = v25;

    if (v25)
    {
      v31.value.super.isa = a1;
      v31.is_nil = 0;
      sub_7591D0(v31, v28);
    }
  }
}

void sub_65D9C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  if (sub_764D20())
  {

    v8 = 15.0;
  }

  else
  {
    v8 = 22.0;
  }

  sub_764D10();
  sub_BD88(&unk_954000);
  v9 = sub_769490();

  v10 = 15.0;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  v11 = 9.0;
  if (v9)
  {
    v11 = 12.0;
  }

  *&v12 = v11;
  *(&v12 + 1) = 0x402E000000000000;
  v13 = v11;
  v14 = xmmword_7AB5C0;
  v15 = v8;
  v16 = 0x4022000000000000;
  v17 = v10;
  v18 = xmmword_786B00;
  v19 = xmmword_786B10;
  sub_13C170(v7, &v12, a6);
}

uint64_t sub_65DB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65DBD4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_65DC1C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_65DD94(uint64_t a1)
{
  v93 = a1;
  v75 = sub_758B40();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_75F340();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_760280();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7687B0();
  __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v63 = sub_765490();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75F450();
  v95 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_BD88(&qword_960698);
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v79 = (&v62 - v18);
  v19 = sub_BD88(&unk_9606A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v62 - v23);
  v94 = v1;
  sub_764C60();
  v26 = v25;
  sub_75D5C0();
  v28 = v27;
  if (!v26)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  v29 = sub_769210();

  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = sub_769210();

LABEL_6:
  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v92 = v31;
  sub_65F67C(v31, v93);
  result = sub_75D5A0();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v78 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_hasRequiredParameters;
  v93 = v95 + 16;
  v91 = (v90 + 7);
  v77 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction;
  v90 += 6;
  v84 = v95 + 32;
  v82 += 7;
  v81 = &v97;
  v80 = (v95 + 8);
  v88 = v21;
  v87 = v17;
  v86 = result;
  v85 = v35;
  v83 = v24;
  while (1)
  {
    if (v34 == v35)
    {
      v36 = 1;
      v34 = v35;
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_19;
    }

    v37 = v95;
    v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
    v39 = *(v17 + 48);
    v40 = v79;
    *v79 = v34;
    (*(v37 + 16))(v40 + v39, v38, v12);
    sub_109C4(v40, v21, &qword_960698);
    v36 = 0;
    ++v34;
LABEL_13:
    (*v91)(v21, v36, 1, v17);
    sub_109C4(v21, v24, &unk_9606A0);
    if ((*v90)(v24, 1, v17) == 1)
    {

      v98 = 0;
      aBlock = 0u;
      v97 = 0u;
      (*(v62 + 104))(v64, enum case for FlowPage.viewController(_:), v63);
      v58 = sub_7570A0();
      (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
      v59 = sub_759E30();
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v101 = sub_4373D8();
      v100 = v92;
      v60 = v92;
      sub_768790();
      (*(v66 + 104))(v72, enum case for FlowPresentationContext.presentModal(_:), v67);
      (*(v70 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v71);
      (*(v73 + 104))(v76, enum case for FlowOrigin.inapp(_:), v75);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v61 = sub_758AD0();

      return v61;
    }

    v41 = *v24;
    v42 = *(v17 + 48);
    v43 = v95;
    v44 = *(v95 + 32);
    v44(v16, v24 + v42, v12);
    v45 = v12;
    v46 = v89;
    (*(v43 + 16))(v89, v16, v45);
    v47 = *(v43 + 80);
    v48 = v16;
    v49 = (v47 + 24) & ~v47;
    v50 = (v82 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v52 = v46;
    v12 = v45;
    v44((v51 + v49), v52, v45);
    v53 = v94;
    *(v51 + v50) = v94;
    v98 = sub_660120;
    v99 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v97 = sub_6B0344;
    *(&v97 + 1) = &unk_89BB90;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v16 = v48;

    [v92 addTextFieldWithConfigurationHandler:v54];
    _Block_release(v54);
    if (sub_75F3F0())
    {
      v56 = v94;
      v94[v78] = 1;
      v57 = *&v56[v77];
      if (v57)
      {
        [v57 setEnabled:0];
      }
    }

    result = (*v80)(v48, v45);
    v17 = v87;
    v21 = v88;
    v24 = v83;
    v33 = v86;
    v35 = v85;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_65E908(uint64_t a1)
{
  v56 = a1;
  v2 = sub_BD88(&unk_955F90);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = sub_7687B0();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75F450();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7614C0();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  sub_7614B0();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  v19 = &unk_960000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[200];
      v50[1] = v15;
      v21 = *(v15 + v20);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? sub_76A770() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = sub_75D5A0();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          sub_769240();

          v2 = v62;
          sub_7614A0();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = sub_76A860();
      v19 = &unk_960000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_768FF0();
    sub_BE38(v30, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_B1B4(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_7685E0();
    sub_10A2C(v67, &unk_93FBD0);
    sub_768EA0();

    v34 = sub_75D590();
    if (v34)
    {
      v35 = v34;
      v36 = sub_BD88(&unk_93F630);
      v37 = v55;
      sub_768860();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10A2C(v39, &unk_93F980);
      }

      v68 = sub_764C80();
      v69 = sub_660030(&qword_95AB70, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      sub_768980();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_BEB8(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    sub_768790();
    v40 = sub_75D580();
    (*(v58 + 8))(v29, v59);
    v41 = sub_BD88(&unk_93F630);
    v42 = v52;
    sub_768860();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10A2C(v39, &unk_93F980);
    }

    v68 = sub_758C00();
    v69 = sub_660030(&unk_95AB50, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    sub_768980();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_BEB8(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_65F3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_75F430();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  sub_75F420();
  if (v12)
  {
    v13 = sub_769210();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  sub_75F440();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  sub_769440();
  if (*(&dword_10 + (*(a4 + v17) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a4 + v17) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return swift_endAccess();
}

void sub_65F67C(void *a1, uint64_t a2)
{
  v15._countAndFlagsBits = 0x432E6E6F69746341;
  v15._object = 0xED00006C65636E61;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_75B750(v15, v17);
  v5 = sub_769210();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:0 handler:0];

  [a1 addAction:v7];
  v16._countAndFlagsBits = 0x4F2E6E6F69746341;
  v16._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_75B750(v16, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a2;
  v9 = v2;

  v10 = sub_769210();

  v14[4] = sub_65FFF0;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_6B0344;
  v14[3] = &unk_89BB40;
  v11 = _Block_copy(v14);

  v12 = [v6 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [a1 addAction:v12];
  [a1 setPreferredAction:v12];
  v13 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction];
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction] = v12;
}

id sub_65F89C()
{
  v32 = sub_75F450();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v30 = *(v0 + v3);
  if (!(v30 >> 62))
  {
    v29 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v29 = sub_76A860();
  if (!v29)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_templateAction);
  v5 = v30 & 0xC000000000000001;
  v24 = v0;
  v25 = v30 & 0xFFFFFFFFFFFFFF8;
  v27 = (v1 + 8);
  v28 = v4;

  v6 = 0;
  v7 = &selRef_setInterGroupSpacing_;
  v26 = v1;
  while (1)
  {
    if (v5)
    {
      v8 = sub_76A770();
    }

    else
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v30 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v0 = sub_75D5A0();
    v11 = [v9 v7[248]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v11 >= v0[2])
    {
      goto LABEL_26;
    }

    v12 = v31;
    (*(v1 + 16))(v31, v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v32);

    v0 = v12;
    v13 = v9;
    if (sub_75F3F0())
    {
      v14 = [v9 text];
      if (!v14)
      {
        break;
      }

      v0 = v14;
      v15 = sub_769240();
      v16 = v7;
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      v20 = v15 & 0xFFFFFFFFFFFFLL;
      v1 = v26;
      v21 = (v18 & 0x2000000000000000) == 0;
      v7 = v16;
      v13 = v9;
      if (v21)
      {
        v19 = v20;
      }

      if (!v19)
      {
        break;
      }
    }

    (*v27)(v31, v32);
    ++v6;
    if (v10 == v29)
    {

      v0 = v24;
      goto LABEL_21;
    }
  }

  v22 = *(v24 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction);
  if (v22)
  {
    [v22 setEnabled:0];
  }

  return (*v27)(v31, v32);
}

void sub_65FBC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_75F450();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75D5A0();
  v11 = [a1 tag];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

  sub_75F400();
  if ((v12 & 1) == 0)
  {
    v13 = [a1 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_769210();
      v16 = [v14 stringByReplacingCharactersInRange:a2 withString:{a3, v15}];

      if (v16)
      {
        [v16 length];

        (*(v7 + 8))(v9, v6);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_65FFB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_660018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_660030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_660084()
{
  v1 = sub_75F450();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_660120(void *a1)
{
  v3 = *(sub_75F450() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_65F3CC(a1, v5, v1 + v4, v6);
}

uint64_t sub_660204()
{
  v0 = sub_BD88(&qword_960788);
  sub_161DC(v0, qword_9606F8);
  sub_BE38(v0, qword_9606F8);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

char *sub_6602B8()
{
  ObjectType = swift_getObjectType();
  v26 = sub_768C60();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = sub_76A770();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      sub_768C10();
      sub_BDD0(v30);
      sub_BDD0(&v31);
      *&v31 = v12 + 1;
      v17 = sub_76A910();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      sub_768C40();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_BDD0(&v31);
      v10 = v2;
      sub_769E70();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = sub_76A860();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_660798();
  sub_BD88(&qword_9477F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77B6D0;
  *(v21 + 32) = sub_767890();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  sub_769F40();

  swift_unknownObjectRelease();

  return v20;
}

id sub_660798()
{
  sub_76A7C0();
  sub_BE70(0, &qword_93E540);
  if (qword_93E030 != -1)
  {
    swift_once();
  }

  v0 = 0;
  do
  {
    v69 = v0;
    v3 = *(&off_87F390 + v0 + 32);
    v4 = sub_BD88(&qword_960788);
    sub_BE38(v4, qword_9606F8);
    v71 = v67;
    v5 = v67;
    sub_7592B0();
    v65 = v5;

    v6 = v72;
    v7 = type metadata accessor for RatingView();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
    v9 = &v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = v3;
    if (qword_93D100 != -1)
    {
      swift_once();
    }

    v10 = qword_9552A8;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = v6;
    *v9 = 0;
    v9[8] = 1;
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
    objc_allocWithZone(type metadata accessor for StarRow());
    v11 = v10;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(v3, 1, v6, 0, 1, 0, 1);
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = 0;
    v70.receiver = v8;
    v70.super_class = v7;
    v12 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView];
    v68 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView;
    if (!v14)
    {
      v17 = v12;
      goto LABEL_19;
    }

    v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
    if (v15)
    {
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
    }

    else
    {
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
    }

    v18 = *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v16;
    if (!v18)
    {
      v24 = v15;
      v25 = v16;
      v26 = v13;
      v21 = 0;
LABEL_17:
      sub_43CE14();

      goto LABEL_18;
    }

    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v13;
    v23 = sub_76A1C0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
LABEL_19:
    v27 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
    v28 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
    v29 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor;
    v30 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
    v31 = *(v28 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v28 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v30;
    if (!v31)
    {
      v35 = v30;
      v33 = 0;
LABEL_23:
      sub_43CE14();
      v32 = v30;
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    v34 = sub_76A1C0();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:

    v36 = *&v13[v27];
    v37 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating;
    v38 = *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
    *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
    v39 = v36;
    sub_43C36C(v38);

    if (*&v13[v68])
    {
      [v13 addSubview:?];
    }

    [v13 addSubview:{*&v13[v27], v65}];

    v40 = v3;
    v41 = *&v13[v37];
    *&v13[v37] = v3;
    if (v41 != v3)
    {
      if (v3 < 0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars];
        if (v42 >= v40)
        {
          goto LABEL_32;
        }
      }

      *&v13[v37] = v42;
      v40 = v42;
LABEL_32:
      v43 = *&v13[v27];
      v44 = *(v43 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating);
      *(v43 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating) = v40;
      sub_43C36C(v44);
    }

    v45 = sub_769FD0();
    v46 = *&v13[v29];
    *&v13[v29] = v45;
    v2 = v45;
    if (sub_76A1C0())
    {
      v1 = v2;
      v2 = v46;
      goto LABEL_5;
    }

    v47 = *&v13[v68];
    if (v47)
    {
      v48 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
      if (v48)
      {
        v49 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
      }

      else
      {
        v49 = *&v13[v29];
      }

      v50 = *(v47 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
      *(v47 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v49;
      if (v50)
      {
        v51 = v48;
        v52 = v49;
        v50 = v50;
        v53 = sub_76A1C0();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
      }

      sub_43CE14();
      v52 = v49;
LABEL_43:
    }

    v56 = *&v13[v27];
    v57 = *&v13[v29];
    v58 = *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v57;
    if (v58)
    {
      v59 = v57;
      v1 = v58;
      v60 = sub_76A1C0();

      if (v60)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v57;
      v1 = 0;
    }

    sub_43CE14();
    v59 = v57;
LABEL_49:

LABEL_5:
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v0 = v69 + 8;
  }

  while (v69 != 32);
  v62 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v63 = *&v66[v62];
  *&v66[v62] = _swiftEmptyArrayStorage;
  sub_660EC8(v63);

  return [v66 setNeedsLayout];
}

void sub_660DDC(void *a1)
{
  v2 = sub_7699D0() & 1;
  v3 = [a1 traitCollection];
  v4 = sub_7699D0() & 1;

  if (v2 != v4)
  {
    sub_660798();
  }
}

unint64_t sub_660EC8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_76A860();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_76A770();
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  result = swift_beginAccess();
  v7 = *&v13[v6];
  if (v7 >> 62)
  {
    result = sub_76A860();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_93E038 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_960710;
    [v11 setMinimumContentSizeCategory:qword_960710];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

uint64_t sub_6610BC(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_76A860();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77D9F0;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = sub_7671E0();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_93E018 != -1)
  {
    swift_once();
  }

  v14 = sub_BD88(&qword_940AD0);
  sub_BE38(v14, qword_9606B0);
  sub_7592A0();
  if (qword_93E020 != -1)
  {
    swift_once();
  }

  sub_BE38(v14, qword_9606C8);
  return sub_7592A0();
}

void sub_661308(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (sub_76A860())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_77D9F0;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = sub_7671E0();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_93E018 != -1)
      {
        swift_once();
      }

      v18 = sub_BD88(&qword_940AD0);
      sub_BE38(v18, qword_9606B0);
      sub_7592A0();
      if (qword_93E020 != -1)
      {
        swift_once();
      }

      sub_BE38(v18, qword_9606C8);
      sub_7592A0();
      if (qword_93E028 != -1)
      {
        swift_once();
      }

      a1 = sub_BE38(v18, qword_9606E0);
      sub_7592A0();
      v19 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_76A770();
          }

          else
          {
            if (v11 - 4 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_77D9F0;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = sub_7671E0();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          sub_769CA0();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_76A770();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          sub_769CA0();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }
}

char *sub_6619BC()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView];
  sub_BE70(0, &qword_93E540);
  v6 = v5;
  v7 = sub_769FD0();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_661BA0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  sub_769CA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_661DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_661E3C(uint64_t a1)
{
  if (qword_93E038 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_960710;
  sub_10974(a1, *(a1 + 24));
  v2 = v1;
  return sub_767670();
}

double sub_661EC8(uint64_t a1, double a2)
{
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93E030 != -1)
  {
    swift_once();
  }

  v8 = sub_BD88(&qword_960788);
  sub_BE38(v8, qword_9606F8);
  sub_7592A0();
  v9 = v28;
  v10 = sub_769A20();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = sub_759930();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = sub_759930();

  v16(v7, v4);
  sub_76A130();
  [v23 contentInsets];

  if (qword_93E018 != -1)
  {
    swift_once();
  }

  v24 = sub_BD88(&qword_940AD0);
  sub_BE38(v24, qword_9606B0);
  sub_7592A0();
  if (qword_93E020 != -1)
  {
    swift_once();
  }

  sub_BE38(v24, qword_9606C8);
  sub_7592A0();
  return a2;
}

uint64_t sub_662468()
{
  result = JUScreenClassHasRoundedCorners();
  v1 = 8.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_960790 = *&v1;
  return result;
}

BOOL sub_662498()
{
  v1 = *(v0 + 16);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superview];
  if (v10)
  {
    v65 = v9;
    v66 = v7;
    v68 = v5;
    v70 = v3;
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v1 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v72.origin.x = v13;
    v72.origin.y = v15;
    v72.size.width = v17;
    v72.size.height = v19;
    Height = CGRectGetHeight(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v73.size.width = v25;
    v73.size.height = v27;
    v29 = Height - CGRectGetHeight(v73);
    if (qword_93E040 != -1)
    {
      swift_once();
    }

    v30 = v29 - *&qword_960790;
    v5 = v68;
    v3 = v70;
    v9 = v65;
    v7 = v66;
  }

  else
  {
    v21 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  v74.origin.x = v3;
  v74.origin.y = v5;
  v74.size.width = v7;
  v74.size.height = v9;
  v31 = v21;
  v32 = v25;
  v33 = v27;
  if (CGRectEqualToRect(v74, *(&v30 - 1)))
  {
    return 0;
  }

  [v1 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v1 superview];
  if (v43)
  {
    v67 = v40;
    v69 = v38;
    v71 = v36;
    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [v1 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v59 = CGRectGetHeight(v75);
    if (qword_93E040 != -1)
    {
      v64 = v59;
      swift_once();
      v59 = v64;
    }

    v60 = v59 + *&qword_960790;
    v38 = v69;
    v36 = v71;
    v40 = v67;
  }

  else
  {
    v54 = 0;
    v60 = 0.0;
    v56 = 0;
    v58 = 0;
  }

  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v42;
  v61 = v54;
  v62 = v56;
  v63 = v58;
  return !CGRectEqualToRect(v76, *(&v60 - 1));
}

uint64_t sub_662730(char a1, char a2)
{
  if (*(v2 + 72) == (a1 & 1))
  {
    result = sub_662498();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(v2 + 16);
  v7 = [v6 superview];
  if (a1)
  {
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [v6 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v49.origin.x = v10;
      v49.origin.y = v12;
      v49.size.width = v14;
      v49.size.height = v16;
      Height = CGRectGetHeight(v49);
      v50.origin.x = v18;
      v50.origin.y = v20;
      v50.size.width = v22;
      v50.size.height = v24;
      v26 = Height - CGRectGetHeight(v50);
      if (qword_93E040 != -1)
      {
        swift_once();
      }

      v27 = v26 - *&qword_960790;
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v28 = v7;
    [v7 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v6 frame];
    v18 = v37;
    v22 = v38;
    v24 = v39;
    v51.origin.x = v30;
    v51.origin.y = v32;
    v51.size.width = v34;
    v51.size.height = v36;
    v40 = CGRectGetHeight(v51);
    if (qword_93E040 != -1)
    {
      v47 = v40;
      swift_once();
      v40 = v47;
    }

    v27 = v40 + *&qword_960790;
    goto LABEL_13;
  }

  v18 = 0.0;
  v27 = 0.0;
  v22 = 0.0;
  v24 = 0.0;
LABEL_13:
  v41 = swift_allocObject();
  *(v41 + 16) = v2;
  *(v41 + 24) = v18;
  *(v41 + 32) = v27;
  *(v41 + 40) = v22;
  *(v41 + 48) = v24;
  if (a2)
  {
    v42 = objc_opt_self();
    v48[4] = sub_662C80;
    v48[5] = v41;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 1107296256;
    v48[2] = sub_23F0CC;
    v48[3] = &unk_89BC08;
    v43 = _Block_copy(v48);

    [v42 _animateUsingSpringWithTension:1 friction:v43 interactive:0 animations:120.0 completion:12.0];
    _Block_release(v43);
  }

  else
  {

    [v6 setFrame:{v18, v27, v22, v24}];
  }

  v44 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v45 = *(v2 + 32);
  if (!v45)
  {
  }

  v46 = *(v2 + 40);

  v45(v44);

  return sub_47160(v45, v46);
}

uint64_t sub_662A8C(char a1)
{
  v3 = *(v1 + 24);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_769B20();
  if (v4 & 1) != 0 || ([v3 contentSize], v9 = v8, objc_msgSend(v3, "bounds"), v10 = v9 - CGRectGetHeight(v16) - *(v1 + 48), objc_msgSend(v3, "bounds"), v10 < CGRectGetHeight(v17)) && (sub_75F3E0(), v11 = sub_75F3D0(), v12 = sub_75F3C0(), v11, (v12))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v10 > v13 && v13 > 0.0;
    v7 = a1 & 1;
  }

  return sub_662730(v6, v7);
}

uint64_t sub_662BD0()
{
  sub_47160(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_662C48()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_662C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_75A5C0();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_7570A0();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_765790();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9608E0);
  v14 = sub_768F90();
  sub_764800();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_764840();
    v16 = sub_763F70();
    if (*(v15 + 16))
    {
      v18 = sub_3DF2F8(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_132B4(*(v15 + 56) + 32 * v18, &v59);

      sub_BE70(0, &qword_945820);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_764840();
      v24 = sub_7644A0();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_3DF2F8(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_132B4(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_764840();
            v31 = sub_75EF70();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_3DF2F8(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_132B4(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_76A730(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x80000000007EFE70;
                  sub_769370(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_769370(v66);

                  sub_757090();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_75A110();
                    v51[1] = sub_768900();
                    sub_768ED0();
                    v52 = v59;
                    sub_BD88(&qword_9608E8);
                    v40 = (sub_BD88(&qword_945570) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_77B6D0;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x80000000007EFED0;
                    sub_76A6E0();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_10DE18(v42);
                    swift_setDeallocating();
                    sub_10A2C(v43, &qword_945570);
                    swift_deallocClassInstance();
                    sub_75A5B0();
                    sub_75D640();
                    sub_768ED0();
                    sub_6651F4(&qword_9608F0, &type metadata accessor for ShelvesIntent);
                    v45 = v56;
                    sub_75D630();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x80000000007EFED0;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_BE70(0, &qword_940340);

                    v50 = sub_769970();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_768F10();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_BEB8(&v59);
                    return v14;
                  }

                  sub_10A2C(v6, &unk_93FD30);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_768F60();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_768F60();
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t sub_663534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v49 = a7;
  v12 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v12 - 8);
  v53 = v43 - v13;
  v14 = sub_758A20();
  __chkstk_darwin(v14 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75C430();
  __chkstk_darwin(v16 - 8);
  v51 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_960948);
  __chkstk_darwin(v18 - 8);
  v54 = v43 - v19;
  v20 = sub_765790();
  __chkstk_darwin(v20 - 8);
  v21 = sub_7636D0();
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = sub_758E90();
    v55 = a3;
    v56 = a4;

    sub_76A6E0();
    if (*(v25 + 16) && (sub_663E34(v57), (v26 & 1) != 0))
    {

      sub_1EB60(v57);

      v27 = sub_764AD0();

      v28 = sub_315F24(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = sub_76A860();
          if (v30 >= 1)
          {
LABEL_7:
            v44 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            sub_7636C0();
            v46 = type metadata accessor for AvatarShowcaseView();
            v31 = objc_allocWithZone(v46);
            v45 = sub_4F983C(a6, v23);
            v57[0] = _swiftEmptyArrayStorage;
            v47 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_76A860();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v48 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                sub_76A770();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_75BB80();

              ++v32;
              if (v23)
              {
                sub_769440();
                if (*(&dword_10 + (v57[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_7694C0();
                }

                sub_769500();
                v48 = v57[0];
                v32 = v33;
              }
            }

            v34 = v45;
            sub_4F9BAC(v48, v49);

            v35 = v50;
            if (v44 <= v50)
            {
              v36._object = 0x80000000007EFF20;
              v36._countAndFlagsBits = 0xD00000000000001DLL;
              v35 = v44;
            }

            else
            {
              v36._countAndFlagsBits = 0xD000000000000021;
              v36._object = 0x80000000007EFF40;
            }

            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v50 = sub_761130(v36, v35, v58);
            v49 = v37;
            sub_7647E0();
            sub_764800();
            sub_7647F0();
            v48 = sub_764850();
            v44 = v38;
            v43[3] = sub_764750();
            v43[2] = v39;
            sub_BD88(&unk_94F470);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_77B6D0;
            *(inited + 32) = sub_757A40();
            *(inited + 72) = v46;
            *(inited + 40) = v41;
            *(inited + 48) = v34;
            v46 = v34;
            v45 = sub_10E8CC(inited);
            swift_setDeallocating();
            sub_10A2C(inited + 32, &unk_9453B0);
            sub_764770();
            sub_764810();
            v43[1] = sub_7647A0();
            v43[0] = v42;
            sub_7647B0();
            sub_764740();
            sub_764820();
            sub_764790();
            sub_764860();
            swift_allocObject();
            v57[0] = sub_7647D0();

            sub_768F60();
          }
        }

        else
        {
          v30 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_1EB60(v57);
    }

    v57[0] = 0;
    sub_768F60();
  }

  return result;
}

uint64_t sub_663C8C()
{
  sub_BD88(&qword_941C10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77B6D0;
  swift_getErrorValue();
  *(v0 + 56) = v3;
  v1 = sub_B1B4((v0 + 32));
  (*(*(v3 - 8) + 16))(v1);
  sub_76AA10();
}

unint64_t sub_663D5C(uint64_t a1)
{
  v2 = sub_76AA20();

  return sub_664990(a1, v2);
}

unint64_t sub_663DA4(uint64_t a1)
{
  sub_769240();
  sub_76AA30();
  sub_769330();
  v2 = sub_76AA80();

  return sub_665054(a1, v2);
}

unint64_t sub_663E34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_76A6B0(*(v2 + 40));

  return sub_6649FC(a1, v4);
}

unint64_t sub_663E78(unsigned __int8 a1)
{
  sub_76AA30();
  if ((a1 - 4) >= 3u)
  {
    sub_76AA40(2uLL);
    v2 = a1;
  }

  else
  {
    v2 = qword_7AC0C0[(a1 - 4)];
  }

  sub_76AA40(v2);
  v3 = sub_76AA80();

  return sub_664AC4(a1, v3);
}

unint64_t sub_663F14(double *a1)
{
  sub_76AA30();
  sub_4E1F8C(v4);
  v2 = sub_76AA80();

  return sub_664B7C(a1, v2);
}

unint64_t sub_663F80(uint64_t a1)
{
  sub_764CF0();
  sub_6651F4(&qword_948180, &type metadata accessor for AdamId);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for AdamId, &qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_664054(uint64_t a1)
{
  sub_75BB40();
  sub_6651F4(&qword_942C50, &type metadata accessor for EditorialPageKey);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for EditorialPageKey, &qword_942C58, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_664128(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_76AA30();
  sub_76AA40(a1);
  sub_76AA40(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_76AA60(*&v6);
  v7 = sub_76AA80();

  return sub_664E54(a1, a2, v7, a3);
}

unint64_t sub_6641D0(double a1, double a2)
{
  sub_76AA30();
  sub_3B7884(a1, a2);
  v4 = sub_76AA80();

  return sub_664EE0(v4, a1, a2);
}

unint64_t sub_664244(uint64_t a1)
{
  sub_765390();
  sub_6651F4(&qword_955908, &type metadata accessor for Artwork);
  v2 = sub_769150();
  return sub_664F58(a1, v2);
}

unint64_t sub_6642F0(uint64_t a1)
{
  sub_765790();
  sub_6651F4(&unk_9558D0, &type metadata accessor for BadgeType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for BadgeType, &qword_9608F8, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_6643C4(uint64_t a1)
{
  sub_75AD00();
  sub_6651F4(&qword_960900, &type metadata accessor for OfferTitleType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for OfferTitleType, &qword_960908, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_664498(uint64_t a1)
{
  sub_757640();
  sub_6651F4(&unk_952080, &type metadata accessor for IndexPath);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for IndexPath, &qword_944B50, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_66456C(uint64_t a1)
{
  sub_758DC0();
  sub_6651F4(&qword_960928, &type metadata accessor for PageFacets.Facet);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_960930, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_664640(uint64_t a1)
{
  sub_768DD0();
  sub_6651F4(&qword_960938, &type metadata accessor for MetricsFieldExclusionRequest);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_960940, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_664714(uint64_t a1)
{
  sub_768E20();
  sub_6651F4(&qword_948110, &type metadata accessor for MetricsFieldInclusionRequest);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_948118, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_6647E8(uint64_t a1)
{
  sub_75E5F0();
  sub_6651F4(&qword_960910, &type metadata accessor for SearchAdOpportunity.LifecycleEventType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_960918, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_6648BC(uint64_t a1)
{
  sub_75B1D0();
  sub_6651F4(&qword_955918, &type metadata accessor for AdPlacementType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for AdPlacementType, &qword_960920, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_664990(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_6649FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_59C2C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_76A6C0();
      sub_1EB60(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_664AC4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664B7C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory() - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_45DEEC(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_4E32FC(v8, a1);
      sub_30984(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_664CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_6651F4(v24, v25);
      v20 = sub_7691C0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_664E54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664EE0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664F58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_765390();
    sub_6651F4(&qword_947FE0, &type metadata accessor for Artwork);
    do
    {
      if (sub_7691C0())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_665054(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_769240();
      v8 = v7;
      if (v6 == sub_769240() && v8 == v9)
      {
        break;
      }

      v11 = sub_76A950();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_665158()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_665190()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6651F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6652B0()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = sub_769210();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_BD88(&unk_93F5C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77B6C0;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_BE70(0, &qword_93E540);
      isa = sub_769450().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_794070;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_BE70(0, &qword_942270);
                v39 = sub_769450().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_66587C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_665924(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
  sub_759210();
  *&v4[v17] = sub_759020();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  if (qword_93DA78 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F760);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_75BB20());
  *&v5[v18] = sub_75BB10();
  v5[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle] = 0;
  v23 = type metadata accessor for BundleChildView();
  v34.receiver = v5;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  [*&v28[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel] setTextAlignment:1];
  v30 = *&v28[v29];
  sub_BE70(0, &qword_93E540);
  v31 = v30;
  v32 = sub_769FF0();
  [v31 setTextColor:v32];

  [v28 addSubview:*&v28[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

id sub_665CCC()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v39[-1] - v10;
  v12 = type metadata accessor for BundleChildView();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v13 = [v0 traitCollection];
  v14 = sub_7653B0();
  v39[3] = v14;
  v39[4] = sub_9BA34();
  v15 = sub_B1B4(v39);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(v39);
  if (v14)
  {
    v16 = sub_7699D0();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_7591A0();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_765290();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  sub_765280();
  v20 = v19;
  v18(v11, v2);
  sub_75D650();
  MinX = CGRectGetMinX(v41);
  sub_75D650();
  MinY = CGRectGetMinY(v42);
  sub_759170();
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel];
  [v23 firstBaselineFromTop];
  v25 = v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle];
  if (v25 == 2)
  {
    return [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v27 = 18.0 - v24;
  sub_75D650();
  [v23 sizeThatFits:{v28, v29}];
  if (v25)
  {
    v32 = v30;
    v43.origin.x = MinX;
    v43.origin.y = MinY;
    v43.size.width = v17;
    v43.size.height = v20;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = MinX;
    v44.origin.y = MinY;
    v44.size.width = v17;
    v44.size.height = v20;
    v34 = CGRectGetMinY(v44);
    if (v32 > 80.0)
    {
      v32 = 80.0;
    }

    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = v17;
    v45.size.height = v20;
    return [v23 setFrame:{v27 + MaxX, v34, v32, CGRectGetHeight(v45)}];
  }

  else
  {
    v35 = v31;
    sub_75D650();
    v36 = CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = MinY;
    v47.size.width = v17;
    v47.size.height = v20;
    v37 = v27 + CGRectGetMaxY(v47);
    v48.origin.x = MinX;
    v48.origin.y = MinY;
    v48.size.width = v17;
    v48.size.height = v20;
    return [v23 setFrame:{v36, v37, CGRectGetWidth(v48), v35}];
  }
}

id sub_666190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleChildView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_666248()
{
  result = qword_9609C8;
  if (!qword_9609C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9609C8);
  }

  return result;
}

void sub_66629C(uint64_t a1, char a2)
{
  v3 = sub_7653B0();
  v7[3] = v3;
  v7[4] = sub_9BA34();
  v4 = sub_B1B4(v7);
  (*(*(v3 - 8) + 104))(v4, enum case for Feature.voyager_bundles_2025A(_:), v3);
  LOBYTE(v3) = sub_765C30();
  sub_BEB8(v7);
  if (v3)
  {
    sub_7699D0();
  }

  if (a2 == 2 || (a2 & 1) != 0)
  {
    sub_765280();
  }

  else
  {
    sub_765280();
    sub_BE70(0, &qword_93F900);
    if (qword_93DA78 != -1)
    {
      swift_once();
    }

    v5 = sub_7666D0();
    sub_BE38(v5, qword_99F760);
    v6 = sub_769E10();
    [v6 descender];
  }
}

void sub_666428()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
  sub_759210();
  *(v0 + v9) = sub_759020();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  if (qword_93DA78 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F760);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  *(v1 + v10) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle) = 0;
  sub_76A840();
  __break(1u);
}

double sub_666698()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v29[-1] - v11;
  v13 = [v0 traitCollection];
  v14 = sub_7653B0();
  v29[3] = v14;
  v29[4] = sub_9BA34();
  v15 = sub_B1B4(v29);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(v29);
  if (v14)
  {
    v16 = sub_7699D0();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_7591A0();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_765290();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle;
  v20 = v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle];
  v21 = [v1 traitCollection];
  sub_66629C(v12, v20);

  v18(v12, v2);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel];
  type metadata accessor for BundleChildView();
  sub_75D650();
  [v22 sizeThatFits:{v23, v24}];
  v26 = fmin(v25, 80.0);
  if ((v1[v19] & 1) == 0)
  {
    v26 = -0.0;
  }

  return v17 + v26;
}

uint64_t sub_666980(uint64_t a1, uint64_t a2)
{
  v3 = sub_75DF60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_960A78, &type metadata accessor for ComponentDecoration), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_66D6E4(&qword_960A80, &type metadata accessor for ComponentDecoration);
      v15 = sub_7691C0();
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

uint64_t sub_666B98(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_76A670();
  }

  else if (*(a2 + 16) && (sub_BE70(0, &qword_963060), v5 = sub_76A1B0(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_76A1C0();

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

uint64_t sub_666CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_948138, &type metadata accessor for Shelf.ContentType), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_66D6E4(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
      v15 = sub_7691C0();
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

uint64_t sub_666EC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&unk_952080, &type metadata accessor for IndexPath), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_66D6E4(&qword_944B50, &type metadata accessor for IndexPath);
      v15 = sub_7691C0();
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

uint64_t sub_6670E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_758DA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_956018, &type metadata accessor for PageFacets.Facet.Option), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_66D6E4(&qword_956020, &type metadata accessor for PageFacets.Facet.Option);
      v15 = sub_7691C0();
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

uint64_t sub_6672F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_769240(), sub_76AA30(), sub_769330(), v3 = sub_76AA80(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_769240();
      v9 = v8;
      if (v7 == sub_769240() && v9 == v10)
      {
        break;
      }

      v12 = sub_76A950();

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

double sub_66744C()
{
  v1 = sub_7581D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7585B0();
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7585D0();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties];

  v40 = v7;
  sub_66A1B4(v4, v11, v0, v7);

  (*(v2 + 8))(v4, v1);
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView];
  v68 = sub_759210();
  v69 = &protocol witness table for UIView;
  v39 = v12;
  v67 = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v14 = *&v0[v13];
  if (v14)
  {
    v15 = sub_75A030();
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
  v38 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel];
  v17 = v38;
  v18 = sub_75BB20();
  v60 = v18;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v17;
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  v57 = v18;
  v56 = v19;
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton];
  v54 = type metadata accessor for OfferButton();
  v55 = &protocol witness table for UIView;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel];
  v52 = &protocol witness table for UILabel;
  v53 = v20;
  v51 = v18;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v48 = v18;
  v46 = &protocol witness table for UILabel;
  v47 = v22;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
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
  sub_7585C0();
  sub_66D6E4(&qword_960A70, &type metadata accessor for AppShowcaseLockupViewLayout);
  v33 = v43;
  sub_7665A0();
  v35 = v34;
  (*(v42 + 8))(v32, v33);
  return v35;
}

double sub_667848(uint64_t a1, void *a2)
{
  v140 = a2;
  v3 = sub_7585B0();
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7585D0();
  v127 = *(v5 - 8);
  v128 = v5;
  __chkstk_darwin(v5);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75B490();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v108 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v107 - v10;
  v11 = sub_75D850();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v107 - v14;
  v136 = sub_7666D0();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_762D10();
  v16 = *(v141 - 8);
  __chkstk_darwin(v141);
  v121 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v107 - v19;
  __chkstk_darwin(v20);
  v130 = &v107 - v21;
  v22 = sub_7581D0();
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
  sub_758740();
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

  v45 = sub_7670D0();
  swift_allocObject();
  v123 = sub_7670B0();
  v142 = v22;
  sub_758760();
  v122 = sub_764EF0();
  v113 = v46;

  v47 = v142;
  sub_758740();
  (*(v144 + 16))(v31, v34, v47);
  v48 = v41(v31, v47);
  v49 = v136;
  v114 = v41;
  v112 = v42;
  if (v48 == v135)
  {
    v50 = v134;
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v51 = qword_99F670;
LABEL_18:
    v56 = sub_BE38(v49, v51);
    v55 = v133;
    (*(v133 + 16))(v50, v56, v49);
    v129 = *(v144 + 8);
    v129(v34, v47);
    goto LABEL_19;
  }

  v50 = v134;
  if (v48 == enum case for AppShowcaseType.small(_:) || v48 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v51 = qword_99F688;
    goto LABEL_18;
  }

  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v52 = sub_BE38(v49, qword_99F688);
  v53 = v133;
  (*(v133 + 16))(v50, v52, v49);
  v54 = *(v144 + 8);
  v54(v34, v47);
  v129 = v54;
  v54(v31, v47);
  v50 = v134;
  v55 = v53;
LABEL_19:
  v57 = sub_BE70(0, &qword_93F900);
  v58 = v140;
  v59 = [v140 traitCollection];
  sub_769E10();

  (*(v55 + 8))(v50, v49);
  v60 = sub_7653B0();
  v158[3] = v60;
  v134 = sub_66D6E4(&qword_93F9B0, &type metadata accessor for Feature);
  v158[4] = v134;
  v61 = sub_B1B4(v158);
  v62 = *(v60 - 8);
  v63 = *(v62 + 104);
  LODWORD(v133) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v131 = v62 + 104;
  v132 = v63;
  v63(v61);
  sub_765C30();
  sub_BEB8(v158);
  v64 = v130;
  sub_762D00();
  sub_762CE0();
  v65 = *(v44 + 8);
  v122 = v44 + 8;
  v130 = v65;
  (v65)(v64, v141);
  v111 = sub_758730();
  v66 = v49;
  if (qword_93DA30 != -1)
  {
    swift_once();
    v66 = v49;
  }

  sub_BE38(v66, qword_99F688);
  v67 = [v58 traitCollection];
  v113 = v57;
  sub_769E10();

  v68 = v117;
  sub_758740();
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
  v74 = sub_B1B4(v157);
  v132(v74, v133, v60);
  sub_765C30();
  sub_BEB8(v157);
  v75 = v119;
  sub_762D00();
  sub_762CE0();
  (v130)(v75, v141);
  v76 = [v73 traitCollection];
  if (sub_769A00())
  {
    v77 = v136;
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v78 = qword_946920;
  }

  else
  {
    v77 = v136;
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v78 = qword_946938;
  }

  v79 = v139;
  v80 = sub_BE38(v139, v78);
  v81 = v138;
  v82 = v120;
  (*(v138 + 16))(v120, v80, v79);

  (*(v81 + 32))(v137, v82, v79);
  sub_75D800();
  sub_75D830();
  swift_allocObject();
  v140 = sub_7670B0();
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  sub_BE38(v77, qword_99E758);
  v83 = [v73 traitCollection];
  sub_769E10();

  v155 = v60;
  v156 = v134;
  v84 = sub_B1B4(v154);
  v132(v84, v133, v60);
  sub_765C30();
  sub_BEB8(v154);
  v85 = v121;
  sub_762D00();
  sub_762CE0();
  (v130)(v85, v141);
  v86 = v143;
  sub_758760();
  v87 = sub_764EC0();

  if (v87)
  {
    v141 = v45;
    v88 = v73;
    v89 = v107;
    sub_75FE40();
    v90 = v108;
    v91 = v109;
    v92 = v110;
    (*(v109 + 104))(v108, enum case for OfferLabelStyle.preorder(_:), v110);
    v93 = sub_75B480();
    v94 = *(v91 + 8);
    v94(v90, v92);
    v94(v89, v92);
    if (v93)
    {
      sub_B170(v154, v155);
      v86 = v143;
      sub_766550();

      v73 = v88;
      v45 = v141;
      goto LABEL_40;
    }

    v73 = v88;
    v45 = v141;
  }

  sub_B170(v154, v155);
  sub_766550();
LABEL_40:
  v95 = sub_66CD30(v86);
  v96 = v142;
  if (v95)
  {
    swift_allocObject();
    v97 = sub_7670B0();
  }

  else
  {
    v97 = 0;
  }

  v98 = v124;
  sub_758740();
  sub_758760();
  v99 = sub_764EC0();

  sub_66A1B4(v98, v99, v73, v125);

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
  sub_134D8(v158, v153);
  sub_134D8(v157, &v152);
  v151[8] = v45;
  v151[9] = &protocol witness table for LayoutViewPlaceholder;
  v151[5] = v140;
  sub_134D8(v154, v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v102 = v126;
  sub_7585C0();
  sub_66D6E4(&qword_960A70, &type metadata accessor for AppShowcaseLockupViewLayout);
  v103 = v128;
  sub_7665A0();
  v105 = v104;

  (*(v127 + 8))(v102, v103);
  (*(v138 + 8))(v137, v139);
  sub_BEB8(v157);
  sub_BEB8(v158);
  sub_BEB8(v154);
  return v105;
}

id sub_668944(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = sub_75A010();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664A0();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_766CA0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_765770();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_66D0D8(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10A2C(v15, &qword_95F810);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
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
    v22 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v23 = *&v2[v22];
    if (v23 || ((*(v17 + 56))(v12, 1, 1, v16), v38 = UIFontTextStyleFootnote, *v7 = UIFontTextStyleFootnote, v24 = v39, (*(v39 + 104))(v7, enum case for FontSource.textStyle(_:), v5), v47 = v5, v48 = &protocol witness table for FontSource, v25 = sub_B1B4(v46), (*(v24 + 16))(v25, v7, v5), v26 = v38, sub_766CB0(), (*(v24 + 8))(v7, v5), (*(v40 + 104))(v44, enum case for WordmarkView.Alignment.center(_:), v42), v27 = v43, v47 = v43, v48 = &protocol witness table for StaticDimension, v28 = sub_B1B4(v46), v29 = v41, (*(v41 + 16))(v28, v9, v27), v30 = objc_allocWithZone(sub_75A030()), v31 = v2, v32 = sub_75A000(), (*(v29 + 8))(v9, v27), v33 = v32, v2 = v31, sub_669788(v33), (v23 = *&v31[v22]) != 0))
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
      sub_759FF0();

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

char *sub_668F00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  sub_759210();
  *&v4[v17] = sub_759020();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  v73 = sub_75BB20();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F688);
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
  *&v5[v69] = sub_75BB10();
  v69 = v10;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1DD00C(0);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v19, qword_99E758);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = sub_75BB10();
  v33 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v19, qword_99F6B8);
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
  *&v5[v67] = sub_75BB10();
  v70 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = sub_75BB10();
  v43 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = sub_7581D0();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  sub_BE70(0, &qword_93E540);
  v54 = v53;
  v55 = sub_769FF0();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_669788(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
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

id sub_669834()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = sub_7581D0();
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
  v25 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (sub_76A950() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
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
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v36 = sub_BE38(v35, qword_99F670);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v39 = sub_BE38(v35, qword_99F688);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v38 = sub_BE38(v35, qword_99F688);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  sub_7666D0();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  sub_75BA40();
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
    if (qword_93DA48 != -1)
    {
      swift_once();
    }

    v50 = qword_99F6D0;
LABEL_33:
    v52 = sub_BE38(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v50 = qword_99F688;
    goto LABEL_33;
  }

  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v35, qword_99F688);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  sub_75BA40();
  return [v69 setNeedsLayout];
}

uint64_t sub_66A1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = sub_766CA0();
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
  v14 = sub_7664A0();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = sub_7623A0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_BD88(&unk_9457F0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = sub_75D850();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = sub_7581D0();
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
  v41 = sub_769A00();
  v121 = v27;
  if (v41)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v42 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v42 = qword_946938;
  }

  v43 = v124;
  v44 = sub_BE38(v124, v42);
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
    sub_66D6E4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);

    sub_760940();
    sub_75D820();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    sub_75D800();
    sub_75D830();
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
    sub_B1B4(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_B1B4(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    sub_766CB0();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v62 = sub_7666D0();
    v120 = sub_BE38(v62, qword_99F670);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_B1B4(&v137);
    v59(v67, v16, v14);
    sub_766CB0();
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
    sub_B1B4(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_B1B4(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    sub_766CB0();
    v68(v16, v14);
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_BE38(v118, qword_99F688);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_B1B4(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    sub_766CB0();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_B1B4(&v134);
    v76(v79, v16, v14);
    sub_766CB0();
    v77(v16, v14);
    if (qword_93DA38 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_BE38(v118, qword_99F6A0);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_B1B4(&v134);
    v76(v82, v16, v14);
    sub_766CB0();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_B1B4(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    sub_766CB0();
    v77(v16, v14);
    if (qword_93DA40 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_BE38(v118, qword_99F6B8);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_B1B4(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_B1B4(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    sub_766CB0();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_B1B4(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_B1B4(&v128);
    v89(v92, v16, v14);
    sub_766CB0();
    v90(v16, v14);
    if (qword_93DA48 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_BE38(v118, qword_99F6D0);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_B1B4(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_B1B4(v127);
    v89(v95, v16, v14);
    sub_766CB0();
    v90(v16, v14);
    sub_7585A0();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_66B484(v114);
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

uint64_t sub_66B484@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_766CA0();
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
  v14 = sub_7581D0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for AppShowcaseType.smallAlignedLeft(_:), v14, v16);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v78[0] == v75[0] && v78[1] == v75[1])
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_76A950();
  }

  (*(v15 + 8))(v18, v14);

  v54 = sub_766970();
  v78[3] = v54;
  v78[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v78);
  sub_766960();
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F688);
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
  v23 = sub_B1B4(v75);
  v24 = v2 + 2;
  v65 = v2[2];
  v65(v23, v4, v1);
  sub_766CB0();
  v64 = v2[1];
  v64(v4, v1);
  v76 = v54;
  v77 = &protocol witness table for ZeroDimension;
  sub_B1B4(v75);
  sub_766960();
  v22(v4, v20, v19);
  v25 = v60;
  v26 = v52;
  (v52)(v4, v60, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v72);
  v65(v27, v4, v1);
  sub_766CB0();
  v64(v4, v1);
  v48 = v20;
  v63 = v22;
  v22(v4, v20, v62);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v72);
  v65(v28, v4, v1);
  sub_766CB0();
  v53 = v2 + 1;
  v64(v4, v1);
  if (qword_93DA38 != -1)
  {
    swift_once();
  }

  v29 = v62;
  v30 = sub_BE38(v62, qword_99F6A0);
  v63(v4, v30, v29);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v72);
  v32 = v65;
  v65(v31, v4, v1);
  sub_766CB0();
  v33 = v64;
  v64(v4, v1);
  *v4 = UIFontTextStyleBody;
  v26(v4, enum case for FontSource.textStyle(_:), v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v72);
  v32(v34, v4, v1);
  v35 = UIFontTextStyleBody;
  sub_766CB0();
  v33(v4, v1);
  v47[1] = v24;
  v36 = v60;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v37 = v62;
  v38 = sub_BE38(v62, qword_99F6B8);
  v63(v4, v38, v37);
  v39 = v36;
  v40 = v52;
  (v52)(v4, v39, v1);
  v41 = v50;
  v73 = v50;
  v74 = &protocol witness table for StaticDimension;
  sub_B1B4(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v42 = sub_B1B4(v69);
  v43 = v65;
  v65(v42, v4, v1);
  sub_766CB0();
  v44 = v64;
  v64(v4, v1);
  v63(v4, v48, v37);
  (v40)(v4, v60, v1);
  v70 = v41;
  v71 = &protocol witness table for StaticDimension;
  sub_B1B4(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_B1B4(v66);
  v43(v45, v4, v1);
  sub_766CB0();
  v44(v4, v1);
  v67 = v54;
  v68 = &protocol witness table for ZeroDimension;
  sub_B1B4(v66);
  sub_766960();
  return sub_7585A0();
}

uint64_t sub_66BEB4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7581D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7585B0();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7585D0();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_66A1B4(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView];
  v74 = sub_759210();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = sub_75A030();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = sub_75BB20();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  sub_7585C0();
  sub_75D650();
  v37 = v46;
  sub_758590();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

uint64_t sub_66C3DC(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

void sub_66C488(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_66C3DC(&OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel);
    v5 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
    v7 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_66C3DC(&OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v5 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews;
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
    v7 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  }

  v8 = sub_66C3DC(v5, v6, v7);
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    if (v4 >> 62)
    {
      v15 = sub_76A860();
    }

    else
    {
      v15 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_76A770();
        }

        else
        {
          if (v16 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_41;
          }

          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v9 >> 62)
    {
      v20 = sub_76A860();
      if (v20)
      {
LABEL_30:
        v4 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v21 = sub_76A770();
          }

          else
          {
            if (v4 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v21 = *(v9 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_42;
          }

          [v21 setAlpha:1.0];
          [v22 setHidden:0];

          ++v4;
        }

        while (v23 != v20);
      }
    }

    else
    {
      v20 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v20)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_76A770();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setHidden:0];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v9;
  v33 = sub_11FA9C;
  v34 = v25;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_23F0CC;
  v32 = &unk_89BD68;
  v26 = _Block_copy(&v29);

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  v33 = sub_11FAF4;
  v34 = v27;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_3D6D80;
  v32 = &unk_89BDB8;
  v28 = _Block_copy(&v29);

  [v24 animateWithDuration:4 delay:v26 options:v28 animations:0.33 completion:0.0];
  _Block_release(v28);
  _Block_release(v26);
}

uint64_t type metadata accessor for AppShowcaseLockupView()
{
  result = qword_960A60;
  if (!qword_960A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}