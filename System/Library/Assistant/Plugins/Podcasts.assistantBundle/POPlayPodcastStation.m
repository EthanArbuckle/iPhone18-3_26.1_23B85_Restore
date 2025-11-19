@interface POPlayPodcastStation
- (id)_playbackRequestIdentifier;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation POPlayPodcastStation

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v10 = objc_msgSend__validate(self, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_dictionary(v10, v11, v12, v13, v14);
    v5[2](v5, v16);
  }

  else
  {
    v17 = objc_msgSend__playbackRequestIdentifier(self, v11, v12, v13, v14);
    v22 = objc_msgSend_hashedRouteUIDs(self, v18, v19, v20, v21);
    started = objc_msgSend_startPlaying(self, v23, v24, v25, v26);
    v32 = objc_msgSend_requesterSharedUserId(self, v28, v29, v30, v31);
    v37 = objc_msgSend_sharedUserIdFromPlayableITunesAccount(self, v33, v34, v35, v36);
    v42 = objc_msgSend_refId(self, v38, v39, v40, v41);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_23352E4C8;
    v44[3] = &unk_2789DE2C0;
    v45 = v5;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_completion_(POUtilities, v43, v17, 0, v22, started, v32, v37, v42, v44);
  }
}

- (id)_playbackRequestIdentifier
{
  v5 = objc_msgSend_station(self, a2, v2, v3, v4);
  v9 = objc_msgSend_identifierFromDomainObject_(POUtilities, v6, v5, v7, v8);

  v14 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v10, v11, v12, v13);
  v16 = objc_msgSend_universalPlaybackQueueIdentifierForStationUuid_episodeGuid_episodeStoreId_podcastFeedUrl_(v14, v15, v9, 0, 0, 0);

  return v16;
}

@end