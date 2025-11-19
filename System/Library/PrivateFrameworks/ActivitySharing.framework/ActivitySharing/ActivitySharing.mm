id ActivitySharingBundle()
{
  if (ActivitySharingBundle_onceToken != -1)
  {
    ActivitySharingBundle_cold_1();
  }

  v1 = ActivitySharingBundle_bundle;

  return v1;
}

uint64_t ASSecureCloudEnabled()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ActivitySharing"];
  v2 = [v1 hk_BOOLForKey:@"SecureCloudEnabled" defaultValue:0];

  return v2;
}

uint64_t ASSupportedPhoneFeaturesForCurrentDevice()
{
  v0 = [MEMORY[0x277CCDD30] sharedBehavior];
  v1 = [v0 isStandalonePhoneFitnessMode];

  return v1 ^ 1u;
}

BOOL ASAllGoalsMetForSnapshot(void *a1)
{
  v1 = a1;
  [v1 activeHours];
  v3 = v2;
  [v1 activeHoursGoal];
  v9 = v3 >= v4 && ([v1 briskMinutes], v6 = v5, objc_msgSend(v1, "briskMinutesGoal"), v6 >= v7) && (v8 = _ASMoveGoalForSnapshot(v1), v8 > 0.0) && _ASMoveValueForSnapshot(v1) >= v8;

  return v9;
}

double _ASMoveGoalForSnapshot(void *a1)
{
  v1 = a1;
  if ([v1 isAmm])
  {
    [v1 mmg];
  }

  else
  {
    [v1 energyBurnedGoal];
  }

  v3 = v2;

  return v3;
}

double _ASMoveValueForSnapshot(void *a1)
{
  v1 = a1;
  if ([v1 isAmm])
  {
    [v1 mmv];
  }

  else
  {
    [v1 energyBurned];
  }

  v3 = v2;

  return v3;
}

void ASLoggingInitialize()
{
  if (ASLoggingInitialize_onceToken != -1)
  {
    ASLoggingInitialize_cold_1();
  }
}

id _FakeHistoricalCompetitionsWithWinner(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = MEMORY[0x277CBEBF8];
    do
    {
      v5 = objc_alloc_init(ASCompetition);
      v6 = [MEMORY[0x277CBEAA8] distantPast];
      v7 = [MEMORY[0x277CBEA80] currentCalendar];
      v8 = _HKActivityCacheDateComponentsFromDate();
      [(ASCompetition *)v5 setStartDateComponents:v8];

      v9 = ASCompetitionDurationDateComponentsForNewCompetitions();
      [(ASCompetition *)v5 setDurationDateComponents:v9];

      if (a2)
      {
        [(ASCompetition *)v5 setOpponentScores:&unk_2850DDE98];
      }

      else
      {
        [(ASCompetition *)v5 setScores:&unk_2850DDE80];
      }

      v10 = [v4 arrayByAddingObject:v5];

      v4 = v10;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

id ASCompetitionDurationDateComponentsForNewCompetitions()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionDurationNumberOfDays", 7);
  v1 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v1 setDay:v0];
  [v1 setMonth:0];
  [v1 setYear:0];
  [v1 setEra:0];
  ASLoggingInitialize();
  v2 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v6 = 134217984;
    v7 = [v1 day];
    _os_log_impl(&dword_23E4FA000, v3, OS_LOG_TYPE_DEFAULT, "Competition duration is %ld days", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t _ASIntegerFromUserDefaultsWithDefaultValue(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.ActivitySharing"];
  v6 = [v5 integerForKey:v4];

  if (v6)
  {
    a2 = v6;
  }

  return a2;
}

uint64_t ASCompetitionMaximumPointsPerDayForNewCompetitions()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionMaximumPointsPerDay", 600);
  ASLoggingInitialize();
  v1 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = v0;
    _os_log_impl(&dword_23E4FA000, v1, OS_LOG_TYPE_DEFAULT, "Competition max num points per day is %lu", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

__CFString *NSStringFromASRelationshipEventType(int a1)
{
  if (a1 > 199)
  {
    if (a1 <= 299)
    {
      switch(a1)
      {
        case 200:
          result = @"SentSecureCloudInviteRequest";
          break;
        case 201:
          result = @"SecureCloudUpgradeAvailable";
          break;
        case 202:
          result = @"SecureCloudUpgradeUnavailable";
          break;
        case 203:
          result = @"SentSecureCloudUpgradeRequest";
          break;
        case 204:
          result = @"SecureCloudUpgradeFailed";
          break;
        case 205:
          result = @"SecureCloudMigrationAvailable";
          break;
        case 206:
          result = @"SecureCloudMigrationStarted";
          break;
        case 207:
          result = @"SecureCloudMigrationFailed";
          break;
        case 208:
          result = @"SecureCloudDowngradeRequested";
          break;
        case 209:
          result = @"SecureCloudDowngradeStarted";
          break;
        case 210:
          result = @"SecureCloudDowngradeFailed";
          break;
        case 211:
          result = @"SecureCloudDowngradeNeedsAcknowledgement";
          break;
        case 212:
          result = @"SecureCloudDowngradeAcknowledged";
          break;
        case 213:
          result = @"SecureCloudDowngradeRequestRescinded";
          break;
        case 214:
          result = @"SecureCloudNeedsZoneDeletion";
          break;
        case 215:
          result = @"SecureCloudNeedsRepair";
          break;
        case 216:
          result = @"SentSecureCloudRepairRequest";
          break;
        case 217:
          result = @"SecureCloudRepairFailed";
          break;
        case 218:
          result = @"SecureCloudRepairComplete";
          break;
        default:
          return @"UnknownEventType";
      }

      return result;
    }

    if (a1 <= 302)
    {
      if (a1 == 300)
      {
        return @"ReceivedSecureCloudInviteRequest";
      }

      if (a1 == 301)
      {
        return @"ReceivedSecureCloudUpgradeRequest";
      }

      return @"SecureCloudUpgradeFailedRemotely";
    }

    if (a1 <= 304)
    {
      if (a1 == 303)
      {
        return @"SecureCloudUpgradeCompleted";
      }

      else
      {
        return @"SecureCloudMigrationCompleted";
      }
    }

    if (a1 == 305)
    {
      return @"SecureCloudDowngradeCompleted";
    }

    if (a1 == 306)
    {
      return @"ReceivedSecureCloudRepairRequest";
    }

    return @"UnknownEventType";
  }

  if (a1 > 99)
  {
    if (a1 <= 102)
    {
      if (a1 == 100)
      {
        return @"ReceivedInviteRequest";
      }

      if (a1 == 101)
      {
        return @"ReceivedInviteResponse";
      }

      return @"InviteRequestWasWithdrawnRemotely";
    }

    if (a1 <= 104)
    {
      if (a1 == 103)
      {
        return @"FriendshipDidBegin";
      }

      else
      {
        return @"FriendshipWasEndedRemotely";
      }
    }

    if (a1 == 105)
    {
      return @"ReceivedCompetitionRequest";
    }

    if (a1 == 106)
    {
      return @"CompetitionRequestWasAcceptedRemotely";
    }

    return @"UnknownEventType";
  }

  v2 = a1 - 1;
  result = @"SentInviteRequest";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = @"SentInviteResponse";
      break;
    case 2:
      result = @"WithdrewInviteRequest";
      break;
    case 3:
      result = @"EndedFriendship";
      break;
    case 4:
      result = @"BeganHidingActivityData";
      break;
    case 5:
      result = @"StoppedHidingActivityData";
      break;
    case 6:
      result = @"IgnoredInviteRequest";
      break;
    case 7:
      result = @"BeganMutingNotifications";
      break;
    case 8:
      result = @"StoppedMutingNotifications";
      break;
    case 9:
      result = @"SentCompetitionRequest";
      break;
    case 10:
      result = @"AcceptedCompetitionRequest";
      break;
    case 11:
      result = @"IgnoredCompetitionRequest";
      break;
    case 12:
      result = @"SavedFinalCompetitionScore";
      break;
    case 13:
      result = @"CompletedCompetition";
      break;
    case 14:
      result = @"UpdatedSupportedFeatures";
      break;
    default:
      return @"UnknownEventType";
  }

  return result;
}

id _ConsolidatedEvents(void *a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v39 = a1;
  obj = [v39 reverseObjectEnumerator];
  v42 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v42)
  {
    v73 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v63 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v87 = 0;
    v88 = 0;
    v55 = 0;
    v41 = *v91;
    v74 = MEMORY[0x277CBEBF8];
    do
    {
      v1 = 0;
      do
      {
        if (*v91 != v41)
        {
          v2 = v1;
          objc_enumerationMutation(obj);
          v1 = v2;
        }

        v72 = v1;
        v3 = *(*(&v90 + 1) + 8 * v1);
        v4 = [v3 type] == 4 || objc_msgSend(v3, "type") == 104;
        v71 = v4;
        v5 = [v3 type] == 8 || objc_msgSend(v3, "type") == 9;
        v70 = v5;
        v85 = [v3 type];
        v6 = [v3 type] == 10 || objc_msgSend(v3, "type") == 105 || objc_msgSend(v3, "type") == 12 || objc_msgSend(v3, "type") == 11 || objc_msgSend(v3, "type") == 106 || objc_msgSend(v3, "type") == 14 || objc_msgSend(v3, "type") == 13;
        v84 = v6;
        v51 = [v3 type];
        if (v88)
        {
          v7 = [v3 type];
          v50 = v7 == [v88 type];
        }

        else
        {
          v50 = 0;
        }

        v8 = [v3 type] == 201 || objc_msgSend(v3, "type") == 202;
        v69 = v8;
        v83 = [v3 type];
        v82 = [v3 type];
        v9 = [v3 type] == 204 || objc_msgSend(v3, "type") == 302 || objc_msgSend(v3, "type") == 303;
        v52 = v9;
        v10 = [v3 type] == 204 || objc_msgSend(v3, "type") == 302;
        v48 = v10;
        v49 = [v3 type];
        v81 = [v3 type];
        v80 = [v3 type];
        v11 = [v3 type] == 304 || objc_msgSend(v3, "type") == 207;
        v54 = v11;
        v47 = [v3 type];
        v46 = [v3 type];
        v79 = [v3 type];
        v78 = [v3 type];
        v77 = [v3 type];
        v76 = [v3 type];
        v12 = [v3 type] == 209 || objc_msgSend(v3, "type") == 305 || objc_msgSend(v3, "type") == 210;
        v64 = v12;
        v45 = [v3 type];
        v44 = [v3 type];
        v75 = [v3 type];
        v13 = [v3 type];
        v14 = [v3 type];
        v15 = [v3 type];
        v16 = [v3 type] == 217 || objc_msgSend(v3, "type") == 218;
        v68 = v16;
        v43 = [v3 type];
        v17 = [v3 type];
        if (BYTE4(v87) & 1 | !v84)
        {
          v18 = 1;
        }

        else
        {
          v19 = [v3 type];
          v20 = v74;
          buf = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&buf objects:&v95 count:16];
          if (v22)
          {
            v23 = *v102;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v102 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                if ([*(*(&buf + 1) + 8 * i) type] == v19)
                {
                  v18 = 1;
                  goto LABEL_54;
                }
              }

              v22 = [v21 countByEnumeratingWithState:&buf objects:&v95 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v18 = 0;
LABEL_54:
        }

        if ((v68 & v73 & 1) == 0 && (v68 & HIDWORD(v67) & 1) == 0 && ((v15 == 306) & v67) == 0 && ((v14 == 216) & BYTE4(v66)) == 0 && ((v13 == 215) & v66) == 0 && ((v75 == 214) & BYTE4(v65)) == 0 && (v64 & v65 & 1) == 0 && (v64 & v63 & 1) == 0 && ((v76 == 213) & BYTE4(v62)) == 0 && ((v77 == 212) & v62) == 0 && ((v78 == 211) & BYTE4(v61)) == 0 && ((v79 == 208) & v61) == 0 && (v54 & HIDWORD(v60) & 1) == 0 && (v54 & v60 & 1) == 0 && ((v80 == 206) & BYTE4(v59)) == 0 && ((v81 == 205) & v59) == 0 && (v52 & HIDWORD(v58) & 1) == 0 && (v52 & v58 & 1) == 0 && ((v82 == 301) & BYTE4(v57)) == 0 && ((v83 == 203) & v57) == 0 && !(v50 | v84 & HIDWORD(v87) | (v85 == 15) & v56 | v70 & v55 | v69 & HIDWORD(v56) | v87 & v18))
        {
          LODWORD(v53) = v13 == 215;
          HIDWORD(v53) = v14 == 216;
          v25 = v85 == 15;
          v26 = v3;

          v86 = [v74 arrayByAddingObject:v26];

          v55 |= v70;
          HIDWORD(v87) |= v51 == 14;
          LOBYTE(v56) = v56 | v25;
          HIDWORD(v56) |= v69;
          LOBYTE(v57) = v57 | (v83 == 203);
          BYTE4(v57) |= v82 == 301;
          LODWORD(v58) = v58 | (v49 == 303);
          HIDWORD(v58) = v48 | BYTE4(v58) & 1;
          LOBYTE(v59) = v59 | (v81 == 205);
          BYTE4(v59) |= v80 == 206;
          LODWORD(v60) = v60 | (v47 == 304);
          HIDWORD(v60) |= v46 == 207;
          LOBYTE(v61) = v61 | (v79 == 208);
          BYTE4(v61) |= v78 == 211;
          LOBYTE(v62) = v62 | (v77 == 212);
          BYTE4(v62) |= v76 == 213;
          v63 |= v45 == 305;
          LODWORD(v65) = v65 | (v44 == 210);
          BYTE4(v65) |= v75 == 214;
          v66 |= v53;
          LOBYTE(v67) = v67 | (v15 == 306);
          HIDWORD(v67) |= v43 == 218;
          v73 |= v17 == 217;
          v88 = v26;
          v74 = v86;
        }

        LODWORD(v87) = v71 | v87;
        v1 = v72 + 1;
      }

      while (v72 + 1 != v42);
      v27 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
      v42 = v27;
    }

    while (v27);
  }

  else
  {
    v88 = 0;
    v74 = MEMORY[0x277CBEBF8];
  }

  v28 = [v74 reverseObjectEnumerator];
  v29 = [v28 allObjects];

  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy_;
  v99 = __Block_byref_object_dispose_;
  v100 = MEMORY[0x277CBEBF8];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = ___ConsolidatedEvents_block_invoke;
  v89[3] = &unk_278C46430;
  v89[4] = &v95;
  [v29 enumerateObjectsUsingBlock:v89];
  v30 = [v96[5] count];
  if (v30 != [v39 count])
  {
    ASLoggingInitialize();
    v31 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23E4FA000, v31, OS_LOG_TYPE_DEFAULT, "Consolidation updated event count", &buf, 2u);
    }

    ASLoggingInitialize();
    v32 = ASLogRelationships;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = _MostRecentEventsWithCount(v39, 0x64uLL);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v33;
      _os_log_impl(&dword_23E4FA000, v32, OS_LOG_TYPE_DEFAULT, "Previous events: %@", &buf, 0xCu);
    }

    ASLoggingInitialize();
    v34 = ASLogRelationships;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = _MostRecentEventsWithCount(v96[5], 0x1EuLL);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_impl(&dword_23E4FA000, v34, OS_LOG_TYPE_DEFAULT, "New events: %@", &buf, 0xCu);
    }
  }

  v36 = v96[5];
  _Block_object_dispose(&v95, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

id _MostRecentEventsWithCount(void *a1, unint64_t a2)
{
  v3 = [a1 sortedArrayUsingComparator:&__block_literal_global_2];
  v4 = [v3 count];
  if (v4 < a2)
  {
    a2 = v4;
  }

  v5 = [v3 subarrayWithRange:{objc_msgSend(v3, "count") - a2, a2}];

  return v5;
}

__CFString *NSStringFromASCloudType(uint64_t a1)
{
  v1 = @"unexpected";
  if (a1 == 1)
  {
    v1 = @"secureCloud";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"legacy";
  }
}

uint64_t _CacheIndexForDayWithOffsetFromCurrentDay(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 dateByAddingUnit:16 value:-a1 toDate:v3 options:0];
  v5 = [v2 startOfDayForDate:v4];

  v6 = _HKActivityCacheDateComponentsFromDate();
  v7 = _HKCacheIndexFromDateComponents();

  return v7;
}

