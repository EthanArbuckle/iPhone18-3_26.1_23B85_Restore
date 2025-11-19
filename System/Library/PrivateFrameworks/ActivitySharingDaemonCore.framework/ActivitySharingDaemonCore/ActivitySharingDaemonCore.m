__CFString *NSStringFromASMessageType(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 <= 101)
    {
      if (a1 == 100)
      {
        v2 = @"ASMessageTypeSecureCloudInviteRequest";
      }

      else
      {
        v2 = @"ASMessageTypeSecureCloudInviteResponse";
      }

      return v2;
    }

    if (a1 == 102)
    {
      v2 = @"ASMessageTypeSecureCloudUpgradeRequest";

      return v2;
    }

    if (a1 == 103)
    {
      v2 = @"ASMessageTypeSecureCloudUpgradeResponse";

      return v2;
    }

LABEL_35:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a1];

    return v2;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v2 = @"ASMessageTypeFinalizeHandshake";

      return v2;
    }

    if (a1 == 4)
    {
      v2 = @"ASMessageTypeWithdrawInviteRequest";

      return v2;
    }

    goto LABEL_35;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = @"ASMessageTypeInviteResponse";

      return v2;
    }

    goto LABEL_35;
  }

  v2 = @"ASMessageTypeInviteRequest";

  return v2;
}

void sub_23E5E4E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E5E7000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E7C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E5E8410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E8908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E8C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E8F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E96DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E9A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23E5E9CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_23E5EA004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_23E5EA3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

id ASInsertInviteForContact(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a3;
  v13 = [v9 destinations];
  [v10 setAddresses:v13];

  v14 = ASSanitizedContactDestination();

  [v10 setPreferredReachableAddress:v14];
  [v10 setPreferredReachableService:v11];

  v15 = [v10 outgoingHandshakeToken];

  if (v15)
  {
    ASLoggingInitialize();
    v16 = *MEMORY[0x277CE9008];
    if (!os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = v16;
    v18 = [v10 outgoingHandshakeToken];
    *v26 = 138412290;
    *&v26[4] = v18;
    v19 = "Outgoing handshake token already exists for this person: %@";
  }

  else
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    [v10 setOutgoingHandshakeToken:v21];

    ASLoggingInitialize();
    v22 = *MEMORY[0x277CE9008];
    if (!os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = v22;
    v18 = [v10 outgoingHandshakeToken];
    *v26 = 138412290;
    *&v26[4] = v18;
    v19 = "Creating new outgoing handshake token: %@";
  }

  _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, v19, v26, 0xCu);

LABEL_7:
  [v10 insertEventWithType:{a5, *v26}];
  v23 = [v9 relationshipStorage];
  [v23 updateRelationship:v10 cloudType:{objc_msgSend(v10, "cloudType")}];
  [v9 setRelationshipStorage:v23];

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

id ASSaveRelationshipRecordForContact(void *a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = ASRelationshipForRecords(v7);
  v11 = v10;
  if (!v10)
  {
    ASLoggingInitialize();
    v16 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Failed to save relationship, no relationship from records %@", &v21, 0xCu);
    }

    if (a4)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:14 userInfo:0];
LABEL_11:
      v15 = 0;
      *a4 = v17;
      goto LABEL_18;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    v12 = [v10 UUID];
    v8 = [v9 contactWithUUID:v12];

    if (!v8)
    {
      ASLoggingInitialize();
      v18 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v11;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "Failed to save relationship, no matching contact %@", &v21, 0xCu);
      }

      if (a4)
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.RelationshipManager" code:13 userInfo:0];
        v8 = 0;
        goto LABEL_11;
      }

      v8 = 0;
      goto LABEL_17;
    }
  }

  ASLoggingInitialize();
  v13 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Successfully saved relationship record in CloudKit", &v21, 2u);
  }

  v14 = [v8 relationshipStorage];
  [v14 updateRelationship:v11 cloudType:{objc_msgSend(v11, "cloudType")}];
  [v8 setRelationshipStorage:v14];
  [v9 saveContact:v8];
  v15 = v11;

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

id ASRelationshipForRecords(uint64_t a1)
{
  v1 = [MEMORY[0x277CE9118] relationshipsWithRelationshipAndEventRecords:a1];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
    {
      ASRelationshipForRecords_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

id ASMakeActivityDataPreviewWithManager(void *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 currentActivitySnapshot];
  v3 = [v2 codableSnapshot];

  v4 = [v1 currentWorkouts];
  v5 = ASCodableWorkoutsFromWorkouts();

  v6 = [v1 currentAchievements];

  v7 = ASCodableAchievementsFromAchievements();

  v8 = objc_alloc_init(MEMORY[0x277CE9040]);
  [v8 setActivitySnapshot:v3];
  v9 = [v5 allObjects];
  v10 = [v9 mutableCopy];
  [v8 setWorkouts:v10];

  v11 = [v7 allObjects];
  v12 = [v11 mutableCopy];
  [v8 setAchievements:v12];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v8 setDate:?];
  ASLoggingInitialize();
  v13 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v35 = v5;
    v14 = MEMORY[0x277CCABB0];
    log = v13;
    v34 = [v8 activitySnapshot];
    [v34 energyBurned];
    v30 = [v14 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    v33 = [v8 activitySnapshot];
    [v33 energyBurnedGoal];
    v28 = [v15 numberWithDouble:?];
    v16 = MEMORY[0x277CCABB0];
    v31 = [v8 activitySnapshot];
    [v31 mmv];
    v29 = [v16 numberWithDouble:?];
    v17 = MEMORY[0x277CCABB0];
    [v8 activitySnapshot];
    v18 = v36 = v3;
    [v18 mmg];
    v19 = [v17 numberWithDouble:?];
    v20 = MEMORY[0x277CCABB0];
    v21 = [v8 workouts];
    v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
    v23 = MEMORY[0x277CCABB0];
    v24 = [v8 achievements];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    *buf = 138413570;
    v38 = v30;
    v39 = 2112;
    v40 = v28;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v19;
    v45 = 2112;
    v46 = v22;
    v47 = 2112;
    v48 = v25;
    _os_log_impl(&dword_23E5E3000, log, OS_LOG_TYPE_DEFAULT, "Generated activity data preview: %@/%@ calories, %@/%@ moveMinutes, %@ workouts, %@ achievements", buf, 0x3Eu);

    v5 = v35;
    v3 = v36;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

id ASDeviceBuildNumber()
{
  if (ASDeviceBuildNumber_onceToken != -1)
  {
    ASDeviceBuildNumber_cold_1();
  }

  v1 = ASDeviceBuildNumber_buildNumber;

  return v1;
}

uint64_t __ASDeviceBuildNumber_block_invoke()
{
  ASDeviceBuildNumber_buildNumber = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

void ASProcessActivityDataPreviewWithManager(void *a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 activitySnapshot];
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE9008];
  v10 = os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager message included a snapshot, processing", buf, 2u);
    }

    v11 = MEMORY[0x277CBEAA8];
    [v5 date];
    v25 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v12 = [MEMORY[0x277CCDDC8] fitnessFriendActivitySnapshotWithCodableSnapshot:v8 friendUUID:v6 uploadedDate:v25];
    v13 = MEMORY[0x277CBEB98];
    v14 = [v5 workouts];
    v15 = [v13 setWithArray:v14];
    v16 = ASWorkoutsFromCodableWorkouts();

    v17 = MEMORY[0x277CBEB98];
    v18 = [v5 achievements];
    v19 = [v17 setWithArray:v18];
    v20 = ASAchievementsFromCodableAchievements();

    v27[0] = v12;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v22 = [v16 allObjects];
    v23 = [v20 allObjects];
    [v7 saveActivitySnapshots:v21 workouts:v22 achievements:v23 isInvitationData:1];
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager message didn't include an activity snapshot preview, not processing", buf, 2u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

id ASContactForIncomingHandshakeTokenWithManager(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __ASContactForIncomingHandshakeTokenWithManager_block_invoke;
  v9[3] = &unk_278C4B690;
  v10 = v5;
  v11 = a3;
  v6 = v5;
  v7 = [a2 contactMatchingCriteriaBlock:v9];

  return v7;
}

uint64_t __ASContactForIncomingHandshakeTokenWithManager_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 relationshipStorage];
  v4 = [v3 relationshipForCloudType:*(a1 + 40)];

  v5 = [v4 incomingHandshakeToken];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

