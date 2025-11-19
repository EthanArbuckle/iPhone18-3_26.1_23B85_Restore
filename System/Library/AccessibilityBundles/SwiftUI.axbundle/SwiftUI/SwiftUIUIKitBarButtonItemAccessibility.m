@interface SwiftUIUIKitBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SwiftUIUIKitBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SwiftUI.UIKitBarButtonItem" isKindOfClass:@"UIBarButtonItem"];
  [v3 validateClass:@"SwiftUI.UIKitBarButtonItem" hasSwiftField:@"host" withSwiftType:"UIKitBarItemHost<BarItemView>"];
}

- (id)accessibilityIdentifier
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  v4 = [v3 accessibilityElements];
  v5 = [v4 firstObject];
  v6 = [v5 accessibilityIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    v8 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityIdentifier];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityLabel
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  v4 = [v3 accessibilityElements];
  v5 = [v4 firstObject];
  v6 = [v5 accessibilityLabel];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    v8 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityLabel];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  v4 = [v3 accessibilityElements];
  v5 = [v4 firstObject];
  v6 = [v5 accessibilityValue];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    v8 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityValue];
  }

  v9 = v8;

  return v9;
}

- (id)accessibilityHint
{
  v3 = [(SwiftUIUIKitBarButtonItemAccessibility *)self safeSwiftValueForKey:@"host"];
  v4 = [v3 accessibilityElements];
  v5 = [v4 firstObject];
  v6 = [v5 accessibilityHint];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SwiftUIUIKitBarButtonItemAccessibility;
    v8 = [(SwiftUIUIKitBarButtonItemAccessibility *)&v11 accessibilityHint];
  }

  v9 = v8;

  return v9;
}

@end