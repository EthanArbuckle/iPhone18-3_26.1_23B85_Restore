@interface FloatingPlayerContainerView
- (_TtC5Books27FloatingPlayerContainerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FloatingPlayerContainerView

- (_TtC5Books27FloatingPlayerContainerView)initWithCoder:(id)coder
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
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

@end