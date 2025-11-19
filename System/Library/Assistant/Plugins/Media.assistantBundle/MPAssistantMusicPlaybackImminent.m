@interface MPAssistantMusicPlaybackImminent
- (void)_perform:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantMusicPlaybackImminent

- (void)_perform:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D27878] systemMediaApplicationDestination];
  v6 = objc_alloc_init(MEMORY[0x277D27828]);
  v38[0] = *MEMORY[0x277D27D08];
  v7 = [(MPAssistantMusicPlaybackImminent *)self refId];
  v38[1] = *MEMORY[0x277D27DC0];
  v39[0] = v7;
  v39[1] = @"com.apple.MediaAssistant.siri";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v9 = [v8 mutableCopy];

  userIdentity = self->_userIdentity;
  v33 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:userIdentity requiringSecureCoding:1 error:&v33];
  v12 = v33;
  if (v12)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v13 = [(MPAssistantMusicPlaybackImminent *)self aceId];
      v14 = sub_233505670(@"Music Playback Imminent", v13);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v14;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_requestAceHash;
      *buf = 138543618;
      v35 = v17;
      v36 = 2114;
      v37 = v12;
      v18 = "Music Playback Imminent (perform) <%{public}@>: user identity encoding failed %{public}@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2334D9000, v19, v20, v18, buf, 0x16u);
    }
  }

  else
  {
    [v9 setObject:v11 forKey:*MEMORY[0x277D27E18]];
    if (![(NSString *)self->_requestAceHash length])
    {
      v21 = [(MPAssistantMusicPlaybackImminent *)self aceId];
      v22 = sub_233505670(@"Music Playback Imminent", v21);
      v23 = self->_requestAceHash;
      self->_requestAceHash = v22;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_requestAceHash;
      *buf = 138543619;
      v35 = v24;
      v36 = 2113;
      v37 = v11;
      v18 = "Music Playback Imminent (perform) <%{public}@>: user identity %{private}@";
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  privateListeningEnabled = self->_privateListeningEnabled;
  if (privateListeningEnabled)
  {
    [v9 setObject:privateListeningEnabled forKeyedSubscript:*MEMORY[0x277D27DA8]];
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2334F1CF4;
  v29[3] = &unk_2789DBB20;
  v31 = self;
  v32 = v4;
  v30 = v6;
  v26 = v4;
  v27 = v6;
  [v27 sendCommand:132 toDestination:v5 withOptions:v9 completion:v29];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantMusicPlaybackImminent *)self aceId];
    v6 = sub_233505670(@"Music Playback Imminent", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Music Playback Imminent (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = sub_23350699C();
  dispatch_group_enter(v10);
  v11 = self->_requestAceHash;
  v12 = [(SAMPMusicPlaybackImminent *)self preloadedUserSharedUserId];
  v13 = [(SAMPMusicPlaybackImminent *)self preloadedUserSharedUserId];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2334F206C;
  v17[3] = &unk_2789DB4B8;
  v18 = v10;
  v19 = v4;
  v17[4] = self;
  v14 = v10;
  v15 = v4;
  sub_233506A24(@"Music Playback Imminent", v11, v12, v13, v17);

  v16 = *MEMORY[0x277D85DE8];
}

@end