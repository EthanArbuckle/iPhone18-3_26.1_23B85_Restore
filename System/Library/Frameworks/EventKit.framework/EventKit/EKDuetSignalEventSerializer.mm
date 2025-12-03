@interface EKDuetSignalEventSerializer
+ (id)componentsForDate:(id)date inTimeZone:(id)zone;
+ (id)serializedEventWithEvent:(id)event;
@end

@implementation EKDuetSignalEventSerializer

+ (id)serializedEventWithEvent:(id)event
{
  v82 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [eventCopy title];

  if (title)
  {
    title2 = [eventCopy title];
    [dictionary setObject:title2 forKey:@"title"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAllDay")}];
  [dictionary setObject:v7 forKey:@"isAllDay"];

  startDate = [eventCopy startDate];

  if (startDate)
  {
    startDate2 = [eventCopy startDate];
    startTimeZone = [eventCopy startTimeZone];
    v11 = [self componentsForDate:startDate2 inTimeZone:startTimeZone];
    [dictionary setObject:v11 forKey:@"startDate"];
  }

  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];

  if (endDateUnadjustedForLegacyClients)
  {
    endDateUnadjustedForLegacyClients2 = [eventCopy endDateUnadjustedForLegacyClients];
    endTimeZone = [eventCopy endTimeZone];
    v15 = [self componentsForDate:endDateUnadjustedForLegacyClients2 inTimeZone:endTimeZone];
    [dictionary setObject:v15 forKey:@"endDate"];
  }

  location = [eventCopy location];

  if (location)
  {
    location2 = [eventCopy location];
    [dictionary setObject:location2 forKey:@"location"];
  }

  attendees = [eventCopy attendees];

  if (attendees)
  {
    v19 = MEMORY[0x1E695DF70];
    attendees2 = [eventCopy attendees];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(attendees2, "count")}];

    attendees3 = [eventCopy attendees];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __56__EKDuetSignalEventSerializer_serializedEventWithEvent___block_invoke;
    v78[3] = &unk_1E77FFD90;
    v79 = v21;
    v23 = v21;
    [attendees3 enumerateObjectsUsingBlock:v78];

    [dictionary setObject:v23 forKey:@"attendees"];
  }

  recurrenceRules = [eventCopy recurrenceRules];

  v60 = eventCopy;
  if (recurrenceRules)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [eventCopy recurrenceRules];
    v68 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v68)
    {
      v25 = 0;
      v65 = *v75;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v75 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v74 + 1) + 8 * i);
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rrule_%d_frequency", v25];
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rrule_%d_interval", v25];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rrule_%d_end", v25];
          v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v27, "frequency")}];
          [dictionary setObject:v31 forKey:v28];

          v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v27, "interval")}];
          [dictionary setObject:v32 forKey:v29];

          v33 = MEMORY[0x1E696AD98];
          recurrenceEnd = [v27 recurrenceEnd];
          v35 = [v33 numberWithInt:recurrenceEnd == 0];
          [dictionary setObject:v35 forKey:v30];

          v25 = (v25 + 1);
        }

        v68 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v68);
    }

    eventCopy = v60;
  }

  alarms = [eventCopy alarms];

  if (alarms)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    alarms2 = [eventCopy alarms];
    v66 = [alarms2 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v66)
    {
      v37 = 0;
      obja = *v71;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v71 != obja)
          {
            objc_enumerationMutation(alarms2);
          }

          v39 = *(*(&v70 + 1) + 8 * j);
          v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_absoluteDate", v37];
          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_relativeOffset", v37];
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_locationTitle", v37];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_proximity", v37];
          absoluteDate = [v39 absoluteDate];

          if (absoluteDate)
          {
            [v39 absoluteDate];
          }

          else
          {
            [MEMORY[0x1E695DF00] distantPast];
          }
          v43 = ;
          systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
          v45 = [self componentsForDate:v43 inTimeZone:systemTimeZone];

          [dictionary setObject:v45 forKey:v69];
          v46 = MEMORY[0x1E696AD98];
          [v39 relativeOffset];
          v47 = [v46 numberWithDouble:?];
          [dictionary setObject:v47 forKey:v67];

          structuredLocation = [v39 structuredLocation];
          if (structuredLocation)
          {
            structuredLocation2 = [v39 structuredLocation];
            title3 = [structuredLocation2 title];
            v51 = dictionary;
            v52 = title3;
            if (title3)
            {
              v53 = title3;
            }

            else
            {
              v53 = &stru_1F1B49D68;
            }

            [v51 setObject:v53 forKey:v40];
          }

          else
          {
            [dictionary setObject:&stru_1F1B49D68 forKey:v40];
            v51 = dictionary;
          }

          v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v39, "proximity")}];
          [v51 setObject:v54 forKey:v41];

          v37 = (v37 + 1);
          dictionary = v51;
        }

        v66 = [alarms2 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v66);
    }

    eventCopy = v60;
  }

  calendar = [eventCopy calendar];

  if (calendar)
  {
    calendar2 = [eventCopy calendar];
    calendarIdentifier = [calendar2 calendarIdentifier];
    [dictionary setObject:calendarIdentifier forKey:@"calendar"];
  }

  v58 = *MEMORY[0x1E69E9840];

  return dictionary;
}

void __56__EKDuetSignalEventSerializer_serializedEventWithEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v5 = [v3 absoluteString];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

+ (id)componentsForDate:(id)date inTimeZone:(id)zone
{
  v5 = MEMORY[0x1E695DEE8];
  zoneCopy = zone;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v9 setTimeZone:zoneCopy];

  v10 = [v9 components:3145854 fromDate:dateCopy];

  return v10;
}

@end