@interface ATXHeuristicJSEnv
+ (id)defaultHeuristicBundlePath;
- (ATXHeuristicJSEnv)init;
- (ATXHeuristicJSEnv)initWithHeuristicBundle:(id)bundle dataProvider:(id)provider;
- (BOOL)BOOLByEvaluatingJavaScript:(id)script;
- (BOOL)_BOOLForMGQuery:(int)query;
- (BOOL)_isEventAtOneWithTimeIntervelOrDate:(id)date usesTwelveHourClock:(BOOL)clock;
- (BOOL)_isFocusModeActiveFromDataSource;
- (double)doubleByEvaluatingJavaScript:(id)script;
- (id)_allHandlesFromDataSourceWithContact:(id)contact;
- (id)_allHeuristicClassNames;
- (id)_allHeuristicNames;
- (id)_batteryInformationFromDataSource;
- (id)_bestAppSuggestionFromDataSource;
- (id)_bestContactHandleFromDataSourceWithContact:(id)contact serviceString:(id)string;
- (id)_bestTimeToInteractFromDataSourceWithContact:(id)contact;
- (id)_birthdayEventsFromDataSource;
- (id)_calendarEventsFromDataSourceBetweenStartDate:(id)date endDate:(id)endDate;
- (id)_cityNameFromAirportCode:(id)code;
- (id)_clipboardContentsFromDataSource;
- (id)_contactsDataSourceWithType:(id)type value:(id)value identifiers:(id)identifiers;
- (id)_currentLocationFromDataSource;
- (id)_dateFromTimeIntervalOrDate:(id)date;
- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date;
- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS;
- (id)_eventPassesFromDataSourceWithStyle:(id)style;
- (id)_extraordinaryEventsFromDataSourceWithProminentFeature:(id)feature;
- (id)_favoriteContactsFromDataSourceWithExistingContacts:(id)contacts;
- (id)_fetchWidgetMetadataForAppBundleIds:(id)ids;
- (id)_functionNameForMGQuery:(int)query;
- (id)_getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to;
- (id)_holidayEventsFromDataSourceBetweenStartDate:(id)date endDate:(id)endDate;
- (id)_latestFlightStatus:(id)status;
- (id)_makeIntentDescriptionWithCustomTypeName:(id)name parameters:(id)parameters;
- (id)_modeCorrelatedAppsInCurrentMode;
- (id)_nlEventsFromDataSource;
- (id)_peopleSuggestionsFromDataSource;
- (id)_predictedBedTime;
- (id)_scheduledBedTime;
- (id)_timeIntervalSinceUserWakeup;
- (id)_unreadMessagesWithLimit:(int64_t)limit;
- (id)_userAppPreferenceFromDataSourceWithIntentName:(id)name parameterCombination:(id)combination;
- (id)_usualAlarmTimeOfDayDataSource;
- (id)_vipsFromDataSource;
- (id)_visibleCalendarsFromDataSource;
- (id)actionsAndExpirersForHeuristics:(id)heuristics;
- (id)actionsAndExpirersForHeuristicsExcept:(id)except;
- (id)executeHeuristics:(id)heuristics;
- (id)generateAllHeuristicNames;
- (id)heuristicResults;
- (id)objectByEvaluatingJavaScript:(id)script;
- (id)resultsForInformationHeuristics:(id)heuristics;
- (id)stringByEvaluatingJavaScript:(id)script;
- (int)intByEvaluatingJavaScript:(id)script;
- (void)_addAction:(id)action withCriteria:(id)criteria;
- (void)_expireCacheAfterDarwinNotification:(id)notification;
- (void)_expireCacheAfterLocalNotification:(id)notification;
- (void)_expireCacheAfterTime:(double)time;
- (void)_expireCacheAtTime:(double)time;
- (void)_injectScript;
- (void)_refreshAfterDarwinNotification:(id)notification coalescingInterval:(double)interval;
- (void)_refreshAfterLocalNotification:(id)notification;
- (void)_refreshAfterTimeInterval:(double)interval;
- (void)_refreshAfterUserWakeUp;
- (void)_refreshAtTimestamp:(double)timestamp;
- (void)_refreshOnAirplaneModeToggle;
- (void)_refreshWithInferredModeStream;
- (void)_refreshWithUserFocusComputedModeStream;
- (void)_registerDataSources;
- (void)_setUpInterpreter;
- (void)dealloc;
- (void)mockClipboardContent:(id)content createdAt:(id)at fromBundleId:(id)id;
- (void)mockDataSource:(id)source returning:(id)returning;
- (void)mockEventTravelTimeWithDuration:(double)duration;
- (void)mockMidnightAndGetHolidayEventsToday:(double)today;
- (void)mockMidnightAndGetHolidayEventsTomorrow:(double)tomorrow;
- (void)mockUsesTwelveHourClock:(BOOL)clock;
- (void)setNow:(id)now;
- (void)trackActionsAndExpirersForHeuristicName:(id)name mutableResult:(id)result performingBlock:(id)block;
- (void)trackCardsAndRefreshTriggersForInformationHeuristicName:(id)name mutableResults:(id)results performingBlock:(id)block;
@end

@implementation ATXHeuristicJSEnv

+ (id)defaultHeuristicBundlePath
{
  v2 = [ATXAssets2 pathForResource:@"Heuristics" ofType:&stru_100025D20 isDirectory:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = sub_100001940();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100016C44();
    }
  }

  return v3;
}

- (ATXHeuristicJSEnv)init
{
  v3 = +[ATXHeuristicJSEnv defaultHeuristicBundlePath];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [NSBundle bundleWithPath:v3];
  if (!v4)
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(ATXHeuristicJSEnv *)self initWithHeuristicBundle:v4 dataProvider:0];
  selfCopy = self;
LABEL_6:
  v6 = selfCopy;

  return v6;
}

- (ATXHeuristicJSEnv)initWithHeuristicBundle:(id)bundle dataProvider:(id)provider
{
  bundleCopy = bundle;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = ATXHeuristicJSEnv;
  v9 = [(ATXHeuristicJSEnv *)&v26 init];
  if (v9)
  {
    v10 = sub_100001830();
    v9->_signpost = os_signpost_id_generate(v10);

    v11 = sub_100001830();
    v12 = v11;
    signpost = v9->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v25[0] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "ATXHeuristicJSEnv", " enableTelemetry=YES ", v25, 2u);
    }

    objc_storeStrong(&v9->_heuristicsBundle, bundle);
    v14 = [[ATXHeuristicDevice alloc] initWithLocationManager:0];
    device = v9->_device;
    v9->_device = v14;

    if (providerCopy)
    {
      v16 = providerCopy;
      provider = v9->_provider;
      v9->_provider = v16;
    }

    else
    {
      v18 = [[ATXHeuristicDataSourcesServer alloc] initWithDevice:v9->_device];
      dataSourcesServer = v9->_dataSourcesServer;
      v9->_dataSourcesServer = v18;

      v20 = [ATXHeuristicDataSourcesClient alloc];
      provider = [(ATXHeuristicDataSourcesServer *)v9->_dataSourcesServer listenerEndpoint];
      v21 = [(ATXHeuristicDataSourcesClient *)v20 initWithListenerEndpoint:provider];
      v22 = v9->_provider;
      v9->_provider = v21;
    }

    *&v9->_mgQueryResults[4] = -1;
    *v9->_mgQueryResults = -1;
    [(ATXHeuristicJSEnv *)v9 _setUpInterpreter];
    v23 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v3 = sub_100001830();
  v4 = v3;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, signpost, "ATXHeuristicJSEnv", " enableTelemetry=YES ", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ATXHeuristicJSEnv;
  [(ATXHeuristicJSEnv *)&v6 dealloc];
}

