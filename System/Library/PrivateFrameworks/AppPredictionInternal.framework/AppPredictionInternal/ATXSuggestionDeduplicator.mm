@interface ATXSuggestionDeduplicator
- (ATXSuggestionDeduplicator)init;
- (BOOL)_bundleIdsAreRemoteAndNativeEquivalents:(id)a3 otherBundleId:(id)a4;
- (BOOL)_isContactsWidgetIntent:(id)a3 overlappingContactsWithOtherContactsWidgetIntent:(id)a4;
- (BOOL)_isWidget:(id)a3 showingContentOfAction:(id)a4;
- (BOOL)_isWidget:(id)a3 showingContentOfInfoSuggestion:(id)a4;
- (BOOL)executableSpecsAreDuplicates:(id)a3 otherExecutableSpec:(id)a4;
- (BOOL)isWidget:(id)a3 showingIdenticalContentOfSuggestion:(id)a4;
- (BOOL)suggestionIsDuplicate:(id)a3 appsOnHomeScreenPageAtIndex:(unint64_t)a4;
- (BOOL)suggestionIsDuplicate:(id)a3 existingSuggestions:(id)a4 shouldCompareAcrossTypes:(BOOL)a5;
- (BOOL)suggestionIsDuplicate:(id)a3 otherApps:(id)a4;
- (BOOL)suggestionIsDuplicateAppOrWidget:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (BOOL)suggestionsAreDuplicateActionAndLinkAction:(id)a3 otherSuggestion:(id)a4;
- (BOOL)suggestionsAreDuplicateAppAndAction:(id)a3 otherSuggestion:(id)a4;
- (BOOL)suggestionsAreDuplicateAppAndLinkAction:(id)a3 otherSuggestion:(id)a4;
- (BOOL)suggestionsAreDuplicateWidgetAndAction:(id)a3 otherSuggestion:(id)a4;
- (BOOL)widgetExtensionIdIsDuplicate:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (BOOL)widgetExtensionIdIsPinned:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (BOOL)widgetSuggestionIsDuplicate:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (BOOL)widgetSuggestionIsPinned:(id)a3 homeScreenPage:(id)a4 excludingStackConfigId:(id)a5;
- (id)_initWithVisibleAppsByPage:(id)a3;
- (id)duplicateWidgetForWidgetSuggestion:(id)a3 otherWidgets:(id)a4;
- (id)executableClassStringsToUnarchiveDuringComparison;
- (id)pinnedWidgetIdentifiablesWithExtensionId:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5 shouldStopAfterFindingFirstOne:(BOOL)a6;
- (id)stacksToConsiderForLeftOfHomeForStackId:(id)a3 stacksOnPage:(id)a4;
- (id)stacksWithDuplicateWidgetExtensionId:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
- (id)stacksWithDuplicateWidgetSuggestion:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5;
@end

@implementation ATXSuggestionDeduplicator

- (ATXSuggestionDeduplicator)init
{
  v3 = +[_ATXAppIconState sharedInstance];
  v4 = [v3 nonFolderAppSetOnPages];
  v5 = [(ATXSuggestionDeduplicator *)self _initWithVisibleAppsByPage:v4];

  return v5;
}

- (id)_initWithVisibleAppsByPage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSuggestionDeduplicator;
  v6 = [(ATXSuggestionDeduplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visibleAppsByPage, a3);
  }

  return v7;
}

