@interface BKBrightnessControllerAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKBrightnessControllerAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = BKBrightnessControllerAccessibility;
  [(BKBrightnessControllerAccessibility *)&v7 viewWillAppear:appear];
  v4 = [(BKBrightnessControllerAccessibility *)self imaxValueForKey:@"_slider"];
  v5 = sub_1000765EC(@"brightness.button");
  [v4 setAccessibilityLabel:v5];

  v6 = [(BKBrightnessControllerAccessibility *)self imaxValueForKey:@"_slider"];
  [v6 imaxSetIdentification:@"BrightnessSlider"];
}

@end