- (void)_setUpInterpreter
{
  v3 = objc_opt_new();
  [(ATXHeuristicJSEnv *)self setNow:v3];

  v4 = objc_alloc_init(JSVirtualMachine);
  virtualMachine = self->_virtualMachine;
  self->_virtualMachine = v4;

  v6 = [[JSContext alloc] initWithVirtualMachine:self->_virtualMachine];
  jsContext = self->_jsContext;
  self->_jsContext = v6;

  [(JSContext *)self->_jsContext setObject:&off_1000280B8 forKeyedSubscript:@"ATXSuggestionLayoutOption1Row1Column"];
  [(JSContext *)self->_jsContext setObject:&off_1000280D0 forKeyedSubscript:@"ATXSuggestionLayoutOption1Row2Columns"];
  [(JSContext *)self->_jsContext setObject:&off_1000280E8 forKeyedSubscript:@"ATXSuggestionLayoutOption2Rows2Columns"];
  [(JSContext *)self->_jsContext setObject:&off_100028100 forKeyedSubscript:@"ATXSuggestionLayoutOption2Rows4Columns"];
  [(JSContext *)self->_jsContext setObject:&off_100028118 forKeyedSubscript:@"ATXSuggestionLayoutOption1Row4Columns"];
  [(JSContext *)self->_jsContext setObject:&off_100028130 forKeyedSubscript:@"ATXSuggestionLayoutOption4Rows4Columns"];
  [(JSContext *)self->_jsContext setObject:&off_100028148 forKeyedSubscript:@"ATXSuggestionLayoutOption4Rows8Columns"];
  [(JSContext *)self->_jsContext setObject:ATXHomeScreenPageConfigUpdateDarwinNotificationName forKeyedSubscript:@"ATXHomeScreenPageConfigUpdateDarwinNotificationName"];
  [(JSContext *)self->_jsContext setObject:ATXTodayPageConfigUpdateDarwinNotificationName forKeyedSubscript:@"ATXTodayPageConfigUpdateDarwinNotificationName"];
  [(JSContext *)self->_jsContext setObject:@"SignificantTimeChangeNotification" forKeyedSubscript:@"SignificantTimeChangeNotification"];
  [(JSContext *)self->_jsContext setObject:&off_100028160 forKeyedSubscript:@"PPEventRankerProminentFeatureUnusualStartTime"];
  [(JSContext *)self->_jsContext setObject:NSUserActivityTypeBrowsingWeb forKeyedSubscript:@"NSUserActivityTypeBrowsingWeb"];
  [(JSContext *)self->_jsContext setObject:ATXLocalPasteboardDidChangeNotification forKeyedSubscript:@"ATXLocalPasteboardDidChangeNotification"];
  v8 = [NSString stringWithUTF8String:_UABestAppSuggestionChangedNotification];
  [(JSContext *)self->_jsContext setObject:v8 forKeyedSubscript:@"UABestAppSuggestionChangedNotification"];

  [(JSContext *)self->_jsContext setObject:@"com.apple.CallHistoryPluginHelper.launchnotification" forKeyedSubscript:@"CallHistoryChangedNotification"];
  [(JSContext *)self->_jsContext setObject:MTAlarmManagerAlarmsChanged forKeyedSubscript:@"MTAlarmManagerAlarmsChanged"];
  [(JSContext *)self->_jsContext setObject:EKEventStoreChangedNotification forKeyedSubscript:@"EKEventStoreChangedNotification"];
  [(JSContext *)self->_jsContext setObject:@"ATXTravelTimeUpdated" forKeyedSubscript:@"ATXEventTravelTimeUpdated"];
  [(JSContext *)self->_jsContext setObject:ATXDNDStateChanged forKeyedSubscript:@"ATXDNDStateChanged"];
  [(JSContext *)self->_jsContext setObject:ATXPassLibraryChanged forKeyedSubscript:@"ATXPassLibraryChanged"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.LaunchServices.applicationUnregistered" forKeyedSubscript:@"LSApplicationUnregistered"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.system.accpowersources.timeremaining" forKeyedSubscript:@"kIOPSAccNotifyTimeRemaining"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.system.accpowersources.attach" forKeyedSubscript:@"kIOPSAccNotifyAttach"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.system.accpowersources.source" forKeyedSubscript:@"kIOPSAccNotifyPowerSource"];
  [(JSContext *)self->_jsContext setObject:&off_100028178 forKeyedSubscript:@"RUNNING_TESTS"];
  [(JSContext *)self->_jsContext setObject:CNFavoritesChangedExternallyNotification forKeyedSubscript:@"CNFavoritesChangedExternallyNotification"];
  objc_initWeak(location, self);
  v165[0] = _NSConcreteStackBlock;
  v165[1] = 3221225472;
  v165[2] = sub_100009368;
  v165[3] = &unk_100024D48;
  objc_copyWeak(&v166, location);
  v9 = objc_retainBlock(v165);
  [(JSContext *)self->_jsContext setObject:v9 forKeyedSubscript:@"expireAfterTime"];

  v163[0] = _NSConcreteStackBlock;
  v163[1] = 3221225472;
  v163[2] = sub_1000093B8;
  v163[3] = &unk_100024D48;
  objc_copyWeak(&v164, location);
  v10 = objc_retainBlock(v163);
  [(JSContext *)self->_jsContext setObject:v10 forKeyedSubscript:@"expireAtTime"];

  v161[0] = _NSConcreteStackBlock;
  v161[1] = 3221225472;
  v161[2] = sub_100009408;
  v161[3] = &unk_100024D70;
  objc_copyWeak(&v162, location);
  v11 = objc_retainBlock(v161);
  [(JSContext *)self->_jsContext setObject:v11 forKeyedSubscript:@"expireAfterLocalNotification"];

  v159[0] = _NSConcreteStackBlock;
  v159[1] = 3221225472;
  v159[2] = sub_100009524;
  v159[3] = &unk_100024D70;
  objc_copyWeak(&v160, location);
  v12 = objc_retainBlock(v159);
  [(JSContext *)self->_jsContext setObject:v12 forKeyedSubscript:@"expireAfterDarwinNotification"];

  v157[0] = _NSConcreteStackBlock;
  v157[1] = 3221225472;
  v157[2] = sub_100009594;
  v157[3] = &unk_100024D98;
  objc_copyWeak(&v158, location);
  v13 = objc_retainBlock(v157);
  [(JSContext *)self->_jsContext setObject:v13 forKeyedSubscript:@"recordError"];

  [(JSContext *)self->_jsContext setObject:&stru_100024DD8 forKeyedSubscript:@"appNameFromBundleID"];
  [(JSContext *)self->_jsContext setObject:&stru_100024E18 forKeyedSubscript:@"dataDetectors"];
  [(JSContext *)self->_jsContext setObject:&stru_100024E58 forKeyedSubscript:@"localizedTimeForAlarm"];
  v155[0] = _NSConcreteStackBlock;
  v155[1] = 3221225472;
  v155[2] = sub_100009728;
  v155[3] = &unk_100024E80;
  objc_copyWeak(&v156, location);
  v14 = objc_retainBlock(v155);
  [(JSContext *)self->_jsContext setObject:v14 forKeyedSubscript:@"localizedFormat"];

  v153[0] = _NSConcreteStackBlock;
  v153[1] = 3221225472;
  v153[2] = sub_1000097A4;
  v153[3] = &unk_100024EA8;
  objc_copyWeak(&v154, location);
  v15 = objc_retainBlock(v153);
  [(JSContext *)self->_jsContext setObject:v15 forKeyedSubscript:@"makeLocalizedTime"];

  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_10000983C;
  v151[3] = &unk_100024ED0;
  objc_copyWeak(&v152, location);
  v16 = objc_retainBlock(v151);
  [(JSContext *)self->_jsContext setObject:v16 forKeyedSubscript:@"isEventAtOne"];

  v149[0] = _NSConcreteStackBlock;
  v149[1] = 3221225472;
  v149[2] = sub_1000098A8;
  v149[3] = &unk_100024EA8;
  objc_copyWeak(&v150, location);
  v17 = objc_retainBlock(v149);
  [(JSContext *)self->_jsContext setObject:v17 forKeyedSubscript:@"makeLocalizedDateTime"];

  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x3032000000;
  v147[3] = sub_100009940;
  v147[4] = sub_100009950;
  v148 = 0;
  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_100009958;
  v145[3] = &unk_100024EF8;
  v145[4] = v147;
  objc_copyWeak(&v146, location);
  v18 = objc_retainBlock(v145);
  [(JSContext *)self->_jsContext setObject:v18 forKeyedSubscript:@"getBestAppSuggestionDictionary"];

  v143[0] = _NSConcreteStackBlock;
  v143[1] = 3221225472;
  v143[2] = sub_100009C58;
  v143[3] = &unk_100024F20;
  objc_copyWeak(&v144, location);
  v143[4] = v147;
  v19 = objc_retainBlock(v143);
  [(JSContext *)self->_jsContext setObject:v19 forKeyedSubscript:@"makeBestAppAction"];

  [(JSContext *)self->_jsContext setObject:&stru_100024F40 forKeyedSubscript:@"extractHostFromURL"];
  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_100009E8C;
  v142[3] = &unk_100024F68;
  v142[4] = v147;
  v20 = objc_retainBlock(v142);
  [(JSContext *)self->_jsContext setObject:v20 forKeyedSubscript:@"mockBestAppSuggestionFromDataSource"];

  [(JSContext *)self->_jsContext setObject:&stru_100024FA8 forKeyedSubscript:@"allowBestAppNotifications"];
  v140[0] = _NSConcreteStackBlock;
  v140[1] = 3221225472;
  v140[2] = sub_100009FA0;
  v140[3] = &unk_100024FD0;
  objc_copyWeak(&v141, location);
  v21 = objc_retainBlock(v140);
  [(JSContext *)self->_jsContext setObject:v21 forKeyedSubscript:@"getNLEvents"];

  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_100009FEC;
  v138[3] = &unk_100024FF8;
  objc_copyWeak(&v139, location);
  v22 = objc_retainBlock(v138);
  [(JSContext *)self->_jsContext setObject:v22 forKeyedSubscript:@"getContacts"];

  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_10000A0B0;
  v136[3] = &unk_100025020;
  objc_copyWeak(&v137, location);
  v23 = objc_retainBlock(v136);
  [(JSContext *)self->_jsContext setObject:v23 forKeyedSubscript:@"getEnabledAlarms"];

  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = sub_10000A114;
  v134[3] = &unk_100025048;
  objc_copyWeak(&v135, location);
  v24 = objc_retainBlock(v134);
  [(JSContext *)self->_jsContext setObject:v24 forKeyedSubscript:@"getCurrentLocation"];

  v132[0] = _NSConcreteStackBlock;
  v132[1] = 3221225472;
  v132[2] = sub_10000A160;
  v132[3] = &unk_100025070;
  objc_copyWeak(&v133, location);
  v25 = objc_retainBlock(v132);
  [(JSContext *)self->_jsContext setObject:v25 forKeyedSubscript:@"getUnreadMessages"];

  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_10000A1B4;
  v130[3] = &unk_100024FD0;
  objc_copyWeak(&v131, location);
  v26 = objc_retainBlock(v130);
  [(JSContext *)self->_jsContext setObject:v26 forKeyedSubscript:@"getBatteryInformation"];

  [(JSContext *)self->_jsContext setObject:&stru_1000250B0 forKeyedSubscript:@"willAlarmFireInDateRange"];
  v128[0] = _NSConcreteStackBlock;
  v128[1] = 3221225472;
  v128[2] = sub_10000A298;
  v128[3] = &unk_100024E80;
  objc_copyWeak(&v129, location);
  v27 = objc_retainBlock(v128);
  [(JSContext *)self->_jsContext setObject:v27 forKeyedSubscript:@"getCityNameFromAirportCode"];

  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_10000A314;
  v126[3] = &unk_1000250D8;
  objc_copyWeak(&v127, location);
  v28 = objc_retainBlock(v126);
  [(JSContext *)self->_jsContext setObject:v28 forKeyedSubscript:@"getLatestFlightStatus"];

  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_10000A37C;
  v124[3] = &unk_100025100;
  objc_copyWeak(&v125, location);
  v29 = objc_retainBlock(v124);
  [(JSContext *)self->_jsContext setObject:v29 forKeyedSubscript:@"getSetAlarmTimeOfDay"];

  [(JSContext *)self->_jsContext setObject:&stru_100025140 forKeyedSubscript:@"timestampWithHourMinuteAtDayOfTimestamp"];
  [(JSContext *)self->_jsContext setObject:&stru_100025180 forKeyedSubscript:@"timestampByOffsettingDays"];
  [(JSContext *)self->_jsContext setObject:&stru_1000251A0 forKeyedSubscript:@"phoneNumberFromTelUrl"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.mobilesafari" forKeyedSubscript:@"safariBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.mobilecal" forKeyedSubscript:@"calendarBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.mobilecal.CalendarWidgetExtension" forKeyedSubscript:@"calendarWidgetBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.mobiletimer" forKeyedSubscript:@"clockBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.facetime" forKeyedSubscript:@"faceTimeBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.Music" forKeyedSubscript:@"musicBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.podcasts" forKeyedSubscript:@"podcastsBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.stocks" forKeyedSubscript:@"stocksBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.tv" forKeyedSubscript:@"tvBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.weather" forKeyedSubscript:@"weatherBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:@"com.apple.MobileSMS" forKeyedSubscript:@"messagesBundleIdentifier"];
  [(JSContext *)self->_jsContext setObject:&stru_1000251C0 forKeyedSubscript:@"isMac"];
  [(JSContext *)self->_jsContext setObject:&stru_1000251E0 forKeyedSubscript:@"isiPad"];
  [(JSContext *)self->_jsContext setObject:&stru_100025220 forKeyedSubscript:@"isAppInstalled"];
  [(JSContext *)self->_jsContext setObject:&stru_100025260 forKeyedSubscript:@"makeLocalizedTimeInterval"];
  [(JSContext *)self->_jsContext setObject:&stru_1000252A0 forKeyedSubscript:@"makeCriteria"];
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_10000A690;
  v122[3] = &unk_1000252C8;
  objc_copyWeak(&v123, location);
  v30 = objc_retainBlock(v122);
  [(JSContext *)self->_jsContext setObject:v30 forKeyedSubscript:@"makeDNDForEventAction"];

  v120[0] = _NSConcreteStackBlock;
  v120[1] = 3221225472;
  v120[2] = sub_10000A7E0;
  v120[3] = &unk_1000252F0;
  objc_copyWeak(&v121, location);
  v31 = objc_retainBlock(v120);
  [(JSContext *)self->_jsContext setObject:v31 forKeyedSubscript:@"makeSendMsgIntentAction"];

  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_10000A9F8;
  v118[3] = &unk_100025318;
  objc_copyWeak(&v119, location);
  v32 = objc_retainBlock(v118);
  [(JSContext *)self->_jsContext setObject:v32 forKeyedSubscript:@"makeSetAlarmIntent"];

  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_10000AB4C;
  v116[3] = &unk_100025340;
  objc_copyWeak(&v117, location);
  v33 = objc_retainBlock(v116);
  [(JSContext *)self->_jsContext setObject:v33 forKeyedSubscript:@"makeUpdateAlarmIntent"];

  [(JSContext *)self->_jsContext setObject:&stru_100025380 forKeyedSubscript:@"makeEnableAirplaneModeAction"];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_10000AD04;
  v114[3] = &unk_1000253A8;
  objc_copyWeak(&v115, location);
  v34 = objc_retainBlock(v114);
  [(JSContext *)self->_jsContext setObject:v34 forKeyedSubscript:@"makeStartCallIntentAction"];

  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_10000AEEC;
  v112[3] = &unk_1000253D0;
  objc_copyWeak(&v113, location);
  v35 = objc_retainBlock(v112);
  [(JSContext *)self->_jsContext setObject:v35 forKeyedSubscript:@"makeStartAudioCallIntentAction"];

  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_10000B0C8;
  v110[3] = &unk_1000253D0;
  objc_copyWeak(&v111, location);
  v36 = objc_retainBlock(v110);
  [(JSContext *)self->_jsContext setObject:v36 forKeyedSubscript:@"makeStartVideoCallIntentAction"];

  [(JSContext *)self->_jsContext setObject:&stru_100025410 forKeyedSubscript:@"makeCreateCalendarEventAction"];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_10000B384;
  v108[3] = &unk_100025438;
  objc_copyWeak(&v109, location);
  v37 = objc_retainBlock(v108);
  [(JSContext *)self->_jsContext setObject:v37 forKeyedSubscript:@"makeDNDForCurrentLocationAction"];

  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_10000B448;
  v106[3] = &unk_1000252C8;
  objc_copyWeak(&v107, location);
  v38 = objc_retainBlock(v106);
  [(JSContext *)self->_jsContext setObject:v38 forKeyedSubscript:@"makeCheckInForEventAction"];

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_10000B648;
  v104[3] = &unk_100025460;
  objc_copyWeak(&v105, location);
  v39 = objc_retainBlock(v104);
  [(JSContext *)self->_jsContext setObject:v39 forKeyedSubscript:@"addInfoSuggestion"];

  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_10000B8A0;
  v102[3] = &unk_100024D48;
  objc_copyWeak(&v103, location);
  v40 = objc_retainBlock(v102);
  [(JSContext *)self->_jsContext setObject:v40 forKeyedSubscript:@"scheduleRefreshAfterTimeInterval"];

  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_10000B968;
  v100[3] = &unk_100024D48;
  objc_copyWeak(&v101, location);
  v41 = objc_retainBlock(v100);
  [(JSContext *)self->_jsContext setObject:v41 forKeyedSubscript:@"scheduleRefreshAtTimestamp"];

  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_10000BA30;
  v98[3] = &unk_100024D70;
  objc_copyWeak(&v99, location);
  v42 = objc_retainBlock(v98);
  [(JSContext *)self->_jsContext setObject:v42 forKeyedSubscript:@"scheduleRefreshAfterLocalNotification"];

  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_10000BB14;
  v96[3] = &unk_100025488;
  objc_copyWeak(&v97, location);
  v43 = objc_retainBlock(v96);
  [(JSContext *)self->_jsContext setObject:v43 forKeyedSubscript:@"scheduleRefreshAfterDarwinNotification"];

  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10000BC14;
  v94[3] = &unk_100024D98;
  objc_copyWeak(&v95, location);
  v44 = objc_retainBlock(v94);
  [(JSContext *)self->_jsContext setObject:v44 forKeyedSubscript:@"scheduleRefreshAfterUserWakeUp"];

  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10000BC94;
  v92[3] = &unk_100024D98;
  objc_copyWeak(&v93, location);
  v45 = objc_retainBlock(v92);
  [(JSContext *)self->_jsContext setObject:v45 forKeyedSubscript:@"scheduleRefreshOnAirplaneModeToggle"];

  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10000BD14;
  v90[3] = &unk_100024D98;
  objc_copyWeak(&v91, location);
  v46 = objc_retainBlock(v90);
  [(JSContext *)self->_jsContext setObject:v46 forKeyedSubscript:@"scheduleRefreshWithUserFocusComputedModeStream"];

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10000BD94;
  v88[3] = &unk_100024D98;
  objc_copyWeak(&v89, location);
  v47 = objc_retainBlock(v88);
  [(JSContext *)self->_jsContext setObject:v47 forKeyedSubscript:@"scheduleRefreshWithInferredModeStream"];

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10000BE14;
  v86[3] = &unk_1000254B0;
  objc_copyWeak(&v87, location);
  v48 = objc_retainBlock(v86);
  [(JSContext *)self->_jsContext setObject:v48 forKeyedSubscript:@"makeCalendarIntent"];

  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10000BE70;
  v84[3] = &unk_1000254B0;
  objc_copyWeak(&v85, location);
  v49 = objc_retainBlock(v84);
  [(JSContext *)self->_jsContext setObject:v49 forKeyedSubscript:@"makeWeatherIntent"];

  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_10000BF40;
  v82[3] = &unk_1000254D8;
  objc_copyWeak(&v83, location);
  v50 = objc_retainBlock(v82);
  [(JSContext *)self->_jsContext setObject:v50 forKeyedSubscript:@"makeTravelWeatherIntent"];

  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10000C1F8;
  v80[3] = &unk_100025500;
  objc_copyWeak(&v81, location);
  v51 = objc_retainBlock(v80);
  [(JSContext *)self->_jsContext setObject:v51 forKeyedSubscript:@"makeNSUA"];

  [(JSContext *)self->_jsContext setObject:&stru_100025540 forKeyedSubscript:@"getPerDeviceRandomTimeOffset"];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10000C470;
  v78[3] = &unk_100025568;
  objc_copyWeak(&v79, location);
  v52 = objc_retainBlock(v78);
  [(JSContext *)self->_jsContext setObject:v52 forKeyedSubscript:@"addAction"];

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10000C4E8;
  v76[3] = &unk_100025100;
  objc_copyWeak(&v77, location);
  v53 = objc_retainBlock(v76);
  [(JSContext *)self->_jsContext setObject:v53 forKeyedSubscript:@"now"];

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10000C554;
  v74[3] = &unk_100025590;
  objc_copyWeak(&v75, location);
  v54 = objc_retainBlock(v74);
  [(JSContext *)self->_jsContext setObject:v54 forKeyedSubscript:@"getDate"];

  [(JSContext *)self->_jsContext setObject:&stru_1000255D0 forKeyedSubscript:@"getTS"];
  [(JSContext *)self->_jsContext setObject:&stru_100025610 forKeyedSubscript:@"isTimestampToday"];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10000C6F0;
  v72[3] = &unk_100025638;
  objc_copyWeak(&v73, location);
  v55 = objc_retainBlock(v72);
  [(JSContext *)self->_jsContext setObject:v55 forKeyedSubscript:@"timestampByOffsettingStartOfTodayByNumberOfDays"];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10000C7F0;
  v70[3] = &unk_100024D70;
  objc_copyWeak(&v71, location);
  v56 = objc_retainBlock(v70);
  [(JSContext *)self->_jsContext setObject:v56 forKeyedSubscript:@"consoleLog"];

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10000C8E0;
  v68[3] = &unk_100025660;
  objc_copyWeak(&v69, location);
  v57 = objc_retainBlock(v68);
  [(JSContext *)self->_jsContext setObject:v57 forKeyedSubscript:@"consoleLogPrivate"];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10000C9F4;
  v66[3] = &unk_100025660;
  objc_copyWeak(&v67, location);
  v58 = objc_retainBlock(v66);
  [(JSContext *)self->_jsContext setObject:v58 forKeyedSubscript:@"consoleLogSensitive"];

  [(JSContext *)self->_jsContext setObject:&stru_100025680 forKeyedSubscript:@"localizedAppName"];
  [(JSContext *)self->_jsContext setExceptionHandler:&stru_1000256C0];
  v59 = 0;
  do
  {
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10000CC80;
    v63[3] = &unk_1000256E8;
    objc_copyWeak(&v64, location);
    v65 = v59;
    v60 = objc_retainBlock(v63);
    v61 = self->_jsContext;
    v62 = [(ATXHeuristicJSEnv *)self _functionNameForMGQuery:v59];
    [(JSContext *)v61 setObject:v60 forKeyedSubscript:v62];

    objc_destroyWeak(&v64);
    v59 = (v59 + 1);
  }

  while (v59 != 6);
  [(ATXHeuristicJSEnv *)self _registerDataSources];
  [(ATXHeuristicJSEnv *)self _injectScript];
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);
  objc_destroyWeak(&v95);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&v99);
  objc_destroyWeak(&v101);
  objc_destroyWeak(&v103);
  objc_destroyWeak(&v105);
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v109);
  objc_destroyWeak(&v111);
  objc_destroyWeak(&v113);
  objc_destroyWeak(&v115);
  objc_destroyWeak(&v117);
  objc_destroyWeak(&v119);
  objc_destroyWeak(&v121);
  objc_destroyWeak(&v123);
  objc_destroyWeak(&v125);
  objc_destroyWeak(&v127);
  objc_destroyWeak(&v129);
  objc_destroyWeak(&v131);
  objc_destroyWeak(&v133);
  objc_destroyWeak(&v135);
  objc_destroyWeak(&v137);
  objc_destroyWeak(&v139);
  objc_destroyWeak(&v141);
  objc_destroyWeak(&v144);
  objc_destroyWeak(&v146);
  _Block_object_dispose(v147, 8);

  objc_destroyWeak(&v150);
  objc_destroyWeak(&v152);
  objc_destroyWeak(&v154);
  objc_destroyWeak(&v156);
  objc_destroyWeak(&v158);
  objc_destroyWeak(&v160);
  objc_destroyWeak(&v162);
  objc_destroyWeak(&v164);
  objc_destroyWeak(&v166);
  objc_destroyWeak(location);
}

