void sub_1006174E0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100016F40(0, &qword_100942F10);
    v4 = sub_100770D2C();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
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
      sub_1006167B4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100617694()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v2)
  {
    v1 = v2;
    sub_100764F8C();
  }

  sub_100760BDC();
}

uint64_t sub_1006177B8(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1);
  result = sub_100760BDC();
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v5 && !*&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
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
          v19 = sub_100619194;
          v20 = v5;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1006F5994;
          v18 = &unk_10089D408;
          v11 = _Block_copy(&v15);

          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v5;
          v19 = sub_100619198;
          v20 = v13;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_1006F5994;
          v18 = &unk_10089D458;
          v14 = _Block_copy(&v15);

          [v10 animateAlongsideTransition:v11 completion:v14];

          _Block_release(v14);
          _Block_release(v11);
          return swift_unknownObjectRelease();
        }

        sub_1001A36B0();
      }
    }
  }

  return result;
}

void sub_100617A28(void *a1, uint64_t a2, uint64_t a3)
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
      sub_100016F40(0, &qword_1009453B0);
      v9 = v6;
      v10 = sub_100770EEC();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {

        v11(v12, 1.0, 0.0);

        sub_1000167E0(v11);
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

void sub_100617BA8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v6;
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v6)
  {
    v5 = v6;
    sub_100764F8C();

    v4 = v5;
  }
}

void sub_100617D08(char a1)
{
  v2 = v1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  sub_100764FAC();
  sub_10076F63C();
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    sub_100764F7C();
  }

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
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

  if (v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v15(v16, 1.0, 0.0);

    sub_1000167E0(v15);
  }

  else
  {
    v10 = v9;
    v21 = sub_100619148;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1006F5994;
    v20 = &unk_10089D368;
    v11 = _Block_copy(&v17);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v21 = sub_10061918C;
    v22 = v13;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1006F5994;
    v20 = &unk_10089D3E0;
    v14 = _Block_copy(&v17);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_100617FD0(void *a1, uint64_t a2)
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

    sub_1000167E0(v6);
  }
}

void sub_1006180C8(void *a1)
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
        sub_100016F40(0, &qword_1009453B0);
        v6 = v3;
        v7 = sub_100770EEC();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
        {
          v8 = [v6 navigationController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 navigationBar];

            if (v10)
            {

              sub_1001A36B0();
            }
          }
        }
      }
    }
  }
}

void sub_100618268()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_100760BDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v2)
  {
    v1 = v2;
    sub_100764F7C();
  }
}

id sub_1006183B8(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  result = objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_100619360;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006F5994;
    v10[3] = &unk_10089D340;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }

  return result;
}

