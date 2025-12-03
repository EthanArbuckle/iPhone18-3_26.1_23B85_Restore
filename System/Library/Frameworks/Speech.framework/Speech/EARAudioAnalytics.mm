@interface EARAudioAnalytics
- (EARAudioAnalytics)initWithAnalytics:(id)analytics;
- (EARAudioAnalytics)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARAudioAnalytics

- (EARAudioAnalytics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = EARAudioAnalytics;
  v5 = [(EARAudioAnalytics *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"speechRecognitionFeatures"];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v7;

    v9 = objc_opt_class();
    v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"acousticFeatures"];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v10;

    [coderCopy decodeDoubleForKey:@"snr"];
    v5->_snr = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  speechRecognitionFeatures = self->_speechRecognitionFeatures;
  coderCopy = coder;
  [coderCopy encodeObject:speechRecognitionFeatures forKey:@"speechRecognitionFeatures"];
  [coderCopy encodeObject:self->_acousticFeatures forKey:@"acousticFeatures"];
  [coderCopy encodeDouble:@"snr" forKey:self->_snr];
}

- (EARAudioAnalytics)initWithAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v18.receiver = self;
  v18.super_class = EARAudioAnalytics;
  v5 = [(EARAudioAnalytics *)&v18 init];
  if (v5)
  {
    acousticFeatures = [analyticsCopy acousticFeatures];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(acousticFeatures, "count")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__EARAudioAnalytics_initWithAnalytics___block_invoke;
    v16[3] = &unk_1E797C0D8;
    v17 = v7;
    v8 = v7;
    [acousticFeatures enumerateKeysAndObjectsUsingBlock:v16];
    speechRecognitionFeatures = [analyticsCopy speechRecognitionFeatures];
    v10 = [speechRecognitionFeatures copy];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v10;

    v12 = [v8 copy];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v12;

    [analyticsCopy snr];
    v5->_snr = v14;
  }

  return v5;
}

void __39__EARAudioAnalytics_initWithAnalytics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[EARAcousticFeature alloc] initWithFeature:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

@end