@interface ATXHeuristicDataSourcesServer
- (ATXHeuristicDataSourcesServer)initWithDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (void)alarmTimeOfDay:(id)day;
- (void)alarmsFromDate:(id)date toDate:(id)toDate completionHandler:(id)handler;
- (void)allHandlesForContact:(id)contact callback:(id)callback;
- (void)batteryInformationWithCallback:(id)callback;
- (void)bestAppSuggestionWithCallback:(id)callback;
- (void)bestHandleForContact:(id)contact service:(id)service callback:(id)callback;
- (void)birthdaysWithCallback:(id)callback;
- (void)calendarEventsFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback;
- (void)contactsWithEmail:(id)email callback:(id)callback;
- (void)contactsWithIdentifiers:(id)identifiers callback:(id)callback;
- (void)contactsWithName:(id)name callback:(id)callback;
- (void)contactsWithPhone:(id)phone callback:(id)callback;
- (void)contentsWithCallback:(id)callback;
- (void)dealloc;
- (void)duetInteractionCountForHandles:(id)handles sinceDate:(id)date callback:(id)callback;
- (void)favoritesWithContacts:(id)contacts callback:(id)callback;
- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback;
- (void)flightStatusForFlight:(id)flight callback:(id)callback;
- (void)getEventsWithProminentFeature:(id)feature callback:(id)callback;
- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback;
- (void)holidaysFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback;
- (void)hourOfDayInteractionProbabilitiesWithContact:(id)contact callback:(id)callback;
- (void)isFocusModeActive:(id)active;
- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)callback;
- (void)nlEventsWithCallback:(id)callback;
- (void)obtainOneTimeLocationWithCallback:(id)callback;
- (void)passesWithStyle:(id)style callback:(id)callback;
- (void)peopleSuggestionsWithCallback:(id)callback;
- (void)predictedBedTimeWithCallback:(id)callback;
- (void)preferredAppForIntentName:(id)name andParameterCombination:(id)combination callback:(id)callback;
- (void)scheduledBedTimeWithCallback:(id)callback;
- (void)timeIntervalSinceUserWakeupWithCallback:(id)callback;
- (void)unreadMessagesWithLimit:(int64_t)limit callback:(id)callback;
- (void)vipsWithCallback:(id)callback;
- (void)visibleCalendarsWithCallback:(id)callback;
@end

@implementation ATXHeuristicDataSourcesServer

- (ATXHeuristicDataSourcesServer)initWithDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    [(ATXHeuristicDataSourcesServer *)a2 initWithDevice:?];
  }

  v10.receiver = self;
  v10.super_class = ATXHeuristicDataSourcesServer;
  v7 = [(ATXHeuristicDataSourcesServer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_device, device);
  }

  return v8;
}

