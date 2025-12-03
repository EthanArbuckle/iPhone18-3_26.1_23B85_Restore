@interface AXTimeTravelDateManager
+ (void)setTimeTravelDate:(id)date;
@end

@implementation AXTimeTravelDateManager

+ (void)setTimeTravelDate:(id)date
{
  __timeTravelDate = [date copy];

  _objc_release_x1();
}

@end