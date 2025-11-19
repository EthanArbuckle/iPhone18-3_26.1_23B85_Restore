@interface MFSearchSuggestionPhraseManager
+ (id)log;
+ (id)phraseManagerWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 filterQuery:(id)a7 implicitSuggestions:(id)a8 excludedMailboxes:(id)a9 inputLanguages:(id)a10 feedbackQueryID:(int64_t)a11 includeTopHitsAndInstantAnswers:(BOOL)a12;
+ (id)phraseManagerWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 scopeIdentifierForPeopleSuggestions:(id)a7 inputLanguages:(id)a8 implicitSuggestions:(id)a9 generateCannedSuggestions:(BOOL)a10 excludedMailboxes:(id)a11 feedbackQueryID:(int64_t)a12 includeTopHitsAndInstantAnswers:(BOOL)a13;
- (BOOL)hasCategory:(id)a3 andScope:(id)a4;
- (BOOL)hasMailboxSuggestion;
- (BOOL)hasSuggestionWithPredicate:(id)a3;
- (id)_spotlightQueryStringForVIP;
- (id)implicitAndSelectedSuggestions;
- (id)mailboxSpotlightQueryStringForPredicate:(id)a3 excluding:(BOOL)a4;
- (id)mailboxURLs;
- (id)spotlightQueryStrings;
@end

@implementation MFSearchSuggestionPhraseManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020DED0;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD628 != -1)
  {
    dispatch_once(&qword_1006DD628, block);
  }

  v2 = qword_1006DD620;

  return v2;
}

+ (id)phraseManagerWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 filterQuery:(id)a7 implicitSuggestions:(id)a8 excludedMailboxes:(id)a9 inputLanguages:(id)a10 feedbackQueryID:(int64_t)a11 includeTopHitsAndInstantAnswers:(BOOL)a12
{
  v28 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  LOBYTE(v27) = a12;
  v25 = [[a1 alloc] initWithPhrase:v28 selectedSuggestions:v18 vipManager:v19 updatedSuggestion:v20 scopeIdentifierForPeopleSuggestions:0 inputLanguages:v24 implicitSuggestions:v22 filterQuery:v21 excludedMailboxes:v23 customFlags:0 feedbackQueryID:a11 includeTopHitsAndInstantAnswers:v27];

  return v25;
}

+ (id)phraseManagerWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 scopeIdentifierForPeopleSuggestions:(id)a7 inputLanguages:(id)a8 implicitSuggestions:(id)a9 generateCannedSuggestions:(BOOL)a10 excludedMailboxes:(id)a11 feedbackQueryID:(int64_t)a12 includeTopHitsAndInstantAnswers:(BOOL)a13
{
  HIDWORD(v27) = a10;
  v30 = a3;
  v29 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  LOBYTE(v27) = a13;
  v25 = [[a1 alloc] initWithPhrase:v30 selectedSuggestions:v29 vipManager:v19 updatedSuggestion:v20 scopeIdentifierForPeopleSuggestions:v21 inputLanguages:v22 implicitSuggestions:v23 filterQuery:0 excludedMailboxes:v24 customFlags:0 feedbackQueryID:a12 includeTopHitsAndInstantAnswers:v27];
  [v25 setGenerateCannedSuggestions:v28];

  return v25;
}

- (id)implicitAndSelectedSuggestions
{
  v3 = [(MFSearchSuggestionPhraseManager *)self implicitSuggestions];
  v4 = [(MFSearchSuggestionPhraseManager *)self selectedSuggestions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (BOOL)hasMailboxSuggestion
{
  v3 = +[MUISearchSuggestionCategory mailboxCategory];
  LOBYTE(self) = [(MFSearchSuggestionPhraseManager *)self hasCategory:v3 andScope:MFSearchSuggestionMailboxCategoryScope];

  return self;
}

- (BOOL)hasSuggestionWithPredicate:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MFSearchSuggestionPhraseManager *)self selectedSuggestions];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) predicate];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasCategory:(id)a3 andScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFSearchSuggestionPhraseManager *)self implicitAndSelectedSuggestions];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 category];
        v14 = [v13 isGroupedInCategory:v6];

        if (v7)
        {
          v15 = [v12 selectedScope];
          v16 = [v15 identifier];
          v17 = [v16 isEqualToString:v7];
        }

        else
        {
          v17 = 1;
        }

        if (v14 & v17)
        {
          LOBYTE(v9) = 1;
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v9;
}

