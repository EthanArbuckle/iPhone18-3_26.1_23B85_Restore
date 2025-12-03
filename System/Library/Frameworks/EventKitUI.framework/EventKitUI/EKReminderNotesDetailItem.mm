@interface EKReminderNotesDetailItem
+ (id)titleForCell;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
@end

@implementation EKReminderNotesDetailItem

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v6 = [(REMReminder *)self->super.super.super._reminder notes:event];
  string = [v6 string];
  if ([string length])
  {
    notes = [(REMReminder *)self->super.super.super._reminder notes];
    string2 = [notes string];
    v10 = CUIKShouldDisplayNotes();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Notes-reminder-detail" value:@"Notes" table:0];

  return v3;
}

id __58__EKReminderNotesDetailItem_textFromEventAndReminderBlock__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 notes];
  v4 = [v3 string];

  return v4;
}

@end