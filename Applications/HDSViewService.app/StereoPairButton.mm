@interface StereoPairButton
- (BOOL)isHighlighted;
- (_TtC14HDSViewService16StereoPairButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation StereoPairButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StereoPairButton();
  return [(StereoPairButton *)&v3 isHighlighted];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for StereoPairButton();
  v2 = v4.receiver;
  [(StereoPairButton *)&v4 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle] layer];
  [v2 frame];
  [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];

  sub_100061C28();
}

- (_TtC14HDSViewService16StereoPairButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end