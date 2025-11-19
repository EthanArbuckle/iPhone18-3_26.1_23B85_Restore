@interface MeasureApplication
+ (MeasureApplication)sharedApplication;
- (MeasureApplication)init;
- (int64_t)statusBarOrientation;
- (void)performWhileOverriddingStatusBarOrientation:(int64_t)a3 block:(id)a4;
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MeasureApplication;
  v2 = objc_msgSendSuper2(&v4, "sharedApplication");

  return v2;
}

- (void)performWhileOverriddingStatusBarOrientation:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MeasureApplication *)self isOverriddingStatusBarOrientation];
  v8 = [(MeasureApplication *)self statusBarOrientation];
  [(MeasureApplication *)self setOverriddingStatusBarOrientation:1];
  [(MeasureApplication *)self setOverriddenStatusBarOrientation:a3];
  v6[2](v6);

  [(MeasureApplication *)self setOverriddingStatusBarOrientation:v7];

  [(MeasureApplication *)self setOverriddenStatusBarOrientation:v8];
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