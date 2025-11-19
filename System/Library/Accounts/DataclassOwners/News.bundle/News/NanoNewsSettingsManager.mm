@interface NanoNewsSettingsManager
+ (BOOL)_validDateArray:(id)a3;
+ (id)articleIdentifiersOnGizmo;
+ (id)gizmoSavedHeadlineIdentifiers;
+ (id)preferredRefreshDates;
+ (id)savedHeadlineIdentifiers;
+ (id)seenHeadlineIdentifiers;
+ (void)addSavedIdentifier:(id)a3;
+ (void)addSeenIdentifier:(id)a3;
+ (void)removeSavedIdentifier:(id)a3;
+ (void)removeSeenIdentifier:(id)a3;
+ (void)resetSaved;
+ (void)resetSeen;
+ (void)setPreferredRefreshDates:(id)a3;
+ (void)setSavedIdentifiers:(id)a3;
+ (void)synchronizeSeenHeadlineIdentifiers;
@end

@implementation NanoNewsSettingsManager

+ (void)synchronizeSeenHeadlineIdentifiers
{
  v2 = +[NNArticleIdentifierSyncManager seenManager];
  [v2 synchronize];
}

+ (id)seenHeadlineIdentifiers
{
  v2 = +[NNArticleIdentifierSyncManager seenManager];
  v3 = [v2 articleIdentifiers];

  return v3;
}

+ (id)savedHeadlineIdentifiers
{
  v2 = +[NNArticleIdentifierSyncManager savedManager];
  v3 = [v2 articleIdentifiers];

  return v3;
}

+ (id)articleIdentifiersOnGizmo
{
  v2 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v2 synchronize];
  v3 = [v2 arrayForKey:@"gizmoArticleIdentifiers"];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

+ (id)gizmoSavedHeadlineIdentifiers
{
  v2 = +[NNArticleIdentifierSyncManager savedManager];
  v3 = [v2 readonlyArticleIdentifiers];

  return v3;
}

+ (void)addSeenIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NNArticleIdentifierSyncManager seenManager];
  [v4 addIdentifier:v3];
}

+ (void)addSavedIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NNArticleIdentifierSyncManager savedManager];
  [v4 addIdentifier:v3];

  [v4 synchronize];
}

+ (void)removeSavedIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NNArticleIdentifierSyncManager savedManager];
  [v4 removeIdentifier:v3];

  [v4 synchronize];
}

+ (void)removeSeenIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NNArticleIdentifierSyncManager seenManager];
  [v4 removeIdentifier:v3];
}

+ (BOOL)_validDateArray:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (id)preferredRefreshDates
{
  v3 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v3 synchronize];
  v4 = [v3 objectForKey:@"preferredRefreshDates"];
  v5 = [a1 _validDateArray:v4];
  if (v4 && (v5 & 1) != 0)
  {
    v6 = v4;
  }

  else
  {
    v7 = +[NSDate date];
    v8 = +[NSCalendar currentCalendar];
    v9 = +[NSMutableArray array];
    v10 = +[NSTimeZone localTimeZone];
    v18 = v7;
    v11 = [v8 componentsInTimeZone:v10 fromDate:v7];

    [v11 setMinute:0];
    [v11 setSecond:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [&off_88E0 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(&off_88E0);
          }

          [v11 setHour:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "integerValue")}];
          v16 = [v8 dateFromComponents:v11];
          [v9 addObject:v16];
        }

        v13 = [&off_88E0 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v6 = [v9 copy];
  }

  return v6;
}

+ (void)setPreferredRefreshDates:(id)a3
{
  v6 = a3;
  v4 = +[NSUserDefaults nanoNewsSyncDefaults];
  [v4 synchronize];
  if ([a1 _validDateArray:v6])
  {
    [v4 setObject:v6 forKey:@"preferredRefreshDates"];
    [v4 synchronize];
    v5 = [NSSet setWithObject:@"preferredRefreshDates"];
    [v4 nn_synchronizeKeys:v5];
  }
}

+ (void)setSavedIdentifiers:(id)a3
{
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a1 addSavedIdentifier:*(*(&v34 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v9 = +[NNArticleIdentifierSyncManager savedManager];
  v10 = [v9 articleIdentifiers];

  v11 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        if (([v4 containsObject:v17] & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * k);
        v24 = +[NNArticleIdentifierSyncManager savedManager];
        [v24 removeIdentifier:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  v25 = +[NNArticleIdentifierSyncManager savedManager];
  [v25 synchronize];
}

+ (void)resetSeen
{
  v2 = +[NNArticleIdentifierSyncManager seenManager];
  [v2 clearAllIdentifiers];
}

+ (void)resetSaved
{
  v2 = +[NNArticleIdentifierSyncManager savedManager];
  [v2 clearAllIdentifiers];
}

@end