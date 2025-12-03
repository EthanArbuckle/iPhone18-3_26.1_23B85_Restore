@interface POPlayPodcastEpisode
- (id)_playbackRequestIdentifier;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation POPlayPodcastEpisode

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v10 = objc_msgSend__validate(self, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_dictionary(v10, v11, v12, v13, v14);
    completionCopy[2](completionCopy, v16);
  }

  else
  {
    v17 = objc_msgSend__playbackRequestIdentifier(self, v11, v12, v13, v14);
    v22 = objc_msgSend_assetInfo(self, v18, v19, v20, v21);
    v27 = objc_msgSend_hashedRouteUIDs(self, v23, v24, v25, v26);
    started = objc_msgSend_startPlaying(self, v28, v29, v30, v31);
    v37 = objc_msgSend_requesterSharedUserId(self, v33, v34, v35, v36);
    v42 = objc_msgSend_sharedUserIdFromPlayableITunesAccount(self, v38, v39, v40, v41);
    v47 = objc_msgSend_refId(self, v43, v44, v45, v46);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_23352E790;
    v49[3] = &unk_2789DE2C0;
    v50 = completionCopy;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_completion_(POUtilities, v48, v17, v22, v27, started, v37, v42, v47, v49);
  }
}

- (id)_playbackRequestIdentifier
{
  v5 = objc_msgSend_podcastEpisode(self, a2, v2, v3, v4);
  v9 = objc_msgSend_identifierFromDomainObject_(POUtilities, v6, v5, v7, v8);

  v14 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v10, v11, v12, v13);
  v18 = objc_msgSend_playbackQueueIdentifierForEpisodeAdamId_(v14, v15, v9, v16, v17);

  return v18;
}

@end