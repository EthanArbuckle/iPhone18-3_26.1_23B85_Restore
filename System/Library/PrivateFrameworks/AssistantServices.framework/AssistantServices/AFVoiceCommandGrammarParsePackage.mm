@interface AFVoiceCommandGrammarParsePackage
- (AFVoiceCommandGrammarParsePackage)initWithCoder:(id)coder;
- (AFVoiceCommandGrammarParsePackage)initWithNBestParses:(id)parses preITNNBestParses:(id)bestParses;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFVoiceCommandGrammarParsePackage

- (void)encodeWithCoder:(id)coder
{
  nBestParses = self->_nBestParses;
  coderCopy = coder;
  [coderCopy encodeObject:nBestParses forKey:@"AFVoiceCommandGrammarParsePackage::nBestParses"];
  [coderCopy encodeObject:self->_preITNNBestParses forKey:@"AFVoiceCommandGrammarParsePackage::preITNNBestParses"];
}

- (AFVoiceCommandGrammarParsePackage)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AFVoiceCommandGrammarParsePackage::nBestParses"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"AFVoiceCommandGrammarParsePackage::preITNNBestParses"];

  v13 = [(AFVoiceCommandGrammarParsePackage *)self initWithNBestParses:v8 preITNNBestParses:v12];
  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSArray *)self->_nBestParses count])
  {
    v4 = objc_opt_new();
    nBestParses = self->_nBestParses;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__AFVoiceCommandGrammarParsePackage_dictionaryRepresentation__block_invoke;
    v17[3] = &unk_1E73446A8;
    v18 = v4;
    v6 = v4;
    [(NSArray *)nBestParses enumerateObjectsUsingBlock:v17];
    [v3 setObject:v6 forKey:@"nBestParses"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null forKey:@"nBestParses"];
  }

  if ([(NSArray *)self->_preITNNBestParses count])
  {
    v8 = objc_opt_new();
    preITNNBestParses = self->_preITNNBestParses;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __61__AFVoiceCommandGrammarParsePackage_dictionaryRepresentation__block_invoke_2;
    v15 = &unk_1E73446A8;
    v16 = v8;
    null2 = v8;
    [(NSArray *)preITNNBestParses enumerateObjectsUsingBlock:&v12];
    [v3 setObject:null2 forKey:{@"preITNNBestParses", v12, v13, v14, v15}];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null2 forKey:@"preITNNBestParses"];
  }

  return v3;
}

void __61__AFVoiceCommandGrammarParsePackage_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

void __61__AFVoiceCommandGrammarParsePackage_dictionaryRepresentation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"--nBestParses--"];
  nBestParses = self->_nBestParses;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__AFVoiceCommandGrammarParsePackage_description__block_invoke;
  v13[3] = &unk_1E73446A8;
  v5 = string;
  v14 = v5;
  [(NSArray *)nBestParses enumerateObjectsUsingBlock:v13];
  [v5 appendString:@"\n--preITNNBestParses--"];
  preITNNBestParses = self->_preITNNBestParses;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__AFVoiceCommandGrammarParsePackage_description__block_invoke_2;
  v11[3] = &unk_1E73446A8;
  v7 = v5;
  v12 = v7;
  [(NSArray *)preITNNBestParses enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __48__AFVoiceCommandGrammarParsePackage_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendString:@"\n"];
  [*(a1 + 32) appendFormat:@"parse[%lu]", a3];
  [*(a1 + 32) appendString:@"\n"];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendFormat:@"%@", v8];
}

void __48__AFVoiceCommandGrammarParsePackage_description__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendString:@"\n"];
  [*(a1 + 32) appendFormat:@"parse[%lu]", a3];
  [*(a1 + 32) appendString:@"\n"];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendFormat:@"%@", v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nBestParses = [(AFVoiceCommandGrammarParsePackage *)v5 nBestParses];
      nBestParses = self->_nBestParses;
      if (nBestParses == nBestParses || [(NSArray *)nBestParses isEqual:nBestParses])
      {
        preITNNBestParses = [(AFVoiceCommandGrammarParsePackage *)v5 preITNNBestParses];
        preITNNBestParses = self->_preITNNBestParses;
        v10 = preITNNBestParses == preITNNBestParses || [(NSArray *)preITNNBestParses isEqual:preITNNBestParses];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (AFVoiceCommandGrammarParsePackage)initWithNBestParses:(id)parses preITNNBestParses:(id)bestParses
{
  parsesCopy = parses;
  bestParsesCopy = bestParses;
  v14.receiver = self;
  v14.super_class = AFVoiceCommandGrammarParsePackage;
  v8 = [(AFVoiceCommandGrammarParsePackage *)&v14 init];
  if (v8)
  {
    v9 = [parsesCopy copy];
    nBestParses = v8->_nBestParses;
    v8->_nBestParses = v9;

    v11 = [bestParsesCopy copy];
    preITNNBestParses = v8->_preITNNBestParses;
    v8->_preITNNBestParses = v11;
  }

  return v8;
}

@end