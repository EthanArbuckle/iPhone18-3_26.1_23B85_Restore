void sub_10016B264(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 136315651;
    v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v148 = 2113;
    v149 = v11;
    v150 = 2113;
    v151 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s home memberships for sharedUserId = %{private}@ : %{private}@", buf, 0x20u);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v148 = 2113;
    v149 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s homeUniqueIdentifier: %{private}@", buf, 0x16u);
  }

  v13 = [*(a1 + 40) objectForKey:v8];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v148 = 2113;
    v149 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s home user id: %{private}@", buf, 0x16u);
  }

  v15 = productTypeFromUserAgentString();
  v16 = AFDoesProductTypeSupportMUX();
  v17 = [AFCompanionDeviceInfo alloc];
  BYTE3(v100) = *(a1 + 185);
  BYTE2(v100) = v16;
  BYTE1(v100) = *(a1 + 184);
  LOBYTE(v100) = 0;
  v117 = [v17 initWithAssistantID:*(a1 + 56) speechID:*(a1 + 64) idsIdentifier:*(a1 + 72) productPrefix:*(a1 + 48) aceHost:*(a1 + 80) syncMetadata:&__NSDictionary0__struct syncMetadataCapability:v100 peerToPeerHandoffCapability:*(a1 + 88) muxSupportCapability:*(a1 + 96) meDevice:? siriLanguage:? companionName:?];
  if ([v7 isEqualToString:v13])
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 136315651;
      v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
      v148 = 2113;
      v149 = v13;
      v150 = 2113;
      v151 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Found matching record. Adding homeUserId %{private}@ with shareUserId %{private}@ to multiuser group", buf, 0x20u);
    }

    v110 = v15;
    v112 = v8;
    v114 = v13;
    v108 = v7;
    v20 = AFSiriLogContextMultiUser;
    v21 = v20;
    v22 = *(*(a1 + 104) + 8);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v22, "MultiUserService", "Primary user synced", buf, 2u);
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v137[0] = _NSConcreteStackBlock;
    v137[1] = 3221225472;
    v137[2] = sub_10016BE14;
    v137[3] = &unk_100513C20;
    v27 = v23;
    v28 = *(a1 + 104);
    v138 = v27;
    v139 = v28;
    v106 = v117;
    v140 = v106;
    v29 = *(a1 + 56);
    v30 = *(a1 + 64);
    v31 = *(a1 + 128);
    v32 = *(a1 + 136);
    *&v33 = v31;
    *(&v33 + 1) = v32;
    *&v34 = v29;
    *(&v34 + 1) = v30;
    v141 = v34;
    v142 = v33;
    v145 = *(a1 + 176);
    v35 = *(a1 + 144);
    v36 = *(a1 + 152);
    v37 = *(a1 + 160);
    v38 = *(a1 + 168);
    *&v39 = v37;
    *(&v39 + 1) = v38;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    v143 = v40;
    v144 = v39;
    LOBYTE(v101) = 0;
    v13 = v114;
    [v24 addUser:v114 sharedUserId:v27 loggableSharedUserId:v25 iCloudAltDSID:v26 enrollmentName:@"primary_user" isPrimary:1 nonCloudSyncedUser:v101 completion:v137];
    v41 = *(*(a1 + 104) + 64);
    if (!AFIsATV() || *(*(a1 + 104) + 64) == 1 && (v41 & 1) == 0)
    {
      v104 = *(a1 + 32);
      v42 = *(a1 + 112);
      v43 = *(a1 + 120);
      v44 = *(a1 + 128);
      v45 = *(a1 + 144);
      v46 = *(a1 + 152);
      v47 = *(a1 + 160);
      v48 = [*(a1 + 168) count] < 2;
      v135[0] = _NSConcreteStackBlock;
      v135[1] = 3221225472;
      v135[2] = sub_10016C1C0;
      v135[3] = &unk_10051C498;
      v136 = *(a1 + 32);
      LOBYTE(v103) = v48;
      v49 = v44;
      v13 = v114;
      [v42 addDeviceOwner:v114 sharedUserId:v104 loggableSharedUserId:v43 iCloudAltDSID:v49 audioAppSignals:v47 enrollmentName:@"primary_user" companionInfo:v106 shareOwnerName:v45 homeMemberSettings:v46 loggingAllowed:v103 completion:v135];
    }

    v7 = v108;
    v15 = v110;
    v8 = v112;
    goto LABEL_39;
  }

  if ([*(a1 + 168) containsObject:v8] && objc_msgSend(v9, "containsObject:", v13))
  {
    v50 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v51 = *(a1 + 32);
      *buf = 136315651;
      v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
      v148 = 2113;
      v149 = v13;
      v150 = 2113;
      v151 = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Found a shared user. Adding homeUserId %{private}@ with sharedUserId %{private}@ to multiuser group", buf, 0x20u);
    }

    v111 = v15;
    v113 = v8;
    v115 = v13;
    v107 = v9;
    v109 = v7;
    v52 = AFSiriLogContextMultiUser;
    v53 = v52;
    v54 = *(*(a1 + 104) + 8);
    if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, v54, "MultiUserService", "Shared user synced", buf, 2u);
    }

    v55 = [NSString alloc];
    v56 = [NSNumber numberWithUnsignedInt:arc4random() % 9];
    v57 = [v56 stringValue];
    v105 = [v55 initWithFormat:@"%@_%@", @"secondary", v57];

    v58 = *(a1 + 32);
    v59 = *(a1 + 112);
    v60 = *(a1 + 120);
    v61 = *(a1 + 128);
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_10016C2A4;
    v126[3] = &unk_100513C20;
    v62 = v58;
    v63 = *(a1 + 104);
    v127 = v62;
    v128 = v63;
    v129 = v117;
    v64 = *(a1 + 56);
    v65 = *(a1 + 64);
    v66 = *(a1 + 128);
    v67 = *(a1 + 136);
    *&v68 = v66;
    *(&v68 + 1) = v67;
    *&v69 = v64;
    *(&v69 + 1) = v65;
    v130 = v69;
    v131 = v68;
    v134 = *(a1 + 176);
    v70 = *(a1 + 144);
    v71 = *(a1 + 152);
    v72 = *(a1 + 160);
    v73 = *(a1 + 168);
    *&v74 = v72;
    *(&v74 + 1) = v73;
    *&v75 = v70;
    *(&v75 + 1) = v71;
    v132 = v75;
    v133 = v74;
    LOBYTE(v102) = 0;
    v13 = v115;
    [v59 addUser:v115 sharedUserId:v62 loggableSharedUserId:v60 iCloudAltDSID:v61 enrollmentName:v105 isPrimary:0 nonCloudSyncedUser:v102 completion:v126];

    v7 = v109;
LABEL_34:
    v15 = v111;
    v8 = v113;
    v9 = v107;
    goto LABEL_39;
  }

  if (AFIsATV())
  {
    v76 = *(a1 + 128);
    if (v76)
    {
      v77 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v78 = *(a1 + 32);
        *buf = 136315651;
        v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
        v148 = 2113;
        v149 = v78;
        v150 = 2113;
        v151 = v76;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s Found a user not part of Home. Adding user with sharedUserId %{private}@ iCloudAltDSID %{private}@ to multiuser group", buf, 0x20u);
      }

      v111 = v15;
      v113 = v8;
      v116 = v13;
      v107 = v9;
      v79 = AFSiriLogContextMultiUser;
      v80 = v79;
      v81 = *(*(a1 + 104) + 8);
      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_END, v81, "MultiUserService", "Additional user synced", buf, 2u);
      }

      v82 = *(a1 + 32);
      v84 = *(a1 + 112);
      v83 = *(a1 + 120);
      v85 = *(a1 + 128);
      v118[0] = _NSConcreteStackBlock;
      v118[1] = 3221225472;
      v118[2] = sub_10016C644;
      v118[3] = &unk_100513C20;
      v118[4] = *(a1 + 104);
      v119 = v82;
      v125 = *(a1 + 176);
      v120 = v117;
      v86 = *(a1 + 56);
      v87 = *(a1 + 64);
      v88 = *(a1 + 144);
      v89 = *(a1 + 152);
      *&v90 = v88;
      *(&v90 + 1) = v89;
      *&v91 = v86;
      *(&v91 + 1) = v87;
      v121 = v91;
      v122 = v90;
      v92 = *(a1 + 160);
      v93 = *(a1 + 168);
      v94 = *(a1 + 128);
      v95 = *(a1 + 136);
      *&v96 = v94;
      *(&v96 + 1) = v95;
      *&v97 = v92;
      *(&v97 + 1) = v93;
      v123 = v97;
      v124 = v96;
      LOBYTE(v101) = 0;
      v13 = v116;
      [v84 addUser:v116 sharedUserId:v119 loggableSharedUserId:v83 iCloudAltDSID:v85 enrollmentName:@"additional_user" isPrimary:0 nonCloudSyncedUser:v101 completion:v118];

      goto LABEL_34;
    }
  }

  v98 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v147 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s Found a record that does not match current home. Ignoring.", buf, 0xCu);
  }

  v99 = *(a1 + 176);
  if (v99)
  {
    (*(v99 + 16))(v99, 0);
  }

LABEL_39:
}

void sub_10016BE14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 136315651;
    v35 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v36 = 2113;
    v37 = v22;
    v38 = 2112;
    v39 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s error adding primary user with %{private}@ error (%@)", buf, 0x20u);
  }

  if (![*(a1 + 40) _errorIsRecoverableForPrimary:{objc_msgSend(v3, "code")}])
  {
    v15 = *(a1 + 40);
    if (v15[64] == 1 && [v15 _errorIsUserNotPresentOnTV:{objc_msgSend(v3, "code")}])
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        *buf = 136315651;
        v35 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
        v36 = 2113;
        v37 = v17;
        v38 = 2112;
        v39 = v3;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s error adding user with %{private}@, error: %@ as user does not have a profile on the TV", buf, 0x20u);
      }
    }

    else
    {
      v18 = +[SiriCoreSymptomsReporter sharedInstance];
      v19 = +[NSProcessInfo processInfo];
      v20 = [v19 processIdentifier];
      [v18 reportIssueWithBackOffTimerForType:@"multi_user" subType:@"add_user_to_home" context:&__NSDictionary0__struct processIdentifier:v20 walkboutStatus:byte_100590548];
    }

    v21 = *(a1 + 120);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }
  }

  else
  {
LABEL_5:
    objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
    v5 = +[ADMultiUserService sharedService];
    v6 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10016CD14;
    v24[3] = &unk_100513C20;
    v7 = *(a1 + 48);
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    v27 = v3;
    v23 = *(a1 + 32);
    v8 = v23.i64[0];
    v28 = vextq_s8(v23, v23, 8uLL);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v33 = *(a1 + 120);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v29 = v14;
    v30 = v13;
    v31 = *(a1 + 104);
    v32 = *(a1 + 112);
    [v5 updateMultiUserWithSharedUserId:v6 companionInfo:v7 completion:v24];
  }
}

void sub_10016C1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315651;
      v7 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
      v8 = 2113;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s error adding home owner with %{private}@ error (%@)", &v6, 0x20u);
    }
  }
}

void sub_10016C2A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 136315651;
    v35 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v36 = 2113;
    v37 = v22;
    v38 = 2112;
    v39 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s error adding user with %{private}@, error: %@", buf, 0x20u);
  }

  if (![*(a1 + 40) _errorIsRecoverableForSecondary:{objc_msgSend(v3, "code")}])
  {
    v15 = *(a1 + 40);
    if (v15[64] == 1 && [v15 _errorIsUserNotPresentOnTV:{objc_msgSend(v3, "code")}])
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        *buf = 136315651;
        v35 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
        v36 = 2113;
        v37 = v17;
        v38 = 2112;
        v39 = v3;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s error adding user with %{private}@, error: %@ as user does not have a profile on the TV", buf, 0x20u);
      }
    }

    else
    {
      v18 = +[SiriCoreSymptomsReporter sharedInstance];
      v19 = +[NSProcessInfo processInfo];
      v20 = [v19 processIdentifier];
      [v18 reportIssueWithBackOffTimerForType:@"multi_user" subType:@"add_user_to_home" context:&__NSDictionary0__struct processIdentifier:v20 walkboutStatus:byte_100590548];
    }

    v21 = *(a1 + 120);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }
  }

  else
  {
LABEL_5:
    v5 = +[ADMultiUserService sharedService];
    v6 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10016CBC4;
    v24[3] = &unk_100513C20;
    v7 = *(a1 + 48);
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    v27 = v3;
    v23 = *(a1 + 32);
    v8 = v23.i64[0];
    v28 = vextq_s8(v23, v23, 8uLL);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v33 = *(a1 + 120);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v29 = v14;
    v30 = v13;
    v31 = *(a1 + 104);
    v32 = *(a1 + 112);
    [v5 updateMultiUserWithSharedUserId:v6 companionInfo:v7 completion:v24];
  }
}

void sub_10016C644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) _errorIsUserNotPresentOnTV:{objc_msgSend(v3, "code")}];
  v6 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      *buf = 136315651;
      v36 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
      v37 = 2113;
      v38 = v7;
      v39 = 2112;
      v40 = v4;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s error adding user with %{private}@, error: %@ as user does not have a profile on the TV", buf, 0x20u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 40);
    *buf = 136315651;
    v36 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v37 = 2113;
    v38 = v23;
    v39 = 2112;
    v40 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s error adding non home user with sharedUserID %{private}@ error (%@)", buf, 0x20u);
  }

  if (([*(a1 + 32) _errorIsRecoverableForPrimary:{objc_msgSend(v4, "code")}] & 1) != 0 || objc_msgSend(*(a1 + 32), "_errorIsRecoverableForSecondary:", objc_msgSend(v4, "code")))
  {
LABEL_9:
    v8 = +[ADMultiUserService sharedService];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10016C9E4;
    v24[3] = &unk_100513C20;
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    v27 = v4;
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v14 = *(a1 + 96);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v28 = v16;
    v29 = v15;
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    v30 = v17;
    v31 = v18;
    v32 = *(a1 + 104);
    v34 = *(a1 + 120);
    v33 = *(a1 + 112);
    [v8 updateMultiUserWithSharedUserId:v9 companionInfo:v10 completion:v24];

    goto LABEL_13;
  }

  v19 = +[SiriCoreSymptomsReporter sharedInstance];
  v20 = +[NSProcessInfo processInfo];
  v21 = [v20 processIdentifier];
  [v19 reportIssueWithBackOffTimerForType:@"multi_user" subType:@"add_user_to_home" context:&__NSDictionary0__struct processIdentifier:v21 walkboutStatus:byte_100590548];

LABEL_11:
  v22 = *(a1 + 120);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }

LABEL_13:
}

void sub_10016C9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v11 = 136315907;
    v12 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    v15 = 2113;
    v16 = v5;
    v17 = 2113;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updated non home multiuser with error (%@) companionAssistantID = %{private}@ companionSpeechID = %{private}@", &v11, 0x2Au);
  }

  v7 = *(a1 + 48);
  v8 = +[ADMultiUserService sharedService];
  [v8 setShareOwnerName:*(a1 + 56) homeMemberSettings:*(a1 + 64) audioAppSignals:*(a1 + 72) loggingAllowed:objc_msgSend(*(a1 + 80) forSharedUserId:{"count") < 2, *(a1 + 88)}];

  if (*(*(a1 + 96) + 64) == 1)
  {
    if (_AFPreferencesSiriRMVSetting())
    {
      [*(a1 + 96) _updateVoiceIDProfilesForSharedUser:*(a1 + 88) iCloudAltDSID:*(a1 + 104) records:*(a1 + 112) isPrimary:0 isNewUser:v7 == 0 completion:*(a1 + 120)];
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s RMV setting is off for this user. Ignoring voice profile download.", &v11, 0xCu);
      }

      v10 = *(a1 + 120);
      if (v10)
      {
        (*(v10 + 16))(v10, 0);
      }
    }
  }
}

void sub_10016CBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 136315907;
    v9 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2113;
    v13 = v5;
    v14 = 2113;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updated shared multiuser with error (%@) %{private}@/%{private}@", &v8, 0x2Au);
  }

  [*(a1 + 56) _updateVoiceIDProfilesForSharedUser:*(a1 + 64) iCloudAltDSID:*(a1 + 72) records:*(a1 + 80) isPrimary:0 isNewUser:*(a1 + 48) == 0 completion:*(a1 + 120)];
  v7 = +[ADMultiUserService sharedService];
  [v7 setShareOwnerName:*(a1 + 88) homeMemberSettings:*(a1 + 96) audioAppSignals:*(a1 + 104) loggingAllowed:objc_msgSend(*(a1 + 112) forSharedUserId:{"count") < 2, *(a1 + 64)}];
}

void sub_10016CD14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 136315907;
    v9 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2113;
    v13 = v5;
    v14 = 2113;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updated primary multiuser with error (%@) companionAssistantID = %{private}@ companionSpeechID = %{private}@", &v8, 0x2Au);
  }

  [*(a1 + 56) _updateVoiceIDProfilesForSharedUser:*(a1 + 64) iCloudAltDSID:*(a1 + 72) records:*(a1 + 80) isPrimary:1 isNewUser:*(a1 + 48) == 0 completion:*(a1 + 120)];
  v7 = +[ADMultiUserService sharedService];
  [v7 setShareOwnerName:*(a1 + 88) homeMemberSettings:*(a1 + 96) audioAppSignals:*(a1 + 104) loggingAllowed:objc_msgSend(*(a1 + 112) forSharedUserId:{"count") < 2, *(a1 + 64)}];
}

void sub_10016D370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Could not apply RmV setting with error %@", &v7, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Deleting Rmv setting", &v7, 0xCu);
    }

    v5 = +[ADCloudKitManager sharedManager];
    v11 = *(a1 + 32);
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    [v5 addDictionaryToSharedStore:0 recordKeysForDeletion:v6 completion:&stru_100513BF8];
  }
}

void sub_10016D4EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Setting delete operation completed with error %@", &v4, 0x16u);
  }
}

void sub_10016DA28(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v6 = [v2 phsAssetManifest:1];

  if (v6)
  {
    v3 = sub_100097BB4(v6);
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = [AFError errorWithCode:4017];
    v4 = *(v5 + 16);
  }

  v4();
}

void sub_10016DC48(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      v5 = sub_100097BB4(v3);
      v6 = a1[4];
      v7 = *(v6 + 24);
      *(v6 + 24) = v5;

      v4 = *(a1[4] + 24);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      *&v10 = 136315394;
      v19 = v10;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 isEqualToString:{a1[5], v19, v20}])
          {
            v15 = [*(a1[4] + 24) objectForKey:v14];
            v16 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v25 = "[ADCloudKitMultiUserSharedDataStore fetchDeviceTypesForLanguage:completion:]_block_invoke";
              v26 = 2112;
              v27 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s _languageManifestCache = %@", buf, 0x16u);
            }

            if (v15)
            {
              (*(a1[6] + 16))();

              return;
            }
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[ADCloudKitMultiUserSharedDataStore fetchDeviceTypesForLanguage:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s no device types", buf, 0xCu);
    }
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADCloudKitMultiUserSharedDataStore fetchDeviceTypesForLanguage:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s No assetManifestCache", buf, 0xCu);
    }
  }

  (*(a1[6] + 16))();
}

