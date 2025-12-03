@interface BatteryUIController
+ (BOOL)isALSCurveHigherThanDefault;
+ (void)showLearnMoreHelpKitWithTopicID:(id)d navigationController:(id)controller;
- (BOOL)appQualifiers:(id)qualifiers containsQualifier:(int64_t)qualifier;
- (BOOL)checkOnInitIfServiceBatteryRequired;
- (BOOL)getIBLMState;
- (BOOL)inDemoMode;
- (BOOL)isBatterySaverModeEnabled;
- (BOOL)isEduMode;
- (BOOL)isInBUIDemoMode;
- (BOOL)isSquished;
- (BOOL)shouldAutoCycle;
- (BOOL)shouldDisplayBugSignatures;
- (BOOL)shouldEstimateCellHeightFor:(id)for;
- (BOOL)showRootNodesInInternal;
- (BOOL)showSaveDemoButtonInInternal;
- (BatteryUIController)init;
- (UIActivityIndicatorView)activityIndicator;
- (double)getRequeryTimeThreshold;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_batteryGroupSpecifier;
- (id)_signatureGroupSpecifier;
- (id)_spinnerSpecifier;
- (id)_spinnerSpecifierGroup;
- (id)_suggestionGroupSpecifier;
- (id)addSuggestionsNoHeaderToSpecifiers:(id)specifiers;
- (id)addSuggestionsToSpecifiers:(id)specifiers;
- (id)appEnergyValue:(id)value;
- (id)appFGBGValue:(id)value;
- (id)appQualifiers:(id)qualifiers;
- (id)batteryGraphSpecifier;
- (id)batteryUIQueryRangeKey;
- (id)batteryUsageGraphsSpecifier;
- (id)caSuggestionsAndInsightsEventDictionaryForType:(id)type category:(id)category action:(id)action;
- (id)formatUsageStringInMin:(id)min;
- (id)formatUsageStringInMinOrHr:(id)hr;
- (id)generateBatteryEntrySpecifiers:(id)specifiers;
- (id)getActiveTime:(id)time;
- (id)getBackgroundActiveTime:(id)time;
- (id)getBatteryPercentageMode:(id)mode;
- (id)getBatterySaverMode:(id)mode;
- (id)getBatteryServiceSuggestion;
- (id)getChargeCycles:(id)cycles;
- (id)getChargingMode;
- (id)getInitializedSuggestionHeaderCellSpecifier;
- (id)getPowerModeString:(id)string;
- (id)getSuggestionObjectWithType:(int)type;
- (id)getTappedTimeDurationStringForTappedIndex:(int)index isUpperCase:(BOOL)case isFooterString:(BOOL)string;
- (id)getTestValues;
- (id)insightAndSuggestionTypes:(id)types;
- (id)internalUsageSpecifiers;
- (id)screenLock:(id)lock;
- (id)setChargingMode:(id)mode specifier:(id)specifier;
- (id)setUpBatteryGraphSpecifiers;
- (id)setUpBatteryHealthGroup;
- (id)setUpBatteryHealthSpecifier;
- (id)setUpBatterySpecifersWithInsufficientData;
- (id)setUpBatterySpecifierWithInsufficientDataWithoutGroup;
- (id)setUpBatterySpecifiers;
- (id)setUpBatteryUsageHeaderSpecifier;
- (id)setUpCardSpecifierForLPM;
- (id)setUpChargingSpecifier;
- (id)setUpChargingStatusSpecifier;
- (id)setUpGraphGroupSpecifier;
- (id)setUpGraphLastChargeSpecifier;
- (id)setUpInternalAppSpecifiers;
- (id)setUpInternalSpecifiers;
- (id)setUpPowerModeSpecifier;
- (id)setUpSpinnerSpecifiers;
- (id)setUpToggleForUsageTimeSpecifier;
- (id)setUpUsageSpecifiers;
- (id)setUpUsageSummarySpecifier;
- (id)setUpUsageTimeValuesSpecifier;
- (id)specifierForBatteryEntry:(id)entry;
- (id)specifiers;
- (int)BUI_MODE;
- (int)getDeviceOrientationFromCurrentDevice;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)adjustTableBottomInset;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)dataChanged;
- (void)dealloc;
- (void)determineBatteryBreakDownHeaderStringLength;
- (void)didPushBatteryButton:(id)button;
- (void)didPushButton:(id)button;
- (void)didTapShowAllButton;
- (void)didTappedBar:(id)bar;
- (void)generateSignaturesEntrySpecifiers:(id)specifiers;
- (void)generateSuggestionsEntryObjects:(id)objects;
- (void)generateSuggestionsWithIssues:(id)issues;
- (void)getDemoName:(id)name;
- (void)graphOnSelectAt:(id)at;
- (void)handleApplicationWillEnterForeground;
- (void)handleBiomeDonationForBUIVisit;
- (void)handlePowerModeChanged:(id)changed;
- (void)hideActionCard;
- (void)logInsightsAndSuggestions:(id)suggestions;
- (void)logToPowerlogRbattx;
- (void)logToPowerlogRbattx0;
- (void)logToPowerlogRbattxy;
- (void)logViewDidLoadEvents;
- (void)openChargingStatusInformationURL:(id)l;
- (void)provideFeedback;
- (void)queryForBatteryBreakdown;
- (void)rebuildList;
- (void)reloadOtherTypeUI:(id)i;
- (void)reloadSpecifierID:(id)d;
- (void)reloadSpecifiers;
- (void)reloadUI;
- (void)removeSpinnerSpecifers;
- (void)removeSuggestion:(id)suggestion;
- (void)reportIssue;
- (void)savePList:(id)list;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAggdKeysForNoBreakdownOnTap;
- (void)setAutolockTitlesAndValues:(id)values;
- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier;
- (void)setBatteryUIQueryRange:(id)range specifier:(id)specifier;
- (void)setScreenLock:(id)lock specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)setUpBatteryUIDictionary:(id)dictionary;
- (void)showActionCardForLPM;
- (void)showActionCardForType:(signed __int16)type;
- (void)showLearnMoreSafariWithURLString:(id)string;
- (void)startRepeatingTimer;
- (void)stopRepeatingTimer;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSuggestionsSpecifiers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BatteryUIController

+ (void)showLearnMoreHelpKitWithTopicID:(id)d navigationController:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v7 = BUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "MoreInfo URL string opened for topicID %@", &v10, 0xCu);
  }

  v8 = +[HLPHelpViewController helpViewController];
  [v8 setSelectedHelpTopicID:dCopy];
  [v8 setShowTopicViewOnLoad:1];
  [v8 setDisplayHelpTopicsOnly:1];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  [controllerCopy presentViewController:v9 animated:1 completion:0];
}

- (id)_suggestionGroupSpecifier
{
  suggestionGroup = self->_suggestionGroup;
  if (!suggestionGroup)
  {
    v4 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v5 = self->_suggestionGroup;
    self->_suggestionGroup = v4;

    [(PSSpecifier *)self->_suggestionGroup setProperty:@"STORAGE_GROUP_02" forKey:PSIDKey];
    suggestionGroup = self->_suggestionGroup;
  }

  return suggestionGroup;
}

- (id)getInitializedSuggestionHeaderCellSpecifier
{
  suggestionHeaderSpecifier = [(BatteryUIController *)self suggestionHeaderSpecifier];

  if (!suggestionHeaderSpecifier)
  {
    v4 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(BatteryUIController *)self setSuggestionHeaderSpecifier:v4];

    suggestionHeaderSpecifier2 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    [suggestionHeaderSpecifier2 setProperty:objc_opt_class() forKey:PSCellClassKey];

    suggestionHeaderSpecifier3 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    [suggestionHeaderSpecifier3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    suggestionHeaderSpecifier4 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    v8 = BatteryUILocalization(@"INSIGHTS_AND_SUGGESTIONS");
    [suggestionHeaderSpecifier4 setProperty:v8 forKey:@"PLBatteryUISuggestionTitle"];

    suggestionHeaderSpecifier5 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    v10 = BatteryUILocalization(@"SHOW_ALL");
    [suggestionHeaderSpecifier5 setProperty:v10 forKey:@"PLBatteryUISuggestionShowAllText"];

    suggestionHeaderSpecifier6 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    v12 = BatteryUILocalization(@"SHOW_LESS");
    [suggestionHeaderSpecifier6 setProperty:v12 forKey:@"PLBatteryUISuggestionShowLessText"];

    suggestionHeaderSpecifier7 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    v14 = [NSNumber numberWithBool:self->_showAll];
    [suggestionHeaderSpecifier7 setProperty:v14 forKey:@"PLBatteryUISuggestionShowAll"];

    v15 = [[WeakBatteryUIController alloc] initWithController:self];
    suggestionHeaderSpecifier8 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    [suggestionHeaderSpecifier8 setProperty:v15 forKey:@"PLBatteryUISuggestionHeaderCellDelegateWrapperKey"];

    suggestionHeaderSpecifier9 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    [suggestionHeaderSpecifier9 setIdentifier:@"SUGGESTION_HEADER"];
  }

  return [(BatteryUIController *)self suggestionHeaderSpecifier];
}

- (void)didTapShowAllButton
{
  self->_showAll ^= 1u;
  tableCellHeights = [(BatteryUIController *)self tableCellHeights];
  if (tableCellHeights)
  {
  }

  else
  {
    tableCellHeightEstimated = [(BatteryUIController *)self tableCellHeightEstimated];

    if (!tableCellHeightEstimated)
    {
      goto LABEL_5;
    }
  }

  v5 = objc_opt_new();
  [(BatteryUIController *)self setTableCellHeights:v5];

  v6 = objc_opt_new();
  [(BatteryUIController *)self setTableCellHeightEstimated:v6];

LABEL_5:
  suggestionHeaderSpecifier = [(BatteryUIController *)self suggestionHeaderSpecifier];
  v8 = [NSNumber numberWithBool:self->_showAll];
  [suggestionHeaderSpecifier setProperty:v8 forKey:@"PLBatteryUISuggestionShowAll"];

  [(BatteryUIController *)self reloadSpecifiers];
}

- (id)screenLock:(id)lock
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveValueForSetting:MCFeatureAutoLockTime];

  if ([v4 intValue] == 0x7FFFFFFF)
  {
    v5 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)setScreenLock:(id)lock specifier:(id)specifier
{
  lockCopy = lock;
  intValue = [lockCopy intValue];
  v5 = +[MCProfileConnection sharedConnection];
  v6 = v5;
  if (intValue == -1)
  {
    v7 = [NSNumber numberWithInt:0x7FFFFFFFLL];
    [v6 setValue:v7 forSetting:MCFeatureAutoLockTime];
  }

  else
  {
    [v5 setValue:lockCopy forSetting:MCFeatureAutoLockTime];
  }
}

- (void)generateSuggestionsEntryObjects:(id)objects
{
  objectsCopy = objects;
  v5 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
  v6 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1106AC(v6);
  }

  suggestionEntries = self->_suggestionEntries;
  self->_suggestionEntries = 0;

  if (objectsCopy)
  {
    v8 = +[NSMutableArray array];
    if ([objectsCopy count])
    {
      v9 = 0;
      v30 = "screenLock:";
      selfCopy = self;
      v32 = objectsCopy;
      do
      {
        v10 = [objectsCopy objectAtIndexedSubscript:{v9, v30}];
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUISuggestionTypeKey"];
        v12 = v11;
        if (!v11)
        {
          goto LABEL_31;
        }

        v34 = v11;
        intValue = [v11 intValue];
        get_log_handle_bui = [v5 + 752 get_log_handle_bui];
        if (os_log_type_enabled(get_log_handle_bui, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v41 = intValue;
          _os_log_impl(&dword_0, get_log_handle_bui, OS_LOG_TYPE_INFO, "Suggestion entry: %d", buf, 8u);
        }

        inDemoMode = [(BatteryUIController *)self inDemoMode];
        v12 = v34;
        if (inDemoMode)
        {
          goto LABEL_31;
        }

        if (intValue > 2)
        {
          if (intValue == 7)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v16 = [v10 objectForKeyedSubscript:@"PLBatteryUIPerAppUsageKey"];
            v18 = [(BatteryUISuggestion *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v18)
            {
              v19 = v18;
              v33 = v9;
              v20 = *v36;
              do
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v36 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v22 = *(*(&v35 + 1) + 8 * i);
                  v23 = [BatteryUISuggestion alloc];
                  v24 = [v10 objectForKeyedSubscript:@"PLBatteryUIPerAppUsageKey"];
                  v25 = [v24 objectForKeyedSubscript:v22];
                  v26 = [(BatteryUISuggestion *)v23 initWithSuggestionType:7 andData:v25];

                  if (v26)
                  {
                    [v8 addObject:v26];
                  }
                }

                v19 = [(BatteryUISuggestion *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
              }

              while (v19);
              self = selfCopy;
              objectsCopy = v32;
              v5 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
              v9 = v33;
            }
          }

          else
          {
            v16 = [[BatteryUISuggestion alloc] initWithSuggestionType:intValue andData:v10];
            if (v16)
            {
              [v8 addObject:v16];
            }
          }

          goto LABEL_30;
        }

        v16 = [[BatteryUILinkSuggestion alloc] initWithSuggestionType:intValue andData:v10];
        if (v16)
        {
          [v8 addObject:v16];
          if (intValue == 1)
          {
            getSuggestionHeaderSpecifier = [(BatteryUISuggestion *)v16 getSuggestionHeaderSpecifier];
            objc_storeWeak(&getSuggestionHeaderSpecifier[OBJC_IVAR___PSSpecifier_target], self);

            getSuggestionHeaderSpecifier2 = [(BatteryUISuggestion *)v16 getSuggestionHeaderSpecifier];
            *&getSuggestionHeaderSpecifier2[OBJC_IVAR___PSSpecifier_setter] = "setScreenLock:specifier:";

            getSuggestionHeaderSpecifier3 = [(BatteryUISuggestion *)v16 getSuggestionHeaderSpecifier];
            *&getSuggestionHeaderSpecifier3[OBJC_IVAR___PSSpecifier_getter] = v30;

            getSuggestionHeaderSpecifier4 = [(BatteryUISuggestion *)v16 getSuggestionHeaderSpecifier];
            [(BatteryUIController *)self setAutolockTitlesAndValues:getSuggestionHeaderSpecifier4];
            goto LABEL_29;
          }

          if (!intValue)
          {
            getSuggestionHeaderSpecifier4 = [(BatteryUISuggestion *)v16 getSuggestionHeaderSpecifier];
            [(BatteryUIController *)self lazyLoadBundle:getSuggestionHeaderSpecifier4];
LABEL_29:
          }
        }

LABEL_30:

        v12 = v34;
LABEL_31:

        ++v9;
      }

      while ([objectsCopy count] > v9);
    }

    if ([v8 count])
    {
      objc_storeStrong(&self->_suggestionEntries, v8);
    }
  }
}

- (void)setAutolockTitlesAndValues:(id)values
{
  valuesCopy = values;
  v3 = [NSArray alloc];
  v4 = [NSNumber numberWithInt:30];
  v5 = [NSNumber numberWithInt:60];
  v6 = [NSNumber numberWithInt:120];
  v7 = [NSNumber numberWithInt:180];
  v8 = [NSNumber numberWithInt:240];
  v9 = [NSNumber numberWithInt:300];
  v10 = [NSNumber numberWithInt:600];
  v11 = [NSNumber numberWithInt:900];
  v12 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  v13 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v12, 0}];

  v52 = [NSArray alloc];
  v60 = BatteryUILocalization(@"30_(%@)_SECONDS");
  v58 = [NSString localizedStringWithFormat:@"%d", 30];
  v63 = [NSString stringWithFormat:v60, v58];
  v56 = BatteryUILocalization(@"1_(%@)_MINUTE");
  v55 = [NSString localizedStringWithFormat:@"%d", 1];
  v62 = [NSString stringWithFormat:v56, v55];
  v54 = BatteryUILocalization(@"2_(%@)_MINUTES");
  v53 = [NSString localizedStringWithFormat:@"%d", 2];
  v47 = [NSString stringWithFormat:v54, v53];
  v51 = BatteryUILocalization(@"3_(%@)_MINUTES");
  v50 = [NSString localizedStringWithFormat:@"%d", 3];
  v41 = [NSString stringWithFormat:v51, v50];
  v49 = BatteryUILocalization(@"4_(%@)_MINUTES");
  v48 = [NSString localizedStringWithFormat:@"%d", 4];
  v44 = [NSString stringWithFormat:v49, v48];
  v46 = BatteryUILocalization(@"5_(%@)_MINUTES");
  v45 = [NSString localizedStringWithFormat:@"%d", 5];
  v14 = [NSString stringWithFormat:v46, v45];
  v43 = BatteryUILocalization(@"10_(%@)_MINUTES");
  v42 = [NSString localizedStringWithFormat:@"%d", 10];
  v15 = [NSString stringWithFormat:v43, v42];
  v16 = BatteryUILocalization(@"15_(%@)_MINUTES");
  v17 = [NSString localizedStringWithFormat:@"%d", 15];
  v18 = [NSString stringWithFormat:v16, v17];
  v19 = BatteryUILocalization(@"NEVER");
  v20 = [v52 initWithObjects:{v63, v62, v47, v41, v44, v14, v15, v18, v19, 0}];

  if (PSIsiPad())
  {
    v21 = &off_174C80;
  }

  else
  {
    v21 = &off_174C98;
  }

  v22 = +[NSMutableArray array];
  v23 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v24 = [v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v66;
    do
    {
      v27 = 0;
      do
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(v21);
        }

        intValue = [*(*(&v65 + 1) + 8 * v27) intValue];
        v29 = [v13 objectAtIndexedSubscript:intValue];
        [v22 addObject:v29];

        v30 = [v20 objectAtIndexedSubscript:intValue];
        [v23 addObject:v30];

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v25);
  }

  v31 = [v22 count];
  v59 = [[NSMutableArray alloc] initWithCapacity:v31];
  v61 = v31;
  if (v31)
  {
    v32 = 0;
    do
    {
      v33 = [v22 objectAtIndex:v32];
      intValue2 = [v33 intValue];
      if (intValue2 == -1)
      {
        v36 = +[NSBundle mainBundle];
        v37 = [v23 objectAtIndex:v32];
        v40 = [v36 localizedStringForKey:v37 value:&stru_16CDB8 table:@"General"];
      }

      else
      {
        v35 = intValue2;
        v36 = +[NSBundle mainBundle];
        v37 = [v23 objectAtIndex:v32];
        [v36 localizedStringForKey:v37 value:&stru_16CDB8 table:@"General"];
        v38 = v64 = v33;
        v39 = [NSNumber numberWithInt:(v35 / 60)];
        v40 = [NSString stringWithFormat:v38, v39];

        v33 = v64;
      }

      if (v33 && v40)
      {
        [v59 addObject:v40];
      }

      ++v32;
    }

    while (v61 != v32);
  }

  [valuesCopy setValues:v22 titles:v59];
}

- (void)generateSuggestionsWithIssues:(id)issues
{
  issuesCopy = issues;
  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1106F0(v5);
  }

  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = issuesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [UrsaSuggestion alloc];
        v14 = [(UrsaSuggestion *)v13 initWithIssue:v12, v16];
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    suggestionEntries = self->_suggestionEntries;
    if (suggestionEntries)
    {
      [(NSMutableArray *)suggestionEntries addObjectsFromArray:v6];
    }

    else
    {
      objc_storeStrong(&self->_suggestionEntries, v6);
    }
  }
}

