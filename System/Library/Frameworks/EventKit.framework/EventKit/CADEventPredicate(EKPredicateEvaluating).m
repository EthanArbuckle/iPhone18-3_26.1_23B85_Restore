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
    v6 = [a1 endDate];
    v7 = [a1 startDate];
    v8 = [a1 startDate];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 endDate];

      if (v10)
      {
        v11 = [v5 startDate];
        v12 = [v11 CalIsAfterOrSameAsDate:v6];

        if (v12)
        {
          goto LABEL_23;
        }

        v13 = [v5 endDateUnadjustedForLegacyClients];
        v14 = [v13 CalIsBeforeOrSameAsDate:v7];

        if (v14)
        {
          goto LABEL_23;
        }
      }
    }

    v15 = [a1 calendars];
    if (v15)
    {
      v16 = v15;
      v17 = [a1 calendars];
      v18 = [v5 calendar];
      v19 = [v18 CADObjectID];
      v20 = [v17 containsObject:v19];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v21 = [a1 eventUUID];
    if (v21)
    {
      v22 = v21;
      v23 = [a1 eventUUID];
      v24 = [v5 uniqueID];
      v25 = [v23 isEqualToString:v24];

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    if ([a1 excludeTimedEvents] && !objc_msgSend(v5, "isAllDay") || objc_msgSend(a1, "excludeAllDayEvents") && (objc_msgSend(v5, "isAllDay") & 1) != 0 || objc_msgSend(a1, "excludeDeclined") && objc_msgSend(v5, "participationStatus") == 3 || objc_msgSend(a1, "excludeProposed") && (objc_msgSend(v5, "isProposedTimeEvent") & 1) != 0 || objc_msgSend(a1, "excludeDeclinedUnlessProposed") && objc_msgSend(v5, "participationStatus") == 3 && !objc_msgSend(v5, "isProposedTimeEvent"))
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