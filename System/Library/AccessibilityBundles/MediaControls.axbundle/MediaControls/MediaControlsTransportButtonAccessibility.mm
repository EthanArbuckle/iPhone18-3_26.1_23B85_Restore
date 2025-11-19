@interface MediaControlsTransportButtonAccessibility
- (id)accessibilityCustomActions;
@end

@implementation MediaControlsTransportButtonAccessibility

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = MediaControlsTransportButtonAccessibility;
  v2 = [(MediaControlsTransportButtonAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

@end