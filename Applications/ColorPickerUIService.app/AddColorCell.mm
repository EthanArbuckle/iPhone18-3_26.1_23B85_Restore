@interface AddColorCell
- (NSString)accessibilityLabel;
- (_TtC20ColorPickerUIService12AddColorCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AddColorCell

- (_TtC20ColorPickerUIService12AddColorCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_plusImageView;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for AddColorCell();
  height = [(AddColorCell *)&v12 initWithFrame:x, y, width, height];
  sub_1000178B0();

  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100017D8C();
}

- (NSString)accessibilityLabel
{
  sub_100017FF0();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end