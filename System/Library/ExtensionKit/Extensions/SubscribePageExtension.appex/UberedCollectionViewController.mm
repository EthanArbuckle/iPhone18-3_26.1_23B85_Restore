@interface UberedCollectionViewController
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UberedCollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005985E8();
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_10059879C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1005988C0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100598CB0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100598E10(a3);
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_100599370();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UberedCollectionViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewDidDisappear:v3];
  sub_100744254();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1005994C0(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100599658();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  v2 = v3.receiver;
  [(StoreCollectionViewController *)&v3 viewSafeAreaInsetsDidChange];
  v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver))
  {
    type metadata accessor for UberScrollObserver();
    sub_10059A3B4(&qword_10093F7C0, type metadata accessor for UberScrollObserver);
    v7 = a3;
    v8 = self;

    sub_100744FA4();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver))
  {
    v4 = a3;
    v5 = self;

    sub_100563518(v4);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100599F8C(a3);
}

@end