void sub_10016F134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id sub_100170F00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"owner";
  }

  else
  {
    v1 = @"participant";
  }

  v6[0] = @"user";
  v6[1] = @"date";
  v7[0] = v1;
  v2 = +[NSDate date];
  v3 = [NSDateFormatter localizedStringFromDate:v2 dateStyle:1 timeStyle:4];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_100171004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]_block_invoke";
    v36 = 2112;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s All desired downloading done with error %@.", buf, 0x16u);
  }

  v26 = v3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [*(a1 + 32) allValues];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v35 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]_block_invoke";
          v36 = 2112;
          v37 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Removing cached CKAsset file: %@", buf, 0x16u);
        }

        v12 = +[NSFileManager defaultManager];
        v29 = 0;
        [v12 removeItemAtPath:v10 error:&v29];
        v13 = v29;

        if (v13)
        {
          v14 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v35 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]_block_invoke";
            v36 = 2112;
            v37 = v10;
            v38 = 2112;
            v39 = v13;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failure removing cached CKAsset file: %@ error: %@", buf, 0x20u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v7);
  }

  if (v26)
  {
    v15 = +[AFAnalytics sharedAnalytics];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100171418;
    v27[3] = &unk_10051DF78;
    v16 = v26;
    v28 = v16;
    [v15 logEventWithType:6106 contextProvider:v27];

    v17 = v25;
    v18 = v25 + 64;
    if (!*(v25 + 64))
    {
      goto LABEL_23;
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    [v19 setObject:v16 forKey:NSUnderlyingErrorKey];
    v20 = [AFError errorWithCode:4011];
  }

  else
  {
    v21 = +[ADMultiUserService sharedService];
    [v21 updateVoiceProfiles];

    v17 = v25;
    [*(v25 + 40) _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:*(v25 + 48) isPrimary:*(v25 + 72) isNewUser:*(v25 + 73)];
    v18 = v25 + 64;
    if (!*(v25 + 64))
    {
      goto LABEL_23;
    }

    v22 = *(v25 + 40);
    v23 = *(v25 + 56);
    v20 = 0;
    v19 = *(v22 + 16);
    *(v22 + 16) = v23;
  }

  if (([*(v17 + 40) dataStoreIsOnSharedDatabase] & 1) == 0)
  {
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 postNotificationName:@"ADCloudKitOwnerFetchCompleteNotification" object:0];
  }

  (*(*v18 + 16))();

LABEL_23:
}

void sub_100171CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171D10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100171D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315650;
    v28 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
    v29 = 2112;
    v30 = v3;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Completion handler called. Error: %@ Records: %@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  if (v3)
  {
    [v6[7] notifyUserVoiceProfileUploadCompleteForSiriProfileId:*(a1 + 40) withError:v3];
    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = [v6 isMirroredDataStore];
    v9 = +[ADCloudKitManager sharedManager];
    v10 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21[0] = _NSConcreteStackBlock;
    v11 = *(a1 + 72);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    v21[1] = 3221225472;
    v21[2] = sub_1001727F8;
    v21[3] = &unk_100513B38;
    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    v25 = v11;
    v26 = v8;
    v15 = *(a1 + 56);
    v16 = *(a1 + 48);
    v17 = *(a1 + 40);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v13;
    *(&v19 + 1) = v15;
    v22 = v19;
    v23 = v18;
    v24 = *(a1 + 64);
    [v9 saveFileAssetRecordsWithDictionary:v12 mirror:v8 onZone:v14 activity:v20 sharedUserId:v10 completion:v21];
  }
}

id sub_100171F5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v47 = 0;
  if (!v6 || ![*(a1 + 32) fileExistsAtPath:v6 isDirectory:&v47] || (v47 & 1) == 0)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s No voice trigger path to sync", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (([*(a1 + 32) isReadableFileAtPath:v6] & 1) == 0)
  {
    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Voice trigger path is unreadable", buf, 0xCu);
    }

LABEL_18:
    v32 = [AFError errorWithCode:4000];
LABEL_19:
    v30 = v32;
    goto LABEL_20;
  }

  v7 = [v5 languageCode];
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = [v5 version];
  if (!v8)
  {

    goto LABEL_27;
  }

  v9 = [v5 productCategory];
  v10 = v9 == 0;

  if (v10)
  {
LABEL_27:
    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s No language or version or product category specified. File radar.", buf, 0xCu);
    }

    v32 = [AFError errorWithCode:4001];
    goto LABEL_19;
  }

  v11 = [NSNumber numberWithUnsignedInt:arc4random()];
  v12 = [v11 stringValue];
  v13 = [NSString stringWithFormat:@"temp_%@.zip", v12];

  v14 = [*(a1 + 40) stringByAppendingPathComponent:v13];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
    v50 = 2112;
    v51 = v6;
    v52 = 2112;
    v53 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s filePath = %@, archivePath = %@", buf, 0x20u);
  }

  if (sub_1000976BC(v6, v14))
  {
    v16 = +[NSFileManager defaultManager];
    v44 = [v16 attributesOfItemAtPath:v14 error:0];

    v45 = [v44 objectForKey:NSFileSize];
    if (v45)
    {
      v43 = [NSURL fileURLWithPath:v14];
      v17 = [[CKAsset alloc] initWithFileURL:v43];
      if (v17)
      {
        v41 = v17;
        v42 = [NSNumber numberWithUnsignedInteger:2];
        v18 = [v5 productCategory];
        v19 = [v5 languageCode];
        v20 = [v5 version];
        v21 = [v20 stringValue];
        v22 = [NSString stringWithFormat:@"%@%@, %@%@, %@%@", @"Categ:", v18, @"Lang:", v19, @"Vers:", v21];

        v57[0] = @"fileName";
        v57[1] = @"fileCompressionType";
        v58[0] = v22;
        v58[1] = v42;
        v57[2] = @"fileAssetSize";
        v57[3] = @"fileAsset";
        v58[2] = v45;
        v58[3] = v41;
        v57[4] = @"languages";
        v23 = [v5 languageCode];
        v56 = v23;
        v24 = [NSArray arrayWithObjects:&v56 count:1];
        v58[4] = v24;
        v57[5] = @"productType";
        v57[6] = @"buildVersion";
        v25 = *(a1 + 64);
        v58[5] = *(a1 + 56);
        v58[6] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];

        [*(*(*(a1 + 72) + 8) + 40) addObject:v26];
        v27 = *(*(*(a1 + 80) + 8) + 40);
        v28 = [v5 languageCode];
        [v27 addObject:v28];

        v29 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
          v50 = 2112;
          v51 = v22;
          v52 = 2112;
          v53 = v43;
          v54 = 2112;
          v55 = v45;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Creating record with name (%@) to file archive (%@) of file size = %@", buf, 0x2Au);
        }

        v30 = 0;
      }

      else
      {
        v40 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Unable to create file asset", buf, 0xCu);
        }

        v30 = [AFError errorWithCode:4004];
      }
    }

    else
    {
      v39 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke_2";
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Unable to get file size of archive file", buf, 0xCu);
      }

      v30 = [AFError errorWithCode:4000];
    }
  }

  else
  {
    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Failed compressing archive", buf, 0xCu);
    }

    v37 = *(a1 + 48);
    v38 = *(v37 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001727F0;
    block[3] = &unk_10051DFE8;
    block[4] = v37;
    dispatch_async(v38, block);
    v30 = [AFError errorWithCode:4002];
  }

LABEL_20:

  return v30;
}

void sub_1001727F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315650;
    v34 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s SavedRecords = %@, records = %@", buf, 0x20u);
  }

  if (v5 || ![v6 count])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke_3";
      v35 = 2112;
      v36 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to save voice trigger records with error: %@", buf, 0x16u);
    }

    v10 = +[AFAnalytics sharedAnalytics];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001730F4;
    v23[3] = &unk_10051DF78;
    v11 = &v24;
    v12 = v5;
    v24 = v12;
    [v10 logEventWithType:6101 contextProvider:v23];

    [*(*(a1 + 32) + 56) notifyUserVoiceProfileUploadCompleteForSiriProfileId:*(a1 + 56) withError:v12];
    [*(a1 + 32) cleanupCacheDirectory];
    if (v5)
    {
      v13 = +[ADCloudKitManager sharedManager];
      [v13 handleCloudKitError:v12 forZone:@"com.apple.assistant.multiuser.shared" mirror:0 operationType:2];
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100172B38;
    block[3] = &unk_100513B10;
    v11 = &v26;
    v16 = v6;
    v17 = *(a1 + 80);
    v26 = v16;
    v30 = v17;
    v32 = *(a1 + 88);
    v22 = *(a1 + 32);
    v18 = *(&v22 + 1);
    v31 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    v27 = v22;
    v28 = v21;
    v29 = *(a1 + 64);
    dispatch_async(v15, block);
  }
}

void sub_100172B38(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) dataStoreIsOnSharedDatabase];
    v7 = @"local container";
    *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke";
    *buf = 136315650;
    if (v6)
    {
      v7 = @"shared container";
    }

    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Successfully saved %ld shared voice trigger record(s) to (%@)", buf, 0x20u);
  }

  v8 = +[AFAnalytics sharedAnalytics];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001730FC;
  v36[3] = &unk_10051DF78;
  v36[4] = *(a1 + 40);
  [v8 logEventWithType:6105 contextProvider:v36];

  if ([*(*(*(a1 + 80) + 8) + 40) count] && (*(a1 + 96) & 1) == 0 && (objc_msgSend(*(a1 + 40), "dataStoreIsOnSharedDatabase") & 1) == 0)
  {
    v9 = +[ADPreferences sharedPreferences];
    v10 = [v9 phsAssetManifest:1];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    v37[0] = @"modificationDate";
    v12 = +[NSDate date];
    v37[1] = @"languages";
    v13 = *(*(*(a1 + 80) + 8) + 40);
    v38[0] = v12;
    v38[1] = v13;
    v37[2] = @"productType";
    v38[2] = *(a1 + 48);
    v14 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

    [v11 setObject:v14 forKey:*(a1 + 48)];
    v15 = v11;
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "_ADCloudKitSaveAssetManifest";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v17 = +[ADPreferences sharedPreferences];
    [v17 setPhsAssetManifest:v15 onSharedZone:1];

    v18 = +[ADPreferences sharedPreferences];
    [v18 synchronize];

    v19 = sub_100097BB4(v15);
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "_ADCloudKitSaveAssetManifest";
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v43 = @"PHS Language Manifest V2";
    v21 = v19;
    if (!v19)
    {
      v21 = +[NSNull null];
    }

    v44 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    if (!v19)
    {
    }

    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "_ADCloudKitSaveAssetManifest";
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Saving: %@", buf, 0x16u);
    }

    v24 = +[ADCloudKitManager sharedManager];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100098144;
    v40 = &unk_10050FEC8;
    v42 = 0;
    v41 = v22;
    v25 = v22;
    [v24 saveKeyValueRecordsWithDictionary:v25 mirror:0 completion:buf];
  }

  if ([*(a1 + 40) dataStoreShouldMirrorData])
  {
    v26 = +[ADCloudKitManager sharedManager];
    v27 = *(*(*(a1 + 88) + 8) + 40);
    v28 = *(a1 + 40);
    v29 = *(v28 + 72);
    v31 = *(a1 + 56);
    v30 = *(a1 + 64);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001731A0;
    v33[3] = &unk_100513AE8;
    v33[4] = v28;
    v34 = v30;
    v35 = *(a1 + 72);
    [v26 saveFileAssetRecordsWithDictionary:v27 mirror:1 onZone:v29 activity:v31 sharedUserId:v34 completion:v33];
  }

  else
  {
    [*(*(a1 + 40) + 56) notifyUserVoiceProfileUploadCompleteForSiriProfileId:*(a1 + 64) withError:0];
    [*(a1 + 40) cleanupCacheDirectory];
    v32 = *(a1 + 72);
    if (v32)
    {
      (*(v32 + 16))(v32, 1);
    }
  }
}

id sub_1001730FC(uint64_t a1)
{
  v5 = @"container";
  v1 = [*(a1 + 32) dataStoreIsOnSharedDatabase];
  v2 = @"local container";
  if (v1)
  {
    v2 = @"shared container";
  }

  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_1001731A0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    *buf = 136315650;
    v18 = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]_block_invoke_2";
    v19 = 2048;
    v20 = [v6 count];
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Saved %ld VT Record(s) to mirrored container with error (%@)", buf, 0x20u);
  }

  [*(a1[4] + 56) notifyUserVoiceProfileUploadCompleteForSiriProfileId:a1[5] withError:0];
  v9 = +[AFAnalytics sharedAnalytics];
  v10 = v9;
  if (v5)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001733E4;
    v15[3] = &unk_10051DF78;
    v11 = v5;
    v16 = v11;
    [v10 logEventWithType:6101 contextProvider:v15];

    v12 = +[ADCloudKitManager sharedManager];
    [v12 handleCloudKitError:v11 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:2];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001733EC;
    v14[3] = &unk_10051DF78;
    v14[4] = a1[4];
    [v9 logEventWithType:6105 contextProvider:v14];
  }

  v13 = a1[6];
  if (v13)
  {
    (*(v13 + 16))(v13, 1);
  }
}

id sub_1001733EC(uint64_t a1)
{
  v5 = @"container";
  v1 = [*(a1 + 32) dataStoreIsOnSharedDatabase];
  v2 = @"local container";
  if (v1)
  {
    v2 = @"shared container";
  }

  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_10017363C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    *(v2 + 33) = 1;
    if (!*(a1 + 56))
    {
      return;
    }

    if (!*(*(a1 + 32) + 40))
    {
      v3 = objc_alloc_init(AFQueue);
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:sharedUserId:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Enqueue completion", buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 40);
    v8 = objc_retainBlock(*(a1 + 56));
    [v7 enqueueObject:v8];
  }

  else
  {
    *(v2 + 32) = 1;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 40);
      v17 = @"shared";
      if (!*(*(a1 + 32) + 65))
      {
        v17 = @"owner";
      }

      *buf = 136315650;
      v23 = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:sharedUserId:completion:]_block_invoke";
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Upload started for %@, sharedUserId (%@)", buf, 0x20u);
    }

    v10 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001738AC;
    v19[3] = &unk_100519060;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = *(a1 + 32);
    v18 = v14;
    *&v15 = *(a1 + 48);
    *(&v15 + 1) = v13;
    v20 = v18;
    v21 = v15;
    [v11 _synchronizeUsingActivity:v10 sharedUserId:v12 completion:v19];

    v8 = v20;
  }
}

void sub_1001738AC(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:sharedUserId:completion:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Upload ended for %@", buf, 0x16u);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(v7 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173A10;
  block[3] = &unk_10051DB68;
  block[4] = v7;
  v11 = v6;
  v12 = *(a1 + 32);
  dispatch_async(v8, block);
}

void *sub_100173A10(void *result)
{
  *(result[4] + 32) = 0;
  v3 = result[4];
  v4 = *(v3 + 33);
  if (v4 == 1)
  {
    v8[5] = v1;
    v8[6] = v2;
    *(v3 + 33) = 0;
    *(result[4] + 32) = v4;
    v6 = result[4];
    v5 = result[5];
    v7 = result[6];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100173AB0;
    v8[3] = &unk_10051B778;
    v8[4] = v6;
    return [v6 _synchronizeUsingActivity:v5 sharedUserId:v7 completion:v8];
  }

  return result;
}

void sub_100173AB0(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100173B28;
  v4[3] = &unk_10051CBD8;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void sub_100173B28(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [*(*(a1 + 32) + 40) dequeueObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v9 = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:sharedUserId:completion:]_block_invoke_3";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dequeue completion", buf, 0xCu);
      }

      v3[2](v3, *(a1 + 40));
      v5 = [*(*(a1 + 32) + 40) dequeueObject];

      v3 = v5;
    }

    while (v5);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100174020(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitMultiUserSharedDataStore setServerChangeToken:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while encoding voice trigger server change token: %@", &v4, 0x16u);
  }
}

void sub_100174184(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitMultiUserSharedDataStore serverChangeToken]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while decoding voice trigger server change token: %@", &v4, 0x16u);
  }
}

void sub_100174924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained updateCapabilitiesWithAssetManager:v3];

    [WeakRetained emitAIR];
  }

  else
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[ADSiriCapabilitiesStore siriEnabledStatusDidChange:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Ignoring siriEnabledStatusDidChange as self is nil", &v5, 0xCu);
    }
  }
}

void sub_100174B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100174B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174C14;
  block[3] = &unk_1005177E8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void sub_100174C14(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_100174C68(WeakRetained, a1[4], a1[5]);
    WeakRetained = v3;
  }
}

