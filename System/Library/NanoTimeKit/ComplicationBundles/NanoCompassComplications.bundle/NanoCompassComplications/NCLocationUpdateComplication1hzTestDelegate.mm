@interface NCLocationUpdateComplication1hzTestDelegate
- (NCLocationUpdateComplication1hzTestDelegate)init;
@end

@implementation NCLocationUpdateComplication1hzTestDelegate

- (NCLocationUpdateComplication1hzTestDelegate)init
{
  v3.receiver = self;
  v3.super_class = NCLocationUpdateComplication1hzTestDelegate;
  return [(NCLocationUpdateBaseDelegate *)&v3 init];
}

@end