- (id)addSuggestionsToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  [(BatteryUIController *)self updateSuggestionsSpecifiers];
  suggestionEntries = self->_suggestionEntries;
  if (suggestionEntries && [(NSMutableArray *)suggestionEntries count])
  {
    v6 = &UITableViewAutomaticDimension_ptr;
    if ([(NSMutableArray *)self->_suggestionEntries count]< 3)
    {
      v11 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [(BatteryUIController *)self setSuggestionHeaderSpecifier:v11];

      suggestionHeaderSpecifier = [(BatteryUIController *)self suggestionHeaderSpecifier];
      [suggestionHeaderSpecifier setIdentifier:@"SUGGESTION_HEADER"];

      suggestionHeaderSpecifier2 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    }

    else
    {
      _suggestionGroupSpecifier = [(BatteryUIController *)self _suggestionGroupSpecifier];
      [specifiersCopy addObject:_suggestionGroupSpecifier];

      suggestionHeaderSpecifier2 = [(BatteryUIController *)self getInitializedSuggestionHeaderCellSpecifier];
      v9 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_suggestionEntries count]];
      [suggestionHeaderSpecifier2 setProperty:v9 forKey:@"PLBatteryUISuggestionInsightTotalCountKey"];

      v10 = [NSNumber numberWithBool:self->_showAll];
      [suggestionHeaderSpecifier2 setProperty:v10 forKey:@"PLBatteryUISuggestionShowAll"];
    }

    v24 = suggestionHeaderSpecifier2;
    [specifiersCopy addObject:suggestionHeaderSpecifier2];
    if ([(NSMutableArray *)self->_suggestionEntries count])
    {
      v13 = 0;
      do
      {
        if (!self->_showAll && v13 > 1)
        {
          break;
        }

        v14 = [(NSMutableArray *)self->_suggestionEntries objectAtIndexedSubscript:v13];
        v15 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_129AC;
        block[3] = &unk_163FF8;
        block[4] = self;
        dispatch_async(v15, block);

        if (v13)
        {
          v16 = v6[6];
          [v14 getSuggestionIdentifier];
          v18 = v17 = v6;
          v19 = [v18 stringByAppendingString:@"_HEADER"];
          v20 = [(CGFloat *)v16 groupSpecifierWithID:v19];

          v6 = v17;
          [specifiersCopy addObject:v20];
        }

        getSuggestionHeaderSpecifier = [v14 getSuggestionHeaderSpecifier];
        [specifiersCopy addObject:getSuggestionHeaderSpecifier];

        getSuggestionInfoSpecifier = [v14 getSuggestionInfoSpecifier];
        [specifiersCopy addObject:getSuggestionInfoSpecifier];

        ++v13;
      }

      while ([(NSMutableArray *)self->_suggestionEntries count]> v13);
    }
  }

  return specifiersCopy;
}

- (id)addSuggestionsNoHeaderToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  [(BatteryUIController *)self updateSuggestionsSpecifiers];
  suggestionEntries = self->_suggestionEntries;
  if (suggestionEntries && [(NSMutableArray *)suggestionEntries count])
  {
    v6 = &UITableViewAutomaticDimension_ptr;
    if ([(NSMutableArray *)self->_suggestionEntries count]< 3)
    {
      v10 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [(BatteryUIController *)self setSuggestionHeaderSpecifier:v10];

      suggestionHeaderSpecifier = [(BatteryUIController *)self suggestionHeaderSpecifier];
      [suggestionHeaderSpecifier setIdentifier:@"SUGGESTION_HEADER"];

      suggestionHeaderSpecifier2 = [(BatteryUIController *)self suggestionHeaderSpecifier];
    }

    else
    {
      getInitializedSuggestionHeaderCellSpecifier = [(BatteryUIController *)self getInitializedSuggestionHeaderCellSpecifier];
      v8 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_suggestionEntries count]];
      [getInitializedSuggestionHeaderCellSpecifier setProperty:v8 forKey:@"PLBatteryUISuggestionInsightTotalCountKey"];

      v9 = [NSNumber numberWithBool:self->_showAll];
      [getInitializedSuggestionHeaderCellSpecifier setProperty:v9 forKey:@"PLBatteryUISuggestionShowAll"];

      suggestionHeaderSpecifier2 = getInitializedSuggestionHeaderCellSpecifier;
      [specifiersCopy addObject:getInitializedSuggestionHeaderCellSpecifier];
    }

    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_12CC8;
    block[3] = &unk_163FF8;
    block[4] = self;
    dispatch_async(v12, block);

    if ([(NSMutableArray *)self->_suggestionEntries count])
    {
      v13 = 0;
      do
      {
        if (!self->_showAll && v13 > 1)
        {
          break;
        }

        v14 = [(NSMutableArray *)self->_suggestionEntries objectAtIndexedSubscript:v13];
        v15 = v14;
        if (v13)
        {
          v16 = v6[6];
          [v14 getSuggestionIdentifier];
          v18 = v17 = v6;
          v19 = [v18 stringByAppendingString:@"_HEADER"];
          v20 = [(CGFloat *)v16 groupSpecifierWithID:v19];

          v6 = v17;
          [specifiersCopy addObject:v20];
        }

        getSuggestionHeaderSpecifier = [v15 getSuggestionHeaderSpecifier];
        [specifiersCopy addObject:getSuggestionHeaderSpecifier];

        getSuggestionInfoSpecifier = [v15 getSuggestionInfoSpecifier];
        [specifiersCopy addObject:getSuggestionInfoSpecifier];

        ++v13;
      }

      while ([(NSMutableArray *)self->_suggestionEntries count]> v13);
    }
  }

  return specifiersCopy;
}

+ (BOOL)isALSCurveHigherThanDefault
{
  if (qword_187B70 != -1)
  {
    sub_110734();
  }

  v2 = CFPreferencesCopyValue(@"BKALSUserPreferences", @"com.apple.backboardd", @"mobile", kCFPreferencesCurrentHost);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"L0b"];
    v5 = v4;
    if (v4)
    {
      [v4 doubleValue];
      v7 = v6 > *&qword_182B28;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateSuggestionsSpecifiers
{
  if (!self->_suggestionEntries || +[PLBatteryUIUtilities isInUnitTest])
  {
    return;
  }

  v3 = +[PSBrightnessSettingsDetail autoBrightnessEnabled];
  if (v3)
  {
    v4 = [(BatteryUIController *)self getSuggestionObjectWithType:0];
    [(BatteryUIController *)self removeSuggestion:v4];
  }

  v5 = [(BatteryUIController *)self screenLock:0];
  intValue = [v5 intValue];

  if (intValue != -1)
  {
    v3 = 1;
    v7 = [(BatteryUIController *)self getSuggestionObjectWithType:1];
    [(BatteryUIController *)self removeSuggestion:v7];
  }

  if ([objc_opt_class() isALSCurveHigherThanDefault])
  {
    if ([(NSMutableArray *)self->_suggestionEntries count])
    {
      if (!v3)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = [(BatteryUIController *)self getSuggestionObjectWithType:2];
    [(BatteryUIController *)self removeSuggestion:v8];

    if ([(NSMutableArray *)self->_suggestionEntries count])
    {
LABEL_12:
      suggestionHeaderSpecifier = [(BatteryUIController *)self suggestionHeaderSpecifier];

      if (suggestionHeaderSpecifier)
      {
        suggestionHeaderSpecifier2 = [(BatteryUIController *)self suggestionHeaderSpecifier];
        v11 = [NSNumber numberWithBool:self->_showAll];
        [suggestionHeaderSpecifier2 setProperty:v11 forKey:@"PLBatteryUISuggestionShowAll"];

        suggestionHeaderSpecifier3 = [(BatteryUIController *)self suggestionHeaderSpecifier];
        v13 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_suggestionEntries count]];
        [suggestionHeaderSpecifier3 setProperty:v13 forKey:@"PLBatteryUISuggestionInsightTotalCountKey"];

        suggestionHeaderSpecifier4 = [(BatteryUIController *)self suggestionHeaderSpecifier];
        v15 = [suggestionHeaderSpecifier4 propertyForKey:PSTableCellKey];

        if (v15)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_131E8;
          v17[3] = &unk_163EB8;
          v18 = v15;
          selfCopy = self;
          dispatch_async(&_dispatch_main_q, v17);
        }
      }

      return;
    }
  }

  suggestionEntries = self->_suggestionEntries;
  self->_suggestionEntries = 0;

  [(BatteryUIController *)self removeSpecifierID:@"STORAGE_GROUP_02" animated:1];

  [(BatteryUIController *)self removeSpecifierID:@"SUGGESTION_HEADER"];
}

- (void)removeSuggestion:(id)suggestion
{
  if (suggestion)
  {
    suggestionEntries = self->_suggestionEntries;
    suggestionCopy = suggestion;
    [(NSMutableArray *)suggestionEntries removeObject:suggestionCopy];
    getSuggestionHeaderSpecifier = [suggestionCopy getSuggestionHeaderSpecifier];
    [(BatteryUIController *)self removeSpecifier:getSuggestionHeaderSpecifier animated:1];

    getSuggestionInfoSpecifier = [suggestionCopy getSuggestionInfoSpecifier];
    [(BatteryUIController *)self removeSpecifier:getSuggestionInfoSpecifier animated:1];

    getSuggestionIdentifier = [suggestionCopy getSuggestionIdentifier];

    v8 = [getSuggestionIdentifier stringByAppendingString:@"_HEADER"];
    [(BatteryUIController *)self removeSpecifierID:v8 animated:1];
  }
}

- (id)getSuggestionObjectWithType:(int)type
{
  suggestionEntries = self->_suggestionEntries;
  if (suggestionEntries && [(NSMutableArray *)suggestionEntries count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_suggestionEntries;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 getSuggestionType] == type)
          {
            v12 = v11;
            goto LABEL_14;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_signatureGroupSpecifier
{
  if (!self->_signatureGroup)
  {
    v3 = [PSSpecifier preferenceSpecifierNamed:@"SIGNATURES" target:0 set:0 get:0 detail:0 cell:0 edit:0];
    signatureGroup = self->_signatureGroup;
    self->_signatureGroup = v3;

    [(PSSpecifier *)self->_signatureGroup setProperty:@"SIGNATURES" forKey:PSIDKey];
  }

  suggestionGroup = self->_suggestionGroup;

  return suggestionGroup;
}

- (void)generateSignaturesEntrySpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  signatureEntries = self->_signatureEntries;
  self->_signatureEntries = 0;

  if (specifiersCopy)
  {
    v6 = objc_opt_new();
    v7 = self->_signatureEntries;
    self->_signatureEntries = v6;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = specifiersCopy;
    obj = specifiersCopy;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = *v35;
      v30 = PSCellClassKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"processName"];
          v33 = @"No Name";
          if (([v12 isEqualToString:&stru_16CDB8] & 1) == 0)
          {
            v33 = [v11 objectForKeyedSubscript:@"processName"];
          }

          v13 = [v11 objectForKeyedSubscript:@"timestamp"];
          v14 = [NSDateFormatter localizedStringFromDate:v13 dateStyle:1 timeStyle:1];

          v15 = [v11 objectForKeyedSubscript:@"domain"];
          LODWORD(v13) = [v15 isEqualToString:@"Energy"];

          if (v13)
          {
            v16 = [v11 objectForKeyedSubscript:@"type"];
            v17 = @"CPU";
            v18 = [v16 isEqualToString:@"CPU"];

            if (!v18)
            {
              v17 = @"BAT";
            }
          }

          else
          {
            v19 = [v11 objectForKeyedSubscript:@"domain"];
            v20 = [v19 isEqualToString:@"Networking"];

            if (v20)
            {
              v17 = @"NET";
            }

            else
            {
              v17 = @"???";
            }
          }

          NSLog(@"signatureString = %@", v17);
          v21 = [v11 objectForKeyedSubscript:@"attachments"];

          if (v21)
          {
            v22 = [v11 objectForKeyedSubscript:@"attachments"];
          }

          else
          {
            v22 = &stru_16CDB8;
          }

          v23 = [v11 objectForKeyedSubscript:@"type"];

          if (v23)
          {
            v32 = [v11 objectForKeyedSubscript:@"type"];
          }

          else
          {
            v32 = &stru_16CDB8;
          }

          v24 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:4 edit:0];
          [v24 setProperty:v17 forKey:@"PLBatteryUIAppEnergyDisplayPercentKey"];
          v25 = v14;
          v26 = v25;
          if ([(__CFString *)v22 length]>= 6)
          {
            v27 = [NSString stringWithFormat:@" - Data:%@", v22];
            v26 = [v25 stringByAppendingString:v27];
          }

          [v24 setProperty:v26 forKey:@"cellSubtitleText"];
          [v24 setProperty:objc_opt_class() forKey:v30];
          [v24 setProperty:self forKey:@"PSSubtitleTileValueTableCellTTRKey"];
          [v24 setProperty:v32 forKey:@"PLBatteryUIDisplayTableCellTTRType"];
          [v24 setProperty:v33 forKey:@"PLBatteryUIDisplayTableCellTTRProcess"];
          [v24 setProperty:v17 forKey:@"PLBatteryUIDisplayTableCellTTRDomain"];
          [v24 setProperty:v22 forKey:@"PLBatteryUIDisplayTableCellTTRAttachments"];
          [(NSMutableArray *)self->_signatureEntries addObject:v24];
        }

        v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v9);
    }

    specifiersCopy = v28;
  }
}

- (id)caSuggestionsAndInsightsEventDictionaryForType:(id)type category:(id)category action:(id)action
{
  actionCopy = action;
  categoryCopy = category;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setObject:typeCopy forKeyedSubscript:@"type"];

  [v10 setObject:categoryCopy forKeyedSubscript:@"category"];
  [v10 setObject:actionCopy forKeyedSubscript:@"action"];

  return v10;
}

- (id)insightAndSuggestionTypes:(id)types
{
  typesCopy = types;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(&v14 + 1) + 8 * i) getSuggestionType]);
        v11 = v10;
        if (v10)
        {
          v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%02d", [v10 intValue]);
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)logInsightsAndSuggestions:(id)suggestions
{
  v3 = [(BatteryUIController *)self insightAndSuggestionTypes:suggestions];
  v4 = [v3 componentsJoinedByString:&stru_16CDB8];
  v5 = @"Insights";
  v6 = v4;
  [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  PLLogRegisteredEvent();
}

- (void)reloadSpecifierID:(id)d
{
  v5.receiver = self;
  v5.super_class = BatteryUIController;
  [(BatteryUIController *)&v5 reloadSpecifierID:d];
  view = [(BatteryUIController *)self view];
  [view setNeedsLayout];
}

- (void)reloadSpecifiers
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Reloading specifiers", buf, 2u);
  }

  table = [(BatteryUIController *)self table];
  [table contentOffset];
  self->contentOffsetBUI.x = v5;
  self->contentOffsetBUI.y = v6;

  v7 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_113260(&self->contentOffsetBUI, &self->contentOffsetBUI.y);
  }

  v8 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1132E8(self);
  }

  v10.receiver = self;
  v10.super_class = BatteryUIController;
  [(BatteryUIController *)&v10 reloadSpecifiers];
  view = [(BatteryUIController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_11337C();
  }

  v14.receiver = self;
  v14.super_class = BatteryUIController;
  [(BatteryUIController *)&v14 viewDidLayoutSubviews];
  v4 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1133B8(self);
  }

  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_113438(self);
  }

  v6 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1134FC(self);
  }

  v7 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_113590(self, v7);
  }

  if (self->contentOffsetBUI.y < 3.40282347e38)
  {
    table = [(BatteryUIController *)self table];
    [table contentOffset];
    v10 = v9;
    y = self->contentOffsetBUI.y;

    if (v10 < y)
    {
      table2 = [(BatteryUIController *)self table];
      [table2 setContentOffset:0 animated:{self->contentOffsetBUI.x, self->contentOffsetBUI.y}];

      [(BatteryUIController *)self adjustTableBottomInset];
    }
  }

  v13 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_11366C(self);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_113730(self);
  }

  table = [(BatteryUIController *)self table];
  [table contentInset];
  v7 = v6;
  table2 = [(BatteryUIController *)self table];
  [table2 contentInset];
  v10 = v9;

  if (v7 > v10)
  {
    table3 = [(BatteryUIController *)self table];
    [table3 contentInset];
    v13 = v12;
    table4 = [(BatteryUIController *)self table];
    [table4 contentSize];
    v16 = v13 + v15;
    table5 = [(BatteryUIController *)self table];
    [table5 contentInset];
    v19 = v16 + v18;
    view = [(BatteryUIController *)self view];
    [view frame];
    v22 = v21;

    if (v19 > v22)
    {
      contentScrollView = [(BatteryUIController *)self contentScrollView];
      [contentScrollView frame];
      v25 = v24;
      table6 = [(BatteryUIController *)self table];
      [table6 contentSize];
      v28 = v27;
      table7 = [(BatteryUIController *)self table];
      [table7 contentOffset];
      v31 = v25 - (v28 - v30);

      if (v31 > 0.0)
      {
        table8 = [(BatteryUIController *)self table];
        [table8 contentInset];
        v34 = v33;

        if (v31 < v34)
        {
          table9 = [(BatteryUIController *)self table];
          [table9 contentInset];
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            sub_1137C4();
          }

          table10 = [(BatteryUIController *)self table];
          [table10 setContentInset:{v37, v39, v31, v41}];
        }
      }
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  tableCellHeights = [(BatteryUIController *)self tableCellHeights];
  if (tableCellHeights)
  {
    v9 = tableCellHeights;
    tableCellHeightEstimated = [(BatteryUIController *)self tableCellHeightEstimated];

    if (tableCellHeightEstimated)
    {
      [cellCopy frame];
      v12 = [NSNumber numberWithDouble:v11];
      tableCellHeights2 = [(BatteryUIController *)self tableCellHeights];
      [tableCellHeights2 setObject:v12 forKeyedSubscript:pathCopy];

      LODWORD(v12) = [(BatteryUIController *)self shouldEstimateCellHeightFor:cellCopy];
      tableCellHeightEstimated2 = [(BatteryUIController *)self tableCellHeightEstimated];
      v15 = tableCellHeightEstimated2;
      if (v12)
      {
        v16 = &__kCFBooleanTrue;
      }

      else
      {
        v16 = &__kCFBooleanFalse;
      }

      [tableCellHeightEstimated2 setObject:v16 forKeyedSubscript:pathCopy];
    }
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableCellHeights = [(BatteryUIController *)self tableCellHeights];
  if (!tableCellHeights || (v9 = tableCellHeights, [(BatteryUIController *)self tableCellHeightEstimated], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    [(BatteryUIController *)&v24 tableView:viewCopy estimatedHeightForRowAtIndexPath:pathCopy, v23.receiver, v23.super_class, self, BatteryUIController];
LABEL_9:
    v20 = v21;
    goto LABEL_10;
  }

  tableCellHeights2 = [(BatteryUIController *)self tableCellHeights];
  v12 = [tableCellHeights2 objectForKeyedSubscript:pathCopy];
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;
  tableCellHeightEstimated = [(BatteryUIController *)self tableCellHeightEstimated];
  v15 = [tableCellHeightEstimated objectForKeyedSubscript:pathCopy];
  bOOLValue = [v15 BOOLValue];

  if (!bOOLValue)
  {
LABEL_8:
    [(BatteryUIController *)&v23 tableView:viewCopy estimatedHeightForRowAtIndexPath:pathCopy, self, BatteryUIController, v24.receiver, v24.super_class];
    goto LABEL_9;
  }

  tableCellHeights3 = [(BatteryUIController *)self tableCellHeights];
  v18 = [tableCellHeights3 objectForKeyedSubscript:pathCopy];
  [v18 doubleValue];
  v20 = v19;

LABEL_10:
  return v20;
}

- (BOOL)shouldEstimateCellHeightFor:(id)for
{
  forCopy = for;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_13:
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (void)adjustTableBottomInset
{
  table = [(BatteryUIController *)self table];
  [table contentSize];
  v5 = v4;
  table2 = [(BatteryUIController *)self table];
  [table2 contentOffset];
  v8 = v5 - v7;

  contentScrollView = [(BatteryUIController *)self contentScrollView];
  [contentScrollView frame];
  v11 = v10 - v8;

  table3 = [(BatteryUIController *)self table];
  [table3 contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  table4 = [(BatteryUIController *)self table];
  [table4 contentInset];
  v21 = v20;

  if (v11 < v21)
  {
    table5 = [(BatteryUIController *)self table];
    [table5 contentInset];
    v24 = v23;
    table6 = [(BatteryUIController *)self table];
    [table6 contentInset];
    v27 = v26;

    if (v24 <= v27)
    {
      return;
    }

    if (v11 < v14)
    {
      v11 = v14;
    }
  }

  table7 = [(BatteryUIController *)self table];
  [table7 setContentInset:{v14, v16, v11, v18}];
}

- (id)_batteryGroupSpecifier
{
  if (!self->_batteryGroup)
  {
    v3 = [PSSpecifier groupSpecifierWithID:@"BATTERY_GROUP"];
    batteryGroup = self->_batteryGroup;
    self->_batteryGroup = v3;
  }

  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_11383C();
  }

  v6 = self->_batteryGroup;

  return v6;
}

- (id)setUpSpinnerSpecifiers
{
  _spinnerSpecifierGroup = [(BatteryUIController *)self _spinnerSpecifierGroup];
  _spinnerSpecifier = [(BatteryUIController *)self _spinnerSpecifier];
  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_113878();
  }

  v8[0] = _spinnerSpecifierGroup;
  v8[1] = _spinnerSpecifier;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)removeSpinnerSpecifers
{
  spinnerGroup = self->_spinnerGroup;
  self->_spinnerGroup = 0;

  spinner = self->_spinner;
  self->_spinner = 0;

  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1138B4();
  }
}

- (id)_spinnerSpecifierGroup
{
  spinnerGroup = self->_spinnerGroup;
  if (!spinnerGroup)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"SpinnerGroupSpecifer"];
    v5 = self->_spinnerGroup;
    self->_spinnerGroup = v4;

    spinnerGroup = self->_spinnerGroup;
  }

  return spinnerGroup;
}