id ASContactForOutgoingHandshakeTokenWithManager(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __ASContactForOutgoingHandshakeTokenWithManager_block_invoke;
  v9[3] = &unk_278C4B690;
  v10 = v5;
  v11 = a3;
  v6 = v5;
  v7 = [a2 contactMatchingCriteriaBlock:v9];

  return v7;
}

uint64_t __ASContactForOutgoingHandshakeTokenWithManager_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 relationshipStorage];
  v4 = [v3 relationshipForCloudType:*(a1 + 40)];

  v5 = [v4 outgoingHandshakeToken];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

id ASContactForSecureCloudRelationshipZone(void *a1, void *a2)
{
  v3 = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __ASContactForSecureCloudRelationshipZone_block_invoke;
  v7[3] = &unk_278C4B6B8;
  v8 = v3;
  v4 = v3;
  v5 = [a2 contactMatchingCriteriaBlock:v7];

  return v5;
}

uint64_t __ASContactForSecureCloudRelationshipZone_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relationshipStorage];
  v5 = [v4 secureCloudRelationship];
  v6 = [v5 remoteRelationshipZoneShareID];
  v7 = [v6 zoneID];
  if ([v7 isEqual:*(a1 + 32)])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 relationshipStorage];
    v10 = [v9 secureCloudRemoteRelationship];
    v11 = [v10 secureCloudZoneName];
    v12 = [*(a1 + 32) zoneName];
    v8 = [v11 isEqualToString:v12];
  }

  return v8;
}

id ASReconcileCloudKitRelationshipsForCloudType(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a3)
  {
    v8 = ASAllRelationshipsByRecordIDForCloudType(a2, a4);
  }

  else
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "RelationshipManager current fetch is full, overwrite instead of merging", buf, 2u);
    }

    v8 = MEMORY[0x277CBEC10];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __ASReconcileCloudKitRelationshipsForCloudType_block_invoke;
  v14[3] = &__block_descriptor_40_e39_B24__0__CKRecordID_8__ASRelationship_16l;
  v14[4] = a4;
  v10 = [v7 hk_filter:v14];

  v11 = ASMergeCloudKitRelationshipWithExistingRelationships(v10, v8);

  v12 = ASResolveDuplicateRelationshipByCloudKitAddress(v11);

  return v12;
}

id ASAllRelationshipsByRecordIDForCloudType(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = MEMORY[0x277CE9008];
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if (!a2)
        {
          v13 = [*(*(&v24 + 1) + 8 * v10) relationshipStorage];
          v14 = [v13 legacyRelationship];
LABEL_11:
          v15 = v14;

          if (v15)
          {
            v16 = [v15 systemFieldsOnlyRecord];
            v17 = [v16 recordID];

            if (v17)
            {
              [v4 setObject:v15 forKeyedSubscript:v17];
            }

            else
            {
              ASLoggingInitialize();
              v19 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v29 = v15;
                _os_log_error_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_ERROR, "RelationshipManager found a relationship that was missing a record ID: %@", buf, 0xCu);
              }
            }
          }

          goto LABEL_19;
        }

        v12 = ASSecureCloudEnabled();
        if (a2 == 1 && v12)
        {
          v13 = [v11 relationshipStorage];
          v14 = [v13 secureCloudRelationship];
          goto LABEL_11;
        }

        ASLoggingInitialize();
        v18 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          ASAllRelationshipsByRecordIDForCloudType_cold_1(&v22, v23, v18);
        }

LABEL_19:
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

id ASMergeCloudKitRelationshipWithExistingRelationships(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __ASMergeCloudKitRelationshipWithExistingRelationships_block_invoke;
  v7[3] = &unk_278C4B700;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

id ASResolveDuplicateRelationshipByCloudKitAddress(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEBUG))
  {
    ASResolveDuplicateRelationshipByCloudKitAddress_cold_1(v2);
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke;
  v23[3] = &unk_278C4B728;
  v5 = v4;
  v24 = v5;
  v6 = v3;
  v25 = v6;
  [v1 enumerateKeysAndObjectsUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 systemFieldsOnlyRecord];
        v14 = [v13 recordID];
        [v5 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = v25;
  v16 = v5;

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

void __ASMergeCloudKitRelationshipWithExistingRelationships_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE9008];
  v9 = *MEMORY[0x277CE9008];
  v10 = os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      v19 = v9;
      v20 = [v6 preferredReachableAddress];
      v21 = [v6 cloudKitAddress];
      v23 = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "RelationshipManager found a new relationship that doesn't exist locally (%@/%@)", &v23, 0x16u);
    }

    goto LABEL_11;
  }

  if (v10)
  {
    v11 = v9;
    v12 = [v7 preferredReachableAddress];
    v13 = [v7 cloudKitAddress];
    v14 = [v6 preferredReachableAddress];
    v15 = [v6 cloudKitAddress];
    v23 = 138413058;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "RelationshipManager found a conflict (%@/%@ vs %@/%@)", &v23, 0x2Au);
  }

  v16 = ASMostRecentlyModifiedRelationship(v6, v7);

  ASLoggingInitialize();
  v17 = *v8;
  v18 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v16 == v6)
  {
    if (v18)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "RelationshipManager determined the cloudKit relationship is newer, taking it", &v23, 2u);
    }

LABEL_11:
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    goto LABEL_12;
  }

  if (v18)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "RelationshipManager determined cloudKit relationship is older, keeping the existing relationship", &v23, 2u);
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

void *ASMostRecentlyModifiedRelationship(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 systemFieldsOnlyRecord];
  v6 = [v5 modificationDate];

  v7 = [v4 systemFieldsOnlyRecord];
  v8 = [v7 modificationDate];

  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v8 timeIntervalSinceReferenceDate];
  if (v10 >= v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  v13 = v12;

  return v12;
}

void __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 cloudKitAddress];
  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if (v8)
    {
      ASLoggingInitialize();
      v9 = MEMORY[0x277CE9008];
      v10 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_1(v10);
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_2();
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_3();
      }

      v11 = ASMostRecentlyModifiedRelationship(v8, v6);
      ASLoggingInitialize();
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_4();
      }

      [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
    }

    else
    {
      [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEBUG))
    {
      __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_5();
    }

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

id ASInsertPlaceholderRelationshipEventForFriend(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = ASContactPreferringPlaceholderForUUID(a2, v7);
  if (v9)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE9008];
    if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Inserting placeholder contact", v18, 2u);
    }

    if (v8)
    {
      v11 = [v8 unsignedIntValue];
    }

    else
    {
      v13 = [v9 relationshipStorage];
      v14 = [v13 primaryRelationship];
      v11 = [v14 cloudType];
    }

    v15 = [v9 relationshipStorage];
    v16 = [v15 relationshipForCloudType:v11];
    [v16 insertEventWithType:a1];
    [v15 updateRelationship:v16 cloudType:v11];
    [v9 setRelationshipStorage:v15];
    v12 = [v7 savePlaceholderContact:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id ASContactPreferringPlaceholderForUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 placeholderContactWithUUID:v3];
  if (!v5)
  {
    v5 = [v4 contactWithUUID:v3];
  }

  v6 = [v5 copy];

  return v6;
}

id ASContactsPreferringPlaceholders(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [v1 contacts];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 UUID];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v1 placeholderContacts];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        v16 = [v15 UUID];
        [v2 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = [v2 allValues];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id ASMostSignificantRelationship(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [v4 UUID];
  v7 = [v5 isEqual:v6];

  if ([v3 cloudType] == 1)
  {
    v8 = [v3 secureCloudMigrationCompleted];
  }

  else
  {
    v8 = 0;
  }

  if ([v4 cloudType] == 1)
  {
    v9 = [v4 secureCloudMigrationCompleted];
  }

  else
  {
    v9 = 0;
  }

  if (v7 & v8) != 1 || (v9)
  {
    if (v8 & 1 | ((v7 & 1) == 0) || ((v9 ^ 1) & 1) != 0)
    {
      v10 = ASMostRecentlyModifiedRelationship(v3, v4);
    }

    else
    {
      v10 = v4;
    }
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

uint64_t ASIsRelationshipMigrating(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 cloudType] || objc_msgSend(v3, "cloudType") != 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 secureCloudMigrationCompleted];
  }

  return v4;
}

