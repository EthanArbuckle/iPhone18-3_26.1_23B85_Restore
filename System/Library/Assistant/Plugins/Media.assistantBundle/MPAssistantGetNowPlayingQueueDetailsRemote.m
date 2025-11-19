@interface MPAssistantGetNowPlayingQueueDetailsRemote
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGetNowPlayingQueueDetailsRemote

- (void)performWithCompletion:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self aceId];
    v6 = sub_233505670(@"Get Now Playing Queue Details Remote", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
    v11 = [v10 count];
    v12 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self queueDetails];
    v13 = [v12 dictionary];
    [(MPAssistantGetNowPlayingQueueDetailsRemote *)self routeTimeout];
    *buf = 138544130;
    v37 = v9;
    v38 = 2048;
    v39 = v11;
    v40 = 2114;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details Remote (invoke) <%{public}@>: %lu UIDs, queue %{public}@, timeout %f", buf, 0x2Au);
  }

  v15 = self->_requestAceHash;
  v16 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
  sub_2335057BC(@"Get Now Playing Queue Details Remote", v15, v16);

  v17 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
  v18 = [v17 count];

  if (v18 == 1)
  {
    v19 = dispatch_group_create();
    v20 = objc_alloc_init(MEMORY[0x277D27840]);
    v21 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2334E9660;
    v31[3] = &unk_2789DB508;
    v32 = v20;
    v33 = self;
    v34 = v19;
    v35 = v4;
    v22 = v19;
    v23 = v20;
    [v23 decodeHashedRouteUIDs:v21 completion:v31];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Too many UIDs requested"];
    if (![(NSString *)self->_requestAceHash length])
    {
      v24 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self aceId];
      v25 = sub_233505670(@"Get Now Playing Queue Details Remote", v24);
      v26 = self->_requestAceHash;
      self->_requestAceHash = v25;
    }

    v27 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = self->_requestAceHash;
      v29 = [v23 dictionary];
      *buf = 138543618;
      v37 = v28;
      v38 = 2114;
      v39 = v29;
      _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v22 = [v23 dictionary];
    (*(v4 + 2))(v4, v22);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end