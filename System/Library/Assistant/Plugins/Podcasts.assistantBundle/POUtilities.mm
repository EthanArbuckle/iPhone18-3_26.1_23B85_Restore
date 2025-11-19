@interface POUtilities
+ (BOOL)errorIsApplicationRequiresPreflight:(id)a3;
+ (BOOL)errorIsNoNetwork:(id)a3;
+ (BOOL)isPodcastsNowPlaying;
+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)a3 startPlaying:(BOOL)a4 assetInfo:(id)a5 isSiriRequest:(BOOL)a6 requesterSharedUserId:(id)a7 sharedUserIdFromPlayableITunesAccount:(id)a8;
+ (id)commandStatusForRemoteStatus:(unsigned int)a3 error:(id)a4 isRemoteStorePlayback:(BOOL)a5;
+ (id)identifierFromDomainObject:(id)a3;
+ (id)typeFromDomainObject:(id)a3;
+ (void)modifyContextForAirplay:(id)a3 andPlayLocally:(id)a4 completion:(id)a5;
+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)a3 assetInfo:(id)a4 hashedRouteUIDs:(id)a5 decodedRouteUIDs:(id)a6 originatingOutputDeviceUID:(id)a7 startPlaying:(BOOL)a8 requesterSharedUserId:(id)a9 sharedUserIdFromPlayableITunesAccount:(id)a10 context:(id)a11 allowsFallback:(BOOL)a12 completion:(id)a13;
+ (void)setPlaybackRate:(float)a3 failureErrorCode:(int64_t)a4 completion:(id)a5;
@end

@implementation POUtilities

+ (id)identifierFromDomainObject:(id)a3
{
  v5 = objc_msgSend_identifier(a3, a2, a3, v3, v4);
  v10 = objc_msgSend_lastPathComponent(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)typeFromDomainObject:(id)a3
{
  v5 = objc_msgSend_identifier(a3, a2, a3, v3, v4);
  v10 = objc_msgSend_host(v5, v6, v7, v8, v9);

  return v10;
}

+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)a3 assetInfo:(id)a4 hashedRouteUIDs:(id)a5 decodedRouteUIDs:(id)a6 originatingOutputDeviceUID:(id)a7 startPlaying:(BOOL)a8 requesterSharedUserId:(id)a9 sharedUserIdFromPlayableITunesAccount:(id)a10 context:(id)a11 allowsFallback:(BOOL)a12 completion:(id)a13
{
  v97 = a8;
  v126 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v101 = a4;
  v18 = a5;
  v19 = a6;
  v100 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  if (objc_msgSend_length(v17, v24, v25, v26, v27))
  {
    v95 = v23;
    v98 = v21;
    v99 = v20;
    v36 = v19;
    if (objc_msgSend_count(v18, v28, v29, v30, v31) || objc_msgSend_count(v19, v32, v33, v34, v35) && objc_msgSend_length(v100, v83, v84, v85, v86) || (objc_msgSend_sharedInstance(PODataSource, v83, v84, v85, v86), v87 = objc_claimAutoreleasedReturnValue(), isPodcastsInstalled = objc_msgSend_isPodcastsInstalled(v87, v88, v89, v90, v91), v87, (isPodcastsInstalled & 1) != 0))
    {
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v37 = POLogContextCommand;
      }

      else
      {
        v37 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v37;
        objc_msgSend_componentsJoinedByString_(v18, v41, @", ", v42, v43);
        v45 = v44 = v18;
        v49 = objc_msgSend_componentsJoinedByString_(v19, v46, @", ", v47, v48);
        *buf = 138413058;
        v119 = v17;
        v120 = 2112;
        v121 = v45;
        v122 = 2112;
        v123 = v49;
        v124 = 2112;
        v125 = v100;
        v36 = v19;
        _os_log_impl(&dword_23352D000, v40, OS_LOG_TYPE_DEFAULT, "Will be setting playbackQueue using MediaRemote to %@ with routeUIDs %@ decodedRouteUIDs %@ originatingOutputDeviceUID %@", buf, 0x2Au);

        v18 = v44;
      }

      v117 = v17;
      v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v117, 1, v39);
      isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount = objc_msgSend_createPlaybackQueueFromRequestIdentifiers_startPlaying_assetInfo_isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_(a1, v51, v50, v97, v101, v22 != 0, v20, v98);

      v53 = [MTMPCAssistantGenericPlaybackQueue alloc];
      v56 = v18;
      v57 = v17;
      v58 = v36;
      v59 = v22;
      v60 = objc_msgSend_initWithContextID_playbackQueueRef_(v53, v54, v22, isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount, v55);
      v65 = objc_msgSend_podcastsApplicationDestination(MEMORY[0x277D27850], v61, v62, v63, v64);
      objc_msgSend_setSingleGroup_(v65, v66, 1, v67, v68);
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = sub_233530CCC;
      v102[3] = &unk_2789DE3C0;
      v114 = a1;
      v103 = v65;
      v104 = v56;
      v105 = v58;
      v69 = v100;
      v106 = v100;
      v23 = v95;
      v113 = v95;
      v107 = v60;
      v115 = a12;
      v108 = v57;
      v116 = v97;
      v109 = v101;
      v110 = v59;
      v111 = v99;
      v112 = v98;
      v70 = v60;
      v22 = v59;
      v36 = v58;
      v17 = v57;
      v18 = v56;
      v71 = v70;
      v72 = v65;
      MPAssistantWatchGetCurrentAudioRoutingInfo(v102);

      v21 = v98;
      v20 = v99;
    }

    else
    {
      v94 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v93, @"POUtilitiesErrorDomain", 103, 0);
      v23 = v95;
      (v95)[2](v95, 2, v94);

      v69 = v100;
      v21 = v98;
    }
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v73 = POLogContextCommand;
    }

    else
    {
      v73 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_23353813C(v73, v74, v75, v76, v77, v78, v79, v80);
    }

    v81 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v74, @"POUtilitiesErrorDomain", 102, 0);
    (*(v23 + 2))(v23, 2, v81);

    v36 = v19;
    v69 = v100;
  }

  v82 = *MEMORY[0x277D85DE8];
}

