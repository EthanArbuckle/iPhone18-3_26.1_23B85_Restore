@interface ATXSpotlightHidingUIController
+ (id)normalizedIdentifier:(id)identifier;
- (BOOL)_autoShortcutHasBeenHiddenForSearchResult:(id)result withFeedbackManager:(id)manager;
- (BOOL)_contextHasBeenHiddenForSearchResult:(id)result adapter:(id)adapter feedbackManager:(id)manager;
- (BOOL)_isExecutableIdentifierRecognized:(id)recognized;
- (BOOL)_shouldAddHidingButtonItemForContextIdentifier:(id)identifier;
- (BOOL)_shouldAddHidingButtonItemForExecutableIdentifier:(id)identifier;
- (BOOL)shouldHideSearchResult:(id)result;
- (id)_actionTypeButtonItemWithBundleIdentifier:(id)identifier;
- (id)_actionTypeButtonItemWithExecutableIdentifier:(id)identifier;
- (id)_contextIdentifierWithPredictionReasons:(unint64_t)reasons;
- (id)_entityButtonItemWithWithSearchEntity:(id)entity;
- (id)_hideActionTitleWithExecutableIdentifier:(id)identifier;
- (id)_hideContextActionTitleWithContextIdentifier:(id)identifier;
- (id)_hideContextButtonItemWithContextIdentifier:(id)identifier;
- (id)_hideContextButtonItemWithReasons:(unint64_t)reasons;
- (id)_hideContextSymbolImageWithContextIdentifier:(id)identifier;
- (id)_hideWebsiteButtonItemWithIdentifier:(id)identifier;
- (id)_hidingCommandButtonItemWithIdentifier:(id)identifier title:(id)title symbolName:(id)name isAction:(BOOL)action;
- (id)_hidingPreviewButtonItemsWithBundleIdentifier:(id)identifier context:(unint64_t)context;
- (id)_hidingPreviewButtonItemsWithExecutableIdentifier:(id)identifier context:(unint64_t)context;
- (id)_hidingPreviewButtonItemsWithSearchResult:(id)result entity:(id)entity;
- (id)_hidingPreviewButtonItemsWithSearchResult:(id)result queryTopic:(id)topic;
- (id)_hidingPreviewButtonItemsWithURL:(id)l identifier:(id)identifier context:(unint64_t)context;
- (id)_identifierWithEntity:(id)entity;
- (id)_identifierWithSearchResult:(id)result;
- (id)_identifierWithSuggestion:(id)suggestion;
- (id)_localizedTitleWithQueryTopic:(id)topic;
- (id)_makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:(BOOL)section ForResult:(id)result;
- (id)_nameWithNearbySuggestionIdentifier:(id)identifier;
- (id)_nearbySuggestionIdentifierWithName:(id)name;
- (id)_subMenuButtonItemWithItems:(id)items;
- (id)_symbolNameWithQueryTopic:(id)topic;
- (void)_addHideContextButtonItemForSearchResult:(id)result toButtonItems:(id)items;
- (void)_addHidingButtonToAutoShortcut:(id)shortcut;
- (void)_addHidingPreviewButtonItemsToSearchResult:(id)result;
- (void)_addSwipeButtonItemToCardSection:(id)section previewButtonItems:(id)items;
- (void)addHidingPreviewButtonItemsToServerResultSections:(id)sections;
@end

@implementation ATXSpotlightHidingUIController

- (BOOL)shouldHideSearchResult:(id)result
{
  v61 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    *buf = 138412290;
    v56 = sectionBundleIdentifier;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "shouldHideSearchResult searchResult.sectionBundleIdentifier:%@", buf, 0xCu);
  }

  sectionBundleIdentifier2 = [resultCopy sectionBundleIdentifier];
  v10 = [sectionBundleIdentifier2 isEqualToString:@"com.apple.spotlight.dec.zkw.recents"];

  if (v10)
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = @"com.apple.spotlight.dec.zkw.recents";
      v12 = "shouldHideSearchResult NO in %@";
      v13 = v11;
      v14 = 12;
LABEL_9:
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  sectionBundleIdentifier3 = [resultCopy sectionBundleIdentifier];
  v16 = [sectionBundleIdentifier3 isEqualToString:@"com.apple.searchd.suggestions"];

  if (v16)
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "shouldHideSearchResult NO in com.apple.searchd.suggestions";
      v13 = v11;
      v14 = 2;
      goto LABEL_9;
    }

