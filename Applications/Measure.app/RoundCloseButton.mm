@interface RoundCloseButton
- (_TtC7Measure16RoundCloseButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation RoundCloseButton

- (_TtC7Measure16RoundCloseButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Measure16RoundCloseButton_contentView;
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC7Measure16RoundCloseButton_closeImageView;
  *(&self->super.super.super.super.super.super.isa + v5) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(RoundCloseButton *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Measure16RoundCloseButton_contentView];
  [v3 frame];
  [v3 _setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

@end