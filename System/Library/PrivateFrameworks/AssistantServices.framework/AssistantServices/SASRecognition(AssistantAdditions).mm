@interface SASRecognition(AssistantAdditions)
- (id)af_correctionContextWithRefId:()AssistantAdditions sessionId:;
@end

@implementation SASRecognition(AssistantAdditions)

- (id)af_correctionContextWithRefId:()AssistantAdditions sessionId:
{
  v4 = 0;
  v12[2] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v11[0] = @"interactionId";
    v11[1] = @"sessionId";
    v12[0] = a3;
    v12[1] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = a3;
    v4 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end