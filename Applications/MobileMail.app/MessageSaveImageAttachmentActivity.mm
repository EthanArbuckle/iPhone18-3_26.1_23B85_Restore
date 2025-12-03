@interface MessageSaveImageAttachmentActivity
- (id)activityTitle;
@end

@implementation MessageSaveImageAttachmentActivity

- (id)activityTitle
{
  delegate = [(MessageSaveToCameraRollActivity *)self delegate];
  v4 = [delegate canSaveAllAttachmentsInContext:{-[MessageSaveToCameraRollActivity context](self, "context")}];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    activityTitle = [v5 localizedStringForKey:@"SAVE_IMAGE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MessageSaveImageAttachmentActivity;
    activityTitle = [(MessageSaveImageAttachmentActivity *)&v8 activityTitle];
  }

  return activityTitle;
}

@end