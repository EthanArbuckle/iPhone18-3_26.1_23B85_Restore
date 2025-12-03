@interface EKCalendarItemEditorAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation EKCalendarItemEditorAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = EKCalendarItemEditorAccessibility;
  v4 = [(EKCalendarItemEditorAccessibility *)&v9 tableView:view cellForRowAtIndexPath:path];
  [v4 _setAccessibilityTableCellUsesDetailTextAsValue:1];
  detailTextLabel = [v4 detailTextLabel];
  text = [detailTextLabel text];
  v7 = [text length];

  if (v7)
  {
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }

  return v4;
}

@end