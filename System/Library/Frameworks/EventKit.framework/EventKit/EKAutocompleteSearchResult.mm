@interface EKAutocompleteSearchResult
+ (id)_copyAlarmsForAutocompleteFromResult:(id)result;
- (BOOL)isDifferentEnoughFromInitialEvent:(id)event consideringTimeProperties:(BOOL)properties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReminder;
- (EKAutocompleteSearchResult)initWithSource:(unint64_t)source;
- (EKStructuredLocation)preferredLocation;
- (NSString)descriptionForDebugging;
- (NSString)uniqueID;
- (id)_attendeesForSuggestedEventFromAttendees:(id)attendees;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventRepresentingSelf;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAttendees:(id)attendees;
- (void)setCalendarColor:(CGColor *)color;
- (void)updateEventFromSelf:(id)self updateTimeProperties:(BOOL)properties updateTravelTimeProperties:(BOOL)timeProperties updateMode:(unint64_t)mode overrideCalendar:(id)calendar;
- (void)updateSelfFromEvent:(id)event;
@end

@implementation EKAutocompleteSearchResult

- (EKAutocompleteSearchResult)initWithSource:(unint64_t)source
{
  v5.receiver = self;
  v5.super_class = EKAutocompleteSearchResult;
  result = [(EKAutocompleteSearchResult *)&v5 init];
  if (result)
  {
    result->_source = source;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_calendarColor);
  v3.receiver = self;
  v3.super_class = EKAutocompleteSearchResult;
  [(EKAutocompleteSearchResult *)&v3 dealloc];
}