- (id)_spinnerSpecifier
{
  spinner = self->_spinner;
  if (!spinner)
  {
    v4 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v5 = self->_spinner;
    self->_spinner = v4;

    [(PSSpecifier *)self->_spinner setIdentifier:@"SpinnerSpecifier"];
    [(PSSpecifier *)self->_spinner setObject:&off_174D60 forKeyedSubscript:PSTableCellHeightKey];
    spinner = self->_spinner;
  }

  return spinner;
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setSize:50.0, 50.0];
    view = [(BatteryUIController *)self view];
    [view center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (void)queryForBatteryBreakdown
{
  if (![(BatteryUIController *)self waitingForResponse])
  {
    v3 = +[BatteryUsageQueryModule sharedModule];
    if ([(BatteryUIController *)self inDemoMode])
    {
      specifier = [(BatteryUIController *)self specifier];
      v5 = [specifier propertyForKey:@"manualFIle"];
      [v3 setManualFileName:v5];
    }

    else
    {
      [v3 setManualFileName:0];
    }

    if ([(BatteryUIController *)self isInBUIDemoMode])
    {
      [v3 setManualFileName:@"/var/mobile/Library/Logs/BatteryUIDemos/buidemo"];
    }

    if (self->_isFirstTimeLaunchingInternalUI)
    {
      [(BatteryUIController *)self setBatteryUIQueryType:0];
      [v3 setType:{-[BatteryUIController batteryUIQueryType](self, "batteryUIQueryType")}];
      self->_isFirstTimeLaunchingInternalUI = 0;
    }

    if ([(BatteryUIController *)self batteryUIType]== 2)
    {
      bUI_MODE = [(BatteryUIController *)self BUI_MODE];
    }

    else
    {
      bUI_MODE = [(BatteryUIController *)self batteryUIQueryType];
    }

    [v3 setType:bUI_MODE];
    [(BatteryUIController *)self setCurrentDictionary:0];
    [(BatteryUIController *)self setCurrentGraphDictionary:0];
    [(BatteryUIController *)self setCoalescedBreakdownDictionary:0];
    if ([(BatteryUIController *)self batteryUIType])
    {
      v7 = +[BatteryUsageQueryModule sharedModule];
      [v7 setGraphNames:&off_174CC8];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_2BD48;
      v50[3] = &unk_1638C0;
      v50[4] = self;
      [v7 populateBatteryModelsWithCompletion:v50];
    }

    v8 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Sending xpc for batterybreakdown response", buf, 2u);
    }

    v9 = mach_absolute_time();
    [(BatteryUIController *)self setWaitingForResponse:1];
    v10 = BUILogLoadTimes();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BUILoadTime", "BUI XPC Sent", buf, 2u);
    }

    if (+[PLBatteryUIUtilities isInUnitTest])
    {
      v11 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_2BE08;
      block[3] = &unk_163FF8;
      block[4] = self;
      dispatch_after(v11, &_dispatch_main_q, block);
LABEL_32:

      return;
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_2C064;
    v47[3] = &unk_164BA0;
    v47[4] = self;
    v47[5] = v9;
    v12 = objc_retainBlock(v47);
    if ([(BatteryUIController *)self batteryUIType]|| !_os_feature_enabled_impl())
    {
      v43 = BUILogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "bui_backend_iOS feature flag is disabled. Using the original backend for UI information...", buf, 2u);
      }

      [v3 populateBatteryUsageWithCompletion:v12];
      goto LABEL_31;
    }

    v13 = BUILogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "bui_backend_iOS feature flag is enabled. Using the new backend for UI information...", buf, 2u);
    }

    backend = [(BatteryUIController *)self backend];
    [backend resetQuery];

    backend2 = [(BatteryUIController *)self backend];
    endOfHour = [backend2 endOfHour];

    backend3 = [(BatteryUIController *)self backend];
    endOfDay = [backend3 endOfDay];

    backend4 = [(BatteryUIController *)self backend];
    v20 = [backend4 addQueryType:3 withEndDate:endOfDay withRange:1 withBucketSize:1296000.0 isDynamicEnd:86400.0];

    backend5 = [(BatteryUIController *)self backend];
    v22 = [backend5 addQueryType:105 withEndDate:endOfDay withRange:1 withBucketSize:691200.0 isDynamicEnd:86400.0];

    backend6 = [(BatteryUIController *)self backend];
    v24 = [backend6 addQueryType:105 withEndDate:endOfDay withRange:1296000.0 withBucketSize:86400.0];

    backend7 = [(BatteryUIController *)self backend];
    v26 = [backend7 addQueryType:4 withEndDate:endOfHour withRange:691200.0 withBucketSize:3600.0];

    backend8 = [(BatteryUIController *)self backend];
    v28 = [backend8 addQueryType:7 withEndDate:endOfHour withRange:691200.0 withBucketSize:86400.0];

    backend9 = [(BatteryUIController *)self backend];
    v30 = [backend9 addQueryType:13 withEndDate:endOfDay withRange:691200.0 withBucketSize:86400.0];

    backend10 = [(BatteryUIController *)self backend];
    v32 = [backend10 addQueryType:8 withEndDate:endOfHour withRange:86400.0 withBucketSize:86400.0];

    backend11 = [(BatteryUIController *)self backend];
    v34 = [backend11 addQueryType:9 withEndDate:endOfHour withRange:86400.0 withBucketSize:86400.0];

    backend12 = [(BatteryUIController *)self backend];
    v36 = [backend12 addQueryType:10 withEndDate:endOfHour withRange:86400.0 withBucketSize:86400.0];

    backend13 = [(BatteryUIController *)self backend];
    v38 = [backend13 addQueryType:11 withEndDate:endOfHour withRange:86400.0 withBucketSize:86400.0];

    backend14 = [(BatteryUIController *)self backend];
    v40 = [backend14 addQueryType:14 withEndDate:endOfHour withRange:86400.0 withBucketSize:86400.0];

    +[BatteryUIResourceClass containerPath];
    v41 = _CFPreferencesCopyValueWithContainer();
    if (!+[PLModelingUtilities internalBuild])
    {
      if (v41)
      {
        [v41 BOOLValue];
      }

      goto LABEL_38;
    }

    v42 = _os_feature_enabled_impl();
    if (v41)
    {
      if ((v42 & [v41 BOOLValue] & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (!v42)
    {
LABEL_38:
      backend15 = [(BatteryUIController *)self backend];
      [v3 queryBackend:backend15 withCompletion:v12];

LABEL_31:
      goto LABEL_32;
    }

    backend16 = [(BatteryUIController *)self backend];
    v45 = [backend16 addQueryType:17 withEndDate:endOfDay withRange:86400.0 withBucketSize:86400.0];

    goto LABEL_38;
  }
}

- (void)setUpBatteryUIDictionary:(id)dictionary
{
  v4 = [dictionary mutableCopy];
  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1138F0();
  }

  if (_os_feature_enabled_impl() && +[PLBatteryUIUtilities inDemoMode])
  {
    v42 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_ChargingIntervals"];
    v6 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_PausedChargingIntervals"];
    if (+[PLModelingUtilities supportsSlowCharging])
    {
      v7 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_ChargingSpeedIntervals"];
      v8 = BUILogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Setting chargingSpeedIntervalsFromDefaults=%@\n", buf, 0xCu);
      }

      v9 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_PausedSlowChargingIntervals"];
      v10 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_StoppedSlowChargingIntervals"];
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v7 = 0;
    }

    v11 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_StoppedChargingIntervals"];
    if (+[PLModelingUtilities supportsSlowCharging])
    {
      if (v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v42 | v6 | v11) != 0;
      }

      if (!v12)
      {
        goto LABEL_31;
      }
    }

    else if (!(v42 | v6 | v11))
    {
LABEL_31:

      goto LABEL_32;
    }

    v41 = v10;
    v39 = v9;
    v40 = v7;
    v38 = objc_opt_new();
    v13 = [v4 objectForKeyedSubscript:@"Graph"];
    v14 = [v13 mutableCopy];
    [v4 setObject:v14 forKeyedSubscript:@"Graph"];

    v15 = [v4 objectForKeyedSubscript:@"Graph"];
    v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v17 = [v16 mutableCopy];
    v18 = [v4 objectForKeyedSubscript:@"Graph"];
    [v18 setObject:v17 forKeyedSubscript:@"PLBatteryUIGraph24hrs"];

    if (v42)
    {
      [v38 setObject:v42 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];
    }

    if (v6)
    {
      [v38 setObject:v6 forKeyedSubscript:@"PLBatteryUIPausedChargingIntervalsKey"];
    }

    v9 = v39;
    v7 = v40;
    if (v11)
    {
      [v38 setObject:v11 forKeyedSubscript:@"PLBatteryUIStoppedChargingIntervalsKey"];
    }

    if (+[PLModelingUtilities supportsSlowCharging])
    {
      if (v40)
      {
        [v38 setObject:v40 forKeyedSubscript:@"PLBatteryUIChargingSpeedIntervalsKey"];
      }

      if (v39)
      {
        [v38 setObject:v39 forKeyedSubscript:@"PLBatteryUIPausedSlowChargingIntervalsKey"];
      }

      if (v41)
      {
        [v38 setObject:v41 forKeyedSubscript:@"PLBatteryUIStoppedSlowChargingIntervalsKey"];
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"Graph"];
    v20 = [v19 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    [v20 setObject:v38 forKeyedSubscript:@"PLBatteryUIChargingStateIntervalsDictKey"];

    v10 = v41;
    goto LABEL_31;
  }

LABEL_32:
  v21 = [v4 objectForKeyedSubscript:@"endOfDay"];
  [v21 doubleValue];
  v23 = v22;

  v24 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v4 objectForKeyedSubscript:@"endOfDay"];
    *buf = 138412290;
    v50 = v25;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "End of day from the breakdown: %@", buf, 0xCu);
  }

  v26 = [NSDate dateWithTimeIntervalSince1970:v23];
  objc_storeStrong(&self->_endTime, v26);
  v27 = [v4 objectForKeyedSubscript:@"Graph"];
  v28 = [v27 mutableCopy];

  v29 = [v26 dateByAddingTimeInterval:-86400.0];
  [v28 setObject:v29 forKeyedSubscript:@"PLBatteryUIGraphStartTimeKey"];

  [v28 setObject:v26 forKeyedSubscript:@"PLBatteryUIGraphLastHourKey"];
  v30 = [v4 objectForKeyedSubscript:@"Breakdown"];
  [(BatteryUIController *)self setCurrentDictionary:v30];

  [(BatteryUIController *)self setCurrentGraphDictionary:v28];
  v31 = [v4 objectForKeyedSubscript:@"PLBatteryUILastChargeKey"];
  [(BatteryUIController *)self setCurrentLastChargeDictionary:v31];

  v32 = _os_feature_enabled_impl();
  v33 = +[BatteryUIResourceClass get_log_handle_bui];
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
  if (v32)
  {
    if (v34)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "bui_last_charge_iOS feature flag is enabled. Adding Paused Charging to BUI dictionary.", buf, 2u);
    }

    v33 = [v4 objectForKeyedSubscript:@"PLBatteryUIPausedChargingKey"];
    [(BatteryUIController *)self setCurrentPausedChargingDictionary:v33];
  }

  else if (v34)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "bui_last_charge_iOS feature flag is disabled. Not adding Paused Charging to BUI dictionary.", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2CE44;
    block[3] = &unk_163EB8;
    v35 = v4;
    v47 = v35;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_2D0CC;
    v43[3] = &unk_163EB8;
    v44 = v35;
    selfCopy2 = self;
    dispatch_async(&_dispatch_main_q, v43);
  }

  v36 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_113960(self);
  }

  v37 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_1139EC(self);
  }
}

- (id)appEnergyValue:(id)value
{
  valueCopy = value;
  batteryTotal = self->_batteryTotal;
  v6 = [valueCopy propertyForKey:@"PLBatteryUIAppEnergyValueKey"];
  [v6 floatValue];
  if (batteryTotal <= 0.0)
  {
    v8 = 100.0;
  }

  else
  {
    v8 = self->_batteryTotal;
  }

  *&v7 = *&v7 / v8;
  v9 = [NSNumber numberWithFloat:v7];

  [v9 doubleValue];
  if (v10 <= 0.0)
  {
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v12 = BatteryUILocalization(@"EM_DASH");
    }
  }

  else
  {
    v11 = [NSNumberFormatter localizedStringFromNumber:v9 numberStyle:3];
    v12 = [NSString stringWithFormat:@"%@", v11];
  }

  return v12;
}

- (id)formatUsageStringInMin:(id)min
{
  minCopy = min;
  [minCopy floatValue];
  if (v4 >= 60.0 || ([minCopy floatValue], v5 <= 1.0))
  {
    [minCopy floatValue];
    v6 = PSAbbreviatedFormattedTimeString();
    [NSString stringWithFormat:@"%@", v6];
  }

  else
  {
    [minCopy floatValue];
    v6 = PSAbbreviatedFormattedTimeString();
    [NSString stringWithFormat:@"< %@", v6];
  }
  v7 = ;

  return v7;
}

- (id)formatUsageStringInMinOrHr:(id)hr
{
  hrCopy = hr;
  [hrCopy doubleValue];
  if (v4 >= 60.0)
  {
    v6 = objc_alloc_init(NSDateComponentsFormatter);
    [v6 setUnitsStyle:{+[PLBatteryUIUtilities localizedDateComponentsUnitsStyle](PLBatteryUIUtilities, "localizedDateComponentsUnitsStyle")}];
    [v6 setIncludesApproximationPhrase:0];
    [v6 setIncludesTimeRemainingPhrase:0];
    [v6 setAllowedUnits:96];
    [hrCopy doubleValue];
    v5 = [v6 stringFromTimeInterval:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSquished
{
  if ((+[PLModelingUtilities isNarrowScreen]& 1) != 0)
  {
    return 1;
  }

  if ((+[PLModelingUtilities isiPad]& 1) != 0)
  {
    return 0;
  }

  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v4 = v3;
  if (v3)
  {
    [v3 pointSize];
    v2 = v5 > 12.0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)appFGBGValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy propertyForKey:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v5 floatValue];
  v6 = [NSNumber numberWithFloat:?];

  v7 = [valueCopy propertyForKey:@"PLBatteryUIAppBackgroundRuntimeKey"];

  [v7 floatValue];
  v8 = [NSNumber numberWithFloat:?];

  [v6 floatValue];
  if (v9 < 60.0)
  {
    [v8 floatValue];
    if (v10 < 60.0)
    {
      v11 = 0;
      goto LABEL_19;
    }
  }

  [v6 floatValue];
  if (v12 < 60.0 || ([v8 floatValue], v13 >= 60.0))
  {
    [v6 floatValue];
    if (v17 >= 60.0 || ([v8 floatValue], v18 < 60.0))
    {
      if (self->_isSquishedText)
      {
        v19 = @"%@_SCREEN_SHORTENED";
      }

      else
      {
        v19 = @"%@_SCREEN";
      }

      if (self->_isSquishedText)
      {
        v20 = @"%@_BACKGROUND_SHORTENED";
      }

      else
      {
        v20 = @"%@_BACKGROUND";
      }

      v21 = BatteryUILocalization(v19);
      v22 = [(BatteryUIController *)self formatUsageStringInMinOrHr:v6];
      v23 = [NSString stringWithFormat:v21, v22];
      v14 = [PLBatteryUIUtilities replaceWithUnBreakableSpace:v23];

      v24 = BatteryUILocalization(v20);
      v25 = [(BatteryUIController *)self formatUsageStringInMinOrHr:v8];
      v26 = [NSString stringWithFormat:v24, v25];
      v27 = [PLBatteryUIUtilities replaceWithUnBreakableSpace:v26];

      v11 = [NSString stringWithFormat:@"%@ – %@", v14, v27];
      goto LABEL_18;
    }

    v14 = BatteryUILocalization(@"%@_BACKGROUND");
    selfCopy2 = self;
    v16 = v8;
  }

  else
  {
    v14 = BatteryUILocalization(@"%@_SCREEN");
    selfCopy2 = self;
    v16 = v6;
  }

  v27 = [(BatteryUIController *)selfCopy2 formatUsageStringInMinOrHr:v16];
  v28 = [PLBatteryUIUtilities replaceWithUnBreakableSpace:v27];
  v11 = [NSString stringWithFormat:v14, v28];

LABEL_18:
LABEL_19:
  [&off_173730 floatValue];
  if (v29 >= 60.0)
  {
    v30 = BatteryUILocalization(@"%@_ALWAYS_ON");
    v31 = [(BatteryUIController *)self formatUsageStringInMinOrHr:&off_173730];
    v32 = [NSString stringWithFormat:v30, v31];
    v33 = [PLBatteryUIUtilities replaceWithUnBreakableSpace:v32];

    if (v11)
    {
      v34 = [NSString stringWithFormat:@"%@ – %@", v11, v33];

      v11 = v34;
    }

    else
    {
      v11 = v33;
    }
  }

  return v11;
}

- (id)generateBatteryEntrySpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_113A78();
  }

  if (!specifiersCopy)
  {
    v9 = 0;
    goto LABEL_62;
  }

  v78 = +[NSMutableArray array];
  batteryUIQueryRangeKey = [(BatteryUIController *)self batteryUIQueryRangeKey];
  v7 = [specifiersCopy objectForKeyedSubscript:batteryUIQueryRangeKey];
  v8 = [v7 objectForKeyedSubscript:@"PLBatteryUIErrorCodeKey"];

  if ([v8 integerValue] == &dword_0 + 1)
  {
    v9 = 0;
    goto LABEL_61;
  }

  v10 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_113AB4();
  }

  if (self->_tappedIndex == -1)
  {
    batteryUIQueryRangeKey2 = [(BatteryUIController *)self batteryUIQueryRangeKey];
    v13 = [specifiersCopy objectForKeyedSubscript:batteryUIQueryRangeKey2];
    v18 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  }

  else
  {
    if (self->_batteryUIQueryRange)
    {
      v11 = @"PLBatteryUIQueryRangeWeekTapKey";
    }

    else
    {
      v11 = @"PLBatteryUIQueryRangeDayTapKey";
    }

    batteryUIQueryRangeKey2 = v11;
    v13 = [specifiersCopy objectForKeyedSubscript:batteryUIQueryRangeKey2];
    tappedIndex = self->_tappedIndex;
    if ([v13 count] > tappedIndex)
    {
      v15 = [specifiersCopy objectForKeyedSubscript:batteryUIQueryRangeKey2];
      v16 = [v15 objectAtIndexedSubscript:self->_tappedIndex];
      v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

      if (v17)
      {
        goto LABEL_18;
      }
    }

    v18 = +[NSMutableArray array];
  }

  v17 = v18;
