@interface GroupConvergenceContext
- (GroupConvergenceContext)initWithChat:(id)chat;
- (id)_messageIDForUpdateType:(unint64_t)type participant:(id)participant;
- (id)chatStatusChangeContextForUpdateType:(unint64_t)type participant:(id)participant;
- (id)memberStatusChangeContextForUpdateType:(unint64_t)type participant:(id)participant;
@end

@implementation GroupConvergenceContext

- (GroupConvergenceContext)initWithChat:(id)chat
{
  chatCopy = chat;
  v12.receiver = self;
  v12.super_class = GroupConvergenceContext;
  v5 = [(GroupConvergenceContext *)&v12 init];
  if (v5)
  {
    chatIdentifier = [chatCopy chatIdentifier];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = chatIdentifier;

    v5->_chatStyle = [chatCopy style];
    v5->_isBlackholed = [chatCopy isBlackholed];
    participants = [chatCopy participants];
    v9 = [participants arrayByApplyingSelector:"ID"];
    currentParticipants = v5->_currentParticipants;
    v5->_currentParticipants = v9;
  }

  return v5;
}

- (id)_messageIDForUpdateType:(unint64_t)type participant:(id)participant
{
  participantCopy = participant;
  participantChangeGUIDs = [(GroupConvergenceContext *)self participantChangeGUIDs];
  messageID = [participantChangeGUIDs objectForKeyedSubscript:participantCopy];

  if (!messageID)
  {
    if (type == 1)
    {
      v21 = participantCopy;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      participantsToRemove = [(GroupConvergenceContext *)self participantsToRemove];
      v15 = [v13 isEqualToArray:participantsToRemove];

      if (!v15)
      {
LABEL_9:
        messageID = 0;
        goto LABEL_10;
      }

      participantsToAdd = [(GroupConvergenceContext *)self participantsToAdd];
    }

    else
    {
      if (type)
      {
        goto LABEL_9;
      }

      v22 = participantCopy;
      v9 = [NSArray arrayWithObjects:&v22 count:1];
      participantsToAdd2 = [(GroupConvergenceContext *)self participantsToAdd];
      v11 = [v9 isEqualToArray:participantsToAdd2];

      if (!v11)
      {
        goto LABEL_9;
      }

      participantsToAdd = [(GroupConvergenceContext *)self participantsToRemove];
    }

    v16 = participantsToAdd;
    v17 = [participantsToAdd count];

    if (v17)
    {
      goto LABEL_9;
    }

    messageID = [(GroupConvergenceContext *)self messageID];
  }

LABEL_10:
  v18 = [[NSUUID alloc] initWithUUIDString:messageID];
  uUIDString = [v18 UUIDString];

  return uUIDString;
}

- (id)memberStatusChangeContextForUpdateType:(unint64_t)type participant:(id)participant
{
  participantCopy = participant;
  v7 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [v7 setHandleID:participantCopy];
  if (type == 2)
  {
    [v7 setUnattributed:1];
  }

  if (![(GroupConvergenceContext *)self isReflection])
  {
    fromIdentifier = [(GroupConvergenceContext *)self fromIdentifier];
    _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
    [v7 setFromHandleID:_stripFZIDPrefix];
  }

  chatIdentifier = [(GroupConvergenceContext *)self chatIdentifier];
  [v7 setChatIdentifier:chatIdentifier];

  [v7 setStyle:{-[GroupConvergenceContext chatStyle](self, "chatStyle")}];
  account = [(GroupConvergenceContext *)self account];
  [v7 setAccount:account];

  toIdentifier = [(GroupConvergenceContext *)self toIdentifier];
  _stripFZIDPrefix2 = [toIdentifier _stripFZIDPrefix];
  [v7 setDestinationCallerID:_stripFZIDPrefix2];

  v14 = [(GroupConvergenceContext *)self _messageIDForUpdateType:type participant:participantCopy];
  [v7 setMessageID:v14];

  return v7;
}

- (id)chatStatusChangeContextForUpdateType:(unint64_t)type participant:(id)participant
{
  participantCopy = participant;
  v7 = objc_alloc_init(IMDChatStatusChangeContext);
  chatIdentifier = [(GroupConvergenceContext *)self chatIdentifier];
  [v7 setChatIdentifier:chatIdentifier];

  [v7 setChatStyle:{-[GroupConvergenceContext chatStyle](self, "chatStyle")}];
  groupID = [(GroupConvergenceContext *)self groupID];
  [v7 setGroupID:groupID];

  account = [(GroupConvergenceContext *)self account];
  [v7 setAccount:account];

  [v7 setIsBlackholed:{-[GroupConvergenceContext isBlackholed](self, "isBlackholed")}];
  v11 = [(GroupConvergenceContext *)self _messageIDForUpdateType:type participant:participantCopy];

  [v7 setMessageID:v11];

  return v7;
}

@end