void sub_100618550()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
  if (v1)
  {
    v2 = v1;
    [v0 pageMarginInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
    v18 = v4 == v15 && v6 == v12 && v8 == v13 && v10 == v14;
    if (v18 || ([*&v2[v11] setLayoutMargins:{v4, v6, v8, v10}], objc_msgSend(v2, "invalidateIntrinsicContentSize"), (v19 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {

      v19(v20);

      sub_1000167E0(v19);
    }
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_100616584();
  }
}

void sub_100618758(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_10076B29C();
    sub_1006192AC(&qword_100961168, &type metadata accessor for Uber);

    v5 = sub_10076FF1C();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (sub_10076B25C())
    {

      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v8 = *(*(*&v7[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_1006192AC(&qword_10094DC08, type metadata accessor for UberHeaderView);
      v11 = v7;
      sub_100767CFC();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100616AF8();
  if (!v12)
  {
LABEL_20:
    sub_1006170F8();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);

  if (v14)
  {
    sub_100615824(v13);
  }

  sub_1006167B4();
}

void sub_100618A1C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {

        v3 = sub_10001CE50(v2);
        v2(v3, 1.0, 0.0);

        sub_1000167E0(v2);
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

          sub_1001A36B0();
        }
      }
    }
  }
}

void sub_100618B4C(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100618BE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    [v2 setNeedsLayout];
  }
}

void sub_100618C70(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006162B8(a1);
  }
}

void sub_100618E84(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007706EC();

  if (!a1 || (sub_1007706EC() & 1) != (v5 & 1))
  {
    v6 = sub_100616AF8();
    if (v6)
    {
      v7 = v6;
      if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
      {

        sub_100615824(v7);

        return;
      }
    }

    sub_1006170F8();
  }
}

uint64_t sub_100618FD8()
{
}

id sub_100619038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006190FC(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

uint64_t sub_100619130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100619150()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006191A0(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_10076856C();

    sub_100618A1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006192AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006192F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100619364@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_1006193D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100619498()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10073CEFC(0, 0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton) = 0;
  sub_10073D75C();
  v2 = (v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  return [*(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton) setUserInteractionEnabled:0];
}

uint64_t sub_100619544(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076C5FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v107 - v8;
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  __chkstk_darwin(v12);
  v14 = &v107 - v13;
  v15 = sub_10000A5D4(&unk_100959F50);
  __chkstk_darwin(v15 - 8);
  v116 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v107 - v18;
  __chkstk_darwin(v19);
  v115 = &v107 - v20;
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v24 - 8);
  v121 = &v107 - v25;
  v125 = sub_10000A5D4(&unk_1009566C0);
  v26 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v107 - v27;
  v119 = sub_10076C5DC();
  v127 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v126 = &v107 - v30;
  sub_10076C61C();
  sub_100414750();
  v128 = a1;
  result = sub_10076332C();
  v32 = aBlock;
  if (aBlock)
  {
    v108 = v11;
    v109 = v23;
    v110 = v14;
    v113 = v26;
    v118 = v5;
    v114 = v4;
    v33 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v37 = sub_10076C5AC();
    swift_getKeyPath();
    sub_10076338C();

    v38 = v135;
    v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
    v40 = [v37 length];
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = v39;
    *(v41 + 40) = 1;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1000275EC;
    *(v42 + 24) = v41;
    v133 = sub_1000ACB04;
    v134 = v42;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100026610;
    v132 = &unk_10089D520;
    v43 = _Block_copy(&aBlock);
    v44 = v38;
    v45 = v39;

    [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = [v2 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v48 = v47;
    v50 = v49;

    v51 = sub_100630CB4();
    swift_getObjectType();
    v117 = v45;
    v52 = sub_10041485C(v45, v51, UIEdgeInsetsZero.top, left, bottom, right, v48, v50);
    swift_unknownObjectRelease();
    v53 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
    v54 = v126;
    sub_10076C5EC();
    v55 = v127;
    v56 = v122;
    v57 = v54;
    v58 = v119;
    (*(v127 + 16))(v122, v57, v119);
    v59 = (*(v55 + 88))(v56, v58);
    v60 = v2;
    v61 = v118;
    v62 = v32;
    if (v59 != enum case for Paragraph.Style.standard(_:))
    {
      if (v59 == enum case for Paragraph.Style.article(_:))
      {
        sub_100016F40(0, &qword_100942F10);
        v63 = sub_100770D1C();
        goto LABEL_7;
      }

      if (v59 != enum case for Paragraph.Style.caption(_:) && v59 != enum case for Paragraph.Style.todayCardOverlay(_:) && v59 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_100016F40(0, &qword_100942F10);
        v64 = sub_100770CFC();
        v98 = v58;
        v99 = *(v127 + 8);
        v99(v126, v98);
        v99(v122, v98);
        goto LABEL_8;
      }
    }

    sub_100016F40(0, &qword_100942F10);
    v63 = sub_100770CFC();
LABEL_7:
    v64 = v63;
    (*(v127 + 8))(v126, v58);
LABEL_8:
    v127 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
    [*&v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v64];

    sub_1007633DC();
    sub_10076FDBC();
    sub_100111DA4();
    sub_10076FD8C();
    v65 = aBlock;
    if (aBlock == 2)
    {
      v65 = sub_10076C56C();
    }

    if ((v65 & v52 & 1) == 0)
    {
      v90 = v117;
      v91 = v123;
      sub_10076C60C();
      v92 = v114;
      (*(v61 + 56))(v91, 0, 1, v114);
      v93 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
      v94 = v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 0;
      v95 = *&v53[v127];
      v96 = v90;
      [v95 setNumberOfLines:0];
      if (v94 != v53[v93])
      {
        sub_10073D75C();
      }

      v85 = v96;
      sub_10073D114(v96);
      v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v97 = v116;
      sub_100016E2C(v123, v116, &unk_100959F50);
      if ((*(v61 + 48))(v97, 1, v92) == 1)
      {
        sub_100415FB8(v97);
        v89 = v117;
      }

      else
      {
        v100 = v111;
        (*(v61 + 32))(v111, v97, v92);
        v101 = v112;
        (*(v61 + 16))(v112, v100, v92);
        v102 = (*(v61 + 88))(v101, v92);
        if (v102 == enum case for Paragraph.Alignment.left(_:))
        {
          v103 = 0;
          v89 = v117;
        }

        else
        {
          v89 = v117;
          if (v102 == enum case for Paragraph.Alignment.center(_:))
          {
            v103 = 1;
          }

          else if (v102 == enum case for Paragraph.Alignment.right(_:))
          {
            v103 = 2;
          }

          else if (v102 == enum case for Paragraph.Alignment.justified(_:))
          {
            v103 = 3;
          }

          else if (v102 == enum case for Paragraph.Alignment.localized(_:))
          {
            v103 = 4;
          }

          else
          {
            (*(v61 + 8))(v112, v92);
            v103 = 0;
          }
        }

        [*&v53[v127] setTextAlignment:v103];
        (*(v61 + 8))(v100, v92);
      }

      [v53 setNeedsLayout];
      v77 = v123;
      goto LABEL_50;
    }

    v126 = v2;
    v66 = sub_10076C57C();
    swift_getKeyPath();
    sub_10076338C();

    v67 = v135;
    v68 = v62;
    v69 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v66];
    v70 = [v66 length];
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 1;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_100027A88;
    *(v72 + 24) = v71;
    v133 = sub_1003BE1CC;
    v134 = v72;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100026610;
    v132 = &unk_10089D598;
    v73 = _Block_copy(&aBlock);
    v74 = v67;
    v75 = v69;

    [v66 enumerateAttributesInRange:0 options:v70 usingBlock:{0x100000, v73}];

    _Block_release(v73);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if ((v66 & 1) == 0)
    {
      v76 = v75;
      v128 = v68;
      v77 = v109;
      sub_10076C60C();
      v78 = v118;
      v79 = v114;
      (*(v118 + 56))(v77, 0, 1, v114);
      v80 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
      v81 = v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
      v82 = *&v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
      v83 = *&v53[v127];
      v84 = v76;
      [v83 setNumberOfLines:v82];
      if (v81 != v53[v80])
      {
        sub_10073D75C();
      }

      v85 = v84;
      sub_10073D114(v84);
      v53[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v86 = v115;
      sub_100016E2C(v77, v115, &unk_100959F50);
      v87 = (*(v78 + 48))(v86, 1, v79);
      v60 = v126;
      v88 = v110;
      v89 = v117;
      if (v87 == 1)
      {
        sub_100415FB8(v86);
      }

      else
      {
        (*(v78 + 32))(v110, v86, v79);
        v104 = v108;
        (*(v78 + 16))(v108, v88, v79);
        v105 = (*(v78 + 88))(v104, v79);
        if (v105 == enum case for Paragraph.Alignment.left(_:))
        {
          v106 = 0;
        }

        else if (v105 == enum case for Paragraph.Alignment.center(_:))
        {
          v106 = 1;
        }

        else if (v105 == enum case for Paragraph.Alignment.right(_:))
        {
          v106 = 2;
        }

        else if (v105 == enum case for Paragraph.Alignment.justified(_:))
        {
          v106 = 3;
        }

        else if (v105 == enum case for Paragraph.Alignment.localized(_:))
        {
          v106 = 4;
        }

        else
        {
          (*(v78 + 8))(v108, v79);
          v106 = 0;
        }

        [v83 setTextAlignment:v106];
        (*(v78 + 8))(v88, v79);
      }

      [v53 setNeedsLayout];

LABEL_50:
      sub_100415FB8(v77);
      [v60 setNeedsLayout];

      return (*(v113 + 8))(v124, v125);
    }

LABEL_53:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061A548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10061A570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton];
  sub_10076553C();
  sub_10076B8EC();
  v8 = v7;

  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_1009A0758];
  v12 = *&v6[qword_1009A0758];
  *v11 = sub_10061B2F8;
  v11[1] = v10;

  sub_1000167E0(v12);

  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView];
  sub_100719298(v6, 0x4072C00000000000, 0);
  v14 = &off_100911000;
  [v3 setNeedsLayout];
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton];
  v16 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v17 = *&v13[v16];

  v18 = sub_10071969C(v15, v17);

  if (v18)
  {
    v19 = swift_beginAccess();
    __chkstk_darwin(v19);
    result = sub_10061B750(&v13[v16], sub_10061C060);
    v21 = *(*&v13[v16] + 16);
    if (v21 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_10061BA34(result, v21, sub_10049DFD0, sub_10061B91C);
    swift_endAccess();
    v22 = [v15 superview];
    if (v22)
    {
      v23 = v22;
      v24 = a2;
      sub_100016F40(0, &qword_1009441F0);
      v25 = v13;
      v26 = sub_100770EEC();

      if (v26)
      {
        [v15 removeFromSuperview];
      }

      a2 = v24;
      v14 = &off_100911000;
    }
  }

  [v3 v14[194]];
  if (sub_10076552C())
  {
    sub_10076B8EC();
    if (v27)
    {
      v28 = sub_10076FF6C();
    }

    else
    {
      v28 = 0;
    }

    [v15 setTitle:v28 forState:0];

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = &v15[qword_1009A0758];
    v39 = *&v15[qword_1009A0758];
    *v38 = sub_10061BB0C;
    v38[1] = v37;

    sub_1000167E0(v39);

    sub_100719298(v15, 0x4072C00000000000, 0);
    [v3 v14[194]];

    goto LABEL_21;
  }

  v29 = *&v13[v16];

  v30 = sub_10071969C(v15, v29);

  if (!v30)
  {
LABEL_18:
    [v3 v14[194]];
LABEL_21:
    sub_10013FA60(a1, a2);
    return [v3 v14[194]];
  }

  v31 = swift_beginAccess();
  __chkstk_darwin(v31);
  result = sub_10061B750(&v13[v16], sub_10061B328);
  v32 = *(*&v13[v16] + 16);
  if (v32 >= result)
  {
    sub_10061BA34(result, v32, sub_10049DFD0, sub_10061B91C);
    swift_endAccess();
    v33 = [v15 superview];
    if (v33)
    {
      v34 = v33;
      sub_100016F40(0, &qword_1009441F0);
      v35 = v13;
      v36 = sub_100770EEC();

      if (v36)
      {
        [v15 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10061AABC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A26C8);
  sub_10000A61C(v4, qword_1009A26C8);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10061AC94(uint64_t a1)
{
  v36 = a1;
  v2 = sub_10076D9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton();
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v6, qword_1009A1900);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_100941340 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_10000A61C(v2, qword_1009A26C8);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton) = sub_1005267B4(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton) = sub_1005267B4(v9, v5);
  v15 = v36;
  sub_1000AE584(v36, v37);
  v16 = sub_100564840(v37);
  v17 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_100016F40(0, &qword_100942F10);
  v24 = v23;
  v25 = sub_100770E1C();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton];
  v31 = sub_100770E1C();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_1000AE628(v15);
  return v20;
}

void sub_10061B140(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10061B1D0()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_delegate;

  return sub_10000CC8C(v1);
}

uint64_t sub_10061B2C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10075FD2C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10077158C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_10077158C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B430(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10077158C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_10077158C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1000FEA30(result, 1);

  return sub_10061B330(v4, v2, 0);
}

unint64_t sub_10061B508(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_10000A5D4(&qword_1009425C8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100016F40(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10077158C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_10077158C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B750(void **a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = (*a1 + 2);
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_10061BB3C(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_10061BBAC(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_10061BB3C(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_10061BB3C(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1004BDAFC(v4);
          }

          result = sub_10061BC14(v16, &v4[11 * v3 + 4]);
          if (v11 >= v4[2])
          {
            goto LABEL_29;
          }

          result = sub_10061BC14(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = (v4 + 2);
      v12 = v4[2];
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10061B91C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_10000A5D4(&qword_100959180);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061BA34(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10061BB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061BBAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100959180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10061BC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_10061BC84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100016F40(0, &qword_100958FF0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_10077158C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_10077158C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10061BDB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10077158C();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_10077158C();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1000FEA30(result, 1);

  return sub_10061BC84(v6, v5, 1, v3);
}

uint64_t sub_10061BEC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_10077158C();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_10061B620(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10061BFB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

id sub_10061C064()
{
  v1 = sub_10000A5D4(&unk_100943200);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_1000527AC(v4);
    }

    else
    {

      sub_100263BF0(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

uint64_t sub_10061C2F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_10077158C();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10061C40C(uint64_t a1)
{
  v105 = a1;
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _swiftEmptyArrayStorage;
  sub_10061E62C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v6 = swift_allocObject();
  v104 = v1;
  swift_unknownObjectWeakInit();
  v103[2] = type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000014;
  *(v7 + 64) = 0x80000001007F2A00;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_10061F100;
  *(v7 + 112) = v6;
  swift_retain_n();
  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v3 + 8);
  v103[1] = v3 + 8;
  v11(v5, v2);
  v108 = v8;
  v109 = v10;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v106 = v2;
  v107 = v11;
  sub_10077025C();
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v12 = sub_1005BF804(0x302E32206F726548, 0xEF74686769654820, sub_10061D874, 0, sub_10061D9A0, 0);

  sub_10077019C();
  v13 = v105;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v103[3] = v12;
  sub_10077025C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  v17[7] = 0xD000000000000026;
  v17[8] = 0x80000001007F2A20;
  v17[10] = 0;
  v17[11] = 0;
  v17[9] = 0;
  v17[12] = sub_10061F508;
  v17[13] = v15;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v107(v5, v106);
  v108 = v18;
  v109 = v20;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  v23 = swift_allocObject();
  v23[7] = 0xD000000000000029;
  v23[8] = 0x80000001007F2A50;
  v23[10] = 0;
  v23[11] = 0;
  v23[9] = 0;
  v23[12] = sub_10061F534;
  v23[13] = v22;

  sub_10075DDAC();
  v24 = sub_10075DD8C();
  v26 = v25;
  v107(v5, v106);
  v108 = v24;
  v109 = v26;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v13;
  v103[4] = v16;
  v29 = swift_allocObject();
  v29[7] = 0xD000000000000023;
  v29[8] = 0x80000001007F2A80;
  v29[10] = 0;
  v29[11] = 0;
  v29[9] = 0;
  v29[12] = sub_10061F560;
  v29[13] = v28;

  sub_10075DDAC();
  v30 = sub_10075DD8C();
  v32 = v31;
  v107(v5, v106);
  v108 = v30;
  v109 = v32;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v105;
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong snapshotPageTraitEnvironment];

    v37 = [v36 traitCollection];
    swift_unknownObjectRelease();
    v38 = [v37 userInterfaceIdiom];

    if (!v38)
    {
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v34;
      v41 = swift_allocObject();
      v41[7] = 0xD00000000000002CLL;
      v41[8] = 0x80000001007F2BB0;
      v41[10] = 0;
      v41[11] = 0;
      v41[9] = 0;
      v41[12] = sub_10061F66C;
      v41[13] = v40;

      sub_10075DDAC();
      v42 = sub_10075DD8C();
      v44 = v43;
      v45 = v107;
      v107(v5, v106);
      v108 = v42;
      v109 = v44;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v34;
      v48 = swift_allocObject();
      v48[7] = 0xD00000000000002FLL;
      v48[8] = 0x80000001007F2BE0;
      v48[10] = 0;
      v48[11] = 0;
      v48[9] = 0;
      v48[12] = sub_10061F698;
      v48[13] = v47;

      sub_10075DDAC();
      v49 = sub_10075DD8C();
      v51 = v50;
      v45(v5, v106);
      v108 = v49;
      v109 = v51;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v34;
      v54 = swift_allocObject();
      v54[7] = 0xD000000000000029;
      v54[8] = 0x80000001007F2C10;
      v54[10] = 0;
      v54[11] = 0;
      v54[9] = 0;
      v54[12] = sub_10061F6C4;
      v54[13] = v53;

      sub_10075DDAC();
      v55 = sub_10075DD8C();
      v57 = v56;
      v45(v5, v106);
      v108 = v55;
      v109 = v57;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  v58 = swift_allocObject();
  v58[7] = 0xD00000000000001FLL;
  v58[8] = 0x80000001007F2AB0;
  v58[10] = 0;
  v58[11] = 0;
  v58[9] = 0;
  v58[12] = sub_10061DC9C;
  v58[13] = 0;
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v62 = v106;
  v63 = v107;
  v107(v5, v106);
  v108 = v59;
  v109 = v61;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v64 = swift_allocObject();
  v64[7] = 0xD000000000000024;
  v64[8] = 0x80000001007F2AD0;
  v64[10] = 0;
  v64[11] = 0;
  v64[9] = 0;
  v64[12] = sub_10061DE5C;
  v64[13] = 0;
  sub_10075DDAC();
  v65 = sub_10075DD8C();
  v67 = v66;
  v63(v5, v62);
  v108 = v65;
  v109 = v67;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v68 = swift_allocObject();
  v68[7] = 0xD00000000000001FLL;
  v68[8] = 0x80000001007F2B00;
  v68[10] = 0;
  v68[11] = 0;
  v68[9] = 0;
  v68[12] = sub_10061E01C;
  v68[13] = 0;
  sub_10075DDAC();
  v69 = sub_10075DD8C();
  v71 = v70;
  v63(v5, v62);
  v108 = v69;
  v109 = v71;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v72 = swift_allocObject();
  v72[7] = 0xD000000000000043;
  v72[8] = 0x80000001007F2B20;
  v72[10] = 0;
  v72[11] = 0;
  v72[9] = 0;
  v72[12] = sub_10061E1DC;
  v72[13] = 0;
  sub_10075DDAC();
  v73 = sub_10075DD8C();
  v75 = v74;
  v63(v5, v62);
  v108 = v73;
  v109 = v75;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  sub_10075F3FC();
  sub_10076F64C();
  sub_10076FC1C();
  v76 = v108;
  v77 = swift_allocObject();
  v77[7] = 0x4820656461637241;
  v77[8] = 0xE90000000000004FLL;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = sub_10061F58C;
  v77[12] = v76;
  v77[13] = sub_10061F5FC;
  v77[14] = v76;
  swift_retain_n();
  sub_10075DDAC();
  v78 = sub_10075DD8C();
  v80 = v79;
  v63(v5, v62);
  v108 = v78;
  v109 = v80;
  sub_10077140C();

  sub_10077019C();
  v81 = v62;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v82 = swift_allocObject();
  v83 = v104;
  *(v82 + 16) = v76;
  *(v82 + 24) = v83;
  v84 = swift_allocObject();
  *(v84 + 56) = 0xD000000000000011;
  *(v84 + 64) = 0x80000001007F2B70;
  *(v84 + 72) = 0u;
  *(v84 + 88) = 0u;
  *(v84 + 104) = sub_10061F65C;
  *(v84 + 112) = v82;

  v85 = v83;

  sub_10075DDAC();
  v86 = sub_10075DD8C();
  v88 = v87;
  v107(v5, v62);
  v108 = v86;
  v109 = v88;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v89 = swift_allocObject();
  *(v89 + 16) = v76;
  *(v89 + 24) = v85;
  v90 = swift_allocObject();
  *(v90 + 56) = 0xD00000000000001ALL;
  *(v90 + 64) = 0x80000001007F2B90;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0u;
  *(v90 + 104) = sub_10061F664;
  *(v90 + 112) = v89;

  v91 = v85;

  sub_10075DDAC();
  v92 = sub_10075DD8C();
  v94 = v93;
  v95 = v107;
  v107(v5, v81);
  v108 = v92;
  v109 = v94;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v96 = v110;
  sub_10000A5D4(&unk_100942870);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v98 = swift_allocObject();
  sub_10075DDAC();
  v99 = sub_10075DD8C();
  v101 = v100;
  v95(v5, v81);
  v98[2] = v99;
  v98[3] = v101;
  v98[4] = 0;
  v98[5] = 0xE000000000000000;
  v98[6] = v96;
  *(v97 + 32) = v98;

  return v97;
}

void sub_10061D734()
{
  v0 = sub_10076880C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      (*(v1 + 104))(v3, enum case for EntitlementRefeshCondition.always(_:), v0);
      sub_100767E7C();

      (*(v1 + 8))(v3, v0);
    }
  }
}

uint64_t sub_10061D874()
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
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_10077034C();
    }
  }

  else
  {
    sub_10000CFBC(v6, &unk_1009434C0);
  }

  return 0x746C7561666544;
}

void sub_10061D9A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  v6 = sub_10076FF6C();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = v7;
    v11 = sub_10076FF6C();
    [v8 setValue:v9 forKey:?];

LABEL_5:

    return;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_4:
    v9 = [objc_opt_self() standardUserDefaults];
    v11 = sub_10076FF6C();
    [v9 setValue:0 forKey:?];
    goto LABEL_5;
  }
}

uint64_t sub_10061DB68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = sub_100762FAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *a4, v8);
    sub_10061F7C0(v11, a3, a5);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_10061DC9C()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061DE5C()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061E01C()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061E1DC()
{
  v0 = sub_100767D9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767D8C();
  sub_100767D7C();
  return (*(v1 + 8))(v3, v0);
}

void sub_10061E2A0()
{
  v0 = sub_10075F3AC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = sub_10049EE7C(*(v0 + 16), 0);
    v4 = sub_10061F3AC(&v12, v3 + 4, v2, v1);
    sub_100178640();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v12 = v3;
  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  sub_10076FEFC();

  v5 = sub_10076FF6C();
  v6 = sub_10076FF6C();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

void sub_10061E494()
{
  sub_10075F3EC();
  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  sub_10076FEFC();

  v0 = sub_10076FF6C();
  v1 = sub_10076FF6C();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = sub_10076FF6C();
  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_10061E62C()
{
  v1 = v0;
  v2 = sub_10075FAEC();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_10076915C();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v11;
  v12 = sub_10075DDBC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076914C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v15;
    v53 = v13;
    v54 = v12;
    v75 = _swiftEmptyArrayStorage;
    v61 = v9;
    v62 = v4;
    v18 = v16;
    sub_1007714EC();
    v60 = *(v65 + 16);
    v19 = *(v65 + 80);
    v51 = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v58 = *(v65 + 72);
    v57 = (v69 + 8);
    v65 += 16;
    v56 = (v65 + 16);
    v59 = v19;
    v55 = (v19 + 24) & ~v19;
    v68 = v7;
    v70 = v8;
    do
    {
      v69 = v20;
      v21 = v63;
      v60(v63, v20, v8);
      sub_10076913C();
      v22 = sub_10075FACC();
      v24 = v23;
      v25 = *v57;
      (*v57)(v68, v2);
      v71 = v22;
      v72 = v24;
      sub_10077140C();
      v26 = v62;
      sub_10076913C();
      v27 = sub_10075FACC();
      v66 = v28;
      v67 = v27;
      v25(v26, v2);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v2;
      v31 = v1;
      v32 = *v56;
      v33 = v17;
      v34 = v64;
      (*v56)(v64, v21, v70);
      v35 = v55;
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      v37 = v34;
      v38 = v33;
      v32((v36 + v35), v37, v70);
      v1 = v31;
      v2 = v30;
      type metadata accessor for MenuItemDebugSetting();
      v39 = swift_allocObject();
      *(v39 + 72) = 0;
      v40 = v66;
      *(v39 + 56) = v67;
      *(v39 + 64) = v40;
      *(v39 + 80) = sub_1006200C0;
      *(v39 + 88) = v36;
      v41 = v73[1];
      *(v39 + 16) = v73[0];
      *(v39 + 32) = v41;
      *(v39 + 48) = v74;
      sub_1007714CC();
      sub_1007714FC();
      v8 = v70;
      sub_10077150C();
      sub_1007714DC();
      v20 = v69 + v58;
      v17 = v38 - 1;
    }

    while (v17);

    v42 = v75;
    v12 = v54;
    v13 = v53;
    v15 = v52;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MenuDebugSetting();
  v44 = swift_allocObject();
  strcpy((v44 + 56), "Toggle State");
  *(v44 + 69) = 0;
  *(v44 + 70) = -5120;
  *(v44 + 72) = v42;
  *(v44 + 80) = sub_100620124;
  *(v44 + 88) = v43;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v48 = *(v13 + 8);

  v48(v15, v12);
  *&v73[0] = v45;
  *(&v73[0] + 1) = v47;
  sub_10077140C();
  sub_10061EEF8(v73);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v73;

  sub_10061C2F8(sub_10002CB98, (&v51 - 4), v42);

  sub_10000CFBC(v73, &qword_100943310);
  return v44;
}

uint64_t sub_10061EC68(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_100961220);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10075FAEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100961228);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
  {
    sub_10076913C();
    sub_100767E0C();

    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v7 + 56))(v12, v16, 1, v6);
  sub_10000CFBC(v12, &qword_100961228);
  v17 = sub_10076915C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5, a2, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return sub_10076A78C();
}

double sub_10061EEF8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10075FAEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = swift_unknownObjectWeakLoadStrong(), v7, v8))
  {
    sub_100767E6C();

    v9 = sub_10075FACC();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v13[1] = v9;
    v13[2] = v11;
    sub_10077140C();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_10061F060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10061F0C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10061F108(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10075E11C();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_10061F3AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10061F58C()
{
  v1._object = 0x80000001007F2C70;
  v1._countAndFlagsBits = 0xD000000000000020;
  if (sub_10075F3DC(v1))
  {
    return 0x6C62616C69617641;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

void sub_10061F5FC()
{
  v4._object = 0x80000001007F2C70;
  v4._countAndFlagsBits = 0xD000000000000020;
  v0 = sub_10075F3DC(v4);
  v2._object = 0x80000001007F2C70;
  v1 = !v0;
  v2._countAndFlagsBits = 0xD000000000000020;

  sub_10075F3CC(v2, v1);
}

id sub_10061F6F0()
{
  swift_unknownObjectWeakInit();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10061F7C0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v50 = a3;
  v58 = a2;
  v54 = a1;
  v3 = sub_10075F65C();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765F6C();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100766EDC();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v57 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v56 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v11 - 8);
  v55 = v42 - v12;
  v13 = sub_10076C15C();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v15 - 8);
  v17 = v42 - v16;
  v18 = sub_10000A5D4(&qword_1009499B8);
  __chkstk_darwin(v18);
  v20 = v42 - v19;
  v21 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v21 - 8);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v42 - v25;
  v27 = sub_10075DB7C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &unk_1009435D0;
    v32 = v26;
    return sub_10000CFBC(v32, v31);
  }

  v43 = v5;
  (*(v28 + 32))(v30, v26, v27);
  v33 = *(v18 + 48);
  v34 = *(v18 + 64);
  *v20 = 0;
  v35 = sub_100762FAC();
  (*(*(v35 - 8) + 16))(&v20[v33], v54, v35);
  (*(v28 + 16))(&v20[v34], v30, v27);
  v36 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_10000CFBC(v20, &qword_1009499B8);
    (*(v28 + 8))(v30, v27);
    v31 = &unk_100943200;
    v32 = v17;
    return sub_10000CFBC(v32, v31);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  (*(v44 + 104))(v53, enum case for FlowPage.arcadeWelcome(_:), v13);
  v39 = *(v28 + 56);
  v42[1] = v23;
  v39(v23, 1, 1, v27);
  v40 = sub_10076096C();
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v59 = 0u;
  v60 = 0u;
  sub_10076F4DC();
  (*(v45 + 104))(v57, *v50, v46);
  (*(v47 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v48);
  (*(v51 + 104))(v43, enum case for FlowOrigin.inapp(_:), v52);
  sub_10076FA2C();
  v54 = v37;
  sub_10075F63C();
  swift_allocObject();
  v41 = sub_10075F5EC();
  sub_100263C24(v41, 1, v58, v17);

  sub_10000CFBC(v20, &qword_1009499B8);
  (*(v28 + 8))(v30, v27);
  return (*(v54 + 8))(v17, v36);
}

uint64_t sub_10061FFFC()
{
  v1 = sub_10076915C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1006200C0()
{
  v1 = *(sub_10076915C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10061EC68(v2, v3);
}

double sub_100620190(uint64_t a1)
{
  v57 = sub_1007656EC();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076570C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076997C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007616DC();
  sub_100620A40(&qword_10094A3B8, &type metadata accessor for EditorialQuote);
  sub_10076332C();
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
  sub_10076338C();

  sub_10076C2FC();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  sub_10076338C();

  v16 = v64[0];
  v17 = sub_1007706EC();

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  v47 = sub_1007616CC();
  v46 = v19;
  v20 = sub_10005312C();
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  sub_10000A61C(v21, qword_10099FCC0);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v22 = sub_10076C04C();
  v65 = v22;
  v49 = sub_100620A40(&qword_100943230, &type metadata accessor for Feature);
  v66 = v49;
  v23 = sub_10000DB7C(v64);
  v24 = *(v22 - 8);
  v45[1] = v20;
  v25 = *(v24 + 104);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25(v23);
  sub_10076C90C();
  v58 = a1;
  sub_10000CD74(v64);
  sub_10076996C();
  sub_10076994C();
  v47 = v18;
  v26 = *(v54 + 8);
  v27 = v55;
  v26(v9, v55);
  v54 = v15;
  v46 = sub_1007616BC();
  v45[0] = v28;
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v21, qword_10099FCD8);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v62 = v22;
  v63 = v49;
  v29 = sub_10000DB7C(v61);
  (v25)(v29, v48, v22);
  sub_10076C90C();
  sub_10000CD74(v61);
  sub_10076996C();
  sub_10076994C();
  v26(v9, v27);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = sub_10000A61C(v57, qword_10099FCA8);
  (*(v56 + 16))(v50, v31, v30);
  v32 = v65;
  v33 = v66;
  v34 = sub_10000CF78(v64, v65);
  v60[3] = v32;
  v60[4] = *(v33 + 8);
  v35 = sub_10000DB7C(v60);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v62;
  v37 = v63;
  v38 = sub_10000CF78(v61, v62);
  v59[3] = v36;
  v59[4] = *(v37 + 8);
  v39 = sub_10000DB7C(v59);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v51;
  sub_1007656FC();
  swift_getKeyPath();
  sub_10076338C();

  sub_100620A40(&unk_100961240, &type metadata accessor for EditorialQuoteLayout);
  v41 = v53;
  sub_10076D2AC();
  v43 = v42;
  swift_unknownObjectRelease();

  (*(v52 + 8))(v40, v41);
  sub_10000CD74(v61);
  sub_10000CD74(v64);
  return v43;
}

uint64_t sub_100620A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100620A88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_1006217A0(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView) layer];
  sub_10003F0D4(v1 + v3, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000CF78(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setCompositingFilter:v11];

  swift_unknownObjectRelease();
  return sub_1000258C0(a1);
}

uint64_t sub_100620C30()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076E1EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076E21C();
  sub_10000DB18(v8, qword_1009A26E0);
  sub_10000A61C(v8, qword_1009A26E0);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = sub_10076D9AC();
  v13[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  return sub_10076E1FC();
}

char *sub_100620E78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076E1EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor;
  sub_1000325F0();
  *&v4[v14] = sub_100770CDC();
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_10076D67C();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v22);
  sub_10076D66C();
  sub_10076E1FC();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

id sub_100621380()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v5);
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  sub_10076E20C();
  v18 = v17;

  swift_beginAccess();
  sub_10076E1AC();
  swift_endAccess();
  sub_10000CF78(v25, v25[3]);
  sub_1000FF02C();
  sub_10076D40C();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  sub_10000CD74(v25);
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v23 = v20 + CGRectGetMinY(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  return [v21 setFrame:{MinX, v23, CGRectGetWidth(v29), v18}];
}

uint64_t type metadata accessor for SeparatorView()
{
  result = qword_100961290;
  if (!qword_100961290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006216F4()
{
  result = sub_10076E21C();
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

uint64_t sub_1006217A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100621810()
{
  v1 = sub_10076E1EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor;
  sub_1000325F0();
  *(v0 + v5) = sub_100770CDC();
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = sub_10076D67C();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v8);
  sub_10076D66C();
  sub_10076E1FC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100621994()
{
  v1 = sub_10075DE9C();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000A5D4(&unk_100942870);
  v69 = swift_allocObject();
  v65 = xmmword_100785D70;
  *(v69 + 16) = xmmword_100785D70;
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  type metadata accessor for NavigationActionDebugSetting();
  v8 = swift_allocObject();
  v8[7] = 0xD000000000000011;
  v8[8] = 0x80000001007F2E00;
  v8[10] = 0;
  v8[11] = 0;
  v8[9] = sub_10062216C;
  v8[12] = sub_10062285C;
  v8[13] = v7;
  v9 = v0;

  sub_10075DDAC();
  v10 = sub_10075DD8C();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v68 = v13;
  v73 = v10;
  v74 = v12;
  sub_10077140C();

  v14 = v69;
  *(v69 + 32) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  v16[7] = 0xD00000000000001ALL;
  v16[8] = 0x80000001007F2E20;
  v16[10] = 0;
  v16[11] = 0;
  v16[9] = 0;
  v16[12] = sub_100622864;
  v16[13] = v15;
  v17 = v9;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v13(v6, v3);
  v73 = v18;
  v74 = v20;
  sub_10077140C();

  *(v14 + 40) = v16;
  sub_10075DE6C();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10079B610;
  v21 = sub_10075DDCC();
  v23 = v22;
  v71 = type metadata accessor for InfoDebugSetting();
  v24 = swift_allocObject();
  v24[7] = 0x696669746E656449;
  v24[8] = 0xEA00000000007265;
  v24[9] = v21;
  v24[10] = v23;

  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  v28 = v68;
  v68(v6, v3);
  v73 = v25;
  v74 = v27;
  sub_10077140C();

  v29 = v64;
  *(v64 + 32) = v24;
  v30 = swift_allocObject();
  *(v30 + 56) = 0xD000000000000013;
  *(v30 + 64) = 0x80000001007F2E40;
  *(v30 + 72) = xmmword_1007B0490;
  sub_10075DDAC();
  v31 = sub_10075DD8C();
  v33 = v32;
  v28(v6, v3);
  v73 = v31;
  v74 = v33;
  sub_10077140C();
  v29[5] = v30;
  sub_10075DE1C();
  v34 = sub_10077034C();
  v36 = v35;
  v37 = swift_allocObject();
  v37[7] = 0xD000000000000014;
  v37[8] = 0x80000001007F2E60;
  v37[9] = v34;
  v37[10] = v36;

  sub_10075DDAC();
  v38 = sub_10075DD8C();
  v40 = v39;
  v28(v6, v3);
  v73 = v38;
  v74 = v40;
  sub_10077140C();

  v29[6] = v37;
  v41 = sub_10075DDFC();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = swift_allocObject();
  v44[7] = 0xD000000000000014;
  v44[8] = 0x80000001007F2E80;
  v44[9] = v42;
  v44[10] = v43;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v48 = v68;
  v68(v6, v3);
  v73 = v45;
  v74 = v47;
  sub_10077140C();

  v29[7] = v44;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 56) = 0xD000000000000012;
  *(v49 + 64) = 0x80000001007F2EA0;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xD00000000000001DLL;
  *(v49 + 88) = 0x80000001007F2EC0;
  *(v49 + 96) = 0;
  sub_10075DDAC();
  v50 = sub_10075DD8C();
  v52 = v51;
  v48(v6, v3);
  v73 = v50;
  v74 = v52;
  sub_10077140C();
  v29[8] = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  type metadata accessor for DebugSection();
  v54 = swift_allocObject();
  sub_10075DDAC();
  v55 = sub_10075DD8C();
  v57 = v56;
  v48(v6, v3);
  v54[2] = v55;
  v54[3] = v57;
  v54[4] = 0x6F726665726F7453;
  v54[5] = 0xEA0000000000746ELL;
  v54[6] = v69;
  *(v53 + 32) = v54;
  v58 = swift_allocObject();
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v48(v6, v3);
  v58[2] = v59;
  v58[3] = v61;
  v58[4] = 0x656C61636F4CLL;
  v58[5] = 0xE600000000000000;
  v58[6] = v29;
  *(v53 + 40) = v58;
  (*(v66 + 8))(v72, v67);
  return v53;
}

uint64_t sub_100622198(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugStorefrontPicker(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_10062276C()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_1006227CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100622824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100622870()
{
  sub_1000325F0();
  result = sub_100770CFC();
  qword_1009A2700 = result;
  return result;
}

uint64_t sub_1006228A4()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_1009A2708 = result;
  return result;
}

id sub_1006228D8()
{
  result = [objc_opt_self() systemGray5Color];
  qword_1009A2710 = result;
  return result;
}

uint64_t sub_100622914()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_1009A2718 = result;
  return result;
}

void sub_100622978()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A2720;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_1009A2730 = v3;
}

void sub_100622A7C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    sub_100770CAC();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness]);
      v24 = v18;
      sub_10077046C();

      v25 = v24;
      sub_10077048C();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness]);
      v26 = v18;
      sub_10077046C();

      v27 = v26;
      sub_10077048C();

      CGContextStrokePath(v27);
    }
  }
}

