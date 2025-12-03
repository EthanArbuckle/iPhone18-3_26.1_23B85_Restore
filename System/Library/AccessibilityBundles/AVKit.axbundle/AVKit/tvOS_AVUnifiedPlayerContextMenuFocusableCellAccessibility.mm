@interface tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVUnifiedPlayerContextMenuCell" hasInstanceMethod:@"leadingImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVUnifiedPlayerContextMenuCell" hasInstanceMethod:@"trailingImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)self safeUIViewForKey:@"leadingImageView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v10.receiver = self;
  v10.super_class = tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility;
  accessibilityLabel2 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)&v10 accessibilityLabel];
  v6 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)self safeUIViewForKey:@"trailingImageView"];
  accessibilityLabel3 = [v6 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end