- (BOOL)suggestionIsDuplicate:(id)a3 existingSuggestions:(id)a4 shouldCompareAcrossTypes:(BOOL)a5
{
  v27 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 executableSpecification];
        v13 = [v12 executableType];
        v14 = [v6 executableSpecification];
        v15 = [v14 executableType];

        if (v13 == v15)
        {
          v16 = [v10 executableSpecification];
          v17 = [v16 executableClassString];
          v18 = [v6 executableSpecification];
          v19 = [v18 executableClassString];
          v20 = [v17 isEqualToString:v19];

          if (v20)
          {
            v21 = [v6 executableSpecification];
            v22 = [v10 executableSpecification];
            v23 = [(ATXSuggestionDeduplicator *)self executableSpecsAreDuplicates:v21 otherExecutableSpec:v22];

            if (v23)
            {
              goto LABEL_18;
            }
          }
        }

        else if (v27 && ([(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateAppAndAction:v6 otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateAppAndLinkAction:v6 otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateWidgetAndAction:v6 otherSuggestion:v10]|| [(ATXSuggestionDeduplicator *)self suggestionsAreDuplicateActionAndLinkAction:v6 otherSuggestion:v10]))
        {
LABEL_18:
          objc_autoreleasePoolPop(v11);
          v24 = 1;
          goto LABEL_19;
        }

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)suggestionsAreDuplicateAppAndAction:(id)a3 otherSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  if ([v7 executableType] == 2)
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableType];

    v10 = v5;
    v11 = v6;
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [v5 executableSpecification];
  if ([v12 executableType] == 1)
  {
    v13 = [v6 executableSpecification];
    v14 = [v13 executableType];

    v10 = v6;
    v11 = v5;
    if (v14 != 2)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    v12 = v10;
    v15 = v11;
    v16 = [v12 executableSpecification];
    v17 = [v16 executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 isEqualToString:v19];

    if (v20)
    {
      v21 = [v12 executableSpecification];
      v22 = [v21 executableObject];

      v23 = [v22 bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    v26 = [v15 executableSpecification];
    v27 = [v26 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 isEqualToString:v29];

    if (v30)
    {
      v31 = [v15 executableSpecification];
      v32 = [v31 executableObject];

      v33 = ATXBundleIdReplacementForBundleId();

      if (v24 && v33 && ([v24 isEqualToString:v33] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateAppAndLinkAction:(id)a3 otherSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  if ([v7 executableType] == 10)
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableType];

    v10 = v5;
    v11 = v6;
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [v5 executableSpecification];
  if ([v12 executableType] == 1)
  {
    v13 = [v6 executableSpecification];
    v14 = [v13 executableType];

    v10 = v6;
    v11 = v5;
    if (v14 != 10)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    v12 = v10;
    v15 = v11;
    v16 = [v12 executableSpecification];
    v17 = [v16 executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 isEqualToString:v19];

    if (v20)
    {
      v21 = [v12 executableSpecification];
      v22 = [v21 executableObject];

      v23 = [v22 bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    v26 = [v15 executableSpecification];
    v27 = [v26 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 isEqualToString:v29];

    if (v30)
    {
      v31 = [v15 executableSpecification];
      v32 = [v31 executableObject];

      v33 = ATXBundleIdReplacementForBundleId();

      if (v24 && v33 && ([v24 isEqualToString:v33] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateActionAndLinkAction:(id)a3 otherSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  if ([v7 executableType] == 2)
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableType];

    v10 = v5;
    v11 = v6;
    if (v9 == 10)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [v5 executableSpecification];
  if ([v12 executableType] == 10)
  {
    v13 = [v6 executableSpecification];
    v14 = [v13 executableType];

    v10 = v6;
    v11 = v5;
    if (v14 != 2)
    {
      v25 = 0;
      goto LABEL_20;
    }

LABEL_7:
    v12 = v10;
    v15 = v11;
    v16 = [v12 executableSpecification];
    v17 = [v16 executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 isEqualToString:v19];

    if (v20)
    {
      v21 = [v12 executableSpecification];
      v22 = [v21 executableObject];

      v23 = [v22 bundleId];
      v24 = ATXBundleIdReplacementForBundleId();
    }

    else
    {
      v24 = 0;
    }

    v26 = [v15 executableSpecification];
    v27 = [v26 executableClassString];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 isEqualToString:v29];

    if (v30)
    {
      v31 = [v15 executableSpecification];
      v32 = [v31 executableObject];

      v33 = [v32 bundleId];
      v34 = ATXBundleIdReplacementForBundleId();

      if (v24 && v34 && ([v24 isEqualToString:v34] & 1) != 0)
      {
        v25 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v34 = 0;
    }

    v25 = 0;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_19:

LABEL_20:
  return v25;
}

- (BOOL)suggestionsAreDuplicateWidgetAndAction:(id)a3 otherSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  if ([v7 executableType] == 2)
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableType];

    v10 = v5;
    v11 = v6;
    if (v9 == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [v5 executableSpecification];
  if ([v12 executableType] != 3)
  {
    v32 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v13 = [v6 executableSpecification];
  v14 = [v13 executableType];

  v10 = v6;
  v11 = v5;
  if (v14 == 2)
  {
LABEL_7:
    v12 = v10;
    v15 = v11;
    v16 = [v12 executableSpecification];
    v17 = [v16 executableClassString];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = [v12 executableSpecification];
    v22 = [v21 executableObject];

    v23 = [v22 intent];

    if (v23)
    {
      v24 = [v15 executableSpecification];
      v25 = [v24 executableClassString];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 isEqualToString:v27];

      if (!v28)
      {
        goto LABEL_15;
      }

      v29 = [v15 executableSpecification];
      v30 = [v29 executableObject];

      v31 = [v30 intent];

      if (v31)
      {
        v32 = [ATXActionToWidgetConverter isWidgetIntent:v31 validConversionFromActionIntent:v23];
      }

      else
      {
LABEL_15:
        v32 = 0;
      }
    }

    else
    {
LABEL_13:
      v32 = 0;
    }

    goto LABEL_18;
  }

  v32 = 0;
LABEL_19:

  return v32;
}

- (BOOL)_bundleIdsAreRemoteAndNativeEquivalents:(id)a3 otherBundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (ATXIsRemoteAppBundleId() && (v7 = ATXIsRemoteAppBundleId(), v8 = v5, v9 = v6, !v7) || ATXIsRemoteAppBundleId() && (v10 = ATXIsRemoteAppBundleId(), v8 = v6, v9 = v5, (v10 & 1) == 0))
  {
    v12 = v8;
    v13 = v9;
    v14 = ATXBundleIdForRemoteBundleId();
    v15 = [MEMORY[0x277CF9650] sharedCategories];
    v16 = [v15 bundleIDForPlatform:*MEMORY[0x277CF9648] fromBundleID:v14 platform:*MEMORY[0x277CF9640]];

    v11 = v16 && ([v16 isEqualToString:v13] & 1) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)executableSpecsAreDuplicates:(id)a3 otherExecutableSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 executableType];
  if (v8 == [v7 executableType] && objc_msgSend(v6, "executableType") && objc_msgSend(v6, "executableType") != 11 && (objc_msgSend(v6, "executableClassString"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "executableClassString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11))
  {
    v12 = [(ATXSuggestionDeduplicator *)self executableClassStringsToUnarchiveDuringComparison];
    v13 = [v6 executableClassString];
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      v19 = [v6 executableIdentifier];
      v21 = [v7 executableIdentifier];
      LOBYTE(v26) = [v19 isEqualToString:v21];
LABEL_58:

      goto LABEL_12;
    }

    v15 = [v6 executableClassString];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 isEqualToString:v17];

    if (v18)
    {
      v19 = [v6 executableObject];
      v20 = [v7 executableObject];
      v21 = v20;
      if (v19 && v20)
      {
        goto LABEL_9;
      }

      v37 = __atxlog_handle_default();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionDeduplicator *)v37 executableSpecsAreDuplicates:v38 otherExecutableSpec:v39, v40, v41, v42, v43, v44];
      }

LABEL_24:

LABEL_25:
      LOBYTE(v26) = 1;
      goto LABEL_58;
    }

    v28 = [v6 executableClassString];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v28 isEqualToString:v30];

    if (v31)
    {
      v32 = [v6 executableObject];
      v33 = [v7 executableObject];
      v34 = v33;
      if (v32 && v33)
      {
        if (![(ATXSuggestionDeduplicator *)self _bundleIdsAreRemoteAndNativeEquivalents:v32 otherBundleId:v33])
        {
          if ([v6 executableType] == 1 && objc_msgSend(v7, "executableType") == 1)
          {
            v35 = ATXBundleIdReplacementForBundleId();

            v36 = ATXBundleIdReplacementForBundleId();

            v34 = v36;
            v32 = v35;
          }

          LOBYTE(v26) = [v32 isEqual:v34];
          goto LABEL_40;
        }
      }

      else
      {
        v56 = __atxlog_handle_default();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          [(ATXSuggestionDeduplicator *)v56 executableSpecsAreDuplicates:v57 otherExecutableSpec:v58, v59, v60, v61, v62, v63];
        }
      }

      LOBYTE(v26) = 1;
LABEL_40:

      goto LABEL_12;
    }

    v45 = [v6 executableClassString];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v45 isEqualToString:v47];

    if (v48)
    {
      v19 = [v6 executableObject];
      v21 = [v7 executableObject];
      v49 = [v19 appBundleIdentifier];
      v50 = [v21 appBundleIdentifier];
      v51 = [v49 isEqualToString:v50];

      if (!v51)
      {
        goto LABEL_57;
      }

      v52 = [v19 widgetBundleIdentifier];
      v53 = [v21 widgetBundleIdentifier];
      v54 = [v52 isEqualToString:v53];

      if (!v54)
      {
        goto LABEL_57;
      }

      if (([v19 isFallback] & 1) == 0 && (objc_msgSend(v21, "isFallback") & 1) == 0)
      {
        v55 = [v19 intent];
        if (v55)
        {

          goto LABEL_51;
        }

        v79 = [v21 intent];

        if (v79)
        {
LABEL_51:
          v80 = [v19 intent];
          v81 = [v21 intent];
          v82 = [v80 atx_isEqualToIntent:v81];

          if (!v82)
          {
            goto LABEL_57;
          }
        }
      }

      v83 = [v19 widgetKind];
      if (v83)
      {
      }

      else
      {
        v84 = [v21 widgetKind];

        if (!v84)
        {
          goto LABEL_25;
        }
      }

      v26 = [v21 widgetKind];

      if (!v26)
      {
        goto LABEL_58;
      }

      v85 = [v19 widgetKind];
      v86 = widgetKindForDeduping(v85);
      v87 = [v21 widgetKind];
      v88 = widgetKindForDeduping(v87);
      v89 = [v86 isEqualToString:v88];

      if (v89)
      {
        goto LABEL_25;
      }

LABEL_57:
      LOBYTE(v26) = 0;
      goto LABEL_58;
    }

    v64 = [v6 executableClassString];
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v64 isEqualToString:v66];

    if (v67)
    {
      v19 = [v6 executableObject];
      v21 = [v7 executableObject];
      LODWORD(v26) = [v19 isEqual:v21];
      if (!v26)
      {
        goto LABEL_58;
      }

      v23 = __atxlog_handle_blending();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSuggestionDeduplicator *)v19 executableSpecsAreDuplicates:v21 otherExecutableSpec:v23];
      }

      goto LABEL_35;
    }

    v68 = [v6 executableClassString];
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    LODWORD(v26) = [v68 isEqualToString:v70];

    if (v26)
    {
      v19 = [v6 executableObject];
      v71 = [v7 executableObject];
      v21 = v71;
      if (v19 && v71)
      {
LABEL_9:
        v22 = [v19 bundleId];
        v23 = ATXBundleIdReplacementForBundleId();

        v24 = [v21 bundleId];
        v25 = ATXBundleIdReplacementForBundleId();

        if (([v23 isEqualToString:v25]& 1) != 0)
        {
          LOBYTE(v26) = 1;
        }

        else
        {
          LOBYTE(v26) = [v19 isEqual:v21];
        }

LABEL_35:
        goto LABEL_58;
      }

      v37 = __atxlog_handle_default();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionDeduplicator *)v37 executableSpecsAreDuplicates:v72 otherExecutableSpec:v73, v74, v75, v76, v77, v78];
      }

      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
  }

