@interface _LTStreamingSpeakableOutput
- (_LTStreamingSpeakableOutput)initWithText:(id)text locale:(id)locale;
@end

@implementation _LTStreamingSpeakableOutput

- (_LTStreamingSpeakableOutput)initWithText:(id)text locale:(id)locale
{
  textCopy = text;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = _LTStreamingSpeakableOutput;
  v8 = [(_LTStreamingSpeakableOutput *)&v15 init];
  if (v8)
  {
    v9 = [textCopy copy];
    translatedText = v8->_translatedText;
    v8->_translatedText = v9;

    v11 = [localeCopy copy];
    locale = v8->_locale;
    v8->_locale = v11;

    v13 = v8;
  }

  return v8;
}

@end