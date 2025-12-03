@interface AKAuthorizationScopeDetailTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation AKAuthorizationScopeDetailTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" hasInstanceMethod:@"isChecked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" hasInstanceMethod:@"scopeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" hasInstanceMethod:@"mainLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" hasInstanceMethod:@"mainDetailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" hasInstanceMethod:@"checkmarkStyle" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AKAuthorizationScopeDetailTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AKAuthorizationScopeDetailTableViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(AKAuthorizationScopeDetailTableViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(AKAuthorizationScopeDetailTableViewCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(AKAuthorizationScopeDetailTableViewCellAccessibility *)self safeUnsignedIntegerForKey:@"checkmarkStyle"])
  {
    v6.receiver = self;
    v6.super_class = AKAuthorizationScopeDetailTableViewCellAccessibility;
    _accessibilitySupplementaryFooterViews = [(AKAuthorizationScopeDetailTableViewCellAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v4 = [(AKAuthorizationScopeDetailTableViewCellAccessibility *)self safeValueForKey:@"accessoryView"];
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  return _accessibilitySupplementaryFooterViews;
}

@end