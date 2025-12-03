@interface SupplementalContentButton
- (CGSize)intrinsicContentSize;
- (_TtC5Books25SupplementalContentButton)initWithCoder:(id)coder;
- (_TtC5Books25SupplementalContentButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SupplementalContentButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006986C0();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1006989D0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC5Books25SupplementalContentButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books25SupplementalContentButton_compactMode) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SupplementalContentButton();
  return [(SupplementalContentButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books25SupplementalContentButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Books25SupplementalContentButton_compactMode) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SupplementalContentButton();
  coderCopy = coder;
  v5 = [(SupplementalContentButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end