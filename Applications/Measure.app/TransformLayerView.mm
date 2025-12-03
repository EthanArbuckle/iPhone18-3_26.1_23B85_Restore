@interface TransformLayerView
+ (Class)layerClass;
- (_TtC7Measure18TransformLayerView)initWithCoder:(id)coder;
- (_TtC7Measure18TransformLayerView)initWithFrame:(CGRect)frame;
@end

@implementation TransformLayerView

+ (Class)layerClass
{
  sub_1001C43D0();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7Measure18TransformLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TransformLayerView();
  return [(TransformLayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure18TransformLayerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TransformLayerView();
  coderCopy = coder;
  v5 = [(TransformLayerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end