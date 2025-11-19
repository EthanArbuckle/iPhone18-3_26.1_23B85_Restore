@interface MessageSaveImageAttachmentActivity
- (id)activityTitle;
@end

@implementation MessageSaveImageAttachmentActivity

- (id)activityTitle
{
  v3 = [(MessageSaveToCameraRollActivity *)self delegate];
  v4 = [v3 canSaveAllAttachmentsInContext:{-[MessageSaveToCameraRollActivity context](self, "context")}];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SAVE_IMAGE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MessageSaveImageAttachmentActivity;
    v6 = [(MessageSaveImageAttachmentActivity *)&v8 activityTitle];
  }

  return v6;
}

@end