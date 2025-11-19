@interface AssistantVoiceMetrics
- (AssistantVoiceMetrics)init;
- (AssistantVoiceMetrics)initWithCoder:(id)a3;
- (double)_clockFactor;
- (double)downloadObservationDuration;
- (id)description;
- (id)dictionaryMetrics;
- (void)encodeWithCoder:(id)a3;
- (void)sendAnalyticsEvent;
- (void)setVoiceDownloadForLanguageCode:(id)a3 name:(id)a4;
- (void)setVoicePreviewedForLanguageCode:(id)a3 name:(id)a4;
@end

@implementation AssistantVoiceMetrics

- (void)setVoiceDownloadForLanguageCode:(id)a3 name:(id)a4
{
  v5 = [AssistantVoiceMetrics keyForLanguage:a3 name:a4];
  voiceDownloadKey = self->_voiceDownloadKey;
  self->_voiceDownloadKey = v5;

  MEMORY[0x2821F96F8]();
}

- (void)setVoicePreviewedForLanguageCode:(id)a3 name:(id)a4
{
  ++self->_voicesPreviewed;
  v5 = [AssistantVoiceMetrics keyForLanguage:a3 name:a4];
  lastVoicePreviewedKey = self->_lastVoicePreviewedKey;
  self->_lastVoicePreviewedKey = v5;

  mutableUniqueVoicesPreviewed = self->_mutableUniqueVoicesPreviewed;
  v8 = self->_lastVoicePreviewedKey;

  [(NSMutableSet *)mutableUniqueVoicesPreviewed addObject:v8];
}

- (AssistantVoiceMetrics)init
{
  v6.receiver = self;
  v6.super_class = AssistantVoiceMetrics;
  v2 = [(AssistantVoiceMetrics *)&v6 init];
  v3 = [MEMORY[0x277CBEB58] set];
  mutableUniqueVoicesPreviewed = v2->_mutableUniqueVoicesPreviewed;
  v2->_mutableUniqueVoicesPreviewed = v3;

  return v2;
}

- (id)description
{
  v2 = [(AssistantVoiceMetrics *)self dictionaryMetrics];
  v3 = [v2 description];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  voiceDownloadKey = self->_voiceDownloadKey;
  v6 = a3;
  [v6 encodeObject:voiceDownloadKey forKey:@"_voiceDownloadKey"];
  [v6 encodeObject:self->_lastVoicePreviewedKey forKey:@"_lastVoicePreviewedKey"];
  [v6 encodeInteger:self->_voicesPreviewed forKey:@"_voicesPreviewed"];
  v5 = [(NSMutableSet *)self->_mutableUniqueVoicesPreviewed allObjects];
  [v6 encodeObject:v5 forKey:@"_uniqueVoicesPreviewed"];

  [v6 encodeBool:self->_isCellularAllowed forKey:@"_isCellularAllowed"];
  [v6 encodeInt64:self->_downloadObservationBeginTimestamp forKey:@"_downloadObservationBeginTimestamp"];
  [v6 encodeInt64:self->_downloadObservationEndTimestamp forKey:@"_downloadObservationEndTimestamp"];
  [v6 encodeDouble:@"_downloadObservationProgress" forKey:self->_downloadObservationProgress];
  [v6 encodeBool:self->_downloadError forKey:@"_downloadError"];
}

- (AssistantVoiceMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AssistantVoiceMetrics;
  v5 = [(AssistantVoiceMetrics *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceDownloadKey"];
    voiceDownloadKey = v5->_voiceDownloadKey;
    v5->_voiceDownloadKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastVoicePreviewedKey"];
    lastVoicePreviewedKey = v5->_lastVoicePreviewedKey;
    v5->_lastVoicePreviewedKey = v8;

    v5->_voicesPreviewed = [v4 decodeIntegerForKey:@"_voicesPreviewed"];
    v10 = MEMORY[0x277CBEB58];
    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_uniqueVoicesPreviewed"];
    v12 = [v10 setWithArray:v11];
    mutableUniqueVoicesPreviewed = v5->_mutableUniqueVoicesPreviewed;
    v5->_mutableUniqueVoicesPreviewed = v12;

    v5->_isCellularAllowed = [v4 decodeBoolForKey:@"_isCellularAllowed"];
    v5->_downloadObservationBeginTimestamp = [v4 decodeInt64ForKey:@"_downloadObservationBeginTimestamp"];
    v5->_downloadObservationEndTimestamp = [v4 decodeInt64ForKey:@"_downloadObservationEndTimestamp"];
    [v4 decodeDoubleForKey:@"_downloadObservationProgress"];
    *&v14 = v14;
    v5->_downloadObservationProgress = *&v14;
    v5->_downloadError = [v4 decodeBoolForKey:@"_downloadError"];
  }

  return v5;
}

- (double)_clockFactor
{
  if (_clockFactor_onceToken != -1)
  {
    [AssistantVoiceMetrics _clockFactor];
  }

  return *&_clockFactor_clockToSeconds;
}

double __37__AssistantVoiceMetrics__clockFactor__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  _clockFactor_clockToSeconds = *&result;
  return result;
}

- (double)downloadObservationDuration
{
  downloadObservationBeginTimestamp = self->_downloadObservationBeginTimestamp;
  if (!downloadObservationBeginTimestamp)
  {
    return 0.0;
  }

  downloadObservationEndTimestamp = self->_downloadObservationEndTimestamp;
  if (!downloadObservationEndTimestamp)
  {
    downloadObservationEndTimestamp = mach_absolute_time();
    downloadObservationBeginTimestamp = self->_downloadObservationBeginTimestamp;
  }

  v5 = (downloadObservationEndTimestamp - downloadObservationBeginTimestamp);
  [(AssistantVoiceMetrics *)self _clockFactor];
  return v6 * v5;
}

- (id)dictionaryMetrics
{
  v24 = *MEMORY[0x277D85DE8];
  v15[0] = @"voice";
  v15[1] = @"last_preview";
  v16 = vbslq_s8(vceqzq_s64(*&self->_voiceDownloadKey), vdupq_n_s64(&stru_285317CF0), *&self->_voiceDownloadKey);
  v15[2] = @"voices_previewed";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_voicesPreviewed];
  v17 = v3;
  v15[3] = @"voices_previewed_unique";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AssistantVoiceMetrics uniqueVoicesPreviewed](self, "uniqueVoicesPreviewed")}];
  v18 = v4;
  v15[4] = @"allowing_cellular";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCellularAllowed];
  v19 = v5;
  v15[5] = @"download_duration";
  v6 = MEMORY[0x277CCABB0];
  [(AssistantVoiceMetrics *)self downloadObservationDuration];
  v7 = [v6 numberWithDouble:?];
  v20 = v7;
  v15[6] = @"download_progress";
  *&v8 = self->_downloadObservationProgress;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v21 = v9;
  v15[7] = @"download_error";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_downloadError];
  v22 = v10;
  v15[8] = @"previewed_successfully";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_previewedSuccessfully];
  v23 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)sendAnalyticsEvent
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_AnalyticsSendEventLazy(NSString *__strong, NSDictionary<NSString *, NSObject *> *(^__strong)(void))"}];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceMetrics.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

@end