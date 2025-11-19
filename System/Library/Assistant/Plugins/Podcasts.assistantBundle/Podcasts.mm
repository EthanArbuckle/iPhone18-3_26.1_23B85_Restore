void sub_23352E4C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 0);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

void sub_23352E790(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 1);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

id sub_23352EA4C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v4, v7, v8);
  v12 = objc_msgSend_initWithName_value_(v5, v10, v4, v9, v11);

  return v12;
}

id sub_23352ECA0(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v4, v7, v8);
  v12 = objc_msgSend_initWithName_value_(v5, v10, v4, v9, v11);

  return v12;
}

void sub_23352EDB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"playPodcast";
  v8[1] = @"playPodcasts";
  v8[2] = @"playStation";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 3, a5);
  v6 = qword_27DE0EBD0;
  qword_27DE0EBD0 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23352F908(uint64_t a1, const char *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"playPodcasts";
  v5[1] = @"playPodcast";
  v6[0] = &unk_2848DD988;
  v6[1] = &unk_2848DD9A0;
  v5[2] = @"playStation";
  v6[2] = &unk_2848DD9B8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 3);
  v3 = qword_27DE0EBE8;
  qword_27DE0EBE8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void sub_233530CCC(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v22 = *(a1 + 120);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_233530E5C;
  v23[3] = &unk_2789DE398;
  v9 = *(a1 + 112);
  v10 = *(a1 + 64);
  v28 = *(a1 + 128);
  *&v11 = v9;
  *(&v11 + 1) = *v4;
  v21 = v11;
  v12 = *(a1 + 72);
  v29 = *(a1 + 129);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v24 = v16;
  v25 = v15;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v27 = v21;
  v26 = v19;
  objc_msgSend__resolveWithDestination_hashedRouteIdentifiers_decodedRouteIdentifiers_originatingOutputDeviceUID_localPlaybackPermitted_audioRoutingInfo_completion_(v22, v20, v5, v6, v7, v8, 1, a2, v23);
}

