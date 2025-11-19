@interface ATXSpotlightHidingUIController
+ (id)normalizedIdentifier:(id)a3;
- (BOOL)_autoShortcutHasBeenHiddenForSearchResult:(id)a3 withFeedbackManager:(id)a4;
- (BOOL)_contextHasBeenHiddenForSearchResult:(id)a3 adapter:(id)a4 feedbackManager:(id)a5;
- (BOOL)_isExecutableIdentifierRecognized:(id)a3;
- (BOOL)_shouldAddHidingButtonItemForContextIdentifier:(id)a3;
- (BOOL)_shouldAddHidingButtonItemForExecutableIdentifier:(id)a3;
- (BOOL)shouldHideSearchResult:(id)a3;
- (id)_actionTypeButtonItemWithBundleIdentifier:(id)a3;
- (id)_actionTypeButtonItemWithExecutableIdentifier:(id)a3;
- (id)_contextIdentifierWithPredictionReasons:(unint64_t)a3;
- (id)_entityButtonItemWithWithSearchEntity:(id)a3;
- (id)_hideActionTitleWithExecutableIdentifier:(id)a3;
- (id)_hideContextActionTitleWithContextIdentifier:(id)a3;
- (id)_hideContextButtonItemWithContextIdentifier:(id)a3;
- (id)_hideContextButtonItemWithReasons:(unint64_t)a3;
- (id)_hideContextSymbolImageWithContextIdentifier:(id)a3;
- (id)_hideWebsiteButtonItemWithIdentifier:(id)a3;
- (id)_hidingCommandButtonItemWithIdentifier:(id)a3 title:(id)a4 symbolName:(id)a5 isAction:(BOOL)a6;
- (id)_hidingPreviewButtonItemsWithBundleIdentifier:(id)a3 context:(unint64_t)a4;
- (id)_hidingPreviewButtonItemsWithExecutableIdentifier:(id)a3 context:(unint64_t)a4;
- (id)_hidingPreviewButtonItemsWithSearchResult:(id)a3 entity:(id)a4;
- (id)_hidingPreviewButtonItemsWithSearchResult:(id)a3 queryTopic:(id)a4;
- (id)_hidingPreviewButtonItemsWithURL:(id)a3 identifier:(id)a4 context:(unint64_t)a5;
- (id)_identifierWithEntity:(id)a3;
- (id)_identifierWithSearchResult:(id)a3;
- (id)_identifierWithSuggestion:(id)a3;
- (id)_localizedTitleWithQueryTopic:(id)a3;
- (id)_makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:(BOOL)a3 ForResult:(id)a4;
- (id)_nameWithNearbySuggestionIdentifier:(id)a3;
- (id)_nearbySuggestionIdentifierWithName:(id)a3;
- (id)_subMenuButtonItemWithItems:(id)a3;
- (id)_symbolNameWithQueryTopic:(id)a3;
- (void)_addHideContextButtonItemForSearchResult:(id)a3 toButtonItems:(id)a4;
- (void)_addHidingButtonToAutoShortcut:(id)a3;
- (void)_addHidingPreviewButtonItemsToSearchResult:(id)a3;
- (void)_addSwipeButtonItemToCardSection:(id)a3 previewButtonItems:(id)a4;
- (void)addHidingPreviewButtonItemsToServerResultSections:(id)a3;
@end

@implementation ATXSpotlightHidingUIController

- (BOOL)shouldHideSearchResult:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 sectionBundleIdentifier];
    *buf = 138412290;
    v56 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "shouldHideSearchResult searchResult.sectionBundleIdentifier:%@", buf, 0xCu);
  }

  v9 = [v4 sectionBundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.spotlight.dec.zkw.recents"];

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

  v15 = [v4 sectionBundleIdentifier];
  v16 = [v15 isEqualToString:@"com.apple.searchd.suggestions"];

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
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 proactiveSuggestion], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v19;
    v20 = [(ATXSpotlightHidingUIController *)self _identifierWithSuggestion:v19];
    v21 = [v5 hasBeenHiddenEntityWithIdentifier:v20];
    v22 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v11 uiSpecification];
      [v23 title];
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
        v41 = [v11 uiSpecification];
        [v41 title];
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
      v49 = v4;
      v47 = v4;
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

      v4 = v49;
    }

    else
    {
      v11 = [(ATXSpotlightHidingUIController *)self _identifierWithSearchResult:v4];
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

      LOBYTE(v17) = (v38 & 1) != 0 || [(ATXSpotlightHidingUIController *)self _contextHasBeenHiddenForSearchResult:v4 adapter:v6 feedbackManager:v5]|| [(ATXSpotlightHidingUIController *)self _autoShortcutHasBeenHiddenForSearchResult:v4 withFeedbackManager:v5];
    }
  }