LABEL_10:
    LOBYTE(v17) = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([resultCopy proactiveSuggestion], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v19;
    v20 = [(ATXSpotlightHidingUIController *)self _identifierWithSuggestion:v19];
    v21 = [v5 hasBeenHiddenEntityWithIdentifier:v20];
    v22 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uiSpecification = [v11 uiSpecification];
      [uiSpecification title];
      v24 = v11;
      v25 = v6;
      v27 = v26 = v5;
      *buf = 138412802;
      v56 = v20;
      v57 = 2112;
      v58 = v27;
      v59 = 1024;
      v60 = v21;
      _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "hasBeenHiddenEntityWithIdentifier:%@ for suggestion:%@ hidden=%{BOOL}d", buf, 0x1Cu);

      v5 = v26;
      v6 = v25;
      v11 = v24;
    }

    if (v21)
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      v17 = [v5 contextHasBeenHiddenForSuggestion:v11];
      v40 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        uiSpecification2 = [v11 uiSpecification];
        [uiSpecification2 title];
        v42 = v11;
        v43 = v6;
        v45 = v44 = v5;
        *buf = 138412546;
        v56 = v45;
        v57 = 1024;
        LODWORD(v58) = v17;
        _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "contextHasBeenHiddenForSuggestion :%@ hidden=%{BOOL}d", buf, 0x12u);

        v5 = v44;
        v6 = v43;
        v11 = v42;
      }
    }
  }

  else
  {
    getSPSearchSuggestionResultClass();
    if (objc_opt_isKindOfClass())
    {
      v48 = v6;
      v49 = resultCopy;
      v47 = resultCopy;
      [v47 searchEntities];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = v53 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v51;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v50 + 1) + 8 * i);
            v34 = [(ATXSpotlightHidingUIController *)self _identifierWithEntity:v33];
            v35 = v5;
            v36 = [v5 hasBeenHiddenEntityWithIdentifier:v34];
            v37 = __atxlog_handle_zkw_hide();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v56 = v34;
              v57 = 2112;
              v58 = v33;
              v59 = 1024;
              v60 = v36;
              _os_log_impl(&dword_1BF549000, v37, OS_LOG_TYPE_DEFAULT, "hasBeenHiddenEntityWithIdentifier:%@ for entity:%@ hidden=%{BOOL}d", buf, 0x1Cu);
            }

            if (v36)
            {

              LOBYTE(v17) = 1;
              v5 = v35;
              v11 = v47;
              v6 = v48;
              goto LABEL_37;
            }

            v5 = v35;
          }

          v30 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v11 = v47;
      v6 = v48;
      LOBYTE(v17) = [(ATXSpotlightHidingUIController *)self _contextHasBeenHiddenForSearchResult:v47 adapter:v48 feedbackManager:v5];
LABEL_37:

      resultCopy = v49;
    }

    else
    {
      v11 = [(ATXSpotlightHidingUIController *)self _identifierWithSearchResult:resultCopy];
      if (![v11 length])
      {
        v46 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          [ATXSpotlightHidingUIController shouldHideSearchResult:];
        }

        goto LABEL_10;
      }

      v38 = [v5 hasBeenHiddenEntityWithIdentifier:v11];
      v39 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v56 = v11;
        v57 = 1024;
        LODWORD(v58) = v38;
        _os_log_impl(&dword_1BF549000, v39, OS_LOG_TYPE_DEFAULT, "hasBeenHiddenEntityWithIdentifier resultIdentifier:%@ hidden=%{BOOL}d", buf, 0x12u);
      }

      LOBYTE(v17) = (v38 & 1) != 0 || [(ATXSpotlightHidingUIController *)self _contextHasBeenHiddenForSearchResult:resultCopy adapter:v6 feedbackManager:v5]|| [(ATXSpotlightHidingUIController *)self _autoShortcutHasBeenHiddenForSearchResult:resultCopy withFeedbackManager:v5];
    }
  }

LABEL_11:

  return v17;
}

- (BOOL)_contextHasBeenHiddenForSearchResult:(id)result adapter:(id)adapter feedbackManager:(id)manager
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  adapterCopy = adapter;
  managerCopy = manager;
  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if (sectionBundleIdentifier)
  {
    v11 = [adapterCopy contextCodeIdentifierWithSectionBundleIdentifier:sectionBundleIdentifier];
    v12 = [managerCopy contextHasBeenHiddenForContextIdentifier:v11];
    v13 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "contextHasBeenHiddenForContextIdentifier :%@ hidden=%{BOOL}d", &v15, 0x12u);
    }
  }

  else
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = resultCopy;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightHidingUIController contextHasBeenHiddenForSearchResult:%@ sectionBundleIdentifier is NIL hidden=NO", &v15, 0xCu);
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_autoShortcutHasBeenHiddenForSearchResult:(id)result withFeedbackManager:(id)manager
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  managerCopy = manager;
  getSPSearchSuggestionResultClass();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([resultCopy sectionBundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"), v7, v8))
  {
    relatedAppIdentifier = [resultCopy relatedAppIdentifier];
  }

  else
  {
    relatedAppIdentifier = [resultCopy applicationBundleIdentifier];
  }

  v10 = relatedAppIdentifier;
  identifier = [resultCopy identifier];
  v12 = [v10 stringByAppendingString:identifier];
  v13 = [managerCopy autoShortcutHasBeenHiddenForIdentifier:v12];

  v14 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [resultCopy identifier];
    v16 = [v10 stringByAppendingString:identifier2];
    v18 = 138412546;
    v19 = v16;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "autoShortcutHasBeenHiddenForSearchResult :%@ hidden=%{BOOL}d", &v18, 0x12u);
  }

  return v13;
}

