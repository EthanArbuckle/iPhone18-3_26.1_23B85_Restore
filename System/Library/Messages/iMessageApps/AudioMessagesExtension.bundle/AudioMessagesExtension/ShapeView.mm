@interface ShapeView
+ (Class)layerClass;
- (_TtC22AudioMessagesExtension9ShapeView)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension9ShapeView)initWithFrame:(CGRect)frame;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_3094C(0, &qword_81BF8);

  return swift_getObjCClassFromMetadata();
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v6 = sub_42978();
  v8 = v7;
  layerCopy = layer;
  selfCopy = self;
  v11 = ShapeView.action(for:forKey:)(layerCopy, v6, v8);

  return v11;
}

- (_TtC22AudioMessagesExtension9ShapeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShapeView();
  return [(ShapeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22AudioMessagesExtension9ShapeView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShapeView();
  coderCopy = coder;
  v5 = [(ShapeView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end