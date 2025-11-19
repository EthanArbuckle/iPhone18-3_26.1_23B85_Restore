@interface SASAudioAnalytics(AudioAnalytics)
- (AFSpeechAudioAnalytics)af_audioAnalytics;
@end

@implementation SASAudioAnalytics(AudioAnalytics)

- (AFSpeechAudioAnalytics)af_audioAnalytics
{
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v3 = [a1 acousticFeatures];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v5 = [a1 acousticFeatures];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SASAudioAnalytics_AudioAnalytics__af_audioAnalytics__block_invoke;
  v11[3] = &unk_1E7348818;
  v12 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  v7 = [AFSpeechAudioAnalytics alloc];
  v8 = [a1 speechRecognitionFeatures];
  v9 = [(AFSpeechAudioAnalytics *)v7 initWithSpeechRecognitionFeatures:v8 acousticFeatures:v6];

  return v9;
}

@end