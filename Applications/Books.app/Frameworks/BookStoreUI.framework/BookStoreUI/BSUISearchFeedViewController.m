@interface BSUISearchFeedViewController
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)bc_navBarVisible;
- (BOOL)handleActionForObject:(id)a3 withName:(id)a4 arguments:(id)a5;
- (Class)jsaFeedControllerClass;
- (UIEdgeInsets)navigationBarMetricsLayoutMargins;
- (_TtC11BookStoreUI28BSUISearchFeedViewController)initWithOptions:(id)a3;
- (void)bc_setNavBarVisible:(BOOL)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)feedController:(id)a3 dismissKeyboard:(id)a4;
- (void)feedController:(id)a3 wantsToPresentCardsWithCardArray:(id)a4 focusedIndex:(unint64_t)a5 animated:(BOOL)a6 options:(id)a7 completion:(id)a8;
- (void)feedController:(id)a3 wantsToUpdateSearchText:(id)a4;
- (void)navigationBarItemsDidUpdate:(id)a3 hasItems:(BOOL)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BSUISearchFeedViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BSUISearchFeedViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(BSUIFeedViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  [v7 _updateNavigationLayoutMetrics];
  swift_unknownObjectRelease();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_7A910;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_78E0C(v10, a4, v8, v9);
  sub_77BDC(v8);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_7A910;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_790C0(a3, v6, v7);
  sub_77BDC(v6);
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  v2 = self;
  v3 = [(BSUIFeedViewController *)v2 navigationItem];
  v4 = [(UINavigationItem *)v3 searchController];

  if (v4 && (v5 = [(UISearchController *)v4 presentedViewController], v4, v5))
  {

    return 0;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for BSUISearchFeedViewController();
    v6 = [(BSUISearchFeedViewController *)&v8 bc_analyticsVisibilityOfSelf];
  }

  return v6;
}

- (BOOL)bc_navBarVisible
{
  v2 = self;
  v3 = sub_79464();

  return v3 & 1;
}

- (void)bc_setNavBarVisible:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BSUISearchFeedViewController();
  [(BSUISearchFeedViewController *)&v4 bc_setNavBarVisible:v3];
}

- (Class)jsaFeedControllerClass
{
  sub_66278(0, &unk_3BCFC0);

  return swift_getObjCClassFromMetadata();
}

- (void)feedController:(id)a3 dismissKeyboard:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_7A8E4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_795AC(v8, v6, v7);
  sub_77BDC(v6);
}

- (void)feedController:(id)a3 wantsToPresentCardsWithCardArray:(id)a4 focusedIndex:(unint64_t)a5 animated:(BOOL)a6 options:(id)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
  sub_6620C(&qword_3BC1F8);
  v13 = sub_2C5B28();
  v14 = sub_2C57E8();
  if (v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    v12 = sub_77BEC;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = self;
  sub_798D4(v16, v13, a5, a6, v14, v12, v15);
  sub_77BDC(v12);
}

- (void)feedController:(id)a3 wantsToUpdateSearchText:(id)a4
{
  v5 = sub_2C58C8();
  v7 = v6;
  v9 = self;
  if (sub_79C80(v5, v7))
  {
  }

  else
  {
    v8 = &v9->super.TUIFeedViewController_opaque[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText];
    *v8 = v5;
    v8[1] = v7;
  }
}

- (UIEdgeInsets)navigationBarMetricsLayoutMargins
{
  v2 = self;
  v3 = sub_79FE4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (BOOL)handleActionForObject:(id)a3 withName:(id)a4 arguments:(id)a5
{
  if (a3)
  {
    v8 = a4;
    v9 = a5;
    v10 = self;
    swift_unknownObjectRetain();
    sub_2C6128();
    swift_unknownObjectRelease();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v13 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  memset(v20, 0, sizeof(v20));
  v15 = a4;
  v16 = a5;
  v17 = self;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_2C58C8();
  v13 = v12;

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_2C57E8();

LABEL_8:
  v18 = sub_7A1B0(v20, v11, v13, v14);

  sub_7A844(v20);
  return v18 & 1;
}

- (void)navigationBarItemsDidUpdate:(id)a3 hasItems:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for BSUISearchFeedViewController();
  v6 = a3;
  v7 = v11.receiver;
  [(BSUIFeedViewController *)&v11 navigationBarItemsDidUpdate:v6 hasItems:v4];
  v8 = &v7[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText];
  v9 = *&v7[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText + 8];
  if (v9)
  {
    v10 = *v8;

    LOBYTE(v10) = sub_79C80(v10, v9);

    if (v10)
    {
      *v8 = 0;
      v8[1] = 0;

      return;
    }
  }

  else
  {
  }
}

- (_TtC11BookStoreUI28BSUISearchFeedViewController)initWithOptions:(id)a3
{
  if (a3)
  {
    v3 = sub_2C57E8();
  }

  else
  {
    v3 = 0;
  }

  return BSUISearchFeedViewController.init(options:)(v3);
}

@end