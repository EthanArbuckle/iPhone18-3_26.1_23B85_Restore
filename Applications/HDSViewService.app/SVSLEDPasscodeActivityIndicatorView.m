@interface SVSLEDPasscodeActivityIndicatorView
- (_TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView)initWithFrame:(CGRect)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation SVSLEDPasscodeActivityIndicatorView

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10008F524(v5);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10008D59C();
}

- (_TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end