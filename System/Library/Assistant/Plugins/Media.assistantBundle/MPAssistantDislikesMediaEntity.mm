@interface MPAssistantDislikesMediaEntity
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantDislikesMediaEntity

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  requestAceHash = self->_requestAceHash;
  userIdentity = self->_userIdentity;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2334E72B8;
  v8[3] = &unk_2789DB2D8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  sub_233505CB8(@"Dislikes Media Entity", requestAceHash, 22, userIdentity, v8);
}

- (void)performWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantDislikesMediaEntity *)self aceId];
    v6 = sub_233505670(@"Dislikes Media Entity", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Dislikes Media Entity (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = self->_requestAceHash;
  influencedUserSharedUserId = [(SAMPDislikesMediaEntity *)self influencedUserSharedUserId];
  influencedUserSharedUserId2 = [(SAMPDislikesMediaEntity *)self influencedUserSharedUserId];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2334E7594;
  v15[3] = &unk_2789DB648;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  sub_233506A24(@"Dislikes Media Entity", v10, influencedUserSharedUserId, influencedUserSharedUserId2, v15);

  v14 = *MEMORY[0x277D85DE8];
}

@end