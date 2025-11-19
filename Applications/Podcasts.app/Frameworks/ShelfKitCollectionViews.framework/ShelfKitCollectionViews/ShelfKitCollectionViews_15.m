id sub_19E28C(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  [v1 allPlayedEpsWeight];
  if (v2 <= 0.0)
  {

    return 0;
  }

  sub_30D558(156);
  v8._countAndFlagsBits = 0x6C2065687420664FLL;
  v8._object = 0xEC00000020747361;
  sub_30C238(v8);
  result = [v1 allPlayedEpisodesCount];
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9._countAndFlagsBits = sub_30D6D8();
  sub_30C238(v9);

  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x800000000033E9D0;
  sub_30C238(v10);
  result = [v1 allPlayedEpisodesFromThisShowCount];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v11._countAndFlagsBits = sub_30D6D8();
  sub_30C238(v11);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  sub_30C238(v12);
  [v1 allPlayedEpisodesFromThisShowCount];
  if (v5 == 1.0)
  {
    v6._countAndFlagsBits = 0x2065646F73697065;
  }

  else
  {
    v6._countAndFlagsBits = 0x7365646F73697065;
  }

  if (v5 == 1.0)
  {
    v7 = 0xEA00000000007369;
  }

  else
  {
    v7 = 0xEC00000065726120;
  }

  v6._object = v7;
  sub_30C238(v6);

  v13._object = 0x800000000033EA00;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  sub_30C238(v13);
  [v1 allPlayedEpsPercent];
  v14._countAndFlagsBits = sub_30C4B8();
  sub_30C238(v14);

  v15._countAndFlagsBits = 0xD00000000000002ELL;
  v15._object = 0x800000000033EA20;
  sub_30C238(v15);
  [v1 allPlayedEpsWeight];
  v16._countAndFlagsBits = sub_30C4B8();
  sub_30C238(v16);

  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x800000000033EA50;
  sub_30C238(v17);
  [v1 allPlayedEpsPercent];
  [v1 allPlayedEpsWeight];
  v18._countAndFlagsBits = sub_30C4B8();
  sub_30C238(v18);

  return 0;
}

void *sub_19E5F0(void *result)
{
  if (result)
  {
    v1 = result;
    [v1 modifiedWeight];
    if (v2 <= 0.0)
    {
    }

    else
    {
      [v1 modifiedDateScore];
      [v1 modifiedWeight];
      sub_30D558(102);
      v3._countAndFlagsBits = 0xD00000000000002CLL;
      v3._object = 0x800000000033E960;
      sub_30C238(v3);
      [v1 modifiedDateScore];
      v4._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v4);

      v5._countAndFlagsBits = 0xD00000000000001BLL;
      v5._object = 0x800000000033E990;
      sub_30C238(v5);
      [v1 modifiedWeight];
      v6._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v6);

      v7._object = 0x800000000033E9B0;
      v7._countAndFlagsBits = 0xD000000000000019;
      sub_30C238(v7);
      v8._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v8);
    }

    return 0;
  }

  return result;
}

char *sub_19E7E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineColor;
  *&v4[v10] = [objc_opt_self() separatorColor];
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineView] = v11;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v12 setUserInteractionEnabled:0];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v12 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineView;
  [*&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineView] setBackgroundColor:*&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineColor]];
  [v12 addSubview:*&v12[v13]];

  return v12;
}

id sub_19EAC4()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 layoutMargins];
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v0 traitCollection];
  sub_3043A8();
  v20 = v19;

  v21 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13SeparatorView_lineView];
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v11;
  v27.origin.y = v13;
  v27.size.width = v15;
  v27.size.height = v17;
  v23 = CGRectGetMaxY(v27) - v20;
  v28.origin.x = v11;
  v28.origin.y = v13;
  v28.size.width = v15;
  v28.size.height = v17;
  return [v21 setFrame:{MinX, v23, CGRectGetWidth(v28), v20}];
}

id sub_19ECD8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SizeClassAutoMarginView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  result = [v0 bounds];
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth];
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth] = v3;
  if (v3 != v2)
  {
    sub_302BF8();
    sub_302C08();
    sub_30C6E8();
    return [v0 setLayoutMargins:?];
  }

  return result;
}

id sub_19EEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SizeClassAutoMarginView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_19F028()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SearchFieldHeaderView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchFieldHeaderView_contentView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = UIEdgeInsetsInsetRect_1(v3);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 sizeThatFits:{v7, v9}];
    v12 = v11;
    [v0 bounds];
    v14 = v13 - (v12 + 10.0);
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    [v2 setFrame:{0.0, v14, CGRectGetWidth(v16), v12}];
  }
}

id sub_19F174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchFieldHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id MiniPlayerHostViewController.__allocating_init(asPartOf:wrapping:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_playerHeight] = 0x4057400000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController] = a2;
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  return v5;
}

id MiniPlayerHostViewController.init(asPartOf:wrapping:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_playerHeight] = 0x4057400000000000;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  return v5;
}

Swift::Void __swiftcall MiniPlayerHostViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_19F3B4();
}

void sub_19F3B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v3 = [*&v0[v2] parentViewController];
  if (!v3 || (v4 = v3, sub_122394(), v5 = v0, v6 = sub_30D098(), v4, v5, (v6 & 1) == 0))
  {
    [v1 addChildViewController:*&v1[v2]];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [*&v1[v2] view];
      if (v9)
      {
        v10 = v9;
        [v8 insertSubview:v9 atIndex:0];

        v11 = [*&v1[v2] view];
        if (v11)
        {
          v12 = v11;
          [v11 setAutoresizingMask:18];

          v13 = [*&v1[v2] view];
          if (v13)
          {
            v14 = v13;
            v15 = [v1 view];
            if (v15)
            {
              v16 = v15;
              [v15 bounds];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;

              [v14 setFrame:{v18, v20, v22, v24}];
              [*&v1[v2] didMoveToParentViewController:v1];
              [*&v1[v2] setAdditionalSafeAreaInsets:{0.0, 0.0, *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_playerHeight], 0.0}];
              return;
            }

LABEL_14:
            __break(1u);
            return;
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

Swift::Void __swiftcall MiniPlayerHostViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v2 = [*&v0[v1] view];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame:{v7, v9, v11, v13}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MiniPlayerHostViewController.contentViewController.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_19F7C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_19F96C(v5);
}

void MiniPlayerHostViewController.contentViewController.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  sub_122394();
  v6 = a1;
  if (sub_30D098())
  {
    goto LABEL_9;
  }

  v7 = [v5 parentViewController];
  if (!v7 || (v8 = v7, v9 = v2, v10 = sub_30D098(), v9, v8, (v10 & 1) == 0))
  {
LABEL_8:
    sub_19F3B4();
LABEL_9:

    return;
  }

  [v5 willMoveToParentViewController:0];
  if (![v9 isViewLoaded])
  {
LABEL_7:
    [v5 removeFromParentViewController];
    goto LABEL_8;
  }

  v11 = [v5 view];
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];

    goto LABEL_7;
  }

  __break(1u);
}

void sub_19F96C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v5 = *&v2[v4];
  sub_122394();
  v6 = v5;
  v7 = sub_30D098();

  if ((v7 & 1) == 0)
  {
    v8 = [a1 parentViewController];
    if (v8)
    {
      v9 = v8;
      v10 = v2;
      v11 = sub_30D098();

      if (v11)
      {
        [a1 willMoveToParentViewController:0];
        if ([v10 isViewLoaded])
        {
          v12 = [a1 view];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          [v12 removeFromSuperview];
        }

        [a1 removeFromParentViewController];
      }
    }

    sub_19F3B4();
  }
}

void (*MiniPlayerHostViewController.contentViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_19FB44;
}

void sub_19FB44(id **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 3;
  v4 = *v5;
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = *&v6[v7];
  *&v6[v7] = *v5;
  sub_122394();
  v9 = v4;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    if ((sub_30D098() & 1) == 0)
    {
      v19 = [v8 parentViewController];
      if (v19)
      {
        v20 = v19;
        v21 = v3[4];
        v22 = sub_30D098();

        if (v22)
        {
          v23 = v3[4];
          [v8 willMoveToParentViewController:0];
          if ([v23 isViewLoaded])
          {
            v24 = [v8 view];
            if (!v24)
            {
              goto LABEL_24;
            }

            v25 = v24;
            [v24 removeFromSuperview];
          }

          [v8 removeFromParentViewController];
        }
      }

      sub_19F3B4();
    }

    goto LABEL_20;
  }

  v11 = v9;
  if ((sub_30D098() & 1) == 0)
  {
    v12 = [v8 parentViewController];
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = v12;
    v14 = v3[4];
    v15 = sub_30D098();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    v16 = v3[4];
    [v8 willMoveToParentViewController:0];
    if (![v16 isViewLoaded])
    {
LABEL_8:
      [v8 removeFromParentViewController];
LABEL_9:
      sub_19F3B4();
      goto LABEL_10;
    }

    v17 = [v8 view];
    if (v17)
    {
      v18 = v17;
      [v17 removeFromSuperview];

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

LABEL_10:

  v10 = *v5;
LABEL_20:

  free(v3);
}

void *MiniPlayerHostViewController.childForStatusBarStyle.getter()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_19FE84(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_19F96C(v4);
}

void (*sub_19FEF0(uint64_t **a1))(void *a1)
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
  v2[4] = MiniPlayerHostViewController.contentViewController.modify(v2);
  return sub_2E9BC;
}

id sub_19FF60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews28MiniPlayerHostViewController_contentViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t NavigationTab.init(contextPage:)(uint64_t a1)
{
  sub_302218();
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    return 6;
  }

  sub_1A0134(a1);
  return 19;
}

uint64_t sub_1A0134(uint64_t a1)
{
  v2 = sub_302218();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static TabConverter.translateNavigationTab(for:interface:)(unint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 <= 0x12)
    {
      if (((1 << a1) & 0x47F60) != 0)
      {
        v2 = a1;
LABEL_5:
        sub_BA538(a1);
        return v2;
      }

      if (a1 == 7)
      {
        return 17;
      }
    }

    v2 = a1;
    if ((sub_303078() & 1) == 0)
    {
      a1 = v2;
      goto LABEL_5;
    }
  }

  else if (a1 - 5 < 0xE)
  {
    return qword_329938[a1 - 5];
  }

  return 7;
}

id sub_1A0264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabElement();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TabElement()
{
  result = qword_407218;
  if (!qword_407218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A035C()
{
  result = sub_30B328();
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

uint64_t sub_1A03EC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  if (!v3)
  {
    return 19;
  }

  v4 = v3;
  v5 = [v3 viewControllers];
  sub_122394();
  v6 = sub_30C368();

  if (!(v6 >> 62))
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  result = sub_30D668();
  if (!result)
  {
LABEL_14:

    return 19;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_30D578();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v6 + 32);
LABEL_7:
    v9 = v8;

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      v11 = sub_30AAF8();

      return v11;
    }

    return 19;
  }

  __break(1u);
  return result;
}

void sub_1A054C(uint64_t a1, char a2)
{
  v3 = v2;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v5 = sub_1A03EC();
    if (v5 == 19)
    {
      v6 = 8;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = a1;
    sub_BA538(a1);
  }

  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(v6, a2 & 1, ObjectType, v7);
  v9 = (*(v7 + 24))(ObjectType, v7);
  if (v9)
  {
    v20 = v9;
    v10 = [v20 viewControllers];
    sub_122394();
    v11 = sub_30C368();

    if (v11 >> 62)
    {
      v12 = sub_30D668();
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }

    if (!v12 && (v14 = *(v3 + 32)) != 0 && (v15 = *(v3 + 56), , v16 = v14(v6, v15), sub_1EBD0(v14), v16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_31BF90;
      *(v17 + 32) = v16;
      v18 = v16;
      isa = sub_30C358().super.isa;

      [v20 setViewControllers:isa];
      sub_1DB3C(v6);

      v13 = isa;
    }

    else
    {

      sub_1DB3C(v6);
      v13 = v20;
    }
  }

  else
  {

    sub_1DB3C(v6);
  }
}

uint64_t sub_1A0794()
{
  sub_1EBD0(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1A0800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
      v3 = sub_308778();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a2;
      v7 = 1;
      goto LABEL_22;
    case 1:
      v8 = &enum case for FlowDestination.shows(_:);
      goto LABEL_21;
    case 2:
      v8 = &enum case for FlowDestination.channels(_:);
      goto LABEL_21;
    case 3:
      v8 = &enum case for FlowDestination.categories(_:);
      goto LABEL_21;
    case 4:
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_20;
    case 5:
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
      *a2 = 0;
      sub_307B98();
      sub_301CA8();

      v8 = &enum case for FlowDestination.modernTopCharts(_:);
      goto LABEL_21;
    case 7:
      v8 = &enum case for FlowDestination.library(_:);
      goto LABEL_21;
    case 8:
      v8 = &enum case for FlowDestination.listen(_:);
      goto LABEL_21;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E10);
      *a2 = 0;
      sub_307B88();
      sub_301CA8();

      v8 = &enum case for FlowDestination.topLevelPage(_:);
      goto LABEL_21;
    case 12:
      v9 = sub_301CB8();
      (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
      v8 = &enum case for FlowDestination.searchResults(_:);
      goto LABEL_21;
    case 15:
      v10 = 6;
      goto LABEL_19;
    case 16:
      v10 = 5;
LABEL_19:
      *a2 = v10;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0;
LABEL_20:
      *(a2 + 64) = 10;
      v8 = &enum case for FlowDestination.episodeList(_:);
      goto LABEL_21;
    case 17:
      v8 = &enum case for FlowDestination.recentlyUpdated(_:);
LABEL_21:
      v15 = *v8;
      v16 = sub_308778();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a2, v15, v16);
      v4 = *(v17 + 56);
      v6 = a2;
      v7 = 0;
      v5 = v16;
LABEL_22:

      result = v4(v6, v7, 1, v5);
      break;
    default:
      *a2 = a1;
      v11 = enum case for FlowDestination.station(_:);
      v12 = sub_308778();
      v13 = *(v12 - 8);
      (*(v13 + 104))(a2, v11, v12);
      (*(v13 + 56))(a2, 0, 1, v12);

      break;
  }

  return result;
}

