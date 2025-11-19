@interface EARAudioAnalytics
- (EARAudioAnalytics)initWithAnalytics:(id)a3;
- (EARAudioAnalytics)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARAudioAnalytics

- (EARAudioAnalytics)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EARAudioAnalytics;
  v5 = [(EARAudioAnalytics *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"speechRecognitionFeatures"];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v7;

    v9 = objc_opt_class();
    v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"acousticFeatures"];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v10;

    [v4 decodeDoubleForKey:@"snr"];
    v5->_snr = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  speechRecognitionFeatures = self->_speechRecognitionFeatures;
  v5 = a3;
  [v5 encodeObject:speechRecognitionFeatures forKey:@"speechRecognitionFeatures"];
  [v5 encodeObject:self->_acousticFeatures forKey:@"acousticFeatures"];
  [v5 encodeDouble:@"snr" forKey:self->_snr];
}

- (EARAudioAnalytics)initWithAnalytics:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EARAudioAnalytics;
  v5 = [(EARAudioAnalytics *)&v18 init];
  if (v5)
  {
    v6 = [v4 acousticFeatures];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__EARAudioAnalytics_initWithAnalytics___block_invoke;
    v16[3] = &unk_1E797C0D8;
    v17 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v16];
    v9 = [v4 speechRecognitionFeatures];
    v10 = [v9 copy];
    speechRecognitionFeatures = v5->_speechRecognitionFeatures;
    v5->_speechRecognitionFeatures = v10;

    v12 = [v8 copy];
    acousticFeatures = v5->_acousticFeatures;
    v5->_acousticFeatures = v12;

    [v4 snr];
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