id ASAllContactsByRecordID(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412290;
    v21 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 relationshipStorage];
        v10 = [v9 legacyRelationship];

        v11 = [v10 systemFieldsOnlyRecord];
        v12 = [v11 recordID];

        if (v12)
        {
          [v2 setObject:v8 forKeyedSubscript:v12];
        }

        else
        {
          ASLoggingInitialize();
          v13 = *MEMORY[0x277CE9008];
          if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v28 = v10;
            _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "RelationshipManager found a contact with legacy relationship missing a record ID: %@", buf, 0xCu);
          }
        }

        if (ASSecureCloudEnabled())
        {
          v14 = [v8 relationshipStorage];
          v15 = [v14 secureCloudRelationship];

          v16 = [v15 systemFieldsOnlyRecord];
          v17 = [v16 recordID];

          if (v17)
          {
            [v2 setObject:v8 forKeyedSubscript:v17];
          }

          else
          {
            ASLoggingInitialize();
            v18 = *MEMORY[0x277CE9008];
            if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v28 = v15;
              _os_log_error_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_ERROR, "RelationshipManager found a contact with secure cloud relationship missing a record ID: %@", buf, 0xCu);
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

void ASReconcileRelationshipsAgainstAddressBook(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  val = a2;
  v19 = v3;
  v4 = [v3 mutableCopy];
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "RelationshipManager preparing to reconcile with address book %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "RelationshipManager deleting existing friends list", buf, 2u);
  }

  objc_initWeak(&location, val);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __ASReconcileRelationshipsAgainstAddressBook_block_invoke;
  v26[3] = &unk_278C4B7B8;
  objc_copyWeak(&v28, &location);
  v18 = v4;
  v27 = v18;
  [val setContactsUsingTransaction:v26];
  v20 = [val contacts];
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v20 count];
    *buf = 134217984;
    v31 = v8;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "RelationshipManager reconcile complete with %ld contacts", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [val contacts];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        ASLoggingInitialize();
        v14 = *MEMORY[0x277CE9008];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 displayName];
          v16 = [v13 relationshipStorage];
          *buf = 138412546;
          v31 = v15;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "%@ -> %@", buf, 0x16u);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v10);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23E5ED87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contacts];
  v4 = ASAllContactsByRecordID(v3);

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEB58] set];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __ASReconcileRelationshipsAgainstAddressBook_block_invoke_2;
  v15[3] = &unk_278C4B770;
  v16 = *(a1 + 32);
  v7 = v5;
  v17 = v7;
  v8 = v6;
  v18 = v8;
  objc_copyWeak(&v20, (a1 + 40));
  v9 = v4;
  v19 = v9;
  v10 = MEMORY[0x23EF0EB00](v15);
  (v10)[2](v10, @"cloudKitAddress", 0, &__block_literal_global_323);
  (v10)[2](v10, @"preferredAddress", 0, &__block_literal_global_329);
  (v10)[2](v10, @"knownAddresses", 0, &__block_literal_global_334);
  (v10)[2](v10, @"createCloudKitAddress", 1, &__block_literal_global_339);
  (v10)[2](v10, @"createPreferredAddress", 1, &__block_literal_global_344);
  (v10)[2](v10, @"createKnownAddresses", 1, &__block_literal_global_349);
  v11 = MEMORY[0x277CBEB98];
  v12 = [v7 allValues];
  v13 = [v11 setWithArray:v12];

  objc_destroyWeak(&v20);

  return v13;
}

void __ASReconcileRelationshipsAgainstAddressBook_block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  v104 = a2;
  v6 = a4;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE9008];
  v8 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    *buf = 138543618;
    v116 = v104;
    v117 = 2048;
    v118 = [v9 count];
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "RelationshipManager starting reconcile pass: %{public}@ (%lu remaining relationships)", buf, 0x16u);
  }

  v102 = a1;
  ASLoggingInitialize();
  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v116) = a3;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "RelationshipManager create person without address book match is %d for this pass", buf, 8u);
  }

  v12 = [*(a1 + 32) allValues];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_315];

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v111;
    *&v15 = 138412546;
    v100 = v15;
    v105 = *v111;
    do
    {
      v18 = 0;
      v19 = v102;
      v106 = v16;
      do
      {
        if (*v111 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v110 + 1) + 8 * v18);
        v21 = v6[2](v6, v20);
        v22 = v21;
        if (v21 && [v21 count])
        {
          ASLoggingInitialize();
          v23 = v7;
          v24 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v116 = v22;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "RelationshipManager looking for contact with destinations: %@", buf, 0xCu);
          }

          v25 = ASSecureCloudEnabled();
          v26 = MEMORY[0x277CBEB98];
          v27 = [*(v19 + 40) allValues];
          v28 = [v26 setWithArray:v27];
          if (v25)
          {
            v29 = [v20 UUID];
            v30 = ASFindContactWithDestinationsOrIdentifierInContacts(v22, v28, v29);

            v31 = [v30 relationshipStorage];
            v32 = [v31 relationshipForCloudType:{objc_msgSend(v20, "cloudType")}];

            if (!v32)
            {
              goto LABEL_17;
            }

            v33 = *(v19 + 48);
            v34 = _ASProcessedRelationshipIdentifier(v32);
            LOBYTE(v33) = [v33 containsObject:v34];

            if ((v33 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_22:
            v44 = [v30 relationshipStorage];
            v45 = [v44 relationshipForCloudType:{objc_msgSend(v20, "cloudType")}];

            ASLoggingInitialize();
            v7 = v23;
            v46 = *v23;
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v116 = v45;
              _os_log_error_impl(&dword_23E5E3000, v46, OS_LOG_TYPE_ERROR, "RelationshipManager contact already has a relationship (possibly from a previous pass): %@", buf, 0xCu);
            }

            ASLoggingInitialize();
            v47 = *v23;
            v16 = v106;
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              __ASReconcileRelationshipsAgainstAddressBook_block_invoke_2_cold_1(&v108, v109, v47);
            }

LABEL_71:
            v17 = v105;
            goto LABEL_72;
          }

          v30 = ASFindContactWithDestinationsInContacts(v22, v28);

          v41 = [v30 relationshipStorage];
          v42 = [v41 legacyRelationship];
          v43 = [v42 relationshipShareID];

          if (v43)
          {
            goto LABEL_22;
          }

LABEL_17:
          v35 = ASSecureCloudEnabled();
          WeakRetained = objc_loadWeakRetained((v19 + 64));
          v37 = WeakRetained;
          if (v35)
          {
            v38 = [v20 UUID];
            v39 = [v37 createContactWithDestinations:v22 relationshipIdentifier:v38];

            v30 = v39;
          }

          else
          {
            [WeakRetained createContactWithDestinations:v22];
            v30 = v38 = v30;
          }

          v48 = [v30 linkedContactStoreIdentifier];

          ASLoggingInitialize();
          v49 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v116) = v48 != 0;
            _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "RelationshipManager contact in address book: %d", buf, 8u);
          }

          ASLoggingInitialize();
          v50 = *v23;
          v51 = os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT);
          if (!v48 && !a3)
          {
            v16 = v106;
            if (v51)
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v50, OS_LOG_TYPE_DEFAULT, "RelationshipManager didn't find a match", buf, 2u);
            }

            v7 = v23;
            goto LABEL_71;
          }

          if (v51)
          {
            *buf = 138412290;
            v116 = v20;
            _os_log_impl(&dword_23E5E3000, v50, OS_LOG_TYPE_DEFAULT, "RelationshipManager found a match for relationship: %@", buf, 0xCu);
          }

          ASLoggingInitialize();
          v7 = v23;
          v52 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v52;
            v54 = [v30 UUID];
            *buf = 138543618;
            v116 = v54;
            v117 = 2112;
            v118 = v30;
            _os_log_impl(&dword_23E5E3000, v53, OS_LOG_TYPE_DEFAULT, "RelationshipManager matching contact: %{public}@ - %@", buf, 0x16u);
          }

          v55 = [v20 cloudKitAddress];

          if (v55)
          {
            v56 = [v30 destinations];
            v57 = [v20 cloudKitAddress];
            v58 = [v56 setByAddingObject:v57];
            [v30 setDestinations:v58];

            v7 = v23;
          }

          v59 = [v20 preferredReachableAddress];

          if (v59)
          {
            v60 = [v30 destinations];
            v61 = [v20 preferredReachableAddress];
            v62 = [v60 setByAddingObject:v61];
            [v30 setDestinations:v62];

            v7 = v23;
          }

          v63 = [v20 addresses];

          if (v63)
          {
            v64 = [v30 destinations];
            v65 = [v20 addresses];
            v66 = [v64 setByAddingObjectsFromSet:v65];
            [v30 setDestinations:v66];

            v7 = v23;
          }

          v67 = [v20 systemFieldsOnlyRecord];
          v103 = [v67 recordID];

          if (!ASSecureCloudEnabled())
          {
            goto LABEL_49;
          }

          v68 = MEMORY[0x277CBEB98];
          v69 = [*(v19 + 40) allValues];
          v70 = [v68 setWithArray:v69];
          v71 = [v20 UUID];
          v72 = ASFindContactWithDestinationsOrIdentifierInContacts(v22, v70, v71);

          v7 = v23;
          v19 = v102;

          if (!v72)
          {
LABEL_49:
            v76 = [*(v19 + 56) objectForKeyedSubscript:v103];
            if (v76)
            {
              v72 = v76;
              ASLoggingInitialize();
              v77 = *v7;
              if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_56;
              }

              *buf = 0;
              v74 = v77;
              v75 = "Found existing contact from local store with matching recordID";
            }

            else
            {
              v78 = MEMORY[0x277CBEB98];
              v79 = [*(v19 + 56) allValues];
              v80 = [v78 setWithArray:v79];
              v81 = [v20 UUID];
              v72 = ASFindContactWithDestinationsOrIdentifierInContacts(v22, v80, v81);

              if (!v72)
              {
                v7 = v23;
                goto LABEL_60;
              }

              ASLoggingInitialize();
              v7 = v23;
              v82 = *v23;
              if (!os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_56;
              }

              *buf = 0;
              v74 = v82;
              v75 = "Found existing contact from local store with matching destination or identifier.";
            }