void *static TabMenu.viewControllers(for:interfaceMode:using:asPartOf:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v45 = sub_30BB28();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_308778();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_30B328();
  v15 = *(v47 - 8);
  __chkstk_darwin(v47);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  result = sub_30B348();
  v60 = _swiftEmptyArrayStorage;
  v58 = result[2];
  if (v58)
  {
    v19 = v6;
    v20 = 0;
    v57 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v55 = (v12 + 48);
    v56 = v15 + 16;
    v49 = a4 + 24;
    v50 = (v12 + 32);
    v41 = (v19 + 8);
    v48 = (v12 + 8);
    v52 = (v15 + 8);
    v21 = _swiftEmptyArrayStorage;
    v22 = v47;
    v43 = a4;
    v42 = v11;
    v53 = result;
    v54 = v15;
    while (v20 < result[2])
    {
      (*(v15 + 16))(v17, &v57[*(v15 + 72) * v20], v22);
      v23 = sub_30B2F8();
      sub_1A0800(v23, v10);
      sub_1DB3C(v23);
      if ((*v55)(v10, 1, v11) == 1)
      {
        (*v52)(v17, v22);
        sub_EB68(v10, &qword_3FBD60);
      }

      else
      {
        (*v50)(v14, v10, v11);
        ObjectType = swift_getObjectType();
        v25 = (*(a4 + 24))(v14, 0, 0xE000000000000000, ObjectType, a4);
        if (v25)
        {
          v26 = v25;
          v27 = v14;
          sub_30B308();
          v28 = sub_30B318();
          v29 = sub_30B2F8();
          v30 = sub_308448();
          sub_1DB3C(v29);
          v31 = objc_allocWithZone(UITabBarItem);
          v32 = sub_30C098();

          v33 = [v31 initWithTitle:v32 image:v28 tag:v30];

          [v26 setTabBarItem:v33];
          result = [v26 tabBarItem];
          if (!result)
          {
            goto LABEL_19;
          }

          v34 = result;
          v35 = sub_30B2F8();
          v36 = sub_3083F8();
          v38 = v37;
          sub_1DB3C(v35);
          v59[3] = &type metadata for String;
          v59[0] = v36;
          v59[1] = v38;
          v39 = v44;
          sub_30BAF8();
          __swift_destroy_boxed_opaque_existential_1(v59);
          sub_30C758();

          (*v41)(v39, v45);
          swift_getObjectType();
          v14 = v27;
          if (swift_conformsToProtocol2())
          {
            v40 = v26;
            sub_30B2F8();
            sub_30AB08();
          }

          v11 = v42;
          (*v48)(v27, v42);
          v22 = v47;
          (*v52)(v17, v47);
          sub_30C348();
          if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v60 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_30C378();
          }

          sub_30C3C8();
          v21 = v60;
          a4 = v43;
        }

        else
        {
          (*v48)(v14, v11);
          (*v52)(v17, v22);
        }
      }

      ++v20;
      result = v53;
      v15 = v54;
      if (v58 == v20)
      {

        return v21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id static TabMenu.viewController(for:interfaceMode:using:asPartOf:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_1A16D4(a1, a2 & 1, a3, ObjectType, a4);
}

uint64_t TabMenu.Item.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_30B2F8();
  sub_1A0800(v2, a1);

  return sub_1DB3C(v2);
}

id sub_1A12E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v38) = a1;
  v8 = sub_30BB28();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_308778();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = sub_30B2F8();
  sub_1A0800(v19, v13);
  sub_1DB3C(v19);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_3FBD60);
    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = (*(a5 + 24))(v17, 0, 0xE000000000000000, a4, a5);
  if (!v20)
  {
LABEL_7:
    (*(v15 + 8))(v17, v14);
    return v20;
  }

  v21 = v18;
  sub_30B308();
  v22 = sub_30B318();
  v38 = v21;
  v23 = sub_30B2F8();
  v24 = sub_308448();
  sub_1DB3C(v23);
  v25 = objc_allocWithZone(UITabBarItem);
  v26 = sub_30C098();

  v27 = [v25 initWithTitle:v26 image:v22 tag:v24];

  [v20 setTabBarItem:v27];
  result = [v20 tabBarItem];
  if (result)
  {
    v29 = result;
    v30 = sub_30B2F8();
    v31 = sub_3083F8();
    v33 = v32;
    sub_1DB3C(v30);
    v39[3] = &type metadata for String;
    v39[0] = v31;
    v39[1] = v33;
    sub_30BAF8();
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_30C758();

    (*(v36 + 8))(v10, v37);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v34 = v20;
      sub_30B2F8();
      sub_30AB08();
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1A16D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_308778();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407330);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_30B328();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30B338();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v21 = v29;
    v22 = v30;
    sub_EB68(v16, &qword_407330);
    sub_1A0800(a1, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_EB68(v9, &qword_3FBD60);
      return 0;
    }

    else
    {
      v24 = a1;
      (*(v11 + 32))(v13, v9, v10);
      v23 = (*(v22 + 24))(v13, 0, 0xE000000000000000, v21, v22);
      if (v23)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v25 = v23;
          sub_BA538(v24);
          sub_30AB08();
        }
      }

      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v23 = sub_1A12E8(a2 & 1, v28, v20, v29, v30);
    (*(v18 + 8))(v20, v17);
  }

  return v23;
}

unint64_t sub_1A1A74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmptyActionRunner();
  v2 = swift_allocObject();
  result = sub_1A21D8();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t EnvironmentValues.actionRunner.getter()
{
  sub_1A1AF4();
  sub_305A38();
  return v1;
}

unint64_t sub_1A1AF4()
{
  result = qword_407338;
  if (!qword_407338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407338);
  }

  return result;
}

double sub_1A1B48@<D0>(_OWORD *a1@<X8>)
{
  sub_1A1AF4();
  sub_305A38();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A1B98()
{
  sub_1A1AF4();
  swift_unknownObjectRetain();
  return sub_305A48();
}

void (*EnvironmentValues.actionRunner.modify(uint64_t *a1))(_OWORD **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1A1AF4();
  sub_305A38();
  *v4 = v4[1];
  return sub_1A1CC8;
}

void sub_1A1CC8(_OWORD **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_305A48();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_305A48();
  }

  free(v2);
}

double sub_1A1D5C@<D0>(_OWORD *a1@<X8>)
{
  sub_1A1AF4();
  sub_305A38();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A1DF4()
{
  v0 = sub_30B8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BF58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30BF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490);
  sub_30B708();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_30B698();
  sub_30BDC8();

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF10);
  (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
  return sub_30BEC8();
}

uint64_t sub_1A2048()
{
  v0 = sub_30BF58();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30BF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490);
  sub_30B708();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_30B698();
  sub_30BDC8();

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1A21D8()
{
  result = qword_4073D8;
  if (!qword_4073D8)
  {
    type metadata accessor for EmptyActionRunner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4073D8);
  }

  return result;
}

uint64_t EnvironmentValues.cellSelectionState.getter()
{
  sub_1A226C();
  sub_305A38();
  return v1;
}

unint64_t sub_1A226C()
{
  result = qword_4073E0;
  if (!qword_4073E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4073E0);
  }

  return result;
}

uint64_t sub_1A22C0@<X0>(_BYTE *a1@<X8>)
{
  sub_1A226C();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.cellSelectionState.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1A226C();
  sub_305A38();
  *(a1 + 16) = *(a1 + 17);
  return sub_1A2400;
}

uint64_t sub_1A2438@<X0>(_BYTE *a1@<X8>)
{
  sub_1A226C();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

double EnvironmentValues.cellSize.getter()
{
  sub_788AC();
  sub_305A38();
  return v1;
}

__n128 sub_1A255C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1A2568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A26D0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.cellSize.modify(uint64_t *a1))(_OWORD **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_788AC();
  sub_305A38();
  *v4 = v4[1];
  return sub_1A2664;
}

void sub_1A2664(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_305A48();

  free(v1);
}

unint64_t sub_1A26D0()
{
  result = qword_4073E8;
  if (!qword_4073E8)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4073E8);
  }

  return result;
}

uint64_t sub_1A2728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A282C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1A278C()
{
  sub_1A27C8();
  sub_305A38();
  return v1;
}

unint64_t sub_1A27C8()
{
  result = qword_4073F0;
  if (!qword_4073F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4073F0);
  }

  return result;
}

unint64_t sub_1A282C()
{
  result = qword_4073F8;
  if (!qword_4073F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_3FF0E8);
    sub_1A28B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4073F8);
  }

  return result;
}

unint64_t sub_1A28B0()
{
  result = qword_407400;
  if (!qword_407400)
  {
    type metadata accessor for ShelvesViewSwiftUIHelperCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407400);
  }

  return result;
}

uint64_t EnvironmentValues.metricsController.getter()
{
  sub_1A2944();
  sub_305A38();
  return v1;
}

unint64_t sub_1A2944()
{
  result = qword_407408;
  if (!qword_407408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407408);
  }

  return result;
}

uint64_t sub_1A2998@<X0>(void *a1@<X8>)
{
  sub_1A2944();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

uint64_t sub_1A29E8()
{
  sub_1A2944();

  return sub_305A48();
}

uint64_t (*EnvironmentValues.metricsController.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A2944();
  sub_305A38();
  return sub_1A2AE4;
}

uint64_t sub_1A2AE4(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_305A48();
  }

  sub_305A48();
}

uint64_t sub_1A2B78@<X0>(void *a1@<X8>)
{
  sub_1A2944();
  result = sub_305A38();
  *a1 = v3;
  return result;
}

uint64_t EnvironmentValues.shelfImpressionMetrics.getter()
{
  sub_1A2C24();

  return sub_305A38();
}

unint64_t sub_1A2C24()
{
  result = qword_407410;
  if (!qword_407410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407410);
  }

  return result;
}

uint64_t sub_1A2CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1A2E3C(a1, &v9 - v6);
  sub_1A2E3C(v7, v4);
  sub_1A2C24();
  sub_305A48();
  return sub_1A2EAC(v7);
}

uint64_t EnvironmentValues.shelfImpressionMetrics.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  sub_1A2E3C(a1, &v5 - v3);
  sub_1A2C24();
  sub_305A48();
  return sub_1A2EAC(a1);
}

uint64_t sub_1A2E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2EAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2F14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_30BAA8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3220();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.shelfImpressionMetrics.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1A2C24();
  sub_305A38();
  return sub_1A30FC;
}

void sub_1A30FC(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1A2E3C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1A2E3C(v3[2], v3[1]);
    sub_305A48();
    sub_1A2EAC(v6);
  }

  else
  {
    sub_305A48();
  }

  sub_1A2EAC(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

unint64_t sub_1A3220()
{
  result = qword_407418;
  if (!qword_407418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_400440);
    sub_1A32A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407418);
  }

  return result;
}

unint64_t sub_1A32A4()
{
  result = qword_407420;
  if (!qword_407420)
  {
    sub_30BAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407420);
  }

  return result;
}

uint64_t sub_1A3338(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_306D18();
}

uint64_t sub_1A3508(uint64_t a1, uint64_t a2)
{
  v4 = sub_305D38();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_305D48();
}

uint64_t sub_1A3600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_305D38();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_305D48();
}

uint64_t sub_1A36F8()
{
  type metadata accessor for CGSize(0);
  sub_306A08();
  return v1;
}

double sub_1A3738()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE90);
  sub_306A18();
  return v1;
}

double sub_1A37FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_306A08();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1A3854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4075B8);
  sub_306A18();
  return v1;
}

uint64_t FadingText.init(_:foregroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_301A78();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301A28();
  (*(v7 + 16))(v9, a2, a3);
  FadingText.init(_:foregroundStyle:)(v12, v9, a3, a4);
  return (*(v7 + 8))(a2, a3);
}

uint64_t FadingText.init(_:foregroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FadingText();
  v9 = (a4 + v8[10]);
  v10 = sub_1A36F8();
  *v9 = v11;
  v9[1] = v12;
  v9[2] = v10;
  v13 = a4 + v8[11];
  type metadata accessor for CGRect(0);
  sub_306A08();
  *v13 = v17;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  v14 = sub_301A78();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a4, a1, v14);
  [objc_msgSend(objc_allocWithZone(NSMutableParagraphStyle) init];
  sub_1A3C44();
  sub_301A98();
  (*(v15 + 8))(a1, v14);
  return (*(*(a3 - 8) + 32))(a4 + v8[9], a2, a3);
}

unint64_t sub_1A3C44()
{
  result = qword_407428;
  if (!qword_407428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407428);
  }

  return result;
}

uint64_t FadingText.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v49 = *(a1 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(a1);
  v48 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407438);
  v46 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for FadingTextForeground();
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407440);
  swift_getTupleTypeMetadata2();
  sub_306D08();
  sub_EC8C(&qword_407448, &qword_407430);
  v6 = sub_305328();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_EC8C(&qword_407450, &qword_407430);
  WitnessTable = swift_getWitnessTable();
  v62 = v9;
  v63 = WitnessTable;
  v40 = swift_getWitnessTable();
  v60 = v6;
  v61 = v40;
  v42 = &opaque type descriptor for <<opaque return type of View.withSizing(callback:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v37 = &v36 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407458);
  v12 = sub_305528();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v41 = &v36 - v15;
  v16 = swift_allocObject();
  v17 = v4;
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  v18 = v5;
  v53 = v4;
  v54 = v5;
  v19 = v47;
  v55 = v47;
  sub_1A432C(sub_1A4DDC, v52, v8);

  v20 = v48;
  v21 = v49;
  v22 = v46;
  (*(v49 + 16))(v48, v19, v46);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v24 + 24) = v18;
  (*(v21 + 32))(v24 + v23, v20, v22);
  v25 = v37;
  v26 = v40;
  sub_306448();

  (*(v45 + 8))(v8, v6);
  v60 = 0x6554676E69646146;
  v61 = 0xEA00000000007478;
  v58 = v6;
  v59 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = OpaqueTypeMetadata2;
  sub_306608();
  (*(v43 + 8))(v25, v29);
  v30 = sub_EC8C(qword_407460, &qword_407458);
  v56 = OpaqueTypeConformance2;
  v57 = v30;
  swift_getWitnessTable();
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v41;
  v32(v41, v28, v12);
  v34 = *(v31 + 8);
  v34(v28, v12);
  v32(v51, v33, v12);
  return (v34)(v33, v12);
}

uint64_t sub_1A432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407438);
  type metadata accessor for FadingTextForeground();
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407440);
  swift_getTupleTypeMetadata2();
  v6 = sub_306D08();
  v7 = sub_1A7DE0();
  WitnessTable = swift_getWitnessTable();
  return sub_1AB6F0(a1, a2, &type metadata for FadingTextLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_1A442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a4;
  v96 = a2;
  v97 = a3;
  v98 = type metadata accessor for FadingText();
  v89 = *(v98 - 8);
  v90 = *(v89 + 64);
  __chkstk_darwin(v98);
  v88 = &v78 - v6;
  v86 = sub_305458();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407440);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v78 - v10;
  v82 = *(a2 - 8);
  __chkstk_darwin(v11);
  v81 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FadingTextForeground();
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = (&v78 - v13);
  v14 = sub_301A78();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407438);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v80 = sub_305528();
  v100 = *(v80 - 8);
  __chkstk_darwin(v80);
  v95 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v99 = &v78 - v24;
  (*(v15 + 16))(v17, a1, v14, v23);
  v25 = sub_3063B8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v20[*(v18 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407588) + 28);
  v34 = enum case for Text.TruncationMode.middle(_:);
  v35 = sub_306328();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  *v20 = v25;
  *(v20 + 1) = v27;
  v20[16] = v29 & 1;
  *(v20 + 3) = v31;
  v36 = v98;
  v37 = sub_1A3738();
  v39 = v38;
  v40 = sub_1A3854();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = a1 + *(v36 + 36);
  v48 = v81;
  v49 = v96;
  (*(v82 + 16))(v81, v47, v96);
  v50 = v79;
  sub_1A4DE8(v48, v49, v79, v37, v39, v40, v42, v44, v46);
  v51 = sub_1A79F8();
  v52 = v95;
  v53 = v78;
  sub_3067E8();
  v83[1](v50, v53);
  sub_1A7AB0(v20);
  WitnessTable = swift_getWitnessTable();
  v108 = v51;
  v109 = WitnessTable;
  v55 = v80;
  v82 = swift_getWitnessTable();
  v56 = v100;
  v81 = *(v100 + 16);
  (v81)(v99, v52, v55);
  v57 = *(v56 + 8);
  v100 = v56 + 8;
  v83 = v57;
  (v57)(v52, v55);
  v106 = 0x6554676E69646146;
  v107 = 0xEA00000000007478;
  v58 = v84;
  sub_30D508();
  v59 = v85;
  v60 = v86;
  (*(v85 + 104))(v58, enum case for CoordinateSpace.named(_:), v86);
  v61 = v89;
  v62 = v88;
  v63 = v98;
  (*(v89 + 16))(v88, a1, v98);
  v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v65 = swift_allocObject();
  v66 = v97;
  *(v65 + 16) = v96;
  *(v65 + 24) = v66;
  (*(v61 + 32))(v65 + v64, v62, v63);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4075A0);
  v68 = sub_1A7CE8();
  v69 = v87;
  sub_306498();

  (*(v59 + 8))(v58, v60);
  v70 = v95;
  v71 = v99;
  (v81)(v95, v99, v55);
  v106 = v70;
  v72 = v92;
  v73 = v91;
  v74 = v93;
  (*(v92 + 16))(v91, v69, v93);
  v107 = v73;
  v105[0] = v55;
  v105[1] = v74;
  v102 = v68;
  v103 = v82;
  v101 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3338(&v106, 2uLL, v105);
  v75 = *(v72 + 8);
  v75(v69, v74);
  v76 = v83;
  (v83)(v71, v55);
  v75(v73, v74);
  return (v76)(v70, v55);
}

