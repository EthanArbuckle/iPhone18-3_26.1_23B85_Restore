@interface ATXTimelineRelevance
+ (unint64_t)suggestionLayoutOptionsForAvocadoSizeClass:(int64_t)a3;
- (ATXTimelineRelevance)initWithWidget:(id)a3 criterionRegistry:(id)a4 abuseControlConfig:(id)a5;
- (ATXTimelineRelevanceDelegate)delegate;
- (BOOL)isWidgetFamilyEligibleForSuggestion;
- (BOOL)overlapExistsBetween:(id)a3 andTimelineEntry:(id)a4;
- (BOOL)startDatesAreCloseEnoughToMerge:(id)a3 withTimelineEntry:(id)a4;
- (id)generateSuggestionsWithTimelineEntries:(id)a3 latestInfoSuggestionRelevantNow:(id)a4;
- (id)infoSuggestionWithTimelineEntry:(id)a3;
- (id)infoSuggestionsFromTimelineEntries:(id)a3 latestInfoSuggestionRelevantNow:(id)a4;
- (id)processTimelineEntryWithPositiveScore:(id)a3 withPreviousInfoSuggestion:(id)a4 updatingTimelineEntryToSuggestionMapping:(id)a5;
- (void)processTimelineEntryWithNonPositiveScore:(id)a3 withPreviousInfoSuggestion:(id)a4 updatingTimelineEntryToSuggestionMapping:(id)a5;
- (void)standardizeWidgetSizes;
@end

@implementation ATXTimelineRelevance

- (void)standardizeWidgetSizes
{
  if ([(CHSWidget *)self->_widget family]== 5)
  {
    v3 = objc_alloc(MEMORY[0x277CFA358]);
    v9 = [(CHSWidget *)self->_widget extensionIdentity];
    v4 = [(CHSWidget *)self->_widget kind];
    v5 = [(CHSWidget *)self->_widget intentReference];
    v6 = [v5 intent];
    v7 = [v3 initWithExtensionIdentity:v9 kind:v4 family:2 intent:v6 activityIdentifier:0];
    widget = self->_widget;
    self->_widget = v7;
  }
}

- (BOOL)isWidgetFamilyEligibleForSuggestion
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(CHSWidget *)self->_widget family]== 5)
  {
    goto LABEL_2;
  }

  v3 = [(CHSWidget *)self->_widget family];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if ([(CHSWidget *)self->_widget family]== 2 || [(CHSWidget *)self->_widget family]== 3 || [(CHSWidget *)self->_widget family]== 4)
  {
LABEL_2:
    LOBYTE(v3) = 1;
  }

  else
  {
    v5 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CHSWidget *)self->_widget family];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: Widget family is not eligible for suggestion %lu", &v8, 0xCu);
    }

    LOBYTE(v3) = 0;
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (ATXTimelineRelevance)initWithWidget:(id)a3 criterionRegistry:(id)a4 abuseControlConfig:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self)
  {
    objc_storeStrong(&self->_widget, a3);
    objc_storeStrong(&self->_criterionRegistry, a4);
    objc_storeStrong(&self->_abuseControlConfig, a5);
    v12 = [v9 atxTimelineIdentifier];
    sourceId = self->_sourceId;
    self->_sourceId = v12;

    [(ATXTimelineRelevance *)self standardizeWidgetSizes];
  }

  return self;
}

