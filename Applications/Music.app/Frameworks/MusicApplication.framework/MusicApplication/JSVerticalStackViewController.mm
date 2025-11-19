@interface JSVerticalStackViewController
- (UIColor)viewBackgroundColor;
- (UIViewController)childViewControllerForStatusBarStyle;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setViewBackgroundColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation JSVerticalStackViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = (*&stru_388.segname[(swift_isaMask & self->super.super.super.super.isa) - 8])();

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSVerticalStackViewController();
  v4 = v7.receiver;
  [(VerticalStackViewController *)&v7 viewWillAppear:v3];
  sub_A17B4([v4 _isInPopoverPresentation]);
  v5 = (*&stru_388.segname[(swift_isaMask & *v4) - 8])();
  if (v5)
  {
    v6 = v5;
    [v5 beginAppearanceTransition:1 animated:v3];
  }

  sub_A737C();
  sub_A777C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSVerticalStackViewController();
  v4 = v8.receiver;
  v5 = [(VerticalStackViewController *)&v8 viewWillDisappear:v3];
  v6 = (*&stru_388.segname[(swift_isaMask & *v4) - 8])(v5);
  if (v6)
  {
    v7 = v6;
    [v6 beginAppearanceTransition:0 animated:{v3, v8.receiver, v8.super_class}];

    v4 = v7;
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_9FECC();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_A02D4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JSVerticalStackViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(JSVerticalStackViewController *)&v6 traitCollectionDidChange:v4];
  sub_A737C();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSVerticalStackViewController();
  v2 = v3.receiver;
  [(JSVerticalStackViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_A737C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_A14D4(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = (*&stru_388.segname[(swift_isaMask & self->super.super.super.super.isa) - 8])(a4, *&a4.y);
  if (v7)
  {
    x = a5->x;
    y = a5->y;
    v13 = v7;
    v10 = self;
    sub_370560(x, y);
    a5->x = v11;
    a5->y = v12;
  }
}

- (UIColor)viewBackgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JSVerticalStackViewController();
  v2 = [(JSVerticalStackViewController *)&v4 viewBackgroundColor];

  return v2;
}

- (void)setViewBackgroundColor:(id)a3
{
  v5 = type metadata accessor for JSVerticalStackViewController();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(JSVerticalStackViewController *)&v10 viewBackgroundColor];
  v9.receiver = v7;
  v9.super_class = v5;
  [(JSVerticalStackViewController *)&v9 setViewBackgroundColor:v6];
  sub_A2E34();
}

@end