@interface IMUIViewAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation IMUIViewAccessibility

- (BOOL)accessibilityPerformEscape
{
  imaxIdentification = [(IMUIViewAccessibility *)self imaxIdentification];
  if ([imaxIdentification isEqualToString:@"AENoteWindow"])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:AEAnnotationPopoverShouldHideNotification object:0];

LABEL_4:
    v5 = 1;
    goto LABEL_8;
  }

  v8.receiver = self;
  v8.super_class = IMUIViewAccessibility;
  if ([(IMUIViewAccessibility *)&v8 accessibilityPerformEscape])
  {
    goto LABEL_4;
  }

  v6 = [(IMUIViewAccessibility *)self imaxValueForKey:@"imaxParentAnnotationPopoverViewController"];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    [v6 hide];
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  }

LABEL_8:
  return v5 & 1;
}

@end