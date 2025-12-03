@interface SwipeOptionsControllerAccessibility
- (void)_configureSwipeDiagramInCell:(id)cell atIndexPath:(id)path;
@end

@implementation SwipeOptionsControllerAccessibility

- (void)_configureSwipeDiagramInCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = SwipeOptionsControllerAccessibility;
  pathCopy = path;
  [(SwipeOptionsControllerAccessibility *)&v13 _configureSwipeDiagramInCell:cellCopy atIndexPath:pathCopy];
  section = [pathCopy section];

  v9 = @"right";
  if (!section)
  {
    v9 = @"left";
  }

  v10 = v9;
  if (([(__CFString *)v10 isEqualToString:@"left"]& 1) != 0)
  {
    v11 = @"diagram.swipe.left";
LABEL_7:
    v12 = accessibilityLocalizedString(v11);
    [cellCopy setAccessibilityLabel:v12];

    goto LABEL_8;
  }

  if ([(__CFString *)v10 isEqualToString:@"right"])
  {
    v11 = @"diagram.swipe.right";
    goto LABEL_7;
  }

LABEL_8:
  [cellCopy setIsAccessibilityElement:1];
  [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
}

@end