- (NSXPCListenerEndpoint)listenerEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listener = selfCopy->_listener;
  if (!listener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    v5 = selfCopy->_listener;
    selfCopy->_listener = anonymousListener;

    [(NSXPCListener *)selfCopy->_listener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_listener resume];
    listener = selfCopy->_listener;
  }

  endpoint = [(NSXPCListener *)listener endpoint];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXHeuristicDataSourcesServer;
  [(ATXHeuristicDataSourcesServer *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = ATXHeuristicDataSourcesInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)getEventsWithProminentFeature:(id)feature callback:(id)callback
{
  featureCopy = feature;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXExtraordinaryEventsDataSource alloc] initWithDevice:self->_device];
  [(ATXExtraordinaryEventsDataSource *)v8 getEventsWithProminentFeature:featureCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)calendarEventsFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback
{
  dateCopy = date;
  endDateCopy = endDate;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXCalendarEventsDataSource alloc] initWithDevice:self->_device];
  [(ATXCalendarEventsDataSource *)v11 calendarEventsFromStartDate:dateCopy toEndDate:endDateCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)visibleCalendarsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXCalendarEventsDataSource alloc] initWithDevice:self->_device];
  [(ATXCalendarEventsDataSource *)v5 visibleCalendarsWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)flightStatusForFlight:(id)flight callback:(id)callback
{
  flightCopy = flight;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXFlightStatusDataSource alloc] initWithDevice:self->_device];
  [(ATXFlightStatusDataSource *)v8 flightStatusForFlight:flightCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)birthdaysWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXBirthdaysDataSource alloc] initWithDevice:self->_device];
  [(ATXBirthdaysDataSource *)v5 birthdaysWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)holidaysFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback
{
  dateCopy = date;
  endDateCopy = endDate;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXHolidaysDataSource alloc] initWithDevice:self->_device];
  [(ATXHolidaysDataSource *)v11 holidaysFromStartDate:dateCopy toEndDate:endDateCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)passesWithStyle:(id)style callback:(id)callback
{
  styleCopy = style;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXWalletDataSource alloc] initWithDevice:self->_device];
  [(ATXWalletDataSource *)v8 passesWithStyle:styleCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)bestAppSuggestionWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXBestAppDataSource alloc] initWithDevice:self->_device];
  [(ATXBestAppDataSource *)v5 bestAppSuggestionWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)preferredAppForIntentName:(id)name andParameterCombination:(id)combination callback:(id)callback
{
  nameCopy = name;
  combinationCopy = combination;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXUserAppPreferenceDataSource alloc] initWithDevice:self->_device];
  [(ATXUserAppPreferenceDataSource *)v11 preferredAppForIntentName:nameCopy andParameterCombination:combinationCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)contentsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXClipboardContents alloc] initWithDevice:self->_device];
  [(ATXClipboardContents *)v5 contentsWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)vipsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXVIPsDataSource alloc] initWithDevice:self->_device];
  [(ATXVIPsDataSource *)v5 vipsWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)nlEventsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXNLEventsDataSource alloc] initWithDevice:self->_device];
  [(ATXNLEventsDataSource *)v5 nlEventsWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)allHandlesForContact:(id)contact callback:(id)callback
{
  contactCopy = contact;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXBestContactHandleForServiceDataSource alloc] initWithDevice:self->_device];
  [(ATXBestContactHandleForServiceDataSource *)v8 allHandlesForContact:contactCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)bestHandleForContact:(id)contact service:(id)service callback:(id)callback
{
  contactCopy = contact;
  serviceCopy = service;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXBestContactHandleForServiceDataSource alloc] initWithDevice:self->_device];
  [(ATXBestContactHandleForServiceDataSource *)v11 bestHandleForContact:contactCopy service:serviceCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)favoritesWithContacts:(id)contacts callback:(id)callback
{
  contactsCopy = contacts;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXFavoriteContactDataSource alloc] initWithDevice:self->_device];
  [(ATXFavoriteContactDataSource *)v8 favoritesWithContacts:contactsCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)contactsWithIdentifiers:(id)identifiers callback:(id)callback
{
  identifiersCopy = identifiers;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXContactsDataSource alloc] initWithDevice:self->_device];
  [(ATXContactsDataSource *)v8 contactsWithIdentifiers:identifiersCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)contactsWithName:(id)name callback:(id)callback
{
  nameCopy = name;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXContactsDataSource alloc] initWithDevice:self->_device];
  [(ATXContactsDataSource *)v8 contactsWithName:nameCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)contactsWithEmail:(id)email callback:(id)callback
{
  emailCopy = email;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXContactsDataSource alloc] initWithDevice:self->_device];
  [(ATXContactsDataSource *)v8 contactsWithEmail:emailCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)contactsWithPhone:(id)phone callback:(id)callback
{
  phoneCopy = phone;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXContactsDataSource alloc] initWithDevice:self->_device];
  [(ATXContactsDataSource *)v8 contactsWithPhone:phoneCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)alarmsFromDate:(id)date toDate:(id)toDate completionHandler:(id)handler
{
  dateCopy = date;
  toDateCopy = toDate;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXAlarmsDataSource alloc] initWithDevice:self->_device];
  [(ATXAlarmsDataSource *)v11 alarmsFromDate:dateCopy toDate:toDateCopy completionHandler:handlerCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)alarmTimeOfDay:(id)day
{
  dayCopy = day;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXSetAlarmTimeOfDayDataSource alloc] initWithDevice:self->_device];
  [(ATXSetAlarmTimeOfDayDataSource *)v5 alarmTimeOfDay:dayCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)isFocusModeActive:(id)active
{
  activeCopy = active;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXFocusModeDataSource alloc] initWithDevice:self->_device];
  [(ATXFocusModeDataSource *)v5 isFocusModeActive:activeCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)duetInteractionCountForHandles:(id)handles sinceDate:(id)date callback:(id)callback
{
  handlesCopy = handles;
  dateCopy = date;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXDuetInteractionDataSource alloc] initWithDevice:self->_device];
  [(ATXDuetInteractionDataSource *)v11 duetInteractionCountForHandles:handlesCopy sinceDate:dateCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)obtainOneTimeLocationWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXCurrentLocationDataSource alloc] initWithDevice:self->_device];
  [(ATXCurrentLocationDataSource *)v5 obtainOneTimeLocationWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)unreadMessagesWithLimit:(int64_t)limit callback:(id)callback
{
  callbackCopy = callback;
  v6 = objc_autoreleasePoolPush();
  v7 = [[ATXUnreadMessagesDataSource alloc] initWithDevice:self->_device];
  [(ATXUnreadMessagesDataSource *)v7 unreadMessagesWithLimit:limit callback:callbackCopy];

  objc_autoreleasePoolPop(v6);
}

