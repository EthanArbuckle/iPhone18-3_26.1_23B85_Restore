@interface ATXStackRotationSession
- (ATXStackRotationSession)initWithCoder:(id)a3;
- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)a3;
- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)a3 endingStackChangeEvent:(id)a4 engagementStatus:(unint64_t)a5 engagementStatusHistory:(id)a6 systemSuggestSuggestionLayout:(id)a7 dwellStartDate:(id)a8 longestDwell:(double)a9 isNPlusOneRotation:(BOOL)a10 isFirstNPlusOneRotation:(BOOL)a11 completed:(BOOL)a12;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXStackRotationSession:(id)a3;
- (NSString)blendingCacheId;
- (NSString)widgetBundleId;
- (NSString)widgetKind;
- (NSString)widgetUniqueId;
- (id)description;
- (int)stackLocation;
- (void)blendingCacheId;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeWithEndingStackChangeEvent:(id)a3;
- (void)markStackHiddenAtDate:(id)a3;
- (void)markStackShownAtDate:(id)a3;
- (void)tryUpdateStackRotationEngagementStatus:(unint64_t)a3;
- (void)widgetBundleId;
- (void)widgetKind;
- (void)widgetUniqueId;
@end

@implementation ATXStackRotationSession

- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 widgetUniqueId];
  v6 = [v4 widgetBundleId];
  v7 = [v4 blendingCacheId];
  v8 = [v4 widgetKind];
  v9 = [v4 reason];
  v10 = v9;
  if (v5 && v7 && v6 && v8 && v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283A558C8, 0}];
    BYTE2(v15) = 0;
    LOWORD(v15) = 0;
    self = [ATXStackRotationSession initWithStartingStackChangeEvent:"initWithStartingStackChangeEvent:endingStackChangeEvent:engagementStatus:engagementStatusHistory:systemSuggestSuggestionLayout:dwellStartDate:longestDwell:isNPlusOneRotation:isFirstNPlusOneRotation:completed:" endingStackChangeEvent:v4 engagementStatus:0 engagementStatusHistory:0 systemSuggestSuggestionLayout:v11 dwellStartDate:0 longestDwell:0 isNPlusOneRotation:0.0 isFirstNPlusOneRotation:v15 completed:?];

    v12 = self;
  }

  else
  {
    v13 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXStackRotationSession *)self initWithStartingStackChangeEvent:v4, v13];
    }

    v12 = 0;
  }

  return v12;
}

- (ATXStackRotationSession)initWithStartingStackChangeEvent:(id)a3 endingStackChangeEvent:(id)a4 engagementStatus:(unint64_t)a5 engagementStatusHistory:(id)a6 systemSuggestSuggestionLayout:(id)a7 dwellStartDate:(id)a8 longestDwell:(double)a9 isNPlusOneRotation:(BOOL)a10 isFirstNPlusOneRotation:(BOOL)a11 completed:(BOOL)a12
{
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v27 = a7;
  v22 = a8;
  v28.receiver = self;
  v28.super_class = ATXStackRotationSession;
  v23 = [(ATXStackRotationSession *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_startingStackChangeEvent, a3);
    objc_storeStrong(&v24->_endingStackChangeEvent, a4);
    v24->_engagementStatus = a5;
    objc_storeStrong(&v24->_engagementStatusHistory, a6);
    objc_storeStrong(&v24->_systemSuggestSuggestionLayout, a7);
    objc_storeStrong(&v24->_dwellStartDate, a8);
    v24->_longestDwell = a9;
    v24->_isNPlusOneRotation = a10;
    v24->_isFirstNPlusOneRotation = a11;
    v24->_completed = a12;
  }

  return v24;
}

- (void)markStackShownAtDate:(id)a3
{
  objc_storeStrong(&self->_dwellStartDate, a3);

  [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:1];
}

- (void)markStackHiddenAtDate:(id)a3
{
  v4 = a3;
  dwellStartDate = self->_dwellStartDate;
  v8 = v4;
  if (v4 && dwellStartDate)
  {
    [v4 timeIntervalSinceDate:?];
    v7 = v6;
    if (v6 >= *&kATXMinTimeIntervalToBeConsideredDwell)
    {
      [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:3];
    }

    if (v7 > self->_longestDwell)
    {
      self->_longestDwell = v7;
    }

    dwellStartDate = self->_dwellStartDate;
  }

  self->_dwellStartDate = 0;
}

