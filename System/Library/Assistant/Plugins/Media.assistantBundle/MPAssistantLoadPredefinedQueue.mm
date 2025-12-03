@interface MPAssistantLoadPredefinedQueue
- (id)_radioStations;
- (id)_validate;
- (void)_performWithNowPlayingItem:(id)item audioRoutingInfo:(id)info completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MPAssistantLoadPredefinedQueue

- (id)_radioStations
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2334EE62C;
  v22 = sub_2334EE63C;
  v23 = 0;
  v2 = dispatch_semaphore_create(0);
  defaultRadioLibrary = [MEMORY[0x277CD6020] defaultRadioLibrary];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_2334EE644;
  v15 = &unk_2789DB490;
  v17 = &v18;
  v4 = v2;
  v16 = v4;
  [defaultRadioLibrary getRecentStationGroupsWithCompletionHandler:&v12];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v19[5];
  if (!v5)
  {
    defaultRadioLibrary2 = [MEMORY[0x277CD6020] defaultRadioLibrary];
    stations = [defaultRadioLibrary2 stations];
    v8 = [stations mutableCopy];
    v9 = v19[5];
    v19[5] = v8;

    v5 = v19[5];
  }

  v10 = v5;

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)_validate
{
  mediaItemType = [(MPAssistantLoadPredefinedQueue *)self mediaItemType];
  if (mediaItemType > 0xF || ((1 << mediaItemType) & 0xC008) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"Unsupported media item type"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_performWithNowPlayingItem:(id)item audioRoutingInfo:(id)info completion:(id)completion
{
  v102[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v101 = *MEMORY[0x277D27DC0];
  v102[0] = @"com.apple.MediaAssistant.siri";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:&v101 count:1];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_2334EF324;
  v94[3] = &unk_2789DB378;
  v94[4] = self;
  v10 = v9;
  v95 = v10;
  v11 = completionCopy;
  v96 = v11;
  v12 = MEMORY[0x2383A14D0](v94);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2334EF440;
  v92[3] = &unk_2789DB3F0;
  v92[4] = self;
  v13 = v12;
  v93 = v13;
  v14 = MEMORY[0x2383A14D0](v92);
  mediaItemType = [(MPAssistantLoadPredefinedQueue *)self mediaItemType];
  refId = [(MPAssistantLoadPredefinedQueue *)self refId];
  if (mediaItemType == 3)
  {
    if ((MRMediaRemoteIsBooksAppInstalled() & 1) == 0)
    {
      v19 = objc_alloc_init(MEMORY[0x277D47208]);
      (*(v11 + 2))(v11, v19);
    }

    audiobooksQuery = [MEMORY[0x277CD5E38] audiobooksQuery];
LABEL_9:
    v20 = audiobooksQuery;
    if (!audiobooksQuery)
    {
      goto LABEL_18;
    }

    v21 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:self->_userIdentity];
    [v20 setMediaLibrary:v21];

    infoCopy = info;
    v22 = [(MPCAssistantAvailability *)self->_availability assistantStreamingGetAvailability:?];
    v23 = 1;
    if (v22 <= 1)
    {
      if (!v22)
      {
        if (![(NSString *)self->_requestAceHash length])
        {
          aceId = [(MPAssistantLoadPredefinedQueue *)self aceId];
          v49 = sub_233505670(@"Load Predefined Queue", aceId);
          requestAceHash = self->_requestAceHash;
          self->_requestAceHash = v49;
        }

        v37 = _MPLogCategoryAssistant();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v51 = self->_requestAceHash;
        *buf = 138543362;
        v98 = v51;
        v39 = "Load Predefined Queue (query) <%{public}@>: streaming not available";
        goto LABEL_42;
      }

      if (v22 != 1)
      {
        goto LABEL_45;
      }

      if (![(NSString *)self->_requestAceHash length])
      {
        aceId2 = [(MPAssistantLoadPredefinedQueue *)self aceId];
        v35 = sub_233505670(@"Load Predefined Queue", aceId2);
        v36 = self->_requestAceHash;
        self->_requestAceHash = v35;
      }

      v37 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_requestAceHash;
        *buf = 138543362;
        v98 = v38;
        v39 = "Load Predefined Queue (query) <%{public}@>: network conditions do not permit streaming";
LABEL_42:
        _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
      }
    }

    else
    {
      if (v22 != 2)
      {
        if (v22 == 3)
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            aceId3 = [(MPAssistantLoadPredefinedQueue *)self aceId];
            v45 = sub_233505670(@"Load Predefined Queue", aceId3);
            v46 = self->_requestAceHash;
            self->_requestAceHash = v45;
          }

          v27 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v47 = self->_requestAceHash;
            *buf = 138543362;
            v98 = v47;
            _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (query) <%{public}@>: companion will be used", buf, 0xCu);
          }

          v23 = 0;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            aceId4 = [(MPAssistantLoadPredefinedQueue *)self aceId];
            v25 = sub_233505670(@"Load Predefined Queue", aceId4);
            v26 = self->_requestAceHash;
            self->_requestAceHash = v25;
          }

          v27 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = self->_requestAceHash;
            *buf = 138543362;
            v98 = v28;
            _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (query) <%{public}@>: streaming available", buf, 0xCu);
          }

          goto LABEL_44;
        }

