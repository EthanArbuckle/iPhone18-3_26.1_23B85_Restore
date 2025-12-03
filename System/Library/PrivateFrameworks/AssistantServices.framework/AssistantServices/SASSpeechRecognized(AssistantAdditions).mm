@interface SASSpeechRecognized(AssistantAdditions)
- (id)af_correctionContext;
@end

@implementation SASSpeechRecognized(AssistantAdditions)

- (id)af_correctionContext
{
  v11[2] = *MEMORY[0x1E69E9840];
  refId = [self refId];
  if (refId && (v3 = refId, [self sessionId], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v10[0] = @"interactionId";
    refId2 = [self refId];
    v10[1] = @"sessionId";
    v11[0] = refId2;
    sessionId = [self sessionId];
    v11[1] = sessionId;
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