@interface _LTTextInput
- (_LTTextInput)initWithSourceText:(id)text clientIdentifier:(id)identifier;
@end

@implementation _LTTextInput

- (_LTTextInput)initWithSourceText:(id)text clientIdentifier:(id)identifier
{
  textCopy = text;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _LTTextInput;
  v8 = [(_LTTextInput *)&v15 init];
  if (v8)
  {
    v9 = [textCopy copy];
    sourceText = v8->_sourceText;
    v8->_sourceText = v9;

    v11 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

@end