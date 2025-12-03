@interface ACHMonthlyChallengeTemplateSource
- (ACHMonthlyChallengeTemplateSource)initWithDataSource:(id)source dataProvider:(id)provider templateCache:(id)cache;
- (BOOL)_createMonthlyChallengeWithMonthDateInterval:(id)interval monthlyChallengeTemplates:(id *)templates error:(id *)error;
- (BOOL)_isInFirstWeekOfCurrentMonth:(id)month;
- (BOOL)_shouldOverrideMonthlyChallengeCadence;
- (BOOL)isGoalValueForMonthlyChallengeTypeValid:(unint64_t)valid error:(id *)error;
- (BOOL)isMonthlyChallengeOfTypeAvailable:(unint64_t)available error:(id *)error;
- (BOOL)isStandalonePhoneFitnessMode;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (double)_capGoalValueForChallengeType:(unint64_t)type goalValue:(double)value;
- (double)_goalValueForCurrentMonthForType:(unint64_t)type error:(id *)error;
- (double)_roundedGoalValue:(double)value monthlyChallengeType:(unint64_t)type;
- (double)_targetGoalValueForCurrentMonthForType:(unint64_t)type error:(id *)error;
- (id)_availableMonthlyChallengeTypes;
- (id)_dateComponentIntervalForCurrentMonth;
- (id)_dateComponentIntervalForLastMonth;
- (id)_dateComponentIntervalForTwoMonthsAgo;
- (id)_maximumValueForMonthlyChallengeType:(unint64_t)type;
- (id)_minimumValueForMonthlyChallengeType:(unint64_t)type;
- (id)_modelsDirectoryBasePathForTemplate:(id)template;
- (id)_monthlyAchievementsAssetsDirectoryBasePath;
- (id)_pairedWatchDeviceCapabilities;
- (id)_suffixForCurrentMonthForType:(unint64_t)type template:(id)template goal:(double)goal error:(id *)error;
- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error;
- (id)localizationBundleURLForTemplate:(id)template;
- (id)pairedDeviceRegistrySharedInstance;
- (id)possibleLocalizationSuffixesForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (int64_t)_monthlyChallengeTemplateSourceActionForDate:(id)date existingTemplate:(id)template;
- (unint64_t)_getRandomMonthlyChallengeType;
- (unint64_t)_numberOfDaysInMonthForDate:(id)date;
- (void)_didOverrideMonthlyChallengeCadence;
- (void)_removeMonthlyChallengeTemplate:(id)template monthlyChallengeTemplates:(id *)templates templatesToRemove:(id *)remove;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHMonthlyChallengeTemplateSource

- (ACHMonthlyChallengeTemplateSource)initWithDataSource:(id)source dataProvider:(id)provider templateCache:(id)cache
{
  sourceCopy = source;
  providerCopy = provider;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = ACHMonthlyChallengeTemplateSource;
  v12 = [(ACHMonthlyChallengeTemplateSource *)&v19 init];
  if (v12)
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    currentCalendar = v12->_currentCalendar;
    v12->_currentCalendar = hk_gregorianCalendarWithLocalTimeZone;

    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v12->_templateDataProvider, provider);
    objc_storeStrong(&v12->_templateCache, cache);
    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v12->_currentDate;
    v12->_currentDate = date;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    v12->_isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];
  }

  return v12;
}

- (int64_t)_monthlyChallengeTemplateSourceActionForDate:(id)date existingTemplate:(id)template
{
  dateCopy = date;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v9 = [v8 BOOLForKey:*MEMORY[0x277CE8AC0]];
  v10 = [v8 BOOLForKey:*MEMORY[0x277CE8AB8]];
  v11 = v9 ^ 1u;
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    if ([(ACHMonthlyChallengeTemplateSource *)self _shouldOverrideMonthlyChallengeCadence])
    {
      v11 = 2;
    }

    else if ([(ACHMonthlyChallengeTemplateSource *)self _isInFirstWeekOfCurrentMonth:dateCopy])
    {
      templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v18 = 0;
      v13 = [templateDataProvider hasMinimumActiveDaysWithError:&v18];
      v14 = v18;

      v15 = 5;
      if (!template)
      {
        v15 = 6;
      }

      v16 = 7;
      if (!v14)
      {
        v16 = 4;
      }

      if (v13)
      {
        v11 = v15;
      }

      else
      {
        v11 = v16;
      }
    }

    else
    {
      v11 = 3;
    }
  }

  return v11;
}

- (void)templatesForDate:(id)date completion:(id)completion
{
  v87 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  if (![(ACHMonthlyChallengeTemplateSource *)self sourceShouldRunForDate:dateCopy])
  {
    v22 = [MEMORY[0x277CBEB98] set];
    v23 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v22, 0, 0);

    goto LABEL_63;
  }

  selfCopy = self;
  templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
  existingMonthlyChallengeTemplates = [templateDataProvider existingMonthlyChallengeTemplates];

  _dateComponentIntervalForCurrentMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForCurrentMonth];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__17;
  v80 = __Block_byref_object_dispose__17;
  v81 = 0;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke;
  v73[3] = &unk_278491BC0;
  v44 = _dateComponentIntervalForCurrentMonth;
  v74 = v44;
  v75 = &v76;
  v9 = [existingMonthlyChallengeTemplates hk_map:v73];

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_3;
  v71[3] = &unk_278491C08;
  v72 = &__block_literal_global_17;
  v41 = [v9 hk_map:v71];
  templateCache = [(ACHMonthlyChallengeTemplateSource *)self templateCache];
  v70 = 0;
  v46 = [templateCache allCachedTemplatesWithError:&v70];
  v43 = v70;

  if (v43)
  {
    v11 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACHMonthlyChallengeTemplateSource templatesForDate:v43 completion:v11];
    }
  }

  if ([v46 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    startDateComponents = [v44 startDateComponents];
    [v12 setYear:{objc_msgSend(startDateComponents, "year")}];

    startDateComponents2 = [v44 startDateComponents];
    [v12 setMonth:{objc_msgSend(startDateComponents2, "month")}];

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_306;
    v65[3] = &unk_278491C30;
    v68 = &__block_literal_global_17;
    v66 = v41;
    v15 = v12;
    v67 = v15;
    v69 = &v76;
    v16 = [v46 hk_map:v65];
    if ([v16 count])
    {
      v17 = [v9 setByAddingObjectsFromArray:v16];

      v9 = v17;
    }
  }

  v18 = [(ACHMonthlyChallengeTemplateSource *)self _monthlyChallengeTemplateSourceActionForDate:dateCopy existingTemplate:v77[5]];
  v45 = 0;
  if (v18 > 3)
  {
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v31 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v31, OS_LOG_TYPE_DEFAULT, "Attempting to generate a monthly challenge for the current month.", buf, 2u);
        }

        v55 = 0;
        v56 = v9;
        [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v44 monthlyChallengeTemplates:&v56 error:&v55];
        v21 = v56;

        v27 = v55;
        goto LABEL_46;
      }

      if (v18 != 7)
      {
        goto LABEL_48;
      }

      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because we encountered an error condition.", buf, 2u);
      }
    }

    else if (v18 == 4)
    {
      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because user does not have minimum active days.", buf, 2u);
      }
    }

    else
    {
      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uniqueName = [v77[5] uniqueName];
        *buf = 138543362;
        v83 = uniqueName;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because one already exists for the month: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "User has tapped the Monthly Challenge delete button.", buf, 2u);
          }

          v20 = v77[5];
          v61 = 0;
          v62 = v9;
          [(ACHMonthlyChallengeTemplateSource *)self _removeMonthlyChallengeTemplate:v20 monthlyChallengeTemplates:&v62 templatesToRemove:&v61];
          v21 = v62;

          v45 = v61;
          v42 = 0;
          goto LABEL_47;
        }

