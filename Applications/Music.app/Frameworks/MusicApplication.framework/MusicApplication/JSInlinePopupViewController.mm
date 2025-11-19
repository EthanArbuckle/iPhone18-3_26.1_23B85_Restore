@interface JSInlinePopupViewController
- (NSString)title;
- (_TtC16MusicApplication27JSInlinePopupViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation JSInlinePopupViewController

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(JSInlinePopupViewController *)&v7 title];
  if (v3)
  {
    v4 = v3;
    sub_AB92A0();

    v5 = sub_AB9260();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_31AB50(v4, v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_31B040();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_31B948(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_31BB7C(a3, &selRef_viewDidAppear_, 0x81u);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_31BA90(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_31BB7C(a3, &selRef_viewDidDisappear_, 0x80u);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_31BC74();
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(JSInlinePopupViewController *)&v6 didMoveToParentViewController:v4];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_31C8F8(a3);
}

- (_TtC16MusicApplication27JSInlinePopupViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end