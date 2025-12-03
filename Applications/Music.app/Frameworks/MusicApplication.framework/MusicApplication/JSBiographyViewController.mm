@interface JSBiographyViewController
- (_TtC16MusicApplication25JSBiographyViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication25JSBiographyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSBiographyViewController

- (_TtC16MusicApplication25JSBiographyViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = TextDrawing.Cache.init()();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JSBiographyViewController();
  v2 = v6.receiver;
  [(JSBiographyViewController *)&v6 viewDidLayoutSubviews];
  v3 = sub_3132E4();
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
  sub_312C24();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSBiographyViewController();
  v2 = v3.receiver;
  [(JSBiographyViewController *)&v3 music_viewInheritedLayoutInsetsDidChange];
  sub_3135E8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_312E90(change);
}

- (_TtC16MusicApplication25JSBiographyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end