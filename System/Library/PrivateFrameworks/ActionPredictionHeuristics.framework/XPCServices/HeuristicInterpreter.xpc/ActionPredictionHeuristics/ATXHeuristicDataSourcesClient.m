@interface ATXHeuristicDataSourcesClient
- (ATXHeuristicDataSourcesClient)initWithListenerEndpoint:(id)a3;
- (ATXHeuristicDataSourcesClient)initWithXPCConnectionForTesting:(id)a3;
- (id)_queryProxySynchronouslyWithTimeout:(double)a3 queryHandler:(id)a4;
- (void)alarmTimeOfDay:(id)a3;
- (void)alarmsFromDate:(id)a3 toDate:(id)a4 completionHandler:(id)a5;
- (void)allHandlesForContact:(id)a3 callback:(id)a4;
- (void)batteryInformationWithCallback:(id)a3;
- (void)bestAppSuggestionWithCallback:(id)a3;
- (void)bestHandleForContact:(id)a3 service:(id)a4 callback:(id)a5;
- (void)birthdaysWithCallback:(id)a3;
- (void)calendarEventsFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5;
- (void)contactsWithEmail:(id)a3 callback:(id)a4;
- (void)contactsWithIdentifiers:(id)a3 callback:(id)a4;
- (void)contactsWithName:(id)a3 callback:(id)a4;
- (void)contactsWithPhone:(id)a3 callback:(id)a4;
- (void)contentsWithCallback:(id)a3;
- (void)dealloc;
- (void)duetInteractionCountForHandles:(id)a3 sinceDate:(id)a4 callback:(id)a5;
- (void)favoritesWithContacts:(id)a3 callback:(id)a4;
- (void)fetchWidgetMetadataForAppBundleIds:(id)a3 callback:(id)a4;
- (void)flightStatusForFlight:(id)a3 callback:(id)a4;
- (void)getEventsWithProminentFeature:(id)a3 callback:(id)a4;
- (void)getLocationForMostRelevantTripInRangeFrom:(id)a3 to:(id)a4 callback:(id)a5;
- (void)holidaysFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5;
- (void)hourOfDayInteractionProbabilitiesWithContact:(id)a3 callback:(id)a4;
- (void)isFocusModeActive:(id)a3;
- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)a3;
- (void)nlEventsWithCallback:(id)a3;
- (void)obtainOneTimeLocationWithCallback:(id)a3;
- (void)passesWithStyle:(id)a3 callback:(id)a4;
- (void)peopleSuggestionsWithCallback:(id)a3;
- (void)predictedBedTimeWithCallback:(id)a3;
- (void)preferredAppForIntentName:(id)a3 andParameterCombination:(id)a4 callback:(id)a5;
- (void)scheduledBedTimeWithCallback:(id)a3;
- (void)timeIntervalSinceUserWakeupWithCallback:(id)a3;
- (void)unreadMessagesWithLimit:(int64_t)a3 callback:(id)a4;
- (void)vipsWithCallback:(id)a3;
- (void)visibleCalendarsWithCallback:(id)a3;
@end

@implementation ATXHeuristicDataSourcesClient

- (ATXHeuristicDataSourcesClient)initWithListenerEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100006AF0(a2, self);
  }

  v11.receiver = self;
  v11.super_class = ATXHeuristicDataSourcesClient;
  v6 = [(ATXHeuristicDataSourcesClient *)&v11 init];
  if (v6)
  {
    v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = ATXHeuristicDataSourcesInterface();
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
  }

  return v6;
}

- (ATXHeuristicDataSourcesClient)initWithXPCConnectionForTesting:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_100006B6C(a2, self);
  }

  v10.receiver = self;
  v10.super_class = ATXHeuristicDataSourcesClient;
  v7 = [(ATXHeuristicDataSourcesClient *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_xpcConnection, a3);
  }

  return v8;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXHeuristicDataSourcesClient;
  [(ATXHeuristicDataSourcesClient *)&v3 dealloc];
}

- (id)_queryProxySynchronouslyWithTimeout:(double)a3 queryHandler:(id)a4
{
  v6 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000045EC;
  v39 = sub_1000045FC;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v7 = dispatch_semaphore_create(0);
  xpcConnection = self->_xpcConnection;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100004604;
  v27[3] = &unk_100024C58;
  v27[4] = self;
  v29 = &v31;
  v30 = &v35;
  v9 = v7;
  v28 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v27];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000046AC;
  v22 = &unk_100024C58;
  v23 = self;
  v25 = &v31;
  v26 = &v35;
  v11 = v9;
  v24 = v11;
  v12 = objc_retainBlock(&v19);
  (v6)[2](v6, v10, v12);
  if ([_PASDispatch waitForSemaphore:v11 timeoutSeconds:a3, v19, v20, v21, v22, v23]== 1)
  {
    v13 = self;
    objc_sync_enter(v13);
    if ((v32[3] & 1) == 0)
    {
      *(v32 + 24) = 1;
      v14 = sub_100001940();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100006BE8(v14);
      }

      v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:1 userInfo:0];
      v16 = v36[5];
      v36[5] = v15;
    }

    objc_sync_exit(v13);
  }

  v17 = v36[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v17;
}

