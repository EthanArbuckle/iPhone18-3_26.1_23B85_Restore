@interface StoreRootViewController
- (StoreRootViewControllerDelegate)delegate;
- (_TtC18ASMessagesProvider23StoreRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)openURL:(id)l sourceApplication:(id)application;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StoreRootViewController

- (_TtC18ASMessagesProvider23StoreRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_735B88(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_736084();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreRootViewController();
  v4 = v5.receiver;
  [(StoreRootViewController *)&v5 viewWillDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition] = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for StoreRootViewController();
  v4 = v6.receiver;
  [(StoreRootViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition;
  if (v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition] == 1)
  {
    sub_738A30();
    v4[v5] = 0;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreRootViewController();
  v4 = v5.receiver;
  [(StoreRootViewController *)&v5 viewDidAppear:appearCopy];
  sub_737EB8();
}

- (StoreRootViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)openURL:(id)l sourceApplication:(id)application
{
  v6 = sub_7570A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757060();
  if (application)
  {
    sub_769240();
  }

  selfCopy = self;
  sub_73A964(v9);

  (*(v7 + 8))(v9, v6);
}

@end