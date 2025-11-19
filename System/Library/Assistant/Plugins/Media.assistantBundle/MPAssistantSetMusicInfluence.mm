@interface MPAssistantSetMusicInfluence
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSetMusicInfluence

- (void)performWithCompletion:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantSetMusicInfluence *)self aceId];
    v6 = sub_233505670(@"Set Music Influence", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v43 = 138543618;
    v44 = v9;
    v45 = 1024;
    *v46 = [(SASettingSetBool *)self value];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Set Music Influence (invoke) <%{public}@>: enabled %{BOOL}u", &v43, 0x12u);
  }

  v10 = [MEMORY[0x277CD6008] standardUserDefaults];
  v11 = [v10 isPrivateListeningEnabled];
  v12 = [v11 BOOLValue];

  v13 = [MEMORY[0x277CD5D98] monitorForCurrentUser];
  v14 = v13;
  if (v13)
  {
    v12 = [v13 isPrivateListeningEnabledForCurrentAccessory];
  }

  v15 = v12;
  if (![(SASettingSetBool *)self toggle])
  {
    v15 = [(SASettingSetBool *)self value];
  }

  v16 = [(SASettingSetValue *)self dryRun];
  if (v12 == v15)
  {
    v25 = v16;
    if (!v16)
    {
      if (v14)
      {
        [v14 setPrivateListeningEnabledForCurrentAccessory:v15 ^ 1];
      }

      else
      {
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v15 ^ 1];
        [v10 setPrivateListeningEnabled:v26];
      }
    }

    v27 = v12 ^ 1;
    if (![(NSString *)self->_requestAceHash length])
    {
      v28 = [(MPAssistantSetMusicInfluence *)self aceId];
      v29 = sub_233505670(@"Set Music Influence", v28);
      v30 = self->_requestAceHash;
      self->_requestAceHash = v29;
    }

    v31 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = self->_requestAceHash;
      v43 = 138544130;
      v44 = v32;
      v45 = 1024;
      *v46 = v25;
      *&v46[4] = 1024;
      *&v46[6] = v27;
      v47 = 1024;
      v48 = v15;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_DEFAULT, "Set Music Influence (perform) <%{public}@>: Dry run: %d, previous music influence: %d, and music influence: %d", &v43, 0x1Eu);
    }

    v17 = objc_alloc_init(MEMORY[0x277D47800]);
    [v17 setValue:v15];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [v17 setPreviousValue:v33];

    v24 = objc_alloc_init(MEMORY[0x277D47890]);
    [v24 setSetting:v17];
    v34 = [v24 dictionary];
    v4[2](v4, v34);

    if (![(NSString *)self->_requestAceHash length])
    {
      v35 = [(MPAssistantSetMusicInfluence *)self aceId];
      v36 = sub_233505670(@"Set Music Influence", v35);
      v37 = self->_requestAceHash;
      self->_requestAceHash = v36;
    }

    v38 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = self->_requestAceHash;
      v40 = [v24 dictionary];
      v43 = 138543618;
      v44 = v39;
      v45 = 2114;
      *v46 = v40;
      _os_log_impl(&dword_2334D9000, v38, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v43, 0x16u);
    }

    v41 = [v24 dictionary];
    v4[2](v4, v41);
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D47208]);
    [v17 setErrorCode:*MEMORY[0x277D489A0]];
    [v17 setReason:{@"Value unchanged, No change was made"}];
    if (![(NSString *)self->_requestAceHash length])
    {
      v18 = [(MPAssistantSetMusicInfluence *)self aceId];
      v19 = sub_233505670(@"Set Music Influence", v18);
      v20 = self->_requestAceHash;
      self->_requestAceHash = v19;
    }

    v21 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_requestAceHash;
      v23 = [v17 dictionary];
      v43 = 138543618;
      v44 = v22;
      v45 = 2114;
      *v46 = v23;
      _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v43, 0x16u);
    }

    v24 = [v17 dictionary];
    v4[2](v4, v24);
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end