- (NSString)uniqueID
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(EKAutocompleteSearchResult *)self title];
  startDate = [(EKAutocompleteSearchResult *)self startDate];
  endDate = [(EKAutocompleteSearchResult *)self endDate];
  calendar = [(EKAutocompleteSearchResult *)self calendar];
  title2 = [calendar title];
  v9 = [v3 stringWithFormat:@"%@-%@-%@-%@", title, startDate, endDate, title2];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = [(EKAutocompleteSearchResult *)self title];
    title2 = [v5 title];
    if (CalEqualObjects() && (v8 = -[EKAutocompleteSearchResult allDay](self, "allDay"), v8 == [v5 allDay]))
    {
      calendar = [(EKAutocompleteSearchResult *)self calendar];
      calendar2 = [v5 calendar];
      if (CalEqualObjects())
      {
        startDate = [(EKAutocompleteSearchResult *)self startDate];
        startDate2 = [v5 startDate];
        if (CalEqualObjects())
        {
          endDate = [(EKAutocompleteSearchResult *)self endDate];
          endDate2 = [v5 endDate];
          v9 = CalEqualObjects();
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  title = [(EKAutocompleteSearchResult *)self title];
  trimWhiteSpace = [title trimWhiteSpace];
  lowercaseString = [trimWhiteSpace lowercaseString];
  v5 = [lowercaseString hash];

  return v5;
}

- (NSString)descriptionForDebugging
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v29.receiver = self;
  v29.super_class = EKAutocompleteSearchResult;
  v4 = [(EKAutocompleteSearchResult *)&v29 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  source = [(EKAutocompleteSearchResult *)self source];
  v7 = [(EKAutocompleteSearchResult *)self source]- 1;
  if (v7 > 3)
  {
    v8 = @"Historical";
  }

  else
  {
    v8 = off_1E77FD850[v7];
  }

  [v5 setKey:@"source" withEnumNumericalValue:source andStringValue:v8];
  title = [(EKAutocompleteSearchResult *)self title];
  [v5 setKey:@"title" withString:title];

  startDate = [(EKAutocompleteSearchResult *)self startDate];
  [v5 setKey:@"startDate" withDate:startDate];

  endDate = [(EKAutocompleteSearchResult *)self endDate];
  [v5 setKey:@"endDate" withDate:endDate];

  timeZone = [(EKAutocompleteSearchResult *)self timeZone];
  [v5 setKey:@"timeZone" withObject:timeZone];

  [v5 setKey:@"allDay" withBoolean:{-[EKAutocompleteSearchResult allDay](self, "allDay")}];
  clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];
  [v5 setKey:@"clientLocation" withObject:clientLocation];

  structuredLocation = [(EKAutocompleteSearchResult *)self structuredLocation];
  [v5 setKey:@"structuredLocation" withObject:structuredLocation];

  alarms = [(EKAutocompleteSearchResult *)self alarms];
  [v5 setKey:@"alarms" withArray:alarms];

  attendees = [(EKAutocompleteSearchResult *)self attendees];
  [v5 setKey:@"attendees" withArray:attendees];

  v17 = [(EKAutocompleteSearchResult *)self URL];
  [v5 setKey:@"URL" withObject:v17];

  notes = [(EKAutocompleteSearchResult *)self notes];
  [v5 setKey:@"notes" withString:notes];

  calendar = [(EKAutocompleteSearchResult *)self calendar];
  [v5 setKey:@"calendar" withObject:calendar];

  [(EKAutocompleteSearchResult *)self travelTime];
  [v5 setKey:@"travelTime" withTimeInterval:?];
  travelStartLocation = [(EKAutocompleteSearchResult *)self travelStartLocation];
  [v5 setKey:@"travelStartLocation" withObject:travelStartLocation];

  suggestionInfo = [(EKAutocompleteSearchResult *)self suggestionInfo];
  [v5 setKey:@"suggestionInfo" withObject:suggestionInfo];

  [v5 setKey:@"privacyLevel" withEnumNumericalValue:-[EKAutocompleteSearchResult privacyLevel](self andStringValue:{"privacyLevel"), 0}];
  [v5 setKey:@"availability" withEnumNumericalValue:-[EKAutocompleteSearchResult availability](self andStringValue:{"availability"), 0}];
  localStructuredData = [(EKAutocompleteSearchResult *)self localStructuredData];
  [v5 setKey:@"localStructuredData" withObject:localStructuredData];

  [v5 setKey:@"calendarColor" withCGColor:{-[EKAutocompleteSearchResult calendarColor](self, "calendarColor")}];
  foundInBundleID = [(EKAutocompleteSearchResult *)self foundInBundleID];
  [v5 setKey:@"foundInBundleID" withString:foundInBundleID];

  displayLocation = [(EKAutocompleteSearchResult *)self displayLocation];
  [v5 setKey:@"displayLocation" withString:displayLocation];

  displayLocationWithoutPrediction = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];
  [v5 setKey:@"displayLocationWithoutPrediction" withString:displayLocationWithoutPrediction];

  pasteboardResults = [(EKAutocompleteSearchResult *)self pasteboardResults];
  [v5 setKey:@"pasteboardResults" withArray:pasteboardResults];

  build = [v5 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[EKAutocompleteSearchResult alloc] initWithSource:[(EKAutocompleteSearchResult *)self source]];
  title = [(EKAutocompleteSearchResult *)self title];
  [(EKAutocompleteSearchResult *)v4 setTitle:title];

  startDate = [(EKAutocompleteSearchResult *)self startDate];
  [(EKAutocompleteSearchResult *)v4 setStartDate:startDate];

  endDate = [(EKAutocompleteSearchResult *)self endDate];
  [(EKAutocompleteSearchResult *)v4 setEndDate:endDate];

  timeZone = [(EKAutocompleteSearchResult *)self timeZone];
  [(EKAutocompleteSearchResult *)v4 setTimeZone:timeZone];

  [(EKAutocompleteSearchResult *)v4 setAllDay:[(EKAutocompleteSearchResult *)self allDay]];
  clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];
  [(EKAutocompleteSearchResult *)v4 setClientLocation:clientLocation];

  structuredLocation = [(EKAutocompleteSearchResult *)self structuredLocation];
  [(EKAutocompleteSearchResult *)v4 setStructuredLocation:structuredLocation];

  alarms = [(EKAutocompleteSearchResult *)self alarms];
  [(EKAutocompleteSearchResult *)v4 setAlarms:alarms];

  attendees = [(EKAutocompleteSearchResult *)self attendees];
  [(EKAutocompleteSearchResult *)v4 setAttendees:attendees];

  v13 = [(EKAutocompleteSearchResult *)self URL];
  [(EKAutocompleteSearchResult *)v4 setURL:v13];

  notes = [(EKAutocompleteSearchResult *)self notes];
  [(EKAutocompleteSearchResult *)v4 setNotes:notes];

  calendar = [(EKAutocompleteSearchResult *)self calendar];
  [(EKAutocompleteSearchResult *)v4 setCalendar:calendar];

  [(EKAutocompleteSearchResult *)self travelTime];
  [(EKAutocompleteSearchResult *)v4 setTravelTime:?];
  travelStartLocation = [(EKAutocompleteSearchResult *)self travelStartLocation];
  [(EKAutocompleteSearchResult *)v4 setTravelStartLocation:travelStartLocation];

  suggestionInfo = [(EKAutocompleteSearchResult *)self suggestionInfo];
  [(EKAutocompleteSearchResult *)v4 setSuggestionInfo:suggestionInfo];

  [(EKAutocompleteSearchResult *)v4 setPrivacyLevel:[(EKAutocompleteSearchResult *)self privacyLevel]];
  [(EKAutocompleteSearchResult *)v4 setAvailability:[(EKAutocompleteSearchResult *)self availability]];
  localStructuredData = [(EKAutocompleteSearchResult *)self localStructuredData];
  [(EKAutocompleteSearchResult *)v4 setLocalStructuredData:localStructuredData];

  [(EKAutocompleteSearchResult *)v4 setCalendarColor:[(EKAutocompleteSearchResult *)self calendarColor]];
  foundInBundleID = [(EKAutocompleteSearchResult *)self foundInBundleID];
  [(EKAutocompleteSearchResult *)v4 setFoundInBundleID:foundInBundleID];

  displayLocation = [(EKAutocompleteSearchResult *)self displayLocation];
  [(EKAutocompleteSearchResult *)v4 setDisplayLocation:displayLocation];

  displayLocationWithoutPrediction = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];
  [(EKAutocompleteSearchResult *)v4 setDisplayLocationWithoutPrediction:displayLocationWithoutPrediction];

  pasteboardResults = [(EKAutocompleteSearchResult *)self pasteboardResults];
  [(EKAutocompleteSearchResult *)v4 setPasteboardResults:pasteboardResults];

  return v4;
}