LABEL_11:

  return v17;
}

- (BOOL)_contextHasBeenHiddenForSearchResult:(id)a3 adapter:(id)a4 feedbackManager:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 sectionBundleIdentifier];
  if (v10)
  {
    v11 = [v8 contextCodeIdentifierWithSectionBundleIdentifier:v10];
    v12 = [v9 contextHasBeenHiddenForContextIdentifier:v11];
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
      v16 = v7;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightHidingUIController contextHasBeenHiddenForSearchResult:%@ sectionBundleIdentifier is NIL hidden=NO", &v15, 0xCu);
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_autoShortcutHasBeenHiddenForSearchResult:(id)a3 withFeedbackManager:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  getSPSearchSuggestionResultClass();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([v5 sectionBundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"), v7, v8))
  {
    v9 = [v5 relatedAppIdentifier];
  }

  else
  {
    v9 = [v5 applicationBundleIdentifier];
  }

  v10 = v9;
  v11 = [v5 identifier];
  v12 = [v10 stringByAppendingString:v11];
  v13 = [v6 autoShortcutHasBeenHiddenForIdentifier:v12];

  v14 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 identifier];
    v16 = [v10 stringByAppendingString:v15];
    v18 = 138412546;
    v19 = v16;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "autoShortcutHasBeenHiddenForSearchResult :%@ hidden=%{BOOL}d", &v18, 0x12u);
  }

  return v13;
}

- (id)_identifierWithSearchResult:(id)a3
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 normalizedTopic];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 normalizedTopic];
    v8 = [v7 queryType];
    switch(v8)
    {
      case 3:
        v18 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v7 query];
          v28 = 138412290;
          *v29 = v19;
          _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult kSFQueryTopicTypeSports identifier queryTopic.query=%@", &v28, 0xCu);
        }

        v20 = [v7 query];
        break;
      case 6:
        v16 = [v7 query];
        v10 = [(ATXSpotlightHidingUIController *)self _nearbySuggestionIdentifierWithName:v16];

        v17 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          *v29 = v10;
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

        v10 = @"zkw.hiding.topic.weather";
        goto LABEL_29;
      default:
        v21 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v7 queryType];
          v23 = [v4 identifier];
          v28 = 67109378;
          v29[0] = v22;
          LOWORD(v29[1]) = 2112;
          *(&v29[1] + 2) = v23;
          _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult queryTopic.queryType=%d default identifier %@", &v28, 0x12u);
        }

        v24 = [v4 identifier];
        v25 = [v24 length];

        if (!v25)
        {
          v26 = __atxlog_handle_zkw_hide();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [ATXSpotlightHidingUIController _identifierWithSearchResult:];
          }
        }

        v20 = [v4 identifier];
        break;
    }

    v10 = v20;
LABEL_29:

    goto LABEL_30;
  }

  v11 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 identifier];
    v28 = 138412290;
    *v29 = v12;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_identifierWithSearchResult default identifier %@", &v28, 0xCu);
  }

  v13 = [v4 identifier];
  v14 = [v13 length];

  if (!v14)
  {
    v15 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _identifierWithSearchResult:];
    }
  }

  v10 = [v4 identifier];
LABEL_30:

  return v10;
}

