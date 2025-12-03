@interface ATXSpotlightContextAdapter
- (ATXSpotlightContextAdapter)init;
- (ATXSpotlightContextAdapter)initWithNowDate:(id)date;
- (BOOL)_hourIsOneWithDate:(id)date;
- (id)_absoluteDateContextTitleWithSuggestion:(id)suggestion eventTitle:(id)title;
- (id)_stringWithInterval:(double)interval;
- (id)contextCodeIdentifierWithSectionBundleIdentifier:(id)identifier;
- (id)contextTitleWithSuggestion:(id)suggestion eventTitle:(id)title;
- (id)sectionIdentifierForContextCode:(int64_t)code;
@end

@implementation ATXSpotlightContextAdapter

- (ATXSpotlightContextAdapter)init
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(ATXSpotlightContextAdapter *)self initWithNowDate:date];

  return v4;
}

- (ATXSpotlightContextAdapter)initWithNowDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = ATXSpotlightContextAdapter;
  v6 = [(ATXSpotlightContextAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nowDate, date);
  }

  return v7;
}

- (id)sectionIdentifierForContextCode:(int64_t)code
{
  v3 = @"com.apple.spotlight.dec.zkw.recents";
  switch(code)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 43:
      code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.unsupported", code];
      goto LABEL_3;
    case 18:
      code = @"nowplaying";
      goto LABEL_3;
    case 19:
      code = @"ongoingcall";
      goto LABEL_3;
    case 20:
      code = @"event.upcoming";
      goto LABEL_3;
    case 21:
      code = @"event.ongoing";
      goto LABEL_3;
    case 22:
      code = @"event.recent";
      goto LABEL_3;
    case 23:
      code = @"nearby";
      goto LABEL_3;
    case 24:
      goto LABEL_4;
    case 25:
      code = @"clipboard";
      goto LABEL_3;
    case 26:
      code = @"clipboard.package";
      goto LABEL_3;
    case 27:
      code = @"clipboard.url";
      goto LABEL_3;
    case 28:
      code = @"clipboard.phone";
      goto LABEL_3;
    case 29:
      code = @"callonbirthday";
      goto LABEL_3;
    case 30:
      code = @"returncall";
      goto LABEL_3;
    case 31:
      code = @"flight.upcoming";
      goto LABEL_3;
    case 32:
      code = @"flight.ongoing";
      goto LABEL_3;
    case 33:
      code = @"flight.concluded";
      goto LABEL_3;
    case 34:
      code = @"upcomingmedia";
      goto LABEL_3;
    case 35:
      code = @"changeholidayalarm";
      goto LABEL_3;
    case 36:
      code = @"upcomingcommute.work";
      goto LABEL_3;
    case 37:
      code = @"upcomingcommute.home";
      goto LABEL_3;
    case 38:
      code = @"earlyevent";
      goto LABEL_3;
    case 39:
      code = @"debug";
      goto LABEL_3;
    case 40:
      code = @"goodmorning";
      goto LABEL_3;
    case 41:
      code = @"winddown";
      goto LABEL_3;
    case 42:
      code = @"sportsgame";
      goto LABEL_3;
    default:
      code = 0;
LABEL_3:
      v3 = [@"com.apple.spotlight.dec.zkw.actions." stringByAppendingString:code];

LABEL_4:

      return v3;
  }
}

- (id)contextCodeIdentifierWithSectionBundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(ATXSpotlightContextAdapter *)self sectionIdentifierForContextCode:v5];
      if ([v6 isEqualToString:identifierCopy])
      {
        break;
      }

      if (++v5 == 43)
      {
        v6 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412290;
          v11 = identifierCopy;
          _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightContextAdapter contextCodeIdentifierWithSectionBundleIdentifier:%@ returns nil", &v10, 0xCu);
        }

        v7 = 0;
        goto LABEL_12;
      }
    }

    v7 = stringForATXSuggestionPredictionReasonCode();
    v8 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = identifierCopy;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightContextAdapter contextCodeIdentifierWithSectionBundleIdentifier:%@ returns  %@", &v10, 0x16u);
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextTitleWithSuggestion:(id)suggestion eventTitle:(id)title
{
  suggestionCopy = suggestion;
  titleCopy = title;
  uiSpecification = [suggestionCopy uiSpecification];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  [uiSpecification predictionReasons];
  v11 = uiSpecification;
  v12 = suggestionCopy;
  v13 = titleCopy;
  v14 = v8;
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 22)
  {
    v16 = [*(a1 + 32) contextEndDate];

    if (!v16)
    {
      return;
    }

    v17 = [*(a1 + 32) contextEndDate];
    [v17 timeIntervalSinceDate:*(*(a1 + 40) + 8)];
    v19 = v18;
    v20 = -v18;

    if (v19 < 0.0)
    {
      v7 = *(a1 + 40);
      if (v19 >= -3600.0)
      {
        v32 = [v7 _stringWithInterval:v20];
        v8 = MEMORY[0x1E696AEC0];
        v9 = *(a1 + 64);
        v10 = @"CONTEXT_RECENT_EVENT_RELATIVE";
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    v24 = __atxlog_handle_blending();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_1((a1 + 32));
    }

    goto LABEL_24;
  }

  if (a2 != 21)
  {
    if (a2 != 20)
    {
      return;
    }

    v3 = [*(a1 + 32) contextStartDate];

    if (!v3)
    {
      return;
    }

    v4 = [*(a1 + 32) contextStartDate];
    [v4 timeIntervalSinceDate:*(*(a1 + 40) + 8)];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = *(a1 + 40);
      if (v6 <= 3600.0)
      {
        v32 = [v7 _stringWithInterval:v6];
        v8 = MEMORY[0x1E696AEC0];
        v9 = *(a1 + 64);
        v10 = @"CONTEXT_UPCOMING_EVENT_RELATIVE";
LABEL_27:
        v28 = [v9 localizedStringForKey:v10 value:&stru_1F3E050C8 table:0];
        v29 = [v8 localizedStringWithFormat:v28, *(a1 + 56), v32];
        v30 = *(*(a1 + 72) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        return;
      }

      goto LABEL_15;
    }

    v24 = __atxlog_handle_blending();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_3((a1 + 32));
    }

LABEL_24:

    v25 = [*(a1 + 40) _absoluteDateContextTitleWithSuggestion:*(a1 + 48) eventTitle:*(a1 + 56)];
    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    return;
  }

  v11 = [*(a1 + 32) contextStartDate];

  if (!v11)
  {
    return;
  }

  v12 = [*(a1 + 32) contextStartDate];
  [v12 timeIntervalSinceDate:*(*(a1 + 40) + 8)];
  v14 = v13;
  v15 = -v13;

  if (v14 >= 0.0)
  {
    v24 = __atxlog_handle_blending();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_2((a1 + 32));
    }

    goto LABEL_24;
  }

  v7 = *(a1 + 40);
  if (v14 >= -3600.0)
  {
    v32 = [v7 _stringWithInterval:v15];
    v8 = MEMORY[0x1E696AEC0];
    v9 = *(a1 + 64);
    v10 = @"CONTEXT_ONGOING_EVENT_RELATIVE";
    goto LABEL_27;
  }

