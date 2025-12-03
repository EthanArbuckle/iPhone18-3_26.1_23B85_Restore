@interface RCPlatterStopButtonCAPackageManager
+ (id)stopButtonPackageManager;
- (RCPlatterStopButtonCAPackageManager)initWithPackageName:(id)name inBundle:(id)bundle;
- (UIView)view;
- (id)_stringForMicaState:(unint64_t)state;
- (void)_setMicaState:(unint64_t)state animated:(BOOL)animated;
- (void)setMicaState:(unint64_t)state;
@end

@implementation RCPlatterStopButtonCAPackageManager

+ (id)stopButtonPackageManager
{
  v2 = [RCPlatterStopButtonCAPackageManager alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [(RCPlatterStopButtonCAPackageManager *)v2 initWithPackageName:@"PlatterStopButton" inBundle:v3];

  return v4;
}

- (RCPlatterStopButtonCAPackageManager)initWithPackageName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = RCPlatterStopButtonCAPackageManager;
  v8 = [(RCPlatterStopButtonCAPackageManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RCPlatterStopButtonCAPackageManager *)v8 setPackageName:nameCopy];
    [(RCPlatterStopButtonCAPackageManager *)v9 setBundle:bundleCopy];
  }

  return v9;
}

- (void)setMicaState:(unint64_t)state
{
  if (self->_micaState != state)
  {
    self->_micaState = state;
    [RCPlatterStopButtonCAPackageManager _setMicaState:"_setMicaState:animated:" animated:?];
  }
}

- (UIView)view
{
  packageView = [(RCPlatterStopButtonCAPackageManager *)self packageView];

  if (!packageView)
  {
    v4 = [BSUICAPackageView alloc];
    packageName = [(RCPlatterStopButtonCAPackageManager *)self packageName];
    bundle = [(RCPlatterStopButtonCAPackageManager *)self bundle];
    v7 = [v4 initWithPackageName:packageName inBundle:bundle];
    [(RCPlatterStopButtonCAPackageManager *)self setPackageView:v7];

    [(RCPlatterStopButtonCAPackageManager *)self _setMicaState:self->_micaState animated:1];
  }

  return [(RCPlatterStopButtonCAPackageManager *)self packageView];
}

- (void)_setMicaState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  animatedCopy2 = animated;
  packageView = [(RCPlatterStopButtonCAPackageManager *)self packageView];
  layer = [packageView layer];
  *&v10 = animatedCopy2;
  [layer setSpeed:v10];

  v17 = [(RCPlatterStopButtonCAPackageManager *)self _stringForMicaState:state];
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v11 platterStopButtonStateTransitionDuration];
  v13 = v12;

  packageView2 = [(RCPlatterStopButtonCAPackageManager *)self packageView];
  v15 = packageView2;
  v16 = 0.0;
  if (animatedCopy)
  {
    v16 = v13;
  }

  [packageView2 setState:v17 animated:animatedCopy transitionSpeed:0 completion:v16];
}

- (id)_stringForMicaState:(unint64_t)state
{
  if (state > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_10028A4A8 + state);
  }
}

@end