LABEL_48:
        v42 = 0;
        goto LABEL_49;
      }

      v26 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "User has tapped the Monthly Challenge generation button.", buf, 2u);
      }

      v63 = 0;
      v64 = v9;
      [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v44 monthlyChallengeTemplates:&v64 error:&v63];
      v21 = v64;

      v27 = v63;
LABEL_46:
      v42 = v27;
      v45 = 0;
LABEL_47:
      v9 = v21;
      goto LABEL_49;
    }

    if (v18 == 2)
    {
      v28 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "Overriding monthly challenge cadence; deleting old monthly challenge and generating a new one.", buf, 2u);
      }

      v29 = v77[5];
      v59 = 0;
      v60 = v9;
      [(ACHMonthlyChallengeTemplateSource *)self _removeMonthlyChallengeTemplate:v29 monthlyChallengeTemplates:&v60 templatesToRemove:&v59];
      v30 = v60;

      v45 = v59;
      v57 = 0;
      v58 = v30;
      [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v44 monthlyChallengeTemplates:&v58 error:&v57];
      v9 = v58;

      v42 = v57;
      if (v42)
      {
        goto LABEL_49;
      }

      [(ACHMonthlyChallengeTemplateSource *)self _didOverrideMonthlyChallengeCadence];
      goto LABEL_38;
    }

    v24 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because not the first week of the month.", buf, 2u);
    }
  }

  v45 = 0;
LABEL_38:
  v42 = 0;
LABEL_49:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v9;
  v33 = [v32 countByEnumeratingWithState:&v51 objects:v86 count:16];
  if (v33)
  {
    v34 = *v52;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v51 + 1) + 8 * i);
        templateCache2 = [(ACHMonthlyChallengeTemplateSource *)selfCopy templateCache];
        v50 = 0;
        [templateCache2 cacheTemplate:v36 error:&v50];
        v38 = v50;

        if (v38)
        {
          v39 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v36;
            v84 = 2112;
            v85 = v38;
            _os_log_impl(&dword_221DDC000, v39, OS_LOG_TYPE_DEFAULT, "[#mc] Error caching template %@: %@", buf, 0x16u);
          }
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v51 objects:v86 count:16];
    }

    while (v33);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v32, v45, v42);
  }

  _Block_object_dispose(&v76, 8);
  v23 = completionCopy;
LABEL_63:

  v40 = *MEMORY[0x277D85DE8];
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ACHMonthlyChallengeTemplateFromTemplate();
  v5 = v3;
  v6 = [v5 version];
  v7 = v5;
  if (v6 != [v4 version])
  {
    v7 = v4;
  }

  v8 = [v7 availabilityStart];
  v9 = [*(a1 + 32) startDateComponents];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }

  return v7;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@"_"];
  if ([v2 count] == 3)
  {
    v3 = [v2 objectAtIndexedSubscript:1];
    v4 = [v3 integerValue];

    v5 = [v2 objectAtIndexedSubscript:2];
    v6 = [v5 integerValue];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setYear:v4];
    [v7 setMonth:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueName];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_306(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 48);
  v6 = [v4 uniqueName];
  v7 = (*(v5 + 16))(v5, v6);

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = 0;
  }

  else
  {
    if ([v7 isEqual:*(a1 + 40)])
    {
      v9 = *(*(a1 + 56) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, a2);
      }
    }

    v8 = v4;
  }

  return v8;
}