id _ActivitySnapshot(uint64_t a1, void *a2, void *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14)
{
  v24 = a3;
  v25 = a2;
  v26 = _CacheIndexForDayWithOffsetFromCurrentDay(a1);
  v27 = _HKStartDateForSnapshotIndex();
  v28 = [v27 dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
  v29 = MEMORY[0x277CCDDC8];
  v30 = _HKEndDateForSnapshotIndex();
  v31 = [v29 _fitnessFriendActivitySnapshotWithFriendUUID:v25 sourceUUID:v24 startDate:v27 endDate:v30 snapshotIndex:v26 snapshotUploadedDate:v28];

  [v31 setEnergyBurned:a9];
  [v31 setEnergyBurnedGoal:a10];
  [v31 setMmv:a11];
  [v31 setMmg:a12];
  [v31 setBriskMinutes:a4];
  [v31 setBriskMinutesGoal:a5];
  [v31 setActiveHours:a6];
  [v31 setActiveHoursGoal:a7];
  v32 = MEMORY[0x277CCD7E8];
  v33 = [MEMORY[0x277CCDAB0] mileUnit];
  v34 = [v32 quantityWithUnit:v33 doubleValue:a13];

  [v31 setStepCount:a8];
  v35 = [MEMORY[0x277CCDAB0] meterUnit];
  [v34 doubleValueForUnit:v35];
  [v31 setWalkingAndRunningDistance:?];

  [v31 setPushCount:a8];
  [v31 setAmm:a14];

  return v31;
}

id ASFormattedSequence(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_6];
  v2 = [v1 componentsJoinedByString:&stru_2850D2AA8];

  return v2;
}

uint64_t ASCompetitionCalculateTotalScore(void *a1)
{
  v1 = [a1 hk_foldRightFrom:&unk_2850DDB20 with:&__block_literal_global_7];
  v2 = [v1 integerValue];

  return v2;
}

uint64_t __ASCompetitionCalculateTotalScore_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  return [v4 numberWithInteger:v7 + v6];
}

id ASFormattedVictoryBadgeStyles(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_5];
  v2 = [v1 componentsJoinedByString:&stru_2850D2AA8];

  return v2;
}

id _CreatePedestrianWorkout(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v32 = a1;
  _CacheIndexForDayWithOffsetFromCurrentDay(a2);
  v35 = _HKStartDateForSnapshotIndex();
  v9 = [v35 dateByAddingTimeInterval:(arc4random_uniform(0xFD20u) + 21600)];
  v10 = [v9 dateByAddingTimeInterval:a5];
  v11 = MEMORY[0x277CCDDD0];
  v12 = MEMORY[0x277CCD7E8];
  v13 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v14 = [v12 quantityWithUnit:v13 doubleValue:a6 * 100.0];
  v15 = MEMORY[0x277CCD7E8];
  v16 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v17 = [v15 quantityWithUnit:v16 doubleValue:a6 * 100.0 * 0.6];
  v18 = MEMORY[0x277CCD7E8];
  v19 = [MEMORY[0x277CCDAB0] mileUnit];
  v20 = [v18 quantityWithUnit:v19 doubleValue:a6];
  LOWORD(v31) = 1;
  v21 = v11;
  v22 = v10;
  v23 = [v21 fitnessFriendworkoutWithActivityType:a3 friendUUID:v32 startDate:v9 endDate:v10 duration:v14 totalActiveEnergyBurned:v17 totalBasalEnergyBurned:a5 totalDistance:v20 goalType:*MEMORY[0x277CCE1E0] goal:0 bundleID:@"com.apple.SessionTrackerApp" isWatchWorkout:v31 isIndoorWorkout:0 deviceManufacturer:0 deviceModel:1 amm:0 seymourCatalogWorkoutIdentifier:0 seymourMediaType:?];

  [v23 setGoalType:a4];
  v24 = MEMORY[0x277CCD7E8];
  if (a4 == 2)
  {
    v25 = [MEMORY[0x277CCDAB0] secondUnit];
    v26 = v24;
    v27 = v25;
    v28 = a5;
  }

  else
  {
    v25 = [MEMORY[0x277CCDAB0] meterUnit];
    v26 = v24;
    v27 = v25;
    v28 = a6;
  }

  v29 = [v26 quantityWithUnit:v27 doubleValue:v28];
  [v23 setGoal:v29];

  return v23;
}

id _CreateFitnessJrWorkout(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = a1;
  _CacheIndexForDayWithOffsetFromCurrentDay(a2);
  v27 = _HKStartDateForSnapshotIndex();
  v12 = [v27 dateByAddingTimeInterval:(arc4random_uniform(0xFD20u) + 21600)];
  v13 = [v12 dateByAddingTimeInterval:a5];
  v14 = MEMORY[0x277CCDDD0];
  v15 = MEMORY[0x277CCD7E8];
  v16 = [MEMORY[0x277CCDAB0] mileUnit];
  v17 = [v15 quantityWithUnit:v16 doubleValue:a6];
  LOWORD(v26) = 1;
  v18 = [v14 fitnessFriendworkoutWithActivityType:a3 friendUUID:v11 startDate:v12 endDate:v13 duration:0 totalActiveEnergyBurned:0 totalBasalEnergyBurned:a5 totalDistance:v17 goalType:*MEMORY[0x277CCE1E0] goal:0 bundleID:@"com.apple.SessionTrackerApp" isWatchWorkout:v26 isIndoorWorkout:0 deviceManufacturer:0 deviceModel:2 amm:0 seymourCatalogWorkoutIdentifier:0 seymourMediaType:?];

  [v18 setGoalType:a4];
  v19 = MEMORY[0x277CCD7E8];
  if (a4 == 1)
  {
    v20 = [MEMORY[0x277CCDAB0] meterUnit];
    v21 = v19;
    v22 = v20;
    v23 = a6;
  }

  else
  {
    v20 = [MEMORY[0x277CCDAB0] secondUnit];
    v21 = v19;
    v22 = v20;
    v23 = a5;
  }

  v24 = [v21 quantityWithUnit:v22 doubleValue:v23];
  [v18 setGoal:v24];

  return v18;
}

uint64_t ASCodableActivityDataPreviewReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(ASCodableCloudKitAchievement);
          [a1 addAchievements:v14];
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !ASCodableCloudKitAchievementReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v20 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v20;
          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ASCodableCloudKitActivitySnapshot);
          objc_storeStrong((a1 + 24), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !ASCodableCloudKitActivitySnapshotReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ASCodableCloudKitWorkout);
          [a1 addWorkouts:v14];
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !ASCodableCloudKitWorkoutReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _ASCreateRecordsFromCloudKitCodablesAndRecordZoneID(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = [*(*(&v16 + 1) + 8 * v11) recordWithZoneID:v6 recordEncryptionType:a3];
        v10 = [v12 arrayByAddingObject:v13];

        ++v11;
        v12 = v10;
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

id _ASCreateActivityDataRootRecordWithID(void *a1)
{
  v1 = MEMORY[0x277CBC5A0];
  v2 = a1;
  v3 = [[v1 alloc] initWithRecordType:@"ActivitySharingActivityDataRootRecord" recordID:v2];

  [v3 setObject:&unk_2850DDAF0 forKeyedSubscript:@"Version"];

  return v3;
}

uint64_t _ASCloudKitSchemaVersionForRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"EncryptedVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = [v1 objectForKeyedSubscript:@"Version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 = [v7 integerValue];
  }

  return v5;
}

ASCodableCloudKitSample *_ASCodableCloudKitSampleForSample(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(ASCodableCloudKitSample);
  v3 = [v1 UUID];
  v4 = [v3 hk_dataForUUIDBytes];
  [(ASCodableCloudKitSample *)v2 setUuid:v4];

  v5 = [v1 startDate];
  [v5 timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitSample *)v2 setStartDate:?];

  v6 = [v1 endDate];

  [v6 timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitSample *)v2 setEndDate:?];

  return v2;
}

void _ASUpdateSchemaVersionOnRecord(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v8 = [v5 numberWithInteger:a1];
  if (a3 == 1)
  {
    v7 = [v6 encryptedValues];

    [v7 setObject:v8 forKeyedSubscript:@"EncryptedVersion"];
    v6 = v7;
  }

  else
  {
    [v6 setObject:v8 forKeyedSubscript:@"Version"];
  }
}

id ASCodableAchievementsFromAchievements(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB98] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      v8 = v2;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) codableAchievement];
        v2 = [v8 setByAddingObject:v9];

        ++v7;
        v8 = v2;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

id ASAchievementsFromCodableAchievements(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB98] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCDDC0] fitnessFriendAchievementWithCodableAchievement:*(*(&v15 + 1) + 8 * i) friendUUID:{v4, v15}];
        if (v11)
        {
          v12 = [v5 setByAddingObject:v11];

          v5 = v12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

id ASWorkoutRecordIDForUUID(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"ActivitySharingWorkout", v5];

  v8 = [v6 initWithRecordName:v7 zoneID:v4];

  return v8;
}

id ASCodableWorkoutsFromWorkouts(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB98] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      v8 = v2;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) codableWorkout];
        v2 = [v8 setByAddingObject:v9];

        ++v7;
        v8 = v2;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