id sub_100174C68(void *a1, void *a2, void *a3)
{
  memset(v76, 0, sizeof(v76));
  v5 = a3;
  v6 = a2;
  [a1 currentState];
  v7 = v6;
  v8 = v5;
  memset(v85, 0, 32);
  [a1 currentState];
  *&v85[8] = 0;
  v9 = AFDeviceSupportsSiriUOD();
  v10 = AFDeviceSupportsSiriUOD();
  v11 = AFDeviceSupportsSiriUOD();
  if ([v8 length])
  {
    v12 = AFRequiredAssetsForFullUOD();
    v13 = AFAssetsAvailabilityMatchesRequiredAssets();

    v14 = *&v85[8];
    v15 = 2;
    if (!v9)
    {
      v15 = 0;
    }

    if (v11)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    v17 = 8;
    if ((v13 & 1) == 0)
    {
      v17 = 0;
    }
  }

  else
  {
    v13 = 0;
    v17 = 0;
    v14 = *&v85[8];
    v15 = 2;
    if (!v9)
    {
      v15 = 0;
    }

    v16 = 4;
    if (!v11)
    {
      v16 = 0;
    }
  }

  *&v85[8] = v15 | v10 | v16 | v17 | v14 & 0xFFFFFFFFFFFFFFF0;
  v18 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v56 = v18;
    v57 = [NSNumber numberWithBool:v9];
    v58 = [NSNumber numberWithBool:v10];
    v59 = [NSNumber numberWithBool:v11];
    v60 = [NSNumber numberWithBool:v13 & 1];
    v61 = [NSNumber numberWithUnsignedInteger:*&v85[8]];
    *buf = 136316418;
    *&buf[4] = "[ADSiriCapabilitiesStore updateSiriXFullUnderstandingOnDeviceCapabilities:localeIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v57;
    *&buf[22] = 2112;
    *&buf[24] = v58;
    *v80 = 2112;
    *&v80[2] = v59;
    v81 = 2112;
    v82 = v60;
    v83 = 2112;
    v84 = v61;
    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%s Updated capabilities siriXFullUnderstandingOnDeviceCapabilities isDeviceCapable:%@ isFFEnabled:%@ isLanguageSupported:%@ areAssetsPresent:%@ capabilities:%@", buf, 0x3Eu);
  }

  *buf = *v85;
  *&buf[16] = *&v85[16];
  [a1 setCurrentState:buf];

  v19 = v7;
  v20 = v8;
  memset(buf, 0, sizeof(buf));
  [a1 currentState];
  *&buf[16] = 0;
  v21 = AFDeviceSupportsHybridUOD();
  v22 = 2;
  if (!v21)
  {
    v22 = 0;
  }

  *&buf[16] = *&buf[16] & 0xFFFFFFFFFFFFFFFDLL | v22;
  v23 = +[AFFeatureFlags isAsrOnServerForUODEnabled];
  *&buf[16] = *&buf[16] & 0xFFFFFFFFFFFFFFFELL | v23;
  if ([v20 length] && AFShouldRunAsrOnServerForUODLanguage())
  {
    v24 = *&buf[16] | 4;
  }

  else
  {
    v24 = *&buf[16] & 0xFFFFFFFFFFFFFFFBLL;
  }

  *&buf[16] = v24;
  v25 = AFRequiredAssetsForHybridUOD();
  if ([v20 length] && AFAssetsAvailabilityMatchesRequiredAssets())
  {
    v26 = *&buf[16] | 8;
  }

  else
  {
    v26 = *&buf[16] & 0xFFFFFFFFFFFFFFF7;
  }

  *&buf[16] = v26;
  v27 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v62 = v27;
    v63 = [NSNumber numberWithUnsignedInteger:v26];
    *v85 = 136315394;
    *&v85[4] = "[ADSiriCapabilitiesStore updateSiriXHybridUnderstandingOnDeviceCapabilities:localeIdentifier:]";
    *&v85[12] = 2112;
    *&v85[14] = v63;
    _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%s Updated capabilities siriXHybridUnderstandingOnDeviceCapabilities capabilities to %@", v85, 0x16u);
  }

  *v85 = *buf;
  *&v85[16] = *&buf[16];
  [a1 setCurrentState:v85];

  v28 = v19;
  v29 = v20;
  v77 = 0u;
  v78 = 0u;
  [a1 currentState];
  *(&v78 + 1) = 0;
  v30 = AFHasGMSCapability();
  v31 = AFDeviceSupportsMedoc();
  v32 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v64 = v32;
    v65 = [NSNumber numberWithBool:v30];
    v66 = [NSNumber numberWithBool:v31];
    *buf = 136315650;
    *&buf[4] = "SAEDeviceCapable";
    *&buf[12] = 2112;
    *&buf[14] = v65;
    *&buf[22] = 2112;
    *&buf[24] = v66;
    _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "%s GMS capable: %@, Medoc supported: %@", buf, 0x20u);
  }

  *(&v78 + 1) = *(&v78 + 1) & 0xFFFFFFFFFFFFFFFELL | v30 & v31;
  v33 = AFHasGMSCapability();
  v34 = +[AFFeatureFlags isSAEOverrideEnabled];
  v35 = +[AFFeatureFlags isNLRouterEnabled];
  v36 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v74 = v36;
    v75 = [NSNumber numberWithBool:v33];
    v67 = [NSNumber numberWithBool:v34];
    v68 = [NSNumber numberWithBool:v35];
    *buf = 136315906;
    *&buf[4] = "SAEFeatureFlagSet";
    *&buf[12] = 2112;
    *&buf[14] = v75;
    *&buf[22] = 2112;
    *&buf[24] = v67;
    *v80 = 2112;
    *&v80[2] = v68;
    _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%s GMS capable: %@, SAE override: %@, NL Router feature flag: %@", buf, 0x2Au);
  }

  v37 = 2;
  if (((v33 | v34) & v35 & 1) == 0)
  {
    v37 = 0;
  }

  *(&v78 + 1) = *(&v78 + 1) & 0xFFFFFFFFFFFFFFFDLL | v37;
  if ([v29 length] && AFLocaleIdentifierSupportsSAE())
  {
    v38 = *(&v78 + 1) | 4;
  }

  else
  {
    v38 = *(&v78 + 1) & 0xFFFFFFFFFFFFFFFBLL;
  }

  *(&v78 + 1) = v38;
  v39 = AFSAERequiredAssets();
  if ([v29 length] && AFAssetsAvailabilityMatchesRequiredAssets())
  {
    v40 = *(&v78 + 1) | 8;
  }

  else
  {
    v40 = *(&v78 + 1) & 0xFFFFFFFFFFFFFFF7;
  }

  *(&v78 + 1) = v40;
  v41 = [NSLocale localeWithLocaleIdentifier:v29];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
    *v85 = 0;
    *&v85[8] = v85;
    *&v85[16] = 0x2050000000;
    v44 = qword_1005903A8;
    *&v85[24] = qword_1005903A8;
    if (!qword_1005903A8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001756A4;
      *&buf[24] = &unk_10051E1C8;
      *v80 = v85;
      sub_1001756A4(buf);
      v44 = *(*&v85[8] + 24);
    }

    v45 = v44;
    _Block_object_dispose(v85, 8);
    *v85 = @"com.apple.Settings.AppleIntelligence";
    *&v85[8] = @"com.apple.Siri.NLRouter";
    v46 = [NSArray arrayWithObjects:v85 count:2];
    v47 = [v43 languageCode];
    v48 = [v44 currentWithUseCaseIdentifiers:v46 language:v47];

    v49 = 32;
    if (!v48)
    {
      v49 = 48;
    }

    if (v48 >= 2)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    v51 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v72 = v51;
      v73 = [NSNumber numberWithUnsignedInteger:v50];
      *buf = 136315394;
      *&buf[4] = "SiriSystemAssistantExperienceCapabilitiesForGMSAvailability";
      *&buf[12] = 2112;
      *&buf[14] = v73;
      _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "%s Updated GMS capabilities to %@", buf, 0x16u);
    }

    *(&v78 + 1) |= v50;
  }

  else
  {
    v52 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[ADSiriCapabilitiesStore updateSystemAssistantExperienceCapabilites:localeIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%s Locale is nil for locale identifier %@, not checking GMS availability.", buf, 0x16u);
    }
  }

  v53 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v69 = *(&v78 + 1);
    v70 = v53;
    v71 = [NSNumber numberWithUnsignedInteger:v69];
    *buf = 136315394;
    *&buf[4] = "[ADSiriCapabilitiesStore updateSystemAssistantExperienceCapabilites:localeIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = v71;
    _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "%s Updated capabilities systemAssistantExperienceCapabilites capabilities to %@", buf, 0x16u);
  }

  *buf = v77;
  *&buf[16] = v78;
  [a1 setCurrentState:buf];

  [a1 refreshOrchestrationMode];
  result = [a1 currentState];
  if (*buf != *&v76[0] || *&buf[8] != *(v76 + 8) || *&buf[24] != *(&v76[1] + 1))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFSiriCapabilitiesDidChangeNotification, 0, 0, 0);
    return [a1 emitAIR];
  }

  return result;
}

Class sub_1001756A4(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_1005903B0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100175890;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100513CB0;
    v8 = 0;
    qword_1005903B0 = _sl_dlopen();
  }

  if (!qword_1005903B0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADSiriCapabilitiesStore.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADSiriCapabilitiesStore.m" lineNumber:30 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

LABEL_10:
    __break(1u);
  }

  qword_1005903A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100175890()
{
  result = _sl_dlopen();
  qword_1005903B0 = result;
  return result;
}

void sub_100175D6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "HandleGMSAvailabilityNotification";
    v14 = 2112;
    v15 = a3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Received GMS availability notifification %@", &v12, 0x16u);
  }

  v6 = [a2 wrapped];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 32));
    if (WeakRetained)
    {
      [v7 updateCapabilitiesWithAssetManager:WeakRetained];
    }

    else
    {
      v9 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315138;
        v13 = "HandleGMSAvailabilityNotification";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Asset manager is deallocated.", &v12, 0xCu);
      }

      v10 = [v7 preferences];
      v11 = [v10 languageCode];

      sub_100174C68(v7, &__NSDictionary0__struct, v11);
    }
  }
}

void sub_100176184(id a1)
{
  v5 = +[ADCommandCenter sharedQueue];
  v1 = +[ADPreferences sharedPreferences];
  v2 = +[ADAssetManager sharedInstance];
  v3 = [[ADSiriCapabilitiesStore alloc] initWithDispatchQueue:v5 preferences:v1 assetManager:v2];
  v4 = qword_1005903A0;
  qword_1005903A0 = v3;
}

uint64_t sub_1001764A0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setLastKnownAvailableAnnouncementRequestTypesAndNotifyObservers:{objc_msgSend(*(a1 + 32), "_requestTypesForCarPlayAvailableOrConnected:", a2)}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100176638(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) lastKnownEligibleAnnouncementRequestTypes];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void *sub_1001768E4(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[3];
  if (!v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10017697C;
    v4[3] = &unk_10051B778;
    v4[4] = result;
    result = [result _isCarPlayConnectedWithCompletion:v4];
    v3 = *(*(a1 + 32) + 24);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_10017697C(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFCarPlayAnnouncementRequestCapabilityProvider currentlyAbleToAnnounce]_block_invoke_2";
    v8 = 1024;
    v9 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s CarPlay connection state not initialized before checking currentlyAbleToAnnounce, isConnected = %d", &v6, 0x12u);
  }

  v5 = 1;
  if (!a2)
  {
    v5 = 2;
  }

  *(*(a1 + 32) + 24) = v5;
}

void sub_100176C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100176C70(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_1005903D0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100176E5C;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100513CC8;
    v8 = 0;
    qword_1005903D0 = _sl_dlopen();
  }

  if (!qword_1005903D0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"AFCarPlayAnnouncementRequestCapabilityProvider.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getCARSessionStatusClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"AFCarPlayAnnouncementRequestCapabilityProvider.m" lineNumber:21 description:{@"Unable to find class %s", "CARSessionStatus"}];

LABEL_10:
    __break(1u);
  }

  qword_1005903C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100176E5C()
{
  result = _sl_dlopen();
  qword_1005903D0 = result;
  return result;
}

void sub_1001770D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001770F0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1005903D8;
  v9 = qword_1005903D8;
  if (!qword_1005903D8)
  {
    v1 = sub_1001772A4();
    v7[3] = dlsym(v1, "INSearchForMessagesIntentIdentifier");
    qword_1005903D8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getINSearchForMessagesIntentIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFCarPlayAnnouncementRequestCapabilityProvider.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10017723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100177254(uint64_t a1)
{
  v2 = sub_1001772A4();
  result = dlsym(v2, "INSendMessageIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005903E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001772A4()
{
  v4[0] = 0;
  if (!qword_1005903E0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001773F8;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100513CE0;
    v6 = 0;
    qword_1005903E0 = _sl_dlopen();
  }

  v0 = qword_1005903E0;
  if (!qword_1005903E0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *IntentsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"AFCarPlayAnnouncementRequestCapabilityProvider.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1001773F8()
{
  result = _sl_dlopen();
  qword_1005903E0 = result;
  return result;
}

void *sub_10017746C(uint64_t a1)
{
  v2 = sub_1001772A4();
  result = dlsym(v2, "INSearchForMessagesIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005903D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100177614()
{
  v0 = objc_alloc(objc_opt_class());
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.assistant.announce.carplay", v1);

  v2 = [v0 initWithQueue:v4];
  v3 = qword_1005903C0;
  qword_1005903C0 = v2;
}

void sub_1001778E0(uint64_t a1)
{
  [*(a1 + 32) _decrementAndTestExecutionCount];
  v2 = [*(*(a1 + 32) + 24) frontObject];

  if (v2)
  {
    [*(a1 + 32) _incrementAndTestExecutionCount];
    v3 = [*(*(a1 + 32) + 24) dequeueObject];
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "[ADClientLiteListener _doDelayedClientWorkIfAny:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Now executing %@", &v7, 0x16u);
    }

    v5 = [v3 timeout];
    v6 = [v3 workItem];
    if (v5)
    {
      v5[2](v5);
    }

    v6[2](v6);
  }
}

void sub_100177C44(void *a1)
{
  v2 = a1[4];
  v3 = v2[4];
  if (v3 < 1)
  {
    if (v3 || !a1[5])
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[ADClientLiteListener doClientWork:withTimeoutBlock:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unexpected execution count. File radar.", &v9, 0xCu);
      }
    }

    else
    {
      [v2 _incrementAndTestExecutionCount];
      v7 = a1[6];
      if (v7)
      {
        (*(v7 + 16))();
      }

      v8 = *(a1[5] + 16);

      v8();
    }
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[ADClientLiteListener doClientWork:withTimeoutBlock:]_block_invoke";
      v11 = 2048;
      v12 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Current execution count: %ld, enqueuing work", &v9, 0x16u);
    }

    v5 = [[ADClientLiteWorkItem alloc] initWithWork:a1[5] timeout:a1[6]];
    [*(a1[4] + 24) enqueueObject:v5];
  }
}

void sub_10017828C(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_1001782F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001784C4;
  v9[3] = &unk_10051D2F0;
  v10 = *(a1 + 48);
  v3 = [WeakRetained remoteObjectProxyWithErrorHandler:v9];

  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001784D8;
    v7[3] = &unk_100513DC8;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v3 handleCommand:v4 completion:v7];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v12 = "[ADClientLite adRequestDidReceiveCommand:reply:]_block_invoke_2";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s No client handler for command %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100178924(uint64_t a1, char a2, void *a3, int a4)
{
  v7 = a3;
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017903C;
  block[3] = &unk_100519D50;
  v19 = *(a1 + 56);
  v20 = a2;
  v10 = v7;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v10;
  v17 = v11;
  v18 = v12;
  dispatch_group_notify(v9, v8, block);
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained doDelayedClientWorkIfAny];
  }

  v14 = +[ADCommandCenter sharedCommandCenter];
  [v14 releaseShutdownAssertion:*(a1 + 48)];
}

void sub_100178A48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v10 = a3;
  v8 = [a2 BOOLValue];
  v9 = [v7 BOOLValue];

  (*(v6 + 16))(v6, v8, v10, v9);
}

void sub_100178ADC(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_time(0, 50000000000);
  v3 = *(*(a1 + 40) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178EE0;
  v4[3] = &unk_100517810;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_after(v2, v3, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_100178BC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178CA4;
  block[3] = &unk_100513D78;
  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v3, block);
}

void sub_100178CA4(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = *(a1 + 64);
  v4 = *(a1 + 65);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100178D94;
  v7[3] = &unk_100513D50;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  [v2 handleAceCommand:v5 afterCurrentRequest:v3 waitForResponse:(v4 & 1) == 0 withDelegate:v6 completion:v7];
}

void sub_100178D94(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178E54;
  block[3] = &unk_10051C5B0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v12 = *(a1 + 48);
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_100178E54(uint64_t a1)
{
  v5 = [NSNumber numberWithBool:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [NSNumber numberWithBool:*(a1 + 49)];
  [v2 invokeWithValue:v5 andValue:v3 andValue:v4];
}

void sub_100178EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[ADClientLite handleRemoteCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke_7";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Timing out ClientLite command %@", &v8, 0x16u);
    }

    v4 = [NSError errorWithDomain:kAFAssistantErrorDomain code:3000 userInfo:&__NSDictionary0__struct];
    v5 = [NSNumber numberWithBool:0];
    v6 = [NSNumber numberWithBool:*(a1 + 48)];
    [WeakRetained invokeWithValue:v5 andValue:v4 andValue:v6];
  }
}

void sub_10017903C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64), *(a1 + 32));
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001790FC;
  v6[3] = &unk_10051E010;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [WeakRetained addBarrierBlock:v6];
}

void sub_1001790FC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100179170;
  block[3] = &unk_10051DFE8;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

id sub_100179170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained invalidate];

  v3 = (*(a1 + 32) + 32);

  return objc_storeWeak(v3, 0);
}

void sub_10017A734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017A754(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_10017A76C(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_10017AB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_10017B204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017B224(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _preparePerson:a2 meCardCache:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void sub_10017B9A0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Calling into INSExtensionService", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017C1D0;
  v5[3] = &unk_10051CD88;
  v6 = *(a1 + 48);
  [v4 handleCommand:v3 completionHandler:v5];
}

void sub_10017BAD0(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    v7 = 2048;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s safetyGroup1 leave invoked with signal %ld", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10017BBA0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[ADCommandCenter sharedCommandCenter];
  v7 = [v6 _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10017C074;
  v9[3] = &unk_10051B508;
  v10 = v5;
  v13 = a2;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, v9);
}

void sub_10017BCA0(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    v7 = 2048;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s safetyGroup2 leave invoked with signal %ld", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10017BD70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[ADCommandCenter sharedCommandCenter];
  v11 = [v10 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017BEBC;
  block[3] = &unk_1005180D8;
  v16 = v7;
  v17 = *(a1 + 32);
  v18 = v8;
  v19 = v9;
  v20 = *(a1 + 40);
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, block);
}

id sub_10017BEBC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s recordRoute = %@", &v9, 0x16u);
  }

  [*(a1 + 40) _setRecordRoute:*(a1 + 32)];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 48);
    v9 = 136315394;
    v10 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s recordDeviceIdentifier = %@", &v9, 0x16u);
  }

  [*(a1 + 40) _setRecordDeviceIdentifier:*(a1 + 48)];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 56);
    v9 = 136315394;
    v10 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s recordDeviceUID = %@", &v9, 0x16u);
  }

  [*(a1 + 40) _setRecordDeviceUID:*(a1 + 56)];
  return [*(a1 + 64) invokeWithSignal:0];
}

id sub_10017C074(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      v9 = 136315650;
      v10 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke";
      v11 = 1024;
      v12 = v7;
      v13 = 2112;
      v14 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s audioSessionID = %u, error = %@", &v9, 0x1Cu);
    }

    v4 = *(a1 + 40);
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 56);
      v9 = 136315394;
      v10 = "[ADExtensionService handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
      v11 = 1024;
      v12 = v8;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s audioSessionID = %u", &v9, 0x12u);
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
  }

  [v4 _setAudioSessionID:v5];
  return [*(a1 + 48) invokeWithSignal:0];
}

uint64_t sub_10017C1D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10017E024(id a1)
{
  v1 = [[NSUUID alloc] initWithUUIDString:@"b73213eb-92f8-45a6-9328-6e71cdbb77d6"];
  v2 = qword_1005903F0;
  qword_1005903F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10017E15C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 136315651;
    v8 = "[ADRemoteContextStore _dumpStateForReason:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2113;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal [%@] remote context: %{private}@", &v7, 0x20u);
  }
}

void sub_10017E2D4(uint64_t a1)
{
  if (*(*(a1 + 32) + 40) == 1)
  {
    v2 = sub_100188B7C(*(a1 + 40), 0);
    v3 = AFSiriLogContextDaemon;
    if (v2)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v5 = 136315394;
        v6 = "[ADRemoteContextStore rapportLink:didLoseDevice:]_block_invoke";
        v7 = 2112;
        v8 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #hal Clearing context for %@", &v5, 0x16u);
      }

      [*(*(a1 + 32) + 32) removeObjectForPeerInfo:v2];
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = 136315394;
      v6 = "[ADRemoteContextStore rapportLink:didLoseDevice:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal Unable to clear context because we can't extract peer info for %@", &v5, 0x16u);
    }
  }
}

void sub_10017E524(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) containsObject:AFDeviceContextKeyAll];
    v3 = objc_alloc_init(NSMutableArray);
    v4 = v3;
    v5 = *(a1 + 40);
    if (v2)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10017E7F0;
      v11[3] = &unk_100513F18;
      v6 = v3;
      v12 = v6;
      [v5 _enumerateDeviceContextsUsingBlock:v11];
      v7 = v12;
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10017E738;
      v13[3] = &unk_100513EF0;
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      v6 = v4;
      v16 = v6;
      [v5 _enumerateDeviceContextsUsingBlock:v13];

      v7 = v14;
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADRemoteContextStore getSerializedDeviceContextSnapshotIncludingKeys:excludingMandatoryKeys:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal No included keys specified", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    v6 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v6, v9, v10);
}

void sub_10017E738(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v5 isValid] & 1) != 0 || objc_msgSend(*(a1 + 32), "count"))
  {
    v6 = [v5 partialSerializedBackingStoreIncludingKeys:*(a1 + 40) excludingMandatoryKeys:*(a1 + 32)];
    if (v6)
    {
      v7 = [[AFPeerContentTuple alloc] initWithInfo:v8 content:v6];
      [*(a1 + 48) addObject:v7];
    }
  }
}

void sub_10017E7F0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 isValid])
  {
    v6 = [v5 serializedBackingStore];
    if (v6)
    {
      v7 = [[AFPeerContentTuple alloc] initWithInfo:v8 content:v6];
      [*(a1 + 32) addObject:v7];
    }
  }
}