- (BOOL)_createMonthlyChallengeWithMonthDateInterval:(id)interval monthlyChallengeTemplates:(id *)templates error:(id *)error
{
  v71[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  _getRandomMonthlyChallengeType = [(ACHMonthlyChallengeTemplateSource *)self _getRandomMonthlyChallengeType];
  if (!_getRandomMonthlyChallengeType)
  {
    v17 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "[#mc] Not generating monthly challenge template for current month because type returned was undefined.", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56 = @"Not generating monthly challenge template for current month because type returned was undefined.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v19];

    v12 = v20;
    if (v12)
    {
      if (error)
      {
        v21 = v12;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_27;
  }

  v10 = _getRandomMonthlyChallengeType;
  [(ACHMonthlyChallengeTemplateSource *)self _goalValueForCurrentMonthForType:_getRandomMonthlyChallengeType error:error];
  [(ACHMonthlyChallengeTemplateSource *)self _capGoalValueForChallengeType:v10 goalValue:?];
  if (*error)
  {
    v12 = ACHLogMonthlyChallenges();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:
      v37 = 0;
      goto LABEL_28;
    }

    v13 = *error;
    *buf = 138412290;
    v63 = v13;
    v14 = "Error in creating goal for new monthly challenge: %@";
    v15 = v12;
    v16 = 12;
LABEL_5:
    _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_27;
  }

  v22 = v11;
  if (v11 <= 2.22044605e-16)
  {
    v32 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v63 = v10;
      v64 = 2112;
      v65 = intervalCopy;
      v66 = 2048;
      v67 = v22;
      _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, "[#mc] Monthly challenge template for current month wasn't generated for type (%ld), date interval (%@), and goal (%f)", buf, 0x20u);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[#mc] Monthly challenge template for current month wasn't generated for type (%ld), date interval (%@), and goal (%f)", v10, intervalCopy, *&v22];
    v33 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58 = v12;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v35 = [v33 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v34];

    if (v35)
    {
      v36 = v35;
      *error = v35;
    }

    goto LABEL_27;
  }

  v23 = [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeTemplateWithType:v10 dateCompoonentInterval:intervalCopy goalValue:v11];
  if (!v23)
  {
    v40 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    v71[0] = @"Tried to generate a challenge with a valid goal, but failed.";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    *error = [v40 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v41];

    v12 = ACHLogMonthlyChallenges();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v14 = "[#mc] Tried to generate a challenge with a valid goal, but failed.";
    v15 = v12;
    v16 = 2;
    goto LABEL_5;
  }

  v12 = v23;
  v24 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    uniqueName = [v12 uniqueName];
    *buf = 138412290;
    v63 = uniqueName;
    _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "[#mc] Template generated: %@", buf, 0xCu);
  }

  v26 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    uniqueName2 = [v12 uniqueName];
    *buf = 138544130;
    v63 = uniqueName2;
    v64 = 2048;
    v65 = v10;
    v66 = 2112;
    v67 = *&intervalCopy;
    v68 = 2048;
    v69 = v22;
    _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "[#mc] Monthly challenge %{public}@ for current month was generated for type (%ld), date interval (%@), and goal (%f)", buf, 0x2Au);
  }

  v28 = [(ACHMonthlyChallengeTemplateSource *)self _suffixForCurrentMonthForType:v10 template:v12 goal:error error:v22];
  if (v28)
  {
    availableSuffixes = [v12 availableSuffixes];
    v30 = availableSuffixes;
    if (availableSuffixes)
    {
      v31 = [availableSuffixes arrayByAddingObject:v28];
    }

    else
    {
      v61 = v28;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    }

    v42 = v31;
    [v12 setAvailableSuffixes:v31];
  }

  v43 = [*templates hk_map:&__block_literal_global_317];
  uniqueName3 = [v12 uniqueName];
  v45 = [v43 containsObject:uniqueName3];

  if (v45)
  {
    v46 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      uniqueName4 = [v12 uniqueName];
      *buf = 138543362;
      v63 = uniqueName4;
      _os_log_impl(&dword_221DDC000, v46, OS_LOG_TYPE_DEFAULT, "[#mc] The monthly challenge just created already exists: %{public}@. Skipping it.", buf, 0xCu);
    }

    v48 = MEMORY[0x277CCACA8];
    uniqueName5 = [v12 uniqueName];
    v50 = [v48 stringWithFormat:@"The monthly challenge just created already exists: %@. Skipping it.", uniqueName5];

    v51 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v60 = v50;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v53 = [v51 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v52];

    if (v53)
    {
      v54 = v53;
      *error = v53;
    }
  }

  else
  {
    *templates = [*templates setByAddingObject:v12];
  }

  v37 = v45 ^ 1;

LABEL_28:
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)_removeMonthlyChallengeTemplate:(id)template monthlyChallengeTemplates:(id *)templates templatesToRemove:(id *)remove
{
  v13 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  v8 = ACHLogMonthlyChallenges();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (templateCopy)
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = templateCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "[#mc] Removing existing template: %@", &v11, 0xCu);
    }

    v8 = [*templates mutableCopy];
    [v8 removeObject:templateCopy];
    *templates = [v8 copy];
    *remove = [MEMORY[0x277CBEB98] setWithObject:templateCopy];
  }

  else if (v9)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "[#mc] Existing template not found.", &v11, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)possibleLocalizationSuffixesForTemplate:(id)template
{
  v8[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE8BF0];
  v8[0] = *MEMORY[0x277CE8BD8];
  v8[1] = v3;
  v4 = *MEMORY[0x277CE8BE0];
  v8[2] = *MEMORY[0x277CE8BE8];
  v8[3] = v4;
  v8[4] = *MEMORY[0x277CE8BD0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)localizationBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v5 = ACHMonthlyChallengeTypeFromTemplateUniqueName();

  if (v5 > 0x1D)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278491C78[v5];
  }

  _monthlyAchievementsAssetsDirectoryBasePath = [(ACHMonthlyChallengeTemplateSource *)self _monthlyAchievementsAssetsDirectoryBasePath];
  v8 = [_monthlyAchievementsAssetsDirectoryBasePath stringByAppendingPathComponent:@"localization"];
  v9 = [v8 stringByAppendingPathComponent:@"challenge"];
  v10 = [v9 stringByAppendingPathComponent:v6];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];

  return v11;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  v3 = [(ACHMonthlyChallengeTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgemodel"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];

  return v5;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  v3 = [(ACHMonthlyChallengeTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgeproperties"];
  v5 = [v4 stringByAppendingPathComponent:@"challenge"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)_monthlyAchievementsAssetsDirectoryBasePath
{
  if (_monthlyAchievementsAssetsDirectoryBasePath_onceToken_0 != -1)
  {
    [ACHMonthlyChallengeTemplateSource _monthlyAchievementsAssetsDirectoryBasePath];
  }

  v3 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0;

  return v3;
}

uint64_t __80__ACHMonthlyChallengeTemplateSource__monthlyAchievementsAssetsDirectoryBasePath__block_invoke()
{
  v0 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v1 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0;
  _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_modelsDirectoryBasePathForTemplate:(id)template
{
  if (_modelsDirectoryBasePathForTemplate__onceToken_0 != -1)
  {
    [ACHMonthlyChallengeTemplateSource _modelsDirectoryBasePathForTemplate:];
  }

  v4 = _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath;

  return v4;
}

void __73__ACHMonthlyChallengeTemplateSource__modelsDirectoryBasePathForTemplate___block_invoke()
{
  v2 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v0 = [v2 stringByAppendingPathComponent:@"models"];
  v1 = _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath;
  _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath = v0;
}

- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  if (ACHTemplateIsMonthlyChallenge())
  {
    _dateComponentIntervalForCurrentMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForCurrentMonth];
    v8 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      v41 = templateCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Progress: selected template: %{public}@.", &v40, 0xCu);
    }

    v9 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      startDateComponents = [_dateComponentIntervalForCurrentMonth startDateComponents];
      endDateComponents = [_dateComponentIntervalForCurrentMonth endDateComponents];
      v40 = 138543618;
      v41 = startDateComponents;
      v42 = 2114;
      v43 = endDateComponents;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Progress: using start date (%{public}@) and end date (%{public}@).", &v40, 0x16u);
    }

    uniqueName = [templateCopy uniqueName];
    v13 = ACHMonthlyChallengeTypeFromTemplateUniqueName();

    availabilityStart = [templateCopy availabilityStart];
    startDateComponents2 = [_dateComponentIntervalForCurrentMonth startDateComponents];
    v16 = ACHCompareYearMonthDayDateComponents();

    v17 = ACHLogMonthlyChallenges();
    _dateComponentIntervalForLastMonth = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(ACHMonthlyChallengeTemplateSource *)templateCopy customPlaceholderValuesForTemplate:_dateComponentIntervalForCurrentMonth error:_dateComponentIntervalForLastMonth];
      }

      v19 = 0;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = ACHMonthlyChallengeNameFromChallengeType();
        v40 = 138543618;
        v41 = v22;
        v42 = 2048;
        v43 = v13;
        _os_log_impl(&dword_221DDC000, _dateComponentIntervalForLastMonth, OS_LOG_TYPE_DEFAULT, "Progress: Monthly Challenge type: %{public}@ (%lu).", &v40, 0x16u);
      }

      _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      v23 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        startDateComponents3 = [_dateComponentIntervalForLastMonth startDateComponents];
        endDateComponents2 = [_dateComponentIntervalForLastMonth endDateComponents];
        v40 = 138543618;
        v41 = startDateComponents3;
        v42 = 2114;
        v43 = endDateComponents2;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Progress: retrieving last month value using date component interval: start (%{public}@) vs end date (%{public}@).", &v40, 0x16u);
      }

      dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
      currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      [dataSource valueForMonthlyChallengeType:v13 forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
      v29 = v28;

      v30 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v30 setNumberStyle:1];
      v31 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      [v30 setLocale:v31];

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
      v19 = [v30 stringFromNumber:v32];

      v33 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138543362;
        v41 = v19;
        _os_log_impl(&dword_221DDC000, v33, OS_LOG_TYPE_DEFAULT, "Progress: last month value: %{public}@.", &v40, 0xCu);
      }
    }

    v34 = v19;
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = v35;
    if (v34)
    {
      [v35 setObject:v34 forKey:*MEMORY[0x277CE8AC8]];
    }

    if ((v13 - 8) <= 0xB)
    {
      v37 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:ACHWorkoutActivityTypeForMonthlyChallengeType()];
      [v36 setObject:v37 forKey:*MEMORY[0x277CE8C30]];
    }

    v21 = [v36 copy];
  }

  else
  {
    _dateComponentIntervalForCurrentMonth = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(_dateComponentIntervalForCurrentMonth, OS_LOG_TYPE_DEFAULT))
    {
      uniqueName2 = [templateCopy uniqueName];
      v40 = 138543362;
      v41 = uniqueName2;
      _os_log_impl(&dword_221DDC000, _dateComponentIntervalForCurrentMonth, OS_LOG_TYPE_DEFAULT, "Progress: %{public}@ is not a Monthly Challenge.", &v40, 0xCu);
    }

    v21 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)isGoalValueForMonthlyChallengeTypeValid:(unint64_t)valid error:(id *)error
{
  [(ACHMonthlyChallengeTemplateSource *)self _targetGoalValueForCurrentMonthForType:valid error:error];
  v7 = v6;
  v8 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:valid];
  v9 = [(ACHMonthlyChallengeTemplateSource *)self _minimumValueForMonthlyChallengeType:valid];
  [v8 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  v13 = 1;
  if (v8 && v7 >= v11)
  {
    v13 = vabdd_f64(v11, v7) < 2.22044605e-16;
  }

  v14 = 1;
  if (v9 && v7 <= v12)
  {
    v14 = vabdd_f64(v12, v7) < 2.22044605e-16;
  }

  v15 = v13 && v14;
  v16 = v7 > 0.0 && v15;

  return v16;
}

