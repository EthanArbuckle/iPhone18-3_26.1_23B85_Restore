@interface ImageWithCircleBackground
- (_TtC6Health25ImageWithCircleBackground)initWithCoder:(id)a3;
- (_TtC6Health25ImageWithCircleBackground)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ImageWithCircleBackground

- (_TtC6Health25ImageWithCircleBackground)initWithCoder:(id)a3
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
  v3 = [v2 layer];
  [v2 frame];
  [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtC6Health25ImageWithCircleBackground)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end