uint64_t sub_1A4DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  a3[4] = a8;
  a3[5] = a9;
  v12 = type metadata accessor for FadingTextForeground();
  (*(*(a2 - 8) + 32))(a3 + *(v12 + 40), a1, a2);
  v13 = *(v12 + 44);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC568);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4F70()
{
  sub_301A78();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A5E80(319, &qword_3FEDD8, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1A5E80(319, qword_4074E8, type metadata accessor for CGRect, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A5088(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_301A78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 < a2)
  {
    v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
    v16 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = a2 - v12 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_29;
      }

      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    v28 = v12 + (v23 | v22);
    return (v28 + 1);
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  v25 = (a1 + v13) & ~v11;
  if (v10 != v12)
  {
    v27 = *(((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    v28 = v27 - 1;
    if (v28 < 0)
    {
      v28 = -1;
    }

    return (v28 + 1);
  }

  v26 = *(v9 + 48);

  return v26(v25, v10);
}

void sub_1A52CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_301A78() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v15 >= a3)
  {
    v22 = 0;
    v23 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v14 + 7 + v17) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v15)
      {
        v26 = *(v8 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = (a1 + v16) & ~v13;
        if (v11 == v15)
        {
          v28 = *(v10 + 56);

          v28(v27, a2, v11);
        }

        else
        {
          v29 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v29[1] = 0;
            v29[2] = 0;
            *v29 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v29[2] = a2;
          }
        }
      }

      return;
    }
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if (v19)
  {
    v25 = ~v15 + a2;
    bzero(a1, v19);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(a1 + v19) = v24;
    }

    else
    {
      *(a1 + v19) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + v19) = v24;
  }
}

uint64_t sub_1A5568()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407438);
  type metadata accessor for FadingTextForeground();
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407440);
  swift_getTupleTypeMetadata2();
  sub_306D08();
  sub_EC8C(&qword_407448, &qword_407430);
  sub_305328();
  sub_EC8C(&qword_407450, &qword_407430);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407458);
  sub_305528();
  swift_getOpaqueTypeConformance2();
  sub_EC8C(qword_407460, &qword_407458);
  return swift_getWitnessTable();
}

void sub_1A57AC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1A5E80(319, &unk_402808, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A5894(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_3054E8() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v8 + 80) & 0xF8 | 7;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v14 = v9 + ((v11 + v13 + ((v10 + 48) & ~v10)) & ~v13) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      v22 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;
      if (v7 < 0xFE)
      {
        v24 = *(((v22 + v11 + v13) & ~v13) + v9);
        if (v24 >= 2)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(v6 + 48);

        return v23(v22, v7, v5);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_1A5B0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_3054E8();
  v11 = v8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v9 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = v13 + 1;
  v19 = ((v16 + v17 + ((v15 + 48) & ~v15)) & ~v17) + v13 + 1;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v19] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v20)
  {
    goto LABEL_32;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v26 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 32) & ~v15;
  if (v9 < 0xFE)
  {
    v28 = ((v26 + v16 + v17) & ~v17);
    if (a2 > 0xFE)
    {
      if (v18 <= 3)
      {
        v29 = ~(-1 << (8 * v18));
      }

      else
      {
        v29 = -1;
      }

      if (v18)
      {
        v30 = v29 & (a2 - 255);
        if (v18 <= 3)
        {
          v31 = v18;
        }

        else
        {
          v31 = 4;
        }

        bzero(v28, v18);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v28 = v30;
            v28[2] = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v28 = v30;
        }

        else
        {
          *v28 = v30;
        }
      }
    }

    else
    {
      v28[v13] = -a2;
    }
  }

  else
  {
    v27 = *(v11 + 56);

    v27(v26, a2, v9, v7);
  }
}

void sub_1A5E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A5EF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_305AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v11);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v8 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  return sub_306948();
}

uint64_t sub_1A60F4(uint64_t a1, double *a2)
{
  v25 = sub_3054E8();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v23 = &v23 - v6;
  v7 = sub_3054B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3062E8();
  type metadata accessor for FadingTextForeground();
  sub_3054A8();
  sub_305488();
  sub_7C1BC(v30);
  v11 = *(v8 + 8);
  v27 = v8 + 8;
  v28 = v7;
  v26 = v11;
  v11(v10, v7);
  sub_3054C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4A8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_315420;
  *(v12 + 32) = sub_306868();
  *(v12 + 40) = sub_306878();
  v29 = v12;
  v13 = v23;
  sub_33CF4(v23);
  v14 = v24;
  v15 = v25;
  (*(v3 + 104))(v24, enum case for LayoutDirection.rightToLeft(_:), v25);
  v16 = v14;
  LOBYTE(v14) = sub_3054D8();
  v17 = *(v3 + 8);
  v17(v16, v15);
  v17(v13, v15);
  if (v14)
  {
    sub_1A64A4();
  }

  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v21 = a2[5];
  sub_3062E8();
  sub_306BE8();
  v32.origin.x = v18;
  v32.origin.y = v19;
  v32.size.width = v20;
  v32.size.height = v21;
  CGRectGetMaxX(v32);
  v33.origin.x = v18;
  v33.origin.y = v19;
  v33.size.width = v20;
  v33.size.height = v21;
  CGRectGetMaxY(v33);
  sub_305498();

  sub_305488();
  sub_7C1BC(v31);
  return v26(v10, v28);
}

void sub_1A64A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v1 = sub_17EEE4();
  }

  v4 = 0;
  v2 += 3;
  while (1)
  {
    v6 = v2 - 4;
    if (v4 == v2 - 4)
    {
      goto LABEL_8;
    }

    v7 = *(v1 + 16);
    if (v4 >= v7)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6 >= v7)
    {
      goto LABEL_17;
    }

    v8 = v1 + 8 * v4;
    v9 = *(v8 + 32);
    *(v8 + 32) = *(v1 + 8 * v2);
    v10 = *(v1 + 16);

    if (v6 >= v10)
    {
      break;
    }

    *(v1 + 8 * v2) = v9;

LABEL_8:
    ++v4;
    v5 = v2 - 5;
    --v2;
    if (v4 >= v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v0 = v1;
}

void sub_1A6584()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_17EEF8(v1);
    }

    v4 = 0;
    v5 = v2 + 3;
    do
    {
      if (v4 != v5 - 4)
      {
        v7 = *(v1 + 2);
        if (v4 >= v7)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v5 - 4 >= v7)
        {
          goto LABEL_15;
        }

        v8 = &v1[8 * v4];
        v9 = *(v8 + 4);
        *(v8 + 4) = *&v1[8 * v5];
        *&v1[8 * v5] = v9;
      }

      ++v4;
      v6 = v5 - 5;
      --v5;
    }

    while (v4 < v6);
    *v0 = v1;
  }
}

void sub_1A663C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_17EF0C(v1);
  }

  v4 = (v1 + 32);
  v2 = &v1[32 * v2];
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_1DA1C(v4, v8);
    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    __swift_assign_boxed_opaque_existential_0(v4, v2);
    if (v3 >= *(v1 + 2))
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1DA94(v8, v2);
LABEL_6:
    --v3;
    v2 -= 32;
    v4 += 4;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_1A673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v52 = a3;
  swift_getWitnessTable();
  v5 = sub_305E48();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407578);
  v6 = sub_305528();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v11 = sub_305FC8();
  v54 = v5;
  v53 = v11;
  v12 = sub_305528();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v51 = v6;
  v50 = sub_305D58();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43 - v19;
  if (*(v3 + 32) == 0.0 && *(v3 + 40) == 0.0)
  {
    WitnessTable = swift_getWitnessTable();
    sub_306638();
    v21 = swift_getWitnessTable();
    v57 = WitnessTable;
    v58 = v21;
    v47 = swift_getWitnessTable();
    v22 = *(v13 + 16);
    v22(v18, v15, v12);
    v23 = *(v13 + 8);
    v23(v15, v12);
    v22(v15, v18, v12);
    v24 = sub_EC8C(&qword_407580, &qword_407578);
    v55 = WitnessTable;
    v56 = v24;
    swift_getWitnessTable();
    v25 = v48;
    sub_1A3508(v15, v12);
    v23(v15, v12);
    v23(v18, v12);
    v26 = v25;
  }

  else
  {
    sub_1A5EF4(a2);
    sub_305048();
    v69 = v72[0];
    v70 = v72[1];
    v71 = v72[2];
    v27 = swift_getWitnessTable();
    v44 = v27;
    sub_306638();
    sub_1A71F0(v72);
    v28 = sub_EC8C(&qword_407580, &qword_407578);
    v67 = v27;
    v68 = v28;
    v29 = v51;
    v47 = swift_getWitnessTable();
    v30 = v46;
    v31 = *(v46 + 16);
    v32 = v45;
    v31(v45, v8, v29);
    v33 = *(v30 + 8);
    v33(v8, v29);
    v31(v8, v32, v29);
    v34 = swift_getWitnessTable();
    v65 = v44;
    v66 = v34;
    swift_getWitnessTable();
    v26 = v48;
    sub_1A3600(v8, v12, v29);
    v33(v8, v29);
    v33(v32, v29);
  }

  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v63 = v35;
  v64 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_EC8C(&qword_407580, &qword_407578);
  v61 = v35;
  v62 = v38;
  v39 = swift_getWitnessTable();
  v59 = v37;
  v60 = v39;
  v40 = v50;
  swift_getWitnessTable();
  v41 = v49;
  (*(v49 + 16))(v52, v26, v40);
  return (*(v41 + 8))(v26, v40);
}

uint64_t sub_1A6EAC()
{
  v0 = sub_3052B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_305398();
  sub_305298();
  return (*(v1 + 8))(v3, v0);
}

double sub_1A6F8C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_3052B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_305398();
  v13[8] = a2 & 1;
  v13[0] = a4 & 1;
  sub_305268();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

void (*sub_1A70CC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

unint64_t sub_1A7158()
{
  result = qword_407570;
  if (!qword_407570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407570);
  }

  return result;
}

uint64_t sub_1A7244()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FadingTextForeground();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = (v4 + 32) & ~v4;
  (*(*(v1 - 8) + 8))(v0 + v6 + *(v2 + 40), v1);
  v7 = *(v3 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC568);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_3054E8();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v6 + v5, v4 | 7);
}

uint64_t sub_1A739C(uint64_t a1)
{
  v3 = *(type metadata accessor for FadingTextForeground() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1A60F4(a1, v4);
}

uint64_t sub_1A7428(uint64_t a1)
{
  v2 = sub_306328();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_305748();
}

uint64_t sub_1A74F0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v14 = sub_3052B8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v28[-v19];
  sub_305398();
  sub_305398();
  a6 &= 1u;
  v28[96] = a6;
  v28[88] = a8 & 1;
  sub_305268();
  v22 = v21;
  sub_306D28();
  v28[80] = 0;
  v28[72] = 0;
  sub_305288();
  v28[64] = a6;
  v28[56] = 1;
  sub_305268();
  if (v23 <= v22)
  {
    sub_306D28();
    v28[16] = 0;
    v28[8] = 0;
  }

  else
  {
    sub_3055C8();
    v28[48] = v24 & 1;
    v28[40] = v25 & 1;
    sub_305268();
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    CGRectGetMinX(v29);
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    CGRectGetMinY(v30);
    sub_306D28();
    v28[32] = 0;
    v28[24] = 0;
  }

  sub_305288();
  v26 = *(v15 + 8);
  v26(v17, v14);
  return (v26)(v20, v14);
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1A79F8()
{
  result = qword_407590;
  if (!qword_407590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407438);
    sub_EC8C(&qword_407598, &qword_407588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407590);
  }

  return result;
}

uint64_t sub_1A7AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for FadingText() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_301A78();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_1A7CE8()
{
  result = qword_4075A8;
  if (!qword_4075A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4075A0);
    sub_E1D38();
    sub_1A7D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4075A8);
  }

  return result;
}

unint64_t sub_1A7D74()
{
  result = qword_4075B0;
  if (!qword_4075B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4075B0);
  }

  return result;
}

unint64_t sub_1A7DE0()
{
  result = qword_4075C0;
  if (!qword_4075C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4075C0);
  }

  return result;
}

uint64_t sub_1A7E34()
{
  type metadata accessor for FadingTextForeground();
  swift_getWitnessTable();
  sub_305E48();
  sub_305FC8();
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407578);
  sub_305528();
  sub_305D58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_EC8C(&qword_407580, &qword_407578);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t View.hideIfNotEnoughRoom()(uint64_t a1, uint64_t a2)
{
  v3 = sub_305528();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v9[2] = swift_getKeyPath();
  v10 = 0;
  sub_3067E8();

  v7 = sub_1A866C();
  v9[0] = a2;
  v9[1] = v7;
  swift_getWitnessTable();
  sub_3065E8();
  return (*(v4 + 8))(v6, v3);
}

double sub_1A8150(uint64_t a1, char a2)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  sub_30C7A8();
  v9 = sub_306088();
  sub_304108();

  sub_3059F8();
  swift_getAtKeyPath();
  sub_111DE0(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

uint64_t sub_1A8298@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = sub_1A8150(*v2, *(v2 + 8));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4075E0) + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4075E8);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1A8340(uint64_t a1, char a2, uint64_t a3, char a4, double a5, uint64_t a6, BOOL *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407618);
  __chkstk_darwin(v13 - 8);
  v15 = &v25[-v14];
  v16 = sub_3052B8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB588(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1A8B4C(v15);
  }

  (*(v17 + 32))(v19, v15, v16);
  if ((a4 & 1) == 0 && (a3 & 0x7FFFFFFFFFFFFFFFLL) == 0 || (a2 & 1) == 0 && (a1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    return (*(v17 + 8))(v19, v16);
  }

  v25[8] = a2 & 1;
  v25[0] = a4 & 1;
  sub_305268();
  v22 = v21;
  v24 = v23;
  result = (*(v17 + 8))(v19, v16);
  *a7 = (a2 & 1) == 0 && v22 > *&a1 || (a4 & 1) == 0 && *&a3 + a5 < v24;
  return result;
}

void (*sub_1A85B8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

uint64_t sub_1A8640@<X0>(void *a1@<X8>)
{
  result = sub_305718();
  *a1 = v3;
  return result;
}

unint64_t sub_1A866C()
{
  result = qword_4075C8;
  if (!qword_4075C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4075C8);
  }

  return result;
}

uint64_t sub_1A86C0()
{
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4075D0);
  sub_305528();
  sub_1A866C();
  swift_getWitnessTable();
  sub_EC8C(&qword_4075D8, &qword_4075D0);
  return swift_getWitnessTable();
}

unint64_t sub_1A87F4()
{
  result = qword_4075F0;
  if (!qword_4075F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4075E0);
    sub_EC8C(&qword_4075F8, &qword_407600);
    sub_EC8C(&qword_407608, &qword_4075E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4075F0);
  }

  return result;
}

unint64_t sub_1A88DC()
{
  result = qword_407610;
  if (!qword_407610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407610);
  }

  return result;
}

