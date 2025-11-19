@interface CAMOverlayServiceControlHelpers
+ (id)interpretControl:(id)a3;
- (CAMOverlayServiceControlHelpers)init;
@end

@implementation CAMOverlayServiceControlHelpers

- (CAMOverlayServiceControlHelpers)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMOverlayServiceControlHelpers *)&v3 init];
}

+ (id)interpretControl:(id)a3
{
  v3 = a3;
  v4 = sub_10002D944();

  return v4;
}

@end