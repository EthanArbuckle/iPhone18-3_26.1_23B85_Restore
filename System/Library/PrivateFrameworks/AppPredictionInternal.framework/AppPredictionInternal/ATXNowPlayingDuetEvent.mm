@interface ATXNowPlayingDuetEvent
+ (int64_t)duetPlaybackStateFromATXPlaybackState:(int64_t)state;
- (ATXNowPlayingDuetEvent)initWithATXEvent:(id)event;
- (ATXNowPlayingDuetEvent)initWithBundleId:(id)id track:(id)track nowPlayingState:(int64_t)state startDate:(id)date endDate:(id)endDate;
- (ATXNowPlayingDuetEvent)initWithCoder:(id)coder;
- (ATXNowPlayingDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNowPlayingDuetEvent

- (ATXNowPlayingDuetEvent)initWithBundleId:(id)id track:(id)track nowPlayingState:(int64_t)state startDate:(id)date endDate:(id)endDate
{
  idCopy = id;
  trackCopy = track;
  v20.receiver = self;
  v20.super_class = ATXNowPlayingDuetEvent;
  v14 = [(ATXDuetEvent *)&v20 initWithStartDate:date endDate:endDate];
  if (v14)
  {
    v15 = [idCopy copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v17 = [trackCopy copy];
    track = v14->_track;
    v14->_track = v17;

    v14->_nowPlayingState = state;
  }

  return v14;
}

- (ATXNowPlayingDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    bundleID = [v5 bundleID];
    title = [v5 title];
    v8 = +[ATXNowPlayingDuetEvent duetPlaybackStateFromATXPlaybackState:](ATXNowPlayingDuetEvent, "duetPlaybackStateFromATXPlaybackState:", [v5 playbackState]);
    startTime = [v5 startTime];
    endTime = [v5 endTime];

    self = [(ATXNowPlayingDuetEvent *)self initWithBundleId:bundleID track:title nowPlayingState:v8 startDate:startTime endDate:endTime];
    selfCopy = self;
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXNowPlayingDuetEvent *)eventCopy initWithATXEvent:v12];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXNowPlayingDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForNowPlayingDataDictionary];

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

  nowPlayingStatusKey = [MEMORY[0x277CFE338] nowPlayingStatusKey];
  v7 = [v5 objectForKeyedSubscript:nowPlayingStatusKey];
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

  nowPlayingStatusKey2 = [MEMORY[0x277CFE338] nowPlayingStatusKey];
  v10 = [v5 objectForKeyedSubscript:nowPlayingStatusKey2];
  integerValue = [v10 integerValue];

  nowPlayingBundleIdKey = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
  v13 = [v5 objectForKeyedSubscript:nowPlayingBundleIdKey];
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
    selfCopy = 0;
    goto LABEL_27;
  }

  nowPlayingBundleIdKey2 = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
  v16 = [v5 objectForKeyedSubscript:nowPlayingBundleIdKey2];
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

  nowPlayingTrackKey = [MEMORY[0x277CFE338] nowPlayingTrackKey];
  v21 = [v5 objectForKeyedSubscript:nowPlayingTrackKey];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    nowPlayingTrackKey2 = [MEMORY[0x277CFE338] nowPlayingTrackKey];
    v24 = [v5 objectForKeyedSubscript:nowPlayingTrackKey2];
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

    date = [MEMORY[0x277CBEAA8] date];
    v29 = [(ATXNowPlayingDuetEvent *)self initWithBundleId:v19 track:v27 nowPlayingState:integerValue startDate:date endDate:date];

    self = v29;
    selfCopy = self;
  }

  else
  {
    v39 = __atxlog_handle_default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ATXNowPlayingDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'nowPlayingTrackKey' in ContextStore's 'keyPathForNowPlayingDataDictionary' is not an NSString."];
    selfCopy = 0;
  }

LABEL_27:
  return selfCopy;
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
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v9 = [v3 initWithFormat:@"App bundleId: %@, Track: %@, Now playing status: %ld, start date: %@, end date: %@", bundleId, track, nowPlayingState, startDate, endDate];

  return v9;
}

+ (int64_t)duetPlaybackStateFromATXPlaybackState:(int64_t)state
{
  if ((state - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForEndDate"];

  bundleId = [(ATXNowPlayingDuetEvent *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"codingKeyForBundleId"];

  track = [(ATXNowPlayingDuetEvent *)self track];
  [coderCopy encodeObject:track forKey:@"codingKeyForTrack"];

  [coderCopy encodeInteger:-[ATXNowPlayingDuetEvent nowPlayingState](self forKey:{"nowPlayingState"), @"codingKeyForNowPlayingState"}];
}

- (ATXNowPlayingDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v18];

      if (v19 && ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForTrack" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.NowPlaying" errorCode:-1 logHandle:v23];

        if (!v24 || ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, v25) || (v26 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForNowPlayingState"), -[ATXNowPlayingDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v26, @"codingKeyForNowPlayingState", coderCopy, @"com.apple.proactive.ATXDuetEvent.NowPlaying", -1)))
        {
          selfCopy = 0;
        }

        else
        {
          self = [(ATXNowPlayingDuetEvent *)self initWithBundleId:v19 track:v24 nowPlayingState:v26 startDate:v8 endDate:v14];
          selfCopy = self;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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