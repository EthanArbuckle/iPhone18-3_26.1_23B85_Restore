@interface ATXNowPlayingDuetEvent
+ (int64_t)duetPlaybackStateFromATXPlaybackState:(int64_t)a3;
- (ATXNowPlayingDuetEvent)initWithATXEvent:(id)a3;
- (ATXNowPlayingDuetEvent)initWithBundleId:(id)a3 track:(id)a4 nowPlayingState:(int64_t)a5 startDate:(id)a6 endDate:(id)a7;
- (ATXNowPlayingDuetEvent)initWithCoder:(id)a3;
- (ATXNowPlayingDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNowPlayingDuetEvent

- (ATXNowPlayingDuetEvent)initWithBundleId:(id)a3 track:(id)a4 nowPlayingState:(int64_t)a5 startDate:(id)a6 endDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = ATXNowPlayingDuetEvent;
  v14 = [(ATXDuetEvent *)&v20 initWithStartDate:a6 endDate:a7];
  if (v14)
  {
    v15 = [v12 copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v17 = [v13 copy];
    track = v14->_track;
    v14->_track = v17;

    v14->_nowPlayingState = a5;
  }

  return v14;
}

- (ATXNowPlayingDuetEvent)initWithATXEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleID];
    v7 = [v5 title];
    v8 = +[ATXNowPlayingDuetEvent duetPlaybackStateFromATXPlaybackState:](ATXNowPlayingDuetEvent, "duetPlaybackStateFromATXPlaybackState:", [v5 playbackState]);
    v9 = [v5 startTime];
    v10 = [v5 endTime];

    self = [(ATXNowPlayingDuetEvent *)self initWithBundleId:v6 track:v7 nowPlayingState:v8 startDate:v9 endDate:v10];
    v11 = self;
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXNowPlayingDuetEvent *)v4 initWithATXEvent:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (ATXNowPlayingDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v31 = __atxlog_handle_default();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = __atxlog_handle_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    v33 = MEMORY[0x277CBEAD8];
    v34 = *MEMORY[0x277CBE658];
    v35 = @"ContextStore's 'keyPathForNowPlayingDataDictionary' is not an NSDictionary.";
    goto LABEL_25;
  }

  v6 = [MEMORY[0x277CFE338] nowPlayingStatusKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v36 = __atxlog_handle_default();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    v33 = MEMORY[0x277CBEAD8];
    v34 = *MEMORY[0x277CBE658];
    v35 = @"Value for 'nowPlayingStatusKey' in ContextStore's 'keyPathForNowPlayingDataDictionary' is not an NSNumber.";
    goto LABEL_25;
  }

  v9 = [MEMORY[0x277CFE338] nowPlayingStatusKey];
  v10 = [v5 objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  v12 = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
  v13 = [v5 objectForKeyedSubscript:v12];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    v37 = __atxlog_handle_default();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    v33 = MEMORY[0x277CBEAD8];
    v34 = *MEMORY[0x277CBE658];
    v35 = @"Value for 'nowPlayingBundleIdKey' in ContextStore's 'keyPathForNowPlayingDataDictionary' is not an NSString.";
LABEL_25:
    [v33 raise:v34 format:v35];
LABEL_26:
    v30 = 0;
    goto LABEL_27;
  }

  v15 = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
  v16 = [v5 objectForKeyedSubscript:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2839A6058;
  }

  v19 = v18;

  v20 = [MEMORY[0x277CFE338] nowPlayingTrackKey];
  v21 = [v5 objectForKeyedSubscript:v20];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [MEMORY[0x277CFE338] nowPlayingTrackKey];
    v24 = [v5 objectForKeyedSubscript:v23];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_2839A6058;
    }

    v27 = v26;

    v28 = [MEMORY[0x277CBEAA8] date];
    v29 = [(ATXNowPlayingDuetEvent *)self initWithBundleId:v19 track:v27 nowPlayingState:v11 startDate:v28 endDate:v28];

    self = v29;
    v30 = self;
  }

  else
  {
    v39 = __atxlog_handle_default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'nowPlayingTrackKey' in ContextStore's 'keyPathForNowPlayingDataDictionary' is not an NSString."];
    v30 = 0;
  }

LABEL_27:
  return v30;
}

- (id)identifier
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  track = self->_track;
  v5 = [v3 initWithFormat:@"%@ - %@ - %ld", self->_bundleId, track, self->_nowPlayingState];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  bundleId = self->_bundleId;
  track = self->_track;
  nowPlayingState = self->_nowPlayingState;
  v7 = [(ATXDuetEvent *)self startDate];
  v8 = [(ATXDuetEvent *)self endDate];
  v9 = [v3 initWithFormat:@"App bundleId: %@, Track: %@, Now playing status: %ld, start date: %@, end date: %@", bundleId, track, nowPlayingState, v7, v8];

  return v9;
}

+ (int64_t)duetPlaybackStateFromATXPlaybackState:(int64_t)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ATXDuetEvent *)self startDate];
  [v8 encodeObject:v4 forKey:@"codingKeyForStartDate"];

  v5 = [(ATXDuetEvent *)self endDate];
  [v8 encodeObject:v5 forKey:@"codingKeyForEndDate"];

  v6 = [(ATXNowPlayingDuetEvent *)self bundleId];
  [v8 encodeObject:v6 forKey:@"codingKeyForBundleId"];

  v7 = [(ATXNowPlayingDuetEvent *)self track];
  [v8 encodeObject:v7 forKey:@"codingKeyForTrack"];

  [v8 encodeInteger:-[ATXNowPlayingDuetEvent nowPlayingState](self forKey:{"nowPlayingState"), @"codingKeyForNowPlayingState"}];
}

- (ATXNowPlayingDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v18];

      if (v19 && ([v4 error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForTrack" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v23];

        if (!v24 || ([v4 error], v25 = objc_claimAutoreleasedReturnValue(), v25, v25) || (v26 = objc_msgSend(v4, "decodeIntegerForKey:", @"codingKeyForNowPlayingState"), -[ATXNowPlayingDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v26, @"codingKeyForNowPlayingState", v4, @"com.apple.proactive.ATXDuetEvent.NowPlaying", -1)))
        {
          v10 = 0;
        }

        else
        {
          self = [(ATXNowPlayingDuetEvent *)self initWithBundleId:v19 track:v24 nowPlayingState:v26 startDate:v8 endDate:v14];
          v10 = self;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end