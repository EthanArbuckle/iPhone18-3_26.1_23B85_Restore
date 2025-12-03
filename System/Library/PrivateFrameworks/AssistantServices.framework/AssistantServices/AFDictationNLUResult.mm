@interface AFDictationNLUResult
- (AFDictationNLUResult)init;
- (AFDictationNLUResult)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDictationNLUResult

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[NluResponse = %@]", self->_nluResponse];
  [string appendString:@"\n<CommandGrammarParsePackage>\n"];
  v4 = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage description];
  [string appendFormat:@"%@", v4];

  [string appendString:@"\n</CommandGrammarParsePackage>\n"];

  return string;
}

- (AFDictationNLUResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AFDictationNLUResult;
  v5 = [(AFDictationNLUResult *)&v12 init];
  if (v5)
  {
    SIRINLUEXTERNALCDMNluResponseClass = getSIRINLUEXTERNALCDMNluResponseClass();
    if (SIRINLUEXTERNALCDMNluResponseClass)
    {
      v7 = [coderCopy decodeObjectOfClass:SIRINLUEXTERNALCDMNluResponseClass forKey:@"_nluResponse"];
      nluResponse = v5->_nluResponse;
      v5->_nluResponse = v7;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_commandGrammarParsePackage"];
    commandGrammarParsePackage = v5->_commandGrammarParsePackage;
    v5->_commandGrammarParsePackage = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  nluResponse = self->_nluResponse;
  coderCopy = coder;
  [coderCopy encodeObject:nluResponse forKey:@"_nluResponse"];
  [coderCopy encodeObject:self->_commandGrammarParsePackage forKey:@"_commandGrammarParsePackage"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      commandGrammarParsePackage = [(AFDictationNLUResult *)equalCopy commandGrammarParsePackage];
      commandGrammarParsePackage = self->_commandGrammarParsePackage;
      v6 = commandGrammarParsePackage == commandGrammarParsePackage || [(AFVoiceCommandGrammarParsePackage *)commandGrammarParsePackage isEqual:commandGrammarParsePackage];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  nluResponse = [(AFDictationNLUResult *)self nluResponse];
  v6 = [nluResponse copy];
  [v4 setNluResponse:v6];

  commandGrammarParsePackage = [(AFDictationNLUResult *)self commandGrammarParsePackage];
  v8 = [commandGrammarParsePackage copy];
  [v4 setCommandGrammarParsePackage:v8];

  return v4;
}

- (AFDictationNLUResult)init
{
  v3.receiver = self;
  v3.super_class = AFDictationNLUResult;
  return [(AFDictationNLUResult *)&v3 init];
}

@end