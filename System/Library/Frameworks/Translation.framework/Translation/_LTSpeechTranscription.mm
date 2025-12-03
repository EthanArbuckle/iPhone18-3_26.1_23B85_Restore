@interface _LTSpeechTranscription
- (_LTSpeechTranscription)initWithCoder:(id)coder;
- (_LTSpeechTranscription)initWithFormattedString:(id)string locale:(id)locale confidence:(double)confidence minConfidence:(double)minConfidence maxConfidence:(double)maxConfidence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSpeechTranscription

- (_LTSpeechTranscription)initWithFormattedString:(id)string locale:(id)locale confidence:(double)confidence minConfidence:(double)minConfidence maxConfidence:(double)maxConfidence
{
  stringCopy = string;
  localeCopy = locale;
  v19.receiver = self;
  v19.super_class = _LTSpeechTranscription;
  v15 = [(_LTSpeechTranscription *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_locale, locale);
    objc_storeStrong(&v16->_formattedString, string);
    v16->_maxConfidence = maxConfidence;
    v16->_confidence = confidence;
    v16->_minConfidence = minConfidence;
    v16->_lowConfidence = 0;
    v17 = v16;
  }

  return v16;
}

- (_LTSpeechTranscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _LTSpeechTranscription;
  v5 = [(_LTSpeechTranscription *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedString"];
    formattedString = v5->_formattedString;
    v5->_formattedString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedFormattedString"];
    sanitizedFormattedString = v5->_sanitizedFormattedString;
    v5->_sanitizedFormattedString = v10;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v12;
    [coderCopy decodeDoubleForKey:@"minConfidence"];
    v5->_minConfidence = v13;
    [coderCopy decodeDoubleForKey:@"maxConfidence"];
    v5->_maxConfidence = v14;
    v5->_lowConfidence = [coderCopy decodeBoolForKey:@"lowConfidence"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"locale"];
  [coderCopy encodeObject:self->_formattedString forKey:@"formattedString"];
  [coderCopy encodeObject:self->_sanitizedFormattedString forKey:@"sanitizedFormattedString"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeDouble:@"minConfidence" forKey:self->_minConfidence];
  [coderCopy encodeDouble:@"maxConfidence" forKey:self->_maxConfidence];
  [coderCopy encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
}

@end