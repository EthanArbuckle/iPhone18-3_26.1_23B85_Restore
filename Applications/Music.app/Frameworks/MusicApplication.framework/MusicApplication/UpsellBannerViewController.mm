@interface UpsellBannerViewController
- (_TtC16MusicApplication26UpsellBannerViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication26UpsellBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
@end

@implementation UpsellBannerViewController

- (_TtC16MusicApplication26UpsellBannerViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1D58B8();
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v10.receiver;
  [(UpsellBannerViewController *)&v10 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache];
  traitCollection = [v5 traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  swift_beginAccess();
  *(v6 + 16) = v9;
  sub_106F0C();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D5B08(container);
  swift_unknownObjectRelease();
}

- (_TtC16MusicApplication26UpsellBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end