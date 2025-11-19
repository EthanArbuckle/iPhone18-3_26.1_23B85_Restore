@interface AFVoiceCommandGrammarParamMatch
- (AFVoiceCommandGrammarParamMatch)initWithCoder:(id)a3;
- (AFVoiceCommandGrammarParamMatch)initWithText:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation AFVoiceCommandGrammarParamMatch

- (AFVoiceCommandGrammarParamMatch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParamMatch::text"];

  v6 = [(AFVoiceCommandGrammarParamMatch *)self initWithText:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFVoiceCommandGrammarParamMatch *)v4 text];
      text = self->_text;
      v7 = text == v5 || [(NSString *)text isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (AFVoiceCommandGrammarParamMatch)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFVoiceCommandGrammarParamMatch;
  v5 = [(AFVoiceCommandGrammarParamMatch *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

@end