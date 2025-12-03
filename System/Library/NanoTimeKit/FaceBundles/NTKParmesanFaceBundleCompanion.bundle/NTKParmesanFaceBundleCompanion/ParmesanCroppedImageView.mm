@interface ParmesanCroppedImageView
- (_TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView)initWithFrame:(CGRect)frame;
@end

@implementation ParmesanCroppedImageView

- (_TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_image) = 0;
  v7 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_crop;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ParmesanCroppedImageView();
  return [(ParmesanCroppedImageView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_image) = 0;
  v4 = self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_crop;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanCroppedImageView();
  coderCopy = coder;
  v6 = [(ParmesanCroppedImageView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end