id ASWorkoutsFromCodableWorkouts(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB98] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutWithCodableWorkout:*(*(&v15 + 1) + 8 * v10) friendUUID:{v4, v15}];
        v5 = [v11 setByAddingObject:v12];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

id ASWorkoutNotificationRecordIDForType(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@-%ld-%@", @"ActivitySharingEvent", a1, a2];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v7 zoneID:v6];

  return v8;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *ASStringForReachabilityStatus(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"reachable";
  }

  if (a1 == 2)
  {
    return @"unreachable";
  }

  else
  {
    return v1;
  }
}

id ASSecureUnarchiveClassWithDataAndStrictness(objc_class *a1, void *a2, int a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![v5 length])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CCAAC8];
  if (a3)
  {
    v7 = MEMORY[0x277CBEB98];
    v17[0] = a1;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v9 = [v7 setWithArray:v8];
    v16 = 0;
    v10 = [v6 _strictlyUnarchivedObjectOfClasses:v9 fromData:v5 error:&v16];
    v11 = v16;

    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_7:
    ASLoggingInitialize();
    v12 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      ASSecureUnarchiveClassWithDataAndStrictness_cold_1(v12, a1, v11);
    }

    goto LABEL_9;
  }

  v15 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a1 fromData:v5 error:&v15];
  v11 = v15;
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_9:

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

id ASSecureUnarchiveClassesWithData(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length])
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    if (a3)
    {
      v15 = 0;
      v9 = &v15;
      v10 = [v7 _strictlyUnarchivedObjectOfClasses:v8 fromData:v6 error:&v15];
    }

    else
    {
      v14 = 0;
      v9 = &v14;
      v10 = [v7 unarchivedObjectOfClasses:v8 fromData:v6 error:&v14];
    }

    v11 = v10;
    v12 = *v9;

    if (v12)
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        ASSecureUnarchiveClassesWithData_cold_1();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

ASCodableFriendList *ASCodableFriendListFromFriends(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(ASCodableFriendList);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) codableFriendIncludingCloudKitFields:{a2, v13}];
        [(ASCodableFriendList *)v4 addFriend:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

id ASFriendsFromCodableFriendList(void *a1)
{
  v1 = [a1 friends];
  v2 = [v1 hk_mapToSet:&__block_literal_global_335];

  return v2;
}

ASCodableContactList *ASCodableContactListFromContacts(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(ASCodableContactList);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) codableContactIncludingCloudKitFields:{a2, v13}];
        [(ASCodableContactList *)v4 addContacts:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

id ASContactsFromCodableContactList(void *a1)
{
  v1 = [a1 contacts];
  v2 = [v1 hk_mapToSet:&__block_literal_global_339];

  return v2;
}

uint64_t ASCodableCloudKitCompetitionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v74) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v14 > 6)
      {
        if (v14 == 7)
        {
          if (v13 != 2)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            while (1)
            {
              LOBYTE(v74) = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v74 & 0x7F) << v61;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                goto LABEL_139;
              }
            }

            [a2 hasError];
LABEL_139:
            PBRepeatedInt32Add();
            goto LABEL_140;
          }

          v74 = 0;
          v75 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v47 = [a2 position];
            if (v47 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v48 = 0;
            v49 = 0;
            v50 = 0;
            while (1)
            {
              v76 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v76 & 0x7F) << v48;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                goto LABEL_96;
              }
            }

            [a2 hasError];
LABEL_96:
            PBRepeatedInt32Add();
          }

LABEL_97:
          PBReaderRecallMark();
          goto LABEL_140;
        }

        if (v14 == 8)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 120) |= 2u;
          while (1)
          {
            LOBYTE(v74) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v74 & 0x7F) << v32;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v34;
          }

LABEL_107:
          v54 = 88;
          goto LABEL_108;
        }

LABEL_98:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_140;
      }

      if (v14 == 5)
      {
        v22 = objc_alloc_init(ASCodableCloudKitDateComponents);
        v23 = 104;
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_98;
        }

        v22 = objc_alloc_init(ASCodableCloudKitDateComponents);
        v23 = 96;
      }

      objc_storeStrong((a1 + v23), v22);
      v74 = 0;
      v75 = 0;
      if (!PBReaderPlaceMark() || !ASCodableCloudKitDateComponentsReadFrom(v22, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_140:
      v73 = [a2 position];
      if (v73 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        if (v13 != 2)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          while (1)
          {
            LOBYTE(v74) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v74 & 0x7F) << v55;
            if ((v74 & 0x80) == 0)
            {
              goto LABEL_136;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              goto LABEL_137;
            }
          }
        }

        v74 = 0;
        v75 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v40 = [a2 position];
          if (v40 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_97;
          }

          v41 = 0;
          v42 = 0;
          v43 = 0;
          while (1)
          {
            v76 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v76 & 0x7F) << v41;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              goto LABEL_81;
            }
          }

          [a2 hasError];
LABEL_81:
          PBRepeatedInt64Add();
        }
      }

      if (v14 == 4)
      {
        if (v13 != 2)
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          while (1)
          {
            LOBYTE(v74) = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v74 & 0x7F) << v67;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              goto LABEL_137;
            }
          }

LABEL_136:
          [a2 hasError];
LABEL_137:
          PBRepeatedInt64Add();
          goto LABEL_140;
        }

        v74 = 0;
        v75 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v25 = [a2 position];
          if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_97;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v76 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v76 & 0x7F) << v26;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              goto LABEL_50;
            }
          }

          [a2 hasError];
LABEL_50:
          PBRepeatedInt64Add();
        }
      }
    }

    else
    {
      if (v14 == 1)
      {
        v38 = PBReaderReadData();
        v39 = *(a1 + 112);
        *(a1 + 112) = v38;

        goto LABEL_140;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 120) |= 1u;
        while (1)
        {
          LOBYTE(v74) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v74 & 0x7F) << v15;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_103:
        v54 = 80;
LABEL_108:
        *(a1 + v54) = v21;
        goto LABEL_140;
      }
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v28) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(ASCodableRelationshipContainer);
            v15 = 64;
LABEL_44:
            objc_storeStrong((a1 + v15), v14);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !ASCodableRelationshipContainerReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

LABEL_54:
            PBReaderRecallMark();
LABEL_55:

            goto LABEL_60;
          }

          if (v13 == 7)
          {
            v23 = PBReaderReadData();
            v24 = 40;
            goto LABEL_49;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v23 = PBReaderReadData();
              v24 = 32;
              goto LABEL_49;
            case 9:
              v14 = objc_alloc_init(ASCodableRelationshipStorage);
              objc_storeStrong((a1 + 56), v14);
              v28 = 0;
              v29 = 0;
              if (!PBReaderPlaceMark() || !ASCodableRelationshipStorageReadFrom(v14, a2))
              {
LABEL_62:

                return 0;
              }

              goto LABEL_54;
            case 0xA:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 84) |= 1u;
              while (1)
              {
                LOBYTE(v28) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v28 & 0x7F) << v16;
                if ((v28 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_59;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_59:
              *(a1 + 80) = v22;
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 24;
          goto LABEL_49;
        }

        if (v13 == 2)
        {
          v23 = PBReaderReadString();
          v24 = 16;
LABEL_49:
          v25 = *(a1 + v24);
          *(a1 + v24) = v23;

          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = PBReaderReadString();
            v24 = 72;
            goto LABEL_49;
          case 4:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addDestinations:v14];
            }

            goto LABEL_55;
          case 5:
            v14 = objc_alloc_init(ASCodableRelationshipContainer);
            v15 = 48;
            goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _ASCelebrationAssetURLWithFileName(void *a1)
{
  v1 = a1;
  v2 = [@"/System/Library/Health/Assets/ActivitySharingAssets.bundle" stringByAppendingPathComponent:@"CelebrationMovies"];
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

uint64_t ASCodableRelationshipStorageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(ASCodableRelationshipContainer);
          v15 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v14 = objc_alloc_init(ASCodableRelationshipContainer);
          v15 = 32;
        }
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(ASCodableRelationshipContainer);
        v15 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = objc_alloc_init(ASCodableRelationshipContainer);
        v15 = 16;
      }

      objc_storeStrong((a1 + v15), v14);
      v18[0] = 0;
      v18[1] = 0;
      if (!PBReaderPlaceMark() || !ASCodableRelationshipContainerReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_31:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableFriendReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ASCodableContact);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ASCodableContactReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ASCodableCloudKitActivitySnapshot);
          [a1 addSnapshots:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !ASCodableCloudKitActivitySnapshotReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(ASCodableCloudKitWorkout);
            [a1 addWorkouts:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !ASCodableCloudKitWorkoutReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(ASCodableCloudKitAchievement);
            [a1 addAchievements:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !ASCodableCloudKitAchievementReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v14 = objc_alloc_init(ASCodableCloudKitCompetition);
            [a1 addCompetitions:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !ASCodableCloudKitCompetitionReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

LABEL_37:
            PBReaderRecallMark();

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ASCodableWithdrawInviteRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitDateComponentsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v50 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v38;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__year;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__year;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v49 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__month;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__month;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v28;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__day;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__day;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v47 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v33;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__hour;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__hour;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__era;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___ASCodableCloudKitDateComponents__era;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitCompetitionListReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_38:
        *(a1 + 8) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = *(a1 + 24);
        *(a1 + 24) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(ASCodableCloudKitCompetition);
        [a1 addCompetitions:v14];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !ASCodableCloudKitCompetitionReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASDestinationIsEmail(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"@"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 containsString:@"mailto:"];
  }

  return v2;
}

uint64_t ASDestinationIsPhoneNumber(void *a1)
{
  v1 = a1;
  v2 = [v1 containsString:@"tel:"];
  IsEmail = ASDestinationIsEmail(v1);
  v4 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v5 = [v1 rangeOfCharacterFromSet:v4];

  if (v2)
  {
    return 1;
  }

  else
  {
    return (v5 != 0x7FFFFFFFFFFFFFFFLL) & (IsEmail ^ 1u);
  }
}

id ASSanitizedContactDestination(void *a1)
{
  v1 = a1;
  v2 = _RawAddressForDestination(v1);
  if (ASDestinationIsPhoneNumber(v1))
  {
    v3 = MEMORY[0x23EF0C4A0](v2, 0, 1);
  }

  else
  {
    if (!ASDestinationIsEmail(v1))
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x23EF0C480](v2);
  }

  v4 = v3;
  v5 = _RawAddressForDestination(v3);

  v2 = v5;
LABEL_6:

  return v2;
}

id _RawAddressForDestination(void *a1)
{
  v1 = a1;
  if (([v1 containsString:@"tel:"] & 1) != 0 || objc_msgSend(v1, "containsString:", @"mailto:"))
  {
    v2 = IDSCopyRawAddressForDestination();
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id ASSanitizedContactDestinations(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = ASSanitizedContactDestination(*(*(&v11 + 1) + 8 * i));
        [v2 addObject:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id ASContactStorePredicateForDestination(void *a1)
{
  v1 = a1;
  v2 = ASSanitizedContactDestination(v1);
  IsEmail = ASDestinationIsEmail(v1);

  if (IsEmail)
  {
    v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v2];
  }

  else
  {
    v5 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v2];
    v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v5];
  }

  return v4;
}

id ASShortNameForContactStoreContact(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBDA78] stringFromContact:a1 style:1000];
    v1 = vars8;
  }

  return a1;
}

id ASFullNameForContactStoreContact(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBDA78] stringFromContact:a1 style:0];
    v1 = vars8;
  }

  return a1;
}

id ASConsolidateAddresses(void *a1)
{
  v1 = [a1 hk_filter:&__block_literal_global_3];
  v2 = [MEMORY[0x277CBEB98] setWithArray:v1];

  return v2;
}

uint64_t ASCodableRelationshipContainerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v21 = PBReaderReadData();
            v22 = 32;
            goto LABEL_46;
          }

          if (v13 == 8)
          {
            v21 = PBReaderReadData();
            v22 = 56;
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v21 = PBReaderReadData();
            v22 = 48;
            goto LABEL_46;
          }

          if (v13 == 6)
          {
            v21 = PBReaderReadData();
            v22 = 40;
LABEL_46:
            v24 = *(a1 + v22);
            *(a1 + v22) = v21;

            goto LABEL_47;
          }
        }

        goto LABEL_49;
      }

      if (v13 > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27[0] & 0x7F) << v14;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_54:
          *(a1 + 8) = v20;
          goto LABEL_47;
        }

