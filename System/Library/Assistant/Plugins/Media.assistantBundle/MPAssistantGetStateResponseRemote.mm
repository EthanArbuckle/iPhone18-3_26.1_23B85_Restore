@interface MPAssistantGetStateResponseRemote
- (void)dealloc;
- (void)performWithCompletion:(id)a3;
- (void)setPlayingInfoFromEndpoint:(void *)a3;
@end

@implementation MPAssistantGetStateResponseRemote

- (void)setPlayingInfoFromEndpoint:(void *)a3
{
  v67 = *MEMORY[0x277D85DE8];
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantGetStateResponseRemote *)self aceId];
    v6 = sub_233505670(@"Get State Response Remote", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = a3;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (playinginfo) <%{public}@>: Set info for: %{public}@", buf, 0x16u);
  }

  v10 = MRAVEndpointCopyUniqueIdentifier();
  if (MRAVEndpointIsLocalEndpoint())
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    CFRetain(LocalOrigin);
  }

  else
  {
    MRAVEndpointGetExternalDevice();
    LocalOrigin = MRExternalDeviceCopyCustomOrigin();
  }

  v12 = dispatch_get_global_queue(25, 0);
  v13 = dispatch_group_create();
  v14 = MRNowPlayingPlayerPathCreate();
  v62 = 0;
  v15 = MRMediaRemoteNowPlayingCopyResolvedPlayerPath();
  if (v14)
  {
    CFRelease(v14);
  }

  v16 = MRPlaybackQueueRequestCreate();
  MRPlaybackQueueRequestSetIncludeMetadata();
  MRPlaybackQueueRequestSetIncludeInfo();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = sub_2334EAC10;
  v65 = sub_2334EAC20;
  v66 = 0;
  dispatch_group_enter(v13);
  CFRetain(a3);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2334EAC28;
  v57[3] = &unk_2789DB148;
  v57[4] = self;
  v17 = v10;
  v58 = v17;
  v60 = buf;
  v61 = a3;
  v18 = v13;
  v59 = v18;
  MEMORY[0x2383A1020](v16, v15, v12, v57);
  if (v16)
  {
    CFRelease(v16);
  }

  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  dispatch_group_enter(v18);
  CFRetain(a3);
  v46 = MEMORY[0x277D85DD0];
  v47 = 3221225472;
  v48 = sub_2334EAE2C;
  v49 = &unk_2789DB170;
  v50 = self;
  v19 = v17;
  v51 = v19;
  v53 = v55;
  v54 = a3;
  v20 = v18;
  v52 = v20;
  MRMediaRemoteGetPlaybackStateForPlayer();
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  dispatch_group_enter(v20);
  CFRetain(a3);
  Client = MRNowPlayingPlayerPathGetClient();
  v22 = MEMORY[0x277D85CD0];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = sub_2334EAF88;
  v37 = &unk_2789DB198;
  v41 = v44;
  v42 = Client;
  v38 = self;
  v23 = v19;
  v39 = v23;
  v43 = a3;
  v24 = v20;
  v40 = v24;
  MRMediaRemoteGetDeviceInfo();

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_2334EAC10;
  v32[4] = sub_2334EAC20;
  v33 = 0;
  dispatch_group_enter(v24);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334EB1C8;
  v28[3] = &unk_2789DB1C0;
  v28[4] = self;
  v29 = v23;
  v31 = v32;
  v25 = v24;
  v30 = v25;
  MEMORY[0x2383A0F80](v12, v28);
  CFRetain(a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334EB308;
  block[3] = &unk_2789DB238;
  block[4] = self;
  block[5] = v32;
  block[6] = buf;
  block[7] = v44;
  block[8] = v55;
  block[9] = a3;
  block[10] = v15;
  block[11] = LocalOrigin;
  dispatch_group_notify(v25, v12, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(buf, 8);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantGetStateResponseRemote *)self aceId];
    v6 = sub_233505670(@"Get State Response Remote", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantGetStateResponseRemote *)self hashedRouteUIDs];
    *buf = 138543618;
    v29 = v9;
    v30 = 2048;
    v31 = [v10 count];
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get State Response Remote (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v11 = self->_requestAceHash;
  v12 = [(MPAssistantGetStateResponseRemote *)self hashedRouteUIDs];
  sub_2335057BC(@"Get State Response Remote", v11, v12);

  v13 = objc_alloc_init(MEMORY[0x277D47550]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  workingRemoteResponse = self->_workingRemoteResponse;
  self->_workingRemoteResponse = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  originMapping = self->_originMapping;
  self->_originMapping = v16;

  v18 = objc_alloc_init(MEMORY[0x277D27840]);
  encoder = self->_encoder;
  self->_encoder = v18;

  v20 = self->_encoder;
  v21 = [(MPAssistantGetStateResponseRemote *)self hashedRouteUIDs];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2334EC0E8;
  v25[3] = &unk_2789DBA80;
  v26 = v13;
  v27 = v4;
  v25[4] = self;
  v22 = v13;
  v23 = v4;
  [(MPCAssistantEncodings *)v20 decodeHashedRouteUIDs:v21 completion:v25];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPAssistantGetStateResponseRemote;
  [(MPAssistantGetStateResponseRemote *)&v4 dealloc];
}

@end