- (id)infoSuggestionsFromTimelineEntries:(id)a3 latestInfoSuggestionRelevantNow:(id)a4
{
  v32 = self;
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v10 relevance];

        v12 = __atxlog_handle_timeline();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            v14 = [v10 date];
            v15 = [v10 relevance];
            [v15 score];
            v17 = v16;
            v18 = [v10 relevance];
            [v18 duration];
            *buf = 138412802;
            v39 = v14;
            v40 = 2048;
            v41 = v17;
            v42 = 2048;
            v43 = v19;
            _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: received timeline entry for date %@ with relevance %f and duration %f", buf, 0x20u);
          }
        }

        else if (v13)
        {
          v20 = [v10 date];
          *buf = 138412290;
          v39 = v20;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: received timeline entry for date %@ with nil relevance", buf, 0xCu);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  v21 = v32;
  if ([(ATXTimelineRelevance *)v32 isWidgetFamilyEligibleForSuggestion])
  {
    widget = v21->_widget;
    WeakRetained = objc_loadWeakRetained(&v21->_delegate);
    v24 = [ATXTimelineRelevanceFilter filteredAndSortedTimelineEntriesForWidget:widget entries:v5 withTimelineEntryDelegate:WeakRetained abuseControlConfig:v21->_abuseControlConfig];

    v25 = v33;
    v26 = [(ATXTimelineRelevance *)v21 generateSuggestionsWithTimelineEntries:v24 latestInfoSuggestionRelevantNow:v33];
    v27 = v21->_widget;
    v28 = objc_loadWeakRetained(&v21->_delegate);
    v29 = [ATXTimelineRelevanceFilter applyLimitsToTimelineSuggestions:v26 forWidget:v27 withTimelineEntryDelegate:v28 abuseControlConfig:v21->_abuseControlConfig];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
    v25 = v33;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)generateSuggestionsWithTimelineEntries:(id)a3 latestInfoSuggestionRelevantNow:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
  v24[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v13 = [v7 sortedArrayUsingDescriptors:v12];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__ATXTimelineRelevance_generateSuggestionsWithTimelineEntries_latestInfoSuggestionRelevantNow___block_invoke;
  v20[3] = &unk_2785A22E0;
  v21 = v8;
  v14 = v10;
  v22 = v14;
  v23 = self;
  v15 = v8;
  [v13 enumerateObjectsUsingBlock:v20];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained recordRecentTimelineEntries:v15 forWidget:self->_widget];

  v17 = v14;
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void __95__ATXTimelineRelevance_generateSuggestionsWithTimelineEntries_latestInfoSuggestionRelevantNow___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 relevance];

  if (v3)
  {
    v4 = [*(a1 + 40) lastObject];
    v5 = [v12 relevance];
    [v5 score];
    v7 = v6;

    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (v7 >= 2.22044605e-16)
    {
      v11 = [v8 processTimelineEntryWithPositiveScore:v12 withPreviousInfoSuggestion:v4 updatingTimelineEntryToSuggestionMapping:v9];
      if (v11)
      {
        [*(a1 + 40) addObject:v11];
      }
    }

    else
    {
      [v8 processTimelineEntryWithNonPositiveScore:v12 withPreviousInfoSuggestion:v4 updatingTimelineEntryToSuggestionMapping:v9];
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v4 = [MEMORY[0x277D420F8] entryMappingWithTimelineEntry:v12 suggestionId:0 withSuggestionMappingReason:1];
    [v10 addObject:v4];
  }
}

- (void)processTimelineEntryWithNonPositiveScore:(id)a3 withPreviousInfoSuggestion:(id)a4 updatingTimelineEntryToSuggestionMapping:(id)a5
{
  v22 = a3;
  v7 = a4;
  v8 = a5;
  if (!v7)
  {
    v18 = MEMORY[0x277D420F8];
LABEL_7:
    v19 = [v18 entryMappingWithTimelineEntry:v22 suggestionId:0 withSuggestionMappingReason:2];
    [v8 addObject:v19];
    goto LABEL_9;
  }

  v9 = [v7 endDate];

  v10 = [v22 date];
  if (v9)
  {
    v11 = [v7 endDate];
    v12 = [v10 earlierDate:v11];
    v13 = [v22 date];

    if (v12 == v13)
    {
      v14 = [v22 date];
      [v7 setEndDate:v14];

      v15 = MEMORY[0x277D420F8];
      v16 = [v7 suggestionIdentifier];
      v17 = [v15 entryMappingWithTimelineEntry:v22 suggestionId:v16 withSuggestionMappingReason:4];
      [v8 addObject:v17];
    }

    v18 = MEMORY[0x277D420F8];
    goto LABEL_7;
  }

  [v7 setEndDate:v10];

  v20 = MEMORY[0x277D420F8];
  v19 = [v7 suggestionIdentifier];
  v21 = [v20 entryMappingWithTimelineEntry:v22 suggestionId:v19 withSuggestionMappingReason:5];
  [v8 addObject:v21];

LABEL_9:
}

- (id)processTimelineEntryWithPositiveScore:(id)a3 withPreviousInfoSuggestion:(id)a4 updatingTimelineEntryToSuggestionMapping:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(ATXTimelineRelevance *)self overlapExistsBetween:v9 andTimelineEntry:v8])
  {
LABEL_9:
    v29 = [(ATXTimelineRelevance *)self infoSuggestionWithTimelineEntry:v8];
    v28 = 6;
    v27 = v29;
    goto LABEL_10;
  }

  v11 = [(ATXTimelineRelevance *)self startDatesAreCloseEnoughToMerge:v9 withTimelineEntry:v8];
  v12 = __atxlog_handle_timeline();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v13)
    {
      v30 = [v8 date];
      v31 = [v8 relevance];
      [v31 duration];
      v33 = v32;
      v34 = [v9 startDate];
      v35 = [v9 endDate];
      v36 = [v8 relevance];
      [v36 score];
      v46 = 138413314;
      v47 = v30;
      v48 = 2048;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      v52 = 2112;
      v53 = v35;
      v54 = 2048;
      v55 = v37;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Creating new info suggestion for timeline relevance entry (startDate: %@, duration: %f) with previous entry (startDate: %@, endDate: %@). Both have a relevance score of %f", &v46, 0x34u);
    }

    v38 = [v9 endDate];
    v39 = [v8 date];
    v40 = [v38 earlierDate:v39];
    [v9 setEndDate:v40];

    goto LABEL_9;
  }

  if (v13)
  {
    v14 = [v8 date];
    v15 = [v8 relevance];
    [v15 duration];
    v17 = v16;
    v18 = [v9 startDate];
    v19 = [v9 endDate];
    v20 = [v8 relevance];
    [v20 score];
    v46 = 138413314;
    v47 = v14;
    v48 = 2048;
    v49 = v17;
    v50 = 2112;
    v51 = v18;
    v52 = 2112;
    v53 = v19;
    v54 = 2048;
    v55 = v21;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Merging timeline relevance entry (startDate: %@, duration: %f) with previous entry (startDate: %@, endDate: %@). Both have a relevance score of %f", &v46, 0x34u);
  }

  v22 = [v9 endDate];
  v23 = [v8 date];
  v24 = [v8 relevance];
  [v24 duration];
  v25 = [v23 dateByAddingTimeInterval:?];
  v26 = [v22 laterDate:v25];
  [v9 setEndDate:v26];

  v27 = 0;
  v28 = 3;
  v29 = v9;