void sub_10017E9E4(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceInfo];
  v3 = AFPeerInfoMerge();

  if ([*(a1 + 48) count])
  {
    if ([*(a1 + 48) containsObject:AFDeviceContextKeyAll])
    {
      v4 = [[AFPeerContentTuple alloc] initWithInfo:*(a1 + 40) content:*(a1 + 32)];
      [*(*(a1 + 64) + 32) setObject:v4 forPeerInfo:v3];
    }

    else
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v14 = 136315650;
        v15 = "[ADRemoteContextStore setDeviceContext:includedKeys:excludedKeys:forDeviceWithPeerInfo:completion:]_block_invoke";
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal included keys = %@, excluded keys = %@, updating with partial context", &v14, 0x20u);
      }

      v7 = [*(*(a1 + 64) + 32) objectForPeerInfo:v3];
      v4 = v7;
      if (v7)
      {
        v8 = [v7 content];
        v9 = [v8 partiallyUpdatedContextForDeviceContextKeys:*(a1 + 48) excludingMandatoryKeys:*(a1 + 56) fromDeviceContext:*(a1 + 32)];
        v10 = [[AFPeerContentTuple alloc] initWithInfo:*(a1 + 40) content:v9];
        [*(*(a1 + 64) + 32) setObject:v10 forPeerInfo:v3];
      }

      else
      {
        v8 = [[AFPeerContentTuple alloc] initWithInfo:*(a1 + 40) content:*(a1 + 32)];
        [*(*(a1 + 64) + 32) setObject:v8 forPeerInfo:v3];
      }
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[ADRemoteContextStore setDeviceContext:includedKeys:excludedKeys:forDeviceWithPeerInfo:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal no included keys. Skipping", &v14, 0xCu);
    }
  }

  [*(a1 + 64) _dumpStateForReason:@"deviceContextUpdate"];
  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

id sub_10017EDE0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeListener:?];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return [v2 addListener:?];
}

void sub_10017EF88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017F05C;
  v8[3] = &unk_10051E0D8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10017F05C(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = AFSiriLogContextDaemon;
  v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 136315394;
      *&buf[4] = "[ADRemoteContextStore _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:completion:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #hal identified collector(s): %@", buf, 0x16u);
    }

    v22 = [*(a1 + 40) af_lenientMappedArray:&stru_100513FB0];
    v20 = [*(a1 + 40) af_lenientMappedArray:&stru_100513FD0];
    v24 = objc_alloc_init(NSMutableDictionary);
    if ([v22 count])
    {
      [v24 setObject:v22 forKey:@"forceFetchingContextFrom"];
    }

    if ([v20 count])
    {
      [v24 setObject:v21 forKey:@"force_fetch_assistant_identifiers"];
    }

    [v24 setObject:&__kCFBooleanTrue forKey:@"prefers_assistant_identifiers"];
    v6 = dispatch_group_create();
    v7 = objc_alloc_init(NSMutableArray);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = sub_10017F510;
    v40 = sub_10017F520;
    v41 = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(a1 + 32);
    v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v9 = *v34;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          dispatch_group_enter(v6);
          v12 = *(a1 + 48);
          v13 = v12[2];
          v14 = [v12 _contextLinkMessageOptions];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10017F528;
          v29[3] = &unk_100514ED0;
          v29[4] = *(a1 + 48);
          v29[5] = v11;
          v30 = v7;
          v32 = buf;
          v31 = v6;
          [v13 sendRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"agg_context_fetch" messagePayload:v24 toDeviceWithIDSDeviceID:v11 options:v14 completion:v29];

          v15 = +[AFAnalytics sharedAnalytics];
          [v15 logEventWithType:4585 context:0];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v8);
    }

    v16 = *(*(a1 + 48) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F624;
    block[3] = &unk_10051B688;
    v17 = *(a1 + 56);
    v26 = v7;
    v27 = v17;
    v28 = buf;
    v18 = v7;
    dispatch_group_notify(v6, v16, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      *&buf[4] = "[ADRemoteContextStore _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #hal Context Collector unavailable", buf, 0xCu);
    }

    v19 = *(a1 + 56);
    v22 = [AFError errorWithCode:1013];
    (*(v19 + 16))(v19, 0, v22);
  }
}

uint64_t sub_10017F510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10017F528(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017F644;
  block[3] = &unk_100514EA8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v5;
  v16 = v8;
  v17 = v9;
  v18 = v6;
  v13 = *(a1 + 56);
  v10 = v13;
  v19 = v13;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_10017F644(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10017F7E8;
    v12 = &unk_100513FF8;
    v3 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:&v9];
    v4 = [AFAnalytics sharedAnalytics:v9];
    [v4 logEventWithType:4588 context:0];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      *buf = 136315650;
      v16 = "[ADRemoteContextStore _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:completion:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal Error fetching context from device: %@, %@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 56));
    v6 = +[AFAnalytics sharedAnalytics];
    [v6 logEventWithType:4589 context:0];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_10017F7E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10001A3B0(v5);
  if (v7 || (sub_100188240(v5), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v6 fromLocalDevice:0 contextCollectorSource:*(a1 + 32)];
    v10 = *(a1 + 40);
    v11 = [[AFPeerContentTuple alloc] initWithInfo:v8 content:v9];
    [v10 addObject:v11];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADRemoteContextStore _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:completion:]_block_invoke_5";
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s #hal Unable to get a peer info from deviceID: %@", &v13, 0x16u);
    }
  }
}

void sub_10017FB4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v20 = 136315650;
      v21 = "[ADRemoteContextStore _fetchContextFromDeviceWithPeerInfo:completion:]_block_invoke";
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s #hal Error fetching context from device: %@, %@", &v20, 0x20u);
    }

    v16 = v6;
    goto LABEL_13;
  }

  v7 = sub_10001AE44(*(a1 + 32));
  if (!v7 || (v8 = v7, [v5 objectForKey:v7], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = sub_10001AF74(*(a1 + 32));
    if (!v10 || (v11 = v10, [v5 objectForKey:v10], v9 = objc_claimAutoreleasedReturnValue(), v11, !v9))
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = 136315650;
        v21 = "[ADRemoteContextStore _fetchContextFromDeviceWithPeerInfo:completion:]_block_invoke";
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v19;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s #hal Error no context in fetch response %@ from device: %@", &v20, 0x20u);
      }

      v16 = [AFError errorWithCode:3103];
LABEL_13:
      v14 = v16;
      v9 = +[AFAnalytics sharedAnalytics];
      [v9 logEventWithType:4589 context:0];
      v12 = 0;
      goto LABEL_14;
    }
  }

  v12 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v9 fromLocalDevice:0 contextCollectorSource:0];
  v13 = +[AFAnalytics sharedAnalytics];
  [v13 logEventWithType:4588 context:0];

  v14 = 0;
LABEL_14:

  (*(*(a1 + 40) + 16))();
}

void sub_10017FE98(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[ADRemoteContextStore _fetchContextFromCollectorThroughOnDemandConnection:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #hal #on-demand send request to collector", buf, 0xCu);
  }

  v3 = *(*(a1 + 32) + 16);
  v9 = @"prefers_assistant_identifiers";
  v10 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [*(a1 + 32) _contextLinkMessageOptions];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100180024;
  v7[3] = &unk_100514DE0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v3 sendRequestToContextCollectorThroughOnDemandConnection:@"com.apple.siri.rapport-link.request.generic" messageType:@"agg_context_fetch" messagePayload:v4 options:v5 completion:v7];
}

void sub_100180024(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[ADRemoteContextStore _fetchContextFromCollectorThroughOnDemandConnection:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #hal #on-demand send request to collector response: %@, error: %@", buf, 0x20u);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100180198;
  block[3] = &unk_10051E088;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100180198(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = a1[4];
  if (v3)
  {
    v4 = [v3 objectForKey:@"payload"];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v11 = "[ADRemoteContextStore _fetchContextFromCollectorThroughOnDemandConnection:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal #on-demand received malformed response", buf, 0xCu);
        }

        v4 = 0;
      }
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100180390;
    v8[3] = &unk_1005150A0;
    v9 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      *buf = 136315394;
      v11 = "[ADRemoteContextStore _fetchContextFromCollectorThroughOnDemandConnection:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #hal #on-demand Error fetching context from context collector through on-demand connection: %@", buf, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

void sub_100180390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10001A3B0(v5);
  if (v7)
  {
    v8 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v6 fromLocalDevice:0 contextCollectorSource:&stru_10051F508];
    v9 = *(a1 + 32);
    v10 = [[AFPeerContentTuple alloc] initWithInfo:v7 content:v8];
    [v9 addObject:v10];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADRemoteContextStore _fetchContextFromCollectorThroughOnDemandConnection:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s #hal #on-demand Unable to get a peer info from deviceID: %@", &v12, 0x16u);
    }
  }
}

void sub_1001806E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100180798;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

id sub_100180798(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 40) + 16);
      v9 = 136315650;
      v10 = "[ADRemoteContextStore _activateOnDemandRapportConnectionAndFetchContext:]_block_invoke_2";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal #on-demand Error activating on-demand rapportLink, invalidating: %@, %@", &v9, 0x20u);
    }

    [*(*(a1 + 40) + 16) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 40) + 16);
      v9 = 136315394;
      v10 = "[ADRemoteContextStore _activateOnDemandRapportConnectionAndFetchContext:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #hal #on-demand rapportLink activated: %@", &v9, 0x16u);
    }

    return [*(a1 + 40) _fetchContextFromCollectorThroughOnDemandConnection:*(a1 + 48)];
  }
}

void sub_1001809A8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 16) activeDevices];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = sub_100188B7C(*(*(&v9 + 1) + 8 * v7), 0);
        if (v8)
        {
          [v2 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) fetchContextSnapshotFromDevicesWithPeerInfo:v2 completion:*(a1 + 40)];
}

void sub_100180BD8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v29 = objc_alloc_init(NSMutableArray);
  if ([*(*(a1 + 32) + 16) canReachPersonalDevices])
  {
    v3 = [*(a1 + 40) mutableCopy];

    v2 = v3;
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v5)
    {
      v6 = *v58;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v58 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v57 + 1) + 8 * i);
          v9 = [*(*(a1 + 32) + 16) remoteDeviceForPeerInfo:v8];
          v10 = v9 == 0;

          if (v10)
          {
            v11 = v29;
          }

          else
          {
            v11 = v2;
          }

          [v11 addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v5);
    }
  }

  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_10017F510;
  v55[4] = sub_10017F520;
  v56 = 0;
  v13 = [AFSafetyBlock alloc];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100181188;
  v50[3] = &unk_100513F40;
  v51 = 0;
  v53 = *(a1 + 48);
  v31 = v12;
  v52 = v31;
  v54 = v55;
  v14 = [v13 initWithBlock:v50];
  v15 = [AFWatchdogTimer alloc];
  v16 = *(*(a1 + 32) + 8);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001811F8;
  v46[3] = &unk_10051C588;
  v47 = *(a1 + 40);
  v49 = v55;
  v28 = v14;
  v48 = v28;
  v17 = [v15 initWithTimeoutInterval:v16 onQueue:v46 timeoutHandler:0.4];
  [v17 start];
  v18 = dispatch_group_create();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v2;
  v19 = [obj countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (v19)
  {
    v20 = *v43;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v42 + 1) + 8 * j);
        dispatch_group_enter(v18);
        v23 = *(a1 + 32);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1001812EC;
        v39[3] = &unk_100513F68;
        v39[4] = v23;
        v39[5] = v22;
        v40 = v31;
        v41 = v18;
        [v23 _fetchContextFromDeviceWithPeerInfo:v22 completion:v39];
      }

      v19 = [obj countByEnumeratingWithState:&v42 objects:v61 count:16];
    }

    while (v19);
  }

  if ([v29 count])
  {
    dispatch_group_enter(v18);
    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001813E0;
    v34[3] = &unk_100513F90;
    v34[4] = v25;
    v35 = v24;
    v38 = v55;
    v36 = v31;
    v37 = v18;
    [v25 _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:v35 completion:v34];
  }

  v26 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100181508;
  block[3] = &unk_10051DFE8;
  v33 = v28;
  v27 = v28;
  dispatch_group_notify(v18, v26, block);

  _Block_object_dispose(v55, 8);
}

void sub_100181188(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) copy];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 56) + 8) + 40));
}

id sub_1001811F8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[ADRemoteContextStore fetchContextSnapshotFromDevicesWithPeerInfo:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s #hal Timed out force fetching from %@", &v8, 0x16u);
  }

  v3 = [AFError errorWithCode:3102];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return [*(a1 + 40) invokeWithSignal:-2];
}

void sub_1001812EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018161C;
  block[3] = &unk_1005180D8;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v8;
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_1001813E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100181510;
  v15[3] = &unk_100514EA8;
  v16 = v6;
  v17 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  *&v12 = v8;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void sub_100181510(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || !*(a1 + 40))
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v5 = 136315650;
      v6 = "[ADRemoteContextStore fetchContextSnapshotFromDevicesWithPeerInfo:completion:]_block_invoke_2";
      v7 = 2112;
      v8 = v4;
      v9 = 2112;
      v10 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal Error fetching context through collector for %@: %@", &v5, 0x20u);
      v2 = *(a1 + 32);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
  }

  else
  {
    [*(a1 + 56) addObjectsFromArray:?];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_10018161C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || !*(a1 + 40))
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v7 = 136315650;
      v8 = "[ADRemoteContextStore fetchContextSnapshotFromDevicesWithPeerInfo:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal Error fetching context from %@: %@", &v7, 0x20u);
    }
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = [[AFPeerContentTuple alloc] initWithInfo:*(a1 + 48) content:*(a1 + 40)];
    [v5 addObject:v6];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1001818A4(uint64_t a1)
{
  if (*(*(a1 + 32) + 40) == 1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    if ([*(a1 + 40) count])
    {
      if ([*(a1 + 40) containsObject:AFDeviceContextKeyAll])
      {
        v3 = *(a1 + 32);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100181C70;
        v15[3] = &unk_100513F18;
        v16 = v2;
        [v3 _enumerateDeviceContextsUsingBlock:v15];
        v4 = v16;
      }

      else
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          v14 = *(a1 + 48);
          *buf = 136315650;
          v22 = "[ADRemoteContextStore getContextSnapshotIncludingKeys:excludingMandatoryKeys:completion:]_block_invoke";
          v23 = 2112;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #hal ContextSnapshot with included keys = %@, excluded keys = %@, updating with partial context", buf, 0x20u);
        }

        v12 = *(a1 + 32);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100181BB4;
        v17[3] = &unk_100513EF0;
        v18 = *(a1 + 48);
        v19 = *(a1 + 40);
        v20 = v2;
        [v12 _enumerateDeviceContextsUsingBlock:v17];

        v4 = v18;
      }
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[ADRemoteContextStore getContextSnapshotIncludingKeys:excludingMandatoryKeys:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s #hal no key included. Skipping", buf, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v2, 0, v10);
  }

  else
  {
    v5 = AFSupportsHALOnDemandRapportConnection();
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    if (v5)
    {
      v8 = *(a1 + 56);

      [v6 _activateOnDemandRapportConnectionAndFetchContext:{v8, v7}];
    }

    else
    {

      [v6 _fetchContextFromCollectorAndForceFetchingFromDevicesWithPeerInfo:0 completion:v7];
    }
  }
}

void sub_100181BB4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 isValid] & 1) != 0 || objc_msgSend(*(a1 + 32), "count"))
  {
    v6 = [v5 deviceContextForDeviceContextKeys:*(a1 + 40) excludingMandatoryKeys:*(a1 + 32)];
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [[AFPeerContentTuple alloc] initWithInfo:v9 content:v6];
      [v7 addObject:v8];
    }
  }
}

void sub_100181C70(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 isValid])
  {
    v6 = *(a1 + 32);
    v7 = [[AFPeerContentTuple alloc] initWithInfo:v8 content:v5];
    [v6 addObject:v7];
  }
}

void sub_100181DA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 info];
  v4 = [v3 content];

  (*(v2 + 16))(v2, v5, v4);
}

id sub_100181F48(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADRemoteContextStore stopCollectingContext]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s #hal", &v4, 0xCu);
  }

  return [*(a1 + 32) _setContextCollectionAllowed:0];
}

id sub_100182074(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADRemoteContextStore startCollectingContext]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s #hal", &v4, 0xCu);
  }

  return [*(a1 + 32) _setContextCollectionAllowed:1];
}

void sub_10018335C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setAceVersion:v3];
  [v4 setAssistantIdentifier:a1[5]];
  [v4 setBuildVersion:a1[6]];
  [v4 setProductType:a1[7]];
  [v4 setSharedUserIdentifier:a1[8]];
  [v4 setUserAssignedDeviceName:a1[9]];
  [v4 setUserInterfaceIdiom:a1[10]];
  [v4 setIsLocationSharingDevice:a1[11]];
  [v4 setHomeAccessoryInfo:a1[12]];
  [v4 setIsSiriCloudSyncEnabled:a1[13]];
  [v4 setMyriadTrialTreatment:a1[14]];
}

uint64_t sub_1001842A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001842BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v5 name];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [NSString alloc];
    v12 = [v5 productType];
    v13 = [v5 idsDeviceUniqueIdentifier];
    v14 = v13;
    if (v13)
    {
      v10 = [v11 initWithFormat:@"%@ / %@\n", v12, v13];
    }

    else
    {
      v15 = [v5 rapportEffectiveIdentifier];
      v10 = [v11 initWithFormat:@"%@ / %@\n", v12, v15];
    }
  }

  v16 = [v5 buildDictionaryRepresentation];
  [v7 setValue:v16 forKey:v10];

  if ([v6 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100184484;
    v17[3] = &unk_1005144D0;
    v18 = v7;
    [v6 enumerateObjectsUsingBlock:v17];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100184484(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [NSString alloc];
    v7 = [v13 productType];
    v8 = [v13 idsDeviceUniqueIdentifier];
    v9 = v8;
    if (v8)
    {
      v5 = [v6 initWithFormat:@"%@ / %@\n", v7, v8];
    }

    else
    {
      v10 = [v13 rapportEffectiveIdentifier];
      v5 = [v6 initWithFormat:@"%@ / %@\n", v7, v10];
    }
  }

  v11 = *(a1 + 32);
  v12 = [v13 buildDictionaryRepresentation];
  [v11 setValue:v12 forKey:v5];
}

void sub_100184C8C(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 localPeerInfoUpdatedFrom:a1[5] to:{a1[6], v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_100184DB0(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100184E60;
  v4[3] = &unk_10051D9B8;
  v5 = a1;
  v1 = v5;
  v2 = [AFPeerInfo newWithBuilder:v4];

  return v2;
}

void sub_100184E60(uint64_t a1, void *a2)
{
  v16 = a2;
  [v16 setIsDeviceOwnedByCurrentUser:1];
  v3 = +[ADPeerCloudService sharedInstance];
  v4 = [v3 localPeerIDSDeviceUniqueIdentifier];

  if (v4)
  {
    [v16 setIdsDeviceUniqueIdentifier:v4];
    v5 = _IDSCopyIDForDeviceUniqueID();
    [v16 setIdsIdentifier:v5];
  }

  v6 = [*(a1 + 32) userAssignedDeviceName];
  [v16 setName:v6];

  v7 = [*(a1 + 32) productType];
  [v16 setProductType:v7];

  v8 = [*(a1 + 32) buildVersion];
  [v16 setBuildVersion:v8];

  v9 = [*(a1 + 32) aceVersion];
  [v16 setAceVersion:v9];

  v10 = [*(a1 + 32) userInterfaceIdiom];
  [v16 setUserInterfaceIdiom:v10];

  v11 = [*(a1 + 32) assistantIdentifier];
  [v16 setAssistantIdentifier:v11];

  v12 = [*(a1 + 32) sharedUserIdentifier];
  [v16 setSharedUserIdentifier:v12];

  v13 = [*(a1 + 32) isSiriCloudSyncEnabled];
  [v16 setIsSiriCloudSyncEnabled:{objc_msgSend(v13, "BOOLValue")}];

  v14 = [*(a1 + 32) isLocationSharingDevice];
  [v16 setIsLocationSharingDevice:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [*(a1 + 32) myriadTrialTreatment];
  [v16 setMyriadTrialTreatment:v15];
}

void sub_1001851B8(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 setAceVersion:SAAceVersionCurrent];
  [v17 setAssistantIdentifier:*(*(a1 + 32) + 128)];
  v3 = AFBuildVersion();
  [v17 setBuildVersion:v3];

  v4 = AFProductType();
  [v17 setProductType:v4];

  v5 = AFUserAssignedDeviceName();
  [v17 setUserAssignedDeviceName:v5];

  [v17 setSharedUserIdentifier:*(*(a1 + 32) + 136)];
  v6 = AFCurrentUserInterfaceIdiom();
  [v17 setUserInterfaceIdiom:v6];

  [v17 setHomeAccessoryInfo:*(*(a1 + 32) + 152)];
  if (AFIsInternalInstall())
  {
    v7 = +[ADMultiUserMeDevice sharedInstance];
    v8 = [v7 isMeDevice];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = &stru_10051F508;
  if (AFIsInternalInstall())
  {
    v11 = +[ADMyriadSettingsManager sharedSettingsManager];
    v12 = [v11 treatmentId];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_10051F508;
    }

    v10 = v14;
  }

  [v17 setMyriadTrialTreatment:v10];
  v15 = [NSNumber numberWithBool:v9];
  [v17 setIsLocationSharingDevice:v15];

  v16 = [NSNumber numberWithBool:_AFPreferencesCloudSyncEnabled()];
  [v17 setIsSiriCloudSyncEnabled:v16];
}

void sub_100185A48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADDeviceCircleManager _keepAliveLinkToDevice:]_block_invoke_3";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s keepAlive link activation error for %@: %@", &v6, 0x20u);
    }
  }
}

