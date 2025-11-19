@interface CHWorkoutDetailAppleWeatherFooterView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CHWorkoutDetailAppleWeatherFooterView)initWithCoder:(id)a3;
- (CHWorkoutDetailAppleWeatherFooterView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation CHWorkoutDetailAppleWeatherFooterView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = self;
  [(CHWorkoutDetailAppleWeatherFooterView *)v5 frame];
  [(CHWorkoutDetailAppleWeatherFooterView *)v5 sizeThatFits:CGRectGetWidth(v13), INFINITY];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CHWorkoutDetailAppleWeatherFooterView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CHWorkoutDetailAppleWeatherFooterView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end