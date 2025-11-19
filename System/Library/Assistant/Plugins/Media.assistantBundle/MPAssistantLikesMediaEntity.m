@interface MPAssistantLikesMediaEntity
- (void)_performWithCompletion:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantLikesMediaEntity

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  requestAceHash = self->_requestAceHash;
  userIdentity = self->_userIdentity;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334EDDF8;
  v8[3] = &unk_2789DB2D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_233505CB8(@"Likes Media Entity", requestAceHash, 21, userIdentity, v8);
}

- (void)performWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantLikesMediaEntity *)self aceId];
    v6 = sub_233505670(@"Likes Media Entity", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Likes Media Entity (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = self->_requestAceHash;
  v11 = [(SAMPLikesMediaEntity *)self influencedSharedUserId];
  v12 = [(SAMPLikesMediaEntity *)self influencedSharedUserId];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334EE0D4;
  v15[3] = &unk_2789DB648;
  v15[4] = self;
  v16 = v4;
  v13 = v4;
  sub_233506A24(@"Likes Media Entity", v10, v11, v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

@end