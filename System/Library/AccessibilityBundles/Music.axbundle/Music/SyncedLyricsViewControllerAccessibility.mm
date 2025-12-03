@interface SyncedLyricsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SyncedLyricsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LyricsX.SyncedLyricsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"LyricsX.SyncedLyricsViewController" hasSwiftField:@"scrollView" withSwiftType:"UIScrollView"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SyncedLyricsViewControllerAccessibility;
  [(SyncedLyricsViewControllerAccessibility *)&v3 viewDidLoad];
  [(SyncedLyricsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SyncedLyricsViewControllerAccessibility;
  [(SyncedLyricsViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SyncedLyricsViewControllerAccessibility *)self safeSwiftValueForKey:@"scrollView"];
  [v3 setAccessibilityIdentifier:@"AXSyncedLyricsScrollView"];
}

@end