LABEL_18:

  if (!v17 || ![v17 count])
  {
    v9 = 0;
    goto LABEL_60;
  }

  v73 = v8;
  v74 = specifiersCopy;
  v75 = v17;
  if ((self->_batteryUIQueryType & 0xFFFFFFFE) == 2)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v84 objects:v89 count:16];
    if (!v20)
    {

      goto LABEL_42;
    }

    v21 = v20;
    v22 = *v85;
    v23 = 0.0;
    v24 = @"PLBatteryUIAppTypeKey";
    v25 = @"PLBatteryUIAppEnergyValueKey";
    while (1)
    {
      v26 = 0;
      v76 = v21;
      do
      {
        if (*v85 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v84 + 1) + 8 * v26);
        if ([(BatteryUIController *)self batteryUIQueryType]!= 3)
        {
          v28 = [v27 objectForKeyedSubscript:v25];
          [v28 floatValue];
          if ((v29 + 0.5) < 1)
          {
            [v27 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            v30 = v22;
            v31 = v25;
            v32 = v19;
            v34 = v33 = v24;
            [v34 doubleValue];
            v36 = v35;
            v37 = [v27 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v37 doubleValue];
            v39 = v36 + v38;

            v24 = v33;
            v19 = v32;
            v25 = v31;
            v22 = v30;
            v21 = v76;

            if (v39 < 60.0)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        if (-[BatteryUIController showRootNodesInInternal](self, "showRootNodesInInternal") && -[BatteryUIController batteryUIType](self, "batteryUIType") || ([v27 objectForKeyedSubscript:v24], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "intValue"), v40, v41 != 5))
        {
          if (-[BatteryUIController batteryUIType](self, "batteryUIType") || ([v27 objectForKeyedSubscript:v24], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "intValue"), v42, v43 != 2))
          {
            v44 = [v27 objectForKeyedSubscript:v25];
            [v44 floatValue];
            v23 = v23 + v45;
          }
        }

LABEL_36:
        v26 = v26 + 1;
      }

      while (v21 != v26);
      v21 = [v19 countByEnumeratingWithState:&v84 objects:v89 count:16];
      if (!v21)
      {

        v17 = v75;
        if (v23 > 0.0)
        {
          self->_batteryTotal = v23;
        }

        break;
      }
    }
  }

LABEL_42:
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v46 = v17;
  v47 = [v46 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v47)
  {
    goto LABEL_59;
  }

  v48 = v47;
  v49 = *v81;
  v50 = @"PLBatteryUIAppTypeKey";
  v51 = @"PLBatteryUIAppEnergyValueKey";
  selfCopy = self;
  do
  {
    for (i = 0; i != v48; i = i + 1)
    {
      if (*v81 != v49)
      {
        objc_enumerationMutation(v46);
      }

      v53 = *(*(&v80 + 1) + 8 * i);
      if ([(BatteryUIController *)self batteryUIQueryType]!= 3)
      {
        v54 = [v53 objectForKeyedSubscript:v51];
        [v54 floatValue];
        if ((v55 + 0.5) < 1)
        {
          v56 = [v53 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v56 doubleValue];
          v58 = v57;
          [v53 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          v59 = v48;
          v60 = v49;
          v61 = v46;
          v62 = v50;
          v64 = v63 = v51;
          [v64 doubleValue];
          v66 = v58 + v65;

          v51 = v63;
          v50 = v62;
          v46 = v61;
          v49 = v60;
          v48 = v59;
          self = selfCopy;

          if (v66 < 60.0)
          {
            continue;
          }
        }

        else
        {
        }
      }

      if (![(BatteryUIController *)self showRootNodesInInternal]|| ![(BatteryUIController *)self batteryUIType])
      {
        v67 = [v53 objectForKeyedSubscript:v50];
        intValue = [v67 intValue];

        if (intValue == 5)
        {
          continue;
        }
      }

      if (![(BatteryUIController *)self batteryUIType])
      {
        v69 = [v53 objectForKeyedSubscript:v50];
        intValue2 = [v69 intValue];

        if (intValue2 == 2)
        {
          continue;
        }
      }

      v71 = [(BatteryUIController *)self specifierForBatteryEntry:v53];
      [v78 addObject:v71];
    }

    v48 = [v46 countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v48);
LABEL_59:

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_2E118;
  v79[3] = &unk_163800;
  v79[4] = self;
  [v78 sortUsingComparator:v79];
  v9 = v78;
  v8 = v73;
  specifiersCopy = v74;
  v17 = v75;
LABEL_60:

LABEL_61:
LABEL_62:

  return v9;
}

- (BOOL)appQualifiers:(id)qualifiers containsQualifier:(int64_t)qualifier
{
  qualifiersCopy = qualifiers;
  v6 = qualifiersCopy;
  if (qualifiersCopy && [qualifiersCopy count] && objc_msgSend(v6, "count"))
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      intValue = [v8 intValue];

      v10 = intValue == qualifier;
      if (intValue == qualifier)
      {
        break;
      }

      ++v7;
    }

    while ([v6 count] > v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)appQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  if (!+[BatteryUIResourceClass inDemoMode])
  {
    goto LABEL_7;
  }

  v4 = [BatteryUIResourceClass valueForDefaultKey:@"BUIDemoQualifiers"];
  if (!v4)
  {
LABEL_6:

LABEL_7:
    v4 = [qualifiersCopy propertyForKey:@"PLBatteryUIAppQualifiersKey"];
    v6 = BatteryUIPrintQualifierString(v4);
    goto LABEL_8;
  }

  name = [qualifiersCopy name];
  v6 = [v4 valueForKey:name];

  if (!v6 || ![v6 length])
  {

    goto LABEL_6;
  }

LABEL_8:

  return v6;
}

- (id)specifierForBatteryEntry:(id)entry
{
  entryCopy = entry;
  if ([(BatteryUIController *)self batteryUIType]== 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 4;
  }

  if ([(BatteryUIController *)self batteryUIType]== 2)
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  v7 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:v6 cell:v5 edit:0];
  v8 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v7 setProperty:v8 forKey:@"PLBatteryUIAppEnergyValueKey"];

  v9 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v7 setProperty:v9 forKey:@"PLBatteryUIAppForegroundRuntimeKey"];

  v10 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v7 setProperty:v10 forKey:@"PLBatteryUIAppBackgroundRuntimeKey"];

  v11 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
  [v7 setProperty:v11 forKey:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

  v12 = [(BatteryUIController *)self appEnergyValue:v7];
  [v7 setProperty:v12 forKey:@"PLBatteryUIAppEnergyDisplayPercentKey"];

  v13 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v14 = [v13 isEqualToString:@"Flashlight"];

  v15 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v16 = [v15 isEqualToString:@"PowerOutAccessories"];

  if ((v14 & 1) == 0 && (v16 & 1) == 0)
  {
    v17 = [(BatteryUIController *)self appFGBGValue:v7];
    [v7 setProperty:v17 forKey:@"PLBatteryUIAppForegroundBackgroundRuntimeValueKey"];
  }

  v18 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
  [v7 setProperty:v18 forKey:@"PLBatteryUIAppQualifiersKey"];

  v19 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  [v7 setProperty:v19 forKey:@"PLBatteryUIAppTypeKey"];

  v20 = [NSNumber numberWithUnsignedInt:self->_batteryUIType];
  [v7 setProperty:v20 forKey:@"PLBatteryUITypeKey"];

  v21 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  [v7 setProperty:v21 forKey:PSIDKey];

  v22 = [NSNumber numberWithUnsignedInt:self->_iconDisplayType];
  [v7 setProperty:v22 forKey:@"PLIconDisplayTypeKey"];

  v23 = [NSNumber numberWithBool:self->_buttonPressed];
  [v7 setProperty:v23 forKey:@"PLButtonPressedKey"];

  v24 = [NSNumber numberWithUnsignedInt:[(BatteryUIController *)self batteryUIQueryType]];
  [v7 setProperty:v24 forKey:@"PLBatteryUIQueryTypeKey"];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconDontUnload];
  v25 = BatteryUIGetDisplayName(entryCopy);
  [v7 setName:v25];

  v26 = [(BatteryUIController *)self appQualifiers:v7];
  [v7 setProperty:v26 forKey:@"cellSubtitleText"];

  v27 = [[WeakBatteryUIController alloc] initWithController:self];
  [v7 setProperty:v27 forKey:@"PSSubtitleTileValueTableCellDelegateWrapperKey"];
  [v7 setProperty:entryCopy forKey:@"APP_ENERGY_ENTRY"];
  v28 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  intValue = [v28 intValue];

  if (intValue == 4)
  {
    v37 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v30 = [UIWebClip webClipWithIdentifier:v37];

    v38 = +[UIScreen mainScreen];
    [v38 scale];
    v39 = [v30 generateIconImageForFormat:0 scale:?];
LABEL_23:
    v41 = v39;

    goto LABEL_24;
  }

  if (intValue != 1)
  {
    if (!intValue)
    {
      v30 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v7 setObject:v30 forKeyedSubscript:PSLazyIconAppID];
      v31 = v7;
LABEL_17:

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v30 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v32 = [PLBatteryUIUtilities iconUTTypeIdentifierForNonApp:v30];
  v33 = v32;
  if (v32)
  {
    v34 = &PSIconUTTypeIdentifierKey;
    v35 = v32;
LABEL_16:
    [v7 setObject:v35 forKeyedSubscript:*v34];
    v36 = v7;

    goto LABEL_17;
  }

  v40 = @"ContinuityCamera";
  if ([v30 isEqualToString:@"ContinuityCamera"])
  {
LABEL_22:
    v38 = BatteryUIResourceBundle();
    v39 = [UIImage imageNamed:v40 inBundle:v38];
    goto LABEL_23;
  }

  if ([v30 isEqualToString:@"ScreenContinuityShell"])
  {
    v40 = @"ScreenContinuity";
    goto LABEL_22;
  }

  if ([v30 isEqualToString:@"Siri"])
  {
    v35 = @"com.apple.siri";
LABEL_34:
    v34 = &PSLazyIconAppID;
    goto LABEL_16;
  }

  if ([v30 isEqualToString:@"HomeKit"])
  {
    v35 = @"com.apple.Home";
    goto LABEL_34;
  }

  v41 = 0;
LABEL_24:

  if (!v41)
  {
LABEL_25:
    v41 = PSBlankIconImage();
  }

  [v7 setProperty:v41 forKey:PSIconImageKey];

  v42 = v7;
LABEL_27:

  return v7;
}

- (id)batteryUIQueryRangeKey
{
  if (self->_batteryUIQueryRange == 1)
  {
    return @"PLBatteryUIQueryRangeWeekKey";
  }

  else
  {
    return @"PLBatteryUIQueryRangeDayKey";
  }
}

- (void)setBatteryUIQueryRange:(id)range specifier:(id)specifier
{
  rangeCopy = range;
  if ([rangeCopy intValue] != self->_batteryUIQueryRange)
  {
    self->_batteryUIQueryRange = [rangeCopy integerValue];
    self->_tappedIndex = -1;
    self->_batteryUIQueryRange;
    ADClientAddValueForScalarKey();
    v6 = objc_opt_new();
    v7 = v6;
    if (self->_batteryUIQueryRange)
    {
      v8 = @"xDay";
    }

    else
    {
      v8 = @"24hr";
    }

    [v6 setObject:v8 forKeyedSubscript:@"duration"];
    v9 = v7;
    AnalyticsSendEventLazy();
    currentDictionary = [(BatteryUIController *)self currentDictionary];
    if (currentDictionary)
    {
    }

    else
    {
      coalescedBreakdownDictionary = [(BatteryUIController *)self coalescedBreakdownDictionary];

      if (!coalescedBreakdownDictionary)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    [(BatteryUIController *)self rebuildList];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)rebuildList
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113B24();
  }

  currentDictionary = [(BatteryUIController *)self currentDictionary];
  v5 = [(BatteryUIController *)self generateBatteryEntrySpecifiers:currentDictionary];
  batteryEntries = self->_batteryEntries;
  self->_batteryEntries = v5;

  [(BatteryUIController *)self reloadSpecifiers];
}

- (void)setSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = BatteryUIController;
  specifierCopy = specifier;
  [(BatteryUIController *)&v8 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"PLBatteryUITypeKey", v8.receiver, v8.super_class}];

  -[BatteryUIController setBatteryUIType:](self, "setBatteryUIType:", [v5 intValue]);
  batteryUIType = [(BatteryUIController *)self batteryUIType];
  if (batteryUIType - 2 >= 2)
  {
    if (batteryUIType != 1)
    {
      v7 = 0;
      goto LABEL_8;
    }

    if (![(BatteryUIController *)self showRootNodesInInternal])
    {
      v7 = 2;
      goto LABEL_8;
    }

    [(BatteryUIController *)self setBatteryUIType:2];
  }

  v7 = 3;
LABEL_8:
  [(BatteryUIController *)self setBatteryUIQueryType:v7];
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2EF24;
  v5[3] = &unk_163EB8;
  notificationCopy = notification;
  selfCopy = self;
  v4 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (int)getDeviceOrientationFromCurrentDevice
{
  batteryUIDeviceOrientation = [(BatteryUIController *)self batteryUIDeviceOrientation];
  v3 = +[UIDevice currentDevice];
  orientation = [v3 orientation];

  if ((orientation - 1) <= 3)
  {
    return dword_1245A0[(orientation - 1)];
  }

  return batteryUIDeviceOrientation;
}

- (BOOL)checkOnInitIfServiceBatteryRequired
{
  +[BatteryUIResourceClass containerPath];
  v2 = _CFPreferencesCopyValueWithContainer();
  v3 = v2 != 0;

  return v3;
}

- (BatteryUIController)init
{
  v18.receiver = self;
  v18.super_class = BatteryUIController;
  v2 = [(BatteryUIController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_batteryUIQueryRange = 0;
    v2->_batteryUIQueryType = 0;
    v2->_iconDisplayType = 0;
    if ([(BatteryUIController *)v2 shouldAutoCycle])
    {
      v3->_buttonPressed = 1;
      [(BatteryUIController *)v3 startRepeatingTimer];
    }

    else
    {
      v3->_buttonPressed = 0;
    }

    v3->_isFirstTimeLaunchingInternalUI = 1;
    v3->_isFirstTimeSettingUpBatterySpecifiers = 1;
    v3->_isSquishedText = [(BatteryUIController *)v3 isSquished];
    v4 = +[NSMutableDictionary dictionary];
    tips = v3->_tips;
    v3->_tips = v4;

    v3->_tappedIndex = -1;
    [(BatteryUIController *)v3 setWaitingForResponse:0];
    [(BatteryUIController *)v3 setReusesCells:1];
    [(BatteryUIController *)v3 setClearGraph:0];
    v3->contentOffsetBUI = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    [(BatteryUIController *)v3 setBatteryUIDeviceOrientation:2];
    v6 = objc_alloc_init(_TtC14BatteryUsageUI24PLBUIChartViewController);
    chartViewController = v3->_chartViewController;
    v3->_chartViewController = v6;

    [(BatteryUIController *)v3 addChildViewController:v3->_chartViewController];
    if (_os_feature_enabled_impl())
    {
      v8 = objc_opt_new();
      stateProvider = v3->_stateProvider;
      v3->_stateProvider = v8;

      [(ChargingStateProvider *)v3->_stateProvider setDelegate:v3];
      v10 = [_TtC14BatteryUsageUI25ChargingStatusViewFactory createCellWith:v3->_stateProvider];
      chargingStatusViewCell = v3->_chargingStatusViewCell;
      v3->_chargingStatusViewCell = v10;
    }

    if (_os_feature_enabled_impl())
    {
      v12 = objc_alloc_init(PLBatteryUIBackendModel);
      [(BatteryUIController *)v3 setBackend:v12];
    }

    v13 = [PowerUISmartChargeClient alloc];
    v14 = [v13 initWithClientName:PowerUISmartChargeClientSettings];
    chargingClient = v3->_chargingClient;
    v3->_chargingClient = v14;

    v16 = BatteryUILocalization(@"BATTERY_TITLE");
    [(BatteryUIController *)v3 setTitle:v16];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113BD8();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.powerlogd.refreshBUI", 0);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = BatteryUIController;
  [(BatteryUIController *)&v8 dealloc];
}

- (id)getBatteryServiceSuggestion
{
  v2 = objc_opt_new();
  if (+[BatteryUIResourceClass isBatteryUnverified])
  {
    ADClientAddValueForScalarKey();
    [v2 setObject:@"batteryNotTrusted" forKeyedSubscript:@"reason"];
    v17 = v2;
    AnalyticsSendEventLazy();
    v3 = [NSAttributedString alloc];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v4 = BatteryUILocalization(@"BATTERY_UNVERIFIED");
    }

    v5 = [v3 initWithString:v4];

    v6 = v17;
LABEL_36:

    goto LABEL_37;
  }

  if (+[BatteryUIResourceClass batteryDataUnavailable])
  {
LABEL_7:
    v5 = [[NSAttributedString alloc] initWithString:&stru_16CDB8];
    goto LABEL_37;
  }

  v7 = +[BatteryUIResourceClass getBatteryHealthServiceState];
  v8 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_113C14();
  }

  if (v7 <= 4)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v9 = @"peakPowerCapacity";
      }

      else if (v7 == 3)
      {
        v9 = @"nominalChargeAndPeakPower";
      }

      else
      {
        v9 = @"RBATT";
      }

      goto LABEL_32;
    }

    if ((v7 + 1) >= 2)
    {
      if (v7 == 1)
      {
        v9 = @"nominalChargeCapacity";
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v9 = @"notDeterminable";
      }

      else
      {
        if (v7 != 6)
        {
          goto LABEL_43;
        }

        v9 = @"BCDC";
      }

LABEL_32:
      [v2 setObject:v9 forKeyedSubscript:@"reason"];
      ADClientAddValueForScalarKey();
      v16 = v2;
      AnalyticsSendEventLazy();
      v11 = [NSAttributedString alloc];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode", _NSConcreteStackBlock, 3221225472, sub_2F918, &unk_163870) || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v12 = BatteryUILocalization(@"BATTERY_SERVICE");
      }

      v5 = [v11 initWithString:v12];

      v6 = v16;
      goto LABEL_36;
    }

    if ((v7 - 9) >= 2)
    {
      if (v7 == 8)
      {
        v10 = BUILogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_113C88(v10);
        }

        goto LABEL_42;
      }

      if (v7 == 11)
      {
        v9 = @"calibrationFailed";
        goto LABEL_32;
      }

