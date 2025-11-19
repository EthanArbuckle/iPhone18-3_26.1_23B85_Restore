@interface SASRecognition(AFSpeechTokenAdditions)
- (id)af_speechPhrases;
- (id)af_speechUtterances;
@end

@implementation SASRecognition(AFSpeechTokenAdditions)

- (id)af_speechUtterances
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [a1 utterances];
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  }

  else
  {
    v3 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_alloc_init(AFSpeechUtterance);
        v11 = [v9 interpretationIndices];
        [(AFSpeechUtterance *)v10 setInterpretationIndices:v11];

        [v9 confidenceScore];
        [(AFSpeechUtterance *)v10 setConfidenceScore:v12];
        [(AFSpeechUtterance *)v10 setSource:1];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)af_speechPhrases
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [a1 phrases];
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  }

  else
  {
    v3 = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_alloc_init(AFSpeechPhrase);
        v11 = [v9 af_speechInterpretations];
        [(AFSpeechPhrase *)v10 setInterpretations:v11];

        -[AFSpeechPhrase setIsLowConfidence:](v10, "setIsLowConfidence:", [v9 lowConfidence]);
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

@end