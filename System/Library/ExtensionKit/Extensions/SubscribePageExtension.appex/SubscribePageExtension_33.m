Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1003BF110(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(&a1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_100742974();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003BF23C()
{
  v0 = sub_1007524D4();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007527A4();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752B34();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007465E4();
  v13[2] = sub_1007465C4();
  sub_1007442F4();
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();
  sub_100745574();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_100745564();
  sub_100745504();

  sub_100752B24();
  swift_unknownObjectRelease();

  sub_10000C8CC(v23, &qword_100935460);
  sub_10000C8CC(&aBlock, &qword_100935468);
  v9 = v13[1];
  sub_100752764();
  sub_100752D34();
  sub_100743EC4();
  sub_100752794();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1003C16C8;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_1000CF7B0;
  *(&v20 + 1) = &unk_100873F38;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_1003BF6FC()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752244();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100016C60(0, &qword_100926D00);
    v21 = v3;
    v19 = sub_100753774();
    sub_100752234();
    sub_1007522B4();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003C16E4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100873F60;
    v17 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003C1724(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    v18 = v19;
    sub_100753734();
    _Block_release(v17);

    (*(v21 + 8))(v5, v2);
    (*(v22 + 8))(v8, v6);
    v20(v15, v9);
  }
}

void sub_1003BFAD4()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_1007466C4();
        if (qword_1009212E8 != -1)
        {
          swift_once();
        }

        v10 = sub_10000D0FC(v0, qword_1009815F0);
        (*(v1 + 16))(v3, v10, v0);
        v11 = sub_1007466B4();
        v12 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
        v13 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *&v9[v12];
        }

        else
        {
          v14 = 0;
        }

        *&v9[v12] = v11;
        v15 = v11;

        sub_1003BD1A4();
      }
    }
  }
}

uint64_t sub_1003BFCB4(uint64_t a1)
{
  v3 = sub_100752244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_100752274();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    sub_100016C60(0, &qword_100926D00);
    v12 = sub_100753774();
    sub_100752234();
    sub_1007449D4();
    sub_1007522B4();
    v13 = *(v4 + 8);
    v13(v6, v3);
    sub_100753744();

    return (v13)(v9, v3);
  }

  return result;
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_1003BD1A4();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  sub_100753B14();
  sub_100531548(v12, v13, a1, sub_1003C0D94, v7, *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

uint64_t sub_1003C00B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000C5B4(a1, v4);
    sub_1003BF23C();

    return sub_10000C8CC(v4, &unk_100923520);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = sub_1007521E4();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_100752274();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_1003C0D9C;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000CF7B0;
  v17 = &unk_100873E08;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_1003C0DF8;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1000CF7B0;
    v17 = &unk_100873E58;
    _Block_copy(&aBlock);
    sub_1003C1724(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100752284();
    swift_allocObject();
    v13 = sub_100752264();

    sub_1003BFCB4(v13);
  }
}

void sub_1003C0450()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0x3FF0000000000000;
  v4[4] = sub_1003C178C;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000CF7B0;
  v4[3] = &unk_100873FB0;
  v3 = _Block_copy(v4);

  [v0 animateWithDuration:4 delay:v3 options:0 animations:0.15 completion:0.0];
  _Block_release(v3);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100016C60(0, &qword_10092B0C0);
      v4 = v0;
      v5 = sub_100753FC4();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1003C1784;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_1000CF7B0;
        v8[3] = &unk_100873E80;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_1003C070C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1005BA3F0();
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_1003BCF78();
  if ((sub_10074AAA4() & 1) == 0)
  {
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    sub_1007449D4();
    sub_1003BF6FC();
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1003BCF78();
}

void ArcadeSubscribeViewController.show(updateError:)()
{
  v1 = v0;
  sub_100751094();
  sub_1003C1724(&qword_1009353D0, 255, &type metadata accessor for ArcadeSubscribePresenter);
  swift_errorRetain();

  v2 = sub_100751054();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v2;

  sub_1003BCF78();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  sub_1003C0FCC(a1, 1, v6, v5, &type metadata accessor for Action, &qword_10093D890, &type metadata accessor for Action);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1003C0D5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003C0DA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003C0DC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1003C0E38()
{
  result = qword_1009353D8;
  if (!qword_1009353D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009353D8);
  }

  return result;
}

uint64_t sub_1003C0FCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v30 = a4;
  v29 = a2;
  v8 = sub_100752314();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752B34();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = sub_10000C518(&qword_100939100);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - v20;
  v31[3] = v26(0);
  v31[4] = sub_1003C1724(v27, 255, v28);
  v31[0] = a1;
  if (v29)
  {

    sub_1003F2AB4();
    (*(v12 + 16))(v15, v17, v11);
    sub_1007522F4();
    sub_100752724();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 32))(v21, v17, v11);
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10000C518(&unk_100923210);
  v22 = sub_1007527E4();

  (*(v19 + 8))(v21, v18);
  sub_10000C620(v31);
  return v22;
}

uint64_t sub_1003C16EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003C1724(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1003C17A4()
{
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100016C60(0, &qword_10092A248);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100016C60(0, &qword_10092BE20);
  *(inited + 120) = v13;
  v14 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  return v14;
}

void sub_1003C192C()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v41 - v7;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v16 = v0;
      v17 = qword_100921388;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_100750534();
      v19 = sub_10000D0FC(v18, qword_1009817D0);
      v20 = *(v18 - 8);
      (*(v20 + 16))(v8, v19, v18);
      (*(v20 + 56))(v8, 0, 1, v18);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v21 = objc_allocWithZone(sub_100745C84());
      v22 = sub_100745C74();
      v0 = v16;
      v23 = *&v16[v12];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v16[v12];
      }

      else
      {
        v24 = 0;
      }

      *&v16[v12] = v22;
      v25 = v22;

      v26 = [v16 contentView];
      [v26 addSubview:v25];

      [v16 setNeedsLayout];
    }

    v27 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v28 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v28)
    {
      v43 = v10;
      v29 = *v27;
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[5];
      v34 = v27[6];
      v44 = *v27;
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v48 = v28;
      v49 = v33;
      v50 = v34;
      v35 = *&v0[v12];
      if (v35)
      {
        sub_1003C326C(v29, v30, v31, v32, v28, v33);
        v42 = v35;
        sub_1003C17A4();
        v41 = objc_allocWithZone(NSAttributedString);
        v36 = sub_100753064();

        type metadata accessor for Key(0);
        sub_1003C32AC(&qword_1009276F0, type metadata accessor for Key);
        isa = sub_100752F34().super.isa;

        v38 = [v41 initWithString:v36 attributes:isa];

        v39 = v42;
        [v42 setAttributedText:v38];
        sub_1003C2DF0(v29, v30, v31, v32, v28, v33);
      }

      else
      {
      }
    }

    else
    {

      v40 = *&v0[v12];
      if (v40)
      {
        [v40 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }
}

void sub_1003C1E14()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

uint64_t sub_1003C20C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10074FB54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100741574();
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007497C4();
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556FE8(a1, a2, a3);
  sub_10074FB64();
  sub_100741C24();
  if (swift_dynamicCastClass())
  {
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v18 = [v4 traitCollection];
    v19 = sub_1007537B4();

    sub_10074FAC4();
    sub_100741544();
    sub_1003C3078(v19 & 1, v17, v14, v41);
    v20 = v42;
    v21 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v41[1];
    *v21 = v41[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v41[2];
    *(v21 + 6) = v20;
    sub_1003C3204(v41, v40);
    sub_1003C2DF0(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_1003C323C(v41);
    v29 = sub_10074FB84();
    v30 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    sub_1003C192C();
    v32 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = v37;
      sub_10074FB74();
      v35 = sub_10074FB04();
      (*(v38 + 8))(v34, v39);
      [v33 setTextColor:v35];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_1003C2400(uint64_t a1, uint64_t a2)
{
  sub_100557E88(a1, a2);
  sub_10074FBB4();
  sub_1003C32AC(&qword_100926C60, &type metadata accessor for TodayCard);
  result = sub_1007468B4();
  if (v8)
  {
    sub_10074FB64();
    sub_100741C24();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      sub_100746914();

      v3 = sub_10074B8F4();

      if (v3)
      {
      }

      else
      {

        sub_100741984();

        v4 = sub_10074F374();

        sub_10000C518(&unk_1009231A0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007A5CF0;
        *(v5 + 32) = v4;

        v6._rawValue = v5;
        sub_100744224(v6);
      }
    }
  }

  return result;
}

id sub_1003C25F8(uint64_t a1, uint64_t a2)
{
  sub_1005577E0(a1, a2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
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

  return [v2 setNeedsLayout];
}

uint64_t sub_1003C2664()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092BBD8);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-v4 - 8];
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  sub_10074FB64();
  sub_100741C24();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_100451530();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    sub_100741984();
    sub_10074F324();

    v18 = sub_10074F314();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_1003C2E30(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10000C8CC(v5, &qword_10092BBD8);
    sub_100741984();

    sub_10074F374();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
    sub_1003C32AC(&qword_1009354E0, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView);
    sub_1007544E4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v21, &unk_1009276E0);
  }

  else
  {
  }
}

void sub_1003C2A5C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v4)
    {
      v5 = v4;

      v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v5[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v7 = a1;

      v3 = v5;
      sub_100451530();
    }
  }
}

