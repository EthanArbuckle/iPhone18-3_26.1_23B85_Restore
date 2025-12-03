@interface MPAssistantGetNowPlayingQueueDetailsRemote
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantGetNowPlayingQueueDetailsRemote

- (void)performWithCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self aceId];
    v6 = sub_233505670(@"Get Now Playing Queue Details Remote", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
    v11 = [hashedRouteUIDs count];
    queueDetails = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self queueDetails];
    dictionary = [queueDetails dictionary];
    [(MPAssistantGetNowPlayingQueueDetailsRemote *)self routeTimeout];
    *buf = 138544130;
    v37 = v9;
    v38 = 2048;
    v39 = v11;
    v40 = 2114;
    v41 = dictionary;
    v42 = 2048;
    v43 = v14;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details Remote (invoke) <%{public}@>: %lu UIDs, queue %{public}@, timeout %f", buf, 0x2Au);
  }

  v15 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
  sub_2335057BC(@"Get Now Playing Queue Details Remote", v15, hashedRouteUIDs2);

  hashedRouteUIDs3 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
  v18 = [hashedRouteUIDs3 count];

  if (v18 == 1)
  {
    v19 = dispatch_group_create();
    v20 = objc_alloc_init(MEMORY[0x277D27840]);
    hashedRouteUIDs4 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self hashedRouteUIDs];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2334E9660;
    v31[3] = &unk_2789DB508;
    v32 = v20;
    selfCopy = self;
    v34 = v19;
    v35 = completionCopy;
    dictionary3 = v19;
    v23 = v20;
    [v23 decodeHashedRouteUIDs:hashedRouteUIDs4 completion:v31];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Too many UIDs requested"];
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId2 = [(MPAssistantGetNowPlayingQueueDetailsRemote *)self aceId];
      v25 = sub_233505670(@"Get Now Playing Queue Details Remote", aceId2);
      v26 = self->_requestAceHash;
      self->_requestAceHash = v25;
    }

    v27 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = self->_requestAceHash;
      dictionary2 = [v23 dictionary];
      *buf = 138543618;
      v37 = v28;
      v38 = 2114;
      v39 = dictionary2;
      _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details Remote (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    dictionary3 = [v23 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary3);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end