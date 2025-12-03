@interface NavDrivingSignLayout
+ (id)sharedDrivingSignLayout;
- (double)shieldViewTopMarginForSign:(id)sign;
- (double)textBottomMarginForSign:(id)sign;
@end

@implementation NavDrivingSignLayout

- (double)shieldViewTopMarginForSign:(id)sign
{
  v4.receiver = self;
  v4.super_class = NavDrivingSignLayout;
  [(NavManeverSignLayoutBase *)&v4 shieldViewTopMarginForSign:sign];
  return result;
}

- (double)textBottomMarginForSign:(id)sign
{
  signCopy = sign;
  maneuverSign = [signCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if (maneuverSignType)
  {
    v10.receiver = self;
    v10.super_class = NavDrivingSignLayout;
    [(NavManeverSignLayoutBase *)&v10 textBottomMarginForSign:signCopy];
    v8 = v7;
  }

  else
  {
    v8 = 27.0;
  }

  return v8;
}

+ (id)sharedDrivingSignLayout
{
  if (qword_10195F6B0 != -1)
  {
    dispatch_once(&qword_10195F6B0, &stru_10165CD00);
  }

  v3 = qword_10195F6A8;

  return v3;
}

@end