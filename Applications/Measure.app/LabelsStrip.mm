@interface LabelsStrip
- (CGSize)intrinsicContentSize;
- (_TtC7Measure11LabelsStrip)initWithFrame:(CGRect)a3;
@end

@implementation LabelsStrip

- (_TtC7Measure11LabelsStrip)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel;
  type metadata accessor for InteractiveLabel();
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC7Measure11LabelsStrip_secondaryLabelStack;
  *(&self->super.super.super.isa + v10) = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(LabelsStrip *)&v13 initWithFrame:x, y, width, height];
  sub_1000A53E4();
  sub_1000A54C4();

  return v11;
}

- (CGSize)intrinsicContentSize
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = 222.0;
  if ((v2 & 1) == 0)
  {
    v4 = 88.0;
  }

  v5 = 375.0;
  result.height = v4;
  result.width = v5;
  return result;
}

@end