LABEL_55:
            _os_log_impl(&dword_23E5E3000, v74, OS_LOG_TYPE_DEFAULT, v75, buf, 2u);
            goto LABEL_56;
          }

          ASLoggingInitialize();
          v73 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v74 = v73;
            v75 = "Found contact from previous pass with different cloud type";
            goto LABEL_55;
          }

LABEL_56:
          ASLoggingInitialize();
          v83 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v83, OS_LOG_TYPE_DEFAULT, "RelationshipManager had previous existing contact for the relationship, putting back the relationship storage", buf, 2u);
          }

          v84 = [v72 relationshipStorage];
          [v30 setRelationshipStorage:v84];

          if (ASSecureCloudEnabled())
          {
            v85 = [v72 pendingRelationshipShareItem];
            [v30 setPendingRelationshipShareItem:v85];

            v86 = [v72 pendingLegacyShareLocations];
            [v30 setPendingLegacyShareLocations:v86];
          }

LABEL_60:
          if (ASSecureCloudEnabled())
          {
            v87 = v102;
            if ([v20 cloudType])
            {
              if ([v20 cloudType] == 1)
              {
                v88 = [v30 relationshipStorage];
                [v88 setSecureCloudRelationship:v20];
                goto LABEL_66;
              }
            }

            else
            {
              v88 = [v30 relationshipStorage];
              [v88 setLegacyRelationship:v20];
              v90 = [v88 storageWithSynchronizedRelationshipIdentifiers];
              [v30 setRelationshipStorage:v90];

              v87 = v102;
LABEL_66:
            }

            v91 = *(v87 + 48);
            v89 = _ASProcessedRelationshipIdentifier(v20);
            [v91 addObject:v89];
          }

          else
          {
            v89 = [v30 relationshipStorage];
            [v89 setLegacyRelationship:v20];
          }

          ASLoggingInitialize();
          v92 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v93 = v92;
            v94 = [v30 displayName];
            v95 = [v30 relationshipStorage];
            *buf = v100;
            v116 = v94;
            v117 = 2112;
            v118 = v95;
            _os_log_impl(&dword_23E5E3000, v93, OS_LOG_TYPE_DEFAULT, "RelationshipManager saving match to %@ with storage %@", buf, 0x16u);
          }

          v96 = *(v102 + 40);
          v97 = [v30 UUID];
          [v96 setObject:v30 forKeyedSubscript:v97];

          v19 = v102;
          [*(v102 + 32) removeObjectForKey:v103];

          v16 = v106;
          goto LABEL_71;
        }

        ASLoggingInitialize();
        v40 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v116 = v104;
          _os_log_impl(&dword_23E5E3000, v40, OS_LOG_TYPE_DEFAULT, "RelationshipManager reconcile didn't receive destinations, skipping this pass (%{public}@)", buf, 0xCu);
        }

LABEL_72:

        ++v18;
      }

      while (v16 != v18);
      v98 = [obj countByEnumeratingWithState:&v110 objects:v114 count:16];
      v16 = v98;
    }

    while (v98);
  }

  v99 = *MEMORY[0x277D85DE8];
}

uint64_t __ASReconcileRelationshipsAgainstAddressBook_block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestampForMostRecentRelationshipEvent];
  v6 = [v4 timestampForMostRecentRelationshipEvent];

  v7 = [v5 compare:v6];
  return v7;
}

id _ASProcessedRelationshipIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];
  [v2 cloudType];

  v5 = NSStringFromASCloudType();
  v6 = [v1 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_320(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 cloudKitAddress];
  if (v3)
  {
    v4 = [v2 cloudKitAddress];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_2_327(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 preferredReachableAddress];
  if (v3)
  {
    v4 = [v2 preferredReachableAddress];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 addresses];
  v3 = [v2 allObjects];

  return v3;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 cloudKitAddress];
  if (v3)
  {
    v4 = [v2 cloudKitAddress];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_5(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 preferredReachableAddress];
  if (v3)
  {
    v4 = [v2 preferredReachableAddress];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __ASReconcileRelationshipsAgainstAddressBook_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 addresses];
  v3 = [v2 allObjects];

  return v3;
}

id ASCompetitionEventsFromRelationship(void *a1)
{
  v1 = [a1 relationshipEvents];
  v2 = [v1 hk_filter:&__block_literal_global_353];

  return v2;
}

BOOL __ASCompetitionEventsFromRelationship_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 10 || objc_msgSend(v2, "type") == 105 || objc_msgSend(v2, "type") == 12 || objc_msgSend(v2, "type") == 11 || objc_msgSend(v2, "type") == 106 || objc_msgSend(v2, "type") == 14 || objc_msgSend(v2, "type") == 13;

  return v3;
}

uint64_t __ASFilterInvalidCloudKitRelationships_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 cloudType])
  {
    v4 = [v3 systemFieldsOnlyRecord];
    v5 = [v4 recordID];
    v6 = [v5 zoneID];
    v7 = +[ASCloudKitManager relationshipZone];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      ASLoggingInitialize();
      v14 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v3;
        v15 = "RelationshipManager filtering invalid legacy relationship %@";
        goto LABEL_10;
      }