- (void)finalizeWithEndingStackChangeEvent:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_endingStackChangeEvent, a3);
  v5 = [v9 date];
  [(ATXStackRotationSession *)self markStackHiddenAtDate:v5];

  v6 = [v9 reason];
  v7 = NSStringForATXHomeScreenStackChangeReason();
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [(ATXStackRotationSession *)self tryUpdateStackRotationEngagementStatus:2];
  }

  self->_completed = 1;
}

- (void)tryUpdateStackRotationEngagementStatus:(unint64_t)a3
{
  engagementStatusHistory = self->_engagementStatusHistory;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(NSMutableArray *)engagementStatusHistory addObject:v6];

  if (self->_engagementStatus < a3)
  {
    self->_engagementStatus = a3;
  }
}

- (NSString)widgetUniqueId
{
  v2 = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetUniqueId];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXStackRotationSession widgetUniqueId];
    }

    v4 = &stru_2839A6058;
  }

  return v4;
}

- (NSString)widgetBundleId
{
  v2 = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetBundleId];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXStackRotationSession widgetBundleId];
    }

    v4 = &stru_2839A6058;
  }

  return v4;
}

- (NSString)widgetKind
{
  v2 = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent widgetKind];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXStackRotationSession widgetKind];
    }

    v4 = &stru_2839A6058;
  }

  return v4;
}

- (int)stackLocation
{
  v2 = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent stackLocation];

  return MEMORY[0x28213DF40](v2);
}