- (id)_pairedWatchDeviceCapabilities
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
  {
    v3 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Companion is in standalone mode, not checking paired watch device capabilities", buf, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  else
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__17;
    v26 = __Block_byref_object_dispose__17;
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = ACHDeviceCapabilitiesForMonthlyChallenges();
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v6)
    {
      v7 = *v19;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(v23 + 5) setObject:v8 forKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v6);
    }

    v10 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Companion is not in standalone mode, checking paired watches for Monthly Challenge Compatibility", v28, 2u);
    }

    pairedDeviceRegistrySharedInstance = [(ACHMonthlyChallengeTemplateSource *)self pairedDeviceRegistrySharedInstance];
    getPairedDevices = [pairedDeviceRegistrySharedInstance getPairedDevices];
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [getPairedDevices count];
      *v28 = 134217984;
      v29 = v14;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Companion is paired with %lu watches", v28, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__ACHMonthlyChallengeTemplateSource__pairedWatchDeviceCapabilities__block_invoke;
    v17[3] = &unk_278491C58;
    v17[4] = buf;
    [getPairedDevices enumerateObjectsUsingBlock:v17];
    v4 = [*(v23 + 5) copy];

    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

void __67__ACHMonthlyChallengeTemplateSource__pairedWatchDeviceCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(*(*(a1 + 32) + 8) + 40) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    v9 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v3 supportsCapability:{v11, v15}])
        {
          v12 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 UUIDString];
            *buf = v15;
            v21 = v13;
            _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Companion has one paired device that is eligibile for %@", buf, 0xCu);
          }

          [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v11];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMonthlyChallengeOfTypeAvailable:(unint64_t)available error:(id *)error
{
  v157 = *MEMORY[0x277D85DE8];
  v7 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = ACHMonthlyChallengeNameFromChallengeType();
    *buf = 138543618;
    v144 = v8;
    v145 = 2048;
    availableCopy3 = available;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Checking validity of monthly challenge type %{public}@ (%lu)", buf, 0x16u);
  }

  templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  startDateComponents = [_dateComponentIntervalForLastMonth startDateComponents];
  v12 = [templateDataProvider monthlyChallengeTypeForMonth:startDateComponents];

  if (v12 == available)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = ACHMonthlyChallengeNameFromChallengeType();
      *buf = 138543618;
      v144 = v14;
      v145 = 2048;
      availableCopy3 = available;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Type %{public}@ (%lu) is not available because it was suggested last month", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_38;
  }

  _dateComponentIntervalForLastMonth2 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  startDateComponents2 = [_dateComponentIntervalForLastMonth2 startDateComponents];

  v18 = [ACHMonthlyChallengeEvaluationEnvironment alloc];
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth3 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v22 = [(ACHMonthlyChallengeEvaluationEnvironment *)v18 initWithMonthlyChallengeDataSource:dataSource dateComponentInterval:_dateComponentIntervalForLastMonth3 calendar:currentCalendar];

  v123 = v22;
  v124 = startDateComponents2;
  switch(available)
  {
    case 0uLL:
    case 0x1DuLL:
      v25 = 0;
      v27 = 0;
      v28 = @"Invalid monthly challenge type";
      goto LABEL_24;
    case 1uLL:
      errorCopy = error;
      v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"PerfectMonth-%04ld-%02ld", -[NSObject year](startDateComponents2, "year"), -[NSObject month](startDateComponents2, "month")];
      templateDataProvider2 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth4 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v142 = 0;
      v79 = [templateDataProvider2 numberOfEarnedInstancesOfTemplateWithUniqueName:v75 inDateComponentInterval:_dateComponentIntervalForLastMonth4 withCalendar:currentCalendar2 error:&v142];
      v25 = v142;

      v27 = 0;
      error = errorCopy;
      if (!v25 && !v79)
      {
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
      }

      v28 = @"Received Perfect Month achievement last month or is standalone phone Fitness mode";
      goto LABEL_24;
    case 2uLL:
      errorCopy2 = error;
      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"PerfectMonth-%04ld-%02ld", -[NSObject year](startDateComponents2, "year"), -[NSObject month](startDateComponents2, "month")];
      templateDataProvider3 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth5 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v141 = 0;
      v69 = [templateDataProvider3 numberOfEarnedInstancesOfTemplateWithUniqueName:v65 inDateComponentInterval:_dateComponentIntervalForLastMonth5 withCalendar:currentCalendar3 error:&v141];
      v25 = v141;

      if (v25)
      {
        goto LABEL_54;
      }

      templateDataProvider4 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth6 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v140 = 0;
      v73 = [templateDataProvider4 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekMove" inDateComponentInterval:_dateComponentIntervalForLastMonth6 withCalendar:currentCalendar4 error:&v140];
      v25 = v140;

      if (v25)
      {
LABEL_54:
        v27 = 0;
      }

      else
      {
        if (v69)
        {
          v118 = 0;
        }

        else
        {
          v118 = v73 < 3;
        }

        v27 = v118;
      }

      error = errorCopy2;

      v28 = @"Received Perfect Month achievement last month or Perfect Week (Move) Achievement 3 times during the previous month";
      goto LABEL_24;
    case 3uLL:
      errorCopy8 = error;
      templateDataProvider5 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth7 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v139 = 0;
      v88 = [templateDataProvider5 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekExercise" inDateComponentInterval:_dateComponentIntervalForLastMonth7 withCalendar:currentCalendar5 error:&v139];
      v25 = v139;

      v27 = 0;
      v28 = @"Received Perfect Week (Exercise) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      if (v25)
      {
        goto LABEL_23;
      }

      error = errorCopy8;
      if (v88 <= 2)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
        v28 = @"Received Perfect Week (Exercise) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      }

      goto LABEL_24;
    case 4uLL:
      errorCopy8 = error;
      templateDataProvider6 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth8 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar6 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v138 = 0;
      v100 = [templateDataProvider6 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekStand" inDateComponentInterval:_dateComponentIntervalForLastMonth8 withCalendar:currentCalendar6 error:&v138];
      v25 = v138;

      v27 = 0;
      v28 = @"Received Perfect Week (Stand) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      if (v25)
      {
        goto LABEL_23;
      }

      error = errorCopy8;
      if (v100 <= 2)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
        v28 = @"Received Perfect Week (Stand) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      }

      goto LABEL_24;
    case 5uLL:
    case 6uLL:
    case 0x14uLL:
    case 0x16uLL:
      v25 = 0;
      v27 = 0;
      v28 = @"Monthly Challenge type is deprecated";
      goto LABEL_24;
    case 7uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfWorkoutsCompletedInCurrentMonth];
      v60 = v59;
      templateDataProvider7 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v134 = 0;
      v62 = [templateDataProvider7 currentExperienceTypeWithError:&v134];
      v25 = v134;

      if (v25)
      {
        v63 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v144 = v25;
          _os_log_impl(&dword_221DDC000, v63, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
      }

      else
      {
        v27 = v60 >= 2.0 && v62 == 1;
      }

      v28 = @"Required at least 1 workout last monthand and is in standard Fitness experience";
      goto LABEL_24;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      templateDataProvider8 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v136 = 0;
      v24 = [templateDataProvider8 isWheelchairUserWithError:&v136];
      v25 = v136;

      if (!v25)
      {
        errorCopy8 = error;
        templateDataProvider9 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
        v135 = 0;
        v31 = [templateDataProvider9 currentExperienceTypeWithError:&v135];
        v25 = v135;

        if (v25)
        {
          v32 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v144 = v25;
            _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
          }

          v27 = 0;
        }

        else
        {
          eligibleSpecificWorkoutChallengeType = [(ACHMonthlyChallengeEvaluationEnvironment *)v22 eligibleSpecificWorkoutChallengeType];
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:available];
          v35 = [eligibleSpecificWorkoutChallengeType isEqual:v34];
          if (v31 == 1)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          v27 = v36 & (v24 ^ 1);

          v25 = 0;
        }

        v28 = @"Required at least 3 workouts of the same type in the last month, is in standard Fitness experience, and cannot be wheelchair user";
        goto LABEL_23;
      }

      v26 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v144 = v25;
        _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Error fetching wheelchair use: %@", buf, 0xCu);
      }

      v27 = 0;
      v28 = @"Required at least 3 workouts of the same type in the last month, is in standard Fitness experience, and cannot be wheelchair user";
      goto LABEL_24;
    case 0x15uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfDaysDoublingMoveGoalInCurrentMonth];
      v81 = v80;
      templateDataProvider10 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v133 = 0;
      v83 = [templateDataProvider10 currentExperienceTypeWithError:&v133];
      v25 = v133;

      if (v25)
      {
        v84 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v144 = v25;
          _os_log_impl(&dword_221DDC000, v84, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
      }

      else
      {
        v27 = v81 >= 2.0 && v83 == 1;
      }

      v28 = @"Required at least 1 day doubling move goal last month and cannot be Fitness jr user";
      goto LABEL_24;
    case 0x17uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfDaysDoublingExerciseGoalInCurrentMonth];
      v55 = v54;
      templateDataProvider11 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v132 = 0;
      v57 = [templateDataProvider11 currentExperienceTypeWithError:&v132];
      v25 = v132;

      if (v25)
      {
        v58 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v144 = v25;
          _os_log_impl(&dword_221DDC000, v58, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
        goto LABEL_86;
      }

      v27 = 0;
      v28 = @"Required at least 3 days doubling exericise goal last month, cannot be Fitness Jr user, and cannot be standalone phone Fitness mode";
      if (v55 >= 2.0 && v57 == 1)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
LABEL_86:
        v28 = @"Required at least 3 days doubling exericise goal last month, cannot be Fitness Jr user, and cannot be standalone phone Fitness mode";
        goto LABEL_24;
      }

      goto LABEL_24;
    case 0x18uLL:
      currentCalendar7 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
      v51 = [currentCalendar7 hk_startOfMonthForDate:currentDate addingMonths:-1];

      v52 = [(ACHMonthlyChallengeTemplateSource *)self _numberOfDaysInMonthForDate:v51]- 3;
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 longestMoveStreakInCurrentMonth];
      v27 = v53 < v52 && v53 >= 5.0;

      v25 = 0;
      v28 = @"Move streak > 5 during last month, and move streak < number of days in last month - 3";
      goto LABEL_24;
    case 0x19uLL:
      templateDataProvider12 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v129 = 0;
      v102 = [templateDataProvider12 currentActivityMoveModeWithError:&v129];
      v25 = v129;

      if (v25)
      {
        v103 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = 138412290;
        v144 = v25;
        v104 = "Unable to fetch activity move mode: %@";
        goto LABEL_114;
      }

      errorCopy8 = error;
      templateDataProvider13 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v128 = 0;
      v117 = [templateDataProvider13 currentExperienceTypeWithError:&v128];
      v25 = v128;

      if (!v25)
      {
        v27 = v102 != 2 && v117 == 1;
        v28 = @"Cannot be Apple Move Time user, and cannot be Fitness jr user";
        goto LABEL_23;
      }

      v103 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v144 = v25;
        v104 = "Error getting experience type: %@";
