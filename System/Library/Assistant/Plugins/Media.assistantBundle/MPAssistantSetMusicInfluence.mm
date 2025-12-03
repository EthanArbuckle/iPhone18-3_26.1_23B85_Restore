@interface MPAssistantSetMusicInfluence
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetMusicInfluence

- (void)performWithCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSetMusicInfluence *)self aceId];
    v6 = sub_233505670(@"Set Music Influence", aceId);
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

  standardUserDefaults = [MEMORY[0x277CD6008] standardUserDefaults];
  isPrivateListeningEnabled = [standardUserDefaults isPrivateListeningEnabled];
  bOOLValue = [isPrivateListeningEnabled BOOLValue];

  monitorForCurrentUser = [MEMORY[0x277CD5D98] monitorForCurrentUser];
  v14 = monitorForCurrentUser;
  if (monitorForCurrentUser)
  {
    bOOLValue = [monitorForCurrentUser isPrivateListeningEnabledForCurrentAccessory];
  }

  value = bOOLValue;
  if (![(SASettingSetBool *)self toggle])
  {
    value = [(SASettingSetBool *)self value];
  }

  dryRun = [(SASettingSetValue *)self dryRun];
  if (bOOLValue == value)
  {
    v25 = dryRun;
    if (!dryRun)
    {
      if (v14)
      {
        [v14 setPrivateListeningEnabledForCurrentAccessory:value ^ 1];
      }

      else
      {
        v26 = [MEMORY[0x277CCABB0] numberWithBool:value ^ 1];
        [standardUserDefaults setPrivateListeningEnabled:v26];
      }
    }

    v27 = bOOLValue ^ 1;
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId2 = [(MPAssistantSetMusicInfluence *)self aceId];
      v29 = sub_233505670(@"Set Music Influence", aceId2);
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
      v48 = value;
      _os_log_impl(&dword_2334D9000, v31, OS_LOG_TYPE_DEFAULT, "Set Music Influence (perform) <%{public}@>: Dry run: %d, previous music influence: %d, and music influence: %d", &v43, 0x1Eu);
    }

    v17 = objc_alloc_init(MEMORY[0x277D47800]);
    [v17 setValue:value];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [v17 setPreviousValue:v33];

    dictionary5 = objc_alloc_init(MEMORY[0x277D47890]);
    [dictionary5 setSetting:v17];
    dictionary = [dictionary5 dictionary];
    completionCopy[2](completionCopy, dictionary);

    if (![(NSString *)self->_requestAceHash length])
    {
      aceId3 = [(MPAssistantSetMusicInfluence *)self aceId];
      v36 = sub_233505670(@"Set Music Influence", aceId3);
      v37 = self->_requestAceHash;
      self->_requestAceHash = v36;
    }

    v38 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = self->_requestAceHash;
      dictionary2 = [dictionary5 dictionary];
      v43 = 138543618;
      v44 = v39;
      v45 = 2114;
      *v46 = dictionary2;
      _os_log_impl(&dword_2334D9000, v38, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v43, 0x16u);
    }

    dictionary3 = [dictionary5 dictionary];
    completionCopy[2](completionCopy, dictionary3);
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D47208]);
    [v17 setErrorCode:*MEMORY[0x277D489A0]];
    [v17 setReason:{@"Value unchanged, No change was made"}];
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId4 = [(MPAssistantSetMusicInfluence *)self aceId];
      v19 = sub_233505670(@"Set Music Influence", aceId4);
      v20 = self->_requestAceHash;
      self->_requestAceHash = v19;
    }

    v21 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_requestAceHash;
      dictionary4 = [v17 dictionary];
      v43 = 138543618;
      v44 = v22;
      v45 = 2114;
      *v46 = dictionary4;
      _os_log_impl(&dword_2334D9000, v21, OS_LOG_TYPE_DEFAULT, "Set Music Influence (completion) <%{public}@>: notifying assistant %{public}@", &v43, 0x16u);
    }

    dictionary5 = [v17 dictionary];
    completionCopy[2](completionCopy, dictionary5);
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end