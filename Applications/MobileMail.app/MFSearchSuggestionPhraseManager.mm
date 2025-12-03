@interface MFSearchSuggestionPhraseManager
+ (id)log;
+ (id)phraseManagerWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion filterQuery:(id)query implicitSuggestions:(id)implicitSuggestions excludedMailboxes:(id)mailboxes inputLanguages:(id)self0 feedbackQueryID:(int64_t)self1 includeTopHitsAndInstantAnswers:(BOOL)self2;
+ (id)phraseManagerWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion scopeIdentifierForPeopleSuggestions:(id)peopleSuggestions inputLanguages:(id)languages implicitSuggestions:(id)implicitSuggestions generateCannedSuggestions:(BOOL)self0 excludedMailboxes:(id)self1 feedbackQueryID:(int64_t)self2 includeTopHitsAndInstantAnswers:(BOOL)self3;
- (BOOL)hasCategory:(id)category andScope:(id)scope;
- (BOOL)hasMailboxSuggestion;
- (BOOL)hasSuggestionWithPredicate:(id)predicate;
- (id)_spotlightQueryStringForVIP;
- (id)implicitAndSelectedSuggestions;
- (id)mailboxSpotlightQueryStringForPredicate:(id)predicate excluding:(BOOL)excluding;
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
  block[4] = self;
  if (qword_1006DD628 != -1)
  {
    dispatch_once(&qword_1006DD628, block);
  }

  v2 = qword_1006DD620;

  return v2;
}

+ (id)phraseManagerWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion filterQuery:(id)query implicitSuggestions:(id)implicitSuggestions excludedMailboxes:(id)mailboxes inputLanguages:(id)self0 feedbackQueryID:(int64_t)self1 includeTopHitsAndInstantAnswers:(BOOL)self2
{
  phraseCopy = phrase;
  suggestionsCopy = suggestions;
  managerCopy = manager;
  suggestionCopy = suggestion;
  queryCopy = query;
  implicitSuggestionsCopy = implicitSuggestions;
  mailboxesCopy = mailboxes;
  languagesCopy = languages;
  LOBYTE(v27) = answers;
  v25 = [[self alloc] initWithPhrase:phraseCopy selectedSuggestions:suggestionsCopy vipManager:managerCopy updatedSuggestion:suggestionCopy scopeIdentifierForPeopleSuggestions:0 inputLanguages:languagesCopy implicitSuggestions:implicitSuggestionsCopy filterQuery:queryCopy excludedMailboxes:mailboxesCopy customFlags:0 feedbackQueryID:d includeTopHitsAndInstantAnswers:v27];

  return v25;
}

+ (id)phraseManagerWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion scopeIdentifierForPeopleSuggestions:(id)peopleSuggestions inputLanguages:(id)languages implicitSuggestions:(id)implicitSuggestions generateCannedSuggestions:(BOOL)self0 excludedMailboxes:(id)self1 feedbackQueryID:(int64_t)self2 includeTopHitsAndInstantAnswers:(BOOL)self3
{
  HIDWORD(v27) = cannedSuggestions;
  phraseCopy = phrase;
  suggestionsCopy = suggestions;
  managerCopy = manager;
  suggestionCopy = suggestion;
  peopleSuggestionsCopy = peopleSuggestions;
  languagesCopy = languages;
  implicitSuggestionsCopy = implicitSuggestions;
  mailboxesCopy = mailboxes;
  LOBYTE(v27) = answers;
  v25 = [[self alloc] initWithPhrase:phraseCopy selectedSuggestions:suggestionsCopy vipManager:managerCopy updatedSuggestion:suggestionCopy scopeIdentifierForPeopleSuggestions:peopleSuggestionsCopy inputLanguages:languagesCopy implicitSuggestions:implicitSuggestionsCopy filterQuery:0 excludedMailboxes:mailboxesCopy customFlags:0 feedbackQueryID:d includeTopHitsAndInstantAnswers:v27];
  [v25 setGenerateCannedSuggestions:v28];

  return v25;
}

- (id)implicitAndSelectedSuggestions
{
  implicitSuggestions = [(MFSearchSuggestionPhraseManager *)self implicitSuggestions];
  selectedSuggestions = [(MFSearchSuggestionPhraseManager *)self selectedSuggestions];
  v5 = [implicitSuggestions arrayByAddingObjectsFromArray:selectedSuggestions];

  return v5;
}