LABEL_28:
      v10 = BUILogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_113D08(v7, v10);
      }

LABEL_42:
    }
  }

LABEL_43:
  if (!+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") && !+[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    goto LABEL_7;
  }

  v14 = [NSAttributedString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v15 = BatteryUILocalization(@"NORMAL_STATE");
  }

  v5 = [v14 initWithString:v15];

LABEL_37:

  return v5;
}

- (void)setAggdKeysForNoBreakdownOnTap
{
  if ((self->_tappedIndex & 0x80000000) == 0)
  {
    self->_batteryUIQueryRange;
  }

  ADClientAddValueForScalarKey();
}

- (id)setUpGraphGroupSpecifier
{
  if (_os_feature_enabled_impl())
  {
    v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v3 setIdentifier:@"GraphGroupSpecifier"];
  }

  else
  {
    v3 = [PSSpecifier groupSpecifierWithID:@"GraphGroupSpecifier"];
    if (self->_batteryBreakDownNotAvailable)
    {
      v4 = [PLBatteryUIUtilities isTappedIntervalCurrentBucket:self->_tappedIndex withQueryRange:self->_batteryUIQueryRange andEndTime:self->_endTime];
      if (self->_tappedIndex != -1 && v4 == 0)
      {
        v6 = [BatteryUIController getTappedTimeDurationStringForTappedIndex:"getTappedTimeDurationStringForTappedIndex:isUpperCase:isFooterString:" isUpperCase:? isFooterString:?];
      }

      else if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"NOTENOUGHINFO"), +[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"NOTENOUGHINFO"];
        v6 = BatteryUILocalization(v7);
      }

      [(BatteryUIController *)self setAggdKeysForNoBreakdownOnTap];
      v8 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_113D80();
      }
    }

    else if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"BREAKDOWN_FOOTNOTE_PERCENTAGE");
    }

    [v3 setProperty:v6 forKey:PSFooterTextGroupKey];
  }

  return v3;
}

- (id)getTestValues
{
  if (+[BatteryUIResourceClass genuineBatteryStatus]== 2)
  {
    return &off_173748;
  }

  if ([(BatteryUIController *)self isServiceState])
  {
    return &off_173760;
  }

  return &off_173730;
}

- (id)setUpBatteryHealthGroup
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113DF0();
  }

  v11 = 28030256;
  v10 = xmmword_1245B0;
  v9 = 1214363620;
  v8 = xmmword_1245C4;
  if ((MGIsDeviceOneOfType() & 1) == 0 && ((+[PLModelingUtilities isiPhone](PLModelingUtilities, "isiPhone", &v8, 0, 0) & 1) != 0 || +[PLBatteryUIBackendModel shouldShowModifiedHealthController]))
  {
    v4 = +[NSMutableArray array];
    setUpBatteryHealthSpecifier = [(BatteryUIController *)self setUpBatteryHealthSpecifier];
    [v4 addObject:setUpBatteryHealthSpecifier];
    if (+[PLBatteryUIBackendModel shouldShowChargingController])
    {
      setUpChargingSpecifier = [(BatteryUIController *)self setUpChargingSpecifier];
      [v4 addObject:setUpChargingSpecifier];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)setUpBatteryHealthSpecifier
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113E2C();
  }

  if (+[PLBatteryUIBackendModel shouldShowChargingController](PLBatteryUIBackendModel, "shouldShowChargingController") || +[PLBatteryUIBackendModel shouldShowModifiedHealthController])
  {
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"BATTERY_HEALTH_TITLE";
      goto LABEL_10;
    }

    v4 = @"BATTERY_HEALTH_TITLE";
  }

  else
  {
    if (+[BatteryUIResourceClass inDemoMode])
    {
      +[BatteryUIResourceClass containerPath];
      v4 = @"BATTERY_HEALTH";
LABEL_10:
      v5 = _CFPreferencesCopyValueWithContainer();
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v4 = @"BATTERY_HEALTH";
  }

LABEL_13:
  v5 = BatteryUILocalization(v4);
LABEL_14:
  v6 = v5;
  v7 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v7 setIdentifier:@"BATTERY_HEALTH_TITLE"];
  [v7 setAccessibilityIdentifier:@"BATTERY_HEALTH_TITLE"];
  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v7 setProperty:v6 forKey:@"PLBatteryUISecondaryTextSettableCellPrimaryTextKey"];
  getBatteryServiceSuggestion = [(BatteryUIController *)self getBatteryServiceSuggestion];
  [v7 setProperty:getBatteryServiceSuggestion forKey:@"PLBatteryUISecondaryTextSettableCellSecondaryTextKey"];

  return v7;
}

- (id)setUpPowerModeSpecifier
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113E68();
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"POWER_MODE_TITLE");
  }

  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"getPowerModeString:" detail:objc_opt_class() cell:2 edit:0];
  [v5 setIdentifier:@"POWER_MODE_SPECIFIER_IDENTIFIER"];
  [v5 setAccessibilityIdentifier:@"POWER_MODE_SPECIFIER_IDENTIFIER"];

  return v5;
}

- (id)getPowerModeString:(id)string
{
  isBatterySaverModeEnabled = [(BatteryUIController *)self isBatterySaverModeEnabled];
  getIBLMState = [(BatteryUIController *)self getIBLMState];
  if ((isBatterySaverModeEnabled & 1) != 0 || getIBLMState)
  {
    if (isBatterySaverModeEnabled)
    {
      v7 = @"LOW_POWER_MODE";
    }

    else
    {
      v7 = @"ADAPTIVE_POWER_MODE";
    }

    v6 = BatteryUILocalization(v7);
  }

  else
  {
    v6 = &stru_16CDB8;
  }

  return v6;
}

- (BOOL)getIBLMState
{
  v2 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v2 isIBLMCurrentlyEnabled];

  return isIBLMCurrentlyEnabled;
}

- (void)handlePowerModeChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_30270;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)getChargingMode
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_113EA4();
  }

  if (+[PLBatteryUIBackendModel supportsChargingFixedLimit])
  {
    chargingClient = [(BatteryUIController *)self chargingClient];
    v16 = 0;
    v5 = [chargingClient isMCLCurrentlyEnabled:&v16];
    v6 = v16;

    chargingClient2 = [(BatteryUIController *)self chargingClient];
    v15 = 0;
    v8 = [chargingClient2 isSmartChargingCurrentlyEnabled:&v15];

    v9 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_11230C();
    }

    if (v5)
    {
      v10 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_113F1C();
      }

      v11 = 1;
    }

    else
    {
      v10 = +[BatteryUIResourceClass get_log_handle_bui];
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v8 == &dword_0 + 1)
      {
        if (v13)
        {
          sub_113F94();
        }

        v11 = 0;
      }

      else
      {
        if (v13)
        {
          sub_113F58();
        }

        v11 = 2;
      }
    }

    v12 = [NSNumber numberWithInt:v11];
  }

  else
  {
    v6 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_113EE0();
    }

    v12 = 0;
  }

  return v12;
}

- (id)setChargingMode:(id)mode specifier:(id)specifier
{
  modeCopy = mode;
  v6 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_112424();
  }

  if (+[PLBatteryUIBackendModel supportsChargingFixedLimit])
  {
    if ([modeCopy intValue])
    {
      if ([modeCopy intValue] != 1)
      {
        v10 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_113FD0();
        }

        goto LABEL_16;
      }

      chargingClient = [(BatteryUIController *)self chargingClient];
      v19 = 0;
      [chargingClient disableDEoC:&v19];
      v8 = v19;

      chargingClient2 = [(BatteryUIController *)self chargingClient];
      v18 = v8;
      [chargingClient2 enableMCL:&v18];
      v10 = v18;

      [(BatteryUIController *)self setCurChargingMode:1];
      v11 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_11400C(self);
      }
    }

    else
    {
      chargingClient3 = [(BatteryUIController *)self chargingClient];
      v21 = 0;
      [chargingClient3 enableSmartCharging:&v21];
      v15 = v21;

      chargingClient4 = [(BatteryUIController *)self chargingClient];
      v20 = v15;
      [chargingClient4 disableMCL:&v20];
      v10 = v20;

      [(BatteryUIController *)self setCurChargingMode:0];
      v11 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_11400C(self);
      }
    }

LABEL_16:
    v13 = [NSNumber numberWithInt:[(BatteryUIController *)self curChargingMode]];
    goto LABEL_17;
  }

  v12 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_113EE0();
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (id)setUpChargingSpecifier
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_11408C();
  }

  v4 = _os_feature_enabled_impl();
  v5 = +[BatteryUIResourceClass inDemoMode];
  if (v4)
  {
    if (!v5 || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"CHARGING_TITLE_CHARGING");
    }

    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v7 setIdentifier:@"CHARGING_OPTIONS_IDENTIFIER"];
    [v7 setAccessibilityIdentifier:@"CHARGING_TITLE"];
  }

  else
  {
    if (!v5 || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v8 = BatteryUILocalization(@"CHARGING_TITLE");
    }

    v7 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setChargingMode:specifier:" get:"getChargingMode" detail:objc_opt_class() cell:2 edit:0];

    v9 = [NSNumber numberWithInt:0];
    v27[0] = v9;
    v10 = [NSNumber numberWithInt:1];
    v27[1] = v10;
    v11 = [NSNumber numberWithInt:2];
    v27[2] = v11;
    v24 = [NSArray arrayWithObjects:v27 count:3];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v12 = BatteryUILocalization(@"CHARGING_FIXED_LIMIT");
    }

    v13 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
    v14 = [NSString stringWithFormat:v12, v13];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v15 = BatteryUILocalization(@"SC_TITLE");
    }

    v26[0] = v15;
    v26[1] = v14;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v16 = BatteryUILocalization(@"CHARGING_OFF");
    }

    v26[2] = v16;
    v17 = [NSArray arrayWithObjects:v26 count:3];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(@"SHORT_FIXED");
    }

    v19 = [NSString stringWithFormat:v18, v13];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v20 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v20 = BatteryUILocalization(@"SHORT_OPTIMIZED");
    }

    v25[0] = v20;
    v25[1] = v19;
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v21 = BatteryUILocalization(@"CHARGING_OFF");
    }

    v25[2] = v21;
    v22 = [NSArray arrayWithObjects:v25 count:3];

    [v7 setIdentifier:@"CHARGING_OPTIONS_IDENTIFIER"];
    [v7 setAccessibilityIdentifier:@"CHARGING_TITLE"];
    [v7 setValues:v24 titles:v17 shortTitles:v22];
  }

  return v7;
}