LABEL_11:
      v16 = 0;
      goto LABEL_12;
    }
  }

  if ([v3 cloudType] == 1)
  {
    v9 = [v3 systemFieldsOnlyRecord];
    v10 = [v9 recordID];
    v11 = [v10 zoneID];
    v12 = +[ASCloudKitManager relationshipZone];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      ASLoggingInitialize();
      v14 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v3;
        v15 = "RelationshipManager filtering invalid secure cloud relationship %@";
LABEL_10:
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, v15, &v19, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  v16 = 1;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23E5F0398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E5F0984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void ASSendRichMessagePayloadToDestination(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = a1;
  v34 = a2;
  v35 = [MEMORY[0x277D18D68] sharedInstance];
  if (([v35 hasListenerForID:@"com.apple.ActivitySharingControl"] & 1) == 0)
  {
    [v35 addListenerID:@"com.apple.ActivitySharingControl" capabilities:*MEMORY[0x277D19358]];
  }

  [v35 blockUntilConnected];
  v38 = [MEMORY[0x277D18DE0] serviceWithName:@"iMessage"];
  if (!v38)
  {
    ASSendRichMessagePayloadToDestination_cold_4();
  }

  v3 = [MEMORY[0x277D18D28] sharedInstance];
  v4 = [v3 accountsForService:v38];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v6)
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = *v46;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v46 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v45 + 1) + 8 * v8);
    if ([v9 isActive])
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }
  }

  v33 = v9;

  if (!v33)
  {
LABEL_13:
    ASSendRichMessagePayloadToDestination_cold_3();
  }

  v39 = [v33 imHandleWithID:v34];
  if (!v39)
  {
    ASSendRichMessagePayloadToDestination_cold_2();
  }

  v10 = [MEMORY[0x277D18D40] sharedRegistry];
  v11 = [v10 existingChatWithHandle:v39];
  if (v11)
  {
  }

  else
  {
    v12 = [MEMORY[0x277D18D40] sharedRegistry];
    v11 = [v12 chatWithHandle:v39];

    if (!v11)
    {
      ASSendRichMessagePayloadToDestination_cold_1();
    }
  }

  v13 = *MEMORY[0x277D19720];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:0000000000:%@", *MEMORY[0x277D19720], *MEMORY[0x277CE9238]];
  v36 = objc_opt_new();
  v14 = *MEMORY[0x277D19D68];
  [v36 setObject:@"MSMessageLiveLayout" forKeyedSubscript:*MEMORY[0x277D19D68]];
  v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v36 requiringSecureCoding:1 error:0];
  v15 = objc_opt_new();
  [v15 setObject:@"MSMessageTemplateLayout" forKeyedSubscript:v14];
  [v15 setObject:v37 forKeyedSubscript:*MEMORY[0x277D19D88]];
  [v15 setObject:v32 forKeyedSubscript:*MEMORY[0x277D19D78]];
  [v15 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277D19D70]];
  v16 = ASMessageFromRichMessagePayload();
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D19D80]];

  v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  v18 = objc_alloc(MEMORY[0x277D18DA0]);
  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = [MEMORY[0x277CCACA8] stringGUID];
  v21 = [v18 initWithSender:0 time:v19 text:0 messageSubject:0 fileTransferGUIDs:0 flags:5 error:0 guid:v20 subject:0 balloonBundleID:v31 payloadData:v17 expressiveSendStyleID:0];

  if ([v11 joinState] != 3)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = [MEMORY[0x277CCABD8] mainQueue];
    v24 = *MEMORY[0x277D18CB8];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __ASSendRichMessagePayloadToDestination_block_invoke;
    v40[3] = &unk_278C4B938;
    v40[4] = &v41;
    v25 = [v22 addObserverForName:v24 object:0 queue:v23 usingBlock:v40];

    [v11 join];
    v26 = [MEMORY[0x277CBEB88] currentRunLoop];
    v27 = *MEMORY[0x277CBE640];
    do
    {
      if (*(v42 + 24) != 1)
      {
        break;
      }

      v28 = [MEMORY[0x277CBEAA8] distantFuture];
      v29 = [v26 runMode:v27 beforeDate:v28];
    }

    while ((v29 & 1) != 0);

    _Block_object_dispose(&v41, 8);
  }

  [v11 sendMessage:v21];

  v30 = *MEMORY[0x277D85DE8];
}

__CFString *ThreadIdentifierForBulletinType(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"com.apple.ActivityMonitorApp.challenges.thread";
  }

  else
  {
    return off_278C4B970[a1];
  }
}

id ExpirationDateForBulletinTypeAndPublishDate(unint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 <= 8)
  {
    if (((1 << a1) & 0x14E) != 0)
    {
      v4 = [MEMORY[0x277CBEA80] currentCalendar];
      v5 = [v4 hk_startOfDateByAddingDays:1 toDate:v3];

      v6 = [v3 dateByAddingTimeInterval:7200.0];
      a1 = HKDateMax();
      ASLoggingInitialize();
      v7 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = a1;
        _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Bulletin expiration date is %{public}@", &v11, 0xCu);
      }
    }

    else
    {
      ASLoggingInitialize();
      v8 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "No expiration date for bulletin", &v11, 2u);
      }

      a1 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return a1;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E5F3798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E5F38D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E5F7C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_23E5F8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_23E5F8A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_23E5F914C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_23E5FA47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id ASAllDatabaseCompetitionListEntryKeys()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"friend_uuid";
  v3[1] = @"type";
  v3[2] = @"system_fields";
  v3[3] = @"owner";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _TopPlaceholderContactInPlaceholderArray(void *a1)
{
  v1 = [a1 lastObject];
  v2 = [v1 contact];
  v3 = [v2 copy];

  return v3;
}

void sub_23E5FE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ASFindContactWithDestinationsInContacts(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
  v22 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v6 = *v29;
    v23 = v4;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = ASSanitizedContactDestination();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * j);
              v16 = [v15 destinations];
              v17 = [v16 containsObject:v9];

              if (v17)
              {
                v18 = v15;

                v4 = v23;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v4 = v23;
        v6 = v21;
      }

      v18 = 0;
      v22 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id _DestinationsForContactStoreContact(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB98] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [v1 phoneNumbers];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      v8 = v2;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v26 + 1) + 8 * v7) value];
        v10 = [v9 stringValue];
        v11 = ASSanitizedContactDestination();

        v2 = [v8 setByAddingObject:v11];

        ++v7;
        v8 = v2;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v1 emailAddresses];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      v17 = v2;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v22 + 1) + 8 * v16) value];
        v19 = ASSanitizedContactDestination();

        v2 = [v17 setByAddingObject:v19];

        ++v16;
        v17 = v2;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_23E5FF8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ASFindContactWithDestinationsOrIdentifierInContacts(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    v30 = v8;
    v31 = v6;
    v28 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = ASSanitizedContactDestination();
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = v6;
        v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v33;
          v29 = v10;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v32 + 1) + 8 * j);
              v21 = [v20 destinations];
              v22 = [v21 containsObject:v14];

              if ((v22 & 1) == 0)
              {
                v23 = [v20 UUID];
                v24 = [v23 isEqual:v7];

                if ((v24 & 1) == 0)
                {
                  continue;
                }
              }

              v25 = v20;

              v8 = v30;
              v6 = v31;
              goto LABEL_20;
            }

            v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
            v8 = v30;
            v6 = v31;
            v11 = v28;
            v10 = v29;
            if (v17)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      v25 = 0;
    }

    while (v10);
  }

  else
  {
    v25 = 0;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id _MapDataToChangeTokens(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___MapDataToChangeTokens_block_invoke;
  v6[3] = &unk_278C4C0E8;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

id _MapChangeTokensToData(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___MapChangeTokensToData_block_invoke;
  v6[3] = &unk_278C4C110;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _DictionaryKeyForDatabase(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "databaseScope")}];
  v2 = [v1 stringValue];

  return v2;
}

id _DictionaryKeyForRecordZoneID(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 zoneName];
  v4 = [v2 ownerName];

  v5 = [v1 stringWithFormat:@"%@%@", v3, v4];

  return v5;
}

id _ContactsCacheDirectoryPath()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = [*MEMORY[0x277CE91F0] stringByAppendingString:@"ContactsCache/"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  return v2;
}

id _ContactsCacheFilenames()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = _ContactsCacheDirectoryPath();
  v6 = 0;
  v3 = [v1 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:&v6];
  v4 = [v0 setWithArray:v3];

  return v4;
}

id _ContactCachePathForUUID(void *a1)
{
  v1 = [a1 UUIDString];
  v2 = [v1 stringByAppendingString:@".dat"];

  v3 = _ContactsCacheDirectoryPath();
  v4 = [v3 URLByAppendingPathComponent:v2];

  return v4;
}

uint64_t _CreateContactsCacheDirectory()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = _ContactsCacheDirectoryPath();
  v6 = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v6];
  v3 = v6;

  if ((v2 & 1) == 0)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      _CreateContactsCacheDirectory_cold_1(v4, v3);
    }
  }

  return v2;
}

id ASReadContactFromDiskCache(void *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v1 options:0 error:&v7];
  v3 = v7;
  if (v3)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      ASReadContactFromDiskCache_cold_1();
    }

    goto LABEL_4;
  }

  if (!v2)
  {
LABEL_4:
    v4 = 0;
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x277CE9068]) initWithData:v2];
  v4 = [MEMORY[0x277CE90E8] contactWithCodableContact:v5];

LABEL_7:

  return v4;
}

id ASReadContactsFromDiskCache()
{
  v0 = _ContactsCacheFilenames();
  v1 = [v0 as_autoreleasingCompactMap:&__block_literal_global_4];

  return v1;
}

uint64_t ASWriteContactToDiskCache(void *a1)
{
  v1 = a1;
  v2 = [v1 codableContactIncludingCloudKitFields:1];
  v3 = [v2 data];
  if (_CreateContactsCacheDirectory())
  {
    v4 = [v1 UUID];
    v5 = _ContactCachePathForUUID(v4);

    v9 = 0;
    v6 = [v3 writeToURL:v5 options:1073741825 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
      {
        ASWriteContactToDiskCache_cold_1();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ASWriteContactsToDiskCache(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = ASWriteContactToDiskCache(v6);
        objc_autoreleasePoolPop(v7);
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL ASDeleteContactsFromDiskCache()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = _ContactsCacheDirectoryPath();
  v24 = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:0 error:&v24];
  v3 = v24;
  if (v3)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      ASDeleteContactsFromDiskCache_cold_1(v4, v1, v3);
    }
  }

  else
  {
    v17 = v2;
    v18 = v1;
    v5 = [v2 hk_filter:&__block_literal_global_315_0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x277CE8FE8];
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v19 = 0;
          [v0 removeItemAtURL:v11 error:&v19];
          v12 = v19;
          ASLoggingInitialize();
          v13 = *v8;
          v14 = *v8;
          if (v12)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v26 = v11;
              v27 = 2112;
              v28 = v12;
              _os_log_error_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_ERROR, "Failed to delete cache file (%@): %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v11;
            _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Deleted contact at URL: %@", buf, 0xCu);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v7);
    }

    v2 = v17;
    v1 = v18;
    v3 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

uint64_t __ASDeleteContactsFromDiskCache_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"dat"];

  return v3;
}

