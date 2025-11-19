@interface SwipeOptionsControllerAccessibility
- (void)_configureSwipeDiagramInCell:(id)a3 atIndexPath:(id)a4;
@end

@implementation SwipeOptionsControllerAccessibility

- (void)_configureSwipeDiagramInCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SwipeOptionsControllerAccessibility;
  v7 = a4;
  [(SwipeOptionsControllerAccessibility *)&v13 _configureSwipeDiagramInCell:v6 atIndexPath:v7];
  v8 = [v7 section];

  v9 = @"right";
  if (!v8)
  {
    v9 = @"left";
  }

  v10 = v9;
  if (([(__CFString *)v10 isEqualToString:@"left"]& 1) != 0)
  {
    v11 = @"diagram.swipe.left";
LABEL_7:
    v12 = accessibilityLocalizedString(v11);
    [v6 setAccessibilityLabel:v12];

    goto LABEL_8;
  }

  if ([(__CFString *)v10 isEqualToString:@"right"])
  {
    v11 = @"diagram.swipe.right";
    goto LABEL_7;
  }

LABEL_8:
  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
}

@end