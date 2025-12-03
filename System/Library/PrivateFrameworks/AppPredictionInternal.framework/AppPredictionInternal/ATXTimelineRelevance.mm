@interface ATXTimelineRelevance
+ (unint64_t)suggestionLayoutOptionsForAvocadoSizeClass:(int64_t)class;
- (ATXTimelineRelevance)initWithWidget:(id)widget criterionRegistry:(id)registry abuseControlConfig:(id)config;
- (ATXTimelineRelevanceDelegate)delegate;
- (BOOL)isWidgetFamilyEligibleForSuggestion;
- (BOOL)overlapExistsBetween:(id)between andTimelineEntry:(id)entry;
- (BOOL)startDatesAreCloseEnoughToMerge:(id)merge withTimelineEntry:(id)entry;
- (id)generateSuggestionsWithTimelineEntries:(id)entries latestInfoSuggestionRelevantNow:(id)now;
- (id)infoSuggestionWithTimelineEntry:(id)entry;
- (id)infoSuggestionsFromTimelineEntries:(id)entries latestInfoSuggestionRelevantNow:(id)now;
- (id)processTimelineEntryWithPositiveScore:(id)score withPreviousInfoSuggestion:(id)suggestion updatingTimelineEntryToSuggestionMapping:(id)mapping;
- (void)processTimelineEntryWithNonPositiveScore:(id)score withPreviousInfoSuggestion:(id)suggestion updatingTimelineEntryToSuggestionMapping:(id)mapping;
- (void)standardizeWidgetSizes;
@end

@implementation ATXTimelineRelevance

