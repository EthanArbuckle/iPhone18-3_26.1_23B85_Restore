@interface JSBiographyViewController
- (_TtC16MusicApplication25JSBiographyViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication25JSBiographyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSBiographyViewController

- (_TtC16MusicApplication25JSBiographyViewController)initWithCoder:(id)a3
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
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    [v3 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_312E90(a3);
}

- (_TtC16MusicApplication25JSBiographyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end