- (id)_identifierWithSearchResult:(id)result
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  normalizedTopic = [resultCopy normalizedTopic];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    normalizedTopic2 = [resultCopy normalizedTopic];
    queryType = [normalizedTopic2 queryType];
    switch(queryType)
    {
      case 3:
        v18 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          query = [normalizedTopic2 query];
          v28 = 138412290;
          *v29 = query;
          _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult kSFQueryTopicTypeSports identifier queryTopic.query=%@", &v28, 0xCu);
        }

        query2 = [normalizedTopic2 query];
        break;
      case 6:
        query3 = [normalizedTopic2 query];
        identifier5 = [(ATXSpotlightHidingUIController *)self _nearbySuggestionIdentifierWithName:query3];

        v17 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          *v29 = identifier5;
          _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult kSFQueryTopicTypeRelatePOI identifier =%@", &v28, 0xCu);
        }

        goto LABEL_29;
      case 4:
        v9 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          *v29 = @"zkw.hiding.topic.weather";
          _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult kSFQueryTopicTypeWeather queryTopic weather identifier %@", &v28, 0xCu);
        }

        identifier5 = @"zkw.hiding.topic.weather";
        goto LABEL_29;
      default:
        v21 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          queryType2 = [normalizedTopic2 queryType];
          identifier = [resultCopy identifier];
          v28 = 67109378;
          v29[0] = queryType2;
          LOWORD(v29[1]) = 2112;
          *(&v29[1] + 2) = identifier;
          _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult queryTopic.queryType=%d default identifier %@", &v28, 0x12u);
        }

        identifier2 = [resultCopy identifier];
        v25 = [identifier2 length];

        if (!v25)
        {
          v26 = __atxlog_handle_zkw_hide();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [ATXSpotlightHidingUIController _identifierWithSearchResult:];
          }
        }

        query2 = [resultCopy identifier];
        break;
    }

    identifier5 = query2;
LABEL_29:

    goto LABEL_30;
  }

  v11 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [resultCopy identifier];
    v28 = 138412290;
    *v29 = identifier3;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult default identifier %@", &v28, 0xCu);
  }

  identifier4 = [resultCopy identifier];
  v14 = [identifier4 length];

  if (!v14)
  {
    v15 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _identifierWithSearchResult:];
    }
  }

  identifier5 = [resultCopy identifier];
LABEL_30:

  return identifier5;
}

- (id)_identifierWithSuggestion:(id)suggestion
{
  v31 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];

  v7 = [objc_opt_class() normalizedIdentifier:executableIdentifier];

  executableSpecification2 = [suggestionCopy executableSpecification];
  v9 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = executableSpecification2;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableSpecification = %@", &v27, 0xCu);
  }

  executableObject = [executableSpecification2 executableObject];
  v11 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = executableObject;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableObject=%@", &v27, 0xCu);
  }

  if ([v7 hasPrefix:@"is.workflow.actions.openurl"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = executableObject;
      contextualAction = [v12 contextualAction];
      associatedAppBundleIdentifier = [contextualAction associatedAppBundleIdentifier];
      v15 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = associatedAppBundleIdentifier;
        _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: bundleIdentifier = %@", &v27, 0xCu);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [associatedAppBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
      {
        v16 = [contextualAction url];
        _lp_simplifiedDisplayString = [v16 _lp_simplifiedDisplayString];
        v18 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v16;
          v29 = 2112;
          v30 = _lp_simplifiedDisplayString;
          _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: url = %@ urlIdentifier=%@", &v27, 0x16u);
        }

        if (![_lp_simplifiedDisplayString length])
        {
          v19 = __atxlog_handle_zkw_hide();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [ATXSpotlightHidingUIController _identifierWithSuggestion:];
          }
        }
      }

      else
      {
        _lp_simplifiedDisplayString = associatedAppBundleIdentifier;
      }

LABEL_29:
      goto LABEL_30;
    }
  }

  if ([(ATXSpotlightHidingUIController *)self _isExecutableIdentifierRecognized:v7])
  {
    v20 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v7;
      _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableIdentifier %@ is recognized. Using it", &v27, 0xCu);
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = executableObject;
    v21 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      bundleId = [v12 bundleId];
      v27 = 138412290;
      v28 = bundleId;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: default ATXAction identifier=bundleId=%@", &v27, 0xCu);
    }

    _lp_simplifiedDisplayString = [v12 bundleId];
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([v7 length])
    {
      goto LABEL_22;
    }

    v20 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _identifierWithSuggestion:];
    }

LABEL_21:

LABEL_22:
    _lp_simplifiedDisplayString = v7;
    goto LABEL_30;
  }

  clipMetadata = [executableObject clipMetadata];
  clipName = [clipMetadata clipName];

  _lp_simplifiedDisplayString = [(ATXSpotlightHidingUIController *)self _nearbySuggestionIdentifierWithName:clipName];
  v26 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = _lp_simplifiedDisplayString;
    _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: ATXHeroData identifier with heroData.clipMetadata.clipName=%@", &v27, 0xCu);
  }

LABEL_30:

  return _lp_simplifiedDisplayString;
}

- (id)_identifierWithEntity:(id)entity
{
  entityCopy = entity;
  getSPSearchContactEntityClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    personQueryIdentifier = 0;
    goto LABEL_11;
  }

  v4 = entityCopy;
  contactIdentifier = [v4 contactIdentifier];

  if (contactIdentifier)
  {
    contactIdentifier2 = [v4 contactIdentifier];
LABEL_9:
    personQueryIdentifier = contactIdentifier2;
    goto LABEL_10;
  }

  personIdentifier = [v4 personIdentifier];

  if (personIdentifier)
  {
    contactIdentifier2 = [v4 personIdentifier];
    goto LABEL_9;
  }

  personQueryIdentifier = [v4 personQueryIdentifier];

  if (personQueryIdentifier)
  {
    contactIdentifier2 = [v4 personQueryIdentifier];
    goto LABEL_9;
  }