LABEL_12:

  return v26;
}

- (id)executableClassStringsToUnarchiveDuringComparison
{
  if (executableClassStringsToUnarchiveDuringComparison__pasOnceToken13 != -1)
  {
    [ATXSuggestionDeduplicator executableClassStringsToUnarchiveDuringComparison];
  }

  v3 = executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult;

  return v3;
}

void __78__ATXSuggestionDeduplicator_executableClassStringsToUnarchiveDuringComparison__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v2 initWithObjects:{v4, v6, v8, v10, v12, 0}];

  objc_autoreleasePoolPop(v1);
  v14 = executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult;
  executableClassStringsToUnarchiveDuringComparison__pasExprOnceResult = v13;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)isWidget:(id)a3 showingIdenticalContentOfSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 executableSpecification];
  v9 = [v8 executableType];

  if (v9 == 3)
  {
    v10 = [v7 atxInfoSuggestionExecutableObject];
    v11 = [(ATXSuggestionDeduplicator *)self _isWidget:v6 showingContentOfInfoSuggestion:v10];
  }

  else
  {
    v12 = [v7 executableSpecification];
    v13 = [v12 executableType];

    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v10 = [v7 atxActionExecutableObject];
    v11 = [(ATXSuggestionDeduplicator *)self _isWidget:v6 showingContentOfAction:v10];
  }

  v14 = v11;

