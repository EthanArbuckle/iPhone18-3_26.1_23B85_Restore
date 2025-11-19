@interface SUSubtitledButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SUSubtitledButtonAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = SUSubtitledButtonAccessibility;
  v3 = [(SUSubtitledButtonAccessibility *)&v7 accessibilityLabel];
  v6 = [(SUSubtitledButtonAccessibility *)self safeValueForKey:@"currentSubtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end