LABEL_10:

LABEL_11:
  if (![personQueryIdentifier length])
  {
    v9 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _identifierWithEntity:];
    }
  }

  return personQueryIdentifier;
}

- (void)addHidingPreviewButtonItemsToServerResultSections:(id)sections
{
  v43 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [sectionsCopy count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "addHidingPreviewButtonItemsToServerResultSections %lu sections", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = sectionsCopy;
  v25 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v25)
  {
    v24 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        bundleIdentifier = [v7 bundleIdentifier];
        if (([bundleIdentifier isEqualToString:@"com.apple.spotlight.dec.zkw.recents"] & 1) == 0)
        {
          bundleIdentifier2 = [v7 bundleIdentifier];
          v10 = [bundleIdentifier2 isEqualToString:@"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"];

          if (v10)
          {
            goto LABEL_18;
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          bundleIdentifier = [v7 results];
          v11 = [bundleIdentifier countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v31;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v31 != v13)
                {
                  objc_enumerationMutation(bundleIdentifier);
                }

                [(ATXSpotlightHidingUIController *)self _addHidingPreviewButtonItemsToSearchResult:*(*(&v30 + 1) + 8 * j)];
              }

              v12 = [bundleIdentifier countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v12);
          }
        }

LABEL_18:
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        results = [v7 results];
        v16 = [results countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(results);
              }

              v20 = *(*(&v26 + 1) + 8 * k);
              sectionBundleIdentifier = [v20 sectionBundleIdentifier];
              v22 = [sectionBundleIdentifier isEqualToString:@"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"];

              if (v22)
              {
                [(ATXSpotlightHidingUIController *)self _addHidingButtonToAutoShortcut:v20];
              }
            }

            v17 = [results countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v25);
  }
}

- (void)_addHidingButtonToAutoShortcut:(id)shortcut
{
  v19[1] = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  if ([shortcutCopy shouldUseCompactDisplay] && (objc_msgSend(shortcutCopy, "compactCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    compactCard = [shortcutCopy compactCard];
  }

  else
  {
    compactCard = [shortcutCopy inlineCard];
  }

  cardSections = [compactCard cardSections];
  firstObject = [cardSections firstObject];

  v10 = [(ATXSpotlightHidingUIController *)self _makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:1 ForResult:shortcutCopy];
  v11 = [(ATXSpotlightHidingUIController *)self _makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:0 ForResult:shortcutCopy];
  previewButtonItems = [firstObject previewButtonItems];
  if (previewButtonItems)
  {
    previewButtonItems2 = [firstObject previewButtonItems];
    v14 = [previewButtonItems2 arrayByAddingObject:v10];
    [firstObject setPreviewButtonItems:v14];
  }

  else
  {
    v19[0] = v10;
    previewButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [firstObject setPreviewButtonItems:previewButtonItems2];
  }

  trailingSwipeButtonItems = [firstObject trailingSwipeButtonItems];
  if (trailingSwipeButtonItems)
  {
    trailingSwipeButtonItems2 = [firstObject trailingSwipeButtonItems];
    v17 = [trailingSwipeButtonItems2 arrayByAddingObject:v11];
    [firstObject setTrailingSwipeButtonItems:v17];
  }

  else
  {
    v18 = v11;
    trailingSwipeButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [firstObject setTrailingSwipeButtonItems:trailingSwipeButtonItems2];
  }
}

- (id)_makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:(BOOL)section ForResult:(id)result
{
  sectionCopy = section;
  v5 = MEMORY[0x1E696AAE8];
  resultCopy = result;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"HIDE" value:&stru_1F3E050C8 table:0];
  NSSelectorFromString(&cfstr_Relatedappiden.isa);
  if (objc_opt_respondsToSelector())
  {
    [resultCopy valueForKey:@"_relatedAppIdentifier"];
  }

  else
  {
    [resultCopy applicationBundleIdentifier];
  }
  v9 = ;

  if (v9)
  {
    v10 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v9 error:0];
    localizedName = [v10 localizedName];

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v7 localizedStringForKey:@"HIDE_ALL_APP_SHORTCUT_SUGGESTIONS" value:&stru_1F3E050C8 table:0];
    v14 = [v12 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, localizedName];
  }

  else
  {
    v14 = 0;
  }

  if (sectionCopy)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;
  if (sectionCopy)
  {
    v17 = objc_opt_new();
    [v17 setSymbolName:@"hand.thumbsdown"];
    [v17 setIsTemplate:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_new();
  [v18 setCategory:2];
  [v18 setShouldClearWholeSection:sectionCopy];
  v19 = objc_opt_new();
  [v19 setTitle:v16];
  [v19 setImage:v17];
  [v19 setCommand:v18];
  [v19 setIsDestructive:1];

  return v19;
}

- (void)_addHidingPreviewButtonItemsToSearchResult:(id)result
{
  v54 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = resultCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: %@", buf, 0xCu);
  }

  inlineCard = [resultCopy inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([resultCopy proactiveSuggestion], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    normalizedTopic2 = v9;
    uiSpecification = [v9 uiSpecification];
    predictionReasons = [uiSpecification predictionReasons];

    if (predictionReasons)
    {
      executableSpecification = [normalizedTopic2 executableSpecification];
      v14 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = executableSpecification;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: executableSpecification = %@", buf, 0xCu);
      }

      executableObject = [executableSpecification executableObject];
      v16 = [(ATXSpotlightHidingUIController *)self _identifierWithSuggestion:normalizedTopic2];
      v50 = executableSpecification;
      executableIdentifier = [executableSpecification executableIdentifier];
      if ([executableIdentifier hasPrefix:@"is.workflow.actions.openurl"])
      {
        objc_opt_class();
        v18 = executableObject;
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          firstObject2 = v18;
          v49 = v18;
          contextualAction = [v49 contextualAction];
          associatedAppBundleIdentifier = [contextualAction associatedAppBundleIdentifier];
          objc_opt_class();
          v47 = associatedAppBundleIdentifier;
          v48 = contextualAction;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [associatedAppBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
          {
            v46 = [contextualAction url];
            v23 = __atxlog_handle_zkw_hide();
            searchEntities = v50;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v46;
              _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: url = %@", buf, 0xCu);
            }

            v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithURL:v46 identifier:v16 context:predictionReasons];
          }

          else
          {
            v35 = __atxlog_handle_zkw_hide();
            searchEntities = v50;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v16;
              _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: bundleIdentifier = %@", buf, 0xCu);
            }

            v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithBundleIdentifier:v16 context:predictionReasons];
          }

LABEL_44:
          goto LABEL_45;
        }
      }

      else
      {
        v18 = executableObject;
      }

      if ([(ATXSpotlightHidingUIController *)self _isExecutableIdentifierRecognized:v16])
      {
        v33 = __atxlog_handle_zkw_hide();
        firstObject2 = v18;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v16;
          _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableIdentifier %@ is recognized. Using it", buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        firstObject2 = v18;
        if (objc_opt_isKindOfClass())
        {
          v49 = v18;
          v34 = __atxlog_handle_zkw_hide();
          searchEntities = v50;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v49;
            _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: default action=%@", buf, 0xCu);
          }

          v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithBundleIdentifier:v16 context:predictionReasons];
          goto LABEL_44;
        }
      }

      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithExecutableIdentifier:v16 context:predictionReasons];
      searchEntities = v50;
