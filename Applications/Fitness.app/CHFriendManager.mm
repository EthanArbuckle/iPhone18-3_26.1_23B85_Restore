@interface CHFriendManager
- (CHFriendManager)initWithActivitySharingClient:(id)client;
- (void)acceptCompetitionRequestFromFriend:(id)friend completion:(id)completion;
- (void)acceptInvitationFromFriend:(id)friend completion:(id)completion;
- (void)cloudKitAccountStatusWithCompletion:(id)completion;
- (void)ignoreCompetitionRequestFromFriend:(id)friend completion:(id)completion;
- (void)ignoreInvitationFromFriend:(id)friend completion:(id)completion;
- (void)removeFriend:(id)friend completion:(id)completion;
- (void)sendCompetitionRequestToFriend:(id)friend completion:(id)completion;
- (void)sendInviteToRecipient:(id)recipient callerID:(id)d serviceIdentifier:(id)identifier withCompletion:(id)completion;
- (void)setActivityDataVisible:(BOOL)visible toFriend:(id)friend completion:(id)completion;
- (void)setMuteEnabled:(BOOL)enabled forFriend:(id)friend completion:(id)completion;
- (void)withdrawInvitationToFriend:(id)friend completion:(id)completion;
@end

@implementation CHFriendManager

- (CHFriendManager)initWithActivitySharingClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = CHFriendManager;
  v6 = [(CHFriendManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activitySharingClient, client);
  }

  return v7;
}

- (void)sendInviteToRecipient:(id)recipient callerID:(id)d serviceIdentifier:(id)identifier withCompletion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  address = [recipient address];
  if (!address)
  {
    ASLoggingInitialize();
    v14 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_10069D058(v14);
      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_6;
    }

    v15 = [NSError alloc];
    v16 = [v15 initWithDomain:kASDomain code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v16);

    goto LABEL_6;
  }

  [(ASActivitySharingClient *)self->_activitySharingClient sendFriendInviteToDestination:address callerID:dCopy serviceIdentifier:identifierCopy completion:completionCopy];
LABEL_6:
}

- (void)setActivityDataVisible:(BOOL)visible toFriend:(id)friend completion:(id)completion
{
  visibleCopy = visible;
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient setActivityDataVisible:visibleCopy friendUUID:uUIDString completion:completionCopy];
}

- (void)setMuteEnabled:(BOOL)enabled forFriend:(id)friend completion:(id)completion
{
  enabledCopy = enabled;
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient setMuteEnabled:enabledCopy friendUUID:uUIDString completion:completionCopy];
}

- (void)removeFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient removeFriendWithUUID:uUIDString completion:completionCopy];
}

- (void)acceptInvitationFromFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient acceptFriendInviteFromFriendUUID:uUIDString completion:completionCopy];
}

- (void)ignoreInvitationFromFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient ignoreFriendInviteFromFriendUUID:uUIDString completion:completionCopy];
}

- (void)withdrawInvitationToFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient withdrawFriendInviteToFriendUUID:uUIDString completion:completionCopy];
}

- (void)cloudKitAccountStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  activitySharingClient = self->_activitySharingClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BD00;
  v7[3] = &unk_10083CA98;
  v8 = completionCopy;
  v6 = completionCopy;
  [(ASActivitySharingClient *)activitySharingClient isCloudKitAccountActiveWithCompletion:v7];
}

- (void)sendCompetitionRequestToFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient sendCompetitionInviteToFriendUUID:uUIDString completion:completionCopy];

  _ASAnalyticsReportCompetitionRequestSendApp();
}

- (void)acceptCompetitionRequestFromFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient acceptCompetitionInviteFromFriendUUID:uUIDString completion:completionCopy];

  _ASAnalyticsReportCompetitionRequestAccept(2);
}

- (void)ignoreCompetitionRequestFromFriend:(id)friend completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  uUID = [friend UUID];
  uUIDString = [uUID UUIDString];
  [(ASActivitySharingClient *)activitySharingClient ignoreCompetitionInviteFromFriendUUID:uUIDString completion:completionCopy];

  _ASAnalyticsReportCompetitionRequestIgnore(2);
}

@end