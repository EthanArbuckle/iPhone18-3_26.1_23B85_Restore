@interface _LTTranslationRange
- (_LTTranslationRange)initWithIdentifier:(id)a3 text:(id)a4 shouldTranslate:(BOOL)a5;
@end

@implementation _LTTranslationRange

- (_LTTranslationRange)initWithIdentifier:(id)a3 text:(id)a4 shouldTranslate:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = _LTTranslationRange;
  v11 = [(_LTTranslationRange *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_text, a4);
    v12->_shouldTranslate = a5;
    v13 = v12;
  }

  return v12;
}

@end