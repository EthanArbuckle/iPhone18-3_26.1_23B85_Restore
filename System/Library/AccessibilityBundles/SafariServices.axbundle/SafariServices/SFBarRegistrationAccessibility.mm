@interface SFBarRegistrationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SFBarRegistrationAccessibility)initWithBar:(id)bar barManager:(id)manager layout:(int64_t)layout persona:(int64_t)persona;
- (id)_UIBarButtonItemForBarItem:(int64_t)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFBarRegistrationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceMethod:@"initWithBar:barManager:layout:persona:" withFullSignature:{"@", "@", "@", "q", "q", 0}];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceMethod:@"_UIBarButtonItemForBarItem:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_backItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_forwardItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_bookmarksItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_newTabItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_tabExposeItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_shareItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_openInSafariItem" withType:"UIBarButtonItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25.receiver = self;
  v25.super_class = SFBarRegistrationAccessibility;
  [(SFBarRegistrationAccessibility *)&v25 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_backItem"];
  v4 = accessibilitySafariServicesLocalizedString(@"buttonbar.back.text");
  [v3 setAccessibilityLabel:v4];

  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_backItem"];
    v8 = accessibilitySafariServicesLocalizedString(@"buttonbar.back.hint");
    [v7 setAccessibilityHint:v8];
  }

  v9 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_forwardItem"];
  v10 = accessibilitySafariServicesLocalizedString(@"buttonbar.forward.text");
  [v9 setAccessibilityLabel:v10];

  v11 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_bookmarksItem"];
  v12 = accessibilitySafariServicesLocalizedString(@"buttonbar.show.bookmarks.text");
  [v11 setAccessibilityLabel:v12];

  v13 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_bookmarksItem"];
  v14 = accessibilitySafariServicesLocalizedString(@"buttonbar.bookmarks.hint");
  [v13 setAccessibilityHint:v14];

  v15 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_newTabItem"];
  v16 = accessibilitySafariServicesLocalizedString(@"new.tab.button");
  [v15 setAccessibilityLabel:v16];

  v17 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_tabExposeItem"];
  v18 = accessibilitySafariServicesLocalizedString(@"buttonbar.tabs.text");
  [v17 setAccessibilityLabel:v18];

  v19 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_tabExposeItem"];
  v20 = accessibilitySafariServicesLocalizedString(@"buttonbar.tabs.hint");
  [v19 setAccessibilityHint:v20];

  v21 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_shareItem"];
  v22 = accessibilitySafariServicesLocalizedString(@"actions.button");
  [v21 setAccessibilityLabel:v22];

  v23 = [(SFBarRegistrationAccessibility *)self safeValueForKey:@"_openInSafariItem"];
  v24 = accessibilitySafariServicesLocalizedString(@"open.safari");
  [v23 setAccessibilityLabel:v24];
}

- (id)_UIBarButtonItemForBarItem:(int64_t)item
{
  v7.receiver = self;
  v7.super_class = SFBarRegistrationAccessibility;
  v4 = [(SFBarRegistrationAccessibility *)&v7 _UIBarButtonItemForBarItem:?];
  v5 = v4;
  if ((item + 101) <= 1)
  {
    [v4 setIsAccessibilityElement:0];
  }

  return v5;
}

- (SFBarRegistrationAccessibility)initWithBar:(id)bar barManager:(id)manager layout:(int64_t)layout persona:(int64_t)persona
{
  v8.receiver = self;
  v8.super_class = SFBarRegistrationAccessibility;
  v6 = [(SFBarRegistrationAccessibility *)&v8 initWithBar:bar barManager:manager layout:layout persona:persona];
  [(SFBarRegistrationAccessibility *)v6 _accessibilityLoadAccessibilityInformation];

  return v6;
}

@end