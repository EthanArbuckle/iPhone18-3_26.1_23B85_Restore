@interface EKReminderURLDetailItem
+ (id)titleForCell;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (BOOL)hasCellBelow;
- (id)_createEventDetailCell;
- (id)urlAttributedText;
@end

@implementation EKReminderURLDetailItem

- (id)urlAttributedText
{
  v2 = [(REMReminder *)self->super.super.super._reminder attachmentContext];
  v3 = [v2 urlAttachments];
  v4 = [v3 firstObject];
  v5 = [v4 url];

  if (v5)
  {
    v6 = [v5 absoluteString];

    if (v6)
    {
      v6 = CUIKGetAttributedStringForEventDetailWithURL();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v5 = [(EKReminderURLDetailItem *)self urlAttributedText:a3];
  v6 = v5 != 0;

  return v6;
}

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"URL-reminder-detail" value:@"URL" table:0];

  return v3;
}

- (BOOL)hasCellBelow
{
  v2 = [(REMReminder *)self->super.super.super._reminder notes];
  v3 = [v2 string];
  v4 = CUIKShouldDisplayNotes();

  return v4;
}

- (id)_createEventDetailCell
{
  v3 = [EKReminderDetailTextCell alloc];
  event = self->super.super.super._event;
  reminder = self->super.super.super._reminder;
  v6 = [(EKReminderURLDetailItem *)self showExtraSpaceAtBottom];
  v7 = [objc_opt_class() titleForCell];
  v8 = [(EKReminderURLDetailItem *)self urlAttributedText];
  v9 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:v6 title:v7 attributedText:v8];

  [(EKReminderDetailTextCell *)v9 setHideBottomCellSeparator:[(EKReminderURLDetailItem *)self hasCellBelow]^ 1];

  return v9;
}

@end