LABEL_45:

      goto LABEL_46;
    }

    v30 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      uiSpecification2 = [normalizedTopic2 uiSpecification];
      title = [uiSpecification2 title];
      *buf = 138412290;
      v53 = title;
      _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: suggestion %@ has context ATXSuggestionPredictionReasonUnknown. Skipping", buf, 0xCu);
    }
  }

  else
  {
    getSPSearchSuggestionResultClass();
    if (objc_opt_isKindOfClass())
    {
      normalizedTopic2 = resultCopy;
      searchEntities = [normalizedTopic2 searchEntities];
      if ([searchEntities count] != 1)
      {
        v29 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(ATXSpotlightHidingUIController *)searchEntities _addHidingPreviewButtonItemsToSearchResult:v29];
        }

        v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithExecutableIdentifier:@"result class not handled" context:0];
        goto LABEL_47;
      }

      firstObject2 = [searchEntities firstObject];
      v26 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = firstObject2;
        _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: SPSearchSuggestionResult entity=%@", buf, 0xCu);
      }

      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithSearchResult:normalizedTopic2 entity:firstObject2];
LABEL_46:

LABEL_47:
      goto LABEL_48;
    }

    normalizedTopic = [resultCopy normalizedTopic];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if (v28)
    {
      normalizedTopic2 = [resultCopy normalizedTopic];
      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithSearchResult:resultCopy queryTopic:normalizedTopic2];
LABEL_48:

      v36 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v25;
        _os_log_impl(&dword_1BF549000, v36, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: SPSearchSuggestionResult previewButtonItems=%@", buf, 0xCu);
      }

      [(ATXSpotlightHidingUIController *)self _addSwipeButtonItemToCardSection:firstObject previewButtonItems:v25];
      v37 = [(ATXSpotlightHidingUIController *)self _subMenuButtonItemWithItems:v25];
      previewButtonItems = [firstObject previewButtonItems];
      v39 = [previewButtonItems count];

      v40 = __atxlog_handle_zkw_hide();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (v39)
      {
        if (v41)
        {
          previewButtonItems2 = [firstObject previewButtonItems];
          v43 = [previewButtonItems2 count];
          *buf = 134217984;
          v53 = v43;
          _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: %lu previous buttons", buf, 0xCu);
        }

        previewButtonItems3 = [firstObject previewButtonItems];
        v45 = [previewButtonItems3 arrayByAddingObject:v37];
        [firstObject setPreviewButtonItems:v45];
      }

      else
      {
        if (v41)
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: no previous button", buf, 2u);
        }

        v51 = v37;
        previewButtonItems3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        [firstObject setPreviewButtonItems:previewButtonItems3];
      }

      normalizedTopic2 = v25;
      goto LABEL_58;
    }

    normalizedTopic2 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(normalizedTopic2, OS_LOG_TYPE_FAULT))
    {
      [(ATXSpotlightHidingUIController *)resultCopy _addHidingPreviewButtonItemsToSearchResult:normalizedTopic2];
    }
  }