+ (void)modifyContextForAirplay:(id)a3 andPlayLocally:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_27DE0EBF8;
  v10 = a3;
  if (v9 != -1)
  {
    sub_23353825C();
  }

  v11 = qword_27DE0EBF0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2335317BC;
  v16[3] = &unk_2789DE410;
  v17 = v7;
  v18 = v8;
  v12 = v7;
  v13 = v8;
  objc_msgSend_modifySystemMusicContextForDestination_completion_(v11, v14, v10, v16, v15);
}

+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)a3 startPlaying:(BOOL)a4 assetInfo:(id)a5 isSiriRequest:(BOOL)a6 requesterSharedUserId:(id)a7 sharedUserIdFromPlayableITunesAccount:(id)a8
{
  v9 = a6;
  v12 = a7;
  v13 = a8;
  v14 = *MEMORY[0x277CBECE8];
  v15 = a5;
  v16 = a3;
  v17 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  v21 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v18, 2, v19, v20);
  v24 = v21;
  if (v12)
  {
    objc_msgSend_setObject_forKey_(v21, v22, v12, @"requesterUserId", v23);
  }

  if (v13)
  {
    objc_msgSend_setObject_forKey_(v24, v22, v13, @"sharedUserId", v23);
  }

  MRSystemAppPlaybackQueueSetUserInfo();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  if (v9)
  {
    MRSystemAppPlaybackQueueSetFeatureName();
  }

  return v17;
}

