void sub_10010CD9C()
{
  v1 = v0;
  v2 = sub_10076BF6C();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_10075FCCC();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FD2C();
  sub_10010DA4C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v12 = v11;
  sub_100760BFC();
}

void sub_10010CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_10076A0CC();
        if (swift_dynamicCastClass())
        {
          sub_10076A0AC();
          sub_10076BACC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000CFBC(v6, &qword_1009492E0);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

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

    else
    {
    }
  }
}

void sub_10010D2A4(char *a1, char a2)
{
  if (a2)
  {
    sub_10010A4C0(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_10010D2DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4);
}

double sub_10010D328()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1007639AC();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_10010D4AC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10010D50C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

void sub_10010D5A4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10010D624()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_10010D680(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_10010D740(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10010DBBC;
}

uint64_t sub_10010D808()
{
  swift_getObjectType();

  return sub_10076A03C();
}

uint64_t sub_10010D860()
{
  swift_getObjectType();

  return sub_10076A02C();
}

void sub_10010D8B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v3 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FB6C();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FD2C();
  sub_10010DA4C(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_10010D9A8(uint64_t a1, uint64_t a2)
{
  result = sub_10010DA4C(&qword_1009491D0, a2, type metadata accessor for TodayCardMarketingLockupOverlayView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10010DA4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10010DA94()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10010DAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010DB04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010DB3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010DB74()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10010DBC8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_10010DCB0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

char *sub_10010DF04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_100763ADC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  *&v5[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v26 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  v27 = qword_10093FBE8;
  v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v14, qword_10099DDB8);
  (*(v15 + 16))(v17, v29, v14);
  v30 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v15 + 24))(&v28[v30], v17, v14);
  swift_endAccess();
  [v28 setNeedsLayout];

  (*(v15 + 8))(v17, v14);
  v31 = qword_100941140;
  v32 = *(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D3DC();
  v34 = sub_10000A61C(v33, qword_1009A21B8);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v36(v13, v34, v33);
  v37 = *(v35 + 56);
  v37(v13, 0, 1, v33);
  sub_1007625DC();

  v38 = qword_100941148;
  v39 = *(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v33, qword_1009A21D0);
  v36(v13, v40, v33);
  v37(v13, 0, 1, v33);
  sub_1007625DC();

  v41 = [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  v42 = [*&v25[v26] layer];
  [v42 setAllowsGroupBlending:0];

  v43 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  v44 = *&v25[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_1003E4478(20.0);

  [v25 addSubview:*&v25[v43]];
  v45 = [*&v25[v43] contentView];
  [v45 addSubview:*&v25[v26]];

  v46 = [*&v25[v43] contentView];
  v47 = [v46 layer];

  [v47 setAllowsGroupBlending:0];
  return v25;
}

uint64_t sub_10010E520()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076DFAC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_10076422C();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
  v15[3] = type metadata accessor for SmallLockupView();
  v15[4] = sub_10010F890(&qword_100949328, type metadata accessor for SmallLockupView);
  v15[0] = v8;
  sub_10000A570(v15, v13);
  v14[3] = sub_10076E04C();
  v14[4] = &protocol witness table for Margins;
  sub_10000DB7C(v14);
  v9 = v8;
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v15);
  sub_10076422C();
  v10 = [v0 traitCollection];
  sub_10076E0EC();

  return (*(v3 + 8))(v6, v2);
}

double sub_10010E7A0(double a1, double a2)
{
  v5 = sub_10076DFAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002617F8(v14);
  sub_10000A570(v14, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v14);
  v9 = sub_10010F484(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

id sub_10010E96C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - v18;
  v20 = sub_10076709C();
  if (v20)
  {
    v21 = v20;
    v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
    [v22 setHidden:0];
    v23 = sub_10000A5D4(&qword_100945590);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = sub_10075F78C();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_1007628DC();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_10000A5D4(&unk_100946750);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = sub_10076C54C();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1004D0A60(v21, v22, v19, a2, 0, 0, v16, v13, v7, v10);
    sub_10000CFBC(v7, &unk_100949290);
    v22[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v22 setNeedsLayout];
    sub_10000CFBC(v10, &qword_10094F730);
    sub_10000CFBC(v13, &unk_1009492A0);
    sub_10000CFBC(v16, &unk_10094D210);
    sub_10000CFBC(v19, &unk_100946760);
    v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
    v30 = *&v22[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
    sub_1000325F0();
    v31 = v30;
    v32 = sub_100770D1C();
    [v31 setTextColor:v32];

    [*&v22[v29] _setTextColorFollowsTintColor:0];
    v33 = [*&v22[v29] layer];
    [v33 setCompositingFilter:kCAFilterPlusL];

    [v3 setNeedsLayout];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView] setHidden:1];

    return [v2 setNeedsLayout];
  }
}

void sub_10010EEA8()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076BEDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076709C())
  {
    v6 = sub_10076BB9C();

    if (v6)
    {
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v3 + 8))(v5, v2);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v7 = sub_100763ADC();
      sub_10000A61C(v7, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView);
      v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v10 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v10 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      v11 = *(v8 + v9);
      sub_10075FD2C();
      sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_100760B8C();
    }
  }
}

uint64_t sub_10010F1FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4);
}

void sub_10010F224()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

double sub_10010F314(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = [v2 traitCollection];
    v8 = type metadata accessor for SnapshotPageTraitEnvironment();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v10 = a1;
    v10[1] = a2;
    *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
    v27.receiver = v9;
    v27.super_class = v8;
    v11 = objc_msgSendSuper2(&v27, "init");
    v12 = [v11 traitCollection];
    v13 = sub_1007706CC();

    if (v13)
    {
      [v11 pageContainerSize];
      sub_1006D502C(v14, v15);
      v17 = v16 + v16;
      PageTraitEnvironment.pageColumnMargin.getter();
      v19 = v18;

      return v17 + v19;
    }

    else
    {
      [v11 pageMarginInsets];
      v21 = v20;
      v23 = v22;
      [v11 pageContainerSize];
      v25 = v24;

      return v25 - v21 - v23;
    }
  }

  return a1;
}

double sub_10010F484(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_10076DFEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_10076DFAC();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_10000DB7C(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10010F314(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000A570(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_10076DFFC();
    v46 = &protocol witness table for Resize;
    sub_10000DB7C(v44);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v28 = v27;
    v30 = v29;
    sub_10000A570(v47, v43);
    sub_10076DACC();
    v32 = v31;
    v34 = v33;
    v45 = sub_10076E0CC();
    v46 = &protocol witness table for Constrain;
    sub_10000DB7C(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_10076E0DC();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v44, v45);
  v37 = [a2 traitCollection];
  sub_10076E0FC();
  v39 = v38;

  sub_10000CD74(v44);
  sub_10000CD74(v47);
  return v39;
}

uint64_t sub_10010F890(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10010F8D8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_10010F99C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A12D0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v18] = sub_1007626AC();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_10076262C();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_10010FE20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10076DD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_10076DA7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076DD2C();
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  sub_10000A61C(v13, qword_1009A12D0);
  sub_10076DCFC();
  (*(v5 + 8))(v7, v4);
  sub_10076DA5C();

  sub_10076DA9C();
  v14 = [a3 traitCollection];
  sub_10076DA6C();
  v16 = v15;

  (*(v10 + 8))(v12, v9);
  return v16;
}

void sub_100110094()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A12D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001102DC(uint64_t *a1, int a2)
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

uint64_t sub_100110324(uint64_t result, int a2, int a3)
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

void sub_10011038C()
{
  v1 = v0;
  v2 = sub_1007604DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10094B450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v38.a = 1.0;
  v39 = v1[4];
  v10 = *(v3 + 104);
  v30 = enum case for TimingCurve.easeInOut(_:);
  v34 = v2;
  v32 = v3 + 104;
  v29 = v10;
  v10(v5);
  sub_1007607FC();
  sub_1007607DC();
  v11 = *(v7 + 8);
  v33 = v6;
  v31 = v7 + 8;
  v28 = v11;
  v11(v9, v6);
  CGAffineTransformMakeScale(&v38, v38.a, v38.a);
  v36 = *&v38.a;
  v37 = *&v38.c;
  tx = v38.tx;
  ty = v38.ty;
  v14 = sub_100111494(v1[2]);
  v35 = v1;
  v15 = *v1;
  if (*v1 >> 62)
  {
    v16 = sub_10077158C();
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v17 = 0;
  v18 = *(v35 + 24);
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = sub_10077149C();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    *&v38.a = v36;
    *&v38.c = v37;
    v38.tx = tx;
    v38.ty = ty;
    [v19 setTransform:&v38];
    if (v18)
    {
      [v20 _setContinuousCornerRadius:v14];
    }

    ++v17;
  }

  while (v16 != v17);
LABEL_12:
  v38.a = 1.0;
  v39 = 0;
  v29(v5, v30, v34);
  sub_1007607FC();
  v21 = v33;
  sub_1007607DC();
  v28(v9, v21);
  a = v38.a;
  v23 = v35[1];
  if (v23 >> 62)
  {
    v24 = sub_10077158C();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  if (v24 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v24; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = sub_10077149C();
    }

    else
    {
      v26 = *(v23 + 8 * i + 32);
    }

    v27 = v26;
    [v26 setAlpha:a];
  }
}

void sub_10011078C()
{
  v1 = objc_opt_self();
  v2 = *v0;
  v19 = v0[1];
  v20 = v2;
  v3 = v0[2];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  v17 = sub_1001113C8;
  v18 = v4;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10009AEDC;
  v16 = &unk_100889308;
  v6 = _Block_copy(&aBlock);
  sub_1001113D0(&v20, v12);
  sub_1001113D0(&v19, v12);
  v7 = v3;

  v8 = swift_allocObject();
  v9 = *(v0 + 1);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = v0[4];
  v17 = sub_10011148C;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000513F0;
  v16 = &unk_100889358;
  v10 = _Block_copy(&aBlock);
  sub_1001113D0(&v20, v12);
  sub_1001113D0(&v19, v12);
  v11 = v7;

  [v1 animateWithDuration:v6 animations:v10 completion:0.15];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_100110974(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_10077158C();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x3FF0000000000000;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [v5 setTransform:v13];
    if (v4)
    {
      [v6 _setContinuousCornerRadius:0.0];
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_12:
  v7 = a1[1];
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_100110B14(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >> 62)
  {
    v9 = a2;
    v10 = sub_10077158C();
    a2 = v9;
    v3 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 24);
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
        if (v5)
        {
LABEL_10:
          v7 = v6;
          v8 = [v6 layer];
          [v8 setMaskedCorners:15];

          v6 = v8;
        }
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_100110C18()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_10077158C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform:v6];
    }

    while (v2 != v3);
  }
}

void sub_100110CFC(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v35 = sub_1007604DC();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10094B450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if (a1 >> 62)
  {
    v14 = sub_10077158C();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = enum case for TimingCurve.easeInOut(_:);
    v22 = *(v7 + 104);
    goto LABEL_12;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = a2;
  v15 = 0;
  v16 = a1;
  v33 = a1 & 0xC000000000000001;
  v34 = enum case for TimingCurve.easeInOut(_:);
  v17 = v7 + 104;
  v18 = (v11 + 8);
  v30 = v17 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v11;
  do
  {
    v23 = v14;
    if (v33)
    {
      v19 = sub_10077149C();
    }

    else
    {
      v19 = *(v16 + 8 * v15 + 32);
    }

    v20 = v19;
    ++v15;
    [v19 frame];
    Height = CGRectGetHeight(v38);
    v36.a = 0.0;
    v37 = Height * a4;
    v22 = *v17;
    (*v17)(v9, v34, v35);
    sub_1007607FC();
    sub_1007607DC();
    (*v18)(v13, v10);
    CGAffineTransformMakeTranslation(&v36, 0.0, v36.a);
    [v20 setTransform:&v36];

    v14 = v23;
  }

  while (v23 != v15);
  v11 = v31;
  a2 = v32;
  v24 = v34;
LABEL_12:
  v36.a = 1.0;
  v37 = 0.0;
  v22(v9, v24, v35);
  sub_1007607FC();
  sub_1007607DC();
  (*(v11 + 8))(v13, v10);
  a = v36.a;
  if (a2 >> 62)
  {
    v26 = sub_10077158C();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = sub_10077149C();
    }

    else
    {
      v28 = *(a2 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1001110CC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_10077158C();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10077149C();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = sub_10077158C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_10011124C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v7[4] = sub_1001113A4;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10009AEDC;
  v7[3] = &unk_1008892B8;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:v6 animations:0.15];
  _Block_release(v6);
}

uint64_t sub_100111364()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001113B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001113D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009453D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100111444()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100111494(void *a1)
{
  v2 = sub_1007604DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10094B450);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v13 - v9;
  if ([a1 userInterfaceIdiom] == 1)
  {
    v11 = 0x4040000000000000;
  }

  else
  {
    [a1 displayCornerRadius];
  }

  v14 = *&v11;
  v13 = 0x4034000000000000;
  (*(v3 + 104))(v5, enum case for TimingCurve.easeInOut(_:), v2);
  sub_1007607FC();
  sub_1007607DC();
  (*(v7 + 8))(v10, v6);
  return v14;
}

unint64_t sub_1001116A8()
{
  result = qword_100949360;
  if (!qword_100949360)
  {
    type metadata accessor for HeroCarouselCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949360);
  }

  return result;
}

double sub_100111718()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10076FF6C();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1000258C0(v8);
  }

  Main = JUScreenClassGetMain();
  result = 560.0;
  if (Main == 1)
  {
    return 526.0;
  }

  return result;
}

