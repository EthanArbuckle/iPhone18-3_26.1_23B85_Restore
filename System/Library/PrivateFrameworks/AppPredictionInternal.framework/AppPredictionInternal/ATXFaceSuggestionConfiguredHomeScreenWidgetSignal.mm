@interface ATXFaceSuggestionConfiguredHomeScreenWidgetSignal
- (ATXFaceSuggestionConfiguredHomeScreenWidgetSignal)init;
- (double)valueForDescriptor:(id)descriptor;
- (void)_prepare;
@end

@implementation ATXFaceSuggestionConfiguredHomeScreenWidgetSignal

- (ATXFaceSuggestionConfiguredHomeScreenWidgetSignal)init
{
  v5.receiver = self;
  v5.super_class = ATXFaceSuggestionConfiguredHomeScreenWidgetSignal;
  v2 = [(ATXFaceSuggestionConfiguredHomeScreenWidgetSignal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXFaceSuggestionConfiguredHomeScreenWidgetSignal *)v2 _prepare];
  }

  return v3;
}

- (void)_prepare
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal _prepare]";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: error loading home screen page configurations: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (double)valueForDescriptor:(id)descriptor
{
  v18 = *MEMORY[0x277D85DE8];
  containerBundleIdentifier = [descriptor containerBundleIdentifier];
  if (containerBundleIdentifier)
  {
    v5 = [(NSMutableSet *)self->_configuredWidgetContainerBundleIdentifiers containsObject:containerBundleIdentifier];
    v6 = __atxlog_handle_lock_screen();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v8 = 1.0;
      if (v7)
      {
        v14 = 136315394;
        v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
        v16 = 2112;
        v17 = containerBundleIdentifier;
        v9 = "%s: containerBundleId contains widgets on home screen: %@";
LABEL_9:
        v10 = v6;
        v11 = 22;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0.0;
      if (v7)
      {
        v14 = 136315394;
        v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
        v16 = 2112;
        v17 = containerBundleIdentifier;
        v9 = "%s: containerBundleId does not contain widgets on home screen: %@";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = __atxlog_handle_lock_screen();
    v8 = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
      v9 = "%s: no containerBundleId";
      v10 = v6;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

@end