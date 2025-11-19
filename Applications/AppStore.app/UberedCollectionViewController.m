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
  sub_100185654();
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_100185808();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10018592C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100185D1C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100185E7C(a3);
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_1001863DC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UberedCollectionViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewDidDisappear:v3];
  ArtworkLoader.isOccluded.setter();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10018652C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1001866C4();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  v2 = v3.receiver;
  [(StoreCollectionViewController *)&v3 viewSafeAreaInsetsDidChange];
  v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver))
  {
    type metadata accessor for UberScrollObserver();
    sub_1001873D4(&unk_100977310, type metadata accessor for UberScrollObserver);
    v7 = a3;
    v8 = self;

    ScrollObserver.willEndDragging(in:with:targetContentOffset:)();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver))
  {
    v4 = a3;
    v5 = self;

    sub_10006C4B8(v4);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100186FF8(a3);
}

@end