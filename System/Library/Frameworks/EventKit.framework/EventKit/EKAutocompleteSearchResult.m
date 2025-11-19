@interface EKAutocompleteSearchResult
+ (id)_copyAlarmsForAutocompleteFromResult:(id)a3;
- (BOOL)isDifferentEnoughFromInitialEvent:(id)a3 consideringTimeProperties:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReminder;
- (EKAutocompleteSearchResult)initWithSource:(unint64_t)a3;
- (EKStructuredLocation)preferredLocation;
- (NSString)descriptionForDebugging;
- (NSString)uniqueID;
- (id)_attendeesForSuggestedEventFromAttendees:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)eventRepresentingSelf;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAttendees:(id)a3;
- (void)setCalendarColor:(CGColor *)a3;
- (void)updateEventFromSelf:(id)a3 updateTimeProperties:(BOOL)a4 updateTravelTimeProperties:(BOOL)a5 updateMode:(unint64_t)a6 overrideCalendar:(id)a7;
- (void)updateSelfFromEvent:(id)a3;
@end

@implementation EKAutocompleteSearchResult

- (EKAutocompleteSearchResult)initWithSource:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = EKAutocompleteSearchResult;
  result = [(EKAutocompleteSearchResult *)&v5 init];
  if (result)
  {
    result->_source = a3;
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
  v4 = [(EKAutocompleteSearchResult *)self title];
  v5 = [(EKAutocompleteSearchResult *)self startDate];
  v6 = [(EKAutocompleteSearchResult *)self endDate];
  v7 = [(EKAutocompleteSearchResult *)self calendar];
  v8 = [v7 title];
  v9 = [v3 stringWithFormat:@"%@-%@-%@-%@", v4, v5, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EKAutocompleteSearchResult *)self title];
    v7 = [v5 title];
    if (CalEqualObjects() && (v8 = -[EKAutocompleteSearchResult allDay](self, "allDay"), v8 == [v5 allDay]))
    {
      v10 = [(EKAutocompleteSearchResult *)self calendar];
      v11 = [v5 calendar];
      if (CalEqualObjects())
      {
        v12 = [(EKAutocompleteSearchResult *)self startDate];
        v13 = [v5 startDate];
        if (CalEqualObjects())
        {
          v16 = [(EKAutocompleteSearchResult *)self endDate];
          v14 = [v5 endDate];
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
  v2 = [(EKAutocompleteSearchResult *)self title];
  v3 = [v2 trimWhiteSpace];
  v4 = [v3 lowercaseString];
  v5 = [v4 hash];

  return v5;
}

- (NSString)descriptionForDebugging
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v29.receiver = self;
  v29.super_class = EKAutocompleteSearchResult;
  v4 = [(EKAutocompleteSearchResult *)&v29 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  v6 = [(EKAutocompleteSearchResult *)self source];
  v7 = [(EKAutocompleteSearchResult *)self source]- 1;
  if (v7 > 3)
  {
    v8 = @"Historical";
  }

  else
  {
    v8 = off_1E77FD850[v7];
  }

  [v5 setKey:@"source" withEnumNumericalValue:v6 andStringValue:v8];
  v9 = [(EKAutocompleteSearchResult *)self title];
  [v5 setKey:@"title" withString:v9];

  v10 = [(EKAutocompleteSearchResult *)self startDate];
  [v5 setKey:@"startDate" withDate:v10];

  v11 = [(EKAutocompleteSearchResult *)self endDate];
  [v5 setKey:@"endDate" withDate:v11];

  v12 = [(EKAutocompleteSearchResult *)self timeZone];
  [v5 setKey:@"timeZone" withObject:v12];

  [v5 setKey:@"allDay" withBoolean:{-[EKAutocompleteSearchResult allDay](self, "allDay")}];
  v13 = [(EKAutocompleteSearchResult *)self clientLocation];
  [v5 setKey:@"clientLocation" withObject:v13];

  v14 = [(EKAutocompleteSearchResult *)self structuredLocation];
  [v5 setKey:@"structuredLocation" withObject:v14];

  v15 = [(EKAutocompleteSearchResult *)self alarms];
  [v5 setKey:@"alarms" withArray:v15];

  v16 = [(EKAutocompleteSearchResult *)self attendees];
  [v5 setKey:@"attendees" withArray:v16];

  v17 = [(EKAutocompleteSearchResult *)self URL];
  [v5 setKey:@"URL" withObject:v17];

  v18 = [(EKAutocompleteSearchResult *)self notes];
  [v5 setKey:@"notes" withString:v18];

  v19 = [(EKAutocompleteSearchResult *)self calendar];
  [v5 setKey:@"calendar" withObject:v19];

  [(EKAutocompleteSearchResult *)self travelTime];
  [v5 setKey:@"travelTime" withTimeInterval:?];
  v20 = [(EKAutocompleteSearchResult *)self travelStartLocation];
  [v5 setKey:@"travelStartLocation" withObject:v20];

  v21 = [(EKAutocompleteSearchResult *)self suggestionInfo];
  [v5 setKey:@"suggestionInfo" withObject:v21];

  [v5 setKey:@"privacyLevel" withEnumNumericalValue:-[EKAutocompleteSearchResult privacyLevel](self andStringValue:{"privacyLevel"), 0}];
  [v5 setKey:@"availability" withEnumNumericalValue:-[EKAutocompleteSearchResult availability](self andStringValue:{"availability"), 0}];
  v22 = [(EKAutocompleteSearchResult *)self localStructuredData];
  [v5 setKey:@"localStructuredData" withObject:v22];

  [v5 setKey:@"calendarColor" withCGColor:{-[EKAutocompleteSearchResult calendarColor](self, "calendarColor")}];
  v23 = [(EKAutocompleteSearchResult *)self foundInBundleID];
  [v5 setKey:@"foundInBundleID" withString:v23];

  v24 = [(EKAutocompleteSearchResult *)self displayLocation];
  [v5 setKey:@"displayLocation" withString:v24];

  v25 = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];
  [v5 setKey:@"displayLocationWithoutPrediction" withString:v25];

  v26 = [(EKAutocompleteSearchResult *)self pasteboardResults];
  [v5 setKey:@"pasteboardResults" withArray:v26];

  v27 = [v5 build];

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[EKAutocompleteSearchResult alloc] initWithSource:[(EKAutocompleteSearchResult *)self source]];
  v5 = [(EKAutocompleteSearchResult *)self title];
  [(EKAutocompleteSearchResult *)v4 setTitle:v5];

  v6 = [(EKAutocompleteSearchResult *)self startDate];
  [(EKAutocompleteSearchResult *)v4 setStartDate:v6];

  v7 = [(EKAutocompleteSearchResult *)self endDate];
  [(EKAutocompleteSearchResult *)v4 setEndDate:v7];

  v8 = [(EKAutocompleteSearchResult *)self timeZone];
  [(EKAutocompleteSearchResult *)v4 setTimeZone:v8];

  [(EKAutocompleteSearchResult *)v4 setAllDay:[(EKAutocompleteSearchResult *)self allDay]];
  v9 = [(EKAutocompleteSearchResult *)self clientLocation];
  [(EKAutocompleteSearchResult *)v4 setClientLocation:v9];

  v10 = [(EKAutocompleteSearchResult *)self structuredLocation];
  [(EKAutocompleteSearchResult *)v4 setStructuredLocation:v10];

  v11 = [(EKAutocompleteSearchResult *)self alarms];
  [(EKAutocompleteSearchResult *)v4 setAlarms:v11];

  v12 = [(EKAutocompleteSearchResult *)self attendees];
  [(EKAutocompleteSearchResult *)v4 setAttendees:v12];

  v13 = [(EKAutocompleteSearchResult *)self URL];
  [(EKAutocompleteSearchResult *)v4 setURL:v13];

  v14 = [(EKAutocompleteSearchResult *)self notes];
  [(EKAutocompleteSearchResult *)v4 setNotes:v14];

  v15 = [(EKAutocompleteSearchResult *)self calendar];
  [(EKAutocompleteSearchResult *)v4 setCalendar:v15];

  [(EKAutocompleteSearchResult *)self travelTime];
  [(EKAutocompleteSearchResult *)v4 setTravelTime:?];
  v16 = [(EKAutocompleteSearchResult *)self travelStartLocation];
  [(EKAutocompleteSearchResult *)v4 setTravelStartLocation:v16];

  v17 = [(EKAutocompleteSearchResult *)self suggestionInfo];
  [(EKAutocompleteSearchResult *)v4 setSuggestionInfo:v17];

  [(EKAutocompleteSearchResult *)v4 setPrivacyLevel:[(EKAutocompleteSearchResult *)self privacyLevel]];
  [(EKAutocompleteSearchResult *)v4 setAvailability:[(EKAutocompleteSearchResult *)self availability]];
  v18 = [(EKAutocompleteSearchResult *)self localStructuredData];
  [(EKAutocompleteSearchResult *)v4 setLocalStructuredData:v18];

  [(EKAutocompleteSearchResult *)v4 setCalendarColor:[(EKAutocompleteSearchResult *)self calendarColor]];
  v19 = [(EKAutocompleteSearchResult *)self foundInBundleID];
  [(EKAutocompleteSearchResult *)v4 setFoundInBundleID:v19];

  v20 = [(EKAutocompleteSearchResult *)self displayLocation];
  [(EKAutocompleteSearchResult *)v4 setDisplayLocation:v20];

  v21 = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];
  [(EKAutocompleteSearchResult *)v4 setDisplayLocationWithoutPrediction:v21];

  v22 = [(EKAutocompleteSearchResult *)self pasteboardResults];
  [(EKAutocompleteSearchResult *)v4 setPasteboardResults:v22];

  return v4;
}

