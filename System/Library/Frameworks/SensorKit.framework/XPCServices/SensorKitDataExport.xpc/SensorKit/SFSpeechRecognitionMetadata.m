@interface SFSpeechRecognitionMetadata
- (id)sr_dictionaryRepresentation;
@end

@implementation SFSpeechRecognitionMetadata

- (id)sr_dictionaryRepresentation
{
  v3 = sub_100006144([(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] jitter] acousticFeatureValuePerFrame]);
  v4 = sub_100006144([(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] pitch] acousticFeatureValuePerFrame]);
  v5 = sub_100006144([(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] voicing] acousticFeatureValuePerFrame]);
  v6 = sub_100006144([(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] shimmer] acousticFeatureValuePerFrame]);
  v18[0] = @"speakingRate";
  [(SFSpeechRecognitionMetadata *)self speakingRate];
  v19[0] = [NSNumber numberWithDouble:?];
  v18[1] = @"averagePauseDuration";
  [(SFSpeechRecognitionMetadata *)self averagePauseDuration];
  v19[1] = [NSNumber numberWithDouble:?];
  v18[2] = @"speechStartTimestamp";
  [(SFSpeechRecognitionMetadata *)self speechStartTimestamp];
  v19[2] = [NSNumber numberWithDouble:?];
  v18[3] = @"speechDuration";
  [(SFSpeechRecognitionMetadata *)self speechDuration];
  v19[3] = [NSNumber numberWithDouble:?];
  v18[4] = @"voiceAnalytics";
  v16[0] = @"jitter";
  v14[0] = @"acousticFeatureValuePerFrame";
  v14[1] = @"frameDuration";
  v15[0] = v3;
  [(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] jitter] frameDuration];
  v15[1] = [NSNumber numberWithDouble:?];
  v17[0] = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[1] = @"pitch";
  v12[1] = @"frameDuration";
  v13[0] = v4;
  v12[0] = @"acousticFeatureValuePerFrame";
  [(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] pitch] frameDuration];
  v13[1] = [NSNumber numberWithDouble:?];
  v17[1] = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v16[2] = @"voicing";
  v10[1] = @"frameDuration";
  v11[0] = v5;
  v10[0] = @"acousticFeatureValuePerFrame";
  [(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] voicing] frameDuration];
  v11[1] = [NSNumber numberWithDouble:?];
  v17[2] = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v16[3] = @"shimmer";
  v8[1] = @"frameDuration";
  v9[0] = v6;
  v8[0] = @"acousticFeatureValuePerFrame";
  [(SFAcousticFeature *)[(SFVoiceAnalytics *)[(SFSpeechRecognitionMetadata *)self voiceAnalytics] shimmer] frameDuration];
  v9[1] = [NSNumber numberWithDouble:?];
  v17[3] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v19[4] = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  return [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];
}

@end