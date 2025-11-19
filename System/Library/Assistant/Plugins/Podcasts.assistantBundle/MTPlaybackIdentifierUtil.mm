@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)a3;
+ (id)__stringByRemovingPercentEscapes:(id)a3;
+ (id)__stringWithPercentEscape:(id)a3;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3;
- (BOOL)isSubscribeCommandURLString:(id)a3;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3;
- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4;
- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7;
- (int64_t)_episodeContextFromString:(id)a3;
- (int64_t)_episodeContextSortFromString:(id)a3;
- (int64_t)_episodeOrderFromString:(id)a3;
- (unint64_t)_playQueueTypeForRequestURL:(id)a3;
- (unint64_t)_playReasonFromString:(id)a3;
@end

@implementation MTPlaybackIdentifierUtil

- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, a4, a4, v4);
  v6 = objc_opt_class();
  v11 = objc_msgSend_query(v5, v7, v8, v9, v10);
  v15 = objc_msgSend___queryStringToQueryDictionary_(v6, v12, v11, v13, v14);

  v16 = NSPersistentStringForMTPlayReason();
  objc_msgSend_setObject_forKey_(v15, v17, v16, @"playReason", v18);

  v19 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v24 = objc_msgSend_scheme(v5, v20, v21, v22, v23);
  objc_msgSend_setScheme_(v19, v25, v24, v26, v27);

  v32 = objc_msgSend_host(v5, v28, v29, v30, v31);
  objc_msgSend_setHost_(v19, v33, v32, v34, v35);

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_23352EA4C;
  v50[3] = &unk_2789DE310;
  v51 = v15;
  v36 = v15;
  v40 = objc_msgSend_mt_compactMap_(v36, v37, v50, v38, v39);
  objc_msgSend_setQueryItems_(v19, v41, v40, v42, v43);

  v48 = objc_msgSend_string(v19, v44, v45, v46, v47);

  return v48;
}

- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4
{
  v5 = a3;
  v9 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v6, a4, v7, v8);
  v10 = objc_opt_class();
  v15 = objc_msgSend_query(v9, v11, v12, v13, v14);
  v19 = objc_msgSend___queryStringToQueryDictionary_(v10, v16, v15, v17, v18);

  v24 = objc_msgSend_stringValue(v5, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_stringValue(v5, v25, v26, v27, v28);
    objc_msgSend_setObject_forKey_(v19, v30, v29, @"enqueuerDSID", v31);
  }

  v32 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v37 = objc_msgSend_scheme(v9, v33, v34, v35, v36);
  objc_msgSend_setScheme_(v32, v38, v37, v39, v40);

  v45 = objc_msgSend_host(v9, v41, v42, v43, v44);
  objc_msgSend_setHost_(v32, v46, v45, v47, v48);

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_23352ECA0;
  v63[3] = &unk_2789DE310;
  v64 = v19;
  v49 = v19;
  v53 = objc_msgSend_mt_compactMap_(v49, v50, v63, v51, v52);
  objc_msgSend_setQueryItems_(v32, v54, v53, v55, v56);

  v61 = objc_msgSend_string(v32, v57, v58, v59, v60);

  return v61;
}

- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, a3, v3, v4);
  v10 = objc_msgSend_host(v5, v6, v7, v8, v9);
  if (objc_msgSend_length(v10, v11, v12, v13, v14))
  {
    if (qword_27DE0EBD8 != -1)
    {
      sub_233538114();
    }

    v18 = objc_msgSend_containsObject_(qword_27DE0EBD0, v15, v10, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isSubscribeCommandURLString:(id)a3
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, a3, v3, v4);
  v10 = objc_msgSend_host(v5, v6, v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"subscribe", v12, v13);

  return isEqualToString;
}

- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, a3, v3, v4);
  v10 = objc_msgSend_host(v5, v6, v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"playItem", v12, v13);

  return isEqualToString;
}

- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v5 = *MEMORY[0x277D48610];
  }

  v6 = objc_msgSend__playbackRequestIdentifierWithHost_queryKey_value_(self, v4, @"playPodcasts", @"playbackOrder", v5);

  return v6;
}

- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_msgSend_length(v8, v11, v12, v13, v14) || objc_msgSend_length(v9, v15, v16, v17, v18))
  {
    v19 = objc_msgSend_universalPlaybackQueueIdentifierForPodcastUuid_podcastFeedUrl_podcastStoreId_episodeUuid_episodeGuid_episodeStoreId_sampPlaybackOrder_(self, v15, v8, 0, 0, v9, 0, 0, v10);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  if (!objc_msgSend_length(v20, v21, v22, v23, v24))
  {
    v29 = *MEMORY[0x277D48610];

    v20 = v29;
  }

  v30 = objc_msgSend_length(v18, v25, v26, v27, v28);
  v35 = objc_msgSend_length(v16, v31, v32, v33, v34);
  v40 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v36, v37, v38, v39);
  objc_msgSend_setObject_forKey_(v40, v41, v20, @"playbackOrder", v42);
  if (v35)
  {
    objc_msgSend_setObject_forKey_(v40, v43, v16, @"uuid", v46);
  }

  if (v30)
  {
    objc_msgSend_setObject_forKey_(v40, v43, v18, @"episodeUuid", v46);
  }

  if (objc_msgSend_length(v17, v43, v44, v45, v46))
  {
    v51 = objc_opt_class();
    v55 = objc_msgSend___stringWithPercentEscape_(v51, v52, v17, v53, v54);
    objc_msgSend_setObject_forKey_(v40, v56, v55, @"podcastFeedUrl", v57);
  }

  if (objc_msgSend_length(v19, v47, v48, v49, v50))
  {
    objc_msgSend_setObject_forKey_(v40, v58, v19, @"episodeGuid", v60);
  }

  v61 = *MEMORY[0x277D3DD88];
  if (a5 && v61 != a5)
  {
    v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%llu", v59, v60, a5);
    objc_msgSend_setObject_forKey_(v40, v63, v62, @"storeCollectionId", v64);
  }

  if (a8 && v61 != a8)
  {
    v65 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%llu", v59, v60, a8);
    objc_msgSend_setObject_forKey_(v40, v66, v65, @"storeTrackId", v67);
  }

  v68 = NSPersistentStringForMTEpisodeContext();
  objc_msgSend_setObject_forKey_(v40, v69, v68, @"context", v70);

  v71 = NSPersistentStringForMTEpisodeContextSortType();
  objc_msgSend_setObject_forKey_(v40, v72, v71, @"contextSortType", v73);

  v76 = objc_msgSend__playbackRequestIdentifierWithHost_queryComponents_(self, v74, @"playPodcast", v40, v75);

  return v76;
}

- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v6 = *MEMORY[0x277D48610];
  }

  v16[0] = @"storeCollectionId";
  v16[1] = @"playbackOrder";
  v17[0] = a3;
  v17[1] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v7, v9, v17, v16, 2);
  v13 = objc_msgSend__playbackRequestIdentifierWithHost_queryComponents_(self, v11, @"playPodcast", v10, v12);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend___stringWithPercentEscape_(v5, v6, v4, v7, v8);

  v11 = objc_msgSend__playbackRequestIdentifierWithHost_queryKey_value_(self, v10, @"subscribe", @"podcastFeedUrl", v9);

  return v11;
}

- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x277CBEB38];
  v15 = a3;
  v19 = objc_msgSend_dictionaryWithCapacity_(v14, v16, 5, v17, v18);
  objc_msgSend_setObject_forKey_(v19, v20, v15, @"uuid", v21);

  if (objc_msgSend_length(v11, v22, v23, v24, v25))
  {
    objc_msgSend_setObject_forKey_(v19, v26, v11, @"episodeUuid", v29);
  }

  if (objc_msgSend_length(v12, v26, v27, v28, v29))
  {
    objc_msgSend_setObject_forKey_(v19, v30, v12, @"episodeGuid", v33);
  }

  if (objc_msgSend_length(v13, v30, v31, v32, v33))
  {
    v36 = objc_opt_class();
    v40 = objc_msgSend___stringWithPercentEscape_(v36, v37, v13, v38, v39);
    objc_msgSend_setObject_forKey_(v19, v41, v40, @"podcastFeedUrl", v42);
  }

  v43 = objc_msgSend__playbackRequestIdentifierWithHost_queryComponents_(self, v34, @"playStation", v19, v35);

  return v43;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_sharedInstance(MTAccountController, v5, v6, v7, v8);
  v14 = objc_msgSend_activeDsid(v9, v10, v11, v12, v13);
  v17 = objc_msgSend_playbackQueueWithDsid_forIdentifiers_(self, v15, v14, v4, v16);

  return v17;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = a4;
  v7 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  if (a3)
  {
    v10 = a3;
    keys = @"enqueuerDSID";
    v8 = CFDictionaryCreate(0, &keys, &v10, 1, 0, MEMORY[0x277CBF150]);
    MRSystemAppPlaybackQueueSetUserInfo();
    CFRelease(v8);
  }

  return v7;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)a3
{
  v3 = qword_27DE0EBE0;
  v8 = a3;
  if (v3 != -1)
  {
    sub_233538128();
  }

  v9 = qword_27DE0EBE8;
  v10 = objc_msgSend_host(v8, v4, v5, v6, v7);

  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v11, v10, v12, v13);
  v15 = v14;
  v16 = &unk_2848DD9D0;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v22 = objc_msgSend_unsignedIntegerValue(v17, v18, v19, v20, v21);
  return v22;
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20[0] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v8, v12, v20, &v19, 1);

  v16 = objc_msgSend__playbackRequestIdentifierWithHost_queryComponents_(self, v14, v11, v13, v15);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  objc_msgSend_setScheme_(v7, v8, @"podcasts", v9, v10);
  v53 = v5;
  objc_msgSend_setHost_(v7, v11, v5, v12, v13);
  v14 = MEMORY[0x277CBEB18];
  v19 = objc_msgSend_count(v6, v15, v16, v17, v18);
  v23 = objc_msgSend_arrayWithCapacity_(v14, v20, v19, v21, v22);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = v6;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v54, v58, 16);
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v54 + 1) + 8 * i);
        v31 = objc_alloc(MEMORY[0x277CCAD18]);
        v35 = objc_msgSend_objectForKeyedSubscript_(v24, v32, v30, v33, v34);
        v38 = objc_msgSend_initWithName_value_(v31, v36, v30, v35, v37);

        objc_msgSend_addObject_(v23, v39, v38, v40, v41);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v42, &v54, v58, 16);
    }

    while (v27);
  }

  objc_msgSend_setQueryItems_(v7, v43, v23, v44, v45);
  v50 = objc_msgSend_string(v7, v46, v47, v48, v49);

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (int64_t)_episodeOrderFromString:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x277D48618], v5, v6))
  {
    v10 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, *MEMORY[0x277D48620], v8, v9))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_playReasonFromString:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v8 = MTPlayReasonFromPersistentString();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_episodeContextFromString:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v8 = MTEpisodeContextFromPersistentString();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_episodeContextSortFromString:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    v8 = MTEpisodeContextSortTypeFromPersistentString();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)__stringWithPercentEscape:(id)a3
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v3;
}

+ (id)__stringByRemovingPercentEscapes:(id)a3
{
  v3 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x277CBECE8], a3, &stru_2848DA188);

  return v3;
}

+ (id)__queryStringToQueryDictionary:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_componentsSeparatedByString_(a3, a2, @"&", v3, v4);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v36, v40, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = objc_msgSend_componentsSeparatedByString_(*(*(&v36 + 1) + 8 * i), v9, @"=", v10, v11);
        v19 = objc_msgSend_objectAtIndex_(v15, v16, 0, v17, v18);
        v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21, v22, v23);
        if (objc_msgSend_count(v15, v25, v26, v27, v28) >= 2)
        {
          v32 = objc_msgSend_objectAtIndex_(v15, v29, 1, v30, v31);

          v24 = v32;
        }

        objc_msgSend_setObject_forKey_(v6, v29, v24, v19, v31);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v36, v40, 16);
    }

    while (v12);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

@end