LABEL_58:
}

- (void)_addSwipeButtonItemToCardSection:(id)section previewButtonItems:(id)items
{
  v15[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  itemsCopy = items;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DONT_SUGGEST_" value:&stru_1F3E050C8 table:0];
  [v7 setTitle:v9];
  [v7 setIsDestructive:1];
  v10 = objc_opt_new();
  [v7 setCommand:v10];

  [v7 setPreviewButtonItems:itemsCopy];
  previewButtonItems = [sectionCopy previewButtonItems];
  v12 = [previewButtonItems count];

  if (v12)
  {
    previewButtonItems2 = [sectionCopy previewButtonItems];
    v14 = [previewButtonItems2 arrayByAddingObject:v7];
    [sectionCopy setTrailingSwipeButtonItems:v14];
  }

  else
  {
    v15[0] = v7;
    previewButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [sectionCopy setTrailingSwipeButtonItems:previewButtonItems2];
  }
}

- (id)_subMenuButtonItemWithItems:(id)items
{
  itemsCopy = items;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DONT_SUGGEST_" value:&stru_1F3E050C8 table:0];
  [v4 setTitle:v6];
  v7 = objc_opt_new();
  [v7 setSymbolName:@"hand.thumbsdown"];
  [v4 setImage:v7];
  [v4 setPreviewButtonItems:itemsCopy];

  return v4;
}

- (id)_hidingPreviewButtonItemsWithBundleIdentifier:(id)identifier context:(unint64_t)context
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithBundleIdentifier:%@", &v14, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [(ATXSpotlightHidingUIController *)self _actionTypeButtonItemWithBundleIdentifier:identifierCopy];
  if (v9)
  {
    [v8 addObject:v9];
  }

  else
  {
    v10 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithBundleIdentifier:context:];
    }
  }

  v11 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:context];
  if (v11)
  {
    [v8 addObject:v11];
  }

  else
  {
    v12 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithBundleIdentifier:%@ dontSuggestContextButtonItem is nil", &v14, 0xCu);
    }
  }

  return v8;
}

- (id)_hidingPreviewButtonItemsWithExecutableIdentifier:(id)identifier context:(unint64_t)context
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithExecutableIdentifier:%@", &v15, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [objc_opt_class() normalizedIdentifier:identifierCopy];

  if ([(ATXSpotlightHidingUIController *)self _shouldAddHidingButtonItemForExecutableIdentifier:v9])
  {
    v10 = [(ATXSpotlightHidingUIController *)self _actionTypeButtonItemWithExecutableIdentifier:v9];
    if (v10)
    {
      [v8 addObject:v10];
    }

    else
    {
      v11 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithExecutableIdentifier:context:];
      }
    }
  }

  v12 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:context];
  if (v12)
  {
    [v8 addObject:v12];
  }

  else
  {
    v13 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithExecutableIdentifier:context:];
    }
  }

  return v8;
}

- (id)_hidingPreviewButtonItemsWithURL:(id)l identifier:(id)identifier context:(unint64_t)context
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v10 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = lCopy;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithURL:%@", &v17, 0xCu);
  }

  v11 = objc_opt_new();
  v12 = [(ATXSpotlightHidingUIController *)self _hideWebsiteButtonItemWithIdentifier:identifierCopy];

  if (v12)
  {
    [v11 addObject:v12];
  }

  else
  {
    v13 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithURL:identifier:context:];
    }
  }

  v14 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:context];
  if (v14)
  {
    [v11 addObject:v14];
  }

  else
  {
    v15 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithURL:identifier:context:];
    }
  }

  return v11;
}

- (id)_localizedTitleWithQueryTopic:(id)topic
{
  topicCopy = topic;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  queryType = [topicCopy queryType];
  if (queryType == 3)
  {
    v6 = @"DONT_SUGGEST_GAME";
    goto LABEL_5;
  }

  if (queryType == 4)
  {
    v6 = @"DONT_SUGGEST_WEATHER";
LABEL_5:
    query = [v4 localizedStringForKey:v6 value:&stru_1F3E050C8 table:0];
    goto LABEL_7;
  }

  query = [topicCopy query];
LABEL_7:
  v8 = query;

  return v8;
}

- (id)_symbolNameWithQueryTopic:(id)topic
{
  queryType = [topic queryType];
  v4 = @"sportscourt";
  if (queryType != 3)
  {
    v4 = 0;
  }

  if (queryType == 4)
  {
    return @"sun.max";
  }

  else
  {
    return v4;
  }
}

- (id)_hidingPreviewButtonItemsWithSearchResult:(id)result queryTopic:(id)topic
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  topicCopy = topic;
  v8 = objc_opt_new();
  v9 = [(ATXSpotlightHidingUIController *)self _identifierWithSearchResult:resultCopy];
  v10 = [v9 length];
  v11 = __atxlog_handle_zkw_hide();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = topicCopy;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult(queryTopic):%@ queryTopic:%@", &v17, 0x16u);
    }

    v12 = [(ATXSpotlightHidingUIController *)self _localizedTitleWithQueryTopic:topicCopy];
    v13 = [(ATXSpotlightHidingUIController *)self _symbolNameWithQueryTopic:topicCopy];
    v14 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v9 title:v12 symbolName:v13 isAction:0];
    if (v14)
    {
      [v8 addObject:v14];
    }

    else
    {
      v15 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithSearchResult:queryTopic:];
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithSearchResult:queryTopic:];
  }

  [(ATXSpotlightHidingUIController *)self _addHideContextButtonItemForSearchResult:resultCopy toButtonItems:v8];

  return v8;
}

