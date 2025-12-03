@interface AFSpeechInfoPackage
- (AFSpeechInfoPackage)initWithCoder:(id)coder;
- (AFSpeechInfoPackage)initWithCommandGrammarParsePackage:(id)package debugInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechInfoPackage

- (void)encodeWithCoder:(id)coder
{
  commandGrammarParsePackage = self->_commandGrammarParsePackage;
  coderCopy = coder;
  [coderCopy encodeObject:commandGrammarParsePackage forKey:@"AFSpeechInfoPackage::CommandGrammarParsePackage"];
  [coderCopy encodeObject:self->_debugInfo forKey:@"AFSpeechInfoPackage::DebugInfo"];
}

- (AFSpeechInfoPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfoPackage::CommandGrammarParsePackage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfoPackage::DebugInfo"];

  v7 = [(AFSpeechInfoPackage *)self initWithCommandGrammarParsePackage:v5 debugInfo:v6];
  return v7;
}

- (id)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"commandGrammarParsePackage";
  dictionaryRepresentation = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage dictionaryRepresentation];
  v8[1] = @"debugInfo";
  v9[0] = dictionaryRepresentation;
  dictionaryRepresentation2 = [(AFVoiceCommandDebugInfo *)self->_debugInfo dictionaryRepresentation];
  v9[1] = dictionaryRepresentation2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage description];
  [string appendFormat:@"[CommandGrammarParsePackage = %@]", v4];

  v5 = [(AFVoiceCommandDebugInfo *)self->_debugInfo description];
  [string appendFormat:@"[DebugInfo = %@]", v5];

  return string;
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
      commandGrammarParsePackage = [(AFSpeechInfoPackage *)v5 commandGrammarParsePackage];
      commandGrammarParsePackage = self->_commandGrammarParsePackage;
      if (commandGrammarParsePackage == commandGrammarParsePackage || [(AFVoiceCommandGrammarParsePackage *)commandGrammarParsePackage isEqual:commandGrammarParsePackage])
      {
        debugInfo = [(AFSpeechInfoPackage *)v5 debugInfo];
        debugInfo = self->_debugInfo;
        v10 = debugInfo == debugInfo || [(AFVoiceCommandDebugInfo *)debugInfo isEqual:debugInfo];
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

- (AFSpeechInfoPackage)initWithCommandGrammarParsePackage:(id)package debugInfo:(id)info
{
  packageCopy = package;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = AFSpeechInfoPackage;
  v8 = [(AFSpeechInfoPackage *)&v14 init];
  if (v8)
  {
    v9 = [packageCopy copy];
    commandGrammarParsePackage = v8->_commandGrammarParsePackage;
    v8->_commandGrammarParsePackage = v9;

    v11 = [infoCopy copy];
    debugInfo = v8->_debugInfo;
    v8->_debugInfo = v11;
  }

  return v8;
}

@end