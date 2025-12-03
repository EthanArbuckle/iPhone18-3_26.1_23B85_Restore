@interface ParmesanBackdropView
+ (Class)layerClass;
- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation ParmesanBackdropView

+ (Class)layerClass
{
  sub_23BF9CC10();

  return swift_getObjCClassFromMetadata();
}

- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanBackdropView();
  return [(ParmseanPassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanBackdropView();
  coderCopy = coder;
  v5 = [(ParmseanPassthroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end