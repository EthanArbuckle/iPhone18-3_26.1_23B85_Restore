@interface AEAnnotationPopoverViewControllerAccessibility
- (void)didHide;
- (void)viewDidLoad;
@end

@implementation AEAnnotationPopoverViewControllerAccessibility

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AEAnnotationPopoverViewControllerAccessibility;
  [(AEAnnotationPopoverViewControllerAccessibility *)&v5 viewDidLoad];
  v3 = [(AEAnnotationPopoverViewControllerAccessibility *)self imaxValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];

  v4 = [(AEAnnotationPopoverViewControllerAccessibility *)self imaxValueForKey:@"view"];
  [v4 imaxSetIdentification:@"AENoteWindow"];
}

- (void)didHide
{
  v2.receiver = self;
  v2.super_class = AEAnnotationPopoverViewControllerAccessibility;
  [(AEAnnotationPopoverViewControllerAccessibility *)&v2 didHide];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

@end