@interface MeasureApplication
+ (MeasureApplication)sharedApplication;
- (MeasureApplication)init;
- (int64_t)statusBarOrientation;
- (void)performWhileOverriddingStatusBarOrientation:(int64_t)orientation block:(id)block;
@end

@implementation MeasureApplication

- (MeasureApplication)init
{
  v3.receiver = self;
  v3.super_class = MeasureApplication;
  result = [(MeasureApplication *)&v3 init];
  if (result)
  {
    result->_overriddingStatusBarOrientation = 0;
    result->_overriddenStatusBarOrientation = 0;
  }

  return result;
}

+ (MeasureApplication)sharedApplication
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MeasureApplication;
  v2 = objc_msgSendSuper2(&v4, "sharedApplication");

  return v2;
}

- (void)performWhileOverriddingStatusBarOrientation:(int64_t)orientation block:(id)block
{
  blockCopy = block;
  isOverriddingStatusBarOrientation = [(MeasureApplication *)self isOverriddingStatusBarOrientation];
  statusBarOrientation = [(MeasureApplication *)self statusBarOrientation];
  [(MeasureApplication *)self setOverriddingStatusBarOrientation:1];
  [(MeasureApplication *)self setOverriddenStatusBarOrientation:orientation];
  blockCopy[2](blockCopy);

  [(MeasureApplication *)self setOverriddingStatusBarOrientation:isOverriddingStatusBarOrientation];

  [(MeasureApplication *)self setOverriddenStatusBarOrientation:statusBarOrientation];
}

- (int64_t)statusBarOrientation
{
  if ([(MeasureApplication *)self isOverriddingStatusBarOrientation])
  {

    return [(MeasureApplication *)self overriddenStatusBarOrientation];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MeasureApplication;
    return [(MeasureApplication *)&v4 statusBarOrientation];
  }
}

@end