LABEL_49:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_47;
      }

      v23 = objc_alloc_init(ASCodableCloudKitRelationship);
      objc_storeStrong((a1 + 16), v23);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ASCodableCloudKitRelationshipReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_47:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v21 = PBReaderReadData();
      v22 = 64;
      goto LABEL_46;
    }

    if (v13 == 4)
    {
      v21 = PBReaderReadData();
      v22 = 24;
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

id ASContactSanitizedDestination(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (ASDestinationIsPhoneNumber(v1))
  {
    v2 = IDSCopyIDForPhoneNumber();
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if (ASDestinationIsEmail(v1))
  {
    v2 = MEMORY[0x23EF0C480](v1);
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:
  v4 = IDSCopyRawAddressForDestination();

  ASLoggingInitialize();
  v5 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "The final destination after cleanup is: %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

id _FindIntersectingDestination(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v4 containsObject:{v9, v12}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t ASCodableDatabaseCompetitionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(ASCodableCloudKitCompetition);
        objc_storeStrong((a1 + 16), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !ASCodableCloudKitCompetitionReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_38:
        *(a1 + 8) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ASCompetitionParticipationTemplate()
{
  v0 = objc_alloc_init(MEMORY[0x277CE8D50]);
  [v0 setUniqueName:@"CompetitionParticipation"];
  [v0 setSourceName:@"ActivitySharingCompetitions"];
  [v0 setVersion:1];
  [v0 setMinimumEngineVersion:1];
  v1 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v2 = [v1 predicateFormat];
  [v0 setPredicate:v2];

  [v0 setValueExpression:&stru_2850D2AA8];
  [v0 setTriggers:0];
  [v0 setEarnLimit:*MEMORY[0x277CE8C58]];
  [v0 setDuplicateRemovalStrategy:3];
  [v0 setDuplicateRemovalCalendarUnit:16];
  [v0 setEarnDateStrategy:1];
  [v0 setDisplayOrder:1];
  v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v4 = [v3 predicateFormat];
  [v0 setVisibilityPredicate:v4];

  v5 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v6 = [v5 predicateFormat];
  [v0 setAlertabilityPredicate:v6];

  [v0 setDisplaysEarnedInstanceCount:1];
  v7 = [MEMORY[0x277CCDAB0] countUnit];
  [v0 setCanonicalUnit:v7];

  return v0;
}

id ASCompetitionVictoryTemplateForFriend(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CE8D50];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"CompetitionVictory", v4];
  [v5 setUniqueName:v6];

  [v5 setSourceName:@"ActivitySharingCompetitions"];
  [v5 setVersion:2];
  [v5 setMinimumEngineVersion:1];
  v7 = [v4 UUIDString];

  [v5 setPredicate:v7];
  [v5 setValueExpression:&stru_2850D2AA8];
  [v5 setTriggers:0];
  [v5 setEarnLimit:*MEMORY[0x277CE8C58]];
  [v5 setDuplicateRemovalStrategy:1];
  [v5 setDuplicateRemovalCalendarUnit:16];
  [v5 setEarnDateStrategy:1];
  v8 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v9 = [v8 predicateFormat];
  [v5 setVisibilityPredicate:v9];

  v10 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v11 = [v10 predicateFormat];
  [v5 setAlertabilityPredicate:v11];

  [v5 setDisplaysEarnedInstanceCount:1];
  v12 = [MEMORY[0x277CCDAB0] countUnit];
  [v5 setCanonicalUnit:v12];

  [v5 setDisplayOrder:a2 + 2];

  return v5;
}

id ASCompetitionVictoryFriendUUIDFromTemplate(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@_", @"CompetitionVictory"];
  [v2 rangeOfString:v3];
  v5 = [v2 substringFromIndex:v4];

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

  return v6;
}

uint64_t ASIsAchievementValidForCompetitionSuggestion(void *a1)
{
  v1 = a1;
  v2 = MoveGoal200PercentTemplate();
  v3 = [v2 uniqueName];
  if ([v1 isEqualToString:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = MoveGoal300PercentTemplate();
    v6 = [v5 uniqueName];
    if ([v1 isEqualToString:v6])
    {
      v4 = 1;
    }

    else
    {
      v7 = MoveGoal400PercentTemplate();
      v8 = [v7 uniqueName];
      if ([v1 isEqualToString:v8])
      {
        v4 = 1;
      }

      else
      {
        v9 = DailyMoveRecordTemplate();
        v10 = [v9 uniqueName];
        if ([v1 isEqualToString:v10])
        {
          v4 = 1;
        }

        else
        {
          v23 = DailyExerciseRecordTemplate();
          v22 = [v23 uniqueName];
          if ([v1 isEqualToString:?])
          {
            v4 = 1;
          }

          else
          {
            v21 = NewMoveGoalAchievedTemplate();
            v20 = [v21 uniqueName];
            if ([v1 isEqualToString:?])
            {
              v4 = 1;
            }

            else
            {
              v19 = PerfectWeekMoveTemplate();
              v18 = [v19 uniqueName];
              if ([v1 isEqualToString:?])
              {
                v4 = 1;
              }

              else
              {
                v17 = PerfectWeekStandTemplate();
                v16 = [v17 uniqueName];
                if ([v1 isEqualToString:?])
                {
                  v4 = 1;
                }

                else
                {
                  v15 = PerfectWeekExerciseTemplate();
                  v14 = [v15 uniqueName];
                  if ([v1 isEqualToString:?])
                  {
                    v4 = 1;
                  }

                  else
                  {
                    v13 = PerfectWeekAllTemplate();
                    v12 = [v13 uniqueName];
                    if ([v1 isEqualToString:?])
                    {
                      v4 = 1;
                    }

                    else
                    {
                      v4 = [v1 containsString:@"CompetitionVictory"];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

id ASPreferredCompetitionVictoryBadgeStylesForFriend(void *a1, void *a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ASLoggingInitialize();
  v5 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 UUID];
    v8 = [v3 displayName];
    *buf = 138543618;
    v107 = v7;
    v108 = 2112;
    v109 = v8;
    _os_log_impl(&dword_23E4FA000, v6, OS_LOG_TYPE_DEFAULT, "Computing preferred victory badge style for friend: %{public}@ - %@", buf, 0x16u);
  }

  v9 = v3;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke;
  v98[3] = &unk_278C464C8;
  v65 = v9;
  v99 = v9;
  v64 = [v4 hk_filter:v98];
  v10 = [v64 allObjects];
  v12 = ASFriendsSortedByEarliestCompetitionVictoryOrPotentialVictoryDate(v10, v11);

  v63 = v12;
  v71 = [v12 hk_map:&__block_literal_global_318];
  v13 = [v71 hk_map:&__block_literal_global_322];
  ASLoggingInitialize();
  v14 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = ASFormattedSequence(v13);
    *buf = 138543362;
    v107 = v16;
    _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, "Used badge models: %{public}@", buf, 0xCu);
  }

  v17 = ASLinearSequenceWithCount(5);
  v18 = ASShuffledArray(v17);

  v19 = ASUniqueItemsInArrayPreferringLastOccurance(v13);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v95;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v95 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v94 + 1) + 8 * i);
        if (([v19 containsObject:v24] & 1) == 0)
        {
          v104 = v24;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
          v26 = [v25 arrayByAddingObjectsFromArray:v19];

          v19 = v26;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v21);
  }

  ASLoggingInitialize();
  v27 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    v29 = ASFormattedSequence(v19);
    *buf = 138543362;
    v107 = v29;
    _os_log_impl(&dword_23E4FA000, v28, OS_LOG_TYPE_DEFAULT, "Preferred badge model order: %{public}@", buf, 0xCu);
  }

  v66 = v4;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v67 = v19;
  v72 = [v67 countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v72)
  {
    v69 = *v91;
    v30 = MEMORY[0x277CBEBF8];
    v70 = v13;
    do
    {
      v31 = 0;
      do
      {
        if (*v91 != v69)
        {
          objc_enumerationMutation(v67);
        }

        v77 = v31;
        v32 = *(*(&v90 + 1) + 8 * v31);
        v33 = [v32 unsignedIntValue];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_324;
        v88[3] = &__block_descriptor_34_e28___NSNumber_16__0__NSNumber_8l;
        v89 = v33;
        v34 = [v71 hk_map:v88];
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_2_325;
        v86[3] = &__block_descriptor_34_e28___NSNumber_16__0__NSNumber_8l;
        v73 = v33;
        v87 = v33;
        v35 = [v71 hk_map:v86];
        ASLoggingInitialize();
        v36 = ASLogAchievements;
        if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = ASFormattedSequence(v34);
          *buf = 138543618;
          v107 = v32;
          v108 = 2114;
          v109 = v38;
          _os_log_impl(&dword_23E4FA000, v37, OS_LOG_TYPE_DEFAULT, "Used colors for badge %{public}@: %{public}@", buf, 0x16u);
        }

        v39 = ASLinearSequenceWithCount(10);
        v40 = ASShuffledArray(v39);

        v75 = v35;
        v76 = v34;
        v74 = [v35 arrayByAddingObjectsFromArray:v34];
        v41 = ASUniqueItemsInArrayPreferringLastOccurance(v74);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v42 = v40;
        v43 = [v42 countByEnumeratingWithState:&v82 objects:v102 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v83;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v83 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v82 + 1) + 8 * j);
              if (([v41 containsObject:v47] & 1) == 0)
              {
                v101 = v47;
                v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
                v49 = [v48 arrayByAddingObjectsFromArray:v41];

                v41 = v49;
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v82 objects:v102 count:16];
          }

          while (v44);
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v50 = v41;
        v51 = [v50 countByEnumeratingWithState:&v78 objects:v100 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v79;
          do
          {
            v54 = 0;
            v55 = v30;
            do
            {
              if (*v79 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v56 = [*(*(&v78 + 1) + 8 * v54) unsignedIntValue];
              v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56 | (v73 << 16)];
              v30 = [v55 arrayByAddingObject:v57];

              ++v54;
              v55 = v30;
            }

            while (v52 != v54);
            v52 = [v50 countByEnumeratingWithState:&v78 objects:v100 count:16];
          }

          while (v52);
        }

        v31 = v77 + 1;
        v13 = v70;
      }

      while (v77 + 1 != v72);
      v72 = [v67 countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v72);
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  ASLoggingInitialize();
  v58 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v59 = v58;
    v60 = ASFormattedVictoryBadgeStyles(v30);
    *buf = 138543362;
    v107 = v60;
    _os_log_impl(&dword_23E4FA000, v59, OS_LOG_TYPE_DEFAULT, "Resulting preferred styles: %{public}@", buf, 0xCu);
  }

  v61 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 UUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else if ([v3 isCompetitionActive] & 1) != 0 || objc_msgSend(v3, "numberOfCompetitionWinsByMe") || (objc_msgSend(v3, "hasPendingCompetitionRequestFromMe"))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v3 isAwaitingCompetitionResponseFromMe];
  }

  return v7;
}

id __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCompetitionActive])
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 currentCompetition];
  }

  else if (([v2 hasPendingCompetitionRequestFromMe] & 1) != 0 || objc_msgSend(v2, "isAwaitingCompetitionResponseFromMe"))
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 competitionPendingAcceptance];
  }

  else
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 mostRecentlyCompletedCompetition];
  }

  v5 = v4;
  v6 = [v3 numberWithUnsignedInt:{objc_msgSend(v4, "victoryBadgeStyle")}];

  return v6;
}

uint64_t __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntValue] >> 16;
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithUnsignedShort:v2];
}

id __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntValue];
  v5 = [v3 unsignedIntValue];

  if (*(a1 + 32) == HIWORD(v4))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithShort:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __ASPreferredCompetitionVictoryBadgeStylesForFriend_block_invoke_2_325(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntValue];
  v5 = [v3 unsignedIntValue];

  if (*(a1 + 32) == HIWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithShort:v5];
  }

  return v6;
}

uint64_t ASBestCompetitionVictoryBadgeStyleForPreferredStyles(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ASLoggingInitialize();
  v5 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Searching for best style given preferred styles", buf, 2u);
  }

  ASLoggingInitialize();
  v6 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = ASFormattedVictoryBadgeStyles(v3);
    *buf = 138412290;
    v37 = v8;
    _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Styles: %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v9 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = ASFormattedVictoryBadgeStyles(v4);
    *buf = 138412290;
    v37 = v11;
    _os_log_impl(&dword_23E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Other styles: %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    v16 = &unk_2850DDB08;
    v17 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [v12 indexOfObject:v19];
        v21 = [v4 indexOfObject:v19];
        v22 = (v20 * v20 + v21 * v21);
        if (v17 > v22)
        {
          v23 = v19;

          v17 = v22;
          v16 = v23;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = &unk_2850DDB08;
  }

  ASLoggingInitialize();
  v24 = ASLogAchievements;
  if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v16 unsignedIntValue];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%d.%d]", HIWORD(v26), v26, v31];
    *buf = 138412290;
    v37 = v27;
    _os_log_impl(&dword_23E4FA000, v25, OS_LOG_TYPE_DEFAULT, "Picked style: %@", buf, 0xCu);
  }

  v28 = [v16 unsignedIntValue];

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

