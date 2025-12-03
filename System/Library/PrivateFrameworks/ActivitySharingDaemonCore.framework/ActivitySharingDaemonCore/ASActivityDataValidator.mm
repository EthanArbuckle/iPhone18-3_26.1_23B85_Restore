@interface ASActivityDataValidator
+ (id)_copyAchievement:(id)achievement;
+ (id)_shiftedAchievements:(id)achievements friendTimeZones:(id)zones friendListManager:(id)manager;
+ (id)_unhiddenSamplesInFilterableSamples:(id)samples friendTimeZones:(id)zones friendListManager:(id)manager isInvitationData:(BOOL)data;
+ (id)validatedSamplesFromAchievements:(id)achievements workouts:(id)workouts activitySnapshots:(id)snapshots friendListManager:(id)manager isInvitationData:(BOOL)data;
@end

@implementation ASActivityDataValidator

+ (id)validatedSamplesFromAchievements:(id)achievements workouts:(id)workouts activitySnapshots:(id)snapshots friendListManager:(id)manager isInvitationData:(BOOL)data
{
  dataCopy = data;
  v101 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v10 = MEMORY[0x277CBEBF8];
  if (workouts)
  {
    workoutsCopy = workouts;
  }

  else
  {
    workoutsCopy = MEMORY[0x277CBEBF8];
  }

  v64 = workoutsCopy;
  snapshotsCopy = snapshots;
  achievementsCopy = achievements;
  if (snapshotsCopy)
  {
    v14 = snapshotsCopy;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  if (achievementsCopy)
  {
    v16 = achievementsCopy;
  }

  else
  {
    v16 = v10;
  }

  v63 = v16;

  v17 = v15;
  v18 = [MEMORY[0x277CBEB98] set];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v83 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v84;
    do
    {
      v23 = 0;
      v24 = v18;
      do
      {
        if (*v84 != v22)
        {
          objc_enumerationMutation(v19);
        }

        friendUUID = [*(*(&v83 + 1) + 8 * v23) friendUUID];
        v18 = [v24 setByAddingObject:friendUUID];

        ++v23;
        v24 = v18;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v83 objects:buf count:16];
    }

    while (v21);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v18;
  v26 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v80;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v80 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v79 + 1) + 8 * i);
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = ___FriendTimeZonesFromNewActivitySnapshots_block_invoke;
        v78[3] = &unk_278C4B890;
        v78[4] = v30;
        v31 = [MEMORY[0x277CCAC30] predicateWithBlock:v78];
        v32 = [v19 filteredArrayUsingPredicate:v31];

        v33 = _HKMostRecentActivitySnapshotInSnapshots();
        timeZone = [v33 timeZone];
        if (timeZone)
        {
          [dictionary setObject:timeZone forKeyedSubscript:v30];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v27);
  }

  v35 = [self _removeInvalidWorkouts:v64];

  v36 = [self _shiftedAchievements:v63 friendTimeZones:dictionary friendListManager:managerCopy];

  obja = [v19 count];
  v37 = [v35 count];
  v38 = [v36 count];
  v39 = [self _unhiddenSamplesInFilterableSamples:v19 friendTimeZones:dictionary friendListManager:managerCopy isInvitationData:dataCopy];

  v40 = [self _unhiddenSamplesInFilterableSamples:v35 friendTimeZones:dictionary friendListManager:managerCopy isInvitationData:dataCopy];

  v41 = v40;
  v42 = [self _unhiddenSamplesInFilterableSamples:v36 friendTimeZones:dictionary friendListManager:managerCopy isInvitationData:dataCopy];

  ASLoggingInitialize();
  v43 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v44 = v43;
    v45 = obja - [v39 count];
    v46 = v37 - [v41 count];
    v47 = [v42 count];
    *buf = 134219264;
    v90 = v45;
    v91 = 2048;
    v92 = obja;
    v93 = 2048;
    v94 = v46;
    v95 = 2048;
    v96 = v37;
    v97 = 2048;
    v98 = v38 - v47;
    v99 = 2048;
    v100 = v38;
    _os_log_impl(&dword_23E5E3000, v44, OS_LOG_TYPE_DEFAULT, "Filtered hidden data: %lu/%lu snapshots, %lu/%lu workouts, %lu/%lu achievements.", buf, 0x3Eu);
  }

  v65 = v42;
  v67 = v41;
  v48 = [v41 arrayByAddingObjectsFromArray:v42];
  v69 = v39;
  v49 = [v48 arrayByAddingObjectsFromArray:v39];

  ASLoggingInitialize();
  v50 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v50, OS_LOG_TYPE_DEFAULT, "Validated samples:", buf, 2u);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v51 = v49;
  v52 = [v51 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v75;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v75 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v74 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          ASLoggingInitialize();
          v57 = *MEMORY[0x277CE8FC8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
          {
            v58 = v57;
            filter_friendUUID = [v56 filter_friendUUID];
            filter_description = [v56 filter_description];
            *buf = 138412546;
            v90 = filter_friendUUID;
            v91 = 2112;
            v92 = filter_description;
            _os_log_impl(&dword_23E5E3000, v58, OS_LOG_TYPE_DEFAULT, "%@ -> %@", buf, 0x16u);
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v53);
  }

  v61 = *MEMORY[0x277D85DE8];

  return v51;
}

