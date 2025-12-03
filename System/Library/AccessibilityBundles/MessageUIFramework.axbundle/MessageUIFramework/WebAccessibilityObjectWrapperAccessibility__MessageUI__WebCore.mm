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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilitySetBoolValue:0 forKey:@"IsAttachmentType"];
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)accessibilityLabel
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    accessibilityLabel = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    accessibilityLabel = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    accessibilityValue = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    accessibilityValue = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if ([(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _axIsAttachmentType])
  {
    v3 = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)self _accessibilityValueForKey:@"AXAttachment"];
    accessibilityHint = [v3 accessibilityHint];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore;
    accessibilityHint = [(WebAccessibilityObjectWrapperAccessibility__MessageUI__WebCore *)&v6 accessibilityHint];
  }

  return accessibilityHint;
}

@end