- (void)setCalendarColor:(CGColor *)a3
{
  calendarColor = self->_calendarColor;
  if (calendarColor != a3)
  {
    CGColorRelease(calendarColor);
    self->_calendarColor = CGColorRetain(a3);
  }
}

- (id)_attendeesForSuggestedEventFromAttendees:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
          v11 = [v10 name];
          v12 = [v10 URL];
          v13 = [EKAttendee attendeeWithName:v11 url:v12];

          [v13 setParticipantType:{objc_msgSend(v10, "participantType")}];
          v14 = [v10 emailAddress];
          [v13 setEmailAddress:v14];

          v15 = [v10 phoneNumber];
          [v13 setPhoneNumber:v15];

          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setAttendees:(id)a3
{
  v4 = [(EKAutocompleteSearchResult *)self _attendeesForSuggestedEventFromAttendees:a3];
  attendees = self->_attendees;
  self->_attendees = v4;

  MEMORY[0x1EEE66BB8]();
}

- (EKStructuredLocation)preferredLocation
{
  v3 = [(EKAutocompleteSearchResult *)self clientLocation];
  v4 = [(EKAutocompleteSearchResult *)self structuredLocation];
  v5 = [EKCalendarItem preferredLocationWithClientLocation:v3 structuredLocation:v4];

  return v5;
}

