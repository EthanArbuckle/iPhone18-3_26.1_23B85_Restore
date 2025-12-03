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
  sub_6BB35C();
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_6BB510();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_6BB634(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_6BBA24(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_6BBB84(disappear);
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_6BC0E4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UberedCollectionViewController();
  v4 = v5.receiver;
  [(StoreCollectionViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_75A0A0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_6BC234(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_6BC3CC();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  v2 = v3.receiver;
  [(StoreCollectionViewController *)&v3 viewSafeAreaInsetsDidChange];
  v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver))
  {
    type metadata accessor for UberScrollObserver();
    sub_6BD128(&qword_962120, type metadata accessor for UberScrollObserver);
    draggingCopy = dragging;
    selfCopy = self;

    sub_75AE30();
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver))
  {
    scrollCopy = scroll;
    selfCopy = self;

    sub_43480C(scrollCopy);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_6BCD00(change);
}

@end