@interface AFVoiceCommandGrammarParseCandidate
- (AFVoiceCommandGrammarParseCandidate)initWithCoder:(id)coder;
- (AFVoiceCommandGrammarParseCandidate)initWithVoiceCommandUUID:(id)d commandId:(id)id isComplete:(BOOL)complete paramMatches:(id)matches;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFVoiceCommandGrammarParseCandidate

- (void)encodeWithCoder:(id)coder
{
  voiceCommandUUID = self->_voiceCommandUUID;
  coderCopy = coder;
  [coderCopy encodeObject:voiceCommandUUID forKey:@"AFVoiceCommandGrammarParseCandidate::voiceCommandUUID"];
  [coderCopy encodeObject:self->_commandId forKey:@"AFVoiceCommandGrammarParseCandidate::commandId"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isComplete];
  [coderCopy encodeObject:v5 forKey:@"AFVoiceCommandGrammarParseCandidate::isComplete"];

  [coderCopy encodeObject:self->_paramMatches forKey:@"AFVoiceCommandGrammarParseCandidate::paramMatches"];
}

- (AFVoiceCommandGrammarParseCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParseCandidate::voiceCommandUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParseCandidate::commandId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParseCandidate::isComplete"];
  bOOLValue = [v7 BOOLValue];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"AFVoiceCommandGrammarParseCandidate::paramMatches"];

  v14 = [(AFVoiceCommandGrammarParseCandidate *)self initWithVoiceCommandUUID:v5 commandId:v6 isComplete:bOOLValue paramMatches:v13];
  return v14;
}

- (id)dictionaryRepresentation
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__21409;
  v13 = __Block_byref_object_dispose__21410;
  v14 = objc_opt_new();
  [v10[5] setObject:self->_commandId forKey:@"commandId"];
  v3 = v10[5];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isComplete];
  [v3 setObject:v4 forKey:@"isComplete"];

  paramMatches = self->_paramMatches;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__AFVoiceCommandGrammarParseCandidate_dictionaryRepresentation__block_invoke;
  v8[3] = &unk_1E73452F8;
  v8[4] = &v9;
  [(NSDictionary *)paramMatches enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __63__AFVoiceCommandGrammarParseCandidate_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a2;
  v7 = [v9 text];
  if (v7)
  {
    [v9 text];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v8 = ;
  [v5 setObject:v8 forKey:v6];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"["];
  [string appendFormat:@"voiceCommandUUID = %@", self->_voiceCommandUUID];
  [string appendFormat:@"commandId = %@", self->_commandId];
  if (self->_isComplete)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [string appendFormat:@", isComplete = %@", v4];
  paramMatches = self->_paramMatches;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AFVoiceCommandGrammarParseCandidate_description__block_invoke;
  v8[3] = &unk_1E73452D0;
  v6 = string;
  v9 = v6;
  [(NSDictionary *)paramMatches enumerateKeysAndObjectsUsingBlock:v8];
  [v6 appendFormat:@"]"];

  return v6;
}

void __50__AFVoiceCommandGrammarParseCandidate_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 appendFormat:@", %@ : %@", v5, v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isComplete = self->_isComplete;
      if (isComplete == [(AFVoiceCommandGrammarParseCandidate *)v5 isComplete])
      {
        voiceCommandUUID = [(AFVoiceCommandGrammarParseCandidate *)v5 voiceCommandUUID];
        voiceCommandUUID = self->_voiceCommandUUID;
        if (voiceCommandUUID == voiceCommandUUID || [(NSUUID *)voiceCommandUUID isEqual:voiceCommandUUID])
        {
          commandId = [(AFVoiceCommandGrammarParseCandidate *)v5 commandId];
          commandId = self->_commandId;
          if (commandId == commandId || [(NSString *)commandId isEqual:commandId])
          {
            paramMatches = [(AFVoiceCommandGrammarParseCandidate *)v5 paramMatches];
            paramMatches = self->_paramMatches;
            v13 = paramMatches == paramMatches || [(NSDictionary *)paramMatches isEqual:paramMatches];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (AFVoiceCommandGrammarParseCandidate)initWithVoiceCommandUUID:(id)d commandId:(id)id isComplete:(BOOL)complete paramMatches:(id)matches
{
  dCopy = d;
  idCopy = id;
  matchesCopy = matches;
  v21.receiver = self;
  v21.super_class = AFVoiceCommandGrammarParseCandidate;
  v13 = [(AFVoiceCommandGrammarParseCandidate *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    voiceCommandUUID = v13->_voiceCommandUUID;
    v13->_voiceCommandUUID = v14;

    v16 = [idCopy copy];
    commandId = v13->_commandId;
    v13->_commandId = v16;

    v13->_isComplete = complete;
    v18 = [matchesCopy copy];
    paramMatches = v13->_paramMatches;
    v13->_paramMatches = v18;
  }

  return v13;
}

@end