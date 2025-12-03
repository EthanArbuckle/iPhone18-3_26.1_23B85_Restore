@interface SUStorePageViewControllerAccessibility
- (BOOL)reloadForSectionsWithGroup:(id)group;
- (void)_handleViewControllerBecameReady:(id)ready;
@end

@implementation SUStorePageViewControllerAccessibility

- (void)_handleViewControllerBecameReady:(id)ready
{
  v3.receiver = self;
  v3.super_class = SUStorePageViewControllerAccessibility;
  [(SUStorePageViewControllerAccessibility *)&v3 _handleViewControllerBecameReady:ready];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (BOOL)reloadForSectionsWithGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = SUStorePageViewControllerAccessibility;
  v4 = [(SUStorePageViewControllerAccessibility *)&v8 reloadForSectionsWithGroup:group];
  v5 = [(SUStorePageViewControllerAccessibility *)self safeValueForKey:@"_segmentedControl"];
  v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_accessibilityContentLanguage"];
  [v5 setAccessibilityLanguage:v6];

  return v4;
}

@end