- (BOOL)hasMailboxSuggestion
{
  v3 = +[MUISearchSuggestionCategory mailboxCategory];
  LOBYTE(self) = [(MFSearchSuggestionPhraseManager *)self hasCategory:v3 andScope:MFSearchSuggestionMailboxCategoryScope];

  return self;
}

- (BOOL)hasSuggestionWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selectedSuggestions = [(MFSearchSuggestionPhraseManager *)self selectedSuggestions];
  v6 = [selectedSuggestions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selectedSuggestions);
        }

        predicate = [*(*(&v12 + 1) + 8 * i) predicate];
        v10 = [predicate isEqual:predicateCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [selectedSuggestions countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)hasCategory:(id)category andScope:(id)scope
{
  categoryCopy = category;
  scopeCopy = scope;
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
        category = [v12 category];
        v14 = [category isGroupedInCategory:categoryCopy];

        if (scopeCopy)
        {
          selectedScope = [v12 selectedScope];
          identifier = [selectedScope identifier];
          v17 = [identifier isEqualToString:scopeCopy];
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
  vipManager = [(MFSearchSuggestionPhraseManager *)self vipManager];
  allVIPEmailAddresses = [vipManager allVIPEmailAddresses];

  v4 = [allVIPEmailAddresses count];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:v4];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = allVIPEmailAddresses;
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
  implicitAndSelectedSuggestions = [(MFSearchSuggestionPhraseManager *)self implicitAndSelectedSuggestions];
  v4 = [implicitAndSelectedSuggestions countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(implicitAndSelectedSuggestions);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        predicate = [v7 predicate];
        v9 = [EMMessageListItemPredicates predicateForIsVIP:1];
        v10 = [predicate ef_containsSubpredicate:v9];

        if (v10)
        {
          _spotlightQueryStringForVIP = [(MFSearchSuggestionPhraseManager *)self _spotlightQueryStringForVIP];
        }

        else
        {
          category = [v7 category];
          v13 = +[MUISearchSuggestionCategory mailboxCategory];
          v14 = category == v13;

          if (!v14)
          {
            v15 = 0;
            goto LABEL_13;
          }

          _spotlightQueryStringForVIP = [(MFSearchSuggestionPhraseManager *)self mailboxSpotlightQueryStringForPredicate:predicate excluding:0];
        }

        v15 = _spotlightQueryStringForVIP;
        if (_spotlightQueryStringForVIP)
        {
          [v22 addObject:_spotlightQueryStringForVIP];
        }

LABEL_13:
      }

      v4 = [implicitAndSelectedSuggestions countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  excludedMailboxes = [(MFSearchSuggestionPhraseManager *)self excludedMailboxes];
  v17 = [excludedMailboxes count];

  if (v17)
  {
    excludedMailboxes2 = [(MFSearchSuggestionPhraseManager *)self excludedMailboxes];
    v19 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxes:excludedMailboxes2];

    v20 = [(MFSearchSuggestionPhraseManager *)self mailboxSpotlightQueryStringForPredicate:v19 excluding:1];
    [v22 addObject:v20];
  }

  return v22;
}

- (id)mailboxSpotlightQueryStringForPredicate:(id)predicate excluding:(BOOL)excluding
{
  excludingCopy = excluding;
  predicateCopy = predicate;
  v6 = [EMMessageListItemPredicates mailboxURLsForPredicate:predicateCopy];
  if (![v6 count])
  {
    v7 = +[MFSearchSuggestionPhraseManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10048BFC4(predicateCopy, v7);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10020ED2C;
  v12[3] = &unk_100655728;
  v13 = excludingCopy;
  v8 = [v6 ef_map:v12];
  if (excludingCopy)
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
  implicitAndSelectedSuggestions = [(MFSearchSuggestionPhraseManager *)self implicitAndSelectedSuggestions];
  v4 = [implicitAndSelectedSuggestions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(implicitAndSelectedSuggestions);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        suggestion = [v8 suggestion];
        category = [suggestion category];
        v11 = +[MUISearchSuggestionCategory mailboxCategory];
        v12 = category == v11;

        if (v12)
        {
          selectedScope = [v8 selectedScope];
          identifier = [selectedScope identifier];
          v15 = [identifier isEqualToString:v6];

          if (v15)
          {
            predicate = [v8 predicate];
            v17 = [EMMessageListItemPredicates mailboxURLsForPredicate:predicate];
            [v19 addObjectsFromArray:v17];
          }
        }
      }

      v4 = [implicitAndSelectedSuggestions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  return v19;
}

@end