@interface ArticleHeaderViewController
- (_TtC8AppStore27ArticleHeaderViewController)initWithCoder:(id)coder;
- (_TtC8AppStore27ArticleHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ArticleHeaderViewController

- (_TtC8AppStore27ArticleHeaderViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isDisappearing) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isAppearing) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled) = 1;
  v3 = (self + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  if (([(ArticleHeaderViewController *)selfCopy isViewLoaded]& 1) == 0)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(type metadata accessor for ArticleHeaderViewController.ContentView()) initWithFrame:{v4, v6, v8, v10}];
    [(ArticleHeaderViewController *)selfCopy setView:v11];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1007693C4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1007695C4();
}

- (_TtC8AppStore27ArticleHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end