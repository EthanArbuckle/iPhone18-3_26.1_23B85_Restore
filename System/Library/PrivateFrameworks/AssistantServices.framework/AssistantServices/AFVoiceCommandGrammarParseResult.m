@interface AFVoiceCommandGrammarParseResult
- (AFVoiceCommandGrammarParseResult)initWithCoder:(id)a3;
- (AFVoiceCommandGrammarParseResult)initWithUtterance:(id)a3 parseCandidates:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFVoiceCommandGrammarParseResult

- (void)encodeWithCoder:(id)a3
{
  utterance = self->_utterance;
  v5 = a3;
  [v5 encodeObject:utterance forKey:@"AFVoiceCommandGrammarParseResult::utterance"];
  [v5 encodeObject:self->_parseCandidates forKey:@"AFVoiceCommandGrammarParseResult::parseCandidates"];
}

- (AFVoiceCommandGrammarParseResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParseResult::utterance"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"AFVoiceCommandGrammarParseResult::parseCandidates"];

  v10 = [(AFVoiceCommandGrammarParseResult *)self initWithUtterance:v5 parseCandidates:v9];
  return v10;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_utterance forKey:@"utterance"];
  if ([(NSArray *)self->_parseCandidates count])
  {
    v4 = objc_opt_new();
    parseCandidates = self->_parseCandidates;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AFVoiceCommandGrammarParseResult_dictionaryRepresentation__block_invoke;
    v9[3] = &unk_1E7347F48;
    v10 = v4;
    v6 = v4;
    [(NSArray *)parseCandidates enumerateObjectsUsingBlock:v9];
    [v3 setObject:v6 forKey:@"parseCandidates"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v7 forKey:@"parseCandidates"];
  }

  return v3;
}

void __60__AFVoiceCommandGrammarParseResult_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"utterance = %@", self->_utterance];
  parseCandidates = self->_parseCandidates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFVoiceCommandGrammarParseResult_description__block_invoke;
  v7[3] = &unk_1E7347F48;
  v5 = v3;
  v8 = v5;
  [(NSArray *)parseCandidates enumerateObjectsUsingBlock:v7];

  return v5;
}

void __47__AFVoiceCommandGrammarParseResult_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendString:@"\n"];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendFormat:@"parseCandidate[%lu] --> %@", a3, v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFVoiceCommandGrammarParseResult *)v5 utterance];
      utterance = self->_utterance;
      if (utterance == v6 || [(NSString *)utterance isEqual:v6])
      {
        v8 = [(AFVoiceCommandGrammarParseResult *)v5 parseCandidates];
        parseCandidates = self->_parseCandidates;
        v10 = parseCandidates == v8 || [(NSArray *)parseCandidates isEqual:v8];
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

- (AFVoiceCommandGrammarParseResult)initWithUtterance:(id)a3 parseCandidates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AFVoiceCommandGrammarParseResult;
  v8 = [(AFVoiceCommandGrammarParseResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    utterance = v8->_utterance;
    v8->_utterance = v9;

    v11 = [v7 copy];
    parseCandidates = v8->_parseCandidates;
    v8->_parseCandidates = v11;
  }

  return v8;
}

@end