@interface CADCalendarItemsWithExternalIdentifierPredicate(EKPredicateEvaluating)
- (id)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
- (void)expandWithObjectsPendingCommit:()EKPredicateEvaluating deletedObjectIDs:andResultArray:;
@end

@implementation CADCalendarItemsWithExternalIdentifierPredicate(EKPredicateEvaluating)

- (id)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 uniqueID];
    v7 = [a1 externalIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v11.receiver = a1;
      v11.super_class = &off_1F1B9FBD8;
      v9 = objc_msgSendSuper2(&v11, sel_ekPredicateEvaluateWithObject_, v5);
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

- (void)expandWithObjectsPendingCommit:()EKPredicateEvaluating deletedObjectIDs:andResultArray:
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v40 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v16 objectID];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v13);
  }

  v18 = MEMORY[0x1E696AE18];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __137__CADCalendarItemsWithExternalIdentifierPredicate_EKPredicateEvaluating__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke;
  v45[3] = &unk_1E77FE698;
  v19 = v9;
  v46 = v19;
  v20 = v10;
  v47 = v20;
  v48 = a1;
  v21 = [v18 predicateWithBlock:v45];
  [v40 filterUsingPredicate:v21];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    v39 = v22;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v41 + 1) + 8 * j);
        v28 = [v22 objectForKeyedSubscript:{v27, v39}];
        if ([a1 ekPredicateEvaluateWithObject:v28] && (objc_msgSend(v19, "containsObject:", v27) & 1) == 0)
        {
          v29 = [EKEvent alloc];
          [v28 persistentObject];
          v30 = v24;
          v31 = v25;
          v32 = a1;
          v33 = v19;
          v35 = v34 = v11;
          v36 = [v28 startDate];
          v37 = [(EKEvent *)v29 initWithPersistentObject:v35 occurrenceDate:v36];

          v11 = v34;
          v19 = v33;
          a1 = v32;
          v25 = v31;
          v24 = v30;
          v22 = v39;
          [v40 addObject:v37];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v24);
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end