- (void)setCalendarColor:(CGColor *)color
{
  calendarColor = self->_calendarColor;
  if (calendarColor != color)
  {
    CGColorRelease(calendarColor);
    self->_calendarColor = CGColorRetain(color);
  }
}

- (id)_attendeesForSuggestedEventFromAttendees:(id)attendees
{
  v23 = *MEMORY[0x1E69E9840];
  attendeesCopy = attendees;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = attendeesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 isCurrentUser] & 1) == 0)
        {
          name = [v10 name];
          v12 = [v10 URL];
          v13 = [EKAttendee attendeeWithName:name url:v12];

          [v13 setParticipantType:{objc_msgSend(v10, "participantType")}];
          emailAddress = [v10 emailAddress];
          [v13 setEmailAddress:emailAddress];

          phoneNumber = [v10 phoneNumber];
          [v13 setPhoneNumber:phoneNumber];

          [array addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)setAttendees:(id)attendees
{
  v4 = [(EKAutocompleteSearchResult *)self _attendeesForSuggestedEventFromAttendees:attendees];
  attendees = self->_attendees;
  self->_attendees = v4;

  MEMORY[0x1EEE66BB8]();
}

- (EKStructuredLocation)preferredLocation
{
  clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];
  structuredLocation = [(EKAutocompleteSearchResult *)self structuredLocation];
  v5 = [EKCalendarItem preferredLocationWithClientLocation:clientLocation structuredLocation:structuredLocation];

  return v5;
}