void ASDeleteDeprecatedContactsCache()
{
  v0 = *MEMORY[0x277CE91F8];
  CFPreferencesSetAppValue(@"Contacts", 0, *MEMORY[0x277CE91F8]);
  CFPreferencesAppSynchronize(v0);
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:*MEMORY[0x277CE91F0] isDirectory:1];
  v3 = [v2 path];
  v4 = [v3 stringByAppendingPathComponent:@"contacts.dat"];
  v10 = 0;
  [v1 removeItemAtPath:v4 error:&v10];
  v5 = v10;

  v6 = [v2 path];
  v7 = [v6 stringByAppendingPathComponent:@"contacts2.dat"];
  v9 = v5;
  [v1 removeItemAtPath:v7 error:&v9];
  v8 = v9;
}

id CodableBulletinForFriends(void *a1)
{
  v1 = a1;
  v2 = ASCodableFriendListFromFriends();
  v3 = objc_alloc_init(MEMORY[0x277CE9048]);
  if ([v1 count] == 1)
  {
    v4 = [v1 anyObject];
    v5 = [v4 UUID];
    v6 = [v5 UUIDString];
    [v3 setFriendUUID:v6];
  }

  v7 = [v2 data];
  [v3 setFriendListData:v7];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];

  return v3;
}

id _TitleForFriendWorkout(void *a1)
{
  v1 = a1;
  v2 = ActivitySharingBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_TITLE_FORMAT_WORKOUT" value:&stru_2850E59E8 table:@"Localizable"];

  v4 = [v1 seymourMediaType];
  if ([v4 isEqualToString:@"guidedWalk"])
  {
  }

  else
  {
    v5 = [v1 seymourMediaType];
    v6 = [v5 isEqualToString:@"video"];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = ActivitySharingBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_TITLE_FORMAT_WORKOUT_VIDEO" value:&stru_2850E59E8 table:@"Localizable-seymour"];

  v3 = v8;
LABEL_5:
  if ([v1 workoutActivityType] == 84)
  {
    v9 = ActivitySharingBundle();
    v10 = [v9 localizedStringForKey:@"NOTIFICATION_TITLE_FORMAT_WORKOUT_UNDERWATER_DIVING" value:&stru_2850E59E8 table:@"Localizable"];

    v3 = v10;
  }

  return v3;
}

id CodableWorkoutBulletinForFriendWorkout(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 UUID];
    v8 = [v3 displayName];
    *buf = 138543874;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Creating workout bulletin for friend: %{public}@ - %@ with workout %@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v10 = CodableBulletinForFriends(v9);

  [v10 setType:2];
  v11 = _TitleForFriendWorkout(v4);
  v12 = MEMORY[0x277CCACA8];
  v13 = [v3 displayName];
  v14 = [v12 localizedStringWithFormat:v11, v13];
  [v10 setTitle:v14];

  v15 = [v4 codableWorkout];
  v16 = [v15 data];
  [v10 setWorkoutData:v16];

  v17 = [v3 currentCompetition];
  [v10 setCompetitionStage:{objc_msgSend(v17, "stage")}];

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

id CodableAchievementBulletinForFriendAchievement(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 UUID];
    v8 = [v3 displayName];
    *buf = 138543874;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Creating achievement bulletin for friend: %{public}@ - %@ with achievement %@", buf, 0x20u);
  }

  v9 = ACHCodableFromAchievement();
  v10 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v11 = CodableBulletinForFriends(v10);

  [v11 setType:3];
  v12 = MEMORY[0x277CCACA8];
  v13 = ActivitySharingBundle();
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_TITLE_FORMAT_ACHIEVEMENT" value:&stru_2850E59E8 table:@"Localizable"];
  v15 = [v3 displayName];
  v16 = [v12 localizedStringWithFormat:v14, v15];
  [v11 setTitle:v16];

  v17 = [v9 data];
  [v11 setAchievementData:v17];

  v18 = [v3 currentCompetition];
  [v11 setCompetitionStage:{objc_msgSend(v18, "stage")}];

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

id CodableGoalCompletionBulletinForFriendActivitySnapshot(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 UUID];
    v8 = [v3 displayName];
    *buf = 138543874;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Creating goal completion bulletin for friend: %{public}@ - %@ with snapshot %@", buf, 0x20u);
  }

  v9 = [v4 activitySummary];
  v10 = [v9 _isStandalonePhoneSummary];
  v11 = ActivitySharingBundle();
  v12 = v11;
  if (v10)
  {
    v13 = @"NOTIFICATION_TITLE_FORMAT_GOAL_COMPLETION_MOVE_ONLY";
  }

  else
  {
    v13 = @"NOTIFICATION_TITLE_FORMAT_GOAL_COMPLETION";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_2850E59E8 table:@"Localizable"];

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  v16 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v17 = CodableBulletinForFriends(v16);

  [v17 setType:1];
  v18 = MEMORY[0x277CCACA8];
  v19 = [v3 displayName];
  v20 = [v18 localizedStringWithFormat:v14, v19];
  [v17 setTitle:v20];

  [v17 setSnapshotData:v15];
  v21 = [v3 currentCompetition];
  [v17 setCompetitionStage:{objc_msgSend(v21, "stage")}];

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

id CodableCompetitionBulletinForFriendForTypeWithTitle(void *a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v7 UUID];
    v25 = 138544130;
    v26 = v12;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Creating competition bulletin for friend: %{public}@ - %@, title: %@, competition: %@", &v25, 0x2Au);
  }

  [v9 victoryBadgeStyle];
  v13 = [v7 UUID];
  v14 = ASEphemeralCompetitionVictoryAchievementForStyle();

  v15 = [v9 endDate];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "victoryBadgeStyle")}];
  v17 = ASEphemeralEarnedAchievement();

  v18 = ACHCodableFromAchievement();
  v19 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v20 = CodableBulletinForFriends(v19);

  [v20 setType:a2];
  [v20 setTitle:v8];
  v21 = [v18 data];
  [v20 setAchievementData:v21];

  v22 = [v7 currentCompetition];
  [v20 setCompetitionStage:{objc_msgSend(v22, "stage")}];

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

id CodableCompetitionRequestBulletinForFriend(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = ActivitySharingBundle();
  v7 = [v6 localizedStringForKey:@"BULLETIN_TITLE_COMPETITION_REQUEST" value:&stru_2850E59E8 table:@"Localizable"];
  v8 = [v5 displayName];
  v9 = [v3 stringWithFormat:v7, v8];

  v10 = CodableCompetitionBulletinForFriendForTypeWithTitle(v5, 5, v9, v4);

  return v10;
}

id CodableCompetitionAcceptedBulletinForFriend(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = ActivitySharingBundle();
  v7 = [v6 localizedStringForKey:@"BULLETIN_TITLE_COMPETITION_ACCEPTED" value:&stru_2850E59E8 table:@"Localizable"];
  v8 = [v5 displayName];
  v9 = [v3 stringWithFormat:v7, v8];

  v10 = CodableCompetitionBulletinForFriendForTypeWithTitle(v5, 6, v9, v4);

  return v10;
}

id CodableCompetitionEndedBulletinForFriend(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v3 isScoreTied])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = ActivitySharingBundle();
    v7 = v6;
    v8 = @"BULLETIN_TITLE_COMPETITION_ENDED_TIED";
  }

  else
  {
    v9 = [v3 isParticipantWinning:0];
    v5 = MEMORY[0x277CCACA8];
    v6 = ActivitySharingBundle();
    v7 = v6;
    if (v9)
    {
      v8 = @"BULLETIN_TITLE_COMPETITION_ENDED_WINNER";
    }

    else
    {
      v8 = @"BULLETIN_TITLE_COMPETITION_ENDED_LOSER";
    }
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_2850E59E8 table:@"Localizable"];
  v11 = [v4 displayName];
  v12 = [v5 stringWithFormat:v10, v11];

  v13 = CodableCompetitionBulletinForFriendForTypeWithTitle(v4, 7, v12, v3);

  return v13;
}