uint64_t sub_100111894()
{
  v1 = sub_10076C38C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000A5D4(&unk_1009566C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  sub_10076C61C();
  sub_100111D5C(&qword_100949370, &type metadata accessor for Paragraph);
  result = sub_10076332C();
  if (aBlock[0])
  {
    sub_100111DA4();
    sub_10076335C();
    sub_10076FD8C();
    v34 = v4;
    v35 = v0;
    v32 = v7;
    v33 = v5;
    v30 = v2;
    v31 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v29 = sub_10076C56C();
    }

    else
    {
      v29 = LOBYTE(aBlock[0]);
    }

    v9 = sub_10076C5AC();
    swift_getKeyPath();
    sub_10076338C();

    v10 = aBlock[6];
    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v9];
    v12 = [v9 length];
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = 1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000275EC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1000ACB04;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    aBlock[3] = &unk_1008893D0;
    v15 = _Block_copy(aBlock);
    v16 = v10;
    v17 = v11;

    [v9 enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v15}];

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v21 = v17;
      v22 = v36;
      sub_10076338C();

      sub_10076C2FC();
      v24 = v23;
      v26 = v25;
      (*(v30 + 8))(v22, v31);
      v27 = sub_100630CB4();
      swift_getObjectType();
      sub_1003899C8(v17, v29 & 1, v27, UIEdgeInsetsZero.top, left, bottom, right, v24, v26);

      swift_unknownObjectRelease();

      return (*(v33 + 8))(v32, v34);
    }
  }

  return result;
}

uint64_t sub_100111D5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100111DA4()
{
  result = qword_100949378;
  if (!qword_100949378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949378);
  }

  return result;
}

uint64_t sub_100111DFC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100111E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100111ED0(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076D9AC();
  sub_10000DB18(v9, a2);
  sub_10000A61C(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_10076D9BC();
  return (*(v6 + 8))(v8, v5);
}

char *sub_100112040(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay();
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_100941110;
  v35 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D3DC();
  v37 = sub_10000A61C(v36, qword_1009A2128);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  sub_1007625DC();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  v48 = qword_100941120;
  v49 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v36, qword_1009A2158);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  sub_1007625DC();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_1007625DC();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_1001135B4();

  return v63;
}

uint64_t sub_100112988@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v57 = sub_10076D65C();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v53 = &v51[-v6];
  __chkstk_darwin(v7);
  v54 = &v51[-v8];
  __chkstk_darwin(v9);
  v55 = &v51[-v10];
  v11 = sub_100766F4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_10076703C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_100766F6C();
  (*(v19 + 8))(v21, v18);
  (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_10011430C();
  sub_10077018C();
  sub_10077018C();
  if (v60[0] == v63 && v60[1] == v64)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_10077167C();
  }

  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);

  sub_10076D63C();
  v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  v25 = sub_1007626BC();
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v24;
  v26 = swift_allocObject();
  v27 = v4;
  v28 = ObjectType;
  *(v26 + 16) = v2;
  *(v26 + 24) = v28;
  v29 = v24;
  v30 = v2;
  v31 = v53;
  sub_10076D64C();

  v32 = *(v59 + 8);
  v33 = v57;
  v32(v27, v57);
  sub_10000CD74(v60);
  v34 = *&v30[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v28;
  v36 = v30;
  v37 = v34;
  v38 = v54;
  sub_10076D64C();

  v32(v31, v33);
  sub_10000CD74(v60);
  v39 = *&v36[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v39;
  v40 = swift_allocObject();
  v41 = ObjectType;
  *(v40 + 16) = v36;
  *(v40 + 24) = v41;
  v42 = v36;
  v43 = v39;
  v44 = v55;
  sub_10076D64C();

  v32(v38, v33);
  sub_10000CD74(v60);
  if (v52)
  {
    v61 = v33;
    v62 = &protocol witness table for VerticalStack;
    v45 = sub_10000DB7C(v60);
    (*(v59 + 16))(v45, v44, v33);
    sub_10076DF7C();
    v46 = sub_10076DFAC();
    v47 = v56;
    v56[3] = v46;
    v47[4] = &protocol witness table for Center;
    sub_10000DB7C(v47);
    sub_10076DFBC();
    return (v32)(v44, v33);
  }

  else
  {
    v49 = v56;
    v56[3] = v33;
    v49[4] = &protocol witness table for VerticalStack;
    v50 = sub_10000DB7C(v49);
    return (*(v59 + 32))(v50, v44, v33);
  }
}

uint64_t sub_100112F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_100766F4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076703C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_100766F6C();
  (*(v13 + 8))(v15, v12);
  sub_100766F2C();
  (*(v9 + 8))(v11, v8);
  sub_10076D5EC();
  v17 = sub_10076D60C();
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v17)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D9AC();
  v19 = sub_10000A61C(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_10000DB7C(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_10076D5BC();
}

uint64_t sub_100113234(uint64_t a1, uint64_t a2)
{
  v3 = sub_100766F4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766F6C();
  (*(v8 + 8))(v10, v7);
  sub_100766F2C();
  (*(v4 + 8))(v6, v3);
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v13 = sub_10076D60C();
  *(inited + 32) = v13;
  v14 = sub_10076D61C();
  *(inited + 40) = v14;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v13)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v14)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (qword_10093F7C8 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D9AC();
  v16 = sub_10000A61C(v15, qword_1009493B0);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v17 = sub_10000DB7C(v22);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  sub_10076D5BC();
  if (qword_10093F7D0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v15, qword_1009493C8);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v20 = sub_10000DB7C(v22);
  v18(v20, v19, v15);
  return sub_10076D5CC();
}