- (void)updateSelfFromEvent:(id)event
{
  eventCopy = event;
  title = [(EKAutocompleteSearchResult *)self title];

  if (!title)
  {
    title2 = [eventCopy title];
    [(EKAutocompleteSearchResult *)self setTitle:title2];
  }

  startDate = [(EKAutocompleteSearchResult *)self startDate];

  if (!startDate)
  {
    startDate2 = [eventCopy startDate];
    [(EKAutocompleteSearchResult *)self setStartDate:startDate2];
  }

  endDate = [(EKAutocompleteSearchResult *)self endDate];

  if (!endDate)
  {
    endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
    [(EKAutocompleteSearchResult *)self setEndDate:endDateUnadjustedForLegacyClients];
  }

  timeZone = [(EKAutocompleteSearchResult *)self timeZone];

  if (!timeZone)
  {
    timeZone2 = [eventCopy timeZone];
    [(EKAutocompleteSearchResult *)self setTimeZone:timeZone2];
  }

  clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];
  if (clientLocation || ([(EKAutocompleteSearchResult *)self structuredLocation], (clientLocation = objc_claimAutoreleasedReturnValue()) != 0) || ([(EKAutocompleteSearchResult *)self displayLocation], (clientLocation = objc_claimAutoreleasedReturnValue()) != 0))
  {
    locationWithoutPrediction = clientLocation;
LABEL_13:

    goto LABEL_14;
  }

  displayLocationWithoutPrediction = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];

  if (!displayLocationWithoutPrediction)
  {
    clientLocation2 = [eventCopy clientLocation];
    [(EKAutocompleteSearchResult *)self setClientLocation:clientLocation2];

    structuredLocation = [eventCopy structuredLocation];
    [(EKAutocompleteSearchResult *)self setStructuredLocation:structuredLocation];

    location = [eventCopy location];
    [(EKAutocompleteSearchResult *)self setDisplayLocation:location];

    locationWithoutPrediction = [eventCopy locationWithoutPrediction];
    [(EKAutocompleteSearchResult *)self setDisplayLocationWithoutPrediction:locationWithoutPrediction];
    goto LABEL_13;
  }

LABEL_14:
  alarms = [(EKAutocompleteSearchResult *)self alarms];
  v15 = [alarms count];

  if (!v15)
  {
    alarms2 = [eventCopy alarms];
    [(EKAutocompleteSearchResult *)self setAlarms:alarms2];
  }

  attendees = [(EKAutocompleteSearchResult *)self attendees];
  v18 = [attendees count];

  if (!v18)
  {
    attendeesNotIncludingOrganizer = [eventCopy attendeesNotIncludingOrganizer];
    [(EKAutocompleteSearchResult *)self setAttendees:attendeesNotIncludingOrganizer];
  }

  v20 = [(EKAutocompleteSearchResult *)self URL];
  if (!v20)
  {
    if ([eventCopy isBirthday])
    {
      goto LABEL_22;
    }

    v20 = [eventCopy URL];
    [(EKAutocompleteSearchResult *)self setURL:v20];
  }

