@interface UpsellBannerViewController
- (_TtC16MusicApplication26UpsellBannerViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication26UpsellBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation UpsellBannerViewController

- (_TtC16MusicApplication26UpsellBannerViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView;
  type metadata accessor for UpsellBannerView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = TextDrawing.Cache.init()();
  swift_unknownObjectWeakInit();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D58B8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v10.receiver;
  [(UpsellBannerViewController *)&v10 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache];
  v7 = [v5 traitCollection];
  [v7 displayScale];
  v9 = v8;

  swift_beginAccess();
  *(v6 + 16) = v9;
  sub_106F0C();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1D5B08(a3);
  swift_unknownObjectRelease();
}

- (_TtC16MusicApplication26UpsellBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end