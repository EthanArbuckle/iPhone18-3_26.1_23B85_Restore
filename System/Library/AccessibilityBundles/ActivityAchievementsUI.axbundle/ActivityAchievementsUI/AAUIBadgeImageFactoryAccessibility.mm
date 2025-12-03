@interface AAUIBadgeImageFactoryAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)thumbnailImageForAchievement:(id)achievement size:(CGSize)size;
@end

@implementation AAUIBadgeImageFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUIBadgeImageFactory" hasInstanceMethod:@"thumbnailImageForAchievement:size:" withFullSignature:{"@", "{CGSize=dd}", 0}];
  [validationsCopy validateClass:@"ACHAchievement" hasInstanceMethod:@"earnedInstanceCount" withFullSignature:{"Q", 0}];
}

- (id)thumbnailImageForAchievement:(id)achievement size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = AAUIBadgeImageFactoryAccessibility;
  achievementCopy = achievement;
  height = [(AAUIBadgeImageFactoryAccessibility *)&v12 thumbnailImageForAchievement:achievementCopy size:width, height];
  v8 = [achievementCopy safeUnsignedIntegerForKey:@"earnedInstanceCount"];

  if (v8)
  {
    v9 = accessibilityLocalizedString(@"achievement.earn.count");
    v10 = [NSString localizedStringWithFormat:v9, v8];
    [height setAccessibilityValue:v10];
  }

  else
  {
    v9 = accessibilityLocalizedString(@"achievement.unearned");
    [height setAccessibilityValue:v9];
  }

  return height;
}

@end