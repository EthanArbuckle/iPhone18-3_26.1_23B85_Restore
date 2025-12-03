@interface SVSLEDPasscodeActivityIndicatorView
- (_TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView)initWithFrame:(CGRect)frame;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
@end

@implementation SVSLEDPasscodeActivityIndicatorView

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  sub_10008F524(stopCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10008D59C();
}

- (_TtC14HDSViewService35SVSLEDPasscodeActivityIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end