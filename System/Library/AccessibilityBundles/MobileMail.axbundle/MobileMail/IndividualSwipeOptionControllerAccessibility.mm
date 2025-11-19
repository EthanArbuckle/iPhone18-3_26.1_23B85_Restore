@interface IndividualSwipeOptionControllerAccessibility
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation IndividualSwipeOptionControllerAccessibility

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12.receiver = self;
  v12.super_class = IndividualSwipeOptionControllerAccessibility;
  v7 = a4;
  [(IndividualSwipeOptionControllerAccessibility *)&v12 tableView:a3 willDisplayCell:v7 forRowAtIndexPath:a5];
  v8 = [v7 textLabel];
  v9 = [v8 isEnabled];
  v10 = *MEMORY[0x29EDC7FA8];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *MEMORY[0x29EDC7FA8];
  }

  [v7 setAccessibilityTraits:v11];
}

@end