id IDSDestinationForString(void *a1)
{
  v1 = a1;
  if (([v1 containsString:@"@"] & 1) != 0 || objc_msgSend(v1, "containsString:", @"mailto:"))
  {
    v2 = MEMORY[0x23EF0C480](v1);
LABEL_4:
    v3 = v2;
    goto LABEL_5;
  }

  if (([v1 containsString:@"tel:"] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCA900], "decimalDigitCharacterSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v1, "rangeOfCharacterFromSet:", v5), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v2 = IDSCopyIDForPhoneNumber();
    goto LABEL_4;
  }

  v3 = 0;
LABEL_5:

  return v3;
}

id _RichMessagePayload(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CCACA8];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v34 = [v11 stringWithFormat:@"%ld", a1];
  v17 = [v15 base64EncodedStringWithOptions:0];

  v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"type" value:v34];
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:v16 value:v17];

  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"message" value:v14];

  v21 = MEMORY[0x277CCAD18];
  v22 = [v13 UUIDString];

  v23 = [v21 queryItemWithName:@"friendUUID" value:v22];

  v24 = [MEMORY[0x277CCAD18] queryItemWithName:@"recipient" value:v12];

  v25 = MEMORY[0x277CCACA8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v27 = [v25 stringWithFormat:@"%f", v26];
  v28 = [MEMORY[0x277CCAD18] queryItemWithName:@"timestamp" value:v27];
  v29 = objc_opt_new();
  [v29 setScheme:@"data"];
  [v29 setHost:@"activity-sharing"];
  v35[0] = v18;
  v35[1] = v19;
  v35[2] = v20;
  v35[3] = v23;
  v35[4] = v24;
  v35[5] = v28;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
  [v29 setQueryItems:v30];

  v31 = [v29 URL];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

id ASRichMessagePayloadForAchievement(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [a1 codableAchievement];
  v11 = [v10 data];
  v12 = _RichMessagePayload(1, @"achievement", v11, v9, v8, v7);

  return v12;
}

id ASRichMessagePayloadForGoalCompletion(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [a1 codableSnapshot];
  v11 = [v10 data];
  v12 = _RichMessagePayload(0, @"snapshot", v11, v9, v8, v7);

  return v12;
}

id ASRichMessagePayloadForWorkout(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [a1 codableWorkout];
  v11 = [v10 data];
  v12 = _RichMessagePayload(2, @"workout", v11, v9, v8, v7);

  return v12;
}

id ASRichMessagePayloadForCompetitionAccepted(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [a1 codableCompetition];
  v11 = [v10 data];
  v12 = _RichMessagePayload(3, @"competition", v11, v9, v8, v7);

  return v12;
}

id ASRichMessagePayloadForCompetitionScore(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [a1 codableCompetition];
  v11 = [v10 data];
  v12 = _RichMessagePayload(4, @"competition", v11, v9, v8, v7);

  return v12;
}

id _FindQueryItemValue(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v7 = [v10 value];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

id _FindQueryItemData(void *a1, void *a2)
{
  v2 = _FindQueryItemValue(a1, a2);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t ASRichMessageTypeFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemValue(@"type", a1);
  v2 = v1;
  if (!v1 || (v3 = [v1 integerValue], v3 >= 5))
  {
    v3 = -1;
  }

  return v3;
}

id ASAchievementFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemData(@"achievement", a1);
  if (v1)
  {
    v2 = [[ASCodableCloudKitAchievement alloc] initWithData:v1];
    v3 = [MEMORY[0x277CCDDC0] fitnessFriendAchievementWithCodableAchievement:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ASSnapshotFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemData(@"snapshot", a1);
  if (v1)
  {
    v2 = [[ASCodableCloudKitActivitySnapshot alloc] initWithData:v1];
    v3 = [MEMORY[0x277CCDDC8] fitnessFriendActivitySnapshotWithCodableSnapshot:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ASWorkoutFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemData(@"workout", a1);
  if (v1)
  {
    v2 = [[ASCodableCloudKitWorkout alloc] initWithData:v1];
    v3 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutWithCodableWorkout:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ASCompetitionFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemData(@"competition", a1);
  if (v1)
  {
    v2 = [[ASCodableCloudKitCompetition alloc] initWithData:v1];
    v3 = [ASCompetition competitionWithCodableCompetition:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ASFriendUUIDFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemValue(@"friendUUID", a1);
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id ASTimestampFromRichMessagePayload(void *a1)
{
  v1 = _FindQueryItemValue(@"timestamp", a1);
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x277CBEAA8];
    [v1 doubleValue];
    v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ASShuffledArray(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = [v1 count];
  if (v2 >= 2)
  {
    do
    {
      v3 = v2 - 1;
      [v1 exchangeObjectAtIndex:v2 - 1 withObjectAtIndex:arc4random_uniform(v2)];
      v2 = v3;
    }

    while (v3 > 1);
  }

  v4 = [MEMORY[0x277CBEA60] arrayWithArray:v1];

  return v4;
}

id ASUniqueItemsInArrayPreferringLastOccurance(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([v6 containsObject:v8] & 1) == 0)
        {
          v9 = [v6 arrayByAddingObject:v8];

          v6 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v10 = [v6 reverseObjectEnumerator];
  v11 = [v10 allObjects];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id ASLinearSequenceWithCount(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = MEMORY[0x277CBEBF8];
    do
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v5 = [v3 arrayByAddingObject:v4];

      ++v2;
      v3 = v5;
    }

    while (a1 != v2);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

id ASCompetitionCalculateStartDateComponentsForFriend(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  ASLoggingInitialize();
  v2 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [v1 UUID];
    v5 = [v1 displayName];
    v26 = 138543618;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_23E4FA000, v3, OS_LOG_TYPE_DEFAULT, "Computing competition start day for friend: %{public}@ - %@", &v26, 0x16u);
  }

  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 dateByAddingUnit:16 value:1 toDate:v7 options:0];

  v9 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v10 = *MEMORY[0x277CCE1D0];
  v11 = [v9 components:*MEMORY[0x277CCE1D0] fromDate:v8];

  ASLoggingInitialize();
  v12 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v8;
    _os_log_impl(&dword_23E4FA000, v12, OS_LOG_TYPE_DEFAULT, "My next day is %@", &v26, 0xCu);
  }

  v13 = [v1 currentDateComponents];
  v14 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v15 = [v14 dateFromComponents:v13];

  v16 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v17 = [v16 dateByAddingUnit:16 value:1 toDate:v15 options:0];

  v18 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v19 = [v18 components:v10 fromDate:v17];

  ASLoggingInitialize();
  v20 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v17;
    _os_log_impl(&dword_23E4FA000, v20, OS_LOG_TYPE_DEFAULT, "Friend next day is %@", &v26, 0xCu);
  }

  if ([v17 hk_isAfterDate:v8])
  {
    v21 = v19;
  }

  else
  {
    v21 = v11;
  }

  v22 = v21;
  ASLoggingInitialize();
  v23 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v22;
    _os_log_impl(&dword_23E4FA000, v23, OS_LOG_TYPE_DEFAULT, "Latest day is %@", &v26, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

void *ASCompetitionCalculateStartDateComponentsForFriendWithProposedStartDate(void *a1, void *a2)
{
  v3 = a2;
  v4 = ASCompetitionCalculateStartDateComponentsForFriend(a1);
  v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v6 = [v5 dateFromComponents:v4];

  v7 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v8 = [v7 dateFromComponents:v3];

  if ([v8 hk_isAfterDate:v6])
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

uint64_t _ASNumberOfDaysSinceCompetitionStart()
{
  v0 = _HKActivityCacheDateComponentsFromCacheIndex();
  v1 = _HKActivityCacheDateComponentsFromCacheIndex();
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = [v2 dateFromComponents:v0];

  v4 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [v4 dateFromComponents:v1];

  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7 = [v6 components:16 fromDate:v3 toDate:v5 options:0];

  v8 = [v7 day];
  return v8;
}

uint64_t ASCompetitionRequestHasExpired(void *a1)
{
  v1 = a1;
  v2 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionRequestExpirationNumberOfSeconds", 172800);
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [v3 dateByAddingUnit:128 value:v2 toDate:v1 options:0];

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v5 hk_isAfterOrEqualToDate:v4];

  return v6;
}

uint64_t ASCompetitionRequestIsStillVisible(void *a1)
{
  v1 = a1;
  v2 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionRequestExpirationNumberOfSeconds", 172800);
  v3 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionRequestVisibilityAfterExpirationNumberOfSeconds", 259200);
  v4 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [v4 dateByAddingUnit:128 value:v3 + v2 toDate:v1 options:0];

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v6 hk_isBeforeOrEqualToDate:v5];

  return v7;
}

double ASCompetitionRequestTimeIntervalUntilExpiration(void *a1)
{
  v1 = a1;
  v2 = _ASIntegerFromUserDefaultsWithDefaultValue(@"CompetitionRequestExpirationNumberOfSeconds", 172800);
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [v3 dateByAddingUnit:128 value:v2 toDate:v1 options:0];

  [v4 timeIntervalSinceNow];
  v6 = v5;

  return v6;
}

uint64_t ASCompetitionIsReadyToComplete(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  ASLoggingInitialize();
  v8 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v8, OS_LOG_TYPE_DEFAULT, "Evaluating if competition is ready to complete", buf, 2u);
  }

  v9 = [v7 primaryRelationship];

  v10 = [v9 isCompetitionActive];
  if ((v10 & 1) == 0)
  {
    ASLoggingInitialize();
    v12 = ASLogCompetitions;
    if (!os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = 0;
    v13 = "No active competition, not ready to complete";
    v14 = &v18;
LABEL_13:
    _os_log_impl(&dword_23E4FA000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    goto LABEL_14;
  }

  if (([v5 hasPushedFinalScore] & 1) == 0)
  {
    ASLoggingInitialize();
    v12 = ASLogCompetitions;
    if (!os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = 0;
    v13 = "We've not yet pushed a final score, not ready to complete";
    v14 = &v17;
    goto LABEL_13;
  }

  if (([v6 hasPushedFinalScore] & 1) == 0)
  {
    ASLoggingInitialize();
    v12 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v13 = "Opponent has not yet pushed a final score, not ready to complete";
      v14 = &v16;
      goto LABEL_13;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

uint64_t _ASCompetitionScoreForActivitySummary(void *a1, unint64_t a2)
{
  v3 = a1;
  [v3 _activeEnergyCompletionPercentage];
  v5 = v4;
  [v3 _moveMinutesCompletionPercentage];
  v7 = v5 + v6;
  [v3 _exerciseTimeCompletionPercentage];
  v9 = v7 + v8;
  [v3 _standHoursCompletionPercentage];
  v11 = v10;

  v12 = llround((v9 + v11) * 100.0);
  v13 = fmin(v12, a2);
  if (a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = MEMORY[0x277CCABB0];

  return [v15 numberWithUnsignedInteger:v14];
}

uint64_t ASCompetitionNeedsScoreUpdateForSummary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 startDateComponents];
  v6 = _HKCacheIndexFromDateComponents();

  if ([v4 isPaused])
  {
    ASLoggingInitialize();
    v7 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v8 = "Current activity summary is paused, not updating";
      v9 = &v17;
LABEL_14:
      _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if ([v4 _activitySummaryIndex] < v6)
  {
    ASLoggingInitialize();
    v7 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v8 = "Current activity summary index is less than competition start index, not updating";
      v9 = &v16;
      goto LABEL_14;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v10 = [v4 _activitySummaryIndex];
  if (v10 < [v3 currentCacheIndex])
  {
    ASLoggingInitialize();
    v7 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "Current activity summary index is less than competition current cache index, not updating";
      v9 = &v15;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = [v3 currentCacheIndex];
  if (v11 >= [v3 endDateCacheIndex])
  {
    ASLoggingInitialize();
    v7 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = "Competition current cache index is greater than competition end cache index, not updating";
      v9 = &v14;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = 1;
LABEL_16:

  return v12;
}

id ASCompetitionCalculateUpdatedScores(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 startDateComponents];
  _HKCacheIndexFromDateComponents();

  [v6 _activitySummaryIndex];
  v30 = _ASNumberOfDaysSinceCompetitionStart();
  [v7 _activitySummaryIndex];
  v9 = _ASNumberOfDaysSinceCompetitionStart();
  [v5 endDateCacheIndex];
  v10 = _ASNumberOfDaysSinceCompetitionStart();
  v31 = v9;
  if (v10 >= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v5 scores];
  v13 = [v12 mutableCopy];

  v14 = _ASCompetitionScoreForActivitySummary(v6, [v5 maximumNumberOfPointsPerDay]);
  v32 = v5;
  v33 = v7;
  v15 = _ASCompetitionScoreForActivitySummary(v7, [v5 maximumNumberOfPointsPerDay]);
  while ([v13 count] < v11)
  {
    ASLoggingInitialize();
    v16 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v13 count];
      *buf = 134217984;
      v35 = v18;
      _os_log_impl(&dword_23E4FA000, v17, OS_LOG_TYPE_DEFAULT, "Adding score for day %lu", buf, 0xCu);
    }

    [v13 addObject:&unk_2850DDB20];
  }

  if (v30 < [v13 count])
  {
    ASLoggingInitialize();
    v19 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E4FA000, v19, OS_LOG_TYPE_DEFAULT, "Updating yesterday score", buf, 2u);
    }

    v20 = [v14 unsignedIntegerValue];
    v21 = [v13 objectAtIndexedSubscript:v30];
    v22 = [v21 unsignedIntegerValue];

    if (v20 >= v22)
    {
      [v13 setObject:v14 atIndexedSubscript:v30];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASCompetitionCalculateUpdatedScores_cold_1();
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASCompetitionCalculateUpdatedScores_cold_2();
      }
    }
  }

  if (v31 < [v13 count])
  {
    ASLoggingInitialize();
    v23 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E4FA000, v23, OS_LOG_TYPE_DEFAULT, "Updating today score", buf, 2u);
    }

    v24 = [v15 unsignedIntegerValue];
    v25 = [v13 objectAtIndexedSubscript:v31];
    v26 = [v25 unsignedIntegerValue];

    if (v24 >= v26)
    {
      [v13 setObject:v15 atIndexedSubscript:v31];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASCompetitionCalculateUpdatedScores_cold_1();
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASCompetitionCalculateUpdatedScores_cold_4();
      }
    }
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v13];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

unint64_t ASCompetitionCalculateDailyAverageScore(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = llround((ASCompetitionCalculateTotalScore(v1) / [v1 count]));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ASCompetitionDailyScoreForParticipantWithCacheIndex(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 startDateComponents];
  _HKCacheIndexFromDateComponents();

  if (a2)
  {
    [v3 opponentScores];
  }

  else
  {
    [v3 scores];
  }
  v5 = ;

  v6 = _ASNumberOfDaysSinceCompetitionStart();
  if (v6 >= [v5 count])
  {
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [v7 unsignedIntegerValue];
  }

  return v8;
}

uint64_t ASCompetitionCurrentScoreDelta(void *a1)
{
  v1 = a1;
  v2 = [v1 myTotalScore];
  v3 = [v1 opponentTotalScore];

  if (v2 - v3 >= 0)
  {
    return v2 - v3;
  }

  else
  {
    return v3 - v2;
  }
}

BOOL ASCompetitionScoresAreWithinClosenessThreshold(void *a1)
{
  v1 = a1;
  v2 = vcvtmd_u64_f64([v1 opponentTotalScore] * 0.97);
  v3 = [v1 opponentTotalScore];
  v4 = [v1 myTotalScore] > v2 && objc_msgSend(v1, "myTotalScore") < vcvtpd_u64_f64(v3 * 1.03);

  return v4;
}

id ASCompetitionDayWithHighestScoreForParticipant(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    [v3 opponentScores];
  }

  else
  {
    [v3 scores];
  }
  v5 = ;
  if (![v5 count])
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  do
  {
    v9 = [v5 objectAtIndexedSubscript:v6];
    v10 = [v9 integerValue];

    if (v10 > v7)
    {
      v7 = v10;
      v8 = v6;
    }

    ++v6;
  }

  while (v6 < [v5 count]);
  if (v7 > 0x12B)
  {
    v11 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v12 = [v4 startDate];
    v13 = [v11 dateByAddingUnit:16 value:v8 toDate:v12 options:0];
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  return v13;
}

id ASCompetitionWinningDayWithHighestScoreForParticipant(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    [v3 opponentScores];
  }

  else
  {
    [v3 scores];
  }
  v22 = ;
  [v4 daysWonByParticipant:a2];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v13 = v4;
        v14 = [v4 startDate];
        v15 = [v12 components:16 fromDate:v14 toDate:v11 options:0];

        v16 = [v22 objectAtIndexedSubscript:{objc_msgSend(v15, "day")}];
        v17 = [v16 integerValue];

        if (v17 > v8)
        {
          v18 = v11;

          v7 = v18;
          v8 = v17;
        }

        v4 = v13;
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t ASCompetitionWinCountForParticipant(void *a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __ASCompetitionWinCountForParticipant_block_invoke;
  v5[3] = &__block_descriptor_40_e23_B16__0__ASCompetition_8l;
  v5[4] = a2;
  v2 = [a1 hk_filter:v5];
  v3 = [v2 count];

  return v3;
}

uint64_t ASDidLosePreviousCompetitionWithFriend(void *a1)
{
  v1 = a1;
  v2 = [v1 completedCompetitions];
  if ([v2 count] >= 2)
  {
    v4 = [v1 completedCompetitions];
    v5 = [v1 completedCompetitions];
    v6 = [v4 objectAtIndex:{objc_msgSend(v5, "count") - 2}];

    v3 = [v6 isParticipantWinning:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL ASCompetitionParticipantHasCrossedMercyThresholdOnLastDayForCompetition(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 opponentTotalScore];
    v6 = [v4 myTotalScore];
  }

  else
  {
    v5 = [v3 myTotalScore];
    v6 = [v4 opponentTotalScore];
  }

  v7 = v6;
  if ([v4 isDailyScoreCapped])
  {
    v8 = [v4 maximumNumberOfPointsPerDay];
  }

  else
  {
    v8 = ASCompetitionMaximumPointsPerDayForNewCompetitions();
  }

  v9 = v8;
  v10 = a1 == 0;
  v11 = [v4 lastDayOfCompetition];
  v12 = [v4 dailyScoreForParticipant:a1 onDate:v11];

  v13 = [v4 lastDayOfCompetition];
  v14 = [v4 dailyScoreForParticipant:v10 onDate:v13];

  return v7 + v12 - v5 - v14 > v9;
}

uint64_t __ASFriendsWithCompetitionsStartingToday_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currentCompetition];
  v3 = [v2 isFirstDayOfCompetition];

  return v3;
}

uint64_t __ASFriendsWithCompetitionsEndingToday_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currentCompetition];
  v3 = [v2 isLastDayOfCompetition];

  return v3;
}

uint64_t _ASFriendsSortedByComparator(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = (*(a3 + 16))(a3, v5, v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v5 displayName];
    v10 = [v9 uppercaseString];
    v11 = [v6 displayName];
    v12 = [v11 uppercaseString];
    v8 = [v10 compare:v12];

    if (!v8)
    {
      v13 = [v5 UUID];
      v14 = [v13 UUIDString];
      v15 = [v6 UUID];
      v16 = [v15 UUIDString];
      v8 = [v14 compare:v16];
    }
  }

  return v8;
}

