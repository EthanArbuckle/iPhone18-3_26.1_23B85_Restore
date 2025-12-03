@interface IndividualSwipeOptionControllerAccessibility
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation IndividualSwipeOptionControllerAccessibility

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = IndividualSwipeOptionControllerAccessibility;
  cellCopy = cell;
  [(IndividualSwipeOptionControllerAccessibility *)&v12 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  textLabel = [cellCopy textLabel];
  isEnabled = [textLabel isEnabled];
  v10 = *MEMORY[0x29EDC7FA8];
  if (isEnabled)
  {
    v11 = 0;
  }

  else
  {
    v11 = *MEMORY[0x29EDC7FA8];
  }

  [cellCopy setAccessibilityTraits:v11];
}

@end