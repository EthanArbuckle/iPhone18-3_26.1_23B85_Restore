@interface ATXFaceSuggestionFeaturedConfidenceSignal
- (double)valueForDescriptor:(id)a3;
@end

@implementation ATXFaceSuggestionFeaturedConfidenceSignal

- (double)valueForDescriptor:(id)a3
{
  v3 = [a3 galleryOptions];
  v4 = [v3 featuredConfidenceLevel];

  if (v4 == 2)
  {
    return 2.0;
  }

  result = 1.0;
  if (!v4)
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionFeaturedConfidenceSignal valueForDescriptor:v6];
    }

    return -1000.0;
  }

  return result;
}

- (void)valueForDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXFaceSuggestionFeaturedConfidenceSignal valueForDescriptor:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: warning: attempting to score descriptor with no featured confidence, returning -1000.0", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end