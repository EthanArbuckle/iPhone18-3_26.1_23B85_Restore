@interface AXTimeTravelDateManager
+ (void)setTimeTravelDate:(id)a3;
@end

@implementation AXTimeTravelDateManager

+ (void)setTimeTravelDate:(id)a3
{
  __timeTravelDate = [a3 copy];

  _objc_release_x1();
}

@end