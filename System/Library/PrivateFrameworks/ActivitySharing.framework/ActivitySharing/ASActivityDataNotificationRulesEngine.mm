@interface ASActivityDataNotificationRulesEngine
- (id)_filterNotificationGroup:(id)group ruleset:(id *)ruleset;
- (id)filterNotificationGroup:(id)group;
@end

@implementation ASActivityDataNotificationRulesEngine

- (id)filterNotificationGroup:(id)group
{
  groupCopy = group;
  v12 = ASStandardNotificationRuleset;
  v13 = unk_27E345FD0;
  v5 = [(ASActivityDataNotificationRulesEngine *)self _filterNotificationGroup:groupCopy ruleset:&v12];
  allNotifications = [v5 allNotifications];
  v7 = [allNotifications count];
  v8 = ASStrictNotificationThreshold;

  if (v7 >= v8)
  {
    v12 = ASStrictNotificationRuleset;
    v13 = unk_27E345FF0;
    v9 = [(ASActivityDataNotificationRulesEngine *)self _filterNotificationGroup:groupCopy ruleset:&v12];
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v10;
}

- (id)_filterNotificationGroup:(id)group ruleset:(id *)ruleset
{
  v83 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [MEMORY[0x277CBEB98] set];
  v60 = [MEMORY[0x277CBEB98] set];
  v54 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v57 = groupCopy;
  allNotifications = [groupCopy allNotifications];
  v8 = [allNotifications countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v74;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(allNotifications);
        }

        v12 = *(*(&v73 + 1) + 8 * i);
        friend = [v12 friend];

        if (friend)
        {
          friend2 = [v12 friend];
          v15 = [v6 setByAddingObject:friend2];

          v6 = v15;
        }
      }

      v9 = [allNotifications countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v9);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v6;
  v16 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v70;
    v53 = *v70;
    do
    {
      v19 = 0;
      v55 = v17;
      do
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v69 + 1) + 8 * v19);
        ASLoggingInitialize();
        v21 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          uUID = [v20 UUID];
          *buf = 138543618;
          v78 = uUID;
          v79 = 2112;
          v80 = v20;
          _os_log_impl(&dword_23E4FA000, v22, OS_LOG_TYPE_DEFAULT, "Collecting notifications for friend %{public}@ - %@", buf, 0x16u);
        }

        if ([v20 isMuted])
        {
          ASLoggingInitialize();
          v24 = ASLogNotifications;
          if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E4FA000, v24, OS_LOG_TYPE_DEFAULT, "Contact is muted, not allowing any notifications", buf, 2u);
          }
        }

        else
        {
          workoutNotifications = [v57 workoutNotifications];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v26 = *&ruleset->var2;
          v67 = *&ruleset->var0;
          v66[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke;
          v66[3] = &unk_278C46B18;
          v66[4] = v20;
          v68 = v26;
          v27 = [MEMORY[0x277CCAC30] predicateWithBlock:v66];
          v28 = [workoutNotifications filteredSetUsingPredicate:v27];

          v58 = [v5 setByAddingObjectsFromSet:v28];

          achievementNotifications = [v57 achievementNotifications];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v30 = *&ruleset->var2;
          v64 = *&ruleset->var0;
          v63[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_295;
          v63[3] = &unk_278C46B18;
          v63[4] = v20;
          v65 = v30;
          v31 = [MEMORY[0x277CCAC30] predicateWithBlock:v63];
          v32 = [achievementNotifications filteredSetUsingPredicate:v31];

          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_297;
          v62[3] = &unk_278C46B40;
          v62[4] = v20;
          v33 = [v32 hk_filter:v62];
          var2 = ruleset->var2;
          v35 = [v33 count];
          if (var2 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = var2;
          }

          v37 = MEMORY[0x277CBEB98];
          allObjects = [v33 allObjects];
          v39 = [allObjects subarrayWithRange:{0, v36}];
          v40 = [v37 setWithArray:v39];

          v41 = [v60 setByAddingObjectsFromSet:v40];

          if ([v28 count])
          {
            v42 = 0;
          }

          else
          {
            v42 = [v40 count] == 0;
          }

          var3 = ruleset->var3;
          ASLoggingInitialize();
          v44 = ASLogNotifications;
          v45 = os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT);
          if (!var3 || v42)
          {
            if (v45)
            {
              *buf = 0;
              _os_log_impl(&dword_23E4FA000, v44, OS_LOG_TYPE_DEFAULT, "Goal completions allowed, collecting", buf, 2u);
            }

            goalCompletionNotifications = [v57 goalCompletionNotifications];
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_299;
            v61[3] = &unk_278C46B68;
            v61[4] = v20;
            v47 = [MEMORY[0x277CCAC30] predicateWithBlock:v61];
            v48 = [goalCompletionNotifications filteredSetUsingPredicate:v47];

            v49 = [v54 setByAddingObjectsFromSet:v48];

            v54 = v49;
          }

          else if (v45)
          {
            *buf = 0;
            _os_log_impl(&dword_23E4FA000, v44, OS_LOG_TYPE_DEFAULT, "Goal completions not allowed, skipping", buf, 2u);
          }

          v17 = v55;

          v60 = v41;
          v5 = v58;
          v18 = v53;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v17);
  }

  v50 = objc_alloc_init(ASActivityDataNotificationGroup);
  [(ASActivityDataNotificationGroup *)v50 setGoalCompletionNotifications:v54];
  [(ASActivityDataNotificationGroup *)v50 setWorkoutNotifications:v5];
  [(ASActivityDataNotificationGroup *)v50 setAchievementNotifications:v60];

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize();
    v9 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = v8;
      _os_log_impl(&dword_23E4FA000, v9, OS_LOG_TYPE_DEFAULT, "Evaluating workout: %@", &v32, 0xCu);
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v8 endDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;
    v14 = *(a1 + 40);

    if (v13 <= v14)
    {
      v18 = [v8 endDate];
      IsNotificationEventDateBeforeRelationshipBeganWithFriend = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v18, *(a1 + 32));

      if (IsNotificationEventDateBeforeRelationshipBeganWithFriend)
      {
        ASLoggingInitialize();
        v15 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          v16 = "Workout completed prior to the relationship starting, skipping";
          goto LABEL_17;
        }
      }

      else
      {
        v20 = [v8 endDate];
        v21 = *(a1 + 32);
        v22 = MEMORY[0x277CBEA80];
        v23 = v21;
        v24 = [v22 hk_gregorianCalendar];
        v25 = [v23 timeZone];
        [v24 setTimeZone:v25];

        v26 = [v23 currentDateComponents];

        v27 = [v24 dateFromComponents:v26];
        ASLoggingInitialize();
        v28 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = v27;
          _os_log_impl(&dword_23E4FA000, v28, OS_LOG_TYPE_DEFAULT, "Friend current date: %@", &v32, 0xCu);
        }

        v29 = [v24 isDate:v20 inSameDayAsDate:v27];

        if (v29)
        {
          v17 = 1;
LABEL_19:

          goto LABEL_20;
        }

        ASLoggingInitialize();
        v15 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          v16 = "Workout is not in the current day for friend, skipping";
          goto LABEL_17;
        }
      }
    }

    else
    {
      ASLoggingInitialize();
      v15 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        v16 = "Workout is too old, skipping";
LABEL_17:
        _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, v16, &v32, 2u);
      }
    }

    v17 = 0;
    goto LABEL_19;
  }

  v17 = 0;
LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_295(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize();
    v9 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&dword_23E4FA000, v9, OS_LOG_TYPE_DEFAULT, "Evaluating achievement: %@", &v24, 0xCu);
    }

    if (!v8)
    {
      v20 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v10 = [v8 relevantEarnedInstance];
    v11 = [v10 earnedDateComponents];

    if (!v11)
    {
      ASLoggingInitialize();
      v21 = ASLogNotifications;
      v20 = 0;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_23E4FA000, v21, OS_LOG_TYPE_DEFAULT, "Achievement is missing earned date, skipping", &v24, 2u);
        v20 = 0;
      }

      goto LABEL_20;
    }

    v12 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v13 = [v12 dateFromComponents:v11];

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceDate:v13];
    v16 = v15;
    v17 = *(a1 + 48);

    if (v16 <= v17)
    {
      if (!_IsNotificationEventDateBeforeRelationshipBeganWithFriend(v13, *(a1 + 32)))
      {
        v20 = 1;
        goto LABEL_19;
      }

      ASLoggingInitialize();
      v18 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v19 = "Achievement completed prior to the relationship starting, skipping";
        goto LABEL_16;
      }
    }

    else
    {
      ASLoggingInitialize();
      v18 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v19 = "Achievement is too old, skipping";
LABEL_16:
        _os_log_impl(&dword_23E4FA000, v18, OS_LOG_TYPE_DEFAULT, v19, &v24, 2u);
      }
    }

    v20 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v20 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_297(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sample];
  v5 = [v4 template];
  v6 = [v5 uniqueName];

  v7 = [v3 sample];

  v8 = [v7 template];
  v9 = [v8 sourceName];

  v10 = v6;
  v11 = MoveGoal200PercentTemplate();
  v12 = [v11 uniqueName];
  if ([v10 isEqualToString:v12])
  {
    goto LABEL_4;
  }

  v13 = MoveGoal300PercentTemplate();
  v14 = [v13 uniqueName];
  if ([v10 isEqualToString:v14])
  {

LABEL_4:
    goto LABEL_5;
  }

  v20 = MoveGoal400PercentTemplate();
  v21 = [v20 uniqueName];
  v22 = [v10 isEqualToString:v21];

  if (v22)
  {
LABEL_5:
    ASLoggingInitialize();
    v15 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v10;
      v16 = "Dropping achievement with template unique name %@, move percent";
LABEL_7:
      _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, v16, &v31, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v10 containsString:@"CompetitionParticipation"])
  {
    ASLoggingInitialize();
    v15 = ASLogNotifications;
    if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v31 = 138412290;
    v32 = v10;
    v16 = "Dropping achievement with template unique name %@, competition participation";
    goto LABEL_7;
  }

  v23 = LongestMoveStreakTemplate();
  v24 = [v23 uniqueName];
  v25 = [v10 isEqualToString:v24];

  if (v25)
  {
    ASLoggingInitialize();
    v15 = ASLogNotifications;
    if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v31 = 138412290;
    v32 = v10;
    v16 = "Dropping achievement with template unique name %@, move streak";
    goto LABEL_7;
  }

  if ([v10 containsString:@"CompetitionVictory"])
  {
    v26 = [*(a1 + 32) contact];
    v27 = [v26 primaryRemoteRelationship];
    v28 = [v27 UUID];
    v29 = [v28 UUIDString];
    v30 = [v10 containsString:v29];

    if (v30)
    {
      ASLoggingInitialize();
      v15 = ASLogNotifications;
      if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v31 = 138412290;
      v32 = v10;
      v16 = "Dropping achievement with template unique name %@, competition victory against me";
      goto LABEL_7;
    }
  }

  if (![v9 isEqualToString:*MEMORY[0x277CE8CA0]])
  {
    v17 = 1;
    goto LABEL_9;
  }

  ASLoggingInitialize();
  v15 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v10;
    v16 = "Dropping achievement with template unique name %@, source is Remote";
    goto LABEL_7;
  }

