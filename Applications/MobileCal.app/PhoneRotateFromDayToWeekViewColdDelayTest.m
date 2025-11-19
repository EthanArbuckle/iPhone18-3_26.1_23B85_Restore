@interface PhoneRotateFromDayToWeekViewColdDelayTest
- (void)_rotationTest;
- (void)_willChangeOrientation:(id)a3;
@end

@implementation PhoneRotateFromDayToWeekViewColdDelayTest

- (void)_rotationTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_willChangeOrientation:" name:UIWindowWillRotateNotification object:0];

  v4.receiver = self;
  v4.super_class = PhoneRotateFromDayToWeekViewColdDelayTest;
  [(RotationTest *)&v4 _rotationTest];
}

- (void)_willChangeOrientation:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIWindowWillRotateNotification object:0];

  [(RotationTest *)self _finishTest];
}

@end