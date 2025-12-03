@interface AFSpeechAudioAnalytics
- (AFSpeechAudioAnalytics)initWithCoder:(id)coder;
- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures;
- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures snr:(double)snr;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechAudioAnalytics

- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures snr:(double)snr
{
  featuresCopy = features;
  acousticFeaturesCopy = acousticFeatures;
  v16.receiver = self;
  v16.super_class = AFSpeechAudioAnalytics;
  v10 = [(AFSpeechAudioAnalytics *)&v16 init];
  if (v10)
  {
    v11 = [featuresCopy copy];
    speechRecognitionFeatures = v10->_speechRecognitionFeatures;
    v10->_speechRecognitionFeatures = v11;

    v13 = [acousticFeaturesCopy copy];
    acousticFeatures = v10->_acousticFeatures;
    v10->_acousticFeatures = v13;

    v10->_snr = snr;
  }

  return v10;
}

- (AFSpeechAudioAnalytics)initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures
{
  featuresCopy = features;
  acousticFeaturesCopy = acousticFeatures;
  v14.receiver = self;
  v14.super_class = AFSpeechAudioAnalytics;
  v8 = [(AFSpeechAudioAnalytics *)&v14 init];
  if (v8)
  {
    v9 = [featuresCopy copy];
    speechRecognitionFeatures = v8->_speechRecognitionFeatures;
    v8->_speechRecognitionFeatures = v9;

    v11 = [acousticFeaturesCopy copy];
    acousticFeatures = v8->_acousticFeatures;
    v8->_acousticFeatures = v11;
  }

  return v8;
}

- (AFSpeechAudioAnalytics)initWithCoder:(id)coder
{
  v21[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_speechRecognitionFeatures"];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v9;

    v11 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_acousticFeatures"];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v14;

    [coderCopy decodeDoubleForKey:@"_snr"];
    v5->_snr = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  speechRecognitionFeatures = self->_speechRecognitionFeatures;
  coderCopy = coder;
  [coderCopy encodeObject:speechRecognitionFeatures forKey:@"_speechRecognitionFeatures"];
  [coderCopy encodeObject:self->_acousticFeatures forKey:@"_acousticFeatures"];
  [coderCopy encodeDouble:@"_snr" forKey:self->_snr];
}

@end