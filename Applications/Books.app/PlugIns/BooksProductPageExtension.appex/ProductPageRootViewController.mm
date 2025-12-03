@interface ProductPageRootViewController
- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters;
- (TUISyncLayoutController)syncLayoutController;
- (UINavigationItem)navigationItem;
- (_TtC25BooksProductPageExtension29ProductPageRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)analyticsTrackerForStoreServices:(id)services;
- (id)flowControllers;
- (id)objectRegistrationsForBridge:(id)bridge;
- (id)windowProviderForBridge:(id)bridge;
- (void)setupWithCustomNavigationItem:(id)item promptString:(id)string askToBuy:(BOOL)buy;
- (void)syncLayoutControllerNeedsFlushing:(id)flushing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ProductPageRootViewController

- (UINavigationItem)navigationItem
{
  v2 = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem];
  if (v2)
  {
    navigationItem = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController__navigationItem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for ProductPageRootViewController();
    navigationItem = [(ProductPageRootViewController *)&v6 navigationItem];
    v2 = 0;
  }

  v4 = v2;

  return navigationItem;
}

- (_TtC25BooksProductPageExtension29ProductPageRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10001FE2C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100008D24(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100009058();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000094AC(disappear);
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

- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters
{
  v6 = sub_10001FDEC();
  loadCopy = load;
  selfCopy = self;
  sub_100009E50(loadCopy, v6);

  return 0;
}

- (void)setupWithCustomNavigationItem:(id)item promptString:(id)string askToBuy:(BOOL)buy
{
  if (string)
  {
    v8 = sub_10001FE2C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  itemCopy = item;
  selfCopy = self;
  sub_10000A184(itemCopy, v8, v10, buy);
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

- (id)windowProviderForBridge:(id)bridge
{
  result = *&self->SKProductPageExtension_opaque[OBJC_IVAR____TtC25BooksProductPageExtension29ProductPageRootViewController_windowProvider];
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (id)objectRegistrationsForBridge:(id)bridge
{
  bridgeCopy = bridge;
  selfCopy = self;
  sub_10000E740();

  v6.super.isa = sub_10001FDDC().super.isa;

  return v6.super.isa;
}

- (void)syncLayoutControllerNeedsFlushing:(id)flushing
{
  selfCopy = self;
  view = [(ProductPageRootViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (id)analyticsTrackerForStoreServices:(id)services
{
  selfCopy = self;
  v4 = [(ProductPageRootViewController *)selfCopy bc_deepestVisibleChildViewControllerIncludePresented:1];
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
  selfCopy = self;
  sub_10001FD7C();
  *(v3 + 56) = swift_getObjectType();
  *(v3 + 32) = v8;

  v6.super.isa = sub_10001FECC().super.isa;

  return v6.super.isa;
}

@end