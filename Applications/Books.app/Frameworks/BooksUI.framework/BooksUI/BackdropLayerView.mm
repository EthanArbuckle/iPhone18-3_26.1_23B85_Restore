@interface BackdropLayerView
+ (Class)layerClass;
- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithCoder:(id)a3;
- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithFrame:(CGRect)a3;
@end

@implementation BackdropLayerView

+ (Class)layerClass
{
  sub_15C98(0, &qword_31A528, CABackdropLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BackdropLayerView();
  return [(BackdropLayerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7BooksUIP33_F34AF1168BE2E2E994641C4890A808CD17BackdropLayerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropLayerView();
  v4 = a3;
  v5 = [(BackdropLayerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end