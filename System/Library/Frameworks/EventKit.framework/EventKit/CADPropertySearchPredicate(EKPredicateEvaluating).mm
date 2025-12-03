@interface CADPropertySearchPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADPropertySearchPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  entityType = [self entityType];
  switch(entityType)
  {
    case 101:
      v6 = off_1E77FB850;
      break;
    case 3:
      v6 = off_1E77FBB38;
      break;
    case 2:
      v6 = off_1E77FB938;
      break;
    default:
LABEL_27:
      v12 = 0;
      goto LABEL_28;
  }

  v7 = *v6;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  calendarIDs = [self calendarIDs];

  if (calendarIDs)
  {
    v9 = [v4 valueForKeyPath:@"calendar"];
    cADObjectID = [v9 CADObjectID];

    calendarIDs2 = [self calendarIDs];
    v12 = [calendarIDs2 containsObject:cADObjectID];
  }

  else
  {
    v12 = 1;
  }

  sourceID = [self sourceID];

  if (sourceID)
  {
    v14 = [v4 valueForKeyPath:@"calendar.source"];
    cADObjectID2 = [v14 CADObjectID];
    sourceID2 = [self sourceID];
    v17 = [cADObjectID2 isEqual:sourceID2];

    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (!v12)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v4 isMasterOrDetachedOccurrence])
  {
    goto LABEL_27;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  filters = [self filters];
  v19 = [filters countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(filters);
        }

        if (![*(*(&v25 + 1) + 8 * v22) ekPredicateFilterMatches:v4])
        {
          v12 = 0;
          goto LABEL_30;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [filters countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_30:

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

@end