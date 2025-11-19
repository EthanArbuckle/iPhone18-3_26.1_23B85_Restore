@interface JSItemizedTextListViewController
- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSItemizedTextListViewController

- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithCoder:(id)a3
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
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
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
  v2 = self;
  sub_B5BB0();
}

- (_TtC16MusicApplication32JSItemizedTextListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end