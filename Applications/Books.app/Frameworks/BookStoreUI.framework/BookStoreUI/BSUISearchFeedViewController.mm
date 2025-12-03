@interface BSUISearchFeedViewController
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)bc_navBarVisible;
- (BOOL)handleActionForObject:(id)object withName:(id)name arguments:(id)arguments;
- (Class)jsaFeedControllerClass;
- (UIEdgeInsets)navigationBarMetricsLayoutMargins;
- (_TtC11BookStoreUI28BSUISearchFeedViewController)initWithOptions:(id)options;
- (void)bc_setNavBarVisible:(BOOL)visible;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)feedController:(id)controller dismissKeyboard:(id)keyboard;
- (void)feedController:(id)controller wantsToPresentCardsWithCardArray:(id)array focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion;
- (void)feedController:(id)controller wantsToUpdateSearchText:(id)text;
- (void)navigationBarItemsDidUpdate:(id)update hasItems:(BOOL)items;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BSUISearchFeedViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BSUISearchFeedViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(BSUIFeedViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  [v7 _updateNavigationLayoutMetrics];
  swift_unknownObjectRelease();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  controllerCopy = controller;
  selfCopy = self;
  sub_78E0C(controllerCopy, animated, v8, v9);
  sub_77BDC(v8);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_790C0(animated, v6, v7);
  sub_77BDC(v6);
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  selfCopy = self;
  navigationItem = [(BSUIFeedViewController *)selfCopy navigationItem];
  searchController = [(UINavigationItem *)navigationItem searchController];

  if (searchController && (v5 = [(UISearchController *)searchController presentedViewController], searchController, v5))
  {

    return 0;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for BSUISearchFeedViewController();
    bc_analyticsVisibilityOfSelf = [(BSUISearchFeedViewController *)&v8 bc_analyticsVisibilityOfSelf];
  }

  return bc_analyticsVisibilityOfSelf;
}

- (BOOL)bc_navBarVisible
{
  selfCopy = self;
  v3 = sub_79464();

  return v3 & 1;
}

- (void)bc_setNavBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BSUISearchFeedViewController();
  [(BSUISearchFeedViewController *)&v4 bc_setNavBarVisible:visibleCopy];
}

- (Class)jsaFeedControllerClass
{
  sub_66278(0, &unk_3BCFC0);

  return swift_getObjCClassFromMetadata();
}

- (void)feedController:(id)controller dismissKeyboard:(id)keyboard
{
  v6 = _Block_copy(keyboard);
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

  controllerCopy = controller;
  selfCopy = self;
  sub_795AC(controllerCopy, v6, v7);
  sub_77BDC(v6);
}

- (void)feedController:(id)controller wantsToPresentCardsWithCardArray:(id)array focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion
{
  v12 = _Block_copy(completion);
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

  controllerCopy = controller;
  selfCopy = self;
  sub_798D4(controllerCopy, v13, index, animated, v14, v12, v15);
  sub_77BDC(v12);
}

- (void)feedController:(id)controller wantsToUpdateSearchText:(id)text
{
  v5 = sub_2C58C8();
  v7 = v6;
  selfCopy = self;
  if (sub_79C80(v5, v7))
  {
  }

  else
  {
    v8 = &selfCopy->super.TUIFeedViewController_opaque[OBJC_IVAR____TtC11BookStoreUI28BSUISearchFeedViewController_pendingSearchText];
    *v8 = v5;
    v8[1] = v7;
  }
}

- (UIEdgeInsets)navigationBarMetricsLayoutMargins
{
  selfCopy = self;
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

- (BOOL)handleActionForObject:(id)object withName:(id)name arguments:(id)arguments
{
  if (object)
  {
    nameCopy = name;
    argumentsCopy = arguments;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2C6128();
    swift_unknownObjectRelease();
    if (name)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v13 = 0;
    if (arguments)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  memset(v20, 0, sizeof(v20));
  nameCopy2 = name;
  argumentsCopy2 = arguments;
  selfCopy2 = self;
  if (!name)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_2C58C8();
  v13 = v12;

  if (!arguments)
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

- (void)navigationBarItemsDidUpdate:(id)update hasItems:(BOOL)items
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = type metadata accessor for BSUISearchFeedViewController();
  updateCopy = update;
  v7 = v11.receiver;
  [(BSUIFeedViewController *)&v11 navigationBarItemsDidUpdate:updateCopy hasItems:itemsCopy];
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

- (_TtC11BookStoreUI28BSUISearchFeedViewController)initWithOptions:(id)options
{
  if (options)
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