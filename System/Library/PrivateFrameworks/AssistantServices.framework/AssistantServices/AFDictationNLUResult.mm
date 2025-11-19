@interface AFDictationNLUResult
- (AFDictationNLUResult)init;
- (AFDictationNLUResult)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDictationNLUResult

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"[NluResponse = %@]", self->_nluResponse];
  [v3 appendString:@"\n<CommandGrammarParsePackage>\n"];
  v4 = [(AFVoiceCommandGrammarParsePackage *)self->_commandGrammarParsePackage description];
  [v3 appendFormat:@"%@", v4];

  [v3 appendString:@"\n</CommandGrammarParsePackage>\n"];

  return v3;
}

- (AFDictationNLUResult)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFDictationNLUResult;
  v5 = [(AFDictationNLUResult *)&v12 init];
  if (v5)
  {
    SIRINLUEXTERNALCDMNluResponseClass = getSIRINLUEXTERNALCDMNluResponseClass();
    if (SIRINLUEXTERNALCDMNluResponseClass)
    {
      v7 = [v4 decodeObjectOfClass:SIRINLUEXTERNALCDMNluResponseClass forKey:@"_nluResponse"];
      nluResponse = v5->_nluResponse;
      v5->_nluResponse = v7;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_commandGrammarParsePackage"];
    commandGrammarParsePackage = v5->_commandGrammarParsePackage;
    v5->_commandGrammarParsePackage = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  nluResponse = self->_nluResponse;
  v5 = a3;
  [v5 encodeObject:nluResponse forKey:@"_nluResponse"];
  [v5 encodeObject:self->_commandGrammarParsePackage forKey:@"_commandGrammarParsePackage"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(AFDictationNLUResult *)v4 commandGrammarParsePackage];
      commandGrammarParsePackage = self->_commandGrammarParsePackage;
      v6 = commandGrammarParsePackage == v7 || [(AFVoiceCommandGrammarParsePackage *)commandGrammarParsePackage isEqual:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AFDictationNLUResult *)self nluResponse];
  v6 = [v5 copy];
  [v4 setNluResponse:v6];

  v7 = [(AFDictationNLUResult *)self commandGrammarParsePackage];
  v8 = [v7 copy];
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