- (id)setUpToggleForUsageTimeSpecifier
{
  currentDictionary = [(BatteryUIController *)self currentDictionary];
  v4 = [currentDictionary objectForKeyedSubscript:@"PLBatteryUIDataDurationKey"];
  [v4 doubleValue];
  v6 = v5;

  currentDictionary2 = [(BatteryUIController *)self currentDictionary];
  v8 = [currentDictionary2 objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];
  v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
  [v9 doubleValue];
  v11 = v10;
  currentDictionary3 = [(BatteryUIController *)self currentDictionary];
  v13 = [currentDictionary3 objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];
  v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
  [v14 doubleValue];
  v16 = v11 + v15;

  if (v6 < v16)
  {
    v6 = v16;
  }

  v17 = +[NSBundle mainBundle];
  v18 = BatteryUILocalization(@"LAST_HOURS");
  v19 = [v17 localizedStringForKey:v18 value:&stru_16CDB8 table:0];
  if (v6 >= 172800.0)
  {
    v23 = vcvtpd_s64_f64(v6 / 86400.0);
    if (v23 >= 10)
    {
      v24 = 10;
    }

    else
    {
      v24 = v23;
    }

    v21 = [NSString localizedStringWithFormat:v19, 24];

    v17 = +[NSBundle mainBundle];
    v18 = BatteryUILocalization(@"LAST_DAYS");
    v19 = [v17 localizedStringForKey:v18 value:&stru_16CDB8 table:0];
    v22 = [NSString localizedStringWithFormat:v19, v24];
  }

  else
  {
    LODWORD(v20) = (v6 / 3600.0);
    if (v20 >= 24)
    {
      LODWORD(v20) = 24;
    }

    if (v20 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v20;
    }

    v21 = [NSString localizedStringWithFormat:v19, v20];
    v22 = 0;
  }

  v25 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setBatteryUIQueryRange:specifier:" get:"getUsageTimeToggle" detail:0 cell:9 edit:0];
  if (v21 && v22)
  {
    v33[0] = v21;
    v33[1] = v22;
    v26 = [NSArray arrayWithObjects:v33 count:2];
    v27 = &off_174CE0;
  }

  else
  {
    v32 = v21;
    v26 = [NSArray arrayWithObjects:&v32 count:1];
    v27 = &off_174CF8;
  }

  [v25 setValues:v27 titles:v26];

  [v25 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v28 = [NSNumber numberWithBool:[(BatteryUIController *)self clearGraph]];
  [v25 setProperty:v28 forKey:@"PLBatteryUIGraphClearGraphKey"];

  view = [(BatteryUIController *)self view];
  LODWORD(v28) = PSShouldInsetListView();

  v30 = [NSNumber numberWithBool:v28 ^ 1];
  [v25 setProperty:v30 forKey:@"PLBatteryUIGraphRequiresTopSeparatorKey"];

  return v25;
}

- (id)setUpUsageTimeValuesSpecifier
{
  selfCopy = self;
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v4 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
  v5 = [NSNumber numberWithUnsignedInt:selfCopy->_batteryUIQueryRange];
  [v3 setProperty:v5 forKey:@"PLBatteryUIGraphQueryRangeKey"];

  v6 = [NSNumber numberWithBool:selfCopy->_batteryBreakDownNotAvailable];
  [v3 setProperty:v6 forKey:@"PLBatteryUIGraphBatteryBreakdownNotAvailableKey"];

  if (!selfCopy->_batteryUIQueryRange)
  {
    tappedIndex = selfCopy->_tappedIndex;
    v23 = [(NSMutableDictionary *)selfCopy->_currentGraphDictionary objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
    v25 = v24;
    if (tappedIndex == -1)
    {
      v58 = [v24 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];

      v59 = [(NSMutableDictionary *)selfCopy->_currentGraphDictionary objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
      v60 = [v59 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
      v61 = [v60 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];

      [v58 doubleValue];
      v63 = v62;
      [v61 doubleValue];
      v65 = [PLBatteryUIUtilities scaledScreenOn:v63 screenOff:v64 andMaxTotalTime:86400.0];
      v66 = [v65 objectAtIndexedSubscript:0];
      [v3 setProperty:v66 forKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];

      v67 = [v65 objectAtIndexedSubscript:1];
      [v3 setProperty:v67 forKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];

      v4 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
      goto LABEL_32;
    }

    v8 = [v24 objectForKeyedSubscript:@"PLBatteryUIGraphHourly"];

    v26 = [(NSMutableDictionary *)selfCopy->_currentGraphDictionary objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v27 = [v26 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
    v28 = [v27 objectForKeyedSubscript:@"PLBatteryUIGraphHourly"];

    v29 = selfCopy->_tappedIndex;
    if ((v29 & 0x80000000) != 0 || [v8 count] <= v29 || (v30 = selfCopy->_tappedIndex, objc_msgSend(v28, "count") <= v30))
    {
      [v3 setProperty:&off_173730 forKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
      [v3 setProperty:&off_173730 forKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
    }

    else
    {
      v31 = [v8 objectAtIndexedSubscript:selfCopy->_tappedIndex];
      [v31 doubleValue];
      v33 = v32;

      v34 = [v28 objectAtIndexedSubscript:selfCopy->_tappedIndex];
      [v34 doubleValue];
      v36 = v35;

      v37 = [PLBatteryUIUtilities scaledScreenOn:v33 screenOff:v36 andMaxTotalTime:3600.0];
      v38 = [v37 objectAtIndexedSubscript:0];
      [v3 setProperty:v38 forKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];

      v39 = [v37 objectAtIndexedSubscript:1];
      [v3 setProperty:v39 forKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
    }

    v4 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
    goto LABEL_30;
  }

  v7 = [(NSMutableDictionary *)selfCopy->_currentGraphDictionary objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v8 = v7;
  v9 = selfCopy->_tappedIndex;
  if (v9 == -1)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v40 = [v7 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v40)
    {
      v41 = v40;
      v73 = selfCopy;
      v74 = v3;
      v42 = *v76;
      v43 = 0.0;
      v44 = 0.0;
      v45 = 0.0;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(v8);
          }

          v47 = *(*(&v75 + 1) + 8 * i);
          v48 = [v47 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
          v49 = [v48 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
          [v49 doubleValue];
          v51 = v50;

          v52 = [v47 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
          v53 = [v52 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
          [v53 doubleValue];
          v55 = v54;

          v56 = v45 + v51;
          v57 = v44 + v55;
          if (v51 != -1.0 && v55 != -1.0)
          {
            v43 = v43 + 1.0;
            v44 = v44 + v55;
            v45 = v45 + v51;
          }
        }

        v41 = [v8 countByEnumeratingWithState:&v75 objects:v79 count:{16, v56, v57}];
      }

      while (v41);
      if (v43 > 0.0)
      {
        v45 = v45 / v43;
        v44 = v44 / v43;
      }

      selfCopy = v73;
      v3 = v74;
      v4 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
    }

    else
    {
      v44 = 0.0;
      v45 = 0.0;
    }

    v20 = v45;
    v21 = v44;
    goto LABEL_29;
  }

  if ((v9 & 0x80000000) == 0 && [v7 count] > v9)
  {
    v10 = [v8 objectAtIndexedSubscript:selfCopy->_tappedIndex];
    v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
    v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v8 objectAtIndexedSubscript:selfCopy->_tappedIndex];
    v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
    v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
    [v17 doubleValue];
    v19 = v18;

    v20 = v14;
    v21 = v19;
LABEL_29:
    v28 = [PLBatteryUIUtilities scaledScreenOn:v20 screenOff:v21 andMaxTotalTime:86400.0];
    v68 = [v28 objectAtIndexedSubscript:0];
    [v3 setProperty:v68 forKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];

    v69 = [v28 objectAtIndexedSubscript:1];
    [v3 setProperty:v69 forKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];

LABEL_30:
    goto LABEL_31;
  }

  [v3 setProperty:&off_173730 forKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
  [v3 setProperty:&off_173730 forKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
LABEL_31:

LABEL_32:
  v70 = [[WeakBatteryUIController alloc] initWithController:selfCopy];
  [v3 setProperty:v70 forKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v71 = [v4[455] numberWithInt:selfCopy->_tappedIndex];
  [v3 setProperty:v71 forKey:@"PLBatteryUIGraphTappedIndexKey"];

  return v3;
}

- (id)setUpBatteryUsageHeaderSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v4 = [[WeakBatteryUIController alloc] initWithController:self];
  [v3 setProperty:v4 forKey:@"PLBatteryUITimeUsageCellDelegateWrapperKey"];
  tappedIndex = self->_tappedIndex;
  if (tappedIndex != -1)
  {
    v6 = [(BatteryUIController *)self getTappedTimeDurationStringForTappedIndex:tappedIndex isUpperCase:1 isFooterString:0];
    [v3 setProperty:v6 forKey:@"PLBatteryUIGraphTappedTimeDurationStringKey"];
  }

  v7 = [NSNumber numberWithUnsignedInt:self->_iconDisplayType];
  [v3 setProperty:v7 forKey:@"PLIconDisplayTypeKey"];

  v8 = [NSNumber numberWithInt:self->_tappedIndex];
  [v3 setProperty:v8 forKey:@"PLBatteryUIGraphTappedIndexKey"];

  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v9 = [NSNumber numberWithBool:self->_batteryBreakdownShortString];
  [v3 setProperty:v9 forKey:@"PLBatteryUIGraphBatteryBreakdownShortStringKey"];

  return v3;
}

- (id)setUpGraphLastChargeSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  currentLastChargeDictionary = [(BatteryUIController *)self currentLastChargeDictionary];
  [v3 setProperty:currentLastChargeDictionary forKey:@"PLBatteryUILastChargeKey"];

  [v3 setIdentifier:@"LAST_CHARGE_CELL"];
  if (_os_feature_enabled_impl())
  {
    currentPausedChargingDictionary = [(BatteryUIController *)self currentPausedChargingDictionary];
    [v3 setProperty:currentPausedChargingDictionary forKey:@"PLBatteryUIPausedChargingKey"];

    chargingClient = [(BatteryUIController *)self chargingClient];
    v12 = 0;
    v7 = [chargingClient getMCLLimitWithError:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = BUILogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Error getting MCL limit: %@", buf, 0xCu);
      }
    }

    else
    {
      if ((v7 - 80) > 0x14)
      {
        goto LABEL_10;
      }

      v9 = [NSNumber numberWithInt:v7];
      [v3 setObject:v9 forKeyedSubscript:@"PLBatteryUIGraphLastChargeCellSelectedChargeLimit"];
    }
  }

  else
  {
    v8 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "bui_last_charge_iOS feature flag is disabled. Not adding Paused Charging dictionary to Last Charge Specifier.", buf, 2u);
    }
  }

LABEL_10:

  v10 = [[WeakBatteryUIController alloc] initWithController:self];
  [v3 setProperty:v10 forKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v3;
}

- (void)graphOnSelectAt:(id)at
{
  if (at)
  {
    intValue = [at intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v5 = [NSNumber numberWithInt:intValue];
  [(BatteryUIController *)self didTappedBar:v5];
}

- (id)batteryUsageGraphsSpecifier
{
  if (_os_feature_enabled_impl())
  {
    v3 = 46.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(PLBUIChartViewController *)self->_chartViewController setDelegate:self];
  [(PLBUIChartViewController *)self->_chartViewController beginUpdate];
  [(PLBUIChartViewController *)self->_chartViewController setDataset:self->_currentGraphDictionary endOfDay:self->_endTime];
  chartViewController = self->_chartViewController;
  if (self->_batteryUIQueryRange)
  {
    +[_TtC14BatteryUsageUI24PLBUIChartViewController chartIdentifier10Days];
  }

  else
  {
    +[_TtC14BatteryUsageUI24PLBUIChartViewController chartIdentifier24Hrs];
  }
  v5 = ;
  [(PLBUIChartViewController *)chartViewController setActiveChart:v5];

  v6 = self->_chartViewController;
  v7 = [NSNumber numberWithInt:self->_tappedIndex];
  [(PLBUIChartViewController *)v6 setTappedIndex:v7];

  [(PLBUIChartViewController *)self->_chartViewController setMarginWithTop:16.0 bottom:v3];
  v8 = +[PSListController appearance];
  foregroundColor = [v8 foregroundColor];

  if (foregroundColor)
  {
    [(PLBUIChartViewController *)self->_chartViewController setContainerBackgroundColor:foregroundColor];
  }

  [(PLBUIChartViewController *)self->_chartViewController endUpdate];
  v10 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v10 setProperty:self->_chartViewController forKey:@"PLBatteryUIGraphViewControllerKey"];
  traitCollection = [(BatteryUIController *)self traitCollection];
  [_TtC14BatteryUsageUI24PLBUIChartViewController graphHeightWithTraitCollection:traitCollection];
  v13 = v12;

  v14 = [NSNumber numberWithDouble:v3 + v13 + 16.0];
  [v10 setProperty:v14 forKey:PSTableCellHeightKey];

  [v10 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v15 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1140C8();
  }

  return v10;
}

- (id)setUpBatteryGraphSpecifiers
{
  v3 = +[NSMutableArray array];
  setUpGraphGroupSpecifier = [(BatteryUIController *)self setUpGraphGroupSpecifier];
  [v3 addObject:setUpGraphGroupSpecifier];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    setUpToggleForUsageTimeSpecifier = [(BatteryUIController *)self setUpToggleForUsageTimeSpecifier];
    if (setUpToggleForUsageTimeSpecifier)
    {
      [v3 addObject:setUpToggleForUsageTimeSpecifier];
    }
  }

  if (+[PLModelingUtilities shouldShowBatteryGraphs])
  {
    currentLastChargeDictionary = [(BatteryUIController *)self currentLastChargeDictionary];

    if (currentLastChargeDictionary)
    {
      setUpGraphLastChargeSpecifier = [(BatteryUIController *)self setUpGraphLastChargeSpecifier];
      if (setUpGraphLastChargeSpecifier && !self->_chargingStatusViewCell)
      {
        [v3 addObject:setUpGraphLastChargeSpecifier];
      }
    }

    batteryUsageGraphsSpecifier = [(BatteryUIController *)self batteryUsageGraphsSpecifier];
    [v3 addObject:batteryUsageGraphsSpecifier];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    setUpUsageTimeValuesSpecifier = [(BatteryUIController *)self setUpUsageTimeValuesSpecifier];
    if (setUpUsageTimeValuesSpecifier)
    {
      [v3 addObject:setUpUsageTimeValuesSpecifier];
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && !self->_batteryBreakDownNotAvailable)
  {
    setUpBatteryUsageHeaderSpecifier = [(BatteryUIController *)self setUpBatteryUsageHeaderSpecifier];
    if (setUpBatteryUsageHeaderSpecifier)
    {
      [v3 addObject:setUpBatteryUsageHeaderSpecifier];
    }
  }

  return v3;
}

- (id)setUpBatterySpecifersWithInsufficientData
{
  v3 = +[NSMutableArray array];
  _batteryGroupSpecifier = [(BatteryUIController *)self _batteryGroupSpecifier];
  setUpBatterySpecifierWithInsufficientDataWithoutGroup = [(BatteryUIController *)self setUpBatterySpecifierWithInsufficientDataWithoutGroup];
  [v3 addObject:_batteryGroupSpecifier];
  [v3 addObject:setUpBatterySpecifierWithInsufficientDataWithoutGroup];

  return v3;
}

- (id)setUpBatterySpecifierWithInsufficientDataWithoutGroup
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_16CDB8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"NOINFOYET"), +[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"NOINFOYET"];
    v3 = BatteryUILocalization(v4);
  }

  [v2 setProperty:v3 forKey:@"PLBatteryUIGraphTextKey"];

  return v2;
}

- (id)setUpChargingStatusSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v3 setButtonAction:"openChargingStatusInformationURL:"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:PSEnabledKey];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setProperty:self->_chargingStatusViewCell forKey:@"PLBatteryUIChargingStatusTableViewCellKey"];
  v4 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v3 setProperty:v4 forKey:PSTableCellHeightKey];

  [v3 setIdentifier:@"CHARGING_MODULE_IDENTIFIER"];

  return v3;
}

- (void)showLearnMoreSafariWithURLString:(id)string
{
  stringCopy = string;
  v5 = [NSURL URLWithString:stringCopy];
  v6 = BUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = stringCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MoreInfo URL string to open: %@, URL: %@", &v11, 0x16u);
  }

  v7 = [[SFSafariViewController alloc] initWithURL:v5];
  v8 = +[PLModelingUtilities isiPad];
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 7;
  }

  if (v8)
  {
    v10 = 8;
  }

  else
  {
    v10 = 3;
  }

  [v7 setModalPresentationStyle:v9];
  [(BatteryUIController *)self presentModalViewController:v7 withTransition:v10];
}

- (void)openChargingStatusInformationURL:(id)l
{
  v4 = +[PLModelingUtilities isiPad];
  stateProvider = [(BatteryUIController *)self stateProvider];
  isExternallyConnected = [stateProvider isExternallyConnected];

  if (v4)
  {
    if (isExternallyConnected)
    {
      stateProvider2 = [(BatteryUIController *)self stateProvider];
      chargingState = [stateProvider2 chargingState];

      AnalyticsSendEventLazy();
      v9 = objc_opt_class();
      navigationController = [(BatteryUIController *)self navigationController];
      if (chargingState == 3)
      {
        v11 = @"iPad68ee7aa1";
      }

      else
      {
        v11 = @"iPad997da965";
      }
    }

    else
    {
      AnalyticsSendEventLazy();
      v9 = objc_opt_class();
      navigationController = [(BatteryUIController *)self navigationController];
      v11 = @"iPadcda46da7";
    }

    goto LABEL_21;
  }

  if ((isExternallyConnected & 1) == 0)
  {
    AnalyticsSendEventLazy();
    v9 = objc_opt_class();
    navigationController = [(BatteryUIController *)self navigationController];
    v11 = @"iphd453d043a";
    goto LABEL_21;
  }

  stateProvider3 = [(BatteryUIController *)self stateProvider];
  chargingState2 = [stateProvider3 chargingState];

  if (chargingState2 <= 7u)
  {
    switch(chargingState2)
    {
      case 2u:
        AnalyticsSendEventLazy();
        v9 = objc_opt_class();
        navigationController = [(BatteryUIController *)self navigationController];
        v11 = @"iph9202bbd07";
        goto LABEL_21;
      case 3u:
        AnalyticsSendEventLazy();
        v9 = objc_opt_class();
        navigationController = [(BatteryUIController *)self navigationController];
        v11 = @"iph3006fbee4";
        goto LABEL_21;
      case 7u:
        AnalyticsSendEventLazy();
        v9 = objc_opt_class();
        navigationController = [(BatteryUIController *)self navigationController];
        v11 = @"iphc49d61e92";
LABEL_21:
        v14 = navigationController;
        [v9 showLearnMoreHelpKitWithTopicID:v11 navigationController:?];
        goto LABEL_22;
    }

LABEL_19:
    AnalyticsSendEventLazy();
    v9 = objc_opt_class();
    navigationController = [(BatteryUIController *)self navigationController];
    v11 = @"iph63eecc618";
    goto LABEL_21;
  }

  if (chargingState2 == 10)
  {
LABEL_17:
    AnalyticsSendEventLazy();
    v9 = objc_opt_class();
    navigationController = [(BatteryUIController *)self navigationController];
    v11 = @"iph0777c60aa";
    goto LABEL_21;
  }

  if (chargingState2 != 9)
  {
    if (chargingState2 != 8)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = BatteryUILocalization(@"SLOW_CHARGING_URL");
  AnalyticsSendEventLazy();
  [(BatteryUIController *)self showLearnMoreSafariWithURLString:v14];
LABEL_22:
}

- (void)showActionCardForType:(signed __int16)type
{
  typeCopy = type;
  v5 = BUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = typeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "showActionCardForType: %hd", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_33268;
  v6[3] = &unk_164DB8;
  v6[4] = self;
  v7 = typeCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (id)setUpCardSpecifierForLPM
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"ENABLE_LOW_POWER_MODE");
  }

  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setObject:v3 forKeyedSubscript:@"OverrideCardViewCellActionTitleKey"];
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_33574;
  v8[3] = &unk_164020;
  objc_copyWeak(&v9, &location);
  v5 = objc_retainBlock(v8);
  [v4 setObject:v5 forKeyedSubscript:@"OverrideCardViewCellActionKey"];

  v6 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v4 setProperty:v6 forKey:PSTableCellHeightKey];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v4 setIdentifier:@"LPM_ACTION_CARD_IDENTIFIER"];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

- (void)showActionCardForLPM
{
  v3 = BUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "showActionCardForLPM", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33788;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)hideActionCard
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33898;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dataChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33960;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)setUpUsageSummarySpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setProperty:self->_usageSummaryViewTableViewController forKey:@"SwiftUIContainerCellViewController"];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v4 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v3 setProperty:v4 forKey:PSTableCellHeightKey];

  [v3 setIdentifier:@"USAGE_SUMMARY_IDENTIFIER"];

  return v3;
}

- (id)setUpBatterySpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = objc_opt_new();
  if ([(BatteryUIController *)self shouldDisplayBugSignatures])
  {
    v5 = [PSSpecifier groupSpecifierWithName:@"List of Energy Issues"];
    [v3 addObject:v5];

    if (self->_signatureEntries)
    {
      [v3 addObjectsFromArray:?];
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ([(BatteryUIController *)self batteryUIType]!= 2)
    {
      _suggestionEntries = [(BatteryUIController *)self _suggestionEntries];

      if (_suggestionEntries)
      {
        v7 = [(BatteryUIController *)self addSuggestionsToSpecifiers:v3];

        v3 = v7;
      }
    }

    setUpBatteryHealthGroup = [(BatteryUIController *)self setUpBatteryHealthGroup];
    if (setUpBatteryHealthGroup)
    {
      [v3 addObjectsFromArray:setUpBatteryHealthGroup];
    }
  }

  if (!self->_batteryBreakDownNotAvailable)
  {
    goto LABEL_16;
  }

  v9 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    tappedIndex = self->_tappedIndex;
    batteryUIQueryRange = self->_batteryUIQueryRange;
    *buf = 67109376;
    v23 = tappedIndex;
    v24 = 1024;
    v25 = batteryUIQueryRange;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Battery breakdown not available, tappedIndex: %d, batteryUIQueryType: %d.", buf, 0xEu);
  }

  if (self->_tappedIndex != -1 || self->_batteryUIQueryRange)
  {
    goto LABEL_16;
  }

  currentDictionary = [(BatteryUIController *)self currentDictionary];
  v17 = [currentDictionary objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];
  setUpBatteryGraphSpecifiers = [v17 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  if (setUpBatteryGraphSpecifiers && [setUpBatteryGraphSpecifiers count])
  {

LABEL_16:
    [(BatteryUIController *)self determineBatteryBreakDownHeaderStringLength];
    setUpBatteryGraphSpecifiers = [(BatteryUIController *)self setUpBatteryGraphSpecifiers];
    if (setUpBatteryGraphSpecifiers)
    {
      [v3 addObjectsFromArray:setUpBatteryGraphSpecifiers];
    }

    if ([(BatteryUIController *)self batteryUIType])
    {
      setUpInternalSpecifiers = [(BatteryUIController *)self setUpInternalSpecifiers];
      [v3 addObjectsFromArray:setUpInternalSpecifiers];
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [v3 addObjectsFromArray:self->_batteryEntries];
    }

    if ([(BatteryUIController *)self batteryUIType]== 2 || [(BatteryUIController *)self batteryUIType]== 1)
    {
      setUpInternalAppSpecifiers = [(BatteryUIController *)self setUpInternalAppSpecifiers];
      [v3 addObjectsFromArray:setUpInternalAppSpecifiers];
    }

    if (self->_isFirstTimeSettingUpBatterySpecifiers)
    {
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"data"];
      v20 = v4;
      AnalyticsSendEventLazy();
    }

    self->_isFirstTimeSettingUpBatterySpecifiers = 0;
    goto LABEL_28;
  }

  v18 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Battery breakdown not available at all.", buf, 2u);
  }

  ADClientAddValueForScalarKey();
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"data"];
  v21 = v4;
  AnalyticsSendEventLazy();
  setUpBatterySpecifersWithInsufficientData = [(BatteryUIController *)self setUpBatterySpecifersWithInsufficientData];
  [v3 addObjectsFromArray:setUpBatterySpecifersWithInsufficientData];

LABEL_28:

  return v3;
}

- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier
{
  modeCopy = mode;
  v6 = +[_PMLowPowerMode sharedInstance];
  intValue = [modeCopy intValue];

  [v6 setPowerMode:intValue != 0 fromSource:kPMLPMSourceSettings withCompletion:&stru_164DF8];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (id)getBatterySaverMode:(id)mode
{
  isBatterySaverModeEnabled = [(BatteryUIController *)self isBatterySaverModeEnabled];

  return [NSNumber numberWithBool:isBatterySaverModeEnabled];
}

- (id)getBatteryPercentageMode:(id)mode
{
  v3 = [(BatteryUIController *)self readPreferenceValue:mode];
  v4 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_11433C();
  }

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 BOOLValue]);

  return v5;
}

