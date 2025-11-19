@interface _LTStreamingSpeakableOutput
- (_LTStreamingSpeakableOutput)initWithText:(id)a3 locale:(id)a4;
@end

@implementation _LTStreamingSpeakableOutput

- (_LTStreamingSpeakableOutput)initWithText:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _LTStreamingSpeakableOutput;
  v8 = [(_LTStreamingSpeakableOutput *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    translatedText = v8->_translatedText;
    v8->_translatedText = v9;

    v11 = [v7 copy];
    locale = v8->_locale;
    v8->_locale = v11;

    v13 = v8;
  }

  return v8;
}

@end