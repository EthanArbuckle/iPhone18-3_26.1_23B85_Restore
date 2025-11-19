@interface tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVUnifiedPlayerContextMenuCell" hasInstanceMethod:@"leadingImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVUnifiedPlayerContextMenuCell" hasInstanceMethod:@"trailingImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)self safeUIViewForKey:@"leadingImageView"];
  v4 = [v3 accessibilityLabel];
  v10.receiver = self;
  v10.super_class = tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility;
  v5 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)&v10 accessibilityLabel];
  v6 = [(tvOS_AVUnifiedPlayerContextMenuFocusableCellAccessibility *)self safeUIViewForKey:@"trailingImageView"];
  v9 = [v6 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end