void sub_233530E5C(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = *MEMORY[0x277D27CD8];
  v29[0] = &unk_2848DD9E8;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v29, &v28, 1);
  v6 = objc_alloc_init(MEMORY[0x277D27828]);
  v7 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233531038;
  v19[3] = &unk_2789DE370;
  v8 = *(a1 + 80);
  v26 = *(a1 + 96);
  v20 = v3;
  v9 = *(a1 + 88);
  v24 = v8;
  v25 = v9;
  v10 = *(a1 + 40);
  v27 = *(a1 + 97);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  v23 = *(a1 + 72);
  v16 = v3;
  objc_msgSend_sendPlaybackQueueWithResult_toDestination_withOptions_completion_(v6, v17, v7, v16, v5, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_233531038(uint64_t a1, void *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_returnStatuses(v3, v4, v5, v6, v7);
    v14 = objc_msgSend_firstObject(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_unsignedIntValue(v14, v15, v16, v17, v18);

    v24 = objc_msgSend_error(v8, v20, v21, v22, v23);
    POLogInitIfNeeded();
    v25 = MEMORY[0x277D86220];
    if (POLogContextCommand)
    {
      v26 = POLogContextCommand;
    }

    else
    {
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v32 = objc_msgSend_localizedDescription(v24, v28, v29, v30, v31);
      *buf = 138412290;
      *v116 = v32;
      _os_log_impl(&dword_23352D000, v27, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Error: %@", buf, 0xCu);
    }

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v33 = POLogContextCommand;
    }

    else
    {
      v33 = v25;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v116 = v19;
      _os_log_impl(&dword_23352D000, v33, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Status: %d", buf, 8u);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v38 = objc_msgSend_underlyingErrors(v24, v34, v35, v36, v37, 0);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v111, v120, 16);
    if (v40)
    {
      v44 = v40;
      v45 = *v112;
      while (2)
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v112 != v45)
          {
            objc_enumerationMutation(v38);
          }

          if (objc_msgSend_errorIsNoNetwork_(POUtilities, v41, *(*(&v111 + 1) + 8 * i), v42, v43))
          {
            POLogInitIfNeeded();
            if (POLogContextCommand)
            {
              v69 = POLogContextCommand;
            }

            else
            {
              v69 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_233538174(v69, v70, v71, v72, v73, v74, v75, v76);
            }

            v77 = *(*(a1 + 80) + 16);
            goto LABEL_63;
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v111, v120, 16);
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    v51 = v19;
    v52 = MEMORY[0x277D86220];
    if (*(a1 + 96) == 1)
    {
      v53 = objc_msgSend_outputDeviceUIDs(*(a1 + 32), v47, v48, v49, v50);
      if (objc_msgSend_count(v53, v54, v55, v56, v57))
      {

        if ((v51 - 1) <= 1)
        {
          POLogInitIfNeeded();
          if (POLogContextCommand)
          {
            v58 = POLogContextCommand;
          }

          else
          {
            v58 = v52;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v116 = v51;
            _os_log_impl(&dword_23352D000, v58, OS_LOG_TYPE_DEFAULT, "Falling back to airplay after status: %d", buf, 8u);
          }

          v61 = *(a1 + 88);
          v119 = *(a1 + 40);
          v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, &v119, 1, v60);
          isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount = objc_msgSend_createPlaybackQueueFromRequestIdentifiers_startPlaying_assetInfo_isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_(v61, v63, v62, *(a1 + 97), *(a1 + 48), *(a1 + 56) != 0, *(a1 + 64), *(a1 + 72));

          v65 = [MTMPCAssistantGenericPlaybackQueue alloc];
          v38 = objc_msgSend_initWithContextID_playbackQueueRef_(v65, v66, *(a1 + 56), isSiriRequest_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount, v67);
          objc_msgSend_modifyContextForAirplay_andPlayLocally_completion_(*(a1 + 88), v68, *(a1 + 32), v38, *(a1 + 80));
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    if (!*(a1 + 80))
    {
LABEL_65:

      goto LABEL_66;
    }

    v86 = objc_msgSend_domain(v24, v47, v48, v49, v50);
    if (objc_msgSend_isEqualToString_(v86, v87, *MEMORY[0x277D277F8], v88, v89))
    {
      v94 = objc_msgSend_code(v24, v90, v91, v92, v93);
    }

    else
    {
      v94 = 0;
    }

    v99 = objc_msgSend_domain(v24, v95, v96, v97, v98);
    if (objc_msgSend_isEqualToString_(v99, v100, *MEMORY[0x277D277F0], v101, v102))
    {
      v107 = objc_msgSend_code(v24, v103, v104, v105, v106);
    }

    else
    {
      v107 = 0;
    }

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v108 = POLogContextCommand;
    }

    else
    {
      v108 = v52;
    }

    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v116 = v51;
      *&v116[4] = 2048;
      *&v116[6] = v94;
      v117 = 2048;
      v118 = v107;
      _os_log_impl(&dword_23352D000, v108, OS_LOG_TYPE_DEFAULT, "Completed sendPlaybackQueueWithResult with MR status: %d, remote error: %ld, assistant error: %ld", buf, 0x1Cu);
    }

    if (v24 && (MPCAssistantErrorIsInformational() & 1) == 0)
    {
      v38 = v24;
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v109 = POLogContextCommand;
      }

      else
      {
        v109 = v52;
      }

      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        sub_2335381AC(v38, v109);
      }
    }

    else
    {
      v38 = 0;
    }

    v77 = *(*(a1 + 80) + 16);
LABEL_63:
    v77();
LABEL_64:

    goto LABEL_65;
  }

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v78 = POLogContextCommand;
  }

  else
  {
    v78 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    sub_233538224(v78, v79, v80, v81, v82, v83, v84, v85);
  }

  (*(*(a1 + 80) + 16))();
LABEL_66:

  v110 = *MEMORY[0x277D85DE8];
}

uint64_t sub_233531780()
{
  qword_27DE0EBF0 = objc_alloc_init(MEMORY[0x277D27848]);

  return MEMORY[0x2821F96F8]();
}

void sub_2335317BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 2, v3);
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D27828]);
    v6 = objc_alloc(MEMORY[0x277D27878]);
    v8 = objc_msgSend_initWithAppBundleID_playerID_origin_(v6, v7, *MEMORY[0x277D3DCE0], @"Podcasts", 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2335318D4;
    v11[3] = &unk_2789DE3E8;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    objc_msgSend_sendPlaybackQueue_toDestination_completion_(v5, v10, v9, v8, v11);
  }
}