LABEL_8:
  v17 = 0;
LABEL_9:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_299(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize();
    v9 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&dword_23E4FA000, v9, OS_LOG_TYPE_DEFAULT, "Evaluating snapshot: %@", &v24, 0xCu);
    }

    v10 = [*(a1 + 32) currentCacheIndex];
    v11 = [v10 longLongValue];

    v12 = [v8 snapshotIndex];
    ASLoggingInitialize();
    v13 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      v25 = v11;
      _os_log_impl(&dword_23E4FA000, v13, OS_LOG_TYPE_DEFAULT, "friend current index: %lld", &v24, 0xCu);
    }

    ASLoggingInitialize();
    v14 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      v25 = v12;
      _os_log_impl(&dword_23E4FA000, v14, OS_LOG_TYPE_DEFAULT, "Snapshot index: %lld", &v24, 0xCu);
    }

    if (v11 == v12)
    {
      v15 = [v8 snapshotUploadedDate];
      IsNotificationEventDateBeforeRelationshipBeganWithFriend = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v15, *(a1 + 32));

      if (IsNotificationEventDateBeforeRelationshipBeganWithFriend)
      {
        ASLoggingInitialize();
        v17 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v18 = "Snapshot uploaded prior to relationship starting, skipping";
LABEL_15:
          _os_log_impl(&dword_23E4FA000, v17, OS_LOG_TYPE_DEFAULT, v18, &v24, 2u);
        }
      }

      else
      {
        v22 = [v8 endDate];
        v23 = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v22, *(a1 + 32));

        if (!v23)
        {
          v19 = 1;
          goto LABEL_17;
        }

        ASLoggingInitialize();
        v17 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v18 = "Snapshot is for a date prior to when the relationship began, skipping";
          goto LABEL_15;
        }
      }
    }

    else
    {
      ASLoggingInitialize();
      v17 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v18 = "Snapshot is not in the current day for friend, skipping";
        goto LABEL_15;
      }
    }

    v19 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v19 = 0;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end