- (void)getEventsWithProminentFeature:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000045EC;
  v17 = sub_1000045FC;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004898;
  v10[3] = &unk_100024CA8;
  v8 = v6;
  v11 = v8;
  v12 = &v13;
  v9 = [(ATXHeuristicDataSourcesClient *)self _queryProxySynchronouslyWithTimeout:v10 queryHandler:5.0];
  v7[2](v7, v14[5], v9);

  _Block_object_dispose(&v13, 8);
}

- (void)calendarEventsFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000045EC;
  v22 = sub_1000045FC;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004B34;
  v14[3] = &unk_100024CD0;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v18;
  v13 = [(ATXHeuristicDataSourcesClient *)self _queryProxySynchronouslyWithTimeout:v14 queryHandler:5.0];
  v10[2](v10, v19[5], v13);

  _Block_object_dispose(&v18, 8);
}

- (void)visibleCalendarsWithCallback:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000045EC;
  v11 = sub_1000045FC;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004D84;
  v6[3] = &unk_100024CF8;
  v6[4] = &v7;
  v5 = [(ATXHeuristicDataSourcesClient *)self _queryProxySynchronouslyWithTimeout:v6 queryHandler:5.0];
  v4[2](v4, v8[5], v5);

  _Block_object_dispose(&v7, 8);
}

- (void)flightStatusForFlight:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004F6C;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 flightStatusForFlight:v9 callback:v8];
}

- (void)birthdaysWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005030;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 birthdaysWithCallback:v6];
}

- (void)holidaysFromStartDate:(id)a3 toEndDate:(id)a4 callback:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005124;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 holidaysFromStartDate:v12 toEndDate:v11 callback:v10];
}

- (void)passesWithStyle:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005204;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 passesWithStyle:v9 callback:v8];
}

- (void)bestAppSuggestionWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000052C8;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 bestAppSuggestionWithCallback:v6];
}

- (void)preferredAppForIntentName:(id)a3 andParameterCombination:(id)a4 callback:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000054F0;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 preferredAppForIntentName:v12 andParameterCombination:v11 callback:v10];
}

- (void)contentsWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000055B4;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 contentsWithCallback:v6];
}

- (void)vipsWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005680;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 vipsWithCallback:v6];
}

- (void)nlEventsWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005840;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 nlEventsWithCallback:v6];
}

- (void)allHandlesForContact:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005920;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 allHandlesForContact:v9 callback:v8];
}

- (void)bestHandleForContact:(id)a3 service:(id)a4 callback:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005A14;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 bestHandleForContact:v12 service:v11 callback:v10];
}

- (void)favoritesWithContacts:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005AF4;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 favoritesWithContacts:v9 callback:v8];
}

- (void)contactsWithIdentifiers:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005BD4;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 contactsWithIdentifiers:v9 callback:v8];
}

- (void)contactsWithName:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005CB4;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 contactsWithName:v9 callback:v8];
}

- (void)contactsWithEmail:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005D94;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 contactsWithEmail:v9 callback:v8];
}

- (void)contactsWithPhone:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005E74;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 contactsWithPhone:v9 callback:v8];
}

- (void)alarmsFromDate:(id)a3 toDate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005F68;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 alarmsFromDate:v12 toDate:v11 completionHandler:v10];
}

- (void)alarmTimeOfDay:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000602C;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 alarmTimeOfDay:v6];
}

- (void)isFocusModeActive:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000060F0;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 isFocusModeActive:v6];
}

- (void)duetInteractionCountForHandles:(id)a3 sinceDate:(id)a4 callback:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000061E4;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 duetInteractionCountForHandles:v12 sinceDate:v11 callback:v10];
}

- (void)obtainOneTimeLocationWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000062A8;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 obtainOneTimeLocationWithCallback:v6];
}

- (void)unreadMessagesWithLimit:(int64_t)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000637C;
  v10[3] = &unk_100024D20;
  v11 = v6;
  v8 = v6;
  v9 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  [v9 unreadMessagesWithLimit:a3 callback:v8];
}

- (void)peopleSuggestionsWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006440;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 peopleSuggestionsWithCallback:v6];
}

- (void)hourOfDayInteractionProbabilitiesWithContact:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006520;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 hourOfDayInteractionProbabilitiesWithContact:v9 callback:v8];
}

- (void)timeIntervalSinceUserWakeupWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000065E4;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 timeIntervalSinceUserWakeupWithCallback:v6];
}

- (void)batteryInformationWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000066A8;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 batteryInformationWithCallback:v6];
}

- (void)fetchWidgetMetadataForAppBundleIds:(id)a3 callback:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006788;
  v11[3] = &unk_100024D20;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 fetchWidgetMetadataForAppBundleIds:v9 callback:v8];
}

- (void)getLocationForMostRelevantTripInRangeFrom:(id)a3 to:(id)a4 callback:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000687C;
  v14[3] = &unk_100024D20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 getLocationForMostRelevantTripInRangeFrom:v12 to:v11 callback:v10];
}

- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006940;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 modeCorrelatedAppsInCurrentModeWithCallback:v6];
}

- (void)predictedBedTimeWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006A08;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 predictedBedTimeWithCallback:v6];
}

- (void)scheduledBedTimeWithCallback:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006ACC;
  v8[3] = &unk_100024D20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 scheduledBedTimeWithCallback:v6];
}

@end