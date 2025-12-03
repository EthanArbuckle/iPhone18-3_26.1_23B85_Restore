@interface CALayer(SwiftUIAdditions)
- (uint64_t)setCoordinatedAnimationDelegate;
- (uint64_t)setNoAnimationDelegate;
- (uint64_t)setSDFCoordinatedAnimationDelegate;
- (uint64_t)swiftUI_displayListID;
- (uint64_t)swiftUI_viewTestProperties;
- (void)setSwiftUI_displayListID:()SwiftUIAdditions;
- (void)setSwiftUI_viewTestProperties:()SwiftUIAdditions;
@end

@implementation CALayer(SwiftUIAdditions)

- (uint64_t)setNoAnimationDelegate
{
  v2 = objc_opt_class();

  return [self setDelegate:v2];
}

- (uint64_t)swiftUI_displayListID
{
  v1 = [self valueForKey:@"_swiftUI_displayListID"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)setSwiftUI_displayListID:()SwiftUIAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self setValue:v2 forKey:@"_swiftUI_displayListID"];
}

- (uint64_t)swiftUI_viewTestProperties
{
  v1 = [self valueForKey:@"_swiftUI_viewTestProperties"];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setSwiftUI_viewTestProperties:()SwiftUIAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [self setValue:v2 forKey:@"_swiftUI_viewTestProperties"];
}

- (uint64_t)setCoordinatedAnimationDelegate
{
  v2 = objc_opt_class();

  return [self setDelegate:v2];
}

- (uint64_t)setSDFCoordinatedAnimationDelegate
{
  v2 = objc_opt_class();

  return [self setDelegate:v2];
}

@end