void sub_100185B28(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_100514480];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];
}

void sub_100185B94(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesFamily:0];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_100186324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018634C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStationaryScoreAndResetTimer];
}

void sub_1001864B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained _syncCompanionLinkDeviceLocalPeerData];
    [v3 _updateSiriInfoWithLocalPeerData:v2];

    WeakRetained = v3;
  }
}

void sub_100186660(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100186728;
  v3[3] = &unk_100514400;
  v3[4] = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  [v2 getSharedDataForPeer:v3];

  objc_destroyWeak(&v4);
}

void sub_100186728(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001867BC;
  block[3] = &unk_10051B5F0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_1001867BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateSiriInfoWithDeviceCapabilities];
    WeakRetained = v2;
  }
}

void sub_100186A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D398;
  v6[3] = &unk_10051E038;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

id sub_100186CB4(uint64_t a1)
{
  [*(a1 + 32) _updateCollectorElectionVersion];
  v2 = *(a1 + 32);

  return [v2 _updateAssistantIdentifierAndSharedUserIdentifier];
}

id sub_100187120(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@"/"];
  v4 = [v3 lastObject];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "[ADDeviceCircleManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback handlerMessageType:%@", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) isEqualToString:v4];

  return v6;
}

void sub_1001879A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[ADDeviceCircleManager _handleExecuteCommand:fromPeer:completion:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal Received response for forwarded execute command from: %@, error: %@", &v10, 0x20u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

void sub_100187AAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187B88;
  block[3] = &unk_10051E088;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100187B88(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

id sub_100188240(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10018831C;
    v5[3] = &unk_10051D9B8;
    v6 = v1;
    v2 = [AFPeerInfo newWithBuilder:v5];
    v3 = sub_10001A498(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001888A0(uint64_t a1)
{
  v2 = [objc_opt_class() _rapportLinkWithQueue:*(*(a1 + 32) + 8)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);

  return [v5 _setupClientLink];
}

uint64_t sub_1001888FC(uint64_t result)
{
  if (!*(*(result + 32) + 16))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

id sub_100188B7C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100188C60;
    v7[3] = &unk_1005199B8;
    v8 = v3;
    v9 = v4;
    v5 = [AFPeerInfo newWithBuilder:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100188C60(uint64_t a1, void *a2)
{
  v54 = a2;
  [v54 setIsDeviceOwnedByCurrentUser:{(objc_msgSend(*(a1 + 32), "statusFlags") >> 19) & 1}];
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
LABEL_3:
    [v54 setIdsDeviceUniqueIdentifier:v4];
    v5 = _IDSCopyIDForDeviceUniqueID();
    [v54 setIdsIdentifier:v5];

    goto LABEL_4;
  }

  if (*(a1 + 40))
  {
    v13 = +[ADPeerCloudService sharedInstance];
    v4 = [v13 localPeerIDSDeviceUniqueIdentifier];

    if (v4)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v6 = [*(a1 + 32) effectiveIdentifier];
  [v54 setRapportEffectiveIdentifier:v6];

  v7 = [*(a1 + 32) mediaSystemIdentifier];
  v8 = [v7 UUIDString];
  [v54 setMediaSystemIdentifier:v8];

  v9 = [*(a1 + 32) mediaRouteIdentifier];
  [v54 setMediaRouteIdentifier:v9];

  v10 = [*(a1 + 32) homeKitIdentifier];
  [v54 setIsCommunalDevice:v10 != 0];

  v11 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v12 = [v11 name];
    if (v12)
    {
      [v54 setName:v12];
    }

    else
    {
      v16 = [*(a1 + 40) userAssignedDeviceName];
      [v54 setName:v16];
    }

    v17 = [*(a1 + 32) model];
    if (v17)
    {
      [v54 setProductType:v17];
    }

    else
    {
      v18 = [*(a1 + 40) productType];
      [v54 setProductType:v18];
    }

    v19 = [*(a1 + 40) buildVersion];
    [v54 setBuildVersion:v19];

    v20 = [*(a1 + 40) aceVersion];
    [v54 setAceVersion:v20];

    v21 = [*(a1 + 40) userInterfaceIdiom];
    [v54 setUserInterfaceIdiom:v21];

    v22 = [*(a1 + 40) assistantIdentifier];
    [v54 setAssistantIdentifier:v22];

    v23 = [*(a1 + 32) homeKitIdentifier];
    v24 = [v23 UUIDString];
    if (v24)
    {
      [v54 setHomeKitAccessoryIdentifier:v24];
    }

    else
    {
      v25 = [*(a1 + 40) homeAccessoryInfo];
      v26 = [v25 uniqueIdentifier];
      v27 = [v26 UUIDString];
      [v54 setHomeKitAccessoryIdentifier:v27];
    }

    v28 = [*(a1 + 32) roomName];
    if (v28)
    {
      [v54 setRoomName:v28];
    }

    else
    {
      v29 = [*(a1 + 40) homeAccessoryInfo];
      v30 = [v29 roomName];
      [v54 setRoomName:v30];
    }

    v31 = [*(a1 + 40) sharedUserIdentifier];
    [v54 setSharedUserIdentifier:v31];

    v32 = [*(a1 + 40) isLocationSharingDevice];
    [v54 setIsLocationSharingDevice:{objc_msgSend(v32, "BOOLValue")}];

    v33 = [*(a1 + 40) isSiriCloudSyncEnabled];
    [v54 setIsSiriCloudSyncEnabled:{objc_msgSend(v33, "BOOLValue")}];

    v14 = [*(a1 + 40) myriadTrialTreatment];
    [v54 setMyriadTrialTreatment:v14];
  }

  else
  {
    v14 = sub_1001892CC(v11);
    v15 = [*(a1 + 32) name];
    if (v15)
    {
      [v54 setName:v15];
    }

    else
    {
      v34 = [v14 userAssignedDeviceName];
      [v54 setName:v34];
    }

    v35 = [*(a1 + 32) model];
    if (v35)
    {
      [v54 setProductType:v35];
    }

    else
    {
      v36 = [v14 productType];
      [v54 setProductType:v36];
    }

    v37 = [v14 buildVersion];
    [v54 setBuildVersion:v37];

    v38 = [v14 aceVersion];
    [v54 setAceVersion:v38];

    v39 = [v14 userInterfaceIdiom];
    [v54 setUserInterfaceIdiom:v39];

    v40 = [v14 assistantIdentifier];
    v41 = [v40 uppercaseString];
    [v54 setAssistantIdentifier:v41];

    v42 = [*(a1 + 32) homeKitIdentifier];
    v43 = [v42 UUIDString];
    if (v43)
    {
      [v54 setHomeKitAccessoryIdentifier:v43];
    }

    else
    {
      v44 = [v14 homeAccessoryInfo];
      v45 = [v44 uniqueIdentifier];
      v46 = [v45 UUIDString];
      [v54 setHomeKitAccessoryIdentifier:v46];
    }

    v47 = [*(a1 + 32) roomName];
    if (v47)
    {
      [v54 setRoomName:v47];
    }

    else
    {
      v48 = [v14 homeAccessoryInfo];
      v49 = [v48 roomName];
      [v54 setRoomName:v49];
    }

    v50 = [v14 sharedUserIdentifier];
    [v54 setSharedUserIdentifier:v50];

    v51 = [v14 isLocationSharingDevice];
    [v54 setIsLocationSharingDevice:{objc_msgSend(v51, "BOOLValue")}];

    v52 = [v14 isSiriCloudSyncEnabled];
    [v54 setIsSiriCloudSyncEnabled:{objc_msgSend(v52, "BOOLValue")}];

    v53 = [v14 myriadTrialTreatment];
    [v54 setMyriadTrialTreatment:v53];
  }
}

ADDeviceCirclePeerData *sub_1001892CC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v3 = [v1 siriInfo];
  v4 = [v3 objectForKey:@"peerData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[ADDeviceCirclePeerData alloc] initWithDictionaryRepresentation:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ADDeviceCirclePeerData *)v5 assistantIdentifier];
  v7 = [v6 length];

  v8 = [(ADDeviceCirclePeerData *)v5 sharedUserIdentifier];
  v9 = [v8 length];

  if (!v7 || !v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v29 = "ADDeviceCircleGetPeerDataFromRapportDevice";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s No assistantID or shredUserIdentifier. Fetching sharedData.", buf, 0xCu);
    }

    v11 = [v2 _ad_siriSharedData];
    v12 = v11;
    if (v7)
    {
      if (v9)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v13 = [v11 assistantId];
      if ([v13 length])
      {
        if (v5)
        {
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10018969C;
          v26[3] = &unk_1005144A8;
          v14 = &v27;
          v27 = v13;
          v15 = [(ADDeviceCirclePeerData *)v5 mutatedCopyWithMutator:v26];

          v5 = v15;
        }

        else
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100189690;
          v24[3] = &unk_1005144A8;
          v14 = &v25;
          v25 = v13;
          v5 = [ADDeviceCirclePeerData newWithBuilder:v24];
        }
      }

      if (v9)
      {
        goto LABEL_25;
      }
    }

    v16 = [v12 sharedUserId];
    if ([v16 length])
    {
      if (v5)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1001896B4;
        v22[3] = &unk_1005144A8;
        v17 = &v23;
        v23 = v16;
        v18 = [(ADDeviceCirclePeerData *)v5 mutatedCopyWithMutator:v22];

        v5 = v18;
      }

      else
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001896A8;
        v20[3] = &unk_1005144A8;
        v17 = &v21;
        v21 = v16;
        v5 = [ADDeviceCirclePeerData newWithBuilder:v20];
      }
    }

    goto LABEL_25;
  }

LABEL_26:

LABEL_27:

  return v5;
}

void sub_100189C68(uint64_t a1)
{
  v2 = [[NSMutableSet alloc] initWithArray:*(a1 + 32)];
  [v2 minusSet:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018A410;
  block[3] = &unk_1005194E0;
  block[4] = v3;
  v7 = v2;
  v10 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v5 = v2;
  dispatch_async(v4, block);
}

void sub_100189D58(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a1[4] af_lenientMappedArray:&stru_100514338];
    v7 = *(a1[7] + 2);
    v33 = @"get_capabilities_for_devices";
    v34 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v9 = a1[8];
    v10 = [a1[7] _rapportLinkMessageOptions];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10018A0B4;
    v23[3] = &unk_100514360;
    v24 = a1[8];
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[6];
    v28 = a1[9];
    [v7 sendRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"device_capabilities_fetch" messagePayload:v8 toDeviceWithIDSDeviceID:v9 options:v10 completion:v23];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = a1[4];
    v11 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v30;
      *&v12 = 136315650;
      v21 = v12;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [v16 assistantIdentifier];
          v18 = [v5 objectForKey:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = sub_100281928(v18);
            [a1[5] setObject:v19 forKey:v17];
            [a1[6] addObject:v16];
          }

          else
          {
            v20 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v36 = "[ADDeviceCircleManager _fetchDeviceCapabilitiesForDevices:fromCollectorWithIndex:existingCapabilities:completion:]_block_invoke_4";
              v37 = 2112;
              v38 = v17;
              v39 = 2112;
              v40 = v18;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Invalid SVDCapabilities response for %@: %@", buf, 0x20u);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v13);
    }

    (*(a1[9] + 2))();
  }
}

void sub_10018A0B4(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 136315906;
      v35 = "[ADDeviceCircleManager _fetchDeviceCapabilitiesForDevices:fromCollectorWithIndex:existingCapabilities:completion:]_block_invoke_2";
      v36 = 2112;
      v37 = v7;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Error getting capabilities from %@ for %@: %@", buf, 0x2Au);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(a1 + 40);
    v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v26 = *v29;
      v11 = &RPOptionStatusFlags_ptr;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 idsDeviceUniqueIdentifier];
          v15 = [v13 assistantIdentifier];
          v16 = [v27 objectForKey:v14];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v15)
            {
              v25 = [[AFDeviceCapabilities alloc] initWithSerializedBackingStore:v16];
              if ([v25 voiceTriggerEnabled])
              {
                v17 = 1;
              }

              else
              {
                v17 = 2;
              }

              v24 = *(a1 + 48);
              v18 = [[SVDVoiceTriggerCapability alloc] initWithStatus:v17];
              v32 = v18;
              [NSArray arrayWithObjects:&v32 count:1];
              v19 = v11;
              v21 = v20 = a1;
              [v24 setObject:v21 forKey:v15];

              a1 = v20;
              v11 = v19;

              [*(a1 + 56) addObject:v13];
            }
          }

          else
          {
            v22 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v35 = "[ADDeviceCircleManager _fetchDeviceCapabilitiesForDevices:fromCollectorWithIndex:existingCapabilities:completion:]_block_invoke";
              v36 = 2112;
              v37 = v14;
              v38 = 2112;
              v39 = v16;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Invalid capabilities response for %@: %@", buf, 0x20u);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    v5 = 0;
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10018A410(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  [v2 _fetchDeviceCapabilitiesForDevices:v3 fromCollectorWithIndex:*(a1 + 64) + 1 existingCapabilities:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_10018AC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018ACA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10018ACBC(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[ADDeviceCircleManager _executeCommandThroughOnDemandClientLinkToContextCollector:onPeer:debugID:completion:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #hal safeCompletion invoked for executing commands through #on-demand connection for %@", &v9, 0x16u);
  }

  [*(a1 + 40) cancel];
  [*(a1 + 48) _cleanupOnDemandClientLinkToContextCollector:*(*(a1 + 48) + 24)];
  if (a2 == -2)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[ADDeviceCircleManager _executeCommandThroughOnDemandClientLinkToContextCollector:onPeer:debugID:completion:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #hal timed-out executing commands through #on-demand connection for %@", &v9, 0x16u);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  }

  return result;
}

id sub_10018AE2C(uint64_t a1)
{
  [*(a1 + 32) invokeWithSignal:-2];
  v2 = *(a1 + 32);

  return [v2 invoke];
}

void sub_10018AE6C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 24);
      *buf = 136315650;
      v17 = "[ADDeviceCircleManager _executeCommandThroughOnDemandClientLinkToContextCollector:onPeer:debugID:completion:]_block_invoke";
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal activate on-demand connection to context collector failed. Connection: %@, Error: %@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    [*(a1 + 40) invoke];
  }

  else
  {
    mach_absolute_time();
    Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
    v7 = *(*(a1 + 32) + 24);
    v8 = [NSDictionary dictionaryWithDictionary:*(a1 + 48)];
    v9 = [*(a1 + 32) _rapportLinkMessageOptions];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10018B068;
    v11[3] = &unk_1005142B0;
    v11[4] = *(a1 + 32);
    v15 = Milliseconds;
    v12 = *(a1 + 56);
    v14 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v13 = *(a1 + 40);
    [v7 sendRequestToContextCollectorThroughOnDemandConnection:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"execute_command_request" messagePayload:v8 options:v9 completion:v11];
  }
}

void sub_10018B068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B174;
  block[3] = &unk_100514288;
  v19 = *(a1 + 72);
  v14 = *(a1 + 40);
  v15 = v6;
  v8 = *(a1 + 64);
  v16 = v5;
  v18 = v8;
  v12 = *(a1 + 48);
  v9 = v12;
  v17 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

id sub_10018B174(uint64_t a1)
{
  mach_absolute_time();
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    v4 = Milliseconds - *(a1 + 80);
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [NSNumber numberWithUnsignedLongLong:v4];
    v8 = *(a1 + 40);
    v10 = 136315906;
    v11 = "[ADDeviceCircleManager _executeCommandThroughOnDemandClientLinkToContextCollector:onPeer:debugID:completion:]_block_invoke_2";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #hal (%@) execute command request response received in %@ ms, error: %@", &v10, 0x2Au);
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 40));
  return [*(a1 + 56) invoke];
}

void sub_10018B4B4(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  v3 = [v2 originPeerInfo];

  if (!v3)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10018B91C;
    v38[3] = &unk_100515FA0;
    v4 = *(a1 + 32);
    v38[4] = *(a1 + 40);
    [v4 updateInfoUsingBlock:v38];
  }

  v5 = [*(a1 + 32) info];
  v6 = [v5 buildDictionaryRepresentation];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v47[0] = @"messageID";
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v48[0] = v9;
  v48[1] = @"execute_command_request";
  v47[1] = @"type";
  v47[2] = @"serialized_command";
  v10 = *(a1 + 48);
  v47[3] = @"execution_context";
  v48[2] = v10;
  v48[3] = v7;
  v32 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];

  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];
  v13 = [v12 componentsSeparatedByString:@"-"];
  v14 = [v13 firstObject];

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 56);
    v17 = v15;
    v18 = [v16 assistantIdentifier];
    *buf = 136315650;
    v42 = "[ADDeviceCircleManager _executeCommand:onPeer:executionContext:throughOnDemandConnectionToContextCollector:completion:]_block_invoke";
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s #hal (%@) execute command request to peer with assistantId: %@", buf, 0x20u);
  }

  if (AFSupportsHALOnDemandRapportConnection() && *(a1 + 72) == 1)
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = v32;
    [v19 _executeCommandThroughOnDemandClientLinkToContextCollector:v32 onPeer:v20 debugID:v14 completion:v21];
  }

  else
  {
    v39 = RPOptionStatusFlags;
    v40 = &off_1005339F8;
    v23 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1, v32];
    v24 = [AceObject aceObjectWithPlistData:*(a1 + 48)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 announcementNotificationType];
      v26 = [v25 unsignedIntValue];

      if (v26 == 9)
      {
        v27 = [v23 mutableCopy];
        [v27 setObject:&__kCFBooleanTrue forKeyedSubscript:RPOptionBTHighPriority];
        v28 = [v27 copy];

        v23 = v28;
      }
    }

    mach_absolute_time();
    Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
    v30 = *(*(a1 + 40) + 16);
    v31 = [*(a1 + 56) assistantIdentifier];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10018B980;
    v34[3] = &unk_100514238;
    v34[4] = *(a1 + 40);
    v37 = Milliseconds;
    v35 = v14;
    v36 = *(a1 + 64);
    v22 = v33;
    [v30 sendRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"execute_command_request" messagePayload:v33 toDeviceWithAssistantIdentifier:v31 options:v23 completion:v34];
  }
}

