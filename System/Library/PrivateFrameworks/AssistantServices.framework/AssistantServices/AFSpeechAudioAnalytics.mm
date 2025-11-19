@interface AFSpeechAudioAnalytics
- (AFSpeechAudioAnalytics)initWithCoder:(id)a3;
- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4;
- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4 snr:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechAudioAnalytics

- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4 snr:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AFSpeechAudioAnalytics;
  v10 = [(AFSpeechAudioAnalytics *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    speechRecognitionFeatures = v10->_speechRecognitionFeatures;
    v10->_speechRecognitionFeatures = v11;

    v13 = [v9 copy];
    acousticFeatures = v10->_acousticFeatures;
    v10->_acousticFeatures = v13;

    v10->_snr = a5;
  }

  return v10;
}

- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AFSpeechAudioAnalytics;
  v8 = [(AFSpeechAudioAnalytics *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    speechRecognitionFeatures = v8->_speechRecognitionFeatures;
    v8->_speechRecognitionFeatures = v9;

    v11 = [v7 copy];
    acousticFeatures = v8->_acousticFeatures;
    v8->_acousticFeatures = v11;
  }

  return v8;
}

- (AFSpeechAudioAnalytics)initWithCoder:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AFSpeechAudioAnalytics;
  v5 = [(AFSpeechAudioAnalytics *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_speechRecognitionFeatures"];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v9;

    v11 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_acousticFeatures"];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v14;

    [v4 decodeDoubleForKey:@"_snr"];
    v5->_snr = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  speechRecognitionFeatures = self->_speechRecognitionFeatures;
  v5 = a3;
  [v5 encodeObject:speechRecognitionFeatures forKey:@"_speechRecognitionFeatures"];
  [v5 encodeObject:self->_acousticFeatures forKey:@"_acousticFeatures"];
  [v5 encodeDouble:@"_snr" forKey:self->_snr];
}

@end