@interface RatingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore10RatingView)initWithCoder:(id)coder;
- (_TtC8AppStore10RatingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RatingView

- (_TtC8AppStore10RatingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore10RatingView_rating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor) = 0;
  v3 = self + OBJC_IVAR____TtC8AppStore10RatingView_starPadding;
  *v3 = 0;
  v3[8] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003A36D4();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1003A57BC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1003A57BC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1003A5CBC(in);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (_TtC8AppStore10RatingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end