uint64_t sub_1A8930(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407618);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_3052B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB588(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1A8B4C(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (*a2 == 1)
  {
    sub_306D28();
    v11[8] = 0;
    v11[0] = 0;
  }

  else
  {
    sub_306D28();
    v11[24] = 0;
    v11[16] = 0;
  }

  sub_305288();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A8B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for HideIfNotEnoughRoomLayout.Cache(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t ImpressMetricsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImpressMetricsModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_1A91C8(v2, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1A9230(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407628);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407630) + 36));
  *v11 = sub_1A9294;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_1A91C8(v2, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1A9230(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407638);
  v14 = (a2 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_1A94E0;
  v14[3] = v12;
  return result;
}

uint64_t type metadata accessor for ImpressMetricsModifier()
{
  result = qword_407698;
  if (!qword_407698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_30BAA8();
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for ImpressMetricsModifier() + 36));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v22) = *v13;
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  result = sub_306A18();
  if ((v21 & 1) == 0)
  {
    LOBYTE(v22) = v14;
    v23 = v15;
    v21 = 1;
    result = sub_306A28();
    if (*(a1 + 48))
    {
      v22 = *(a1 + 32);
      sub_307DF8();
      sub_1AA034(&qword_407710, &type metadata accessor for LegacyLockup);

      sub_30BF78();
      v17 = v20;
      if ((*(v20 + 48))(v9, 1, v10) == 1)
      {

        return sub_1A2EAC(v9);
      }

      else
      {
        (*(v17 + 32))(v12, v9, v10);
        (*(v17 + 16))(v6, v12, v10);
        (*(v17 + 56))(v6, 0, 1, v10);
        sub_1A2E3C(v6, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407620);
        sub_306A28();
        sub_1A2EAC(v6);
        sub_3027B8();

        return (*(v17 + 8))(v12, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1A91C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressMetricsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressMetricsModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A92AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_30BAA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (a1 + *(type metadata accessor for ImpressMetricsModifier() + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  v15 = *v9;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  result = sub_306A18();
  if (v14 == 1)
  {
    v15 = v10;
    v16 = v11;
    v14 = 0;
    result = sub_306A28();
    if (*(a1 + 48))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407620);
      sub_306A18();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        return sub_1A2EAC(v4);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_3027E8();

        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  return result;
}

uint64_t sub_1A94F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  sub_1A91C8(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1A9230(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407628);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407630) + 36));
  *v11 = sub_1AA084;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_1A91C8(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1A9230(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407638);
  v14 = (a3 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_1AA08C;
  v14[3] = v12;
  return result;
}

uint64_t View.impressMetrics(model:impressionIndex:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  v14 = type metadata accessor for ImpressMetricsModifier();
  __chkstk_darwin(v14);
  v16 = (v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_30BAA8();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v16->i64[0] = 0;
  v16->i64[1] = 0;
  v16[1] = vdupq_n_s64(0x4049000000000000uLL);
  v16[2].i64[0] = a1;
  v16[2].i64[1] = a2;
  v16[3].i64[0] = a3;
  sub_1A2E3C(v13, v10);

  sub_306A08();
  sub_1A2EAC(v13);
  v18 = &v16->i8[*(v14 + 36)];
  v22 = 0;
  sub_306A08();
  v19 = v24;
  *v18 = v23;
  *(v18 + 1) = v19;
  sub_3067E8();
  return sub_1A98BC(v16);
}

uint64_t sub_1A98BC(uint64_t a1)
{
  v2 = type metadata accessor for ImpressMetricsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407620);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9A18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407620);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A9AC8()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_307DF8();
    if (v1 <= 0x3F)
    {
      sub_1A9B9C();
      if (v2 <= 0x3F)
      {
        sub_1A9BF4();
        if (v3 <= 0x3F)
        {
          sub_87DB0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A9B9C()
{
  if (!qword_4076A8)
  {
    sub_302818();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_4076A8);
    }
  }
}

void sub_1A9BF4()
{
  if (!qword_4076B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_400440);
    v0 = sub_306A48();
    if (!v1)
    {
      atomic_store(v0, &qword_4076B0);
    }
  }
}

uint64_t sub_1A9CCC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9D50()
{
  result = qword_407700;
  if (!qword_407700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407700);
  }

  return result;
}

uint64_t sub_1A9DB4()
{
  type metadata accessor for ImpressMetricsModifier();
  sub_305528();
  sub_1AA034(&qword_407708, type metadata accessor for ImpressMetricsModifier);
  return swift_getWitnessTable();
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for ImpressMetricsModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 32);
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407620);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A9FC0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImpressMetricsModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1AA034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AA090@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();
  v6 = a1;

  v8 = sub_1AAE00(v7, a1, a1);
  sub_1AA200(v8, a2, a3);
}

uint64_t View.withPodcastsBridge(asPartOf:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v5 = sub_1AAE00(v4, 0, 0);
  sub_1AA200(v5, a1, a2);
}

uint64_t sub_1AA200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C18);
  v5 = sub_305528();
  v46 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C20);
  v8 = sub_305528();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C28);
  v38 = sub_305528();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C30);
  v11 = sub_305528();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C38);
  v42 = v11;
  v45 = sub_305528();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v35 - v13;
  swift_getKeyPath();
  v14 = *(a1 + 24);
  v15 = sub_1AB498();
  v54[0] = v14;
  v54[1] = v15;

  sub_306528();

  swift_getKeyPath();
  sub_30A6F8();
  swift_allocObject();

  v54[0] = sub_30A708();
  v16 = sub_197470(&qword_406C68, &qword_406C18);
  v54[9] = a2;
  v54[10] = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = v35;
  sub_306528();

  (*(v46 + 8))(v7, v5);
  swift_getKeyPath();
  v46 = a1;
  v19 = *(a1 + 16);
  sub_308EE8();
  sub_30B8C8();
  v20 = sub_197470(&qword_406C70, &qword_406C20);
  v54[7] = WitnessTable;
  v54[8] = v20;
  v21 = swift_getWitnessTable();
  v22 = v36;
  sub_306528();

  (*(v39 + 8))(v18, v8);
  swift_getKeyPath();
  v54[0] = v19;
  v23 = sub_197470(&qword_406C78, &qword_406C28);
  v54[5] = v21;
  v54[6] = v23;
  v24 = v37;

  v25 = v38;
  v26 = swift_getWitnessTable();
  sub_306528();

  (*(v40 + 8))(v22, v25);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4078F8);
  sub_30B8C8();
  if (v53)
  {
    sub_12658(&v52, v54);
  }

  else
  {
    v54[3] = sub_303C38();
    v54[4] = &protocol witness table for UniformBucketingStrategy;
    __swift_allocate_boxed_opaque_existential_0Tm(v54);
    sub_303C28();
    if (v53)
    {
      sub_1AB518(&v52);
    }
  }

  v27 = sub_197470(&qword_406C80, &qword_406C30);
  v50 = v26;
  v51 = v27;
  v28 = v42;
  v29 = swift_getWitnessTable();
  v30 = v43;
  sub_306528();

  (*(v41 + 8))(v24, v28);
  __swift_destroy_boxed_opaque_existential_1(v54);
  swift_getKeyPath();
  Strong = swift_unknownObjectWeakLoadStrong();
  v54[0] = Strong;
  v32 = sub_197470(&qword_406C88, &qword_406C38);
  v48 = v29;
  v49 = v32;
  v33 = v45;
  swift_getWitnessTable();
  sub_306528();

  return (*(v44 + 8))(v30, v33);
}

void *View.wrapInPodcastsBridgedViewController(asPartOf:responder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C18);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C20);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C28);
  v32[2] = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C30);
  v32[3] = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C38);
  v34 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C40);
  v5 = sub_305528();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v13 = sub_1AAE00(v12, 0, 0);
  sub_1AA200(v13, a4, v11);
  v14 = sub_197470(&qword_406C68, &qword_406C18);
  v45 = a4;
  v46 = v14;
  v15 = v33;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_197470(&qword_406C70, &qword_406C20);
  v43 = WitnessTable;
  v44 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_197470(&qword_406C78, &qword_406C28);
  v41 = v18;
  v42 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_197470(&qword_406C80, &qword_406C30);
  v39 = v20;
  v40 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_197470(&qword_406C88, &qword_406C38);
  v37 = v22;
  v38 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_197470(&unk_406C90, &qword_406C40);
  v35 = v24;
  v36 = v25;
  swift_getWitnessTable();
  sub_305C68();
  (*(v6 + 16))(v8, v11, v5);
  v26 = sub_305C48();
  v27 = v26;
  v28 = v15;
  if (!v15)
  {
    v28 = v26;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = v15;

  (*(v6 + 8))(v11, v5);
  swift_unknownObjectWeakAssign();

  return v27;
}

uint64_t sub_1AAE00(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);
  sub_30B8E8();
  type metadata accessor for BridgeActionRunner();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v7 + 24) = v11;
  sub_1AB498();
  swift_unknownObjectRetain();

  v8 = sub_30B908();

  swift_unknownObjectRelease();

  *(v3 + 16) = v8;
  *(v3 + 24) = v7;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    type metadata accessor for ShelvesViewSwiftUIHelperCell();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectWeakAssign();

  return v4;
}

uint64_t sub_1AAF68@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = sub_30C668(), v3, v4))
  {
    sub_30CE78();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_302268();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1AB018()
{

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB068()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C18);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C20);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C28);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C30);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C38);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C40);
  sub_305528();
  sub_197470(&qword_406C68, &qword_406C18);
  swift_getWitnessTable();
  sub_197470(&qword_406C70, &qword_406C20);
  swift_getWitnessTable();
  sub_197470(&qword_406C78, &qword_406C28);
  swift_getWitnessTable();
  sub_197470(&qword_406C80, &qword_406C30);
  swift_getWitnessTable();
  sub_197470(&qword_406C88, &qword_406C38);
  swift_getWitnessTable();
  sub_197470(&unk_406C90, &qword_406C40);
  return swift_getWitnessTable();
}

uint64_t sub_1AB34C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = sub_30C678(), v1, !v2))
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v3 = sub_307C18();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1AB3E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = sub_30C678(), v1, !v2))
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  sub_307C28();

  return swift_unknownObjectRelease();
}

unint64_t sub_1AB498()
{
  result = qword_4078F0;
  if (!qword_4078F0)
  {
    type metadata accessor for BridgeActionRunner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4078F0);
  }

  return result;
}

uint64_t sub_1AB518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB588@<X0>(uint64_t a1@<X8>)
{
  sub_305388();
  sub_1AC0A0();
  sub_30C598();
  sub_30C5D8();
  if (v9[4] == v9[0])
  {
    v2 = sub_3052B8();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_30C5F8();
    v6 = v5;
    v7 = sub_3052B8();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1AB6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_305128();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_305138();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_305338();
}

uint64_t View.shrinkFrame(maxHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a4;
  v11[2] = a1;
  v11[3] = a2;
  v12 = v4;
  sub_1AC108(sub_1ABA14, v11, a3);
}

uint64_t sub_1AB938(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7FE0(v4);
  sub_1A7FE0(v6);
  return (*(v3 + 8))(v6, a2);
}

uint64_t sub_1ABA20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407908);
  sub_1ABAE4(&qword_407910);
  sub_305328();
  sub_1ABAE4(&qword_407918);
  return swift_getWitnessTable();
}

uint64_t sub_1ABAE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407908);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB44(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407618);
  __chkstk_darwin(v11 - 8);
  v13 = &v24[-v12];
  v14 = sub_3052B8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB588(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1A8B4C(v13);
  }

  (*(v15 + 32))(v17, v13, v14);
  if ((*(a7 + 25) & 1) == 0)
  {
    v19 = *(a7 + 24);
    v24[24] = *(a7 + 8) & 1;
    v24[16] = v19 & 1;
    v24[8] = a2 & 1;
    v24[0] = 0;
    if ((sub_3055D8() & 1) != 0 && (*(a7 + 48) & 1) == 0)
    {
      return (*(v15 + 8))(v17, v14);
    }
  }

  v24[40] = a2 & 1;
  v24[32] = 0;
  sub_305268();
  v21 = v20;
  v23 = v22;
  result = (*(v15 + 8))(v17, v14);
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = 0;
  *(a7 + 32) = v21;
  *(a7 + 40) = v23;
  *(a7 + 48) = 0;
  return result;
}

void sub_1ABDAC(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

uint64_t sub_1ABDF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407618);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_3052B8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB588(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1A8B4C(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_306D28();
  v8[8] = 0;
  v8[0] = 0;
  sub_305288();
  return (*(v4 + 8))(v6, v3);
}

void (*sub_1ABFC0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

unint64_t sub_1AC04C()
{
  result = qword_407920;
  if (!qword_407920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407920);
  }

  return result;
}

unint64_t sub_1AC0A0()
{
  result = qword_3FD040;
  if (!qword_3FD040)
  {
    sub_305388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD040);
  }

  return result;
}

uint64_t sub_1AC108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_1AC180();
  return sub_1AB6F0(a1, a2, &type metadata for ShrinkFrame, v7, v9, v8, a3);
}

unint64_t sub_1AC180()
{
  result = qword_407928;
  if (!qword_407928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407928);
  }

  return result;
}

uint64_t sub_1AC1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  v9();
  sub_1A7FE0(v8);
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_1A7FE0(v11);
  return (v12)(v11, a4);
}

uint64_t sub_1AC318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_1AC3B0@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v70 = a1;
  v80 = a2;
  v2 = sub_305F48();
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v79 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_306908();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v75 = &v63[-v6];
  __chkstk_darwin(v7);
  v76 = &v63[-v8];
  v66 = sub_305F68();
  v9 = *(v66 - 8);
  __chkstk_darwin(v66);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407990);
  __chkstk_darwin(v64);
  v13 = &v63[-v12];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407980);
  __chkstk_darwin(v65);
  v15 = &v63[-v14];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407970);
  __chkstk_darwin(v67);
  v17 = &v63[-v16];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407960);
  __chkstk_darwin(v68);
  v19 = &v63[-v18];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407950);
  __chkstk_darwin(v69);
  v71 = &v63[-v20];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407938);
  __chkstk_darwin(v72);
  v73 = &v63[-v21];
  sub_308608();
  sub_302BF8();
  sub_305F78();
  v22 = objc_opt_self();
  v23 = [v22 currentTraitCollection];
  v24 = sub_30C968();

  if ((v24 & 1) == 0)
  {
    sub_302BD8();
  }

  v25 = [v22 currentTraitCollection];
  sub_30C968();

  sub_306C58();
  sub_305638();
  (*(v9 + 32))(v13, v11, v66);
  v26 = &v13[*(v64 + 36)];
  v27 = v88;
  v26[4] = v87;
  v26[5] = v27;
  v26[6] = v89;
  v28 = v84;
  *v26 = v83;
  v26[1] = v28;
  v29 = v86;
  v26[2] = v85;
  v26[3] = v29;
  KeyPath = swift_getKeyPath();
  sub_34804(v13, v15, &qword_407990);
  v31 = &v15[*(v65 + 36)];
  *v31 = KeyPath;
  v31[8] = 1;
  if (v70)
  {
    v32 = &selRef_systemBackgroundColor;
    v33 = sub_306898();
  }

  else
  {
    v32 = &selRef_tintColor;
    v33 = sub_306878();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_34804(v15, v17, &qword_407980);
  v36 = &v17[*(v67 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = [objc_opt_self() *v32];
  v38 = sub_306818();
  v39 = sub_306C58();
  v41 = v40;
  sub_34804(v17, v19, &qword_407970);
  v42 = &v19[*(v68 + 36)];
  *v42 = v38;
  v42[1] = v39;
  v42[2] = v41;
  v43 = [v22 currentTraitCollection];
  LOBYTE(v39) = sub_30C968();

  if (v39)
  {
    v44 = 17.0;
  }

  else
  {
    v44 = 24.0;
  }

  v45 = v71;
  v46 = &v71[*(v69 + 36)];
  v47 = *(sub_3055F8() + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = sub_305B68();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v44;
  v46[1] = v44;
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)) = 256;
  sub_34804(v19, v45, &qword_407960);
  sub_306168();
  sub_3061C8();
  v50 = sub_306218();

  v51 = swift_getKeyPath();
  v52 = v73;
  sub_34804(v45, v73, &qword_407950);
  v53 = &v52[*(v72 + 36)];
  *v53 = v51;
  v53[1] = v50;
  v54 = v74;
  sub_3068F8();
  v55 = [objc_opt_self() *v32];
  sub_306818();
  v56 = v75;
  sub_3068E8();

  v57 = *(v77 + 8);
  v58 = v78;
  v57(v54, v78);
  v59 = v76;
  sub_3068D8();
  v57(v56, v58);
  v60 = v79;
  sub_305F38();
  sub_1AD088();
  sub_1AD4DC(&qword_4079A8, &type metadata accessor for DefaultGlassEffectShape);
  v61 = v82;
  sub_306538();
  (*(v81 + 8))(v60, v61);
  v57(v59, v58);
  return sub_1AD53C(v52);
}

uint64_t sub_1ACD6C(uint64_t a1)
{
  v3 = sub_305F98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = *v1;
  (*(v4 + 16))(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + v8 + v5) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407930);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407938);
  v11 = sub_305F48();
  v12 = sub_1AD088();
  v13 = sub_1AD4DC(&qword_4079A8, &type metadata accessor for DefaultGlassEffectShape);
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  swift_getOpaqueTypeConformance2();
  return sub_3089C8();
}

