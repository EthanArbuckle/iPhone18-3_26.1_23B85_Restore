@interface ATXNewsTodayWidgetPlacementPolicyProvider
- (BOOL)isTodayWidgetPermittedForLocale:(id)a3;
@end

@implementation ATXNewsTodayWidgetPlacementPolicyProvider

- (BOOL)isTodayWidgetPermittedForLocale:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 isChild];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v7 = [v3 countryCode];
    if (!v7)
    {
      v11 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
        v12 = "%s: no country code in locale, allowing News widget";
        goto LABEL_11;
      }

LABEL_20:
      v8 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [objc_opt_class() _newsSupportedCountries];
    v10 = [v9 containsObject:v7];

    if (v10)
    {
      v11 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
        v12 = "%s: in news supported country, allowing News widget";
LABEL_11:
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v11 = [v3 localeIdentifier];
    if (v11)
    {
      v13 = [objc_opt_class() _parsecEditorialLocales];
      v14 = [v13 containsObject:v11];

      if (!v14)
      {
        v8 = 0;
        goto LABEL_21;
      }

      v15 = __atxlog_handle_home_screen();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v18 = 136315138;
      v19 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
      v16 = "%s: in parsec editorial locale, allowing News widget";
    }

    else
    {
      v15 = __atxlog_handle_home_screen();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_20;
      }

      v18 = 136315138;
      v19 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
      v16 = "%s: no locale identifier, allowing News widget";
    }

    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, v16, &v18, 0xCu);
    goto LABEL_19;
  }

  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: not allowing News widget for child account", &v18, 0xCu);
  }

  v8 = 0;
LABEL_22:

  return v8;
}

@end