id sub_1001135B4()
{
  v1 = v0;
  v47 = sub_100766FCC();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = sub_100766F4C();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076703C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  sub_100766F6C();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = sub_100766F3C();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  sub_100766FDC();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = sub_100766F9C();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  sub_100766FDC();
  v22(v36, v37);
  v39 = sub_100766FAC();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  sub_100766FDC();
  v22(v41, v37);
  v43 = sub_100766F8C();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_100113C08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay()
{
  result = qword_100949430;
  if (!qword_100949430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100113D54()
{
  result = sub_10076703C();
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

uint64_t sub_100113E00(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

id sub_100113EB4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_10076FF6C();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_10076FF6C();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_10076FF6C();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_1001140E4()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076704C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_1001135B4();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  sub_1007670AC();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  sub_1007670BC();
  if (v11)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  v14 = sub_10076707C();
  v16 = sub_100113EB4(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_10011430C()
{
  result = qword_100949440;
  if (!qword_100949440)
  {
    sub_100766F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949440);
  }

  return result;
}

uint64_t sub_100114364()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10011441C()
{
  v1 = sub_100766FCC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_100766FBC();
  sub_100766F5C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001146C8()
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
  qword_100949450 = v1;
  return result;
}

uint64_t sub_1001148E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&qword_1009494D0);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGPoint(0);
  return sub_10075FDDC();
}

char *sub_100114984(double a1, double a2, double a3, double a4)
{
  v9 = sub_1007604EC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView();
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_10093F7D8;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0);
  isa = sub_10076FE3C().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_100115444(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_10000A5D4(&unk_100945BF0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100783DD0;
  *(v28 + 32) = sub_10076E88C();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v32);
  return v20;
}

uint64_t sub_100114D64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1001162A4(v1 + v3, a1);
}

uint64_t sub_100114DC0(uint64_t a1)
{
  v3 = sub_1007604EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_1001162A4(&v1[v16], v15);
  sub_1001162A4(a1, v12);
  sub_1001162A4(&v1[v16], v9);
  swift_beginAccess();
  sub_100116308(v12, &v1[v16]);
  swift_endAccess();
  sub_1001907E8(v9);
  sub_10011636C(v9);
  sub_10011636C(v12);
  sub_1001162A4(&v1[v16], v12);
  LOBYTE(v9) = sub_10019954C(v12, v15);
  sub_10011636C(v12);
  if ((v9 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v17], v3);
    sub_100115444(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_10011636C(a1);
  return sub_10011636C(v15);
}

uint64_t sub_10011503C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ArcadeHeaderView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100116400;
  *(v3 + 24) = v2;
  v8[4] = sub_1000349FC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001C5148;
  v8[3] = &unk_1008894F8;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001151B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_1001152EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1007604EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018E790(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_1001160F8(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_100115444(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = sub_1007604EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
    sub_10000A5D4(&unk_1009434B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100784500;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = sub_1007701AC().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = sub_10076FF6C();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000A5D4(&unk_1009434B0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100784500;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = sub_1007701AC().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
        sub_10000A5D4(&unk_1009434B0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_100784500;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = sub_1007701AC().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000A5D4(&unk_1009434B0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100784500;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = sub_1007701AC().super.isa;

      [v42 setColors:v59];

      if (qword_10093F7E0 != -1)
      {
        swift_once();
      }

      v60 = sub_10000A5D4(&qword_1009494D0);
      sub_10000A61C(v60, qword_100949458);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      sub_10075FDCC();

      [v42 setStartPoint:{v84, v85}];
      if (qword_10093F7E8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v60, qword_100949470);
      v83 = v62;
      v63 = v62;
      sub_10075FDCC();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1001160F8(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_100115ED4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
  v2 = sub_1007604EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer);
}

id sub_100115F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView()
{
  result = qword_1009494C0;
  if (!qword_1009494C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100116054()
{
  result = sub_1007604EC();
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

uint64_t sub_1001160F8(uint64_t a1)
{
  v2 = sub_1007604EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_1000325F0();
      v8 = sub_100770E1C();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_1001162A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100116308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011636C(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001163C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100116418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100116430(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor] = a1;
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
  [v14 setTag:{58236912, v28.receiver, v28.super_class}];
  [v14 setUserInteractionEnabled:0];
  v15 = [v14 layer];
  [v15 setBorderWidth:5.0];

  v16 = OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel] setNumberOfLines:0];
  v17 = *&v14[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 boldSystemFontOfSize:20.0];
  [v19 setFont:v20];

  [*&v14[v16] setTextColor:*&v14[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor]];
  v21 = *&v14[v16];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v14[v16];
  [v25 frame];
  Width = CGRectGetWidth(v29);
  [*&v14[v16] frame];
  [v25 setFrame:{10.0, 10.0, Width, CGRectGetHeight(v30)}];

  [v14 addSubview:*&v14[v16]];
  return v14;
}

void sub_100116730(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_100116BF0(a1, &v25 - v5);
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  v9 = sub_10076F7EC();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16) || (v10 = sub_100561E0C(0x6973736572706D69, 0xEF7865646E496E6FLL), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_10000CD08(*(v9 + 56) + 32 * v10, &v25);

  if (*(&v26 + 1))
  {
    sub_10000CD64(&v25, v27);
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_1007700CC(v28);
    sub_10077151C();
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_1007700CC(v29);
    v13 = sub_10076FF6C();

    [v12 setText:v13];

    sub_10000CD74(v27);
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor];
    goto LABEL_10;
  }

LABEL_9:
  sub_10000CFBC(&v25, &unk_1009434C0);
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
  v15 = sub_10076FF6C();
  [v12 setText:v15];

  v14 = [objc_opt_self() yellowColor];
LABEL_10:
  v16 = v14;
  v17 = [v16 colorWithAlphaComponent:0.2];
  [v2 setBackgroundColor:v17];

  v18 = [v2 layer];
  v19 = [v16 colorWithAlphaComponent:0.2];

  v20 = [v19 CGColor];
  [v18 setBorderColor:v20];

  [v12 sizeToFit];
  v21 = [v12 layer];
  [v12 frame];
  Height = CGRectGetHeight(v30);
  [v12 frame];
  Width = CGRectGetWidth(v31);
  if (Width >= Height)
  {
    Width = Height;
  }

  [v21 setCornerRadius:{Width * 0.5, v25, v26}];

  v24 = [v12 layer];
  [v24 setMasksToBounds:1];
}

uint64_t sub_100116BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100116C60(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = sub_10077167C();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return sub_10077167C();
}

void sub_100116D8C()
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v0 + 80))
  {
    sub_10077177C(1u);

    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }
}

uint64_t sub_100116E1C()
{
}

uint64_t sub_100116E4C()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100116EEC()
{
  result = qword_1009495E0;
  if (!qword_1009495E0)
  {
    sub_1007666DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009495E0);
  }

  return result;
}

uint64_t sub_100116F44()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F3FC();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = sub_1007666BC();
  v6 = v5;
  v7 = sub_1007666CC() & 1;
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_10075F3CC(v11, v7);

  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v8 = sub_10076FC8C();

  return v8;
}

char *sub_1001170B4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = sub_10076BF6C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_10000A5D4(&unk_1009434B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100784500;
  sub_1000325F0();
  v22 = v20;
  isa = sub_100770E4C(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = sub_100770E4C(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = sub_1007701AC().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_1001174F8()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_10077165C();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_1001175B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10000A5D4(&qword_100949638);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_10076BF6C();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_100117C64(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100117CD4(v11);
    v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    sub_10076BF0C();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = sub_10075FEDC();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    sub_10076BF3C();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView()
{
  result = qword_100949620;
  if (!qword_100949620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100117B64()
{
  sub_100117C0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100117C0C()
{
  if (!qword_100949630)
  {
    sub_10076BF6C();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100949630);
    }
  }
}

uint64_t sub_100117C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117CD4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100949638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100117D3C(uint64_t a1)
{
  sub_10077008C();
  sub_10077008C();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = sub_10077158C();
    sub_10077176C(v7);
    v4 = sub_10077158C();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_10077176C(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_100117E4C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100117EB8()
{
  sub_10077175C();
  sub_100117D3C(v1);
  return sub_1007717AC();
}

Swift::Int sub_100117F20()
{
  sub_10077175C();
  sub_100117D3C(v1);
  return sub_1007717AC();
}

unint64_t sub_100117F70()
{
  result = qword_100949700;
  if (!qword_100949700)
  {
    type metadata accessor for DebugSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949700);
  }

  return result;
}

uint64_t sub_100117FC4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1000CC978(v6, v7);
}

uint64_t sub_100118054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_10000A5D4(&unk_100958350);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  sub_10076BC0C();
  sub_10011894C();
  result = sub_10076332C();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_10000A5D4(&qword_100945590);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = sub_10075F78C();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = sub_1007628DC();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_10000A5D4(&unk_100946750);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = sub_10076C54C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1004D0A60(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10000CFBC(v12, &unk_100949290);
    v27[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v27 setNeedsLayout];
    sub_10000CFBC(v15, &qword_10094F730);
    sub_10000CFBC(v18, &unk_1009492A0);
    sub_10000CFBC(v21, &unk_10094D210);
    sub_10000CFBC(v24, &unk_100946760);
    v33 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v35 = sub_10076BADC();
    if (!v35)
    {
      sub_1000325F0();
      v35 = sub_100770D1C();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    sub_10076BAEC();
    v38 = sub_1007663AC();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10000CFBC(v9, &unk_100958350);
    }

    else
    {
      sub_10076639C();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_10000CF78(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = sub_10077165C();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_10000CD74(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        sub_10076BAEC();
        v51 = v40(v50, 1, v38) == 1;
        sub_10000CFBC(v50, &unk_100958350);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001187AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100118808(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1001188D0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_10075FCEC(v4, v2);
}

unint64_t sub_10011894C()
{
  result = qword_100950870;
  if (!qword_100950870)
  {
    sub_10076BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950870);
  }

  return result;
}

uint64_t sub_1001189A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = sub_100763BBC();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v17 - 8);
  v215 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v194 - v20;
  __chkstk_darwin(v21);
  v227 = &v194 - v22;
  __chkstk_darwin(v23);
  v218 = &v194 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v220 = *(v25 - 8);
  v221 = v25;
  __chkstk_darwin(v25);
  v206 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v205 = &v194 - v28;
  __chkstk_darwin(v29);
  v204 = &v194 - v30;
  __chkstk_darwin(v31);
  v213 = (&v194 - v32);
  __chkstk_darwin(v33);
  v225 = &v194 - v34;
  __chkstk_darwin(v35);
  v210 = &v194 - v36;
  __chkstk_darwin(v37);
  v209 = &v194 - v38;
  __chkstk_darwin(v39);
  v224 = (&v194 - v40);
  v41 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v41 - 8);
  v197 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v194 - v44;
  __chkstk_darwin(v45);
  v200 = &v194 - v46;
  __chkstk_darwin(v47);
  v199 = &v194 - v48;
  __chkstk_darwin(v49);
  v219 = &v194 - v50;
  __chkstk_darwin(v51);
  v195 = &v194 - v52;
  __chkstk_darwin(v53);
  v198 = &v194 - v54;
  __chkstk_darwin(v55);
  v203 = &v194 - v56;
  __chkstk_darwin(v57);
  v202 = &v194 - v58;
  __chkstk_darwin(v59);
  v201 = &v194 - v60;
  __chkstk_darwin(v61);
  v229 = &v194 - v62;
  v63 = sub_1007621EC();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_10000A5D4(&unk_100946720);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  sub_10076F49C();

  v74 = v236;
  if (v236)
  {
    v75 = v235;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v76 != 0;
  }

  else
  {
    v233 = 0;
  }

  swift_getKeyPath();
  v234 = v72;
  sub_10076F49C();

  if (v235)
  {
    v77 = sub_1007603BC();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  sub_10076F49C();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = sub_1007621DC();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_10011AB24(a1);
  if (sub_10011B5EC(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_1005706B8(v233, v232);
    return (*(v230 + 8))(v234, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v194 = v70;
  if (!v80)
  {
    LODWORD(v229) = v81;
    swift_getKeyPath();
    sub_10076F49C();

    if (v235)
    {
      v85 = v219;
      sub_10076035C();

      v86 = sub_10076034C();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = sub_10076034C();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_10078C2C0;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = sub_100763BAC();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_10093FC30 != -1)
      {
        swift_once();
      }

      v121 = sub_10000A61C(v114, qword_10099DF40);
      sub_10011BA50(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_10093FC60 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_10099DFD0;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_10000A61C(v114, v125);
      sub_10011BA50(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_10011BA50(v213, v205);
      v182 = v206;
      sub_10011BA50(v123, v206);
      sub_100016E2C(v179, v215, &qword_100949718);
      v183 = v214;
      sub_100016E2C(v214, v217, &qword_100949710);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_1000325F0();
      v185 = sub_100770CDC();
      sub_10000CFBC(v183, &qword_100949710);
      sub_10000CFBC(v179, &qword_100949718);
      sub_10011BAB4(v123);
      sub_10011BAB4(v180);
      sub_10000CFBC(v219, &unk_10094BB80);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_10011BB10(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10011BB10(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100023AD0(v215, v188 + v186[6], &qword_100949718);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      sub_100763BAC();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10000CFBC(v190, &qword_100949710);
        if (v189)
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v192 + 104))(v188 + v186[10], *v193, v191);
      }

      else
      {
        (*(v192 + 32))(v188 + v186[10], v190, v191);
      }

      v166 = v188;
      return sub_10011BB10(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = sub_100763BAC();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_100016E2C(v219, v200, &unk_10094BB80);
        v146 = sub_10076034C();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10000CFBC(v145, &unk_10094BB80);
          v148 = 0;
        }

        else
        {
          v148 = sub_1007602EC();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_100286F40(v148, v213);

        v122 = 16.0;
        if (qword_10093FC58 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10099DFB8;
        goto LABEL_107;
      }

      v128 = v199;
      sub_100016E2C(v219, v199, &unk_10094BB80);
      v129 = sub_10076034C();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10000CFBC(v128, &unk_10094BB80);
        v131 = 0;
      }

      else
      {
        v131 = sub_1007602EC();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_100286F40(v131, v213);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v171 = qword_10099E000;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_100016E2C(v219, v197, &unk_10094BB80);
        v168 = sub_10076034C();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10000CFBC(v167, &unk_10094BB80);
          v170 = 0;
        }

        else
        {
          v170 = sub_1007602EC();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_100286F40(v170, v213);

        v122 = 16.0;
        if (qword_10093FC50 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10099DFA0;
        goto LABEL_107;
      }

      v141 = v196;
      sub_100016E2C(v219, v196, &unk_10094BB80);
      v142 = sub_10076034C();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10000CFBC(v141, &unk_10094BB80);
        v144 = 0;
      }

      else
      {
        v144 = sub_1007602EC();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_100286F40(v144, v213);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v171 = qword_10099DFE8;
    }

    v176 = sub_10000A61C(v114, v171);
    sub_10011BA50(v176, v123);
    v122 = 16.0;
    if (qword_10093FC48 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_10099DF88;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_10076F49C();

  if (v235)
  {
    v83 = v229;
    sub_10076035C();

    v84 = sub_10076034C();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = sub_10076034C();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_10078C2C0;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = sub_100763BAC();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_10093FC30 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_10000A61C(v221, qword_10099DF40);
    sub_10011BA50(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_10093FC60 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_10099DFD0;
  }

  else
  {
    v101 = sub_100763BAC();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_100016E2C(v229, v201, &unk_10094BB80);
        v104 = sub_10076034C();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10000CFBC(v103, &unk_10094BB80);
          v107 = 0;
        }

        else
        {
          v107 = sub_1007602EC();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_100286F40(v107, v224);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v149 = qword_10099E078;
      }

      else
      {
        v132 = v202;
        sub_100016E2C(v229, v202, &unk_10094BB80);
        v133 = sub_10076034C();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10000CFBC(v132, &unk_10094BB80);
          v136 = 0;
        }

        else
        {
          v136 = sub_1007602EC();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_100286F40(v136, v224);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v149 = qword_10099E048;
      }

      v150 = sub_10000A61C(v94, v149);
      sub_10011BA50(v150, v97);
      v96 = 16.0;
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_10099DF88;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_100016E2C(v229, v203, &unk_10094BB80);
      v109 = sub_10076034C();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10000CFBC(v108, &unk_10094BB80);
        v112 = 0;
      }

      else
      {
        v112 = sub_1007602EC();
        (*(v110 + 8))(v108, v109);
      }

      sub_100286F40(v112, v224);

      v96 = 16.0;
      if (qword_10093FC90 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_10099E060;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_100016E2C(v229, v198, &unk_10094BB80);
        v138 = sub_10076034C();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10000CFBC(v137, &unk_10094BB80);
          v140 = 0;
        }

        else
        {
          v140 = sub_1007602EC();
          (*(v139 + 8))(v137, v138);
        }

        sub_100286F48(v140, v224);

        v96 = 16.0;
        if (qword_10093FC80 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_10099E030;
      }

      else
      {
        v172 = v195;
        sub_100016E2C(v229, v195, &unk_10094BB80);
        v173 = sub_10076034C();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10000CFBC(v172, &unk_10094BB80);
          v175 = 0;
        }

        else
        {
          v175 = sub_1007602EC();
          (*(v174 + 8))(v172, v173);
        }

        sub_100286F40(v175, v224);

        v96 = 16.0;
        if (qword_10093FC78 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_10099E018;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_10000A61C(v94, v99);
  sub_10011BA50(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_10011BA50(v224, v210);
  sub_10011BA50(v97, v225);
  sub_100016E2C(v152, v227, &qword_100949718);
  v155 = v226;
  v156 = v211;
  sub_100016E2C(v226, v211, &qword_100949710);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_1000325F0();
  v221 = sub_100770CDC();
  sub_10000CFBC(v155, &qword_100949710);
  sub_10000CFBC(v152, &qword_100949718);
  sub_10011BAB4(v97);
  sub_10011BAB4(v153);
  sub_10000CFBC(v229, &unk_10094BB80);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_10011BB10(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_10011BB10(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v227, v160 + v158[6], &qword_100949718);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  sub_100763BAC();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10000CFBC(v161, &qword_100949710);
    if (v162)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v164 + 104))(v160 + v158[10], *v165, v163);
  }

  else
  {
    (*(v164 + 32))(v160 + v158[10], v161, v163);
  }

  v166 = v160;
  return sub_10011BB10(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_10011A8FC()
{
  sub_10000A5D4(&qword_100949720);
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10078B310;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_10017A63C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100949708 = v7;
  return result;
}

uint64_t sub_10011AB24(unint64_t a1)
{
  v94 = sub_10000A5D4(&qword_100949728);
  __chkstk_darwin(v94);
  v97 = &v89 - v2;
  v3 = sub_10000A5D4(&unk_100946720);
  v100 = *(v3 - 8);
  __chkstk_darwin(v3);
  v93 = &v89 - v4;
  v5 = sub_1007621EC();
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  __chkstk_darwin(v5);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v89 - v9);
  __chkstk_darwin(v10);
  v90 = (&v89 - v11);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  __chkstk_darwin(v14);
  v92 = &v89 - v15;
  __chkstk_darwin(v16);
  v98 = &v89 - v17;
  v18 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v99 = a1;
  sub_10076463C();
  sub_10000CFBC(v29, &qword_1009499A0);
  v36 = v100;
  sub_100023AD0(v32, v35, &qword_1009499A0);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10000CFBC(v35, &qword_1009499A0);
LABEL_6:
    v40 = v101;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_10076F49C();

  v38 = v102;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_1007603BC();

  v40 = v101;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_10076463C();
  sub_10000CFBC(v20, &qword_1009499A0);
  sub_100023AD0(v23, v26, &qword_1009499A0);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v44 = v92;
    sub_10076F49C();

    v45 = *(v100 + 8);
    v45(v26, v3);
    v46 = v96;
    v47 = v98;
    v48 = v44;
    v49 = v95;
    (*(v96 + 32))(v98, v48, v95);
    v50 = v93;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v45(v50, v3);
    v51 = v94[12];
    v52 = v46[2];
    v53 = v97;
    v52(v97, v40, v49);
    v100 = v51;
    v52(&v53[v51], v47, v49);
    v54 = v46[11];
    v55 = v54(v53, v49);
    if (v55 == enum case for ShelfBackground.color(_:))
    {
      v56 = v55;
      v57 = v90;
      v52(v90, v53, v49);
      v58 = v46;
      v59 = v57;
      v92 = v58[12];
      (v92)(v57, v49);
      v94 = *v57;
      v60 = sub_10000A5D4(&unk_100950670);
      v93 = *(v60 + 48);
      if (v54(&v53[v100], v49) == v56)
      {
        v61 = v93;
        v62 = v89;
        v52(v89, &v97[v100], v49);
        (v92)(v62, v49);
        v63 = *v62;
        v64 = *(v60 + 48);
        v65 = sub_10076461C();
        v66 = v94;
        v67 = [v94 resolvedColorWithTraitCollection:v65];

        v68 = sub_10076461C();
        v69 = [v63 resolvedColorWithTraitCollection:v68];

        sub_1000325F0();
        LOBYTE(v68) = sub_100770EEC();

        if ((v68 & 1) == 0)
        {
          v85 = *(v96 + 8);
          v85(v101, v49);
          v85(v98, v49);
          v86 = sub_1007659CC();
          v87 = *(*(v86 - 8) + 8);
          v87(v62 + v64, v86);
          v87(&v61[v90], v86);
          v88 = v97;
          v85(&v97[v100], v49);
          v85(v88, v49);
          return 2;
        }

        v70 = sub_1007659CC();
        v71 = *(*(v70 - 8) + 8);
        v71(v62 + v64, v70);
        v71(&v61[v90], v70);
      }

      else
      {
        v72 = sub_1007659CC();
        (*(*(v72 - 8) + 8))(&v93[v59], v72);
      }

      v46 = v96;
      v53 = v97;
    }

    v73 = enum case for ShelfBackground.none(_:);
    v74 = v46[13];
    v75 = v91;
    v74(v91, enum case for ShelfBackground.none(_:), v49);
    v99 = sub_10011BB7C();
    v76 = sub_10076FF1C();
    v77 = v46[1];
    v77(v75, v49);
    if ((v76 & 1) == 0)
    {
      v74(v75, v73, v49);
      v78 = sub_1007621DC();
      v77(v75, v49);
      if (v78)
      {
        v77(v101, v49);
        v77(v98, v49);
        v79 = v100;
LABEL_20:
        v77(&v53[v79], v49);
        v77(v53, v49);
        return 2;
      }
    }

    v80 = v74;
    v74(v75, v73, v49);
    v81 = v101;
    v82 = sub_1007621DC();
    v77(v75, v49);
    if (v82)
    {
      v80(v75, v73, v49);
      v83 = v98;
      v84 = sub_10076FF1C();
      v77(v75, v49);
      v77(v81, v49);
      v77(v83, v49);
      v79 = v100;
      if ((v84 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77(v81, v49);
      v77(v98, v49);
    }

    v42 = &qword_100949728;
    v43 = v53;
    goto LABEL_23;
  }

  v42 = &qword_1009499A0;
  v43 = v26;
LABEL_23:
  sub_10000CFBC(v43, v42);
  return 0;
}

uint64_t sub_10011B5EC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10076B5BC();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_10076034C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100946720);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_10076035C(), , v22 = sub_10076032C(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_10076463C();
    sub_10000CFBC(v23, &qword_1009499A0);
    sub_100023AD0(v24, v8, &qword_1009499A0);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10000CFBC(v8, &qword_1009499A0);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_10076F49C();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_10093F7F0 != -1)
      {
        swift_once();
      }

      v30 = sub_10069358C(v28, qword_100949708);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

uint64_t sub_10011BA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011BAB4(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011BB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10011BB7C()
{
  result = qword_100949730;
  if (!qword_100949730)
  {
    sub_1007621EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949730);
  }

  return result;
}

char *sub_10011BBD4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_itemLayoutContext;
  v20 = sub_10076341C();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v15, qword_1009A1060);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView();
  v25 = objc_allocWithZone(v24);
  *&v25[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v25[qword_10094E728] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  sub_100764BBC();
  sub_100764BEC();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell();
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_100244548(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_1002448C4();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_10011C2BC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    sub_10075FBBC();
  }
}

id sub_10011C344(void *a1)
{
  v2 = v1;
  v4 = sub_10076771C();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100244548(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView();
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_1002448C4();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow();
      v10 = v9;
      v11 = a1;
      v12 = sub_100770EEC();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_10011C54C()
{
  sub_100016F40(0, &qword_1009560B0);
  v1 = sub_10077098C();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    sub_10075FC3C();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    sub_10075FC3C();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_10011C664()
{
  v1 = v0;
  v2 = sub_10076E21C();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell();
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_10011D2FC(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100016F40(0, &qword_100947240), , v23 = sub_1007701EC(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow();
    sub_10076D2DC();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_10078C3E0;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_10078C3D0;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_10078C3F0;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_10076D2DC();
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
    sub_10075FD2C();
    sub_10076D2DC();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_10011E080(v91, v67);
  v29 = [v1 traitCollection];
  v30 = sub_1007706EC();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = sub_10077084C();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_100785070;
  v78 = xmmword_100785080;
  sub_100012498(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_10011E144();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_10011E028();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10000A570(v79, v36 + 112);
  sub_10011E080(v80, v36 + 152);
  sub_10011E080(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100012498(&v69, &v61);
  sub_10000CF78(&v61, *(&v62 + 1));
  sub_10076E0EC();

  sub_10000CD74(&v61);
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_10076E1CC();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_10011E0F0(&v73);
  return sub_10000CFBC(v91, &unk_10094B230);
}

double sub_10011CD60(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v6[5] = a2;
  sub_10076D2DC();
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_10011CE20(uint64_t a1, double a2, double a3)
{
  result = sub_10076B98C();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  v11 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      sub_1004BDBB0(a1, v10, a2, a3);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v12 = v11 + 16;
    ++v8;

    v13 = sub_10076B8EC();
    v15 = v14;

    v11 = v12;
    if (v15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10049D954(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_10049D954((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_10011CF88()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_10011DCEC(0);
  sub_10011C2BC(0);
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_10011C54C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_10011C344(v6);
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_10011D0D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell()
{
  result = qword_100949768;
  if (!qword_100949768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011D230()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011D2FC(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100016F40(0, &qword_1009560B0);

    v2 = sub_10077098C();
    if ((sub_10076BDDC() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (sub_10076BE0C())
    {
      v4 = sub_10076044C();
    }

    else
    {
      if ((sub_10076BDFC() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_1005A6008(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_10011D440(uint64_t a1, __int128 *a2, void *a3)
{
  v74 = a3;
  v70 = a2;
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-v5];
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000A5D4(&qword_10094C340);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  sub_10076B97C();
  v14 = sub_1007607CC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CFBC(v13, &qword_10094C340);
  }

  else
  {
    v16 = sub_1007607BC();
    (*(v15 + 8))(v13, v14);
    v17 = 0.0;
    if (v16)
    {
      return v17;
    }
  }

  v18 = v74;
  [v74 pageMarginInsets];
  sub_1007704CC();
  sub_100770ACC();
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v7, qword_1009A1060);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  v21 = type metadata accessor for DynamicTypeLinkedTextView();
  v22 = objc_allocWithZone(v21);
  *&v22[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v22[qword_10094E728] = 0;
  v95.receiver = v22;
  v95.super_class = v21;
  v23 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v24 = v23;
  sub_100764BBC();
  sub_100764BEC();

  v25 = v24;
  [v25 setSelectable:1];
  v26 = v25;
  [v26 setEditable:0];
  [v26 setScrollEnabled:0];
  [v26 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v26 setContentInsetAdjustmentBehavior:2];
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setDelegate:v26];
  [v26 _setInteractiveTextSelectionDisabled:1];

  (*(v8 + 8))(v10, v7);
  v28 = v26;
  sub_10076B9DC();
  v29 = sub_10076FF6C();

  [v28 setText:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v68 = v28;
  v31 = sub_10076B99C();
  v32 = [v18 traitCollection];
  v33 = sub_10011D2FC(v31);
  v67 = v34;
  v65 = v35;

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0);
  v36 = sub_1007701EC();

  v37 = 0;
  v38 = 0;
  if (v36)
  {

    v37 = sub_10011E248;
    v38 = a1;
  }

  v66 = v33;
  v72 = v38;
  v73 = v37;
  v71 = [v18 traitCollection];
  *(&v76 + 1) = &type metadata for DynamicSizePlaceholder;
  v39 = sub_10011DFD4();
  *&v77 = v39;
  *&v75 = sub_10011DFCC;
  *(&v75 + 1) = v30;
  v69 = v30;

  if (!sub_10076B99C())
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = v72;
    v43 = v73;
    if (v36)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v40 = sub_1007616FC();
  swift_allocObject();
  v41 = sub_1007616EC();
  v42 = sub_10011E1F0();
  v44 = v72;
  v43 = v73;
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v45 = &type metadata for DynamicSizePlaceholder;
  v46 = v44;
  v47 = v43;
LABEL_13:
  sub_10001CE50(v43);
  v48 = v71;
  if (sub_1007706EC())
  {
    v49 = 1;
  }

  else
  {
    v50 = [v48 preferredContentSizeCategory];
    v49 = sub_10077084C();
  }

  v51 = v70[3];
  v86 = v70[2];
  v87 = v51;
  v52 = v70[5];
  v88 = v70[4];
  v89 = v52;
  v53 = v70[1];
  v84 = *v70;
  v85 = v53;
  sub_100012498(&v75, v90);
  v91[0] = v41;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = v40;
  v91[4] = v42;
  v55 = v66;
  v54 = v67;
  v91[5] = v66;
  v91[6] = v67;
  v56 = v65 & 1;
  v92 = v65 & 1;
  v93[0] = v47;
  v93[1] = v46;
  v93[2] = 0;
  v93[3] = v45;
  v93[4] = v39;
  v94 = v49 & 1;
  v57 = [v74 traitCollection];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  if (v49)
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v83 = sub_10011E144();
  }

  else
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v83 = sub_10011E028();
  }

  v58 = swift_allocObject();
  *&v81 = v58;
  sub_10000A570(v90, v58 + 112);
  sub_10011E080(v91, v58 + 152);
  sub_10011E080(v93, v58 + 216);
  v59 = v78;
  *(v58 + 48) = v77;
  *(v58 + 64) = v59;
  v60 = v80;
  *(v58 + 80) = v79;
  *(v58 + 96) = v60;
  v61 = v76;
  *(v58 + 16) = v75;
  *(v58 + 32) = v61;
  *(v58 + 192) = v55;
  *(v58 + 200) = v54;
  *(v58 + 208) = v56;
  sub_100012498(&v81, &v75);
  sub_10000CF78(&v75, *(&v76 + 1));
  sub_10076E0FC();

  sub_10000CD74(&v75);
  sub_100770AEC();
  v17 = v62;

  sub_1000167E0(v73);

  sub_10011E0F0(&v84);
  return v17;
}

id sub_10011DCEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100244548(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView();
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_1002448C4();
  }

LABEL_18:
  sub_10011C54C();
  return [v2 setNeedsLayout];
}

uint64_t sub_10011DF94()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10011DFD4()
{
  result = qword_100949778;
  if (!qword_100949778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949778);
  }

  return result;
}

unint64_t sub_10011E028()
{
  result = qword_100949780;
  if (!qword_100949780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949780);
  }

  return result;
}

uint64_t sub_10011E080(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094B230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011E144()
{
  result = qword_100949788;
  if (!qword_100949788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949788);
  }

  return result;
}

uint64_t sub_10011E198()
{
  sub_10000CD74(v0 + 112);
  if (*(v0 + 176))
  {
    sub_10000CD74(v0 + 152);
  }

  if (*(v0 + 240))
  {
    sub_10000CD74(v0 + 216);
  }

  return _swift_deallocObject(v0, 256, 7);
}

unint64_t sub_10011E1F0()
{
  result = qword_1009680E0;
  if (!qword_1009680E0)
  {
    sub_1007616FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009680E0);
  }

  return result;
}

void sub_10011E250()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v5, qword_1009A1060);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v15[qword_10094E728] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  sub_100764BBC();
  sub_100764BEC();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10011E690@<X0>(uint64_t a1@<X8>)
{
  sub_100224EB8();
  v2 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v3 = sub_10076350C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell()
{
  result = qword_1009497B8;
  if (!qword_1009497B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10011E808(uint64_t a1, int *a2)
{
  v60 = sub_10000A5D4(&qword_100942C28);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = sub_10076B5BC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10000A5D4(&unk_100946720);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_100382B5C(a1, a2);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    sub_10076463C();
    sub_10000CFBC(v32, &qword_1009499A0);
    v33 = v59;
    sub_10002AB4C(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10000CFBC(v33, &qword_1009499A0);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      sub_10076F49C();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_10002ABBC(v37, v61);
    sub_10002ABBC(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10000CFBC(v38, &unk_1009568A0);
      sub_10000CFBC(v37, &unk_1009568A0);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10000CFBC(v40, &unk_1009568A0);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_10002ABBC(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10000CFBC(v62, &unk_1009568A0);
      sub_10000CFBC(v63, &unk_1009568A0);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10000CFBC(v40, &qword_100942C28);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_100077514();
    v50 = sub_10076FF1C();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10000CFBC(v62, &unk_1009568A0);
    sub_10000CFBC(v63, &unk_1009568A0);
    v51(v47, v18);
    sub_10000CFBC(v40, &unk_1009568A0);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_10011EF54(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_100120198(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_10011EF54(void *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_10076960C();

    if (v5)
    {
      v6 = sub_10076019C();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1005DC9F0(a2, v6, Strong);

  sub_1007708EC();
  v9 = sub_10076FF6C();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_10077149C();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = sub_10077158C();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = sub_10076FF9C();
    v19 = v18;

    if (v17 == sub_10076FF9C() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = sub_10077158C();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      sub_1007714EC();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = sub_10077149C();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = sub_10076FF9C();
          v34 = v33;

          if (v32 == sub_10076FF9C() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = sub_10077167C();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_10077167C();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  sub_10077019C();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  sub_10077021C();
LABEL_22:
  sub_10077025C();
}

double sub_10011F390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007708EC() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000A5D4(&qword_100942C18);
    a5[4] = sub_100120048(&qword_100949980, &qword_100942C18);
    sub_10000DB7C(a5);

    sub_1007708FC();
LABEL_6:
    sub_10076A3BC();
    return result;
  }

  v24 = v10;
  v14 = sub_10077167C();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10000A5D4(&qword_100949968);
    a5[4] = sub_100120048(&unk_100949970, &qword_100949968);
    v23[2] = sub_10000DB7C(a5);

    v23[1] = sub_1007708FC();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = sub_10077167C();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_10037E460(a1, a2, v22, a4, a5);
}

uint64_t sub_10011F6E0(uint64_t a1)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100763FAC();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_1006359A8();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10011F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_weakLoadStrong() && (v8 = sub_10076960C(), , v8))
    {
      v9 = sub_10076019C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12.super.super.isa = sub_10011FA08().super.super.isa;
    }

    else
    {
      v12.super.super.isa = 0;
    }

    sub_1005DB35C(a6, v9, v11, v12.super.super.isa);
  }

  return result;
}

UIMenu sub_10011FA08()
{
  v0 = sub_1007695EC();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = sub_10077158C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = sub_10077149C();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          sub_10076B8EC();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        sub_10076B8DC();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (sub_10076960C())
        {
          v22 = sub_1007601AC();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                sub_10077167C();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100016F40(0, &qword_1009641D0);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        sub_100770F1C();
        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = sub_1007695FC();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100016F40(0, &unk_100949990);

    v18 = sub_10077157C();
  }

  else
  {

    sub_10077168C();
    sub_100016F40(0, &unk_100949990);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_100016F40(0, &qword_100946818);
  v28._countAndFlagsBits = v16;
  v28._object = v17;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v19.value = 0;
  return sub_100770B5C(v28, v29, v27, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v21);
}

uint64_t sub_10011FE44()
{

  sub_10000CC8C(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10011FEB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10011FEE8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10011FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10011F900(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100120048(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_10012009C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4[3] = sub_100016F40(0, &qword_1009641D0);
    v4[0] = a1;
    v3 = a1;
    sub_10076965C();

    return sub_10000CFBC(v4, &unk_1009434C0);
  }

  return result;
}

uint64_t sub_10012014C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100120198(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_100945BD0);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = sub_10076461C();
  sub_100763FCC();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView();
  sub_1007708EC();
  sub_10076462C();
  sub_10076D17C();
  sub_10075FE7C();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = sub_10076FF6C();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  sub_10077019C();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return (*(v11 + 8))(v13, v30);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];

  sub_10076B87C();
  sub_10012062C(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_100124E40(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10000CFBC(v5, &unk_10094A890);
  }

  return result;
}

uint64_t sub_10012062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_10000A5D4(&qword_1009499A8);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData();
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_1009499B0);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_10000A5D4(&qword_100942A80);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = sub_10076B96C();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = sub_10075DB7C();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = sub_10076C15C();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination();
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  sub_10075F5FC();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      sub_10075F61C();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = sub_10076629C();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v103 = v304;
      if (v304)
      {

        v104 = sub_10076625C();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_10000A5D4(&qword_100949A00);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = sub_10075F5DC();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      sub_10075F61C();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      sub_1007656AC();
      sub_10075F62C();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v128 = sub_10076FD4C();
        sub_10000A61C(v128, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v306 = v297;
        sub_10000DB7C(&v304);
        sub_10075F5FC();
        sub_10076F32C();
        sub_10000CFBC(&v304, &unk_1009434C0);
        sub_10076FBDC();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_10000A5D4(&unk_100958DB0);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      sub_10075F61C();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10000CFBC(v98, &unk_1009435D0);
        v92 = v302;
        if (qword_1009412E8 == -1)
        {
LABEL_15:
          v107 = sub_10076FD4C();
          sub_10000A61C(v107, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100784500;
          sub_10076F27C();
          v306 = v297;
          sub_10000DB7C(&v304);
          sub_10075F5FC();
          sub_10076F32C();
          sub_10000CFBC(&v304, &unk_1009434C0);
          sub_10076FBDC();

LABEL_16:
          sub_10000CFBC(v92, &unk_1009434C0);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      sub_10075F61C();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_10000A5D4(&qword_1009499F8);
      (*(v115 + 16))(v95, v72, v99);
      sub_10075F60C();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_100016F40(0, &qword_1009453B0);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v127 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_10000A5D4(&qword_100948B88);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v127 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      sub_10075F61C();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = sub_10076B86C();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      if (v304)
      {
        v133 = sub_10076B84C();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_10000A5D4(&qword_1009499F0) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      sub_10075F61C();
      v135 = sub_10075FFEC();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v136 = v304;
      v137 = *(sub_10000A5D4(&unk_100964150) + 48);
      *v95 = v136;
      sub_100023AD0(v134, v95 + v137, &unk_1009435D0);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      sub_10075F61C();
      v139 = sub_100769A8C();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v140 = v304;
      v141 = *(sub_10000A5D4(&qword_100958DA0) + 48);
      *v95 = v140;
      sub_100023AD0(v138, v95 + v141, &unk_1009435D0);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      sub_10075F61C();
      v143 = sub_10076116C();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v144 = v304;
      v145 = *(sub_10000A5D4(&qword_1009499E8) + 48);
      *v95 = v144;
      sub_100023AD0(v142, v95 + v145, &unk_1009435D0);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      sub_10075F61C();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10000CFBC(v148, &unk_1009435D0);
      if (qword_1009412E8 == -1)
      {
LABEL_60:
        v149 = sub_10076FD4C();
        sub_10000A61C(v149, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v306 = v297;
        sub_10000DB7C(&v304);
        sub_10075F5FC();
        sub_10076F32C();
        sub_10000CFBC(&v304, &unk_1009434C0);
        sub_10076FBDC();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      sub_10075F61C();
      sub_10075FB0C();
      sub_10075F62C();
      sub_100016E2C(v302, &v304, &unk_1009434C0);
      if (v306)
      {
        sub_10076C84C();
        swift_dynamicCast();
      }

      else
      {
        sub_10000CFBC(&v304, &unk_1009434C0);
      }

      v154 = sub_10075FAFC();

      v155 = *(sub_10000A5D4(&qword_100958CE0) + 48);
      *v95 = v154;
      sub_100023AD0(v288, v95 + v155, &unk_1009435D0);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_100016F40(0, &qword_1009499E0);
      sub_10075F62C();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      sub_10075F61C();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        sub_10075E7DC();
        sub_10075F62C();

        v160 = v304;
        v161 = *(sub_10000A5D4(&qword_100958CD0) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      sub_10075F61C();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      sub_10075F62C();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_10000A5D4(&unk_100958CC0) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10000CFBC(v283, &qword_100942A80);
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v167 = sub_10076FD4C();
      sub_10000A61C(v167, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      v306 = v297;
      sub_10000DB7C(&v304);
      sub_10075F5FC();
      sub_10076F32C();
      sub_10000CFBC(&v304, &unk_1009434C0);
      sub_10076FBDC();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = sub_1007601BC();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v163 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        sub_10075F61C();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        sub_10075F61C();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          sub_10075F76C();
          v177 = v276;
          sub_10075F62C();

          v178 = *(sub_10000A5D4(&qword_1009499D8) + 48);
          v175(v95, v176, v174);
          sub_100023AD0(v177, v95 + v178, &qword_1009499B0);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = sub_10075FFEC();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        sub_10075F62C();
        v163 = v304;
        if (!v304)
        {
          if (qword_1009412E8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_1009412E8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = sub_10076BCAC();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = sub_100760DEC();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            sub_10075F61C();
            sub_10075F52C();
            sub_10075F62C();
            v183 = v304;
            sub_10000A5D4(&qword_1009499D0);
            *v95 = v183;
            sub_100016E2C(v182, v263, &unk_1009435D0);
            sub_100016E2C(v182, v266, &unk_1009435D0);
            sub_10076159C();

            sub_10000CFBC(v182, &unk_1009435D0);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            sub_100764A9C();
            sub_10075F62C();
            v184 = v304;
            v185 = sub_10000A5D4(&qword_1009499C8);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            sub_10075F61C();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              sub_10075F61C();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                sub_100765B8C();
                sub_10075F62C();

                v193 = v304;
                v194 = *(sub_10000A5D4(&qword_1009499C0) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              sub_10075F61C();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_10000A5D4(&qword_1009499B8);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                sub_100762FBC();
                sub_10075F62C();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = sub_100762FAC();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              sub_10075F62C();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_1009412E8 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              sub_10075F62C();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_100124E40(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_10000A5D4(&unk_100958C90) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = sub_10075E11C();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10000CFBC(v271, &qword_1009499A8);
              if (qword_1009412E8 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_10075F62C();
              v211 = v304;
              if (!v304)
              {
                if (qword_1009412E8 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  sub_10075F62C();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = sub_1007650DC();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  sub_10075F62C();
                  if (v304)
                  {
                    v214 = sub_1007650CC();
                    v215 = sub_1007650BC();
                    v217 = v216;
                    v218 = sub_1007650AC();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = sub_100762D9C();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      if (v304)
                      {
                        sub_10000A5D4(&qword_100958CB0);
                        *v95 = sub_100762D5C();
                        v95[1] = sub_100762D4C();
                        sub_100762D2C();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_1009412E8 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      sub_10075F61C();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        sub_10075FFEC();
                        sub_10075F62C();

                        v233 = v304;
                        v234 = *(sub_10000A5D4(&unk_100964150) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      sub_10075F61C();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        sub_10075FFEC();
                        sub_10075F62C();

                        v239 = v304;
                        v240 = *(sub_10000A5D4(&unk_100964150) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = sub_10075EDEC();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = sub_100767F7C();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          sub_10075F62C();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = sub_100764E1C();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_100124E40(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = sub_10076A22C();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  sub_10075F62C();
                  if (v304)
                  {
                    v221 = sub_10076A21C();
                    v222 = sub_10076A20C();
                    v224 = v223;
                    v225 = sub_10076A1FC();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_1009412E8 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_10075F62C();
              v211 = v304;
              if (!v304)
              {
                if (qword_1009412E8 != -1)
                {
                  swift_once();
                }

                v219 = sub_10076FD4C();
                sub_10000A61C(v219, qword_1009A2600);
                sub_10000A5D4(&unk_100942A60);
                sub_10076F33C();
                *(swift_allocObject() + 16) = xmmword_100784500;
                sub_10076F27C();
                v306 = v297;
                sub_10000DB7C(&v304);
                sub_10075F5FC();
                sub_10076F32C();
                sub_10000CFBC(&v304, &unk_1009434C0);
                sub_10076FBDC();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          sub_10076797C();
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = sub_100760A4C();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  sub_10075F62C();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_100124E40(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10000CFBC(v92, &unk_1009434C0);
}

double sub_100124E20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100124E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100124EE0()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F21C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform])
  {

    sub_100760E3C();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v1[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v1[v11] = v10;
      v20 = v10;

      sub_100125194();
    }

    else
    {
      v17 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      sub_100125194();
      (*(v6 + 8))(v9, v5);
    }

    sub_1007601EC();

    sub_10007AFB4(v21, v4);

    sub_1001253E8(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *&v1[v14];
    }

    else
    {
      v16 = 0;
    }

    *&v1[v14] = 0;

    sub_100125194();
  }
}

void sub_100125194()
{
  v1 = v0;
  v2 = sub_10075F21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      sub_100760E3C();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_10093F5B8 != -1)
        {
          swift_once();
        }

        v8 = qword_100945598;
      }

      else
      {
        if (qword_10093F5C0 != -1)
        {
          swift_once();
        }

        v8 = qword_1009455A0;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_10093F5C0;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_1009455A0;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_1001253E8(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_100125E2C(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
  sub_1007638EC();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  sub_1007638DC();

  [v2 setNeedsLayout];
  return sub_100125E90(a1);
}

char *sub_1001254B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  v11 = sub_10000A61C(v10, qword_10099CB78);
  sub_100125EEC(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_100125714()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BorderedScreenshotView();
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_10076422C();
  CGRectGetWidth(v41);
  sub_10076422C();
  CGRectGetHeight(v42);
  sub_10076422C();
  CGRectGetMidX(v43);
  sub_10076422C();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
  sub_10075FC8C();

  sub_100125EEC(v17, v15);
  sub_100125E90(v15);
  v20 = *&v1[v18];
  sub_100125EEC(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_100125E90(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  sub_10075FD1C();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    sub_10076422C();
    [v26 setFrame:?];
  }

  v27 = *&v1[v24];
  if (*(v17 + 16))
  {
    if (v27)
    {
      [*&v1[v24] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v27)
  {
    v28 = v38;
    sub_100125EEC(v17, v38);
    v29 = v27;
    sub_10076422C();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_100125E90(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_100125E90(v28);
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v32 = v36 * v35;
    }

    [v29 _setContinuousCornerRadius:v32];
  }
}

id sub_100125C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView()
{
  result = qword_100949A48;
  if (!qword_100949A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100125D80()
{
  result = type metadata accessor for ScreenshotDisplayConfiguration();
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

uint64_t sub_100125E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100125E90(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100125EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100125F50()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else
  {
    result = sub_10075F14C();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView);
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100769F0C();
  sub_10000A61C(v4, qword_1009A31E8);
  sub_100769E6C();
  [v3 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [v3 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760B8C();
}

void *sub_10012613C()
{
  v0 = sub_10076BEDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else if (!sub_10075F14C())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10076BEEC();
  sub_10076BE9C();
  (*(v1 + 8))(v3, v0);
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100769F0C();
  sub_10000A61C(v4, qword_1009A31E8);
  sub_100769E6C();
  sub_10076BFCC();

  sub_10077019C();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  return v7;
}

char *sub_100126330(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_100126610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100126678(uint64_t a1, double a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v24 = a1;
  v25 = sub_10076997C();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v29);
  if ((a4 & 1) == 0)
  {
    sub_1000F00E0(v30);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
  }

  sub_100016F40(0, &qword_100942F00);
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  sub_10000A61C(v13, qword_1009A1078);
  v14 = [a5 traitCollection];
  v15 = sub_100770B3C();

  sub_1000367B4(v29, v28);
  v16 = sub_10076DDDC();
  swift_allocObject();
  v17 = sub_10076DD9C();
  v28[23] = v16;
  v28[24] = &protocol witness table for LayoutViewPlaceholder;
  v28[20] = v17;
  v18 = sub_10076C04C();
  v27[3] = v18;
  v27[4] = sub_10004C7BC();
  v19 = sub_10000DB7C(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v15;
  sub_10076C90C();
  sub_10000CD74(v27);

  sub_10076996C();
  sub_10076994C();
  (*(v10 + 8))(v12, v25);
  swift_allocObject();
  v21 = sub_10076DD9C();
  v28[33] = v16;
  v28[34] = &protocol witness table for LayoutViewPlaceholder;
  v28[30] = v21;
  v22 = sub_1007561B8(a2, a5, v28);

  sub_100036810(v28);
  sub_100036864(v29);
  return v22;
}

uint64_t sub_100126AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a3;
  v122 = sub_10076201C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v119 = &v114 - v6;
  v7 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v7 - 8);
  v134 = &v114 - v8;
  v133 = sub_100768FEC();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10000A5D4(&unk_100946750);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v114 - v10;
  v11 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v11 - 8);
  v127 = &v114 - v12;
  v13 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v13 - 8);
  v126 = &v114 - v14;
  v15 = sub_10076B96C();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  __chkstk_darwin(v15);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v114 - v19;
  v20 = sub_10075ECCC();
  v137 = *(v20 - 8);
  v138 = v20;
  __chkstk_darwin(v20);
  v124 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v114 - v23;
  v24 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v24 - 8);
  v118 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v114 - v27;
  v28 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v28 - 8);
  v30 = &v114 - v29;
  v31 = sub_1007611EC();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v33 - 8);
  v35 = &v114 - v34;
  v36 = sub_10076121C();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076481C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10075F25C();
  v139 = a1;
  v140 = v42;
  if (sub_10075F24C())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v43 = sub_10076D39C();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    sub_10076B85C();
    v44 = sub_10075DB7C();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v117;
    sub_10076B81C();
    v46 = v118;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_100127F60(&qword_100942810, type metadata accessor for VideoView);
    v47 = sub_100762EEC();
    sub_10000CFBC(v46, &unk_10094C030);
    sub_10000CFBC(v45, &unk_10094C030);
    sub_10000CFBC(v30, &unk_1009435D0);
    sub_10000CFBC(&v144, &qword_100943310);
    v48 = v143;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = [v48 contentView];
      [v51 addSubview:v50];

      [v48 setNeedsLayout];

      (*(v115 + 8))(v41, v116);
    }

    else
    {
      (*(v115 + 8))(v41, v116);
    }
  }

  v52 = v139;
  v53 = sub_10075F24C();
  if (v53)
  {
  }

  v54 = v143;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v53 == 0;
    v57 = v55;
    [v55 setHidden:v56];
  }

  [v54 setNeedsLayout];
  v58 = v125;
  sub_10075F23C();
  v59 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v137;
  v60 = v138;
  v62 = *(v137 + 24);
  v62(&v54[v59], v58, v138);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView];
  v64 = v124;
  (*(v61 + 16))(v124, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_10069583C();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  sub_10076BB6C();
  v68 = v67;
  sub_10075F22C();
  v138 = v69;
  v70 = sub_10076BB3C();
  v124 = sub_10076BA5C();
  v137 = v71;
  v118 = sub_10076BABC();
  v73 = v72;
  sub_10076BB7C();
  v74 = sub_1006993F4(v52);
  v139 = sub_10076BA2C();
  v75 = *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v125 = v68;
  if (v68)
  {
    v76 = sub_10076FF6C();
  }

  else
  {
    v76 = 0;
  }

  v77 = v126;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  if (v138)
  {
    v79 = sub_10076FF6C();
  }

  else
  {
    v79 = 0;
  }

  v126 = v73;
  [v78 setText:v79];

  if (v74)
  {
    v80 = enum case for Wordmark.arcade(_:);
    v81 = sub_10076C43C();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_1000325F0();
    v83 = sub_100770CFC();
    sub_1006983AC(v77, v83);
  }

  else
  {
    v84 = sub_10076C43C();
    (*(*(v84 - 8) + 56))(v77, 1, 1, v84);
    sub_1006983AC(v77, 0);
  }

  v85 = v135;
  sub_10000CFBC(v77, &qword_1009622B0);
  v86 = sub_10000A5D4(&qword_100945590);
  v87 = v127;
  (*(*(v86 - 8) + 56))(v127, 1, 1, v86);
  v88 = v128;
  v89 = v133;
  (*(v128 + 104))(v130, enum case for OfferButtonSubtitlePosition.below(_:), v133);
  (*(v88 + 56))(v134, 1, 1, v89);
  sub_100127F60(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v90 = v129;
  sub_10076759C();
  sub_1001F12C8(v70, v139, 0, v87, v90, v141, 0, 0);
  (*(v131 + 8))(v90, v132);
  sub_10000CFBC(v87, &unk_100946760);
  if (v137)
  {
    v91 = v85;
    v92 = v126;
    if (v126)
    {
      v93 = v123;
      (*(v136 + 16))(v123, v142, v91);
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
      v94 = v144;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v95 = v63;
      v96 = v93;
      v97 = &off_100911000;
      v98 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v96, v124, v137, v118, v92, 0, v63, &off_10089F520, v94, *(&v94 + 1));
      v99 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v95[v99] = v98;

      goto LABEL_24;
    }
  }

  else
  {

    v91 = v85;
  }

  v100 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v100] = 0;

  sub_100698A4C(0, 0);
  v97 = &off_100911000;
LABEL_24:
  *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v101 = v119;
    sub_100766A8C();
    v102 = v121;
    v103 = v120;
    v104 = v122;
    (*(v121 + 104))(v120, enum case for OfferLabelStyle.none(_:), v122);
    sub_100127F60(&unk_100958360, &type metadata accessor for OfferLabelStyle);
    v105 = sub_10076FF1C();
    v106 = *(v102 + 8);
    v106(v103, v104);
    v106(v101, v104);
    if ((v105 & 1) == 0)
    {

      sub_100766ACC();
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v108 = sub_100764E4C();
      swift_allocObject();
      v109 = sub_100764E2C();
      *(&v145 + 1) = v108;
      *&v144 = v109;
      v110 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100127EF0(&v144, &v63[v110]);
      swift_endAccess();
      v111 = objc_opt_self();
      v112 = [v111 areAnimationsEnabled];
      [v111 setAnimationsEnabled:0];
      sub_100127F60(&qword_100949AD8, type metadata accessor for AppShowcaseLockupView);
      swift_unknownObjectRetain();
      sub_100764E3C();
      [v63 layoutIfNeeded];
      [v111 setAnimationsEnabled:v112];

      goto LABEL_29;
    }
  }

  v144 = 0u;
  v145 = 0u;
  v107 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100127EF0(&v144, &v63[v107]);
  swift_endAccess();
  sub_1006A9248(0, 0);
  [v63 v97[194]];

LABEL_29:

  (*(v136 + 8))(v142, v91);
  [v143 v97[194]];
}

uint64_t sub_100127EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100127FA8(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v62 = a2;
  v60 = sub_10076D39C();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_10076BF6C();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v52 = &v40[-v8];
  __chkstk_darwin(v9);
  v51 = &v40[-v10];
  v11 = sub_10075ECCC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v40[-v15];
  __chkstk_darwin(v17);
  v56 = &v40[-v18];
  __chkstk_darwin(v19);
  v49 = &v40[-v20];
  v21 = sub_10076B75C();
  v22 = *(v21 + 16);
  v58 = v21 + 32;
  v48 = (v12 + 32);
  v65 = (v12 + 88);
  v64 = enum case for AppShowcaseType.large(_:);
  v47 = enum case for AppShowcaseType.small(_:);
  v41 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v55 = (v12 + 8);
  v46 = enum case for Artwork.Style.roundedRect(_:);
  v45 = (v5 + 104);
  v44 = (v5 + 8);
  v43 = (v12 + 16);
  v42 = (v3 + 8);
  v59 = v21;

  v24 = 0;
  v50 = v16;
  v61 = v22;
  while (v24 == v22)
  {
    v75 = 0;
    v24 = v22;
    v73 = 0u;
    v74 = 0u;
LABEL_9:
    v71[0] = v73;
    v71[1] = v74;
    v72 = v75;
    if (!*(&v74 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012498(v71, v70);
    sub_10000A570(v70, v68);
    sub_10000A5D4(&qword_1009575A0);
    sub_10075F26C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    result = sub_10000CD74(v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      sub_10075F25C();
      v26 = sub_10076BB5C();

      if (v26)
      {
        v27 = v49;
        sub_10075F23C();
        v28 = v56;
        (*v48)(v56, v27, v11);
        v29 = (*v65)(v28, v11);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v11);
        }

        v30 = v52;
        sub_10076BF7C();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        sub_10076BF2C();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        sub_10076BF4C();
        sub_10076BFCC();
        sub_100760B9C();

        v34(v33, v32);
        v16 = v50;
        v24 = v63;
      }

      if (!sub_10075F24C())
      {

        goto LABEL_3;
      }

      sub_10076B84C();

      sub_10076BEFC();
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10075F23C();
      v35 = sub_10076D2FC();
      v36 = v57;
      (*v43)(v57, v16, v11);
      v37 = (*v65)(v36, v11);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_100940518 == -1)
        {
LABEL_29:
          sub_10000A61C(v60, qword_100957608);
          sub_10076D35C();
LABEL_30:
          (*v55)(v16, v11);
          goto LABEL_31;
        }

LABEL_32:
        swift_once();
        goto LABEL_29;
      }

      if (v37 == v47 || v37 == v41)
      {
        if (qword_100940518 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }

      v38 = *v55;
      (*v55)(v16, v11);
      v38(v57, v11);
LABEL_31:
      v39 = v66;
      sub_10076D36C();
      sub_10076BFCC();
      sub_100760B9C();

      result = (*v42)(v39, v60);
LABEL_3:
      v22 = v61;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v59 + 16))
    {
      goto LABEL_35;
    }

    sub_10000A570(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

double sub_1001288D8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10076651C();
  if (v10)
  {
    v11 = sub_10076652C();
    if (v11 >> 62)
    {
      v12 = sub_10077158C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_10054D204(v12, v13);

  return a1;
}

id sub_100128994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100946800);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_10076651C();
  if ((v9 & 1) == 0)
  {
    return sub_100545CF8(v8);
  }

  v10 = sub_10076652C();
  v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_100545FF4(v10, v7, 1, a3);

  sub_100128BA0(v7);
  return [v3 layoutIfNeeded];
}

uint64_t sub_100128B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100128BA0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100946800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowDestination()
{
  result = qword_100949BA0;
  if (!qword_100949BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100128CA4()
{
  sub_100129298(319);
  if (v0 <= 0x3F)
  {
    sub_100129408(319, &qword_100949BD8, &type metadata accessor for FlowOrigin);
    if (v1 <= 0x3F)
    {
      sub_10075DB7C();
      if (v2 <= 0x3F)
      {
        sub_100129408(319, &qword_100949BE0, &type metadata accessor for DynamicUIRequestInfo);
        if (v3 <= 0x3F)
        {
          sub_100129A48(319, &qword_100949BE8, &qword_100949BF0, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100129888(319, &qword_100949BF8, &qword_100949C00);
            if (v5 <= 0x3F)
            {
              sub_100129A48(319, &qword_100949C08, &qword_100949C10, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_100129974(319, &qword_100949C18, &qword_100949C20);
                if (v7 <= 0x3F)
                {
                  sub_100129888(319, &qword_100949C28, &qword_100949C30);
                  if (v8 <= 0x3F)
                  {
                    sub_100129888(319, &qword_100949C38, &qword_100949C40);
                    if (v9 <= 0x3F)
                    {
                      sub_1001294F0();
                      if (v10 <= 0x3F)
                      {
                        sub_100129588();
                        if (v11 <= 0x3F)
                        {
                          sub_10012962C();
                          if (v12 <= 0x3F)
                          {
                            sub_1001296AC();
                            if (v13 <= 0x3F)
                            {
                              sub_1001299FC(319, &qword_100949C88, &type metadata accessor for MarketingItemRequestInfo);
                              if (v14 <= 0x3F)
                              {
                                sub_100129740();
                                if (v15 <= 0x3F)
                                {
                                  sub_1001297C0();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_100129858();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_100016F40(319, &qword_1009453B0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1001299FC(319, &qword_100949CB8, &type metadata accessor for URL);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_100129888(319, &qword_100949CC0, &qword_100949CC8);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_10012990C();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_100129BB8(319, &qword_100949CD8);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_100129974(319, &qword_100949CE0, &qword_100949CE8);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_100129408(319, &qword_100949CF0, &type metadata accessor for AdamId);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1001299FC(319, &qword_100949CF8, &type metadata accessor for ReviewsPage);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_10012948C(319, &qword_100949D00, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_100129A48(319, &qword_100949D08, &qword_100949D00, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_100129974(319, &qword_100949D10, &qword_1009499B0);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_10075FFEC();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_100129A9C();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_10076BCAC();
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_100760DEC();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_100129ACC();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_100129B60();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_100129C04();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_100129C94();
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_100129D14();
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_100129D94();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_100129E14();
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
        }
      }
    }
  }
}

void sub_100129298(uint64_t a1)
{
  if (!qword_100949BB0)
  {
    __chkstk_darwin(a1);
    sub_10075DB7C();
    sub_10000CE78(&qword_100949BB8);
    sub_10000CE78(&qword_100949BC0);
    sub_10000CE78(&qword_100949BC8);
    sub_10000CE78(&qword_100949BD0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100949BB0);
    }
  }
}

void sub_100129408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_10075DB7C();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10012948C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001294F0()
{
  if (!qword_100949C48)
  {
    sub_100761A1C();
    sub_10000CE78(&qword_100949C50);
    sub_100762D3C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C48);
    }
  }
}

void sub_100129588()
{
  if (!qword_100949C58)
  {
    sub_10000CE78(&qword_100949C60);
    sub_10000CE78(&unk_100943470);
    sub_1007641AC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C58);
    }
  }
}

void sub_10012962C()
{
  if (!qword_100949C68)
  {
    sub_10000CE78(&qword_100949C70);
    sub_1007615AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949C68);
    }
  }
}

void sub_1001296AC()
{
  if (!qword_100949C78)
  {
    sub_10000CE78(&unk_1009435D0);
    sub_10000CE78(&qword_100949C80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C78);
    }
  }
}

void sub_100129740()
{
  if (!qword_100949C90)
  {
    sub_10000CE78(&qword_100949C98);
    sub_10075DB7C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949C90);
    }
  }
}

void sub_1001297C0()
{
  if (!qword_100949CA0)
  {
    sub_10000CE78(&qword_100949CA8);
    sub_100762FAC();
    sub_10075DB7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949CA0);
    }
  }
}

void *sub_100129858()
{
  result = qword_100949CB0;
  if (!qword_100949CB0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100949CB0);
  }

  return result;
}

void sub_100129888(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10000CE78(a3);
    sub_10000CE78(&unk_1009435D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10012990C()
{
  if (!qword_100949CD0)
  {
    sub_100016F40(255, &qword_1009499E0);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100949CD0);
    }
  }
}

void sub_100129974(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10075DB7C();
    sub_10000CE78(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1001299FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100129A48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10012948C(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_100129A9C()
{
  result = qword_100949D18;
  if (!qword_100949D18)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_100949D18);
  }

  return result;
}

void sub_100129ACC()
{
  if (!qword_100949D20)
  {
    sub_100016F40(255, &qword_100944FF8);
    sub_100016F40(255, &qword_100949D28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D20);
    }
  }
}

void sub_100129B60()
{
  if (!qword_100949D30)
  {
    sub_100129BB8(0, &qword_100950F90);
    if (!v1)
    {
      atomic_store(v0, &qword_100949D30);
    }
  }
}

void sub_100129BB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1007711AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100129C04()
{
  if (!qword_100949D38)
  {
    sub_100016F40(255, &qword_100949D28);
    sub_10000CE78(&unk_10094BB60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D38);
    }
  }
}