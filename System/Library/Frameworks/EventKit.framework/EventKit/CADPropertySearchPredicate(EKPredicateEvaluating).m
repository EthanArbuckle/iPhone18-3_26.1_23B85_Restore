@interface CADPropertySearchPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADPropertySearchPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 entityType];
  switch(v5)
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

  v8 = [a1 calendarIDs];

  if (v8)
  {
    v9 = [v4 valueForKeyPath:@"calendar"];
    v10 = [v9 CADObjectID];

    v11 = [a1 calendarIDs];
    v12 = [v11 containsObject:v10];
  }

  else
  {
    v12 = 1;
  }

  v13 = [a1 sourceID];

  if (v13)
  {
    v14 = [v4 valueForKeyPath:@"calendar.source"];
    v15 = [v14 CADObjectID];
    v16 = [a1 sourceID];
    v17 = [v15 isEqual:v16];

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
  v18 = [a1 filters];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v18);
        }

        if (![*(*(&v25 + 1) + 8 * v22) ekPredicateFilterMatches:v4])
        {
          v12 = 0;
          goto LABEL_30;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
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