- (void)updateSelfFromEvent:(id)a3
{
  v36 = a3;
  v4 = [(EKAutocompleteSearchResult *)self title];

  if (!v4)
  {
    v5 = [v36 title];
    [(EKAutocompleteSearchResult *)self setTitle:v5];
  }

  v6 = [(EKAutocompleteSearchResult *)self startDate];

  if (!v6)
  {
    v7 = [v36 startDate];
    [(EKAutocompleteSearchResult *)self setStartDate:v7];
  }

  v8 = [(EKAutocompleteSearchResult *)self endDate];

  if (!v8)
  {
    v9 = [v36 endDateUnadjustedForLegacyClients];
    [(EKAutocompleteSearchResult *)self setEndDate:v9];
  }

  v10 = [(EKAutocompleteSearchResult *)self timeZone];

  if (!v10)
  {
    v11 = [v36 timeZone];
    [(EKAutocompleteSearchResult *)self setTimeZone:v11];
  }

  v12 = [(EKAutocompleteSearchResult *)self clientLocation];
  if (v12 || ([(EKAutocompleteSearchResult *)self structuredLocation], (v12 = objc_claimAutoreleasedReturnValue()) != 0) || ([(EKAutocompleteSearchResult *)self displayLocation], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
LABEL_13:

    goto LABEL_14;
  }

  v32 = [(EKAutocompleteSearchResult *)self displayLocationWithoutPrediction];

  if (!v32)
  {
    v33 = [v36 clientLocation];
    [(EKAutocompleteSearchResult *)self setClientLocation:v33];

    v34 = [v36 structuredLocation];
    [(EKAutocompleteSearchResult *)self setStructuredLocation:v34];

    v35 = [v36 location];
    [(EKAutocompleteSearchResult *)self setDisplayLocation:v35];

    v13 = [v36 locationWithoutPrediction];
    [(EKAutocompleteSearchResult *)self setDisplayLocationWithoutPrediction:v13];
    goto LABEL_13;
  }

LABEL_14:
  v14 = [(EKAutocompleteSearchResult *)self alarms];
  v15 = [v14 count];

  if (!v15)
  {
    v16 = [v36 alarms];
    [(EKAutocompleteSearchResult *)self setAlarms:v16];
  }

  v17 = [(EKAutocompleteSearchResult *)self attendees];
  v18 = [v17 count];

  if (!v18)
  {
    v19 = [v36 attendeesNotIncludingOrganizer];
    [(EKAutocompleteSearchResult *)self setAttendees:v19];
  }

  v20 = [(EKAutocompleteSearchResult *)self URL];
  if (!v20)
  {
    if ([v36 isBirthday])
    {
      goto LABEL_22;
    }

    v20 = [v36 URL];
    [(EKAutocompleteSearchResult *)self setURL:v20];
  }

LABEL_22:
  v21 = [(EKAutocompleteSearchResult *)self notes];

  if (!v21)
  {
    v22 = [v36 notes];
    [(EKAutocompleteSearchResult *)self setNotes:v22];
  }

  v23 = [(EKAutocompleteSearchResult *)self calendar];

  if (!v23)
  {
    v24 = [v36 calendar];
    [(EKAutocompleteSearchResult *)self setCalendar:v24];
  }

  if (![(EKAutocompleteSearchResult *)self calendarColor])
  {
    v25 = [v36 calendar];
    -[EKAutocompleteSearchResult setCalendarColor:](self, "setCalendarColor:", [v25 CGColor]);
  }

  v26 = [(EKAutocompleteSearchResult *)self suggestionInfo];

  if (!v26)
  {
    v27 = [v36 suggestionInfo];
    [(EKAutocompleteSearchResult *)self setSuggestionInfo:v27];
  }

  v28 = [(EKAutocompleteSearchResult *)self foundInBundleID];
  if (v28)
  {
    goto LABEL_31;
  }

  v31 = [v36 suggestionInfo];

  if (v31)
  {
    v28 = [v36 localCustomObjectForKey:@"SuggestionsOriginBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EKAutocompleteSearchResult *)self setFoundInBundleID:v28];
    }

LABEL_31:
  }

  -[EKAutocompleteSearchResult setPrivacyLevel:](self, "setPrivacyLevel:", [v36 privacyLevel]);
  -[EKAutocompleteSearchResult setAvailability:](self, "setAvailability:", [v36 availability]);
  v29 = [(EKAutocompleteSearchResult *)self localStructuredData];

  if (!v29)
  {
    v30 = [v36 localStructuredData];
    [(EKAutocompleteSearchResult *)self setLocalStructuredData:v30];
  }
}

- (void)updateEventFromSelf:(id)a3 updateTimeProperties:(BOOL)a4 updateTravelTimeProperties:(BOOL)a5 updateMode:(unint64_t)a6 overrideCalendar:(id)a7
{
  v8 = a5;
  v9 = a4;
  v81 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v13 = [(EKAutocompleteSearchResult *)self title];
  [v11 setTitle:v13];

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(EKAutocompleteSearchResult *)self calendar];
  }

  v15 = v14;
  if ([v11 canMoveToCalendar:v14 error:0])
  {
    [v11 setCalendar:v15];
  }

  v67 = v15;
  if (v9)
  {
    v16 = [(EKAutocompleteSearchResult *)self timeZone];
    [v11 setTimeZone:v16];

    if ([v11 changingAllDayPropertyIsAllowed])
    {
      [v11 setAllDay:{-[EKAutocompleteSearchResult allDay](self, "allDay")}];
    }

    v17 = [(EKAutocompleteSearchResult *)self startDate];
    [v11 setStartDate:v17];

    v18 = [(EKAutocompleteSearchResult *)self endDate];
    [v11 setEndDateUnadjustedForLegacyClients:v18];
  }

  v70 = v11;
  if (v8)
  {
    [(EKAutocompleteSearchResult *)self travelTime];
    [v11 setTravelTime:?];
    v19 = [(EKAutocompleteSearchResult *)self travelStartLocation];
    v20 = [v19 duplicate];
    [v11 setTravelStartLocation:v20];
  }

  v21 = [(EKAutocompleteSearchResult *)self structuredLocation];
  if (v21)
  {

    v22 = a6;
  }

  else
  {
    v23 = [(EKAutocompleteSearchResult *)self clientLocation];

    v22 = a6;
    if (!v23)
    {
      goto LABEL_20;
    }
  }

  if (!v22)
  {
    goto LABEL_18;
  }

  v24 = [v11 structuredLocation];
  if (v24)
  {
LABEL_19:

    goto LABEL_20;
  }

  v25 = [v11 clientLocation];

  if (!v25)
  {
LABEL_18:
    v26 = [(EKAutocompleteSearchResult *)self structuredLocation];
    v27 = [v26 duplicate];
    [v11 setStructuredLocation:v27];

    v24 = [(EKAutocompleteSearchResult *)self clientLocation];
    v28 = [v24 duplicate];
    [v11 setClientLocation:v28];

    goto LABEL_19;
  }