- (id)getTappedTimeDurationStringForTappedIndex:(int)index isUpperCase:(BOOL)case isFooterString:(BOOL)string
{
  if (index == -1)
  {
    v11 = &stru_16CDB8;
    goto LABEL_67;
  }

  stringCopy = string;
  if (!self->_batteryUIQueryRange)
  {
    v9 = objc_alloc_init(NSDateFormatter);
    v12 = +[NSLocale currentLocale];
    [(NSDate *)v9 setLocale:v12];

    if (+[PLBatteryUIUtilities is24HourClock])
    {
      v13 = @"H:mm";
    }

    else
    {
      v13 = @"ha";
    }

    [(NSDate *)v9 setLocalizedDateFormatFromTemplate:v13];
    v14 = [(NSDate *)self->_endTime dateByAddingTimeInterval:(-3600 * (23 - index))];
    v15 = [v14 dateByAddingTimeInterval:-3600.0];
    v16 = [(NSDate *)v9 stringFromDate:v15];
    v17 = [(NSDate *)v9 stringFromDate:v14];
    v18 = [v16 stringByReplacingOccurrencesOfString:@" " withString:@" "];

    v19 = [v17 stringByReplacingOccurrencesOfString:@" " withString:@" "];

    v20 = +[BatteryUIResourceClass inDemoMode];
    if (stringCopy)
    {
      if (!v20)
      {
        v21 = @"USAGE_NOT_AVAILABLE_FOR_TIME_INTERVAL";
        goto LABEL_33;
      }

      +[BatteryUIResourceClass containerPath];
      v21 = @"USAGE_NOT_AVAILABLE_FOR_TIME_INTERVAL";
    }

    else
    {
      if (!v20)
      {
        v21 = @"DURATION_FORMAT";
        goto LABEL_33;
      }

      +[BatteryUIResourceClass containerPath];
      v21 = @"DURATION_FORMAT";
    }

    v27 = _CFPreferencesCopyValueWithContainer();
    if (v27)
    {
LABEL_34:
      v31 = v27;
      localizedUppercaseString2 = [NSString stringWithFormat:v27, v18, v19];

LABEL_64:
      goto LABEL_65;
    }

LABEL_33:
    v27 = BatteryUILocalization(v21);
    goto LABEL_34;
  }

  caseCopy = case;
  if (index != 9)
  {
    v22 = 9 - index;
    v9 = self->_endTime;
    v14 = +[NSDate date];
    if ([PLBatteryUIUtilities isDateMidnight:self->_endTime]&& ![PLBatteryUIUtilities isDateMidnight:v14])
    {
      v23 = v14;

      v9 = v23;
    }

    v15 = [(NSDate *)v9 dateByAddingTimeInterval:(-86400 * v22)];
    if (!stringCopy)
    {
      v24 = objc_alloc_init(NSDateFormatter);
      v28 = +[NSLocale currentLocale];
      [v24 setLocale:v28];

      [v24 setLocalizedDateFormatFromTemplate:@"EEEE"];
      v29 = [v24 stringFromDate:v15];
      localizedUppercaseString2 = v29;
      if (caseCopy)
      {
        localizedUppercaseString = [(__CFString *)v29 localizedUppercaseString];

        localizedUppercaseString2 = localizedUppercaseString;
      }

      goto LABEL_63;
    }

    v24 = +[NSCalendar currentCalendar];
    v25 = [v24 component:512 fromDate:v15];
    localizedUppercaseString2 = &stru_16CDB8;
    if (v25 > 3)
    {
      if (v25 <= 5)
      {
        if (v25 == &dword_4)
        {
          if (!+[BatteryUIResourceClass inDemoMode])
          {
            v26 = @"USAGE_NOT_AVAILABLE_FOR_WEDNESDAY";
            goto LABEL_61;
          }

          +[BatteryUIResourceClass containerPath];
          v26 = @"USAGE_NOT_AVAILABLE_FOR_WEDNESDAY";
        }

        else
        {
          if (!+[BatteryUIResourceClass inDemoMode])
          {
            v26 = @"USAGE_NOT_AVAILABLE_FOR_THURSDAY";
            goto LABEL_61;
          }

          +[BatteryUIResourceClass containerPath];
          v26 = @"USAGE_NOT_AVAILABLE_FOR_THURSDAY";
        }

        goto LABEL_52;
      }

      if (v25 == (&dword_4 + 2))
      {
        if (!+[BatteryUIResourceClass inDemoMode])
        {
          v26 = @"USAGE_NOT_AVAILABLE_FOR_FRIDAY";
          goto LABEL_61;
        }

        +[BatteryUIResourceClass containerPath];
        v26 = @"USAGE_NOT_AVAILABLE_FOR_FRIDAY";
        goto LABEL_52;
      }

      if (v25 == (&dword_4 + 3))
      {
        if (!+[BatteryUIResourceClass inDemoMode])
        {
          v26 = @"USAGE_NOT_AVAILABLE_FOR_SATURDAY";
          goto LABEL_61;
        }

        +[BatteryUIResourceClass containerPath];
        v26 = @"USAGE_NOT_AVAILABLE_FOR_SATURDAY";
        goto LABEL_52;
      }

LABEL_63:

      goto LABEL_64;
    }

    if (v25 == (&dword_0 + 1))
    {
      if (!+[BatteryUIResourceClass inDemoMode])
      {
        v26 = @"USAGE_NOT_AVAILABLE_FOR_SUNDAY";
        goto LABEL_61;
      }

      +[BatteryUIResourceClass containerPath];
      v26 = @"USAGE_NOT_AVAILABLE_FOR_SUNDAY";
    }

    else if (v25 == (&dword_0 + 2))
    {
      if (!+[BatteryUIResourceClass inDemoMode])
      {
        v26 = @"USAGE_NOT_AVAILABLE_FOR_MONDAY";
        goto LABEL_61;
      }

      +[BatteryUIResourceClass containerPath];
      v26 = @"USAGE_NOT_AVAILABLE_FOR_MONDAY";
    }

    else
    {
      if (v25 != (&dword_0 + 3))
      {
        goto LABEL_63;
      }

      if (!+[BatteryUIResourceClass inDemoMode])
      {
        v26 = @"USAGE_NOT_AVAILABLE_FOR_TUESDAY";
        goto LABEL_61;
      }

      +[BatteryUIResourceClass containerPath];
      v26 = @"USAGE_NOT_AVAILABLE_FOR_TUESDAY";
    }

LABEL_52:
    v32 = _CFPreferencesCopyValueWithContainer();
    if (v32)
    {
LABEL_62:
      localizedUppercaseString2 = v32;
      goto LABEL_63;
    }

LABEL_61:
    v32 = BatteryUILocalization(v26);
    goto LABEL_62;
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v9 = BatteryUILocalization(@"TODAY");
  }

  if (!caseCopy)
  {
    goto LABEL_66;
  }

  localizedUppercaseString2 = [(NSDate *)v9 localizedUppercaseString];
LABEL_65:

  v9 = localizedUppercaseString2;
LABEL_66:
  v11 = v9;
LABEL_67:

  return v11;
}

- (void)determineBatteryBreakDownHeaderStringLength
{
  self->_batteryBreakdownShortString = 0;
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  +[UIFont smallSystemFontSize];
  v3 = [UIFont systemFontOfSize:?];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];
  v4 = [UIButton buttonWithType:1];
  +[UIFont smallSystemFontSize];
  v5 = [UIFont systemFontOfSize:?];
  v41 = v4;
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = BatteryUILocalization(@"SHOW_BATTERY_USAGE");
  }

  v8 = [NSAttributedString alloc];
  v45 = NSFontAttributeName;
  +[UIFont smallSystemFontSize];
  v9 = [UIFont systemFontOfSize:?];
  v46 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v11 = [v8 initWithString:v7 attributes:v10];

  [v41 setAttributedTitle:v11 forState:0];
  [v41 sizeToFit];
  [v41 frame];
  v13 = v12;
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v14 = BatteryUILocalization(@"SHOW_USAGE_TIME");
  }

  v15 = [NSAttributedString alloc];
  v43 = NSFontAttributeName;
  +[UIFont smallSystemFontSize];
  v16 = [UIFont systemFontOfSize:?];
  v44 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v40 = v14;
  v18 = [v15 initWithString:v14 attributes:v17];

  v39 = v18;
  [v41 setAttributedTitle:v18 forState:0];
  [v41 sizeToFit];
  [v41 frame];
  if (v19 > v13)
  {
    [v41 frame];
    v13 = v20;
  }

  v21 = 0;
  selfCopy2 = self;
  if (self->_batteryUIQueryRange)
  {
    v23 = 10;
  }

  else
  {
    v23 = 24;
  }

  v24 = 0.0;
  v25 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
  do
  {
    v26 = [(BatteryUIController *)selfCopy2 getTappedTimeDurationStringForTappedIndex:v21 isUpperCase:1 isFooterString:0];
    if (![v25 + 752 inDemoMode] || (objc_msgSend(v25 + 752, "containerPath"), (v27 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v27 = BatteryUILocalization(@"BATTERY_USAGE_BY_APP_WITH_TIME");
    }

    v28 = [NSString stringWithFormat:v27, v26];

    [v2 setText:v28];
    [v2 sizeToFit];
    [v2 frame];
    if (v29 > v24)
    {
      [v2 frame];
      v24 = v30;
    }

    if (![v25 + 752 inDemoMode] || (+[BatteryUIResourceClass containerPath](BatteryUIResourceClass, "containerPath"), (v31 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v31 = BatteryUILocalization(@"USAGE_TIME_BY_APP_WITH_TIME");
    }

    v32 = [NSString stringWithFormat:v31, v26];

    [v2 setText:v32];
    [v2 sizeToFit];
    [v2 frame];
    if (v33 > v24)
    {
      [v2 frame];
      v24 = v34;
    }

    v21 = (v21 + 1);
    selfCopy2 = self;
    v25 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
  }

  while (v23 != v21);
  v35 = v13 + v24 + 15.0 + 15.0;
  view = [(BatteryUIController *)self view];
  [view frame];
  v38 = v37;

  if (v35 > v38)
  {
    self->_batteryBreakdownShortString = 1;
  }
}

- (id)specifiers
{
  v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
  v4 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Creating the Specifiers for batteryUI", buf, 2u);
  }

  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v6)
  {
    goto LABEL_69;
  }

  v7 = +[NSMutableArray array];
  if (self->_chargingStatusViewCell)
  {
    setUpChargingStatusSpecifier = [(BatteryUIController *)self setUpChargingStatusSpecifier];
    [v7 addObject:setUpChargingStatusSpecifier];
    stateProvider = [(BatteryUIController *)self stateProvider];
    shouldShowOverrideCard = [stateProvider shouldShowOverrideCard];

    stateProvider2 = [(BatteryUIController *)self stateProvider];
    v12 = stateProvider2;
    if (shouldShowOverrideCard)
    {
      setUpCardSpecifierForLPM = -[BatteryUIController setUpOverrideCardSpecifierWith:](self, "setUpOverrideCardSpecifierWith:", [stateProvider2 chargingState]);

      if (setUpCardSpecifierForLPM)
      {
LABEL_7:
        [v7 addObject:setUpCardSpecifierForLPM];
      }
    }

    else
    {
      shouldShowLowPowerModeCard = [stateProvider2 shouldShowLowPowerModeCard];

      if (!shouldShowLowPowerModeCard)
      {
        goto LABEL_12;
      }

      setUpCardSpecifierForLPM = [(BatteryUIController *)self setUpCardSpecifierForLPM];
      if (setUpCardSpecifierForLPM)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
  }

  v15 = +[UIDevice currentDevice];
  sf_inRetailKioskMode = [v15 sf_inRetailKioskMode];

  if ((_os_feature_enabled_impl() & 1) == 0 && ((sf_inRetailKioskMode & 1) != 0 || (+[PLModelingUtilities isPercentageSupported](PLModelingUtilities, "isPercentageSupported") & 1) != 0 || +[PLModelingUtilities isLowPowerModeSupported]))
  {
    v64 = [PSSpecifier groupSpecifierWithID:0];
    [v7 addObject:?];
    if ((sf_inRetailKioskMode & 1) != 0 || +[PLModelingUtilities isPercentageSupported])
    {
      v18 = BatteryUILocalization(@"BATTERY_PERCENTAGE");
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setPreferenceValue:specifier:" get:"getBatteryPercentageMode:" detail:0 cell:6 edit:0];

      [v19 setProperty:@"BATTERY_PERCENTAGE" forKey:PSIDKey];
      [v19 setProperty:@"com.apple.springboard" forKey:PSDefaultsKey];
      [v19 setProperty:@"SBShowBatteryPercentage" forKey:PSKeyNameKey];
      [v19 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v20 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v19 setObject:v20 forKeyedSubscript:PSTableCellHeightKey];

      [v19 setIdentifier:@"BATTERY_PERCENTAGE_IDENTIFIER"];
      [v7 addObject:v19];
    }

    if (sf_inRetailKioskMode & 1 | ((+[PLModelingUtilities isLowPowerModeSupported]& 1) == 0))
    {
      v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
      v17 = v64;
    }

    else
    {
      v21 = BatteryUILocalization(@"BATTERY_SAVER_MODE");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setBatterySaverMode:withSpecifier:" get:"getBatterySaverMode:" detail:0 cell:6 edit:0];

      [v22 setIdentifier:@"LOW_POWER_MODE_IDENTIFIER"];
      [v22 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v23 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v22 setObject:v23 forKeyedSubscript:PSTableCellHeightKey];

      if (+[PLModelingUtilities isHeySiriAlwaysOn])
      {
        v24 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"FOOTNOTE_BATTERYSAVERMODE_HEYSIRI"];
        BatteryUILocalizationHeySiri(v24);
      }

      else
      {
        v24 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"FOOTNOTE_BATTERYSAVERMODE"];
        BatteryUILocalization(v24);
      }
      v25 = ;
      v3 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
      v17 = v64;
      [v64 setProperty:v25 forKey:PSFooterTextGroupKey];

      [v7 addObject:v22];
    }
  }

  else
  {
    v17 = 0;
  }

  if (([(BatteryUIController *)self isEduMode]| sf_inRetailKioskMode))
  {
    v26 = *&self->PSListController_opaque[v5];
    *&self->PSListController_opaque[v5] = v7;
    v27 = v7;

    v28 = *&self->PSListController_opaque[v5];
    goto LABEL_70;
  }

  if ([(BatteryUIController *)self batteryUIType]== 2 || [(BatteryUIController *)self batteryUIType]== 1)
  {
    v29 = [PSSpecifier groupSpecifierWithName:@"Battery Level"];
    [v7 addObject:v29];

    batteryGraphSpecifier = [(BatteryUIController *)self batteryGraphSpecifier];
    [v7 addObject:batteryGraphSpecifier];
  }

  coalescedBreakdownDictionary = [(BatteryUIController *)self coalescedBreakdownDictionary];

  if (coalescedBreakdownDictionary)
  {
    if (self->_batteryBreakDownNotAvailable)
    {
      v32 = [PSSpecifier groupSpecifierWithName:0];
      [v7 addObject:v32];
      get_log_handle_bui = [v3 + 752 get_log_handle_bui];
      if (os_log_type_enabled(get_log_handle_bui, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, get_log_handle_bui, OS_LOG_TYPE_INFO, "Battery breakdown not available at all.", buf, 2u);
      }

      v34 = objc_opt_new();
      ADClientAddValueForScalarKey();
      [v34 setObject:&__kCFBooleanFalse forKeyedSubscript:@"data"];
      v66 = v34;
      setUpUsageSummarySpecifier = v34;
      AnalyticsSendEventLazy();
      setUpBatterySpecifierWithInsufficientDataWithoutGroup = [(BatteryUIController *)self setUpBatterySpecifierWithInsufficientDataWithoutGroup];
      [v7 addObject:setUpBatterySpecifierWithInsufficientDataWithoutGroup];
    }

    else
    {
      if (!self->_usageSummaryViewTableViewController)
      {
        _suggestionEntries = [(BatteryUIController *)self _suggestionEntries];

        if (!_suggestionEntries)
        {
          goto LABEL_45;
        }
      }

      _suggestionEntries2 = [(BatteryUIController *)self _suggestionEntries];

      if (_suggestionEntries2)
      {
        v40 = [(BatteryUIController *)self addSuggestionsToSpecifiers:v7];

        v7 = v40;
      }

      if (!self->_usageSummaryViewTableViewController)
      {
        goto LABEL_45;
      }

      v41 = BatteryUILocalization(@"DAILY_USAGE_GROUP_TITLE");
      v32 = [PSSpecifier groupSpecifierWithID:@"DAILY_USAGE_GROUP" name:v41];

      [v7 addObject:v32];
      setUpUsageSummarySpecifier = [(BatteryUIController *)self setUpUsageSummarySpecifier];
      [v7 addObject:setUpUsageSummarySpecifier];
    }

LABEL_45:
    if (self->_internalViewController)
    {
      internalUsageSpecifiers = [(BatteryUIController *)self internalUsageSpecifiers];
      if (internalUsageSpecifiers)
      {
        [v7 addObjectsFromArray:internalUsageSpecifiers];
      }
    }

    goto LABEL_49;
  }

  setUpSpinnerSpecifiers = [(BatteryUIController *)self setUpSpinnerSpecifiers];
  [v7 addObjectsFromArray:setUpSpinnerSpecifiers];

  [(BatteryUIController *)self queryForBatteryBreakdown];
LABEL_49:
  if (_os_feature_enabled_impl())
  {
    v43 = [PSSpecifier groupSpecifierWithID:@"BATTERY_HEALTH_ID"];
    [v7 addObject:v43];
    setUpBatteryHealthGroup = [(BatteryUIController *)self setUpBatteryHealthGroup];
    if (setUpBatteryHealthGroup)
    {
      [v7 addObjectsFromArray:setUpBatteryHealthGroup];
    }

    if ((+[PLModelingUtilities isPercentageSupported](PLModelingUtilities, "isPercentageSupported") & 1) != 0 || +[PLModelingUtilities isLowPowerModeSupported])
    {
      if (+[_OSIBLMState isIBLMSupported](_OSIBLMState, "isIBLMSupported") && +[PLModelingUtilities isLowPowerModeSupported])
      {
        [(BatteryUIController *)self setUpPowerModeSpecifier];
        v45 = setUpBatteryHealthGroup;
        v47 = v46 = v43;
        [v7 addObject:v47];

        v43 = v46;
        setUpBatteryHealthGroup = v45;
      }

      if (+[PLModelingUtilities isPercentageSupported])
      {
        v62 = v43;
        BatteryUILocalization(@"BATTERY_PERCENTAGE");
        v49 = v48 = v17;
        v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:self set:"setPreferenceValue:specifier:" get:"getBatteryPercentageMode:" detail:0 cell:6 edit:0];

        v17 = v48;
        [v50 setProperty:@"BATTERY_PERCENTAGE" forKey:PSIDKey];
        [v50 setProperty:@"com.apple.springboard" forKey:PSDefaultsKey];
        [v50 setProperty:@"SBShowBatteryPercentage" forKey:PSKeyNameKey];
        [v50 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
        v51 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
        [v50 setObject:v51 forKeyedSubscript:PSTableCellHeightKey];

        [v50 setIdentifier:@"BATTERY_PERCENTAGE_IDENTIFIER"];
        [v7 addObject:v50];

        v43 = v62;
      }

      if ((+[_OSIBLMState isIBLMSupported](_OSIBLMState, "isIBLMSupported") & 1) == 0 && +[PLModelingUtilities isLowPowerModeSupported])
      {
        v63 = v43;
        v65 = v17;
        v52 = BatteryUILocalization(@"BATTERY_SAVER_MODE");
        v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:"setBatterySaverMode:withSpecifier:" get:"getBatterySaverMode:" detail:0 cell:6 edit:0];

        [v53 setIdentifier:@"LOW_POWER_MODE_IDENTIFIER"];
        [v53 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
        v54 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
        [v53 setObject:v54 forKeyedSubscript:PSTableCellHeightKey];

        [v7 addObject:v53];
        v55 = +[UIDevice currentDevice];
        sf_inRetailKioskMode2 = [v55 sf_inRetailKioskMode];

        if ((+[_OSIBLMState isIBLMSupported](_OSIBLMState, "isIBLMSupported") & 1) == 0 && !(sf_inRetailKioskMode2 & 1 | ((+[PLModelingUtilities isLowPowerModeSupported]& 1) == 0)))
        {
          v57 = +[PLBatteryUIUtilities localizedLPMFooterString];
          [v63 setProperty:v57 forKey:PSFooterTextGroupKey];
        }

        v43 = v63;
        v17 = v65;
      }
    }
  }

  v58 = *&self->PSListController_opaque[v5];
  *&self->PSListController_opaque[v5] = v7;
  v59 = v7;

  get_log_handle_bui2 = [v3 + 752 get_log_handle_bui];

  if (os_log_type_enabled(get_log_handle_bui2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, get_log_handle_bui2, OS_LOG_TYPE_INFO, "Specifiers created for batteryUI", buf, 2u);
  }

  v6 = *&self->PSListController_opaque[v5];
LABEL_69:
  v28 = v6;
LABEL_70:

  return v28;
}