uint64_t sub_1ACF5C()
{
  v1 = sub_305F98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1ACFE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_305F98() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_1AC3B0(v4, a1);
}

unint64_t sub_1AD088()
{
  result = qword_407940;
  if (!qword_407940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407938);
    sub_1AD140();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407940);
  }

  return result;
}

unint64_t sub_1AD140()
{
  result = qword_407948;
  if (!qword_407948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407950);
    sub_1AD1F8();
    sub_EC8C(&qword_3FC4D8, &qword_3FC4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407948);
  }

  return result;
}

unint64_t sub_1AD1F8()
{
  result = qword_407958;
  if (!qword_407958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407960);
    sub_1AD2B0();
    sub_EC8C(&qword_407998, &qword_4079A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407958);
  }

  return result;
}

unint64_t sub_1AD2B0()
{
  result = qword_407968;
  if (!qword_407968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407970);
    sub_1AD368();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407968);
  }

  return result;
}

unint64_t sub_1AD368()
{
  result = qword_407978;
  if (!qword_407978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407980);
    sub_1AD420();
    sub_EC8C(&qword_3FCD48, &qword_3FCD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407978);
  }

  return result;
}

unint64_t sub_1AD420()
{
  result = qword_407988;
  if (!qword_407988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407990);
    sub_1AD4DC(&qword_3FF720, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407988);
  }

  return result;
}

uint64_t sub_1AD4DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AD53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AD5FC()
{
  result = qword_4079C0;
  if (!qword_4079C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4079C0);
  }

  return result;
}

void sub_1AD660()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_429540 = v2;
  *algn_429548 = 0;
}

id sub_1AD6D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v8 = [objc_allocWithZone(NSStringDrawingContext) init];
    [v8 setMaximumNumberOfLines:0];
    v40 = v8;
    [v8 setWrapsForTruncationMode:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079C8);
    v37 = a3 + 32;
    v38 = v4;
    v9 = (a3 + 40);
    p_vtable = &OBJC_METACLASS____TtC23ShelfKitCollectionViews34LargeChartLockupCollectionViewCell.vtable;
    v39 = a2;
    while (1)
    {
      v11 = p_vtable;
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = sub_30D698();
      v15 = v12;
      v16 = NSFontAttributeName;
      v17 = sub_1977EC(v16);
      if (v18)
      {
        break;
      }

      v14[(v17 >> 6) + 8] |= 1 << v17;
      *(v14[6] + 8 * v17) = v16;
      *(v14[7] + 8 * v17) = v15;
      v19 = v14[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_27;
      }

      v14[2] = v21;
      if (a2)
      {
        v42 = v40;
        v22 = sub_2D618C(v14);
        sub_268E60(a4, 1.79769313e308, a1, a2, 1uLL, v22, v40);

        if (qword_3FAE40 != -1)
        {
          swift_once();
        }

        p_vtable = v11;

        sub_303D28();

        if (v47)
        {
          v23 = sub_30C098();
          sub_2D618C(v14);
          type metadata accessor for Key(0);
          sub_CFA40();
          isa = sub_30BF88().super.isa;
          p_vtable = v11;

          [v23 boundingRectWithSize:1 options:isa attributes:v42 context:{a4, 1.79769313e308}];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          a2 = v39;
          v43 = v26;
          v44 = v28;
          v45 = v30;
          v46 = v32;
          v47 = 0;

          sub_303D38();
        }

        else
        {
          v30 = v45;
          v32 = v46;
          v26 = v43;
          v28 = v44;
        }
      }

      else
      {

        v26 = 0.0;
        v28 = 0.0;
        v30 = 0.0;
        v32 = 0.0;
        p_vtable = v11;
      }

      v48.origin.x = v26;
      v48.origin.y = v28;
      v48.size.width = v30;
      v48.size.height = v32;
      Height = CGRectGetHeight(v48);
      [v15 lineHeight];
      v35 = round(Height / v34);
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v35 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v35 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v35 <= 0)
      {
        if (v13 > 0)
        {
          goto LABEL_24;
        }
      }

      else if (v13 >= v35)
      {
        goto LABEL_24;
      }

      v9 += 2;

      if (!--v4)
      {
        v15 = *(v37 + 16 * v38 - 16);
LABEL_24:

        return v15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (qword_3FAC00 != -1)
  {
LABEL_31:
    swift_once();
  }

  return qword_429540;
}

double sub_1ADB2C(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 <= a1 && a1 <= a5)
  {
    if (a2 <= a1 && a1 <= a3)
    {
      return a2;
    }

    v6 = 0.0;
    goto LABEL_14;
  }

  v6 = a1 - a5;
  if (a1 < a4)
  {
    v6 = a4 - a1;
  }

  if (a2 > a1 || a1 > a3)
  {
LABEL_14:
    if (a1 >= a2)
    {
      v8 = a1 - a3;
    }

    else
    {
      v8 = a2 - a1;
    }

    v7 = v6 < v8;
    goto LABEL_18;
  }

  v7 = v6 < 0.0;
LABEL_18:
  if (v7)
  {
    return a4;
  }

  return a2;
}

