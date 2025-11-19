@interface WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore
- (BOOL)_axIsAttachmentType;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore

- (BOOL)_axIsAttachmentType
{
  v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"IsAttachmentType"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilitySetBoolValue:0 forKey:@"IsAttachmentType"];
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    v4 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityValue
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    v4 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityValue];
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    v4 = [v3 accessibilityHint];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    v4 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityHint];
  }

  return v4;
}

@end