@interface CarUIGrabber
- (CarUIGrabber)initWithFrame:(CGRect)a3;
@end

@implementation CarUIGrabber

- (CarUIGrabber)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarUIGrabber;
  v3 = [(CarUIGrabber *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor _carSystemFocusColor];
    [(CarUIGrabber *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end