uint64_t NSAttributedString.contentType(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_30CAC8();
  v6 = [v2 attribute:v5 atIndex:a1 effectiveRange:0];

  if (v6)
  {
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v7 = sub_304048();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a2, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_9097C(v13);
    v10 = sub_304048();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

id sub_1ADCE0(float a1)
{
  v2 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v2 setLineSpacing:a1 * 0.5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  *(inited + 32) = NSFontAttributeName;
  v4 = objc_opt_self();
  v5 = NSFontAttributeName;
  v6 = [v4 systemFontOfSize:0.01];
  v7 = sub_124C4(0, &qword_408100);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 104) = sub_124C4(0, &qword_4079D0);
  *(inited + 80) = v2;
  v8 = NSParagraphStyleAttributeName;
  v9 = v2;
  sub_2D6CB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = sub_30C098();
  type metadata accessor for Key(0);
  sub_CFA40();
  isa = sub_30BF88().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

char *sub_1ADEE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_30D668();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1751E4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_30D578();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1751E4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1DA94(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1751E4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1DA94(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1AE0B4(uint64_t a1)
{
  v2 = type metadata accessor for ParagraphViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_175414(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B0BAC(v8, v5);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_175414((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_3BDC90;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_1B0BAC(v5, boxed_opaque_existential_0Tm);
      v7[2] = v11 + 1;
      sub_12658(&v14, &v7[5 * v11 + 4]);
      sub_1B0C10(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1AE248(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v19 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_175414(0, v8, 0);
    v9 = v23;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v11(v7, v13, v4);
      v23 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_175414((v14 > 1), v15 + 1, 1);
      }

      v21 = v4;
      v22 = v19;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v20);
      v11(boxed_opaque_existential_0Tm, v7, v4);
      v9 = v23;
      v23[2] = v15 + 1;
      sub_12658(&v20, &v9[5 * v15 + 4]);
      (*(v10 - 8))(v7, v4);
      v13 += v18;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1AE410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[56] = a4;
  v5[57] = v4;
  v5[54] = a2;
  v5[55] = a3;
  v5[53] = a1;
  v6 = swift_task_alloc();
  v5[58] = v6;
  *v6 = v5;
  v6[1] = sub_1AE4A8;

  return sub_1AEC8C();
}

uint64_t sub_1AE4A8(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1AE5A8, 0, 0);
}

uint64_t sub_1AE5A8()
{
  v62 = v0;
  v2 = *(v0 + 472);
  v3 = *(v0 + 432);
  v4 = sub_1AE248(*(v0 + 440), &type metadata accessor for Chapter, &off_3BDC40);
  v5 = sub_1AE0B4(v2);

  sub_14A534(v5);
  v6 = sub_1AE248(v3, &type metadata accessor for TimedReferenceLink, &off_3BDCB8);
  sub_14A534(v6);
  v61 = v4;

  v7 = 0;
  sub_1AF7B4(&v61);

  v8 = v61;
  v9 = [objc_allocWithZone(NSMutableAttributedString) init];
  v10 = v8[2];
  v11 = _swiftEmptyArrayStorage;
  v56 = v9;
  v57 = v8;
  if (!v10)
  {
    v13 = v9;
    goto LABEL_7;
  }

  v61 = _swiftEmptyArrayStorage;

  sub_1753F4(0, v10, 0);
  v13 = v8[2];
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = v61;
  sub_12670((v8 + 4), v0 + 200);
  *(v0 + 240) = 0;
  sub_12658((v0 + 200), v0 + 248);
  sub_EB00(v0 + 240, v0 + 288, &qword_4079D8);
  *(v0 + 16) = *(v0 + 288);
  sub_EB00(v0 + 240, v0 + 336, &qword_4079D8);
  sub_12658((v0 + 344), v0 + 24);
  v11 = v14;
  sub_EB68(v0 + 240, &qword_4079D8);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  v7 = v14[2];
  v12 = v11[3];
  v1 = v7 + 1;
  if (v7 >= v12 >> 1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v11[2] = v1;
    v12 = &v11[11 * v7];
    v15 = *(v0 + 32);
    *(v12 + 32) = *(v0 + 16);
    *(v12 + 48) = v15;
    v16 = *(v0 + 48);
    v17 = *(v0 + 64);
    v18 = *(v0 + 80);
    *(v12 + 112) = *(v0 + 96);
    *(v12 + 80) = v17;
    *(v12 + 96) = v18;
    *(v12 + 64) = v16;
    if (v10 != 1)
    {
      v1 = (v8 + 9);
      v7 = (&dword_0 + 1);
      while (v13 != v7)
      {
        sub_12670(v1, v0 + 200);
        *(v0 + 240) = v7;
        sub_12658((v0 + 200), v0 + 248);
        sub_EB00(v0 + 240, v0 + 288, &qword_4079D8);
        *(v0 + 16) = *(v0 + 288);
        sub_EB00(v0 + 240, v0 + 336, &qword_4079D8);
        sub_12658((v0 + 344), v0 + 24);
        v12 = v8[2];
        if (v7 > v12)
        {
          goto LABEL_37;
        }

        sub_12670((v1 - 40), v0 + 64);
        sub_EB68(v0 + 240, &qword_4079D8);
        __swift_destroy_boxed_opaque_existential_1(v0 + 296);
        v61 = v11;
        v49 = v11[2];
        v48 = v11[3];
        if (v49 >= v48 >> 1)
        {
          sub_1753F4((v48 > 1), v49 + 1, 1);
          v11 = v61;
        }

        v7 = (v7 + 1);
        v11[2] = v49 + 1;
        v12 = &v11[11 * v49];
        v50 = *(v0 + 32);
        *(v12 + 32) = *(v0 + 16);
        *(v12 + 48) = v50;
        v51 = *(v0 + 48);
        v52 = *(v0 + 64);
        v53 = *(v0 + 80);
        *(v12 + 112) = *(v0 + 96);
        *(v12 + 80) = v52;
        *(v12 + 96) = v53;
        *(v12 + 64) = v51;
        v1 += 40;
        v8 = v57;
        if (v10 == v7)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_36;
    }

LABEL_5:

    v13 = v56;
LABEL_7:
    v55 = v11[2];
    if (!v55)
    {
      break;
    }

    v10 = 0;
    v19 = (v11 + 4);
    v7 = &qword_4063E8;
    v1 = &unk_328B58;
    v20 = &selRef_hitTestInsets;
    v54 = v11;
    while (1)
    {
      v12 = v11[2];
      if (v10 >= v12)
      {
        break;
      }

      v59 = v10;
      v60 = v19;
      sub_EB00(v19, v0 + 104, &qword_4063E8);
      v21 = *(v0 + 104);
      v22 = [objc_allocWithZone(NSMutableAttributedString) init];
      v58 = v21;
      if (v21)
      {
        sub_EB00(v0 + 152, v0 + 384, &qword_4079E0);
        v23 = *(v0 + 408);
        if (v23)
        {
          v24 = *(v0 + 416);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 384), *(v0 + 408));
          v25 = (*(v24 + 24))(v23, v24);
          v26 = *&v25;
          v27 = HIDWORD(v25) & 1;
          __swift_destroy_boxed_opaque_existential_1(v0 + 384);
          v28 = v26;
        }

        else
        {
          sub_EB68(v0 + 384, &qword_4079E0);
          LOBYTE(v27) = 1;
          v28 = 0.0;
        }

        v29 = *(v0 + 136);
        v30 = *(v0 + 144);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 112), v29);
        v31 = (*(v30 + 16))(v29, v30);
        if (v27)
        {
          if ((v31 & 0x100000000) != 0)
          {
            v28 = 16.0;
          }

          else
          {
            v28 = *&v31;
          }
        }

        else if ((v31 & 0x100000000) == 0 && v28 <= *&v31)
        {
          v28 = *&v31;
        }
      }

      else
      {
        v28 = 16.0;
      }

      v32 = *(v0 + 448);
      v33 = *(v0 + 424);
      v34 = sub_1ADCE0(v28);
      [v22 v20[225]];

      v35 = v20;
      v36 = *(v0 + 136);
      v37 = *(v0 + 144);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 112), v36);
      v38 = sub_1AF4C4();
      v39 = *(v37 + 32);
      v40 = v37;
      v20 = v35;
      v41 = v39(v33, v38, v32, v36, v40);

      [v22 v35[225]];

      v42 = objc_allocWithZone(NSAttributedString);
      v43 = sub_30C098();
      v44 = [v42 initWithString:v43];

      v13 = v56;
      [v56 v35[225]];

      v8 = v57;
      if (v58 == v57[2] - 1)
      {
        v45 = sub_1ADCE0(26.0);
        [v22 v35[225]];
      }

      v10 = v59 + 1;
      [v56 v20[225]];

      v7 = &qword_4063E8;
      v1 = &unk_328B58;
      sub_EB68(v0 + 104, &qword_4063E8);
      v19 = v60 + 88;
      v11 = v54;
      if (v55 == v59 + 1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_1753F4((v12 > 1), v1, 1);
    v11 = v61;
  }

LABEL_25:

  v46 = *(v0 + 8);

  return v46(v13);
}

uint64_t sub_1AEC8C()
{
  v1[2] = v0;
  v2 = sub_303698();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079E8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for ParagraphViewModel();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_304058();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1AEE4C, 0, 0);
}

uint64_t sub_1AEE4C()
{
  (*(v0[13] + 104))(v0[14], enum case for TranscriptSentenceSplittingBehavior.doNotSplit(_:), v0[12]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1AEF10;
  v2 = v0[14];

  return TranscriptModel.createParagraphs(splittingBehavior:includeShortDescriptors:)(v2, 1);
}

uint64_t sub_1AEF10(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1AF070, 0, 0);
}

uint64_t sub_1AF070()
{
  v1 = v0;
  v2 = v0[16];
  v3 = *(v2 + 16);
  if (!v3)
  {

LABEL_21:

    v34 = v1[1];

    return v34(_swiftEmptyArrayStorage);
  }

  v40 = v0[9];
  v37 = v0[6];
  v38 = v0[10];
  v4 = v0[4];

  result = sub_1753B0(0, v3, 0);
  v6 = 0;
  v41 = *(v2 + 16);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v36 = v4;
  v35 = (v4 + 8);
  v44 = v7;
  v39 = v2;
  while (v41 != v6)
  {
    if (v6 >= *(v2 + 16))
    {
      goto LABEL_25;
    }

    v8 = *(v37 + 48);
    v9 = v1;
    v10 = v1[8];
    v11 = v9[7];
    v12 = v9[3];
    v42 = *(v36 + 72);
    v13 = *(v36 + 16);
    v13(v10 + v8, v7 + v42 * v6, v12);
    *v11 = v6;
    v14 = *(v37 + 48);
    v15 = v10 + v8;
    v1 = v9;
    (*(v36 + 32))(&v11[v14], v15, v12);
    v16 = v9[3];
    if (v6)
    {
      v17 = v44 + v42 * (v6 - 1);
      v43 = v13;
      v13(v9[5], v17, v16);
      v18 = sub_303678();
      if (!v19)
      {
        goto LABEL_15;
      }

      v20 = v18;
      v21 = v19;
      v22 = sub_303678();
      if (!v23)
      {

LABEL_15:
        v29 = v9[5];
        v30 = v9[3];
        v43(v9[11], &v11[v14], v30);
        v1 = v9;
        sub_303638();
        (*v35)(v29, v30);
        goto LABEL_16;
      }

      if (v20 == v22 && v21 == v23)
      {
      }

      else
      {
        v24 = sub_30D728();

        if ((v24 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v25 = v9[11];
      v26 = v9[3];
      (*v35)(v9[5], v26);
      v43(v25, &v11[v14], v26);
      v27 = *(v40 + 20);
      v28 = sub_303628();
      (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
    }

    else
    {
      v13(v9[11], &v11[v14], v16);
      sub_303638();
    }

LABEL_16:
    sub_EB68(v1[7], &qword_4079E8);
    v32 = _swiftEmptyArrayStorage[2];
    v31 = _swiftEmptyArrayStorage[3];
    if (v32 >= v31 >> 1)
    {
      sub_1753B0(v31 > 1, v32 + 1, 1);
    }

    v33 = v1[11];
    ++v6;
    _swiftEmptyArrayStorage[2] = v32 + 1;
    result = sub_1B0C6C(v33, _swiftEmptyArrayStorage + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32);
    v2 = v39;
    v7 = v44;
    if (v3 == v6)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1AF4C4()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v0 setLineSpacing:2.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_32A8F0;
  *(inited + 32) = NSFontAttributeName;
  v2 = NSFontAttributeName;
  sub_1AF6EC();
  v4 = v3;
  v5 = sub_124C4(0, &qword_408100);
  *(inited + 40) = v4;
  *(inited + 64) = v5;
  *(inited + 72) = NSForegroundColorAttributeName;
  v6 = objc_opt_self();
  v7 = NSForegroundColorAttributeName;
  v8 = [v6 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = sub_124C4(0, &qword_3FFD48);
  *(inited + 80) = v9;
  *(inited + 104) = v10;
  *(inited + 112) = NSParagraphStyleAttributeName;
  *(inited + 144) = sub_124C4(0, &qword_4079D0);
  *(inited + 120) = v0;
  v11 = NSParagraphStyleAttributeName;
  v12 = v0;
  *(inited + 152) = sub_30CAC8();
  v13 = sub_304048();
  *(inited + 184) = v13;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 160));
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for TranscriptSelectionContentType.text(_:), v13);
  v15 = sub_2D6CB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  swift_arrayDestroy();

  return v15;
}

void sub_1AF6EC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = &UIFontTextStyleTitle2;
  if (v1 != &dword_4 + 1)
  {
    v2 = &UIFontTextStyleBody;
  }

  v3 = *v2;
  v4 = [objc_opt_self() _preferredFontForTextStyle:v3 design:UIFontDescriptorSystemDesignSerif weight:UIFontWeightRegular];

  if (!v4)
  {
    __break(1u);
  }
}

Swift::Int sub_1AF7B4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF870(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1AF898(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1AF898(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_30D6C8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401000);
        v5 = sub_30C3B8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AFBCC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AF9A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AF9A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = *a4 + 40 * a3;
    v5 = result - a3;
LABEL_5:
    v21 = v4;
    v22 = a3;
    v20 = v5;
    v6 = v5;
    while (1)
    {
      v27 = v6;
      sub_12670(v4, &v31);
      v26 = (v4 - 40);
      sub_12670(v4 - 40, v28);
      v7 = v32;
      v8 = v33;
      v9 = (v33 + 8);
      __swift_project_boxed_opaque_existential_1Tm(&v31, v32);
      v25 = *v9;
      v10 = (*v9)(v7, v8);
      v11 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v24 = *(v12 + 8);
      if (v10 == v24(v11, v12))
      {
        v13 = v32;
        __swift_project_boxed_opaque_existential_1Tm(&v31, v32);
        v14 = sub_1B7FB0(v13);
        v15 = v29;
        __swift_project_boxed_opaque_existential_1Tm(v28, v29);
        v16 = v14 < sub_1B7FB0(v15);
      }

      else
      {
        v17 = v25(v7, v8);
        v16 = v17 < v24(v11, v12);
      }

      __swift_destroy_boxed_opaque_existential_1(v28);
      result = __swift_destroy_boxed_opaque_existential_1(&v31);
      if (!v16)
      {
LABEL_4:
        a3 = v22 + 1;
        v4 = v21 + 40;
        v5 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      sub_12658(v4, &v31);
      v18 = *(v4 - 24);
      *v4 = *v26;
      *(v4 + 16) = v18;
      *(v4 + 32) = *(v4 - 8);
      result = sub_12658(&v31, v26);
      v4 -= 40;
      v6 = v27 + 1;
      if (v27 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AFBCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v122 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_99:
    v9 = *v122;
    if (!*v122)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_131:
      result = sub_1B0B98(v8);
      v8 = result;
    }

    v151 = v8;
    v115 = *(v8 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v8[16 * v115];
        v117 = *&v8[16 * v115 + 24];
        sub_1B05EC((*a3 + 40 * v116), (*a3 + 40 * *&v8[16 * v115 + 16]), *a3 + 40 * v117, v9);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B98(v8);
        }

        if (v115 - 2 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v118 = &v8[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v151 = v8;
        result = sub_1B0B0C(v115 - 1);
        v8 = v151;
        v115 = *(v151 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_135;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7 + 1;
    v131 = v8;
    v124 = v7;
    if ((v7 + 1) < v6)
    {
      v10 = v7;
      v125 = v6;
      v120 = v5;
      v11 = *a3;
      v129 = v7 + 1;
      sub_12670(*a3 + 40 * v9, &v148);
      v142 = v11;
      sub_12670(v11 + 40 * v10, v145);
      v12 = v149;
      v13 = v150;
      v14 = (v150 + 8);
      __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
      v139 = *v14;
      v15 = (*v14)(v12, v13);
      v17 = v146;
      v16 = v147;
      __swift_project_boxed_opaque_existential_1Tm(v145, v146);
      v18 = *(v16 + 8);
      if (v15 == v18(v17, v16))
      {
        v19 = v149;
        __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
        v20 = sub_1B7FB0(v19);
        v21 = v146;
        __swift_project_boxed_opaque_existential_1Tm(v145, v146);
        v22 = v20 < sub_1B7FB0(v21);
      }

      else
      {
        v23 = v139(v12, v13);
        v22 = v23 < v18(v17, v16);
      }

      v127 = v22;
      __swift_destroy_boxed_opaque_existential_1(v145);
      result = __swift_destroy_boxed_opaque_existential_1(&v148);
      v24 = (v124 + 2);
      v25 = v142 + 40 * v124 + 80;
      v26 = 40 * v124 + 40;
      v27 = v129;
      do
      {
        v9 = v24;
        v31 = v27;
        v30 = v26;
        if (v24 >= v125)
        {
          break;
        }

        v137 = v27;
        v140 = v26;
        v143 = v24;
        sub_12670(v25, &v148);
        sub_12670(v25 - 40, v145);
        v33 = v149;
        v32 = v150;
        v34 = (v150 + 8);
        __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
        v136 = *v34;
        v35 = (*v34)(v33, v32);
        v36 = v146;
        v37 = v147;
        __swift_project_boxed_opaque_existential_1Tm(v145, v146);
        v133 = *(v37 + 8);
        if (v35 == v133(v36, v37))
        {
          v38 = v149;
          __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
          v39 = sub_1B7FB0(v38);
          v40 = v146;
          __swift_project_boxed_opaque_existential_1Tm(v145, v146);
          v29 = v39 < sub_1B7FB0(v40);
        }

        else
        {
          v28 = v136(v33, v32);
          v29 = v28 < v133(v36, v37);
        }

        v8 = v131;
        __swift_destroy_boxed_opaque_existential_1(v145);
        result = __swift_destroy_boxed_opaque_existential_1(&v148);
        v30 = v140;
        v9 = v143;
        v24 = v143 + 1;
        v25 += 40;
        v31 = v137;
        v27 = v137 + 1;
        v26 = v140 + 40;
      }

      while (v127 == v29);
      if (v127)
      {
        v41 = v124;
        v5 = v120;
        if (v9 < v124)
        {
          goto LABEL_128;
        }

        if (v124 < v9)
        {
          v42 = 40 * v124;
          do
          {
            if (v41 != v31)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v43 = v49 + v42;
              v44 = v49 + v30;
              v45 = v42;
              sub_12658((v49 + v42), &v148);
              v46 = *(v44 + 32);
              v47 = *(v44 + 16);
              *v43 = *v44;
              *(v43 + 16) = v47;
              *(v43 + 32) = v46;
              result = sub_12658(&v148, v44);
              v42 = v45;
            }

            ++v41;
            v30 -= 40;
            v42 += 40;
          }

          while (v41 < v31--);
        }
      }

      else
      {
        v5 = v120;
      }
    }

    v50 = a3[1];
    if (v9 >= v50)
    {
      goto LABEL_45;
    }

    if (__OFSUB__(v9, v124))
    {
      goto LABEL_127;
    }

    if (&v9[-v124] >= a4)
    {
LABEL_45:
      v52 = v124;
      goto LABEL_46;
    }

    if (__OFADD__(v124, a4))
    {
      goto LABEL_129;
    }

    if (v124 + a4 >= v50)
    {
      v51 = a3[1];
    }

    else
    {
      v51 = (v124 + a4);
    }

    if (v51 < v124)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v52 = v124;
    if (v9 != v51)
    {
      break;
    }

LABEL_46:
    if (v9 < v52)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_CA96C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v69 = *(v8 + 2);
    v68 = *(v8 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v71 = v5;
      result = sub_CA96C((v68 > 1), v69 + 1, 1, v8);
      v7 = v9;
      v8 = result;
    }

    else
    {
      v7 = v9;
      v71 = v5;
    }

    *(v8 + 2) = v70;
    v72 = &v8[16 * v69];
    *(v72 + 4) = v124;
    *(v72 + 5) = v7;
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v8 + 4);
          v75 = *(v8 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_66:
          if (v77)
          {
            goto LABEL_115;
          }

          v90 = &v8[16 * v70];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_118;
          }

          v96 = &v8[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_122;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v100 = &v8[16 * v70];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_80:
        if (v95)
        {
          goto LABEL_117;
        }

        v103 = &v8[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_120;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_87:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v112 = *&v8[16 * v111 + 32];
        v113 = *&v8[16 * v73 + 40];
        sub_1B05EC((*a3 + 40 * v112), (*a3 + 40 * *&v8[16 * v73 + 32]), *a3 + 40 * v113, v5);
        if (v71)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B98(v8);
        }

        if (v111 >= *(v8 + 2))
        {
          goto LABEL_112;
        }

        v114 = &v8[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        v151 = v8;
        result = sub_1B0B0C(v73);
        v8 = v151;
        v70 = *(v151 + 2);
        v7 = v9;
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v8[16 * v70 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_113;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_114;
      }

      v85 = &v8[16 * v70];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_116;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_119;
      }

      if (v89 >= v81)
      {
        v107 = &v8[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_123;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v6 = a3[1];
    v5 = v71;
    if (v7 >= v6)
    {
      goto LABEL_99;
    }
  }

  v121 = v5;
  v134 = *a3;
  v53 = *a3 + 40 * v9;
  v54 = v124 - v9;
  v123 = v51;
LABEL_36:
  v128 = v53;
  v130 = v9;
  v126 = v54;
  v55 = v54;
  while (1)
  {
    v144 = v55;
    sub_12670(v53, &v148);
    v141 = (v53 - 40);
    sub_12670(v53 - 40, v145);
    v57 = v149;
    v56 = v150;
    v58 = (v150 + 8);
    __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
    v138 = *v58;
    v59 = (*v58)(v57, v56);
    v60 = v146;
    v61 = v147;
    __swift_project_boxed_opaque_existential_1Tm(v145, v146);
    v135 = *(v61 + 8);
    if (v59 == v135(v60, v61))
    {
      v62 = v149;
      __swift_project_boxed_opaque_existential_1Tm(&v148, v149);
      v63 = sub_1B7FB0(v62);
      v64 = v146;
      __swift_project_boxed_opaque_existential_1Tm(v145, v146);
      v65 = v63 < sub_1B7FB0(v64);
    }

    else
    {
      v66 = v138(v57, v56);
      v65 = v66 < v135(v60, v61);
    }

    __swift_destroy_boxed_opaque_existential_1(v145);
    result = __swift_destroy_boxed_opaque_existential_1(&v148);
    if (!v65)
    {
LABEL_35:
      v9 = v130 + 1;
      v53 = v128 + 40;
      v54 = v126 - 1;
      if (v130 + 1 != v123)
      {
        goto LABEL_36;
      }

      v9 = v123;
      v5 = v121;
      v8 = v131;
      goto LABEL_45;
    }

    if (!v134)
    {
      break;
    }

    sub_12658(v53, &v148);
    v67 = *(v53 - 24);
    *v53 = *v141;
    *(v53 + 16) = v67;
    *(v53 + 32) = *(v53 - 8);
    sub_12658(&v148, v141);
    v53 -= 40;
    v55 = v144 + 1;
    if (v144 == -1)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1B05EC(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v53 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v57 = __src;
      v29 = v7;
      v63 = v4;
      do
      {
        __dsta = v29;
        v30 = (v29 - 40);
        v31 = (v53 - 40);
        v32 = v5 - 40;
        v52 = v29 - 40;
        while (1)
        {
          v61 = v32;
          sub_12670(v31, v67);
          sub_12670(v30, v64);
          v36 = v68;
          v35 = v69;
          v37 = (v69 + 8);
          __swift_project_boxed_opaque_existential_1Tm(v67, v68);
          v56 = *v37;
          v38 = (*v37)(v36, v35);
          v39 = v65;
          v40 = v66;
          __swift_project_boxed_opaque_existential_1Tm(v64, v65);
          v54 = *(v40 + 8);
          if (v38 == v54(v39, v40))
          {
            v41 = v68;
            __swift_project_boxed_opaque_existential_1Tm(v67, v68);
            v42 = sub_1B7FB0(v41);
            v43 = v65;
            __swift_project_boxed_opaque_existential_1Tm(v64, v65);
            v44 = v42 < sub_1B7FB0(v43);
          }

          else
          {
            v45 = v56(v36, v35);
            v44 = v45 < v54(v39, v40);
          }

          __swift_destroy_boxed_opaque_existential_1(v64);
          __swift_destroy_boxed_opaque_existential_1(v67);
          v5 = v61;
          v4 = v63;
          if (v44)
          {
            break;
          }

          if (v61 + 40 != v31 + 40)
          {
            v46 = *v31;
            v47 = *(v31 + 16);
            *(v61 + 32) = *(v31 + 32);
            *v61 = v46;
            *(v61 + 16) = v47;
          }

          v33 = v31 - 40;
          v32 = v61 - 40;
          v34 = v31 > v63;
          v31 -= 40;
          v30 = v52;
          if (!v34)
          {
            v53 = (v33 + 40);
            v7 = __dsta;
            goto LABEL_39;
          }
        }

        v7 = v52;
        if ((v61 + 40) != __dsta)
        {
          v48 = *v52;
          v49 = *(v52 + 1);
          *(v61 + 32) = *(v52 + 4);
          *v61 = v48;
          *(v61 + 16) = v49;
        }

        v53 = (v31 + 40);
        if (v31 + 40 <= v63)
        {
          break;
        }

        v29 = v52;
      }

      while (v52 > v57);
      v53 = (v31 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v53 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      v60 = v5;
      while (1)
      {
        __dst = v7;
        sub_12670(v7, v67);
        v62 = v4;
        sub_12670(v4, v64);
        v13 = v68;
        v14 = v69;
        v15 = (v69 + 8);
        __swift_project_boxed_opaque_existential_1Tm(v67, v68);
        v55 = *v15;
        v16 = (*v15)(v13, v14);
        v17 = v65;
        v18 = v66;
        __swift_project_boxed_opaque_existential_1Tm(v64, v65);
        v19 = *(v18 + 8);
        if (v16 == v19(v17, v18))
        {
          v20 = v68;
          __swift_project_boxed_opaque_existential_1Tm(v67, v68);
          v21 = sub_1B7FB0(v20);
          v22 = v65;
          __swift_project_boxed_opaque_existential_1Tm(v64, v65);
          v23 = v21 < sub_1B7FB0(v22);
        }

        else
        {
          v24 = v55(v13, v14);
          v23 = v24 < v19(v17, v18);
        }

        __swift_destroy_boxed_opaque_existential_1(v64);
        __swift_destroy_boxed_opaque_existential_1(v67);
        v4 = v62;
        v7 = __dst;
        if (!v23)
        {
          break;
        }

        v25 = __dst;
        v7 = __dst + 40;
        if (__src != __dst)
        {
          goto LABEL_15;
        }

LABEL_16:
        __src += 40;
        if (v4 >= v53 || v7 >= v60)
        {
          goto LABEL_18;
        }
      }

      v25 = v62;
      v4 = v62 + 40;
      if (__src == v62)
      {
        goto LABEL_16;
      }

LABEL_15:
      v26 = *v25;
      v27 = *(v25 + 1);
      *(__src + 4) = *(v25 + 4);
      *__src = v26;
      *(__src + 1) = v27;
      goto LABEL_16;
    }

LABEL_18:
    v7 = __src;
  }

LABEL_39:
  v50 = (v53 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v50])
  {
    memmove(v7, v4, 40 * v50);
  }

  return 1;
}

uint64_t sub_1B0B0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B98(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C10(uint64_t a1)
{
  v2 = type metadata accessor for ParagraphViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B0CD0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 beginningOfDocument];
  v6 = [v2 positionFromPosition:v5 offset:a1];

  if (!v6)
  {
    return 0;
  }

  result = [v2 beginningOfDocument];
  if (!__OFADD__(a1, a2))
  {
    v8 = result;
    v9 = [v2 positionFromPosition:result offset:a1 + a2];

    if (v9)
    {
      v10 = [v2 textRangeFromPosition:v6 toPosition:v9];

      return v10;
    }

    return 0;
  }

  __break(1u);
  return result;
}

double sub_1B0DD8(void *a1)
{
  v3 = sub_309998();
  v4 = __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1, v4);
  v8 = objc_allocWithZone(type metadata accessor for TextAttachmentHostingView());

  v9 = sub_1B1030(v6);

  [a1 textContainerInset];
  v11 = v10;
  [a1 textContainerInset];
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = [a1 textContainer];
  [v14 lineFragmentPadding];
  v16 = v15;

  [a1 bounds];
  Width = CGRectGetWidth(v22);
  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1132068864;
  [v9 systemLayoutSizeFittingSize:Width - (v13 + v16 + v13 + v16) withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v18, v19}];

  return 0.0;
}

unint64_t sub_1B0FB0(uint64_t a1)
{
  result = sub_1B0FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0FD8()
{
  result = qword_4040D8;
  if (!qword_4040D8)
  {
    sub_309998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4040D8);
  }

  return result;
}

char *sub_1B1030(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  type metadata accessor for PodcastsUIKitSwiftUIBridge();
  swift_allocObject();

  v8 = sub_1AAE00(v7, 0, 0);
  sub_1B8D04(v8, v6);

  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4079F8));
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25TextAttachmentHostingView_hostingView] = sub_305448();
  v33.receiver = v1;
  v33.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews25TextAttachmentHostingView_hostingView;
  v12 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews25TextAttachmentHostingView_hostingView];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *&v10[v11];
  v15 = v13;
  [v15 addSubview:v14];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_31D480;
  v18 = [*&v10[v11] leadingAnchor];
  v19 = [v15 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [*&v10[v11] trailingAnchor];
  v22 = [v15 trailingAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v17 + 40) = v23;
  v24 = [*&v10[v11] topAnchor];
  v25 = [v15 topAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v17 + 48) = v26;
  v27 = [*&v10[v11] bottomAnchor];
  v28 = [v15 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v17 + 56) = v29;
  sub_91304();
  isa = sub_30C358().super.isa;

  [v16 activateConstraints:isa];

  v31 = sub_309998();
  (*(*(v31 - 8) + 8))(a1, v31);
  return v15;
}

uint64_t sub_1B13F8@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v62 = sub_30B168();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v63 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v2 - 8);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A08);
  __chkstk_darwin(v72);
  v65 = &v58 - v7;
  v8 = sub_3031C8();
  v59 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A10);
  __chkstk_darwin(v75);
  v76 = &v58 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A18);
  __chkstk_darwin(v69);
  v70 = &v58 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A20);
  __chkstk_darwin(v74);
  v71 = &v58 - v12;
  v13 = sub_306938();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A28);
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A30);
  __chkstk_darwin(v68);
  v22 = &v58 - v21;
  v23 = sub_303DA8();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v27, v73, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for Chapter.Artwork.data(_:))
  {
    (*(v24 + 96))(v27, v23);
    v29 = *v27;
    v30 = v27[1];
    v31 = objc_allocWithZone(UIImage);
    sub_1B25A4(v29, v30);
    isa = sub_301CC8().super.isa;
    v33 = [v31 initWithData:isa];

    sub_45264(v29, v30);
    v34 = 1;
    if (v33)
    {
      v35 = v33;
      sub_306918();
      (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
      v73 = sub_306968();

      (*(v14 + 8))(v16, v13);
      v36 = v66;
      v37 = &v20[*(v66 + 36)];
      v38 = *(sub_3055F8() + 20);
      v39 = enum case for RoundedCornerStyle.continuous(_:);
      v40 = sub_305B68();
      (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
      __asm { FMOV            V0.2D, #10.0 }

      *v37 = _Q0;
      *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)] = 256;
      *v20 = v73;
      *(v20 + 1) = 0x3FF0000000000000;
      v20[16] = 0;
      *(v20 + 17) = 1;
      v20[19] = 0;
      sub_1B25F8(v20, v22);
      v34 = 0;
    }

    else
    {
      v36 = v66;
    }

    (*(v67 + 56))(v22, v34, 1, v36);
    sub_EB00(v22, v70, &qword_407A30);
    swift_storeEnumTagMultiPayload();
    sub_1B2138();
    sub_1B2358();
    v57 = v71;
    sub_305D48();
    sub_EB00(v57, v76, &qword_407A20);
    swift_storeEnumTagMultiPayload();
    sub_1B20AC();
    sub_305D48();
    sub_45264(v29, v30);
    sub_EB68(v57, &qword_407A20);
    return sub_EB68(v22, &qword_407A30);
  }

  else if (v28 == enum case for Chapter.Artwork.model(_:))
  {
    (*(v24 + 96))(v27, v23);
    v46 = v64;
    sub_6D85C(v27, v64);
    sub_6D8C0(v46, v6);
    (*(v59 + 56))(v6, 0, 1, v8);
    v47 = sub_303DF8();
    (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v61 + 104))(v63, enum case for Artwork.Sizing.autosizing(_:), v62);
    sub_306C38();
    v48 = v65;
    sub_30B188();
    v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A80) + 36);
    *v49 = 0x3FF0000000000000;
    *(v49 + 8) = 256;
    *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A70) + 36)) = 0;
    v50 = (v48 + *(v72 + 36));
    v51 = *(sub_3055F8() + 20);
    v52 = enum case for RoundedCornerStyle.continuous(_:);
    v53 = sub_305B68();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #10.0 }

    *v50 = _Q0;
    *&v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)] = 256;
    sub_EB00(v48, v70, &qword_407A08);
    swift_storeEnumTagMultiPayload();
    sub_1B2138();
    sub_1B2358();
    v55 = v71;
    sub_305D48();
    sub_EB00(v55, v76, &qword_407A20);
    swift_storeEnumTagMultiPayload();
    sub_1B20AC();
    sub_305D48();
    sub_EB68(v55, &qword_407A20);
    sub_EB68(v48, &qword_407A08);
    return sub_6D924(v46);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1B20AC();
    sub_305D48();
    return (*(v24 + 8))(v27, v23);
  }
}

