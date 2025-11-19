@interface ProductPageRootViewController
- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4;
- (TUISyncLayoutController)syncLayoutController;
- (UINavigationItem)navigationItem;
- (_TtC25BooksProductPageExtension29ProductPageRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)analyticsTrackerForStoreServices:(id)a3;
- (id)flowControllers;
- (id)objectRegistrationsForBridge:(id)a3;
- (id)windowProviderForBridge:(id)a3;
- (void)setupWithCustomNavigationItem:(id)a3 promptString:(id)a4 askToBuy:(BOOL)a5;
- (void)syncLayoutControllerNeedsFlushing:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ProductPageRootViewController

- (UINavigationItem)navigationItem
{
  v2 = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem];
  if (v2)
  {
    v3 = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for ProductPageRootViewController();
    v3 = [(ProductPageRootViewController *)&v6 navigationItem];
    v2 = 0;
  }

  v4 = v2;

  return v3;
}

- (_TtC25BooksProductPageExtension29ProductPageRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10001FE2C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100008D24(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100009058();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000094AC(a3);
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ProductPageRootViewController();
  v2 = v4.receiver;
  [(ProductPageRootViewController *)&v4 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController];
  [v3 flush];
}

- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4
{
  v6 = sub_10001FDEC();
  v7 = a3;
  v8 = self;
  sub_100009E50(v7, v6);

  return 0;
}

- (void)setupWithCustomNavigationItem:(id)a3 promptString:(id)a4 askToBuy:(BOOL)a5
{
  if (a4)
  {
    v8 = sub_10001FE2C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_10000A184(v11, v8, v10, a5);
}

- (TUISyncLayoutController)syncLayoutController
{
  result = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__syncLayoutController];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (id)windowProviderForBridge:(id)a3
{
  result = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (id)objectRegistrationsForBridge:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E740();

  v6.super.isa = sub_10001FDDC().super.isa;

  return v6.super.isa;
}

- (void)syncLayoutControllerNeedsFlushing:(id)a3
{
  v5 = self;
  v3 = [(ProductPageRootViewController *)v5 view];
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

- (id)analyticsTrackerForStoreServices:(id)a3
{
  v3 = self;
  v4 = [(ProductPageRootViewController *)v3 bc_deepestVisibleChildViewControllerIncludePresented:1];
  result = [v4 ba_effectiveAnalyticsTracker];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)flowControllers
{
  sub_100007778(&qword_100037D90, &qword_1000284F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100028400;
  v4 = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_objectGraph];
  sub_100007778(&qword_100037D98, &qword_100028500);
  v5 = self;
  sub_10001FD7C();
  *(v3 + 56) = swift_getObjectType();
  *(v3 + 32) = v8;

  v6.super.isa = sub_10001FECC().super.isa;

  return v6.super.isa;
}

@end