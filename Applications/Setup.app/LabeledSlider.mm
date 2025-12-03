@interface LabeledSlider
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (_TtC5Setup13LabeledSlider)initWithCoder:(id)coder;
- (_TtC5Setup13LabeledSlider)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setValue:(float)value animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation LabeledSlider

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_10004B21C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC5Setup13LabeledSlider)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_labelPositionConstraints) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_labelOffset) = 0x4024000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_thumbSize) = 0x403B000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_10004CA54();
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_10004BF18();
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
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

- (void)setValue:(float)value animated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  v7 = sub_10004C45C(value);
  [(LabeledSlider *)selfCopy maximumValue];
  v9 = (v8 / ((*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC5Setup13LabeledSlider_ticks))[2] - 1)) * v7;
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for LabeledSlider();
  *&v10 = v9;
  [(LabeledSlider *)&v11 setValue:animatedCopy animated:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10004CE10();
}

- (_TtC5Setup13LabeledSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end