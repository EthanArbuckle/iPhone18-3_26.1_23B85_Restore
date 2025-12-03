@interface SFSiteCardRedesignCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SFSiteCardRedesignCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSiteCardRedesignCell" hasInstanceVariable:@"_captionLabel" withType:"SFSiteCardSourceView"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFSiteCardSourceView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
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