- (id)_identifierWithSuggestion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableIdentifier];

  v7 = [objc_opt_class() normalizedIdentifier:v6];

  v8 = [v4 executableSpecification];
  v9 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v8;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableSpecification = %@", &v27, 0xCu);
  }

  v10 = [v8 executableObject];
  v11 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v10;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: executableObject=%@", &v27, 0xCu);
  }

  if ([v7 hasPrefix:@"is.workflow.actions.openurl"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      v13 = [v12 contextualAction];
      v14 = [v13 associatedAppBundleIdentifier];
      v15 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v14;
        _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: bundleIdentifier = %@", &v27, 0xCu);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:@"com.apple.mobilesafari"])
      {
        v16 = [v13 url];
        v17 = [v16 _lp_simplifiedDisplayString];
        v18 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v16;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: url = %@ urlIdentifier=%@", &v27, 0x16u);
        }

        if (![v17 length])
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
        v17 = v14;
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
    v12 = v10;
    v21 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 bundleId];
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: default ATXAction identifier=bundleId=%@", &v27, 0xCu);
    }

    v17 = [v12 bundleId];
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
    v17 = v7;
    goto LABEL_30;
  }

  v24 = [v10 clipMetadata];
  v25 = [v24 clipName];

  v17 = [(ATXSpotlightHidingUIController *)self _nearbySuggestionIdentifierWithName:v25];
  v26 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v17;
    _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "_identifierWithSuggestion: ATXHeroData identifier with heroData.clipMetadata.clipName=%@", &v27, 0xCu);
  }

LABEL_30:

  return v17;
}

- (id)_identifierWithEntity:(id)a3
{
  v3 = a3;
  getSPSearchContactEntityClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v4 contactIdentifier];

  if (v5)
  {
    v6 = [v4 contactIdentifier];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  v8 = [v4 personIdentifier];

  if (v8)
  {
    v6 = [v4 personIdentifier];
    goto LABEL_9;
  }

  v7 = [v4 personQueryIdentifier];

  if (v7)
  {
    v6 = [v4 personQueryIdentifier];
    goto LABEL_9;
  }

LABEL_10:

LABEL_11:
  if (![v7 length])
  {
    v9 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _identifierWithEntity:];
    }
  }

  return v7;
}

- (void)addHidingPreviewButtonItemsToServerResultSections:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [v4 count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "addHidingPreviewButtonItemsToServerResultSections %lu sections", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
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
        v8 = [v7 bundleIdentifier];
        if (([v8 isEqualToString:@"com.apple.spotlight.dec.zkw.recents"] & 1) == 0)
        {
          v9 = [v7 bundleIdentifier];
          v10 = [v9 isEqualToString:@"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"];

          if (v10)
          {
            goto LABEL_18;
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v8 = [v7 results];
          v11 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
                  objc_enumerationMutation(v8);
                }

                [(ATXSpotlightHidingUIController *)self _addHidingPreviewButtonItemsToSearchResult:*(*(&v30 + 1) + 8 * j)];
              }

              v12 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v12);
          }
        }

LABEL_18:
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [v7 results];
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v26 + 1) + 8 * k);
              v21 = [v20 sectionBundleIdentifier];
              v22 = [v21 isEqualToString:@"com.apple.spotlight.dec.zkw.actions.fallback.autoshortcut"];

              if (v22)
              {
                [(ATXSpotlightHidingUIController *)self _addHidingButtonToAutoShortcut:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v25);
  }
}

- (void)_addHidingButtonToAutoShortcut:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 shouldUseCompactDisplay] && (objc_msgSend(v4, "compactCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v4 compactCard];
  }

  else
  {
    v7 = [v4 inlineCard];
  }

  v8 = [v7 cardSections];
  v9 = [v8 firstObject];

  v10 = [(ATXSpotlightHidingUIController *)self _makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:1 ForResult:v4];
  v11 = [(ATXSpotlightHidingUIController *)self _makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:0 ForResult:v4];
  v12 = [v9 previewButtonItems];
  if (v12)
  {
    v13 = [v9 previewButtonItems];
    v14 = [v13 arrayByAddingObject:v10];
    [v9 setPreviewButtonItems:v14];
  }

  else
  {
    v19[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v9 setPreviewButtonItems:v13];
  }

  v15 = [v9 trailingSwipeButtonItems];
  if (v15)
  {
    v16 = [v9 trailingSwipeButtonItems];
    v17 = [v16 arrayByAddingObject:v11];
    [v9 setTrailingSwipeButtonItems:v17];
  }

  else
  {
    v18 = v11;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v9 setTrailingSwipeButtonItems:v16];
  }
}

