@interface MPAssistantGetMusicInfluence
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGetMusicInfluence

- (void)performWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  requestAceHash = self->_requestAceHash;
  v5 = a3;
  if (![(NSString *)requestAceHash length])
  {
    v6 = [(MPAssistantGetMusicInfluence *)self aceId];
    v7 = sub_233505670(@"Get Music Influence", v6);
    v8 = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    v26 = 138543362;
    v27 = v10;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Get Music Influence (invoke) <%{public}@>: invoked", &v26, 0xCu);
  }

  v11 = [MEMORY[0x277CD6008] standardUserDefaults];
  v12 = [v11 isPrivateListeningEnabled];
  v13 = [v12 BOOLValue];

  v14 = [MEMORY[0x277CD5D98] monitorForCurrentUser];
  v15 = v14;
  if (v14)
  {
    v13 = [v14 isPrivateListeningEnabledForCurrentAccessory];
  }

  v16 = objc_alloc_init(MEMORY[0x277D47800]);
  [v16 setValue:v13 ^ 1u];
  v17 = objc_alloc_init(MEMORY[0x277D47830]);
  [v17 setSetting:v16];
  if (![(NSString *)self->_requestAceHash length])
  {
    v18 = [(MPAssistantGetMusicInfluence *)self aceId];
    v19 = sub_233505670(@"Get Music Influence", v18);
    v20 = self->_requestAceHash;
    self->_requestAceHash = v19;
  }

  v21 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_requestAceHash;
    v23 = [v17 dictionary];
    v26 = 138543618;
    v27 = v22;
    v28 = 2114;
    v29 = v23;
    _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Get Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v26, 0x16u);
  }

  v24 = [v17 dictionary];
  v5[2](v5, v24);

  v25 = *MEMORY[0x277D85DE8];
}

@end