BOOL __50__ASActivityDataValidator__removeInvalidWorkouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD8D8];
  v3 = a2;
  v4 = [v2 workoutType];
  [v4 maximumAllowedDuration];
  v6 = v5;
  [v3 duration];
  v8 = v7;

  return v6 > v8;
}

+ (id)_shiftedAchievements:(id)achievements friendTimeZones:(id)zones friendListManager:(id)manager
{
  zonesCopy = zones;
  managerCopy = manager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__ASActivityDataValidator__shiftedAchievements_friendTimeZones_friendListManager___block_invoke;
  v14[3] = &unk_278C4B840;
  v15 = zonesCopy;
  v16 = managerCopy;
  selfCopy = self;
  v10 = managerCopy;
  v11 = zonesCopy;
  v12 = [achievements hk_map:v14];

  return v12;
}

id __82__ASActivityDataValidator__shiftedAchievements_friendTimeZones_friendListManager___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 friendUUID];
  v5 = [a1[4] objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1[5] friendWithUUID:v4];
    v7 = [v8 timeZone];
  }

  v9 = [v7 secondsFromGMT];
  v10 = [MEMORY[0x277CBEBB0] localTimeZone];
  v11 = [v10 secondsFromGMT];

  v12 = [a1[6] _copyAchievement:v3];
  v13 = [v3 completedDate];

  v14 = [v13 dateByAddingTimeInterval:(v9 - v11)];
  [v12 setCompletedDate:v14];

  return v12;
}

+ (id)_unhiddenSamplesInFilterableSamples:(id)samples friendTimeZones:(id)zones friendListManager:(id)manager isInvitationData:(BOOL)data
{
  zonesCopy = zones;
  managerCopy = manager;
  v11 = MEMORY[0x277CBEA80];
  samplesCopy = samples;
  hk_gregorianCalendar = [v11 hk_gregorianCalendar];
  v14 = MEMORY[0x277CCAC30];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __114__ASActivityDataValidator__unhiddenSamplesInFilterableSamples_friendTimeZones_friendListManager_isInvitationData___block_invoke;
  v24 = &unk_278C4B868;
  v25 = managerCopy;
  v26 = hk_gregorianCalendar;
  v27 = zonesCopy;
  dataCopy = data;
  v15 = zonesCopy;
  v16 = hk_gregorianCalendar;
  v17 = managerCopy;
  v18 = [v14 predicateWithBlock:&v21];
  v19 = [samplesCopy filteredArrayUsingPredicate:{v18, v21, v22, v23, v24}];

  return v19;
}

uint64_t __114__ASActivityDataValidator__unhiddenSamplesInFilterableSamples_friendTimeZones_friendListManager_isInvitationData___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 filter_friendUUID];
  v5 = [v3 filter_date];

  v6 = [*(a1 + 32) friendWithUUID:v4];
  v7 = [v6 isActivityDataVisibleToMeForDate:v5];
  v8 = [v6 isHidingActivityDataFromMeForDate:v5];
  v9 = *(a1 + 48);
  v10 = [v6 UUID];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = (a1 + 40);
    [*(a1 + 40) setTimeZone:v11];
  }

  else
  {
    v13 = [v6 timeZone];
    v12 = (a1 + 40);
    [*(a1 + 40) setTimeZone:v13];
  }

  v14 = *v12;
  v15 = v5;
  v16 = v14;
  v17 = [v6 dateActivityDataInitiallyBecameVisibleToMe];
  if (v17)
  {
    v18 = [v16 startOfDayForDate:v17];
    v19 = [v15 hk_isAfterOrEqualToDate:v18];
  }

  else
  {
    v19 = 0;
  }

  if ((v7 | v8) & 1) != 0 || (v19)
  {
    if (!(v7 & 1 | (((v7 | v8) & 1) == 0)))
    {
      goto LABEL_10;
    }

LABEL_23:
    v31 = 1;
    goto LABEL_24;
  }

  if (*(a1 + 56))
  {
    goto LABEL_23;
  }

LABEL_10:
  v34 = v19;
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE8FC8];
  v21 = *MEMORY[0x277CE8FC8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC8], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v6 contact];
    v24 = [v23 fullName];
    *buf = 138543618;
    v36 = v4;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Not allowing sample for friend %{public}@ - %@", buf, 0x16u);
  }

  ASLoggingInitialize();
  v25 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Sample date: %{public}@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v26 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = v7;
    _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "Activity data visible: %d", buf, 8u);
  }

  ASLoggingInitialize();
  v27 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = v8;
    _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Explicitly hiding: %d", buf, 8u);
  }

  ASLoggingInitialize();
  v28 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 56);
    *buf = 67109120;
    LODWORD(v36) = v29;
    _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Invitation data: %d", buf, 8u);
  }

  ASLoggingInitialize();
  v30 = *v20;
  v31 = 0;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = v34;
    _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "Is on same day as friendship began: %d", buf, 8u);
    v31 = 0;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (id)_copyAchievement:(id)achievement
{
  v3 = MEMORY[0x277CCDDC0];
  achievementCopy = achievement;
  templateUniqueName = [achievementCopy templateUniqueName];
  completedDate = [achievementCopy completedDate];
  value = [achievementCopy value];
  friendUUID = [achievementCopy friendUUID];
  v9 = [v3 achievementWithTemplateUniqueName:templateUniqueName completedDate:completedDate value:value friendUUID:friendUUID];

  uUID = [achievementCopy UUID];

  v11 = [uUID copy];
  [v9 _setUUID:v11];

  return v9;
}

@end