- (void)_injectScript
{
  v3 = [(NSBundle *)self->_heuristicsBundle URLForResource:@"heuristics" withExtension:@"js"];
  if (v3)
  {
    v8 = 0;
    v4 = [[NSString alloc] initWithContentsOfURL:v3 usedEncoding:0 error:&v8];
    v5 = v8;
    if (v4)
    {
      v6 = [(JSContext *)self->_jsContext evaluateScript:v4 withSourceURL:v3];
    }

    else
    {
      v7 = sub_100001940();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not load the heuristics JS script: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = sub_100001940();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not find the heuristics JS script", buf, 2u);
    }
  }
}

- (id)_makeIntentDescriptionWithCustomTypeName:(id)name parameters:(id)parameters
{
  parametersCopy = parameters;
  nameCopy = name;
  v7 = [[ATXCustomIntentDescription alloc] initWithTypeName:nameCopy parameters:parametersCopy];

  return v7;
}

- (id)_allHeuristicClassNames
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CF38;
  block[3] = &unk_100025710;
  block[4] = self;
  if (qword_10002E088 != -1)
  {
    dispatch_once(&qword_10002E088, block);
  }

  return qword_10002E080;
}

- (id)generateAllHeuristicNames
{
  _allHeuristicClassNames = [(ATXHeuristicJSEnv *)self _allHeuristicClassNames];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _allHeuristicClassNames;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSString stringWithFormat:@"%@.name", *(*(&v13 + 1) + 8 * i)];
        v11 = [(ATXHeuristicJSEnv *)self stringByEvaluatingJavaScript:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_allHeuristicNames
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D1A4;
  block[3] = &unk_100025710;
  block[4] = self;
  if (qword_10002E098 != -1)
  {
    dispatch_once(&qword_10002E098, block);
  }

  return qword_10002E090;
}