double sub_1B1F44(void *a1)
{
  [a1 textContainerInset];
  [a1 textContainerInset];
  v2 = [a1 textContainer];
  [v2 lineFragmentPadding];

  [a1 bounds];
  CGRectGetWidth(v4);
  return 0.0;
}

uint64_t sub_1B1FEC(uint64_t a1)
{
  result = sub_1B255C(&qword_407A00, type metadata accessor for ChapterArtworkView);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ChapterArtworkView()
{
  result = qword_407AE0;
  if (!qword_407AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B20AC()
{
  result = qword_407A38;
  if (!qword_407A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A20);
    sub_1B2138();
    sub_1B2358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A38);
  }

  return result;
}

unint64_t sub_1B2138()
{
  result = qword_407A40;
  if (!qword_407A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A30);
    sub_1B21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A40);
  }

  return result;
}

unint64_t sub_1B21BC()
{
  result = qword_407A48;
  if (!qword_407A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A28);
    sub_1B2260();
    sub_1B2304(&qword_3FC4D8, &qword_3FC4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A48);
  }

  return result;
}

unint64_t sub_1B2260()
{
  result = qword_407A50;
  if (!qword_407A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A58);
    sub_1083BC();
    sub_1B2304(&qword_3FD010, &qword_3FD018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A50);
  }

  return result;
}

uint64_t sub_1B2304(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1B2358()
{
  result = qword_407A60;
  if (!qword_407A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A08);
    sub_1B23FC();
    sub_1B2304(&qword_3FC4D8, &qword_3FC4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A60);
  }

  return result;
}

unint64_t sub_1B23FC()
{
  result = qword_407A68;
  if (!qword_407A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A70);
    sub_1B24A0();
    sub_1B2304(&qword_3FD010, &qword_3FD018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A68);
  }

  return result;
}

unint64_t sub_1B24A0()
{
  result = qword_407A78;
  if (!qword_407A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407A80);
    sub_1B255C(&qword_401F00, &type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407A78);
  }

  return result;
}

uint64_t sub_1B255C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B25A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B25F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407A28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B267C(uint64_t a1, uint64_t a2)
{
  v4 = sub_303DA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B26FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_303DA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B276C()
{
  result = sub_303DA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B27DC()
{
  result = qword_407B18;
  if (!qword_407B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_407B20);
    sub_1B20AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_407B18);
  }

  return result;
}

uint64_t sub_1B2950()
{
  v0 = sub_3040F8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3040E8();
  v4 = sub_3040C8();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_429550 = v4;
  *algn_429558 = v6;
  return result;
}

uint64_t sub_1B2A68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  *a4 = result;
  return result;
}

uint64_t sub_1B2AB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BE0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_407B68 = result;
  return result;
}

uint64_t sub_1B2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_12670(a4, v9);
  v9[5] = a5;

  return sub_184428(v9, a2, a3);
}

void sub_1B2B78(uint64_t a1, void *a2, Swift::Int a3, Swift::Int a4)
{
  if (*(*a1 + 16) && (sub_191D34(a2), (v8 & 1) != 0))
  {
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  v14 = v9;

  sub_1927D4(&v13, a3, a4);

  v10 = v14;
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  sub_2965F0(v10, v11, isUniquelyReferenced_nonNull_native);

  *a1 = v13;
}

void sub_1B2C58(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v3;
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_191D34(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10 + 56;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 56);
    v15 = (v12 + 63) >> 6;
    v21 = a3;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v14)
    {
      while (1)
      {
        v22 = v5;
        v17 = v16;
LABEL_11:
        v18 = qword_3FAC10;

        if (v18 != -1)
        {
          v19 = swift_once();
        }

        v4 = qword_407B58;
        __chkstk_darwin(v19);

        os_unfair_lock_lock((v4 + 24));
        sub_1B3C78((v4 + 16));
        if (v22)
        {
          break;
        }

        v5 = 0;
        v14 &= v14 - 1;
        os_unfair_lock_unlock((v4 + 24));

        v16 = v17;
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v15)
        {

          v20 = 0;
          a3 = v21;
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * v17);
        ++v16;
        if (v14)
        {
          v22 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    os_unfair_lock_unlock((v4 + 24));
    __break(1u);
  }

  else
  {
    v20 = 1;
LABEL_18:
    *a3 = v20;
  }
}

uint64_t sub_1B2E4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19182C(a2, a3);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a1;
    v13 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_298188();
      v8 = v13;
    }

    v9 = (*(v8 + 56) + 48 * v6);
    v11 = v9[1];
    v10 = v9[2];
    v14 = *v9;
    v15 = v11;
    v16 = v10;
    sub_1B47E4(v6, v8);
    *a1 = v8;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  return sub_1B3C94(&v14);
}

void sub_1B2F14()
{
  v1 = v0;
  v2 = sub_30C128();
  v3 = [v0 textAttachment];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 contents];

    if (v5)
    {
      v6 = sub_301CD8();
      v8 = v7;

      sub_30C118();
      v9 = sub_30C0F8();
      if (v10)
      {
        if (qword_3FAC10 != -1)
        {
          v23 = v9;
          swift_once();
          v9 = v23;
        }

        v11 = qword_407B58;
        __chkstk_darwin(v9);
        *(&v24 - 2) = v12;
        *(&v24 - 1) = v13;

        os_unfair_lock_lock((v11 + 24));
        sub_1B4EC8((v11 + 16), &v25);
        os_unfair_lock_unlock((v11 + 24));

        if (*(&v26 + 1))
        {
          v28[1] = v26;
          v28[2] = v27;
          v28[0] = v25;
          v14 = __swift_project_boxed_opaque_existential_1Tm(v28, *(&v26 + 1));
          v15 = __chkstk_darwin(v14);
          (*(v17 + 16))(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
          v18 = sub_306B08();
          type metadata accessor for PodcastsUIKitSwiftUIBridge();
          swift_allocObject();

          v20 = sub_1AAE00(v19, 0, 0);
          sub_1B90AC(v20, v18, &v25);

          v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BD8));
          v22 = sub_305448();
          [v1 setView:v22];
          sub_45264(v6, v8);

          sub_1B4CEC(v28);
        }

        else
        {
          sub_45264(v6, v8);
          sub_1B3C94(&v25);
        }
      }

      else
      {
        sub_45264(v6, v8);
      }
    }
  }
}

