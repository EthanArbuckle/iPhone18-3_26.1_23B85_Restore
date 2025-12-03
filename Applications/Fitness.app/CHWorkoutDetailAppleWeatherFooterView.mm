@interface CHWorkoutDetailAppleWeatherFooterView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CHWorkoutDetailAppleWeatherFooterView)initWithCoder:(id)coder;
- (CHWorkoutDetailAppleWeatherFooterView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation CHWorkoutDetailAppleWeatherFooterView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  [(CHWorkoutDetailAppleWeatherFooterView *)selfCopy frame];
  [(CHWorkoutDetailAppleWeatherFooterView *)selfCopy sizeThatFits:CGRectGetWidth(v13), INFINITY];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CHWorkoutDetailAppleWeatherFooterView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CHWorkoutDetailAppleWeatherFooterView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end