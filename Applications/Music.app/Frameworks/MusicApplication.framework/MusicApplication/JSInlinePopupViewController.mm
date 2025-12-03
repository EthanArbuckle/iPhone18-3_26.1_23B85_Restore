@interface JSInlinePopupViewController
- (NSString)title;
- (_TtC16MusicApplication27JSInlinePopupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation JSInlinePopupViewController

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  title = [(JSInlinePopupViewController *)&v7 title];
  if (title)
  {
    v4 = title;
    sub_AB92A0();

    v5 = sub_AB9260();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_31AB50(v4, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_31B040();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_31B948(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_31BB7C(appear, &selRef_viewDidAppear_, 0x81u);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_31BA90(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_31BB7C(disappear, &selRef_viewDidDisappear_, 0x80u);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_31BC74();
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(JSInlinePopupViewController *)&v6 didMoveToParentViewController:controllerCopy];
  sub_31C210();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(JSInlinePopupViewController *)&v3 music_viewInheritedLayoutInsetsDidChange];
  sub_31C49C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_31C8F8(change);
}

- (_TtC16MusicApplication27JSInlinePopupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end