LABEL_45:
        if ([v20 _countOfItems])
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            aceId5 = [(MPAssistantLoadPredefinedQueue *)self aceId];
            v53 = sub_233505670(@"Load Predefined Queue", aceId5);
            v54 = self->_requestAceHash;
            self->_requestAceHash = v53;
          }

          v55 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = self->_requestAceHash;
            *buf = 138543618;
            v98 = v56;
            v99 = 2048;
            v100 = mediaItemType;
            _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: beginning playback (type %ld).", buf, 0x16u);
          }

          shouldShuffle = [(MPAssistantLoadPredefinedQueue *)self shouldShuffle];
          v58 = [MEMORY[0x277D27868] queryQueueWithContextID:refId query:v20];
          [v58 setShuffleType:shouldShuffle];
          startPlaying = [(MPAssistantLoadPredefinedQueue *)self startPlaying];
          [v58 setShouldImmediatelyStartPlayback:{objc_msgSend(startPlaying, "BOOLValue")}];

          [v58 setShouldOverrideManuallyCuratedQueue:1];
          systemMediaApplicationDestination = [MEMORY[0x277D27850] systemMediaApplicationDestination];
          hashedRouteUIDs = [(MPAssistantLoadPredefinedQueue *)self hashedRouteUIDs];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = sub_2334EFCF4;
          v81[3] = &unk_2789DB440;
          v81[4] = self;
          v83 = v11;
          v84 = v14;
          v82 = v58;
          v62 = v58;
          [systemMediaApplicationDestination resolveWithQueue:v62 hashedRouteIdentifiers:hashedRouteUIDs localPlaybackPermitted:v23 audioRoutingInfo:infoCopy completion:v81];
        }

        else
        {
          v63 = sub_2335055C0(self->_userIdentity);
          v64 = [(NSString *)self->_requestAceHash length];
          if (v63)
          {
            if (!v64)
            {
              aceId6 = [(MPAssistantLoadPredefinedQueue *)self aceId];
              v66 = sub_233505670(@"Load Predefined Queue", aceId6);
              v67 = self->_requestAceHash;
              self->_requestAceHash = v66;
            }

            v68 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = self->_requestAceHash;
              *buf = 138543618;
              v98 = v69;
              v99 = 2048;
              v100 = mediaItemType;
              _os_log_impl(&dword_2334D9000, v68, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: still loading library (type %ld).", buf, 0x16u);
            }

            v70 = objc_alloc(MEMORY[0x277D47208]);
            v71 = MEMORY[0x277D48630];
          }

          else
          {
            if (!v64)
            {
              aceId7 = [(MPAssistantLoadPredefinedQueue *)self aceId];
              v73 = sub_233505670(@"Load Predefined Queue", aceId7);
              v74 = self->_requestAceHash;
              self->_requestAceHash = v73;
            }

            v75 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v76 = self->_requestAceHash;
              *buf = 138543618;
              v98 = v76;
              v99 = 2048;
              v100 = mediaItemType;
              _os_log_impl(&dword_2334D9000, v75, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: empty library for (type %ld).", buf, 0x16u);
            }

            v70 = objc_alloc(MEMORY[0x277D47208]);
            v71 = MEMORY[0x277D485F8];
          }

          systemMediaApplicationDestination = [v70 initWithErrorCode:*v71];
          (*(v11 + 2))(v11, systemMediaApplicationDestination);
        }

        goto LABEL_64;
      }

      if (![(NSString *)self->_requestAceHash length])
      {
        aceId8 = [(MPAssistantLoadPredefinedQueue *)self aceId];
        v41 = sub_233505670(@"Load Predefined Queue", aceId8);
        v42 = self->_requestAceHash;
        self->_requestAceHash = v41;
      }

      v37 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v43 = self->_requestAceHash;
        *buf = 138543362;
        v98 = v43;
        v39 = "Load Predefined Queue (query) <%{public}@>: companion not available";
        goto LABEL_42;
      }
    }