- (NSString)blendingCacheId
{
  v2 = [(ATXHomeScreenEvent *)self->_startingStackChangeEvent blendingCacheId];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXStackRotationSession blendingCacheId];
    }

    v4 = &stru_2839A6058;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackRotationSession *)self isEqualToATXStackRotationSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackRotationSession:(id)a3
{
  v4 = a3;
  v5 = self->_startingStackChangeEvent;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(ATXHomeScreenEvent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v8 = self->_endingStackChangeEvent;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(ATXHomeScreenEvent *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (self->_engagementStatus != v4[4])
  {
LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v11 = self->_engagementStatusHistory;
  v12 = v11;
  if (v11 == v4[5])
  {
  }

  else
  {
    v13 = [(NSMutableArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v14 = self->_systemSuggestSuggestionLayout;
  v15 = v14;
  if (v14 == v4[6])
  {
  }

  else
  {
    v16 = [(ATXSuggestionLayout *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v17 = self->_dwellStartDate;
  v18 = v17;
  if (v17 == v4[7])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (self->_longestDwell != *(v4 + 8) || self->_isNPlusOneRotation != *(v4 + 8) || self->_isFirstNPlusOneRotation != *(v4 + 9))
  {
    goto LABEL_26;
  }

  v20 = self->_completed == *(v4 + 10);
LABEL_27:

  return v20;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATXStackRotationSession *)self rotationReason];
  v7 = [(ATXStackRotationSession *)self widgetUniqueId];
  v8 = [(ATXStackRotationSession *)self widgetBundleId];
  v9 = [(ATXStackRotationSession *)self blendingCacheId];
  v10 = [(ATXStackRotationSession *)self sessionStartDate];
  v11 = [(ATXStackRotationSession *)self sessionEndDate];
  v12 = v11;
  v13 = @"NO";
  if (self->_completed)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_isNPlusOneRotation)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_isFirstNPlusOneRotation)
  {
    v13 = @"YES";
  }

  v16 = [v3 initWithFormat:@"%@ - rotationReason: %@, widgetId: %@, widgetBundleId: %@, blendingId: %@, startDate: %@, endDate: %@, dwellStart: %@, dwellSession: %f, engagementStatus: %lu, completed: %@, isNPlusOne: %@, isFirstNPlusOne: %@", v5, v6, v7, v8, v9, v10, v11, self->_dwellStartDate, *&self->_longestDwell, self->_engagementStatus, v14, v15, v13];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  startingStackChangeEvent = self->_startingStackChangeEvent;
  v5 = a3;
  [v5 encodeObject:startingStackChangeEvent forKey:@"codingKeyForStartingStackChangeEvent"];
  [v5 encodeObject:self->_endingStackChangeEvent forKey:@"codingKeyForEndingStackChangeEvent"];
  [v5 encodeInteger:self->_engagementStatus forKey:@"codingKeyForEngagementStatus"];
  [v5 encodeObject:self->_engagementStatusHistory forKey:@"codingKeyForEngagementStatusHistory"];
  [v5 encodeObject:self->_systemSuggestSuggestionLayout forKey:@"codingKeyForSystemSuggestSuggestionLayout"];
  [v5 encodeObject:self->_dwellStartDate forKey:@"codingKeyForDwellStartDate"];
  [v5 encodeDouble:@"codingKeyForLongestDwell" forKey:self->_longestDwell];
  [v5 encodeBool:self->_isNPlusOneRotation forKey:@"codingKeyForNPlusOneRotation"];
  [v5 encodeBool:self->_isFirstNPlusOneRotation forKey:@"codingKeyForFirstNPlusOneRotation"];
  [v5 encodeBool:self->_completed forKey:@"codingKeyForCompleted"];
}

- (ATXStackRotationSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartingStackChangeEvent" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_metrics();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndingStackChangeEvent" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15 || (v16 = [v4 decodeIntegerForKey:@"codingKeyForEngagementStatus"], objc_msgSend(v4, "error"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      v10 = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc(MEMORY[0x277CBEB98]);
      v22 = objc_opt_class();
      v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v20);
      v24 = __atxlog_handle_metrics();
      v25 = [v19 robustDecodeObjectOfClasses:v23 forKey:@"codingKeyForEngagementStatusHistory" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v24];

      if (v25 && ([v4 error], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
      {
        v27 = MEMORY[0x277D42620];
        v28 = objc_opt_class();
        v29 = __atxlog_handle_metrics();
        v30 = [v27 robustDecodeObjectOfClass:v28 forKey:@"codingKeyForSystemSuggestSuggestionLayout" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v29];

        v31 = [v4 error];

        if (v31)
        {
          v10 = 0;
        }

        else
        {
          v32 = MEMORY[0x277D42620];
          v33 = objc_opt_class();
          v34 = __atxlog_handle_metrics();
          v35 = [v32 robustDecodeObjectOfClass:v33 forKey:@"codingKeyForDwellStartDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v34];

          v36 = [v4 error];

          if (v36)
          {
            goto LABEL_19;
          }

          [v4 decodeDoubleForKey:@"codingKeyForLongestDwell"];
          v38 = v37;
          v39 = [v4 error];

          if (v39)
          {
            goto LABEL_19;
          }

          v40 = [v4 decodeBoolForKey:@"codingKeyForNPlusOneRotation"];
          v41 = [v4 error];

          if (v41)
          {
            goto LABEL_19;
          }

          v46 = [v4 decodeBoolForKey:@"codingKeyForFirstNPlusOneRotation"];
          v42 = [v4 error];

          if (v42 || (v45 = [v4 decodeBoolForKey:@"codingKeyForCompleted"], objc_msgSend(v4, "error"), v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
          {
LABEL_19:
            v10 = 0;
          }

          else
          {
            BYTE2(v44) = v45;
            BYTE1(v44) = v46;
            LOBYTE(v44) = v40;
            self = [ATXStackRotationSession initWithStartingStackChangeEvent:"initWithStartingStackChangeEvent:endingStackChangeEvent:engagementStatus:engagementStatusHistory:systemSuggestSuggestionLayout:dwellStartDate:longestDwell:isNPlusOneRotation:isFirstNPlusOneRotation:completed:" endingStackChangeEvent:v8 engagementStatus:v14 engagementStatusHistory:v16 systemSuggestSuggestionLayout:v25 dwellStartDate:v30 longestDwell:v35 isNPlusOneRotation:v38 isFirstNPlusOneRotation:v44 completed:?];
            v10 = self;
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithStartingStackChangeEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - could not create new session from homescreen event: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)widgetUniqueId
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "%@ - could not find widgetUniqueId", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)widgetBundleId
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "%@ - could not find widgetBundleId", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)widgetKind
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "%@ - could not find widgetKind", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)blendingCacheId
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "%@ - could not find blendingCacheId", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end