@interface _LTTranslationRange
- (_LTTranslationRange)initWithIdentifier:(id)identifier text:(id)text shouldTranslate:(BOOL)translate;
@end

@implementation _LTTranslationRange

- (_LTTranslationRange)initWithIdentifier:(id)identifier text:(id)text shouldTranslate:(BOOL)translate
{
  identifierCopy = identifier;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = _LTTranslationRange;
  v11 = [(_LTTranslationRange *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_text, text);
    v12->_shouldTranslate = translate;
    v13 = v12;
  }

  return v12;
}

@end