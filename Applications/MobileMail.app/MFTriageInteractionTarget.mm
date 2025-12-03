@interface MFTriageInteractionTarget
- (MFTriageInteractionTarget)initWithMessageListItem:(id)item primaryMessage:(id)message selectedMessageContent:(id)content primaryMessageContentRequest:(id)request targetPreference:(int64_t)preference preferQuickCompositionalActions:(BOOL)actions;
- (NSArray)targetedMessages;
@end

@implementation MFTriageInteractionTarget

- (MFTriageInteractionTarget)initWithMessageListItem:(id)item primaryMessage:(id)message selectedMessageContent:(id)content primaryMessageContentRequest:(id)request targetPreference:(int64_t)preference preferQuickCompositionalActions:(BOOL)actions
{
  itemCopy = item;
  messageCopy = message;
  contentCopy = content;
  requestCopy = request;
  if (itemCopy)
  {
    if (messageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MFTriageInteractionTarget.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"messageListItem"}];

    if (messageCopy)
    {
      goto LABEL_3;
    }
  }

  v25 = +[NSAssertionHandler currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"MFTriageInteractionTarget.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"primaryMessage"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = MFTriageInteractionTarget;
  v19 = [(MFTriageInteractionTarget *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_messageListItem, item);
    objc_storeStrong(&v20->_primaryMessage, message);
    v21 = [contentCopy copy];
    selectedMessageContent = v20->_selectedMessageContent;
    v20->_selectedMessageContent = v21;

    objc_storeStrong(&v20->_primaryMessageContentRequest, request);
    v20->_targetPreference = preference;
    v20->_preferQuickCompositionalActions = actions;
  }

  return v20;
}

- (NSArray)targetedMessages
{
  if ([(MFTriageInteractionTarget *)self targetPreference]== 1)
  {
    messageListItem = [(MFTriageInteractionTarget *)self messageListItem];
    v11 = messageListItem;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  primaryMessage = [(MFTriageInteractionTarget *)self primaryMessage];
  messageListItem = primaryMessage;
  if (primaryMessage)
  {
    v10 = primaryMessage;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    goto LABEL_5;
  }

  messageListItem2 = [(MFTriageInteractionTarget *)self messageListItem];
  v9 = messageListItem2;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

LABEL_6:

  return v6;
}

@end