- (id)internalUsageSpecifiers
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "setting up internal specifiers", buf, 2u);
  }

  if (+[PLModelingUtilities internalBuild]&& _os_feature_enabled_impl())
  {
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"InternalOnly" name:@"Internal Only"];
    [v4 addObject:v5];
    v6 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v4 addObject:v6];
    [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    [v6 setObject:self->_internalViewController forKeyedSubscript:@"SwiftUIContainerCellViewController"];
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSEnabledKey];
    v7 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:v7];

    [v6 setIdentifier:@"INTERNAL_USAGE_INFO"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = BatteryUIController;
  [(BatteryUIController *)&v15 viewDidLoad];
  if (+[BatteryUsageRadarComposeViewController hasRadarCompose])
  {
    v3 = [UIBarButtonItem alloc];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [UIImage imageNamed:@"radar.png" inBundle:v4];
    v6 = [v3 initWithImage:v5 style:0 target:self action:"reportIssue"];
    navigationItem = [(BatteryUIController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];
  }

  if (_os_feature_enabled_impl() && +[PLModelingUtilities internalBuild])
  {
    v8 = [UIBarButtonItem alloc];
    v9 = [UIImage systemImageNamed:@"ant"];
    v10 = [v8 initWithImage:v9 style:0 target:self action:"provideFeedback"];
    navigationItem2 = [(BatteryUIController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v10];
  }

  table = [(BatteryUIController *)self table];
  v13 = objc_opt_class();
  v14 = +[SwiftUIContainerCell cellReuseIdentifier];
  [table registerClass:v13 forCellReuseIdentifier:v14];

  [(BatteryUIController *)self logViewDidLoadEvents];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = BatteryUIController;
  changeCopy = change;
  [(BatteryUIController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(BatteryUIController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(BatteryUIController *)self setTableCellHeights:0];
    [(BatteryUIController *)self setTableCellHeightEstimated:0];
  }
}

- (void)handleApplicationWillEnterForeground
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastBatteryBreakdownQueryTime = [(BatteryUIController *)self lastBatteryBreakdownQueryTime];
    v16 = 138412290;
    v17 = *&lastBatteryBreakdownQueryTime;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "lastBatteryBreakdownQueryTime=%@", &v16, 0xCu);
  }

  lastBatteryBreakdownQueryTime2 = [(BatteryUIController *)self lastBatteryBreakdownQueryTime];

  if (lastBatteryBreakdownQueryTime2)
  {
    v6 = +[NSDate now];
    lastBatteryBreakdownQueryTime3 = [(BatteryUIController *)self lastBatteryBreakdownQueryTime];
    [v6 timeIntervalSinceDate:lastBatteryBreakdownQueryTime3];
    v9 = v8;

    [(BatteryUIController *)self getRequeryTimeThreshold];
    v11 = v10;
    v12 = v9 >= v10;
    v13 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "requeryTimeThreshold=%f", &v16, 0xCu);
    }

    v14 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "timeIntervalSinceLastQuery=%f", &v16, 0xCu);
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 67109120;
    LODWORD(v17) = v12;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "sufficientTimeElapsed=%d", &v16, 8u);
  }

  if (v12)
  {
    [(BatteryUIController *)self reloadUI];
  }
}

- (double)getRequeryTimeThreshold
{
  v2 = [PLBatteryUIUtilities getDefaultValueForKey:@"kPLBUIRequeryThresholdKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (void)reportIssue
{
  v3 = [BatteryUsageRadarComposeViewController alloc];
  currentDictionary = [(BatteryUIController *)self currentDictionary];
  v5 = [(BatteryUsageRadarComposeViewController *)v3 initWithParentView:self andDictionary:currentDictionary];
  [(BatteryUIController *)self setRadarController:v5];

  radarController = [(BatteryUIController *)self radarController];
  [radarController showRadarComposeAlert];
}

- (void)provideFeedback
{
  v3 = [NSURL URLWithString:@"tap-to-radar://new?Keywords=2000630&ComponentID=485067"];
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:v3];
}

- (id)batteryGraphSpecifier
{
  batteryGraphSpecifier = self->_batteryGraphSpecifier;
  if (!batteryGraphSpecifier)
  {
    v4 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v5 = self->_batteryGraphSpecifier;
    self->_batteryGraphSpecifier = v4;

    [(PSSpecifier *)self->_batteryGraphSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    v6 = self->_batteryGraphSpecifier;
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[PSGraphViewTableCell graphHeight]);
    [(PSSpecifier *)v6 setProperty:v7 forKey:PSTableCellHeightKey];

    batteryGraphSpecifier = self->_batteryGraphSpecifier;
  }

  batteryUIQueryRangeKey = [(BatteryUIController *)self batteryUIQueryRangeKey];
  [(PSSpecifier *)batteryGraphSpecifier setProperty:batteryUIQueryRangeKey forKey:@"DisplayRange"];

  v9 = self->_batteryGraphSpecifier;

  return v9;
}

- (id)getChargeCycles:(id)cycles
{
  cyclesCopy = cycles;
  v5 = self->_batteryUIQueryRange == 0;
  battArray = self->_battArray;
  if (!battArray)
  {
    v7 = +[BatteryUsageQueryModule sharedModule];
    [v7 setGraphNames:&off_174D10];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_36A70;
    v36[3] = &unk_1638C0;
    v36[4] = self;
    [v7 populateBatteryModelsWithCompletion:v36];

    battArray = self->_battArray;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = battArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = dbl_124590[v5];
    v13 = *v33;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (v11)
        {
          v18 = [v11 objectAtIndexedSubscript:0];
          v19 = [v17 objectAtIndexedSubscript:0];
          [v18 timeIntervalSinceDate:v19];
          v21 = v20;

          if (v21 <= v12)
          {
            v22 = [v17 objectAtIndexedSubscript:1];
            [v22 floatValue];
            v24 = v23 - v15;

            if (v24 > 0.0)
            {
              v14 = v14 + v24;
            }

            v25 = [v17 objectAtIndexedSubscript:1];
            [v25 floatValue];
            v15 = v26;
          }
        }

        else
        {
          v27 = [*(*(&v32 + 1) + 8 * i) objectAtIndexedSubscript:1];
          [v27 floatValue];
          v15 = v28;

          v11 = v17;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);

    if (v14 > 1.0)
    {
      [NSString stringWithFormat:@"%.00f%% of Battery", v14];
      goto LABEL_20;
    }
  }

  else
  {

    v11 = 0;
  }

  [NSString stringWithFormat:@"-- %% of Battery", v31];
  v29 = LABEL_20:;

  return v29;
}

- (id)getActiveTime:(id)time
{
  currentDictionary = [(BatteryUIController *)self currentDictionary];
  batteryUIQueryRangeKey = [(BatteryUIController *)self batteryUIQueryRangeKey];
  v6 = [currentDictionary objectForKeyedSubscript:batteryUIQueryRangeKey];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

  v8 = [(BatteryUIController *)self formatUsageStringInMin:v7];

  return v8;
}

- (id)getBackgroundActiveTime:(id)time
{
  currentDictionary = [(BatteryUIController *)self currentDictionary];
  batteryUIQueryRangeKey = [(BatteryUIController *)self batteryUIQueryRangeKey];
  v6 = [currentDictionary objectForKeyedSubscript:batteryUIQueryRangeKey];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

  v8 = [(BatteryUIController *)self formatUsageStringInMin:v7];

  return v8;
}

- (id)setUpInternalSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier preferenceSpecifierNamed:@"Total Drain" target:self set:0 get:"getChargeCycles:" detail:0 cell:4 edit:0];
  [v3 addObject:v4];

  v5 = [PSSpecifier preferenceSpecifierNamed:@"Active Usage" target:self set:0 get:"getActiveTime:" detail:0 cell:4 edit:0];
  [v3 addObject:v5];

  v6 = [PSSpecifier preferenceSpecifierNamed:@"Background Usage" target:self set:0 get:"getBackgroundActiveTime:" detail:0 cell:4 edit:0];
  [v3 addObject:v6];

  return v3;
}

- (id)setUpUsageSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier preferenceSpecifierNamed:@"Screen On Usage" target:self set:0 get:"getActiveTime:" detail:0 cell:4 edit:0];
  [v3 addObject:v4];

  return v3;
}

- (id)setUpInternalAppSpecifiers
{
  v3 = +[NSMutableArray array];
  showRootNodesInInternal = [(BatteryUIController *)self showRootNodesInInternal];
  batteryUIQueryType = [(BatteryUIController *)self batteryUIQueryType];
  if (showRootNodesInInternal)
  {
    if (batteryUIQueryType == 2)
    {
      v6 = @"Show Everything";
      goto LABEL_9;
    }

    v7 = [(BatteryUIController *)self batteryUIQueryType]== 3;
  }

  else
  {
    v7 = batteryUIQueryType == 2;
  }

  if (v7)
  {
    v6 = @"Hide Daemons";
  }

  else
  {
    v6 = @"Show Daemons";
  }

LABEL_9:
  v8 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v8 setButtonAction:"reloadOtherTypeUI:"];
  v9 = [PSSpecifier preferenceSpecifierNamed:@"Save For Demo" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v9 setButtonAction:"getDemoName:"];
  v10 = [PSSpecifier groupSpecifierWithName:0];
  [v3 addObject:v10];
  [v3 addObject:v8];
  if ([(BatteryUIController *)self showSaveDemoButtonInInternal])
  {
    [v3 addObject:v9];
  }

  return v3;
}

- (void)reloadUI
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(BatteryUIController *)self setCurrentDictionary:0];
  [(BatteryUIController *)self setCurrentGraphDictionary:0];
  [(BatteryUIController *)self setCurrentLastChargeDictionary:0];
  [(BatteryUIController *)self setCurrentPausedChargingDictionary:0];
  [(BatteryUIController *)self setCoalescedBreakdownDictionary:0];
  [(BatteryUIController *)self setUsageSummaryViewTableViewController:0];
  [(BatteryUIController *)self setInternalViewController:0];
  batteryGraphSpecifier = self->_batteryGraphSpecifier;
  self->_batteryGraphSpecifier = 0;

  [(BatteryUIController *)self reloadSpecifiers];
}

- (void)reloadOtherTypeUI:(id)i
{
  iCopy = i;
  showRootNodesInInternal = [(BatteryUIController *)self showRootNodesInInternal];
  name = [iCopy name];
  v6 = [name isEqualToString:@"Show Daemons"];

  if (showRootNodesInInternal)
  {
    if (v6)
    {
      v7 = 2;
      goto LABEL_9;
    }

    name2 = [iCopy name];
    v11 = [name2 isEqualToString:@"Show Everything"];

    v8 = v11 == 0;
    v9 = 3;
  }

  else
  {
    v8 = v6 == 0;
    v9 = 2;
  }

  if (v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

LABEL_9:
  [(BatteryUIController *)self setBatteryUIQueryType:v7];
  [(BatteryUIController *)self setBUI_MODE:[(BatteryUIController *)self batteryUIQueryType]];
  [(BatteryUIController *)self reloadUI];
}

- (BOOL)showRootNodesInInternal
{
  if (qword_187BB8 != -1)
  {
    sub_1143AC();
  }

  v3 = qword_187BC0;
  if (qword_187BC0)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (BOOL)showSaveDemoButtonInInternal
{
  if (qword_187BC8 != -1)
  {
    sub_1143C0();
  }

  v3 = qword_187BD0;
  if (qword_187BD0)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (int)BUI_MODE
{
  +[BatteryUIResourceClass containerPath];
  v3 = _CFPreferencesCopyValueWithContainer();
  v4 = v3;
  if (v3)
  {
    -[BatteryUIController setBatteryUIQueryType:](self, "setBatteryUIQueryType:", [v3 intValue]);
  }

  batteryUIQueryType = [(BatteryUIController *)self batteryUIQueryType];

  return batteryUIQueryType;
}

- (BOOL)shouldAutoCycle
{
  +[BatteryUIResourceClass containerPath];
  v2 = _CFPreferencesCopyValueWithContainer();
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isInBUIDemoMode
{
  if (qword_187BD8 != -1)
  {
    sub_1143D4();
  }

  return qword_187BE0 != 0;
}

- (BOOL)shouldDisplayBugSignatures
{
  if (qword_187BE8 != -1)
  {
    sub_1143E8();
  }

  return qword_187BF0 != 0;
}

- (void)didTappedBar:(id)bar
{
  barCopy = bar;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    intValue = [barCopy intValue];
    v6 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v31 = intValue;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "=============> Tapped event with i: %d", buf, 8u);
    }

    v7 = &__kCFBooleanFalse;
    if (intValue != -1)
    {
      currentDictionary = [(BatteryUIController *)self currentDictionary];
      v9 = [PLBatteryUIUtilities getNumOfBreakdownEntriesAtTapIndex:intValue fromBreakdownData:currentDictionary queryRange:self->_batteryUIQueryRange];

      currentGraphDictionary = [(BatteryUIController *)self currentGraphDictionary];
      v11 = [PLBatteryUIUtilities getScreenOnOffSecsAtTapIndex:intValue fromGraphData:currentGraphDictionary queryRange:self->_batteryUIQueryRange];

      v12 = [v11 objectAtIndexedSubscript:0];
      [v12 doubleValue];
      v14 = v13;

      v15 = [v11 objectAtIndexedSubscript:1];
      [v15 doubleValue];
      v17 = v16;

      currentGraphDictionary2 = [(BatteryUIController *)self currentGraphDictionary];
      v19 = [PLBatteryUIUtilities hasBatteryLevelDataAtTapIndex:intValue fromGraphData:currentGraphDictionary2 queryRange:self->_batteryUIQueryRange];

      v20 = [PLBatteryUIUtilities isTappedIntervalCurrentBucket:intValue withQueryRange:self->_batteryUIQueryRange andEndTime:self->_endTime];
      v21 = v14 > 0.0;
      if (v17 > 0.0)
      {
        v21 = 1;
      }

      if (v9 > 0)
      {
        v21 = 1;
      }

      v22 = v21 | v19 | v20;
      if (v9 > 0)
      {
        v7 = &__kCFBooleanTrue;
      }

      if ((v22 & 1) == 0)
      {
        LODWORD(intValue) = -1;
      }
    }

    tappedIndex = self->_tappedIndex;
    if (tappedIndex != -1 || intValue != -1)
    {
      if (tappedIndex == intValue)
      {
        v25 = -1;
      }

      else
      {
        v25 = intValue;
      }

      self->_tappedIndex = v25;
      self->_batteryUIQueryRange;
      ADClientAddValueForScalarKey();
      v26 = objc_opt_new();
      v27 = v26;
      if (self->_tappedIndex != -1)
      {
        [v26 setObject:v7 forKeyedSubscript:@"data"];
      }

      if (self->_batteryUIQueryRange)
      {
        v28 = @"xDay";
      }

      else
      {
        v28 = @"24hr";
      }

      [v27 setObject:v28 forKeyedSubscript:@"duration"];
      v29 = v27;
      AnalyticsSendEventLazy();
      [(BatteryUIController *)self rebuildList];
    }
  }
}

- (void)didPushButton:(id)button
{
  self->_buttonPressed = 1;
  [(BatteryUIController *)self stopRepeatingTimer];
  self->_iconDisplayType = (self->_iconDisplayType & 1) == 0;
  ADClientAddValueForScalarKey();
  v4 = objc_opt_new();
  [v4 setObject:@"breakdown" forKeyedSubscript:@"button"];
  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
  [(BatteryUIController *)self rebuildList];
}

- (void)didPushBatteryButton:(id)button
{
  self->_iconDisplayType = (self->_iconDisplayType & 1) == 0;
  ADClientAddValueForScalarKey();
  v4 = objc_opt_new();
  [v4 setObject:@"toggleButton" forKeyedSubscript:@"button"];
  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
  [(BatteryUIController *)self rebuildList];
}

- (void)startRepeatingTimer
{
  [(NSTimer *)self->_repeatingTimer invalidate];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"cycleNext:" selector:0 userInfo:1 repeats:7.0];
  repeatingTimer = self->_repeatingTimer;
  self->_repeatingTimer = v3;

  _objc_release_x1();
}

- (void)stopRepeatingTimer
{
  [(NSTimer *)self->_repeatingTimer invalidate];
  repeatingTimer = self->_repeatingTimer;
  self->_repeatingTimer = 0;
}

- (BOOL)isEduMode
{
  if (qword_187C00 != -1)
  {
    sub_1143FC();
  }

  return byte_187BF8;
}

- (void)logToPowerlogRbattx
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.Rbattx", 0, 0, 4u);
}

- (void)logToPowerlogRbattx0
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.Rbattx0", 0, 0, 4u);
}

- (void)logToPowerlogRbattxy
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.Rbattxy", 0, 0, 4u);
}

- (void)handleBiomeDonationForBUIVisit
{
  v4 = +[BMStreams discoverabilitySignal];
  source = [v4 source];
  v3 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.batteryui.visit" bundleID:@"com.apple.batteryui" context:0];
  [source sendEvent:v3];
}

- (void)logViewDidLoadEvents
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_37F4C;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)inDemoMode
{
  specifier = [(BatteryUIController *)self specifier];
  v3 = [specifier propertyForKey:@"manualFIle"];
  v4 = v3 != 0;

  return v4;
}

- (void)getDemoName:(id)name
{
  v4 = [[UIAlertView alloc] initWithTitle:@"Demo File" message:@"It can take up to a minute to generate a new Demo. Please enter a name for this Demo if you would like to continue:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:{@"OK", 0}];
  [v4 setAlertViewStyle:2];
  v3 = [v4 textFieldAtIndex:0];
  [v3 setPlaceholder:@"Default"];
  [v4 show];
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  alertViewStyle = [viewCopy alertViewStyle];
  if (index == 1 && alertViewStyle == &dword_0 + 2)
  {
    v7 = [viewCopy textFieldAtIndex:0];
    text = [v7 text];
    [(BatteryUIController *)self savePList:text];
  }
}

- (void)savePList:(id)list
{
  listCopy = list;
  v5 = +[NSFileManager defaultManager];
  v18 = 0;
  if (([v5 fileExistsAtPath:@"Library/Logs/BatteryUIDemos" isDirectory:&v18] & 1) == 0)
  {
    v17 = 0;
    v7 = [v5 createDirectoryAtPath:@"Library/Logs/BatteryUIDemos" withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;
    v6 = v8;
    if (v7)
    {
      goto LABEL_5;
    }

    NSLog(@"Can't create Directory %@: %@", @"Library/Logs/BatteryUIDemos", v8);

LABEL_8:
    v12 = [[UIAlertView alloc] initWithTitle:0 message:@"Failed to create directory..." delegate:0 cancelButtonTitle:@"OK" otherButtonTitles:0];
    [v12 show];
    goto LABEL_9;
  }

  if ((v18 & 1) == 0)
  {
    NSLog(@"%@ is not a directory", @"Library/Logs/BatteryUIDemos");
    goto LABEL_8;
  }

  v6 = 0;
LABEL_5:

  view = [(BatteryUIController *)self view];
  activityIndicator = [(BatteryUIController *)self activityIndicator];
  [view addSubview:activityIndicator];

  activityIndicator2 = [(BatteryUIController *)self activityIndicator];
  [activityIndicator2 startAnimating];

  v12 = +[BatteryUsageQueryModule sharedModule];
  [v12 setType:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_428EC;
  v13[3] = &unk_165200;
  v16 = 2;
  v14 = listCopy;
  selfCopy = self;
  [v12 populateBatteryUsageWithCompletion:v13];

LABEL_9:
}

@end