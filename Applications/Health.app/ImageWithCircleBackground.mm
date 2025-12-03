@interface ImageWithCircleBackground
- (_TtC6Health25ImageWithCircleBackground)initWithCoder:(id)coder;
- (_TtC6Health25ImageWithCircleBackground)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ImageWithCircleBackground

- (_TtC6Health25ImageWithCircleBackground)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ImageWithCircleBackground();
  v2 = v4.receiver;
  [(ImageWithCircleBackground *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 frame];
  [layer setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtC6Health25ImageWithCircleBackground)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end