@interface MetalView
+ (Class)layerClass;
- (_TtC8SOSBuddy9MetalView)initWithCoder:(id)a3;
- (_TtC8SOSBuddy9MetalView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MetalView

+ (Class)layerClass
{
  sub_1000FFA28();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000FF668();
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = self;
  v3 = [(MetalView *)v10 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [(MetalView *)v10 traitCollection];
    [v6 displayScale];
    v8 = v7;

    [v5 setContentsScale:v8];
    v9 = v3;
  }

  else
  {
    v9 = v10;
    v10 = v3;
  }
}

- (_TtC8SOSBuddy9MetalView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MetalView();
  return [(MetalView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8SOSBuddy9MetalView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MetalView();
  v4 = a3;
  v5 = [(MetalView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end