LABEL_20:
  v29 = [(EKAutocompleteSearchResult *)self notes];
  v30 = [v29 length];

  if (v30)
  {
    if (!v22 || ([v11 notes], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "length"), v31, !v32))
    {
      v33 = [(EKAutocompleteSearchResult *)self notes];
      [v11 setNotes:v33];
    }
  }

  v34 = [(EKAutocompleteSearchResult *)self URL];

  if (v34)
  {
    if (!v22 || ([v11 URL], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
    {
      v36 = [(EKAutocompleteSearchResult *)self URL];
      [v11 setURL:v36];
    }
  }

  v37 = [(EKAutocompleteSearchResult *)self attendees];
  v38 = [v37 count];

  if (v38)
  {
    if (!v22)
    {
      v53 = [(EKAutocompleteSearchResult *)self attendees];
      v52 = v11;
      [v11 setAttendees:v53];

LABEL_46:
      [v52 setPrivacyLevel:{-[EKAutocompleteSearchResult privacyLevel](self, "privacyLevel")}];
      goto LABEL_47;
    }

    v66 = v12;
    v39 = v11;
    v40 = [v11 attendees];
    v69 = [v40 valueForKey:@"URL"];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v65 = self;
    v41 = [(EKAutocompleteSearchResult *)self attendees];
    v42 = [v41 countByEnumeratingWithState:&v75 objects:v80 count:16];
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
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v75 + 1) + 8 * i);
          v47 = [v46 URL];
          v48 = [v39 calendar];
          v49 = [v48 ownerIdentityAddress];
          if ([v47 isEqual:v49])
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

        v43 = [v41 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v43);
    }

    self = v65;
    v12 = v66;
    v22 = a6;
  }

  v52 = v70;
  if (!v22 || ([v70 isPrivacySet] & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  [v52 setAvailability:{-[EKAutocompleteSearchResult availability](self, "availability")}];
  if (v22)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v54 = [(EKAutocompleteSearchResult *)self alarms];
    v55 = [v54 countByEnumeratingWithState:&v71 objects:v79 count:16];
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
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v71 + 1) + 8 * j);
          if (([v59 isDefaultAlarm] & 1) == 0)
          {
            v60 = [v59 duplicate];
            [v52 addAlarm:v60];
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v56);
    }

    goto LABEL_62;
  }

  if (![(EKAutocompleteSearchResult *)self source]|| [(EKAutocompleteSearchResult *)self source]== 3 || [(EKAutocompleteSearchResult *)self source]== 4)
  {
    v54 = [objc_opt_class() _copyAlarmsForAutocompleteFromResult:self];
    [v52 setAlarms:v54];
LABEL_62:
  }

  v61 = [(EKAutocompleteSearchResult *)self suggestionInfo];
  v62 = [v61 duplicate];
  [v52 setSuggestionInfo:v62];

  v63 = [(EKAutocompleteSearchResult *)self localStructuredData];
  [v52 setLocalStructuredData:v63];

  v64 = *MEMORY[0x1E69E9840];
}

