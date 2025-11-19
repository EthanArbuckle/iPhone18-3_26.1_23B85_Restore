@interface EKCalendarItemEditorAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation EKCalendarItemEditorAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = EKCalendarItemEditorAccessibility;
  v4 = [(EKCalendarItemEditorAccessibility *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  [v4 _setAccessibilityTableCellUsesDetailTextAsValue:1];
  v5 = [v4 detailTextLabel];
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }

  return v4;
}

@end