- (id)_spotlightQueryStringForVIP
{
  v2 = [(MFSearchSuggestionPhraseManager *)self vipManager];
  v3 = [v2 allVIPEmailAddresses];

  v4 = [v3 count];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:v4];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      v8 = MDItemAuthorEmailAddresses;
      v9 = MDItemAuthors;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) em_stringForQuotingWithCharacter:39];
          v12 = [NSString stringWithFormat:@"(%@ = '%@'cd) || (%@ = '%@'cd)", v8, v11, v9, v11];
          [v5 addObject:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = [EMSearchableIndexQuery queryStringByJoiningQueries:v5 withOperand:2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)spotlightQueryStrings
{
  v22 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(MFSearchSuggestionPhraseManager *)self implicitAndSelectedSuggestions];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [v7 predicate];
        v9 = [EMMessageListItemPredicates predicateForIsVIP:1];
        v10 = [v8 ef_containsSubpredicate:v9];

        if (v10)
        {
          v11 = [(MFSearchSuggestionPhraseManager *)self _spotlightQueryStringForVIP];
        }

        else
        {
          v12 = [v7 category];
          v13 = +[MUISearchSuggestionCategory mailboxCategory];
          v14 = v12 == v13;

          if (!v14)
          {
            v15 = 0;
            goto LABEL_13;
          }

          v11 = [(MFSearchSuggestionPhraseManager *)self mailboxSpotlightQueryStringForPredicate:v8 excluding:0];
        }

        v15 = v11;
        if (v11)
        {
          [v22 addObject:v11];
        }

LABEL_13:
      }

      v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v16 = [(MFSearchSuggestionPhraseManager *)self excludedMailboxes];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(MFSearchSuggestionPhraseManager *)self excludedMailboxes];
    v19 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxes:v18];

    v20 = [(MFSearchSuggestionPhraseManager *)self mailboxSpotlightQueryStringForPredicate:v19 excluding:1];
    [v22 addObject:v20];
  }

  return v22;
}

- (id)mailboxSpotlightQueryStringForPredicate:(id)a3 excluding:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [EMMessageListItemPredicates mailboxURLsForPredicate:v5];
  if (![v6 count])
  {
    v7 = +[MFSearchSuggestionPhraseManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10048BFC4(v5, v7);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10020ED2C;
  v12[3] = &unk_100655728;
  v13 = v4;
  v8 = [v6 ef_map:v12];
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [EMSearchableIndexQuery queryStringByJoiningQueries:v8 withOperand:v9];

  return v10;
}

- (id)mailboxURLs
{
  v19 = objc_alloc_init(NSMutableSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(MFSearchSuggestionPhraseManager *)self implicitAndSelectedSuggestions];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = *v21;
    v6 = MFSearchSuggestionMailboxCategoryScope;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 suggestion];
        v10 = [v9 category];
        v11 = +[MUISearchSuggestionCategory mailboxCategory];
        v12 = v10 == v11;

        if (v12)
        {
          v13 = [v8 selectedScope];
          v14 = [v13 identifier];
          v15 = [v14 isEqualToString:v6];

          if (v15)
          {
            v16 = [v8 predicate];
            v17 = [EMMessageListItemPredicates mailboxURLsForPredicate:v16];
            [v19 addObjectsFromArray:v17];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  return v19;
}

@end