id CodableCompetitionScoreCapCelebrationBulletinForFriends(void *a1)
{
  v1 = a1;
  v2 = ActivitySharingBundle();
  v3 = [v2 localizedStringForKey:@"BULLETIN_TITLE_COMPETITION_SCORE_CAP_CELEBRATION" value:&stru_2850E59E8 table:@"Localizable"];

  v4 = CodableBulletinForFriends(v1);

  [v4 setType:8];
  [v4 setTitle:v3];
  [v4 setCompetitionStage:1];

  return v4;
}

id _SanitizedSuccessCompletion(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___SanitizedSuccessCompletion_block_invoke;
  v5[3] = &unk_278C4C178;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x23EF0EB00](v5);

  return v3;
}

id _SanitizedBoolCompletion(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___SanitizedBoolCompletion_block_invoke;
  v5[3] = &unk_278C4C1A0;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x23EF0EB00](v5);

  return v3;
}

id _SanitizedError(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x277CCA9B8];
    v4 = [v1 domain];
    v5 = [v3 errorWithDomain:v4 code:objc_msgSend(v2 userInfo:{"code"), 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL ASAllGoalsMetForSummary(void *a1)
{
  v1 = a1;
  v2 = [v1 activeEnergyBurned];
  v3 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  v6 = [v1 activeEnergyBurnedGoal];
  v7 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v6 doubleValueForUnit:v7];
  v9 = v8;

  v10 = [v1 appleMoveTime];
  v11 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v10 doubleValueForUnit:v11];
  v13 = v12;

  v14 = [v1 appleMoveTimeGoal];
  v15 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v14 doubleValueForUnit:v15];
  v17 = v9 + v16;

  v18 = [v1 appleExerciseTime];
  v19 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v18 doubleValueForUnit:v19];
  v21 = v20;

  v22 = [v1 appleExerciseTimeGoal];
  v23 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v22 doubleValueForUnit:v23];
  v25 = v24;

  v26 = [v1 appleStandHours];
  v27 = [MEMORY[0x277CCDAB0] countUnit];
  [v26 doubleValueForUnit:v27];
  v29 = v28;

  v30 = [v1 appleStandHoursGoal];

  v31 = [MEMORY[0x277CCDAB0] countUnit];
  [v30 doubleValueForUnit:v31];
  v33 = v32;

  result = 0;
  if (v17 > 0.0 && v25 > 0.0 && v33 >= 1)
  {
    v35 = v5 + v13 >= v17;
    if (v21 < v25)
    {
      v35 = 0;
    }

    return v29 >= v33 && v35;
  }

  return result;
}

void sub_23E6063F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E607400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 256), 8);
  _Block_object_dispose((v67 - 208), 8);
  _Block_object_dispose((v67 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_23E609034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E60A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v74 + 32));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak((v75 + 32));
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&a69);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak((v76 - 200));
  objc_destroyWeak((v76 - 160));
  objc_destroyWeak((v76 - 120));
  objc_destroyWeak((v76 - 112));
  _Unwind_Resume(a1);
}

NSString *ASDatabaseServerTaskIdentifier()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

id ASDatabaseServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850FFCD8];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_remote_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_completion_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_remote_insertDataObjects_completion_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_remote_allCodableDatabaseCompetitionsWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_remote_saveCodableDatabaseCompetitions_completion_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_remote_allCodableDatabaseCompetitionListEntriesWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_23E60D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E60EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E60F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

void sub_23E614010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ASCloudKitShareParticipantsAreEqual(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userIdentity];
  v5 = [v3 userIdentity];

  v6 = [v4 isEquivalentToUserIdentityOrPublicKey:v5];
  return v6;
}

id _MetadataZoneID()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:*MEMORY[0x277CE8EE0] ownerName:*MEMORY[0x277CBBF28]];

  return v1;
}

id _CreateSubscription(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CBC2A0];
  v7 = a2;
  v8 = [[v6 alloc] initWithSubscriptionID:v5];
  [v8 setRecordType:v7];

  v9 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  v10 = v9;
  if (a3)
  {
    [v9 setAlertBody:v5];
  }

  else
  {
    [v9 setShouldSendContentAvailable:1];
  }

  [v8 setNotificationInfo:v10];

  return v8;
}

id _CreateZoneSubscription(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = _MetadataZoneID();
  v6 = [objc_alloc(MEMORY[0x277CBC618]) initWithZoneID:v5 subscriptionID:v4];
  v7 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  v8 = v7;
  if (a3)
  {
    [v7 setAlertBody:v4];
  }

  else
  {
    [v7 setShouldSendContentAvailable:1];
  }

  [v6 setNotificationInfo:v8];

  return v6;
}

void sub_23E615690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 reason];
      __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_1(v15, &buf, v14);
    }

    objc_end_catch();
    JUMPOUT(0x23E6153B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E61683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose((v64 - 248), 8);
  _Block_object_dispose((v64 - 200), 8);
  _Block_object_dispose((v64 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E619EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E61AF7C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23E61B9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, v4, 0xCu);
}

uint64_t ASRemoveAllActivitySharingUserDefaults()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = *MEMORY[0x277CE91F8];
  v2 = [v0 initWithSuiteName:*MEMORY[0x277CE91F8]];
  [v2 removePersistentDomainForName:v1];
  v3 = [v2 synchronize];

  return v3;
}

void sub_23E6213D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v9 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23E62CCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E631320(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23E631EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E636698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E63D9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

id ASCompetitionPredicateForFriendUUIDAndType(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"friend_uuid" equalToValue:a1];
  v4 = MEMORY[0x277D10B18];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v6 = [v4 predicateWithProperty:@"competition_type" equalToValue:v5];

  v7 = MEMORY[0x277D10B20];
  v12[0] = v3;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id ASAllDatabaseCompetitionKeys()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = @"friend_uuid";
  v3[1] = @"competition_uuid";
  v3[2] = @"competition_type";
  v3[3] = @"current_cache_index";
  v3[4] = @"last_pushed_cache_index";
  v3[5] = @"scores";
  v3[6] = @"opponent_scores";
  v3[7] = @"start_date_components";
  v3[8] = @"duration_date_components";
  v3[9] = @"preferred_victory_badge_styles";
  v3[10] = @"maximum_points_per_day";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void *_LoadValueFromDefaultsWithFallback(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 valueForKey:a2];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

id _FriendUUIDFromDefaults(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [v1 UUID];
  v4 = [v3 UUIDString];
  v5 = _LoadValueFromDefaultsWithFallback(v2, @"fakeFriendUUID", v4);

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

  return v6;
}

void sub_23E643A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ActivitySharingDefaults()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CE91F8]];
  [v1 synchronize];

  return v1;
}

id ASCloudKitGroupInitialSetup()
{
  if (ASCloudKitGroupInitialSetup_onceToken != -1)
  {
    ASCloudKitGroupInitialSetup_cold_1();
  }

  v1 = ASCloudKitGroupInitialSetup___group;

  return v1;
}

uint64_t __ASCloudKitGroupInitialSetup_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupInitialSetup___group;
  ASCloudKitGroupInitialSetup___group = v0;

  v2 = ASCloudKitGroupInitialSetup___group;

  return [v2 setName:@"InitialSetup"];
}

id ASCloudKitGroupInitialDownload()
{
  if (ASCloudKitGroupInitialDownload_onceToken != -1)
  {
    ASCloudKitGroupInitialDownload_cold_1();
  }

  v1 = ASCloudKitGroupInitialDownload___group;

  return v1;
}

uint64_t __ASCloudKitGroupInitialDownload_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupInitialDownload___group;
  ASCloudKitGroupInitialDownload___group = v0;

  v2 = ASCloudKitGroupInitialDownload___group;

  return [v2 setName:@"InitialDownload"];
}

id ASCloudKitGroupCoreDuetTriggered()
{
  if (ASCloudKitGroupCoreDuetTriggered_onceToken != -1)
  {
    ASCloudKitGroupCoreDuetTriggered_cold_1();
  }

  v1 = ASCloudKitGroupCoreDuetTriggered___group;

  return v1;
}

