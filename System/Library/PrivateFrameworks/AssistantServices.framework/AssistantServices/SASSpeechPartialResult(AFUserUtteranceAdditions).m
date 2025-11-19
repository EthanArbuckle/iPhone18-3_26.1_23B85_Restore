@interface SASSpeechPartialResult(AFUserUtteranceAdditions)
- (AFUserUtterance)af_userUtteranceValue;
- (id)af_bestTextInterpretation;
@end

@implementation SASSpeechPartialResult(AFUserUtteranceAdditions)

- (id)af_bestTextInterpretation
{
  v1 = [a1 af_userUtteranceValue];
  v2 = [v1 bestTextInterpretation];

  return v2;
}

- (AFUserUtterance)af_userUtteranceValue
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v3 = [a1 tokens];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 tokens];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) af_speechToken];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [AFUserUtterance alloc];
  v12 = [a1 af_correctionContext];
  v13 = [(AFUserUtterance *)v11 initWithTokens:v4 correctionIdentifier:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end