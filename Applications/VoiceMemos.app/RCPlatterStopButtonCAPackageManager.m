@interface RCPlatterStopButtonCAPackageManager
+ (id)stopButtonPackageManager;
- (RCPlatterStopButtonCAPackageManager)initWithPackageName:(id)a3 inBundle:(id)a4;
- (UIView)view;
- (id)_stringForMicaState:(unint64_t)a3;
- (void)_setMicaState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setMicaState:(unint64_t)a3;
@end

@implementation RCPlatterStopButtonCAPackageManager

+ (id)stopButtonPackageManager
{
  v2 = [RCPlatterStopButtonCAPackageManager alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [(RCPlatterStopButtonCAPackageManager *)v2 initWithPackageName:@"PlatterStopButton" inBundle:v3];

  return v4;
}

- (RCPlatterStopButtonCAPackageManager)initWithPackageName:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RCPlatterStopButtonCAPackageManager;
  v8 = [(RCPlatterStopButtonCAPackageManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RCPlatterStopButtonCAPackageManager *)v8 setPackageName:v6];
    [(RCPlatterStopButtonCAPackageManager *)v9 setBundle:v7];
  }

  return v9;
}

- (void)setMicaState:(unint64_t)a3
{
  if (self->_micaState != a3)
  {
    self->_micaState = a3;
    [RCPlatterStopButtonCAPackageManager _setMicaState:"_setMicaState:animated:" animated:?];
  }
}

- (UIView)view
{
  v3 = [(RCPlatterStopButtonCAPackageManager *)self packageView];

  if (!v3)
  {
    v4 = [BSUICAPackageView alloc];
    v5 = [(RCPlatterStopButtonCAPackageManager *)self packageName];
    v6 = [(RCPlatterStopButtonCAPackageManager *)self bundle];
    v7 = [v4 initWithPackageName:v5 inBundle:v6];
    [(RCPlatterStopButtonCAPackageManager *)self setPackageView:v7];

    [(RCPlatterStopButtonCAPackageManager *)self _setMicaState:self->_micaState animated:1];
  }

  return [(RCPlatterStopButtonCAPackageManager *)self packageView];
}

- (void)_setMicaState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a4;
  v8 = [(RCPlatterStopButtonCAPackageManager *)self packageView];
  v9 = [v8 layer];
  *&v10 = v7;
  [v9 setSpeed:v10];

  v17 = [(RCPlatterStopButtonCAPackageManager *)self _stringForMicaState:a3];
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v11 platterStopButtonStateTransitionDuration];
  v13 = v12;

  v14 = [(RCPlatterStopButtonCAPackageManager *)self packageView];
  v15 = v14;
  v16 = 0.0;
  if (v4)
  {
    v16 = v13;
  }

  [v14 setState:v17 animated:v4 transitionSpeed:0 completion:v16];
}

- (id)_stringForMicaState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_10028A4A8 + a3);
  }
}

@end