@interface POSubscribeToPodcastCollection
+ (id)_commandStatusForRemoteStatus:(unsigned int)a3 assistantError:(id)a4;
- (id)_subscribeRequestIdentifier;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation POSubscribeToPodcastCollection

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
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
    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v17 = POLogContextCommand;
    }

    else
    {
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = v17;
      v27 = objc_msgSend__subscribeRequestIdentifier(self, v23, v24, v25, v26);
      *buf = 138412290;
      v58 = v27;
      _os_log_impl(&dword_23352D000, v22, OS_LOG_TYPE_INFO, "Subscribing to Podcast with adamId: %@", buf, 0xCu);
    }

    v32 = objc_msgSend_hashedRouteUID(self, v18, v19, v20, v21);
    if (v32)
    {
      v33 = objc_msgSend_hashedRouteUID(self, v28, v29, v30, v31);
      v56 = v33;
      v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v56, 1, v35);
    }

    else
    {
      v36 = MEMORY[0x277CBEBF8];
    }

    v41 = objc_msgSend__subscribeRequestIdentifier(self, v37, v38, v39, v40);
    v46 = objc_msgSend_assetInfo(self, v42, v43, v44, v45);
    v51 = objc_msgSend_refId(self, v47, v48, v49, v50);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_233532814;
    v54[3] = &unk_2789DE2C0;
    v55 = v5;
    objc_msgSend_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion_(POUtilities, v52, v41, v46, v36, 0, 0, 0, v51, 0, v54);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (id)_subscribeRequestIdentifier
{
  v5 = objc_msgSend_podcastCollection(self, a2, v2, v3, v4);
  v9 = objc_msgSend_identifierFromDomainObject_(POUtilities, v6, v5, v7, v8);

  v14 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v10, v11, v12, v13);
  v18 = objc_msgSend_playbackQueueIdentifierForSubscribeToPodcast_(v14, v15, v9, v16, v17);

  return v18;
}

+ (id)_commandStatusForRemoteStatus:(unsigned int)a3 assistantError:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_domain(v5, v6, v7, v8, v9);
  if (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277D277F8], v12, v13))
  {
    v18 = objc_msgSend_code(v5, v14, v15, v16, v17);

    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x277D47208]);
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"MediaRemote error code %ld", v21, v22, v18);
      v27 = objc_msgSend_initWithReason_(v19, v24, v23, v25, v26);

      goto LABEL_29;
    }
  }

  else
  {
  }

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v28 = POLogContextCommand;
  }

  else
  {
    v28 = MEMORY[0x277D86220];
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_23352D000, v28, OS_LOG_TYPE_INFO, "Subscribe command failed because user was already subscribed", v41, 2u);
      }

      v35 = objc_alloc(MEMORY[0x277D47208]);
      v33 = objc_msgSend_initWithErrorCode_(v35, v36, *MEMORY[0x277D48598], v37, v38);
      goto LABEL_28;
    }

    if (a3 == 10)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23352D000, v28, OS_LOG_TYPE_INFO, "Subscribe command failed because it is not subscribeable", buf, 2u);
      }

      v29 = objc_alloc(MEMORY[0x277D47208]);
      v33 = objc_msgSend_initWithErrorCode_(v29, v30, *MEMORY[0x277D486E0], v31, v32);
      goto LABEL_28;
    }

LABEL_18:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_2335382B4(a3, v28);
    }

    goto LABEL_20;
  }

  if (!a3)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v42 = 0;
      _os_log_impl(&dword_23352D000, v28, OS_LOG_TYPE_INFO, "Subscribe command succeeded", v42, 2u);
    }

    v34 = MEMORY[0x277D47218];
    goto LABEL_24;
  }

  if (a3 != 1)
  {
    goto LABEL_18;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_233538270(v28);
  }

LABEL_20:
  v34 = MEMORY[0x277D47208];
LABEL_24:
  v33 = objc_alloc_init(v34);
LABEL_28:
  v27 = v33;
LABEL_29:

  return v27;
}

@end