LABEL_114:
        _os_log_impl(&dword_221DDC000, v103, OS_LOG_TYPE_DEFAULT, v104, buf, 0xCu);
      }

LABEL_115:

      v27 = 0;
      v28 = @"Cannot be Apple Move Time user, and cannot be Fitness jr user";
      goto LABEL_24;
    case 0x1AuLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 totalExerciseMinutesInCurrentMonth];
      v106 = v105;
      templateDataProvider14 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v137 = 0;
      v108 = [templateDataProvider14 currentExperienceTypeWithError:&v137];
      v25 = v137;

      if (v25)
      {
        v109 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v144 = v25;
          _os_log_impl(&dword_221DDC000, v109, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
        goto LABEL_119;
      }

      v27 = 0;
      v28 = @"Required at least 30 Exercise minutes last month, cannot be Fitness jr user, and cannot be standalone phone Fitness mode";
      if (v106 >= 30.0 && v108 == 1)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
LABEL_119:
        v28 = @"Required at least 30 Exercise minutes last month, cannot be Fitness jr user, and cannot be standalone phone Fitness mode";
        goto LABEL_24;
      }

      goto LABEL_24;
    case 0x1BuLL:
      templateDataProvider15 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v131 = 0;
      v90 = [templateDataProvider15 isWheelchairUserWithError:&v131];
      v25 = v131;

      if (v25)
      {
        v91 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 138412290;
        v144 = v25;
        v92 = "Error fetching wheelchair use: %@";
        goto LABEL_104;
      }

      errorCopy8 = error;
      templateDataProvider16 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v130 = 0;
      v113 = [templateDataProvider16 currentExperienceTypeWithError:&v130];
      v25 = v130;

      if (!v25)
      {
        v27 = (v113 == 1) & ~v90;
        v28 = @"Cannot be wheelchair user and is in the standard fitness experience";
        goto LABEL_23;
      }

      v91 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v144 = v25;
        v92 = "Error getting experience type: %@";
