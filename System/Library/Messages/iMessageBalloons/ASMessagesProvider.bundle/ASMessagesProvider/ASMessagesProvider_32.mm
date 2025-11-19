id sub_3A59C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView()
{
  result = qword_951C78;
  if (!qword_951C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A5B00()
{
  sub_3A5BC4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3A5BC4()
{
  if (!qword_951C88)
  {
    sub_766690();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_951C88);
    }
  }
}

uint64_t sub_3A5C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_3A5C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3A5CC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87D810;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

UIImage *sub_3A5D14(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_93CE78;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_951BF0;
  v7 = sub_BE70(0, &qword_93F900);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_93CE80;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_951BF8;
  *(inited + 104) = sub_BE70(0, &qword_93E540);
  *(inited + 80) = v11;
  v12 = v11;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_769210();
  type metadata accessor for Key(0);
  sub_206144();
  isa = sub_7690E0().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

id sub_3A6174()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView];
  [v0 bounds];
  [v1 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = CGRectGetMidX(v12) - v3 * 0.5;
  [v0 bounds];
  return [v1 setFrame:{v7, CGRectGetMidY(v13) - v5 * 0.5, v3, v5}];
}

id sub_3A6300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_3A6368(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77D9F0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_7671E0();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_3A6484()
{
  v0 = sub_758260();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  sub_7587A0();
  sub_3A6A38(&qword_93F6D8, &type metadata accessor for AppPromotion);
  sub_75C750();
  if (!v13[1])
  {
    return 0;
  }

  sub_758790();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell();
    v9 = &unk_951D78;
    v10 = type metadata accessor for AppEventCollectionViewCell;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = sub_76A940();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell();
    v9 = &unk_951D70;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
  }

  sub_3A6A38(v9, v10);
  return v8;
}

uint64_t sub_3A670C()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_BD88(&unk_94F1F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_3A6A38(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_3A6484();
  }

  v12 = sub_76A950();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_3A6484();
  }

  return 0;
}

uint64_t sub_3A6A38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3A6A80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_artworkLoader] = v24;

  sub_75A120();

  sub_75A0D0();

  v9 = &v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = sub_758580();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView());

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v13 = a3;
  v14 = sub_2F8AE8(a3);

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_761120();
  v16 = v15;
  sub_768ED0();
  v17 = v24;
  v18 = v16;
  sub_7610F0();

  sub_3AA734(&qword_951DF0, v19, type metadata accessor for AppEventDetailPageViewController);
  sub_758570();
  v20 = [v18 view];

  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v21 setClipsToBounds:0];

  v22 = [v18 view];
  if (v22)
  {
    [v22 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_3A6F84(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView);
  }

  sub_3AA734(&qword_962970, 255, type metadata accessor for AppEventDetailPageView);
  sub_761100();
}

void sub_3A723C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v14 = v15[1];
  sub_7610A0();
  sub_6D48E0();
}

uint64_t sub_3A757C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_7587B0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_7587C0();
  (*(v13 + 8))(v16, v12);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v19 + 8))(v7, v20);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_75CAB0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_3A794C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView();
    sub_3AA734(&unk_93F530, 255, type metadata accessor for VideoView);
    sub_75A0C0();
  }

  else
  {
    sub_BE70(0, &qword_949D90);
    sub_1EE5B8();
    sub_75A0C0();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_3AA734(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v14 = v13;
  sub_75A0C0();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView);
  }

  sub_3AA734(&qword_962970, 255, type metadata accessor for AppEventDetailPageView);
  sub_7610C0();
}

uint64_t sub_3A7DE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

uint64_t sub_3A7FE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_3A81FC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_B170(&v7[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v15 = v16[1];
  a3(v14);
}

id sub_3A8414()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_4FF230([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_7699F0();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3A8598(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_769A00() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_769A00();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_758560();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_76A950();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_3A883C()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170((v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v5 = v6[1];
  sub_761080();
}

uint64_t sub_3A8B34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  sub_758580();
  sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_75EBD0();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10A2C(v12, &unk_93FBD0);
}

void sub_3A8CEC()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_758580();
  sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter);
  sub_75EBD0();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_3AA7E0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88F350;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_3A8EEC(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_758550();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph;
    v8 = sub_BD88(&unk_93F630);

    sub_768860();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10A2C(v4, &unk_93F980);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_32A6C0(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_3A9114(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v79 = sub_75CA40();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v68 - v5;
  __chkstk_darwin(v6);
  v76 = &v68 - v7;
  v8 = sub_BD88(&unk_948710);
  __chkstk_darwin(v8 - 8);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v11;
  v12 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v12 - 8);
  v70 = &v68 - v13;
  v14 = sub_75A6B0();
  __chkstk_darwin(v14 - 8);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_BD88(&unk_948720);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_75A6E0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_75DC30();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (sub_769A00())
  {
    v27 = sub_7699D0();
  }

  else
  {
    v27 = 0;
  }

  result = [v2 view];
  if (result)
  {
    v29 = result;
    [result bounds];

    v30 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader) = v30;

    v32 = sub_758290();
    v84 = v31;
    sub_64DA74(v32, v27 & 1, v31);

    if (sub_7582D0())
    {
      v33 = sub_764BC0();
    }

    else
    {
      v33 = sub_7582E0();
    }

    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork) = v33;

    if (sub_7582D0())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      sub_764BC0();
      sub_765260();
      sub_7666A0();

      v34 = sub_766690();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      sub_764B60();
      sub_764BA0();
      sub_764B70();
      sub_764B50();
      sub_764BB0();
      v35 = v69;
      sub_75DC10();
      sub_75C360();
      sub_768880();
      sub_764B40();
      v36 = v70;
      sub_764BD0();
      v37 = sub_7570A0();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v73;
      sub_764B90();
      v39 = v74;
      sub_764B80();
      type metadata accessor for VideoView();
      sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView);
      v40 = sub_75C340();
      sub_10A2C(v39, &unk_948710);
      sub_10A2C(v38, &unk_948710);
      sub_10A2C(v36, &unk_93FD30);
      sub_10A2C(v85, &unk_9443A0);
      sub_6DDACC();
      swift_unknownObjectWeakAssign();
      sub_6D96AC();

      sub_764BC0();
      v41 = sub_7651A0();

      sub_6D49AC(v41);

      (*(v71 + 8))(v35, v72);
    }

    else
    {
      sub_6DDACC();
      swift_unknownObjectWeakAssign();
      sub_6D96AC();
    }

    v42 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock);
    v44 = v82;
    *v42 = sub_3AA7E8;
    v42[1] = v44;
    swift_retain_n();
    sub_F704(v43);

    [*(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v45 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock);
    v46 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = v81;
    *v45 = sub_3AA6C8;
    v45[1] = v47;

    sub_F704(v46);
    sub_6D8C10();
    v48 = sub_7582A0();
    if (v48)
    {
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 24) = v49;

      sub_6DDCC0(sub_3AA72C, v50);
    }

    else
    {
      sub_6DDCC0(0, 0);
    }

    v51 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
    v52 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
    v53 = v80;
    *v51 = sub_3AA6E4;
    v51[1] = v53;

    sub_F704(v52);
    sub_6D8DB0();
    v54 = v76;
    sub_7582B0();
    v55 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v56 = v75;
    v57 = v77;
    v58 = v79;
    (*(v75 + 16))(v77, v25 + v55, v79);
    swift_beginAccess();
    (*(v56 + 24))(v25 + v55, v54, v58);
    swift_endAccess();
    sub_6D93C8();
    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v54, v58);
    v60 = v78;
    sub_7582B0();
    v61 = sub_75CA20();
    v59(v60, v58);
    v62 = *(*(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    if (v61 == 2)
    {
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 whiteColor];
    }

    else
    {
      sub_BE70(0, &qword_93E540);
      v66 = v62;
      v65 = sub_76A0F0();
    }

    v67 = v65;
    [v62 setTintColor:v65];

    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode) = sub_7582C0() & 1;
    sub_6D8828();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3A9CCC()
{
  v0 = sub_7587B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_758580();
    sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_75EBD0();
    (*(v1 + 8))(v3, v0);
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_3A9E5C()
{
  v0 = sub_7587B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v0);
    sub_758580();
    sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter);
    sub_75EBD0();
    (*(v1 + 8))(v3, v0);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    aBlock[4] = sub_3AA77C;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88F300;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_3AA084(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph;
  v7 = sub_BD88(&unk_93F630);

  sub_768860();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980);
  }

  v10 = *(v1 + v6);

  sub_32A6C0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_3AA4E0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_3AA548()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_3AA588(char a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing) = a1;
  return sub_6D92BC();
}

uint64_t sub_3AA5D0()
{
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();
}

uint64_t sub_3AA690()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3AA6EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AA734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_3AA784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3AA79C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3AA7F4@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v76);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75CFE0();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v5 - 8);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v58 - v8;
  v9 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = (&v58 - v18);
  v19 = sub_BD88(&unk_948010);
  __chkstk_darwin(v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v58 - v23;
  v24 = sub_764930();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_94F1F0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - v30;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v29 + 8))(v31, v28);
  v66 = v27;
  v67 = v25;
  v32 = *(v25 + 88);
  v69 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_93CDB8 != -1)
    {
      swift_once();
    }

    v39 = sub_BE38(v76, qword_99D468);
    return sub_19CE28(v39, v78, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = sub_759810();
    v35 = *(v34 - 8);
    v36 = v73;
    (*(v35 + 56))(v73, 1, 1, v34);
    v37 = sub_75CFD0();
    v58 = *(v37 - 8);
    v59 = v37;
    (*(v58 + 56))(v75, 1, 1);
    sub_1ED18(v36, v21, &unk_948010);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10A2C(v21, &unk_948010);
      v38 = 0;
    }

    else
    {
      v38 = sub_7597B0();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v74;
    v60 = v2;
    sub_5E740C(v38, v74);

    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v42 = v62;
    v43 = sub_BE38(v62, qword_9A01C0);
    v44 = v64;
    (*(v61 + 56))(v64, 1, 1, v42);
    v45 = v63;
    sub_19CE28(v41, v63, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v65;
    sub_19CE28(v43, v65, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v68;
    sub_1ED18(v44, v68, &qword_9439E0);
    v48 = v75;
    sub_1ED18(v75, v77, &qword_9439D8);
    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 104))(v70, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v72);
    sub_396E8();
    v62 = sub_769FB0();
    sub_10A2C(v48, &qword_9439D8);
    sub_10A2C(v44, &qword_9439E0);
    sub_C1DBC(v74);
    sub_10A2C(v73, &unk_948010);
    v52 = v76;
    v53 = v76[8];
    v54 = v60;
    sub_C1E18(v45, v60, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_C1E18(v46, v54 + v52[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_15CF04(v47, v54 + v52[6]);
    *(v54 + v52[7]) = 0;
    *(v54 + v53) = 0;
    *(v54 + v52[9]) = 0;
    *(v54 + v52[14]) = 0x4030000000000000;
    *(v54 + v52[12]) = 0;
    *(v54 + v52[13]) = v62;
    v55 = v77;
    (*(v50 + 32))(v54 + v52[11], v49, v51);
    v57 = v58;
    v56 = v59;
    if ((*(v58 + 48))(v55, 1, v59) == 1)
    {
      sub_10A2C(v55, &qword_9439D8);
      (*(v57 + 104))(v54 + v52[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v56);
    }

    else
    {
      (*(v57 + 32))(v54 + v52[10], v55, v56);
    }

    sub_C1E18(v54, v78, type metadata accessor for TitleHeaderView.Style);
    return (*(v67 + 8))(v66, v69);
  }
}

id sub_3AB180()
{
  v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v2 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v3 = [v2 imageWithRenderingMode:2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  *&v0[v1] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_3AB500();

  return v5;
}

id sub_3AB29C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v10 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v11 = [v10 imageWithRenderingMode:2];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  *&v4[v9] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ChevronView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_3AB500();

  return v13;
}

id sub_3AB3D8(void *a1)
{
  v1[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v4 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  *&v1[v3] = v6;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChevronView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_3AB500();
  }

  return v8;
}

id sub_3AB500()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView];
  if (qword_93CB48 != -1)
  {
    swift_once();
  }

  [v1 setTintColor:qword_99CCB8];
  v2 = [v1 layer];
  v3 = [v0 traitCollection];
  [v3 userInterfaceStyle];

  sub_769240();
  v4 = sub_769210();

  [v2 setCompositingFilter:v4];

  [v1 setContentMode:1];
  [v1 setAlpha:0.0];
  [v0 addSubview:v1];
  [v1 frame];

  return [v0 setFrame:{0.0, 0.0}];
}

void sub_3AB6E4()
{
  v1 = sub_7599A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &aBlock - v7;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate) == 1)
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating;
    if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating) & 1) == 0)
    {
      v10 = [v0 window];
      if (v10)
      {

        *(v0 + v9) = 1;
        sub_759960();
        v11 = v0;
        sub_759980();
        v13 = v12;
        v15 = v14;
        v16 = *(v2 + 8);
        v16(v8, v1);
        sub_759960();
        sub_759990();
        v18 = v17;
        v20 = v19;
        v16(v4, v1);
        v21 = swift_allocObject();
        *(v21 + 16) = v0;
        v22 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_3AC148;
        v49 = v21;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_23F0CC;
        v47 = &unk_88F3A0;
        v23 = _Block_copy(&aBlock);
        v24 = v11;

        v25 = [v22 initWithDuration:v23 controlPoint1:1.06 controlPoint2:v13 animations:{v15, v18, v20}];
        _Block_release(v23);
        sub_759970();
        sub_759980();
        v27 = v26;
        v29 = v28;
        v16(v8, v1);
        sub_759970();
        sub_759990();
        v31 = v30;
        v33 = v32;
        v16(v4, v1);
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        v35 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_3AC184;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_23F0CC;
        v47 = &unk_88F3F0;
        v36 = _Block_copy(&aBlock);
        v37 = v24;

        v38 = [v35 initWithDuration:v36 controlPoint1:0.66 controlPoint2:v27 animations:{v29, v31, v33}];
        _Block_release(v36);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v48 = sub_3AC1A8;
        v49 = v39;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_19EE34;
        v47 = &unk_88F440;
        v40 = _Block_copy(&aBlock);
        v41 = v38;

        [v25 addCompletion:v40];
        _Block_release(v40);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_3AC1F0;
        v49 = v42;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_19EE34;
        v47 = &unk_88F490;
        v43 = _Block_copy(&aBlock);

        [v41 addCompletion:v43];
        _Block_release(v43);
        [v25 startAnimation];
      }
    }
  }
}