- (id)_hidingPreviewButtonItemsWithSearchResult:(id)result entity:(id)entity
{
  v15 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  resultCopy = result;
  v8 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = entityCopy;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult entity:%@", &v13, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = [(ATXSpotlightHidingUIController *)self _entityButtonItemWithWithSearchEntity:entityCopy];
  if (v10)
  {
    [v9 addObject:v10];
  }

  else
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hidingPreviewButtonItemsWithSearchResult:entity:];
    }
  }

  [(ATXSpotlightHidingUIController *)self _addHideContextButtonItemForSearchResult:resultCopy toButtonItems:v9];

  return v9;
}

- (void)_addHideContextButtonItemForSearchResult:(id)result toButtonItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  itemsCopy = items;
  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if (sectionBundleIdentifier)
  {
    v9 = objc_opt_new();
    v10 = [v9 contextCodeIdentifierWithSectionBundleIdentifier:sectionBundleIdentifier];
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = sectionBundleIdentifier;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult sectionBundleIdentifier=%@ contextCode=%@", &v14, 0x16u);
    }

    v12 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithContextIdentifier:v10];
    if (v12)
    {
      [itemsCopy addObject:v12];
    }

    else
    {
      v13 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _addHideContextButtonItemForSearchResult:toButtonItems:];
      }
    }
  }

  else
  {
    v9 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _addHideContextButtonItemForSearchResult:toButtonItems:];
    }
  }
}

- (id)_entityButtonItemWithWithSearchEntity:(id)entity
{
  v13 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  getSPSearchContactEntityClass();
  if (objc_opt_isKindOfClass())
  {
    v5 = entityCopy;
    name = [v5 name];
    if ([name length])
    {
      v7 = [(ATXSpotlightHidingUIController *)self _identifierWithEntity:v5];
      if ([v7 length])
      {
        v8 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v7 title:name symbolName:@"person" isAction:0];
LABEL_14:

        goto LABEL_15;
      }

      v9 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _entityButtonItemWithWithSearchEntity:];
      }
    }

    else
    {
      v7 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _entityButtonItemWithWithSearchEntity:];
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = entityCopy;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_entityButtonItemWithWithSearchEntity:%@ not a SPSearchContactEntity", &v11, 0xCu);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)_actionTypeButtonItemWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(ATXSpotlightHidingUIController *)self _hideActionTitleWithBundleIdentifier:identifierCopy];
  v6 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:identifierCopy title:v5 symbolName:0 isAction:1];

  return v6;
}

- (id)_actionTypeButtonItemWithExecutableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [&unk_1F3E60E40 objectForKey:identifierCopy];
  v6 = [(ATXSpotlightHidingUIController *)self _hideActionTitleWithExecutableIdentifier:identifierCopy];
  if ([v6 length])
  {
    v7 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:identifierCopy title:v6 symbolName:v5 isAction:1];
  }

  else
  {
    v8 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _actionTypeButtonItemWithExecutableIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_hideWebsiteButtonItemWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AAE8];
  identifierCopy = identifier;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DONT_SUGGEST_URL" value:&stru_1F3E050C8 table:0];
  v8 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:identifierCopy title:v7 symbolName:@"globe" isAction:1];

  return v8;
}

- (id)_hidingCommandButtonItemWithIdentifier:(id)identifier title:(id)title symbolName:(id)name isAction:(BOOL)action
{
  actionCopy = action;
  nameCopy = name;
  titleCopy = title;
  identifierCopy = identifier;
  v12 = objc_opt_new();
  [v12 setTitle:titleCopy];

  if ([nameCopy length])
  {
    v13 = objc_opt_new();
    [v13 setSymbolName:nameCopy];
    [v13 setIsTemplate:1];
    [v12 setImage:v13];
  }

  v14 = objc_opt_new();
  [v14 setProactiveIdentifier:identifierCopy];

  if (actionCopy)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

  [v14 setCategory:v15];
  [v14 setShouldClearWholeSection:0];
  [v12 setCommand:v14];

  return v12;
}

- (id)_hideContextButtonItemWithReasons:(unint64_t)reasons
{
  v4 = [(ATXSpotlightHidingUIController *)self _contextIdentifierWithPredictionReasons:?];
  if (v4)
  {
    v5 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithContextIdentifier:v4];
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hideContextButtonItemWithReasons:];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_hideContextButtonItemWithContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if ([(ATXSpotlightHidingUIController *)self _shouldAddHidingButtonItemForContextIdentifier:identifierCopy])
    {
      v5 = objc_opt_new();
      v6 = [(ATXSpotlightHidingUIController *)self _hideContextSymbolImageWithContextIdentifier:identifierCopy];
      v7 = [(ATXSpotlightHidingUIController *)self _hideContextActionTitleWithContextIdentifier:identifierCopy];
      [v5 setTitle:v7];
      [v5 setImage:v6];
      v8 = objc_opt_new();
      [v8 setCategory:3];
      [v8 setShouldClearWholeSection:1];
      [v8 setProactiveIdentifier:identifierCopy];
      [v5 setCommand:v8];
      [v5 setIsDestructive:0];

      goto LABEL_8;
    }
  }

  else
  {
    v9 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hideContextButtonItemWithContextIdentifier:];
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)_contextIdentifierWithPredictionReasons:(unint64_t)reasons
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = objc_opt_new();
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  if ([v6[5] count] == 1)
  {
    firstObject = [v6[5] firstObject];
  }

  else
  {
    firstObject = 0;
  }

  _Block_object_dispose(&v5, 8);

  return firstObject;
}

