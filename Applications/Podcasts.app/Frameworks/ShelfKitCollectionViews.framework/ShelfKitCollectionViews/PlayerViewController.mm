@interface PlayerViewController
- (UIViewController)presentingViewController;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithPlayerLayerView:(id)view;
- (void)dealloc;
- (void)playerItemDidPlayToEndWithNotification:(id)notification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PlayerViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for PlayerViewController();
  [(PlayerViewController *)&v6 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerViewController();
  v4 = v6.receiver;
  [(PlayerViewController *)&v6 viewDidAppear:appearCopy];
  if (*(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) == 1)
  {
    player = [v4 player];
    [player play];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2AFC2C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerViewController();
  v4 = v6.receiver;
  [(PlayerViewController *)&v6 viewWillDisappear:disappearCopy];
  player = [v4 player];
  [player pause];
}

- (void)playerItemDidPlayToEndWithNotification:(id)notification
{
  v4 = sub_3019D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3019C8();
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) == 1)
  {
    [(PlayerViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  (*(v5 + 8))(v7, v4);
}

- (UIViewController)presentingViewController
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) == 1)
  {
    parentViewController = [(PlayerViewController *)self parentViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for PlayerViewController();
    parentViewController = [(PlayerViewController *)&v5 presentingViewController];
  }

  v3 = parentViewController;

  return v3;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_30C0D8();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
    bundleCopy = bundle;
    v7 = sub_30C098();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PlayerViewController();
  v9 = [(PlayerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerViewController();
  coderCopy = coder;
  v5 = [(PlayerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithPlayerLayerView:(id)view
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlayerViewController();
  return [(PlayerViewController *)&v5 initWithPlayerLayerView:view];
}

@end