LABEL_10:
  v41 = MEMORY[0x277D420F8];
  v42 = [v29 suggestionIdentifier];
  v43 = [v41 entryMappingWithTimelineEntry:v8 suggestionId:v42 withSuggestionMappingReason:v28];
  [v10 addObject:v43];

  v44 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)startDatesAreCloseEnoughToMerge:(id)a3 withTimelineEntry:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = [a4 date];
  v7 = [v5 startDate];

  [v6 timeIntervalSinceDate:v7];
  v9 = v8 < 3600.0;

  return v9;
}

- (BOOL)overlapExistsBetween:(id)a3 andTimelineEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 date];
  v8 = [v6 relevance];
  [v8 duration];
  v9 = [v7 dateByAddingTimeInterval:?];

  if (v5)
  {
    v10 = [v5 relevanceScore];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v6 relevance];
    [v13 score];
    if (vabdd_f64(v12, v14) >= 2.22044605e-16)
    {
      v18 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v15 = [v5 startDate];
    v16 = [v15 compare:v9];
    if (v16)
    {
      v17 = [v5 startDate];
      if ([v17 compare:v9] != -1)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v26 = v17;
    }

    v19 = [v6 date];
    v20 = [v5 endDate];
    if ([v19 compare:v20])
    {
      [v6 date];
      v21 = v25 = v15;
      [v5 endDate];
      v22 = v24 = v16;
      v18 = [v21 compare:v22] == -1;

      v15 = v25;
      v17 = v26;
      if (!v24)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {

      v18 = 1;
      v17 = v26;
      if (!v16)
      {
        goto LABEL_13;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (id)infoSuggestionWithTimelineEntry:(id)a3
{
  v4 = a3;
  v32 = [v4 date];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 relevance];
  [v6 score];
  v31 = [v5 numberWithDouble:?];

  v7 = [v4 relevance];
  [v7 duration];
  v9 = v8;

  v29 = v4;
  if (v9 <= 300.0)
  {
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
  }

  else
  {
    v10 = [v4 date];
    v11 = [v4 relevance];
    [v11 duration];
    v30 = [v10 dateByAddingTimeInterval:?];
  }

  v26 = objc_alloc(MEMORY[0x277D42040]);
  v28 = [(CHSWidget *)self->_widget extensionIdentity];
  v12 = [v28 containerBundleIdentifier];
  v13 = v12;
  v14 = &stru_2839A6058;
  if (v12)
  {
    v14 = v12;
  }

  v25 = v14;
  v27 = [(CHSWidget *)self->_widget extensionIdentity];
  v15 = [v27 extensionBundleIdentifier];
  v16 = [(CHSWidget *)self->_widget kind];
  v17 = [ATXTimelineRelevance suggestionLayoutOptionsForAvocadoSizeClass:[(CHSWidget *)self->_widget family]];
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v18 UUIDString];
  v20 = [(CHSWidget *)self->_widget intentReference];
  v21 = [v20 intent];
  v22 = [v26 initWithAppBundleIdentifier:v25 widgetBundleIdentifier:v15 widgetKind:v16 criterion:@"ATXTimelineEntryImportantTimelineUpdate" applicableLayouts:v17 suggestionIdentifier:v19 startDate:v32 endDate:v30 intent:v21 metadata:0 relevanceScore:v31];

  [v22 setConfidenceLevel:{-[ATXInfoSuggestionCriterionRegistry confidenceLevelForCriterion:sourceIdentifier:](self->_criterionRegistry, "confidenceLevelForCriterion:sourceIdentifier:", @"ATXTimelineEntryImportantTimelineUpdate", @"com.apple.proactive.timelineSuggestion"}];
  [v22 setSourceIdentifier:self->_sourceId];
  v23 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  [v22 setClientModelId:v23];

  return v22;
}

+ (unint64_t)suggestionLayoutOptionsForAvocadoSizeClass:(int64_t)a3
{
  if ((a3 - 1) < 5)
  {
    return qword_226872DB8[a3 - 1];
  }

  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXTimelineRelevance suggestionLayoutOptionsForAvocadoSizeClass:v4];
  }

  return 16;
}

- (ATXTimelineRelevanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end