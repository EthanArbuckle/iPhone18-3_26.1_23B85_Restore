@interface UIButton(MKCrossPlatformOperations)
- (id)_mapkit_title;
@end

@implementation UIButton(MKCrossPlatformOperations)

- (id)_mapkit_title
{
  v1 = [a1 titleLabel];
  v2 = [v1 text];

  return v2;
}

@end