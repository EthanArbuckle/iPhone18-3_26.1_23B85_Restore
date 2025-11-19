@interface USCoreLocationWrapper
- (USCoreLocationWrapper)init;
@end

@implementation USCoreLocationWrapper

- (USCoreLocationWrapper)init
{
  v5.receiver = self;
  v5.super_class = USCoreLocationWrapper;
  v2 = [(USCoreLocationWrapper *)&v5 init];
  if (v2)
  {
    v3 = [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:@"com.apple.boardwalk.watchapp" delegate:v2 onQueue:&_dispatch_main_q];
    [(USCoreLocationWrapper *)v2 setManager:v3];
  }

  return v2;
}

@end