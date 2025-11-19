@interface StoreRootViewController
- (StoreRootViewControllerDelegate)delegate;
- (_TtC18ASMessagesProvider23StoreRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)openURL:(id)a3 sourceApplication:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StoreRootViewController

- (_TtC18ASMessagesProvider23StoreRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_735B88(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_736084();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreRootViewController();
  v4 = v5.receiver;
  [(StoreRootViewController *)&v5 viewWillDisappear:v3];
  v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition] = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for StoreRootViewController();
  v4 = v6.receiver;
  [(StoreRootViewController *)&v6 viewDidDisappear:v3];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition;
  if (v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition] == 1)
  {
    sub_738A30();
    v4[v5] = 0;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreRootViewController();
  v4 = v5.receiver;
  [(StoreRootViewController *)&v5 viewDidAppear:v3];
  sub_737EB8();
}

- (StoreRootViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)openURL:(id)a3 sourceApplication:(id)a4
{
  v6 = sub_7570A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757060();
  if (a4)
  {
    sub_769240();
  }

  v10 = self;
  sub_73A964(v9);

  (*(v7 + 8))(v9, v6);
}

@end