- (id)executeHeuristics:(id)heuristics
{
  v3 = [(ATXHeuristicJSEnv *)self actionsAndExpirersForHeuristics:heuristics];
  v4 = ATXActionsFromEnvResult(v3);

  return v4;
}

- (id)actionsAndExpirersForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  _allHeuristicNames = [(ATXHeuristicJSEnv *)self _allHeuristicNames];
  v6 = [_allHeuristicNames mutableCopy];

  if ([heuristicsCopy count])
  {
    v7 = [NSSet setWithArray:heuristicsCopy];
    [v6 minusSet:v7];
  }

  v8 = [(ATXHeuristicJSEnv *)self actionsAndExpirersForHeuristicsExcept:v6];

  return v8;
}

- (id)actionsAndExpirersForHeuristicsExcept:(id)except
{
  exceptCopy = except;
  v43 = objc_opt_new();
  [(ATXHeuristicJSEnv *)self _allHeuristicClassNames];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v4 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [NSString stringWithFormat:@"%@.name", v8];
        v11 = [(ATXHeuristicJSEnv *)self stringByEvaluatingJavaScript:v10];

        if (([exceptCopy containsObject:v11] & 1) == 0)
        {
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10000D7E0;
          v53[3] = &unk_100025738;
          v53[4] = self;
          v53[5] = v8;
          [(ATXHeuristicJSEnv *)self trackActionsAndExpirersForHeuristicName:v11 mutableResult:v43 performingBlock:v53];
          JSGarbageCollect([(JSContext *)self->_jsContext JSGlobalContextRef]);
          v12 = sub_100001940();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            ATXMemoryUsageInMBOfCurrentProcess();
            *buf = 134218242;
            v61 = v13;
            v62 = 2112;
            v63 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Memory usage is %f MB after running '%@'", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v5);
  }

  v14 = [(JSContext *)self->_jsContext evaluateScript:@"resetSharedState()"];
  v38 = [(NSDate *)self->_now dateByAddingTimeInterval:600.0];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = v43;
  allKeys = [v43 allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
    v39 = *v50;
    do
    {
      v19 = 0;
      v40 = v17;
      do
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v49 + 1) + 8 * v19);
        v21 = [v15 objectForKeyedSubscript:v20];
        actionMakers = [v21 actionMakers];
        v23 = [actionMakers count];

        if (!v23)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          expirers = [v21 expirers];
          v25 = [expirers countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (!v25)
          {

LABEL_28:
            v31 = [[ATXHeuristicCacheTimeExpirer alloc] initWithFireDate:v38];
            v32 = [ATXHeuristicActionMakersAndExpirers alloc];
            actionMakers2 = [v21 actionMakers];
            expirers2 = [v21 expirers];
            v35 = [expirers2 setByAddingObject:v31];
            v36 = [v32 initWithActionMakers:actionMakers2 expirers:v35];

            v18 = v39;
            [v15 setObject:v36 forKeyedSubscript:v20];

            v17 = v40;
            goto LABEL_29;
          }

          v26 = v25;
          v27 = 0;
          v28 = *v46;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v46 != v28)
              {
                objc_enumerationMutation(expirers);
              }

              v30 = *(*(&v45 + 1) + 8 * j);
              objc_opt_class();
              v27 |= objc_opt_isKindOfClass();
            }

            v26 = [expirers countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v26);

          v15 = v43;
          v18 = v39;
          v17 = v40;
          if ((v27 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_29:

        v19 = v19 + 1;
      }

      while (v19 != v17);
      v17 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v17);
  }

  return v15;
}

