@interface LSRUtilities
+ (id)recognizedResultFromEARPackage:(id)a3;
+ (id)transcriptionsWithEARTokens:(id)a3;
@end

@implementation LSRUtilities

+ (id)recognizedResultFromEARPackage:(id)a3
{
  v32 = a3;
  v30 = [v32 audioAnalytics];
  v3 = [v30 acousticFeatures];
  v4 = objc_alloc_init(NSMutableDictionary);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
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
        v13 = [v11 acousticFeatureValuePerFrame];
        [v11 frameDuration];
        v14 = [v12 initWithAcousticFeatureValue:v13 frameDuration:?];

        [v4 setValue:v14 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  v15 = [v30 speechRecognitionFeatures];
  v16 = [AFSpeechAudioAnalytics alloc];
  [v30 snr];
  v17 = [v16 initWithSpeechRecognitionFeatures:v15 acousticFeatures:v4 snr:?];

  v31 = [v32 recognition];
  v18 = [v31 tokenSausage];
  v19 = [v31 interpretationIndices];
  v20 = sub_1000398FC(v18, v19);

  [v32 utteranceStart];
  v21 = [SFUtilities transcriptionFromSpeechPhrases:v20 afAudioAnalytics:v17 utteranceStart:?];
  [v32 utteranceStart];
  v22 = [SFUtilities recognitionMetadataFromSpeechPhrases:v20 afAudioAnalytics:v17 utteranceStart:?];
  v23 = [v32 preITNRecognition];
  v24 = [v23 tokenSausage];
  v25 = [v23 interpretationIndices];
  v26 = sub_1000398FC(v24, v25);

  [v32 utteranceStart];
  v27 = [SFUtilities transcriptionFromSpeechPhrases:v26 afAudioAnalytics:v17 utteranceStart:?];
  v28 = [[SFSpeechRecognitionResult alloc] _initWithBestTranscription:v21 rawTranscription:v27 final:objc_msgSend(v32 speechRecognitionMetadata:{"isFinal"), v22}];

  return v28;
}

+ (id)transcriptionsWithEARTokens:(id)a3
{
  v3 = sub_10003A008(a3, 0);
  v4 = [SFUtilities transcriptionsWithTokens:v3];

  return v4;
}

@end