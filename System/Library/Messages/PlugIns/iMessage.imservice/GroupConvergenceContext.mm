@interface GroupConvergenceContext
- (GroupConvergenceContext)initWithChat:(id)a3;
- (id)_messageIDForUpdateType:(unint64_t)a3 participant:(id)a4;
- (id)chatStatusChangeContextForUpdateType:(unint64_t)a3 participant:(id)a4;
- (id)memberStatusChangeContextForUpdateType:(unint64_t)a3 participant:(id)a4;
@end

@implementation GroupConvergenceContext

- (GroupConvergenceContext)initWithChat:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GroupConvergenceContext;
  v5 = [(GroupConvergenceContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 chatIdentifier];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = v6;

    v5->_chatStyle = [v4 style];
    v5->_isBlackholed = [v4 isBlackholed];
    v8 = [v4 participants];
    v9 = [v8 arrayByApplyingSelector:"ID"];
    currentParticipants = v5->_currentParticipants;
    v5->_currentParticipants = v9;
  }

  return v5;
}

- (id)_messageIDForUpdateType:(unint64_t)a3 participant:(id)a4
{
  v6 = a4;
  v7 = [(GroupConvergenceContext *)self participantChangeGUIDs];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    if (a3 == 1)
    {
      v21 = v6;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      v14 = [(GroupConvergenceContext *)self participantsToRemove];
      v15 = [v13 isEqualToArray:v14];

      if (!v15)
      {
LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }

      v12 = [(GroupConvergenceContext *)self participantsToAdd];
    }

    else
    {
      if (a3)
      {
        goto LABEL_9;
      }

      v22 = v6;
      v9 = [NSArray arrayWithObjects:&v22 count:1];
      v10 = [(GroupConvergenceContext *)self participantsToAdd];
      v11 = [v9 isEqualToArray:v10];

      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = [(GroupConvergenceContext *)self participantsToRemove];
    }

    v16 = v12;
    v17 = [v12 count];

    if (v17)
    {
      goto LABEL_9;
    }

    v8 = [(GroupConvergenceContext *)self messageID];
  }

LABEL_10:
  v18 = [[NSUUID alloc] initWithUUIDString:v8];
  v19 = [v18 UUIDString];

  return v19;
}

- (id)memberStatusChangeContextForUpdateType:(unint64_t)a3 participant:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [v7 setHandleID:v6];
  if (a3 == 2)
  {
    [v7 setUnattributed:1];
  }

  if (![(GroupConvergenceContext *)self isReflection])
  {
    v8 = [(GroupConvergenceContext *)self fromIdentifier];
    v9 = [v8 _stripFZIDPrefix];
    [v7 setFromHandleID:v9];
  }

  v10 = [(GroupConvergenceContext *)self chatIdentifier];
  [v7 setChatIdentifier:v10];

  [v7 setStyle:{-[GroupConvergenceContext chatStyle](self, "chatStyle")}];
  v11 = [(GroupConvergenceContext *)self account];
  [v7 setAccount:v11];

  v12 = [(GroupConvergenceContext *)self toIdentifier];
  v13 = [v12 _stripFZIDPrefix];
  [v7 setDestinationCallerID:v13];

  v14 = [(GroupConvergenceContext *)self _messageIDForUpdateType:a3 participant:v6];
  [v7 setMessageID:v14];

  return v7;
}

- (id)chatStatusChangeContextForUpdateType:(unint64_t)a3 participant:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(IMDChatStatusChangeContext);
  v8 = [(GroupConvergenceContext *)self chatIdentifier];
  [v7 setChatIdentifier:v8];

  [v7 setChatStyle:{-[GroupConvergenceContext chatStyle](self, "chatStyle")}];
  v9 = [(GroupConvergenceContext *)self groupID];
  [v7 setGroupID:v9];

  v10 = [(GroupConvergenceContext *)self account];
  [v7 setAccount:v10];

  [v7 setIsBlackholed:{-[GroupConvergenceContext isBlackholed](self, "isBlackholed")}];
  v11 = [(GroupConvergenceContext *)self _messageIDForUpdateType:a3 participant:v6];

  [v7 setMessageID:v11];

  return v7;
}

@end