void sub_2335318D4(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = objc_msgSend_firstObject(a3, v6, v7, v8, v9);
  v15 = objc_msgSend_unsignedIntValue(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_domain(v5, v16, v17, v18, v19);
  if (objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x277D277F8], v22, v23))
  {
    v28 = objc_msgSend_code(v5, v24, v25, v26, v27);
  }

  else
  {
    v28 = 0;
  }

  v33 = objc_msgSend_domain(v5, v29, v30, v31, v32);
  if (objc_msgSend_isEqualToString_(v33, v34, *MEMORY[0x277D277F0], v35, v36))
  {
    v41 = objc_msgSend_code(v5, v37, v38, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v42 = POLogContextCommand;
  }

  else
  {
    v42 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v45[0] = 67109632;
    v45[1] = v15;
    v46 = 2048;
    v47 = v28;
    v48 = 2048;
    v49 = v41;
    _os_log_impl(&dword_23352D000, v42, OS_LOG_TYPE_DEFAULT, "Completed Airplay fallback with MR status: %d, remote error: %ld, assistant error: %ld", v45, 0x1Cu);
  }

  v43 = *(a1 + 32);
  if (v43)
  {
    (*(v43 + 16))(v43, v15, v5);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_233532004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23353201C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233532034(uint64_t a1)
{
  v16 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
  v2 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if (objc_msgSend_count(v16, v3, v4, v5, v6))
  {
    v11 = objc_msgSend_lastObject(v16, v7, v8, v9, v10);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(*(a1 + 40) + 8);
    v15 = v2;
    v13 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2335322B4(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v29, v35, 16);
  if (!v5)
  {

LABEL_26:
    v12 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_27;
  }

  v11 = v5;
  v12 = 0;
  v13 = *v30;
  v14 = MEMORY[0x277D86220];
  *&v10 = 67109120;
  v28 = v10;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v30 != v13)
    {
      objc_enumerationMutation(v3);
    }

    v16 = objc_msgSend_integerValue(*(*(&v29 + 1) + 8 * v15), v6, v7, v8, v9, v28, v29);
    v17 = v16;
    if (v16)
    {
      v18 = v16 == 3;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v19 = POLogContextCommand;
      }

      else
      {
        v19 = v14;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = v28;
        v34 = v17;
        _os_log_error_impl(&dword_23352D000, v19, OS_LOG_TYPE_ERROR, "MediaRemote command failed with status %u", buf, 8u);
      }

      v20 = objc_alloc(MEMORY[0x277D47208]);
      v24 = objc_msgSend_initWithErrorCode_(v20, v21, *(a1 + 40), v22, v23);

      v12 = v24;
    }

    if (v17 != 3 && v17 != 0)
    {
      break;
    }

    if (v11 == ++v15)
    {
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v29, v35, 16);
      if (v11)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_27:
  v26 = *(a1 + 32);
  if (v26)
  {
    (*(v26 + 16))(v26, v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_233532598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_233532814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_msgSend__commandStatusForRemoteStatus_assistantError_(POSubscribeToPodcastCollection, a2, a2, a3, a5);
  v6 = *(a1 + 32);
  v11 = objc_msgSend_dictionary(v12, v7, v8, v9, v10);
  (*(v6 + 16))(v6, v11);
}

uint64_t sub_233532C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_2814EEA68 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_233533168(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v14 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"Documents/PodcastsDB.plist", v8, v9);
  v13 = objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"Documents/PodcastsDiff.plist", v11, v12);

  (*(*(a1 + 32) + 16))();
}

void sub_2335338EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233533904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  if (v5)
  {
    v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8, v9);
    v16 = objc_msgSend_path(v5, v12, v13, v14, v15);
    v19 = objc_msgSend_attributesOfItemAtPath_error_(v11, v17, v16, 0, v18);
    v24 = objc_msgSend_fileModificationDate(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_revisionsDataPlistLastModified(*(a1 + 32), v25, v26, v27, v28);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isEqual_(v24, v30, v29, v31, v32) ^ 1;
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v33 = POLogContextSync;
    }

    else
    {
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_233538434();
    }
  }
}

void sub_233533AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233533AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  if (v5)
  {
    v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8, v9);
    v16 = objc_msgSend_path(v5, v12, v13, v14, v15);
    v19 = objc_msgSend_attributesOfItemAtPath_error_(v11, v17, v16, 0, v18);
    v24 = objc_msgSend_fileModificationDate(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_podcastDataPlistLastModified(*(a1 + 32), v25, v26, v27, v28);
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isEqual_(v24, v30, v29, v31, v32) ^ 1;
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v33 = POLogContextSync;
    }

    else
    {
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_23353849C();
    }
  }
}

void sub_233534034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v10 = POLogContextSync;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_233538548();
    }
  }

  else
  {
    objc_msgSend__withExtensionParseDataDictionary_revisionDictionary_(*(a1 + 32), v7, a2, a3, v8);
  }
}

void sub_233535608(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2335357B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, 0);
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

uint64_t sub_233535B44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233535B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_233535C2C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23352D000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

void sub_233535E18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((objc_msgSend_hasFetchedInitialAccount(*(a1 + 32), a2, a3, a4, a5) & 1) == 0)
  {
    objc_msgSend__updateActiveAccount(*(a1 + 32), v6, v7, v8, v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233535ECC;
    block[3] = &unk_2789DE5D8;
    v13 = v10;
    dispatch_async(v11, block);
  }
}