- (id)_makeClearButtonItemForAutoShortcutAndShouldClearWholeSection:(BOOL)a3 ForResult:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"HIDE" value:&stru_1F3E050C8 table:0];
  NSSelectorFromString(&cfstr_Relatedappiden.isa);
  if (objc_opt_respondsToSelector())
  {
    [v6 valueForKey:@"_relatedAppIdentifier"];
  }

  else
  {
    [v6 applicationBundleIdentifier];
  }
  v9 = ;

  if (v9)
  {
    v10 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v9 error:0];
    v11 = [v10 localizedName];

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v7 localizedStringForKey:@"HIDE_ALL_APP_SHORTCUT_SUGGESTIONS" value:&stru_1F3E050C8 table:0];
    v14 = [v12 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v11];
  }

  else
  {
    v14 = 0;
  }

  if (v4)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;
  if (v4)
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
  [v18 setShouldClearWholeSection:v4];
  v19 = objc_opt_new();
  [v19 setTitle:v16];
  [v19 setImage:v17];
  [v19 setCommand:v18];
  [v19 setIsDestructive:1];

  return v19;
}

- (void)_addHidingPreviewButtonItemsToSearchResult:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: %@", buf, 0xCu);
  }

  v6 = [v4 inlineCard];
  v7 = [v6 cardSections];
  v8 = [v7 firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 proactiveSuggestion], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v9 uiSpecification];
    v12 = [v11 predictionReasons];

    if (v12)
    {
      v13 = [v10 executableSpecification];
      v14 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v13;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: executableSpecification = %@", buf, 0xCu);
      }

      v15 = [v13 executableObject];
      v16 = [(ATXSpotlightHidingUIController *)self _identifierWithSuggestion:v10];
      v50 = v13;
      v17 = [v13 executableIdentifier];
      if ([v17 hasPrefix:@"is.workflow.actions.openurl"])
      {
        objc_opt_class();
        v18 = v15;
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v20 = v18;
          v49 = v18;
          v21 = [v49 contextualAction];
          v22 = [v21 associatedAppBundleIdentifier];
          objc_opt_class();
          v47 = v22;
          v48 = v21;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 isEqualToString:@"com.apple.mobilesafari"])
          {
            v46 = [v21 url];
            v23 = __atxlog_handle_zkw_hide();
            v24 = v50;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v46;
              _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: url = %@", buf, 0xCu);
            }

            v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithURL:v46 identifier:v16 context:v12];
          }

          else
          {
            v35 = __atxlog_handle_zkw_hide();
            v24 = v50;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v16;
              _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: bundleIdentifier = %@", buf, 0xCu);
            }

            v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithBundleIdentifier:v16 context:v12];
          }

LABEL_44:
          goto LABEL_45;
        }
      }

      else
      {
        v18 = v15;
      }

      if ([(ATXSpotlightHidingUIController *)self _isExecutableIdentifierRecognized:v16])
      {
        v33 = __atxlog_handle_zkw_hide();
        v20 = v18;
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
        v20 = v18;
        if (objc_opt_isKindOfClass())
        {
          v49 = v18;
          v34 = __atxlog_handle_zkw_hide();
          v24 = v50;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v49;
            _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: default action=%@", buf, 0xCu);
          }

          v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithBundleIdentifier:v16 context:v12];
          goto LABEL_44;
        }
      }

      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithExecutableIdentifier:v16 context:v12];
      v24 = v50;