uint64_t __ASFriendsSortedByEarliestCompetitionVictoryOrPotentialVictoryDate_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 earliestCompetitionVictoryOrPotentialVictoryDate];
  v6 = [v4 earliestCompetitionVictoryOrPotentialVictoryDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __ASFriendsSortedByCompetitionEndDate_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 currentCompetition];
  v6 = [v5 endDate];
  v7 = [v4 currentCompetition];

  v8 = [v7 endDate];
  v9 = [v6 compare:v8];

  return v9;
}

id ASFriendsSortedByCompetitionEndDateForFirstGlanceType(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFELL;
  v3 = [a1 sortedArrayUsingComparator:&__block_literal_global_23];
  if (v2 != 2)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v3];
    v5 = [v3 hk_filter:&__block_literal_global_14];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [v4 removeObject:v10];
          [v4 insertObject:v10 atIndex:0];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

    v3 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __ASCompetitionsSortedByEndDate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 endDate];
  v7 = [v5 endDate];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 UUID];
    v10 = [v9 UUIDString];
    v11 = [v5 UUID];
    v12 = [v11 UUIDString];
    v8 = [v10 compare:v12];
  }

  return v8;
}

uint64_t ASValidateEligibilityForOutgoingCompetitionRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 primaryRelationship];
  v5 = [v3 primaryRemoteRelationship];
  if (v3)
  {
    if (([v4 isCompetitionActive] & 1) != 0 || objc_msgSend(v5, "isCompetitionActive"))
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASValidateEligibilityForOutgoingCompetitionRequest_cold_3();
      }

      v6 = MEMORY[0x277CCA9B8];
      v7 = 3;
    }

    else if ([v4 isHidingActivityData])
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASValidateEligibilityForOutgoingCompetitionRequest_cold_2();
      }

      v6 = MEMORY[0x277CCA9B8];
      v7 = 7;
    }

    else
    {
      if ([v5 supportsCompetitions])
      {
        v10 = 1;
        goto LABEL_15;
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASValidateEligibilityForOutgoingCompetitionRequest_cold_1();
      }

      v6 = MEMORY[0x277CCA9B8];
      v7 = 8;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      ASValidateEligibilityForOutgoingCompetitionRequest_cold_4();
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = 1;
  }

  v8 = [v6 errorWithDomain:@"com.apple.ActivitySharing" code:v7 userInfo:0];
  if (v8)
  {
    if (a2)
    {
      v9 = v8;
      *a2 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

uint64_t ASValidateEligibilityForIncomingCompetitionRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 primaryRelationship];
  v5 = [v3 primaryRemoteRelationship];
  if (!v3)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      ASValidateEligibilityForIncomingCompetitionRequest_cold_3();
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing" code:1 userInfo:0];
    if (!v8)
    {
      goto LABEL_23;
    }

    if (a2)
    {
      goto LABEL_22;
    }

LABEL_13:
    _HKLogDroppedError();
    goto LABEL_23;
  }

  if (![v4 isFriendshipActive] || (objc_msgSend(v5, "isFriendshipActive") & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      ASValidateEligibilityForIncomingCompetitionRequest_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing" code:2 userInfo:0];
    if (v6)
    {
      if (a2)
      {
        v7 = v6;
        *a2 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (([v4 isCompetitionActive] & 1) == 0 && !objc_msgSend(v5, "isCompetitionActive"))
  {
    v10 = 1;
    goto LABEL_24;
  }

  ASLoggingInitialize();
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
  {
    ASValidateEligibilityForOutgoingCompetitionRequest_cold_3();
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing" code:3 userInfo:0];
  if (v8)
  {
    if (a2)
    {
LABEL_22:
      v9 = v8;
      *a2 = v8;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

LABEL_23:

  v10 = 0;
LABEL_24:

  return v10;
}

uint64_t ASValidateEligibilityForAcceptingCompetitionRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 primaryRelationship];
  v5 = v4;
  if (v3)
  {
    if ([v4 hasIncomingCompetitionRequest])
    {
      if ([v5 isCompetitionActive])
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
        {
          ASValidateEligibilityForAcceptingCompetitionRequest_cold_3();
        }

        v6 = MEMORY[0x277CCA9B8];
        v7 = 3;
      }

      else
      {
        if (![v5 isHidingActivityData])
        {
          v10 = 1;
          goto LABEL_18;
        }

        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
        {
          ASValidateEligibilityForOutgoingCompetitionRequest_cold_2();
        }

        v6 = MEMORY[0x277CCA9B8];
        v7 = 7;
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
      {
        ASValidateEligibilityForAcceptingCompetitionRequest_cold_1();
      }

      v6 = MEMORY[0x277CCA9B8];
      v7 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      ASValidateEligibilityForAcceptingCompetitionRequest_cold_4();
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = 1;
  }

  v8 = [v6 errorWithDomain:@"com.apple.ActivitySharing" code:v7 userInfo:0];
  if (v8)
  {
    if (a2)
    {
      v9 = v8;
      *a2 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = 0;
LABEL_18:

  return v10;
}

id ASCompetitionsEligibleForArchival(void *a1)
{
  v1 = a1;
  ASLoggingInitialize();
  v2 = ASLogCompetitions;
  if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23E4FA000, v2, OS_LOG_TYPE_DEFAULT, "Validating competitions for archival", v5, 2u);
  }

  v3 = [v1 hk_filter:&__block_literal_global_32];

  return v3;
}

uint64_t __ASCompetitionsEligibleForArchival_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 lastPushedCacheIndex])
  {
    v3 = [v2 lastPushedCacheIndex];
    if (v3 >= [v2 endDateCacheIndex])
    {
      v4 = 1;
      goto LABEL_9;
    }

    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      __ASCompetitionsEligibleForArchival_block_invoke_cold_1();
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      __ASCompetitionsEligibleForArchival_block_invoke_cold_2();
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t ASIgnoredMostRecentCompetitionRequestFromContact(void *a1)
{
  v1 = a1;
  v2 = [v1 primaryRelationship];
  if ([v2 hasIgnoredCompetitionRequest])
  {
    v3 = [v2 dateForLatestIgnoredCompetitionRequest];
    v4 = [v1 primaryRemoteRelationship];
    v5 = [v4 dateForLatestOutgoingCompetitionRequest];

    v6 = [v3 hk_isAfterDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ASPairedDeviceSupportsCompetitions()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  [v0 getPairedDevices];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        NRWatchOSVersionForRemoteDevice();
        if (NRVersionIsGreaterThanOrEqual())
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

NSString *ASClientTaskIdentifier()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

uint64_t ASCodableCloudKitActivitySnapshotReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v80[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v80[0] & 0x7F) << v5;
        if ((v80[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 39)
      {
        if (v13 <= 59)
        {
          if (v13 > 49)
          {
            if (v13 == 50)
            {
              *(a1 + 144) |= 0x2000u;
              v80[0] = 0;
              v45 = [a2 position] + 8;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
              {
                v68 = [a2 data];
                [v68 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 112;
              goto LABEL_155;
            }

            if (v13 == 51)
            {
              *(a1 + 144) |= 0x800u;
              v80[0] = 0;
              v27 = [a2 position] + 8;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 96;
              goto LABEL_155;
            }
          }

          else
          {
            if (v13 == 40)
            {
              *(a1 + 144) |= 1u;
              v80[0] = 0;
              v43 = [a2 position] + 8;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 8;
              goto LABEL_155;
            }

            if (v13 == 41)
            {
              *(a1 + 144) |= 2u;
              v80[0] = 0;
              v23 = [a2 position] + 8;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 16;
              goto LABEL_155;
            }
          }
        }

        else if (v13 <= 69)
        {
          if (v13 == 60)
          {
            *(a1 + 144) |= 0x200u;
            v80[0] = 0;
            v62 = [a2 position] + 8;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v66 = v80[0];
            v67 = 80;
            goto LABEL_155;
          }

          if (v13 == 61)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 144) |= 0x4000u;
            while (1)
            {
              LOBYTE(v80[0]) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v80[0] & 0x7F) << v37;
              if ((v80[0] & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_131:
            v64 = 120;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v13)
          {
            case 'F':
              *(a1 + 144) |= 0x100u;
              v80[0] = 0;
              v60 = [a2 position] + 8;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
              {
                v74 = [a2 data];
                [v74 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 72;
              goto LABEL_155;
            case 'G':
              *(a1 + 144) |= 0x80u;
              v80[0] = 0;
              v47 = [a2 position] + 8;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v66 = v80[0];
              v67 = 64;
LABEL_155:
              *(a1 + v67) = v66;
              goto LABEL_156;
            case 'H':
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 144) |= 4u;
              while (1)
              {
                LOBYTE(v80[0]) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v80[0] & 0x7F) << v14;
                if ((v80[0] & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_123;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v16;
              }

LABEL_123:
              v64 = 24;
LABEL_132:
              *(a1 + v64) = v20;
              goto LABEL_156;
          }
        }

        goto LABEL_114;
      }

      if (v13 > 19)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 144) |= 0x400u;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v80[0] & 0x7F) << v52;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v54;
          }

LABEL_119:
          v64 = 88;
          goto LABEL_132;
        }

        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 144) |= 0x1000u;
          while (1)
          {
            LOBYTE(v80[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v80[0] & 0x7F) << v29;
            if ((v80[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_127;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_127:
          v64 = 104;
          goto LABEL_132;
        }

        goto LABEL_114;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = *(a1 + 136);
          *(a1 + 136) = v21;

          goto LABEL_156;
        }

        goto LABEL_114;
      }

      v49 = objc_alloc_init(ASCodableCloudKitSample);
      objc_storeStrong((a1 + 128), v49);
      v80[0] = 0;
      v80[1] = 0;
      if (!PBReaderPlaceMark() || !ASCodableCloudKitSampleReadFrom(v49, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_156:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 29)
    {
      if (v13 == 30)
      {
        *(a1 + 144) |= 8u;
        v80[0] = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v73 = [a2 data];
          [v73 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 32;
        goto LABEL_155;
      }

      if (v13 == 31)
      {
        *(a1 + 144) |= 0x10u;
        v80[0] = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 40;
        goto LABEL_155;
      }
    }

    else
    {
      if (v13 == 20)
      {
        *(a1 + 144) |= 0x20u;
        v80[0] = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v72 = [a2 data];
          [v72 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 48;
        goto LABEL_155;
      }

      if (v13 == 21)
      {
        *(a1 + 144) |= 0x40u;
        v80[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:v80 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v66 = v80[0];
        v67 = 56;
        goto LABEL_155;
      }
    }

LABEL_114:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_156;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableDatabaseCompetitionListEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v34 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v34 & 0x7F) << v21;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v31 = 8;
          goto LABEL_53;
        }

        v28 = PBReaderReadData();
        v29 = 32;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 16;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        v28 = PBReaderReadData();
        v29 = 24;
      }

      v30 = *(a1 + v29);
      *(a1 + v29) = v28;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v26 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_34;
        }

        *(a1 + 32) |= 2u;
        v26 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 16;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableMigrationAvailableItemContainerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ASCodableCloudKitMigrationAvailableItem);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !ASCodableCloudKitMigrationAvailableItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id ASSnapshotDictionaryByIndex(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [ASSampleCollector sampleDictionaryByIndex:a1 sampleIndexBlock:&__block_literal_global_8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
        v9 = MEMORY[0x277CCDDC8];
        v10 = [v8 allObjects];
        v11 = [v9 _mostSignificantSnapshotAmongSnapshots:v10];

        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "snapshotIndex")}];
        [v2 setObject:v11 forKey:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __ASWorkoutDictionaryByIndex_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 endDate];
  v3 = ASCacheIndexForLocalDate(v2);

  return v3;
}

uint64_t __ASAchievementDictionaryByIndex_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 completedDate];
  v3 = ASCacheIndexForLocalDate(v2);

  return v3;
}

uint64_t ASCodableSecureCloudShareItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___ASCodableSecureCloudShareItem__invitationToken;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___ASCodableSecureCloudShareItem__shareURL;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___ASCodableSecureCloudShareItem__zoneName;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableFinalizeHandshakeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(ASCodableShareLocations);
        objc_storeStrong((a1 + 24), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !ASCodableShareLocationsReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(ASCodableActivityDataPreview);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !ASCodableActivityDataPreviewReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableBulletinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            v22 = 48;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_57;
            }

            v21 = PBReaderReadData();
            v22 = 40;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v39 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v39 & 0x7F) << v23;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_62:
            v33 = 24;
LABEL_67:
            *(a1 + v33) = v20;
            goto LABEL_70;
          }

          if (v13 != 2)
          {
            goto LABEL_57;
          }

          v21 = PBReaderReadString();
          v22 = 64;
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = PBReaderReadData();
          v22 = 32;
        }

        else
        {
          if (v13 != 6)
          {
LABEL_57:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_70;
          }

          v21 = PBReaderReadData();
          v22 = 72;
        }
      }

      else
      {
        if (v13 != 7)
        {
          if (v13 == 8)
          {
            *(a1 + 80) |= 2u;
            v36 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 16) = v36;
            goto LABEL_70;
          }

          if (v13 != 9)
          {
            goto LABEL_57;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v38 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_66;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_66:
          v33 = 8;
          goto LABEL_67;
        }

        v21 = PBReaderReadData();
        v22 = 56;
      }

      v29 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_70:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableDatabaseCompetitionPreferredVictoryBadgeStylesReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v28 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28 & 0x7F) << v14;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableDatabaseCompetitionScoreReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v28 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28 & 0x7F) << v14;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt64Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _IsNotificationEventDateBeforeRelationshipBeganWithFriend(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isFriendshipCurrentlyActive] && (objc_msgSend(v4, "dateForLatestRelationshipStart"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 dateForLatestRelationshipStart];
    v7 = [v3 hk_isBeforeDate:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

__CFString *ASAchievementPathComponentForTemplate(void *a1)
{
  v1 = a1;
  if (ASIsCompetitionVictoryTemplate(v1, v2))
  {
    v3 = @"CompetitionVictory";
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

id ASBundlePathForTemplate(void *a1)
{
  v1 = ASAchievementPathComponentForTemplate(a1);
  v2 = [@"/System/Library/Health/Assets/ActivitySharingAssets.bundle" stringByAppendingPathComponent:v1];

  return v2;
}

id ASBundleURLForResource(void *a1, void *a2)
{
  v3 = a2;
  v4 = ASBundlePathForTemplate(a1);
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

id ASCompetitionVictoryPropertyListPathForStyle(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"color_%d", ASCompetitionVictoryBadgeColorFromStyle(a1)];
  v2 = MEMORY[0x277CBEBC0];
  v3 = ASBundlePathForTemplate(@"CompetitionVictory");
  v4 = [v3 stringByAppendingPathComponent:v1];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

id ASCompetitionVictoryResourcePathForStyle(unsigned int a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"badgemodel_%d", ASCompetitionVictoryBadgeModelFromStyle(a1)];
  v2 = ASBundleURLForResource(@"CompetitionVictory", v1);

  return v2;
}

id ASFriendAchievementFromTemplateAndEarnedInstance(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 uniqueName];
  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7 = [v4 earnedDateComponents];
  v8 = [v6 dateFromComponents:v7];

  v9 = [v4 value];

  v10 = 0.0;
  if (v9)
  {
    v11 = [v3 canonicalUnit];

    if (v11)
    {
      v12 = [v4 value];
      v13 = [v3 canonicalUnit];
      v14 = [v12 isCompatibleWithUnit:v13];

      if (v14)
      {
        v15 = [v4 value];
        v16 = [v3 canonicalUnit];
        [v15 doubleValueForUnit:v16];
        v10 = v17;
      }

      else
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
        {
          ASFriendAchievementFromTemplateAndEarnedInstance_cold_1();
        }

        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
        {
          ASFriendAchievementFromTemplateAndEarnedInstance_cold_2();
        }

        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
        {
          ASFriendAchievementFromTemplateAndEarnedInstance_cold_3();
        }
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
      {
        ASFriendAchievementFromTemplateAndEarnedInstance_cold_4();
      }

      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
      {
        ASFriendAchievementFromTemplateAndEarnedInstance_cold_2();
      }
    }
  }

  v18 = MEMORY[0x277CCDDC0];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v20 = [v18 achievementWithTemplateUniqueName:v5 completedDate:v8 value:v19 friendUUID:0];

  return v20;
}

id ASEphemeralEarnedAchievement(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CE8D38];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = objc_alloc_init(v5);
  v10 = [v8 template];
  v11 = [v10 uniqueName];
  [v9 setTemplateUniqueName:v11];

  v12 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v13 = [v12 components:*MEMORY[0x277CE8B28] fromDate:v7];

  [v9 setEarnedDateComponents:v13];
  v14 = [MEMORY[0x277CBEAA8] date];
  [v9 setCreatedDate:v14];

  v15 = MEMORY[0x277CCD7E8];
  v16 = [v8 template];
  v17 = [v16 canonicalUnit];
  [v6 doubleValue];
  v19 = v18;

  v20 = [v15 quantityWithUnit:v17 doubleValue:v19];
  [v9 setValue:v20];

  v21 = [v8 shallowCopyWithRelevantEarnedInstance:v9];

  return v21;
}

id ASEphemeralEarnedAchievementForFriendAchievement(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 completedDate];
  v6 = [v4 value];

  v7 = ASEphemeralEarnedAchievement(v3, v5, v6);

  return v7;
}

id ASEphemeralCompetitionVictoryAchievementForStyle(uint64_t a1, void *a2)
{
  v3 = ASCompetitionVictoryTemplateForFriend(a2, 0);
  v4 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithTemplate:v3 relevantEarnedInstance:0 earnedInstanceCount:0];
  v5 = ASCompetitionVictoryResourcePathForStyle(a1);
  [v4 setResourceBundleURL:v5];

  v6 = ASCompetitionVictoryPropertyListPathForStyle(a1);
  [v4 setPropertyListBundleURL:v6];

  v7 = [v3 uniqueName];
  v8 = ASBundleURLForResource(v7, @"localization");
  [v4 setLocalizationBundleURL:v8];

  ACHApplyBadgePropertiesToAchievement();

  return v4;
}

