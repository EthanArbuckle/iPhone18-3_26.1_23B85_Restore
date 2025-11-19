@interface EKReminderNotesDetailItem
+ (id)titleForCell;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
@end

@implementation EKReminderNotesDetailItem

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = [(REMReminder *)self->super.super.super._reminder notes:a3];
  v7 = [v6 string];
  if ([v7 length])
  {
    v8 = [(REMReminder *)self->super.super.super._reminder notes];
    v9 = [v8 string];
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