- (void)standardizeWidgetSizes
{
  if ([(CHSWidget *)self->_widget family]== 5)
  {
    v3 = objc_alloc(MEMORY[0x277CFA358]);
    extensionIdentity = [(CHSWidget *)self->_widget extensionIdentity];
    kind = [(CHSWidget *)self->_widget kind];
    intentReference = [(CHSWidget *)self->_widget intentReference];
    intent = [intentReference intent];
    v7 = [v3 initWithExtensionIdentity:extensionIdentity kind:kind family:2 intent:intent activityIdentifier:0];
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

  family = [(CHSWidget *)self->_widget family];
  if (family == 1)
  {
    goto LABEL_4;
  }

  if ([(CHSWidget *)self->_widget family]== 2 || [(CHSWidget *)self->_widget family]== 3 || [(CHSWidget *)self->_widget family]== 4)
  {
LABEL_2:
    LOBYTE(family) = 1;
  }

  else
  {
    v5 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      family2 = [(CHSWidget *)self->_widget family];
      v8 = 134217984;
      v9 = family2;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: Widget family is not eligible for suggestion %lu", &v8, 0xCu);
    }

    LOBYTE(family) = 0;
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return family;
}

- (ATXTimelineRelevance)initWithWidget:(id)widget criterionRegistry:(id)registry abuseControlConfig:(id)config
{
  widgetCopy = widget;
  registryCopy = registry;
  configCopy = config;
  if (self)
  {
    objc_storeStrong(&self->_widget, widget);
    objc_storeStrong(&self->_criterionRegistry, registry);
    objc_storeStrong(&self->_abuseControlConfig, config);
    atxTimelineIdentifier = [widgetCopy atxTimelineIdentifier];
    sourceId = self->_sourceId;
    self->_sourceId = atxTimelineIdentifier;

    [(ATXTimelineRelevance *)self standardizeWidgetSizes];
  }

  return self;
}

- (id)infoSuggestionsFromTimelineEntries:(id)entries latestInfoSuggestionRelevantNow:(id)now
{
  selfCopy = self;
  v45 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  nowCopy = now;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [entriesCopy countByEnumeratingWithState:&v34 objects:v44 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        relevance = [v10 relevance];

        v12 = __atxlog_handle_timeline();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (relevance)
        {
          if (v13)
          {
            date = [v10 date];
            relevance2 = [v10 relevance];
            [relevance2 score];
            v17 = v16;
            relevance3 = [v10 relevance];
            [relevance3 duration];
            *buf = 138412802;
            v39 = date;
            v40 = 2048;
            v41 = v17;
            v42 = 2048;
            v43 = v19;
            _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: received timeline entry for date %@ with relevance %f and duration %f", buf, 0x20u);
          }
        }

        else if (v13)
        {
          date2 = [v10 date];
          *buf = 138412290;
          v39 = date2;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevance: received timeline entry for date %@ with nil relevance", buf, 0xCu);
        }
      }

      v7 = [entriesCopy countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  v21 = selfCopy;
  if ([(ATXTimelineRelevance *)selfCopy isWidgetFamilyEligibleForSuggestion])
  {
    widget = v21->_widget;
    WeakRetained = objc_loadWeakRetained(&v21->_delegate);
    v24 = [ATXTimelineRelevanceFilter filteredAndSortedTimelineEntriesForWidget:widget entries:entriesCopy withTimelineEntryDelegate:WeakRetained abuseControlConfig:v21->_abuseControlConfig];

    v25 = nowCopy;
    v26 = [(ATXTimelineRelevance *)v21 generateSuggestionsWithTimelineEntries:v24 latestInfoSuggestionRelevantNow:nowCopy];
    v27 = v21->_widget;
    v28 = objc_loadWeakRetained(&v21->_delegate);
    v29 = [ATXTimelineRelevanceFilter applyLimitsToTimelineSuggestions:v26 forWidget:v27 withTimelineEntryDelegate:v28 abuseControlConfig:v21->_abuseControlConfig];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
    v25 = nowCopy;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)generateSuggestionsWithTimelineEntries:(id)entries latestInfoSuggestionRelevantNow:(id)now
{
  v24[1] = *MEMORY[0x277D85DE8];
  nowCopy = now;
  entriesCopy = entries;
  v8 = objc_opt_new();
  if (nowCopy)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:nowCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
  v24[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v13 = [entriesCopy sortedArrayUsingDescriptors:v12];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__ATXTimelineRelevance_generateSuggestionsWithTimelineEntries_latestInfoSuggestionRelevantNow___block_invoke;
  v20[3] = &unk_2785A22E0;
  v21 = v8;
  v14 = v10;
  v22 = v14;
  selfCopy = self;
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

- (void)processTimelineEntryWithNonPositiveScore:(id)score withPreviousInfoSuggestion:(id)suggestion updatingTimelineEntryToSuggestionMapping:(id)mapping
{
  scoreCopy = score;
  suggestionCopy = suggestion;
  mappingCopy = mapping;
  if (!suggestionCopy)
  {
    v18 = MEMORY[0x277D420F8];
LABEL_7:
    suggestionIdentifier2 = [v18 entryMappingWithTimelineEntry:scoreCopy suggestionId:0 withSuggestionMappingReason:2];
    [mappingCopy addObject:suggestionIdentifier2];
    goto LABEL_9;
  }

  endDate = [suggestionCopy endDate];

  date = [scoreCopy date];
  if (endDate)
  {
    endDate2 = [suggestionCopy endDate];
    v12 = [date earlierDate:endDate2];
    date2 = [scoreCopy date];

    if (v12 == date2)
    {
      date3 = [scoreCopy date];
      [suggestionCopy setEndDate:date3];

      v15 = MEMORY[0x277D420F8];
      suggestionIdentifier = [suggestionCopy suggestionIdentifier];
      v17 = [v15 entryMappingWithTimelineEntry:scoreCopy suggestionId:suggestionIdentifier withSuggestionMappingReason:4];
      [mappingCopy addObject:v17];
    }

    v18 = MEMORY[0x277D420F8];
    goto LABEL_7;
  }

  [suggestionCopy setEndDate:date];

  v20 = MEMORY[0x277D420F8];
  suggestionIdentifier2 = [suggestionCopy suggestionIdentifier];
  v21 = [v20 entryMappingWithTimelineEntry:scoreCopy suggestionId:suggestionIdentifier2 withSuggestionMappingReason:5];
  [mappingCopy addObject:v21];

LABEL_9:
}

- (id)processTimelineEntryWithPositiveScore:(id)score withPreviousInfoSuggestion:(id)suggestion updatingTimelineEntryToSuggestionMapping:(id)mapping
{
  v56 = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  suggestionCopy = suggestion;
  mappingCopy = mapping;
  if (![(ATXTimelineRelevance *)self overlapExistsBetween:suggestionCopy andTimelineEntry:scoreCopy])
  {
LABEL_9:
    v29 = [(ATXTimelineRelevance *)self infoSuggestionWithTimelineEntry:scoreCopy];
    v28 = 6;
    v27 = v29;
    goto LABEL_10;
  }

  v11 = [(ATXTimelineRelevance *)self startDatesAreCloseEnoughToMerge:suggestionCopy withTimelineEntry:scoreCopy];
  v12 = __atxlog_handle_timeline();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v13)
    {
      date = [scoreCopy date];
      relevance = [scoreCopy relevance];
      [relevance duration];
      v33 = v32;
      startDate = [suggestionCopy startDate];
      endDate = [suggestionCopy endDate];
      relevance2 = [scoreCopy relevance];
      [relevance2 score];
      v46 = 138413314;
      v47 = date;
      v48 = 2048;
      v49 = v33;
      v50 = 2112;
      v51 = startDate;
      v52 = 2112;
      v53 = endDate;
      v54 = 2048;
      v55 = v37;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Creating new info suggestion for timeline relevance entry (startDate: %@, duration: %f) with previous entry (startDate: %@, endDate: %@). Both have a relevance score of %f", &v46, 0x34u);
    }

    endDate2 = [suggestionCopy endDate];
    date2 = [scoreCopy date];
    v40 = [endDate2 earlierDate:date2];
    [suggestionCopy setEndDate:v40];

    goto LABEL_9;
  }

  if (v13)
  {
    date3 = [scoreCopy date];
    relevance3 = [scoreCopy relevance];
    [relevance3 duration];
    v17 = v16;
    startDate2 = [suggestionCopy startDate];
    endDate3 = [suggestionCopy endDate];
    relevance4 = [scoreCopy relevance];
    [relevance4 score];
    v46 = 138413314;
    v47 = date3;
    v48 = 2048;
    v49 = v17;
    v50 = 2112;
    v51 = startDate2;
    v52 = 2112;
    v53 = endDate3;
    v54 = 2048;
    v55 = v21;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Merging timeline relevance entry (startDate: %@, duration: %f) with previous entry (startDate: %@, endDate: %@). Both have a relevance score of %f", &v46, 0x34u);
  }

  endDate4 = [suggestionCopy endDate];
  date4 = [scoreCopy date];
  relevance5 = [scoreCopy relevance];
  [relevance5 duration];
  v25 = [date4 dateByAddingTimeInterval:?];
  v26 = [endDate4 laterDate:v25];
  [suggestionCopy setEndDate:v26];

  v27 = 0;
  v28 = 3;
  v29 = suggestionCopy;
LABEL_10:
  v41 = MEMORY[0x277D420F8];
  suggestionIdentifier = [v29 suggestionIdentifier];
  v43 = [v41 entryMappingWithTimelineEntry:scoreCopy suggestionId:suggestionIdentifier withSuggestionMappingReason:v28];
  [mappingCopy addObject:v43];

  v44 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)startDatesAreCloseEnoughToMerge:(id)merge withTimelineEntry:(id)entry
{
  if (!merge)
  {
    return 0;
  }

  mergeCopy = merge;
  date = [entry date];
  startDate = [mergeCopy startDate];

  [date timeIntervalSinceDate:startDate];
  v9 = v8 < 3600.0;

  return v9;
}

- (BOOL)overlapExistsBetween:(id)between andTimelineEntry:(id)entry
{
  betweenCopy = between;
  entryCopy = entry;
  date = [entryCopy date];
  relevance = [entryCopy relevance];
  [relevance duration];
  v9 = [date dateByAddingTimeInterval:?];

  if (betweenCopy)
  {
    relevanceScore = [betweenCopy relevanceScore];
    [relevanceScore doubleValue];
    v12 = v11;
    relevance2 = [entryCopy relevance];
    [relevance2 score];
    if (vabdd_f64(v12, v14) >= 2.22044605e-16)
    {
      v18 = 0;
LABEL_14:

      goto LABEL_15;
    }

    startDate = [betweenCopy startDate];
    v16 = [startDate compare:v9];
    if (v16)
    {
      startDate2 = [betweenCopy startDate];
      if ([startDate2 compare:v9] != -1)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v26 = startDate2;
    }

    date2 = [entryCopy date];
    endDate = [betweenCopy endDate];
    if ([date2 compare:endDate])
    {
      [entryCopy date];
      v21 = v25 = startDate;
      [betweenCopy endDate];
      v22 = v24 = v16;
      v18 = [v21 compare:v22] == -1;

      startDate = v25;
      startDate2 = v26;
      if (!v24)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {

      v18 = 1;
      startDate2 = v26;
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

- (id)infoSuggestionWithTimelineEntry:(id)entry
{
  entryCopy = entry;
  date = [entryCopy date];
  v5 = MEMORY[0x277CCABB0];
  relevance = [entryCopy relevance];
  [relevance score];
  v31 = [v5 numberWithDouble:?];

  relevance2 = [entryCopy relevance];
  [relevance2 duration];
  v9 = v8;

  v29 = entryCopy;
  if (v9 <= 300.0)
  {
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
  }

  else
  {
    date2 = [entryCopy date];
    relevance3 = [entryCopy relevance];
    [relevance3 duration];
    v30 = [date2 dateByAddingTimeInterval:?];
  }

  v26 = objc_alloc(MEMORY[0x277D42040]);
  extensionIdentity = [(CHSWidget *)self->_widget extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v13 = containerBundleIdentifier;
  v14 = &stru_2839A6058;
  if (containerBundleIdentifier)
  {
    v14 = containerBundleIdentifier;
  }

  v25 = v14;
  extensionIdentity2 = [(CHSWidget *)self->_widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];
  kind = [(CHSWidget *)self->_widget kind];
  v17 = [ATXTimelineRelevance suggestionLayoutOptionsForAvocadoSizeClass:[(CHSWidget *)self->_widget family]];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  intentReference = [(CHSWidget *)self->_widget intentReference];
  intent = [intentReference intent];
  v22 = [v26 initWithAppBundleIdentifier:v25 widgetBundleIdentifier:extensionBundleIdentifier widgetKind:kind criterion:@"ATXTimelineEntryImportantTimelineUpdate" applicableLayouts:v17 suggestionIdentifier:uUIDString startDate:date endDate:v30 intent:intent metadata:0 relevanceScore:v31];

  [v22 setConfidenceLevel:{-[ATXInfoSuggestionCriterionRegistry confidenceLevelForCriterion:sourceIdentifier:](self->_criterionRegistry, "confidenceLevelForCriterion:sourceIdentifier:", @"ATXTimelineEntryImportantTimelineUpdate", @"com.apple.proactive.timelineSuggestion"}];
  [v22 setSourceIdentifier:self->_sourceId];
  v23 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  [v22 setClientModelId:v23];

  return v22;
}

+ (unint64_t)suggestionLayoutOptionsForAvocadoSizeClass:(int64_t)class
{
  if ((class - 1) < 5)
  {
    return qword_226872DB8[class - 1];
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