void sub_233536230(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_23352D000, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v25, 2u);
  }

  v7 = objc_msgSend__activeAccountBlocking(*(a1 + 32), v3, v4, v5, v6);
  v12 = objc_msgSend_ams_DSID(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_stringValue(v12, v13, v14, v15, v16);

  v21 = *(a1 + 40);
  if (v21 | v17 && (objc_msgSend_isEqualToString_(v21, v18, v17, v19, v20) & 1) == 0)
  {
    dispatch_async(MEMORY[0x277D85CD0], &unk_2848D9E48);
  }

  objc_msgSend_setActiveAccount_(*(a1 + 32), v18, v7, v19, v20);
  objc_msgSend_setHasFetchedInitialAccount_(*(a1 + 32), v22, 1, v23, v24);
}

void sub_23353631C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_(v7, v5, @"AccountDSIDChangedNotification", 0, v6);
}

void sub_233536B78(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_commandStatusForRemoteStatus_error_isRemoteStorePlayback_(POUtilities, a2, a2, a3, *(a1 + 40));
  v4 = *(a1 + 32);
  v9 = objc_msgSend_dictionary(v10, v5, v6, v7, v8);
  (*(v4 + 16))(v4, v9);
}

void POLogInitIfNeeded()
{
  if (qword_2814EEA78 != -1)
  {
    sub_2335387E8();
  }
}

uint64_t sub_233536E24()
{
  v0 = os_log_create(POLoggingSubsystem, POLoggingContextCommand);
  v1 = POLogContextCommand;
  POLogContextCommand = v0;

  POLogContextSync = os_log_create(POLoggingSubsystem, POLoggingContextCommand);

  return MEMORY[0x2821F96F8]();
}

id POAssistantDecodeHashedRouteUIDs(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MSVWeakLinkClass());
  v4 = dispatch_group_create();
  v5 = dispatch_queue_create("DecodeSerialQueue", 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v31, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CBEA90]);
        v15 = objc_msgSend_initWithBase64EncodedString_options_(v12, v13, v11, 0, v14);
        dispatch_group_enter(v4);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_233537400;
        v22[3] = &unk_2789DE678;
        v23 = v5;
        v24 = v11;
        v25 = v2;
        v26 = v4;
        objc_msgSend_processData_usingProcedure_completion_(v3, v16, v15, 2, v22);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v27, v31, 16);
    }

    while (v8);
  }

  v18 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v4, v18);

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_233537400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v7 = POLogContextCommand;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_2335387FC(v6, v7);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233537510;
    block[3] = &unk_2789DE650;
    v9 = v5;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    dispatch_sync(v8, block);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_233537510(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_msgSend_initWithData_encoding_(v2, v3, *(a1 + 32), 4, v4);
  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v6 = POLogContextCommand;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_233538874(a1, v5, v6);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    objc_msgSend_setObject_forKey_(*(a1 + 48), v7, *(a1 + 40), v5, v8);
  }

LABEL_7:
}

void sub_2335381AC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23352D000, a2, OS_LOG_TYPE_ERROR, "sendPlaybackQueueWithResult encountered error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2335382B4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_23352D000, a2, OS_LOG_TYPE_ERROR, "Subscribe command failed with an unexpected error code: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23353832C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_233535624();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_23352D000, v1, OS_LOG_TYPE_ERROR, "Error reading plist at %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2335383B0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_233535624();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_23352D000, v1, OS_LOG_TYPE_FAULT, "Error reading plist from path: %@ - with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_233538434()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "Failed to get revision URL for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23353849C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "Failed to get database URL for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_233538548()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "Failed to get plist URLs for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2335385B0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "First child's children isn't of length 2.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_233538618()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "Unable to locate root child array.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_233538680()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_233535624();
  sub_233535608(&dword_23352D000, v0, v1, "Unable to get UUID for root object, sync data will not have proper validity.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2335386E8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23352D000, log, OS_LOG_TYPE_ERROR, "Unable to get UUID for first revision.", buf, 2u);
}

void sub_233538728(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v8 = objc_msgSend_podcastCollection(a2, v4, v5, v6, v7);
  v13 = objc_msgSend_identifier(v8, v9, v10, v11, v12);
  v15 = 138412290;
  v16 = v13;
  _os_log_error_impl(&dword_23352D000, v3, OS_LOG_TYPE_ERROR, "unable to create a play queue for identifier: %@", &v15, 0xCu);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2335387FC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_23352D000, a2, OS_LOG_TYPE_DEBUG, "Error decoding route UID: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_233538874(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_23352D000, log, OS_LOG_TYPE_DEBUG, "%@ => %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}