@interface EARSpeechRecognitionResult
- (EARSpeechRecognitionResult)initWithCoder:(id)a3;
- (EARSpeechRecognitionResult)initWithResult:(id)a3 needsLeadingSpace:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARSpeechRecognitionResult

- (EARSpeechRecognitionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = EARSpeechRecognitionResult;
  v5 = [(EARSpeechRecognitionResult *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preITNTokens"];
    preITNTokens = v5->_preITNTokens;
    v5->_preITNTokens = v8;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v10;
    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"voiceCommandInterpretations"];
    voiceCommandInterpretations = v5->_voiceCommandInterpretations;
    v5->_voiceCommandInterpretations = v11;

    v13 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preITNVoiceCommandInterpretations"];
    preITNVoiceCommandInterpretations = v5->_preITNVoiceCommandInterpretations;
    v5->_preITNVoiceCommandInterpretations = v13;

    v5->_needsLeadingSpace = [v4 decodeBoolForKey:@"needsLeadingSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tokens = self->_tokens;
  v5 = a3;
  [v5 encodeObject:tokens forKey:@"tokens"];
  [v5 encodeObject:self->_preITNTokens forKey:@"preITNTokens"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  [v5 encodeObject:self->_voiceCommandInterpretations forKey:@"voiceCommandInterpretations"];
  [v5 encodeObject:self->_preITNVoiceCommandInterpretations forKey:@"preITNVoiceCommandInterpretations"];
  [v5 encodeBool:self->_needsLeadingSpace forKey:@"needsLeadingSpace"];
}

- (EARSpeechRecognitionResult)initWithResult:(id)a3 needsLeadingSpace:(BOOL)a4
{
  v6 = a3;
  v35.receiver = self;
  v35.super_class = EARSpeechRecognitionResult;
  v7 = [(EARSpeechRecognitionResult *)&v35 init];
  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [v6 tokens];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v11 = [v6 tokens];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke;
    v33[3] = &unk_1E797C100;
    v34 = v10;
    v12 = v10;
    [v11 enumerateObjectsUsingBlock:v33];

    v13 = MEMORY[0x1E695DF70];
    v14 = [v6 preITNTokens];
    v15 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

    v16 = [v6 preITNTokens];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke_2;
    v31 = &unk_1E797C100;
    v32 = v15;
    v17 = v15;
    [v16 enumerateObjectsUsingBlock:&v28];

    v18 = [v12 copy];
    tokens = v7->_tokens;
    v7->_tokens = v18;

    v20 = [v17 copy];
    preITNTokens = v7->_preITNTokens;
    v7->_preITNTokens = v20;

    [v6 confidence];
    v7->_confidence = v22;
    v23 = [v6 voiceCommandInterpretations];
    voiceCommandInterpretations = v7->_voiceCommandInterpretations;
    v7->_voiceCommandInterpretations = v23;

    v25 = [v6 preITNVoiceCommandInterpretations];
    preITNVoiceCommandInterpretations = v7->_preITNVoiceCommandInterpretations;
    v7->_preITNVoiceCommandInterpretations = v25;

    v7->_needsLeadingSpace = a4;
  }

  return v7;
}

void __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[EARSpeechRecognitionToken alloc] initWithToken:v3];

  [v2 addObject:v4];
}

void __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[EARSpeechRecognitionToken alloc] initWithToken:v3];

  [v2 addObject:v4];
}

@end