void sub_10018B91C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _localPeerInfo];
  [v3 setOriginPeerInfo:v4];
}

void sub_10018B980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018BA74;
  block[3] = &unk_1005194E0;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v6;
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_10018BA74(void *a1)
{
  mach_absolute_time();
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = Milliseconds - a1[8];
    v5 = a1[4];
    v6 = v3;
    v7 = [NSNumber numberWithUnsignedLongLong:v4];
    v8 = a1[5];
    v10 = 136315906;
    v11 = "[ADDeviceCircleManager _executeCommand:onPeer:executionContext:throughOnDemandConnectionToContextCollector:completion:]_block_invoke_2";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal (%@) execute command request response received in %@ ms, error: %@", &v10, 0x2Au);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[5]);
  }

  return result;
}

void sub_10018C7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018CCD0;
  v12[3] = &unk_1005141E8;
  v13 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v11 = v3;
  dispatch_async(v4, v12);
}

void sub_10018C904(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 40))
  {
    if (v2)
    {
      v3 = [NSSet setWithArray:?];
      v4 = [NSSet setWithArray:*(a1 + 40)];
      v5 = [v3 isEqualToSet:v4];

      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v7 = +[AFAnalytics sharedAnalytics];
    [v7 logEventWithType:4570 context:0];

    v6 = 1;
    goto LABEL_7;
  }

  if (v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = 0;
LABEL_7:
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10018CB90;
  v25[3] = &unk_100514180;
  v25[4] = v8;
  v26 = *(a1 + 48);
  [v9 enumerateObjectsUsingBlock:v25];
  v10 = +[NSDate date];
  v11 = *(a1 + 32);
  v12 = *(v11 + 96);
  *(v11 + 96) = v10;

  if (*(a1 + 72) == 1 && *(a1 + 56))
  {
    v13 = [*(*(a1 + 32) + 40) containsObject:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 32);
  if (*(v14 + 48) != v13)
  {
    *(v14 + 48) = v13;
    [*(a1 + 32) _updateClientLinkSiriInfo];
    [*(a1 + 32) _updateContextCollectorStatusToRapport:*(*(a1 + 32) + 48)];
  }

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = *(*(a1 + 32) + 32);
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v21 + 1) + 8 * v19) contextCollectorChangedToDevicesWithIdentifiers:*(*(a1 + 32) + 40) localDeviceIsCollector:{*(*(a1 + 32) + 48), v21}];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v17);
    }
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

void sub_10018CB90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = a3 + 1;
    v8 = *(*(a1 + 32) + 40);
    v9 = v6;
    v10 = [v8 count];
    v11 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v12 = v11;
    v14 = 136316162;
    v15 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]_block_invoke_2";
    v13 = @"?";
    v16 = 2048;
    if (v11)
    {
      v13 = v11;
    }

    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #hal Elected collector device (%tu/%tu): %@, homeID: %@", &v14, 0x34u);
  }
}

void sub_10018CCD0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (([*(a1 + 72) containsObject:?] & 1) == 0)
    {
      [*(a1 + 56) addObject:*(a1 + 64)];
      [*(a1 + 72) addObject:*(a1 + 32)];
      [*(a1 + 80) setObject:*(a1 + 32) forKey:*(a1 + 64)];
    }
  }

  else
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v5 = 136315650;
      v6 = "[ADDeviceCircleManager _reelectCollectorDeviceForReason:completion:]_block_invoke_3";
      v7 = 2112;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Unable to get home id for %@ from %@", &v5, 0x20u);
    }

    [*(a1 + 56) addObject:*(a1 + 64)];
  }

  dispatch_group_leave(*(a1 + 88));
}

int64_t sub_10018CDE4(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(NSDictionary *)v5 objectForKey:@"idsDeviceIdentifier"];
  v7 = [(NSDictionary *)v4 objectForKey:@"idsDeviceIdentifier"];
  v8 = [(NSDictionary *)v5 objectForKey:@"isCollector"];
  v9 = [v8 BOOLValue];

  v10 = [(NSDictionary *)v4 objectForKey:@"isCollector"];
  LODWORD(v8) = [v10 BOOLValue];

  v11 = [(NSDictionary *)v5 objectForKey:@"stationaryScore"];

  [v11 floatValue];
  v13 = v12;

  v14 = [(NSDictionary *)v4 objectForKey:@"stationaryScore"];

  [v14 floatValue];
  v16 = v15;

  if (v9 == v8)
  {
    if (v13 == v16)
    {
      v17 = [v6 compare:v7];
    }

    else if (v13 <= v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  else if (v9)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void sub_10018D9D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v7;
      v13 = [v6 debugDescription];
      *buf = 136315650;
      v19 = "[ADDeviceCircleManager sendRequestType:data:toDeviceWithAssistantIdentifier:onQueue:completion:]_block_invoke";
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Error sending request to device with assistantId %@: %@", buf, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &_dispatch_main_q;
      v10 = &_dispatch_main_q;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018DBA0;
    block[3] = &unk_10051E088;
    v17 = *(a1 + 48);
    v15 = v5;
    v16 = v6;
    dispatch_async(v9, block);
  }
}

void sub_10018DDAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[ADDeviceCircleManager _forwardExecuteCommandToDevice:message:from:completion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal Error in forwarding executeCommand to %@: error:%@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

void sub_10018E0EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [*(v1 + 16) activeDevices];
    v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        v6 = 0;
        do
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [*(a1 + 32) _keepAliveLinkToDevice:*(*(&v15 + 1) + 8 * v6)];
          v8 = dispatch_time(0, 5000000000);
          v9 = *(*(a1 + 32) + 8);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10018E308;
          block[3] = &unk_10051DFE8;
          v14 = v7;
          v10 = v7;
          dispatch_after(v8, v9, block);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADDeviceCircleManager wakeUpNearbyDevices]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Current device is not context collector, skipping", buf, 0xCu);
    }
  }
}

void sub_10018E3B8(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v3 = [*(a1 + 32) _localPeerInfo];
  v2 = [*(*(a1 + 32) + 160) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 120));
  (*(*(a1 + 40) + 16))();
}

void sub_10018E604(id *a1)
{
  v2 = [a1[4] _setUpOnDemandClientLinkToContextCollector];
  [*(a1[4] + 3) invalidate];
  objc_storeStrong(a1[4] + 3, v2);
  v3 = objc_opt_new();
  v4 = [AFSafetyBlock alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10018E8F4;
  v25[3] = &unk_100514158;
  v26 = 0;
  v5 = v3;
  v27 = v5;
  v6 = a1[5];
  v7 = a1[4];
  v28 = v6;
  v29 = v7;
  v30 = a1[6];
  v8 = [v4 initWithBlock:v25];
  v9 = [AFWatchdogTimer alloc];
  v10 = *(a1[4] + 1);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10018EAA0;
  v23[3] = &unk_10051DFE8;
  v11 = v8;
  v24 = v11;
  v12 = [v9 initWithTimeoutInterval:v10 onQueue:v23 timeoutHandler:1.7];
  [v12 start];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v32 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke_2";
    v33 = 2112;
    v34 = v2;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal activating #on-demand connection to context collector: %@", buf, 0x16u);
  }

  v14 = a1[4];
  v15 = v14[3];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10018EAE0;
  v19[3] = &unk_100518440;
  v19[4] = v14;
  v20 = v11;
  v16 = a1[6];
  v21 = v5;
  v22 = v16;
  v17 = v5;
  v18 = v11;
  [v14 _activateOnDemandClientLinkToContextCollector:v15 completion:v19];
}

uint64_t sub_10018E8F4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) cancel];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = v4;
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
    v10 = *(a1 + 48);
    v12 = 136315650;
    v13 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke_2";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal fetched %@ peerCapabilitiesTuples for %@.", &v12, 0x20u);
  }

  [*(a1 + 56) _cleanupOnDemandClientLinkToContextCollector:*(*(a1 + 56) + 24)];
  if (a2 == -2)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = 136315394;
      v13 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal timed-out fetching capabilities through #on-demand connection for %@", &v12, 0x16u);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

id sub_10018EAA0(uint64_t a1)
{
  [*(a1 + 32) invokeWithSignal:-2];
  v2 = *(a1 + 32);

  return [v2 invoke];
}

void sub_10018EAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 24);
      *buf = 136315650;
      v19 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke";
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal activate #on-demand connection to context collector failed. Connection: %@, Error: %@", buf, 0x20u);
    }

    [*(a1 + 40) invoke];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 32) + 24);
      *buf = 136315394;
      v19 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke";
      v20 = 2112;
      v21 = v13;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal sending capabilities fetch message through #on-demand connection to context collector: %@", buf, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = v5[3];
    v7 = [v5 _rapportLinkMessageOptions];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10018ED14;
    v15[3] = &unk_100517CD8;
    v14 = *(a1 + 32);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    *&v10 = *(a1 + 40);
    *(&v10 + 1) = v8;
    *&v11 = v14;
    *(&v11 + 1) = v9;
    v16 = v11;
    v17 = v10;
    [v6 sendRequestToContextCollectorThroughOnDemandConnection:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"peers_svdCapabilities_fetch" messagePayload:&__NSDictionary0__struct options:v7 completion:v15];
  }
}

void sub_10018ED14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EE18;
  block[3] = &unk_10051D2A0;
  v11 = v5;
  v12 = v6;
  v15 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10018EE18(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 136315650;
    v18 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke_2";
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal #on-demand getCapabilitiesAndPeersCompletion response: %@, error: %@", buf, 0x20u);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) objectForKey:@"payload"];
    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal #on-demand received malformed response", buf, 0xCu);
        }

        v3 = 0;
      }
    }

    v5 = [v3 allKeys];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10018F098;
    v14 = &unk_100514180;
    v6 = v3;
    v15 = v6;
    v16 = *(a1 + 48);
    [v5 enumerateObjectsUsingBlock:&v11];

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 48);
      *buf = 136315394;
      v18 = "[ADDeviceCircleManager getCapabilitiesAndPeersFromContextCollectorThroughOnDemandRapportConnection:]_block_invoke_2";
      v19 = 2112;
      v20 = v10;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal #on-demand peerCapabilitiesTuples: %@", buf, 0x16u);
    }

    [*(a1 + 56) invoke];
  }
}

void sub_10018F098(uint64_t a1, uint64_t a2)
{
  v12 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v12 objectForKeyedSubscript:@"peerData"];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 objectForKeyedSubscript:@"deviceCapabilitiesV2"];

    if (v5)
    {
      v6 = [v12 objectForKeyedSubscript:@"peerData"];
      v7 = [[AFPeerInfo alloc] initWithDictionaryRepresentation:v6];
      v8 = [v12 objectForKeyedSubscript:@"deviceCapabilitiesV2"];
      v9 = sub_100281928(v8);
      v10 = v9;
      if (v7 && [v9 count])
      {
        v11 = [[AFPeerContentTuple alloc] initWithInfo:v7 content:v10];
        [*(a1 + 40) addObject:v11];
      }
    }
  }
}

void sub_10018F27C(uint64_t a1)
{
  v20 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(*(a1 + 32) + 16) activeDevices];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v23;
    *&v3 = 136315650;
    v19 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        v8 = [v7 siriInfo];
        v9 = [v8 objectForKey:@"deviceCapabilitiesV2"];

        v10 = sub_100281928(v9);
        v11 = sub_100188B7C(v7, 0);
        v12 = [*(a1 + 32) _managedPeerInfoMatchingPeerInfo:v11];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        v15 = v14;
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = v19;
          v27 = "[ADDeviceCircleManager getCapabilitiesForReachableDevicesWithCompletion:]_block_invoke";
          v28 = 2112;
          v29 = v15;
          v30 = 2112;
          v31 = v10;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s #hal Capabilities for %@: %@", buf, 0x20u);
          if (!v15)
          {
            goto LABEL_13;
          }
        }

        else if (!v15)
        {
          goto LABEL_13;
        }

        if ([v10 count])
        {
          v17 = [[AFPeerContentTuple alloc] initWithInfo:v15 content:v10];
          [v20 addObject:v17];
        }

LABEL_13:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v18 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      v4 = v18;
    }

    while (v18);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10018F5D4(id *a1)
{
  v2 = [a1[4] _rpDeviceMatchingPeerInfo:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 siriInfo];
    v5 = [v4 objectForKey:@"deviceCapabilitiesV2"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = sub_100281928(v5);
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v13 = a1[5];
        *buf = 136315650;
        v20 = "[ADDeviceCircleManager getCapabilitiesForDevice:completion:]_block_invoke";
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v6;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal Capabilities for %@: %@", buf, 0x20u);
      }

      (*(a1[6] + 2))();
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    v8 = [*(a1[4] + 5) count];
    v9 = AFSiriLogContextDaemon;
    v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        v14 = a1[5];
        *buf = 136315394;
        v20 = "[ADDeviceCircleManager getCapabilitiesForDevice:completion:]_block_invoke";
        v21 = 2112;
        v22 = v14;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal Unable to reach %@ directly, fetching from collector", buf, 0x16u);
      }

      v11 = a1[4];
      v25 = a1[5];
      v12 = [NSArray arrayWithObjects:&v25 count:1];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10018F8E4;
      v16[3] = &unk_10051D188;
      v17 = a1[5];
      v18 = a1[6];
      [v11 _fetchDeviceCapabilitiesForDevices:v12 completion:v16];
    }

    else
    {
      if (v10)
      {
        v15 = a1[5];
        *buf = 136315394;
        v20 = "[ADDeviceCircleManager getCapabilitiesForDevice:completion:]_block_invoke";
        v21 = 2112;
        v22 = v15;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal Unable to reach %@ directly", buf, 0x16u);
      }

      (*(a1[6] + 2))();
    }
  }
}

void sub_10018F8E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 assistantIdentifier];
  v6 = [v4 objectForKey:v5];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = AFPeerInfoGetCompactDescription();
    v10 = 136315650;
    v11 = "[ADDeviceCircleManager getCapabilitiesForDevice:completion:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal Capabilities for %@: %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10018FC14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    if (!*(v1 + 96) || (+[NSDate date](NSDate, "date"), v3 = objc_claimAutoreleasedReturnValue(), [v3 timeIntervalSinceDate:*(*(a1 + 32) + 96)], v5 = v4, v3, v5 > 86400.0))
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ADDeviceCircleManager reelectContextCollectorWithBestScore]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal Resigning collector role to trigger daily re-election based on score", &v7, 0xCu);
      }

      *(*(a1 + 32) + 48) = 0;
      [*(a1 + 32) _updateClientLinkSiriInfo];
      [*(a1 + 32) _reelectCollectorDeviceForReason:5 completion:0];
    }
  }
}

uint64_t sub_10018FF4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  v4 = &AFSiriLogContextDaemon;
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = *(v2 + 40);
      v8 = v5;
      *buf = 136315394;
      v37 = "[ADDeviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:]_block_invoke";
      v38 = 2048;
      v39 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Current collector count: %zd", buf, 0x16u);

      v2 = *(a1 + 32);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = *(v2 + 40);
    v9 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v33;
      *&v10 = 136315906;
      v30 = v10;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [*(*(a1 + 32) + 16) localDevice];
          v16 = [v15 idsDeviceIdentifier];
          v17 = [v14 isEqualToString:v16];

          v18 = *(a1 + 32);
          if (v17)
          {
            [v18 _localPeerInfo];
          }

          else
          {
            [v18 _remotePeerInfoForIDSDeviceUniqueIdentifier:v14];
          }
          v19 = ;
          v20 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
          {
            v21 = v20;
            [v19 productType];
            v23 = v22 = v4;
            *buf = v30;
            v37 = "[ADDeviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:]_block_invoke";
            v38 = 2112;
            v39 = v14;
            v40 = 2112;
            v41 = v23;
            v42 = 1024;
            v43 = v17;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s #hal Current collector: %@ (%@, isLocalDevice = %d)", buf, 0x26u);

            v4 = v22;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v11);
    }

    if (![*(*(a1 + 32) + 40) count] && AFIsHorseman())
    {
      v24 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v37 = "[ADDeviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Logging ABC for missing context collector on HomePod", buf, 0xCu);
      }

      v25 = +[SiriCoreSymptomsReporter sharedInstance];
      v26 = +[NSProcessInfo processInfo];
      v27 = [v26 processIdentifier];
      [v25 reportIssueForType:@"hal" subType:@"homepod_without_context_collector" context:&__NSDictionary0__struct processIdentifier:v27 walkboutStatus:byte_100590548];
    }

    v28 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v6)
    {
      *buf = 136315138;
      v37 = "[ADDeviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #hal skip fetching context collector identifiers, re-election has never occurred yet", buf, 0xCu);
    }

    v28 = *(*(a1 + 40) + 16);
  }

  return v28();
}

void sub_10019046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100190484(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100190904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001909D4;
  block[3] = &unk_10051E088;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_1001909D4(void *a1)
{
  v2 = a1[4];
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[5];
      v7 = 136315650;
      v8 = "[ADDeviceCircleManager _activateOnDemandClientLinkToContextCollector:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal activate #on-demand connection to context collector failed. Connection: %@, Error: %@", &v7, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = 136315394;
    v8 = "[ADDeviceCircleManager _activateOnDemandClientLinkToContextCollector:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal activated #on-demand connection: %@", &v7, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void sub_100190BC8(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_1005140E8];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];

  v4 = [ADRapportLinkConnectionOptions newWithBuilder:&stru_100514108];
  [(ADRapportLinkConfigurationMutating *)v2 setConnectionOptions:v4];

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADDeviceCircleManager _setUpOnDemandClientLinkToContextCollector]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal #on-demand connectionOptions: %@", &v6, 0x16u);
  }
}

void sub_100190CE8(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesFamily:0];
}

