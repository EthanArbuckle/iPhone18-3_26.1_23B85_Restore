@interface MPAssistantGetNowPlayingQueueDetails
- (void)getSAMPMediaItems:(id)a3 origin:(void *)a4 completion:(id)a5;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGetNowPlayingQueueDetails

- (void)getSAMPMediaItems:(id)a3 origin:(void *)a4 completion:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a5;
  v8 = MRPlaybackQueueRequestCreate();
  MRPlaybackQueueRequestSetIncludeMetadata();
  v9 = MRNowPlayingPlayerPathCreate();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334E81E4;
  v11[3] = &unk_2789DAFE0;
  v13 = var0;
  v14 = var1;
  v12 = v7;
  v10 = v7;
  MEMORY[0x2383A1020](v8, v9, MEMORY[0x277D85CD0], v11);
  CFRelease(v8);
  CFRelease(v9);
}

- (void)performWithCompletion:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantGetNowPlayingQueueDetails *)self aceId];
    v6 = sub_233505670(@"Get Now Playing Queue Details", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantGetNowPlayingQueueDetails *)self hashedRouteUIDs];
    v11 = [v10 count];
    v12 = [(MPAssistantGetNowPlayingQueueDetails *)self previousItemCount];
    v13 = [(MPAssistantGetNowPlayingQueueDetails *)self nextItemCount];
    v14 = [(MPAssistantGetNowPlayingQueueDetails *)self preemptiveNowPlayingQueueDetailsTimeOut];
    *buf = 138544386;
    v75 = v9;
    v76 = 2048;
    v77 = v11;
    v78 = 2048;
    v79 = v12;
    v80 = 2048;
    v81 = v13;
    v82 = 2114;
    v83 = v14;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Get Now Playing Queue Details (invoke) <%{public}@>: %lu UIDs, prev %ld, next %ld, timeout %{public}@", buf, 0x34u);
  }

  v15 = self->_requestAceHash;
  v16 = [(MPAssistantGetNowPlayingQueueDetails *)self hashedRouteUIDs];
  sub_2335057BC(@"Get Now Playing Queue Details", v15, v16);

  v17 = dispatch_queue_create("com.apple.Assistant.GetNowPlayingQueueDetails", 0);
  v18 = dispatch_group_create();
  v19 = [(MPAssistantGetNowPlayingQueueDetails *)self hashedRouteUIDs];
  v20 = [v19 count] == 1;

  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277D27840]);
    v22 = [(MPAssistantGetNowPlayingQueueDetails *)self hashedRouteUIDs];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_2334E8A14;
    v64[3] = &unk_2789DAF68;
    v23 = v21;
    v65 = v23;
    v66 = self;
    v68 = v4;
    v67 = v18;
    v69 = &v70;
    [v23 decodeHashedRouteUIDs:v22 completion:v64];
  }

  else
  {
    dispatch_group_enter(v18);
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = sub_2334E8C80;
    v60 = &unk_2789DAF90;
    v61 = self;
    v63 = &v70;
    v62 = v18;
    MRAVEndpointGetMyGroupLeaderWithTimeout();
  }

  v24 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v18, v24);
  if (v71[3])
  {
    v46 = v17;
    v25 = objc_alloc_init(MEMORY[0x277D475D8]);
    dispatch_group_enter(v18);
    v26 = [(MPAssistantGetNowPlayingQueueDetails *)self previousItemCount];
    v27 = [(MPAssistantGetNowPlayingQueueDetails *)self previousItemCount];
    v28 = -v26;
    v29 = v71[3];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2334E8DD8;
    v54[3] = &unk_2789DB008;
    v30 = v25;
    v55 = v30;
    v31 = v18;
    v56 = v31;
    [(MPAssistantGetNowPlayingQueueDetails *)self getSAMPMediaItems:v28 origin:v27 completion:v29, v54];
    v32 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v31, v32);
    dispatch_group_enter(v31);
    v33 = [(MPAssistantGetNowPlayingQueueDetails *)self nextItemCount];
    v34 = v71[3];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_2334E8E18;
    v51[3] = &unk_2789DB008;
    v35 = v30;
    v52 = v35;
    v36 = v31;
    v53 = v36;
    [(MPAssistantGetNowPlayingQueueDetails *)self getSAMPMediaItems:0 origin:v33 completion:v34, v51];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2334E8E58;
    block[3] = &unk_2789DAFB8;
    v50 = &v70;
    block[4] = self;
    v48 = v35;
    v49 = v4;
    v37 = v35;
    dispatch_group_notify(v36, MEMORY[0x277D85CD0], block);

    v17 = v46;
    v38 = v55;
  }

  else
  {
    v37 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"timed out"];
    if (![(NSString *)self->_requestAceHash length])
    {
      v39 = [(MPAssistantGetNowPlayingQueueDetails *)self aceId];
      v40 = sub_233505670(@"Get Now Playing Queue Details", v39);
      v41 = self->_requestAceHash;
      self->_requestAceHash = v40;
    }

    v42 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = self->_requestAceHash;
      v44 = [v37 dictionary];
      *buf = 138543618;
      v75 = v43;
      v76 = 2114;
      v77 = v44;
      _os_log_impl(&dword_2334D9000, v42, OS_LOG_TYPE_ERROR, "Get Now Playing Queue Details (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    v38 = [v37 dictionary];
    (*(v4 + 2))(v4, v38);
  }

  _Block_object_dispose(&v70, 8);
  v45 = *MEMORY[0x277D85DE8];
}

@end