void sub_1003C2BAC()
{
  sub_1003C2DF0(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell()
{
  result = qword_1009354D0;
  if (!qword_1009354D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C2D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C2D94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1003C2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_1003C2E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092BBD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C2EA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003C2EE0()
{
  v0 = sub_1007497C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((sub_100741514() & 1) == 0 && (sub_1007414C4() & 1) == 0 && (sub_100741504() & 1) == 0)
  {
    sub_1007497A4();
    sub_1003C32AC(&qword_1009354E8, &type metadata accessor for StringCharacteristics);
    v5 = sub_100754324();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      sub_100749794();
      v7 = sub_100754324();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_1003C3078@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_1003C2EE0();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = sub_100741574();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = sub_1007497C4();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_1007BDA60;
  *(a4 + 16) = xmmword_1007BDA70;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_1003C326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_1003C32AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C32F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - v6;
  v8 = sub_100747D94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007504F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v37);
  sub_10000C518(&unk_100923100);
  sub_100745324();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v17 = v36;
    v18 = sub_1007452F4();
    if (v18)
    {
      v33 = v13;
      v19 = *(*(*(v35 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v19 && (v32[4] = v18, v20 = type metadata accessor for VideoView(), (v21 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v20;
        v32[3] = v17;
        v22 = qword_100982288;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v9 + 16);
        v32[1] = v23;
        v24(v11, v23 + v22, v8);
        v25 = v19;
        sub_100747CE4();
        (*(v9 + 8))(v11, v8);
        v26 = v33;
        if ((*(v33 + 48))(v7, 1, v12) != 1)
        {
          (*(v26 + 32))(v15, v7, v12);
          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          sub_1003C61E0(&unk_100923110, type metadata accessor for VideoView);
          sub_100744204();

          return (*(v26 + 8))(v15, v12);
        }

        sub_10000C8CC(v7, &unk_1009281D0);
      }

      else
      {
      }
    }

    if (sub_100745304())
    {
      sub_10074F374();
      v27 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView;
      v28 = v35;
      v29 = *(v35 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v29 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v30 = *(v28 + v27);
      sub_1007433C4();
      sub_1003C61E0(&qword_100925570, &type metadata accessor for ArtworkView);
      v31 = v30;
      sub_100744204();
    }
  }

  return result;
}

id sub_1003C388C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = sub_100745374();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = sub_100744864();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = sub_100744894();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100747D94();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = sub_10074C3E4();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10000C518(&unk_100925560);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = sub_10074D734();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = sub_1007452A4();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100749A94();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_100749A34();
  sub_1003C61E0(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v46 = sub_100754324();
  (*(v41 + 8))(v44, v40);
  sub_1007452B4();
  v47 = sub_100745294();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = sub_1007452C4();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = sub_1007452E4();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1003C61E0(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      sub_10074A9C4();
      v61 = sub_10000C518(&unk_10092EEA0);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1003C61E0(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
      v64 = v107;
      sub_10074A9C4();
      sub_10015DE40(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10000C8CC(v60, &unk_100925540);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1003C49D0(v131, v53);
  if (sub_1007452F4())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    sub_10074EC14();
    sub_10074F2A4();
    v65 = v116;
    sub_100750504();

    v66 = sub_1007504F4();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v67 = v119;
    sub_10074EC24();
    v68 = sub_100741264();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    sub_10074EBE4();
    v70 = v121;
    sub_10074EBD4();
    v71 = type metadata accessor for VideoView();
    sub_1003C61E0(&qword_1009230E0, type metadata accessor for VideoView);
    v130 = v71;
    v72 = sub_1007464A4();
    sub_10000C8CC(v70, &unk_1009281C0);
    sub_10000C8CC(v69, &unk_1009281C0);
    sub_10000C8CC(v67, &unk_100923970);
    sub_10000C8CC(&v132, &unk_1009276E0);
    v73 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_100016C60(0, &qword_100922300);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = sub_100753FC4();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v72;
    v87 = v72;
    sub_10057A514(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_10093CB38 + 8) = &off_1008690D8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (sub_100745304())
  {

    v82 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v82;
    v85 = v82;
    sub_10057A514(v84);

    sub_1005791C8();
  }

  sub_1007452D4();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView];
    v91 = sub_100753064();

    [v90 setText:v91];

    sub_100745314();
    v92 = v125;
    sub_100745384();

    v93 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = sub_100745364();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v100 = sub_1007452F4();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_1003C49D0(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v3 - 8);
  v72 = &v61 - v4;
  v5 = sub_10000C518(&qword_100929360);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v61 - v6;
  v66 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v66);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v61 - v9;
  __chkstk_darwin(v10);
  v67 = (&v61 - v11);
  __chkstk_darwin(v12);
  v14 = (&v61 - v13);
  v15 = sub_100745394();
  v62 = *(v15 - 8);
  v63 = v15;
  __chkstk_darwin(v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007452A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  sub_1007452B4();
  v30 = sub_100745264();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v69 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v75.receiver = v32;
  v75.super_class = v33;
  objc_msgSendSuper2(&v75, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView);
  sub_1007452B4();
  v37 = sub_100745294();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView);
  sub_1007452B4();
  v41 = sub_100745274();
  v31(v23, v17);
  if (!v41)
  {
    sub_100745314();
    v42 = v61;
    sub_1007453A4();

    v41 = sub_10016D5C8();
    (*(v62 + 8))(v42, v63);
  }

  v43 = v66;
  [v40 setTextColor:v41];

  if (qword_100921BB0 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v43, qword_100982BF0);
  sub_100121090(v44, v14);
  sub_1007452B4();
  v45 = sub_100745244();
  v31(v20, v17);

  *v14 = v45;
  sub_1007452B4();
  v46 = sub_100745254();
  v31(v20, v17);

  v14[1] = v46;
  sub_1007452B4();
  v47 = sub_100745274();
  v31(v20, v17);

  v14[2] = v47;
  sub_1007452B4();
  v48 = sub_100745284();
  v31(v20, v17);

  v14[3] = v48;
  if (qword_100921BA8 != -1)
  {
    swift_once();
  }

  v49 = sub_10000D0FC(v43, qword_100982BD8);
  v50 = v67;
  sub_100121090(v49, v67);
  sub_1007452B4();
  v51 = sub_100745244();
  v31(v20, v17);

  *v50 = v51;
  sub_1007452B4();
  v52 = sub_100745254();
  v31(v20, v17);

  v50[1] = v52;
  sub_1007452B4();
  v53 = sub_100745274();
  v31(v20, v17);

  v50[2] = v53;
  sub_1007452B4();
  v54 = sub_100745284();
  v31(v20, v17);

  v50[3] = v54;
  sub_100121090(v14, v64);
  sub_100121090(v50, v65);
  sub_10000C518(&unk_100923AE0);
  v55 = v68;
  sub_100743484();
  v56 = sub_100745314();
  v58 = v70;
  v57 = v71;
  v59 = v72;
  (*(v70 + 16))(v72, v55, v71);
  (*(v58 + 56))(v59, 0, 1, v57);
  sub_10013C000(v56, v59, v73);

  sub_10000C8CC(v59, &qword_100935130);
  (*(v58 + 8))(v55, v57);
  sub_10024144C(v50);
  return sub_10024144C(v14);
}

id sub_1003C5388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003C54C0(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_100753934();
  if (v6)
  {
    sub_10000C518(&unk_1009231A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007A7210;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_100016C60(0, &qword_1009239F8);
    isa = sub_100753294().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1003C5678(double a1)
{
  v2 = sub_100748F54();
  __chkstk_darwin(v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748F74();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074CD14();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100754724();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  v16 = swift_unknownObjectRetain();
  v17 = sub_1003C54C0(v16, v15);
  swift_unknownObjectRelease();

  v18 = qword_100920338;
  v52 = *&v17[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_10000C518(&qword_100929360);
  sub_10000D0FC(v19, qword_10097DC98);
  v57[0] = v17;
  v20 = v17;
  sub_100743464();

  type metadata accessor for BreakoutDetailsView(0);
  v21 = sub_100745314();
  v22 = v20;
  sub_10013C5D8(v21, v13, v22, v57);

  sub_1001A41D4(v57, &v54);
  v23 = swift_allocObject();
  sub_100219FC4(&v54, (v23 + 16));
  v24 = sub_100750F34();
  swift_allocObject();
  v25 = sub_100750EF4();
  if (sub_1007452C4() && (, sub_1007452E4()))
  {
    v43 = v13;
    v26 = v8;

    if (qword_100920330 != -1)
    {
      swift_once();
    }

    v27 = sub_100750B04();
    sub_10000D0FC(v27, qword_10097DC80);
    v28 = v22;
    sub_1007502D4();
    sub_100750564();

    (*(v44 + 8))(v10, v26);
    swift_allocObject();
    v29 = sub_100750F14();

    v13 = v43;
  }

  else
  {
    v29 = 0;
  }

  sub_1007452D4();
  if (v30)
  {
    sub_100016C60(0, &qword_100923AB0);
    if (qword_1009214E8 != -1)
    {
      swift_once();
    }

    v31 = sub_100750534();
    sub_10000D0FC(v31, qword_100981BF0);
    sub_100753C14();
    v32 = sub_10074F3F4();
    *(&v55 + 1) = v32;
    v56 = sub_1003C61E0(&qword_10092AC70, &type metadata accessor for Feature);
    v33 = sub_10000D134(&v54);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_10074FC74();
    sub_10000C620(&v54);
    v34 = v45;
    sub_10074CD04();
    sub_10074CCE4();
    (*(v46 + 8))(v34, v47);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

  v35 = v22;
  sub_100144E2C(v35, v48, a1);

  swift_allocObject();
  v36 = sub_100750F14();
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v53[18] = v24;
  v53[19] = &protocol witness table for LayoutViewPlaceholder;
  v53[14] = &protocol witness table for LayoutViewPlaceholder;
  v53[15] = v36;
  v53[13] = v24;
  v53[10] = v25;
  if (!v29)
  {
    v24 = 0;
    v37 = 0;
    v53[6] = 0;
    v53[7] = 0;
  }

  v53[5] = v29;
  v53[8] = v24;
  v53[9] = v37;
  sub_1003C5E4C(&v54, v53);

  v38 = v49;
  sub_100748F64();
  v39 = v35;
  sub_100748F24();
  v41 = v40;

  (*(v50 + 8))(v38, v51);
  sub_10000C8CC(&v54, &qword_10092BC30);
  sub_10000C620(v57);
  sub_10024144C(v13);
  return v41;
}

uint64_t sub_1003C5E14()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003C5E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092BC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003C5EBC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100748F54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100144E2C(a3, v8, a1);
  sub_100748F74();
  sub_1003C61E0(&qword_100935580, &type metadata accessor for UpsellBreakoutLayout);
  sub_100750D34();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v16;
  sub_100016C60(0, &qword_100923478);
  v22 = v16;
  isa = sub_100753294().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1003C61E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003C6228@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v60 = sub_100747144();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = sub_1007439C4();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_100747134();
  v54 = *(v27 - 8);
  v55 = v27;
  (*(v54 + 56))(v6, 1, 1);
  v50 = v24;
  sub_100016B4C(v24, v21, &unk_100928A90);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10000C8CC(v21, &unk_100928A90);
    v28 = 0;
  }

  else
  {
    v28 = sub_100743964();
    (*(v26 + 8))(v21, v25);
  }

  v29 = v18;
  sub_1003AFADC(v28, v18);

  if (qword_100920AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v11, qword_10097FF70);
  v31 = v51;
  (*(v12 + 56))(v51, 1, 1, v11);
  v32 = v49;
  sub_10015027C(v29, v49);
  v33 = v52;
  sub_10015027C(v30, v52);
  v47 = v29;
  v34 = v53;
  sub_100016B4C(v31, v53, &unk_100940600);
  v35 = v6;
  v36 = v6;
  v37 = v57;
  sub_100016B4C(v36, v57, &qword_100928A88);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v58 + 104))(v59, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v60);
  sub_10000D198();
  v48 = sub_100753DB4();
  sub_10000C8CC(v35, &qword_100928A88);
  sub_10000C8CC(v31, &unk_100940600);
  sub_1003B6E50(v47);
  sub_10000C8CC(v50, &unk_100928A90);
  v41 = type metadata accessor for TitleHeaderView.Style(0);
  v42 = v41[8];
  v43 = v56;
  sub_1001502E0(v32, v56);
  sub_1001502E0(v33, v43 + v41[5]);
  sub_100150344(v34, v43 + v41[6]);
  *(v43 + v41[7]) = 0;
  *(v43 + v42) = 1;
  *(v43 + v41[9]) = 0;
  *(v43 + v41[14]) = 0x4030000000000000;
  *(v43 + v41[12]) = 0;
  *(v43 + v41[13]) = v48;
  (*(v39 + 32))(v43 + v41[11], v38, v40);
  v45 = v54;
  v44 = v55;
  if ((*(v54 + 48))(v37, 1, v55) != 1)
  {
    return (*(v45 + 32))(v43 + v41[10], v37, v44);
  }

  sub_10000C8CC(v37, &qword_100928A88);
  return (*(v45 + 104))(v43 + v41[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v44);
}

void *sub_1003C6908(uint64_t a1, int *a2)
{
  v30[0] = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v30[4] == v30[2] && v30[5] == v30[3])
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_100754754();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_10049CD00(a1, v30[0]);
    }
  }

  v17 = COERCE_DOUBLE(sub_1003C7578(a1, v30[0]));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000C518(&unk_1009231A0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A5CF0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1003C6D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007457B4();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_10074E984();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10000C518(&unk_10092E450);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v81 == v79 && v82 == v80)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_5:
    v29 = v67;
    sub_100747C04();
    swift_getKeyPath();
    v30 = v68;
    sub_1007525B4();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1003C808C(&qword_100940610, &type metadata accessor for ShelfBackground);
    v34 = sub_100753014();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_6;
  }

  v64 = sub_100754754();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_5;
  }

LABEL_6:
  v36 = sub_100753094();
  v39 = v76;
  v38 = v77;
  if (v36 == v76 && v37 == v77)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v42 = sub_10000C518(&qword_1009358B8);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_100150440(&unk_1009358C0, &qword_1009358B8);
    v78 = sub_10000D134(v43);
    v44 = sub_100753094();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView();
    sub_1007539D4();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

    goto LABEL_16;
  }

  v41 = sub_100754754();

  if (v41 & v28)
  {
    goto LABEL_13;
  }

LABEL_9:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_1007539C4() == v39 && v40 == v38)
  {
  }

  else
  {
    v53 = sub_100754754();

    if ((v53 & 1) == 0)
    {
      return sub_1004989E4(v39, v38, a3, v65, v78);
    }
  }

  v54 = sub_10000C518(&qword_1009358A8);
  v55 = v78;
  v78[3] = v54;
  v55[4] = sub_100150440(&qword_1009358B0, &qword_1009358A8);
  v78 = sub_10000D134(v55);
  sub_1007539C4();
  sub_1007539D4();
  v56 = v74;
  v57 = v75;
  v58 = a3;
  v59 = v73;
  (*(v75 + 16))(v73, v58, v74);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v60, v59, v56);
LABEL_16:
  sub_10074D744();
  return result;
}

uint64_t sub_1003C7578(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_10074F704();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E984();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_100747BC4();
      sub_10074FC24();
      sub_10074F674();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView();
      v31 = sub_100060B24(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_100754754();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_100499B68(v22, v37);
}

void *sub_1003C79F8()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10000C518(&unk_10092E450);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_10049D038();
  v20 = v11;
  if (sub_1003641F0())
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    else
    {
      v13 = sub_100754754();
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);

      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    v15 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_1007539C4();
    v16 = sub_100753064();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    sub_100753284();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    return v20;
  }

  return v11;
}

uint64_t sub_1003C7DC4()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003C7EB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003C7EE8()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1003C7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10049BAFC(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1003C808C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003C8124()
{
  v0 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_100754724();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007504F4();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F6E4();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_100744484();
  sub_1003C90D4(&qword_1009358E0, &type metadata accessor for FramedArtwork);
  sub_1007468B4();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_1007435E4();
  swift_getKeyPath();
  sub_100746914();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_10074F674();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10074F5C4();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v25 + 8))(v11, v7);
    sub_10074F674();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_100744474();
  v29 = v89;
  if (v28)
  {
    sub_10074F2A4();
    v30 = v86;
    sub_100750504();
    sub_1007504C4();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_1007435E4();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_100743604();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_100753BA4();
  sub_100743614();
  v38 = &qword_100921000;
  if (v39)
  {
    if (qword_1009213F8 != -1)
    {
      swift_once();
    }

    v40 = sub_100750534();
    sub_10000D0FC(v40, qword_100981920);
    swift_getKeyPath();
    sub_100746914();

    v41 = sub_10074F3F4();
    v92 = v41;
    v93 = sub_1003C90D4(&qword_10092AC70, &type metadata accessor for Feature);
    v42 = sub_10000D134(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_10074FC74();
    sub_10000C620(aBlock);
    sub_10074CCB4();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_100921F08 != -1)
    {
      swift_once();
    }

    v44 = sub_100750B04();
    sub_10000D0FC(v44, qword_1009833D8);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_100921F18 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v44, qword_100983408);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_100921F10 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v44, qword_1009833F0);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_100921000;
  }

  v53 = sub_100743604();

  swift_getKeyPath();
  sub_100746914();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_100047814;
  v58[3] = v57;
  v93 = sub_1000B18A8;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v92 = &unk_1008741F0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_1009213F0;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_100750534();
  v64 = sub_10000D0FC(v63, qword_100981908);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_100746914();

  v67 = sub_10074F3F4();
  v92 = v67;
  v93 = sub_1003C90D4(&qword_10092AC70, &type metadata accessor for Feature);
  v68 = sub_10000D134(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10074FC74();
  sub_10000C620(aBlock);
  sub_10074CCA4();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_10006A144(v66);
  if (qword_100921F08 != -1)
  {
    swift_once();
  }

  v71 = sub_100750B04();
  sub_10000D0FC(v71, qword_1009833D8);
  swift_getKeyPath();
  sub_100746914();

  sub_100750584();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[482] != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_1009833F0);
  swift_getKeyPath();
  sub_100746914();

  sub_100750554();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_1003C9060()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1003C90B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003C90D4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003C9308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1003C943C(uint64_t a1, void (*a2)(void, __n128), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  a2(0, v12);
  sub_1003C9984(a3, a4);
  sub_100745084();
  (*(v8 + 32))(v10, v14, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v16 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v15 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v16 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v16 = 0;
  }

  return v16 != 0;
}

id sub_1003C9600(uint64_t a1, void *a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100741784();
  sub_10074B704();
  sub_1003C9984(&qword_100925348, &type metadata accessor for PurchasesContentPresenter);
  sub_100745084();
  v8 = sub_10074E964();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_1003861D0(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10074E964();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1003DD60C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10074E964();
    v20 = sub_100753064();

    isa = sub_100741704().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_1003C986C(uint64_t a1)
{
  sub_10074B704();
  sub_1003C9984(&qword_100925348, &type metadata accessor for PurchasesContentPresenter);
  if (sub_1007450A4() <= a1 || (sub_100745054() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100745094();
  if (sub_1003C943C(a1, &type metadata accessor for PurchasesContentPresenter, &qword_100925348, &type metadata accessor for PurchasesContentPresenter))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003C9984(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003C9A18()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748514();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100748534();
  sub_1003C9E24(&qword_100934228, &type metadata accessor for ProductReviewAction);
  sub_1007468B4();
  if (v28[1])
  {
    sub_100748524();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F674();
      v10 = v9;
      (*(v1 + 8))(v3, v0);
      v11 = sub_10007DC04();
      sub_100320820(v11, v10);
      v13 = v12;
      swift_unknownObjectRelease();

LABEL_13:

      return v13;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v28[0] = type metadata accessor for ProductReviewActionsView();
      v14 = sub_100748554();
      v15 = sub_100748544();
      swift_getKeyPath();
      sub_100746914();

      sub_10074F674();
      v17 = v16;
      v19 = v18;
      (*(v1 + 8))(v3, v0);
      sub_10007DC04();
      if (v14)
      {

        v20 = sub_10074ECB4();
        v22 = v21;

        if (v15)
        {
LABEL_7:

          v23 = sub_10074ECB4();
          v25 = v24;

LABEL_12:
          sub_100494984(v20, v22, v23, v25, v28[0], v17, v19);
          v13 = v26;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v20 = 0;
        v22 = 0;
        if (v15)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v25 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_1003C9E24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003C9E70(void *a1, void *a2)
{
  v32 = a2;
  v4 = sub_10074E5E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100934210);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000C518(&qword_100934218);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    sub_10074E604();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_1003CB908(v17, v9);
  sub_1003CB908(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10000C8CC(v14, &qword_100934218);
    sub_10000C8CC(v17, &qword_100934218);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10000C8CC(v9, &qword_100934218);
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v31;
    sub_1003CB908(v9, v31);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v9[v20], v4);
      sub_1003CB978();
      v27 = v22;
      v28 = sub_100753014();
      v29 = *(v5 + 8);
      v29(v26, v4);
      sub_10000C8CC(v14, &qword_100934218);
      sub_10000C8CC(v17, &qword_100934218);
      v29(v27, v4);
      sub_10000C8CC(v9, &qword_100934218);
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10000C8CC(v14, &qword_100934218);
    sub_10000C8CC(v17, &qword_100934218);
    (*(v5 + 8))(v22, v4);
  }

  sub_10000C8CC(v9, &qword_100934210);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_1003CA354();
    (*((swift_isaMask & *v24) + 0x1A8))(v25, 0);
  }

LABEL_13:
  sub_1003CA534(v32);
}

void sub_1003CA354()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 navigationBar];

      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v16.origin.x = v6;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v12;
      CGRectGetMaxY(v16);
    }
  }

  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    sub_1006408D0(v14);
  }
}

void sub_1003CA470()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {

    v2(v3, 1.0, 0.0);
    sub_1000164A8(v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      v7 = [v6 navigationBar];

      [v7 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_1003CA534(void *a1)
{
  v3 = sub_10074E5E4();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100934210);
  __chkstk_darwin(v6);
  v8 = &v70 - v7;
  v9 = sub_10000C518(&qword_100934218);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_1003CB9D0();
  v21 = a1;
  v75 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = sub_100753FC4();

  v74 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v75;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v74 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_1006408D0(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {

    v46(v47, v45, 0.0);
    sub_1000164A8(v46);
  }

  v48 = *(v33 + 72);
  v49 = v77;
  if (!v48)
  {
    goto LABEL_26;
  }

  v50 = *(v33 + 80);
  v51 = *(v33 + 32);
  v73 = *(v33 + 72);
  v71 = v31;
  v72 = v50;
  if (v51)
  {
    sub_10001B5AC(v48);

    sub_10074E604();

    v52 = v76;
    v53 = *(v76 + 56);
    v53(v34, 0, 1, v49);
  }

  else
  {
    v52 = v76;
    v54 = *(v76 + 56);
    v70 = v32;
    v53 = v54;
    v54(v34, 1, 1, v77);
    v32 = v70;
  }

  (*(v52 + 104))(v35, enum case for Uber.Style.inline(_:), v49);
  v53(v35, 0, 1, v49);
  v55 = v49;
  v56 = *(v36 + 48);
  sub_1003CB908(v34, v30);
  sub_1003CB908(v35, v30 + v56);
  v57 = *(v52 + 48);
  if (v57(v30, 1, v55) == 1)
  {
    sub_10000C8CC(v35, &qword_100934218);
    sub_10000C8CC(v34, &qword_100934218);
    if (v57(v30 + v56, 1, v55) == 1)
    {
      sub_10000C8CC(v30, &qword_100934218);
      v59 = v73;
LABEL_28:
      if (v45 >= 0.5)
      {
        v64 = 0.35;
      }

      else
      {
        v64 = 0.2;
      }

      v58.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v58.n128_f64[0] = 0.0;
      }

      v65 = v59;
      v59(v58, v64);
      sub_1003CB120(v74, *&v64, 0, v45);
      sub_1000164A8(v65);
      goto LABEL_34;
    }
  }

  else
  {
    sub_1003CB908(v30, v32);
    if (v57(v30 + v56, 1, v55) != 1)
    {
      v60 = v76;
      v61 = v30 + v56;
      v62 = v71;
      (*(v76 + 32))(v71, v61, v55);
      sub_1003CB978();
      LODWORD(v75) = sub_100753014();
      v63 = *(v60 + 8);
      v63(v62, v55);
      sub_10000C8CC(v35, &qword_100934218);
      sub_10000C8CC(v34, &qword_100934218);
      v63(v32, v55);
      sub_10000C8CC(v30, &qword_100934218);
      v59 = v73;
      if (v75)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10000C8CC(v35, &qword_100934218);
    sub_10000C8CC(v34, &qword_100934218);
    (*(v76 + 8))(v32, v55);
  }

  sub_10000C8CC(v30, &qword_100934210);
  v59 = v73;
LABEL_25:
  sub_1000164A8(v59);
LABEL_26:
  sub_1003CB120(v74, 0, 1, v45);
LABEL_34:
  v66 = swift_unknownObjectWeakLoadStrong();
  if (v66)
  {
    v67 = v66;
    v68 = [v66 navigationController];

    if (v68)
    {
      v69 = [v68 navigationBar];

      [v69 _setTitleOpacity:v45];
    }
  }
}

uint64_t sub_1003CAC40(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_10074E5E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100934210);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_10000C518(&qword_100934218);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      sub_10074E604();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_1003CB908(v25, v16);
    sub_1003CB908(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10000C8CC(v22, &qword_100934218);
      sub_10000C8CC(v25, &qword_100934218);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10000C8CC(v16, &qword_100934218);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_1003CB908(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10000C8CC(v22, &qword_100934218);
      sub_10000C8CC(v25, &qword_100934218);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10000C8CC(v16, &qword_100934210);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_1003CB978();
    v34 = sub_100753014();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10000C8CC(v22, &qword_100934218);
    sub_10000C8CC(v25, &qword_100934218);
    v35(v19, v10);
    sub_10000C8CC(v16, &qword_100934218);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = sub_100753804();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_1003CB120(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_10074E5E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100934210);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_10000C518(&qword_100934218);
  __chkstk_darwin(v15 - 8);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v41 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v44 = v4;
  if (v26)
  {

    sub_10074E604();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_1003CB908(v23, v14);
  sub_1003CB908(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) == 1)
  {
    sub_10000C8CC(v19, &qword_100934218);
    sub_10000C8CC(v23, &qword_100934218);
    v30 = v29(&v14[v28], 1, v9);
    v31 = v44;
    if (v30 == 1)
    {
      result = sub_10000C8CC(v14, &qword_100934218);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v33 = v43;
  sub_1003CB908(v14, v43);
  if (v29(&v14[v28], 1, v9) == 1)
  {
    sub_10000C8CC(v19, &qword_100934218);
    sub_10000C8CC(v23, &qword_100934218);
    (*(v10 + 8))(v33, v9);
    v31 = v44;
LABEL_12:
    result = sub_10000C8CC(v14, &qword_100934210);
    goto LABEL_13;
  }

  v35 = &v14[v28];
  v36 = v42;
  (*(v10 + 32))(v42, v35, v9);
  sub_1003CB978();
  v37 = v33;
  v38 = sub_100753014();
  v39 = *(v10 + 8);
  v39(v36, v9);
  sub_10000C8CC(v19, &qword_100934218);
  sub_10000C8CC(v23, &qword_100934218);
  v39(v37, v9);
  result = sub_10000C8CC(v14, &qword_100934218);
  v31 = v44;
  if (v38)
  {
LABEL_16:
    v34 = *(v31 + 56);
    if (!v34)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v34 = *(v31 + 40);
  if (!v34)
  {
    return result;
  }

LABEL_17:

  v34(v40, a4, v25);
  return sub_1000164A8(v34);
}

void sub_1003CB604(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_1003CB9D0();
        v13 = a1;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_1003CAC40(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_1006408D0(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_1003CB884()
{
  sub_10000C4F0(v0 + 16);

  sub_1000164A8(*(v0 + 40));
  sub_1000164A8(*(v0 + 56));
  sub_1000164A8(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1003CB908(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003CB978()
{
  result = qword_100934220;
  if (!qword_100934220)
  {
    sub_10074E5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934220);
  }

  return result;
}

unint64_t sub_1003CB9D0()
{
  result = qword_100935A20;
  if (!qword_100935A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100935A20);
  }

  return result;
}

uint64_t sub_1003CBA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

char *sub_1003CBA88(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_1003CBD04()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_100743384(v8, v4);

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = 0;

  sub_10028864C();
  v5 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_1003CBE14()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell();
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_100750504();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_1007504C4();
    v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_1003CC0D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell()
{
  result = qword_100935A50;
  if (!qword_100935A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CC1A8()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_1003CC270()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView();
  sub_1007477B4();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  sub_1007477B4();
  CGRectGetHeight(v7);
  return v4;
}

void sub_1003CC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_1003CC37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_1003CC3E8(uint64_t a1)
{
  result = sub_1003CC410();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003CC410()
{
  result = qword_100935A60;
  if (!qword_100935A60)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935A60);
  }

  return result;
}

uint64_t sub_1003CC490(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_1003777E0();
    v4 = sub_1007532A4();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = sub_100754664();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_100754574();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_1003777E0();
    v12 = sub_1007532A4();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = sub_100754574();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

void sub_1003CC71C(void *a1, void *a2)
{
  if ((sub_1003CC490(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_1003777E0();
      v7 = sub_1007532A4();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_1003777E0();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    sub_100753634(UIBarButtonSystemItemClose, v10, v11);
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    isa = sub_100753294().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

double sub_1003CC86C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007539C4() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_100754754();

  if (v8)
  {
LABEL_11:

    sub_1007539D4();
    *(a3 + 24) = sub_10000C518(&qword_100930928);
    *(a3 + 32) = sub_10002DDC8(&unk_100930930, &qword_100930928);
    sub_10000D134(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000010076E340 == a2 || (sub_100754754() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10000C518(&qword_100930910);
    *(a3 + 32) = sub_10002DDC8(&unk_100930918, &qword_100930910);
    sub_10000D134(a3);
    sub_100016C60(0, &qword_10092DB20);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10074D744();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1003CCBBC(void *a1)
{
  v2 = sub_1007457B4();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&unk_10092E450);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100747C14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000C8CC(v10, &qword_100942730);
  }

  v16 = Strong;
  v25 = v2;
  v26 = v4;
  v24 = a1;
  sub_10000C518(&qword_1009360A8);
  sub_10002DDC8(&qword_1009360B0, &qword_1009360A8);
  sub_10074DA04();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000C8CC(v10, &qword_100942730);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_100747C04();
  swift_getKeyPath();
  v17 = v26;
  sub_1007525B4();

  (*(v27 + 8))(v7, v5);
  v18 = v28;
  v19 = v25;
  if ((*(v28 + 88))(v17, v25) == enum case for ShelfBackground.color(_:))
  {
    (*(v18 + 96))(v17, v19);
    v20 = *v17;
    v21 = *(sub_10000C518(&unk_100930940) + 48);
    v22 = sub_100748E34();
    (*(*(v22 - 8) + 8))(v17 + v21, v22);
    [v24 setBackgroundColor:v20];

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v18 + 8))(v17, v19);
  }
}

void sub_1003CD030(void *a1)
{
  v2 = sub_1007457B4();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&unk_10092E450);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_100747C14();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_1009262D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v33 = a1;
    v19 = qword_100930688;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (!v20)
    {

      return;
    }

    v21 = v20;

    sub_1007518F4();
    v22 = sub_100751744();
    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
        return;
      }

      v24 = v23;
      sub_10000C518(&qword_1009360A8);
      sub_10002DDC8(&qword_1009360B0, &qword_1009360A8);
      sub_10074DA04();

      v25 = v39;
      if ((*(v39 + 48))(v9, 1, v10) != 1)
      {
        (*(v25 + 32))(v12, v9, v10);
        sub_100747C04();
        swift_getKeyPath();
        v26 = v38;
        v27 = v35;
        sub_1007525B4();

        (*(v34 + 8))(v6, v27);
        v29 = v36;
        v28 = v37;
        if ((*(v36 + 88))(v26, v37) == enum case for ShelfBackground.color(_:))
        {
          (*(v29 + 96))(v26, v28);
          v30 = *v26;
          v31 = *(sub_10000C518(&unk_100930940) + 48);
          v32 = sub_100748E34();
          (*(*(v32 - 8) + 8))(v26 + v31, v32);
          [v33 setBackgroundColor:v30];

          (*(v25 + 8))(v12, v10);
        }

        else
        {
          (*(v25 + 8))(v12, v10);
          (*(v29 + 8))(v26, v28);
        }

        return;
      }
    }

    else
    {
      (*(v39 + 56))(v9, 1, 1, v10);
    }

    sub_10000C8CC(v9, &qword_100942730);
  }
}

uint64_t sub_1003CD680(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100752404();
  __chkstk_darwin(v11 - 8);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752E44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007417F4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v77 - v22;
  v24 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v24 - 8);
  v82 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = v77 - v27;
  __chkstk_darwin(v28);
  v80 = v77 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v77 - v32;
  v95.receiver = v5;
  v95.super_class = ObjectType;
  v87 = ObjectType;
  objc_msgSendSuper2(&v95, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v88 = v5;
  v89 = v19;
  v85 = v14;
  v84 = v15;
  v83 = v17;
  if (IsEmpty || (v94.receiver = v5, v94.super_class = v87, objc_msgSendSuper2(&v94, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v80;
    (*(v19 + 56))(v80, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = sub_1007532A4();

  *&v92 = v39;

  sub_1003D43C0(&v92);

  v14 = v92;
  v17 = *(v92 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v80;
    (*(v89 + 56))(v80, 1, 1, v18);
    v5 = v88;
LABEL_13:
    v14 = v85;
    v15 = v84;
    v33 = v77[1];
    v17 = v83;
LABEL_14:
    v79 = v18;
    sub_100066578(v37, v33, &unk_100923C00);
    if (qword_100921ED8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v86 = v92 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v33 = (v89 + 8);
  v40 = v88;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v89 + 16))(v23, v86 + *(v89 + 72) * v5, v18);
    isa = sub_100741704().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v89;
        v37 = v80;
        v18 = v15;
        (*(v89 + 32))(v80, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_10000D0FC(v14, qword_100983300);
  (*(v15 + 16))(v17, v57, v14);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007AB1A0;
  sub_1007523A4();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v93 + 1) = v58;
  *&v92 = a3;
  *(&v92 + 1) = a4;
  sub_100752424();
  sub_10000C8CC(&v92, &unk_100923520);
  sub_1007523A4();
  v91.receiver = v5;
  v91.super_class = v87;
  objc_msgSendSuper2(&v91, "frame");
  *(&v93 + 1) = v59;
  *&v92 = v60;
  *(&v92 + 1) = v61;
  sub_100752424();
  sub_10000C8CC(&v92, &unk_100923520);
  sub_1007523F4();
  v96._countAndFlagsBits = 0x6E696C6C6F726373;
  v96._object = 0xED0000206F742067;
  sub_1007523E4(v96);
  v62 = v33;
  v63 = v33;
  v64 = v81;
  sub_100016B4C(v63, v81, &unk_100923C00);
  v65 = v89;
  v66 = *(v89 + 48);
  v67 = v79;
  if (v66(v64, 1, v79) == 1)
  {
    sub_10000C8CC(v64, &unk_100923C00);
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    *(&v93 + 1) = v67;
    v68 = sub_10000D134(&v92);
    (*(v65 + 32))(v68, v64, v67);
  }

  sub_1007523C4();
  sub_10000C8CC(&v92, &unk_100923520);
  v97._countAndFlagsBits = 46;
  v97._object = 0xE100000000000000;
  sub_1007523E4(v97);
  sub_100752414();
  v69 = v85;
  v70 = v83;
  sub_100752CE4();

  (*(v84 + 8))(v70, v69);
  v71 = v88;
  v90.receiver = v88;
  v90.super_class = v87;
  objc_msgSendSuper2(&v90, "setFrame:", a1, a2, a3, a4);
  v72 = v82;
  sub_100016B4C(v62, v82, &unk_100923C00);
  if (v66(v72, 1, v67) == 1)
  {
    sub_10000C8CC(v62, &unk_100923C00);
  }

  else
  {
    v73 = v89;
    v74 = v78;
    (*(v89 + 32))(v78, v72, v67);
    [v71 layoutIfNeeded];
    v75 = sub_100741704().super.isa;
    [v71 scrollToItemAtIndexPath:v75 atScrollPosition:1 animated:0];

    (*(v73 + 8))(v74, v67);
    v72 = v62;
  }

  return sub_10000C8CC(v72, &unk_100923C00);
}

id sub_1003CE0D0()
{
  ObjectType = swift_getObjectType();
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v2 = sub_100752E44();
  sub_10000D0FC(v2, qword_100983300);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520);
  sub_100752CE4();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_1003CE3F0(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_100753954())
  {
    v5 = sub_100753964();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_100753954())
  {
    sub_100753964();
  }
}

char *sub_1003CE560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_100935A68) = 0;
  *(v2 + qword_100980168) = 0;
  *(v2 + qword_100935A70) = 0;
  sub_100747DE4();
  v6 = qword_100935A80;
  v7 = sub_100741454();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_100935A88;
  v9 = sub_1007416E4();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_100935A98) = 0;
  v10 = v3 + qword_100935AA0;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_100935AA8) = 0;
  sub_10074D4D4();
  sub_1007526E4();
  *(v3 + qword_100935A90) = v17;

  v11 = sub_100469AD4(a1, a2);
  v12 = *&v11[qword_10097EE38];

  sub_100749AD4();

  sub_10000C518(&unk_1009249D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A6580;
  *(v13 + 32) = sub_100751544();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = sub_1007519E4();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753704();
  swift_unknownObjectRelease();

  if (sub_1003641A8())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_100935AA8] = v15;

    return v11;
  }

  v14 = sub_1003641CC();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1003CE850()
{
  v1 = qword_100935A98;
  v2 = *(v0 + qword_100935A98);
  if (v2)
  {
    v3 = *(v0 + qword_100935A98);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1003CE8D4()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = sub_10074F3E4();
  v24[3] = v2;
  v24[4] = sub_1003DA3B4(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v3 = sub_10000D134(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v24);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setDelaysContentTouches:0];
  }

  if ((byte_10093E688 & 1) == 0)
  {
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setMinimumLineHeight:13.0];
    [v13 setMaximumLineHeight:13.0];
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A6580;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v15 = sub_100016C60(0, &qword_10093F2D0);
    *(inited + 40) = v13;
    *(inited + 64) = v15;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v16 = objc_allocWithZone(NSNumber);
    v17 = NSParagraphStyleAttributeName;
    v18 = v13;
    v19 = NSBaselineOffsetAttributeName;
    v20 = [v16 initWithDouble:2.0];
    *(inited + 104) = sub_100016C60(0, &qword_10092BE20);
    *(inited + 80) = v20;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510);
    swift_arrayDestroy();
    sub_100016C60(0, &qword_10093EF30);
    v21 = sub_100753FE4();
    type metadata accessor for Key(0);
    sub_1003DA3B4(&qword_1009276F0, type metadata accessor for Key);
    isa = sub_100752F34().super.isa;

    [v21 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v23 = [objc_allocWithZone(NSTextStorage) init];
    byte_10093E688 = 1;
  }

  if (*&v1[qword_100935AA8])
  {

    sub_1004BA870();
  }
}

void sub_1003CED3C(void *a1)
{
  v1 = a1;
  sub_1003CE8D4();
}

uint64_t sub_1003CED84(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10074D4C4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  sub_10074D484();
  (*(v5 + 8))(v8, v4);
  return sub_1003D09D8();
}

void sub_1003CEF40(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1003CED84(a3);
}

uint64_t sub_1003CEF94()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v6, v2);
}

void sub_1003CF13C(void *a1)
{
  v1 = a1;
  sub_1003CEF94();
}

id sub_1003CF1AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100753CD4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_100935AA8])
  {

    sub_1004BB190();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100753CB4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100753CC4();
  sub_10000C8CC(v5, &unk_10092B0D0);
  sub_100753D14();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100935AA0];
  v19 = *&v1[qword_100935AA0];
  v20 = v1[qword_100935AA0 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController);
      return sub_10074DA54();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1003CF4BC(void *a1)
{
  v1 = a1;
  sub_1003CF1AC();
}

void sub_1003CF518(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

void sub_1003CF660(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10074D4C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10074D484();
  (*(v11 + 8))(v13, v10);
}

void sub_1003CF79C(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10000C518(&unk_10092E450);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = sub_1007417F4();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = sub_1007532A4();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (v77[2])
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_1003DA3AC;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1003ED3AC;
            v100 = &unk_100874390;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController);
          sub_10074D9E4();
          v43 = sub_1007469A4();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10000C8CC(v38, &unk_100923200);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            sub_100746914();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            sub_1007525B4();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100016B4C(v46, v40, &unk_100933370);
          sub_100016B4C(v23, v40 + v51, &unk_100933370);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100016B4C(v13, v72, &unk_100933370);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10000C8CC(v94, &unk_100933370);
            sub_10000C8CC(v46, &unk_100933370);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10000C8CC(v13, &qword_10092C380);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_1003DA3B4(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
          v55 = sub_100753014();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10000C8CC(v94, &unk_100933370);
          sub_10000C8CC(v93, &unk_100933370);
          v56(v53, v50);
          sub_10000C8CC(v13, &unk_100933370);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10000C8CC(v23, &unk_100933370);
        sub_10000C8CC(v46, &unk_100933370);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10000C8CC(v13, &unk_100933370);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10001E674(0, v58[2] + 1, 1);
            v58 = aBlock;
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            sub_10001E674(v60 > 1, v61 + 1, 1);
            v58 = aBlock;
          }

          v58[2] = v61 + 1;
          v77 = v58;
          v57(v58 + v92 + v61 * v91, v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1003D0330(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(sub_1007417F4() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = sub_100741704().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = sub_100741704().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_1003D04C0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1003CF79C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1003D0540(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003D0624(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = sub_100753094();
  v13 = v12;
  if (v11 == sub_100753094() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_100754754();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_1003D0740()
{
  v1 = v0;
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v10, v14, &unk_100930240);
  if (v15)
  {
    sub_10000C824(v14, v13);
    sub_10000C8CC(v14, &unk_100930240);
    sub_10000C888(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v14, &unk_100930240);
  }

  sub_1007492A4();
  sub_1003D09D8();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003D09D8()
{
  v1 = sub_1007521E4();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100752224();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_100741454();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_10000C518(&qword_1009360A0);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_1007416E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_100935A88;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100016B4C(v25, v17, &qword_1009360A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10000C8CC(v17, &qword_1009360A0);
LABEL_5:
    if (qword_100921ED8 != -1)
    {
      swift_once();
    }

    v34 = sub_100752E44();
    sub_10000D0FC(v34, qword_100983300);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    v35 = v76;
    sub_100741444();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_100935A80;
    swift_beginAccess();
    sub_10006644C(v35, v27 + v36, &unk_100928740);
    swift_endAccess();
    v37 = v77;
    sub_1007416D4();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_10006644C(v37, v27 + v38, &qword_1009360A0);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_100935A80;
  swift_beginAccess();
  sub_100016B4C(&v0[v30], v8, &unk_100928740);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10000C8CC(v8, &unk_100928740);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_10000C888(&v0[qword_100935A78], *&v0[qword_100935A78 + 24]);
  if (sub_100744E84())
  {
    sub_1007416D4();
    sub_100741444();
    sub_1003DA3B4(&unk_1009360F0, &type metadata accessor for TimeZone);
    v42 = sub_100753014();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_1003D9D38(v41, v74))
    {
      if (qword_100921ED8 != -1)
      {
        swift_once();
      }

      v54 = sub_100752E44();
      sub_10000D0FC(v54, qword_100983300);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
    }

    else
    {
      if (qword_100921ED8 != -1)
      {
        swift_once();
      }

      v43 = sub_100752E44();
      sub_10000D0FC(v43, qword_100983300);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_100016C60(0, &qword_100926D00);
      v59 = sub_100753774();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_1003D9CE8;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_1008742F0;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_1003DA3B4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750);
      sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
      v50 = v68;
      v51 = v71;
      sub_1007543A4();
      v52 = v59;
      sub_100753784();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_10006644C(v56, v27 + v57, &unk_100928740);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v53 = sub_100752E44();
  sub_10000D0FC(v53, qword_100983300);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752CE4();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_1003D1828(void *a1)
{
  v1 = a1;
  sub_1003D0740();
}

uint64_t sub_1003D1870()
{
  v1 = v0;
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v10, v14, &unk_100930240);
  if (v15)
  {
    sub_10000C824(v14, v13);
    sub_10000C8CC(v14, &unk_100930240);
    sub_10000C888(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v14, &unk_100930240);
  }

  sub_100749294();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v5, v2);
}

void sub_1003D1B00(void *a1)
{
  v1 = a1;
  sub_1003D1870();
}

uint64_t sub_1003D1B48@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController);
  v2 = sub_10074DA44();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = sub_10074DA34();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_10000C5B4(v20, v18);
  sub_10000C610(v18, v17);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v21, v18);
  sub_10000C610(v18, v17);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  sub_1007526E4();
  v10 = v19;
  sub_10074DA64();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider();
  *(swift_allocObject() + qword_100931658) = v10;
  sub_10000C824(v18, v17);
  sub_10000C824(v17, &v16);

  v12 = sub_10074CB64();
  sub_10000C620(v17);
  result = sub_10000C620(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_1003D1E9C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_1003D9C5C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003D1ED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1003DA3B4(&qword_1009360D8, &type metadata accessor for TodayDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1003DA3B4(&qword_1009360E0, type metadata accessor for TodayPageShelfSupplementaryProvider);

  return v2;
}

id sub_1003D1FD0()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006B650C();
  sub_10074D7C4();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10074D794();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10074D7B4();
  }

  sub_10000C518(&qword_100922CE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  sub_10000C518(&qword_1009360C8);
  swift_allocObject();
  swift_retain_n();

  v4 = sub_10074DB94();
  v5 = sub_10002DDC8(&qword_1009360D0, &qword_1009360C8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v3 + 48) = sub_10074E2F4();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v7._rawValue = v3;
    sub_10074D784(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D2268(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009360B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10041DF04(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_1003D993C();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10074D464();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *sub_1003D23E0()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  v7 = sub_10074F704();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_100753CD4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  *&v17 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 traitCollection];
  v20 = sub_1007537E4();

  if (v20)
  {
    v77 = *&v1[qword_10097EE08];
    sub_10074BF34();
    v21 = sub_100754254();

    if (v21)
    {
      v22 = qword_100935A70;
      v23 = *&v1[qword_100935A70];
      v24 = 0.0;
      v76 = v13;
      if (v23)
      {
        [v23 sizeToFit];
        v25 = *&v1[v22];
        v26 = 0.0;
        if (v25)
        {
          [v25 frame];
          v24 = v27;
          v26 = v28;
        }
      }

      else
      {
        v26 = 0.0;
      }

      result = [v1 view];
      if (result)
      {
        v30 = result;
        v74 = v24;
        v75 = v7;
        v31 = [result traitCollection];

        sub_10071E7C8(v31, v82);
        result = [v1 view];
        if (result)
        {
          v32 = result;
          v33 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v34 = sub_100753CB4();
          v35 = *(v34 - 8);
          (*(v35 + 104))(v11, v33, v34);
          (*(v35 + 56))(v11, 0, 1, v34);
          sub_100753CC4();
          sub_10000C8CC(v11, &unk_10092B0D0);
          sub_100753C94();
          v37 = v36;

          (*(v76 + 8))(v15, v12);
          v38 = v80;
          (*(v80 + 104))(v6, enum case for PageGrid.Direction.vertical(_:), v2);
          (*(v38 + 16))(v79, v6, v2);
          sub_1004E97E0(0.0);
          v73 = v37;
          v39 = v81;
          sub_10074F6B4();
          (*(v38 + 8))(v6, v2);
          if ((sub_10062AA10() & 1) == 0)
          {
            sub_1000E1378();
          }

          sub_10074F664();
          sub_10074F664();
          v40 = [v1 traitCollection];
          v41 = sub_1007537D4();

          if (v41)
          {
            v42 = sub_10074BF84();
          }

          else
          {
            v42 = sub_10074BF34();
          }

          v80 = v42;
          v44 = v43;
          v45 = [v1 traitCollection];
          v46 = sub_1007537D4();

          if (v46)
          {
            v47 = sub_10074BF54();
            v49 = v48;
          }

          else
          {
            v47 = 0;
            v49 = 0;
          }

          v50 = [v1 traitCollection];
          v51 = sub_1007537D4();

          if (v51)
          {
            v52 = sub_10074BF64();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          sub_10074F5C4();
          v56 = v55;
          sub_10074F5E4();
          v58 = v57;
          result = [v1 view];
          if (result)
          {
            v59 = result;
            LOBYTE(v73) = 0;
            v60 = v82;
            sub_1003D597C(0, 0, 0, v80, v44, 0, v47, v49, v56, v58, v74, v26, v52, v54, 2, v82, v73, v59);
            v62 = v61;

            v63 = objc_opt_self();
            v64 = [v63 fractionalWidthDimension:1.0];
            v65 = [v63 absoluteDimension:v62];
            v66 = [objc_opt_self() sizeWithWidthDimension:v64 heightDimension:v65];

            v67 = v66;
            v68 = sub_100753064();
            v69 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v67 elementKind:v68 alignment:1];

            v70 = v69;
            sub_10074F694();
            [v70 setContentInsets:?];

            v71 = sub_1003D8A24();
            sub_10000C518(&unk_1009231A0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007A5CF0;
            *(inited + 32) = v70;
            v83 = v71;
            sub_1004A00B0(inited);

            (*(v78 + 8))(v39, v75);
            sub_1003D9BFC(v60, type metadata accessor for TitleHeaderView.Style);
            return v83;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_1003D8A24();
}

double sub_1003D2D00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x800000010076E360 == a2 || (sub_100754754() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10000C518(&qword_100929BD0);
    a3[4] = sub_10002DDC8(&qword_100929BD8, &qword_100929BD0);
    sub_10000D134(a3);
    type metadata accessor for TitleHeaderView(0);

    sub_10074D744();
  }

  else
  {

    return sub_1003CC86C(a1, a2, a3);
  }

  return result;
}

void sub_1003D2EB0(void *a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v46[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((sub_10062AA10() & 1) == 0)
    {
      v10 = v9;
      sub_1000E1378();
    }

    sub_1007535D4();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v11 = *&v9[qword_100935A70];
    v12 = v11;
    sub_100101D58(v11);
    v13 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v13 = sub_100184128;
    v13[1] = 0;

    v14 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
    [v14 setNumberOfLines:2];
    v15 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
    v16 = *&UIEdgeInsetsZero.bottom;
    *v15 = *&UIEdgeInsetsZero.top;
    v15[1] = v16;
    [a1 setNeedsLayout];
    v17 = v9;
    v18 = [v17 traitCollection];

    sub_10071E7C8(v18, v7);

    sub_1003D9B94(v7, v4, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v4);
    v19 = [v17 traitCollection];

    v20 = sub_1007537D4();
    if (v20)
    {
      v21 = v17;

      sub_10074BF84();
      v23 = v22;

      if (v23)
      {
        v24 = sub_100753064();
      }

      else
      {
        v24 = 0;
      }

      [v14 setText:v24];

      v28 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
      if (v28)
      {

        v29 = v28;
        sub_10074BF54();
        v31 = v30;

        if (v31)
        {
          v32 = sub_100753064();
        }

        else
        {
          v32 = 0;
        }

        [v29 setText:v32];
      }

      v35 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
      if (v35)
      {

        v36 = v35;

        sub_10074BF64();
        v38 = v37;

        if (v38)
        {
          v39 = sub_100753064();
        }

        else
        {
          v39 = 0;
        }

        [v36 setText:v39];
      }

      else
      {
      }
    }

    else
    {

      sub_10074BF34();
      v26 = v25;

      if (v26)
      {
        v27 = sub_100753064();
      }

      else
      {
        v27 = 0;
      }

      [v14 setText:v27];

      v33 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
      if (v33)
      {
        [v33 setText:0];
      }

      v34 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
      if (v34)
      {
        [v34 setText:0];
      }
    }

    [v14 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_100364214() & 1) == 0 || (v40 = [a1 gestureRecognizers]) != 0 && (v41 = v40, sub_100016C60(0, &unk_10092C570), v42 = sub_1007532A4(), v41, v43 = sub_1003CE850(), v47 = v43, __chkstk_darwin(v43), *&v46[-16] = &v47, v44 = sub_100074944(sub_1003D9B18, &v46[-32], v42), v43, , (v44))
    {
      sub_1003D9BFC(v7, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v45 = sub_1003CE850();
      [a1 addGestureRecognizer:v45];

      sub_1003D9BFC(v7, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_1003D34E8(uint64_t a1)
{
  v37 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100741264();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_1003D9B94(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1003D9BFC(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  sub_1007492E4();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100016B4C(v11, v3, &unk_100923970);
  v37 = v21;
  sub_100016B4C(v8, &v3[v21], &unk_100923970);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100016B4C(v3, v36, &unk_100923970);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_1003DA3B4(&qword_100926240, &type metadata accessor for URL);
      v30 = v24;
      v23 = sub_100753014();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10000C8CC(v8, &unk_100923970);
      sub_10000C8CC(v11, &unk_100923970);
      v31(v33, v15);
      v31(v30, v15);
      sub_10000C8CC(v3, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v8, &unk_100923970);
    sub_10000C8CC(v11, &unk_100923970);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10000C8CC(v8, &unk_100923970);
  sub_10000C8CC(v11, &unk_100923970);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10000C8CC(v3, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v3, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1003D3A84(void *a1)
{
  v2 = sub_1007521E4();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100752244();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  result = sub_10074BF44();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = sub_100753064();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100016C60(0, &qword_100926D00);
      v28 = sub_100753774();
      sub_100752234();
      sub_1007522B4();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_1003DA318;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100874340;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1003DA3B4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10000C518(&unk_10092F750);
      sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
      v23 = v27;
      sub_1007543A4();
      v24 = v28;
      sub_100753734();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      return (v29)(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_1003D3F84(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003D3A84(v4);
}

uint64_t sub_1003D3FEC()
{

  sub_10000C620(v0 + qword_100935A78);
  sub_10000C8CC(v0 + qword_100935A80, &unk_100928740);
  sub_10000C8CC(v0 + qword_100935A88, &qword_1009360A0);
}

uint64_t sub_1003D40BC(uint64_t a1)
{

  sub_10000C620(a1 + qword_100935A78);
  sub_10000C8CC(a1 + qword_100935A80, &unk_100928740);
  sub_10000C8CC(a1 + qword_100935A88, &qword_1009360A0);
}

uint64_t type metadata accessor for TodayDiffablePageViewController()
{
  result = qword_100935AD8;
  if (!qword_100935AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D41E4()
{
  sub_1003D4318(319, &unk_10092ECC0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1003D4318(319, &unk_100935AE8, &type metadata accessor for TimeZone);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1003D4318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003D43C0(void **a1)
{
  v2 = *(sub_1007417F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000518DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003D4468(v5);
  *a1 = v3;
}

void sub_1003D4468(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1007417F4();
        v6 = sub_100753324();
        v6[2] = v5;
      }

      v7 = *(sub_1007417F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003D4858(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1003D4594(0, v2, 1, a1);
  }
}

void sub_1003D4594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1007417F4();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath);
      v26 = sub_100753004();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003D4858(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10005171C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1003D5280(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10005171C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_100051690(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath);
      LODWORD(v133) = sub_100753004();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_100753004() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1002558E0(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1002558E0((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1003D5280(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10005171C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_100051690(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath);
    v109 = sub_100753004();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1003D5280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_1007417F4();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath);
          LOBYTE(v34) = sub_100753004();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath);
        LOBYTE(v21) = sub_100753004();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1003D5874(&v54, &v53, &v52);
}

uint64_t sub_1003D5874(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1007417F4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1003D597C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v338 = a8;
  v292 = a7;
  v332 = a6;
  v333 = a5;
  v327 = a4;
  v328 = a2;
  v301 = a3;
  v329 = a1;
  v324 = a9;
  v325 = a10;
  v344 = a16;
  v20 = sub_1007504F4();
  v299 = *(v20 - 8);
  v300 = v20;
  __chkstk_darwin(v20);
  v298 = v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_100750304();
  v295 = *(v297 - 8);
  __chkstk_darwin(v297);
  v294 = v291 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_100750B04();
  v354 = *(v339 - 8);
  __chkstk_darwin(v339);
  v296 = v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_100747154();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100747144();
  v316 = *(v25 - 8);
  v317 = v25;
  __chkstk_darwin(v25);
  v318 = v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100747134();
  v313 = *(v27 - 8);
  v314 = v27;
  __chkstk_darwin(v27);
  v315 = v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_100747184();
  v326 = *(v323 - 8);
  __chkstk_darwin(v323);
  v322 = v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100747174();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v306 = v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v351 = v291 - v34;
  __chkstk_darwin(v35);
  v350 = v291 - v36;
  __chkstk_darwin(v37);
  v342 = v291 - v38;
  v39 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v39 - 8);
  v304 = v291 - v40;
  v41 = sub_10074CD14();
  v335 = *(v41 - 8);
  v336 = v41;
  __chkstk_darwin(v41);
  v334 = v291 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100740E74();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v303 = *(v47 - 1);
  __chkstk_darwin(v47);
  v343 = v291 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v307 = v291 - v50;
  __chkstk_darwin(v51);
  v53 = v291 - v52;
  v54 = sub_10000C518(&qword_1009289F8);
  v55 = *(v54 - 8);
  v311 = v54;
  v312 = v55;
  __chkstk_darwin(v54);
  v293 = v291 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = v291 - v58;
  __chkstk_darwin(v59);
  v346 = v291 - v60;
  __chkstk_darwin(v61);
  v305 = v291 - v62;
  __chkstk_darwin(v63);
  v349 = v291 - v64;
  __chkstk_darwin(v65);
  v348 = v291 - v66;
  __chkstk_darwin(v67);
  v341 = v291 - v68;
  __chkstk_darwin(v69);
  v302 = v291 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = v291 - v73;
  v331 = a18;
  v75 = [a18 traitCollection];
  v352 = v30;
  v353 = v31;
  v340 = v74;
  v345 = v47;
  v337 = v75;
  v330 = v43;
  v309 = v46;
  v310 = v44;
  if (!v328)
  {
    v88 = *(v31 + 56);
    v88(v74, 1, 1, v30);
    v89 = v339;
    goto LABEL_23;
  }

  v76 = v328;
  v77 = v344;
  sub_1003D9B94(v344, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0);
  v75 = sub_100753C14();
  *&v390 = v329;
  *(&v390 + 1) = v76;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v75 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v291[1] = v80;
  v308 = v53;
  if (!v301)
  {
    goto LABEL_15;
  }

  v291[0] = v75;

  sub_10074F1F4();
  if (v83 && (v84 = [objc_opt_self() configurationWithFont:v291[0]], v85 = sub_100753064(), , v86 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v85, v84), v85, v84, v47 = v345, v86))
  {
    [v86 size];
    sub_100750F34();
    swift_allocObject();
    v87 = sub_100750F14();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_100750534();
    v92 = v294;
    (*(*(v91 - 8) + 16))(v294, v77 + v90, v91);
    v93 = v295;
    v94 = v297;
    (*(v295 + 104))(v92, enum case for FontSource.useCase(_:), v297);
    *(&v391 + 1) = v94;
    v392 = &protocol witness table for FontSource;
    v95 = sub_10000D134(&v390);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v296;
    sub_100750B14();
    (*(v93 + 8))(v92, v94);
    sub_100750AF4();
    sub_10074F2A4();
    v97 = v298;
    sub_100750504();
    sub_100750474();

    (*(v299 + 8))(v97, v300);
    (*(v354 + 8))(v96, v339);
    sub_100750F34();
    swift_allocObject();
    v87 = sub_100750F14();
  }

  v75 = v291[0];
  if (v87)
  {
    *(&v391 + 1) = sub_100750F34();
    v392 = &protocol witness table for LayoutViewPlaceholder;
    v328 = v87;
    *&v390 = v87;
  }

  else
  {
LABEL_15:
    v328 = 0;
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
  }

  v389 = 0;
  v387 = 0u;
  v388 = 0u;
  v386 = 0;
  v384 = 0u;
  v385 = 0u;
  v98 = sub_10074F3F4();
  v382 = v98;
  v383 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature);
  v99 = sub_10000D134(v381);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v75;

  v101 = v100;
  sub_10074FC74();
  sub_10000C620(v381);
  v102 = v334;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v335 + 8))(v102, v336);
  sub_100016B4C(&v390, v380, &unk_100928A00);
  v103 = v382;
  v104 = v383;
  v105 = sub_10000C888(v381, v382);
  v378 = v103;
  v379 = *(v104 + 8);
  v106 = sub_10000D134(v377);
  (*(*(v103 - 8) + 16))(v106, v105, v103);
  v107 = v345;
  v108 = v308;
  v109 = *&v308[v345[8]];
  v375 = &type metadata for Float;
  v376 = &protocol witness table for Float;
  v374 = v109;
  v110 = v345[9];
  v111 = v339;
  v372 = v339;
  v373 = &protocol witness table for StaticDimension;
  v112 = sub_10000D134(v371);
  v113 = *(v354 + 16);
  v113(v112, &v108[v110], v111);
  v114 = v107[10];
  v369 = v111;
  v370 = &protocol witness table for StaticDimension;
  v115 = sub_10000D134(v368);
  v113(v115, &v108[v114], v111);
  sub_100016B4C(&v387, &v362, &qword_10092BC30);
  v116 = *(&v363 + 1);
  if (*(&v363 + 1))
  {
    v117 = v364;
    v118 = sub_10000C888(&v362, *(&v363 + 1));
    *(&v366 + 1) = v116;
    v367 = *(v117 + 8);
    v119 = sub_10000D134(&v365);
    (*(*(v116 - 8) + 16))(v119, v118, v116);
    sub_10000C620(&v362);
  }

  else
  {
    sub_10000C8CC(&v362, &qword_10092BC30);
    v365 = 0u;
    v366 = 0u;
    v367 = 0;
  }

  v120 = v302;
  sub_100016B4C(&v384, v359, &qword_10092BC30);
  v121 = v360;
  if (v360)
  {
    v122 = v361;
    v123 = sub_10000C888(v359, v360);
    *(&v363 + 1) = v121;
    v364 = *(v122 + 8);
    v124 = sub_10000D134(&v362);
    (*(*(v121 - 8) + 16))(v124, v123, v121);
    sub_10000C620(v359);
  }

  else
  {
    sub_10000C8CC(v359, &qword_10092BC30);
    v362 = 0u;
    v363 = 0u;
    v364 = 0;
  }

  v125 = v345;
  v126 = v308;
  sub_10000C824(&v308[v345[12]], v359);
  sub_10000C824(v126 + v125[13], v358);
  v357 = &protocol witness table for Double;
  v356 = &type metadata for Double;
  v355 = 0x4020000000000000;
  sub_100747164();

  sub_10000C8CC(&v384, &qword_10092BC30);
  v47 = v125;
  sub_10000C8CC(&v387, &qword_10092BC30);
  sub_1003D9BFC(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C620(v381);

  sub_10000C8CC(&v390, &unk_100928A00);
  v30 = v352;
  v88 = *(v353 + 56);
  v88(v120, 0, 1, v352);
  sub_100066578(v120, v340, &qword_1009289F8);
  v75 = v337;
  v89 = v339;
LABEL_23:
  v127 = v333;
  if (!v338)
  {
LABEL_26:
    v88(v341, 1, 1, v30);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    goto LABEL_27;
  }

  v128 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v304;
  sub_100016B4C(v344 + *(v128 + 24), v304, &unk_100940600);
  if ((*(v303 + 48))(v129, 1, v47) == 1)
  {
    sub_10000C8CC(v129, &unk_100940600);
    goto LABEL_26;
  }

  sub_1001502E0(v129, v307);
  sub_100016C60(0, &qword_100923AB0);
  v133 = sub_100753C14();
  *&v390 = v292;
  *(&v390 + 1) = v338;

  v134 = v309;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v136 = v135;
  (*(v310 + 8))(v134, v330);

  v137 = 0;
  if (v136)
  {
LABEL_37:
    v141 = v133;
    if (*(v344 + *(v128 + 36)) == 2)
    {
      v308 = a14;
      v328 = a13;
      v142 = sub_10074F3F4();
      v303 = v137;
      v143 = v142;
      *(&v391 + 1) = v142;
      v304 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature);
      v392 = v304;
      v144 = sub_10000D134(&v390);
      v145 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v146 = *(*(v143 - 8) + 104);
      v329 = v88;
      v146(v144, enum case for Feature.measurement_with_labelplaceholder(_:), v143);
      v147 = v141;

      v148 = v147;
      sub_10074FC74();
      sub_10000C620(&v390);
      v149 = v334;
      sub_10074CD04();
      sub_10074CCE4();
      v150 = v336;
      v151 = *(v335 + 8);
      v151(v149, v336);
      *(&v388 + 1) = v143;
      v389 = v304;
      v152 = sub_10000D134(&v387);
      v146(v152, v145, v143);
      v53 = v330;
      v89 = v339;

      v153 = v148;
      sub_10074FC74();
      sub_10000C620(&v387);
      sub_10074CD04();
      sub_10074CCE4();

      v151(v149, v150);
      v127 = v333;
      sub_1003D9BFC(v307, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v329)(v341, 1, 1, v352);
      v47 = v345;
      v75 = v337;
LABEL_28:
      v338 = type metadata accessor for TitleHeaderView.Style(0);
      v329 = (v344 + v338[5]);
      sub_1003D9B94(v329, v343, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100016C60(0, &qword_100923AB0);
      v333 = sub_100753C14();
      if (!v127)
      {
        goto LABEL_43;
      }

      v130 = v89;
      v44 = v327;
      *&v384 = v327;
      *(&v384 + 1) = v127;

      v46 = v309;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      v132 = v131;
      (*(v310 + 8))(v46, v53);

      if (v132)
      {
LABEL_42:
        v89 = v130;
        if (!v332)
        {
          goto LABEL_50;
        }

LABEL_43:
        v330 = a15;

        sub_10074F1F4();
        if (v156 && (v157 = [objc_opt_self() configurationWithFont:v333], v158 = sub_100753064(), , v159 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v158, v157), v158, v47 = v345, v157, v159))
        {
          [v159 size];
          sub_100750F34();
          swift_allocObject();
          v160 = sub_100750F14();
        }

        else
        {
          v161 = v89;
          v162 = v329;
          v163 = v47[6];
          v164 = sub_100750534();
          v165 = &v162[v163];
          v89 = v161;
          v166 = v294;
          (*(*(v164 - 8) + 16))(v294, v165, v164);
          v167 = v295;
          v168 = v297;
          (*(v295 + 104))(v166, enum case for FontSource.useCase(_:), v297);
          *(&v385 + 1) = v168;
          v386 = &protocol witness table for FontSource;
          v169 = sub_10000D134(&v384);
          (*(v167 + 16))(v169, v166, v168);

          v170 = v296;
          sub_100750B14();
          (*(v167 + 8))(v166, v168);
          sub_100750AF4();
          sub_10074F2A4();
          v171 = v298;
          sub_100750504();
          sub_100750474();

          (*(v299 + 8))(v171, v300);
          (*(v354 + 8))(v170, v89);
          sub_100750F34();
          swift_allocObject();
          v160 = sub_100750F14();
        }

        if (v160)
        {
          v172 = sub_100750F34();
          v386 = &protocol witness table for LayoutViewPlaceholder;
          *(&v385 + 1) = v172;
          v332 = v160;
          *&v384 = v160;
        }

        else
        {
LABEL_50:
          v332 = 0;
          v386 = 0;
          v384 = 0u;
          v385 = 0u;
        }

        v173 = sub_10074F3F4();
        v382 = v173;
        v383 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature);
        v174 = sub_10000D134(v381);
        (*(*(v173 - 8) + 104))(v174, enum case for Feature.measurement_with_labelplaceholder(_:), v173);

        v175 = v333;
        sub_10074FC74();
        sub_10000C620(v381);
        v176 = v334;
        v333 = v175;
        sub_10074CD04();
        sub_10074CCE4();
        (*(v335 + 8))(v176, v336);
        sub_100016B4C(&v384, v380, &unk_100928A00);
        v177 = v382;
        v178 = v383;
        v179 = sub_10000C888(v381, v382);
        v378 = v177;
        v379 = *(v178 + 8);
        v180 = sub_10000D134(v377);
        (*(*(v177 - 8) + 16))(v180, v179, v177);
        v181 = v345;
        v182 = v343;
        v183 = *(v343 + v345[8]);
        v375 = &type metadata for Float;
        v376 = &protocol witness table for Float;
        v374 = v183;
        v184 = v345[9];
        v372 = v89;
        v373 = &protocol witness table for StaticDimension;
        v185 = sub_10000D134(v371);
        v186 = *(v354 + 16);
        v186(v185, v182 + v184, v89);
        v187 = v181[10];
        v369 = v89;
        v370 = &protocol witness table for StaticDimension;
        v188 = sub_10000D134(v368);
        v186(v188, v182 + v187, v89);
        sub_100016B4C(&v390, &v362, &qword_10092BC30);
        v189 = *(&v363 + 1);
        if (*(&v363 + 1))
        {
          v190 = v364;
          v191 = sub_10000C888(&v362, *(&v363 + 1));
          *(&v366 + 1) = v189;
          v367 = *(v190 + 8);
          v192 = sub_10000D134(&v365);
          (*(*(v189 - 8) + 16))(v192, v191, v189);
          sub_10000C620(&v362);
        }

        else
        {
          sub_10000C8CC(&v362, &qword_10092BC30);
          v365 = 0u;
          v366 = 0u;
          v367 = 0;
        }

        v193 = v346;
        v194 = v344;
        sub_100016B4C(&v387, v359, &qword_10092BC30);
        v195 = v360;
        if (v360)
        {
          v196 = v361;
          v197 = sub_10000C888(v359, v360);
          *(&v363 + 1) = v195;
          v364 = *(v196 + 8);
          v198 = sub_10000D134(&v362);
          (*(*(v195 - 8) + 16))(v198, v197, v195);
          sub_10000C620(v359);
        }

        else
        {
          sub_10000C8CC(v359, &qword_10092BC30);
          v362 = 0u;
          v363 = 0u;
          v364 = 0;
        }

        v199 = v347;
        v200 = v345;
        v201 = v343;
        sub_10000C824(v343 + v345[12], v359);
        sub_10000C824(v201 + v200[13], v358);
        v357 = &protocol witness table for Double;
        v356 = &type metadata for Double;
        v355 = 0x4020000000000000;
        sub_100747164();
        sub_10000C620(v381);
        sub_10000C8CC(&v384, &unk_100928A00);
        v202 = *(v194 + v338[9]);
        sub_10000C518(&qword_100928A10);
        v354 = *(v312 + 72);
        v203 = (*(v312 + 80) + 32) & ~*(v312 + 80);
        if (v202)
        {
          if (v202 != 1)
          {
            v232 = v354;
            v339 = swift_allocObject();
            v233 = v339 + v203;
            sub_100016B4C(v340, v339 + v203, &qword_1009289F8);
            v234 = v352;
            v235 = v353;
            (*(v353 + 16))(v233 + v232, v342, v352);
            (*(v235 + 56))(v233 + v232, 0, 1, v234);
            v236 = v305;
            sub_100016B4C(v233, v305, &qword_1009289F8);
            v237 = v293;
            sub_100066578(v236, v293, &qword_1009289F8);
            v238 = *(v235 + 48);
            v239 = (v235 + 32);
            v240 = v238(v237, 1, v234);
            v351 = (v235 + 32);
            if (v240 == 1)
            {
              sub_10000C8CC(v237, &qword_1009289F8);
              v241 = _swiftEmptyArrayStorage;
            }

            else
            {
              v242 = *v239;
              (*v239)(v306, v237, v234);
              v241 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v244 = *(v241 + 2);
              v243 = *(v241 + 3);
              if (v244 >= v243 >> 1)
              {
                v241 = sub_100255918(v243 > 1, v244 + 1, 1, v241);
              }

              *(v241 + 2) = v244 + 1;
              v245 = &v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v244];
              v234 = v352;
              v242(v245, v306, v352);
              v237 = v293;
            }

            v246 = v305;
            sub_100016B4C(v233 + v354, v305, &qword_1009289F8);
            sub_100066578(v246, v237, &qword_1009289F8);
            if (v238(v237, 1, v234) == 1)
            {
              sub_10000C8CC(v237, &qword_1009289F8);
              v231 = v344;
              v75 = v340;
            }

            else
            {
              v247 = v234;
              v248 = *v351;
              (*v351)(v306, v237, v247);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v231 = v344;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v241 = sub_100255918(0, *(v241 + 2) + 1, 1, v241);
              }

              v75 = v340;
              v251 = *(v241 + 2);
              v250 = *(v241 + 3);
              if (v251 >= v250 >> 1)
              {
                v241 = sub_100255918(v250 > 1, v251 + 1, 1, v241);
              }

              *(v241 + 2) = v251 + 1;
              v248(&v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v251], v306, v352);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v53 = v322;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v252 = 0;
              v253 = 0;
              v254 = 0;
              *&v385 = 0;
              *(&v384 + 1) = 0;
            }

            else
            {
              v253 = sub_100750F34();
              swift_allocObject();
              v252 = sub_100750F14();
              v254 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v384 = v252;
            *(&v385 + 1) = v253;
            v386 = v254;
            sub_100016B4C(&v384, v381, &unk_100928A00);
            v255 = v338;
            v256 = *(v231 + v338[14]);
            v380[3] = &type metadata for CGFloat;
            v380[4] = &protocol witness table for CGFloat;
            v380[0] = v256;
            (*(v313 + 16))(v315, v231 + v338[10], v314);
            (*(v316 + 16))(v318, v231 + v255[11], v317);
            (*(v319 + 104))(v320, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v321);
            sub_100747104();
            sub_100753BA4();
            sub_1003DA3B4(&qword_100928A18, &type metadata accessor for TitleHeaderLayout);
            v44 = v323;
            sub_100750404();
            v381[0] = v257;
            v381[1] = v258;
            sub_100753BB4();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v326 + 8))(v53, v44);
              (*(v353 + 8))(v342, v352);
              sub_1003D9BFC(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v387, &qword_10092BC30);
              sub_10000C8CC(&v390, &qword_10092BC30);
              sub_10000C8CC(v341, &qword_1009289F8);
              sub_10000C8CC(v75, &qword_1009289F8);
              return sub_10000C8CC(&v384, &unk_100928A00);
            }

            v259 = v352;
            v47 = v353;
            v46 = v337;
            if (qword_100920AD0 != -1)
            {
              swift_once();
            }

            v260 = sub_10000D0FC(v345, qword_10097FF28);
            if (sub_10010A2FC(v329, v260))
            {

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v259);
              sub_1003D9BFC(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v387, &qword_10092BC30);
              sub_10000C8CC(&v390, &qword_10092BC30);
              sub_10000C8CC(v341, &qword_1009289F8);
              sub_10000C8CC(v75, &qword_1009289F8);
              return sub_10000C8CC(&v384, &unk_100928A00);
            }

            if (qword_100920AD8 == -1)
            {
LABEL_105:
              v261 = sub_10000D0FC(v345, qword_10097FF40);
              sub_10010A2FC(v329, v261);

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v352);
              sub_1003D9BFC(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v387, &qword_10092BC30);
              sub_10000C8CC(&v390, &qword_10092BC30);
              sub_10000C8CC(v341, &qword_1009289F8);
              sub_10000C8CC(v75, &qword_1009289F8);
              return sub_10000C8CC(&v384, &unk_100928A00);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v204 = v354;
          v339 = swift_allocObject();
          v205 = v339 + v203;
          sub_100016B4C(v340, v339 + v203, &qword_1009289F8);
          v207 = v352;
          v206 = v353;
          (*(v353 + 16))(v205 + v204, v342, v352);
          v208 = *(v206 + 56);
          v206 += 56;
          v208(v205 + v204, 0, 1, v207);
          sub_100016B4C(v341, v205 + 2 * v204, &qword_1009289F8);
          v209 = (v206 - 8);
          v350 = (v206 - 24);
          v210 = v207;
          v211 = _swiftEmptyArrayStorage;
          v212 = 3;
          v348 = v205;
          do
          {
            v213 = v349;
            sub_100016B4C(v205, v349, &qword_1009289F8);
            sub_100066578(v213, v199, &qword_1009289F8);
            if ((*v209)(v199, 1, v210) == 1)
            {
              sub_10000C8CC(v199, &qword_1009289F8);
            }

            else
            {
              v214 = *v350;
              (*v350)(v351, v199, v210);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = sub_100255918(0, *(v211 + 2) + 1, 1, v211);
              }

              v216 = *(v211 + 2);
              v215 = *(v211 + 3);
              if (v216 >= v215 >> 1)
              {
                v211 = sub_100255918(v215 > 1, v216 + 1, 1, v211);
              }

              *(v211 + 2) = v216 + 1;
              v210 = v352;
              v214(&v211[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v216], v351, v352);
              v199 = v347;
            }

            v205 += v354;
            --v212;
          }

          while (v212);
        }

        else
        {
          v217 = v354;
          v218 = 2 * v354;
          v339 = swift_allocObject();
          v219 = v339 + v203;
          sub_100016B4C(v340, v339 + v203, &qword_1009289F8);
          sub_100016B4C(v341, v219 + v217, &qword_1009289F8);
          v221 = v352;
          v220 = v353;
          (*(v353 + 16))(v219 + v218, v342, v352);
          v222 = *(v220 + 56);
          v220 += 56;
          v222(v219 + v218, 0, 1, v221);
          v223 = (v220 - 8);
          v351 = (v220 - 24);
          v224 = v221;
          v225 = _swiftEmptyArrayStorage;
          v226 = 3;
          v349 = v219;
          do
          {
            v227 = v348;
            sub_100016B4C(v219, v348, &qword_1009289F8);
            sub_100066578(v227, v193, &qword_1009289F8);
            if ((*v223)(v193, 1, v224) == 1)
            {
              sub_10000C8CC(v193, &qword_1009289F8);
            }

            else
            {
              v228 = *v351;
              (*v351)(v350, v193, v224);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v225 = sub_100255918(0, *(v225 + 2) + 1, 1, v225);
              }

              v230 = *(v225 + 2);
              v229 = *(v225 + 3);
              if (v230 >= v229 >> 1)
              {
                v225 = sub_100255918(v229 > 1, v230 + 1, 1, v225);
              }

              *(v225 + 2) = v230 + 1;
              v224 = v352;
              v228(&v225[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v230], v350, v352);
              v193 = v346;
            }

            v219 += v354;
            --v226;
          }

          while (v226);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v231 = v344;
        v75 = v340;
        goto LABEL_94;
      }

      [v333 lineHeight];
      v155 = ceil(v154 * 1.3);
      if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v155 > -9.22337204e18)
        {
          if (v155 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v389 = 0;
    v387 = 0u;
    v388 = 0u;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v262 = sub_10074F3F4();
    v382 = v262;
    v383 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature);
    v263 = sub_10000D134(v381);
    (*(*(v262 - 8) + 104))(v263, enum case for Feature.measurement_with_labelplaceholder(_:), v262);

    v264 = v133;
    sub_10074FC74();
    sub_10000C620(v381);
    v265 = v334;
    v338 = v264;
    sub_10074CD04();
    sub_10074CCE4();
    (*(v335 + 8))(v265, v336);
    sub_100016B4C(&v390, v380, &unk_100928A00);
    v266 = v382;
    v267 = v383;
    v268 = sub_10000C888(v381, v382);
    v378 = v266;
    v379 = *(v267 + 8);
    v269 = sub_10000D134(v377);
    (*(*(v266 - 8) + 16))(v269, v268, v266);
    v270 = v345;
    v271 = v307;
    v272 = *(v307 + v345[8]);
    v375 = &type metadata for Float;
    v376 = &protocol witness table for Float;
    v374 = v272;
    v273 = v345[9];
    v372 = v89;
    v373 = &protocol witness table for StaticDimension;
    v274 = sub_10000D134(v371);
    v275 = v89;
    v276 = *(v354 + 16);
    v276(v274, v271 + v273, v275);
    v277 = v270[10];
    v369 = v275;
    v370 = &protocol witness table for StaticDimension;
    v278 = sub_10000D134(v368);
    v276(v278, v271 + v277, v275);
    sub_100016B4C(&v387, &v362, &qword_10092BC30);
    v279 = *(&v363 + 1);
    if (*(&v363 + 1))
    {
      v280 = v364;
      v281 = sub_10000C888(&v362, *(&v363 + 1));
      *(&v366 + 1) = v279;
      v367 = *(v280 + 8);
      v282 = sub_10000D134(&v365);
      (*(*(v279 - 8) + 16))(v282, v281, v279);
      sub_10000C620(&v362);
    }

    else
    {
      sub_10000C8CC(&v362, &qword_10092BC30);
      v365 = 0u;
      v366 = 0u;
      v367 = 0;
    }

    v283 = v353;
    sub_100016B4C(&v384, v359, &qword_10092BC30);
    v284 = v360;
    if (v360)
    {
      v285 = v361;
      v286 = sub_10000C888(v359, v360);
      *(&v363 + 1) = v284;
      v364 = *(v285 + 8);
      v287 = sub_10000D134(&v362);
      (*(*(v284 - 8) + 16))(v287, v286, v284);
      sub_10000C620(v359);
    }

    else
    {
      sub_10000C8CC(v359, &qword_10092BC30);
      v362 = 0u;
      v363 = 0u;
      v364 = 0;
    }

    v288 = v345;
    v289 = v307;
    sub_10000C824(v307 + v345[12], v359);
    sub_10000C824(v289 + v288[13], v358);
    v357 = &protocol witness table for Double;
    v356 = &type metadata for Double;
    v355 = 0x4020000000000000;
    v290 = v341;
    sub_100747164();
    sub_10000C8CC(&v384, &qword_10092BC30);
    sub_10000C8CC(&v387, &qword_10092BC30);
    sub_10000C8CC(&v390, &unk_100928A00);
    sub_1003D9BFC(v289, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v381);

    v47 = v288;
    (*(v283 + 56))(v290, 0, 1, v352);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    v75 = v337;
    v89 = v339;
    v127 = v333;
LABEL_27:
    v53 = v330;
    goto LABEL_28;
  }

  result = [v133 lineHeight];
  v140 = ceil(v139 * 1.3);
  if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v140 < 9.22337204e18)
  {
    v137 = v140;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

void sub_1003D89C8(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003D8A24()
{
  v1 = v0;
  v102 = sub_1007457B4();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v92 = (&v88 - v4);
  v5 = sub_10000C518(&unk_10092E450);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v9 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v88 - v13;
  v14 = sub_100747C14();
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = sub_10000C518(&qword_1009262D0);
  v104 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = sub_10074C3F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _swiftEmptyArrayStorage;
  sub_100749264();
  v28 = (*(v25 + 88))(v27, v24);
  v97 = v16;
  if (v28 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v90 = v14;
    (*(v25 + 96))(v27, v24);
    sub_10000C620(v27);
    v29 = [v0 traitCollection];
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v30 = sub_100750B04();
    sub_10000D0FC(v30, qword_1009820C8);
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007A5CF0;
    *(v31 + 32) = v29;
    v32 = v29;
    v33 = sub_100751044();
    sub_100750544();
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension:1.0];
    v38 = [v36 absoluteDimension:v35];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    type metadata accessor for InfiniteScrollFooterView();
    v40 = v39;
    sub_1007539C4();
    v41 = sub_100753064();

    v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:v41 alignment:5];

    v43 = v42;
    sub_100753284();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v44 = v105;
    v14 = v90;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = qword_100930688;
  swift_beginAccess();
  v46 = *&v1[v45];
  if (v46)
  {
    v47 = v46;
    sub_1007518F4();

    v48 = sub_100751744();
    v49 = *(v104 + 8);
    v104 += 8;
    v49(v23, v19);
    if (v48 > 0)
    {
      sub_10000C518(&qword_1009360A8);
      sub_10002DDC8(&qword_1009360B0, &qword_1009360A8);
      sub_10074DA04();
      v50 = v103;
      if ((*(v103 + 48))(v11, 1, v14) != 1)
      {
        v88 = v44;
        v89 = v49;
        v90 = v19;
        v58 = v97;
        (*(v50 + 32))(v97, v11, v14);
        v59 = v94;
        sub_100747C04();
        swift_getKeyPath();
        v60 = v14;
        v61 = v95;
        v62 = v99;
        sub_1007525B4();

        (*(v98 + 8))(v59, v62);
        v63 = v100;
        v51 = v102;
        if ((*(v100 + 88))(v61, v102) == enum case for ShelfBackground.color(_:))
        {
          (*(v63 + 96))(v61, v51);

          v64 = *(sub_10000C518(&unk_100930940) + 48);
          v65 = sub_100748E34();
          (*(*(v65 - 8) + 8))(v61 + v64, v65);
          v66 = objc_opt_self();
          v67 = [v66 fractionalWidthDimension:1.0];
          v68 = [v66 absoluteDimension:2000.0];
          v69 = [objc_opt_self() sizeWithWidthDimension:v67 heightDimension:v68];

          v70 = sub_100753064();
          v71 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v69 elementKind:v70 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v71 setExtendsBoundary:0];
          v72 = v71;
          sub_100753284();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

          v14 = v60;
          (*(v103 + 8))(v97, v60);
          v44 = v105;
          v19 = v90;
          v49 = v89;
        }

        else
        {
          (*(v50 + 8))(v58, v60);
          (*(v63 + 8))(v61, v51);
          v14 = v60;
          v19 = v90;
          v49 = v89;
          v44 = v88;
        }

        goto LABEL_13;
      }

      sub_10000C8CC(v11, &qword_100942730);
    }

    v51 = v102;
LABEL_13:
    v52 = *&v1[v45];
    if (v52)
    {
      v53 = v52;
      v54 = v101;
      sub_1007518F4();

      v55 = sub_100751744();
      v49(v54, v19);
      if (v55 > 0)
      {
        sub_10000C518(&qword_1009360A8);
        v56 = v103;
        sub_10002DDC8(&qword_1009360B0, &qword_1009360A8);
        v57 = v96;
        sub_10074DA04();
        if ((*(v56 + 48))(v57, 1, v14) == 1)
        {
          sub_10000C8CC(v57, &qword_100942730);
        }

        else
        {
          v73 = v93;
          (*(v56 + 32))(v93, v57, v14);
          v74 = v91;
          sub_100747C04();
          swift_getKeyPath();
          v75 = v92;
          v76 = v99;
          sub_1007525B4();

          (*(v98 + 8))(v74, v76);
          v77 = v100;
          if ((*(v100 + 88))(v75, v51) == enum case for ShelfBackground.color(_:))
          {
            (*(v77 + 96))(v75, v51);

            v78 = *(sub_10000C518(&unk_100930940) + 48);
            v79 = sub_100748E34();
            (*(*(v79 - 8) + 8))(v75 + v78, v79);
            v80 = objc_opt_self();
            v81 = [v80 fractionalWidthDimension:1.0];
            v82 = [v80 absoluteDimension:2000.0];
            v83 = [objc_opt_self() sizeWithWidthDimension:v81 heightDimension:v82];

            v84 = sub_100753064();
            v85 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v83 elementKind:v84 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v85 setExtendsBoundary:0];
            v86 = v85;
            sub_100753284();
            if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();

            (*(v103 + 8))(v73, v14);
            return v105;
          }

          else
          {
            (*(v56 + 8))(v73, v14);
            (*(v77 + 8))(v75, v51);
          }
        }
      }
    }
  }

  return v44;
}

uint64_t sub_1003D98C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003D98FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1003D993C()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  sub_10074BF74();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_100753064();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  sub_10074BF84();
  if (v7)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_10009AFC4();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController);

  return sub_10074DA54();
}

uint64_t sub_1003D9B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D9BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003D9C5C()
{
  result = qword_1009360E8;
  if (!qword_1009360E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009360E8);
  }

  return result;
}

uint64_t sub_1003D9CB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003D9D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1003D9D38(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = sub_100740FA4();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = sub_100741584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100741644();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  sub_100741594();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10000C518(&unk_10092ECF0);
  v15 = sub_100741634();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_1007A5620;
  *(v19 + 16) = xmmword_1007A5620;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_1001A8FDC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  sub_1007415C4();
  v22 = v21;

  v23 = sub_100740F74();
  if (v24 & 1) != 0 || (v25 = v23, v67 = sub_100740F84(), (v26) || (v27 = sub_100740F64(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_1001A8FDC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  sub_1007415C4();

  v35 = sub_100740F74();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = sub_100740F84();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = sub_100740F64();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_1003DA318()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_1003DA36C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003DA3B4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1003DA460(uint64_t a1)
{
  v57 = sub_100748B54();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748B74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10074CD14();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744D14();
  sub_1003DAD10(&qword_1009285A0, &type metadata accessor for EditorialQuote);
  sub_1007468B4();
  v14 = v64[0];
  if (!v64[0])
  {
    return 0.0;
  }

  v50 = v3;
  v51 = v7;
  v52 = v5;
  v53 = v4;
  swift_getKeyPath();
  v15 = v14;
  sub_100746914();

  sub_10074F674();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  sub_100746914();

  v16 = v64[0];
  v17 = sub_1007537D4();

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  v47 = sub_100744D04();
  v46 = v19;
  v20 = sub_100038D38();
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  sub_10000D0FC(v21, qword_10097F928);
  swift_getKeyPath();
  sub_100746914();

  sub_100753C04();
  swift_unknownObjectRelease();
  v22 = sub_10074F3F4();
  v65 = v22;
  v49 = sub_1003DAD10(&qword_10092AC70, &type metadata accessor for Feature);
  v66 = v49;
  v23 = sub_10000D134(v64);
  v24 = *(v22 - 8);
  v45[1] = v20;
  v25 = *(v24 + 104);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25(v23);
  sub_10074FC74();
  v58 = a1;
  sub_10000C620(v64);
  sub_10074CD04();
  sub_10074CCE4();
  v47 = v18;
  v26 = *(v54 + 8);
  v27 = v55;
  v26(v9, v55);
  v54 = v15;
  v46 = sub_100744CF4();
  v45[0] = v28;
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v21, qword_10097F940);
  swift_getKeyPath();
  sub_100746914();

  sub_100753C04();
  swift_unknownObjectRelease();
  v62 = v22;
  v63 = v49;
  v29 = sub_10000D134(v61);
  (v25)(v29, v48, v22);
  sub_10074FC74();
  sub_10000C620(v61);
  sub_10074CD04();
  sub_10074CCE4();
  v26(v9, v27);
  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = sub_10000D0FC(v57, qword_10097F910);
  (*(v56 + 16))(v50, v31, v30);
  v32 = v65;
  v33 = v66;
  v34 = sub_10000C888(v64, v65);
  v60[3] = v32;
  v60[4] = *(v33 + 8);
  v35 = sub_10000D134(v60);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v62;
  v37 = v63;
  v38 = sub_10000C888(v61, v62);
  v59[3] = v36;
  v59[4] = *(v37 + 8);
  v39 = sub_10000D134(v59);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v51;
  sub_100748B64();
  swift_getKeyPath();
  sub_100746914();

  sub_1003DAD10(&unk_100933210, &type metadata accessor for EditorialQuoteLayout);
  v41 = v53;
  sub_100750404();
  v43 = v42;
  swift_unknownObjectRelease();

  (*(v52 + 8))(v40, v41);
  sub_10000C620(v61);
  sub_10000C620(v64);
  return v43;
}

uint64_t sub_1003DAD10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003DAD68(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = sub_10074F704();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_100750304();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000C518(&unk_10092E450);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = sub_1007457B4();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_10000C518(&qword_100932568);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_10000C518(&qword_1009245B0);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = sub_10074E984();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v25 - 8);
  v154 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v153 = &v131[-v28];
  __chkstk_darwin(v29);
  v31 = &v131[-v30];
  __chkstk_darwin(v32);
  v138 = &v131[-v33];
  __chkstk_darwin(v34);
  v137 = &v131[-v35];
  __chkstk_darwin(v36);
  v139 = &v131[-v37];
  __chkstk_darwin(v38);
  v40 = &v131[-v39];
  __chkstk_darwin(v41);
  v43 = &v131[-v42];
  __chkstk_darwin(v44);
  v46 = &v131[-v45];
  v47 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = sub_100747B74();
  v164 = a1;
  if (v55)
  {
    LODWORD(v152) = 0;
    v56 = v5;
    v57 = v163;
    v58 = v159;
LABEL_12:
    v69 = v161;
    goto LABEL_13;
  }

  sub_100747BB4();
  sub_10000C8CC(v40, &unk_10093D6E0);
  sub_100028CD0(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10000C8CC(v46, &unk_10093D6E0);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v59 + 8))(v46, v5);
    v62 = 0;
  }

  v63 = v160;
  v64 = *(v160 + 56);
  v65 = v151;
  v64(v54, v62, 1, v151);
  (*(v63 + 104))(v51, enum case for Shelf.ContentType.unifiedMessage(_:), v65);
  v64(v51, 0, 1, v65);
  v66 = *(v22 + 48);
  sub_100016B4C(v54, v24, &unk_100933370);
  sub_100016B4C(v51, &v24[v66], &unk_100933370);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10000C8CC(v51, &unk_100933370);
    sub_10000C8CC(v54, &unk_100933370);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10000C8CC(v24, &unk_100933370);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10000C8CC(v24, &qword_10092C380);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_100016B4C(v24, v152, &unk_100933370);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10000C8CC(v51, &unk_100933370);
    sub_10000C8CC(v54, &unk_100933370);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_1003DD1F0(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v132 = sub_100753014();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10000C8CC(v51, &unk_100933370);
  sub_10000C8CC(v54, &unk_100933370);
  v124(v152, v65);
  sub_10000C8CC(v24, &unk_100933370);
  v56 = v135;
  v58 = v159;
  v69 = v161;
  if ((v132 & 1) == 0)
  {
    LODWORD(v152) = 1;
    v57 = v163;
    goto LABEL_13;
  }

LABEL_40:
  v125 = v137;
  v126 = v138;
  sub_100747BB4();
  sub_10000C8CC(v126, &unk_10093D6E0);
  v127 = v139;
  sub_100028CD0(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10000C8CC(v127, &unk_10093D6E0);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  sub_100747BB4();
  sub_10000C8CC(v72, &unk_10093D6E0);
  sub_100028CD0(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10000C8CC(v31, &unk_10093D6E0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v57 + 8))(v31, v56);
    v73 = 0;
  }

  v74 = v162;
  v75 = *(v162 + 56);
  v76 = v156;
  v75(v58, v73, 1, v156);
  (*(v74 + 104))(v69, enum case for ShelfBackground.none(_:), v76);
  v75(v69, 0, 1, v76);
  v77 = *(v155 + 48);
  v78 = v165;
  sub_100016B4C(v58, v165, &qword_1009245B0);
  v79 = v78;
  sub_100016B4C(v69, &v78[v77], &qword_1009245B0);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10000C8CC(v81, &qword_1009245B0);
    v83 = v165;
    sub_10000C8CC(v58, &qword_1009245B0);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10000C8CC(v83, &qword_1009245B0);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_100016B4C(v79, v150, &qword_1009245B0);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10000C8CC(v161, &qword_1009245B0);
    v83 = v165;
    sub_10000C8CC(v58, &qword_1009245B0);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10000C8CC(v83, &qword_100932568);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_1003DD1F0(&qword_100940610, &type metadata accessor for ShelfBackground);
  v90 = v79;
  v84 = sub_100753014();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10000C8CC(v161, &qword_1009245B0);
  sub_10000C8CC(v159, &qword_1009245B0);
  v91(v86, v76);
  sub_10000C8CC(v90, &qword_1009245B0);
LABEL_23:
  v92 = v157;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = sub_100747B94();
  v96 = sub_1007537E4();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = sub_100750B04();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_10000D134(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_10000D134(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      sub_100750B14();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    sub_100747B84();
    sub_10074F5B4();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  sub_100747C04();
  swift_getKeyPath();
  v98 = v142;
  sub_1007525B4();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_1003DD1F0(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = sub_100754754();
    v114 = *(v160 + 8);
    v114(v99, v100);
    v114(v98, v100);

    if ((v113 & 1) == 0)
    {
LABEL_38:
      v121 = v158;
      v158[3] = &type metadata for Double;
      v121[4] = &protocol witness table for Double;
      *v121 = 0;
      return;
    }
  }

  v115 = sub_100747B94();
  v116 = sub_1007537D4();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v117 = sub_100750B04();
  v118 = sub_10000D0FC(v117, qword_1009820F8);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_10000D134(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}