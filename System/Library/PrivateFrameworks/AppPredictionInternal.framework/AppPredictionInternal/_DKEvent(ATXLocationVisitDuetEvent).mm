@interface _DKEvent(ATXLocationVisitDuetEvent)
- (ATXLocationVisitDuetEvent)atx_convertToLocationVisitEvent;
- (void)atx_convertToLocationVisitEvent;
@end

@implementation _DKEvent(ATXLocationVisitDuetEvent)

- (ATXLocationVisitDuetEvent)atx_convertToLocationVisitEvent
{
  v2 = [a1 metadata];
  v3 = [MEMORY[0x277CFE218] identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
      if (v5)
      {
        v6 = [ATXLocationVisitDuetEvent alloc];
        v7 = [a1 startDate];
        v8 = [a1 endDate];
        v9 = [(ATXLocationVisitDuetEvent *)v6 initWithLocationOfInterestIdentifier:v5 startDate:v7 endDate:v8];

        goto LABEL_13;
      }

      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(ATXLocationVisitDuetEvent) *)v4 atx_convertToLocationVisitEvent];
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(ATXLocationVisitDuetEvent) *)v4 atx_convertToLocationVisitEvent];
      }
    }
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_DKEvent(ATXLocationVisitDuetEvent) *)v5 atx_convertToLocationVisitEvent];
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)atx_convertToLocationVisitEvent
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Failed to convert %@ to an NSUUID", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end