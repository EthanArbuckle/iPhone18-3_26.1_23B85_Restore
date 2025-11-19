@interface SUStorePageViewControllerAccessibility
- (BOOL)reloadForSectionsWithGroup:(id)a3;
- (void)_handleViewControllerBecameReady:(id)a3;
@end

@implementation SUStorePageViewControllerAccessibility

- (void)_handleViewControllerBecameReady:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUStorePageViewControllerAccessibility;
  [(SUStorePageViewControllerAccessibility *)&v3 _handleViewControllerBecameReady:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (BOOL)reloadForSectionsWithGroup:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUStorePageViewControllerAccessibility;
  v4 = [(SUStorePageViewControllerAccessibility *)&v8 reloadForSectionsWithGroup:a3];
  v5 = [(SUStorePageViewControllerAccessibility *)self safeValueForKey:@"_segmentedControl"];
  v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_accessibilityContentLanguage"];
  [v5 setAccessibilityLanguage:v6];

  return v4;
}

@end