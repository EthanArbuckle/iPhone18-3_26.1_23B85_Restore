@interface POPlayPodcastCollection
- (id)_playbackQueueIdentifiers:(BOOL *)a3 queueStatus:(unint64_t *)a4;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation POPlayPodcastCollection

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v51 = 0;
  v50 = 0;
  v8 = objc_msgSend__playbackQueueIdentifiers_queueStatus_(self, v6, &v51, &v50, v7);
  v13 = objc_msgSend__validate(self, v9, v10, v11, v12);
  v18 = v13;
  if (v13)
  {
    v19 = objc_msgSend_dictionary(v13, v14, v15, v16, v17);
    v5[2](v5, v19);
  }

  else
  {
    v20 = objc_msgSend_assetInfo(self, v14, v15, v16, v17);
    v25 = objc_msgSend_hashedRouteUIDs(self, v21, v22, v23, v24);
    started = objc_msgSend_startPlaying(self, v26, v27, v28, v29);
    v35 = objc_msgSend_requesterSharedUserId(self, v31, v32, v33, v34);
    v40 = objc_msgSend_sharedUserIdFromPlayableITunesAccount(self, v36, v37, v38, v39);
    v45 = objc_msgSend_refId(self, v41, v42, v43, v44);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_233536B78;
    v47[3] = &unk_2789DE628;
    v49 = v51;
    v48 = v5;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_completion_(POUtilities, v46, v8, v20, v25, started, v35, v40, v45, v47);

    v19 = v48;
  }
}

- (id)_playbackQueueIdentifiers:(BOOL *)a3 queueStatus:(unint64_t *)a4
{
  v7 = objc_msgSend_podcastCollection(self, a2, a3, a4, v4);
  v11 = objc_msgSend_typeFromDomainObject_(POUtilities, v8, v7, v9, v10);

  v16 = objc_msgSend_podcastCollection(self, v12, v13, v14, v15);
  v20 = objc_msgSend_identifierFromDomainObject_(POUtilities, v17, v16, v18, v19);

  if (objc_msgSend_isEqualToString_(v11, v21, @"device", v22, v23))
  {
    v28 = objc_msgSend_sharedInstance(PODataSource, v24, v25, v26, v27);
    v32 = objc_msgSend_podcastCollectionWithUUID_(v28, v29, v20, v30, v31);
    v37 = objc_msgSend_feedUrl(v32, v33, v34, v35, v36);

    v42 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v38, v39, v40, v41);
    v47 = objc_msgSend_episodePlaybackOrder(self, v43, v44, v45, v46);
    v49 = objc_msgSend_universalPlaybackQueueIdentifierForPodcastUuid_podcastFeedUrl_podcastStoreId_sampPlaybackOrder_(v42, v48, v20, v37, 0, v47);
  }

  else if (objc_msgSend_isEqualToString_(v11, v24, @"store", v26, v27))
  {
    v54 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v50, v51, v52, v53);
    v59 = objc_msgSend_episodePlaybackOrder(self, v55, v56, v57, v58);
    v49 = objc_msgSend_playbackQueueIdentifierForPodcastAdamId_sampPlaybackOrder_(v54, v60, v20, v59, v61);

    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v62 = POLogContextCommand;
    }

    else
    {
      v62 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_233538728(v62, self);
    }

    v49 = 0;
  }

  return v49;
}

@end