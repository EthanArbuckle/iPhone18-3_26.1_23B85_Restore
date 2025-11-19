@interface TransformLayerView
+ (Class)layerClass;
- (_TtC7Measure18TransformLayerView)initWithCoder:(id)a3;
- (_TtC7Measure18TransformLayerView)initWithFrame:(CGRect)a3;
@end

@implementation TransformLayerView

+ (Class)layerClass
{
  sub_1001C43D0();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7Measure18TransformLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TransformLayerView();
  return [(TransformLayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure18TransformLayerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TransformLayerView();
  v4 = a3;
  v5 = [(TransformLayerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end