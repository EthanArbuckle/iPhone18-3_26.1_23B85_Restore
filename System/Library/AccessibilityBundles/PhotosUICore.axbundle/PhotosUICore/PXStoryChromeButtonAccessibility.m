@interface PXStoryChromeButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsInFeedView;
- (id)accessibilityLabel;
@end

@implementation PXStoryChromeButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXStoryChromeButton" hasInstanceMethod:@"userData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXStoryChromeButtonConfiguration" hasInstanceMethod:@"systemImageName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXFeedView"];
}

- (id)accessibilityLabel
{
  v3 = [(PXStoryChromeButtonAccessibility *)self safeValueForKey:@"userData"];
  v4 = [v3 safeStringForKey:@"systemImageName"];

  if ([v4 isEqualToString:@"speaker.wave.2"])
  {
    v5 = @"photo.volume.button";
LABEL_5:
    v6 = accessibilityPhotosUICoreLocalizedString(v5);
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"speaker.slash"])
  {
    v5 = @"photo.volume.muted.button";
    goto LABEL_5;
  }

  v7 = AXSSAccessibilityDescriptionForSymbolName();
  v6 = v7;
  if (v7 && [v7 length])
  {
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"arrow.counterclockwise"])
  {
    v9 = accessibilityPhotosUICoreLocalizedString(@"story.replay");

    v6 = v9;
  }

LABEL_6:
  if (!v6)
  {
    v10.receiver = self;
    v10.super_class = PXStoryChromeButtonAccessibility;
    v6 = [(PXStoryChromeButtonAccessibility *)&v10 accessibilityLabel];
  }

LABEL_10:

  return v6;
}

- (BOOL)_accessibilityIsInFeedView
{
  v2 = [(PXStoryChromeButtonAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

uint64_t __62__PXStoryChromeButtonAccessibility__accessibilityIsInFeedView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E6930](@"PXFeedView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end