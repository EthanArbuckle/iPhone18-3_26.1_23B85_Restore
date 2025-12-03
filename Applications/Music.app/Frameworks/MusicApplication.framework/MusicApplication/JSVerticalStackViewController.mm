@interface JSVerticalStackViewController
- (UIColor)viewBackgroundColor;
- (UIViewController)childViewControllerForStatusBarStyle;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setViewBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation JSVerticalStackViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = (*&stru_388.segname[(swift_isaMask & self->super.super.super.super.isa) - 8])();

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSVerticalStackViewController();
  v4 = v7.receiver;
  [(VerticalStackViewController *)&v7 viewWillAppear:appearCopy];
  sub_A17B4([v4 _isInPopoverPresentation]);
  v5 = (*&stru_388.segname[(swift_isaMask & *v4) - 8])();
  if (v5)
  {
    v6 = v5;
    [v5 beginAppearanceTransition:1 animated:appearCopy];
  }

  sub_A737C();
  sub_A777C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSVerticalStackViewController();
  v4 = v8.receiver;
  v5 = [(VerticalStackViewController *)&v8 viewWillDisappear:disappearCopy];
  v6 = (*&stru_388.segname[(swift_isaMask & *v4) - 8])(v5);
  if (v6)
  {
    v7 = v6;
    [v6 beginAppearanceTransition:0 animated:{disappearCopy, v8.receiver, v8.super_class}];

    v4 = v7;
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_9FECC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_A02D4();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JSVerticalStackViewController();
  changeCopy = change;
  v5 = v6.receiver;
  [(JSVerticalStackViewController *)&v6 traitCollectionDidChange:changeCopy];
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_A14D4(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = (*&stru_388.segname[(swift_isaMask & self->super.super.super.super.isa) - 8])(velocity, *&velocity.y);
  if (v7)
  {
    x = offset->x;
    y = offset->y;
    v13 = v7;
    selfCopy = self;
    sub_370560(x, y);
    offset->x = v11;
    offset->y = v12;
  }
}

- (UIColor)viewBackgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JSVerticalStackViewController();
  viewBackgroundColor = [(JSVerticalStackViewController *)&v4 viewBackgroundColor];

  return viewBackgroundColor;
}

- (void)setViewBackgroundColor:(id)color
{
  v5 = type metadata accessor for JSVerticalStackViewController();
  v10.receiver = self;
  v10.super_class = v5;
  colorCopy = color;
  selfCopy = self;
  viewBackgroundColor = [(JSVerticalStackViewController *)&v10 viewBackgroundColor];
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(JSVerticalStackViewController *)&v9 setViewBackgroundColor:colorCopy];
  sub_A2E34();
}

@end