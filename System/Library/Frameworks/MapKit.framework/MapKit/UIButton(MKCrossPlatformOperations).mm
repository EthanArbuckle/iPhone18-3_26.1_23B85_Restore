@interface UIButton(MKCrossPlatformOperations)
- (id)_mapkit_title;
@end

@implementation UIButton(MKCrossPlatformOperations)

- (id)_mapkit_title
{
  titleLabel = [self titleLabel];
  text = [titleLabel text];

  return text;
}

@end