LABEL_22:
  notes = [(EKAutocompleteSearchResult *)self notes];

  if (!notes)
  {
    notes2 = [eventCopy notes];
    [(EKAutocompleteSearchResult *)self setNotes:notes2];
  }

  calendar = [(EKAutocompleteSearchResult *)self calendar];

  if (!calendar)
  {
    calendar2 = [eventCopy calendar];
    [(EKAutocompleteSearchResult *)self setCalendar:calendar2];
  }

  if (![(EKAutocompleteSearchResult *)self calendarColor])
  {
    calendar3 = [eventCopy calendar];
    -[EKAutocompleteSearchResult setCalendarColor:](self, "setCalendarColor:", [calendar3 CGColor]);
  }

  suggestionInfo = [(EKAutocompleteSearchResult *)self suggestionInfo];

  if (!suggestionInfo)
  {
    suggestionInfo2 = [eventCopy suggestionInfo];
    [(EKAutocompleteSearchResult *)self setSuggestionInfo:suggestionInfo2];
  }

  foundInBundleID = [(EKAutocompleteSearchResult *)self foundInBundleID];
  if (foundInBundleID)
  {
    goto LABEL_31;
  }

  suggestionInfo3 = [eventCopy suggestionInfo];

  if (suggestionInfo3)
  {
    foundInBundleID = [eventCopy localCustomObjectForKey:@"SuggestionsOriginBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EKAutocompleteSearchResult *)self setFoundInBundleID:foundInBundleID];
    }

LABEL_31:
  }

  -[EKAutocompleteSearchResult setPrivacyLevel:](self, "setPrivacyLevel:", [eventCopy privacyLevel]);
  -[EKAutocompleteSearchResult setAvailability:](self, "setAvailability:", [eventCopy availability]);
  localStructuredData = [(EKAutocompleteSearchResult *)self localStructuredData];

  if (!localStructuredData)
  {
    localStructuredData2 = [eventCopy localStructuredData];
    [(EKAutocompleteSearchResult *)self setLocalStructuredData:localStructuredData2];
  }
}

- (void)updateEventFromSelf:(id)self updateTimeProperties:(BOOL)properties updateTravelTimeProperties:(BOOL)timeProperties updateMode:(unint64_t)mode overrideCalendar:(id)calendar
{
  timePropertiesCopy = timeProperties;
  propertiesCopy = properties;
  v81 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  calendarCopy = calendar;
  title = [(EKAutocompleteSearchResult *)self title];
  [selfCopy setTitle:title];

  if (calendarCopy)
  {
    calendar = calendarCopy;
  }

  else
  {
    calendar = [(EKAutocompleteSearchResult *)self calendar];
  }

  v15 = calendar;
  if ([selfCopy canMoveToCalendar:calendar error:0])
  {
    [selfCopy setCalendar:v15];
  }

  v67 = v15;
  if (propertiesCopy)
  {
    timeZone = [(EKAutocompleteSearchResult *)self timeZone];
    [selfCopy setTimeZone:timeZone];

    if ([selfCopy changingAllDayPropertyIsAllowed])
    {
      [selfCopy setAllDay:{-[EKAutocompleteSearchResult allDay](self, "allDay")}];
    }

    startDate = [(EKAutocompleteSearchResult *)self startDate];
    [selfCopy setStartDate:startDate];

    endDate = [(EKAutocompleteSearchResult *)self endDate];
    [selfCopy setEndDateUnadjustedForLegacyClients:endDate];
  }

  v70 = selfCopy;
  if (timePropertiesCopy)
  {
    [(EKAutocompleteSearchResult *)self travelTime];
    [selfCopy setTravelTime:?];
    travelStartLocation = [(EKAutocompleteSearchResult *)self travelStartLocation];
    duplicate = [travelStartLocation duplicate];
    [selfCopy setTravelStartLocation:duplicate];
  }

  structuredLocation = [(EKAutocompleteSearchResult *)self structuredLocation];
  if (structuredLocation)
  {

    modeCopy3 = mode;
  }

  else
  {
    clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];

    modeCopy3 = mode;
    if (!clientLocation)
    {
      goto LABEL_20;
    }
  }

  if (!modeCopy3)
  {
    goto LABEL_18;
  }

  structuredLocation2 = [selfCopy structuredLocation];
  if (structuredLocation2)
  {
LABEL_19:

    goto LABEL_20;
  }

  clientLocation2 = [selfCopy clientLocation];

  if (!clientLocation2)
  {
LABEL_18:
    structuredLocation3 = [(EKAutocompleteSearchResult *)self structuredLocation];
    duplicate2 = [structuredLocation3 duplicate];
    [selfCopy setStructuredLocation:duplicate2];

    structuredLocation2 = [(EKAutocompleteSearchResult *)self clientLocation];
    duplicate3 = [structuredLocation2 duplicate];
    [selfCopy setClientLocation:duplicate3];

    goto LABEL_19;
  }

