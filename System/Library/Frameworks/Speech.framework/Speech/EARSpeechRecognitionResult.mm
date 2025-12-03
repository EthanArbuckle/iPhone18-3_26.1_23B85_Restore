@interface EARSpeechRecognitionResult
- (EARSpeechRecognitionResult)initWithCoder:(id)coder;
- (EARSpeechRecognitionResult)initWithResult:(id)result needsLeadingSpace:(BOOL)space;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARSpeechRecognitionResult

- (EARSpeechRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = EARSpeechRecognitionResult;
  v5 = [(EARSpeechRecognitionResult *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preITNTokens"];
    preITNTokens = v5->_preITNTokens;
    v5->_preITNTokens = v8;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v10;
    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"voiceCommandInterpretations"];
    voiceCommandInterpretations = v5->_voiceCommandInterpretations;
    v5->_voiceCommandInterpretations = v11;

    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preITNVoiceCommandInterpretations"];
    preITNVoiceCommandInterpretations = v5->_preITNVoiceCommandInterpretations;
    v5->_preITNVoiceCommandInterpretations = v13;

    v5->_needsLeadingSpace = [coderCopy decodeBoolForKey:@"needsLeadingSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tokens = self->_tokens;
  coderCopy = coder;
  [coderCopy encodeObject:tokens forKey:@"tokens"];
  [coderCopy encodeObject:self->_preITNTokens forKey:@"preITNTokens"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeObject:self->_voiceCommandInterpretations forKey:@"voiceCommandInterpretations"];
  [coderCopy encodeObject:self->_preITNVoiceCommandInterpretations forKey:@"preITNVoiceCommandInterpretations"];
  [coderCopy encodeBool:self->_needsLeadingSpace forKey:@"needsLeadingSpace"];
}

- (EARSpeechRecognitionResult)initWithResult:(id)result needsLeadingSpace:(BOOL)space
{
  resultCopy = result;
  v35.receiver = self;
  v35.super_class = EARSpeechRecognitionResult;
  v7 = [(EARSpeechRecognitionResult *)&v35 init];
  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    tokens = [resultCopy tokens];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(tokens, "count")}];

    tokens2 = [resultCopy tokens];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke;
    v33[3] = &unk_1E797C100;
    v34 = v10;
    v12 = v10;
    [tokens2 enumerateObjectsUsingBlock:v33];

    v13 = MEMORY[0x1E695DF70];
    preITNTokens = [resultCopy preITNTokens];
    v15 = [v13 arrayWithCapacity:{objc_msgSend(preITNTokens, "count")}];

    preITNTokens2 = [resultCopy preITNTokens];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __63__EARSpeechRecognitionResult_initWithResult_needsLeadingSpace___block_invoke_2;
    v31 = &unk_1E797C100;
    v32 = v15;
    v17 = v15;
    [preITNTokens2 enumerateObjectsUsingBlock:&v28];

    v18 = [v12 copy];
    tokens = v7->_tokens;
    v7->_tokens = v18;

    v20 = [v17 copy];
    preITNTokens = v7->_preITNTokens;
    v7->_preITNTokens = v20;

    [resultCopy confidence];
    v7->_confidence = v22;
    voiceCommandInterpretations = [resultCopy voiceCommandInterpretations];
    voiceCommandInterpretations = v7->_voiceCommandInterpretations;
    v7->_voiceCommandInterpretations = voiceCommandInterpretations;

    preITNVoiceCommandInterpretations = [resultCopy preITNVoiceCommandInterpretations];
    preITNVoiceCommandInterpretations = v7->_preITNVoiceCommandInterpretations;
    v7->_preITNVoiceCommandInterpretations = preITNVoiceCommandInterpretations;

    v7->_needsLeadingSpace = space;
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