LABEL_43:

    v27 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5790]];
    [v20 addFilterPredicate:v27];
    v23 = 1;
LABEL_44:

    goto LABEL_45;
  }

  if (mediaItemType == 15)
  {
    audiobooksQuery = [MEMORY[0x277CD5E38] songsQuery];
    goto LABEL_9;
  }

  if (mediaItemType != 14)
  {
LABEL_18:
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId9 = [(MPAssistantLoadPredefinedQueue *)self aceId];
      v30 = sub_233505670(@"Load Predefined Queue", aceId9);
      v31 = self->_requestAceHash;
      self->_requestAceHash = v30;
    }

    v32 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = self->_requestAceHash;
      *buf = 138543618;
      v98 = v33;
      v99 = 2048;
      v100 = mediaItemType;
      _os_log_impl(&dword_2334D9000, v32, OS_LOG_TYPE_ERROR, "Load Predefined Queue (query) <%{public}@>: unrecognized media (type %ld).", buf, 0x16u);
    }

    v20 = objc_alloc_init(MEMORY[0x277D47208]);
    (*(v11 + 2))(v11, v20);
LABEL_64:

    v17 = itemCopy;
    goto LABEL_65;
  }

  availability = self->_availability;
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_2334EF52C;
  v85[3] = &unk_2789DB468;
  v85[4] = self;
  v88 = v11;
  v17 = itemCopy;
  v86 = itemCopy;
  infoCopy2 = info;
  v87 = v10;
  v89 = v14;
  v90 = 14;
  [(MPCAssistantAvailability *)availability assistantRadioGetAvailability:*&info completion:v85];

LABEL_65:
  v77 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  helperCopy = helper;
  v8 = objc_alloc_init(MEMORY[0x277D27820]);
  availability = self->_availability;
  self->_availability = v8;

  objc_storeStrong(&self->_serviceHelper, helper);
  if (qword_27DE0E768 != -1)
  {
    dispatch_once(&qword_27DE0E768, &unk_2848D4400);
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantLoadPredefinedQueue *)self aceId];
    v11 = sub_233505670(@"Load Predefined Queue", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_requestAceHash;
    [(MPAssistantLoadPredefinedQueue *)self mediaItemType];
    v15 = stringForSAMPType();
    dryRun = [(MPAssistantLoadPredefinedQueue *)self dryRun];
    v17 = &stru_2848D4AE0;
    *buf = 138543874;
    v33 = v14;
    v34 = 2114;
    if (dryRun)
    {
      v17 = @" ⚠️ DRY RUN";
    }

    v35 = v15;
    v36 = 2114;
    v37 = v17;
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (invoke) <%{public}@>: media item type %{public}@%{public}@", buf, 0x20u);
  }

  v18 = self->_requestAceHash;
  hashedRouteUIDs = [(MPAssistantLoadPredefinedQueue *)self hashedRouteUIDs];
  sub_2335057BC(@"Load Predefined Queue", v18, hashedRouteUIDs);

  _validate = [(MPAssistantLoadPredefinedQueue *)self _validate];
  if (_validate)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId2 = [(MPAssistantLoadPredefinedQueue *)self aceId];
      v22 = sub_233505670(@"Load Predefined Queue", aceId2);
      v23 = self->_requestAceHash;
      self->_requestAceHash = v22;
    }

    v24 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_requestAceHash;
      dictionary = [_validate dictionary];
      *buf = 138543618;
      v33 = v25;
      v34 = 2114;
      v35 = dictionary;
      _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEFAULT, "Load Predefined Queue (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x16u);
    }

    dictionary2 = [_validate dictionary];
    completionCopy[2](completionCopy, dictionary2);
  }

  else
  {
    dictionary2 = sub_23350699C();
    v28 = dispatch_queue_create("com.apple.mediaPlayer.assistant.loadPredefinedQueue", 0);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2334F0A58;
    v30[3] = &unk_2789DB670;
    v30[4] = self;
    v31 = completionCopy;
    dispatch_group_notify(dictionary2, v28, v30);
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end