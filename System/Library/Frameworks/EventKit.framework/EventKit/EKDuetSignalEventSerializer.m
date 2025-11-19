@interface EKDuetSignalEventSerializer
+ (id)componentsForDate:(id)a3 inTimeZone:(id)a4;
+ (id)serializedEventWithEvent:(id)a3;
@end

@implementation EKDuetSignalEventSerializer

+ (id)serializedEventWithEvent:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 title];

  if (v5)
  {
    v6 = [v3 title];
    [v4 setObject:v6 forKey:@"title"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAllDay")}];
  [v4 setObject:v7 forKey:@"isAllDay"];

  v8 = [v3 startDate];

  if (v8)
  {
    v9 = [v3 startDate];
    v10 = [v3 startTimeZone];
    v11 = [a1 componentsForDate:v9 inTimeZone:v10];
    [v4 setObject:v11 forKey:@"startDate"];
  }

  v12 = [v3 endDateUnadjustedForLegacyClients];

  if (v12)
  {
    v13 = [v3 endDateUnadjustedForLegacyClients];
    v14 = [v3 endTimeZone];
    v15 = [a1 componentsForDate:v13 inTimeZone:v14];
    [v4 setObject:v15 forKey:@"endDate"];
  }

  v16 = [v3 location];

  if (v16)
  {
    v17 = [v3 location];
    [v4 setObject:v17 forKey:@"location"];
  }

  v18 = [v3 attendees];

  if (v18)
  {
    v19 = MEMORY[0x1E695DF70];
    v20 = [v3 attendees];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v22 = [v3 attendees];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __56__EKDuetSignalEventSerializer_serializedEventWithEvent___block_invoke;
    v78[3] = &unk_1E77FFD90;
    v79 = v21;
    v23 = v21;
    [v22 enumerateObjectsUsingBlock:v78];

    [v4 setObject:v23 forKey:@"attendees"];
  }

  v24 = [v3 recurrenceRules];

  v60 = v3;
  if (v24)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [v3 recurrenceRules];
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
          [v4 setObject:v31 forKey:v28];

          v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v27, "interval")}];
          [v4 setObject:v32 forKey:v29];

          v33 = MEMORY[0x1E696AD98];
          v34 = [v27 recurrenceEnd];
          v35 = [v33 numberWithInt:v34 == 0];
          [v4 setObject:v35 forKey:v30];

          v25 = (v25 + 1);
        }

        v68 = [obj countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v68);
    }

    v3 = v60;
  }

  v36 = [v3 alarms];

  if (v36)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v61 = [v3 alarms];
    v66 = [v61 countByEnumeratingWithState:&v70 objects:v80 count:16];
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
            objc_enumerationMutation(v61);
          }

          v39 = *(*(&v70 + 1) + 8 * j);
          v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_absoluteDate", v37];
          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_relativeOffset", v37];
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_locationTitle", v37];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alarm_%d_proximity", v37];
          v42 = [v39 absoluteDate];

          if (v42)
          {
            [v39 absoluteDate];
          }

          else
          {
            [MEMORY[0x1E695DF00] distantPast];
          }
          v43 = ;
          v44 = [MEMORY[0x1E695DFE8] systemTimeZone];
          v45 = [a1 componentsForDate:v43 inTimeZone:v44];

          [v4 setObject:v45 forKey:v69];
          v46 = MEMORY[0x1E696AD98];
          [v39 relativeOffset];
          v47 = [v46 numberWithDouble:?];
          [v4 setObject:v47 forKey:v67];

          v48 = [v39 structuredLocation];
          if (v48)
          {
            v49 = [v39 structuredLocation];
            v50 = [v49 title];
            v51 = v4;
            v52 = v50;
            if (v50)
            {
              v53 = v50;
            }

            else
            {
              v53 = &stru_1F1B49D68;
            }

            [v51 setObject:v53 forKey:v40];
          }

          else
          {
            [v4 setObject:&stru_1F1B49D68 forKey:v40];
            v51 = v4;
          }

          v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v39, "proximity")}];
          [v51 setObject:v54 forKey:v41];

          v37 = (v37 + 1);
          v4 = v51;
        }

        v66 = [v61 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v66);
    }

    v3 = v60;
  }

  v55 = [v3 calendar];

  if (v55)
  {
    v56 = [v3 calendar];
    v57 = [v56 calendarIdentifier];
    [v4 setObject:v57 forKey:@"calendar"];
  }

  v58 = *MEMORY[0x1E69E9840];

  return v4;
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

+ (id)componentsForDate:(id)a3 inTimeZone:(id)a4
{
  v5 = MEMORY[0x1E695DEE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v9 setTimeZone:v6];

  v10 = [v9 components:3145854 fromDate:v7];

  return v10;
}

@end