void sub_100190DA8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addListener:?];
  v2 = *(a1 + 32);
  v3 = v2[2];
  v4 = [v2 _rapportLinkMessageOptions];
  [v3 registerRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" options:v4];

  [*(*(a1 + 32) + 16) setRequestHandler:*(a1 + 32) forRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"device_capabilities_fetch"];
  [*(*(a1 + 32) + 16) setRequestHandler:*(a1 + 32) forRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"execute_command_request"];
  if (+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
  {
    [*(*(a1 + 32) + 16) setRequestHandler:*(a1 + 32) forRequestID:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"peers_svdCapabilities_fetch"];
  }

  v5 = *(a1 + 32);
  v6 = v5[2];
  v7 = [v5 _rapportLinkMessageOptions];
  [v6 registerRequestID:@"com.apple.siri.mux.token.exchange" options:v7];

  [*(*(a1 + 32) + 16) setRequestHandler:*(a1 + 32) forRequestID:@"com.apple.siri.mux.token.exchange" messageType:@"siriMux_tokenExchange"];
  v8 = *(a1 + 32);
  v9 = +[ADArbitrationFeedbackManager sharedManager];
  [v8 _registerRequestHandlerForRequestId:@"com.apple.siri.rapport-link.request.device-circle-manager" messageType:@"arbitration_info_push" handler:v9];

  v10 = [*(*(a1 + 32) + 208) keyEnumerator];
  v11 = [v10 allObjects];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100191010;
  v16[3] = &unk_100519570;
  v16[4] = *(a1 + 32);
  [v11 enumerateObjectsUsingBlock:v16];

  objc_initWeak(&location, *(a1 + 32));
  v12 = *(*(a1 + 32) + 16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100191178;
  v13[3] = &unk_100518060;
  objc_copyWeak(&v14, &location);
  v13[4] = *(a1 + 32);
  [v12 activateWithCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_100190FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100191010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 componentsSeparatedByString:@"/"];
  v5 = [v4 firstObject];
  v6 = [v4 lastObject];
  v7 = [*(*(a1 + 32) + 208) objectForKey:v3];

  if ([v5 length])
  {
    if ([v6 length])
    {
      if (v7)
      {
        [*(*(a1 + 32) + 16) setRequestHandler:*(a1 + 32) forRequestID:v5 messageType:v6];
        v8 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v9 = 136315650;
          v10 = "[ADDeviceCircleManager _setupClientLink]_block_invoke_2";
          v11 = 2112;
          v12 = v5;
          v13 = 2112;
          v14 = v6;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback registered handler requestId:%@, messageType:%@", &v9, 0x20u);
        }
      }
    }
  }
}

void sub_100191178(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADDeviceCircleManager _setupClientLink]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal Error activating: %@", &v8, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      [WeakRetained _updateCollectorElectionVersion];
      if ([v6 _isLocalDeviceCollectorCandidate])
      {
        [v6 _updateStationaryScore];
      }

      [v6 _updateSiriInfoWithDeviceCapabilities];
      os_unfair_lock_lock((*(a1 + 32) + 120));
      v7 = [*(a1 + 32) _localPeerData];
      os_unfair_lock_unlock((*(a1 + 32) + 120));
      [v6 _updateSiriInfoWithLocalPeerData:v7];
    }
  }
}

void sub_1001916A8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10019184C;
  v2[3] = &unk_100514048;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 getCurrentAccessoryInfoWithCompletion:v2];
}

void sub_100191730(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADDeviceCircleManager _initWithQueue:rapportLink:]_block_invoke_5";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v5 = AFIsInternalInstall();
  if (a2 <= 3 && v5)
  {
    WriteStackshotReport_async();
  }
}

void sub_10019184C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001918F8;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100191990(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_100514088];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];

  v4 = [ADRapportLinkTransportOptions newWithBuilder:&stru_1005140A8];
  [(ADRapportLinkConfigurationMutating *)v2 setTransportOptions:v4];
}

void sub_100191A24(id a1, ADRapportLinkTransportOptionsMutating *a2)
{
  v2 = a2;
  if (_AFPreferencesBLECompanionConnectionsEnabled())
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBLE:2];
  }

  if (AFSupportsPairedDevice())
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBTPipe:2];
  }
}

void sub_100191A84(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesFamily:0];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_100191ADC(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("ADDeviceCircleManager", v2);

  v3 = [*(a1 + 32) _rapportLinkWithQueue:v6];
  v4 = [objc_alloc(*(a1 + 32)) _initWithQueue:v6 rapportLink:v3];
  v5 = qword_100590400;
  qword_100590400 = v4;
}

id sub_100191B80(void *a1)
{
  v1 = sub_1001892CC(a1);
  v2 = [v1 assistantIdentifier];
  v3 = [v2 uppercaseString];

  return v3;
}

void sub_1001922DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v36 = +[NSAssertionHandler currentHandler];
    v37 = [NSString stringWithUTF8String:"_ADPBProxyTCPInfoMetrics *ADConnectionTCPInfoMetricsCreateProtocolBufferProxy(SiriCoreConnectionTCPInfoMetrics *__strong)"];
    [v36 handleFailureInFunction:v37 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"tcpInfoMetrics != nil"}];
  }

  v38 = objc_alloc_init(_ADPBProxyTCPInfoMetrics);
  v5 = [v4 interfaceName];
  if (v5)
  {
    [(_ADPBProxyTCPInfoMetrics *)v38 setInterfaceName:v5];
  }

  v6 = [v4 rttCurrent];
  v7 = v6;
  if (v6)
  {
    -[_ADPBProxyTCPInfoMetrics setRttCurrent:](v38, "setRttCurrent:", [v6 unsignedIntValue]);
  }

  v8 = [v4 rttSmoothed];
  v9 = v8;
  if (v8)
  {
    -[_ADPBProxyTCPInfoMetrics setRttSmoothed:](v38, "setRttSmoothed:", [v8 unsignedIntValue]);
  }

  v10 = [v4 rttVariance];
  v11 = v10;
  if (v10)
  {
    -[_ADPBProxyTCPInfoMetrics setRttVariance:](v38, "setRttVariance:", [v10 unsignedIntValue]);
  }

  v12 = [v4 rttBest];
  v13 = v12;
  if (v12)
  {
    -[_ADPBProxyTCPInfoMetrics setRttBest:](v38, "setRttBest:", [v12 unsignedIntValue]);
  }

  v14 = [v4 packetsSent];
  v15 = v14;
  if (v14)
  {
    -[_ADPBProxyTCPInfoMetrics setTxPackets:](v38, "setTxPackets:", [v14 unsignedLongLongValue]);
  }

  v16 = [v4 bytesSent];
  v17 = v16;
  if (v16)
  {
    -[_ADPBProxyTCPInfoMetrics setTxBytes:](v38, "setTxBytes:", [v16 unsignedLongLongValue]);
  }

  v18 = [v4 bytesRetransmitted];
  v19 = v18;
  if (v18)
  {
    -[_ADPBProxyTCPInfoMetrics setTxRetransmitBytes:](v38, "setTxRetransmitBytes:", [v18 unsignedLongLongValue]);
  }

  v20 = [v4 bytesUnacked];
  v21 = v20;
  if (v20)
  {
    -[_ADPBProxyTCPInfoMetrics setTxUnacked:](v38, "setTxUnacked:", [v20 unsignedLongLongValue]);
  }

  v22 = [v4 packetsReceived];
  v23 = v22;
  if (v22)
  {
    -[_ADPBProxyTCPInfoMetrics setRxPackets:](v38, "setRxPackets:", [v22 unsignedLongLongValue]);
  }

  v24 = [v4 bytesReceived];
  v25 = v24;
  if (v24)
  {
    -[_ADPBProxyTCPInfoMetrics setRxBytes:](v38, "setRxBytes:", [v24 unsignedLongLongValue]);
  }

  v26 = [v4 duplicateBytesReceived];
  v27 = v26;
  if (v26)
  {
    -[_ADPBProxyTCPInfoMetrics setRxDuplicateBytes:](v38, "setRxDuplicateBytes:", [v26 unsignedLongLongValue]);
  }

  v28 = [v4 outOfOrderBytesReceived];
  v29 = v28;
  if (v28)
  {
    -[_ADPBProxyTCPInfoMetrics setRxOooBytes:](v38, "setRxOooBytes:", [v28 unsignedLongLongValue]);
  }

  v30 = [v4 sendBandwidth];
  v31 = v30;
  if (v30)
  {
    -[_ADPBProxyTCPInfoMetrics setSndBandwidth:](v38, "setSndBandwidth:", [v30 unsignedLongLongValue]);
  }

  v32 = [v4 synRetransmits];
  v33 = v32;
  if (v32)
  {
    -[_ADPBProxyTCPInfoMetrics setSynRetransmits:](v38, "setSynRetransmits:", [v32 unsignedIntValue]);
  }

  v34 = [v4 tfoSynDataAcked];
  v35 = v34;
  if (v34)
  {
    -[_ADPBProxyTCPInfoMetrics setTfoSynDataAcked:](v38, "setTfoSynDataAcked:", [v34 unsignedIntValue]);
  }

  [*(a1 + 32) addTcpInfoMetrics:v38];
}

void sub_100193994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 timer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193A54;
  v7[3] = &unk_10051DD98;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 setTimer:v5 completionHandler:v7];
}

void sub_100193A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, 0, v3);
    }

    else
    {
      v6 = [*(a1 + 32) createResponse];
      (*(v5 + 16))(v5, v6, 0);
    }

    v4 = v7;
  }
}

void sub_100193B84(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100193C18;
  v5[3] = &unk_100514578;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 getTimerWithCompletionHandler:v5];
}

void sub_100193C18(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      v7 = [*(a1 + 32) createResponseWithTimer:v8];
      (*(v6 + 16))(v6, v7, 0);
    }

    else
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

void sub_100193D58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 timerURLs];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193E18;
  v7[3] = &unk_10051DD98;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 dismissTimersWithURLs:v5 completionHandler:v7];
}

void sub_100193E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, 0, v3);
    }

    else
    {
      v6 = [*(a1 + 32) createResponse];
      (*(v5 + 16))(v5, v6, 0);
    }

    v4 = v7;
  }
}

void sub_100194208(uint64_t a1)
{
  v2 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 136315394;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = AFSiriLogContextIDS;
        if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
        {
          *buf = v20;
          v31 = "[ADPeerCloudService service:devicesChanged:]_block_invoke";
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s device: %@", buf, 0x16u);
        }

        v11 = [v9 uniqueIDOverride];
        if ([v11 length])
        {
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = [v9 uniqueID];

          v11 = v12;
          if (!v12)
          {
            goto LABEL_14;
          }
        }

        [v2 addObject:v11];
        if (([*(*(a1 + 40) + 80) containsObject:v11] & 1) == 0)
        {
          [*(*(a1 + 40) + 80) addObject:v11];
        }

LABEL_14:
      }

      v6 = [v3 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 40) + 80) intersectSet:v2];
  v13 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = *(*(a1 + 40) + 88);
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        if (([v2 containsObject:v19] & 1) == 0)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [*(*(a1 + 40) + 88) removeObjectsForKeys:v13];
}

id sub_1001949F0(int a1)
{
  if ((a1 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_10019504C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = a2;
    v9 = [[NSSet alloc] initWithObjects:{*(a1 + 48), 0}];
    [v6 _sendProto:v8 ofType:a3 originalRequestId:v7 toPeers:v9 responseType:0xFFFFLL completion:0];
  }
}

void sub_1001953C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextIDS;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADPeerCloudService _handleRemoteExecution:peer:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error executing remote command: %@", &v11, 0x16u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, 0xFFFFLL, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADPeerCloudService _handleRemoteExecution:peer:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s got command response: %@", &v11, 0x16u);
    }

    v9 = objc_alloc_init(_ADPBDeviceExecuteOnRemoteResponse);
    v10 = [v5 plistData];
    [(_ADPBDeviceExecuteOnRemoteResponse *)v9 setContent:v10];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100195864(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001959A8;
  block[3] = &unk_10051C890;
  v6 = *(a1 + 40);
  v8 = a2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_10019591C(uint64_t a1)
{
  v3 = objc_alloc_init(_ADPBDeviceStartRemoteResponse);
  v2 = [*(a1 + 32) firstObject];
  -[_ADPBDeviceStartRemoteResponse setSuccess:](v3, "setSuccess:", [v2 BOOLValue]);

  (*(*(a1 + 40) + 16))();
}

void sub_1001959A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  [v2 addObject:v3];

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_100195AB8(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 48);
  if (v2)
  {
    if (!v3)
    {
      v4 = +[ADPeerCloudService _pointerToBlockMap];
      v5 = a1[4];
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;

      v2 = a1[5];
      v3 = *(a1[4] + 48);
    }

    v7 = a1[6];

    NSMapInsert(v3, v7, v2);
  }

  else if (v3)
  {
    v8 = a1[6];

    NSMapRemove(v3, v8);
  }
}

void sub_100195C18(id a1, AFRequestInfo *a2, ADPeerInfo *a3, id a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[ADPeerCloudService startListeningForRemote]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v10 = +[ADCommandCenter sharedCommandCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100195D88;
  v12[3] = &unk_10051CE00;
  v13 = v8;
  v11 = v8;
  [v10 handleExternalActivationRequest:v6 completion:v12];
}

uint64_t sub_100195D88(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADPeerCloudService startListeningForRemote]_block_invoke";
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Request success %d", &v6, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100196138(uint64_t a1)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001962C0;
  v14[3] = &unk_1005146B0;
  v2 = (a1 + 40);
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *v2;
  v11 = v3;
  v4 = *(a1 + 48);
  v18 = *(a1 + 72);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v15 = v11;
  v16 = v6;
  v17 = *(a1 + 64);
  v7 = objc_retainBlock(v14);
  v8 = AFSupportsAirPlayEndpointRoute();
  v9 = *(a1 + 40);
  if (v8 && *(v9 + 72) == 1)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019642C;
    v12[3] = &unk_10051E038;
    v10 = v7;
    v12[4] = *(a1 + 40);
    v13 = v10;
    [v9 _updateAirPlayRouteIdentifierWithCompletion:v12];
  }

  else
  {
    (v7[2])(v7, *(v9 + 64));
  }
}

void sub_1001962C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_ADPBDeviceExecuteOnRemoteRequest);
  [(_ADPBDeviceExecuteOnRemoteRequest *)v4 setContent:*(a1 + 32)];
  v5 = [*(*(a1 + 40) + 16) firstRoutableInternetDestinationForSelf];
  [(_ADPBDeviceExecuteOnRemoteRequest *)v4 setSourceIDSFirstRoutableDestination:v5];

  [(_ADPBDeviceExecuteOnRemoteRequest *)v4 setSourceAirplayId:v3];
  v6 = +[ADAccount activeAccount];
  v7 = [v6 assistantIdentifier];
  [(_ADPBDeviceExecuteOnRemoteRequest *)v4 setAssistantId:v7];

  v8 = *(a1 + 40);
  v9 = [NSSet setWithObject:*(a1 + 48)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100196444;
  v10[3] = &unk_100514688;
  v13 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  [v8 _sendProto:v4 ofType:5 toPeers:v9 responseType:6 completion:v10];
}

void sub_100196444(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = Milliseconds - a1[6];
    v10 = a1[4];
    v11 = v8;
    v12 = [NSNumber numberWithUnsignedLongLong:v9];
    *buf = 136315906;
    v30 = "[ADPeerCloudService startRemoteSerialzedCommandExecution:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke_3";
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal1 (%@,) proto response received in %@ ms, error: %@", buf, 0x2Au);
  }

  if (v6)
  {
    v13 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[ADPeerCloudService startRemoteSerialzedCommandExecution:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]_block_invoke";
      v31 = 2112;
      v32 = v6;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v24 + 1) + 8 * v18) proto];
          v20 = v19;
          if (v19 && [v19 hasContent])
          {
            v22 = [v20 content];
            v23 = [NSDictionary dictionaryWithPlistData:v22];

            (*(a1[5] + 16))();
            goto LABEL_18;
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v21 = a1[5];
    v14 = +[ADPeerCloudService _unexpectedMessageError];
    (*(v21 + 16))(v21, 0, v14);
LABEL_18:
  }
}

uint64_t sub_1001969A8(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v4 = [v3 firstObject];
  [v4 BOOLValue];

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100196C90(uint64_t a1)
{
  v2 = objc_alloc_init(_ADPBDeviceStartRemoteRequest);
  [(_ADPBDeviceStartRemoteRequest *)v2 _ad_setRequestInfo:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100196D54;
  v5[3] = &unk_100514660;
  v6 = *(a1 + 56);
  [v3 _sendProto:v2 ofType:3 toPeers:v4 responseType:4 completion:v5];
}

void sub_100196D54(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v25 = "[ADPeerCloudService _startRemoteRequest:onPeers:completion:]_block_invoke_2";
    v26 = 2112;
    v27 = v4;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ %{public}@", buf, 0x20u);
  }

  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 proto];
        v15 = v14;
        if (v14)
        {
          v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 success]);
          v17 = [v13 peer];
          [v7 setObject:v16 forKey:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10019724C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001973E0;
  block[3] = &unk_10051DB68;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_100197318(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) firstObject];
    v2 = objc_alloc_init(_ADPBDeviceSetDataRequest);
    [(_ADPBDeviceSetDataRequest *)v2 _ad_setData:v4];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = +[ADPeerCloudService _unexpectedMessageError];
    (*(v3 + 16))(v3, 0, 0xFFFFLL);
  }
}

void sub_1001973E0(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_1001974C8(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 40);
  if (v2)
  {
    if (!v3)
    {
      v4 = +[ADPeerCloudService _pointerToBlockMap];
      v5 = a1[4];
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v2 = a1[5];
      v3 = *(a1[4] + 40);
    }

    v7 = a1[6];

    NSMapInsert(v3, v7, v2);
  }

  else if (v3)
  {
    v8 = a1[6];

    NSMapRemove(v3, v8);
  }
}

void sub_1001976BC(uint64_t a1)
{
  v2 = objc_alloc_init(_ADPBDeviceGetDataRequest);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019777C;
  v5[3] = &unk_100514610;
  v5[4] = v3;
  v6 = *(a1 + 48);
  [v3 _sendProto:v2 ofType:2 toPeers:v4 responseType:1 completion:v5];
}