- (id)eventRepresentingSelf
{
  v3 = [(EKAutocompleteSearchResult *)self calendar];
  v4 = [v3 eventStore];
  v5 = [EKEvent eventWithEventStore:v4];

  v6 = [(EKAutocompleteSearchResult *)self calendar];
  [v5 setCalendar:v6];

  [(EKAutocompleteSearchResult *)self updateEventFromSelf:v5 updateTimeProperties:1 updateTravelTimeProperties:0 updateMode:0 overrideCalendar:0];

  return v5;
}

+ (id)_copyAlarmsForAutocompleteFromResult:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 alarms];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v3 alarms];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 isDefaultAlarm] & 1) == 0)
        {
          v13 = [v12 duplicate];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isDifferentEnoughFromInitialEvent:(id)a3 consideringTimeProperties:(BOOL)a4
{
  v6 = a3;
  v7 = [(EKAutocompleteSearchResult *)self clientLocation];
  v8 = [v6 clientLocation];
  if (!CalEqualObjects())
  {

    if (a4)
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

  v9 = [(EKAutocompleteSearchResult *)self structuredLocation];
  v10 = [v6 structuredLocation];
  if (CalEqualObjects())
  {
    v11 = [(EKAutocompleteSearchResult *)self notes];
    v12 = [v6 notes];
    if (CalEqualObjects())
    {
      v13 = [(EKAutocompleteSearchResult *)self calendar];
      v40 = [v6 calendar];
      v41 = v13;
      if (CalEqualObjects())
      {
        v14 = [(EKAutocompleteSearchResult *)self attendees];
        v38 = [v6 attendees];
        v39 = v14;
        if (CalEqualObjects())
        {
          v15 = [(EKAutocompleteSearchResult *)self URL];
          v36 = [v6 URL];
          v37 = v15;
          if (CalEqualObjects() && (v16 = -[EKAutocompleteSearchResult privacyLevel](self, "privacyLevel"), v16 == [v6 privacyLevel]) && (v17 = -[EKAutocompleteSearchResult availability](self, "availability"), v17 == objc_msgSend(v6, "availability")))
          {
            v18 = [(EKAutocompleteSearchResult *)self suggestionInfo];
            v34 = [v6 suggestionInfo];
            v35 = v18;
            if (CalEqualObjects())
            {
              v19 = [(EKAutocompleteSearchResult *)self localStructuredData];
              v32 = [v6 localStructuredData];
              v33 = v19;
              if (CalEqualObjects())
              {
                v31 = [(EKAutocompleteSearchResult *)self alarms];
                v30 = [v6 alarms];
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

  if (!a4)
  {
    goto LABEL_29;
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = [(EKAutocompleteSearchResult *)self startDate];
  v22 = [v6 startDate];
  if (CalEqualObjects())
  {
    v23 = [(EKAutocompleteSearchResult *)self endDate];
    v24 = [v6 endDateUnadjustedForLegacyClients];
    if (CalEqualObjects())
    {
      v25 = [(EKAutocompleteSearchResult *)self timeZone];
      v26 = [v6 timeZone];
      if (CalEqualObjects())
      {
        v27 = [(EKAutocompleteSearchResult *)self allDay];
        v28 = v27 ^ [v6 isAllDay];
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
  v2 = [(EKCalendar *)self->_calendar source];
  v3 = [v2 sourceType] == 6;

  return v3;
}

@end