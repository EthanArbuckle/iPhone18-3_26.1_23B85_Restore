@interface NavDrivingSignLayout
+ (id)sharedDrivingSignLayout;
- (double)shieldViewTopMarginForSign:(id)a3;
- (double)textBottomMarginForSign:(id)a3;
@end

@implementation NavDrivingSignLayout

- (double)shieldViewTopMarginForSign:(id)a3
{
  v4.receiver = self;
  v4.super_class = NavDrivingSignLayout;
  [(NavManeverSignLayoutBase *)&v4 shieldViewTopMarginForSign:a3];
  return result;
}

- (double)textBottomMarginForSign:(id)a3
{
  v4 = a3;
  v5 = [v4 maneuverSign];
  v6 = [v5 maneuverSignType];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = NavDrivingSignLayout;
    [(NavManeverSignLayoutBase *)&v10 textBottomMarginForSign:v4];
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