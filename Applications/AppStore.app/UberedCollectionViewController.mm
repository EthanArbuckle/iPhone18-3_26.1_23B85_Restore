@interface UberedCollectionViewController
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UberedCollectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100185654();
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_100185808();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10018592C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100185D1C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100185E7C(disappear);
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_1001863DC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UberedCollectionViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewDidDisappear:disappearCopy];
  ArtworkLoader.isOccluded.setter();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10018652C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver))
  {
    type metadata accessor for UberScrollObserver();
    sub_1001873D4(&unk_100977310, type metadata accessor for UberScrollObserver);
    draggingCopy = dragging;
    selfCopy = self;

    ScrollObserver.willEndDragging(in:with:targetContentOffset:)();
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver))
  {
    scrollCopy = scroll;
    selfCopy = self;

    sub_10006C4B8(scrollCopy);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100186FF8(change);
}

@end