void sub_10019777C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[ADPeerCloudService getSharedDataFromPeers:completion:]_block_invoke_2";
      v31 = 2114;
      v32 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }
  }

  v22 = v6;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 proto];
        if (v14)
        {
          v15 = *(a1 + 32);
          v16 = [v13 peer];
          v17 = [v15 _uniqueIdentifierForPeer:v16];

          v18 = [v14 assistantId];
          if (v18)
          {
            v19 = +[ADDeviceCircleManager sharedInstance];
            [v19 _setAssistantId:v18 forDeviceWithIdsDeviceUniqueIdentifier:v17];
          }

          v20 = [v14 _ad_data];
          v21 = [v13 peer];
          [v8 setObject:v20 forKey:v21];

          if (AFIsHorseman())
          {
            [*(a1 + 32) _setCachedSharedData:v20 forUniqueId:v17];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100197D60(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 32);
  if (v2)
  {
    if (!v3)
    {
      v4 = +[ADPeerCloudService _pointerToBlockMap];
      v5 = a1[4];
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v2 = a1[5];
      v3 = *(a1[4] + 32);
    }

    v7 = a1[6];

    NSMapInsert(v3, v7, v2);
  }

  else if (v3)
  {
    v8 = a1[6];

    NSMapRemove(v3, v8);
  }
}

void sub_100197F50(uint64_t a1)
{
  v2 = objc_alloc_init(_ADPBDeviceSetDataRequest);
  [(_ADPBDeviceSetDataRequest *)v2 _ad_setData:*(a1 + 32)];
  [*(a1 + 40) _sendProto:v2 ofType:1 toPeers:*(a1 + 48)];
}

void sub_100198118(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001981D0;
  block[3] = &unk_10051E088;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_1001981D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  if (v3 == v2 || ([v3 isEqualToString:?] & 1) != 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADPeerCloudService _updateAirPlayRouteIdentifierWithCompletion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s AirPlay route did not change", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 40) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;
  }

  *(*(a1 + 32) + 72) = 0;
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001984F4(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  obj = [v2 companionIdentifier];

  v3 = obj;
  v4 = *(*(a1 + 32) + 56);
  if (v4 != obj)
  {
    v4 = [v4 isEqualToString:obj];
    v3 = obj;
    if ((v4 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 56), obj);
      v3 = obj;
    }
  }

  return _objc_release_x1(v4, v3);
}

uint64_t sub_100198960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100198978(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedSharedDataForUniqueId:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100198BA0(uint64_t a1)
{
  v2 = [*(a1 + 32) _peerInfoForAssistantId:*(a1 + 40) allowNonPeers:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void *sub_100198CE4(uint64_t a1)
{
  result = AFIsHorseman();
  if (result)
  {
    result = *(*(a1 + 32) + 56);
    if (result)
    {
      v3 = [result copy];
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      return _objc_release_x1(v3, v5);
    }
  }

  return result;
}

void sub_100198FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10019900C(uint64_t a1)
{
  v2 = [*(a1 + 32) _companionPeer];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_10019947C(uint64_t a1)
{
  v2 = [*(a1 + 32) _peerInfoForIDSDeviceUniqueIdentifier:*(a1 + 40) allowNonPeers:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100199754(uint64_t a1)
{
  v2 = [*(a1 + 32) _uniqueIdentifierForPeer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100199894(uint64_t a1)
{
  v2 = [*(a1 + 32) _peers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10019A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019A094(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[ADPeerCloudService _timedOutError];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 _handleMessageResponse:0 ofType:0xFFFFLL orError:v4 fromID:0 handler:WeakRetained];
}

void sub_10019A514(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADPeerCloudService _init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Begin setting up IDS service.", buf, 0xCu);
  }

  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.siri.icloud"];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  [*(*(a1 + 32) + 16) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 16);
    *buf = 136315394;
    v38 = "[ADPeerCloudService _init]_block_invoke";
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s End setting up IDS service %@.", buf, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 16) devices];
  v9 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[ADPeerCloudService _init]_block_invoke";
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = v10;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        v19 = [v18 uniqueIDOverride];
        if ([v19 length])
        {
          if (!v19)
          {
            goto LABEL_15;
          }

LABEL_14:
          [*(*(a1 + 32) + 80) addObject:v19];
          goto LABEL_15;
        }

        v20 = [v18 uniqueID];

        v19 = v20;
        if (v20)
        {
          goto LABEL_14;
        }

LABEL_15:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v21 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v15 = v21;
    }

    while (v21);
  }

  v22 = +[ADPreferences sharedPreferences];
  v23 = [v22 companionIdentifier];
  v24 = *(a1 + 32);
  v25 = *(v24 + 56);
  *(v24 + 56) = v23;

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:*(a1 + 32) selector:"_companionIdentifierDidChangeNotification:" name:@"ADPreferencesCompanionIdentifierDidChangeNotification" object:0];
  if (AFSupportsAirPlayEndpointRoute())
  {
    *(*(a1 + 32) + 72) = 1;
    [v26 addObserver:*(a1 + 32) selector:"_airplayRouteDidChange:" name:AFMediaRemoteDeviceInfoRouteIdentifierDidChangeNotification object:0];
  }

  [*(a1 + 32) _updateActiveAccountState];
  v27 = *(*(a1 + 32) + 8);
  v28 = +[ADQueueMonitor sharedMonitor];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10019A924;
  v30[3] = &unk_10051C2E0;
  v31 = v27;
  v29 = v27;
  [v28 addQueue:v29 heartBeatInterval:v30 timeoutInterval:5.0 timeoutHandler:5.0];
}

void sub_10019A924(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADPeerCloudService _init]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v5 = AFIsInternalInstall();
  if (a2 <= 3 && v5)
  {
    WriteStackshotReport_async();
  }
}

void sub_10019AC58(id a1)
{
  v1 = [[ADPeerCloudService alloc] _init];
  v2 = qword_100590410;
  qword_100590410 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019B8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315394;
      v11 = "[ADCloudKitKeyValueMirroredStore synchronizeKeychainPreferencesWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save mirror keys: %@", &v10, 0x16u);
    }

    v8 = +[ADCloudKitManager sharedManager];
    [v8 handleCloudKitError:v5 forZone:@"com.apple.assistant.backedup" mirror:1 operationType:2];
  }
}

void sub_10019D7C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315394;
      v11 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save mirror keys: %@", &v10, 0x16u);
    }

    v8 = +[ADCloudKitManager sharedManager];
    [v8 handleCloudKitError:v5 forZone:@"com.apple.assistant.backedup" mirror:1 operationType:2];
  }
}

void sub_10019EC08(uint64_t a1)
{
  v2 = [NSMutableSet alloc];
  v3 = [*(*(a1 + 32) + 16) allKeys];
  v6 = [v2 initWithArray:v3];

  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 languageCode];
  [v6 addObject:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_10019F2D4(id a1)
{
  v1 = objc_alloc_init(SiriTTSDaemonSession);
  v2 = qword_100590430;
  qword_100590430 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10019F930(void (**a1)(void, void))
{
  v2 = a1;
  v3 = objc_alloc_init(ADUnavailableAlarmStore);
  (a1)[2](v2, v3);
}

void sub_10019FB50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADCloudKitZoneShareCreator saveZoneShare:completion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error saving shared zone (%@)", &v12, 0x16u);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void sub_10019FCFC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2 && ([v2 zone], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [CKShare alloc];
    v5 = [*(*(a1 + 32) + 24) zone];
    v6 = [v5 zoneID];
    v7 = [v4 initWithRecordZoneID:v6];

    v8 = [v7 recordID];
    v9 = [CKFetchRecordsOperation alloc];
    v24 = v8;
    v10 = [NSArray arrayWithObjects:&v24 count:1];
    v11 = [v9 initWithRecordIDs:v10];

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10019FF70;
    v20 = &unk_1005173D8;
    v12 = *(a1 + 40);
    v21 = *(a1 + 32);
    v22 = v8;
    v23 = v12;
    v13 = v8;
    [v11 setFetchRecordsCompletionBlock:&v17];
    [v11 setQualityOfService:{17, v17, v18, v19, v20, v21}];
    v14 = [*(*(a1 + 32) + 16) privateCloudDatabase];
    [v14 addOperation:v11];
  }

  else
  {
    v7 = [AFError errorWithCode:4020];
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[ADCloudKitZoneShareCreator fetchZoneShare:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, 0, v7);
    }
  }
}

void sub_10019FF70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADCloudKitZoneShareCreator fetchZoneShare:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch share with error (%@). Try creating a record.", &v12, 0x16u);
    }

    [*(a1 + 32) _setupZoneSharing:*(a1 + 48)];
  }

  else
  {
    v8 = [v5 objectForKey:*(a1 + 40)];
    v9 = AFSiriLogContextDaemon;
    if (v8)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [v8 URL];
        v12 = 136315394;
        v13 = "[ADCloudKitZoneShareCreator fetchZoneShare:]_block_invoke";
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s one share record fetched with %@", &v12, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315138;
        v13 = "[ADCloudKitZoneShareCreator fetchZoneShare:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Creating zone share", &v12, 0xCu);
      }

      [*(a1 + 32) _setupZoneSharing:*(a1 + 48)];
    }
  }
}

void sub_1001A023C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2 && ([v2 zone], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [CKShare alloc];
    v5 = [*(*(a1 + 32) + 24) zone];
    v6 = [v5 zoneID];
    v7 = [v4 initWithRecordZoneID:v6];

    v8 = [v7 recordID];
    v9 = [CKModifyRecordsOperation alloc];
    v18 = v8;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v11 = [v9 initWithRecordsToSave:0 recordIDsToDelete:v10];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A04A4;
    v16[3] = &unk_1005148A8;
    v17 = *(a1 + 40);
    [v11 setModifyRecordsCompletionBlock:v16];
    if (*(a1 + 48) == 1)
    {
      [v11 setMarkAsParticipantNeedsNewInvitationToken:1];
    }

    [v11 setQualityOfService:17];
    v12 = *(*(a1 + 32) + 16);
    if (*(a1 + 49) == 1)
    {
      [v12 privateCloudDatabase];
    }

    else
    {
      [v12 sharedCloudDatabase];
    }
    v14 = ;
    [v14 addOperation:v11];
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      v15 = [AFError errorWithCode:4020];
      (*(v13 + 16))(v13);
    }
  }
}

void sub_1001A04A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADCloudKitZoneShareCreator deleteZoneShare:markForReinvitation:completion:]_block_invoke_2";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error deleting ckshare (%@)", &v14, 0x16u);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);
LABEL_10:
      v12();
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADCloudKitZoneShareCreator deleteZoneShare:markForReinvitation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Deletion successful", &v14, 0xCu);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v12 = *(v13 + 16);
      goto LABEL_10;
    }
  }
}

void sub_1001A0810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[ADCloudKitZoneShareCreator _setupZoneSharing:]_block_invoke";
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error creating shared zone (%@)", &v21, 0x16u);
    }

    v11 = sub_10031BFF0(v9);
    v12 = AFSiriLogContextDaemon;
    v13 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = 136315394;
      v22 = "[ADCloudKitZoneShareCreator _setupZoneSharing:]_block_invoke";
      v23 = 2112;
      v24 = v7;
      v14 = "%s Zone share record exists %@";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = 136315394;
      v22 = "[ADCloudKitZoneShareCreator _setupZoneSharing:]_block_invoke";
      v23 = 2112;
      v24 = v9;
      v14 = "%s Zone share record creation failed with error (%@)";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, &v21, 0x16u);
LABEL_14:
    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, 0, v9);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v10;
    v16 = [v7 firstObject];
    v17 = [v16 URL];
    v21 = 136315394;
    v22 = "[ADCloudKitZoneShareCreator _setupZoneSharing:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Zone share record creation succeeded with %@", &v21, 0x16u);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = [v7 firstObject];
    (*(v18 + 16))(v18, v19, *(*(a1 + 32) + 16), 0);
  }

LABEL_16:
}

void sub_1001A0E04(id a1)
{
  v1 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v2 = qword_100590450;
  qword_100590450 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001A0E4C(id a1)
{
  v1 = os_log_create("com.apple.siri", "AnalyticsIdentifiers");
  v2 = qword_100590440;
  qword_100590440 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001A113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A115C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 deviceSegmentsReported];
  v5 = v4;
  if (v4 && [v4 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasDaysWithTwoValidAssistantTurnsPerWeek"), v6, v7))
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    *(*(*(a1 + 32) + 8) + 24) = [v8 daysWithTwoValidAssistantTurnsPerWeek];

    v9 = [v3 eventMetadata];
    v10 = [v9 eventTimestampInMSSince1970];
    v11 = [NSDate dateWithTimeIntervalSince1970:v10];
    v12 = objc_alloc_init(NSDateFormatter);
    [v12 setDateFormat:@"yyyy-MM-dd"];
    v13 = [v12 stringFromDate:v11];
    v14 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*(*(a1 + 32) + 8) + 24);
      v17 = 136315906;
      v18 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantTurnsPerWeek]_block_invoke";
      v19 = 1024;
      v20 = v16;
      v21 = 2048;
      v22 = v10;
      v23 = 2112;
      v24 = v13;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: Retrieved latest DaysWithTwoAssistantTurnsPerWeek value: %u from Biome stream with epoch time: %llu and date: %@", &v17, 0x26u);
    }
  }

  else
  {
    v15 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantTurnsPerWeek]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: No data for daysWithTwoValidAssistantTurnsPerWeek available in Biome stream", &v17, 0xCu);
    }
  }
}

void sub_1001A13AC(id a1, BPSCompletion *a2)
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = a2;
    v6 = [(BPSCompletion *)v5 state];
    v7 = [(BPSCompletion *)v5 error];

    v8 = 136315650;
    v9 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantTurnsPerWeek]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: BMSiriOnDeviceDigestSegmentsCohorts Publisher completed with state: %ld; error: %@", &v8, 0x20u);
  }
}

void sub_1001A15F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A1614(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 deviceSegmentsReported];
  if ([v4 count] && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasDaysWithTwoAssistantSpeechRequestsPerWeek"), v5, v6))
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    *(*(*(a1 + 32) + 8) + 24) = [v7 daysWithTwoAssistantSpeechRequestsPerWeek];

    v8 = [v3 eventMetadata];
    v9 = [v8 eventTimestampInMSSince1970];
    v10 = [NSDate dateWithTimeIntervalSince1970:v9];
    v11 = objc_alloc_init(NSDateFormatter);
    [v11 setDateFormat:@"yyyy-MM-dd"];
    v12 = [v11 stringFromDate:v10];
    v13 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(*(a1 + 32) + 8) + 24);
      v16 = 136315906;
      v17 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek]_block_invoke";
      v18 = 1024;
      v19 = v15;
      v20 = 2048;
      v21 = v9;
      v22 = 2112;
      v23 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: Retrieved latest daysWithTwoAssistantSpeechRequestsPerWeek value: %u from Biome stream with epoch time: %llu and date: %@", &v16, 0x26u);
    }
  }

  else
  {
    v14 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: No data for daysWithTwoAssistantSpeechRequestsPerWeek available in Biome stream", &v16, 0xCu);
    }
  }
}

void sub_1001A185C(id a1, BPSCompletion *a2)
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = a2;
    v6 = [(BPSCompletion *)v5 state];
    v7 = [(BPSCompletion *)v5 error];

    v8 = 136315650;
    v9 = "+[ADSiriAnalyticsOnDeviceDigestProvider _fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s DIMSchemaDIMOnDeviceDigest: BMSiriOnDeviceDigestSegmentsCohorts Publisher completed with state: %ld; error: %@", &v8, 0x20u);
  }
}

void sub_1001A1AAC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(*(a1 + 32) + 24) = -1;
    v3 = +[AFAnalytics sharedAnalytics];
    v14[0] = @"path";
    v4 = [*(*(a1 + 32) + 32) stringByStandardizingPath];
    v14[1] = @"success";
    v15[0] = v4;
    v15[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v3 logEventWithType:313 context:v5];

    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 32);
      v10 = 136315394;
      v11 = "[ADSpeechLog endSpeechLog]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Logged speech file at path %@", &v10, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
  }
}

void sub_1001A1C9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(*(a1 + 32) + 24) = -1;
    v3 = +[AFAnalytics sharedAnalytics];
    v20[0] = @"path";
    v4 = [*(*(a1 + 32) + 32) stringByStandardizingPath];
    v20[1] = @"success";
    v21[0] = v4;
    v21[1] = &__kCFBooleanFalse;
    v5 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v3 logEventWithType:313 context:v5];

    v6 = +[NSFileManager defaultManager];
    v7 = *(*(a1 + 32) + 32);
    v13 = 0;
    LOBYTE(v5) = [v6 removeItemAtPath:v7 error:&v13];
    v8 = v13;

    if ((v5 & 1) == 0)
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(a1 + 32) + 32);
        *buf = 136315650;
        v15 = "[ADSpeechLog cancelCurrentSpeechLog]_block_invoke";
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s error removing file at path %{public}@ %{public}@", buf, 0x20u);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;
  }
}

ssize_t sub_1001A2000(ssize_t result)
{
  if ((*(*(result + 32) + 24) & 0x80000000) == 0)
  {
    v1 = result;
    v2 = [*(result + 40) length];
    v3 = v2;
    if ((v2 & 0xFF80) != 0)
    {
      __buf = (v2 >> 7) | 0x80;
      write(*(*(v1 + 32) + 24), &__buf, 1uLL);
    }

    v4 = v3 & 0x7F;
    write(*(*(v1 + 32) + 24), &v4, 1uLL);
    return write(*(*(v1 + 32) + 24), [*(v1 + 40) bytes], objc_msgSend(*(v1 + 40), "length"));
  }

  return result;
}

void sub_1001A2154(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 limitedAudioLoggingEnabled];

  if ((v3 & 1) == 0)
  {
    if (*(*(a1 + 32) + 32))
    {
      v4 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v26 = "[ADSpeechLog beginNewSpeechLogWithFormat:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Already have a log open, ignoring", buf, 0xCu);
      }
    }

    v5 = [*(a1 + 40) hasPrefix:@"OPUS"];
    v6 = @"spx";
    if (v5)
    {
      v6 = @"opx";
    }

    v7 = v6;
    v8 = [NSString alloc];
    v9 = AFSpeechLogsDirectory();
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) _nowString];
    v12 = [v8 initWithFormat:@"%@/%@-%@.%@", v9, v10, v11, v7];

    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *(v13 + 32) = v12;

    *(*(a1 + 32) + 24) = open([*(*(a1 + 32) + 32) fileSystemRepresentation], 522, 384);
    v15 = *(a1 + 32);
    if ((*(v15 + 24) & 0x80000000) != 0)
    {
      v21 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v22 = *(v15 + 32);
        *buf = 136315394;
        v26 = "[ADSpeechLog beginNewSpeechLogWithFormat:]_block_invoke";
        v27 = 2114;
        v28 = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Couldn't open file %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v16 = +[AFAnalytics sharedAnalytics];
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v23[0] = @"format";
      v23[1] = @"path";
      v24[0] = v18;
      v19 = [*(v17 + 32) stringByStandardizingPath];
      v24[1] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      [v16 logEventWithType:312 context:v20];
    }
  }
}

void sub_1001A3288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSAERequiredAssets();
  v5 = AFAssetsAvailabilityMatchesRequiredAssets();

  if (v5 != [*(a1 + 40) saeAssetsForCurrentLocaleAvailable])
  {
    v6 = objc_opt_respondsToSelector();
    v7 = AFSiriLogContextDaemon;
    v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v9 = 136315138;
        v10 = "[ADSAEAssetsAvailabilityObserver refreshAssetsAvailabilityWithAssetManager:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Sending updateAvailabilityWithCompletion: to GM", &v9, 0xCu);
      }

      [*(*(a1 + 40) + 8) updateAvailabilityWithCompletion:&stru_100514948];
    }

    else if (v8)
    {
      v9 = 136315138;
      v10 = "[ADSAEAssetsAvailabilityObserver refreshAssetsAvailabilityWithAssetManager:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s updateAvailabilityWithCompletion: is not implemented by GMAvailabilityWrapper", &v9, 0xCu);
    }
  }

  [*(a1 + 40) setSaeAssetsForCurrentLocaleAvailable:v5];
}

void sub_1001A3408(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 localizedDescription];
      v6 = 136315394;
      v7 = "[ADSAEAssetsAvailabilityObserver refreshAssetsAvailabilityWithAssetManager:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s updateAvailabilityWithCompletion: failed with error %@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSAEAssetsAvailabilityObserver refreshAssetsAvailabilityWithAssetManager:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Successfully sent updateAvailabilityWithCompletion: to GM", &v6, 0xCu);
  }
}

void sub_1001A3608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1001A3620(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590468)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1001A380C;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100514968;
    v8 = 0;
    qword_100590468 = _sl_dlopen();
  }

  if (!qword_100590468)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADSAEAssetsAvailabilityObserver.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADSAEAssetsAvailabilityObserver.m" lineNumber:19 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

LABEL_10:
    __break(1u);
  }

  qword_100590460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A380C()
{
  result = _sl_dlopen();
  qword_100590468 = result;
  return result;
}

void sub_1001A3DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_1001A3DDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AFSiriLogContextDaemon;
  v3 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v3)
    {
      v4 = 136315138;
      v5 = "[ADMultiUserMeDevice _setupMeDeviceFetch]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Change notification", &v4, 0xCu);
    }

    [WeakRetained _checkMeDevice];
  }

  else if (v3)
  {
    v4 = 136315138;
    v5 = "[ADMultiUserMeDevice _setupMeDeviceFetch]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Change notification after deallocation?", &v4, 0xCu);
  }
}

void sub_1001A3EE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AFSiriLogContextDaemon;
  v3 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v3)
    {
      v4 = 136315138;
      v5 = "[ADMultiUserMeDevice _setupMeDeviceFetch]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Activation done", &v4, 0xCu);
    }

    [WeakRetained _checkMeDevice];
  }

  else if (v3)
  {
    v4 = 136315138;
    v5 = "[ADMultiUserMeDevice _setupMeDeviceFetch]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Activation after deallocation?", &v4, 0xCu);
  }
}

void sub_1001A3FEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isMeDevice];

    if (!v3)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[ADMultiUserMeDevice _setupMeDeviceFetch]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Forced evaluation", &v5, 0xCu);
      }

      [v2 _checkMeDevice];
    }
  }
}

void sub_1001A42D4(id a1)
{
  v1 = [[ADMultiUserMeDevice alloc] _init];
  v2 = qword_100590478;
  qword_100590478 = v1;

  _objc_release_x1(v1, v2);
}