LABEL_104:
        _os_log_impl(&dword_221DDC000, v91, OS_LOG_TYPE_DEFAULT, v92, buf, 0xCu);
      }

LABEL_105:

      v27 = 0;
      v28 = @"Cannot be wheelchair user and is in the standard fitness experience";
      goto LABEL_24;
    case 0x1CuLL:
      templateDataProvider17 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v127 = 0;
      v94 = [templateDataProvider17 currentActivityMoveModeWithError:&v127];
      v25 = v127;

      if (v25)
      {
        v95 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        *buf = 138412290;
        v144 = v25;
        v96 = "Error getting move mode: %@";
        goto LABEL_109;
      }

      errorCopy8 = error;
      templateDataProvider18 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v126 = 0;
      v115 = [templateDataProvider18 currentExperienceTypeWithError:&v126];
      v25 = v126;

      if (!v25)
      {
        v27 = v94 == 2 && v115 != 3;
        v28 = @"Must be Apple Move Time user, and cannot be Simplified Fitness jr user";
LABEL_23:
        error = errorCopy8;
        goto LABEL_24;
      }

      v95 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v144 = v25;
        v96 = "Error getting experience type: %@";
LABEL_109:
        _os_log_impl(&dword_221DDC000, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
      }

LABEL_110:

      v27 = 0;
      v28 = @"Must be Apple Move Time user, and cannot be Simplified Fitness jr user";
LABEL_24:
      v121 = v28;
      _pairedWatchDeviceCapabilities = [(ACHMonthlyChallengeTemplateSource *)self _pairedWatchDeviceCapabilities];
      if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
      {
        HasRequiredDeviceCapability = 1;
      }

      else
      {
        HasRequiredDeviceCapability = ACHMonthlyChallengeHasRequiredDeviceCapability();
      }

      if (error && v25)
      {
        v39 = v25;
        *error = v25;
      }

      v122 = v25;
      v40 = v27 & HasRequiredDeviceCapability;
      v125 = 0;
      v41 = [(ACHMonthlyChallengeTemplateSource *)self isGoalValueForMonthlyChallengeTypeValid:available error:&v125];
      v42 = v125;
      if (v42)
      {
        v43 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v144 = v42;
          _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "Error validating goal: %@", buf, 0xCu);
        }

        if (error)
        {
          v44 = v42;
          *error = v42;
        }
      }

      v15 = v41 & v40;
      v45 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = ACHMonthlyChallengeNameFromChallengeType();
        *buf = 138544898;
        v144 = v46;
        v145 = 2048;
        availableCopy3 = available;
        v147 = 1024;
        v148 = v41 & v40;
        v149 = 1024;
        v150 = v40;
        v151 = 2112;
        v152 = v121;
        v153 = 1024;
        v154 = v41;
        v155 = 1024;
        v156 = HasRequiredDeviceCapability;
        _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "Monthly Challenge Type: %{public}@ (%ld), Overall Available: %{BOOL}d, Type Is Available: %{BOOL}d, Type Explanation: %@, Goal is Valid: %{BOOL}d, deviceCapabilityRequirementMet: %{BOOL}d", buf, 0x38u);
      }

      v13 = v124;
LABEL_38:

      v47 = *MEMORY[0x277D85DE8];
      return v15;
    default:
      v25 = 0;
      v27 = 0;
      v28 = @"Type is available";
      goto LABEL_24;
  }
}

