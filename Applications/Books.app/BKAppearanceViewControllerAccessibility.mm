@interface BKAppearanceViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)themeContainer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_changeAppearanceStyle:(int)style;
- (void)decreaseFontSize:(id)size;
- (void)increaseFontSize:(id)size;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BKAppearanceViewControllerAccessibility

- (void)_changeAppearanceStyle:(int)style
{
  v5.receiver = self;
  v5.super_class = BKAppearanceViewControllerAccessibility;
  [(BKAppearanceViewControllerAccessibility *)&v5 _changeAppearanceStyle:*&style];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = sub_1000765EC(@"selected");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)increaseFontSize:(id)size
{
  v5.receiver = self;
  v5.super_class = BKAppearanceViewControllerAccessibility;
  [(BKAppearanceViewControllerAccessibility *)&v5 increaseFontSize:size];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = sub_1000765EC(@"font.size.increased");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)decreaseFontSize:(id)size
{
  v5.receiver = self;
  v5.super_class = BKAppearanceViewControllerAccessibility;
  [(BKAppearanceViewControllerAccessibility *)&v5 decreaseFontSize:size];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = sub_1000765EC(@"font.size.decreased");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)viewDidAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = BKAppearanceViewControllerAccessibility;
  [(BKAppearanceViewControllerAccessibility *)&v19 viewDidAppear:appear];
  objc_opt_class();
  v4 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"tableView"];
  v5 = __IMAccessibilityCastAsClass();

  [v5 setIsAccessibilityElement:0];
  objc_opt_class();
  v6 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_brightnessSlider"];
  v7 = __IMAccessibilityCastAsClass();

  v8 = sub_1000765EC(@"brightness.button");
  [v7 setAccessibilityLabel:v8];

  [v7 accessibilitySetIdentification:@"BrightnessSlider"];
  objc_opt_class();
  v9 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_sizeSmallerButton"];
  v10 = __IMAccessibilityCastAsClass();

  v11 = sub_1000765EC(@"decrease.font.size.button");
  [v10 setAccessibilityLabel:v11];

  v12 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_sizeLargerButton"];
  v13 = sub_1000765EC(@"increase.font.size.button");
  [v12 setAccessibilityLabel:v13];

  objc_opt_class();
  v14 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"scrollSwitch"];
  v15 = __IMAccessibilityCastAsClass();

  objc_opt_class();
  superview = [v15 superview];
  v17 = __IMAccessibilityCastAsClass();

  v18 = sub_1000765EC(@"vertical.scrolling.switch");
  [v17 setAccessibilityLabel:v18];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v7);
}

- (id)themeContainer
{
  v5.receiver = self;
  v5.super_class = BKAppearanceViewControllerAccessibility;
  themeContainer = [(BKAppearanceViewControllerAccessibility *)&v5 themeContainer];
  [(BKAppearanceViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return themeContainer;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = BKAppearanceViewControllerAccessibility;
  v5 = [(BKAppearanceViewControllerAccessibility *)&v9 tableView:view cellForRowAtIndexPath:path];
  v6 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_themeContainer"];
  if ([v6 _accessibilityIsDescendantOfElement:v5])
  {
    [v5 setAccessibilityContainerType:4];
    v7 = sub_1000765EC(@"theme.selector.container");
    [v5 setAccessibilityLabel:v7];
  }

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = BKAppearanceViewControllerAccessibility;
  [(BKAppearanceViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_themeWhiteLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_themeSepiaLabel"];
  [v4 setIsAccessibilityElement:0];

  v5 = [(BKAppearanceViewControllerAccessibility *)self imaxValueForKey:@"_themeNightLabel"];
  [v5 setIsAccessibilityElement:0];
}

@end