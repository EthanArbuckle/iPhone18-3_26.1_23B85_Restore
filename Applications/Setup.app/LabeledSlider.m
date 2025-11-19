@interface LabeledSlider
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (_TtC5Setup13LabeledSlider)initWithCoder:(id)a3;
- (_TtC5Setup13LabeledSlider)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation LabeledSlider

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_10004B21C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC5Setup13LabeledSlider)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_labelPositionConstraints) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_labelOffset) = 0x4024000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_thumbSize) = 0x403B000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_10004CA54();
}

- (void)updateConstraints
{
  v2 = self;
  sub_10004BF18();
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_10004C160(x, y, width, height);
  v9 = v8;
  v11 = v10;

  v12 = 38.5;
  v13 = 4.0;
  v14 = v9;
  v15 = v11;
  result.size.height = v13;
  result.size.width = v15;
  result.origin.y = v12;
  result.origin.x = v14;
  return result;
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  v7 = sub_10004C45C(a3);
  [(LabeledSlider *)v6 maximumValue];
  v9 = (v8 / ((*(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_ticks))[2] - 1)) * v7;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for LabeledSlider();
  *&v10 = v9;
  [(LabeledSlider *)&v11 setValue:v4 animated:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004CE10();
}

- (_TtC5Setup13LabeledSlider)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end