id ASEphemeralCompetitionVictoryAchievementForFriendAchievement(void *a1)
{
  v1 = a1;
  v2 = [v1 value];
  v3 = [v2 unsignedIntValue];

  v4 = [v1 templateUniqueName];

  v5 = ASCompetitionVictoryFriendUUIDFromTemplate(v4);

  v6 = ASEphemeralCompetitionVictoryAchievementForStyle(v3, v5);

  return v6;
}

id ASAchievementThumbnailPathForStyle(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ASCompetitionVictoryBadgeColorFromStyle(a1);
  v5 = ASCompetitionVictoryResourcePathForStyle(v3);
  v6 = v5;
  if (a2)
  {
    v7 = @"LargeThumbnails";
  }

  else
  {
    v7 = @"SmallThumbnails";
  }

  v8 = [v5 URLByAppendingPathComponent:v7];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"BadgeThumbnail_%d.png", v4];
  v10 = [v8 URLByAppendingPathComponent:v9];
  v11 = [v10 filePathURL];

  return v11;
}

id ASBuildFriendAchievementsToShare(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = _HKStartDateForSnapshotIndex();
  ASLoggingInitialize();
  v5 = ASLogActivityData;
  if (os_log_type_enabled(ASLogActivityData, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = a2;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Looking for achievements for snapshot index: %lld, date: %@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __ASBuildFriendAchievementsToShare_block_invoke;
  v12[3] = &unk_278C46BF0;
  v13 = v6;
  v14 = v4;
  v7 = v4;
  v8 = v6;
  v9 = [v3 hk_map:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __ASBuildFriendAchievementsToShare_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ACHIsActivityAchievementSharable())
  {
    v4 = [v3 relevantEarnedInstance];
    v5 = *(a1 + 32);
    v6 = [v4 createdDate];
    LODWORD(v5) = [v5 isDate:v6 inSameDayAsDate:*(a1 + 40)];

    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v4 earnedDateComponents];
      v9 = [v7 dateFromComponents:v8];

      v10 = *(a1 + 32);
      v11 = [v4 createdDate];
      v12 = [v10 components:16 fromDate:v11 toDate:v9 options:0];

      if ([v12 day] < 0)
      {
        v14 = 0;
      }

      else
      {
        v13 = [v3 template];
        v14 = ASFriendAchievementFromTemplateAndEarnedInstance(v13, v4);
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t ASCacheIndexForLocalDate(void *a1)
{
  v1 = ASCacheIndexForLocalDate_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    ASCacheIndexForLocalDate_cold_1();
  }

  v3 = _HKCacheIndexFromDate();

  return v3;
}

uint64_t __ASCacheIndexForLocalDate_block_invoke()
{
  ASCacheIndexForLocalDate_currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

void ASCleanSnapshotForUpload(void *a1)
{
  v1 = a1;
  if ([v1 amm] == 2)
  {
    [v1 setEnergyBurned:0.0];
    [v1 setEnergyBurnedGoal:0.0];
  }
}

void sub_23E52D9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ASCodableCloudKitRelationshipReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v47[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v47[0] & 0x7F) << v5;
      if ((v47[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadData();
        v14 = 112;
        goto LABEL_50;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_50;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_50;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_50;
      case 8u:
        v29 = PBReaderReadString();
        if (v29)
        {
          [a1 addAddresses:v29];
        }

        goto LABEL_55;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_50;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_50;
      case 0xEu:
        v29 = objc_alloc_init(ASCodableCloudKitRelationshipEvent);
        [a1 addEvents:v29];
        v47[0] = 0;
        v47[1] = 0;
        if (PBReaderPlaceMark() && ASCodableCloudKitRelationshipEventReadFrom(v29, a2))
        {
          PBReaderRecallMark();
LABEL_55:

LABEL_51:
          v31 = [a2 position];
          if (v31 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xFu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        a1[120] |= 2u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v47[0] & 0x7F) << v38;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v40;
        }

LABEL_90:
        v45 = 16;
        goto LABEL_91;
      case 0x11u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        a1[120] |= 4u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v47[0] & 0x7F) << v32;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v34;
        }

LABEL_85:
        v44 = 104;
        goto LABEL_86;
      case 0x12u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[120] |= 8u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v47[0] & 0x7F) << v15;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_77:
        v44 = 108;
LABEL_86:
        *&a1[v44] = v21;
        goto LABEL_51;
      case 0x13u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[120] |= 1u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v47[0] & 0x7F) << v22;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_81:
        v45 = 8;
LABEL_91:
        *&a1[v45] = v28;
        goto LABEL_51;
      case 0x14u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_50;
      case 0x15u:
        v13 = PBReaderReadData();
        v14 = 96;
        goto LABEL_50;
      case 0x16u:
        v13 = PBReaderReadData();
        v14 = 80;
LABEL_50:
        v30 = *&a1[v14];
        *&a1[v14] = v13;

        goto LABEL_51;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
    }
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ActivityAppQueryItemsForFriendOnDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v6];
    v8 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"timestamp" value:v7];
    v9 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v8];

    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = MEMORY[0x277CBEBF8];
  if (v3)
  {
LABEL_3:
    v10 = objc_alloc(MEMORY[0x277CCAD18]);
    v11 = [v3 UUIDString];
    v12 = [v10 initWithName:@"uuid" value:v11];

    v13 = [v9 arrayByAddingObject:v12];

    v9 = v13;
  }

