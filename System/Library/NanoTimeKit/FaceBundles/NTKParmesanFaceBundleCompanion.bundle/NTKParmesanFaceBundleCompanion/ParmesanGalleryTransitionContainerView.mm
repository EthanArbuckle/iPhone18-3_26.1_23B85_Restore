@interface ParmesanGalleryTransitionContainerView
- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithFrame:(CGRect)frame;
@end

@implementation ParmesanGalleryTransitionContainerView

- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanGalleryTransitionContainerView();
  return [(ParmesanColorAdjustView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

@end