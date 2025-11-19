@interface ParmesanGalleryItem
- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)init;
- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)initWithComposition:(id)a3 views:(id)a4;
- (void)dealloc;
- (void)setComposition:(id)a3;
- (void)setViews:(id)a3;
@end

@implementation ParmesanGalleryItem

- (void)setComposition:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = a3;
  v3 = a3;
}

- (void)setViews:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views) = a3;
  v3 = a3;
}

- (_TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem)initWithComposition:(id)a3 views:(id)a4
{
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition;
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = 0;
  v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
  *(&self->super.isa + v6) = a3;
  *(&self->super.isa + v7) = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ParmesanGalleryItem();
  v8 = a3;
  v9 = a4;
  return [(ParmesanGalleryItem *)&v11 init];
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  *(&self->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition) = 0;
  v3 = self;

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  *(&v3->super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views) = 0;

  v5.receiver = v3;
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