uint64_t __ASCloudKitGroupCoreDuetTriggered_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupCoreDuetTriggered___group;
  ASCloudKitGroupCoreDuetTriggered___group = v0;

  v2 = ASCloudKitGroupCoreDuetTriggered___group;

  return [v2 setName:@"CoreDuetTriggered"];
}

id ASCloudKitGroupPushTriggered()
{
  if (ASCloudKitGroupPushTriggered_onceToken != -1)
  {
    ASCloudKitGroupPushTriggered_cold_1();
  }

  v1 = ASCloudKitGroupPushTriggered___group;

  return v1;
}

uint64_t __ASCloudKitGroupPushTriggered_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupPushTriggered___group;
  ASCloudKitGroupPushTriggered___group = v0;

  v2 = ASCloudKitGroupPushTriggered___group;

  return [v2 setName:@"PushTriggered"];
}

id ASCloudKitGroupUserActionExplicit()
{
  if (ASCloudKitGroupUserActionExplicit_onceToken != -1)
  {
    ASCloudKitGroupUserActionExplicit_cold_1();
  }

  v1 = ASCloudKitGroupUserActionExplicit___group;

  return v1;
}

uint64_t __ASCloudKitGroupUserActionExplicit_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupUserActionExplicit___group;
  ASCloudKitGroupUserActionExplicit___group = v0;

  v2 = ASCloudKitGroupUserActionExplicit___group;

  return [v2 setName:@"UserActionExplicit"];
}

id ASCloudKitGroupUserActionImplicit()
{
  if (ASCloudKitGroupUserActionImplicit_onceToken != -1)
  {
    ASCloudKitGroupUserActionImplicit_cold_1();
  }

  v1 = ASCloudKitGroupUserActionImplicit___group;

  return v1;
}

uint64_t __ASCloudKitGroupUserActionImplicit_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupUserActionImplicit___group;
  ASCloudKitGroupUserActionImplicit___group = v0;

  v2 = ASCloudKitGroupUserActionImplicit___group;

  return [v2 setName:@"UserActionImplicit"];
}

id ASCloudKitGroupSharingSetup()
{
  if (ASCloudKitGroupSharingSetup_onceToken != -1)
  {
    ASCloudKitGroupSharingSetup_cold_1();
  }

  v1 = ASCloudKitGroupSharingSetup___group;

  return v1;
}

uint64_t __ASCloudKitGroupSharingSetup_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupSharingSetup___group;
  ASCloudKitGroupSharingSetup___group = v0;

  v2 = ASCloudKitGroupSharingSetup___group;

  return [v2 setName:@"SharingSetup"];
}

id ASCloudKitGroupManateeInvitation()
{
  if (ASCloudKitGroupManateeInvitation_onceToken != -1)
  {
    ASCloudKitGroupManateeInvitation_cold_1();
  }

  v1 = ASCloudKitGroupManateeInvitation___group;

  return v1;
}

uint64_t __ASCloudKitGroupManateeInvitation_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupManateeInvitation___group;
  ASCloudKitGroupManateeInvitation___group = v0;

  v2 = ASCloudKitGroupManateeInvitation___group;

  return [v2 setName:@"ManateeInvitation"];
}

id ASCloudKitGroupManateeAddContainer()
{
  if (ASCloudKitGroupManateeAddContainer_onceToken != -1)
  {
    ASCloudKitGroupManateeAddContainer_cold_1();
  }

  v1 = ASCloudKitGroupManateeAddContainer___group;

  return v1;
}

uint64_t __ASCloudKitGroupManateeAddContainer_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupManateeAddContainer___group;
  ASCloudKitGroupManateeAddContainer___group = v0;

  v2 = ASCloudKitGroupManateeAddContainer___group;

  return [v2 setName:@"ManateeAddContainer"];
}

id ASCloudKitGroupManateeMigrate()
{
  if (ASCloudKitGroupManateeMigrate_onceToken != -1)
  {
    ASCloudKitGroupManateeMigrate_cold_1();
  }

  v1 = ASCloudKitGroupManateeMigrate___group;

  return v1;
}

uint64_t __ASCloudKitGroupManateeMigrate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupManateeMigrate___group;
  ASCloudKitGroupManateeMigrate___group = v0;

  v2 = ASCloudKitGroupManateeMigrate___group;

  return [v2 setName:@"ManateeMigrate"];
}

id ASCloudKitGroupManateeDowngrade()
{
  if (ASCloudKitGroupManateeDowngrade_onceToken != -1)
  {
    ASCloudKitGroupManateeDowngrade_cold_1();
  }

  v1 = ASCloudKitGroupManateeDowngrade___group;

  return v1;
}

uint64_t __ASCloudKitGroupManateeDowngrade_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupManateeDowngrade___group;
  ASCloudKitGroupManateeDowngrade___group = v0;

  v2 = ASCloudKitGroupManateeDowngrade___group;

  return [v2 setName:@"ManateeDowngrade"];
}

id ASCloudKitGroupManateeRepair()
{
  if (ASCloudKitGroupManateeRepair_onceToken != -1)
  {
    ASCloudKitGroupManateeRepair_cold_1();
  }

  v1 = ASCloudKitGroupManateeRepair___group;

  return v1;
}

uint64_t __ASCloudKitGroupManateeRepair_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v1 = ASCloudKitGroupManateeRepair___group;
  ASCloudKitGroupManateeRepair___group = v0;

  v2 = ASCloudKitGroupManateeRepair___group;

  return [v2 setName:@"ManateeRepair"];
}

void sub_23E645584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _NotifyOnMainQueue(char a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___NotifyOnMainQueue_block_invoke;
    block[3] = &unk_278C4BD38;
    v10 = v6;
    v11 = a1;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23E651060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E651C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 248), 8);
  _Block_object_dispose((v58 - 200), 8);
  _Block_object_dispose((v58 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_23E65465C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _IsRelationshipTransitioningToInactive(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 isFriendshipActive];
  v5 = [v3 isFriendshipActive];

  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9008];
  if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_DEBUG))
  {
    _IsRelationshipTransitioningToInactive_cold_1(v4, v5, v6);
  }

  return v4 & (v5 ^ 1u);
}

id _DeviceBuildNumber()
{
  if (_DeviceBuildNumber_onceToken != -1)
  {
    _DeviceBuildNumber_cold_1();
  }

  v1 = _DeviceBuildNumber_buildNumber;

  return v1;
}

uint64_t OUTLINED_FUNCTION_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id _ASOperationConfigurationForPriority(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBC4F0];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setAutomaticallyRetryNetworkFailures:0];
  [v5 setXpcActivity:v4];

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_5;
    }

    a1 = 0;
  }

  [v5 setDiscretionaryNetworkBehavior:a1];
LABEL_5:

  return v5;
}

void sub_23E658A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E658F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E659634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ASRecordIDsForRecords(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = MEMORY[0x277CBEBF8];
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = [*(*(&v11 + 1) + 8 * v6) recordID];
        v5 = [v7 arrayByAddingObject:v8];

        ++v6;
        v7 = v5;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_23E65B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak((v43 - 176));
  _Unwind_Resume(a1);
}

void sub_23E65C394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 184));
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void ASRelationshipForRecords_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error de-serializing relationships: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ASAllRelationshipsByRecordIDForCloudType_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "RelationshipManager received invalid cloud type for relationships by recordID", buf, 2u);
}

void __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "RelationshipManager relationship %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "RelationshipManager conflicts with %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "RelationshipManger resolved to the newest relationship: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ASResolveDuplicateRelationshipByCloudKitAddress_block_invoke_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEBUG, "RelationshipManager found relationship that didn't have a cloudKit address, not checking for duplicates: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __ASReconcileRelationshipsAgainstAddressBook_block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "RelationshipManager not matching to avoid clobbering", buf, 2u);
}

void _CreateContactsCacheDirectory_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = _ContactsCacheDirectoryPath();
  OUTLINED_FUNCTION_0_2();
  v7 = a2;
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "Error creating cache directory (%@): %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void ASReadContactFromDiskCache_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error reading from file (%@): %@");
  v2 = *MEMORY[0x277D85DE8];
}

void ASWriteContactToDiskCache_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, v0, v1, "Error writing to file (%@): %@");
  v2 = *MEMORY[0x277D85DE8];
}

void ASDeleteContactsFromDiskCache_cold_1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  OUTLINED_FUNCTION_0_2();
  v9 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "Error reading all files at (%@): %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void _IsRelationshipTransitioningToInactive_cold_1(char a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_23E5E3000, log, OS_LOG_TYPE_DEBUG, "RelationshipManager wasPreviouslyActive=%d, isCurrentlyActive=%d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}