id sub_100622F20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100622F88(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_10076F50C();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10000A570(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_10000CF78(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_100012498(&v23, v26);
        sub_100012498(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_10000CF78(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_10000CD74(v27);
        return;
      }

      ++v7;
      sub_10000CD74(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_10000A5D4(&qword_100942C70);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    sub_10076FC8C();
  }
}

uint64_t sub_1006231BC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100623224()
{
  result = qword_1009435E0;
  if (!qword_1009435E0)
  {
    sub_10075F63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009435E0);
  }

  return result;
}

unint64_t sub_1006232B8()
{
  result = qword_1009613B0;
  if (!qword_1009613B0)
  {
    sub_100767F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009613B0);
  }

  return result;
}

uint64_t sub_100623310(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&qword_100942C70);
  v4 = sub_10076FCEC();
  type metadata accessor for EventStoreManager();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = v10[0];
  sub_10051E3D0();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_100085204();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_10077068C();
  sub_10076FC6C();

  sub_10000CD74(v10);
  return v4;
}

uint64_t sub_100623478(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_1009407E0 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095BFA8, qword_10095BFC0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    (*(v6 + 104))(v8, enum case for ActionOutcome.unsupported(_:), v5);
    sub_10076FCBC();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    result = sub_100767F8C();
    if (result)
    {
      sub_100563DC4(result, 1, a3);
      sub_10076FC4C();
    }
  }

  return result;
}