LABEL_45:

      goto LABEL_46;
    }

    v30 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v10 uiSpecification];
      v32 = [v31 title];
      *buf = 138412290;
      v53 = v32;
      _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: suggestion %@ has context ATXSuggestionPredictionReasonUnknown. Skipping", buf, 0xCu);
    }
  }

  else
  {
    getSPSearchSuggestionResultClass();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
      v24 = [v10 searchEntities];
      if ([v24 count] != 1)
      {
        v29 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(ATXSpotlightHidingUIController *)v24 _addHidingPreviewButtonItemsToSearchResult:v29];
        }

        v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithExecutableIdentifier:@"result class not handled" context:0];
        goto LABEL_47;
      }

      v20 = [v24 firstObject];
      v26 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v20;
        _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: SPSearchSuggestionResult entity=%@", buf, 0xCu);
      }

      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithSearchResult:v10 entity:v20];
LABEL_46:

LABEL_47:
      goto LABEL_48;
    }

    v27 = [v4 normalizedTopic];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if (v28)
    {
      v10 = [v4 normalizedTopic];
      v25 = [(ATXSpotlightHidingUIController *)self _hidingPreviewButtonItemsWithSearchResult:v4 queryTopic:v10];
LABEL_48:

      v36 = __atxlog_handle_zkw_hide();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v25;
        _os_log_impl(&dword_1BF549000, v36, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: SPSearchSuggestionResult previewButtonItems=%@", buf, 0xCu);
      }

      [(ATXSpotlightHidingUIController *)self _addSwipeButtonItemToCardSection:v8 previewButtonItems:v25];
      v37 = [(ATXSpotlightHidingUIController *)self _subMenuButtonItemWithItems:v25];
      v38 = [v8 previewButtonItems];
      v39 = [v38 count];

      v40 = __atxlog_handle_zkw_hide();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (v39)
      {
        if (v41)
        {
          v42 = [v8 previewButtonItems];
          v43 = [v42 count];
          *buf = 134217984;
          v53 = v43;
          _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: %lu previous buttons", buf, 0xCu);
        }

        v44 = [v8 previewButtonItems];
        v45 = [v44 arrayByAddingObject:v37];
        [v8 setPreviewButtonItems:v45];
      }

      else
      {
        if (v41)
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "_addHidingPreviewButtonItemsToSearchResult: no previous button", buf, 2u);
        }

        v51 = v37;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        [v8 setPreviewButtonItems:v44];
      }

      v10 = v25;
      goto LABEL_58;
    }

    v10 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXSpotlightHidingUIController *)v4 _addHidingPreviewButtonItemsToSearchResult:v10];
    }
  }

LABEL_58:
}

- (void)_addSwipeButtonItemToCardSection:(id)a3 previewButtonItems:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DONT_SUGGEST_" value:&stru_1F3E050C8 table:0];
  [v7 setTitle:v9];
  [v7 setIsDestructive:1];
  v10 = objc_opt_new();
  [v7 setCommand:v10];

  [v7 setPreviewButtonItems:v6];
  v11 = [v5 previewButtonItems];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v5 previewButtonItems];
    v14 = [v13 arrayByAddingObject:v7];
    [v5 setTrailingSwipeButtonItems:v14];
  }

  else
  {
    v15[0] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v5 setTrailingSwipeButtonItems:v13];
  }
}

- (id)_subMenuButtonItemWithItems:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DONT_SUGGEST_" value:&stru_1F3E050C8 table:0];
  [v4 setTitle:v6];
  v7 = objc_opt_new();
  [v7 setSymbolName:@"hand.thumbsdown"];
  [v4 setImage:v7];
  [v4 setPreviewButtonItems:v3];

  return v4;
}

- (id)_hidingPreviewButtonItemsWithBundleIdentifier:(id)a3 context:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithBundleIdentifier:%@", &v14, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [(ATXSpotlightHidingUIController *)self _actionTypeButtonItemWithBundleIdentifier:v6];
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

  v11 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:a4];
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
      v15 = v6;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithBundleIdentifier:%@ dontSuggestContextButtonItem is nil", &v14, 0xCu);
    }
  }

  return v8;
}

- (id)_hidingPreviewButtonItemsWithExecutableIdentifier:(id)a3 context:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithExecutableIdentifier:%@", &v15, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [objc_opt_class() normalizedIdentifier:v6];

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

  v12 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:a4];
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

