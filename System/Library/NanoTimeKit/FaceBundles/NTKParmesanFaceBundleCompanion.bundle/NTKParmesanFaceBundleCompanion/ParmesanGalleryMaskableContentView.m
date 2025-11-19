@interface ParmesanGalleryMaskableContentView
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ParmesanGalleryMaskableContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanGalleryMaskableContentView();
  v2 = v5.receiver;
  [(ParmesanGalleryMaskableContentView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix;
  *(&self->super.super.super.isa + v8) = NTKDefaultMonochromeColorMatrix();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_useMaskingLayer) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ParmesanGalleryMaskableContentView();
  return [(ParmesanGalleryMaskableContentView *)&v10 initWithFrame:x, y, width, height];
}

@end