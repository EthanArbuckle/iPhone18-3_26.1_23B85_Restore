@interface ParmesanGalleryTransitionContainerView
- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithCoder:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithFrame:(CGRect)a3;
@end

@implementation ParmesanGalleryTransitionContainerView

- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanGalleryTransitionContainerView();
  return [(ParmesanColorAdjustView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

@end