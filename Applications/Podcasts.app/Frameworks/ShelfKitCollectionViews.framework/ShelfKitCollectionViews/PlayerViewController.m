@interface PlayerViewController
- (UIViewController)presentingViewController;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithPlayerLayerView:(id)a3;
- (void)dealloc;
- (void)playerItemDidPlayToEndWithNotification:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PlayerViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for PlayerViewController();
  [(PlayerViewController *)&v6 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerViewController();
  v4 = v6.receiver;
  [(PlayerViewController *)&v6 viewDidAppear:v3];
  if (*(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) == 1)
  {
    v5 = [v4 player];
    [v5 play];
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2AFC2C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayerViewController();
  v4 = v6.receiver;
  [(PlayerViewController *)&v6 viewWillDisappear:v3];
  v5 = [v4 player];
  [v5 pause];
}

- (void)playerItemDidPlayToEndWithNotification:(id)a3
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
    v2 = [(PlayerViewController *)self parentViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for PlayerViewController();
    v2 = [(PlayerViewController *)&v5 presentingViewController];
  }

  v3 = v2;

  return v3;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_30C0D8();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
    v6 = a4;
    v7 = sub_30C098();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PlayerViewController();
  v9 = [(PlayerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerViewController();
  v4 = a3;
  v5 = [(PlayerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC23ShelfKitCollectionViews20PlayerViewController)initWithPlayerLayerView:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_autoplay) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_shouldDismissWhenPlaysToEnd) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20PlayerViewController_alwaysShowDoneButton) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlayerViewController();
  return [(PlayerViewController *)&v5 initWithPlayerLayerView:a3];
}

@end