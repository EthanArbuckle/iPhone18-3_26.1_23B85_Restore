@interface SFLinkBannerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation SFLinkBannerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFLinkBanner" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFLinkBanner" hasInstanceMethod:@"messageLabelText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFLinkBanner" hasInstanceMethod:@"_open" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFLinkBanner" hasInstanceMethod:@"openButton" withFullSignature:{"@", 0}];
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(SFLinkBannerAccessibility *)self safeValueForKey:@"openButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(SFLinkBannerAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(SFLinkBannerAccessibility *)self safeValueForKey:@"messageLabelText"];
  v6 = [(SFLinkBannerAccessibility *)self safeValueForKey:@"openButton"];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end