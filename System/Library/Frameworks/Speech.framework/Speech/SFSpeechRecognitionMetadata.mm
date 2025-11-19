@interface SFSpeechRecognitionMetadata
- (NSString)description;
- (SFSpeechRecognitionMetadata)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SFSpeechRecognitionMetadata)initWithCoder:(id)a3;
- (id)_initWithSpeechStartTimestamp:(double)a3 speechDuration:(double)a4 voiceAnalytics:(id)a5 speakingRate:(double)a6 averagePauseDuration:(double)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSpeechRecognitionMetadata

- (SFSpeechRecognitionMetadata)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  if ([v6 length])
  {
    v13.receiver = self;
    v13.super_class = SFSpeechRecognitionMetadata;
    v7 = [(SFSpeechRecognitionMetadata *)&v13 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithSpeechStartTimestamp:(double)a3 speechDuration:(double)a4 voiceAnalytics:(id)a5 speakingRate:(double)a6 averagePauseDuration:(double)a7
{
  v12 = a5;
  v18.receiver = self;
  v18.super_class = SFSpeechRecognitionMetadata;
  v13 = [(SFSpeechRecognitionMetadata *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_speakingRate = a6;
    v13->_averagePauseDuration = a7;
    v13->_speechStartTimestamp = a3;
    v13->_speechDuration = a4;
    v15 = [v12 copy];
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

- (SFSpeechRecognitionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFSpeechRecognitionMetadata;
  v5 = [(SFSpeechRecognitionMetadata *)&v14 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_speakingRate"];
    v5->_speakingRate = v6;
    [v4 decodeDoubleForKey:@"_averagePauseDuration"];
    v5->_averagePauseDuration = v7;
    [v4 decodeDoubleForKey:@"_speechStartTimestamp"];
    v5->_speechStartTimestamp = v8;
    [v4 decodeDoubleForKey:@"_speechDuration"];
    v5->_speechDuration = v9;
    [v4 decodeDoubleForKey:@"_averagePauseDuration"];
    v5->_averagePauseDuration = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceAnalytics"];
    voiceAnalytics = v5->_voiceAnalytics;
    v5->_voiceAnalytics = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  speakingRate = self->_speakingRate;
  v5 = a3;
  [v5 encodeDouble:@"_speakingRate" forKey:speakingRate];
  [v5 encodeDouble:@"_averagePauseDuration" forKey:self->_averagePauseDuration];
  [v5 encodeDouble:@"_speechStartTimestamp" forKey:self->_speechStartTimestamp];
  [v5 encodeDouble:@"_speechDuration" forKey:self->_speechDuration];
  [v5 encodeObject:self->_voiceAnalytics forKey:@"_voiceAnalytics"];
}

@end