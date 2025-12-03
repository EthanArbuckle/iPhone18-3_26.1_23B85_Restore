@interface CKMessagesController
- (id)ppt_chatController;
@end

@implementation CKMessagesController

- (id)ppt_chatController
{
  composeChatController = [(CKMessagesController *)self composeChatController];

  if (composeChatController)
  {
    [(CKMessagesController *)self composeChatController];
  }

  else
  {
    [(CKMessagesController *)self chatController];
  }
  v4 = ;

  return v4;
}

@end