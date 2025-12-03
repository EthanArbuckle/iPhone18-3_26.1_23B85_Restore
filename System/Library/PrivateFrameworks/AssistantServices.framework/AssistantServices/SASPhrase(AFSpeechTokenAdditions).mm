@interface SASPhrase(AFSpeechTokenAdditions)
- (id)af_speechInterpretations;
@end

@implementation SASPhrase(AFSpeechTokenAdditions)

- (id)af_speechInterpretations
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  interpretations = [self interpretations];
  v4 = [v2 initWithCapacity:{objc_msgSend(interpretations, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  interpretations2 = [self interpretations];
  v6 = [interpretations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(interpretations2);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_alloc_init(AFSpeechInterpretation);
        af_speechTokens = [v10 af_speechTokens];
        [(AFSpeechInterpretation *)v11 setTokens:af_speechTokens];

        [v4 addObject:v11];
      }

      v7 = [interpretations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end