- (void)peopleSuggestionsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXPeopleSuggesterDataSource alloc] initWithDevice:self->_device];
  [(ATXPeopleSuggesterDataSource *)v5 peopleSuggestionsWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)hourOfDayInteractionProbabilitiesWithContact:(id)contact callback:(id)callback
{
  contactCopy = contact;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXBestTimeToInteractWithContactDataSource alloc] initWithDevice:self->_device];
  [(ATXBestTimeToInteractWithContactDataSource *)v8 hourOfDayInteractionProbabilitiesWithContact:contactCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)timeIntervalSinceUserWakeupWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXTimeSinceUserWakeupDataSource alloc] initWithDevice:self->_device];
  [(ATXTimeSinceUserWakeupDataSource *)v5 timeIntervalSinceUserWakeupWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)batteryInformationWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXBatteryDataSource alloc] initWithDevice:self->_device];
  [(ATXBatteryDataSource *)v5 batteryInformationWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback
{
  idsCopy = ids;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  v8 = [[ATXWidgetMetadataDataSource alloc] initWithDevice:self->_device];
  [(ATXWidgetMetadataDataSource *)v8 fetchWidgetMetadataForAppBundleIds:idsCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback
{
  fromCopy = from;
  toCopy = to;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  v11 = [[ATXTripEventsDataSource alloc] initWithDevice:self->_device];
  [(ATXTripEventsDataSource *)v11 getLocationForMostRelevantTripInRangeFrom:fromCopy to:toCopy callback:callbackCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXModeCorrelatedAppsDataSource alloc] initWithDevice:self->_device];
  [(ATXModeCorrelatedAppsDataSource *)v5 modeCorrelatedAppsInCurrentModeWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)scheduledBedTimeWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXChangeAlarmBeforeHolidayDataSource alloc] initWithDevice:self->_device];
  [(ATXChangeAlarmBeforeHolidayDataSource *)v5 scheduledBedTimeWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)predictedBedTimeWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = objc_autoreleasePoolPush();
  v5 = [[ATXChangeAlarmBeforeHolidayDataSource alloc] initWithDevice:self->_device];
  [(ATXChangeAlarmBeforeHolidayDataSource *)v5 predictedBedTimeWithCallback:callbackCopy];

  objc_autoreleasePoolPop(v4);
}

- (void)initWithDevice:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXHeuristicDataSourcesProtocol.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"device"}];
}

@end