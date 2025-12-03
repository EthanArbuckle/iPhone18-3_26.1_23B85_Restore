@interface EKReminderURLDetailItem
+ (id)titleForCell;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (BOOL)hasCellBelow;
- (id)_createEventDetailCell;
- (id)urlAttributedText;
@end

@implementation EKReminderURLDetailItem

- (id)urlAttributedText
{
  attachmentContext = [(REMReminder *)self->super.super.super._reminder attachmentContext];
  urlAttachments = [attachmentContext urlAttachments];
  firstObject = [urlAttachments firstObject];
  v5 = [firstObject url];

  if (v5)
  {
    absoluteString = [v5 absoluteString];

    if (absoluteString)
    {
      absoluteString = CUIKGetAttributedStringForEventDetailWithURL();
    }
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v5 = [(EKReminderURLDetailItem *)self urlAttributedText:event];
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
  notes = [(REMReminder *)self->super.super.super._reminder notes];
  string = [notes string];
  v4 = CUIKShouldDisplayNotes();

  return v4;
}

- (id)_createEventDetailCell
{
  v3 = [EKReminderDetailTextCell alloc];
  event = self->super.super.super._event;
  reminder = self->super.super.super._reminder;
  showExtraSpaceAtBottom = [(EKReminderURLDetailItem *)self showExtraSpaceAtBottom];
  titleForCell = [objc_opt_class() titleForCell];
  urlAttributedText = [(EKReminderURLDetailItem *)self urlAttributedText];
  v9 = [(EKReminderDetailTextCell *)v3 initWithEvent:event reminder:reminder editable:0 showExtraSpaceAtBottom:showExtraSpaceAtBottom title:titleForCell attributedText:urlAttributedText];

  [(EKReminderDetailTextCell *)v9 setHideBottomCellSeparator:[(EKReminderURLDetailItem *)self hasCellBelow]^ 1];

  return v9;
}

@end