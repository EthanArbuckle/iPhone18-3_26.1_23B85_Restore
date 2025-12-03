@interface BackdropLayerView
+ (Class)layerClass;
- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithCoder:(id)coder;
- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithFrame:(CGRect)frame;
@end

@implementation BackdropLayerView

+ (Class)layerClass
{
  sub_15C98(0, &qword_31A528, CABackdropLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BackdropLayerView();
  return [(BackdropLayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropLayerView();
  coderCopy = coder;
  v5 = [(BackdropLayerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end