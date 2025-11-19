@interface FloatingPlayerContainerView
- (_TtC5Books27FloatingPlayerContainerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation FloatingPlayerContainerView

- (_TtC5Books27FloatingPlayerContainerView)initWithCoder:(id)a3
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FloatingPlayerContainerView();
  v2 = v4.receiver;
  [(FloatingPlayerContainerView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

@end