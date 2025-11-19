@interface MPAssistantPausePlayback
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantPausePlayback

- (void)performWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantPausePlayback *)self aceId];
    v6 = sub_233505670(@"Pause Playback", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantPausePlayback *)self hashedRouteUIDs];
    *buf = 138543618;
    v26 = v9;
    v27 = 2048;
    v28 = [v10 count];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Pause Playback (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v11 = self->_requestAceHash;
  v12 = [(MPAssistantPausePlayback *)self hashedRouteUIDs];
  sub_2335057BC(@"Pause Playback", v11, v12);

  v13 = objc_alloc_init(MEMORY[0x277D27858]);
  v14 = objc_alloc_init(MEMORY[0x277D27840]);
  v15 = [(MPAssistantPausePlayback *)self hashedRouteUIDs];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2334F262C;
  v20[3] = &unk_2789DB508;
  v21 = v13;
  v22 = self;
  v23 = v14;
  v24 = v4;
  v16 = v4;
  v17 = v14;
  v18 = v13;
  [v17 decodeHashedRouteUIDs:v15 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

@end