- (id)resultsForInformationHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(heuristicsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = heuristicsCopy;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000DA84;
        v16[3] = &unk_100025738;
        v16[4] = self;
        v16[5] = v10;
        [(ATXHeuristicJSEnv *)self trackCardsAndRefreshTriggersForInformationHeuristicName:v10 mutableResults:v5 performingBlock:v16];
        JSGarbageCollect([(JSContext *)self->_jsContext JSGlobalContextRef]);
        v12 = sub_100001940();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          ATXMemoryUsageInMBOfCurrentProcess();
          *buf = 134218242;
          v22 = v13;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Memory usage is %f MB after running '%@'", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)heuristicResults
{
  v2 = [(ATXHeuristicJSEnv *)self actionsAndExpirersForHeuristicsExcept:0];
  v3 = ATXActionsFromEnvResult(v2);

  return v3;
}

- (id)stringByEvaluatingJavaScript:(id)script
{
  v3 = [(JSContext *)self->_jsContext evaluateScript:script];
  toString = [v3 toString];

  return toString;
}

- (id)objectByEvaluatingJavaScript:(id)script
{
  v3 = [(JSContext *)self->_jsContext evaluateScript:script];
  toObject = [v3 toObject];

  return toObject;
}

- (double)doubleByEvaluatingJavaScript:(id)script
{
  v3 = [(JSContext *)self->_jsContext evaluateScript:script];
  [v3 toDouble];
  v5 = v4;

  return v5;
}

- (int)intByEvaluatingJavaScript:(id)script
{
  v3 = [(JSContext *)self->_jsContext evaluateScript:script];
  toInt32 = [v3 toInt32];

  return toInt32;
}

- (BOOL)BOOLByEvaluatingJavaScript:(id)script
{
  v3 = [(JSContext *)self->_jsContext evaluateScript:script];
  toBool = [v3 toBool];

  return toBool;
}

- (void)setNow:(id)now
{
  nowCopy = now;
  p_now = &self->_now;
  if (self->_now != nowCopy)
  {
    v7 = nowCopy;
    objc_storeStrong(p_now, now);
    p_now = [(ATXHeuristicDevice *)self->_device setNow:v7];
  }

  _objc_release_x2(p_now);
}

- (void)trackActionsAndExpirersForHeuristicName:(id)name mutableResult:(id)result performingBlock:(id)block
{
  blockCopy = block;
  resultCopy = result;
  nameCopy = name;
  v11 = [nameCopy copy];
  currentHeuristicName = self->_currentHeuristicName;
  self->_currentHeuristicName = v11;

  v13 = +[NSMutableArray array];
  currentActionsBuffer = self->_currentActionsBuffer;
  self->_currentActionsBuffer = v13;

  v15 = +[NSMutableSet set];
  currentExpirersBuffer = self->_currentExpirersBuffer;
  self->_currentExpirersBuffer = v15;

  blockCopy[2](blockCopy);
  v17 = self->_currentActionsBuffer;
  self->_currentActionsBuffer = 0;
  v22 = v17;

  v18 = self->_currentExpirersBuffer;
  self->_currentExpirersBuffer = 0;
  v19 = v18;

  v20 = self->_currentHeuristicName;
  self->_currentHeuristicName = 0;

  v21 = [[ATXHeuristicActionMakersAndExpirers alloc] initWithActionMakers:v22 expirers:v19];
  [resultCopy setObject:v21 forKeyedSubscript:nameCopy];
}

- (void)_addAction:(id)action withCriteria:(id)criteria
{
  actionCopy = action;
  criteriaCopy = criteria;
  if (actionCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ATXHeuristicActionMakerForAction alloc] initWithAction:actionCopy];
    }

    else
    {
      v8 = actionCopy;
    }

    v9 = v8;
    if (criteriaCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = sub_100001940();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Expected nil or ATXActionCriteria", v14, 2u);
      }
    }

    else
    {
      [v9 setCriteria:criteriaCopy];
      actionTypeName = [v9 actionTypeName];
      v11 = [@":" stringByAppendingString:actionTypeName];

      v12 = [(NSString *)self->_currentHeuristicName stringByAppendingString:v11];
      [v9 setHeuristic:v12];

      [(NSMutableArray *)self->_currentActionsBuffer addObject:v9];
    }
  }

  else
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Expected non-null ATXAction", buf, 2u);
    }
  }
}

- (void)trackCardsAndRefreshTriggersForInformationHeuristicName:(id)name mutableResults:(id)results performingBlock:(id)block
{
  blockCopy = block;
  resultsCopy = results;
  nameCopy = name;
  v11 = [nameCopy copy];
  currentInformationHeuristicName = self->_currentInformationHeuristicName;
  self->_currentInformationHeuristicName = v11;

  v13 = objc_opt_new();
  currentInfoSuggestionsBuffer = self->_currentInfoSuggestionsBuffer;
  self->_currentInfoSuggestionsBuffer = v13;

  v15 = objc_opt_new();
  currentRefreshTriggerBuffer = self->_currentRefreshTriggerBuffer;
  self->_currentRefreshTriggerBuffer = v15;

  self->_hasCurrentHeuristicFailed = 0;
  blockCopy[2](blockCopy);

  v20 = [[ATXInformationHeuristicResult alloc] initWithHeuristicName:nameCopy suggestions:self->_currentInfoSuggestionsBuffer refreshTriggers:self->_currentRefreshTriggerBuffer hasFailed:self->_hasCurrentHeuristicFailed];
  [resultsCopy addObject:v20];

  v17 = self->_currentInformationHeuristicName;
  self->_currentInformationHeuristicName = 0;

  v18 = self->_currentInfoSuggestionsBuffer;
  self->_currentInfoSuggestionsBuffer = 0;

  v19 = self->_currentRefreshTriggerBuffer;
  self->_currentRefreshTriggerBuffer = 0;

  self->_hasCurrentHeuristicFailed = 0;
}

- (void)_refreshAfterTimeInterval:(double)interval
{
  if (interval > 0.0)
  {
    v6 = [ATXInformationHeuristicRefreshTimeTrigger alloc];
    v7 = [NSDate dateWithTimeIntervalSinceNow:interval];
    v8 = [v6 initWithFireDate:v7];

    [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v8];
  }
}

- (void)_refreshAtTimestamp:(double)timestamp
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v5 < timestamp)
  {
    v6 = [ATXInformationHeuristicRefreshTimeTrigger alloc];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:timestamp];
    v8 = [v6 initWithFireDate:v7];

    [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v8];
  }
}

- (void)_refreshAfterLocalNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:notificationCopy type:0];

  [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v5];
}

- (void)_refreshAfterDarwinNotification:(id)notification coalescingInterval:(double)interval
{
  notificationCopy = notification;
  v7 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:notificationCopy type:1 coalescingInterval:interval];

  [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v7];
}

- (void)_refreshAfterUserWakeUp
{
  v3 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
  v4 = +[_CDContextQueries keyPathForFirstWakeupStatus];
  v5 = [v3 initWithCDContextualKeyPath:v4 equalToValue:&off_100028190 withMinimumDurationInPreviousState:14400.0];

  [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v5];
}

- (void)_refreshOnAirplaneModeToggle
{
  v3 = [ATXHeuristicCacheContextStoreExpirer alloc];
  v4 = +[_CDContextQueries keyPathForAirplaneModeStatus];
  v5 = [v3 initWithCDContextualKeyPath:v4];

  [(NSMutableSet *)self->_currentExpirersBuffer addObject:v5];
}

- (void)_refreshWithUserFocusComputedModeStream
{
  v3 = [[ATXInformationHeuristicRefreshBiomeTrigger alloc] initWithStreamType:0];
  [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v3];
}

- (void)_refreshWithInferredModeStream
{
  v3 = [[ATXInformationHeuristicRefreshBiomeTrigger alloc] initWithStreamType:1];
  [(NSMutableSet *)self->_currentRefreshTriggerBuffer addObject:v3];
}

- (id)_functionNameForMGQuery:(int)query
{
  if (query > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_100025BF0 + query);
  }
}

- (BOOL)_BOOLForMGQuery:(int)query
{
  result = 0;
  if (query > 2)
  {
    switch(query)
    {
      case 3:
        v7 = @"CoreRoutineCapability";

        break;
      case 4:
        v7 = @"green-tea";

        break;
      case 5:
        v7 = @"InternalBuild";

        break;
      default:
        return result;
    }

    return _MGGetBoolAnswer(v7, a2);
  }

  switch(query)
  {
    case 0:
      v7 = @"telephony";

      return _MGGetBoolAnswer(v7, a2);
    case 1:
      v7 = @"AirDropCapability";

      return _MGGetBoolAnswer(v7, a2);
    case 2:
      v5 = SCPreferencesCreate(0, @"com.apple.proactive.HeuristicInterpreterInternal", @"com.apple.radios.plist");
      Value = SCPreferencesGetValue(v5, @"AirplaneMode");
      CFRelease(v5);
      return Value == kCFBooleanTrue;
  }

  return result;
}

- (void)_expireCacheAfterTime:(double)time
{
  if (time > 0.0)
  {
    v6 = [ATXHeuristicCacheTimeExpirer alloc];
    v7 = [(ATXHeuristicJSEnv *)self now];
    v8 = [v7 dateByAddingTimeInterval:time];
    v9 = [v6 initWithFireDate:v8];

    [(NSMutableSet *)self->_currentExpirersBuffer addObject:v9];
  }
}

- (void)_expireCacheAtTime:(double)time
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v5 < time)
  {
    v6 = [ATXHeuristicCacheTimeExpirer alloc];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
    v8 = [v6 initWithFireDate:v7];

    [(NSMutableSet *)self->_currentExpirersBuffer addObject:v8];
  }
}

- (void)_expireCacheAfterDarwinNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[ATXHeuristicCacheNotificationExpirer alloc] initDarwin:notificationCopy];

  [(NSMutableSet *)self->_currentExpirersBuffer addObject:v5];
}

- (void)_expireCacheAfterLocalNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[ATXHeuristicCacheNotificationExpirer alloc] initLocal:notificationCopy];

  [(NSMutableSet *)self->_currentExpirersBuffer addObject:v5];
}

