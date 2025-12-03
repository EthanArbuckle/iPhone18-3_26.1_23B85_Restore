@interface LSRUtilities
+ (id)recognizedResultFromEARPackage:(id)package;
+ (id)transcriptionsWithEARTokens:(id)tokens;
@end

@implementation LSRUtilities

+ (id)recognizedResultFromEARPackage:(id)package
{
  packageCopy = package;
  audioAnalytics = [packageCopy audioAnalytics];
  acousticFeatures = [audioAnalytics acousticFeatures];
  v4 = objc_alloc_init(NSMutableDictionary);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = acousticFeatures;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = [AFSpeechAcousticFeature alloc];
        acousticFeatureValuePerFrame = [v11 acousticFeatureValuePerFrame];
        [v11 frameDuration];
        v14 = [v12 initWithAcousticFeatureValue:acousticFeatureValuePerFrame frameDuration:?];

        [v4 setValue:v14 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  speechRecognitionFeatures = [audioAnalytics speechRecognitionFeatures];
  v16 = [AFSpeechAudioAnalytics alloc];
  [audioAnalytics snr];
  v17 = [v16 initWithSpeechRecognitionFeatures:speechRecognitionFeatures acousticFeatures:v4 snr:?];

  recognition = [packageCopy recognition];
  tokenSausage = [recognition tokenSausage];
  interpretationIndices = [recognition interpretationIndices];
  v20 = sub_1000398FC(tokenSausage, interpretationIndices);

  [packageCopy utteranceStart];
  v21 = [SFUtilities transcriptionFromSpeechPhrases:v20 afAudioAnalytics:v17 utteranceStart:?];
  [packageCopy utteranceStart];
  v22 = [SFUtilities recognitionMetadataFromSpeechPhrases:v20 afAudioAnalytics:v17 utteranceStart:?];
  preITNRecognition = [packageCopy preITNRecognition];
  tokenSausage2 = [preITNRecognition tokenSausage];
  interpretationIndices2 = [preITNRecognition interpretationIndices];
  v26 = sub_1000398FC(tokenSausage2, interpretationIndices2);

  [packageCopy utteranceStart];
  v27 = [SFUtilities transcriptionFromSpeechPhrases:v26 afAudioAnalytics:v17 utteranceStart:?];
  v28 = [[SFSpeechRecognitionResult alloc] _initWithBestTranscription:v21 rawTranscription:v27 final:objc_msgSend(packageCopy speechRecognitionMetadata:{"isFinal"), v22}];

  return v28;
}

+ (id)transcriptionsWithEARTokens:(id)tokens
{
  v3 = sub_10003A008(tokens, 0);
  v4 = [SFUtilities transcriptionsWithTokens:v3];

  return v4;
}

@end