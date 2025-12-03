@interface CADEventPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADEventPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    endDate = [self endDate];
    startDate = [self startDate];
    startDate2 = [self startDate];
    if (startDate2)
    {
      v9 = startDate2;
      endDate2 = [self endDate];

      if (endDate2)
      {
        startDate3 = [v5 startDate];
        v12 = [startDate3 CalIsAfterOrSameAsDate:endDate];

        if (v12)
        {
          goto LABEL_23;
        }

        endDateUnadjustedForLegacyClients = [v5 endDateUnadjustedForLegacyClients];
        v14 = [endDateUnadjustedForLegacyClients CalIsBeforeOrSameAsDate:startDate];

        if (v14)
        {
          goto LABEL_23;
        }
      }
    }

    calendars = [self calendars];
    if (calendars)
    {
      v16 = calendars;
      calendars2 = [self calendars];
      calendar = [v5 calendar];
      cADObjectID = [calendar CADObjectID];
      v20 = [calendars2 containsObject:cADObjectID];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    eventUUID = [self eventUUID];
    if (eventUUID)
    {
      v22 = eventUUID;
      eventUUID2 = [self eventUUID];
      uniqueID = [v5 uniqueID];
      v25 = [eventUUID2 isEqualToString:uniqueID];

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    if ([self excludeTimedEvents] && !objc_msgSend(v5, "isAllDay") || objc_msgSend(self, "excludeAllDayEvents") && (objc_msgSend(v5, "isAllDay") & 1) != 0 || objc_msgSend(self, "excludeDeclined") && objc_msgSend(v5, "participationStatus") == 3 || objc_msgSend(self, "excludeProposed") && (objc_msgSend(v5, "isProposedTimeEvent") & 1) != 0 || objc_msgSend(self, "excludeDeclinedUnlessProposed") && objc_msgSend(v5, "participationStatus") == 3 && !objc_msgSend(v5, "isProposedTimeEvent"))
    {
LABEL_23:
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end