LABEL_20:
  notes = [(EKAutocompleteSearchResult *)self notes];
  v30 = [notes length];

  if (v30)
  {
    if (!modeCopy3 || ([selfCopy notes], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "length"), v31, !v32))
    {
      notes2 = [(EKAutocompleteSearchResult *)self notes];
      [selfCopy setNotes:notes2];
    }
  }

  v34 = [(EKAutocompleteSearchResult *)self URL];

  if (v34)
  {
    if (!modeCopy3 || ([selfCopy URL], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
    {
      v36 = [(EKAutocompleteSearchResult *)self URL];
      [selfCopy setURL:v36];
    }
  }

  attendees = [(EKAutocompleteSearchResult *)self attendees];
  v38 = [attendees count];

  if (v38)
  {
    if (!modeCopy3)
    {
      attendees2 = [(EKAutocompleteSearchResult *)self attendees];
      v52 = selfCopy;
      [selfCopy setAttendees:attendees2];

LABEL_46:
      [v52 setPrivacyLevel:{-[EKAutocompleteSearchResult privacyLevel](self, "privacyLevel")}];
      goto LABEL_47;
    }

    v66 = calendarCopy;
    v39 = selfCopy;
    attendees3 = [selfCopy attendees];
    v69 = [attendees3 valueForKey:@"URL"];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    selfCopy2 = self;
    attendees4 = [(EKAutocompleteSearchResult *)self attendees];
    v42 = [attendees4 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v76;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(attendees4);
          }

          v46 = *(*(&v75 + 1) + 8 * i);
          v47 = [v46 URL];
          calendar2 = [v39 calendar];
          ownerIdentityAddress = [calendar2 ownerIdentityAddress];
          if ([v47 isEqual:ownerIdentityAddress])
          {

            v39 = v70;
          }

          else
          {
            v50 = [v46 URL];
            v51 = [v69 containsObject:v50];

            v39 = v70;
            if ((v51 & 1) == 0)
            {
              [v70 addAttendee:v46];
            }
          }
        }

        v43 = [attendees4 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v43);
    }

    self = selfCopy2;
    calendarCopy = v66;
    modeCopy3 = mode;
  }

  v52 = v70;
  if (!modeCopy3 || ([v70 isPrivacySet] & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  [v52 setAvailability:{-[EKAutocompleteSearchResult availability](self, "availability")}];
  if (modeCopy3)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    alarms = [(EKAutocompleteSearchResult *)self alarms];
    v55 = [alarms countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v72;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v72 != v57)
          {
            objc_enumerationMutation(alarms);
          }

          v59 = *(*(&v71 + 1) + 8 * j);
          if (([v59 isDefaultAlarm] & 1) == 0)
          {
            duplicate4 = [v59 duplicate];
            [v52 addAlarm:duplicate4];
          }
        }

        v56 = [alarms countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v56);
    }

    goto LABEL_62;
  }

  if (![(EKAutocompleteSearchResult *)self source]|| [(EKAutocompleteSearchResult *)self source]== 3 || [(EKAutocompleteSearchResult *)self source]== 4)
  {
    alarms = [objc_opt_class() _copyAlarmsForAutocompleteFromResult:self];
    [v52 setAlarms:alarms];
LABEL_62:
  }

  suggestionInfo = [(EKAutocompleteSearchResult *)self suggestionInfo];
  duplicate5 = [suggestionInfo duplicate];
  [v52 setSuggestionInfo:duplicate5];

  localStructuredData = [(EKAutocompleteSearchResult *)self localStructuredData];
  [v52 setLocalStructuredData:localStructuredData];

  v64 = *MEMORY[0x1E69E9840];
}

- (id)eventRepresentingSelf
{
  calendar = [(EKAutocompleteSearchResult *)self calendar];
  eventStore = [calendar eventStore];
  v5 = [EKEvent eventWithEventStore:eventStore];

  calendar2 = [(EKAutocompleteSearchResult *)self calendar];
  [v5 setCalendar:calendar2];

  [(EKAutocompleteSearchResult *)self updateEventFromSelf:v5 updateTimeProperties:1 updateTravelTimeProperties:0 updateMode:0 overrideCalendar:0];

  return v5;
}

