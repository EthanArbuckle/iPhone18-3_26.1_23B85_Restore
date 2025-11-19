@interface AFSpeechInfoPackage
- (AFSpeechInfoPackage)initWithCoder:(id)a3;
- (AFSpeechInfoPackage)initWithCommandGrammarParsePackage:(id)a3 debugInfo:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechInfoPackage

- (void)encodeWithCoder:(id)a3
{
  commandGrammarParsePackage = self->_commandGrammarParsePackage;
  v5 = a3;
  [v5 encodeObject:commandGrammarParsePackage forKey:@"AFSpeechInfoPackage::CommandGrammarParsePackage"];
  [v5 encodeObject:self->_debugInfo forKey:@"AFSpeechInfoPackage::DebugInfo"];
}

- (AFSpeechInfoPackage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfoPackage::CommandGrammarParsePackage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfoPackage::DebugInfo"];

  v7 = [(AFSpeechInfoPackage *)self initWithCommandGrammarParsePackage:v5 debugInfo:v6];
  return v7;
}

- (id)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"commandGrammarParsePackage";
  v3 = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage dictionaryRepresentation];
  v8[1] = @"debugInfo";
  v9[0] = v3;
  v4 = [(AFVoiceCommandDebugInfo *)self->_debugInfo dictionaryRepresentation];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage description];
  [v3 appendFormat:@"[CommandGrammarParsePackage = %@]", v4];

  v5 = [(AFVoiceCommandDebugInfo *)self->_debugInfo description];
  [v3 appendFormat:@"[DebugInfo = %@]", v5];

  return v3;
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
      v6 = [(AFSpeechInfoPackage *)v5 commandGrammarParsePackage];
      commandGrammarParsePackage = self->_commandGrammarParsePackage;
      if (commandGrammarParsePackage == v6 || [(AFVoiceCommandGrammarParsePackage *)commandGrammarParsePackage isEqual:v6])
      {
        v8 = [(AFSpeechInfoPackage *)v5 debugInfo];
        debugInfo = self->_debugInfo;
        v10 = debugInfo == v8 || [(AFVoiceCommandDebugInfo *)debugInfo isEqual:v8];
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

- (AFSpeechInfoPackage)initWithCommandGrammarParsePackage:(id)a3 debugInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AFSpeechInfoPackage;
  v8 = [(AFSpeechInfoPackage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    commandGrammarParsePackage = v8->_commandGrammarParsePackage;
    v8->_commandGrammarParsePackage = v9;

    v11 = [v7 copy];
    debugInfo = v8->_debugInfo;
    v8->_debugInfo = v11;
  }

  return v8;
}

@end