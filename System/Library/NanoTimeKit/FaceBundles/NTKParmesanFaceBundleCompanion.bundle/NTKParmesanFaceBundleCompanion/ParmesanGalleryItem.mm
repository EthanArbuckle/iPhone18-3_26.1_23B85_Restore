@interface ParmesanGalleryItem
- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)init;
- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)initWithComposition:(id)composition views:(id)views;
- (void)dealloc;
- (void)setComposition:(id)composition;
- (void)setViews:(id)views;
@end

@implementation ParmesanGalleryItem

- (void)setComposition:(id)composition
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = composition;
  compositionCopy = composition;
}

- (void)setViews:(id)views
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views) = views;
  viewsCopy = views;
}

- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)initWithComposition:(id)composition views:(id)views
{
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition;
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = 0;
  v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
  *(&self->super.isa + v6) = composition;
  *(&self->super.isa + v7) = views;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ParmesanGalleryItem();
  compositionCopy = composition;
  viewsCopy = views;
  return [(ParmesanGalleryItem *)&v11 init];
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = 0;
  selfCopy = self;

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views) = 0;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for ParmesanGalleryItem();
  [(ParmesanGalleryItem *)&v5 dealloc];
}

- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end