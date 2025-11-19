@interface SFSiteCardRedesignCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SFSiteCardRedesignCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_captionLabel" withType:"SFSiteCardSourceView"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFSiteCardSourceView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SFSiteCardRedesignCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SFSiteCardRedesignCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(SFSiteCardRedesignCellAccessibility *)self safeValueForKeyPath:@"_titleLabel.text"];
  v4 = [(SFSiteCardRedesignCellAccessibility *)self safeValueForKeyPath:@"_subtitleLabel.text"];
  v7 = [(SFSiteCardRedesignCellAccessibility *)self safeValueForKeyPath:@"_captionLabel.text"];
  v5 = __AXStringForVariables();

  return v5;
}

@end