- (id)_hidingPreviewButtonItemsWithURL:(id)a3 identifier:(id)a4 context:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithURL:%@", &v17, 0xCu);
  }

  v11 = objc_opt_new();
  v12 = [(ATXSpotlightHidingUIController *)self _hideWebsiteButtonItemWithIdentifier:v9];

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

  v14 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithReasons:a5];
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

- (id)_localizedTitleWithQueryTopic:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v3 queryType];
  if (v5 == 3)
  {
    v6 = @"DONT_SUGGEST_GAME";
    goto LABEL_5;
  }

  if (v5 == 4)
  {
    v6 = @"DONT_SUGGEST_WEATHER";
LABEL_5:
    v7 = [v4 localizedStringForKey:v6 value:&stru_1F3E050C8 table:0];
    goto LABEL_7;
  }

  v7 = [v3 query];
LABEL_7:
  v8 = v7;

  return v8;
}

- (id)_symbolNameWithQueryTopic:(id)a3
{
  v3 = [a3 queryType];
  v4 = @"sportscourt";
  if (v3 != 3)
  {
    v4 = 0;
  }

  if (v3 == 4)
  {
    return @"sun.max";
  }

  else
  {
    return v4;
  }
}

- (id)_hidingPreviewButtonItemsWithSearchResult:(id)a3 queryTopic:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(ATXSpotlightHidingUIController *)self _identifierWithSearchResult:v6];
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
      v20 = v7;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult(queryTopic):%@ queryTopic:%@", &v17, 0x16u);
    }

    v12 = [(ATXSpotlightHidingUIController *)self _localizedTitleWithQueryTopic:v7];
    v13 = [(ATXSpotlightHidingUIController *)self _symbolNameWithQueryTopic:v7];
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

  [(ATXSpotlightHidingUIController *)self _addHideContextButtonItemForSearchResult:v6 toButtonItems:v8];

  return v8;
}

- (id)_hidingPreviewButtonItemsWithSearchResult:(id)a3 entity:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult entity:%@", &v13, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = [(ATXSpotlightHidingUIController *)self _entityButtonItemWithWithSearchEntity:v6];
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

  [(ATXSpotlightHidingUIController *)self _addHideContextButtonItemForSearchResult:v7 toButtonItems:v9];

  return v9;
}

- (void)_addHideContextButtonItemForSearchResult:(id)a3 toButtonItems:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionBundleIdentifier];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = [v9 contextCodeIdentifierWithSectionBundleIdentifier:v8];
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "_hidingPreviewButtonItemsWithSearchResult sectionBundleIdentifier=%@ contextCode=%@", &v14, 0x16u);
    }

    v12 = [(ATXSpotlightHidingUIController *)self _hideContextButtonItemWithContextIdentifier:v10];
    if (v12)
    {
      [v7 addObject:v12];
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

- (id)_entityButtonItemWithWithSearchEntity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  getSPSearchContactEntityClass();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    if ([v6 length])
    {
      v7 = [(ATXSpotlightHidingUIController *)self _identifierWithEntity:v5];
      if ([v7 length])
      {
        v8 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v7 title:v6 symbolName:@"person" isAction:0];
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
    v12 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_entityButtonItemWithWithSearchEntity:%@ not a SPSearchContactEntity", &v11, 0xCu);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)_actionTypeButtonItemWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ATXSpotlightHidingUIController *)self _hideActionTitleWithBundleIdentifier:v4];
  v6 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v4 title:v5 symbolName:0 isAction:1];

  return v6;
}

- (id)_actionTypeButtonItemWithExecutableIdentifier:(id)a3
{
  v4 = a3;
  v5 = [&unk_1F3E60E40 objectForKey:v4];
  v6 = [(ATXSpotlightHidingUIController *)self _hideActionTitleWithExecutableIdentifier:v4];
  if ([v6 length])
  {
    v7 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v4 title:v6 symbolName:v5 isAction:1];
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

- (id)_hideWebsiteButtonItemWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DONT_SUGGEST_URL" value:&stru_1F3E050C8 table:0];
  v8 = [(ATXSpotlightHidingUIController *)self _hidingCommandButtonItemWithIdentifier:v5 title:v7 symbolName:@"globe" isAction:1];

  return v8;
}

