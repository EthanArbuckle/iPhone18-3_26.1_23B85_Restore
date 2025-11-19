@interface MPAssistantGetDynamiteClientState
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGetDynamiteClientState

- (void)performWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D477E0]);
  if (![(NSString *)self->_requestAceHash length])
  {
    v6 = [(MPAssistantGetDynamiteClientState *)self aceId];
    v7 = sub_233505670(@"Get Dynamite Client State", v6);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Get Dynamite Client State (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2334E7C10;
  v14[3] = &unk_2789DAEF0;
  v14[4] = self;
  v15 = v5;
  v16 = v4;
  v11 = v4;
  v12 = v5;
  sub_2334E7C10(v14, 0);

  v13 = *MEMORY[0x277D85DE8];
}

@end