double sub_1B32B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_19182C(a2, a3);
    if (v7)
    {
      sub_1B4D1C(*(v5 + 56) + 48 * v6, a4);
    }

    else
    {
      result = 0.0;
      a4[1] = 0u;
      a4[2] = 0u;
      *a4 = 0u;
    }
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_1B3338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v28 = result;
  v26 = v11;
  while (v10)
  {
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(result + 56) + v16);
    if (*(v17 + 16))
    {
      v18 = *(*(result + 48) + v16);
      sub_30D7F8();
      v29 = v18;

      sub_30C1F8();
      v19 = sub_30D858();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v17 + 48) + 16 * v21);
          v24 = *v23 == a2 && v23[1] == a3;
          if (v24 || (sub_30D728() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v25 = v29;
LABEL_22:
        *a4 = v25;
        return result;
      }

LABEL_19:

      result = v28;
      v11 = v26;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v25 = 0;
      goto LABEL_22;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B35A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_30C128();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;

  sub_30C118();
  v11 = sub_30C0E8();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v15.super.isa = sub_301CC8().super.isa;
    sub_1B4D54(v11, v13);
    if (qword_3FAC08 != -1)
    {
      swift_once();
    }

    v16 = sub_30C098();
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v18, "initWithData:ofType:", v15.super.isa, v16);

    return v17;
  }

  return result;
}

uint64_t sub_1B38CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_191BF4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_297428();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_307048();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_3071E8();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1B3E6C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_3071E8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1B3A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_19182C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29777C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
    v19 = *(v12 - 8);
    sub_1B4D68(v11 + *(v19 + 72) * v8, a3);
    sub_1B416C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1B3BC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_19182C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_298188();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 48 * v8);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    a3[2] = v11[2];
    sub_1B47E4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1B3C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3CFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_30D7E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B3E6C(int64_t a1, uint64_t a2)
{
  v4 = sub_307048();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_30D498();
    v13 = v11;
    v41 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v42 = *(v14 + 56);
    v39 = (v14 - 8);
    v40 = v15;
    do
    {
      v16 = v8;
      v17 = v42 * v10;
      v18 = v13;
      v19 = v14;
      v40(v7, *(a2 + 48) + v42 * v10, v4);
      sub_1B4DCC();
      v20 = sub_30BFC8();
      (*v39)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v41)
      {
        if (v21 >= v41 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v42 * a1;
          v26 = v24 + v17 + v42;
          v27 = v42 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          v29 = *(*(sub_3071E8() - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v10;
          v33 = v28 + v29 * v10 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v16;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v35 = v30 == v32;
            v8 = v16;
            v13 = v18;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v41 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

unint64_t sub_1B416C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    while (1)
    {
      sub_30D7F8();

      sub_30C1F8();
      v9 = sub_30D858();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4358(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_30D7E8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B44D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_30D7E8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 48 * v3);
          v19 = (v17 + 48 * v6);
          if (v3 != v6 || v18 >= v19 + 3)
          {
            v9 = *v19;
            v10 = v19[2];
            v18[1] = v19[1];
            v18[2] = v10;
            *v18 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1B4650(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_30D7F8();
      sub_30D808(v9);
      result = sub_30D858();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B47E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_30D498() + 1) & ~v5;
    do
    {
      sub_30D7F8();

      sub_30C1F8();
      v11 = sub_30D858();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

double sub_1B49A0()
{
  v1 = v0;
  v2 = sub_30C128();
  v3 = [v0 contents];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = sub_301CD8();
    v8 = v7;

    sub_30C118();
    v9 = sub_30C0F8();
    if (v10)
    {
      if (qword_3FAC10 != -1)
      {
        v22 = v9;
        swift_once();
        v9 = v22;
      }

      v11 = qword_407B58;
      __chkstk_darwin(v9);
      *&v23[-16] = v12;
      *&v23[-8] = v13;

      os_unfair_lock_lock((v11 + 24));
      sub_1B4CB4((v11 + 16), &v24);
      os_unfair_lock_unlock((v11 + 24));

      if (*(&v25 + 1))
      {
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment_identifier];
        v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_905A70485746288452852FB911153C6C18ViewTextAttachment_identifier + 8];
        if (qword_3FAC18 != -1)
        {
          v14 = swift_once();
        }

        v17 = qword_407B60;
        __chkstk_darwin(v14);
        *&v23[-16] = v15;
        *&v23[-8] = v16;

        os_unfair_lock_lock((v17 + 24));
        sub_1B4CD0((v17 + 16), &v24);
        os_unfair_lock_unlock((v17 + 24));
        v18 = v24;

        if (v18)
        {
          v19 = *(&v28 + 1);
          v20 = v29;
          __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
          v4 = (*(v20 + 24))(v18, *(&v29 + 1), v19, v20);
          sub_45264(v6, v8);
        }

        else
        {
          sub_45264(v6, v8);
        }

        sub_1B4CEC(&v27);
      }

      else
      {
        sub_45264(v6, v8);
        sub_1B3C94(&v24);
      }
    }

    else
    {
      sub_45264(v6, v8);
    }
  }

  return v4;
}

uint64_t sub_1B4D54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_45264(a1, a2);
  }

  return a1;
}

uint64_t sub_1B4D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4DCC()
{
  result = qword_40C400;
  if (!qword_40C400)
  {
    sub_307048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C400);
  }

  return result;
}

uint64_t sub_1B4E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t Chapter.topSpacing.getter()
{
  sub_303D98();
  v1 = v0;
  if (v0)
  {

    v2 = 1107296256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

unint64_t Chapter.bottomSpacing.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_303DB8();
  v3 = sub_303DA8();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = v4 == 1;
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1105199104;
  }

  sub_1B5018(v2);
  return v6 | (v5 << 32);
}

uint64_t sub_1B5018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B5080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_303DA8();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_304048();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  v15 = sub_303D98();
  if (v16)
  {
    v41 = v15;
    v43 = a3;
    v52 = a2;

    v17 = sub_1B55A8();
    v51 = sub_D8184();
    *&v50 = v17;
    sub_1DA94(&v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = a2;
    v48 = a2;
    sub_295508(v49, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    v19 = v48;
    if (qword_3FAC28 != -1)
    {
      swift_once();
    }

    v20 = qword_4295A8;
    sub_303DD8();
    v22 = v21;
    v24 = v23;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
    *&v50 = v22;
    *(&v50 + 1) = v24;
    sub_1DA94(&v50, v49);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v19;
    sub_295508(v49, v20, v25);
    v52 = v48;
    v26 = enum case for TranscriptSelectionContentType.ChapterContentType.title(_:);
    v27 = sub_304018();
    (*(*(v27 - 8) + 104))(v13, v26, v27);
    (*(v11 + 104))(v13, enum case for TranscriptSelectionContentType.chapter(_:), v10);
    sub_30BFA8();
    (*(v11 + 8))(v13, v10);
    v28 = objc_allocWithZone(NSAttributedString);
    v29 = sub_30C098();

    type metadata accessor for Key(0);
    sub_CFA40();
    isa = sub_30BF88().super.isa;

    v31 = [v28 initWithString:v29 attributes:isa];

    [v14 appendAttributedString:v31];
    a2 = v42;
    a3 = v43;
  }

  sub_303DB8();
  v33 = v46;
  v32 = v47;
  if ((*(v46 + 48))(v7, 1, v47) == 1)
  {
    sub_1B5018(v7);
  }

  else
  {
    v34 = v44;
    (*(v33 + 32))(v44, v7, v32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_30C098();
    v37 = [v35 initWithString:v36];

    [v14 appendAttributedString:v37];
    v38 = sub_1ADCE0(14.0);
    [v14 appendAttributedString:v38];

    v39 = sub_1B5680(v45, a2, a3);
    [v14 appendAttributedString:v39];

    (*(v33 + 8))(v34, v32);
  }

  return v14;
}

id sub_1B55A8()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v1 = [v0 fontDescriptorWithSymbolicTraits:2];

  if (!v1 || (v2 = [objc_opt_self() fontWithDescriptor:v1 size:0.0]) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  }

  return v2;
}

id sub_1B5680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_304048();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChapterArtworkView();
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  type metadata accessor for TextAttachmentViewProvider();
  v15 = sub_303DA8();
  (*(*(v15 - 8) + 16))(v13, v4, v15);
  v16 = sub_1B7670(v13, a1, a3);
  sub_1B5944(v13);
  v17 = enum case for TranscriptSelectionContentType.ChapterContentType.image(_:);
  v18 = sub_304018();
  (*(*(v18 - 8) + 104))(v10, v17, v18);
  (*(v8 + 104))(v10, enum case for TranscriptSelectionContentType.chapter(_:), v7);
  v19 = v16;
  sub_30BFB8();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for Key(0);
  sub_CFA40();
  isa = sub_30BF88().super.isa;

  v21 = [objc_opt_self() attributedStringWithAttachment:v19 attributes:isa];

  [v14 appendAttributedString:v21];
  return v14;
}

uint64_t sub_1B5944(uint64_t a1)
{
  v2 = type metadata accessor for ChapterArtworkView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B59A0(uint64_t a1, void *a2, void *a3, id a4, uint64_t a5)
{
  v113 = a5;
  v139 = a3;
  v118 = a2;
  v115 = sub_303658();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v109 - v9;
  v11 = sub_303608();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v140 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407BF8);
  __chkstk_darwin(v112);
  v117 = &v109 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C00);
  __chkstk_darwin(v15 - 8);
  v111 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v116 = &v109 - v18;
  __chkstk_darwin(v19);
  v21 = &v109 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C08);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v119 = (&v109 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_407C10);
  __chkstk_darwin(v25 - 8);
  v27 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v134 = &v109 - v29;
  v131 = a1;
  v30 = sub_303648();
  v31 = 0;
  v120 = v30;
  v32 = *(v30 + 16);
  v129 = v12 + 16;
  v132 = (v23 + 48);
  v133 = (v23 + 56);
  v128 = (v12 + 32);
  v122 = (v12 + 56);
  v130 = v12;
  v121 = (v12 + 8);
  v135 = v21;
  v123 = v32;
  v138 = a4;
  v127 = v10;
  v126 = v11;
  v125 = v22;
  v124 = v27;
  while (1)
  {
    if (v31 == v32)
    {
      v40 = 1;
      v137 = v32;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v31 >= *(v120 + 16))
      {
        goto LABEL_45;
      }

      v41 = v31 + 1;
      v42 = v130;
      v43 = v120 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v31;
      v44 = *(v22 + 48);
      v45 = v119;
      *v119 = v31;
      (*(v42 + 16))(v45 + v44, v43, v11);
      sub_34804(v45, v27, &qword_407C08);
      v40 = 0;
      v137 = v41;
    }

    v46 = v134;
    (*v133)(v27, v40, 1, v22);
    sub_34804(v27, v46, &qword_407C10);
    if ((*v132)(v46, 1, v22) == 1)
    {
      v79 = a4;

      v80 = v114;
      v81 = *(v114 + 16);
      v82 = v115;
      v81(v21, v131, v115);
      v83 = v21;
      v84 = *(v80 + 56);
      v85 = 1;
      v84(v83, 0, 1, v82);
      v86 = sub_303668();
      v87 = *(v86 + 16);
      v88 = v116;
      if (v87)
      {
        v81(v116, v86 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * (v87 - 1), v82);
        v85 = 0;
      }

      v84(v88, v85, 1, v82);
      v89 = *(v112 + 48);
      v90 = v135;
      v91 = v117;
      sub_1B6C8C(v135, v117);
      sub_1B6C8C(v88, v91 + v89);
      v92 = *(v80 + 48);
      v93 = v92(v91, 1, v82) == 1;
      v94 = v88;
      v95 = v82;
      if (v93)
      {
        sub_EB68(v94, &qword_407C00);
        v96 = v117;
        sub_EB68(v90, &qword_407C00);
        if (v92(v96 + v89, 1, v82) == 1)
        {
          sub_EB68(v96, &qword_407C00);
          return;
        }
      }

      else
      {
        v97 = v111;
        sub_1B6C8C(v91, v111);
        v98 = v92(v91 + v89, 1, v95);
        if (v98 != 1)
        {
          v104 = v91 + v89;
          v105 = v110;
          (*(v80 + 32))(v110, v104, v95);
          sub_1B6CFC(&qword_407C18, &type metadata accessor for TranscriptModel.Sentence);
          v106 = v91;
          v107 = sub_30C018();
          v108 = *(v80 + 8);
          v108(v105, v95);
          sub_EB68(v116, &qword_407C00);
          sub_EB68(v135, &qword_407C00);
          v108(v97, v95);
          sub_EB68(v106, &qword_407C00);
          v99 = v79;
          if (v107)
          {
            return;
          }

LABEL_39:
          v100 = objc_allocWithZone(NSAttributedString);
          v101 = sub_30C098();
          type metadata accessor for Key(0);
          sub_1B6CFC(&qword_3FB410, type metadata accessor for Key);
          isa = sub_30BF88().super.isa;
          v103 = [v100 initWithString:v101 attributes:isa];

          [v99 appendAttributedString:v103];
          return;
        }

        sub_EB68(v116, &qword_407C00);
        v96 = v117;
        sub_EB68(v135, &qword_407C00);
        (*(v80 + 8))(v97, v95);
      }

      sub_EB68(v96, &qword_407BF8);
      v99 = v79;
      goto LABEL_39;
    }

    v47 = *v46;
    (*v128)(v140, v46 + *(v22 + 48), v11);
    v48 = sub_3035C8();
    v49 = v139;
    if (v48)
    {
      v49 = *v118;
    }

    sub_3035D8();
    sub_3035F8();
    v51 = v50;
    sub_3035E8();
    if (v51 > v52)
    {
      break;
    }

    v53 = v52;
    v136 = v47;
    v54 = qword_3FAC28;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = qword_4295A8;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408040);
    *&v142 = v51;
    *(&v142 + 1) = v53;
    sub_1DA94(&v142, &v141);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = v49;
    v58 = sub_1977EC(v55);
    v59 = v49[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_43;
    }

    v62 = v57;
    if (v49[3] >= v61)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v65 = v144;
        if (v57)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_296B84();
        v65 = v144;
        if (v62)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_292B84(v61, isUniquelyReferenced_nonNull_native);
      v63 = sub_1977EC(v55);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_49;
      }

      v58 = v63;
      v65 = v144;
      if (v62)
      {
LABEL_22:
        v66 = (v65[7] + 32 * v58);
        __swift_destroy_boxed_opaque_existential_1(v66);
        sub_1DA94(&v141, v66);

        goto LABEL_26;
      }
    }

    v65[(v58 >> 6) + 8] |= 1 << v58;
    *(v65[6] + 8 * v58) = v55;
    sub_1DA94(&v141, (v65[7] + 32 * v58));
    v67 = v55;

    v68 = v65[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_46;
    }

    v65[2] = v70;
LABEL_26:
    v71 = objc_allocWithZone(NSAttributedString);
    v72 = sub_30C098();

    type metadata accessor for Key(0);
    sub_1B6CFC(&qword_3FB410, type metadata accessor for Key);
    v73 = sub_30BF88().super.isa;

    v74 = [v71 initWithString:v72 attributes:v73];

    [v138 appendAttributedString:v74];
    v75 = *(sub_303648() + 16);

    v76 = v75 - 1;
    v77 = v136;
    if (v136 >= v76)
    {
      v33 = 1;
      v34 = v127;
      v11 = v126;
    }

    else
    {
      v78 = sub_303648();
      if (v77 < -1)
      {
        goto LABEL_47;
      }

      if ((v77 + 1) >= *(v78 + 16))
      {
        goto LABEL_48;
      }

      v34 = v127;
      v11 = v126;
      (*(v130 + 16))(v127, v78 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * (v77 + 1), v126);

      v33 = 0;
    }

    (*v122)(v34, v33, 1, v11);
    sub_303648();
    v35 = v140;
    sub_30C398();

    v36 = objc_allocWithZone(NSAttributedString);
    v37 = sub_30C098();

    v38 = sub_30BF88().super.isa;
    v39 = [v36 initWithString:v37 attributes:v38];

    a4 = v138;
    [v138 appendAttributedString:v39];

    sub_EB68(v34, &qword_407BF0);
    (*v121)(v35, v11);
    v21 = v135;
    v22 = v125;
    v27 = v124;
    v32 = v123;
    v31 = v137;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  type metadata accessor for Key(0);
  sub_30D778();
  __break(1u);
}