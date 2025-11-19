@interface _LTSpeechTranscription
- (_LTSpeechTranscription)initWithCoder:(id)a3;
- (_LTSpeechTranscription)initWithFormattedString:(id)a3 locale:(id)a4 confidence:(double)a5 minConfidence:(double)a6 maxConfidence:(double)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSpeechTranscription

- (_LTSpeechTranscription)initWithFormattedString:(id)a3 locale:(id)a4 confidence:(double)a5 minConfidence:(double)a6 maxConfidence:(double)a7
{
  v13 = a3;
  v14 = a4;
  v19.receiver = self;
  v19.super_class = _LTSpeechTranscription;
  v15 = [(_LTSpeechTranscription *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_locale, a4);
    objc_storeStrong(&v16->_formattedString, a3);
    v16->_maxConfidence = a7;
    v16->_confidence = a5;
    v16->_minConfidence = a6;
    v16->_lowConfidence = 0;
    v17 = v16;
  }

  return v16;
}

- (_LTSpeechTranscription)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _LTSpeechTranscription;
  v5 = [(_LTSpeechTranscription *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedFormattedString"];
    sanitizedFormattedString = v5->_sanitizedFormattedString;
    v5->_sanitizedFormattedString = v10;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v12;
    [v4 decodeDoubleForKey:@"minConfidence"];
    v5->_minConfidence = v13;
    [v4 decodeDoubleForKey:@"maxConfidence"];
    v5->_maxConfidence = v14;
    v5->_lowConfidence = [v4 decodeBoolForKey:@"lowConfidence"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"locale"];
  [v5 encodeObject:self->_formattedString forKey:@"formattedString"];
  [v5 encodeObject:self->_sanitizedFormattedString forKey:@"sanitizedFormattedString"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  [v5 encodeDouble:@"minConfidence" forKey:self->_minConfidence];
  [v5 encodeDouble:@"maxConfidence" forKey:self->_maxConfidence];
  [v5 encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
}

@end