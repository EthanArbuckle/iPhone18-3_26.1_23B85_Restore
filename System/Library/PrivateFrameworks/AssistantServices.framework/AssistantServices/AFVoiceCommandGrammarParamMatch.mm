@interface AFVoiceCommandGrammarParamMatch
- (AFVoiceCommandGrammarParamMatch)initWithCoder:(id)coder;
- (AFVoiceCommandGrammarParamMatch)initWithText:(id)text;
- (BOOL)isEqual:(id)equal;
@end

@implementation AFVoiceCommandGrammarParamMatch

- (AFVoiceCommandGrammarParamMatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceCommandGrammarParamMatch::text"];

  v6 = [(AFVoiceCommandGrammarParamMatch *)self initWithText:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [(AFVoiceCommandGrammarParamMatch *)equalCopy text];
      text = self->_text;
      v7 = text == text || [(NSString *)text isEqual:text];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (AFVoiceCommandGrammarParamMatch)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = AFVoiceCommandGrammarParamMatch;
  v5 = [(AFVoiceCommandGrammarParamMatch *)&v9 init];
  if (v5)
  {
    v6 = [textCopy copy];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

@end