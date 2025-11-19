@interface ATXSpotlightContextAdapter
- (ATXSpotlightContextAdapter)init;
- (ATXSpotlightContextAdapter)initWithNowDate:(id)a3;
- (BOOL)_hourIsOneWithDate:(id)a3;
- (id)_absoluteDateContextTitleWithSuggestion:(id)a3 eventTitle:(id)a4;
- (id)_stringWithInterval:(double)a3;
- (id)contextCodeIdentifierWithSectionBundleIdentifier:(id)a3;
- (id)contextTitleWithSuggestion:(id)a3 eventTitle:(id)a4;
- (id)sectionIdentifierForContextCode:(int64_t)a3;
@end

@implementation ATXSpotlightContextAdapter

- (ATXSpotlightContextAdapter)init
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(ATXSpotlightContextAdapter *)self initWithNowDate:v3];

  return v4;
}

- (ATXSpotlightContextAdapter)initWithNowDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSpotlightContextAdapter;
  v6 = [(ATXSpotlightContextAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nowDate, a3);
  }

  return v7;
}

- (id)sectionIdentifierForContextCode:(int64_t)a3
{
  v3 = @"com.apple.spotlight.dec.zkw.recents";
  switch(a3)
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
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.unsupported", a3];
      goto LABEL_3;
    case 18:
      v4 = @"nowplaying";
      goto LABEL_3;
    case 19:
      v4 = @"ongoingcall";
      goto LABEL_3;
    case 20:
      v4 = @"event.upcoming";
      goto LABEL_3;
    case 21:
      v4 = @"event.ongoing";
      goto LABEL_3;
    case 22:
      v4 = @"event.recent";
      goto LABEL_3;
    case 23:
      v4 = @"nearby";
      goto LABEL_3;
    case 24:
      goto LABEL_4;
    case 25:
      v4 = @"clipboard";
      goto LABEL_3;
    case 26:
      v4 = @"clipboard.package";
      goto LABEL_3;
    case 27:
      v4 = @"clipboard.url";
      goto LABEL_3;
    case 28:
      v4 = @"clipboard.phone";
      goto LABEL_3;
    case 29:
      v4 = @"callonbirthday";
      goto LABEL_3;
    case 30:
      v4 = @"returncall";
      goto LABEL_3;
    case 31:
      v4 = @"flight.upcoming";
      goto LABEL_3;
    case 32:
      v4 = @"flight.ongoing";
      goto LABEL_3;
    case 33:
      v4 = @"flight.concluded";
      goto LABEL_3;
    case 34:
      v4 = @"upcomingmedia";
      goto LABEL_3;
    case 35:
      v4 = @"changeholidayalarm";
      goto LABEL_3;
    case 36:
      v4 = @"upcomingcommute.work";
      goto LABEL_3;
    case 37:
      v4 = @"upcomingcommute.home";
      goto LABEL_3;
    case 38:
      v4 = @"earlyevent";
      goto LABEL_3;
    case 39:
      v4 = @"debug";
      goto LABEL_3;
    case 40:
      v4 = @"goodmorning";
      goto LABEL_3;
    case 41:
      v4 = @"winddown";
      goto LABEL_3;
    case 42:
      v4 = @"sportsgame";
      goto LABEL_3;
    default:
      v4 = 0;
LABEL_3:
      v3 = [@"com.apple.spotlight.dec.zkw.actions." stringByAppendingString:v4];

LABEL_4:

      return v3;
  }
}

- (id)contextCodeIdentifierWithSectionBundleIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(ATXSpotlightContextAdapter *)self sectionIdentifierForContextCode:v5];
      if ([v6 isEqualToString:v4])
      {
        break;
      }

      if (++v5 == 43)
      {
        v6 = __atxlog_handle_zkw_hide();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412290;
          v11 = v4;
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
      v11 = v4;
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

- (id)contextTitleWithSuggestion:(id)a3 eventTitle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 uiSpecification];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  [v7 predictionReasons];
  v11 = v7;
  v12 = v5;
  v13 = v6;
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

- (id)_stringWithInterval:(double)a3
{
  v4 = objc_opt_new();
  [v4 setUnitsStyle:2];
  [v4 setAllowedUnits:64];
  v5 = 60.0;
  if (a3 > 60.0)
  {
    v5 = a3;
  }

  v6 = [v4 stringFromTimeInterval:v5];

  return v6;
}

- (id)_absoluteDateContextTitleWithSuggestion:(id)a3 eventTitle:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 uiSpecification];
  v8 = [v7 predictionReasons];
  v9 = [v7 contextStartDate];
  v10 = [v7 contextEndDate];
  v11 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v23 = "[ATXSpotlightContextAdapter _absoluteDateContextTitleWithSuggestion:eventTitle:]";
    v24 = 2048;
    v25 = [v6 hash];
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s eventTitle.hash:%lu starts at:%@ ends at: %@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ((v8 & 0x100000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:v9 dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:v9];
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
    v13 = [v16 localizedStringWithFormat:v20, v6, v14];

    goto LABEL_14;
  }

  if ((v8 & 0x200000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:v9 dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:v9];
    v16 = MEMORY[0x1E696AEC0];
    v17 = @"CONTEXT_ONGOING_EVENT";
    v18 = @"CONTEXT_ONGOING_EVENT_(hour is 1)";
    goto LABEL_10;
  }

  if ((v8 & 0x400000) != 0)
  {
    v14 = [MEMORY[0x1E696AB78] localizedStringFromDate:v10 dateStyle:0 timeStyle:1];
    v15 = [(ATXSpotlightContextAdapter *)self _hourIsOneWithDate:v10];
    v16 = MEMORY[0x1E696AEC0];
    v17 = @"CONTEXT_RECENT_EVENT";
    v18 = @"CONTEXT_RECENT_EVENT_(hour is 1)";
    goto LABEL_10;
  }

  v13 = v6;
LABEL_14:

  return v13;
}

- (BOOL)_hourIsOneWithDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:32 fromDate:v4];

  v7 = [v6 hour];
  v8 = [MEMORY[0x1E695DF58] atx_usesTwelveHourClock];
  if (v7 == 13)
  {
    v9 = v8;
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