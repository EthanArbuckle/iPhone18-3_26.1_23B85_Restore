@interface SASInterpretation(AFSpeechTokenAdditions)
- (id)af_speechTokens;
@end

@implementation SASInterpretation(AFSpeechTokenAdditions)

- (id)af_speechTokens
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [a1 tokens];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 tokens];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) af_speechToken];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end