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
  sub_1006174E0();
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_100617694();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1006177B8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100617BA8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100617D08(a3);
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_100618268();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UberedCollectionViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewDidDisappear:v3];
  sub_100760BDC();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1006183B8(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100618550();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  v2 = v3.receiver;
  [(StoreCollectionViewController *)&v3 viewSafeAreaInsetsDidChange];
  v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver))
  {
    type metadata accessor for UberScrollObserver();
    sub_1006192AC(&qword_100961160, type metadata accessor for UberScrollObserver);
    v7 = a3;
    v8 = self;

    sub_10076199C();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver))
  {
    v4 = a3;
    v5 = self;

    sub_1001A37AC(v4);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100618E84(a3);
}

@end