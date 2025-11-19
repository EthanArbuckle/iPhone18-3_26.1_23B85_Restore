@interface _LTTextInput
- (_LTTextInput)initWithSourceText:(id)a3 clientIdentifier:(id)a4;
@end

@implementation _LTTextInput

- (_LTTextInput)initWithSourceText:(id)a3 clientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _LTTextInput;
  v8 = [(_LTTextInput *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    sourceText = v8->_sourceText;
    v8->_sourceText = v9;

    v11 = [v7 copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

@end