@interface CarUIGrabber
- (CarUIGrabber)initWithFrame:(CGRect)frame;
@end

@implementation CarUIGrabber

- (CarUIGrabber)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarUIGrabber;
  v3 = [(CarUIGrabber *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor _carSystemFocusColor];
    [(CarUIGrabber *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end