- (id)_dateFromTimeIntervalOrDate:(id)date
{
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dateCopy doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dateCopy;
    goto LABEL_5;
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"[ATXHeuristicJSEnv _dateFromTimeIntervalOrDate:]"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 handleFailureInFunction:v7 file:@"ATXHeuristicJSEnv.m" lineNumber:1222 description:{@"Expected timestamp or date, got %@", v9}];

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)_isEventAtOneWithTimeIntervelOrDate:(id)date usesTwelveHourClock:(BOOL)clock
{
  clockCopy = clock;
  v5 = [(ATXHeuristicJSEnv *)self _dateFromTimeIntervalOrDate:date];
  if (v5)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 components:32 fromDate:v5];

    hour = [v7 hour];
    v10 = hour == 13 || hour == 1;
    if (clockCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = hour == 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_registerDataSources
{
  objc_initWeak(location, self);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10000F93C;
  v76[3] = &unk_100025048;
  objc_copyWeak(&v77, location);
  v3 = objc_retainBlock(v76);
  [(JSContext *)self->_jsContext setObject:v3 forKeyedSubscript:@"getClipboard"];

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10000F988;
  v74[3] = &unk_100025760;
  objc_copyWeak(&v75, location);
  v4 = objc_retainBlock(v74);
  [(JSContext *)self->_jsContext setObject:v4 forKeyedSubscript:@"isFocusModeActive"];

  [(JSContext *)self->_jsContext setObject:&stru_1000257A0 forKeyedSubscript:@"getMemoryUse"];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10000F9C4;
  v72[3] = &unk_100024FD0;
  objc_copyWeak(&v73, location);
  v5 = objc_retainBlock(v72);
  [(JSContext *)self->_jsContext setObject:v5 forKeyedSubscript:@"getVisibleCalendars"];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10000FA10;
  v70[3] = &unk_100025020;
  objc_copyWeak(&v71, location);
  v6 = objc_retainBlock(v70);
  [(JSContext *)self->_jsContext setObject:v6 forKeyedSubscript:@"getCalendarEvents"];

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10000FAAC;
  v68[3] = &unk_1000257C8;
  objc_copyWeak(&v69, location);
  v7 = objc_retainBlock(v68);
  [(JSContext *)self->_jsContext setObject:v7 forKeyedSubscript:@"getEventPasses"];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10000FB28;
  v66[3] = &unk_1000257F0;
  objc_copyWeak(&v67, location);
  v8 = objc_retainBlock(v66);
  [(JSContext *)self->_jsContext setObject:v8 forKeyedSubscript:@"getEventTravelTime"];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10000FC14;
  v64[3] = &unk_100024FD0;
  objc_copyWeak(&v65, location);
  v9 = objc_retainBlock(v64);
  [(JSContext *)self->_jsContext setObject:v9 forKeyedSubscript:@"getVIPs"];

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10000FC60;
  v62[3] = &unk_1000257C8;
  objc_copyWeak(&v63, location);
  v10 = objc_retainBlock(v62);
  [(JSContext *)self->_jsContext setObject:v10 forKeyedSubscript:@"getExtraordinaryEvents"];

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10000FCE0;
  v60[3] = &unk_100025020;
  objc_copyWeak(&v61, location);
  v11 = objc_retainBlock(v60);
  [(JSContext *)self->_jsContext setObject:v11 forKeyedSubscript:@"getHolidayEvents"];

  [(JSContext *)self->_jsContext setObject:&stru_100025830 forKeyedSubscript:@"getDistanceBetween"];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10000FF48;
  v58[3] = &unk_100025858;
  objc_copyWeak(&v59, location);
  v12 = objc_retainBlock(v58);
  [(JSContext *)self->_jsContext setObject:v12 forKeyedSubscript:@"getBestContactHandle"];

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10000FFDC;
  v56[3] = &unk_100025880;
  objc_copyWeak(&v57, location);
  v13 = objc_retainBlock(v56);
  [(JSContext *)self->_jsContext setObject:v13 forKeyedSubscript:@"allHandlesForContact"];

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100010044;
  v54[3] = &unk_1000258A8;
  objc_copyWeak(&v55, location);
  v14 = objc_retainBlock(v54);
  [(JSContext *)self->_jsContext setObject:v14 forKeyedSubscript:@"getFavoriteContacts"];

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000100AC;
  v52[3] = &unk_100024FD0;
  objc_copyWeak(&v53, location);
  v15 = objc_retainBlock(v52);
  [(JSContext *)self->_jsContext setObject:v15 forKeyedSubscript:@"getBirthdayEvents"];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000100F8;
  v50[3] = &unk_1000258D0;
  objc_copyWeak(&v51, location);
  v16 = objc_retainBlock(v50);
  [(JSContext *)self->_jsContext setObject:v16 forKeyedSubscript:@"getCallHistory"];

  [(JSContext *)self->_jsContext setObject:&stru_100025910 forKeyedSubscript:@"makeRequestRideActionForEvent"];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10001031C;
  v48[3] = &unk_100025938;
  objc_copyWeak(&v49, location);
  v17 = objc_retainBlock(v48);
  [(JSContext *)self->_jsContext setObject:v17 forKeyedSubscript:@"getUserAppPreference"];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000103AC;
  v46[3] = &unk_100025960;
  objc_copyWeak(&v47, location);
  v18 = objc_retainBlock(v46);
  [(JSContext *)self->_jsContext setObject:v18 forKeyedSubscript:@"getDuetInteractionCount"];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100010454;
  v44[3] = &unk_1000258A8;
  objc_copyWeak(&v45, location);
  v19 = objc_retainBlock(v44);
  [(JSContext *)self->_jsContext setObject:v19 forKeyedSubscript:@"getPeopleSuggestions"];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000104A0;
  v42[3] = &unk_100025988;
  objc_copyWeak(&v43, location);
  v20 = objc_retainBlock(v42);
  [(JSContext *)self->_jsContext setObject:v20 forKeyedSubscript:@"getBestTimeToInteractWithContact"];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100010630;
  v40[3] = &unk_100025100;
  objc_copyWeak(&v41, location);
  v21 = objc_retainBlock(v40);
  [(JSContext *)self->_jsContext setObject:v21 forKeyedSubscript:@"getTimeIntervalSinceUserWakeup"];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10001067C;
  v38[3] = &unk_1000259B0;
  objc_copyWeak(&v39, location);
  v22 = objc_retainBlock(v38);
  [(JSContext *)self->_jsContext setObject:v22 forKeyedSubscript:@"fetchWidgetMetadataForAppBundleIds"];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000106E4;
  v36[3] = &unk_1000259D8;
  objc_copyWeak(&v37, location);
  v23 = objc_retainBlock(v36);
  [(JSContext *)self->_jsContext setObject:v23 forKeyedSubscript:@"getLocationForMostRelevantTripInRange"];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100010780;
  v34[3] = &unk_100025048;
  objc_copyWeak(&v35, location);
  v24 = objc_retainBlock(v34);
  [(JSContext *)self->_jsContext setObject:v24 forKeyedSubscript:@"getModeCorrelatedAppsInCurrentMode"];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000107CC;
  v32[3] = &unk_100025100;
  objc_copyWeak(&v33, location);
  v25 = objc_retainBlock(v32);
  [(JSContext *)self->_jsContext setObject:v25 forKeyedSubscript:@"getPredictedBedTime"];

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100010818;
  v30 = &unk_100025100;
  objc_copyWeak(&v31, location);
  v26 = objc_retainBlock(&v27);
  [(JSContext *)self->_jsContext setObject:v26 forKeyedSubscript:@"getScheduledBedTime", v27, v28, v29, v30];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v51);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&v57);
  objc_destroyWeak(&v59);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  objc_destroyWeak(location);
}

- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date
{
  handlesCopy = handles;
  dateCopy = date;
  if ([handlesCopy count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100009940;
    v22 = sub_100009950;
    v23 = 0;
    v15 = 0;
    v16[0] = &v15;
    v16[1] = 0x3032000000;
    v16[2] = sub_100009940;
    v16[3] = sub_100009950;
    v17 = 0;
    provider = self->_provider;
    v9 = [NSSet setWithArray:handlesCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100010AB0;
    v14[3] = &unk_100025A00;
    v14[4] = &v18;
    v14[5] = &v15;
    [(ATXHeuristicDataSources *)provider duetInteractionCountForHandles:v9 sinceDate:dateCopy callback:v14];

    if (*(v16[0] + 40))
    {
      v10 = sub_100001940();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("duetInteractionCountForHandles:sinceDate:callback:");
        sub_10001704C(Name, v16);
      }

      v12 = 0;
    }

    else
    {
      v12 = v19[5];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_userAppPreferenceFromDataSourceWithIntentName:(id)name parameterCombination:(id)combination
{
  nameCopy = name;
  combinationCopy = combination;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100009940;
  v21 = sub_100009950;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100009940;
  v15[3] = sub_100009950;
  v16 = 0;
  provider = self->_provider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010D48;
  v13[3] = &unk_100025A28;
  v13[4] = &v17;
  v13[5] = &v14;
  [(ATXHeuristicDataSources *)provider preferredAppForIntentName:nameCopy andParameterCombination:combinationCopy callback:v13];
  if (*(v15[0] + 40))
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("preferredAppForIntentName:andParameterCombination:callback:");
      sub_10001704C(Name, v15);
    }

    v11 = 0;
  }

  else
  {
    v11 = v18[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_nlEventsFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000112A8;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider nlEventsWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("nlEventsWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_contactsDataSourceWithType:(id)type value:(id)value identifiers:(id)identifiers
{
  typeCopy = type;
  valueCopy = value;
  identifiersCopy = identifiers;
  if (!typeCopy)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100009940;
  v27 = sub_100009950;
  v28 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = sub_100009940;
  v21[3] = sub_100009950;
  v22 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011738;
  v19[3] = &unk_100025A78;
  v19[4] = &v23;
  v19[5] = &v20;
  v11 = objc_retainBlock(v19);
  if ([typeCopy isEqualToString:@"identifiers"])
  {
    [(ATXHeuristicDataSources *)self->_provider contactsWithIdentifiers:identifiersCopy callback:v11];
    if (*(v21[0] + 40))
    {
      v12 = sub_100001940();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("contactsWithIdentifiers:callback:");
        sub_10001704C(Name, v21);
      }

LABEL_26:

      v14 = 0;
      goto LABEL_27;
    }
  }

  else if ([typeCopy isEqualToString:@"name"])
  {
    [(ATXHeuristicDataSources *)self->_provider contactsWithName:valueCopy callback:v11];
    if (*(v21[0] + 40))
    {
      v12 = sub_100001940();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = sel_getName("contactsWithName:callback:");
        sub_10001704C(v15, v21);
      }

      goto LABEL_26;
    }
  }

  else if ([typeCopy isEqualToString:@"email"])
  {
    [(ATXHeuristicDataSources *)self->_provider contactsWithEmail:valueCopy callback:v11];
    if (*(v21[0] + 40))
    {
      v12 = sub_100001940();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = sel_getName("contactsWithEmail:callback:");
        sub_10001704C(v16, v21);
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (![typeCopy isEqualToString:@"phone"])
    {
      v12 = sub_100001940();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = typeCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown fetch type: '%@'", buf, 0xCu);
      }

      goto LABEL_26;
    }

    [(ATXHeuristicDataSources *)self->_provider contactsWithPhone:valueCopy callback:v11];
    if (*(v21[0] + 40))
    {
      v12 = sub_100001940();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = sel_getName("contactsWithPhone:callback:");
        sub_10001704C(v17, v21);
      }

      goto LABEL_26;
    }
  }

  v14 = v24[5];
LABEL_27:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

LABEL_28:

  return v14;
}

- (id)_currentLocationFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000119A0;
  v7[3] = &unk_100025A50;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider obtainOneTimeLocationWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("obtainOneTimeLocationWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_unreadMessagesWithLimit:(int64_t)limit
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100009940;
  v16 = sub_100009950;
  v17 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = sub_100009940;
  v10[3] = sub_100009950;
  v11 = 0;
  provider = self->_provider;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011C08;
  v8[3] = &unk_100025A78;
  v8[4] = &v12;
  v8[5] = &v9;
  [(ATXHeuristicDataSources *)provider unreadMessagesWithLimit:limit callback:v8];
  if (*(v10[0] + 40))
  {
    v4 = sub_100001940();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("unreadMessagesWithLimit:callback:");
      sub_10001704C(Name, v10);
    }

    v6 = 0;
  }

  else
  {
    v6 = v13[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)_peopleSuggestionsFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011E70;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider peopleSuggestionsWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("peopleSuggestionsWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_enabledAlarmsFromTS:(double)s toTS:(double)tS
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100009940;
  v20 = sub_100009950;
  v21 = 0;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = sub_100009940;
  v14[3] = sub_100009950;
  v15 = 0;
  provider = self->_provider;
  v6 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:s];
  v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:tS];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100012138;
  v12[3] = &unk_100025A78;
  v12[4] = &v16;
  v12[5] = &v13;
  [(ATXHeuristicDataSources *)provider alarmsFromDate:v6 toDate:v7 completionHandler:v12];

  if (*(v14[0] + 40))
  {
    v8 = sub_100001940();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("alarmsFromDate:toDate:completionHandler:");
      sub_10001704C(Name, v14);
    }

    v10 = 0;
  }

  else
  {
    v10 = v17[5];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_cityNameFromAirportCode:(id)code
{
  v3 = [ATXHeuristicAirportCity cityForAirport:code];
  name = [v3 name];

  return name;
}

- (id)_latestFlightStatus:(id)status
{
  statusCopy = status;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100009940;
  v18 = sub_100009950;
  v19 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = sub_100009940;
  v12[3] = sub_100009950;
  v13 = 0;
  provider = self->_provider;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012410;
  v10[3] = &unk_100025A50;
  v10[4] = &v14;
  v10[5] = &v11;
  [(ATXHeuristicDataSources *)provider flightStatusForFlight:statusCopy callback:v10];
  if (*(v12[0] + 40))
  {
    v6 = sub_100001940();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("flightStatusForFlight:callback:");
      sub_10001704C(Name, v12);
    }

    v8 = 0;
  }

  else
  {
    v8 = v15[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)_usualAlarmTimeOfDayDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012678;
  v7[3] = &unk_100025A00;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider alarmTimeOfDay:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("alarmTimeOfDay:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_clipboardContentsFromDataSource
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100009940;
  v29 = sub_100009950;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100009940;
  v23 = sub_100009950;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100009940;
  v17 = sub_100009950;
  v18 = 0;
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x3032000000;
  v11[2] = sub_100009940;
  v11[3] = sub_100009950;
  v12 = 0;
  provider = self->_provider;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012A1C;
  v9[3] = &unk_100025AA0;
  v9[4] = &v25;
  v9[5] = &v13;
  v9[6] = &v19;
  v9[7] = &v10;
  [(ATXHeuristicDataSources *)provider contentsWithCallback:v9];
  if (*(v11[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("contentsWithCallback:");
      sub_10001704C(Name, v11);
    }

    v5 = 0;
    goto LABEL_5;
  }

  if (v26[5])
  {
    v6 = v14[5];
    if (v6)
    {
      if (v20[5])
      {
        v32[0] = v26[5];
        v31[0] = @"content";
        v31[1] = @"creationTimestamp";
        [v6 timeIntervalSinceReferenceDate];
        v3 = [NSNumber numberWithDouble:?];
        v31[2] = @"originatorBundleID";
        v7 = v20[5];
        v32[1] = v3;
        v32[2] = v7;
        v5 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
LABEL_5:

        goto LABEL_11;
      }
    }
  }

  v5 = 0;
LABEL_11:
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v5;
}

- (BOOL)_isFocusModeActiveFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012CA8;
  v7[3] = &unk_100025AC8;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider isFocusModeActive:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("isFocusModeActive:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = *(v12 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);
  return v5 & 1;
}

- (id)_visibleCalendarsFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012EA8;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider visibleCalendarsWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("visibleCalendarsWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_calendarEventsFromDataSourceBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100009940;
  v21 = sub_100009950;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100009940;
  v15[3] = sub_100009950;
  v16 = 0;
  provider = self->_provider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100013140;
  v13[3] = &unk_100025A78;
  v13[4] = &v17;
  v13[5] = &v14;
  [(ATXHeuristicDataSources *)provider calendarEventsFromStartDate:dateCopy toEndDate:endDateCopy callback:v13];
  if (*(v15[0] + 40))
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("calendarEventsFromStartDate:toEndDate:callback:");
      sub_10001704C(Name, v15);
    }

    v11 = 0;
  }

  else
  {
    v11 = v18[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_eventPassesFromDataSourceWithStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  if (!styleCopy || ([styleCopy isEqualToString:@"ticket"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"boardingPass") & 1) != 0)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100009940;
    v20 = sub_100009950;
    v21 = 0;
    v13 = 0;
    v14[0] = &v13;
    v14[1] = 0x3032000000;
    v14[2] = sub_100009940;
    v14[3] = sub_100009950;
    v15 = 0;
    provider = self->_provider;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013424;
    v12[3] = &unk_100025A78;
    v12[4] = &v16;
    v12[5] = &v13;
    [(ATXHeuristicDataSources *)provider passesWithStyle:v5 callback:v12];
    if (*(v14[0] + 40))
    {
      v7 = sub_100001940();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("passesWithStyle:callback:");
        sub_10001704C(Name, v14);
      }

      v9 = 0;
    }

    else
    {
      v9 = v17[5];
    }

    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = sub_100001940();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100017084();
    }

    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)_bestAppSuggestionFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001368C;
  v7[3] = &unk_100025AF0;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider bestAppSuggestionWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("bestAppSuggestionWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_vipsFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000138F4;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider vipsWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("vipsWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_extraordinaryEventsFromDataSourceWithProminentFeature:(id)feature
{
  featureCopy = feature;
  if (featureCopy)
  {
    v5 = [&off_1000282A0 objectForKeyedSubscript:featureCopy];
  }

  else
  {
    v5 = 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100009940;
  v19 = sub_100009950;
  v20 = 0;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = sub_100009940;
  v13[3] = sub_100009950;
  v14 = 0;
  provider = self->_provider;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013BA0;
  v11[3] = &unk_100025A78;
  v11[4] = &v15;
  v11[5] = &v12;
  [(ATXHeuristicDataSources *)provider getEventsWithProminentFeature:v5 callback:v11];
  if (*(v13[0] + 40))
  {
    v7 = sub_100001940();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("getEventsWithProminentFeature:callback:");
      sub_10001704C(Name, v13);
    }

    v9 = 0;
  }

  else
  {
    v9 = v16[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_batteryInformationFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013E08;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider batteryInformationWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("batteryInformationWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_favoriteContactsFromDataSourceWithExistingContacts:(id)contacts
{
  contactsCopy = contacts;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100009940;
  v18 = sub_100009950;
  v19 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = sub_100009940;
  v12[3] = sub_100009950;
  v13 = 0;
  provider = self->_provider;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001408C;
  v10[3] = &unk_100025A78;
  v10[4] = &v14;
  v10[5] = &v11;
  [(ATXHeuristicDataSources *)provider favoritesWithContacts:contactsCopy callback:v10];
  if (*(v12[0] + 40))
  {
    v6 = sub_100001940();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("favoritesWithContacts:callback:");
      sub_10001704C(Name, v12);
    }

    v8 = 0;
  }

  else
  {
    v8 = v15[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)_allHandlesFromDataSourceWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100009940;
    v19 = sub_100009950;
    v20 = 0;
    v12 = 0;
    v13[0] = &v12;
    v13[1] = 0x3032000000;
    v13[2] = sub_100009940;
    v13[3] = sub_100009950;
    v14 = 0;
    provider = self->_provider;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014340;
    v11[3] = &unk_100025A78;
    v11[4] = &v15;
    v11[5] = &v12;
    [(ATXHeuristicDataSources *)provider allHandlesForContact:contactCopy callback:v11];
    if (*(v13[0] + 40))
    {
      v6 = sub_100001940();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("allHandlesForContact:callback:");
        sub_10001704C(Name, v13);
      }

      v8 = 0;
    }

    else
    {
      v8 = v16[5];
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000170F8();
    }

    v8 = 0;
  }

  return v8;
}

- (id)_bestContactHandleFromDataSourceWithContact:(id)contact serviceString:(id)string
{
  contactCopy = contact;
  stringCopy = string;
  v20 = @"imessage";
  v21 = @"facetime";
  v26 = IDSServiceNameiMessage;
  v27 = IDSServiceNameFaceTime;
  v22 = @"calling";
  v28 = IDSServiceNameCalling;
  v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v20 count:3];
  v9 = [v8 objectForKeyedSubscript:stringCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sub_100001940();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001712C();
    }
  }

  if (contactCopy && v10)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100009940;
    v30 = sub_100009950;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100009940;
    v24 = sub_100009950;
    v25 = 0;
    provider = self->_provider;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000146D8;
    v19[3] = &unk_100025A28;
    v19[4] = &v26;
    v19[5] = &v20;
    [(ATXHeuristicDataSources *)provider bestHandleForContact:contactCopy service:v10 callback:v19];
    if (v21[5])
    {
      v14 = sub_100001940();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("bestHandleForContact:service:callback:");
        sub_10001704C(Name, &v21);
      }

      v16 = 0;
    }

    else
    {
      v16 = v27[5];
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v17 = sub_100001940();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000171A0();
    }

    v16 = 0;
  }

  return v16;
}

- (id)_holidayEventsFromDataSourceBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100009940;
  v21 = sub_100009950;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100009940;
  v15[3] = sub_100009950;
  v16 = 0;
  provider = self->_provider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014970;
  v13[3] = &unk_100025A78;
  v13[4] = &v17;
  v13[5] = &v14;
  [(ATXHeuristicDataSources *)provider holidaysFromStartDate:dateCopy toEndDate:endDateCopy callback:v13];
  if (*(v15[0] + 40))
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("holidaysFromStartDate:toEndDate:callback:");
      sub_10001704C(Name, v15);
    }

    v11 = 0;
  }

  else
  {
    v11 = v18[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_birthdayEventsFromDataSource
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014BD8;
  v7[3] = &unk_100025A78;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider birthdaysWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("birthdaysWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_bestTimeToInteractFromDataSourceWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100009940;
    v19 = sub_100009950;
    v20 = 0;
    v12 = 0;
    v13[0] = &v12;
    v13[1] = 0x3032000000;
    v13[2] = sub_100009940;
    v13[3] = sub_100009950;
    v14 = 0;
    provider = self->_provider;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000150F4;
    v11[3] = &unk_100025A50;
    v11[4] = &v15;
    v11[5] = &v12;
    [(ATXHeuristicDataSources *)provider hourOfDayInteractionProbabilitiesWithContact:contactCopy callback:v11];
    if (*(v13[0] + 40))
    {
      v6 = sub_100001940();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        Name = sel_getName("hourOfDayInteractionProbabilitiesWithContact:callback:");
        sub_10001704C(Name, v13);
      }

      v8 = 0;
    }

    else
    {
      v8 = v16[5];
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1000171D4();
    }

    v8 = 0;
  }

  return v8;
}