uint64_t sub_10062370C()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F32C();
  sub_1000258C0(v4);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1006238EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100623950(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_10076B5CC();
  v20 = sub_10041329C();
  if (!v20)
  {
LABEL_67:
    (*(v8 + 8))(v19, v7);
    return;
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  sub_10076573C();
  sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  if (sub_100761A5C())
  {
    v62 = v8;
    if (sub_100761A9C() <= a2 || (sub_100761A4C() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = sub_100761A8C();
      if (sub_10062B9F4(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = sub_10076B5FC();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_10094E0D0];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  sub_100770ACC();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_10041329C()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_artworkLoader], v31, v34);
    goto LABEL_67;
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_1006253D0(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  v52 = v59(v51, v7);
  if (v52 == enum case for Shelf.ContentType.annotation(_:) || v52 == enum case for Shelf.ContentType.productCapability(_:) || v52 == enum case for Shelf.ContentType.productPageLink(_:) || v52 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    v31.n128_f64[0] = sub_10010F994(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
}

uint64_t sub_10062415C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094E1D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = *&v0[qword_10094E0D0];
  sub_10076573C();
  sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  sub_100761A9C();
  sub_10076F9CC();
  if (*(v5 + 112))
  {

    sub_10076611C();
  }

  v6 = &off_100911000;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_100625C30(&qword_100958F50, &type metadata accessor for GenericPagePresenter);
  if (sub_10076579C())
  {
    sub_10076366C();
  }

  v8 = [v1 collectionView];
  v9 = &off_100911000;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        *v15 = sub_100625CB0;
        v15[1] = v14;

        v9 = &off_100911000;
        sub_1000167E0(v16);

        v6 = &off_100911000;
      }

      else
      {
      }
    }
  }

  v17 = [v1 v6[200]];
  if (v17 && (v18 = v17, v19 = [v17 v9[297]], v18, v19))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_10075DFDC();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_1001C9A44(v4);

  sub_10000CFBC(v4, &unk_10094E1D0);
  sub_10076578C();
}

void sub_1006244B8(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        sub_10076573C();
        sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
        v11 = sub_100761B4C();
        sub_100623950(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_100624670()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1003B5688();
    sub_1006244B8(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_10076573C();
    sub_100625C30(&qword_100958F50, &type metadata accessor for GenericPagePresenter);
    v5 = sub_10076579C();

    if (v5)
    {
      sub_10076366C();
    }
  }

  return result;
}

void sub_100624794(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_100625CB8;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1006F5994;
      v11[3] = &unk_10089D860;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

uint64_t sub_1006248E8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100625CD8;
  *(v4 + 24) = a2;
  v7[4] = sub_1000349FC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001C5148;
  v7[3] = &unk_10089D8B0;
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

void sub_100624A34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100624A88();
  }
}

id sub_100624A88()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_10062415C();
  if (**&v0[qword_10094E0D0] == &off_100961AA0)
  {
    sub_10062B020(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v15 = qword_1009613C0;
  swift_beginAccess();
  sub_10021560C(v14, &v0[v15]);
  result = swift_endAccess();
  if (v0[qword_1009613B8] == 1)
  {
    sub_1000DE51C(&v0[v15], v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10000CFBC(v11, &unk_10094DE60);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v17 = result;
        isa = sub_10075E02C().super.isa;
        [v17 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_10021560C(v8, &v1[v15]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100624DC0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100624794(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100624E40(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = sub_10075E11C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_1009613B8) & 1) == 0)
  {
    *(v2 + qword_1009613B8) = 1;
  }

  v16 = qword_1009613C0;
  swift_beginAccess();
  sub_1000DE51C(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CFBC(v10, &unk_10094DE60);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = sub_10075E02C().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_10021560C(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006250E8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100624E40(a3);
}

double sub_10062513C(void *a1)
{
  v1 = a1;
  sub_10034CE50();
  v3 = v2;

  return v3;
}

uint64_t type metadata accessor for PrivacyDetailViewController()
{
  result = qword_1009613F0;
  if (!qword_1009613F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062524C()
{
  sub_1002153E0();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006253D0(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10076B5BC();
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

void sub_100625914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076F9AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009613B8) = 0;
  v10 = qword_1009613C0;
  v11 = sub_10075E11C();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource();
  swift_allocObject();
  v12 = swift_retain_n();
  v13 = sub_10049303C(v12);

  v14 = sub_1004895EC(a1, v13, a2);
  sub_100625C30(&qword_1009619E8, type metadata accessor for PrivacyDetailViewController);
  v15 = v14;

  v16 = v15;
  sub_1007676FC();
  v16[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v17 = *&v16[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
  v18 = [v16 navigationItem];
  v19 = v18;
  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  [v18 setLargeTitleDisplayMode:v20];

  v21 = v16;
  sub_10076770C();
  v23 = v22;

  if (v23)
  {
    v24 = sub_10076FF6C();
  }

  else
  {
    v24 = 0;
  }

  [v21 setTitle:v24];

  v25 = [v21 view];
  if (v25)
  {
    memset(v26, 0, sizeof(v26));
    sub_10076F96C();
    sub_10000CFBC(v26, &unk_1009434C0);
    sub_100770B9C();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100625C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100625C78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100625CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100625CFC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_10077154C();

    if (v3)
    {
      sub_100016F40(0, &qword_10094F610);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1006103E4(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

id sub_100625DC4(char a1)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScreenshotsGalleryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  result = objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
    if (v10 >> 62)
    {
      result = sub_10077158C();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
        return result;
      }
    }

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result layoutIfNeeded];

      sub_10075E08C();
      v12 = [v1 collectionView];
      if (v12)
      {
        v13 = v12;
        isa = sub_10075E02C().super.isa;
        [v13 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100625FE0()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v2 setDirection:8];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 addGestureRecognizer:v2];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      sub_100016F40(0, &qword_100942F10);
      v7 = sub_100770D2C();
      [v6 setBackgroundColor:v7];
    }

    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 setAlwaysBounceHorizontal:1];
    }

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setShowsHorizontalScrollIndicator:0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setRemembersLastFocusedIndexPath:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setContentInsetAdjustmentBehavior:2];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v21 = sub_10076FF6C();

      [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];
    }

    v22 = [v1 collectionView];
    if (!v22)
    {

      return;
    }

    v37 = v22;
    [v22 bounds];
    sub_100627538(v23, v24);
    v26 = v25;
    v41 = sub_100760E4C() & 1;
    v27 = sub_10060889C(v26, v41);
    v28 = v27;
    v40 = *(v26 + 16);
    if (!v40)
    {
LABEL_30:

      return;
    }

    v29 = 0;
    v30 = (v26 + 48);
    v38 = v27 & 0xC000000000000001;
    v39 = v27 >> 62;
    while (v29 < *(v26 + 16))
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      if (v39)
      {
        v34 = sub_10077158C();
      }

      else
      {
        v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29 == v34)
      {
        goto LABEL_30;
      }

      if (v38)
      {

        sub_10077149C();
      }

      else
      {
        if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

      v43 = 0;
      memset(v42, 0, sizeof(v42));
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      *(v36 + 24) = v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v32;
      *(v36 + 48) = v33;
      *(v36 + 56) = v29;

      sub_100760B7C();

      sub_10000CFBC(v42, &qword_100943310);

      v30 += 3;
      if (v40 == ++v29)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_100626510(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScreenshotsGalleryViewController();
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

void sub_100626644(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100628AB8;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006F5994;
  v14[3] = &unk_10089D910;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_1006267DC()
{
  v0 = sub_10075E11C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 collectionView];

      if (v8)
      {
        sub_10000A5D4(&qword_100952110);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100784500;
        *(v9 + 32) = 0;
        *(v9 + 40) = v5;
        sub_10075E01C();
        isa = sub_10075E02C().super.isa;
        (*(v1 + 8))(v3, v0);
        [v8 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_100626AC0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  sub_1007708FC();
  v4 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_100124EE0();

  return v7;
}

double sub_100627134(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = sub_1007706FC();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_1006271FC(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10000CFBC(v9, &unk_10094DE60);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    sub_10075E06C();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_10021559C(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000CFBC(v9, &unk_10094DE60);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_10075E09C();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_100627538(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = sub_10077158C();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
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
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = sub_10076BDCC();
      sub_10076BEFC();
      v11 = v10;
      v13 = v12;
      sub_10076BEFC();
      v15 = v14;
      v17 = v16;
      sub_10076BEFC();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10049D474(0, v7[2] + 1, 1, v7);
      }

      v27 = v7[2];
      v26 = v7[3];
      if (v27 >= v26 >> 1)
      {
        v7 = sub_10049D474((v26 > 1), v27 + 1, 1, v7);
      }

      v7[2] = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_1006276FC()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_10062777C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10062786C(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_10000A5D4(&qword_100952110);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100784500;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    sub_10075E01C();
    isa = sub_10075E02C().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_10075FCEC(v20, v18);

        v15 = v17;
      }
    }
  }
}

unint64_t sub_100627A20()
{
  v1 = v0;
  v2 = sub_10075F21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  result = sub_10075E09C();
  v53 = v2;
  v54 = v6;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_10077149C();
LABEL_5:
    v52 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
    v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    type metadata accessor for BorderedScreenshotView();
    sub_10076422C();
    Width = CGRectGetWidth(v55);
    v18 = v15 + v16;
    sub_10076422C();
    CGRectGetHeight(v56);
    v19 = [v0 traitCollection];
    v20 = sub_1007706FC();

    if (sub_100760E4C())
    {
      sub_10076BDCC();
    }

    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    v21 = Width - v18;

    sub_100760E3C();

    v22 = v53;
    if ((*(v3 + 88))(v5, v53) != enum case for AppPlatform.watch(_:))
    {
      (*(v3 + 8))(v5, v22, 0.0);
    }

    sub_10076D35C();
    v24 = v23;
    v25 = (v21 - v23) * 0.5;
    if (v20)
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 60.0)
      {
        goto LABEL_15;
      }

      v28 = 120.0;
    }

    else
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 30.0)
      {
        goto LABEL_15;
      }

      v28 = 60.0;
    }

    v24 = v21 - v28;
LABEL_15:
    sub_10076BEFC();
    if (v29 < v24)
    {
      v24 = v29;
    }

    sub_10076D36C();
    v31 = v30;
    (*(v7 + 8))(v9, v27);
    v32 = &v10[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v32 = v24;
    *(v32 + 1) = v31;
    v32[16] = 0;
    [v10 setNeedsLayout];
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v34 = *(v33 + 16);

    v35 = sub_100625CFC(v13, v34);

    if (v35)
    {
      v36 = *(*&v10[v26] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v37 = v35;
      v38 = v36;
      v39 = sub_10075FC9C();

      if (v39)
      {
        sub_100016F40(0, &qword_10094F610);
        v41 = v37;
        v42 = sub_100770EEC();

        v43 = v42 ^ 1;
      }

      else
      {
        v43 = 1;
      }

      v49.is_nil = v43 & 1;
      v49.value.super.isa = v35;
    }

    else
    {
      v44 = sub_100625CFC(v13, *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_placeholderImages]);
      if (!v44)
      {
      }

      v37 = v44;
      v45 = *(*&v10[v26] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v46 = sub_10075FC9C();

      if (v46)
      {
        sub_100016F40(0, &qword_10094F610);
        v47 = v37;
        v48 = sub_100770EEC();

        if (v48)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v50 = v37;
      }

      v38 = *(*&v10[v26] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v49.value.super.isa = v37;
      v49.is_nil = 1;
    }

    sub_10075FCEC(v49, v40);

    v47 = v37;
LABEL_29:
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 8 * result + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100627FDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10075F21C();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v70[-v10];
  v75 = sub_10076D39C();
  __chkstk_darwin(v75);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v70[-v16];
  v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v77 = v15;
    result = sub_10077158C();
    v15 = v77;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v74 = a2;
  v77 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v78 = sub_10077149C();
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v78 = *(v18 + 32);

    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v22 = *(v21 + 16);
      if (v22)
      {
        goto LABEL_7;
      }
    }
  }

  v22 = sub_10077158C();
  if (!v22)
  {
  }

LABEL_7:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v73 = sub_10077149C();
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v73 = *(v18 + 8 * result + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  sub_100760E3C();

  v72 = *(v76 + 88);
  v31 = v72(v11, v6);
  v71 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v76 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  sub_10076D35C();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_initWithTabBarSystemItem_tag_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_initWithTabBarSystemItem_tag_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  sub_10076BEFC();
  if (v38 < v34)
  {
    v34 = v38;
  }

  sub_10076D36C();
  v40 = v39;
  v41 = *(v77 + 8);
  v42 = v17;
  v43 = v75;
  v77 += 8;
  v41(v42, v75);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[274]];
  v48 = sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  sub_100760E3C();

  v50 = v72(v8, v6);
  if (v50 != v71)
  {
    (*(v76 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  sub_10076D35C();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v74;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v74;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  sub_10076BEFC();
  if (v59 < v54)
  {
    v54 = v59;
  }

  sub_10076D36C();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_1006286C8(void *a1)
{
  v2 = v1;
  v4 = sub_10075F21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  v14 = sub_10075E09C();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();

  sub_100760E3C();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  sub_10076D35C();
  v16 = v19;
  sub_10076BEFC();
  sub_10076D36C();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  sub_1007706FC();
}

uint64_t sub_100628A80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100628AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100628AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100628B10()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100628BE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v226 = a7;
  v222 = a6;
  v223 = a2;
  v228 = a8;
  v216 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v216);
  v206 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = &v183 - v15;
  v16 = sub_100763BBC();
  v214 = *(v16 - 8);
  v215 = v16;
  __chkstk_darwin(v16);
  v221 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v211 = &v183 - v19;
  v20 = sub_10000A5D4(&qword_100949710);
  __chkstk_darwin(v20 - 8);
  v220 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v219 = &v183 - v23;
  __chkstk_darwin(v24);
  v210 = &v183 - v25;
  __chkstk_darwin(v26);
  v209 = &v183 - v27;
  v28 = sub_10000A5D4(&qword_100949718);
  __chkstk_darwin(v28 - 8);
  v205 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v204 = &v183 - v31;
  __chkstk_darwin(v32);
  v198 = &v183 - v33;
  __chkstk_darwin(v34);
  v197 = &v183 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v212 = *(v36 - 8);
  __chkstk_darwin(v36);
  v203 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v202 = &v183 - v39;
  __chkstk_darwin(v40);
  v201 = &v183 - v41;
  __chkstk_darwin(v42);
  v218 = (&v183 - v43);
  __chkstk_darwin(v44);
  v196 = &v183 - v45;
  __chkstk_darwin(v46);
  v195 = &v183 - v47;
  __chkstk_darwin(v48);
  v194 = &v183 - v49;
  __chkstk_darwin(v50);
  v208 = (&v183 - v51);
  v52 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v52 - 8);
  v185 = &v183 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v187 = &v183 - v55;
  __chkstk_darwin(v56);
  v190 = &v183 - v57;
  __chkstk_darwin(v58);
  v193 = &v183 - v59;
  __chkstk_darwin(v60);
  v192 = &v183 - v61;
  __chkstk_darwin(v62);
  v186 = &v183 - v63;
  __chkstk_darwin(v64);
  v189 = &v183 - v65;
  __chkstk_darwin(v66);
  v188 = &v183 - v67;
  __chkstk_darwin(v68);
  v191 = &v183 - v69;
  __chkstk_darwin(v70);
  v217 = &v183 - v71;
  __chkstk_darwin(v72);
  v207 = &v183 - v73;
  v74 = sub_1007621EC();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v183 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v183 - v80;
  v224 = v8;
  a3(0, v79);
  v225 = a4;
  v227 = a5;
  v82 = a5;
  v83 = v222;
  sub_10062BC00(a4, v82);
  v84 = sub_100761A5C();
  v85 = 0;
  if (v84)
  {
    v85 = sub_100761B4C();
  }

  v229 = v85;
  v213 = v36;
  sub_100761B6C();
  v87 = v86;
  if (v86)
  {
  }

  v200 = v87;
  sub_100761B7C();
  v89 = v88;
  if (v88)
  {
  }

  sub_100761A6C();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = sub_1007621DC();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v223;
  v94 = v225;
  v93 = v226;
  v95 = v227;
  v96 = v83;
  v97 = sub_10062A84C(a1, v223, v226, v225, v227);
  v98 = sub_10062A620(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_1005706B8(v89 != 0, v228);
  }

  v100 = v89;
  v184 = v89;
  if (v97)
  {
    if (v229)
    {

      v101 = sub_10076B77C();

      v102 = v201;
      v103 = v217;
      if (v101)
      {
        sub_10076035C();

        v104 = 0;
      }

      else
      {
        v104 = 1;
      }
    }

    else
    {
      v104 = 1;
      v102 = v201;
      v103 = v217;
    }

    v109 = sub_10076034C();
    v110 = *(v109 - 8);
    (*(v110 + 56))(v103, v104, 1, v109);
    v111 = sub_100763BAC();
    v226 = *(v111 - 1);
    (*(v226 + 7))(v219, 1, 1, v111);
    v227 = v111;
    if (v100)
    {
      v112 = (v110 + 48);
      if (v97 == 1)
      {
        v113 = v192;
        sub_100016E2C(v103, v192, &unk_10094BB80);
        if ((*v112)(v113, 1, v109) == 1)
        {
          sub_10000CFBC(v113, &unk_10094BB80);
          v114 = 0;
        }

        else
        {
          v114 = sub_1007602EC();
          (*(v110 + 8))(v113, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100286F40(v114, v218);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v124 = qword_10099E078;
      }

      else
      {
        v117 = v193;
        sub_100016E2C(v103, v193, &unk_10094BB80);
        if ((*v112)(v117, 1, v109) == 1)
        {
          sub_10000CFBC(v117, &unk_10094BB80);
          v118 = 0;
        }

        else
        {
          v118 = sub_1007602EC();
          (*(v110 + 8))(v117, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100286F40(v118, v218);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v124 = qword_10099E048;
      }

      v125 = sub_10000A61C(v122, v124);
      sub_10062B944(v125, v102, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v126 = 0;
      v127 = qword_10099DF88;
      v128 = v123;
    }

    else
    {
      if (v97 == 1)
      {
        v115 = v190;
        sub_100016E2C(v103, v190, &unk_10094BB80);
        if ((*(v110 + 48))(v115, 1, v109) == 1)
        {
          sub_10000CFBC(v115, &unk_10094BB80);
          v116 = 0;
        }

        else
        {
          v116 = sub_1007602EC();
          (*(v110 + 8))(v115, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_100286F40(v116, v218);

        if (qword_10093FC90 != -1)
        {
          swift_once();
        }

        v126 = 1;
        v127 = qword_10099E060;
      }

      else
      {
        v119 = (v110 + 48);
        if (v200)
        {
          v120 = v187;
          sub_100016E2C(v103, v187, &unk_10094BB80);
          if ((*v119)(v120, 1, v109) == 1)
          {
            sub_10000CFBC(v120, &unk_10094BB80);
            v121 = 0;
          }

          else
          {
            v121 = sub_1007602EC();
            (*(v110 + 8))(v120, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_100286F48(v121, v218);

          if (qword_10093FC80 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_10099E030;
        }

        else
        {
          v144 = v185;
          sub_100016E2C(v103, v185, &unk_10094BB80);
          if ((*v119)(v144, 1, v109) == 1)
          {
            sub_10000CFBC(v144, &unk_10094BB80);
            v145 = 0;
          }

          else
          {
            v145 = sub_1007602EC();
            (*(v110 + 8))(v144, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_100286F40(v145, v218);

          if (qword_10093FC78 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_10099E018;
        }
      }

      v128 = v102;
    }

    LODWORD(v225) = v100 != 0;
    v166 = sub_10000A61C(v122, v127);
    sub_10062B944(v166, v128, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v212 + 56))(v123, v126, 1, v122);
    v167 = v218;
    v168 = v202;
    sub_10062B944(v218, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
    v169 = v203;
    sub_10062B944(v102, v203, type metadata accessor for TitleHeaderView.TextConfiguration);
    v170 = v102;
    v171 = v205;
    sub_100016E2C(v123, v205, &qword_100949718);
    v172 = v219;
    sub_100016E2C(v219, v220, &qword_100949710);
    v174 = v214;
    v173 = v215;
    (*(v214 + 104))(v221, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
    sub_1000325F0();
    v175 = sub_100770CDC();

    sub_10000CFBC(v172, &qword_100949710);
    sub_10000CFBC(v123, &qword_100949718);
    sub_10011BAB4(v170);
    sub_10011BAB4(v167);
    sub_10000CFBC(v217, &unk_10094BB80);
    v176 = v216;
    v177 = *(v216 + 32);
    v178 = v168;
    v161 = v206;
    sub_10011BB10(v178, v206, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v169, v161 + v176[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B0E8(v171, v161 + v176[6]);
    *(v161 + v176[7]) = 0;
    *(v161 + v177) = 0;
    *(v161 + v176[9]) = v225;
    *(v161 + v176[14]) = 0x4030000000000000;
    *(v161 + v176[12]) = 0;
    *(v161 + v176[13]) = v175;
    v179 = v220;
    (*(v174 + 32))(v161 + v176[11], v221, v173);
    v181 = v226;
    v180 = v227;
    if ((*(v226 + 6))(v179, 1, v227) == 1)
    {
      sub_10000CFBC(v179, &qword_100949710);
      if (v184)
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v181 + 13))(v161 + v176[10], *v182, v180);
    }

    else
    {
      (*(v181 + 4))(v161 + v176[10], v179, v180);
    }

    return sub_10011BB10(v161, v228, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v227) = v98;
  if (v229)
  {

    v105 = sub_10076B77C();

    v106 = v194;
    v107 = v207;
    if (v105)
    {
      sub_10076035C();

      v108 = 0;
    }

    else
    {
      v108 = 1;
    }
  }

  else
  {
    v108 = 1;
    v106 = v194;
    v107 = v207;
  }

  v129 = sub_10076034C();
  v130 = *(v129 - 8);
  (*(v130 + 56))(v107, v108, 1, v129);
  v131 = sub_100763BAC();
  v225 = *(v131 - 1);
  v226 = v131;
  (v225[7])(v209, 1, 1);
  v132 = (v130 + 48);
  if (v200)
  {
    if (v100)
    {
      v133 = v191;
      sub_100016E2C(v107, v191, &unk_10094BB80);
      if ((*v132)(v133, 1, v129) == 1)
      {
        sub_10000CFBC(v133, &unk_10094BB80);
        v134 = 0;
      }

      else
      {
        v134 = sub_1007602EC();
        (*(v130 + 8))(v133, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_100286F40(v134, v208);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v141 = qword_10099E000;
LABEL_68:
      v146 = sub_10000A61C(v139, v141);
      sub_10062B944(v146, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v147 = 0;
      v148 = qword_10099DF88;
      v149 = v140;
      goto LABEL_84;
    }

    v137 = v188;
    sub_100016E2C(v107, v188, &unk_10094BB80);
    if ((*v132)(v137, 1, v129) == 1)
    {
      sub_10000CFBC(v137, &unk_10094BB80);
      v138 = 0;
    }

    else
    {
      v138 = sub_1007602EC();
      (*(v130 + 8))(v137, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_100286F40(v138, v208);

    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_10099DFB8;
  }

  else
  {
    if (v100)
    {
      v135 = v189;
      sub_100016E2C(v107, v189, &unk_10094BB80);
      if ((*v132)(v135, 1, v129) == 1)
      {
        sub_10000CFBC(v135, &unk_10094BB80);
        v136 = 0;
      }

      else
      {
        v136 = sub_1007602EC();
        (*(v130 + 8))(v135, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_100286F40(v136, v208);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v141 = qword_10099DFE8;
      goto LABEL_68;
    }

    v142 = v186;
    sub_100016E2C(v107, v186, &unk_10094BB80);
    if ((*v132)(v142, 1, v129) == 1)
    {
      sub_10000CFBC(v142, &unk_10094BB80);
      v143 = 0;
    }

    else
    {
      v143 = sub_1007602EC();
      (*(v130 + 8))(v142, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_100286F40(v143, v208);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_10099DFA0;
  }

  v149 = v106;
LABEL_84:
  LODWORD(v224) = v100 != 0;
  v150 = sub_10000A61C(v139, v148);
  sub_10062B944(v150, v149, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v212 + 56))(v140, v147, 1, v139);
  v151 = v208;
  v152 = v195;
  sub_10062B944(v208, v195, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v196;
  sub_10062B944(v106, v196, type metadata accessor for TitleHeaderView.TextConfiguration);
  v154 = v198;
  sub_100016E2C(v140, v198, &qword_100949718);
  v155 = v209;
  sub_100016E2C(v209, v210, &qword_100949710);
  v156 = v214;
  v157 = v215;
  (*(v214 + 104))(v211, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
  sub_1000325F0();
  v223 = sub_100770CDC();

  sub_10000CFBC(v155, &qword_100949710);
  sub_10000CFBC(v140, &qword_100949718);
  sub_10011BAB4(v106);
  sub_10011BAB4(v151);
  sub_10000CFBC(v207, &unk_10094BB80);
  v158 = v216;
  v159 = *(v216 + 32);
  v160 = v152;
  v161 = v199;
  sub_10011BB10(v160, v199, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v153, v161 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v154, v161 + v158[6]);
  *(v161 + v158[7]) = v227 & 1;
  *(v161 + v159) = 0;
  *(v161 + v158[9]) = v224;
  *(v161 + v158[14]) = 0x4030000000000000;
  *(v161 + v158[12]) = 0;
  *(v161 + v158[13]) = v223;
  v162 = v210;
  (*(v156 + 32))(v161 + v158[11], v211, v157);
  v164 = v225;
  v163 = v226;
  if ((v225[6])(v162, 1, v226) == 1)
  {
    sub_10000CFBC(v162, &qword_100949710);
    if (v184)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v164[13])(v161 + v158[10], *v165, v163);
  }

  else
  {
    (v164[4])(v161 + v158[10], v162, v163);
  }

  return sub_10011BB10(v161, v228, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_10062A5C8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10062A620(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25[0] = a2;
  v25[1] = a6;
  v10 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_10076B5BC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_10062BC00(a4, a5);
  v18 = a1;
  sub_100761A7C();
  v19 = sub_10041329C();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      sub_100761A7C();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25[0], v19, v21);
    sub_10000CFBC(v12, &unk_1009568A0);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10062A84C(uint64_t a1, void *a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v68 = a2;
  v9 = sub_10000A5D4(&qword_100949728);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = sub_1007621EC();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v72 = &v61 - v17;
  v21 = __chkstk_darwin(v18);
  v71 = &v61 - v22;
  if (a1 >= 1)
  {
    v65 = v20;
    v66 = v19;
    a3(0, v21);
    sub_10062BC00(a4, a5);
    if (sub_100761A9C() >= 1)
    {
      v23 = v71;
      sub_100761A6C();
      v24 = v72;
      sub_100761A6C();
      v25 = v23;
      v26 = *(v9 + 48);
      v28 = v69;
      v27 = v70;
      v29 = v69[2];
      v29(v70, v25, v11);
      v67 = v26;
      v29((v27 + v26), v24, v11);
      v30 = v28[11];
      v31 = v30(v27, v11);
      if (v31 == enum case for ShelfBackground.color(_:))
      {
        v32 = v31;
        v33 = v66;
        v29(v66, v27, v11);
        v62 = v28[12];
        v62(v33, v11);
        v63 = *v33;
        v61 = sub_10000A5D4(&unk_100950670);
        v64 = *(v61 + 48);
        if (v30(v27 + v67, v11) == v32)
        {
          v34 = v65;
          v29(v65, &v70[v67], v11);
          v62(v34, v11);
          v35 = *v34;
          v62 = *(v61 + 48);
          v36 = v68;
          v37 = [v68 traitCollection];
          v38 = v63;
          v39 = [v63 resolvedColorWithTraitCollection:v37];

          v40 = [v36 traitCollection];
          v41 = [v35 resolvedColorWithTraitCollection:v40];

          sub_1000325F0();
          LOBYTE(v40) = sub_100770EEC();

          v42 = v67;
          if ((v40 & 1) == 0)
          {
            v57 = v69[1];
            v57(v72, v11);
            v57(v71, v11);
            v58 = sub_1007659CC();
            v59 = *(*(v58 - 8) + 8);
            v59(v62 + v34, v58);
            v59(v66 + v64, v58);
            v60 = v70;
            v57(&v70[v42], v11);
            v57(v60, v11);
            return 2;
          }

          v43 = sub_1007659CC();
          v44 = *(*(v43 - 8) + 8);
          v44(v62 + v34, v43);
          v44(v66 + v64, v43);
        }

        else
        {
          v45 = sub_1007659CC();
          (*(*(v45 - 8) + 8))(v33 + v64, v45);
        }

        v28 = v69;
        v27 = v70;
      }

      v46 = enum case for ShelfBackground.none(_:);
      v47 = v28[13];
      v47(v13, enum case for ShelfBackground.none(_:), v11);
      v48 = sub_10062BC00(&qword_100949730, &type metadata accessor for ShelfBackground);
      v49 = sub_10076FF1C();
      v50 = v28[1];
      v50(v13, v11);
      if ((v49 & 1) == 0)
      {
        v47(v13, v46, v11);
        v51 = sub_1007621DC();
        v50(v13, v11);
        if (v51)
        {
          v50(v72, v11);
          v50(v71, v11);
LABEL_14:
          v50((v27 + v67), v11);
          v50(v27, v11);
          return 2;
        }
      }

      v69 = v48;
      v47(v13, v46, v11);
      v52 = v71;
      v53 = sub_1007621DC();
      v50(v13, v11);
      if (v53)
      {
        v47(v13, v46, v11);
        v54 = v72;
        v55 = sub_10076FF1C();
        v50(v13, v11);
        v50(v54, v11);
        v50(v52, v11);
        if ((v55 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v50(v72, v11);
        v50(v52, v11);
      }

      sub_10000CFBC(v27, &qword_100949728);
    }
  }

  return 0;
}

uint64_t sub_10062B020@<X0>(uint64_t a1@<X8>)
{
  v52 = sub_10075E11C();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076B5BC();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v50 = &v33 - v13;
  v14 = sub_10076573C();
  v42 = sub_10062BC00(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  v43 = v14;
  result = sub_100761A9C();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v47 = v11;
      v36 = a1;
      v16 = 0;
      v46 = enum case for Shelf.ContentType.privacyType(_:);
      v45 = (v5 + 104);
      v48 = (v5 + 8);
      v39 = (v5 + 32);
      v38 = (v5 + 88);
      v37 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v34 = enum case for Shelf.ContentType.informationRibbon(_:);
      v35 = v2;
      v17 = (v2 + 8);
      v49 = result;
      v44 = v4;
      while (1)
      {
        if (sub_100763EFC())
        {
          sub_100763F0C();
          v18 = v47;
          (*v45)(v47, v46, v51);
          sub_10062BC00(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
          sub_10077018C();
          sub_10077018C();
          if (v53 == v55 && v54 == v56)
          {
            v19 = 1;
          }

          else
          {
            v19 = sub_10077167C();
          }

          v20 = *v48;
          v21 = v18;
          v22 = v51;
          (*v48)(v21, v51);
          v20(v50, v22);

          v23 = v44;
          if ((v19 & 1) != 0 && v16 < sub_100761A9C() && (sub_100761A4C() & 1) == 0)
          {
            v33 = sub_100761A8C();
            v24 = v40;
            sub_100761A7C();
            v25 = v41;
            v26 = v24;
            v27 = v51;
            (*v39)(v41, v26, v51);
            v28 = (*v38)(v25, v27);
            v29 = 1;
            if (v28 == v37 || v28 == v34)
            {
              break;
            }

            result = (v20)(v41, v51);
            if (v33 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v33;
            if (v33)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v16 == v49)
        {
          v32 = 1;
          a1 = v36;
          v2 = v35;
          return (*(v2 + 56))(a1, v32, 1, v52);
        }
      }

      v30 = 0;
      while (1)
      {
        sub_10075E08C();
        sub_100763F1C();
        sub_10000A5D4(&qword_1009575A0);
        sub_10076016C();
        if (swift_dynamicCast())
        {
          v31 = sub_10076011C();

          if (v31)
          {
            break;
          }
        }

        (*v17)(v23, v52);
        if (v29 == ++v30)
        {
          goto LABEL_4;
        }
      }

      v2 = v35;
      a1 = v36;
      (*(v35 + 32))(v36, v23, v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    return (*(v2 + 56))(a1, v32, 1, v52);
  }

  return result;
}

uint64_t sub_10062B608@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100763F0C();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_10062BC00(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = sub_10077167C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_100628BE8(a1, v18, &type metadata accessor for GenericPagePresenter, &qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v19);
    }
  }

  if (qword_1009408A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000A61C(v15, qword_1009A0860);
  return sub_10062B944(v16, v19, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDetailDataSource()
{
  result = qword_100961A78;
  if (!qword_100961A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10062B944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10062BA3C(uint64_t a1, void (*a2)(void, __n128), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  a2(0, v12);
  sub_10062BC00(a3, a4);
  sub_100761A7C();
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

uint64_t sub_10062BC00(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10062BC48(uint64_t a1, __int128 *a2)
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

uint64_t sub_10062BC74(uint64_t a1, int a2)
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

uint64_t sub_10062BCBC(uint64_t result, int a2, int a3)
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

uint64_t sub_10062BD28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10062BD70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10062BDE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10062BDF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10062BE40(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10062BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v54 = sub_1007653CC();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1007653EC();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076540C();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076541C();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10077164C();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  result = sub_1007653DC();
  v60 = v2;
  v14 = *(v2 + 120);
  v46 = *(v14 + 16);
  if (v46)
  {
    v15 = 0;
    v16 = v14 + 32;
    v57 = (v11 + 8);
    v44 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v43 = (v7 + 104);
    v42 = (v5 + 104);
    v41 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v40 = v56 + 8;
    v39 = (v5 + 8);
    v38 = (v7 + 8);
    v37 = (v9 + 8);
    v36 = xmmword_100783DD0;
    v45 = v14;
    v17 = v49;
    while (v15 < *(v14 + 16))
    {
      *v65 = v15;
      result = sub_10062CB18(v16, &v65[8]);
      if (*&v66[8])
      {
        v26 = *v65;
        *v65 = *&v65[8];
        *&v65[16] = *v66;
        *v66 = *&v66[8];
        *&v66[16] = *&v66[24];
        *&v66[32] = *&v66[40];
        *&v66[48] = v67;
        v27 = 24;
        if (!v26)
        {
          v27 = 64;
        }

        v28 = 40;
        if (v26)
        {
          v28 = 0;
        }

        sub_10000CF78((v60 + v28), *(v60 + v27));
        v29 = v58;
        sub_1000FF02C();
        sub_10076D40C();
        v31 = v30;
        v32 = *v57;
        (*v57)(v29, v59);
        v33 = 0;
        if (v26 == *(v14 + 16) - 1)
        {
          sub_10000CF78((v60 + 80), *(v60 + 104));
          v34 = v58;
          sub_1000FF02C();
          sub_10076D40C();
          v33 = v35;
          v32(v34, v59);
        }

        ++v15;
        v18 = v50;
        (*v43)(v17, v44, v50);
        v19 = v51;
        v20 = v52;
        (*v42)(v51, v41, v52);
        v64[3] = &type metadata for CGFloat;
        v64[4] = &protocol witness table for CGFloat;
        v64[0] = v31;
        v63[3] = &type metadata for CGFloat;
        v63[4] = &protocol witness table for CGFloat;
        v63[0] = v33;
        sub_10000A5D4(&unk_100959500);
        v21 = v56;
        v22 = swift_allocObject();
        *(v22 + 16) = v36;
        sub_10076539C();
        v62 = v22;
        sub_10061432C();
        sub_10000A5D4(&qword_100959510);
        sub_1004ACA24();
        v23 = v53;
        v24 = v54;
        sub_1007712CC();
        v25 = v47;
        sub_1007653FC();
        (*(v21 + 8))(v23, v24);
        (*v39)(v19, v20);
        (*v38)(v17, v18);
        sub_1000F00E0(v63);
        sub_10000CD74(v64);
        sub_10076542C();
        (*v37)(v25, v48);
        result = sub_10062CBC0(v65);
        v16 += 80;
        v14 = v45;
        if (v46 != v15)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10062C63C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076543C();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10062BEA4(a1, v16);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v30 = v16;
  sub_10076538C();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_10062CB18(v19, v39);
      sub_10062CB50(&v41, &v36);
      if (v37)
      {
        sub_10003F19C(&v36, v38);
        sub_10000CF78(v39, v40);
        sub_10076D22C();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_10000CF78(v38, v38[3]);
        sub_1000FF02C();
        sub_10076D40C();
        (*(v12 + 8))(v14, v11);
        v42.origin.x = v21;
        v42.origin.y = v23;
        v42.size.width = v25;
        v42.size.height = v27;
        CGRectGetWidth(v42);
        v43.origin.x = v21;
        v43.origin.y = v23;
        v43.size.width = v25;
        v43.size.height = v27;
        CGRectGetHeight(v43);
        v44.origin.x = v33;
        v44.origin.y = v34;
        v44.size.width = v35;
        v44.size.height = a5;
        CGRectGetMidX(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetMinY(v45);
        sub_10000CF78(v39, v40);
        sub_10076D23C();
        sub_10062CBC0(v39);
        sub_10000CD74(v38);
      }

      else
      {
        sub_10062CBC0(v39);
        sub_1000F00E0(&v36);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v31 + 8))(v30, v32);
}

void sub_10062C9E0(uint64_t a1)
{
  v3 = sub_10076543C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v1 + 120) + 16))
  {
    sub_10062BEA4(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_10076537C();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10062CB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062CBF0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2738);
  sub_10000A61C(v4, qword_1009A2738);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10062D2C4(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6)
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a1;
  sub_10062E7B4(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

id sub_10062D504()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = sub_1007609FC();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v10 = qword_1009A31D0;
  v11 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  sub_100760A1C();
  v13 = sub_100760A5C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10000CFBC(v4, &unk_100954460);
    v15 = sub_10076B8EC();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_10062DD14(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  v71 = xmmword_100784500;
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_100941358;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1009A2708;
  v22 = sub_100016F40(0, &qword_100942F10);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100016F40(0, &qword_100942F00);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = sub_1007609AC();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_100941350;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1009A2700;
    *(v33 + 40) = qword_1009A2700;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_1000FC5F4(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = sub_10076FE3C().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = sub_10076FF9C();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10002564C();
    v46 = sub_10077121C();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = sub_10077121C();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10077121C();

    v52 = sub_10076FF6C();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = sub_10077121C();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = sub_10077121C();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    sub_10077121C();

    v59 = sub_10076FF6C();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_10062DD14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_100760A5C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10000A5D4(&unk_100954470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_1007622DC(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_10062E000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10062E0B4()
{
  result = sub_10076B8FC();
  if (result)
  {
    sub_10076BE2C();
    v2 = v1;

    if (v2)
    {
      v3 = qword_100941370;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720];
      v5 = sub_10076045C();

      if (qword_100941368 != -1)
      {
        swift_once();
      }

      v6 = [v5 imageWithTintColor:qword_1009A2718];
      swift_bridgeObjectRelease_n();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10062E1F8(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    sub_10075E09C();
    sub_10076597C();
    v14 = sub_10062D504();
    if (v14)
    {
      v15 = v14;
      v31 = v13;
      v16 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
      v17 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits);
      v18 = *&v12[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
      v32 = v8;
      v19 = v18;
      [v17 pageMarginInsets];
      [v19 setLayoutMargins:?];

      v20 = *&v12[v16];
      *(v20 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator) = 1;
      [*(v20 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView) setHidden:0];
      v21 = *&v12[v16];
      v22 = v15;
      v23 = v21;
      v24 = sub_10062E0B4();
      [*&v23[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] setAttributedText:v22];
      v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
      *&v23[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = v24;
      v26 = v24;

      sub_1006911EC(v27, v28, v29);
      [v23 setNeedsLayout];

      v30 = v32;

      sub_10076B8AC();

      if ((*(v30 + 48))(v6, 1, v7) == 1)
      {

        return sub_10000CFBC(v6, &qword_1009492E0);
      }

      else
      {
        (*(v30 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_1007660EC();
        }

        else
        {
        }

        return (*(v30 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10062E5A4()
{
  v1 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_10076F7FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E09C();
  result = sub_10076595C();
  if (v8 < result)
  {
    sub_10075E09C();
    sub_10076597C();
    sub_10076B8AC();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10000CFBC(v3, &qword_1009492E0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_10076610C();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_10062E7B4(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_10075E09C(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_10075E0AC();
    sub_10075E08C();
    isa = sub_10075E02C().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_10062E93C(void *a1)
{
  sub_10075E09C();
  sub_10076597C();
  v3 = sub_10062D504();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_100692240(v3, v6);
  sub_10076DDDC();
  sub_10076D2AC();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10062EA4C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10062EAB8(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  sub_1000FEDC4();
  v5 = a1;
  sub_10000A5D4(&qword_100961EC0);
  if (swift_dynamicCast())
  {
    sub_100012498(&v16, v21);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1004FD078;
    *(v8 + 24) = v7;
    v18 = sub_1000349FC;
    v19 = v8;
    *&v16 = _NSConcreteStackBlock;
    *(&v16 + 1) = 1107296256;
    *&v17 = sub_1001C5148;
    *(&v17 + 1) = &unk_10089DB60;
    v9 = _Block_copy(&v16);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v13 = v22;
        v14 = v23;
        sub_10000CF78(v21, v22);
        v15 = (*(v14 + 8))(v13, v14);
        sub_1004F3FD8(v15, a3);
      }

      sub_10000CD74(v21);
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_10062ECF8(&v16);
  }

  return result;
}

uint64_t sub_10062ECF8(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100961EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10062ED60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10062EDA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10062EDC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000A5D4(&qword_100961ED0);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000A5D4(&unk_100946720);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_10076341C();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_10076338C();

      swift_getKeyPath();
      v29 = v46;
      sub_10076F49C();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_10022DD04();
      sub_10077018C();
      sub_10077018C();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_10077167C();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_10076336C();
    v24 = v33;
    sub_10076F87C();
    sub_1004492B8();
    v25 = v34;
    sub_10076F83C();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_10062F33C()
{
  v0 = sub_1007688CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076432C();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
    v6 = &unk_1009428B8;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView();
    v6 = &unk_1009428B0;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_1009428A8;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView();
    v6 = &unk_1009428C0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView();
    v6 = &unk_100942898;
    v7 = type metadata accessor for MetadataRibbonTagView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView();
    v6 = &unk_1009428A0;
    v7 = type metadata accessor for MetadataRibbonBarView;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView();
    v6 = &unk_100942888;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
  }

  sub_10062F660(v6, v7);
  return v5;
}

uint64_t sub_10062F660(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10062F700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = sub_10000A5D4(&unk_100958FE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - v6;
  v8 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v8 - 8);
  v10 = &v15[-1] - v9;
  if (v3)
  {

    v3(v11);

    sub_1000167E0(v3);
  }

  else if (v2)
  {
    v12 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {

      sub_1000527AC(v10);
    }

    else
    {
      v15[3] = sub_10076B90C();
      v15[4] = sub_100630C68(&qword_10095D660, &type metadata accessor for Action);
      v15[0] = v2;
      (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

      sub_10076F6CC();

      (*(v5 + 8))(v7, v4);
      sub_10000CD74(v15);
      (*(v13 + 8))(v10, v12);
    }
  }
}

void sub_10062F9DC(void *a1, char *a2)
{
  v116 = a2;
  v111 = sub_10076048C();
  v94 = *(v111 - 1);
  __chkstk_darwin(v111);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10075F65C();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100765F6C();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100766EDC();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v105 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v9 - 8);
  v103 = &v93 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v102 = &v93 - v12;
  v96 = sub_10076C15C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076253C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v113 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v114 = &v93 - v18;
  __chkstk_darwin(v19);
  v21 = &v93 - v20;
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  sub_10000A5D4(&qword_100942C70);
  v110 = sub_10076FCEC();
  v115 = a1;
  sub_10075FA6C();
  v112 = *(v15 + 104);
  v112(v21, enum case for AlertActionStyle.normal(_:), v14);
  sub_100630C68(&qword_100961ED8, &type metadata accessor for AlertActionStyle);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v122)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_10077167C();
  }

  v26 = *(v15 + 8);
  v26(v21, v14);
  v26(v24, v14);

  if ((v25 & 1) == 0)
  {
    v34 = v114;
    sub_10075FA6C();
    v35 = v113;
    v112(v113, enum case for AlertActionStyle.toast(_:), v14);
    sub_10077018C();
    sub_10077018C();
    if (aBlock == v122)
    {
      v26(v35, v14);
      v26(v34, v14);
    }

    else
    {
      v36 = sub_10077167C();
      v26(v35, v14);
      v26(v34, v14);

      if ((v36 & 1) == 0)
      {
        return;
      }
    }

    v37 = sub_10076B8FC();
    if (v37)
    {
      v38 = v37;
      if (sub_10076BDDC())
      {
        if (sub_10076BE0C())
        {
          v39 = sub_10076044C();
          goto LABEL_42;
        }

        if (sub_10076BDFC())
        {
          v39 = sub_1005A6008(v38, 0);
LABEL_42:
          v74 = v39;

          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v75 = v94;
    v76 = v93;
    v77 = v111;
    (*(v94 + 104))(v93, enum case for SystemImage.exclamationmarkCircle(_:), v111);
    v74 = sub_10076046C();
    (*(v75 + 8))(v76, v77);
LABEL_46:
    v114 = v74;
    v78 = [v74 imageWithRenderingMode:2];
    sub_10076B8EC();
    v80 = v79;
    sub_10075FA8C();
    v82 = v81;
    sub_10075FA5C();
    v84 = v83;
    if (v80)
    {
      v85 = v78;
      v86 = sub_10076FF6C();

      if (v82)
      {
LABEL_48:
        v87 = sub_10076FF6C();

LABEL_51:
        v89 = [objc_allocWithZone(ASToastViewController) initWithTitle:v86 message:v87 duration:v78 image:v84];

        v120 = 0;
        aBlock = 0u;
        v119 = 0u;
        (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
        v90 = sub_10075DB7C();
        (*(*(v90 - 8) + 56))(v102, 1, 1, v90);
        v91 = sub_10076096C();
        (*(*(v91 - 8) + 56))(v103, 1, 1, v91);
        v123 = sub_100016F40(0, &qword_100961EE0);
        *&v122 = v89;
        v115 = v89;
        sub_10076F4DC();
        (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.never(_:), v101);
        (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
        (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
        sub_10076FA2C();
        sub_10075F63C();
        swift_allocObject();
        v92 = sub_10075F5EC();
        sub_100563FF8(v92, 1, v116);
        sub_10076FC4C();

        return;
      }
    }

    else
    {
      v88 = v78;
      v86 = 0;
      if (v82)
      {
        goto LABEL_48;
      }
    }

    v87 = 0;
    goto LABEL_51;
  }

  sub_10076B8EC();
  v28 = v27;
  sub_10075FA8C();
  v30 = v29;
  if (v28)
  {
    v31 = sub_10076FF6C();

    v32 = v116;
    if (v30)
    {
LABEL_7:
      v33 = sub_10076FF6C();

      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v32 = v116;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
LABEL_17:
  v40 = [objc_opt_self() alertControllerWithTitle:v31 message:v33 preferredStyle:1];

  v41 = sub_10075FA4C();
  if ((sub_10075FA3C() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v41 + 16))
  {
    v43._countAndFlagsBits = 0x4F2E6E6F69746341;
    v43._object = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  sub_10075FA2C();
  if (!v42)
  {
    v43._countAndFlagsBits = 0x432E6E6F69746341;
    v43._object = 0xED00006C65636E61;
LABEL_22:
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_1007622EC(v43, v124);
  }

  v44 = sub_10076FF6C();

  v45 = [objc_opt_self() actionWithTitle:v44 style:1 handler:0];

  [v40 addAction:v45];
  [v40 setPreferredAction:v45];

LABEL_24:
  v114 = *(v41 + 16);
  if (v114)
  {
    v46 = 0;
    v111 = &v119;
    v47 = (v41 + 64);
    v112 = v41;
    v113 = v40;
    while (v46 < *(v41 + 16))
    {
      v51 = *(v47 - 4);
      v52 = *(v47 - 3);
      v54 = *(v47 - 2);
      v53 = *(v47 - 1);
      v55 = *v47;
      if (v53)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = sub_100098284;
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }

      sub_10001CE50(v53);
      v58 = v46 != sub_10075FA1C();
      if ((v59 | v58))
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      v61 = swift_allocObject();
      v61[2] = v51;
      v61[3] = v52;
      v61[4] = v54;
      v61[5] = v57;
      v62 = v116;
      v61[6] = v56;
      v61[7] = v62;
      if (v52)
      {

        sub_10001CE50(v57);

        v48 = sub_10076FF6C();
      }

      else
      {

        sub_10001CE50(v57);

        v48 = 0;
      }

      ++v46;
      v120 = sub_100630BE4;
      v121 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v119 = sub_1006C1A98;
      *(&v119 + 1) = &unk_10089DBD0;
      v49 = _Block_copy(&aBlock);

      v50 = [objc_opt_self() actionWithTitle:v48 style:v60 handler:v49];
      _Block_release(v49);

      v40 = v113;
      [v113 addAction:v50];

      sub_1000167E0(v57);
      v47 += 5;
      v32 = v116;
      v41 = v112;
      if (v114 == v46)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v63 = sub_10075FA9C();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = type metadata accessor for AlertActionHeaderViewController();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView] = 0;
      v69 = &v68[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageName];
      *v69 = v65;
      *(v69 + 1) = v66;
      v117.receiver = v68;
      v117.super_class = v67;
      v70 = objc_msgSendSuper2(&v117, "initWithNibName:bundle:", 0, 0);
      [v40 _setHeaderContentViewController:v70];
    }

    v120 = 0;
    aBlock = 0u;
    v119 = 0u;
    (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
    v71 = sub_10075DB7C();
    (*(*(v71 - 8) + 56))(v102, 1, 1, v71);
    v72 = sub_10076096C();
    (*(*(v72 - 8) + 56))(v103, 1, 1, v72);
    v123 = sub_100016F40(0, &qword_100957FE0);
    *&v122 = v40;
    v116 = v40;
    sub_10076F4DC();
    (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
    (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.infer(_:), v101);
    (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v73 = sub_10075F5EC();
    sub_100563FF8(v73, 1, v32);
    sub_10076FC4C();
  }
}

uint64_t sub_100630B8C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100630BE4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3[0] = *(v1 + 16);
  v3[1] = v2;
  v4 = *(v1 + 48);
  sub_10062F700(a1, v3);
}

uint64_t sub_100630C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100630C30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100630C68(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100630CB4()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076469C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_10076C24C();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  sub_1007632FC();
  v11 = sub_10076461C();
  v8(v7, v4);
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100630EC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076C36C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v70 - v8;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v70 - v14;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  sub_100760E0C();
  sub_100631878();
  result = sub_10076332C();
  if (!aBlock[0])
  {
    return result;
  }

  v75 = v9;
  v76 = v5;
  v77 = v4;

  v19 = sub_10075FF6C();
  v20 = [v19 length];

  v81 = v10;
  if (v20 < 1)
  {
    [*&v2[qword_10094C5D8] setText:0];
    v2[qword_10099D798] = 0;
    v30 = *&v2[qword_10094C5C8];
    [v30 setHidden:1];
    goto LABEL_7;
  }

  v71 = v17;
  v73 = v11;
  v21 = sub_10075FF6C();
  swift_getKeyPath();
  v72 = a1;
  sub_10076338C();

  v22 = aBlock[6];
  v23 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v21];
  v24 = [v21 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000275EC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_10089DC70;
  v27 = _Block_copy(aBlock);
  v28 = v22;
  v29 = v23;

  [v21 enumerateAttributesInRange:0 options:v24 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = *&v2[qword_10094C5D8];
  [v25 setAttributedText:v29];
  if (qword_10093F9A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v25 setTextColor:qword_10099D780];
  v2[qword_10099D798] = 1;
  v30 = *&v2[qword_10094C5C8];
  [v30 setHidden:0];

  v10 = v81;
  v11 = v73;
  v17 = v71;
LABEL_7:
  v31 = *&v2[qword_10094C5D0];
  sub_10075FF7C();
  if (v32)
  {
    v33 = sub_10076FF6C();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v34 = sub_10075FF4C();
  v2[qword_10099D790] = (v34 & 1) == 0;
  sub_100027A78(v34);
  if ((sub_10075FF4C() & 1) == 0 && v2[qword_10099D798] != 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
  }

  sub_1007638EC();
  v2[qword_10099D7A8] = sub_10075FF4C() & 1;
  [v2 setNeedsLayout];
  v35 = sub_10075FF4C();
  v74 = v2;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    sub_100016F40(0, &qword_100942F10);
    v36 = sub_100770D5C();
  }

  [v30 setBackgroundColor:v36];

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v73 = v37;
  v38 = *(v11 + 8);
  v38(v17, v10);
  swift_getKeyPath();
  v39 = v78;
  sub_10076338C();

  sub_10076C26C();
  v72 = v40;
  v38(v39, v10);
  v42 = v76;
  v41 = v77;
  v43 = v75;
  (*(v76 + 104))(v75, enum case for PageGrid.Direction.vertical(_:), v77);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v38(v17, v10);
  v44 = v38;
  (*(v42 + 16))(v79, v43, v41);
  sub_1005AC334(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v49 = v80;
  sub_10076C33C();
  (*(v42 + 8))(v43, v41);
  sub_10076C2EC();
  v50 = v74;
  v51 = &v74[qword_10099D7A0];
  *v51 = v52;
  *(v51 + 1) = v53;
  *(v51 + 2) = v54;
  *(v51 + 3) = v55;
  [v50 setNeedsLayout];
  v56 = [v50 contentView];
  v57 = sub_10075FF4C();

  if ((v57 & 1) == 0)
  {
    sub_10076C2EC();
    top = v58;
    left = v59;
    bottom = v60;
    right = v61;
  }

  [v56 setLayoutMargins:{top, left, bottom, right}];

  if (sub_100760DFC())
  {
    v62 = [v50 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v64 = v63;

    sub_10076BEFC();
    v66 = v65;
    sub_10076BEFC();
    v68 = v67;

    result = v44(v49, v81);
    v69 = &v50[qword_1009A3418];
    *v69 = v64;
    v69[1] = v64 * (v66 / v68);
  }

  else
  {
    v44(v49, v81);
  }

  return result;
}

unint64_t sub_100631878()
{
  result = qword_10095BE50;
  if (!qword_10095BE50)
  {
    sub_100760E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095BE50);
  }

  return result;
}

uint64_t sub_1006318D8()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100631930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100631948()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2750);
  sub_10000A61C(v4, qword_1009A2750);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1B58);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}