@interface JSItemizedTextListViewController
- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSItemizedTextListViewController

- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JSItemizedTextListViewController();
  v2 = v7.receiver;
  [(JSItemizedTextListViewController *)&v7 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView];
  if (v3)
  {
    v4 = v3;
    view = [v2 view];
    if (view)
    {
      v6 = view;
      [view bounds];
      [v4 setFrame:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_B5BB0();
}

- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end