LABEL_7:
  return v14;
}

- (BOOL)_isWidget:(id)a3 showingContentOfInfoSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = [v6 extensionBundleId];
  v9 = [v7 widgetBundleIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = [v6 extensionBundleId];
  if (![v11 isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"] || (objc_msgSend(v6, "intent"), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_8:
    v18 = [v6 widgetKind];
    v19 = widgetKindForDeduping(v18);
    v20 = [v7 widgetKind];
    v21 = widgetKindForDeduping(v20);
    v22 = [v19 isEqualToString:v21];

    if (v22)
    {
      if ([v7 isFallback])
      {
LABEL_16:
        v17 = 1;
        goto LABEL_23;
      }

      v23 = [v7 widgetBundleIdentifier];
      if ([v23 isEqualToString:@"com.apple.mobilecal.CalendarWidgetExtension"])
      {
LABEL_15:

        goto LABEL_16;
      }

      v24 = [v7 criterion];
      if ([v24 isEqualToString:@"ATXWeatherWakeUp"])
      {
LABEL_14:

        goto LABEL_15;
      }

      v25 = [v7 widgetBundleIdentifier];
      if ([v25 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
      {

        goto LABEL_14;
      }

      v26 = [v7 widgetBundleIdentifier];
      v27 = [v26 isEqualToString:@"com.apple.Fitness.FitnessWidget"];

      if (v27)
      {
        goto LABEL_16;
      }

      v28 = [v7 intent];
      if (v28)
      {
      }

      else
      {
        v29 = [v6 intent];

        if (!v29)
        {
          goto LABEL_16;
        }
      }

      v30 = [v7 intent];
      v31 = [v6 intent];
      v32 = [v30 atx_isEqualToIntent:v31];

      if (v32)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v7 intent];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [v6 intent];
  v16 = [v7 intent];
  v17 = [(ATXSuggestionDeduplicator *)self _isContactsWidgetIntent:v15 overlappingContactsWithOtherContactsWidgetIntent:v16];

LABEL_23:
  return v17;
}

- (BOOL)_isContactsWidgetIntent:(id)a3 overlappingContactsWithOtherContactsWidgetIntent:(id)a4
{
  v5 = a4;
  v6 = [ATXSuggestionPreprocessor contactIdsAssociatedWithContactsWidgetIntent:a3];
  v7 = [ATXSuggestionPreprocessor contactIdsAssociatedWithContactsWidgetIntent:v5];

  LOBYTE(v5) = [v6 intersectsSet:v7];
  return v5;
}

- (BOOL)_isWidget:(id)a3 showingContentOfAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 intent];
  if (v7)
  {
    v8 = [v6 intent];

    if (v8)
    {
      v9 = [v5 intent];
      v10 = [v6 intent];
      LOBYTE(v7) = [ATXActionToWidgetConverter isWidgetIntent:v9 validConversionFromActionIntent:v10];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)suggestionIsDuplicateAppOrWidget:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = -[ATXSuggestionDeduplicator widgetSuggestionIsDuplicate:homeScreenPageConfig:excludingStackConfigId:](self, "widgetSuggestionIsDuplicate:homeScreenPageConfig:excludingStackConfigId:", v8, v9, a5) || -[ATXSuggestionDeduplicator suggestionIsDuplicate:appsOnHomeScreenPageAtIndex:](self, "suggestionIsDuplicate:appsOnHomeScreenPageAtIndex:", v8, [v9 pageIndex]);

  return v10;
}

- (BOOL)widgetSuggestionIsDuplicate:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v5 = [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetSuggestion:a3 homeScreenPageConfig:a4 excludingStackConfigId:a5];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)widgetSuggestionIsPinned:(id)a3 homeScreenPage:(id)a4 excludingStackConfigId:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 executableSpecification];
  v12 = [v11 executableType];

  if (v12 == 3)
  {
    [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetSuggestion:v8 homeScreenPageConfig:v9 excludingStackConfigId:v10];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v26 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = [v17 widgets];
          v20 = [v19 count];

          objc_autoreleasePoolPop(v18);
          if (v20 == 1)
          {
            LOBYTE(v14) = 1;
            goto LABEL_13;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)stacksWithDuplicateWidgetSuggestion:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 executableSpecification];
  v12 = [v11 executableType];

  if (v12 == 3)
  {
    v30 = objc_opt_new();
    v13 = [v9 stacks];
    v14 = [v9 pageIndex];
    v29 = v9;
    if (v14 == *MEMORY[0x277CEBAE8])
    {
      v15 = [(ATXSuggestionDeduplicator *)self stacksToConsiderForLeftOfHomeForStackId:v10 stacksOnPage:v13];

      v13 = v15;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          if (v10)
          {
            v22 = [*(*(&v31 + 1) + 8 * i) identifier];
            v23 = [v22 isEqualToString:v10];

            if (v23)
            {
              continue;
            }
          }

          v24 = [v21 widgets];
          v25 = [(ATXSuggestionDeduplicator *)self duplicateWidgetForWidgetSuggestion:v8 otherWidgets:v24];

          if (v25)
          {
            [v30 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    v26 = [v30 copy];
    v9 = v29;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)stacksToConsiderForLeftOfHomeForStackId:(id)a3 stacksOnPage:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = objc_opt_new();
    v25 = objc_opt_new();
    v9 = [MEMORY[0x277D41B98] sharedInstance];
    v24 = [v9 lohStacksToConsiderAboveAndBelowForDeduplication];

    v10 = [MEMORY[0x277D41B98] sharedInstance];
    v23 = [v10 lohStacksToConsiderAboveAndBelowForDeduplication];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = 0;
    v15 = *v27;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 identifier];
        v19 = [v18 isEqualToString:v5];

        if (v19)
        {
          goto LABEL_10;
        }

        if (v14)
        {
          [v25 addObject:v17];
          if ([v25 count] == v23)
          {
            goto LABEL_16;
          }

LABEL_10:
          v14 = 1;
          continue;
        }

        [v8 addObject:v17];
        if ([v8 count] > v24)
        {
          [v8 removeObjectAtIndex:0];
        }

        v14 = 0;
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v13)
      {
LABEL_16:

        [v8 addObjectsFromArray:v25];
        v7 = v22;
        goto LABEL_18;
      }
    }
  }

  v8 = v6;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)widgetExtensionIdIsDuplicate:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [a4 stacks];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v27 = *v34;
    do
    {
      v13 = 0;
      v28 = v11;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        if (!v8 || ([*(*(&v33 + 1) + 8 * v13) identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v8), v15, (v16 & 1) == 0))
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v14 widgets];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [*(*(&v29 + 1) + 8 * i) extensionBundleId];
                v23 = [v22 isEqualToString:v7];

                if (v23)
                {

                  v24 = 1;
                  goto LABEL_22;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v12 = v27;
          v11 = v28;
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      v24 = 0;
    }

    while (v11);
  }

  else
  {
    v24 = 0;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)widgetExtensionIdIsPinned:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v5 = [(ATXSuggestionDeduplicator *)self pinnedWidgetIdentifiablesWithExtensionId:a3 homeScreenPageConfig:a4 excludingStackConfigId:a5 shouldStopAfterFindingFirstOne:1];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)pinnedWidgetIdentifiablesWithExtensionId:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5 shouldStopAfterFindingFirstOne:(BOOL)a6
{
  v6 = a6;
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v28 = v11;
  v29 = v10;
  v27 = v12;
  [(ATXSuggestionDeduplicator *)self stacksWithDuplicateWidgetExtensionId:v10 homeScreenPageConfig:v11 excludingStackConfigId:v12];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v33 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 widgets];
        v22 = [v21 count];

        if (v22 == 1)
        {
          v23 = [v19 widgets];
          v24 = [v23 firstObject];
          [v13 addObject:v24];

          if (v6)
          {
            objc_autoreleasePoolPop(v20);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)stacksWithDuplicateWidgetExtensionId:(id)a3 homeScreenPageConfig:(id)a4 excludingStackConfigId:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = v8;
  v25 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v8 stacks];
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v27 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (v9)
        {
          v12 = [*(*(&v33 + 1) + 8 * i) identifier];
          v13 = [v12 isEqualToString:v9];

          if (v13)
          {
            continue;
          }
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [v11 widgets];
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v29 + 1) + 8 * j) extensionBundleId];
              v20 = [v19 isEqualToString:v7];

              if (v20)
              {
                [v25 addObject:v11];
                goto LABEL_18;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  v21 = [v25 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)suggestionIsDuplicate:(id)a3 appsOnHomeScreenPageAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  visibleAppsByPage = self->_visibleAppsByPage;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [(NSDictionary *)visibleAppsByPage objectForKeyedSubscript:v9];

  if ([v10 count])
  {
    v11 = [(ATXSuggestionDeduplicator *)self suggestionIsDuplicate:v6 otherApps:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

- (BOOL)suggestionIsDuplicate:(id)a3 otherApps:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  v8 = [v7 executableType];

  if (v8 == 1)
  {
    v9 = [v5 executableSpecification];
    v10 = [v9 executableObject];

    v11 = v10 && ([v6 containsObject:v10] & 1) != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)duplicateWidgetForWidgetSuggestion:(id)a3 otherWidgets:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 executableSpecification];
  v9 = [v8 executableType];

  if (v9 != 3)
  {
    goto LABEL_12;
  }

  v10 = [v6 executableSpecification];
  v11 = [v10 executableClassString];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 isEqualToString:v13];

  if (v14)
  {
    v15 = [v6 executableSpecification];
    v16 = [v15 executableObject];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          if ([(ATXSuggestionDeduplicator *)self _isWidget:v22 showingContentOfInfoSuggestion:v16, v26])
          {
            v23 = v22;
            goto LABEL_14;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0;
LABEL_14:
  }

  else
  {
LABEL_12:
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)executableSpecsAreDuplicates:(os_log_t)log otherExecutableSpec:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Deduplicator found duplicate people suggestions. Suggestion 1: %@; Suggestion 2: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end