+ (id)_copyAlarmsForAutocompleteFromResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  alarms = [resultCopy alarms];
  v6 = [v4 initWithCapacity:{objc_msgSend(alarms, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  alarms2 = [resultCopy alarms];
  v8 = [alarms2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(alarms2);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 isDefaultAlarm] & 1) == 0)
        {
          duplicate = [v12 duplicate];
          [v6 addObject:duplicate];
        }
      }

      v9 = [alarms2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isDifferentEnoughFromInitialEvent:(id)event consideringTimeProperties:(BOOL)properties
{
  eventCopy = event;
  clientLocation = [(EKAutocompleteSearchResult *)self clientLocation];
  clientLocation2 = [eventCopy clientLocation];
  if (!CalEqualObjects())
  {

    if (properties)
    {
LABEL_30:
      LOBYTE(v28) = 1;
      goto LABEL_37;
    }

    LOBYTE(v20) = 0;
LABEL_29:
    LOBYTE(v28) = v20 ^ 1;
    goto LABEL_37;
  }

  structuredLocation = [(EKAutocompleteSearchResult *)self structuredLocation];
  structuredLocation2 = [eventCopy structuredLocation];
  if (CalEqualObjects())
  {
    notes = [(EKAutocompleteSearchResult *)self notes];
    notes2 = [eventCopy notes];
    if (CalEqualObjects())
    {
      calendar = [(EKAutocompleteSearchResult *)self calendar];
      calendar2 = [eventCopy calendar];
      v41 = calendar;
      if (CalEqualObjects())
      {
        attendees = [(EKAutocompleteSearchResult *)self attendees];
        attendees2 = [eventCopy attendees];
        v39 = attendees;
        if (CalEqualObjects())
        {
          v15 = [(EKAutocompleteSearchResult *)self URL];
          v36 = [eventCopy URL];
          v37 = v15;
          if (CalEqualObjects() && (v16 = -[EKAutocompleteSearchResult privacyLevel](self, "privacyLevel"), v16 == [eventCopy privacyLevel]) && (v17 = -[EKAutocompleteSearchResult availability](self, "availability"), v17 == objc_msgSend(eventCopy, "availability")))
          {
            suggestionInfo = [(EKAutocompleteSearchResult *)self suggestionInfo];
            suggestionInfo2 = [eventCopy suggestionInfo];
            v35 = suggestionInfo;
            if (CalEqualObjects())
            {
              localStructuredData = [(EKAutocompleteSearchResult *)self localStructuredData];
              localStructuredData2 = [eventCopy localStructuredData];
              v33 = localStructuredData;
              if (CalEqualObjects())
              {
                alarms = [(EKAutocompleteSearchResult *)self alarms];
                alarms2 = [eventCopy alarms];
                v20 = CalEqualObjects();
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (!properties)
  {
    goto LABEL_29;
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  startDate = [(EKAutocompleteSearchResult *)self startDate];
  startDate2 = [eventCopy startDate];
  if (CalEqualObjects())
  {
    endDate = [(EKAutocompleteSearchResult *)self endDate];
    endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
    if (CalEqualObjects())
    {
      timeZone = [(EKAutocompleteSearchResult *)self timeZone];
      timeZone2 = [eventCopy timeZone];
      if (CalEqualObjects())
      {
        allDay = [(EKAutocompleteSearchResult *)self allDay];
        v28 = allDay ^ [eventCopy isAllDay];
      }

      else
      {
        LOBYTE(v28) = 1;
      }
    }

    else
    {
      LOBYTE(v28) = 1;
    }
  }

  else
  {
    LOBYTE(v28) = 1;
  }

LABEL_37:
  return v28;
}

- (BOOL)isReminder
{
  source = [(EKCalendar *)self->_calendar source];
  v3 = [source sourceType] == 6;

  return v3;
}

@end