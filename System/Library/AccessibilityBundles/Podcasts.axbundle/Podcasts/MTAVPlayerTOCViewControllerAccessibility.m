@interface MTAVPlayerTOCViewControllerAccessibility
- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5;
@end

@implementation MTAVPlayerTOCViewControllerAccessibility

- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTAVPlayerTOCViewControllerAccessibility;
  v7 = a4;
  v8 = a3;
  [(MTAVPlayerTOCViewControllerAccessibility *)&v12 configureCell:v8 withObject:v7 atIndexPath:a5];
  v9 = [v8 safeValueForKey:{@"durationLabel", v12.receiver, v12.super_class}];

  v10 = [v7 safeValueForKey:@"duration"];

  [v10 doubleValue];
  v11 = AXDurationStringForDuration();
  [v9 setAccessibilityLabel:v11];
}

@end