LABEL_15:
  v21 = [v7 _absoluteDateContextTitleWithSuggestion:*(a1 + 48) eventTitle:*(a1 + 56)];
  v22 = *(*(a1 + 72) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  MEMORY[0x1EEE66BB8](v21, v23);
}

- (id)_stringWithInterval:(double)interval
{
  v4 = objc_opt_new();
  [v4 setUnitsStyle:2];
  [v4 setAllowedUnits:64];
  intervalCopy = 60.0;
  if (interval > 60.0)
  {
    intervalCopy = interval;
  }

  v6 = [v4 stringFromTimeInterval:intervalCopy];

  return v6;
}

- (id)_absoluteDateContextTitleWithSuggestion:(id)suggestion eventTitle:(id)title
{
  v30 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  uiSpecification = [suggestion uiSpecification];
  predictionReasons = [uiSpecification predictionReasons];
  contextStartDate = [uiSpecification contextStartDate];
  contextEndDate = [uiSpecification contextEndDate];
  v11 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v23 = "[ATXSpotlightContextAdapter _absoluteDateContextTitleWithSuggestion:eventTitle:]";
    v24 = 2048;
    v25 = [titleCopy hash];
    v26 = 2112;
    v27 = contextStartDate;
    v28 = 2112;
    v29 = contextEndDate;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s eventTitle.hash:%lu starts at:%@ ends at: %@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ((predictionReasons & 0x100000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:contextStartDate dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:contextStartDate];
    v16 = MEMORY[0x1E696AEC0];
    v17 = @"CONTEXT_UPCOMING_EVENT";
    v18 = @"CONTEXT_UPCOMING_EVENT_(hour is 1)";
LABEL_10:
    if (v15)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = [v12 localizedStringForKey:v19 value:&stru_1F3E050C8 table:0];
    v13 = [v16 localizedStringWithFormat:v20, titleCopy, v14];

    goto LABEL_14;
  }

  if ((predictionReasons & 0x200000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:contextStartDate dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:contextStartDate];
    v16 = MEMORY[0x1E696AEC0];
    v17 = @"CONTEXT_ONGOING_EVENT";
    v18 = @"CONTEXT_ONGOING_EVENT_(hour is 1)";
    goto LABEL_10;
  }

  if ((predictionReasons & 0x400000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:contextEndDate dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:contextEndDate];
    v16 = MEMORY[0x1E696AEC0];
    v17 = @"CONTEXT_RECENT_EVENT";
    v18 = @"CONTEXT_RECENT_EVENT_(hour is 1)";
    goto LABEL_10;
  }

  v13 = titleCopy;
LABEL_14:

  return v13;
}

- (BOOL)_hourIsOneWithDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:dateCopy];

  hour = [v6 hour];
  atx_usesTwelveHourClock = [MEMORY[0x1E695DF58] atx_usesTwelveHourClock];
  if (hour == 13)
  {
    v9 = atx_usesTwelveHourClock;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 contextEndDate];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "ATXSpotlightContextAdapter contextTitleWithSuggestion: interval since end date to now = %fs. Using absolute end date %@", v4, v5, v6, v7, v8);
}

void __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 contextStartDate];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "ATXSpotlightContextAdapter contextTitleWithSuggestion: interval since start date to now = %fs. Using absolute start date %@", v4, v5, v6, v7, v8);
}

void __68__ATXSpotlightContextAdapter_contextTitleWithSuggestion_eventTitle___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 contextStartDate];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "ATXSpotlightContextAdapter contextTitleWithSuggestion: interval to start date from now = %fs. Using absolute start date %@", v4, v5, v6, v7, v8);
}

@end