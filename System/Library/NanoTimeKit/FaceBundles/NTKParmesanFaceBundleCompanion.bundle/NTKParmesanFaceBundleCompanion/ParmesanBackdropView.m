@interface ParmesanBackdropView
+ (Class)layerClass;
- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithCoder:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation ParmesanBackdropView

+ (Class)layerClass
{
  sub_23BF9CC10();

  return swift_getObjCClassFromMetadata();
}

- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanBackdropView();
  return [(ParmseanPassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC30NTKParmesanFaceBundleCompanion20ParmesanBackdropView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanBackdropView();
  v4 = a3;
  v5 = [(ParmseanPassthroughView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end