void __74__ATXSpotlightHidingUIController__contextIdentifierWithPredictionReasons___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];
}

- (BOOL)_shouldAddHidingButtonItemForExecutableIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _excludedFronHindingExecutableidentifiers = [(ATXSpotlightHidingUIController *)self _excludedFronHindingExecutableidentifiers];
  v6 = [_excludedFronHindingExecutableidentifiers containsObject:identifierCopy];
  if (v6)
  {
    v7 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = identifierCopy;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_shouldAddHidingButtonItemForExecutableIdentifier: no hiding button item shown for executableIdentifier %@", &v9, 0xCu);
    }
  }

  return v6 ^ 1;
}

- (BOOL)_shouldAddHidingButtonItemForContextIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"UpcomingMedia", 0}];
  v5 = [v4 containsObject:identifierCopy];
  if (v5)
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = identifierCopy;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "_shouldAddHidingButtonItemForExecutableIdentifier: no hiding button item shown for contextIdentifier %@", buf, 0xCu);
    }
  }

  return v5 ^ 1;
}

- (id)_nearbySuggestionIdentifierWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = [@"zkw.hiding.nearby:" stringByAppendingString:nameCopy];
  }

  else
  {
    v5 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _nearbySuggestionIdentifierWithName:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_nameWithNearbySuggestionIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"zkw.hiding.nearby:"])
  {
    v4 = [identifierCopy substringFromIndex:{objc_msgSend(@"zkw.hiding.nearby:", "length")}];
  }

  else
  {
    v5 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = identifierCopy;
      v9 = 2112;
      v10 = @"zkw.hiding.nearby:";
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_nameWithNearbySuggestionIdentifier %@ is not prefixed by %@", &v7, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_isExecutableIdentifierRecognized:(id)recognized
{
  v15 = *MEMORY[0x1E69E9840];
  recognizedCopy = recognized;
  _excludedFronHindingExecutableidentifiers = [(ATXSpotlightHidingUIController *)self _excludedFronHindingExecutableidentifiers];
  v6 = [_excludedFronHindingExecutableidentifiers containsObject:recognizedCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ATXSpotlightHidingUIController *)self _localizableKeyWithExecutableIdentifier:recognizedCopy];
    v7 = v8 != 0;
  }

  v9 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = recognizedCopy;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "isExecutableIdentifierRecognized: %@ = %{BOOL}i", &v11, 0x12u);
  }

  return v7;
}

- (id)_hideActionTitleWithExecutableIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [(ATXSpotlightHidingUIController *)self _nameWithNearbySuggestionIdentifier:identifierCopy];
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(ATXSpotlightHidingUIController *)self _localizableKeyWithExecutableIdentifier:identifierCopy];
    v9 = [v5 localizedStringForKey:v8 value:&stru_1F3E050C8 table:0];
    if (!v8)
    {
      v10 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [ATXSpotlightHidingUIController _hideActionTitleWithExecutableIdentifier:];
      }
    }

    v7 = v9;
  }

  return v7;
}

- (id)_hideContextActionTitleWithContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [&unk_1F3E60E90 objectForKey:identifierCopy];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    identifierCopy = [v5 localizedStringForKey:v4 value:&stru_1F3E050C8 table:0];
  }

  else
  {
    v7 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hideContextActionTitleWithContextIdentifier:];
    }

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No title for %@", identifierCopy];
  }

  return identifierCopy;
}

- (id)_hideContextSymbolImageWithContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [&unk_1F3E60EB8 objectForKey:identifierCopy];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setSymbolName:v4];
    [v5 setIsTemplate:1];
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hideContextSymbolImageWithContextIdentifier:];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)normalizedIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F3E60CC0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  v5 = identifierCopy;
  if (v4)
  {
    v6 = v4;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(&unk_1F3E60CC0);
      }

      v5 = *(*(&v11 + 1) + 8 * v8);
      if ([identifierCopy hasPrefix:v5])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [&unk_1F3E60CC0 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v5 = identifierCopy;
        break;
      }
    }
  }

  v9 = v5;

  return v5;
}

- (void)shouldHideSearchResult:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addHidingPreviewButtonItemsToSearchResult:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 normalizedTopic];
  v5 = [a1 normalizedTopic];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = objc_opt_class();
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "_addHidingPreviewButtonItemsToSearchResult not implemented for normalized topic %@ of class %@", &v6, 0x16u);
}

- (void)_addHidingPreviewButtonItemsToSearchResult:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "_addHidingPreviewButtonItemsToSearchResult: searchSuggestionResult has %lu searchEntities", v3, 0xCu);
}

- (void)_hidingPreviewButtonItemsWithSearchResult:queryTopic:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_hideContextButtonItemWithContextIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_nearbySuggestionIdentifierWithName:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end