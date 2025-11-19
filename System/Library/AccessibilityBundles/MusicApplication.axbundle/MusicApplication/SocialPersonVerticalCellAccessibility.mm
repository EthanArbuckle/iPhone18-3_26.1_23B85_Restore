@interface SocialPersonVerticalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation SocialPersonVerticalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.SocialPersonVerticalCell" hasInstanceMethod:@"accessibilityPersonName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonVerticalCell" hasInstanceMethod:@"accessibilityPersonSubtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonVerticalCell" hasInstanceMethod:@"accessibilityFollowButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SocialPersonVerticalCell" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SocialPersonVerticalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SocialPersonVerticalCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SocialPersonVerticalCellAccessibility *)self safeValueForKey:@"accessibilityFollowButton"];
  v5 = [(SocialPersonVerticalCellAccessibility *)self safeValueForKey:@"accessibilityPersonName"];
  [v4 setAccessibilityValue:v5];

  if (v4)
  {
    [v3 addObject:v4];
  }

  v6 = [(SocialPersonVerticalCellAccessibility *)self safeValueForKey:@"accessibilityCloseButton"];
  v7 = accessibilityMusicLocalizedString(@"close.button");
  [v6 setAccessibilityLabel:v7];

  v8 = [(SocialPersonVerticalCellAccessibility *)self safeValueForKey:@"accessibilityPersonName"];
  [v6 setAccessibilityValue:v8];

  if (v6)
  {
    [v3 addObject:v6];
  }

  return v3;
}

@end