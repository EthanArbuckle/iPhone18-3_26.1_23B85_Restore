@interface CHFriendManager
- (CHFriendManager)initWithActivitySharingClient:(id)a3;
- (void)acceptCompetitionRequestFromFriend:(id)a3 completion:(id)a4;
- (void)acceptInvitationFromFriend:(id)a3 completion:(id)a4;
- (void)cloudKitAccountStatusWithCompletion:(id)a3;
- (void)ignoreCompetitionRequestFromFriend:(id)a3 completion:(id)a4;
- (void)ignoreInvitationFromFriend:(id)a3 completion:(id)a4;
- (void)removeFriend:(id)a3 completion:(id)a4;
- (void)sendCompetitionRequestToFriend:(id)a3 completion:(id)a4;
- (void)sendInviteToRecipient:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 withCompletion:(id)a6;
- (void)setActivityDataVisible:(BOOL)a3 toFriend:(id)a4 completion:(id)a5;
- (void)setMuteEnabled:(BOOL)a3 forFriend:(id)a4 completion:(id)a5;
- (void)withdrawInvitationToFriend:(id)a3 completion:(id)a4;
@end

@implementation CHFriendManager

- (CHFriendManager)initWithActivitySharingClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHFriendManager;
  v6 = [(CHFriendManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activitySharingClient, a3);
  }

  return v7;
}

- (void)sendInviteToRecipient:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 withCompletion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 address];
  if (!v13)
  {
    ASLoggingInitialize();
    v14 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_10069D058(v14);
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    else if (!v12)
    {
      goto LABEL_6;
    }

    v15 = [NSError alloc];
    v16 = [v15 initWithDomain:kASDomain code:0 userInfo:0];
    v12[2](v12, 0, v16);

    goto LABEL_6;
  }

  [(ASActivitySharingClient *)self->_activitySharingClient sendFriendInviteToDestination:v13 callerID:v10 serviceIdentifier:v11 completion:v12];
LABEL_6:
}

- (void)setActivityDataVisible:(BOOL)a3 toFriend:(id)a4 completion:(id)a5
{
  v6 = a3;
  activitySharingClient = self->_activitySharingClient;
  v8 = a5;
  v10 = [a4 UUID];
  v9 = [v10 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient setActivityDataVisible:v6 friendUUID:v9 completion:v8];
}

- (void)setMuteEnabled:(BOOL)a3 forFriend:(id)a4 completion:(id)a5
{
  v6 = a3;
  activitySharingClient = self->_activitySharingClient;
  v8 = a5;
  v10 = [a4 UUID];
  v9 = [v10 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient setMuteEnabled:v6 friendUUID:v9 completion:v8];
}

- (void)removeFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v8 = [a3 UUID];
  v7 = [v8 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient removeFriendWithUUID:v7 completion:v6];
}

- (void)acceptInvitationFromFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v8 = [a3 UUID];
  v7 = [v8 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient acceptFriendInviteFromFriendUUID:v7 completion:v6];
}

- (void)ignoreInvitationFromFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v8 = [a3 UUID];
  v7 = [v8 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient ignoreFriendInviteFromFriendUUID:v7 completion:v6];
}

- (void)withdrawInvitationToFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v8 = [a3 UUID];
  v7 = [v8 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient withdrawFriendInviteToFriendUUID:v7 completion:v6];
}

- (void)cloudKitAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  activitySharingClient = self->_activitySharingClient;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BD00;
  v7[3] = &unk_10083CA98;
  v8 = v4;
  v6 = v4;
  [(ASActivitySharingClient *)activitySharingClient isCloudKitAccountActiveWithCompletion:v7];
}

- (void)sendCompetitionRequestToFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v7 = [a3 UUID];
  v8 = [v7 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient sendCompetitionInviteToFriendUUID:v8 completion:v6];

  _ASAnalyticsReportCompetitionRequestSendApp();
}

- (void)acceptCompetitionRequestFromFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v7 = [a3 UUID];
  v8 = [v7 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient acceptCompetitionInviteFromFriendUUID:v8 completion:v6];

  _ASAnalyticsReportCompetitionRequestAccept(2);
}

- (void)ignoreCompetitionRequestFromFriend:(id)a3 completion:(id)a4
{
  activitySharingClient = self->_activitySharingClient;
  v6 = a4;
  v7 = [a3 UUID];
  v8 = [v7 UUIDString];
  [(ASActivitySharingClient *)activitySharingClient ignoreCompetitionInviteFromFriendUUID:v8 completion:v6];

  _ASAnalyticsReportCompetitionRequestIgnore(2);
}

@end