- (id)_hidingCommandButtonItemWithIdentifier:(id)a3 title:(id)a4 symbolName:(id)a5 isAction:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setTitle:v10];

  if ([v9 length])
  {
    v13 = objc_opt_new();
    [v13 setSymbolName:v9];
    [v13 setIsTemplate:1];
    [v12 setImage:v13];
  }

  v14 = objc_opt_new();
  [v14 setProactiveIdentifier:v11];

  if (v6)
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

- (id)_hideContextButtonItemWithReasons:(unint64_t)a3
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

- (id)_hideContextButtonItemWithContextIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(ATXSpotlightHidingUIController *)self _shouldAddHidingButtonItemForContextIdentifier:v4])
    {
      v5 = objc_opt_new();
      v6 = [(ATXSpotlightHidingUIController *)self _hideContextSymbolImageWithContextIdentifier:v4];
      v7 = [(ATXSpotlightHidingUIController *)self _hideContextActionTitleWithContextIdentifier:v4];
      [v5 setTitle:v7];
      [v5 setImage:v6];
      v8 = objc_opt_new();
      [v8 setCategory:3];
      [v8 setShouldClearWholeSection:1];
      [v8 setProactiveIdentifier:v4];
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

- (id)_contextIdentifierWithPredictionReasons:(unint64_t)a3
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
    v3 = [v6[5] firstObject];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v3;
}

void __74__ATXSpotlightHidingUIController__contextIdentifierWithPredictionReasons___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];
}

- (BOOL)_shouldAddHidingButtonItemForExecutableIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXSpotlightHidingUIController *)self _excludedFronHindingExecutableidentifiers];
  v6 = [v5 containsObject:v4];
  if (v6)
  {
    v7 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "_shouldAddHidingButtonItemForExecutableIdentifier: no hiding button item shown for executableIdentifier %@", &v9, 0xCu);
    }
  }

  return v6 ^ 1;
}

- (BOOL)_shouldAddHidingButtonItemForContextIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"UpcomingMedia", 0}];
  v5 = [v4 containsObject:v3];
  if (v5)
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "_shouldAddHidingButtonItemForExecutableIdentifier: no hiding button item shown for contextIdentifier %@", buf, 0xCu);
    }
  }

  return v5 ^ 1;
}

- (id)_nearbySuggestionIdentifierWithName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [@"zkw.hiding.nearby:" stringByAppendingString:v3];
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

- (id)_nameWithNearbySuggestionIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasPrefix:@"zkw.hiding.nearby:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"zkw.hiding.nearby:", "length")}];
  }

  else
  {
    v5 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = @"zkw.hiding.nearby:";
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_nameWithNearbySuggestionIdentifier %@ is not prefixed by %@", &v7, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_isExecutableIdentifierRecognized:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXSpotlightHidingUIController *)self _excludedFronHindingExecutableidentifiers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ATXSpotlightHidingUIController *)self _localizableKeyWithExecutableIdentifier:v4];
    v7 = v8 != 0;
  }

  v9 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "isExecutableIdentifierRecognized: %@ = %{BOOL}i", &v11, 0x12u);
  }

  return v7;
}

- (id)_hideActionTitleWithExecutableIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [(ATXSpotlightHidingUIController *)self _nameWithNearbySuggestionIdentifier:v4];
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(ATXSpotlightHidingUIController *)self _localizableKeyWithExecutableIdentifier:v4];
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

- (id)_hideContextActionTitleWithContextIdentifier:(id)a3
{
  v3 = a3;
  v4 = [&unk_1F3E60E90 objectForKey:v3];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F3E050C8 table:0];
  }

  else
  {
    v7 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightHidingUIController _hideContextActionTitleWithContextIdentifier:];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No title for %@", v3];
  }

  return v6;
}

- (id)_hideContextSymbolImageWithContextIdentifier:(id)a3
{
  v3 = a3;
  v4 = [&unk_1F3E60EB8 objectForKey:v3];
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

+ (id)normalizedIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F3E60CC0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  v5 = v3;
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
      if ([v3 hasPrefix:v5])
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

        v5 = v3;
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