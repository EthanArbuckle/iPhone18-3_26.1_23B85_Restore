@interface SASSpeechRecognized(AssistantAdditions)
- (id)af_correctionContext;
@end

@implementation SASSpeechRecognized(AssistantAdditions)

- (id)af_correctionContext
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 refId];
  if (v2 && (v3 = v2, [a1 sessionId], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v10[0] = @"interactionId";
    v5 = [a1 refId];
    v10[1] = @"sessionId";
    v11[0] = v5;
    v6 = [a1 sessionId];
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end