- (id)_availableMonthlyChallengeTypes
{
  hk_isDatabaseAccessibilityError = 0;
  v5 = 0;
  v25 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBF8];
  *&v2 = 138543618;
  v19 = v2;
  do
  {
    v20 = 0;
    v7 = [(ACHMonthlyChallengeTemplateSource *)self isMonthlyChallengeOfTypeAvailable:v5 error:&v20, v19];
    v8 = v20;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      v10 = [v6 arrayByAddingObject:v9];

      v6 = v10;
    }

    else
    {
      v9 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = ACHMonthlyChallengeNameFromChallengeType();
        *buf = v19;
        v22 = v11;
        v23 = 2048;
        v24 = v5;
        _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Monthly challenge of type %{public}@ (%lu) is unavailable.", buf, 0x16u);
      }
    }

    if (v8)
    {
      v12 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v22 = v5;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Unable to check availability of monthly challenge type %ld: %@", buf, 0x16u);
      }

      hk_isDatabaseAccessibilityError = [v8 hk_isDatabaseAccessibilityError];
    }

    ++v5;
  }

  while (v5 != 29);
  if (!(([v6 count] != 0) | hk_isDatabaseAccessibilityError & 1))
  {
    if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v13;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "No valid monthly challenge types; adding type of %lu", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v16 = [v6 arrayByAddingObject:v15];

    v6 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)_getRandomMonthlyChallengeType
{
  _availableMonthlyChallengeTypes = [(ACHMonthlyChallengeTemplateSource *)self _availableMonthlyChallengeTypes];
  v3 = [_availableMonthlyChallengeTypes count];
  if (v3)
  {
    v4 = [_availableMonthlyChallengeTypes objectAtIndexedSubscript:arc4random_uniform(v3)];
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)_isInFirstWeekOfCurrentMonth:(id)month
{
  monthCopy = month;
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v6 = [currentCalendar components:16 fromDate:monthCopy];

  LOBYTE(monthCopy) = [v6 day] < 8;
  return monthCopy;
}

- (id)_dateComponentIntervalForCurrentMonth
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2 addingMonths:1];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (id)_dateComponentIntervalForLastMonth
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate addingMonths:-1];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (id)_dateComponentIntervalForTwoMonthsAgo
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate addingMonths:-2];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2 addingMonths:-1];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (unint64_t)_numberOfDaysInMonthForDate:(id)date
{
  dateCopy = date;
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [currentCalendar rangeOfUnit:16 inUnit:8 forDate:dateCopy];
  v7 = v6;

  return v7;
}

- (BOOL)_shouldOverrideMonthlyChallengeCadence
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v4 = [v3 BOOLForKey:*MEMORY[0x277CE8C08]];
  v5 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = v4;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence setting is: %d.", &v14, 8u);
  }

  if (v4)
  {
    v6 = [v3 valueForKey:@"AppleInternalMonthlyChallengeCadenceLastOverrideDateKey"];
    v7 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence last override date was: %@.", &v14, 0xCu);
    }

    if (v6 && ([MEMORY[0x277CBEA80] currentCalendar], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDateInToday:", v6), v8, v9))
    {
      v10 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence last override date was today; not forcing another.", &v14, 2u);
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_didOverrideMonthlyChallengeCadence
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v2 initWithSuiteName:*MEMORY[0x277CE8C00]];
  date = [MEMORY[0x277CBEAA8] date];
  [v4 setValue:date forKey:@"AppleInternalMonthlyChallengeCadenceLastOverrideDateKey"];
  [v4 synchronize];
}

- (double)_targetGoalValueForCurrentMonthForType:(unint64_t)type error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
  v11 = v10;

  dataSource2 = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForTwoMonthsAgo = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForTwoMonthsAgo];
  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource2 valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForTwoMonthsAgo calendar:currentCalendar2 error:error];
  v16 = v15;

  v17 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134218240;
    v29 = v11;
    v30 = 2048;
    v31 = v16;
    _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Creating goal value for this month with last month value: %f, two months ago value: %f", &v28, 0x16u);
  }

  if (type != 29 && type)
  {
    v23 = ACHLogMonthlyChallenges();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v16 >= 1.0)
    {
      if (v24)
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Target goal = lowest month of the last 2 months", &v28, 2u);
      }

      if (v11 >= v16)
      {
        v11 = v16;
      }
    }

    else
    {
      if (v24)
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "If there is no data two months ago, match last month's value", &v28, 2u);
      }
    }

    [(ACHMonthlyChallengeTemplateSource *)self _roundedGoalValue:type monthlyChallengeType:v11];
    v19 = v25;
    v18 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = v19;
      v20 = "Target value (%f) created";
      v21 = v18;
      v22 = 12;
      goto LABEL_17;
    }
  }

  else
  {
    v18 = ACHLogMonthlyChallenges();
    v19 = -1.0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      v20 = "Trying to create goal value for ACHMonthlyChallengeTypeUndefined or ACHMonthlyChallengeTypeMaxValue, returning";
      v21 = v18;
      v22 = 2;
LABEL_17:
      _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, v20, &v28, v22);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (double)_goalValueForCurrentMonthForType:(unint64_t)type error:(id *)error
{
  [ACHMonthlyChallengeTemplateSource _targetGoalValueForCurrentMonthForType:"_targetGoalValueForCurrentMonthForType:error:" error:?];
  v7 = v6;
  result = 0.0;
  if (!*error)
  {
    result = v7;
    if (v7 < 2.22044605e-16)
    {
      v9 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ACHMonthlyChallengeTemplateSource _goalValueForCurrentMonthForType:type error:v9];
      }

      return 0.0;
    }
  }

  return result;
}

