@interface MTAVPlayerTOCViewControllerAccessibility
- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path;
@end

@implementation MTAVPlayerTOCViewControllerAccessibility

- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = MTAVPlayerTOCViewControllerAccessibility;
  objectCopy = object;
  cellCopy = cell;
  [(MTAVPlayerTOCViewControllerAccessibility *)&v12 configureCell:cellCopy withObject:objectCopy atIndexPath:path];
  v9 = [cellCopy safeValueForKey:{@"durationLabel", v12.receiver, v12.super_class}];

  v10 = [objectCopy safeValueForKey:@"duration"];

  [v10 doubleValue];
  v11 = AXDurationStringForDuration();
  [v9 setAccessibilityLabel:v11];
}

@end