LABEL_4:

  return v9;
}

id _FindQueryItemValueWithName(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCACE0];
  v5 = a1;
  v6 = [[v4 alloc] initWithURL:v5 resolvingAgainstBaseURL:0];

  v7 = [v6 queryItems];
  v8 = MEMORY[0x277CCAC30];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___FindQueryItemValueWithName_block_invoke;
  v15[3] = &unk_278C46CD0;
  v16 = v3;
  v9 = v3;
  v10 = [v8 predicateWithBlock:v15];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  v12 = [v11 firstObject];
  v13 = [v12 value];

  return v13;
}

id ASActivityAppLaunchURLForMeOnDate(void *a1)
{
  v1 = MEMORY[0x277CCACE0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setScheme:@"activitysharing"];
  [v3 setHost:@"me"];
  v4 = _ActivityAppQueryItemsForFriendOnDate(0, v2);

  [v3 setQueryItems:v4];
  v5 = [v3 URL];

  return v5;
}

id ASActivityAppLaunchURLForFriendOnDate(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [v6 setScheme:@"activitysharing"];
  [v6 setHost:@"friend"];
  v7 = _ActivityAppQueryItemsForFriendOnDate(v5, v4);

  [v6 setQueryItems:v7];
  v8 = [v6 URL];

  return v8;
}

id ASActivityAppLaunchURLForSharingFriendList()
{
  v0 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v0 setScheme:@"activitysharing"];
  [v0 setHost:@"list"];
  v1 = [v0 URL];

  return v1;
}

id ASActivityAppLaunchURLForSharingInbox()
{
  v0 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v0 setScheme:@"activitysharing"];
  [v0 setHost:@"inbox"];
  v1 = [v0 URL];

  return v1;
}

id ASDateFromActivityAppLaunchURL(void *a1)
{
  v1 = _FindQueryItemValueWithName(a1, @"timestamp");
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ASFriendUUIDFromActivityAppLaunchURL(void *a1)
{
  v1 = _FindQueryItemValueWithName(a1, @"uuid");
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ASIsM8Device()
{
  if (ASIsM8Device_onceToken != -1)
  {
    ASIsM8Device_cold_1();
  }

  return ASIsM8Device___isM8Device;
}

void __ASIsM8Device_block_invoke()
{
  v0 = MGCopyAnswer();
  ASIsM8Device___isM8Device = [v0 isEqualToString:@"t8002"];
}

uint64_t ASIsM9Device()
{
  if (ASIsM9Device_onceToken != -1)
  {
    ASIsM9Device_cold_1();
  }

  return ASIsM9Device___isM9Device;
}

void __ASIsM9Device_block_invoke()
{
  v0 = MGCopyAnswer();
  ASIsM9Device___isM9Device = [v0 isEqualToString:@"t8006"];
}

uint64_t ASShouldReducePeriodUpdateFrequency()
{
  if (ASIsM8Device_onceToken != -1)
  {
    ASIsM8Device_cold_1();
  }

  if (ASIsM8Device___isM8Device)
  {
    v0 = 1;
  }

  else
  {
    if (ASIsM9Device_onceToken != -1)
    {
      ASIsM9Device_cold_1();
    }

    v0 = ASIsM9Device___isM9Device;
  }

  return v0 & 1;
}

uint64_t __ASLoggingInitialize_block_invoke()
{
  v0 = os_log_create(ASLoggingSubsystem, "achievements");
  v1 = ASLogAchievements;
  ASLogAchievements = v0;

  v2 = os_log_create(ASLoggingSubsystem, "activity_data");
  v3 = ASLogActivityData;
  ASLogActivityData = v2;

  v4 = os_log_create(ASLoggingSubsystem, "cloudkit");
  v5 = ASLogCloudKit;
  ASLogCloudKit = v4;

  v6 = os_log_create(ASLoggingSubsystem, "competitions");
  v7 = ASLogCompetitions;
  ASLogCompetitions = v6;

  v8 = os_log_create(ASLoggingSubsystem, "database");
  v9 = ASLogDatabase;
  ASLogDatabase = v8;

  v10 = os_log_create(ASLoggingSubsystem, "default");
  v11 = ASLogDefault;
  ASLogDefault = v10;

  v12 = os_log_create(ASLoggingSubsystem, "friend_list");
  v13 = ASLogFriendList;
  ASLogFriendList = v12;

  v14 = os_log_create(ASLoggingSubsystem, "notifications");
  v15 = ASLogNotifications;
  ASLogNotifications = v14;

  v16 = os_log_create(ASLoggingSubsystem, "periodic_updates");
  v17 = ASLogPeriodicUpdates;
  ASLogPeriodicUpdates = v16;

  ASLogRelationships = os_log_create(ASLoggingSubsystem, "relationships");

  return MEMORY[0x2821F96F8]();
}

uint64_t ASCodableCloudKitRelationshipEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 4)
      {
        *(a1 + 32) |= 2u;
        v33 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v35 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v35 & 0x7F) << v21;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v30 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v36 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v36 & 0x7F) << v14;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v30 = 8;
        }

        *(a1 + v30) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ASCodableCloudKitWorkoutReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v70[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70[0] & 0x7F) << v5;
        if ((v70[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = objc_alloc_init(ASCodableCloudKitSample);
          objc_storeStrong((a1 + 96), v13);
          v70[0] = 0;
          v70[1] = 0;
          if (PBReaderPlaceMark() && ASCodableCloudKitSampleReadFrom(v13, a2))
          {
            PBReaderRecallMark();

            goto LABEL_118;
          }

          return 0;
        case 2u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v70[0] & 0x7F) << v34;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_98:
          v59 = 64;
          goto LABEL_103;
        case 5u:
          *(a1 + 124) |= 2u;
          v70[0] = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 16;
          goto LABEL_117;
        case 6u:
          *(a1 + 124) |= 0x40u;
          v70[0] = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 56;
          goto LABEL_117;
        case 7u:
          *(a1 + 124) |= 0x10u;
          v70[0] = 0;
          v50 = [a2 position] + 8;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 40;
          goto LABEL_117;
        case 8u:
          *(a1 + 124) |= 0x20u;
          v70[0] = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 48;
          goto LABEL_117;
        case 9u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v70[0] & 0x7F) << v40;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_102:
          v59 = 32;
          goto LABEL_103;
        case 0xAu:
          *(a1 + 124) |= 4u;
          v70[0] = 0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:v70 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v62 = v70[0];
          v63 = 24;
LABEL_117:
          *(a1 + v63) = v62;
          goto LABEL_118;
        case 0xBu:
          v28 = PBReaderReadString();
          v29 = 72;
          goto LABEL_86;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v70[0] & 0x7F) << v52;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_105;
            }
          }

          v27 = (v54 != 0) & ~[a2 hasError];
LABEL_105:
          v60 = 121;
          goto LABEL_106;
        case 0xDu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            LOBYTE(v70[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v70[0] & 0x7F) << v21;
            if ((v70[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_94;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_94:
          v60 = 120;
LABEL_106:
          *(a1 + v60) = v27;
          goto LABEL_118;
        case 0xEu:
          v28 = PBReaderReadString();
          v29 = 80;
          goto LABEL_86;
        case 0xFu:
          v28 = PBReaderReadString();
          v29 = 88;
          goto LABEL_86;
        case 0x10u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 124) |= 1u;
          break;
        case 0x11u:
          v28 = PBReaderReadString();
          v29 = 104;
          goto LABEL_86;
        case 0x12u:
          v28 = PBReaderReadString();
          v29 = 112;
LABEL_86:
          v58 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_118;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_118;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v70[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v70[0] & 0x7F) << v14;
        if ((v70[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_92;
        }
      }

      v20 = [a2 hasError] ? 0 : v16;
LABEL_92:
      v59 = 8;
LABEL_103:
      *(a1 + v59) = v20;
LABEL_118:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}