@interface EARSpeechRecognition
- (EARSpeechRecognition)initWithCoder:(id)coder;
- (EARSpeechRecognition)initWithRecognition:(id)recognition;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARSpeechRecognition

- (EARSpeechRecognition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = EARSpeechRecognition;
  v5 = [(EARSpeechRecognition *)&v26 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tokenSausage"];
    tokenSausage = v5->_tokenSausage;
    v5->_tokenSausage = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"interpretationIndices"];
    interpretationIndices = v5->_interpretationIndices;
    v5->_interpretationIndices = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"nBest"];
    nBest = v5->_nBest;
    v5->_nBest = v19;

    firstObject = [(NSArray *)v5->_nBest firstObject];
    v22 = [firstObject copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_oneBest, v24);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tokenSausage = self->_tokenSausage;
  coderCopy = coder;
  [coderCopy encodeObject:tokenSausage forKey:@"tokenSausage"];
  [coderCopy encodeObject:self->_interpretationIndices forKey:@"interpretationIndices"];
  [coderCopy encodeObject:self->_nBest forKey:@"nBest"];
}

- (EARSpeechRecognition)initWithRecognition:(id)recognition
{
  recognitionCopy = recognition;
  v31.receiver = self;
  v31.super_class = EARSpeechRecognition;
  v5 = [(EARSpeechRecognition *)&v31 init];
  if (v5)
  {
    tokenSausage = [recognitionCopy tokenSausage];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tokenSausage, "count")}];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __44__EARSpeechRecognition_initWithRecognition___block_invoke;
    v29[3] = &unk_1E797C128;
    v30 = v7;
    v8 = v7;
    [tokenSausage enumerateObjectsUsingBlock:v29];
    nBest = [recognitionCopy nBest];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(nBest, "count")}];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __44__EARSpeechRecognition_initWithRecognition___block_invoke_4;
    v27 = &unk_1E797C128;
    v28 = v10;
    v11 = v10;
    [nBest enumerateObjectsUsingBlock:&v24];
    v12 = [v8 copy];
    tokenSausage = v5->_tokenSausage;
    v5->_tokenSausage = v12;

    interpretationIndices = [recognitionCopy interpretationIndices];
    v15 = [interpretationIndices copy];
    interpretationIndices = v5->_interpretationIndices;
    v5->_interpretationIndices = v15;

    v17 = [v11 copy];
    nBest = v5->_nBest;
    v5->_nBest = v17;

    firstObject = [v11 firstObject];
    v20 = [firstObject copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_oneBest, v22);
  }

  return v5;
}

void __44__EARSpeechRecognition_initWithRecognition___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EARSpeechRecognition_initWithRecognition___block_invoke_2;
  v9[3] = &unk_1E797C128;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = *(a1 + 32);
  v8 = [v6 copy];
  [v7 addObject:v8];
}

void __44__EARSpeechRecognition_initWithRecognition___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EARSpeechRecognition_initWithRecognition___block_invoke_5;
  v9[3] = &unk_1E797C100;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = *(a1 + 32);
  v8 = [v6 copy];
  [v7 addObject:v8];
}

void __44__EARSpeechRecognition_initWithRecognition___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[EARSpeechRecognitionToken alloc] initWithToken:v3];

  [v2 addObject:v4];
}

void __44__EARSpeechRecognition_initWithRecognition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EARSpeechRecognition_initWithRecognition___block_invoke_3;
  v9[3] = &unk_1E797C100;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = *(a1 + 32);
  v8 = [v6 copy];
  [v7 addObject:v8];
}

void __44__EARSpeechRecognition_initWithRecognition___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[EARSpeechRecognitionToken alloc] initWithToken:v3];

  [*(a1 + 32) addObject:v4];
}

@end