@interface SwiftUIUIKitBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SwiftUIUIKitBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SwiftUI.UIKitBarButtonItem" isKindOfClass:@"UIBarButtonItem"];
  [validationsCopy validateClass:@"SwiftUI.UIKitBarButtonItem" hasSwiftField:@"host" withSwiftType:"UIKitBarItemHost<BarItemView>"];
}

- (id)accessibilityIdentifier
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  accessibilityElements = [v3 accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  accessibilityIdentifier = [firstObject accessibilityIdentifier];
  v7 = accessibilityIdentifier;
  if (accessibilityIdentifier)
  {
    accessibilityIdentifier2 = accessibilityIdentifier;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    accessibilityIdentifier2 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityIdentifier];
  }

  v9 = accessibilityIdentifier2;

  return v9;
}

- (id)accessibilityLabel
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  accessibilityElements = [v3 accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  accessibilityLabel = [firstObject accessibilityLabel];
  v7 = accessibilityLabel;
  if (accessibilityLabel)
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    accessibilityLabel2 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityLabel];
  }

  v9 = accessibilityLabel2;

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  accessibilityElements = [v3 accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  accessibilityValue = [firstObject accessibilityValue];
  v7 = accessibilityValue;
  if (accessibilityValue)
  {
    accessibilityValue2 = accessibilityValue;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    accessibilityValue2 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityValue];
  }

  v9 = accessibilityValue2;

  return v9;
}

- (id)accessibilityHint
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  accessibilityElements = [v3 accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  accessibilityHint = [firstObject accessibilityHint];
  v7 = accessibilityHint;
  if (accessibilityHint)
  {
    accessibilityHint2 = accessibilityHint;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    accessibilityHint2 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityHint];
  }

  v9 = accessibilityHint2;

  return v9;
}

@end