- (double)_capGoalValueForChallengeType:(unint64_t)type goalValue:(double)value
{
  v7 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:?];
  v8 = [(ACHMonthlyChallengeTemplateSource *)self _minimumValueForMonthlyChallengeType:type];
  [v7 doubleValue];
  v10 = v9;
  [v8 doubleValue];
  if (v10 >= value)
  {
    valueCopy2 = value;
  }

  else
  {
    valueCopy2 = v10;
  }

  if (!v7)
  {
    valueCopy2 = value;
  }

  if (v11 < valueCopy2 || v8 == 0)
  {
    v14 = valueCopy2;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

- (id)_suffixForCurrentMonthForType:(unint64_t)type template:(id)template goal:(double)goal error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
  v15 = v14;

  dataSource2 = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForTwoMonthsAgo = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForTwoMonthsAgo];
  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource2 valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForTwoMonthsAgo calendar:currentCalendar2 error:error];
  v20 = v19;

  v21 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 134218240;
    v48 = v15;
    v49 = 2048;
    v50 = v20;
    _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, "Obtaining suffix for this month with last month value: %f, two months ago value: %f", &v47, 0x16u);
  }

  if (type != 29 && type)
  {
    [(ACHMonthlyChallengeTemplateSource *)self _targetGoalValueForCurrentMonthForType:type error:error];
    v25 = v24;
    v22 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:type];
    [v22 doubleValue];
    if (v22 && v25 > v26)
    {
      v27 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEFAULT, "Target goal is over challenge type's maximum. Suffix is nil.", &v47, 2u);
      }

      v23 = 0;
      goto LABEL_41;
    }

    v28 = [(ACHMonthlyChallengeTemplateSource *)self possibleLocalizationSuffixesForTemplate:templateCopy];
    ACHLowRuleThresholdForChallenge();
    if (v29 >= goal)
    {
      v32 = ACHLogMonthlyChallenges();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BD8];
      if (!v33)
      {
        goto LABEL_21;
      }

      v47 = 138543362;
      v48 = *&v34;
      v35 = "If goal is lower than Low Rule Threshold, suffix is %{public}@.";
      goto LABEL_20;
    }

    if (v20 < 1.0)
    {
      v30 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "If there is no data two months ago, suffix is nil.", &v47, 2u);
      }

      v31 = 0;
      goto LABEL_26;
    }

    v38 = v15 / v20 * 100.0 + -100.0;
    if (v38 <= -25.0)
    {
      v32 = ACHLogMonthlyChallenges();
      v40 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BD0];
      if (v40)
      {
        v47 = 138543362;
        v48 = *&v34;
        v35 = "Decrease from Month A to Month B = 25%%+, suffix is %{public}@.";
        goto LABEL_20;
      }
    }

    else if (v38 >= -10.0)
    {
      if (v38 >= 0.0)
      {
        if (v38 >= 25.0)
        {
          v32 = ACHLogMonthlyChallenges();
          v44 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BD0];
          if (v44)
          {
            v47 = 138543362;
            v48 = *&v34;
            v35 = "Increase from Month A to Month B = 25%%+, suffix is %{public}@.";
            goto LABEL_20;
          }
        }

        else if (v38 >= 10.0)
        {
          v32 = ACHLogMonthlyChallenges();
          v45 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BE0];
          if (v45)
          {
            v47 = 138543362;
            v48 = *&v34;
            v35 = "Increase from Month A to Month B = 10 - 24%%, suffix is %{public}@.";
            goto LABEL_20;
          }
        }

        else
        {
          if (v38 < 0.0)
          {
            goto LABEL_39;
          }

          v32 = ACHLogMonthlyChallenges();
          v46 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BF0];
          if (v46)
          {
            v47 = 138543362;
            v48 = *&v34;
            v35 = "Increase from Month A to Month B = 0 - 9%%, suffix is %{public}@.";
            goto LABEL_20;
          }
        }
      }

      else
      {
        v32 = ACHLogMonthlyChallenges();
        v41 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        v34 = *MEMORY[0x277CE8BE8];
        if (v41)
        {
          v47 = 138543362;
          v48 = *&v34;
          v35 = "Decrease from Month A to Month B = 0-9%%, suffix is %{public}@.";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v32 = ACHLogMonthlyChallenges();
      v39 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BE0];
      if (v39)
      {
        v47 = 138543362;
        v48 = *&v34;
        v35 = "Decrease from Month A to Month B = 10-24%%, suffix is %{public}@.";
LABEL_20:
        _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, v35, &v47, 0xCu);
      }
    }

LABEL_21:

    v36 = v34;
    if (v36)
    {
      v30 = v36;
      if ([v28 containsObject:v36])
      {
        v37 = v30;
      }

      else
      {
        v37 = 0;
      }

      v31 = v37;
LABEL_26:

LABEL_40:
      v27 = v31;

      v23 = v27;
LABEL_41:

      goto LABEL_42;
    }

LABEL_39:
    v31 = 0;
    goto LABEL_40;
  }

  v22 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v47) = 0;
    _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Trying to obtain suffix for ACHMonthlyChallengeTypeUndefined or ACHMonthlyChallengeTypeMaxValue, returning", &v47, 2u);
  }

  v23 = 0;
LABEL_42:

  v42 = *MEMORY[0x277D85DE8];

  return v23;
}

- (double)_roundedGoalValue:(double)value monthlyChallengeType:(unint64_t)type
{
  valueCopy = value;
  v15 = *MEMORY[0x277D85DE8];
  if (value >= 2.22044605e-16)
  {
    if (type == 20 || type == 6)
    {
      valueCopy = ceil(value / 10.0) * 10.0;
    }

    else
    {
      v5 = ceil(value);
      v6 = ceil(valueCopy / 100.0);
      if (type == 5)
      {
        valueCopy = v6 * 100.0;
      }

      else
      {
        valueCopy = v5;
      }
    }

    v7 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = ACHMonthlyChallengeNameFromChallengeType();
      v11 = 134218242;
      v12 = valueCopy;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Rounded goal value (%f) set for Monthly Challenge: %{public}@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return valueCopy;
}

- (id)_maximumValueForMonthlyChallengeType:(unint64_t)type
{
  if (type > 0x18)
  {
    v6 = 0;
  }

  else if (((1 << type) & 0x10FFF9E) != 0)
  {
    v4 = MEMORY[0x277CCABB0];
    currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
    v6 = [v4 numberWithUnsignedInteger:{-[ACHMonthlyChallengeTemplateSource _numberOfDaysInMonthForDate:](self, "_numberOfDaysInMonthForDate:", currentDate) - 3}];
  }

  else if (((1 << type) & 0xA00000) != 0)
  {
    v6 = &unk_283555AA0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_minimumValueForMonthlyChallengeType:(unint64_t)type
{
  if (type - 1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return qword_278491D68[type - 1];
  }
}

- (NSDate)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (NSCalendar)currentCalendar
{
  currentCalendarOverride = self->_currentCalendarOverride;
  if (currentCalendarOverride)
  {
    hk_gregorianCalendarWithLocalTimeZone = currentCalendarOverride;
  }

  else
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return hk_gregorianCalendarWithLocalTimeZone;
}

- (BOOL)isStandalonePhoneFitnessMode
{
  isStandalonePhoneFitnessModeOverride = self->_isStandalonePhoneFitnessModeOverride;
  if (isStandalonePhoneFitnessModeOverride)
  {

    return [(NSNumber *)isStandalonePhoneFitnessModeOverride BOOLValue];
  }

  else
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isStandalonePhoneFitnessMode = [mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode];

    return isStandalonePhoneFitnessMode;
  }
}

- (id)pairedDeviceRegistrySharedInstance
{
  pairedDeviceRegistrySharedInstanceOverride = self->_pairedDeviceRegistrySharedInstanceOverride;
  if (pairedDeviceRegistrySharedInstanceOverride)
  {
    mEMORY[0x277D2BCF8] = pairedDeviceRegistrySharedInstanceOverride;
  }

  else
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  }

  return mEMORY[0x277D2BCF8];
}

- (void)templatesForDate:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error loading cached templates: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)customPlaceholderValuesForTemplate:(NSObject *)a3 error:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 availabilityStart];
  v6 = [a2 startDateComponents];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_221DDC000, a3, OS_LOG_TYPE_DEBUG, "Progress: not adding progress as challenge not for current month: availability start (%{public}@) vs current month start date (%{public}@).", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_goalValueForCurrentMonthForType:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Calculated a zero target value for type %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end