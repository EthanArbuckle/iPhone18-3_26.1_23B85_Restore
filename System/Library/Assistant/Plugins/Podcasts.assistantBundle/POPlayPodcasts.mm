@interface POPlayPodcasts
- (id)_playbackRequestIdentifier;
- (void)performWithCompletion:(id)completion;
@end

@implementation POPlayPodcasts

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend__validate(self, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_dictionary(v9, v10, v11, v12, v13);
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v16 = objc_msgSend__playbackRequestIdentifier(self, v10, v11, v12, v13);
    v21 = objc_msgSend_hashedRouteUIDs(self, v17, v18, v19, v20);
    started = objc_msgSend_startPlaying(self, v22, v23, v24, v25);
    v31 = objc_msgSend_requesterSharedUserId(self, v27, v28, v29, v30);
    v36 = objc_msgSend_sharedUserIdFromPlayableITunesAccount(self, v32, v33, v34, v35);
    v41 = objc_msgSend_refId(self, v37, v38, v39, v40);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2335357B8;
    v43[3] = &unk_2789DE2C0;
    v44 = completionCopy;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_completion_(POUtilities, v42, v16, 0, v21, started, v31, v36, v41, v43);
  }
}

- (id)_playbackRequestIdentifier
{
  v6 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, a2, v2, v3, v4);
  v11 = objc_msgSend_episodePlaybackOrder(self, v7, v8, v9, v10);
  v15 = objc_msgSend_playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder_(v6, v12, v11, v13, v14);

  return v15;
}

@end