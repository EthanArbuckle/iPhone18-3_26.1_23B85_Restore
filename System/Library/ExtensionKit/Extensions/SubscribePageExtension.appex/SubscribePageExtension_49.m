uint64_t sub_100585A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100585BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1007473B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921850 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v7, qword_10093E790);
  __chkstk_darwin(v11);
  *(&v15 - 2) = a6;
  sub_10074F4B4();
  sub_1007473D4();
  sub_100585EC4(&qword_100928F98, &type metadata accessor for ArcadeFooterLayout);
  sub_100750D34();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_100585E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093E988);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100585EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100585F28(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v8 = sub_1002569DC(&xmmword_1009831F0, a6, a1);
  v9 = [objc_opt_self() absoluteDimension:v8];
  v10 = sub_100749A04();

  return v10;
}

uint64_t sub_10058608C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005860D4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_100743384(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName);
  sub_100745CB4();
  if (v5)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias);
  sub_100745CC4();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

char *sub_1005861E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_10058659C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100586644(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1005867E4(a2, v9, a7, ObjectType);
}

uint64_t sub_1005866A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007454C4();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100586A7C(v5, a3);
  }

  else
  {
    sub_10074F8A4();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_100586C90(v7, a3);
  }
}

double sub_1005867E4(double a1, uint64_t a2, void *a3, void *a4)
{
  sub_1007454C4();
  if (swift_dynamicCastClass())
  {

    sub_1007454A4();
    v7 = sub_10074F914();

    v8 = sub_100745484();
    v10 = v9;
    v11 = sub_1007454B4();
    v13 = v12;
    v14 = sub_100745414();
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_100536A04(&unk_10097D3C0, a3);
    v15 = type metadata accessor for AppPromotionCardView();
    sub_10019776C(v7, v8, v10, v11, v13, v14, a3, a1, v15, a4);
  }

  else
  {
    sub_10074F8A4();
    if (swift_dynamicCastClass())
    {

      sub_10074F884();
      v16 = sub_10074F914();

      v17 = sub_10074F874();
      v19 = v18;
      v20 = sub_10074F894();
      v22 = v21;
      if (qword_100920180 != -1)
      {
        swift_once();
      }

      sub_100536A04(&unk_10097D3C0, a3);
      v23 = type metadata accessor for AppPromotionCardView();
      sub_10019776C(v16, v17, v19, v20, v22, 0, a3, a1, v23, a4);
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_100586A7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_100742934();
  if (v9)
  {
    v16[1] = v9;
    sub_10074ECD4();
    sub_100752764();
    sub_100587084(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v10 = sub_10000C518(&unk_100933080);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000C518(&unk_100933080);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100195594(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_100745494();
  sub_1000C9098(v13, v14);
  return sub_100198804(a1, a2);
}

uint64_t sub_100586C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_100742934();
  if (v9)
  {
    v16[1] = v9;
    sub_10074ECD4();
    sub_100752764();
    sub_100587084(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v10 = sub_10000C518(&unk_100933080);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000C518(&unk_100933080);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100195594(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_10074F864();
  sub_1000C9098(v13, v14);
  return sub_1001995DC(a1, a2);
}

void sub_100586EA4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_100743384(v8, a3);
  sub_1007433C4();
  sub_100587084(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  sub_100744274();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_10093CB50;
    v6 = Strong;
    v5 = [*(Strong + qword_10093CB50) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView();
    sub_100587084(&unk_100923110, type metadata accessor for VideoView);
    sub_100744274();
  }
}

uint64_t sub_100587084(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10058734C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10058740C()
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v4[OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback];
  v3 = *&v4[OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback];
  *v2 = sub_100587C4C;
  v2[1] = v1;

  sub_1000164A8(v3);

  [v0 setView:v4];
}

void sub_1005874E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10058753C();
  }
}

void sub_10058753C()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = sub_1007537B4(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_100587798()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_100587B48(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

uint64_t sub_100587C14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100587CA0()
{
  v22 = sub_10074EAB4();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F5C4();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_100747B94();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  sub_100747B84();
  sub_10074F674();
  v12(v9, v6);
  sub_100352CA4(v17);

  sub_100747BD4();
  sub_10074EA84();
  sub_100587F8C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  sub_100754324();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_100587F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InAppMessagesMetricsEventRecorder.record(_:on:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_allocWithZone(AMSMetricsEvent);
    sub_10001B5AC(v1);

    v3 = sub_100753064();

    v4 = [v2 initWithTopic:v3];

    v5 = *(v0 + 32);
    if (v5)
    {

      v6 = v5(v4);
      sub_1000164A8(v5);
    }

    else
    {
      v6 = v4;
    }

    sub_1007529E4();
    isa = sub_100752F34().super.isa;

    [v6 addPropertiesWithDictionary:isa];

    v10 = [v6 underlyingDictionary];
    v11 = sub_100752F44();

    v12 = sub_100588340(v11);

    if (v12)
    {
      v13 = objc_allocWithZone(IAMFigaroEvent);
      v14 = sub_100752F34().super.isa;

      v15 = [v13 initWithFigaroEventProperties:v14];

      v1(v15);
    }

    else
    {
    }

    return sub_1000164A8(v1);
  }

  else
  {
    if (qword_100921D98 != -1)
    {
      swift_once();
    }

    v7 = sub_100752E44();
    sub_10000D0FC(v7, qword_100982F20);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }
}

unint64_t sub_100588340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C518(&qword_100934890);
    v2 = sub_1007546B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100066198(*(a1 + 48) + 40 * v12, v27);
        sub_10000C5B4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100066198(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000C5B4(v25 + 8, v20);
        sub_100588744(v24);
        v21 = v18;
        sub_10000C610(v20, v22);
        v13 = v21;
        sub_10000C610(v22, v23);
        sub_10000C610(v23, &v21);
        result = sub_1003861D0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000C620(v10);
          result = sub_10000C610(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10000C610(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100588744(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1000164A8(v3);
}

uint64_t InAppMessagesMetricsEventRecorder.deinit()
{
  sub_1000164A8(*(v0 + 16));
  sub_1000164A8(*(v0 + 32));
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_1000164A8(*(v0 + 16));
  sub_1000164A8(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_100588744(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10093F1E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005887B0()
{
  result = qword_10093F1F0;
  if (!qword_10093F1F0)
  {
    type metadata accessor for LargeLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F1F0);
  }

  return result;
}

double sub_100588808()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747BA4();
  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100253750();
  v5 = v4;
  swift_unknownObjectRelease_n();
  return v5;
}

uint64_t sub_100588930(uint64_t a1)
{
  v29 = sub_10038664C(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_1003861D0(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10000C5B4(*(v4 + 56) + 32 * v5, v32);
    sub_10000C610(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_1003861D0(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_10000C5B4(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_10000C620(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_1007545F4();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_1003861D0(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006758BC();
      }
    }

    else
    {
      sub_1006713AC(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_1003861D0(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_10000C620(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

uint64_t sub_100588C28(uint64_t a1, uint64_t a2)
{
  sub_100032C04(a1, &v8);
  if (v9)
  {
    sub_10000C610(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_1007545F4();
    if (*(a2 + 16))
    {
      v3 = sub_1003861D0(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_10000C620(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_10000C620(v10);
  }

  else
  {
    sub_1000277BC(&v8);
  }

  return 0;
}

uint64_t sub_100588D1C(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_100750534();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v54 - v10;
  if (qword_1009218F0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_10000C518(&qword_100923C40);
    sub_10000D0FC(v12, qword_10093F248);
    v70 = v1;
    v13 = v1;
    sub_100743464();

    v14 = *&v13[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    name = v7[1].name;
    v64 = v7 + 1;
    v62 = name;
    (name)(v5, v11, v6);
    attr = v7[3].attr;
    p_attr = &v7[3].attr;
    v61 = attr;
    (attr)(v5, 0, 1, v6);
    v66 = v5;
    sub_100745BA4();
    if (qword_1009218D8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90);
    v18 = sub_10000D0FC(v17, qword_10093F200);
    v69 = v13;
    v19 = v13;
    v60 = v18;
    sub_100743464();

    [v14 setTextAlignment:v70];
    sub_100744B64();
    v55 = v11;
    v56 = v7;
    if (v20)
    {
      v21 = sub_100753064();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_100744B44();
    sub_1002E2144(v23);

    if (qword_1009218E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v12, qword_10093F230);
    v70 = v19;
    v24 = v19;
    v25 = v65;
    sub_100743464();

    v26 = *&v24[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v66;
    (v62)(v66, v25, v6);
    (v61)(v27, 0, 1, v6);
    sub_100745BA4();
    v69 = v24;
    v28 = v24;
    sub_100743464();

    [v26 setTextAlignment:v70];
    sub_100744B54();
    if (v29)
    {
      v30 = sub_100753064();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_100744BB4();
    sub_100744B94();
    v31 = sub_1007532D4();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_100753804(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v58 = v36;
    v59 = a1;
    v1 = *(v28 + v36);
    v57 = v6;
    v54[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_100754664();
    }

    else
    {
      v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &stru_1008F2000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_100754574();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_100754664();
    }

    else
    {
      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v6)
        {
          v41 = sub_100754574();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v58) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_100744BB4();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v66;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_100754664();
    a1 = v66;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_100754574();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v68 = v46;
      sub_10058C0D4(&v68, v28);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v47 = *(v28 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v48 = v65;
  v49 = v57;
  (v62)(a1, v65, v57);
  (v61)(a1, 0, 1, v49);
  sub_100745BA4();
  v67 = v28;
  v50 = v28;
  sub_100743464();

  [v47 setTextAlignment:v68];
  v51 = sub_10058B5A0(v59, v50);
  [v47 setAttributedText:v51];

  [v50 setNeedsLayout];
  v52 = v56->attr;
  (v52)(v48, v49);
  return (v52)(v55, v49);
}

uint64_t sub_1005895A4()
{
  v0 = sub_10074A614();
  sub_100039C50(v0, qword_100982658);
  sub_10000D0FC(v0, qword_100982658);
  return sub_10074A604();
}

uint64_t sub_100589678(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

uint64_t sub_10058971C()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10093F230);
  sub_10000D0FC(v7, qword_10093F230);
  if (qword_1009210B8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980F60);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210B0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980F48);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_1005898FC()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10093F248);
  sub_10000D0FC(v7, qword_10093F248);
  if (qword_1009210C8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980F90);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980F78);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

char *sub_100589ADC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView();
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_1009218D8;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v22, qword_10093F200);
  v23 = v18;
  sub_100743464();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_100743464();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_100743464();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_100589E9C()
{
  v1 = sub_10074A614();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1009218D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v1, qword_100982658);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_100745C84();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView();
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_1001588F4(v15);

  swift_beginAccess();

  sub_1001588F4(v16);

  return sub_10074A624();
}

void *sub_10058A3C4(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t))
{
  v115 = a3;
  v112 = a2;
  v98 = sub_10074A614();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v111 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10074A634();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074CD14();
  v114 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v94 - v9;
  __chkstk_darwin(v10);
  v99 = &v94 - v11;
  __chkstk_darwin(v12);
  v14 = &v94 - v13;
  v104 = sub_100750534();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v113 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  if (qword_1009218E8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v19, qword_10093F230);
  v126 = a1;
  sub_100743464();
  sub_100016C60(0, &qword_100923AB0);
  ObjectType = swift_getObjectType();
  v21 = [a1 traitCollection];
  v102 = v18;
  v121 = sub_100753C14();

  if (qword_1009218F0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v19, qword_10093F248);
  v126 = a1;
  sub_100743464();
  v22 = [a1 traitCollection];
  v95 = sub_100753C14();

  v23 = v115;
  v24 = sub_100744B44();
  sub_1002E36C0(v24, a1);

  v96 = sub_100750F34();
  swift_allocObject();
  v25 = sub_100750F04();
  sub_100744B44();
  sub_10074F3D4();
  sub_1007532D4();

  sub_100750EE4();
  v108 = ObjectType;
  v120 = sub_10058B510(v23, a1);
  v26 = sub_100744BB4();
  if (v26 >> 62)
  {
    v67 = v26;
    v27 = sub_100754664();
    v26 = v67;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v6;
  v110 = a1;
  v109 = v25;
  if (v27)
  {
    v28 = v26;
    v125[0] = _swiftEmptyArrayStorage;
    result = sub_10001E79C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v30 = 0;
    v31 = v125[0];
    v118 = (v28 & 0xC000000000000001);
    LODWORD(v117) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v32 = (v114 + 8);
    v119 = v28;
    v33 = v27;
    do
    {
      if (v118)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_100744B74();
      v34 = sub_10074F3F4();
      v127 = v34;
      v128 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature);
      v35 = sub_10000D134(&v126);
      (*(*(v34 - 8) + 104))(v35, v117, v34);
      v36 = v121;
      sub_10074FC74();
      sub_10000C620(&v126);
      sub_10074CD04();
      sub_10074CCE4();

      (*v32)(v14, v122);
      v125[0] = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_10001E79C((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      v39 = v127;
      v40 = v128;
      v41 = sub_10007271C(&v126, v127);
      v42 = __chkstk_darwin(v41);
      v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_10058BCBC(v38, v44, v125, v39, v40);
      sub_10000C620(&v126);
      v31 = v125[0];
    }

    while (v33 != v30);

    v46 = v114;
    v23 = v115;
  }

  else
  {

    v46 = v114;
  }

  v47 = sub_100744BB4();
  if (v47 >> 62)
  {
    v68 = v47;
    v48 = sub_100754664();
    v47 = v68;
    if (v48)
    {
LABEL_20:
      v49 = v47;
      v125[0] = _swiftEmptyArrayStorage;
      result = sub_10001E79C(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v118 = v14;
        v50 = 0;
        v51 = v125[0];
        v117 = v49 & 0xC000000000000001;
        v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v52 = (v46 + 8);
        v119 = v49;
        do
        {
          if (v117)
          {
            sub_100754574();
          }

          else
          {
          }

          sub_100744B84();
          v53 = sub_10074F3F4();
          v127 = v53;
          v128 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature);
          v54 = sub_10000D134(&v126);
          (*(*(v53 - 8) + 104))(v54, v116, v53);
          v55 = v121;
          sub_10074FC74();
          sub_10000C620(&v126);
          v56 = v118;
          sub_10074CD04();
          sub_10074CCE4();

          (*v52)(v56, v122);
          v125[0] = v51;
          v58 = *(v51 + 16);
          v57 = *(v51 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_10001E79C((v57 > 1), v58 + 1, 1);
          }

          ++v50;
          v59 = v127;
          v60 = v128;
          v61 = sub_10007271C(&v126, v127);
          v62 = __chkstk_darwin(v61);
          v64 = &v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v65 + 16))(v64, v62);
          sub_10058BCBC(v58, v64, v125, v59, v60);
          sub_10000C620(&v126);
          v51 = v125[0];
        }

        while (v48 != v50);

        v66 = v111;
        v23 = v115;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_20;
    }
  }

  v66 = v111;
LABEL_32:
  v117 = sub_10058B5A0(v23, v110);
  if (qword_1009218D0 != -1)
  {
    swift_once();
  }

  v69 = v98;
  v70 = sub_10000D0FC(v98, qword_100982658);
  (*(v97 + 16))(v66, v70, v69);
  sub_100744B64();
  v71 = sub_10074F3F4();
  v127 = v71;
  v119 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature);
  v128 = v119;
  v72 = sub_10000D134(&v126);
  v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v74 = *(*(v71 - 8) + 104);
  v74(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
  v75 = v95;
  sub_10074FC74();
  sub_10000C620(&v126);
  v76 = v99;
  v118 = v75;
  sub_10074CD04();
  sub_10074CCE4();
  v77 = *(v114 + 8);
  v78 = v76;
  v79 = v122;
  v77(v78, v122);
  v125[3] = v96;
  v125[4] = &protocol witness table for LayoutViewPlaceholder;
  v125[0] = v109;

  sub_100744B54();
  v114 = v80;
  v124[3] = v71;
  v124[4] = v119;
  v81 = sub_10000D134(v124);
  v116 = v73;
  v82 = v73;
  v83 = v77;
  v115 = v74;
  v74(v81, v82, v71);
  v84 = v121;
  sub_10074FC74();
  sub_10000C620(v124);
  v85 = v100;
  sub_10074CD04();
  sub_10074CCE4();
  v83(v85, v79);
  v86 = v117;
  if (!v117)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v123[3] = v71;
  v123[4] = v119;
  v87 = sub_10000D134(v123);
  v115(v87, v116, v71);
  v88 = v86;
  v89 = v84;
  sub_10074FC74();
  sub_10000C620(v123);
  v90 = v101;
  sub_10074CCD4();
  sub_10074CCE4();
  v83(v90, v122);
  v91 = v105;
  sub_10074A624();
  sub_10074A5E4();

  (*(v106 + 8))(v91, v107);
  v92 = *(v103 + 8);
  v93 = v104;
  v92(v113, v104);
  return (v92)(v102, v93);
}

uint64_t sub_10058B510(uint64_t a1, void *a2)
{
  sub_100744BB4();
  sub_100744B94();
  v3 = sub_1007532D4();

  if (v3)
  {
    v4 = [a2 traitCollection];
    v5 = sub_100753804();

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_10058B5A0(uint64_t a1, void *a2)
{
  v3 = sub_100741574();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100754724();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100744BA4();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = sub_1007537F4();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_1000D5C0C();
    sub_1007542F4();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = sub_100753064();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_1009210B8 != -1)
    {
      swift_once();
    }

    v22 = sub_100750534();
    v23 = sub_10000D0FC(v22, qword_100980F60);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_10000D134(v50);
    (*(v8 + 16))(v24, v10, v7);
    sub_100750B14();
    (*(v8 + 8))(v10, v7);
    sub_1007502D4();
    sub_100750564();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_100016C60(0, &unk_10093F2C0);
    isa = sub_100753294().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    sub_100741544();
    sub_1007414F4();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_100016C60(0, &qword_10093F2D0);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_100753064();

    type metadata accessor for Key(0);
    sub_10058C284(&qword_1009276F0, type metadata accessor for Key);
    v20 = sub_100752F34().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

uint64_t sub_10058BCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000D134(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100032CCC(&v12, v10 + 40 * a1 + 32);
}

id sub_10058BD54(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_100753804();

  if (qword_1009218E8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v16, qword_10093F230);
  v26 = a4;
  sub_100743464();
  if ((v15 | a3))
  {
    if (qword_1009218D8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90);
    v18 = qword_10093F200;
  }

  else
  {
    if (qword_1009218E0 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90);
    v18 = qword_10093F218;
  }

  sub_10000D0FC(v17, v18);
  v25 = a4;
  sub_100743464();
  v19 = v26;
  sub_100745C84();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_100745BA4();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_100753064();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_10058C0D4(uint64_t a1, void *a2)
{
  v3 = sub_100744B74();
  v5 = sub_10058BD54(v3, v4, 1, a2);

  v6 = sub_100744B84();
  v8 = sub_10058BD54(v6, v7, 1, a2);

  v9 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v10 = v5;
  sub_100753284();
  if (*((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  v11 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v12 = v8;
  sub_100753284();
  if (*((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  [a2 addSubview:v10];
  [a2 addSubview:v12];
}

uint64_t sub_10058C284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10058C2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v6 = v11[1];
  v7 = sub_1007537E4();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100747534();
    v8 = 0;
  }

  v9 = sub_100747564();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

double UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

uint64_t sub_10058C684()
{
  sub_1007544D4();
  v1 = sub_100753174();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    sub_100754854(1u);
    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }
}

uint64_t sub_10058C728(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(result + 56) != v1[7] || *(result + 64) != v1[8])
  {
    v5 = result;
    v6 = sub_100754754();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(result + 72);
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return 1;
  }

  v20 = sub_100754754();

  return v20 & 1;
}

uint64_t sub_10058C904()
{

  sub_1000164A8(*(v0 + 72));
}

uint64_t sub_10058C93C()
{
  sub_100016994(v0 + 16);

  sub_1000164A8(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_10058C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_100741494();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_10001B5AC(a3);

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  sub_1007544E4();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

id sub_10058CB30()
{
  v1 = sub_10000C518(&unk_100923960);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_100052F00(v4);
    }

    else
    {

      sub_1003C0E00(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_10058CDC4()
{
  v1 = sub_1007453C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = sub_100745374();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_1005900E0();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_10058D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10000C518(&qword_100929360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_100016B4C(a1, v12, &qword_100935130);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000C8CC(v12, &qword_100935130);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_10058EF24();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_100745374();
  (*(*(v23 - 8) + 24))(v3 + v22, v30, v23);
  swift_endAccess();
  v24 = sub_100745394();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v31, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v32;
  sub_100016B4C(v3 + v26, v32, &qword_10093F598);
  swift_beginAccess();
  sub_100593BF8(v9, v3 + v26);
  swift_endAccess();
  sub_100591E7C(v27);
  sub_10000C8CC(v27, &qword_10093F598);
  sub_10000C8CC(v9, &qword_10093F598);
  sub_10058EF24();
  return sub_100590CD4();
}

uint64_t sub_10058D4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v72 = &v58 - v4;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v58 - v9;
  __chkstk_darwin(v10);
  v65 = &v58 - v11;
  v12 = sub_100749184();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v58 - v15;
  v16 = sub_100750304();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BreakoutDetailsView.Config(0);
  v80 = v5;
  v81 = v20;
  v21 = *(a1 + *(v20 + 92));
  v68 = v6;
  v22 = v20;
  v23 = *(v20 + 40);
  if (v21)
  {
    v24 = *(v6 + 16);
    v79 = v6 + 16;
    v70 = v24;
    v24(v19, a1 + v23, v5);
    LODWORD(v69) = enum case for FontSource.useCase(_:);
    v64 = v17[13];
    v62 = v16;
    v64(v19);
    v63 = sub_10074B2B4();
    v96 = v63;
    v71 = sub_100594204(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension);
    v97 = v71;
    sub_10000D134(v95);
    v78 = v17 + 13;
    v61 = v21;
    sub_10074B2A4();
    v25 = v70;
    v70(v19, a1 + v22[13], v80);
    v26 = v22;
    v27 = v69;
    v28 = v64;
    (v64)(v19, v69, v16);
    v29 = v63;
    v93 = v63;
    v94 = v71;
    sub_10000D134(v92);
    v30 = v61;
    sub_10074B2A4();
    v25(v19, a1 + v26[9], v80);
    v31 = v62;
    v28(v19, v27, v62);
    v32 = v71;
    v90 = v29;
    v91 = v71;
    sub_10000D134(v89);
    v33 = v30;
    v34 = v80;
    sub_10074B2A4();
    v70(v19, a1 + v26[14], v34);
    v28(v19, v69, v31);
    v87 = v29;
    v88 = v32;
    sub_10000D134(v86);
    sub_10074B2A4();
  }

  else
  {
    v79 = a1;
    v35 = *(v6 + 16);
    v70 = (v6 + 16);
    v63 = v35;
    v35(v19, a1 + v23, v5);
    LODWORD(v71) = enum case for FontSource.useCase(_:);
    v36 = v17[13];
    v61 = v17 + 13;
    v37 = v16;
    v36(v19);
    v60 = sub_100750B04();
    v96 = v60;
    v97 = &protocol witness table for StaticDimension;
    sub_10000D134(v95);
    v93 = v16;
    v94 = &protocol witness table for FontSource;
    v38 = sub_10000D134(v92);
    v39 = v17[2];
    v69 = v17 + 2;
    v39(v38, v19, v37);
    v58 = v39;
    sub_100750B14();
    v40 = v17[1];
    v78 = v17 + 1;
    v64 = v40;
    (v40)(v19, v37);
    v41 = v63;
    v63(v19, v79 + v22[13], v80);
    v59 = v36;
    (v36)(v19, v71, v37);
    v42 = v60;
    v93 = v60;
    v94 = &protocol witness table for StaticDimension;
    sub_10000D134(v92);
    v90 = v37;
    v91 = &protocol witness table for FontSource;
    v43 = sub_10000D134(v89);
    v39(v43, v19, v37);
    sub_100750B14();
    (v64)(v19, v37);
    v41(v19, v79 + v22[9], v80);
    (v36)(v19, v71, v37);
    v90 = v42;
    v91 = &protocol witness table for StaticDimension;
    sub_10000D134(v89);
    v87 = v37;
    v88 = &protocol witness table for FontSource;
    v44 = sub_10000D134(v86);
    v45 = v58;
    v58(v44, v19, v37);
    sub_100750B14();
    v46 = v64;
    (v64)(v19, v37);
    v63(v19, v79 + v22[14], v80);
    a1 = v79;
    (v59)(v19, v71, v37);
    v87 = v60;
    v88 = &protocol witness table for StaticDimension;
    sub_10000D134(v86);
    v85[3] = v37;
    v85[4] = &protocol witness table for FontSource;
    v47 = sub_10000D134(v85);
    v45(v47, v19, v37);
    sub_100750B14();
    v46(v19, v37);
    v34 = v80;
  }

  v48 = v72;
  if ((*(a1 + v81[11] + 8) & 1) == 0)
  {
    sub_100016B4C(a1 + v81[12], v72, &unk_100928A40);
    v49 = v68;
    if ((*(v68 + 48))(v48, 1, v34) != 1)
    {
      v52 = v65;
      (*(v49 + 32))(v65, v48, v34);
      v53 = *(v49 + 16);
      v53(v66, a1 + v81[10], v34);
      v53(v67, v52, v34);
      v51 = v74;
      sub_100749174();
      (*(v49 + 8))(v52, v34);
      v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10000C8CC(v48, &unk_100928A40);
  }

  v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v51 = v74;
LABEL_9:
  v55 = v75;
  v54 = v76;
  (*(v75 + 104))(v51, *v50, v76);
  sub_10000C824(v95, v85);
  (*(v55 + 16))(v73, v51, v54);
  sub_10000C824(v92, &v84);
  sub_10000C824(v89, &v83);
  v56 = *(a1 + v81[15]);
  v82[8] = &type metadata for CGFloat;
  v82[9] = &protocol witness table for CGFloat;
  v82[5] = v56;
  sub_10000C824(v86, v82);
  sub_100749164();
  (*(v55 + 8))(v51, v54);
  sub_10000C620(v86);
  sub_10000C620(v89);
  sub_10000C620(v92);
  return sub_10000C620(v95);
}

uint64_t sub_10058DFA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&qword_10093F5A8);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_100743474();
}

char *sub_10058E048(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_100747744();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100752AC4();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_1007453C4();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_100745374();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_100745394();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  v28 = sub_10000C518(&qword_100929360);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_1009214C8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v14, qword_100981B90);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v110 = objc_allocWithZone(v108);
  *&v110[qword_100941490] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_100745C74();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_100745BA4();
  v45 = v43;
  sub_100745B84();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_100745BF4();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel] = v44;
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v51 = sub_10000D0FC(v40, qword_100981BF0);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_100941490] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_100745C74();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_100745BA4();
  sub_100745B84();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_100745BF4();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton();
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v69 = sub_10000D0FC(v40, qword_100981C08);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton] = sub_1007466B4();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_10058EF24();
  v74 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_100752A74();
  sub_10000C8CC(&v132, &unk_100923520);
  sub_10000C8CC(&v134, &unk_100923520);
  sub_100753C74();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_100752A74();
  sub_10000C8CC(&v132, &unk_100923520);
  sub_10000C8CC(&v134, &unk_100923520);
  sub_100753C74();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_100745C34();

  v84 = *&v70[v80];
  sub_100745C34();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_100747754();

  v96 = *&v70[v85];
  sub_100747784();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_100753064();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_10058EF24()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v103 = &v98 - v3;
  v4 = sub_100745394();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v98 - v7;
  __chkstk_darwin(v8);
  v100 = &v98 - v9;
  __chkstk_darwin(v10);
  v105 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v15 = sub_10000C518(&qword_100929360);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v107 = v1;
  sub_100743464();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_initWithTitle_style_target_action_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v104;
      if ((*(v104 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_10016D3F0();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v104;
      if ((*(v104 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_10016D3F0();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_initWithTitle_style_target_action_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v106 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v102 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v43, 1, v4))
    {
      v98 = v14;
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v1 + v43;
      v47 = v105;
      v45(v105, v46, v4);
      v48 = v100;
      v45(v100, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v105, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_10000D198();
        isa = sub_100753F24(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v105, v4);
        if (v51 != v52)
        {
          v53(v100, v4);
        }
      }

      v31 = v102;
      v14 = v98;
      v24 = &selRef_initWithTitle_style_target_action_;
    }
  }

  v54 = v41;
  [v106 setTextColor:isa];

  v105 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v104;
      (*(v104 + 16))(v58, v1 + v57, v4);
      v56 = sub_10016D5C8();
      v60 = v58;
      v24 = &selRef_initWithTitle_style_target_action_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v105 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v64, 1, v4))
    {
      v65 = v104;
      v66 = *(v104 + 16);
      v67 = v1 + v64;
      v68 = v99;
      v66(v99, v67, v4);
      v69 = v101;
      v66(v101, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v104) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_10000D198();
        v73 = v68;
        v63 = sub_100753F24(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v104)
        {
          v74(v101, v4);
        }
      }

      v31 = v102;
      v24 = &selRef_initWithTitle_style_target_action_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[109];
  v101 = v63;
  [v75 v77];
  v104 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = sub_100750534();
    v82 = *(v81 - 8);
    v83 = v103;
    (*(v82 + 16))(v103, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    sub_100745BA4();
  }

  v85 = *(v19 + 40);
  v86 = sub_100750534();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v103;
  v88(v103, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  sub_100745BA4();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  sub_100745BA4();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  sub_1007466A4();
  v91 = *(v104 + v102);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_100614BB4(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_100614BB4(v95);
  sub_100614BB4(v95);
  sub_1004093EC(v95);

  return sub_10024144C(v21);
}

double sub_10058FB5C()
{
  v1 = v0;
  v2 = sub_100745394();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093F5A0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10000C518(&qword_100929360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v33 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v32;
  (*(v14 + 16))(v16, v20, v13);
  v34 = v1;
  sub_100743464();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_100016B4C(v1 + v23, v7, &qword_10093F598);
  sub_100016B4C(v12, &v7[v24], &qword_10093F598);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v26 = v31;
    sub_100016B4C(v7, v31, &qword_10093F598);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v30;
      (*(v22 + 32))(v30, &v7[v24], v2);
      sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
      sub_100753014();
      v29 = *(v22 + 8);
      v29(v28, v2);
      sub_10000C8CC(v12, &qword_10093F598);
      v29(v26, v2);
      sub_10000C8CC(v7, &qword_10093F598);
      goto LABEL_7;
    }

    sub_10000C8CC(v12, &qword_10093F598);
    (*(v22 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_10000C8CC(v12, &qword_10093F598);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10000C8CC(v7, &qword_10093F5A0);
    goto LABEL_7;
  }

  sub_10000C8CC(v7, &qword_10093F598);
LABEL_7:
  sub_10024144C(v21);
  return 0.0;
}

id sub_1005900E0()
{
  v90 = sub_1007441C4();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10000C518(&qword_100929360);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  v85 = &v84 - v2;
  v3 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v3 - 8);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v5 - 8);
  v86 = &v84 - v6;
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v92 = &v84 - v8;
  v95 = sub_10074AB44();
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v84 - v11;
  v94 = sub_100750534();
  v97 = *(v94 - 8);
  __chkstk_darwin(v94);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007453C4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  v21 = *(v14 + 16);
  v22 = v0;
  v21(v19, &v0[v20], v13);
  sub_100594204(&qword_10093F5C8, &type metadata accessor for BreakoutDetails.Badge);
  v23 = sub_100753014();
  v24 = v19;
  v25 = *(v14 + 8);
  result = v25(v24, v13);
  if ((v23 & 1) == 0)
  {
    v21(v16, &v22[v20], v13);
    v27 = (*(v14 + 88))(v16, v13);
    v28 = v22;
    if (v27 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v91 = v22;
      (*(v14 + 96))(v16, v13);
      v29 = v16[1];
      v89 = *v16;
      v90 = v29;
      if (qword_1009214C0 != -1)
      {
        swift_once();
      }

      v30 = v94;
      v31 = sub_10000D0FC(v94, qword_100981B78);
      v32 = v96;
      v33 = v97;
      v34 = *(v97 + 16);
      v34(v96, v31, v30);
      v35 = v34;
      v88 = v34;
      v36 = enum case for DirectionalTextAlignment.none(_:);
      v87 = *(v99 + 104);
      v37 = v95;
      (v87)(v98, enum case for DirectionalTextAlignment.none(_:), v95);
      v38 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
      *&v38[qword_100941490] = 0;
      v39 = v92;
      v35(v92, v32, v30);
      v40 = *(v33 + 56);
      v40(v39, 0, 1, v30);
      v41 = v93;
      (v87)(v93, v36, v37);
      v42 = sub_100745C74();
      v43 = v96;
      v88(v39, v96, v30);
      v40(v39, 0, 1, v30);
      v44 = v42;
      sub_100745BA4();
      sub_100745B84();
      [v44 setNumberOfLines:1];
      v46 = v98;
      v45 = v99;
      (*(v99 + 16))(v41, v98, v37);
      sub_100745BF4();
      (*(v45 + 8))(v46, v37);
      (*(v97 + 8))(v43, v30);
      sub_100745C34();
      v47 = sub_100753064();

      [v44 setText:v47];

      v48 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v28 = v91;
      v49 = *&v91[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      v50 = v44;
      if (v49)
      {
        [v49 removeFromSuperview];
        v51 = *&v28[v48];
      }

      else
      {
        v51 = 0;
      }

      *&v28[v48] = v44;
      v73 = v44;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
      v74 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
      v75 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
      if (v75)
      {
        [v75 removeFromSuperview];
        v76 = *&v28[v74];
      }

      else
      {
        v76 = 0;
      }

      *&v28[v74] = 0;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else if (v27 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v52 = enum case for Wordmark.arcade(_:);
      v53 = sub_10074F7B4();
      v54 = *(v53 - 8);
      v55 = v86;
      (*(v54 + 104))(v86, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      v56 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
      swift_beginAccess();
      v57 = v87;
      v58 = &v28[v56];
      v59 = v85;
      v60 = v88;
      (*(v87 + 16))(v85, v58, v88);
      v100 = v28;
      v61 = v84;
      sub_100743464();
      (*(v57 + 8))(v59, v60);
      v62 = *(v61 + 32);
      sub_10024144C(v61);
      (*(v89 + 104))(v91, enum case for WordmarkView.Alignment.center(_:), v90);
      v101 = &type metadata for CGFloat;
      v102 = &protocol witness table for CGFloat;
      v100 = v62;
      v63 = objc_allocWithZone(sub_1007441E4());
      v64 = sub_1007441B4();
      v65 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v66 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      if (v66)
      {
        [v66 removeFromSuperview];
        v67 = *&v28[v65];
      }

      else
      {
        v67 = 0;
      }

      *&v28[v65] = 0;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
      v80 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
      v81 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
      v82 = v64;
      if (v81)
      {
        [v81 removeFromSuperview];
        v81 = *&v28[v80];
      }

      *&v28[v80] = v64;
      v83 = v64;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v68 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v69 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      if (v27 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
        v70 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
        v71 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
        if (v71)
        {
          [v71 removeFromSuperview];
          v72 = *&v28[v70];
        }

        else
        {
          v72 = 0;
        }

        *&v28[v70] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
        v77 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
        v78 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
        if (v78)
        {
          [v78 removeFromSuperview];
          v79 = *&v22[v77];
        }

        else
        {
          v79 = 0;
        }

        *&v22[v77] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
        v25(v16, v13);
      }
    }

    sub_10058EF24();
    sub_100590CD4();
    return [v28 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100590CD4()
{
  v1 = v0;
  v2 = sub_100745394();
  v103 = *(v2 - 8);
  __chkstk_darwin(v2);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10000C518(&qword_10093F5A0);
  __chkstk_darwin(v102);
  v5 = &v95 - v4;
  v6 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v6 - 8);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v95 - v9;
  v99 = sub_1007441C4();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100745374();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  __chkstk_darwin(v16);
  v110 = &v95 - v17;
  v18 = sub_10000C518(&qword_100929360);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - v20;
  v107 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v107);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v24], v18);
  v114 = v1;
  sub_100743464();
  (*(v19 + 8))(v21, v18);
  v25 = [v1 traitCollection];
  LOBYTE(v18) = sub_100753804();

  v106 = v23;
  if ((v18 & 1) != 0 && v23[*(v107 + 96)] == 1)
  {
    v26 = v109;
    (*(v111 + 104))(v110, enum case for BreakoutDetails.TextAlignment.leading(_:), v109);
  }

  else
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v26 = v109;
    (*(v111 + 16))(v110, &v1[v27], v109);
  }

  v28 = sub_100745364();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v30)
  {
    [v30 setTextAlignment:v28];
  }

  v104 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  [v104 setTextAlignment:v28];
  v108 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  [v108 setTextAlignment:v28];
  v101 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = v111;
    (*(v111 + 16))(v15, v110, v26);
    v33 = (*(v32 + 88))(v15, v26);
    if (v33 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
    }

    else if (v33 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.trailing(_:), v99);
    }

    else
    {
      v34 = *(v98 + 104);
      if (v33 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v34(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
        v94 = *(v111 + 8);
        v35 = v31;
        v94(v15, v26);
        goto LABEL_15;
      }

      v34(v100, enum case for WordmarkView.Alignment.center(_:), v99);
    }

    v35 = v31;
LABEL_15:
    sub_1007441D4();
  }

  v36 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v37 = v103;
  (*(v103 + 104))(v10, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v37 + 56))(v10, 0, 1, v2);
  v38 = *(v102 + 48);
  sub_100016B4C(&v1[v36], v5, &qword_10093F598);
  sub_100016B4C(v10, &v5[v38], &qword_10093F598);
  v39 = *(v37 + 48);
  v40 = &stru_1008F2000;
  if (v39(v5, 1, v2) == 1)
  {
    sub_10000C8CC(v10, &qword_10093F598);
    v41 = &selRef_initWithTitle_style_target_action_;
    if (v39(&v5[v38], 1, v2) == 1)
    {
      sub_10000C8CC(v5, &qword_10093F598);
      v42 = v105;
      v43 = v107;
LABEL_28:
      v55 = *&v1[v101];
      if (v55)
      {
        v56 = [v55 v40[67].name];
        [v56 setCompositingFilter:kCAFilterPlusL];
      }

      v57 = *&v1[v29];
      if (v57)
      {
        v58 = [v57 v40[67].name];
        v59 = kCAFilterPlusL;
        [v58 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v59 = kCAFilterPlusL;
      }

      v60 = [v108 v40[67].name];
      [v60 setCompositingFilter:v59];

      v61 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
      v49 = [v61 v40[67].name];

      [v49 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v44 = v97;
  sub_100016B4C(v5, v97, &qword_10093F598);
  if (v39(&v5[v38], 1, v2) == 1)
  {
    sub_10000C8CC(v10, &qword_10093F598);
    (*(v37 + 8))(v44, v2);
    v41 = &selRef_initWithTitle_style_target_action_;
    v40 = &stru_1008F2000;
LABEL_21:
    sub_10000C8CC(v5, &qword_10093F5A0);
    v42 = v105;
    v43 = v107;
    goto LABEL_22;
  }

  v50 = v96;
  (*(v37 + 32))(v96, &v5[v38], v2);
  sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v102) = sub_100753014();
  v51 = v29;
  v52 = v44;
  v53 = *(v37 + 8);
  v53(v50, v2);
  sub_10000C8CC(v10, &qword_10093F598);
  v54 = v52;
  v29 = v51;
  v53(v54, v2);
  sub_10000C8CC(v5, &qword_10093F598);
  v42 = v105;
  v41 = &selRef_initWithTitle_style_target_action_;
  v43 = v107;
  v40 = &stru_1008F2000;
  if (v102)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = *&v1[v101];
  if (v45)
  {
    v46 = [v45 v40[67].name];
    [v46 setCompositingFilter:0];
  }

  v47 = *&v1[v29];
  if (v47)
  {
    v48 = [v47 v40[67].name];
    [v48 setCompositingFilter:0];
  }

  v49 = [v108 v40[67].name];
  [v49 setCompositingFilter:0];
LABEL_34:

  v62 = v106;
  v63 = &v106[*(v43 + 84)];
  v64 = v109;
  if (v63[8])
  {
    v65 = [v1 v41[129]];
    v66 = sub_1007537D4();

    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    [v104 setNumberOfLines:v67];
  }

  else
  {
    [v104 setNumberOfLines:*v63];
  }

  v68 = v62 + *(v43 + 88);
  if (*(v68 + 8))
  {
    v69 = [v1 v41[129]];
    v70 = sub_1007537D4();

    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    [v108 setNumberOfLines:v71];
  }

  else
  {
    [v108 setNumberOfLines:*v68];
  }

  v72 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v73 = v111;
  (*(v111 + 16))(v42, &v1[v72], v64);
  v74 = (*(v73 + 88))(v42, v64);
  if (v74 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_1009218F8 != -1)
    {
      swift_once();
    }

    v75 = sub_10000C518(&qword_10093F5A8);
    v76 = qword_10093F3F0;
LABEL_54:
    sub_10000D0FC(v75, v76);
    v112 = v1;
    v77 = v1;
    sub_100743464();

    v78 = v113;
    goto LABEL_55;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_100921900 != -1)
    {
      swift_once();
    }

    v75 = sub_10000C518(&qword_10093F5A8);
    v76 = qword_10093F408;
    goto LABEL_54;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v78 = 0;
  }

  else
  {
    if (qword_1009218F8 != -1)
    {
      swift_once();
    }

    v91 = sub_10000C518(&qword_10093F5A8);
    sub_10000D0FC(v91, qword_10093F3F0);
    v112 = v1;
    v92 = v1;
    sub_100743464();

    v93 = v113;
    (*(v111 + 8))(v42, v64);
    v78 = v93;
  }

LABEL_55:
  v79 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  [v79 setContentHorizontalAlignment:v78];
  v80 = [v79 titleLabel];
  if (!v80)
  {
    goto LABEL_63;
  }

  v81 = v80;
  v82 = sub_100753F44();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = [v1 v41[129]];
    v87 = sub_1007537F4();

    if (v87)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = 2.0;
    }

    [v79 setImageEdgeInsets:{0.0, v88}];
    v89 = sub_10056003C(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v79 setImage:v89 forState:0];
  }

  else
  {
LABEL_63:
    [v79 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v79 setImage:0 forState:0];
  }

  sub_100592C70();
  (*(v111 + 8))(v110, v64);
  return sub_10024144C(v62);
}

id sub_100591C34(void *a1)
{
  v3 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_100016B4C(&v1[v11], v9, &qword_10093F598);
    v12 = sub_100745394();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_100016B4C(v9, v5, &qword_10093F598);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10000C8CC(v9, &qword_10093F598);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100591E7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100745394();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10000C518(&qword_10093F5A0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v42 = v18;
  sub_100016B4C(&v2[v18], v17, &qword_10093F598);
  sub_100016B4C(a1, &v17[v19], &qword_10093F598);
  v20 = v5;
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      return sub_10000C8CC(v17, &qword_10093F598);
    }

    goto LABEL_6;
  }

  sub_100016B4C(v17, v13, &qword_10093F598);
  if (v21(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_10000C8CC(v17, &qword_10093F5A0);
    goto LABEL_7;
  }

  v30 = v40;
  (*(v5 + 32))(v40, &v17[v19], v4);
  sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v39) = sub_100753014();
  v31 = *(v5 + 8);
  v31(v30, v4);
  v31(v13, v4);
  result = sub_10000C8CC(v17, &qword_10093F598);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    v39 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
    [v39 removeFromSuperview];
    v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
    if (v23)
    {
      [v23 removeFromSuperview];
    }

    v24 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
    v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
    if (v25)
    {
      [v25 removeFromSuperview];
    }

    v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
    [v26 removeFromSuperview];
    v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
    [v27 removeFromSuperview];
    v40 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
    [v40 removeFromSuperview];
    v17 = v43;
    sub_100016B4C(&v2[v42], v43, &qword_10093F598);
    if (v21(v17, 1, v4) != 1)
    {
      v28 = v41;
      sub_100016B4C(v17, v41, &qword_10093F598);
      if ((*(v20 + 88))(v28, v4) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v29 = v39;
        [v2 addSubview:v39];
        if (*&v2[v22])
        {
          [v2 addSubview:?];
        }

        else
        {
          v33 = *&v2[v24];
          if (v33)
          {
            v34 = v33;
            v35 = [v29 contentView];
            [v35 addSubview:v34];
          }
        }

        v36 = [v29 contentView];
        [v36 addSubview:v26];

        v37 = [v29 contentView];
        [v37 addSubview:v27];

        v38 = [v29 contentView];
        [v38 addSubview:v40];

        return sub_10000C8CC(v17, &qword_10093F598);
      }

      (*(v20 + 8))(v28, v4);
    }

    if (*&v2[v22] || *&v2[v24])
    {
      [v2 addSubview:?];
    }

    [v2 addSubview:v26];
    [v2 addSubview:v27];
    [v2 addSubview:v40];
    return sub_10000C8CC(v17, &qword_10093F598);
  }

  return result;
}

uint64_t sub_100592590()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v52 = sub_100750354();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_10000C518(&qword_100929360);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749194();
  __chkstk_darwin(v14 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = sub_1007491B4();
  v17 = *(v49[0] - 8);
  *&v18 = __chkstk_darwin(v49[0]).n128_u64[0];
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74.receiver = v1;
  v74.super_class = ObjectType;
  v49[1] = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v71 = v1;
  v22 = v1;
  sub_100743464();
  (*(v8 + 8))(v10, v7);

  sub_10058FB5C();
  sub_10058D4DC(v13, v16);
  sub_10024144C(v13);
  v23 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v24 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v72 = v24;
  v73 = &protocol witness table for UILabel;
  v70 = &protocol witness table for UILabel;
  v71 = v23;
  v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v69 = v24;
  v68 = v25;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v28 = 0;
    v24 = 0;
    v27 = 0;
    v65 = 0;
    v64 = 0;
  }

  v63 = v28;
  v66 = v24;
  v67 = v27;
  v29 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v29)
  {
    v30 = sub_1007441E4();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v60 = 0;
    v59 = 0;
  }

  v58 = v29;
  v61 = v30;
  v62 = v31;
  v32 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  v33 = v26;
  v34 = v29;
  v35 = v23;
  v36 = v25;
  v37 = [v32 titleForState:0];
  if (v37)
  {

    v38 = type metadata accessor for CappedSizeDynamicTypeButton();
    v37 = v32;
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v55 = 0;
    v54 = 0;
  }

  v53 = v37;
  v56 = v38;
  v57 = v39;
  sub_1007491A4();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016B4C(&v22[v40], v6, &qword_10093F598);
  v41 = sub_100745394();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v6, 1, v41) == 1)
  {
    sub_10000C8CC(v6, &qword_10093F598);
LABEL_14:
    sub_1007477B4();
    v47 = v50;
    goto LABEL_15;
  }

  v43 = (*(v42 + 88))(v6, v41);
  v44 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v42 + 8))(v6, v41);
  if (v43 != v44)
  {
    goto LABEL_14;
  }

  v45 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
  sub_1007477B4();
  [v45 setFrame:?];
  v46 = [v45 contentView];
  [v46 bounds];

  v47 = v50;
LABEL_15:
  sub_100749144();
  (*(v51 + 8))(v47, v52);
  sub_100592C70();
  return (*(v17 + 8))(v20, v49[0]);
}

void sub_100592C70()
{
  v1 = v0;
  v2 = sub_100740E74();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel);
  v8 = [v7 font];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v7 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100753094();
    v14 = v13;

    v47 = v12;
    v48 = v14;

    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    LOBYTE(v11) = v15;
    (*(v3 + 8))(v6, v2);

    if (v11)
    {

      v16 = 0;
    }

    else
    {
      [v9 lineHeight];
      v18 = v17;

      v19 = ceil(v18 * 1.3);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v19 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v19;
    }
  }

  else
  {

    v16 = 0;
  }

  sub_1003DD238(v16);
  v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel);
  v21 = [v20 font];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v21;
  v23 = [v20 text];
  if (!v23)
  {

    v29 = 0;
    goto LABEL_19;
  }

  v24 = v23;
  v25 = sub_100753094();
  v27 = v26;

  v47 = v25;
  v48 = v27;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  LOBYTE(v24) = v28;
  (*(v3 + 8))(v6, v2);

  if (v24)
  {

    v29 = 0;
    goto LABEL_19;
  }

  [v22 lineHeight];
  v31 = v30;

  v32 = ceil(v31 * 1.3);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v32;
LABEL_19:
  sub_1003DD238(v29);
  v33 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v33)
  {
    return;
  }

  v34 = v33;
  v35 = [v33 font];
  if (!v35)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v34 text];
  if (!v37)
  {

    goto LABEL_25;
  }

  v38 = v37;
  v39 = sub_100753094();
  v41 = v40;

  v47 = v39;
  v48 = v41;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  LOBYTE(v38) = v42;
  (*(v3 + 8))(v6, v2);

  if ((v38 & 1) == 0)
  {
    [v36 lineHeight];
    v45 = v44;

    v46 = ceil(v45 * 1.3);
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v43 = v46;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v43 = 0;
LABEL_30:
  sub_1003DD238(v43);
}

void sub_10059353C()
{
  sub_1007453C4();
  if (v0 <= 0x3F)
  {
    sub_1005936C0();
    if (v1 <= 0x3F)
    {
      sub_100745374();
      if (v2 <= 0x3F)
      {
        sub_100593BA4(319, &unk_10093F490, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1005936C0()
{
  if (!qword_10093F480)
  {
    sub_10000C724(&unk_100923AE0);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v0 = sub_100743554();
    if (!v1)
    {
      atomic_store(v0, &qword_10093F480);
    }
  }
}

uint64_t sub_100593768(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100750534();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_10000C518(&unk_100928A40);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1005938B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_100750534();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C518(&unk_100928A40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1005939E8()
{
  sub_100593BA4(319, qword_1009288D0, sub_10000D198);
  if (v0 <= 0x3F)
  {
    sub_100750534();
    if (v1 <= 0x3F)
    {
      sub_100593B54();
      if (v2 <= 0x3F)
      {
        sub_100593BA4(319, &qword_10093F510, &type metadata accessor for FontUseCase);
        if (v3 <= 0x3F)
        {
          sub_100593BA4(319, &unk_10093F518, type metadata accessor for UIContentSizeCategory);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100593B54()
{
  if (!qword_10093F508)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10093F508);
    }
  }
}

void sub_100593BA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100593BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093F598);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100593C68(uint64_t a1, char *a2)
{
  v46 = a1;
  v3 = sub_10000C518(&qword_10093F598);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_10000C518(&qword_100929360);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100749194();
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1007491B4();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a2[v19], v6);
  v65 = a2;
  v20 = a2;
  sub_100743464();
  (*(v7 + 8))(v9, v6);

  sub_10058FB5C();
  sub_10058D4DC(v12, v15);
  sub_10024144C(v12);
  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v22 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v24)
  {
    v25 = &protocol witness table for UILabel;
    v26 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v25 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v26;
  v60 = v22;
  v61 = v25;
  v27 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v27)
  {
    v28 = sub_1007441E4();
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v54 = 0;
    v53 = 0;
  }

  v52 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  v31 = v24;
  v32 = v27;
  v33 = v21;
  v34 = v23;
  v35 = [v30 titleForState:0];
  if (v35)
  {

    v36 = type metadata accessor for CappedSizeDynamicTypeButton();
    v35 = v30;
    v37 = &protocol witness table for UIView;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v49 = 0;
    v48 = 0;
  }

  v47 = v35;
  v50 = v36;
  v51 = v37;
  sub_1007491A4();
  sub_100749134();
  v39 = v38;
  (*(v16 + 8))(v18, v45);
  v40 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016B4C(&v20[v40], v5, &qword_10093F598);
  v41 = sub_100745394();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v5, 1, v41) == 1)
  {
    sub_10000C8CC(v5, &qword_10093F598);
  }

  else
  {
    (*(v42 + 88))(v5, v41);
    (*(v42 + 8))(v5, v41);
  }

  return v39;
}

uint64_t sub_100594204(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10059424C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_1007453C4();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_100745374();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_100745394();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005943C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v143 = a3;
  v11 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v11 - 8);
  v130 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v120 - v14;
  v15 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v15 - 8);
  v128 = &v120 - v16;
  v17 = sub_100744864();
  __chkstk_darwin(v17 - 8);
  v127 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v120 - v20;
  v21 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v21 - 8);
  v125 = &v120 - v22;
  v123 = sub_100744894();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_100747D94();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v142 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100749A94();
  v140 = *(v25 - 8);
  v141 = v25;
  __chkstk_darwin(v25);
  v139 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10074D544();
  v135 = *(v27 - 8);
  v136 = v27;
  __chkstk_darwin(v27);
  v134 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074D574();
  v137 = *(v29 - 8);
  v138 = v29;
  __chkstk_darwin(v29);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v32 - 8);
  v34 = &v120 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v120 - v39);
  v41 = sub_10000C518(&qword_100929360);
  v145 = *(v41 - 8);
  v146 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v144 = &v120 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v147 = a1;
  sub_100746A04();
  v45 = sub_1007453B4();

  v133 = a4;
  if (v45)
  {
    if (qword_100921BA0 != -1)
    {
      swift_once();
    }

    v46 = sub_10000D0FC(v35, qword_100982BC0);
    sub_100121090(v46, v40);
    v47 = *v40;
    v48 = v45;

    *v40 = v45;
    sub_100121090(v40, v37);
    sub_10000C518(&unk_100923AE0);
    v49 = v144;
    sub_1007434A4();

    sub_10024144C(v40);
  }

  else
  {
    if (qword_100921BA0 != -1)
    {
      swift_once();
    }

    v50 = sub_10000D0FC(v35, qword_100982BC0);
    sub_100121090(v50, v40);
    sub_10000C518(&unk_100923AE0);
    v49 = v144;
    sub_1007434A4();
  }

  v51 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  v52 = sub_100746A04();
  v53 = v145;
  v54 = v146;
  (*(v145 + 16))(v34, v49, v146);
  (*(v53 + 56))(v34, 0, 1, v54);
  v121 = v51;
  sub_10013C000(v52, v34, v143);

  sub_10000C8CC(v34, &qword_100935130);
  sub_1007469D4();
  v55 = v134;
  sub_10074D554();
  v56 = v138;
  v57 = *(v137 + 8);
  v57(v31, v138);
  v58 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v59 = v135;
  v60 = &v7[v58];
  v61 = v136;
  (*(v135 + 24))(v60, v55, v136);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v59 + 8))(v55, v61);
  v62 = v139;
  sub_100749A34();
  sub_100596534(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v63 = v141;
  v64 = sub_100754324();
  (*(v140 + 8))(v62, v63);
  sub_1007469D4();
  v65 = sub_10074D564();
  v57(v31, v56);
  v66 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v64 | v65) & 1) == 0;
  v67 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
  if (((v64 | v65) & 1) == v66)
  {
    if ((v64 | v65))
    {
      v68 = [v7 contentView];
      [v68 insertSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v69 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v70 = v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v64 & 1;
  if ((v64 & 1) != v70)
  {
    v71 = 0.0;
    if (v64)
    {
      *&v71 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v71];
    [v69 setNeedsDisplay];
  }

  v72 = v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v65 & 1;
  if ((v65 & 1) != v72)
  {
    v73 = 0.0;
    if (v65)
    {
      v73 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v73];
    [v69 setNeedsDisplay];
  }

  v74 = sub_100746A14();
  v76 = v75;
  if (v75)
  {
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    v78 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v79 = v77 == 0;
    v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v79;
    if (v79 == v78)
    {
      goto LABEL_26;
    }

    if (v77)
    {
      v80 = [v7 contentView];
      [v80 insertSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v121];

LABEL_26:
      v81 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v83 = sub_100753064();

      goto LABEL_31;
    }
  }

  else
  {
    v82 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v82 == 1)
    {
      v83 = 0;
      v81 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v81 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v76)
  {
    goto LABEL_30;
  }

  v83 = 0;
LABEL_31:
  [v81 setText:v83];

  sub_1006B21C4();
  if (sub_1007469E4())
  {
    (*(v122 + 104))(v124, enum case for VideoFillMode.scaleAspectFill(_:), v123);
    sub_10074EC14();
    sub_10074F2A4();
    v84 = v125;
    sub_100750504();

    v85 = sub_1007504F4();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v86 = v148[0];
    sub_10074EB94();
    v87 = v128;
    sub_10074EC24();
    v88 = sub_100741264();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v141 = v7;
    v89 = v129;
    sub_10074EBE4();
    v90 = v130;
    sub_10074EBD4();
    v91 = type metadata accessor for VideoView();
    sub_100596534(&qword_1009230E0, type metadata accessor for VideoView);
    v140 = v91;
    v143 = v86;
    v92 = sub_1007464A4();
    sub_10000C8CC(v90, &unk_1009281C0);
    v7 = v141;
    sub_10000C8CC(v89, &unk_1009281C0);
    v93 = v87;
    v67 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
    sub_10000C8CC(v93, &unk_100923970);
    sub_10000C8CC(v148, &unk_1009276E0);
    v94 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v95 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v96 = *(v94 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    if (v92)
    {
      v97 = v92;
      v98 = [v97 superview];
      if (v98)
      {
        v99 = v98;
        sub_100016C60(0, &qword_100922300);
        v100 = v96;
        v101 = sub_100753FC4();

        v67 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
        if (v101)
        {
          [v97 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v106 = *&v96[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v96[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v92;
    v107 = v92;
    sub_10057A514(v106);

    v108 = *(*(v94 + v95) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v108 && (v109 = swift_dynamicCastClass()) != 0)
    {
      v110 = v109;
      v111 = v108;
      [v110 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v131 + 8))(v142, v132);
  }

  else if (sub_1007469F4())
  {

    v102 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
    v103 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v104 = *(v103 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    *(v103 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v102;
    v105 = v102;
    sub_10057A514(v104);

    sub_1005791C8();
  }

  v112 = sub_1007469C4();
  v113 = v144;
  if (!v112)
  {
    v112 = [objc_opt_self() clearColor];
  }

  v114 = v112;
  v115 = *&v7[v67[31]];
  v116 = type metadata accessor for MediaView();
  v149.receiver = v115;
  v149.super_class = v116;
  objc_msgSendSuper2(&v149, "setBackgroundColor:", v114);
  [*(*&v115[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v114];
  v117 = *&v115[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v117)
  {
    v118 = v117;
    [v118 setBackgroundColor:v114];
  }

  [v7 setNeedsLayout];
  return (*(v145 + 8))(v113, v146);
}

uint64_t sub_1005954DC()
{
  result = sub_1007469B4();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100595518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10074D544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A534();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v6, v12);
  sub_1006B1AD0(v9, a5, v14);
  (*(v7 + 8))(v9, v6);
  sub_10074A554();
  sub_100596534(&unk_10093F640, &type metadata accessor for LargeHeroBreakoutLayout);
  sub_100750D34();
  (*(v11 + 8))(v14, v10);
  v15 = [objc_opt_self() fractionalWidthDimension:1.0];
  v16 = sub_100749A04();

  return v16;
}

double sub_1005957F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = sub_10074D544();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10074D574();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A534();
  __chkstk_darwin(v10 - 8);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074A554();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10074CD14();
  v13 = *(v32 - 8);
  *&v14 = __chkstk_darwin(v32).n128_u64[0];
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a4;
  v17 = [a4 traitCollection];
  v18 = sub_100750F34();
  swift_allocObject();
  v19 = sub_100750F14();
  v35 = a1;
  sub_100746A14();
  sub_100016C60(0, &qword_100923AB0);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  sub_10000D0FC(v20, qword_100981B48);
  sub_100753C14();
  v21 = sub_10074F3F4();
  v31 = v17;
  v22 = v21;
  v50[3] = v21;
  v50[4] = sub_100596534(&qword_10092AC70, &type metadata accessor for Feature);
  v23 = sub_10000D134(v50);
  (*(*(v22 - 8) + 104))(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v22);
  sub_10074FC74();
  sub_10000C620(v50);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v13 + 8))(v16, v32);
  sub_1007469D4();
  sub_10074D554();
  (*(v33 + 8))(v9, v34);
  sub_1006B1AD0(v7, v42, v36);
  (*(v37 + 8))(v7, v39);
  swift_allocObject();
  v24 = sub_100750F14();
  v48 = v18;
  v49 = &protocol witness table for LayoutViewPlaceholder;
  v47 = v24;
  sub_10000C824(v50, v46);
  v44 = v18;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v19;

  v25 = v38;
  sub_10074A544();
  sub_100596534(&unk_1009332D8, &type metadata accessor for LargeHeroBreakoutLayout);
  v26 = v41;
  sub_100750404();
  v28 = v27;

  (*(v40 + 8))(v25, v26);
  sub_10000C620(v50);
  return v28;
}

uint64_t sub_100595E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v10 = sub_100747D94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007504F4();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v37);
  sub_10000C518(&unk_100923100);
  sub_100746A24();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v18 = v36;
    v19 = sub_1007469E4();
    if (v19)
    {
      v33 = v3;
      v20 = *(*(*&v3[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v20 && (v32[4] = v19, v21 = type metadata accessor for VideoView(), (v22 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v21;
        v32[3] = v18;
        v23 = qword_100982288;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v32[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        sub_100747CE4();
        (*(v11 + 8))(v13, v10);
        v27 = v35;
        if ((*(v35 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v16, v9, v14);
          [v33 bounds];
          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          sub_100596534(&unk_100923110, type metadata accessor for VideoView);
          sub_100744204();

          return (*(v27 + 8))(v16, v14);
        }

        sub_10000C8CC(v9, &unk_1009281D0);
      }

      else
      {
      }

      v3 = v33;
    }

    if (sub_1007469F4())
    {
      [v3 bounds];
      sub_10074F374();
      v28 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView;
      v29 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
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

      v30 = *&v3[v28];
      sub_1007433C4();
      sub_100596534(&qword_100925570, &type metadata accessor for ArtworkView);
      v31 = v30;
      sub_100744204();
    }
  }

  return result;
}

void sub_1005963BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView);
  sub_1007433C4();
  sub_100596534(&qword_100925570, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100744274();

  v3 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v3)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_100596534(&unk_100923110, type metadata accessor for VideoView);
      v4 = v3;
      sub_100744274();
    }
  }
}

uint64_t sub_100596534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059657C(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = sub_10074AFA4();
  result = sub_10074AFA4();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_10059667C()
{
  sub_1000164A8(*(v0 + 32));

  return swift_deallocClassInstance();
}

double sub_1005966E0()
{
  v0 = sub_100743B54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093F738);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0.3;
  v9 = 0x3FA999999999999ALL;
  (*(v1 + 104))(v3, enum case for TimingCurve.linear(_:), v0);
  sub_100743E74();
  sub_100743E64();
  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_1005968BC(void *a1)
{
  sub_10059A2A8(a1);
}

void sub_10059692C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074E5E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074E644();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E654();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = sub_1007537D4();

    if (v14)
    {
      v15 = sub_10074E5D4();
      if (!v15)
      {
        return;
      }

LABEL_27:

      sub_10074E604();
      sub_100596E6C(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = sub_10074E634();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      p_info = _TtC22SubscribePageExtension18ActionDebugSetting.info;
      v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView);
          v21 = v19;
          v22 = [v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_100016C60(0, &qword_100922300);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = sub_100753FC4();
            a1 = v36;
            LODWORD(v35) = v26;

            p_info = (_TtC22SubscribePageExtension18ActionDebugSetting + 32);
            if (v35)
            {
              [v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = p_info;
      v28 = p_info[418];
      v29 = *(&v28->flags + v17);
      *(&v28->flags + v17) = v20;
      v30 = v20;
      sub_10057A514(v29);

      if (v20)
      {
        *&v30[qword_10093CB48 + 8] = &off_10087EBB0;
        swift_unknownObjectWeakAssign();
      }

      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v31 = v40;
      v32 = *(&v27[418]->flags + *(v38 + v37));
      if (v32)
      {
        type metadata accessor for VideoView();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_10059A3B4(&qword_10093F7B8, type metadata accessor for UberHeaderView);
      sub_10074B164();

      if (!sub_10074E624())
      {

        return;
      }

      v15 = sub_10074EC14();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = sub_10074E5C4();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

id sub_100596E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1007504F4();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074E5E4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v67.origin.x = v20;
    v67.origin.y = v22;
    v67.size.width = v24;
    v67.size.height = v26;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    Height = 0.0;
  }

  v61 = a1;
  v28 = sub_10074F1E4();
  v29 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v66.receiver = v29;
  v66.super_class = v30;
  objc_msgSendSuper2(&v66, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  result = [v4 view];
  if (result)
  {
    v34 = result;
    [result bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v68.origin.x = v36;
    v68.origin.y = v38;
    v68.size.width = v40;
    v68.size.height = v42;
    v43 = CGRectGetHeight(v68);
    v44 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset);
    result = [v4 view];
    if (result)
    {
      v45 = result;
      *&v46 = v43 - Height - v44;
      [result bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v69.origin.x = v48;
      v69.origin.y = v50;
      v69.size.width = v52;
      v69.size.height = v54;
      Width = CGRectGetWidth(v69);
      v56 = [v4 traitCollection];
      sub_1006439D4(v56, a3, 1, Width, v46, 0);
      if (sub_1007537D4())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_10059A3B4(&qword_10092EED0, &type metadata accessor for Uber.Style);
        sub_100753274();
        sub_100753274();
        if (v64 == v62 && v65 == v63)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_10074F374();

          type metadata accessor for UberHeaderView();
          sub_10059A3B4(&qword_10092EEC8, type metadata accessor for UberHeaderView);
          sub_100744204();
        }

        v57 = sub_100754754();
        (*(v12 + 8))(v15, v11);

        if (v57)
        {
          goto LABEL_14;
        }
      }

      sub_10074F2A4();
      sub_100750504();
      sub_1007504B4();
      (*(v59 + 8))(v10, v60);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005973C0(double a1)
{
  v2 = v1;
  v4 = sub_100743B54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100940720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v12 = a1 < 0.5;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle] != v12)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v5 + 104))(v7, enum case for TimingCurve.linear(_:), v4);
    sub_100743E74();
    sub_100743E64();
    (*(v9 + 8))(v11, v8);
    v13 = *aBlock;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v12;
    aBlock[4] = sub_10059A434;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087BF50;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    [v14 animateWithDuration:v16 animations:v13];
    _Block_release(v16);
  }
}

void sub_10059768C()
{
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10056379C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_100563518(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_1005978BC()
{
  v1 = sub_10074E5E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
  {

    sub_10074E604();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_10059A3B4(&qword_10092EED0, &type metadata accessor for Uber.Style);
    sub_100753274();
    sub_100753274();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_100754754();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_100643E04(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_10062ADD8();
}

char *sub_100597C00()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v63 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_100640EE8(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
      if (v27)
      {

        v27(v28);
        sub_1000164A8(v27);
      }
    }

    v29 = [v1 navigationItem];
    v30 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem;
    v31 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem];
    if (v31)
    {
      v32 = v31;
      v33 = sub_100753064();
      [v32 removeObserver:v10 forKeyPath:v33 context:&unk_100942900];

      v34 = *&v10[v30];
    }

    else
    {
      v34 = 0;
    }

    *&v10[v30] = v29;
    v35 = v29;

    v36 = *&v10[v30];
    if (v36)
    {
      v37 = v36;
      v38 = sub_100753064();
      [v37 addObserver:v10 forKeyPath:v38 options:0 context:&unk_100942900];

      v39 = *&v10[v30];
      if (v39)
      {
        v39 = [v39 title];
        if (v39)
        {
          v40 = v39;
          v41 = sub_100753094();
          v43 = v42;

          v44 = v43;
          v39 = v41;
LABEL_28:
          sub_100640708(v39, v44);

          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = &v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
          v47 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
          *v46 = sub_10059A3A4;
          v46[1] = v45;

          sub_1000164A8(v47);

          type metadata accessor for UberScrollObserver();
          v48 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48[5] = 0;
          v48[6] = 0;
          v48[3] = v10;
          v48[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v49 = v3;
          sub_10056341C();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = v48[5];
          v48[5] = sub_10059A3AC;
          v48[6] = v50;

          sub_1000164A8(v51);

          v52 = [v1 navigationItem];
          v53 = [v52 _largeTitleAccessoryView];

          if (v53)
          {
            v54 = [v1 navigationItem];
            [v54 _setLargeTitleAccessoryView:0];

            v55 = v53;
            sub_100101D58(v53);
          }

          v56 = *&v1[v5];
          v57 = v6;
          if (v56)
          {
            [v56 removeFromSuperview];
            v56 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v58 = [v1 viewIfLoaded];
          if (v58)
          {
            v59 = v58;
            [v58 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver] = v48;

          v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v60 = [v1 viewIfLoaded];
          [v60 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v64])
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:3];
          }

          else
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v44 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_100598200()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_10059A3B4(&qword_10092EEC8, type metadata accessor for UberHeaderView);
    v4 = v3;
    sub_100744274();
    v5 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {

      v12 = sub_10001B5AC(v11);
      v11(v12, 1.0, 0.0);

      sub_1000164A8(v11);
    }
  }

  v13 = *&v1[v2];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v2];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v15 = [v1 viewIfLoaded];
  [v15 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [v1 navigationItem];
  [v17 setLargeTitleDisplayMode:v16];
}

id sub_100598460(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_10062DFAC(v5, a2);

  sub_10074B184();
  v7 = v6;
  sub_100752D34();
  sub_10074B154();

  sub_100748464();
  sub_100752D34();
  sub_100748424();

  return v7;
}

void sub_1005985E8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100016C60(0, &qword_100923500);
    v4 = sub_100753E04();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_1005978BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10059879C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v2)
  {
    v1 = v2;
    sub_100748444();
  }

  sub_100744254();
}

uint64_t sub_1005988C0(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1);
  result = sub_100744254();
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v5 && !*&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
  {

    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      if (v8)
      {

        v9 = [v2 transitionCoordinator];
        if (v9)
        {
          v10 = v9;
          v19 = sub_10059A29C;
          v20 = v5;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1003ED3AC;
          v18 = &unk_10087BEB0;
          v11 = _Block_copy(&v15);

          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v5;
          v19 = sub_10059A2A0;
          v20 = v13;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1003ED3AC;
          v18 = &unk_10087BF00;
          v14 = _Block_copy(&v15);

          [v10 animateAlongsideTransition:v11 completion:v14];

          _Block_release(v14);
          _Block_release(v11);
          return swift_unknownObjectRelease();
        }

        sub_10056341C();
      }
    }
  }

  return result;
}

void sub_100598B30(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_10092B0C0);
      v9 = v6;
      v10 = sub_100753FC4();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {

        v11(v12, 1.0, 0.0);

        sub_1000164A8(v11);
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

void sub_100598CB0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v4 = v6;
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v6)
  {
    v5 = v6;
    sub_100748444();

    v4 = v5;
  }
}

void sub_100598E10(char a1)
{
  v2 = v1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  sub_100748464();
  sub_100752754();
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    sub_100748434();
  }

  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v15(v16, 1.0, 0.0);

    sub_1000164A8(v15);
  }

  else
  {
    v10 = v9;
    v21 = sub_10059A250;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1003ED3AC;
    v20 = &unk_10087BE10;
    v11 = _Block_copy(&v17);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v21 = sub_10059A294;
    v22 = v13;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1003ED3AC;
    v20 = &unk_10087BE88;
    v14 = _Block_copy(&v17);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_1005990D8(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for StoreCollectionViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*((swift_isaMask & *v5) + 0x158))();
    }
  }

  v6 = *(a2 + 40);
  if (v6)
  {

    v6(v7, 1.0, 0.0);

    sub_1000164A8(v6);
  }
}

void sub_1005991D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_100016C60(0, &qword_10092B0C0);
        v6 = v3;
        v7 = sub_100753FC4();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
        {
          v8 = [v6 navigationController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 navigationBar];

            if (v10)
            {

              sub_10056341C();
            }
          }
        }
      }
    }
  }
}

void sub_100599370()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_100744254();
  sub_100748464();
  sub_100752754();
  if (v2)
  {
    v1 = v2;
    sub_100748434();
  }
}

id sub_1005994C0(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  result = objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_10059A468;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1003ED3AC;
    v10[3] = &unk_10087BDE8;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }

  return result;
}

void sub_100599658()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
  if (v1)
  {
    v2 = v1;
    [v0 pageMarginInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
    v18 = v4 == v15 && v6 == v12 && v8 == v13 && v10 == v14;
    if (v18 || ([*&v2[v11] setLayoutMargins:{v4, v6, v8, v10}], objc_msgSend(v2, "invalidateIntrinsicContentSize"), (v19 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {

      v19(v20);

      sub_1000164A8(v19);
    }
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_10059768C();
  }
}

void sub_100599860(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_10074E664();
    sub_10059A3B4(&qword_10092EEC0, &type metadata accessor for Uber);

    v5 = sub_100753014();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (sub_10074E624())
    {

      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v8 = *(*(*&v7[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_10059A3B4(&qword_10093F7B8, type metadata accessor for UberHeaderView);
      v11 = v7;
      sub_10074B124();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100597C00();
  if (!v12)
  {
LABEL_20:
    sub_100598200();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);

  if (v14)
  {
    sub_10059692C(v13);
  }

  sub_1005978BC();
}

void sub_100599B24()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {

        v3 = sub_10001B5AC(v2);
        v2(v3, 1.0, 0.0);

        sub_1000164A8(v2);
      }
    }

    else
    {

      v4 = [v0 navigationController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 navigationBar];

        if (v6)
        {

          sub_10056341C();
        }
      }
    }
  }
}

void sub_100599C54(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100599CF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    [v2 setNeedsLayout];
  }
}

void sub_100599D78(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005973C0(a1);
  }
}

void sub_100599F8C(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537D4();

  if (!a1 || (sub_1007537D4() & 1) != (v5 & 1))
  {
    v6 = sub_100597C00();
    if (v6)
    {
      v7 = v6;
      if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
      {

        sub_10059692C(v7);

        return;
      }
    }

    sub_100598200();
  }
}

uint64_t sub_10059A0E0()
{
}

id sub_10059A140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10059A204(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

uint64_t sub_10059A238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10059A258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10059A2A8(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_10074B964();

    sub_100599B24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10059A3B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059A3FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059A46C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style();
  sub_100039C50(v3, qword_1009826A0);
  v4 = sub_10000D0FC(v3, qword_1009826A0);
  if (qword_100921CA0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_100982D18);
  sub_10059C530(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_10059C6FC(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_10059A5B8()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10093F7C8 = result;
  return result;
}

char *sub_10059A5F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
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
  v24 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_100752A94();
  sub_10000C8CC(v28, &unk_100923520);
  sub_10000C8CC(v29, &unk_100923520);
  sub_100753C74();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_10059A948()
{
  v1 = sub_1007507B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_1001CC150(&v0[v5], &v23);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v6;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10059B098();
  *&v17 = v7;
  type metadata accessor for ShelfFooterViewLayout();
  v8 = swift_allocObject();
  v9 = v24[0];
  v8[1] = v23;
  v8[2] = v9;
  *(v8 + 41) = *(v24 + 9);
  sub_100012160(&v20, (v8 + 4));
  sub_100012160(&v17, v8 + 104);
  v10 = v6;
  v11 = v7;
  v12 = [v0 traitCollection];
  sub_1001CBB70();
  sub_100751254();
  v14 = v13;

  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_10059AB98()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_1001CC150(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10059B098();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_100012160(&v20, (v10 + 4));
  sub_100012160(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_1007477B4();
  v14 = [v0 traitCollection];
  sub_1001CBB70();
  sub_100751244();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10059AEF4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v5[3] = sub_100016C60(0, &qword_100928A80);
    v5[0] = v3;
    sub_10001B5AC(v2);
    v4 = v3;
    v2(v5);
    sub_1000164A8(v2);
    return sub_10000C8CC(v5, &unk_100923520);
  }

  return result;
}

unint64_t sub_10059B098()
{
  result = qword_10093F818;
  if (!qword_10093F818)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F818);
  }

  return result;
}

double sub_10059B0F0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v103 = a3;
  v104 = 0x6C6F686563616C50;
  v92 = sub_1007507B4();
  v102 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100751144();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v86 - v10;
  __chkstk_darwin(v11);
  v91 = v86 - v12;
  __chkstk_darwin(v13);
  v90 = v86 - v14;
  v15 = sub_100750954();
  __chkstk_darwin(v15 - 8);
  v86[1] = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100751154();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100751504();
  __chkstk_darwin(v89);
  v88 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_10092F318);
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

  sub_10059C4C0(a4, v30);
  v35 = sub_100746384();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v30, 1, v35) == 1)
  {
    v38 = 0;
    v39 = 24.0;
  }

  else
  {
    sub_10059C4C0(v30, v27);
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
  sub_10000C8CC(v30, &qword_10092F318);
  sub_10059C4C0(a4, v24);
  v47 = v37(v24, 1, v35);
  v48 = v105;
  if (v47 != 1)
  {
    sub_10059C4C0(v24, v21);
    if ((*(v36 + 88))(v21, v35) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v36 + 96))(v21, v35);
      v49 = *v21;
      if (qword_100921CA8 != -1)
      {
        swift_once();
      }

      v50 = sub_10000D0FC(v86[0], qword_100982D30);
      sub_10059C530(v50, v48);
      v51 = v103;
      if ([v103 horizontalSizeClass] == 1 && (v52 = objc_msgSend(v51, "preferredContentSizeCategory"), v53 = sub_100753924(), v52, (v53 & 1) != 0))
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

  if (qword_100921CA0 != -1)
  {
    swift_once();
  }

  v56 = sub_10000D0FC(v86[0], qword_100982D18);
  sub_10059C530(v56, v48);
  v54 = 0;
  v55 = 0;
  v51 = v103;
LABEL_25:
  v57 = v98;
  sub_10000C8CC(v24, &qword_10092F318);
  if (qword_100921CB0 != -1)
  {
    swift_once();
  }

  v58 = qword_1009447F0;
  *(qword_1009447F0 + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon) = v54;
  *&v58[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = v55;
  v59 = sub_100753064();
  [v58 setTitle:v59 forState:0];

  v60 = v87;
  sub_10059C530(v48, v87);
  v61 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10059C594(v60, &v58[v61]);
  swift_endAccess();
  sub_1006947AC();
  sub_10059C5F8(v60);
  v62 = [v51 preferredContentSizeCategory];
  sub_100753CE4();
  sub_1007514D4();
  sub_100753CF4();
  [v58 updateTraitsIfNeeded];
  sub_100754004();
  v64 = v63;
  v66 = v65;
  sub_100750944();
  sub_100750BB4();
  *&v113[8] = sub_100750BD4();
  *&v113[16] = &protocol witness table for LabelPlaceholder;
  sub_10000D134(&v112);
  sub_100750BE4();
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
  sub_100751164();
  sub_1001CC150(v114, &v112);
  if (qword_100921910 != -1)
  {
    swift_once();
  }

  v73 = qword_10093F7C8;
  v74 = v100;
  v110 = v100;
  v111 = &protocol witness table for Resize;
  v75 = sub_10000D134(&v109);
  v76 = v99;
  (*(v99 + 16))(v75, v57, v74);
  v107 = type metadata accessor for ShelfFooterSeparator();
  v108 = sub_10059B098();
  *&v106 = v73;
  type metadata accessor for ShelfFooterViewLayout();
  v77 = swift_allocObject();
  v78 = *v113;
  v77[1] = v112;
  v77[2] = v78;
  *(v77 + 41) = *&v113[9];
  sub_100012160(&v109, (v77 + 4));
  sub_100012160(&v106, v77 + 104);
  v79 = v73;
  v80 = v101;
  sub_1001CBB70();
  v81 = v92;
  sub_100751254();
  v83 = v82;

  (*(v102 + 8))(v80, v81);
  (*(v76 + 8))(v57, v74);
  sub_1001CC1BC(v114);
  sub_10059C5F8(v105);
  return v83;
}

void sub_10059BCE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092F318);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_10059C4C0(a4, &v56 - v18);
  v20 = sub_100746384();
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
    sub_10059C4C0(v19, v16);
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
  sub_10000C8CC(v19, &qword_10092F318);
  v28 = &v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_10059C654(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style() + 20))];
  v30 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_100753064();
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
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_10059C4C0(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_10059C4C0(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_10059C530(v63, v9);
    v47 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_10059C594(v9, &v30[v47]);
    swift_endAccess();
    sub_1006947AC();
    sub_10059C5F8(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_100921CA8 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v56, qword_100982D30);
  sub_10059C530(v42, v39);
  v43 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10059C594(v39, &v30[v43]);
  swift_endAccess();
  sub_1006947AC();
  sub_10059C5F8(v39);
  v44 = sub_100747B94();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_100753924();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10000C8CC(v64, &qword_10092F318);
    v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10000C8CC(v64, &qword_10092F318);
  v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_10059C3C8()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10059C4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092F318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C5F8(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShelfFooterView.Style()
{
  result = qword_10093F878;
  if (!qword_10093F878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059C6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C774(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10059C844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10059C8FC()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v1 <= 0x3F)
  {
    result = sub_100016C60(319, &qword_100923500);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10059C990()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction))
  {
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph);
    v7 = sub_10000C518(&unk_100923210);

    sub_1007526C4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_10000C8CC(v4, &unk_100923960);
    }

    else
    {

      sub_1003C0E00(v9, 1, v6, v4);

      (*(v8 + 8))(v4, v7);
    }

    *(v1 + v5) = 0;

    sub_10059C990(v10);
  }
}

void sub_10059CB30(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = sub_10074ED34();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_1005A3354(&qword_10093F978, type metadata accessor for InAppPurchaseInstallPageViewController);
  v14 = v13;
  sub_100742074();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_100016C60(0, &qword_100923500);
      v18 = sub_100753E04();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = sub_10074D764();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = sub_10074DB84();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = sub_100742084();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_10006644C(v29, v26 + v28, &unk_100930240);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10059D128(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = sub_100748BB4();
    if (v3 == sub_100748BB4())
    {
      if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (sub_100741CF4(), swift_dynamicCastClass()))
      {

        sub_100741C94();

        if (qword_100921ED0 != -1)
        {
          swift_once();
        }

        v4 = sub_100752E44();
        sub_10000D0FC(v4, qword_1009832E8);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A6580;
        sub_1007523A4();
        v13 = &type metadata for Bool;
        v5 = a1 & 1;
        LOBYTE(v12[0]) = v5;
        sub_100752444();
        sub_10000C8CC(v12, &unk_100923520);
        sub_100752CF4();

        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v7 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v8 = sub_100753064();

        v14 = sub_1005A33AC;
        v15 = v6;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_1003E9548;
        v13 = &unk_10087C108;
        v9 = _Block_copy(v12);

        v10 = [v7 initWithAppBundleId:v8 isInstallSheetOpen:v5 completionHandler:v9];
        _Block_release(v9);

        [v10 start];
      }

      else
      {
        if (qword_100921ED0 != -1)
        {
          swift_once();
        }

        v11 = sub_100752E44();
        sub_10000D0FC(v11, qword_1009832E8);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A5A00;
        sub_1007523A4();
        sub_100752CF4();
      }
    }
  }
}

uint64_t sub_10059D570(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v2 = sub_100752E44();
    sub_10000D0FC(v2, qword_1009832E8);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_10000D134(v8);
    (*(*(v7 - 1) + 16))(v3);
    sub_100752444();
    sub_10000C8CC(v8, &unk_100923520);
    sub_100752CF4();
  }

  else
  {
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_1009832E8);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    sub_100752444();
    sub_10000C8CC(v8, &unk_100923520);
    sub_100752CF4();
  }
}

id sub_10059D8B0()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v7, v13, &unk_100930240);
  if (v14)
  {
    sub_10000C824(v13, v12);
    sub_10000C8CC(v13, &unk_100930240);
    sub_10000C888(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_100742974();
    (*(v3 + 8))(v5, v2);
    sub_10000C620(v12);
  }

  else
  {
    sub_10000C8CC(v13, &unk_100930240);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return sub_100744314();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10059DB3C(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v12, &unk_100930240);
  if (!v13)
  {
    return sub_10000C8CC(v12, &unk_100930240);
  }

  sub_10000C824(v12, v11);
  sub_10000C8CC(v12, &unk_100930240);
  sub_10000C888(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v6, v3);
  return sub_10000C620(v11);
}

void sub_10059DDBC(char a1)
{
  v2 = v1;
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v9, v12, &unk_100930240);
  if (v13)
  {
    sub_10000C824(v12, v11);
    sub_10000C8CC(v12, &unk_100930240);
    sub_10000C888(v11, v11[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_100742974();
    (*(v5 + 8))(v7, v4);
    sub_10000C620(v11);
  }

  else
  {
    sub_10000C8CC(v12, &unk_100930240);
  }

  sub_10059D128(1);
  sub_10059C990();
}

uint64_t sub_10059DFFC(SEL *a1, unsigned int *a2)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v10, v14, &unk_100930240);
  if (!v15)
  {
    return sub_10000C8CC(v14, &unk_100930240);
  }

  sub_10000C824(v14, v13);
  sub_10000C8CC(v14, &unk_100930240);
  sub_10000C888(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_100742974();
  (*(v6 + 8))(v8, v5);
  return sub_10000C620(v13);
}

uint64_t sub_10059E210()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v0 + v6, v10, &unk_100930240);
  if (!v11)
  {
    return sub_10000C8CC(v10, &unk_100930240);
  }

  sub_10000C824(v10, v9);
  sub_10000C8CC(v10, &unk_100930240);
  sub_10000C888(v9, v9[3]);
  sub_100752BB4();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  return sub_10000C620(v9);
}

uint64_t sub_10059E424(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v12, &unk_100930240);
  if (!v13)
  {
    return sub_10000C8CC(v12, &unk_100930240);
  }

  sub_10000C824(v12, v11);
  sub_10000C8CC(v12, &unk_100930240);
  sub_10000C888(v11, v11[3]);
  sub_100752BB4();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v6, v3);
  return sub_10000C620(v11);
}

void sub_10059E6BC(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v11, &unk_100930240);
  if (v12)
  {
    sub_10000C824(v11, v10);
    sub_10000C8CC(v11, &unk_100930240);
    sub_10000C888(v10, v10[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    sub_100742974();
    (*(v4 + 8))(v6, v3);
    sub_10000C620(v10);
  }

  else
  {
    sub_10000C8CC(v11, &unk_100930240);
  }

  sub_10059D128(0);
}

void sub_10059EA08()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_10074B974();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_10059EB60()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10059EC44()
{
  v1 = v0;
  sub_100751094();
  sub_1005A3354(&qword_10093F988, &type metadata accessor for InAppPurchaseInstallPagePresenter);
  swift_errorRetain();

  v2 = sub_100751054();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_10059EDBC(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_10000C518(&qword_100929630);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v33 - v11;
  if (a4)
  {
    a4 = sub_100753064();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_1005A10B4(a1);
  if (sub_100741E94())
  {
    sub_10074EF44();

    v15 = sub_10074ED34();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = sub_10074ED34();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_10006644C(v12, &v5[v17], &qword_100929630);
  swift_endAccess();
  if (sub_100741EA4())
  {
    v18 = sub_10074EDF4();

    *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v33 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph];
    v23 = a1;
    v24 = *(v19 + 8);
    swift_unknownObjectRetain();
    v25 = v21;
    v13 = v33;
    v24(a2, v22, v25, v19);
    a1 = v23;
    swift_unknownObjectRelease();
  }

  if (v14)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      swift_unknownObjectRetain();
    }

    if (*v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  if (!*v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

LABEL_18:
  sub_1005A12EC(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_10059D128(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    sub_10059D128(1);
    goto LABEL_24;
  }

  v29 = sub_100748BB4();
  if (v29 != sub_100748BB4())
  {
    sub_10059D128(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = sub_100748BB4();
  if (v30 != sub_100748BB4())
  {
    goto LABEL_23;
  }

LABEL_24:
  v31 = [v5 view];
  if (v31)
  {
    v32 = v31;
    [v31 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_10059F1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__n128), void (*a6)(uint64_t))
{
  v86 = a6;
  v87 = a1;
  v8 = v6;
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v9 = sub_10074A104();
  __chkstk_darwin(v9 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v84 = &v72 - v12;
  v13 = sub_100745E94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_10074CDE4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1007479B4();
  v24 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v73 = &v72 - v27;
  __chkstk_darwin(v28);
  v75 = &v72 - v29;
  __chkstk_darwin(v30);
  v78 = &v72 - v31;
  __chkstk_darwin(v32);
  v79 = &v72 - v33;
  __chkstk_darwin(v34);
  v80 = &v72 - v35;
  v36 = sub_1007470D4();
  v82 = *(v36 - 8);
  v83 = v36;
  v37 = __chkstk_darwin(v36);
  v81 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v37);
  sub_10074CDB4();
  (*(v21 + 8))(v23, v20);
  v89 = v8;
  result = [v8 view];
  if (result)
  {
    v40 = result;
    v41 = [result traitCollection];

    v42 = *(v14 + 104);
    v42(v16, enum case for OfferEnvironment.arcadeProductPage(_:), v13);
    v43 = sub_100745E84();
    v44 = *(v14 + 8);
    v44(v16, v13);
    v92 = v13;
    if (v43)
    {
      v45 = v19;
      if (qword_1009219B8 != -1)
      {
        swift_once();
      }

      v46 = v77;
      v47 = sub_10000D0FC(v77, qword_1009827C8);
      v48 = v78;
      (*(v24 + 16))(v78, v47, v46);

      v49 = v44;
      goto LABEL_16;
    }

    v42(v16, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v13);
    v50 = sub_100745E84();
    v76 = v44;
    v44(v16, v13);
    if (v50)
    {
      v45 = v19;
      if (qword_1009219B0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009827B0;
      v46 = v77;
LABEL_14:
      v52 = sub_10000D0FC(v46, v51);
      v48 = v78;
      (*(v24 + 16))(v78, v52, v46);

LABEL_15:
      v49 = v76;
LABEL_16:
      v53 = *(v24 + 32);
      v54 = v79;
      v53(v79, v48, v46);
      v49(v45, v92);
      v53(v80, v54, v46);
      v55 = sub_10000C518(&unk_100925560);
      (*(*(v55 - 8) + 56))(v84, 1, 1, v55);

      v86(v56);
      v57 = v81;
      sub_1007470C4();
      sub_1005A30DC(v57, v90, v91, *&v89[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_100162784);
      return (*(v82 + 8))(v57, v83);
    }

    if (sub_100745E74())
    {
      v45 = v19;
      v46 = v77;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v51 = qword_100982798;
      goto LABEL_14;
    }

    v58 = v92;
    v42(v16, enum case for OfferEnvironment.navigationBar(_:), v92);
    v45 = v19;
    v59 = sub_100745E84();
    v76(v16, v58);
    v46 = v77;
    if (v59)
    {
      if (qword_1009219C0 != -1)
      {
        swift_once();
      }

      v60 = sub_10000D0FC(v46, qword_10093FFA0);
      v48 = v78;
      (*(v24 + 16))(v78, v60, v46);

      goto LABEL_15;
    }

    v61 = sub_100753194();
    v62 = v41;
    if (sub_100753804())
    {
      v49 = v76;
      if (v61 <= 8)
      {
LABEL_23:
        v63 = sub_100753804();
        v48 = v78;
        if (v63)
        {
          if (qword_100921988 != -1)
          {
            swift_once();
          }

          v64 = qword_10093FF40;
        }

        else
        {
          if (qword_100921990 != -1)
          {
            swift_once();
          }

          v64 = qword_10093FF58;
        }

        v67 = sub_10000D0FC(v46, v64);
        v68 = v74;
        (*(v24 + 16))(v74, v67, v46);

        (*(v24 + 32))(v48, v68, v46);
        goto LABEL_16;
      }
    }

    else
    {
      v49 = v76;
      if (v61 < 7)
      {
        goto LABEL_23;
      }
    }

    v65 = sub_100753804();
    v48 = v78;
    v72 = v62;
    if (v65)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v66 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v66 = qword_10093FF58;
    }

    v69 = sub_10000D0FC(v46, v66);
    v70 = v73;
    (*(v24 + 16))(v73, v69, v46);
    v71 = v75;
    (*(v24 + 32))(v75, v70, v46);
    sub_10074F4B4();

    (*(v24 + 8))(v71, v46);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_10059FBFC(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_10074CDE4();
  __chkstk_darwin(v3 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v5 - 8);
  v30 = v28 - v6;
  v7 = sub_10074D734();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092EEA0);
  __chkstk_darwin(v10 - 8);
  v28[1] = v28 - v11;
  v12 = sub_1007479B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  v28[0] = sub_10074A744();
  v19 = *(v28[0] - 8);
  *&v20 = __chkstk_darwin(v28[0]).n128_u64[0];
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result traitCollection];

    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF58;
    }

    v27 = sub_10000D0FC(v12, v26);
    (*(v13 + 16))(v15, v27, v12);

    (*(v13 + 32))(v18, v15, v12);
    (*(v8 + 104))(v29, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v30, 1, 1, v7);
    sub_1005A3354(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_10074A9C4();
    sub_10074CDA4();
    sub_10074A734();
    sub_1005A30DC(v22, v33, v34, *&v32[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_100163434);
    return (*(v19 + 8))(v22, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1005A00DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v7 = sub_10074A104();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = sub_100745E94();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_10074CDE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007479B4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v61 - v25;
  __chkstk_darwin(v26);
  v63 = &v61 - v27;
  __chkstk_darwin(v28);
  v65 = &v61 - v29;
  __chkstk_darwin(v30);
  v66 = &v61 - v31;
  __chkstk_darwin(v32);
  v68 = &v61 - v33;
  v34 = sub_1007470D4();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView];
  sub_10061CA98(a5);
  sub_10074CDD4();
  sub_10074CDB4();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = sub_100745E84();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_1009219B8 != -1)
      {
        swift_once();
      }

      v41 = qword_1009827C8;
LABEL_16:
      v43 = sub_10000D0FC(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_10000C518(&unk_100925560);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      sub_10074A0F4();
      v48 = v69;
      sub_1007470C4();
      sub_1005A30DC(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_100162784);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = sub_100745E84();
    v40(v13, v39);
    if (v42)
    {
      if (qword_1009219B0 != -1)
      {
        swift_once();
      }

      v41 = qword_1009827B0;
      goto LABEL_16;
    }

    if (sub_100745E74())
    {
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v41 = qword_100982798;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = sub_100745E84();
    v40(v13, v39);
    if (v49)
    {
      if (qword_1009219C0 != -1)
      {
        swift_once();
      }

      v50 = sub_10000D0FC(v21, qword_10093FFA0);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = sub_100753194();
    if (sub_100753804())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (sub_100753804())
        {
          v52 = v65;
          if (qword_100921988 != -1)
          {
            swift_once();
          }

          v53 = qword_10093FF40;
        }

        else
        {
          v52 = v65;
          if (qword_100921990 != -1)
          {
            swift_once();
          }

          v53 = qword_10093FF58;
        }

        v56 = sub_10000D0FC(v21, v53);
        v57 = v62;
        (*(v22 + 16))(v62, v56, v21);

        (*(v22 + 32))(v52, v57, v21);
        v44 = v52;
        goto LABEL_17;
      }
    }

    else if (v51 < 7)
    {
      goto LABEL_24;
    }

    if (sub_100753804())
    {
      v54 = v65;
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v55 = qword_10093FF40;
    }

    else
    {
      v54 = v65;
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v55 = qword_10093FF58;
    }

    v58 = sub_10000D0FC(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    sub_10074F4B4();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1005A0AF8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_10074CDE4();
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_10074D734();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092EEA0);
  __chkstk_darwin(v11 - 8);
  v12 = sub_1007479B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v26 - v18;
  v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView];
  result = [v2 view];
  if (result)
  {
    v21 = result;
    v22 = [result traitCollection];

    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v23 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v23 = qword_10093FF58;
    }

    v24 = sub_10000D0FC(v12, v23);
    (*(v13 + 16))(v15, v24, v12);

    (*(v13 + 32))(v19, v15, v12);
    (*(v8 + 104))(v10, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v28, 1, 1, v7);
    sub_1005A3354(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_10074A9C4();
    sub_10074CDA4();
    sub_10074D814();
    swift_allocObject();
    v25 = sub_10074D804();
    sub_1005A325C(v25, v30, v31, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1005A0F2C()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10061CC64(sub_1005A2EEC, v1);

    return sub_10061CA98(1.0);
  }

  else
  {
    v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {

      return [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1005A1060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005A16A8();
  }
}

unint64_t sub_1005A10B4(unint64_t result)
{
  if (result <= 2)
  {
    v2 = off_10087C148[result];
    v3 = *(v1 + *off_10087C130[result]);
    v4 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView);
    *v4 = v3;
    v4[1] = v2;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005A1130(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 sizeThatFits:{v10, v12}];
      v14 = v13;
      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= v14)
      {
        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        CGRectGetMinY(v20);
        v21.origin.x = v6;
        v21.origin.y = v8;
        v21.size.width = v10;
        v21.size.height = v12;
        CGRectGetHeight(v21);
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        CGRectGetMinX(v22);
        v23.origin.x = v6;
        v23.origin.y = v8;
        v23.size.width = v10;
        v23.size.height = v12;
        CGRectGetWidth(v23);
      }

      else
      {
        v16.origin.x = v6;
        v16.origin.y = v8;
        v16.size.width = v10;
        v16.size.height = v12;
        CGRectGetMinX(v16);
        v17.origin.x = v6;
        v17.origin.y = v8;
        v17.size.width = v10;
        v17.size.height = v12;
        CGRectGetMinY(v17);
        v18.origin.x = v6;
        v18.origin.y = v8;
        v18.size.width = v10;
        v18.size.height = v12;
        CGRectGetWidth(v18);
        v19.origin.x = v6;
        v19.origin.y = v8;
        v19.size.width = v10;
        v19.size.height = v12;
        CGRectGetHeight(v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005A12EC(id a1, id a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v5 = a2;
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 sizeThatFits:{v13, v15}];
      Height = v16;
      v39.origin.x = v9;
      v39.origin.y = v11;
      v39.size.width = v13;
      v39.size.height = v15;
      if (CGRectGetHeight(v39) >= Height)
      {
        v44.origin.x = v9;
        v44.origin.y = v11;
        v44.size.width = v13;
        v44.size.height = v15;
        MinY = CGRectGetMinY(v44);
        v45.origin.x = v9;
        v45.origin.y = v11;
        v45.size.width = v13;
        v45.size.height = v15;
        v19 = MinY + (CGRectGetHeight(v45) - Height) * 0.5;
        v46.origin.x = v9;
        v46.origin.y = v11;
        v46.size.width = v13;
        v46.size.height = v15;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        Width = CGRectGetWidth(v47);
      }

      else
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MinX = CGRectGetMinX(v40);
        v41.origin.x = v9;
        v41.origin.y = v11;
        v41.size.width = v13;
        v41.size.height = v15;
        v19 = CGRectGetMinY(v41);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        Width = CGRectGetWidth(v42);
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        Height = CGRectGetHeight(v43);
      }

      [v5 setFrame:{MinX, v19, Width, Height}];
      [v5 layoutIfNeeded];
      [v5 setAlpha:0.0];
      v22 = v5;
      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 addSubview:v22];

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == a2)
  {
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  [0 layoutIfNeeded];
LABEL_12:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a1;
  v37 = sub_1005A2E44;
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000CF7B0;
  v36 = &unk_10087C068;
  v27 = _Block_copy(&v33);
  v28 = a1;
  v29 = a2;

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v37 = sub_1005A2EDC;
  v38 = v30;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100144DD8;
  v36 = &unk_10087C0B8;
  v31 = _Block_copy(&v33);
  v32 = v28;

  [v25 animateWithDuration:v27 animations:v31 completion:0.3];
  _Block_release(v31);
  _Block_release(v27);
}

uint64_t sub_1005A16A8()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v33 = &v31 - v2;
  v3 = sub_100752614();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100748314();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_10074ED34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  swift_unknownObjectWeakInit();
  v17 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(ObjectType, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
    swift_beginAccess();
    sub_100016B4C(&v21[v22], v9, &qword_100929630);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      v23 = &qword_100929630;
      v24 = v9;
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v13, v16, v10);
      (*(v32 + 104))(v6, enum case for OpenableDestination.app(_:), v4);
      sub_1007525F4();
      sub_100742174();
      swift_allocObject();
      v25 = sub_100742154();
      v26 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph;
      v27 = sub_10000C518(&unk_100923210);
      v28 = v33;
      sub_1007526C4();
      v29 = *(v27 - 8);
      if ((*(v29 + 48))(v28, 1, v27) != 1)
      {
        sub_1003C1458(v25, 1, *&v21[v26], v28);

        (*(v11 + 8))(v16, v10);

        (*(v29 + 8))(v28, v27);
        return swift_unknownObjectWeakDestroy();
      }

      (*(v11 + 8))(v16, v10);
      v23 = &unk_100923960;
      v24 = v28;
    }

    sub_10000C8CC(v24, v23);
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1005A1BDC()
{
  v0 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_10074ED34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_100740E94();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v32 = sub_10074D774();
  v33 = v15;
  sub_1007544E4();
  if (!*(v14 + 16) || (v16 = sub_100412148(v34), (v17 & 1) == 0))
  {

    sub_100016994(v34);
LABEL_10:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_11;
  }

  sub_10000C5B4(*(v14 + 56) + 32 * v16, &v35);
  sub_100016994(v34);

  if (!*(&v36 + 1))
  {
LABEL_11:
    sub_10000C8CC(&v35, &unk_100923520);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  v19 = *(v7 + 56);
  v19(v5, v18 ^ 1u, 1, v6);
  v31 = *(v7 + 48);
  if (v31(v5, 1, v6) == 1)
  {
LABEL_12:
    v23 = v5;
    return sub_10000C8CC(v23, &qword_100929630);
  }

  v29 = *(v7 + 32);
  v30 = v7 + 32;
  v29(v12, v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v7 + 8))(v12, v6);
    v19(v2, 1, 1, v6);
    goto LABEL_16;
  }

  v21 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v22 = Strong;
  swift_beginAccess();
  sub_100016B4C(v22 + v21, v2, &qword_100929630);

  if (v31(v2, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_16:
    v23 = v2;
    return sub_10000C8CC(v23, &qword_100929630);
  }

  v29(v9, v2, v6);
  if (sub_10074ED04())
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_1005A16A8();
    }
  }

  v27 = *(v7 + 8);
  v27(v9, v6);
  return (v27)(v12, v6);
}

uint64_t sub_1005A204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_1007521E4();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752224();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100740EA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100016C60(0, &qword_100926D00);
  v21 = sub_100753774();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005A3354(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  v18 = v21;
  sub_100753784();
  _Block_release(v17);

  (*(v27 + 8))(v7, v5);
  return (*(v25 + 8))(v10, v26);
}

void sub_1005A23F4()
{
  v0 = sub_10074ED34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100740E94();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v13[1] = sub_10074DB74();
  v13[2] = v6;
  sub_1007544E4();
  if (!*(v5 + 16) || (v7 = sub_100412148(v14), (v8 & 1) == 0))
  {

    sub_100016994(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_10000C5B4(*(v5 + 56) + 32 * v7, &v15);
  sub_100016994(v14);

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_10000C8CC(&v15, &unk_100923520);
    return;
  }

  sub_100016C60(0, &qword_10093F980);
  if (swift_dynamicCast())
  {
    v9 = v14[0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;

      v12 = [v9 itemID];
      sub_10074ED24();
      sub_100742054();

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

uint64_t sub_1005A2630(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_100740EA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_1005A2750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseInstallPageViewController()
{
  result = qword_10093F948;
  if (!qword_10093F948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A28F8()
{
  sub_1005A29F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005A29F8()
{
  if (!qword_10093F958)
  {
    sub_10074ED34();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10093F958);
    }
  }
}

uint64_t sub_1005A2A54(uint64_t result, uint64_t a2, uint64_t a3)
{
  switch(result)
  {
    case 2:
      return sub_10063A638(a2, a3);
    case 1:
      return sub_10048F9DC(a2, a3);
    case 0:
      return sub_10061C7F4(a2, a3);
  }

  return result;
}

void sub_1005A2B24(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction) = a1;

  sub_10059C990();
}

uint64_t sub_1005A2C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005A2C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005A2CB0()
{
  v1 = sub_100740EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1005A2D64(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_100740EA4() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1005A2E04()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1005A2E44()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (v2)
  {

    return [v2 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1005A2EA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005A2EF4()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration) = 0x3FD3333333333333;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v6 = sub_10074ED34();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_isInBackground) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction) = 0;
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1005A30DC(uint64_t a1, uint64_t a2, NSString a3, char *a4, uint64_t (*a5)(void), void (*a6)(char *, void))
{
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a1, v11);
  v15 = *&a4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    a3 = sub_100753064();
  }

  [v15 setText:a3];

  v16 = objc_opt_self();
  v17 = [v16 areAnimationsEnabled];
  [v16 setAnimationsEnabled:0];
  a6(v13, *&a4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton]);
  [a4 setNeedsLayout];
  return [v16 setAnimationsEnabled:v17];
}

id sub_1005A325C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *&a4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 areAnimationsEnabled];
  [v7 setAnimationsEnabled:0];
  v9 = *&a4[OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_offerButton];

  sub_1001627C8(v10, v9);
  [a4 setNeedsLayout];

  return [v7 setAnimationsEnabled:v8];
}

uint64_t sub_1005A3354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A33F0(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_100754754() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_1005A3560();
LABEL_11:
}

void sub_1005A3470(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100016C60(0, &qword_100923500);
  a1 = a1;
  v4 = v7;
  v5 = sub_100753FC4();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_1005A3560();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_1005A3560()
{
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_1005A37A0();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = sub_100753064();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = sub_100753064();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}