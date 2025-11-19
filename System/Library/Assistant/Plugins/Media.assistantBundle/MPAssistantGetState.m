@interface MPAssistantGetState
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGetState

- (void)performWithCompletion:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantGetState *)self aceId];
    v6 = sub_233505670(@"Get State", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State (invoke) <%{public}@>: invoked", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D47558]);
  v11 = dispatch_get_global_queue(0, 0);
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = sub_2334EA1B0;
  v29 = &unk_2789DB080;
  v30 = v10;
  v31 = v12;
  MRMediaRemoteGetNowPlayingInfo();
  dispatch_group_enter(v31);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_2334EA2DC;
  v23 = &unk_2789DB0A8;
  v24 = v30;
  v25 = v31;
  v13 = v31;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EA338;
  block[3] = &unk_2789DB120;
  block[4] = self;
  v18 = v24;
  v19 = v4;
  v14 = v4;
  v15 = v24;
  dispatch_group_notify(v13, v11, block);

  v16 = *MEMORY[0x277D85DE8];
}

@end