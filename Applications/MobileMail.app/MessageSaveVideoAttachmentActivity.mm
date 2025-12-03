@interface MessageSaveVideoAttachmentActivity
- (id)activityTitle;
@end

@implementation MessageSaveVideoAttachmentActivity

- (id)activityTitle
{
  delegate = [(MessageSaveToCameraRollActivity *)self delegate];
  v4 = [delegate canSaveAllAttachmentsInContext:{-[MessageSaveToCameraRollActivity context](self, "context")}];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    activityTitle = [v5 localizedStringForKey:@"SAVE_VIDEO" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MessageSaveVideoAttachmentActivity;
    activityTitle = [(MessageSaveVideoAttachmentActivity *)&v8 activityTitle];
  }

  return activityTitle;
}

@end