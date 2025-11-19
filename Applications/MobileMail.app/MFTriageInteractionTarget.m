@interface MFTriageInteractionTarget
- (MFTriageInteractionTarget)initWithMessageListItem:(id)a3 primaryMessage:(id)a4 selectedMessageContent:(id)a5 primaryMessageContentRequest:(id)a6 targetPreference:(int64_t)a7 preferQuickCompositionalActions:(BOOL)a8;
- (NSArray)targetedMessages;
@end

@implementation MFTriageInteractionTarget

- (MFTriageInteractionTarget)initWithMessageListItem:(id)a3 primaryMessage:(id)a4 selectedMessageContent:(id)a5 primaryMessageContentRequest:(id)a6 targetPreference:(int64_t)a7 preferQuickCompositionalActions:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MFTriageInteractionTarget.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"messageListItem"}];

    if (v16)
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
    objc_storeStrong(&v19->_messageListItem, a3);
    objc_storeStrong(&v20->_primaryMessage, a4);
    v21 = [v17 copy];
    selectedMessageContent = v20->_selectedMessageContent;
    v20->_selectedMessageContent = v21;

    objc_storeStrong(&v20->_primaryMessageContentRequest, a6);
    v20->_targetPreference = a7;
    v20->_preferQuickCompositionalActions = a8;
  }

  return v20;
}

- (NSArray)targetedMessages
{
  if ([(MFTriageInteractionTarget *)self targetPreference]== 1)
  {
    v3 = [(MFTriageInteractionTarget *)self messageListItem];
    v11 = v3;
    v4 = [NSArray arrayWithObjects:&v11 count:1];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(MFTriageInteractionTarget *)self primaryMessage];
  v3 = v5;
  if (v5)
  {
    v10 = v5;
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    goto LABEL_5;
  }

  v8 = [(MFTriageInteractionTarget *)self messageListItem];
  v9 = v8;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

LABEL_6:

  return v6;
}

@end