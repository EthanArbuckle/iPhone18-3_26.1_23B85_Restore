@interface AAUIBadgeImageFactoryAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4;
@end

@implementation AAUIBadgeImageFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUIBadgeImageFactory" hasInstanceMethod:@"thumbnailImageForAchievement:size:" withFullSignature:{"@", "{CGSize=dd}", 0}];
  [v3 validateClass:@"ACHAchievement" hasInstanceMethod:@"earnedInstanceCount" withFullSignature:{"Q", 0}];
}

- (id)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v12.receiver = self;
  v12.super_class = AAUIBadgeImageFactoryAccessibility;
  v6 = a3;
  v7 = [(AAUIBadgeImageFactoryAccessibility *)&v12 thumbnailImageForAchievement:v6 size:width, height];
  v8 = [v6 safeUnsignedIntegerForKey:@"earnedInstanceCount"];

  if (v8)
  {
    v9 = accessibilityLocalizedString(@"achievement.earn.count");
    v10 = [NSString localizedStringWithFormat:v9, v8];
    [v7 setAccessibilityValue:v10];
  }

  else
  {
    v9 = accessibilityLocalizedString(@"achievement.unearned");
    [v7 setAccessibilityValue:v9];
  }

  return v7;
}

@end