@interface PHContactsSearchResultsRanker
- (PHContactsSearchResultsRanker)init;
- (id)autocompleteSuggestionForContact:(id)contact phoneNumber:(id)number;
- (id)rankContactSearchResults:(id)results;
@end

@implementation PHContactsSearchResultsRanker

- (PHContactsSearchResultsRanker)init
{
  v10.receiver = self;
  v10.super_class = PHContactsSearchResultsRanker;
  v2 = [(PHContactsSearchResultsRanker *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PSPredictionContext);
    context = v2->_context;
    v2->_context = v3;

    [(_PSPredictionContext *)v2->_context setBundleID:@"com.apple.InCallService"];
    v5 = +[_PSSuggesterConfiguration defaultConfiguration];
    configuration = v2->_configuration;
    v2->_configuration = v5;

    v7 = objc_alloc_init(_PSEnsembleModel);
    model = v2->_model;
    v2->_model = v7;
  }

  return v2;
}

- (id)rankContactSearchResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSMutableArray array];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = [resultsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] Received request to rank %lu contacts", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    v36 = v8;
    v37 = v7;
    v35 = *v47;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        contact = [v13 contact];
        identifier = [contact identifier];
        [v7 setObject:v13 forKeyedSubscript:identifier];

        preferredPhoneNumber = [v13 preferredPhoneNumber];

        if (preferredPhoneNumber)
        {
          preferredPhoneNumber2 = [v13 preferredPhoneNumber];
          phoneNumbers = [(PHContactsSearchResultsRanker *)self autocompleteSuggestionForContact:contact phoneNumber:preferredPhoneNumber2];

          [v5 addObject:phoneNumbers];
        }

        else
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          phoneNumbers = [contact phoneNumbers];
          v19 = [phoneNumbers countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v43;
LABEL_12:
            v23 = 0;
            while (1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              v24 = [(PHContactsSearchResultsRanker *)self autocompleteSuggestionForContact:contact phoneNumber:*(*(&v42 + 1) + 8 * v23)];
              [v5 addObject:v24];

              if (v21 == 4)
              {
                break;
              }

              v23 = v23 + 1;
              ++v21;
              if (v20 == v23)
              {
                v20 = [phoneNumbers countByEnumeratingWithState:&v42 objects:v54 count:16];
                if (v20)
                {
                  goto LABEL_12;
                }

                break;
              }
            }

            v8 = v36;
            v7 = v37;
            v11 = v35;
            v10 = v38;
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v10);
  }

  v25 = sub_100004F84();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v5 count];
    v27 = [v8 count];
    *buf = 134218240;
    v51 = v26;
    v52 = 2048;
    v53 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] Created %lu candidates from %lu contacts", buf, 0x16u);
  }

  model = [(PHContactsSearchResultsRanker *)self model];
  context = [(PHContactsSearchResultsRanker *)self context];
  v30 = [model rankedAutocompleteSuggestionsFromContext:context candidates:v5];

  v31 = objc_alloc_init(NSMutableArray);
  if ([v30 count])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000B39B4;
    v39[3] = &unk_100358BD8;
    v40 = v7;
    v41 = v31;
    [v30 enumerateObjectsUsingBlock:v39];
  }

  v32 = sub_100004F84();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v31 count];
    *buf = 134217984;
    v51 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] After ranking, rankedContactSearchResults = %lu", buf, 0xCu);
  }

  return v31;
}

- (id)autocompleteSuggestionForContact:(id)contact phoneNumber:(id)number
{
  contactCopy = contact;
  value = [number value];
  unformattedInternationalStringValue = [value unformattedInternationalStringValue];

  v8 = [_PSAutocompleteSuggestion alloc];
  displayName = [contactCopy displayName];
  identifier = [contactCopy identifier];

  v11 = [v8 initWithChatGuid:0 chatHandles:0 displayName:displayName handle:unformattedInternationalStringValue contactIdentifier:identifier resultSourceType:16 autocompleteResult:0 recipients:0];

  return v11;
}

@end