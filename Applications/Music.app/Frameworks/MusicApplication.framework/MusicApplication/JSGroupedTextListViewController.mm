@interface JSGroupedTextListViewController
- (_TtC16MusicApplication31JSGroupedTextListViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication31JSGroupedTextListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSGroupedTextListViewController

- (_TtC16MusicApplication31JSGroupedTextListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_verticalStackItemPrefersTopHairline) = 1;
  v4 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = TextDrawing.Cache.init()();
  v5 = OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for GroupedTextListView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JSGroupedTextListViewController();
  v2 = v6.receiver;
  [(JSGroupedTextListViewController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication31JSGroupedTextListViewController_textListView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    [v3 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21F090();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21F55C(change);
}

- (_TtC16MusicApplication31JSGroupedTextListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end