- (id)_timeIntervalSinceUserWakeup
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001535C;
  v7[3] = &unk_100025A00;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider timeIntervalSinceUserWakeupWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("timeIntervalSinceUserWakeupWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_fetchWidgetMetadataForAppBundleIds:(id)ids
{
  idsCopy = ids;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100009940;
  v18 = sub_100009950;
  v19 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = sub_100009940;
  v12[3] = sub_100009950;
  v13 = 0;
  provider = self->_provider;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000155E0;
  v10[3] = &unk_100025A50;
  v10[4] = &v14;
  v10[5] = &v11;
  [(ATXHeuristicDataSources *)provider fetchWidgetMetadataForAppBundleIds:idsCopy callback:v10];
  if (*(v12[0] + 40))
  {
    v6 = sub_100001940();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("fetchWidgetMetadataForAppBundleIds:callback:");
      sub_10001704C(Name, v12);
    }

    v8 = 0;
  }

  else
  {
    v8 = v15[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)_getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100009940;
  v21 = sub_100009950;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100009940;
  v15[3] = sub_100009950;
  v16 = 0;
  provider = self->_provider;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015878;
  v13[3] = &unk_100025A50;
  v13[4] = &v17;
  v13[5] = &v14;
  [(ATXHeuristicDataSources *)provider getLocationForMostRelevantTripInRangeFrom:fromCopy to:toCopy callback:v13];
  if (*(v15[0] + 40))
  {
    v9 = sub_100001940();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("getLocationForMostRelevantTripInRangeFrom:to:callback:");
      sub_10001704C(Name, v15);
    }

    v11 = 0;
  }

  else
  {
    v11 = v18[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)_modeCorrelatedAppsInCurrentMode
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100009940;
  v15 = sub_100009950;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = sub_100009940;
  v9[3] = sub_100009950;
  v10 = 0;
  provider = self->_provider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015AE0;
  v7[3] = &unk_100025B18;
  v7[4] = &v11;
  v7[5] = &v8;
  [(ATXHeuristicDataSources *)provider modeCorrelatedAppsInCurrentModeWithCallback:v7];
  if (*(v9[0] + 40))
  {
    v3 = sub_100001940();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("modeCorrelatedAppsInCurrentModeWithCallback:");
      sub_10001704C(Name, v9);
    }

    v5 = 0;
  }

  else
  {
    v5 = v12[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)_scheduledBedTime
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100009940;
  v16 = sub_100009950;
  v17 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = sub_100009940;
  v10[3] = sub_100009950;
  v11 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015E2C;
  v8[3] = &unk_100025A00;
  v8[4] = &v12;
  v8[5] = &v9;
  v3 = objc_retainBlock(v8);
  [(ATXHeuristicDataSources *)self->_provider scheduledBedTimeWithCallback:v3];
  if (*(v10[0] + 40))
  {
    v4 = sub_100001940();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("scheduledBedTimeWithCallback:");
      sub_10001704C(Name, v10);
    }

    v6 = 0;
  }

  else
  {
    v6 = v13[5];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)_predictedBedTime
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100009940;
  v16 = sub_100009950;
  v17 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = sub_100009940;
  v10[3] = sub_100009950;
  v11 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000160B0;
  v8[3] = &unk_100025A00;
  v8[4] = &v12;
  v8[5] = &v9;
  v3 = objc_retainBlock(v8);
  [(ATXHeuristicDataSources *)self->_provider predictedBedTimeWithCallback:v3];
  if (*(v10[0] + 40))
  {
    v4 = sub_100001940();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName("predictedBedTimeWithCallback:");
      sub_10001704C(Name, v10);
    }

    v6 = 0;
  }

  else
  {
    v6 = v13[5];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)mockClipboardContent:(id)content createdAt:(id)at fromBundleId:(id)id
{
  contentCopy = content;
  atCopy = at;
  idCopy = id;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100016290;
  v15[3] = &unk_100025B40;
  objc_copyWeak(&v19, &location);
  v11 = contentCopy;
  v16 = v11;
  v12 = atCopy;
  v17 = v12;
  v13 = idCopy;
  v18 = v13;
  v14 = objc_retainBlock(v15);
  [(JSContext *)self->_jsContext setObject:v14 forKeyedSubscript:@"getClipboard"];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)mockMidnightAndGetHolidayEventsToday:(double)today
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016484;
  v5[3] = &unk_100025B60;
  *&v5[4] = today;
  v4 = objc_retainBlock(v5);
  [(JSContext *)self->_jsContext setObject:v4 forKeyedSubscript:@"getHolidayEvents"];
}

- (void)mockMidnightAndGetHolidayEventsTomorrow:(double)tomorrow
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000165F8;
  v5[3] = &unk_100025B60;
  *&v5[4] = tomorrow;
  v4 = objc_retainBlock(v5);
  [(JSContext *)self->_jsContext setObject:v4 forKeyedSubscript:@"getHolidayEvents"];
}

- (void)mockDataSource:(id)source returning:(id)returning
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000167A4;
  v9[3] = &unk_100025B88;
  returningCopy = returning;
  v6 = returningCopy;
  sourceCopy = source;
  v8 = objc_retainBlock(v9);
  [(ATXHeuristicJSEnv *)self mockDataSource:sourceCopy block:v8];
}

- (void)mockEventTravelTimeWithDuration:(double)duration
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016854;
  v5[3] = &unk_100025BA8;
  *&v5[4] = duration;
  v4 = objc_retainBlock(v5);
  [(JSContext *)self->_jsContext setObject:v4 forKeyedSubscript:@"getEventTravelTime"];
}

- (void)mockUsesTwelveHourClock:(BOOL)clock
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016A14;
  v6[3] = &unk_100025BD0;
  objc_copyWeak(&v7, &location);
  clockCopy = clock;
  v5 = objc_retainBlock(v6);
  [(JSContext *)self->_jsContext setObject:v5 forKeyedSubscript:@"isEventAtOne"];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end