id sub_3ABBD8(uint64_t a1, CGFloat a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView);
  CGAffineTransformMakeTranslation(&v6, 0.0, a2);
  [v4 setTransform:&v6];
  return [v4 setAlpha:a3];
}

uint64_t sub_3ABC5C(uint64_t a1, uint64_t a2)
{
  v23 = sub_768380();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView);

    aBlock = 0x3FF0000000000000;
    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v31 = 0;
    v32 = 0;
    [v17 setTransform:&aBlock];
  }

  sub_12EA98();
  v18 = sub_769970();
  sub_7683D0();
  sub_768450();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v31 = sub_3AC1F8;
  v32 = a2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_23F0CC;
  v30 = &unk_88F4B8;
  v19 = _Block_copy(&aBlock);

  sub_7683A0();
  aBlock = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  v20 = v23;
  sub_76A5A0();
  sub_769930();
  _Block_release(v19);

  (*(v26 + 8))(v4, v20);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v8);
}

void sub_3AC024()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_3AB6E4();
  }
}

id sub_3AC0A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChevronView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3AC110()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3AC16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3AC1B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_3AC228(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_3AC5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3AC688()
{
  v1 = v0;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell();
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell();
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell();
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_3AD19C(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_3AD738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_768380();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7683C0();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12EA98();
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_3ADDD4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88F578;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3ADDE0(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_3ADA10(uint64_t a1, uint64_t a2)
{
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75E170();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    sub_768F50();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    sub_768F60();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_3ADB74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_3ADBE8(uint64_t a1)
{
  sub_BD88(&qword_94DDC0);
  v2 = sub_768F90();
  v3 = objc_opt_self();
  sub_75E180();
  v4 = sub_769210();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_3ADD6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_3ADB74;
  v8[3] = &unk_88F528;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_3ADD2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3ADD74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3ADD8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3ADDE0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_3ADE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

void *sub_3ADE74()
{
  v1 = v0;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = [v1 layoutAttributesForElementsInRect:{v10, v12, v14, v16}];
  if (v17)
  {
    v18 = v17;
    sub_E59C4();
    v19 = sub_769460();

    if (v19 >> 62)
    {
LABEL_26:
      v20 = sub_76A860();
      if (v20)
      {
LABEL_7:
        v32 = v2;
        v2 = 0;
        v31 = (v3 + 8);
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v21 = v2;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = sub_76A770();
            }

            else
            {
              if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_25;
              }

              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            v2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v22 representedElementCategory])
            {
              break;
            }

            ++v21;
            if (v2 == v20)
            {
              goto LABEL_28;
            }
          }

          v24 = [v23 indexPath];
          sub_757590();

          v30 = sub_7575D0();
          (*v31)(v6, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_7BC8C(0, *(v3 + 2) + 1, 1, v3);
          }

          v26 = *(v3 + 2);
          v25 = *(v3 + 3);
          if (v26 >= v25 >> 1)
          {
            v3 = sub_7BC8C((v25 > 1), v26 + 1, 1, v3);
          }

          *(v3 + 2) = v26 + 1;
          *&v3[8 * v26 + 32] = v30;
        }

        while (v2 != v20);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_28:

    v27 = sub_68D2D0(v3);

    return v27;
  }

  return &_swiftEmptySetSingleton;
}

char *sub_3AE18C(void *a1)
{
  v24 = a1;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v7 = [v24 indexPath];
  sub_757590();

  LOBYTE(v7) = sub_666EC8(v5, v6);

  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        v13 = v9;
        [v13 contentOffset];
        v15 = v14;
        v16 = -v14;
        if (v14 > 0.0)
        {
          v16 = 0.0;
        }

        *&v11[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v16;
        v17 = v12;
        [v11 frame];
        [v11 setFrame:?];
        [v11 frame];
        [v11 setFrame:?];
        v11[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding] = v15 < 0.0;
        if (v15 <= 0.0)
        {

          *&v11[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v13 contentOffset];
          v19 = v18;

          v20 = v19 * 0.28;
          if (v19 * 0.28 < 0.0)
          {
            v20 = 0.0;
          }

          *&v11[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] = v20;
        }

        return v11;
      }
    }
  }

  v21 = v24;

  return v21;
}

_OWORD *sub_3AE42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  sub_76A510();
  swift_unknownObjectRelease();
  sub_132B4(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_13310(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_BEB8(v10);
}

BOOL sub_3AE580(uint64_t a1)
{
  sub_38EE0(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_B170(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_76A930();
    (*(v5 + 8))(v8, v3);
    sub_BEB8(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_38EE0(a1, v18);
  if (!v19)
  {
    sub_BDD0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_3AE8C0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = &_swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_507AD4;
  aBlock[3] = &unk_88F5C8;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  sub_769BC0();
  v10 = sub_769210();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v12 = sub_769210();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v14 = sub_769210();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView();
  v15 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v16 = sub_769210();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v18 = sub_769210();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_76A950();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = sub_769240();
  v30 = v29;
  if (v28 == sub_769240() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = sub_76A950();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = sub_769240();
  v35 = v34;
  if (v33 == sub_769240() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_76A950();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  sub_7689F0();
  sub_7689E0();
  if (qword_93E0D8 != -1)
  {
    swift_once();
  }

  v38 = sub_BD88(&unk_945000);
  sub_BE38(v38, qword_9A07A8);
  sub_7686D0();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v26 = sub_769210();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

double *sub_3AEE98(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v18, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_E59C4();
    v11 = sub_769460();

    if (v11 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v17 = _swiftEmptyArrayStorage;
      v13 = v4;
      v4 = &v17;
      result = sub_76A7C0();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = sub_76A770();
          goto LABEL_7;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v15 = *(v11 + 8 * v14 + 32);
LABEL_7:
        v16 = v15;
        ++v14;
        sub_3AE18C(v15);

        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        v4 = &v17;
        sub_76A7B0();
        if (i == v14)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_3AF270(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a1;
  isa = sub_757550().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v19.receiver = v13;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, *a5, v12, isa);

  if (v16)
  {
    v17 = sub_3AE18C(v16);

    v13 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v17;
}

id sub_3AF488(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = &_swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_3B04C8(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return &dword_0 + 1;
}

id sub_3AF720(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*(v4 + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *(v4 + v16);
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_7CC78(*(v18 + 16), 0), v20 = *(sub_757640() - 8), sub_618C2C(&v27, v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18), v22 = v21, , sub_1A01E0(), v22 == v19))
      {
        sub_757640();
        isa = sub_769450().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v23 = type metadata accessor for BaseCollectionCompositionalLayout();
  v28.receiver = v4;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v24;
}

id sub_3AFAB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t *sub_3AFB5C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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
    sub_3B0244(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_3AFBF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_757640();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_BD88(&qword_948178);
  result = sub_76A720();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_3B0900(&unk_952080, &type metadata accessor for IndexPath);
    result = sub_769150();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_3AFF1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_764CF0();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_BD88(&qword_9520F0);
  result = sub_76A720();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_3B0900(&qword_948180, &type metadata accessor for AdamId);
    result = sub_769150();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void sub_3B0244(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_757640();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (sub_7575D0() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:sub_7575D0()];
      v24 = a4;
      v25 = a3;
      v26 = sub_7575C0();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_3AFBF4(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_3B04C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_757640();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (sub_7575D0() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:sub_7575D0()];
        v22 = sub_7575C0();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_3AFBF4(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_3AFB5C(v27, v9, v39, v28);

  return v24;
}

uint64_t sub_3B0870()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_3B08A8()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_3B08E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3B0900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B0948()
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE00);
  qword_952110 = v0;
  unk_952118 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_9520F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_3B0A04()
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE18);
  qword_952138 = v0;
  unk_952140 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_952120);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_3B0AE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93D620 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EA58);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3B0CC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_3B0D28()
{
  sub_BD88(&qword_950670);
  sub_280A0();
  sub_768AF0();
  return 3;
}

unint64_t sub_3B0DA4()
{
  result = qword_93F738;
  if (!qword_93F738)
  {
    sub_765940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F738);
  }

  return result;
}

unint64_t sub_3B0E04()
{
  result = qword_9521C0;
  if (!qword_9521C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9521C0);
  }

  return result;
}

unint64_t sub_3B0E5C()
{
  result = qword_9521C8;
  if (!qword_9521C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9521C8);
  }

  return result;
}

BOOL sub_3B0EB0(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = fabs(a7);
  if (a7 > 1.79769313e308)
  {
    v19 = 1.79769313e308;
  }

  v20 = 0.0;
  if (v19 != 0.0)
  {
    v21 = a1;
    v22 = [a2 traitCollection];
    v23 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = 4;
    v26 = &v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
    *v26 = a7;
    *(v26 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v22;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v21;
    v47.receiver = v24;
    v47.super_class = v23;
    v27 = objc_msgSendSuper2(&v47, "init");
    if (qword_93C5F0 != -1)
    {
      swift_once();
    }

    v28 = qword_9482F8;
    v29 = [qword_9482F8 objectForKey:v27];
    if (v29)
    {
      v30 = v29;

      v20 = *&v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements + 8];
    }

    else
    {
      v31 = qword_93C5E8;
      v30 = v21;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_7666D0();
      v33 = sub_BE38(v32, qword_9482E0);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v18, v33, v32);
      (*(v34 + 56))(v18, 0, 1, v32);
      sub_766B00();
      sub_766B20();
      sub_766B10();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_10A2C(v18, &unk_93E530);
      v20 = a3 + a5 + v36;
      v41 = type metadata accessor for ExpandableTextView.CacheValue();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      *v43 = a7;
      v43[1] = v20;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      v46.receiver = v42;
      v46.super_class = v41;
      v44 = objc_msgSendSuper2(&v46, "init");
      [v28 setObject:v44 forKey:v27];
    }
  }

  return v20 > a8;
}

double sub_3B1248(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765900();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (sub_7658B0())
  {
    return v13;
  }

  sub_765910();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_93CEC0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_9520F8, qword_952110);
    sub_33964();
    sub_766700();
    v13 = v15;
    v16 = *(v4 + 8);
    v16(v6, v3);
    if (qword_93CEC8 != -1)
    {
      swift_once();
    }

    sub_B170(qword_952120, qword_952138);
    sub_33964();
    sub_766700();
    v16(v6, v3);
    return v13;
  }

  if (qword_93CED0 != -1)
  {
    swift_once();
  }

  v32 = sub_766CA0();
  sub_BE38(v32, qword_952148);
  if (qword_93D620 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  sub_BE38(v17, qword_99EA58);
  v18 = [a2 traitCollection];
  sub_766470();
  sub_BE70(0, &qword_93F900);
  v19 = sub_769E10();
  sub_766C70();
  v21 = v20;
  sub_769E20();
  v23 = v22;

  v24 = *(v4 + 8);
  v24(v6, v3);
  v25 = v21 - v23;
  if (qword_93CED8 != -1)
  {
    swift_once();
  }

  v13 = ceil(v25);
  sub_BE38(v32, qword_952160);
  v26 = [a2 traitCollection];
  sub_766470();
  v27 = sub_769E10();
  sub_766C70();
  [v27 descender];

  v24(v6, v3);
  return v13;
}

void sub_3B1780(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_BD88(&qword_93F730);
  sub_280A0();
  sub_769030();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = sub_765890();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = sub_7658D0();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_266A8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_26694;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_88F798;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_334D4C(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_3B1248(a1, a6);
  }
}

void sub_3B1A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v117 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_765920();
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v108 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v106 - v11;
  __chkstk_darwin(v12);
  v106 = &v106 - v13;
  __chkstk_darwin(v14);
  v107 = &v106 - v15;
  v16 = sub_BD88(&qword_952410);
  __chkstk_darwin(v16 - 8);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v106 - v19;
  __chkstk_darwin(v20);
  v110 = &v106 - v21;
  __chkstk_darwin(v22);
  v111 = &v106 - v23;
  v116 = sub_765900();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v106 - v27;
  v124 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_3B1248(a1, a5)}];

  v121 = a1;
  v30 = sub_7658D0();
  v113 = swift_getObjectType();
  v31 = [a5 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_119AC;
  *(v35 + 24) = v34;
  v129 = sub_2636C;
  v130 = v35;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_10C1C;
  v128 = &unk_88F6A8;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a5 pageMarginInsets];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v124;
  v48 = [v124 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v50 = v49;
  v52 = v51;

  v120 = v38;
  LODWORD(v113) = sub_3B0EB0(v38, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
  sub_765910();
  v54 = v115;
  v55 = v114;
  v56 = v116;
  (*(v115 + 16))(v114, v28, v116);
  v57 = v55;
  v58 = v55;
  v59 = v56;
  v60 = (*(v54 + 88))(v58, v56);
  v61 = v122;
  v62 = v123;
  if (v60 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v60 == enum case for Paragraph.Style.article(_:))
  {
    v63 = a5;
    sub_BE70(0, &qword_93E540);
    v64 = sub_769FF0();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    v63 = a5;
    sub_BE70(0, &qword_93E540);
    v64 = sub_769FD0();
LABEL_6:
    v65 = v64;
    (*(v54 + 8))(v28, v59);
    goto LABEL_7;
  }

  sub_BE70(0, &qword_93E540);
  v65 = sub_769FD0();
  ObjectType = a5;
  v97 = *(v54 + 8);
  v97(v28, v59);
  v97(v57, v59);
  v63 = ObjectType;
LABEL_7:
  ObjectType = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  [*&v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setTextColor:v65];

  sub_BD88(&qword_950670);
  sub_280A0();
  sub_768B00();
  v66 = aBlock;
  v67 = v118;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = sub_765890();
  }

  if ((v66 & v113 & 1) == 0)
  {
    v90 = v120;
    sub_765930();
    (*(v61 + 56))(v67, 0, 1, v62);
    v91 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v92 = v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
    v93 = *&v53[ObjectType];
    v94 = v90;
    [v93 setNumberOfLines:0];
    if (v92 != v53[v91])
    {
      sub_1A5974();
    }

    v86 = v94;
    sub_1A532C(v94);
    v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v95 = v112;
    sub_3B28D4(v67, v112);
    v96 = (*(v68 + 48))(v95, 1, v62);
    v89 = v124;
    if (v96 == 1)
    {
      sub_10A2C(v95, &qword_952410);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_10A2C(v67, &qword_952410);
      [v89 setNeedsLayout];

      return;
    }

    v98 = v109;
    (*(v68 + 32))(v109, v95, v62);
    v99 = v108;
    (*(v68 + 16))(v108, v98, v62);
    v100 = (*(v68 + 88))(v99, v62);
    if (v100 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v100 == enum case for Paragraph.Alignment.center(_:))
      {
        v101 = 1;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.right(_:))
      {
        v101 = 2;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.justified(_:))
      {
        v101 = 3;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.localized(_:))
      {
        v101 = 4;
        goto LABEL_41;
      }

      (*(v68 + 8))(v99, v62);
    }

    v101 = 0;
LABEL_41:
    [*&v53[ObjectType] setTextAlignment:v101];
    (*(v68 + 8))(v98, v62);
    goto LABEL_42;
  }

  v69 = sub_7658A0();
  v70 = [v63 traitCollection];
  v71 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v69];
  v72 = [v69 length];
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = v70;
  *(v73 + 32) = v71;
  *(v73 + 40) = 1;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_266A8;
  *(v74 + 24) = v73;
  v129 = sub_26694;
  v130 = v74;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_10C1C;
  v128 = &unk_88F720;
  v75 = _Block_copy(&aBlock);
  v76 = v70;
  v77 = v71;

  [v69 enumerateAttributesInRange:0 options:v72 usingBlock:{0x100000, v75}];

  _Block_release(v75);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if ((v69 & 1) == 0)
  {
    v78 = v77;
    v67 = v111;
    sub_765930();
    v80 = v122;
    v79 = v123;
    (*(v122 + 56))(v67, 0, 1, v123);
    v81 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v82 = v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
    v83 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
    v84 = *&v53[ObjectType];
    v85 = v78;
    [v84 setNumberOfLines:v83];
    if (v82 != v53[v81])
    {
      sub_1A5974();
    }

    v86 = v85;
    sub_1A532C(v85);
    v53[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_3B28D4(v67, v110);
    v88 = (*(v80 + 48))(v87, 1, v79);
    v89 = v124;
    if (v88 == 1)
    {
      sub_10A2C(v87, &qword_952410);
LABEL_46:
      [v53 setNeedsLayout];

      goto LABEL_47;
    }

    v102 = v107;
    (*(v80 + 32))(v107, v87, v79);
    v103 = v106;
    (*(v80 + 16))(v106, v102, v79);
    v104 = (*(v80 + 88))(v103, v79);
    if (v104 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v104 == enum case for Paragraph.Alignment.center(_:))
      {
        v105 = 1;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.right(_:))
      {
        v105 = 2;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.justified(_:))
      {
        v105 = 3;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.localized(_:))
      {
        v105 = 4;
        goto LABEL_45;
      }

      (*(v80 + 8))(v103, v79);
    }

    v105 = 0;
LABEL_45:
    [v84 setTextAlignment:v105];
    (*(v80 + 8))(v102, v79);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_3B28BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3B28D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_952410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s5StateVwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_3B2A20()
{
  v1 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_BD88(&qword_945010);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_768A10();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_759F30();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_129C40(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_769240();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_BD88(&unk_94F470);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_782440;
      *(inited + 16) = xmmword_782440;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_10E8CC(v35);
      swift_setDeallocating();
      v48[2] = sub_BD88(&unk_9453B0);
      swift_arrayDestroy();
      sub_BD88(&qword_9522E8);
      sub_768E20();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_77DC20;
      sub_768DE0();
      sub_768E10();
      sub_768DF0();
      sub_1A2D10(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_75C480();
      swift_allocObject();
      v48[1] = sub_75C470();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_10E8CC(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_75D9B0();
      swift_allocObject();
      v51 = sub_75D9A0();
      sub_BD88(&unk_940730);
      sub_768670();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_759D10();
      sub_759D10();
      sub_768A00();
      v39 = v62;
      sub_7687A0();
      v40 = sub_7570A0();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_759F20();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_759E30();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_759F10();
      swift_allocObject();

      v46 = sub_759ED0();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_3B346C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_768C60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_BD88(&unk_9522F0);
  swift_allocObject();
  *&v1[v8] = sub_7690B0();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_768BE0();
  sub_769E70();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_3B3680(uint64_t a1)
{
  v2 = sub_75D9D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_769240();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_7692F0(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_769240();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_75D9C0();
    sub_7690A0();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_3B39A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 selectedTextRange];
  if (!v7)
  {
    v13 = 1;
    return v13 & 1;
  }

  v8 = v7;
  sub_3B3ECC();
  v9 = [v8 end];
  v10 = [a1 endOfDocument];
  v11 = sub_76A1C0();

  v12 = a3 < 1 || sub_769350() != 0;
  v14 = [a1 markedTextRange];
  if (v14)
  {
  }

  else if (!v12 && (v11 & 1) != 0)
  {
    v15 = 1;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  v16 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction);
  v17 = v15;
  if (v16)
  {
    v17 = v15 | [v16 isHandlingWriting];
  }

  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled) = v17 & 1;
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = a1 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v20 == 1)
  {
    v21 = v18;
    ObjectType = swift_getObjectType();
    v23 = a1;
    v24 = sub_129C40(ObjectType, v21);
    if (v24)
    {
      (*(v21 + 16))(0, 0, ObjectType, v21);
    }

    v13 = !v24;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_3B3DBC(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_3B3ECC()
{
  result = qword_94AB00;
  if (!qword_94AB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_94AB00);
  }

  return result;
}

void sub_3B3F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75D9D0();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_769240();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_7692F0(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_769240();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_75D9C0();
    sub_7690A0();
    (*(v39 + 8))(v34, v40);
  }
}

uint64_t sub_3B4228@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v3 = sub_766690();
  sub_BE38(v3, qword_99D338);
  sub_766660();
  sub_7601D0();
  v4 = sub_7601F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

double sub_3B4348(double a1)
{
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v2 = sub_766690();
  sub_BE38(v2, qword_99D338);
  sub_766660();
  return a1;
}

id sub_3B4490()
{
  v1 = v0;
  v2 = sub_764A60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764870();
  if (v6)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  sub_764A20();
  sub_3B49C8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v8 = sub_76A520();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = sub_764880();
    v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_359B6C();
  }

  return result;
}

id sub_3B462C()
{
  v0 = sub_764A60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v5 = v4;
  PageTraitEnvironment.pageColumnMargin.getter();
  v7 = v6;
  sub_764A20();
  sub_3B49C8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v8 = sub_76A520();
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    if (qword_93CD68 != -1)
    {
      swift_once();
    }

    v9 = qword_99D350;
  }

  else
  {
    if (qword_93CD70 != -1)
    {
      swift_once();
    }

    v9 = qword_99D368;
  }

  v10 = ceil((v5 - v7) / 1.5);
  v11 = sub_759270();
  sub_BE38(v11, v9);
  sub_759290();
  sub_3B49C8(&qword_94AD50, &type metadata accessor for BrickLayout);
  sub_766ED0();
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 absoluteDimension:v10];
  v16 = [v14 absoluteDimension:v13];
  v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [objc_opt_self() itemWithLayoutSize:v17];
  v19 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_77D9F0;
  *(v20 + 32) = v18;
  sub_4FB2C();
  v21 = v18;
  isa = sub_769450().super.isa;

  v23 = [v19 verticalGroupWithLayoutSize:v17 subitems:isa];

  return v23;
}

uint64_t sub_3B49C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B4A10()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_763C40();
  sub_161DC(v4, qword_99D7C8);
  sub_BE38(v4, qword_99D7C8);
  if (qword_93D9F8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F5E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = sub_766CA0();
  v10[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  return sub_763C30();
}

id sub_3B4D34()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_BD88(&unk_944E80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_3B5494(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_944E70);
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_75B470();
    sub_75B460();
    v11 = sub_759CF0();
    v12 = sub_22A974(v11, sub_30AE4);

    v13 = sub_759CE0();
    sub_4ED3B8(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_3B4FC8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_763C40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763C60();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v8);
  if (qword_93CEE0 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v2, qword_99D7C8);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel];
  v16[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v12;
  v13 = v12;
  sub_763C50();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_3B5504();
  sub_7673E0();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell()
{
  result = qword_952380;
  if (!qword_952380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B5354()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_3B5430();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3B5430()
{
  if (!qword_952390)
  {
    sub_133D8(&unk_944E80);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_952390);
    }
  }
}

uint64_t sub_3B5494(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3B5504()
{
  result = qword_952398;
  if (!qword_952398)
  {
    sub_763C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952398);
  }

  return result;
}

char *sub_3B555C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_760AD0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_768C60();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_BD88(&unk_944E80);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_93D9F8 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99F5E0);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel] = sub_4ECF40(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_768C10();
  sub_10A2C(v36, &unk_93FBD0);
  sub_10A2C(v37, &unk_93FBD0);
  sub_769E70();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_75BA90();

  v27 = *&v19[v22];
  sub_396E8();
  v28 = v27;
  v29 = sub_769FF0();
  v30 = *&v28[qword_9580B0];
  *&v28[qword_9580B0] = v29;
  v31 = v29;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t sub_3B5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98 = a3;
  v9 = sub_765920();
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v94 = &v92 - v15;
  __chkstk_darwin(v16);
  v93 = &v92 - v17;
  v18 = sub_BD88(&qword_952410);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v92 - v22;
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v92 - v28;
  v101 = v6;
  [v6 bounds];
  v32 = sub_631BE8(v30, v31, a1, a6);
  v97 = a1;
  v33 = sub_75D940();
  sub_BD88(&qword_950678);
  sub_34903C();
  sub_768B00();
  v34 = aBlock;
  if (aBlock == 2)
  {
    v34 = sub_765890();
  }

  v96 = v9;
  v99 = v33;
  if ((v34 & v32 & 1) == 0)
  {
    v94 = v13;
    v55 = sub_7658D0();
    v56 = [a6 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_119AC;
    *(v60 + 24) = v59;
    v106 = sub_2636C;
    v107 = v60;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_10C1C;
    v105 = &unk_88F960;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v29 = v95;
      v44 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      sub_765930();
      v65 = v96;
      (*(v100 + 56))(v29, 0, 1, v96);
      v66 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_1A5974();
      }

      v52 = v70;
      sub_1A532C(v70);
      v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_3B28D4(v29, v20);
      v71 = v100;
      if ((*(v100 + 48))(v20, 1, v65) != 1)
      {
        v77 = v94;
        (*(v71 + 32))(v94, v20, v65);
        v78 = v92;
        (*(v71 + 16))(v92, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v101;
        }

        else
        {
          v72 = v101;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v94, v65);
        goto LABEL_39;
      }

      v54 = v20;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v35 = sub_7658A0();
  v36 = [a6 traitCollection];
  v37 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v35];
  v95 = [v35 length];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_266A8;
  *(v39 + 24) = v38;
  v106 = sub_26694;
  v107 = v39;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_10C1C;
  v105 = &unk_88FA00;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  [v35 enumerateAttributesInRange:0 options:v95 usingBlock:{0x100000, v40}];

  _Block_release(v40);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v101[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v42;
  sub_765930();
  v46 = v96;
  (*(v100 + 56))(v29, 0, 1, v96);
  v47 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_1A5974();
  }

  v52 = v51;
  sub_1A532C(v51);
  v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_3B28D4(v29, v25);
  v53 = v100;
  if ((*(v100 + 48))(v25, 1, v46) != 1)
  {
    v73 = v93;
    (*(v53 + 32))(v93, v25, v46);
    v74 = v94;
    (*(v53 + 16))(v94, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v101;
    }

    else
    {
      v72 = v101;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v94, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v25;
LABEL_14:
  sub_10A2C(v54, &qword_952410);
  v72 = v101;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10A2C(v29, &qword_952410);
  sub_75D930();
  sub_75A530();
  v81 = sub_769490();

  v82 = v98;
  if (v81)
  {
    v83 = sub_75D930();
    v84 = sub_75D920();
    v85 = sub_75D910();
    sub_31AEAC(v83, v84, v85);
  }

  v86 = sub_75D900();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    sub_764C60();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    sub_75BA70();

    v90 = &v87[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
    *v90 = sub_3B7104;
    v90[1] = v89;
    sub_F704(v91);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_3B6648(uint64_t a1, uint64_t a2)
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

uint64_t sub_3B67A8()
{
  sub_BD88(&qword_950678);
  sub_34903C();
  sub_768AF0();
  return 3;
}

uint64_t sub_3B6820()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99FE18);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_3B69B8()
{
  result = qword_9523F8;
  if (!qword_9523F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9523F8);
  }

  return result;
}

unint64_t sub_3B6A10()
{
  result = qword_952400;
  if (!qword_952400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952400);
  }

  return result;
}

uint64_t sub_3B6A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_760F00();
  __chkstk_darwin(v5 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760F20();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_952418);
  sub_34903C();
  sub_769030();
  v9 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    sub_75D940();
    v9 = sub_765890();
  }

  v43 = sub_75D940();
  if (v9)
  {
    v10 = sub_7658A0();
    v41 = 3;
  }

  else
  {
    v10 = sub_7658D0();
    v41 = 0;
  }

  v48 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v49 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_266A8;
  *(v14 + 24) = v13;
  v59 = sub_26694;
  v60 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v58 = &unk_88FA78;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  v42 = v10;
  [v10 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v17;
    v21 = sub_75D930();
    v22 = sub_75D920();
    v23 = sub_75D910();
    if (sub_75D900())
    {
      v49 = sub_764C60();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = sub_7670D0();
    swift_allocObject();
    v29 = v20;
    v30 = sub_767090();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = sub_767090();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = sub_767090();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    sub_75A530();
    LOBYTE(v34) = sub_769490();

    if (v34)
    {
      sub_134D8(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_630128(v44);
    sub_134D8(aBlock, &v52);
    sub_134D8(v56, &v51);
    sub_134D8(v55, &v50);
    v38 = v45;
    sub_760F10();
    sub_3B71EC(&qword_952420, &type metadata accessor for ProductDescriptionLayout);
    v39 = v47;
    sub_7665A0();

    (*(v46 + 8))(v38, v39);
    sub_10A2C(v53, &unk_943B10);
    sub_BEB8(v55);
    sub_BEB8(v56);
    return sub_BEB8(aBlock);
  }

  return result;
}

uint64_t sub_3B70AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3B70C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B711C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B715C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B71A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B71EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3B7278()
{
  result = qword_952428;
  if (!qword_952428)
  {
    sub_758010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952428);
  }

  return result;
}

uint64_t sub_3B72D8()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7638F0();
  sub_768900();
  sub_768ED0();
  v4 = v9;
  sub_7638E0();
  sub_758960();
  sub_768ED0();
  v5 = v9;
  sub_758950();
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v6 = sub_768F30();

  return v6;
}

void sub_3B7448(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_71DFF0() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_99A4B0]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_3B76B0(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_99A4B8];
        if (v13)
        {
          v14 = *&v6[qword_99A4B0];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_7699B0(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_99A4B0];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_3B76B0(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699B0();

  if (v5)
  {
    if (a1)
    {
      sub_396E8();
      v6 = sub_76A0F0();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

void sub_3B7884(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_76AA60(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_76AA60(*&v3);
}

Swift::Int sub_3B78D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_76AA30();
  sub_3B7884(v1, v2);
  return sub_76AA80();
}

Swift::Int sub_3B7930()
{
  v1 = *v0;
  v2 = v0[1];
  sub_76AA30();
  sub_3B7884(v1, v2);
  return sub_76AA80();
}

id sub_3B79AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_3B7ED0(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_3B7A0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_3B7ED0(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_3B7A6C()
{
  sub_BD88(&qword_9524E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79A420;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_79A430;
  *(v0 + 96) = xmmword_79A430;
  *(v0 + 112) = xmmword_79A430;
  *(v0 + 128) = xmmword_79A440;
  *(v0 + 144) = xmmword_79A440;
  *(v0 + 160) = xmmword_79A440;
  *(v0 + 176) = xmmword_79A450;
  *(v0 + 192) = xmmword_79A450;
  *(v0 + 208) = xmmword_79A450;
  *(v0 + 224) = xmmword_79A460;
  *(v0 + 240) = xmmword_79A460;
  *(v0 + 256) = xmmword_79A470;
  *(v0 + 272) = xmmword_792930;
  *(v0 + 288) = xmmword_792930;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_79A480;
  *(v0 + 352) = xmmword_79A490;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_79A4A0;
  *(v0 + 400) = xmmword_79A4B0;
  *(v0 + 416) = xmmword_79A4C0;
  *(v0 + 432) = xmmword_79A4D0;
  *(v0 + 448) = xmmword_79A4E0;
  *(v0 + 464) = xmmword_79A4F0;
  *(v0 + 480) = xmmword_79A4C0;
  *(v0 + 496) = xmmword_79A4F0;
  *(v0 + 512) = xmmword_79A500;
  *(v0 + 528) = xmmword_79A510;
  *(v0 + 544) = xmmword_79A520;
  *(v0 + 560) = xmmword_79A530;
  *(v0 + 576) = xmmword_79A530;
  *(v0 + 592) = xmmword_79A530;
  *(v0 + 608) = xmmword_79A540;
  *(v0 + 624) = xmmword_79A550;
  *(v0 + 640) = xmmword_79A560;
  *(v0 + 656) = xmmword_79A570;
  *(v0 + 672) = xmmword_79A580;
  *(v0 + 688) = xmmword_79A590;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_79A5A0;
  *(v0 + 736) = xmmword_79A5B0;
  *(v0 + 752) = xmmword_79A5C0;
  *(v0 + 768) = xmmword_79A5C0;
  *(v0 + 784) = xmmword_79A5D0;
  *(v0 + 800) = xmmword_79A5E0;
  *(v0 + 816) = xmmword_79A5F0;
  *(v0 + 832) = xmmword_79A600;
  *(v0 + 848) = xmmword_79A610;
  *(v0 + 864) = xmmword_79A610;
  *(v0 + 880) = xmmword_79A610;
  *(v0 + 896) = xmmword_79A620;
  *(v0 + 912) = xmmword_79A620;
  *(v0 + 928) = xmmword_79A620;
  *(v0 + 944) = xmmword_79A630;
  *(v0 + 960) = xmmword_79A630;
  *(v0 + 976) = xmmword_79A640;
  *(v0 + 992) = xmmword_79A650;
  *(v0 + 1008) = xmmword_79A660;
  *(v0 + 1024) = xmmword_79A660;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_79A670;
  *(v0 + 1072) = xmmword_79A680;
  *(v0 + 1088) = xmmword_79A690;
  *(v0 + 1104) = xmmword_79A6A0;
  *(v0 + 1120) = xmmword_79A6B0;
  *(v0 + 1136) = xmmword_79A6C0;
  *(v0 + 1152) = xmmword_79A6C0;
  *(v0 + 1168) = xmmword_79A6C0;
  *(v0 + 1184) = xmmword_79A6D0;
  *(v0 + 1200) = xmmword_79A6E0;
  *(v0 + 1216) = xmmword_79A6D0;
  *(v0 + 1232) = xmmword_79A6F0;
  *(v0 + 1248) = xmmword_79A700;
  *(v0 + 1264) = xmmword_79A710;
  *(v0 + 1280) = xmmword_79A720;
  *(v0 + 1296) = xmmword_79A730;
  *(v0 + 1312) = xmmword_79A740;
  *(v0 + 1328) = xmmword_79A750;
  *(v0 + 1344) = xmmword_79A760;
  *(v0 + 1360) = xmmword_79A770;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_79A780;
  *(v0 + 1440) = xmmword_79A780;
  *(v0 + 1456) = xmmword_79A780;
  *(v0 + 1472) = xmmword_792920;
  *(v0 + 1488) = xmmword_792920;
  *(v0 + 1504) = xmmword_792920;
  *(v0 + 1520) = xmmword_79A790;
  *(v0 + 1536) = xmmword_79A7A0;
  *(v0 + 1552) = xmmword_79A7B0;
  *(v0 + 1568) = xmmword_79A7C0;
  *(v0 + 1584) = xmmword_79A7D0;
  *(v0 + 1600) = xmmword_79A7C0;
  *(v0 + 1616) = xmmword_79A7E0;
  *(v0 + 1632) = xmmword_79A7F0;
  *(v0 + 1648) = xmmword_79A800;
  *(v0 + 1664) = xmmword_79A7F0;
  *(v0 + 1680) = xmmword_79A810;
  *(v0 + 1696) = xmmword_79A820;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_10DAFC(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_952430 = v7;
  return result;
}

uint64_t sub_3B7E6C()
{

  return swift_deallocClassInstance();
}

id sub_3B7ED0(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_93CEE8 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_952430;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(&dword_10 + off_952430))
  {
LABEL_4:
    v15 = *(&off_87DB40 + v5 + 32);
    v16 = sub_6641D0(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v16), *(*&stru_20.segname[v7 + 16] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (*(&dword_10 + v7))
    {
      v19 = sub_6641D0(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v19), *(*&stru_20.segname[v7 + 16] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (*(&dword_10 + v7))
      {
        v22 = sub_6641D0(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v22), *(*&stru_20.segname[v7 + 16] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (*(&dword_10 + v7))
        {
          v25 = sub_6641D0(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v25), *(*&stru_20.segname[v7 + 16] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (*(&dword_10 + v7))
          {
            v28 = sub_6641D0(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v28), *(*&stru_20.segname[v7 + 16] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (*(&dword_10 + v7))
            {
              v31 = sub_6641D0(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v31), *(*&stru_20.segname[v7 + 16] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (*(&dword_10 + v7))
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_3B8354()
{
  result = qword_9524E8;
  if (!qword_9524E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9524E8);
  }

  return result;
}

uint64_t sub_3B83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_BD88(&unk_948730);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = sub_75FA00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7664A0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_7674E0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_767510();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = sub_766CA0();
  v90 = &protocol witness table for StaticDimension;
  sub_B1B4(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_B1B4(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  sub_7674F0();
  sub_75F9B0();
  sub_3B9020(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v27) = sub_76A520();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_84734(v37, &v40[v39]);
    swift_endAccess();
    sub_276DA8();
    sub_10A2C(v37, &qword_94C3F0);
    sub_75F9C0();
    v41 = v74;
    v42 = sub_76A520();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      sub_7674A0();
      sub_B170(v88, v89);
      sub_766710();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_BEB8(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_84734(v48, &v51[v50]);
    swift_endAccess();
    sub_276DA8();
    sub_10A2C(v48, &qword_94C3F0);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    sub_75F990();
    v53 = v74;
    v54 = sub_76A520();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_BD88(&unk_948740);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = sub_758C70();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = sub_75BD30();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_BD88(&unk_9457F0);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = sub_765870();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_4A18A4(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10A2C(v68, &unk_9457D0);
  v58[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v58 setNeedsLayout];
  sub_10A2C(v66, &unk_94AC40);
  sub_10A2C(v64, &unk_9457E0);
  sub_10A2C(v62, &unk_94A780);
  sub_10A2C(v60, &unk_948730);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_3B9020(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3B9068(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v5 = sub_76A920();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_7674E0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767510();
  v34 = *(v15 - 8);
  v35 = v15;
  __chkstk_darwin(v15);
  v33 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75FA00();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3B9020(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v21 = sub_76A520();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v39 = sub_766CA0();
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(v38);
  v37[3] = v7;
  v37[4] = &protocol witness table for FontSource;
  v22 = sub_B1B4(v37);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v33;
    sub_7674F0();
    sub_7674A0();
    (*(v34 + 8))(v24, v35);
    sub_B170(v38, v39);
    v25 = v30;
    sub_33964();
    v26 = v36;
    sub_766700();
    (*(v31 + 8))(v25, v32);
    sub_BEB8(v38);
  }

  else
  {
    v27 = v33;
    sub_7674F0();
    v26 = v36;
    sub_7674D0();
    (*(v34 + 8))(v27, v35);
  }

  swift_getObjectType();
  sub_277BF8(v26);
  return a1;
}

uint64_t sub_3B9614(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_7674E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767510();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = sub_766CA0();
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v5 + 8))(v7, v4);
  sub_7674F0();
  swift_getObjectType();
  sub_7674D0();
  (*(v13 + 8))(v16, v12);
  sub_277BF8(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = sub_75F970();

  return v21;
}

uint64_t sub_3B9960@<X0>(uint64_t a1@<X8>)
{
  if (sub_7699D0())
  {
    v2 = sub_766690();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_769240();
  v9 = v8;
  if (v7 == sub_769240() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_15:
    if (qword_93CEF0 != -1)
    {
      swift_once();
    }

    v20 = sub_766690();
    v21 = v20;
    v22 = qword_99D7F0;
    goto LABEL_18;
  }

  v13 = sub_769240();
  v15 = v14;
  if (v13 == sub_769240() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_76A950();

    if ((v18 & 1) == 0)
    {
      sub_766670();
      v19 = sub_766690();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_93CEF8 != -1)
  {
    swift_once();
  }

  v20 = sub_766690();
  v21 = v20;
  v22 = qword_99D808;
LABEL_18:
  v23 = sub_BE38(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

unint64_t sub_3B9C04(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v250 = a3;
  v249 = a2;
  v18 = sub_BD88(&qword_946D98);
  __chkstk_darwin(v18 - 8);
  v221 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v214 - v21;
  v23 = sub_BD88(&unk_948710);
  __chkstk_darwin(v23 - 8);
  v237 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v238 = &v214 - v26;
  v27 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v27 - 8);
  v236 = &v214 - v28;
  v29 = sub_75A6B0();
  __chkstk_darwin(v29 - 8);
  v220 = &v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v225 = &v214 - v32;
  __chkstk_darwin(v33);
  v231 = &v214 - v34;
  __chkstk_darwin(v35);
  v230 = &v214 - v36;
  v235 = sub_75A6E0();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v224 = &v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v229 = &v214 - v39;
  v240 = sub_75DC30();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v226 = &v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = &v214 - v42;
  v219 = type metadata accessor for ScreenshotDisplayConfiguration();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v44 = &v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v45 - 8);
  v222 = &v214 - v46;
  v233 = sub_766690();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v248 = &v214 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_75C9A0();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_760770();
  v260 = *(v264 - 8);
  __chkstk_darwin(v264);
  v247 = &v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v263 = &v214 - v51;
  __chkstk_darwin(v52);
  v255 = &v214 - v53;
  v265 = sub_75C930();
  v54 = *(v265 - 8);
  __chkstk_darwin(v265);
  v216 = &v214 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v223 = &v214 - v57;
  __chkstk_darwin(v58);
  v252 = &v214 - v59;
  __chkstk_darwin(v60);
  v228 = &v214 - v61;
  __chkstk_darwin(v62);
  v258 = &v214 - v63;
  v64 = sub_BD88(&unk_948720);
  __chkstk_darwin(v64 - 8);
  v217 = &v214 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v254 = &v214 - v67;
  __chkstk_darwin(v68);
  v262 = &v214 - v69;
  v70 = &unk_77E220;
  v71 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v71 - 8);
  v73 = &v214 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = sub_75C840();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v243 = v74;
  sub_223E1C(a1, v73, a4);
  sub_10A2C(v73, &unk_93F620);
  sub_BE70(0, &qword_93E540);
  v76 = sub_76A000();
  [v10 setBackgroundColor:v76];

  v266 = a1;
  v77 = sub_75BC70();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = sub_76A860();
    v77 = v76;
  }

  else
  {
    v78 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
  }

  v79 = v255;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v257 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v257 = *(v77 + 32);
    }
  }

  else
  {

    v257 = 0;
  }

  v242 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v256 = sub_75BCA0();
  v10 = sub_75BC80();
  v80 = sub_75BCF0();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = sub_76A860();
    v80 = v76;
  }

  else
  {
    v81 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
  }

  v253 = a4;
  v261 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v259 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_80;
      }

      v259 = *(v80 + 32);
    }
  }

  else
  {

    v259 = 0;
  }

  sub_3B9960(v262);
  v70 = sub_75BCA0();
  v54 = sub_75BC80();
  v82 = sub_75BC70();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = sub_76A860();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = sub_76A770();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = sub_75BCF0();
  if (!(v82 >> 62))
  {
    if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = sub_76A860();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = sub_76A770();
    goto LABEL_32;
  }

  if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v227 = v22;
  sub_75BCC0();
  v88 = sub_760760();
  v241 = v44;
  if ((v88 & 1) == 0)
  {

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v76 = v258;
    (*(v261 + 104))(v258, enum case for LockupMediaLayout.DisplayType.none(_:), v265);
    v70 = 9490432;
    v44 = v257;
    goto LABEL_66;
  }

  v89 = v252;
  if (v54 | v70)
  {
    v94 = v228;
    sub_7666A0();

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v95 = v265;
    (*(v261 + 104))(v94, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v265);
    v76 = v258;
    (*(v93 + 32))(v258, v94, v95);
    v70 = 9490432;
    v44 = v257;
    v54 = v248;
    goto LABEL_67;
  }

  v90 = sub_55BABC(v76, v85, 0, 1);
  v54 = v90;
  v70 = v90 >> 62;
  if (v90 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v250 = i;
    if (v76)
    {
      v92 = sub_759690();
    }

    else
    {
      v92 = 0;
    }

    v96 = sub_55BE04(v92);

    v215 = v10;
    LODWORD(v214) = v96;
    if (v76)
    {
      v97 = sub_759690();
    }

    else
    {
      v97 = 0;
    }

    v98 = v260;
    v99 = v222;
    v100 = v264;
    (*(v260 + 16))(v222, v255, v264);
    (*(v98 + 56))(v99, 0, 1, v100);
    HIDWORD(v214) = sub_55C32C(v97, v99);

    sub_10A2C(v99, &unk_94DF00);
    if (v70)
    {
      v101 = sub_76A860();
    }

    else
    {
      v101 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
    }

    v10 = v215;
    v102 = v223;
    if (!v101)
    {

LABEL_57:
      v106 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v107 = v261;
      v108 = v265;
      v249 = *(v261 + 104);
      v249(v102, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v265);
      v109 = sub_75C920();
      v110 = *(v107 + 8);
      v110(v102, v108);
      if (((v250 >= v109) & BYTE4(v214)) != 0 || (v106 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v111 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v265), v112 = sub_75C920(), v110(v102, v111), ((v250 >= v112) & v214) != 0) || (v106 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v265), v114 = sub_75C920(), v110(v102, v113), v250 >= v114))
      {

        v120 = v255;
        v255 = *(v260 + 8);
        (v255)(v120, v264);
      }

      else
      {
        v106 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v115 = v265;
        v249(v102, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v265);
        v116 = sub_75C920();

        v110(v102, v115);
        v117 = v255;
        v255 = *(v260 + 8);
        (v255)(v117, v264);
        if (v250 != v116)
        {
          v118 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v105 = v228;
          v119 = v228;
LABEL_64:
          v249(v119, v118, v265);
          v93 = v261;
          v70 = &unk_90D000;
          v76 = v258;
          v44 = v257;
          v10 = v215;
          goto LABEL_65;
        }
      }

      v105 = v228;
      v119 = v228;
      v118 = v106;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v103 = sub_765150();

    if ((v103 & 1) == 0)
    {
      goto LABEL_57;
    }

    v104 = v255;
    v255 = *(v260 + 8);
    (v255)(v104, v264);
    v93 = v261;
    v105 = v228;
    (*(v261 + 104))(v228, enum case for LockupMediaLayout.DisplayType.landscape(_:), v265);
    v70 = 9490432;
    v76 = v258;
    v44 = v257;
LABEL_65:
    (*(v93 + 32))(v76, v105, v265);
LABEL_66:
    v54 = v248;
    v89 = v252;
LABEL_67:
    sub_75BCC0();
    v268[3] = &type metadata for CGFloat;
    v268[4] = &protocol witness table for CGFloat;
    v268[0] = 0x4021000000000000;
    sub_134D8(v268, v267);
    v121 = *(v93 + 16);
    v121(v89, v76, v265);
    v252 = v121;
    if (v10 | v256)
    {
      goto LABEL_85;
    }

    v82 = sub_55BABC(v44, v259, 0, 1);
    if (v82 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      goto LABEL_73;
    }

    if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {

LABEL_73:

      sub_765260();
      sub_7666A0();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v122 = sub_76A860();
  v82 = v76;
  if (v122)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  sub_7666A0();
LABEL_86:
  sub_1ED18(v262, v254, &unk_948720);
  v123 = v244;
  sub_75C970();
  sub_BEB8(v268);
  v124 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v125 = v245;
  v126 = &v73[v124];
  v127 = v246;
  (*(v245 + 24))(v126, v123, v246);
  swift_endAccess();
  [v73 *(v70 + 3704)];
  (*(v125 + 8))(v123, v127);
  if (v44)
  {
    v128 = sub_759690();
  }

  else
  {
    v128 = 0;
  }

  sub_7596B0();
  v129 = v241;
  sub_6C14C(v128, v241);

  v130 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v129, &v73[v130]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v129);
  if (v44)
  {
    v44 = sub_759690();
  }

  *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v44;

  sub_559DA4();

  v131 = v260;
  v132 = v247;
  v133 = v264;
  (*(v260 + 16))(v247, v263, v264);
  v134 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v131 + 24))(&v73[v134], v132, v133);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v255)(v132, v133);
  if (v10)
  {
    v260 = v131 + 8;
    (*(v234 + 104))(v229, enum case for VideoFillMode.scaleAspectFill(_:), v235);

    sub_764BC0();
    sub_765260();
    v135 = v254;
    sub_7666A0();

    (*(v232 + 56))(v135, 0, 1, v233);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    v136 = v253;
    sub_768880();
    sub_764B40();
    v137 = v236;
    sub_764BD0();
    v138 = sub_7570A0();
    (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
    v139 = v238;
    sub_764B90();
    v140 = v237;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView);
    v141 = v136;
    v142 = sub_75C340();
    sub_10A2C(v140, &unk_948710);
    sub_10A2C(v139, &unk_948710);
    sub_10A2C(v137, &unk_93FD30);
    sub_10A2C(v268, &unk_9443A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v144 = Strong;
      v145 = [Strong superview];
      if (!v145)
      {
        goto LABEL_97;
      }

      v146 = v145;
      sub_BE70(0, &qword_93E550);
      v147 = v73;
      v148 = sub_76A1C0();

      v141 = v253;
      if (v148)
      {
        v149 = swift_unknownObjectWeakLoadStrong();
        if (v149)
        {
          v144 = v149;
          [v149 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v150 = swift_unknownObjectWeakLoadStrong();
    if (v150)
    {
      v151 = v150;
      [v73 addSubview:v150];
    }

    sub_55A7A8();
    [v73 setNeedsLayout];

    v152 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v153 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v154 = v263;
    v155 = v141;
    if (v153)
    {
      [v153 removeFromSuperview];
      v156 = *&v73[v152];
    }

    else
    {
      v156 = 0;
    }

    v166 = v240;
    *&v73[v152] = 0;

    [v73 setNeedsLayout];

    (*(v239 + 8))(v251, v166);
    goto LABEL_145;
  }

  if (!v259)
  {
    goto LABEL_133;
  }

  result = sub_765750();
  if (result >> 62)
  {
    v196 = result;
    v197 = sub_76A860();
    result = v196;
    if (!v197)
    {
      goto LABEL_132;
    }

LABEL_105:
    v215 = 0;
    v260 = v131 + 8;
    if ((result & 0xC000000000000001) == 0)
    {
      v158 = v258;
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

LABEL_108:

      v159 = v216;
      v160 = v265;
      (v252)(v216, v158, v265);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v165 = v227;
      }

      else
      {
        v167 = sub_765740();
        v165 = v227;
        sub_6C14C(v167, v227);

        v164 = 0;
      }

      v168 = v221;
      v169 = v219;
      v170 = v235;
      v171 = v234;
      v172 = v217;
      v173 = v218;
      (*(v218 + 56))(v165, v164, 1, v219);
      (*(v171 + 104))(v224, enum case for VideoFillMode.scaleAspectFill(_:), v170);
      sub_764BC0();
      sub_765260();
      sub_7666A0();

      (*(v232 + 56))(v172, 0, 1, v233);
      sub_764B60();
      sub_764BA0();
      LODWORD(v254) = sub_764B70();
      sub_764B50();
      sub_764BB0();
      sub_1ED18(v165, v168, &qword_946D98);
      if ((*(v173 + 48))(v168, 1, v169) == 1)
      {
        sub_10A2C(v168, &qword_946D98);
      }

      else
      {
        sub_161D14(v168);
      }

      sub_75DC10();
      sub_75C360();
      sub_768880();
      v174 = v268[0];
      sub_764B40();
      v175 = v236;
      sub_764BD0();
      v176 = sub_7570A0();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = v238;
      sub_764B90();
      v178 = v237;
      sub_764B80();
      type metadata accessor for VideoView();
      sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView);
      v254 = v174;
      v179 = sub_75C340();
      sub_10A2C(v178, &unk_948710);
      sub_10A2C(v177, &unk_948710);
      sub_10A2C(v175, &unk_93FD30);
      sub_10A2C(v268, &unk_9443A0);
      v180 = swift_unknownObjectWeakLoadStrong();
      v181 = v263;
      v182 = v227;
      if (!v180)
      {
        goto LABEL_122;
      }

      v183 = v180;
      v184 = v263;
      v185 = [v180 superview];
      if (v185)
      {
        v186 = v185;
        sub_BE70(0, &qword_93E550);
        v187 = v73;
        v188 = sub_76A1C0();

        v182 = v227;
        v181 = v184;
        if ((v188 & 1) == 0)
        {
          goto LABEL_122;
        }

        v189 = swift_unknownObjectWeakLoadStrong();
        if (!v189)
        {
          goto LABEL_122;
        }

        v183 = v189;
        [v189 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v190 = swift_unknownObjectWeakLoadStrong();
      if (v190)
      {
        v191 = v190;
        [v73 addSubview:v190];
      }

      sub_55A7A8();
      [v73 setNeedsLayout];

      v192 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v193 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      v194 = v240;
      v154 = v181;
      if (v193)
      {
        [v193 removeFromSuperview];
        v195 = *&v73[v192];
      }

      else
      {
        v195 = 0;
      }

      *&v73[v192] = 0;

      [v73 setNeedsLayout];

      (*(v239 + 8))(v226, v194);
      sub_10A2C(v182, &qword_946D98);
      v155 = v253;
      goto LABEL_145;
    }

LABEL_152:
    sub_76A770();
    v158 = v258;
    goto LABEL_108;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v198 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v199 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  if (v199)
  {
    [v199 removeFromSuperview];
    v200 = *&v73[v198];
  }

  else
  {
    v200 = 0;
  }

  v155 = v253;
  v201 = v263;
  *&v73[v198] = 0;

  [v73 setNeedsLayout];
  v202 = swift_unknownObjectWeakLoadStrong();
  if (v202)
  {
    v203 = v202;
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView);
    v204 = [v203 superview];
    if (!v204)
    {
      goto LABEL_141;
    }

    v205 = v204;
    sub_BE70(0, &qword_93E550);
    v206 = v73;
    v207 = sub_76A1C0();

    if (v207)
    {
      v208 = swift_unknownObjectWeakLoadStrong();
      if (v208)
      {
        v203 = v208;
        [v208 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v209 = swift_unknownObjectWeakLoadStrong();
  if (v209)
  {
    v210 = v209;
    [v73 addSubview:v209];
  }

  sub_55A7A8();
  [v73 setNeedsLayout];
  v154 = v201;
LABEL_145:
  [v73 setNeedsLayout];

  (v255)(v154, v264);
  (*(v261 + 8))(v258, v265);
  sub_10A2C(v262, &unk_948720);
  if (sub_764E90())
  {
    v211 = sub_75E5C0();

    v212 = v242;
    if (v211)
    {
      v213 = [objc_opt_self() clearColor];
      [v212 setBackgroundColor:v213];
    }
  }

  else
  {
    v211 = 0;
    v212 = v242;
  }

  sub_2257B4(v211, v155);
  [v212 setNeedsLayout];

  [v212 setNeedsLayout];
}

void sub_3BBFF4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v176 = a4;
  v9 = sub_760770();
  v158 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_BD88(&unk_93F5A0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v133[-v14];
  v16 = sub_760840();
  v165 = *(v16 - 8);
  v166 = v16;
  __chkstk_darwin(v16);
  v164 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_760D90();
  v169 = *(v18 - 8);
  *&v170 = v18;
  __chkstk_darwin(v18);
  v152 = &v133[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_762D10();
  v161 = *(v20 - 8);
  v162 = v20;
  __chkstk_darwin(v20);
  v160 = &v133[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_75D850();
  v173 = *(v22 - 8);
  v174 = v22;
  __chkstk_darwin(v22);
  v159 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v172 = &v133[-v25];
  v178 = sub_760820();
  v171 = *(v178 - 8);
  __chkstk_darwin(v178);
  v163 = &v133[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v177 = &v133[-v28];
  v29 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v29 - 8);
  v153 = &v133[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v175 = &v133[-v32];
  v33 = sub_7652D0();
  __chkstk_darwin(v33 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v157 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = v15;
  v150 = v13;
  v151 = v12;
  v135 = v11;
  v136 = v9;
  v168 = v5;
  v35 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v155 = v35;
  v37 = *(v35 + v36);
  if (v37 >> 62)
  {
    v38 = sub_76A860();
  }

  else
  {
    v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
  }

  v167 = a1;
  v39 = v168;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v40 = a3;

    v41 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = sub_76A770();
      }

      else
      {
        v42 = *(v37 + v41 + 4);
      }

      v43 = v42;
      ++v41;
      v214[0] = v42;
      type metadata accessor for BorderedScreenshotView();
      sub_3BFB7C(&qword_946D80, type metadata accessor for BorderedScreenshotView);
      v44 = v43;
      sub_76A6E0();
      sub_75A0B0();
      sub_1EB60(v215);
      v45 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v216.value.super.isa = 0;
      v216.is_nil = 0;
      sub_7591D0(v216, v46);
    }

    while (v38 != v41);

    a3 = v40;
    v39 = v168;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    [*(Strong + qword_940590) setImage:0];
    v214[0] = v48;
    type metadata accessor for VideoView();
    sub_3BFB7C(&qword_952550, type metadata accessor for VideoView);
    v49 = v48;
    sub_76A6E0();
    sub_75A0B0();
    v39 = v168;

    sub_1EB60(v215);
  }

  v5 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v50 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v217.value.super.isa = 0;
  v217.is_nil = 0;
  sub_7591D0(v217, v51);

  v52 = *(v5 + v13);
  sub_759210();
  sub_3BFB7C(&qword_945810, &type metadata accessor for ArtworkView);
  v53 = v52;
  v154 = a3;
  sub_75A0C0();

  if (sub_764EE0())
  {
    v54 = qword_93C668;
    v37 = *(v5 + v13);
    if (v54 == -1)
    {
LABEL_16:
      v55 = sub_75CF00();
      sub_BE38(v55, qword_99B898);
      sub_75CDD0();
      [v37 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v37 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      v56 = *(v5 + v13);
      sub_75A050();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v57 = sub_764EF0();
  v140 = v58;
  v141 = v57;
  v59 = sub_764F70();
  v61 = v60;
  v62 = sub_764E90();
  v143 = v59;
  if (v62)
  {
    v63 = sub_75E5C0();

    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
    if (v63)
    {
      v69 = sub_765720();
      v144 = v70;
      v145 = v69;
    }

    else
    {
      v144 = 0;
      v145 = 0;
    }
  }

  else
  {
    v144 = 0;
    v145 = 0;
    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
  }

  v168 = sub_75BC90();
  v159 = sub_75BCB0();
  v71 = sub_75BCD0();
  (*(v67 + 56))(v175, 1, 1, v66);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v72 = v178;
  v73 = sub_BE38(v178, qword_99B150);
  v74 = v171 + 16;
  v75 = *(v171 + 16);
  v75(v65, v73, v72);
  v76 = sub_769A00();
  v147 = v75;
  v148 = v74;
  v134 = v71;
  v142 = v61;
  if ((v76 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v77 = qword_946938;
    goto LABEL_32;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v77 = qword_946920;
LABEL_32:
    v78 = v174;
    v79 = sub_BE38(v174, v77);
    v80 = v173;
    (*(v173 + 16))(v68, v79, v78);
    (*(v80 + 32))(v172, v68, v78);
    v81 = [v64 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v146 = sub_7670D0();
    swift_allocObject();
    v157 = sub_7670B0();
    v82 = objc_opt_self();
    v138 = v82;
    v83 = [v82 preferredFontForTextStyle:UIFontTextStyleBody];
    v84 = sub_7653B0();
    v215[3] = v84;
    v156 = sub_3BFB7C(&qword_93F9B0, &type metadata accessor for Feature);
    v215[4] = v156;
    v85 = sub_B1B4(v215);
    v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139 = *(*(v84 - 8) + 104);
    v137 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139(v85, enum case for Feature.measurement_with_labelplaceholder(_:), v84);
    sub_765C30();
    sub_BEB8(v215);
    v87 = v160;
    sub_762D00();
    sub_762CE0();
    v88 = v162;
    v161 = *(v161 + 8);
    (v161)(v87, v162);
    v89 = [v82 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v214[3] = v84;
    v214[4] = v156;
    v90 = sub_B1B4(v214);
    v91 = v86;
    v92 = v139;
    v139(v90, v91, v84);
    sub_765C30();
    sub_BEB8(v214);
    sub_762D00();
    sub_762CE0();
    v93 = v161;
    (v161)(v87, v88);
    v94 = [v138 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v213[3] = v84;
    v213[4] = v156;
    v95 = sub_B1B4(v213);
    v92(v95, v137, v84);
    sub_765C30();
    sub_BEB8(v213);
    sub_762D00();
    sub_762CE0();
    v93(v87, v88);
    v96 = v168;
    LODWORD(v162) = sub_246DC(0, v168) & (v96 != 0);
    if (v162 == 1)
    {
      v97 = objc_allocWithZone(sub_7671D0());
      v98 = v176;
      v99 = sub_7671C0();
      v100 = v153;
      sub_1ED18(v175, v153, &unk_94AE30);
      v102 = v169;
      v101 = v170;
      v103 = *(v169 + 48);
      if (v103(v100, 1, v170) == 1)
      {
        v104 = v152;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        v105 = v103(v100, 1, v101);
        v106 = v159;
        if (v105 != 1)
        {
          sub_10A2C(v100, &unk_94AE30);
        }
      }

      else
      {
        v104 = v152;
        (*(v102 + 32))(v152, v100, v101);
        v106 = v159;
      }

      v109 = v99;
      sub_2185C(v168, v104, v109);

      (*(v102 + 8))(v104, v101);
      v107 = v146;
      swift_allocObject();
      v108 = sub_7670A0();
    }

    else
    {
      v107 = v146;
      swift_allocObject();
      v108 = sub_7670B0();
      v106 = v159;
    }

    if ((sub_246DC(v106, 0) & (v106 != 0)) == 1)
    {
      v110 = v176;
      sub_F7FC(v106, v134 & 1);
      swift_allocObject();
      v111 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v111 = sub_7670B0();
      v110 = v176;
    }

    v147(v163, v177, v178);
    v212 = &protocol witness table for LayoutViewPlaceholder;
    v211 = v107;
    v210 = v157;
    v209 = 0;
    *&v207[40] = 0u;
    v208 = 0u;
    sub_134D8(v215, v207);
    sub_134D8(v214, &v206);
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;

    v112 = sub_7670C0();
    v199 = &protocol witness table for LayoutViewPlaceholder;
    v198 = v107;
    v197 = v112;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v187 = 0;
    v186 = 0u;
    *&v185[40] = 0u;
    sub_134D8(v213, v185);
    v183 = v107;
    v184 = &protocol witness table for LayoutViewPlaceholder;
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v182 = v108;
    v180 = v107;
    v179 = v111;
    v113 = v164;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v114 = swift_allocObject();
    v170 = xmmword_77D9F0;
    *(v114 + 16) = xmmword_77D9F0;
    *(v114 + 32) = v110;
    v115 = v110;
    v116 = sub_7671E0();
    sub_3BFB7C(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
    v117 = v166;
    sub_7665A0();

    (*(v165 + 8))(v113, v117);
    sub_BEB8(v213);
    sub_BEB8(v214);
    sub_BEB8(v215);
    (*(v173 + 8))(v172, v174);
    (*(v171 + 8))(v177, v178);
    sub_10A2C(v175, &unk_94AE30);
    v118 = v149;
    sub_763F60();
    v119 = swift_allocObject();
    *(v119 + 16) = v170;
    *(v119 + 32) = v115;
    v120 = v115;
    v121 = sub_7671E0();
    sub_16194(&qword_93F5D0, &unk_93F5A0);
    v122 = v151;
    sub_7666E0();

    (*(v150 + 8))(v118, v122);
    v123 = sub_75BCA0();
    v68 = sub_75BC80();
    v124 = sub_75BC70();
    if (v124 >> 62)
    {
      v126 = v124;
      v127 = sub_76A860();
      v124 = v126;
      v64 = v154;
      if (!v127)
      {
LABEL_50:

        v125 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v64 = v154;
      if (!*(&dword_10 + (v124 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }
    }

    if ((v124 & 0xC000000000000001) != 0)
    {
      v125 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v124 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_66;
      }

      v125 = *(v124 + 32);
    }

LABEL_51:
    v128 = sub_75BCF0();
    if (!(v128 >> 62))
    {
      if (!*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_53;
    }

    v130 = v128;
    v131 = sub_76A860();
    v128 = v130;
    if (!v131)
    {
      break;
    }

LABEL_53:
    if ((v128 & 0xC000000000000001) != 0)
    {
      v129 = sub_76A770();
      goto LABEL_56;
    }

    if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)))
    {
      v129 = *(v128 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v129 = 0;
LABEL_59:
  v132 = v135;
  sub_75BCC0();
  sub_1600F8(v123, v68, v125, v129, v120, v64, v132);

  (*(v158 + 8))(v132, v136);
}

uint64_t sub_3BD5E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766690();
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  return sub_7666A0();
}

id sub_3BD644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  sub_2257B4(a1, a2);

  return [v3 setNeedsLayout];
}

id sub_3BD714(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  sub_2257B4(a1, a2);
  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

uint64_t sub_3BD804(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = sub_768380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_7683C0();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_768370());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_7683E0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_952540);
  sub_75BD00();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_3B9C04(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_3BBFF4(v26, v81, v72, v42);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_F714(*v47);
    sub_23481C(v49, v48);
    sub_F704(v49);
    sub_BE70(0, &qword_940340);
    v72 = sub_769970();
    sub_7683D0();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    sub_768440();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_3BFB04;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88FCF0;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_3BFB7C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_16194(&qword_9406F0, &qword_940350);
    v59 = v77;
    v60 = v69;
    sub_76A5A0();
    v61 = v65;
    v62 = v72;
    sub_769930();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_3BDFB8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_3BFB70;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3D6D80;
    aBlock[3] = &unk_88FD40;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_3BE128(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  sub_761120();
  sub_768900();
  sub_768ED0();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_3BFB7C(&unk_9566C0, type metadata accessor for AdvertsSearchResultContentView);
  v9 = v7;
  sub_7610C0();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_761100();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_3BE390(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_3BE438(a1, a2, a3, v9, a5);
}

uint64_t sub_3BE438(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = sub_75C930();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_BD88(&unk_948720);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = sub_76A920();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_760770();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_760840();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_762D10();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_75D850();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = sub_760820();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  sub_769DA0();
  v35 = sub_764EF0();
  v149 = v36;
  v150 = v35;
  v37 = sub_764F70();
  v151 = v38;
  v152 = v37;
  if (sub_764E90() && (v39 = sub_75E5C0(), , v39))
  {
    v40 = sub_765720();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  sub_75BCD0();
  v42 = [v170 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_BE38(v176, qword_99B150);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = sub_769A00();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v46 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v46 = qword_946938;
  }

  v47 = sub_BE38(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  sub_769B20();
  v158 = v42;

  sub_75D800();
  sub_75D830();
  v172 = v34;
  sub_760810();
  sub_760800();
  v50 = sub_7670D0();
  swift_allocObject();
  v148 = sub_7670B0();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_7653B0();
  v213[3] = v53;
  v171 = sub_3BFB7C(&qword_93F9B0, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_B1B4(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  sub_765C30();
  sub_BEB8(v213);
  v58 = v159;
  sub_762D00();
  sub_762CE0();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_B1B4(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  sub_765C30();
  sub_BEB8(v212);
  sub_762D00();
  sub_762CE0();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_B1B4(v211);
  v63(v66, v144, v53);
  sub_765C30();
  sub_BEB8(v211);
  sub_762D00();
  sub_762CE0();
  v64(v58, v59);
  sub_246DC(0, 0);
  swift_allocObject();
  v67 = sub_7670B0();

  sub_246DC(0, 0);
  swift_allocObject();
  v68 = sub_7670B0();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_134D8(v213, v205);
  sub_134D8(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = sub_7670C0();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_134D8(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_77D9F0;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = sub_7671E0();
  sub_3BFB7C(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  sub_7665A0();

  (*(v164 + 8))(v71, v76);
  sub_BEB8(v211);
  sub_BEB8(v212);
  sub_BEB8(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  sub_75BCC0();
  if ((sub_760760() & 1) == 0 || (sub_65CB64() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v79 = sub_766CA0();
  sub_BE38(v79, qword_99FE00);
  v80 = v139;
  sub_766470();
  v81 = v170;
  sub_766700();
  (*(v140 + 8))(v80, v141);
  v82 = sub_75BCA0();
  v83 = sub_75BC80();
  v84 = sub_75BC70();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = sub_76A860();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = sub_75BCF0();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = sub_76A860();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_3B9960(v143);

  v67 = sub_75BCA0();
  v68 = sub_75BC80();
  v93 = sub_75BC70();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = sub_76A860();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = sub_76A770();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = sub_75BCF0();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = sub_76A860();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8)))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = sub_76A860();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = sub_76A770();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = sub_760760();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_161888(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10A2C(v129, &unk_948720);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    sub_7666A0();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_55BABC(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
  if (v77)
  {
LABEL_55:
    v103 = sub_759690();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_55BE04(v103);

  v173 = v82;
  if (v77)
  {
    v108 = sub_759690();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_55C32C(v108, v110);

  sub_10A2C(v110, &unk_94DF00);
  if (!v83)
  {
    result = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_76A860();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_76:

    v114 = sub_765150();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = sub_75C920();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = sub_75C920(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = sub_75C920(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = sub_75C920();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_3BFA84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3BFABC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3BFB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3BFB28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3BFB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3BFBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v100 = a5;
  v101 = a4;
  v112 = a3;
  v113 = a2;
  v108 = a7;
  v109 = a8;
  v106 = a1;
  v107 = a6;
  v97 = sub_758720();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_7649E0();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_75ECD0();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_767D60();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_75A430();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_BD88(&qword_940A68);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v82 - v15;
  v16 = sub_764930();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7656A0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v26 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v26);
  v99 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_1ED18(v113, &v82 - v29, &qword_963790);
  v98 = v26;
  v31 = *(v26 + 48);
  v113 = v30;
  sub_1ED18(v112, &v30[v31], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v112 = v21;
  v32 = *(v21 + 104);
  v33 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v115)
  {
    v33 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v34 = *v33;
  v110 = v25;
  v111 = v20;
  v32(v25, v34, v20);
  swift_getKeyPath();
  sub_768750();

  v35 = v17;
  v36 = (*(v17 + 88))(v19, v16);
  if (v36 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v36 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_768750();

      if (*(v114 + 16))
      {
        sub_134D8(v114 + 32, &v115);

        sub_BD88(&unk_944DA0);
        sub_75A450();
        v49 = swift_dynamicCast();
        v45 = v110;
        if (v49)
        {
          v50 = v85;
          sub_75A440();
          v51 = v86;
          v52 = v87;
          v53 = (*(v86 + 88))(v50, v87);
          if (v53 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v51 + 8))(v50, v52);
            v48 = v111;
            v47 = v112;
            (*(v112 + 16))(v105, v45, v111);
            if (qword_93CF58 != -1)
            {
              swift_once();
            }

            sub_765670();
          }

          else
          {
            v48 = v111;
            v47 = v112;
            v76 = v105;
            if (v53 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v78 = v82;
              sub_75B4A0();
              (*(v47 + 16))(v76, v45, v48);
              sub_435850(v78, 0);
              sub_765670();

              (*(v83 + 8))(v78, v84);
              (*(v47 + 8))(v45, v48);
              sub_10A2C(v113, &qword_9438F8);
              return (*(v51 + 8))(v50, v52);
            }

            (*(v51 + 8))(v50, v52);
            v77 = v82;
            sub_75B4A0();
            (*(v47 + 16))(v76, v45, v48);
            sub_435850(v77, 1);
            sub_765670();

            (*(v83 + 8))(v77, v84);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v45 = v110;
      }

      v115 = v100;
      v69 = v113;
      v70 = v99;
      sub_1ED18(v113, v99, &qword_9438F8);
      v71 = *(v98 + 48);
      sub_B7A24();
      sub_75B530();
      (*(v112 + 8))(v45, v111);
      sub_10A2C(v69, &qword_9438F8);
      sub_10A2C(v70 + v71, &qword_963790);
      v72 = v70;
      v73 = &qword_963790;
      return sub_10A2C(v72, v73);
    }

    if (v36 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v115 = v100;
      v65 = v113;
      v66 = v99;
      sub_1ED18(v113, v99, &qword_9438F8);
      v67 = *(v98 + 48);
      sub_B7A24();
      sub_75B530();
      (*(v112 + 8))(v110, v111);
      sub_10A2C(v65, &qword_9438F8);
      sub_10A2C(v66 + v67, &qword_963790);
      sub_10A2C(v66, &qword_963790);
      return (*(v35 + 8))(v19, v16);
    }

    v57 = v88;
    sub_7655C0();
    v58 = v89;
    sub_7655C0();
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    sub_620A70(v57, v58);
    sub_765670();
    v59 = *(v90 + 8);
    v60 = v58;
    v61 = v91;
    v59(v60, v91);
    v59(v57, v61);
LABEL_22:
    (*(v54 + 8))(v56, v55);
LABEL_45:
    v73 = &qword_9438F8;
    v72 = v113;
    return sub_10A2C(v72, v73);
  }

  swift_getKeyPath();
  v37 = v102;
  sub_768750();

  v38 = v103;
  v39 = v104;
  if ((*(v103 + 88))(v37, v104) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v38 + 8))(v37, v39);
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_93C6E0 != -1)
    {
      swift_once();
    }

    sub_765670();
    goto LABEL_22;
  }

  (*(v38 + 96))(v37, v39);
  v40 = v94;
  v41 = v92;
  v42 = v93;
  (*(v94 + 32))(v92, v37, v93);
  sub_75ECC0();
  v43 = v95;
  sub_75A300();

  v44 = (*(v96 + 88))(v43, v97);
  v45 = v110;
  v46 = v105;
  if (v44 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v44 == enum case for AppPlatform.pad(_:))
  {
    v62 = sub_75EC60();
    v64 = v111;
    v63 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (v62)
    {
      if (qword_93C230 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_93C6E0 == -1)
    {
LABEL_38:

      sub_765670();
      (*(v40 + 8))(v41, v42);
      (*(v63 + 8))(v45, v64);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v44 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_75EC60())
    {
      v48 = v111;
      v47 = v112;
      (*(v112 + 16))(v46, v45, v111);
      if (qword_93D3B8 != -1)
      {
        swift_once();
      }

      sub_765670();
      (*(v40 + 8))(v41, v42);
LABEL_36:
      (*(v47 + 8))(v45, v48);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v44 == enum case for AppPlatform.watch(_:))
  {
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_93CA40 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v44 == enum case for AppPlatform.tv(_:) || v44 == enum case for AppPlatform.mac(_:) || v44 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (qword_93C6E0 == -1)
    {
LABEL_44:

      sub_765670();
      (*(v40 + 8))(v41, v42);
      (*(v74 + 8))(v45, v75);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v115 = v100;
  v79 = v113;
  v80 = v99;
  sub_1ED18(v113, v99, &qword_9438F8);
  v81 = *(v98 + 48);
  sub_B7A24();
  sub_75B530();
  (*(v40 + 8))(v41, v42);
  (*(v112 + 8))(v45, v111);
  sub_10A2C(v79, &qword_9438F8);
  sub_10A2C(v80 + v81, &qword_963790);
  sub_10A2C(v80, &qword_963790);
  return (*(v96 + 8))(v95, v97);
}

uint64_t sub_3C11E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v23 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a6;
  v29 = a3;
  v27 = a7;
  v28 = a8;
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  sub_1ED18(a1, &v22 - v17, &qword_963790);
  sub_1ED18(v24, &v18[*(v13 + 48)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v24 = v10;
  if ((*(v10 + 88))(v12, v9) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v30 = v25;
    v31 = v23;
    sub_1ED18(v18, v15, &qword_9438F8);
    v19 = *(v13 + 48);
    sub_3C17F4();
    sub_75B530();
    sub_10A2C(v18, &qword_9438F8);
    sub_10A2C(&v15[v19], &qword_963790);
    return sub_10A2C(v15, &qword_963790);
  }

  else
  {
    v30 = v25;
    sub_1ED18(v18, v15, &qword_9438F8);
    v21 = *(v13 + 48);
    sub_B7A24();
    sub_75B520();
    sub_10A2C(v18, &qword_9438F8);
    sub_10A2C(&v15[v21], &qword_963790);
    sub_10A2C(v15, &qword_963790);
    return (*(v24 + 8))(v12, v9);
  }
}

uint64_t sub_3C15C0()
{
  sub_3C17F4();

  return sub_75B530();
}

uint64_t sub_3C16A4()
{
  sub_3C17F4();

  return sub_75B520();
}

uint64_t sub_3C1788(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C1858();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_3C17F4()
{
  result = qword_952558;
  if (!qword_952558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952558);
  }

  return result;
}

unint64_t sub_3C1858()
{
  result = qword_952560;
  if (!qword_952560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952560);
  }

  return result;
}

uint64_t sub_3C1984@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v3);
  v4 = sub_BD88(&qword_9525C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_3C2D0C(v1 + v10, v9);
  v11 = sub_BD88(&qword_94F910);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_3C2D7C(v9);
  sub_759210();
  sub_7667C0();
  sub_31D0F0();
  sub_767480();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_3C2C9C(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_3C1BDC()
{
  v1 = v0;
  v2 = sub_BD88(&qword_9525C8);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_BD88(&qword_94F910);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? sub_76A860() : *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (sub_76A860() < *&v1[v24])
    {
LABEL_8:
      sub_3C1984(v8);
      sub_767450();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_3C2C9C(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      sub_769440();
      if (*(&dword_10 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v23[1] = *(&dword_10 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8));
        sub_7694C0();
      }

      sub_769500();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (sub_76A860())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_45EDF0(v19);
          v19 = result;
        }

        v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *(&stru_20.cmd + 8 * v21 + (v19 & 0xFFFFFFFFFFFFFF8));
        *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_3C1984(v8);
        sub_767470();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_3C2C9C(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_3C1FEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_766BD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766BA0();
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_B1B4(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_759210();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_76A750(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_3C242C(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_76A860();
    result = sub_76A860();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = sub_76A860();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = sub_76A870();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_B1B4(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = sub_767340();
  a1[4] = &protocol witness table for Margins;
  sub_B1B4(a1);
  sub_767330();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_3C242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  sub_759210();
  sub_766580();
  sub_B170(v9, v9[3]);
  sub_7665D0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  sub_766B90();

  sub_BEB8(v8);
  return sub_BEB8(v9);
}