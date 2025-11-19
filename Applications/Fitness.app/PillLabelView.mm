@interface PillLabelView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PillLabelView

- (_TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label;
  v5 = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + v4) = v5;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_text);
  *v6 = 0;
  v6[1] = 0;
  v7 = (self + OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_insets);
  *v7 = xmmword_1007025C0;
  v7[1] = xmmword_1007025D0;

  type metadata accessor for PillLabelView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label) sizeThatFits:{a3.width, a3.height}];
  v4 = v3 + 6.0 + 2.0;
  v6 = v5 + 2.0 + 6.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label) intrinsicContentSize];
  v3 = v2 + 6.0 + 2.0;
  v5 = v4 + 2.0 + 6.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for PillLabelView();
  v2 = v10.receiver;
  [(PillLabelView *)&v10 layoutSubviews];
  v3 = OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label;
  [*&v2[OBJC_IVAR____TtC10FitnessAppP33_4EA4BC32C3BA0CE5667C98FF7F64C93913PillLabelView_label] sizeToFit];
  v4 = *&v2[v3];
  [v2 bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [v4 setCenter:{MidX, CGRectGetMidY(v12)}];
}

@end