+ (id)commandStatusForRemoteStatus:(unsigned int)a3 error:(id)a4 isRemoteStorePlayback:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v12 = objc_msgSend_domain(v7, v8, v9, v10, v11);
  if (objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277D277F8], v14, v15))
  {
    v20 = objc_msgSend_code(v7, v16, v17, v18, v19);
  }

  else
  {
    v21 = objc_msgSend_domain(v7, v16, v17, v18, v19);
    if (objc_msgSend_isEqualToString_(v21, v22, @"POUtilitiesMRSendCommandErrorDomain", v23, v24))
    {
      v20 = objc_msgSend_code(v7, v25, v26, v27, v28);
    }

    else
    {
      v20 = 0;
    }
  }

  v33 = objc_msgSend_domain(v7, v29, v30, v31, v32);
  if (objc_msgSend_isEqualToString_(v33, v34, *MEMORY[0x277D277F0], v35, v36))
  {
    v41 = objc_msgSend_code(v7, v37, v38, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  v46 = objc_msgSend_domain(v7, v42, v43, v44, v45);
  if (objc_msgSend_isEqualToString_(v46, v47, @"POUtilitiesErrorDomain", v48, v49))
  {
    v54 = objc_msgSend_code(v7, v50, v51, v52, v53);
  }

  else
  {
    v54 = 0;
  }

  if (v20)
  {
    v59 = objc_alloc(MEMORY[0x277D47208]);
    v63 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v60, @"MediaRemote error code %ld", v61, v62, v20);
    v67 = objc_msgSend_initWithReason_(v59, v64, v63, v65, v66);

    goto LABEL_52;
  }

  if (a3 > 9)
  {
    if (a3 == 20)
    {
      v68 = MEMORY[0x277D48688];
      goto LABEL_28;
    }

    if (a3 == 10)
    {
      v68 = MEMORY[0x277D485D0];
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (!a3)
  {
    v69 = 0;
    goto LABEL_29;
  }

  if (a3 != 1)
  {
LABEL_23:
    if (v5)
    {
      v69 = *MEMORY[0x277D48680];
    }

    else
    {
      v69 = -1;
    }

    goto LABEL_29;
  }

  if (v5)
  {
    v68 = MEMORY[0x277D48658];
LABEL_28:
    v69 = *v68;
    goto LABEL_29;
  }

  v79 = objc_msgSend_sharedInstance(PODataSource, v55, v56, v57, v58);
  v84 = objc_msgSend_podcastCollections(v79, v80, v81, v82, v83);
  v89 = objc_msgSend_count(v84, v85, v86, v87, v88);
  v90 = MEMORY[0x277D485E0];
  if (!v89)
  {
    v90 = MEMORY[0x277D485F8];
  }

  v69 = *v90;

LABEL_29:
  if (v54 > 103)
  {
    if (v54 == 104)
    {
      v70 = MEMORY[0x277D485A8];
    }

    else
    {
      if (v54 != 105)
      {
        goto LABEL_39;
      }

      v70 = MEMORY[0x277D485A0];
    }
  }

  else if (v54 == 101)
  {
    v70 = MEMORY[0x277D48628];
  }

  else
  {
    if (v54 != 103)
    {
      goto LABEL_39;
    }

    v70 = MEMORY[0x277D485D8];
  }

  v69 = *v70;
LABEL_39:
  if (v69)
  {
    if (v41 != 1)
    {
      goto LABEL_47;
    }

    v71 = MEMORY[0x277D485A0];
  }

  else if (v41 == 6)
  {
    v71 = MEMORY[0x277D48668];
  }

  else
  {
    if (v41 != 7)
    {
LABEL_49:
      v72 = MEMORY[0x277D47218];
      goto LABEL_50;
    }

    v71 = MEMORY[0x277D48670];
  }

  v69 = *v71;
  if (!*v71)
  {
    goto LABEL_49;
  }

LABEL_47:
  v72 = MEMORY[0x277D47208];
  if (v69 == -1)
  {
LABEL_50:
    v77 = objc_alloc_init(v72);
    goto LABEL_51;
  }

  v73 = objc_alloc(MEMORY[0x277D47208]);
  v77 = objc_msgSend_initWithErrorCode_(v73, v74, v69, v75, v76);
LABEL_51:
  v67 = v77;
LABEL_52:

  return v67;
}

+ (BOOL)isPodcastsNowPlaying
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_23353201C;
  v14 = sub_23353202C;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = v2;
  MRMediaRemoteGetNowPlayingClient();

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = objc_msgSend_isEqual_(v11[5], v4, @"com.apple.podcasts", v5, v6, v8, 3221225472, sub_233532034, &unk_2789DE438);

  _Block_object_dispose(&v10, 8);
  return v3;
}

+ (void)setPlaybackRate:(float)a3 failureErrorCode:(int64_t)a4 completion:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v21[0] = *MEMORY[0x277D27D60];
  *&v7 = a3;
  v12 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v7);
  v21[1] = *MEMORY[0x277D27D10];
  v22[0] = v12;
  v22[1] = MEMORY[0x277CBEC38];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v22, v21, 2);

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v15 = POLogContextCommand;
  }

  else
  {
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v20 = a3;
    _os_log_impl(&dword_23352D000, v15, OS_LOG_TYPE_INFO, "Will be setting currentPlaybackRate using MediaRemote to %f", buf, 0xCu);
  }

  v16 = dispatch_get_global_queue(0, 0);
  v17 = v6;
  MRMediaRemoteSendCommandWithReply();

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)errorIsNoNetwork:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_domain(v3, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"MTSetPlaybackQueueUtilErrorDomain", v10, v11))
  {
    v16 = objc_msgSend_code(v3, v12, v13, v14, v15) == -433001;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)errorIsApplicationRequiresPreflight:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_domain(v3, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D277F8], v10, v11))
  {
    v16 = objc_msgSend_code(v3, v12, v13, v14, v15) == 15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end