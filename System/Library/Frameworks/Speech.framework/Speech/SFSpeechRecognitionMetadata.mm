@interface SFSpeechRecognitionMetadata
- (NSString)description;
- (SFSpeechRecognitionMetadata)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SFSpeechRecognitionMetadata)initWithCoder:(id)coder;
- (id)_initWithSpeechStartTimestamp:(double)timestamp speechDuration:(double)duration voiceAnalytics:(id)analytics speakingRate:(double)rate averagePauseDuration:(double)pauseDuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSpeechRecognitionMetadata

- (SFSpeechRecognitionMetadata)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  if ([representationCopy length])
  {
    v13.receiver = self;
    v13.super_class = SFSpeechRecognitionMetadata;
    v7 = [(SFSpeechRecognitionMetadata *)&v13 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:0];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithSpeechStartTimestamp:(double)timestamp speechDuration:(double)duration voiceAnalytics:(id)analytics speakingRate:(double)rate averagePauseDuration:(double)pauseDuration
{
  analyticsCopy = analytics;
  v18.receiver = self;
  v18.super_class = SFSpeechRecognitionMetadata;
  v13 = [(SFSpeechRecognitionMetadata *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_speakingRate = rate;
    v13->_averagePauseDuration = pauseDuration;
    v13->_speechStartTimestamp = timestamp;
    v13->_speechDuration = duration;
    v15 = [analyticsCopy copy];
    voiceAnalytics = v14->_voiceAnalytics;
    v14->_voiceAnalytics = v15;
  }

  return v14;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = SFSpeechRecognitionMetadata;
  v3 = [(SFSpeechRecognitionMetadata *)&v10 description];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speakingRate];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averagePauseDuration];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speechStartTimestamp];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_speechDuration];
  v8 = [v3 stringByAppendingFormat:@", speakingRate=%@, averagePauseDuration=%@, speechStartTimestamp=%@, speechDuration=%@, voiceAnalytics=%@", v4, v5, v6, v7, self->_voiceAnalytics];

  return v8;
}

- (SFSpeechRecognitionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SFSpeechRecognitionMetadata;
  v5 = [(SFSpeechRecognitionMetadata *)&v14 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_speakingRate"];
    v5->_speakingRate = v6;
    [coderCopy decodeDoubleForKey:@"_averagePauseDuration"];
    v5->_averagePauseDuration = v7;
    [coderCopy decodeDoubleForKey:@"_speechStartTimestamp"];
    v5->_speechStartTimestamp = v8;
    [coderCopy decodeDoubleForKey:@"_speechDuration"];
    v5->_speechDuration = v9;
    [coderCopy decodeDoubleForKey:@"_averagePauseDuration"];
    v5->_averagePauseDuration = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceAnalytics"];
    voiceAnalytics = v5->_voiceAnalytics;
    v5->_voiceAnalytics = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  speakingRate = self->_speakingRate;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_speakingRate" forKey:speakingRate];
  [coderCopy encodeDouble:@"_averagePauseDuration" forKey:self->_averagePauseDuration];
  [coderCopy encodeDouble:@"_speechStartTimestamp" forKey:self->_speechStartTimestamp];
  [coderCopy encodeDouble:@"_speechDuration" forKey:self->_speechDuration];
  [coderCopy encodeObject:self->_voiceAnalytics forKey:@"_voiceAnalytics"];
}

@end