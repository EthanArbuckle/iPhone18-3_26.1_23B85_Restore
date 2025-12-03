@interface _LTTranslationFeedback
- (_LTTranslationFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationFeedback

- (void)encodeWithCoder:(id)coder
{
  sourceContentAsJSON = self->_sourceContentAsJSON;
  coderCopy = coder;
  [coderCopy encodeObject:sourceContentAsJSON forKey:@"sourceContentAsJSON"];
  [coderCopy encodeObject:self->_targetContentAsJSON forKey:@"targetContentAsJSON"];
  [coderCopy encodeObject:self->_errorsAsJSON forKey:@"errorsAsJSON"];
  [coderCopy encodeObject:self->_safariVersion forKey:@"safariVersion"];
  [coderCopy encodeObject:self->_webpageURL forKey:@"webpageURL"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sessionID"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
}

- (_LTTranslationFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _LTTranslationFeedback;
  v5 = [(_LTTranslationFeedback *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceContentAsJSON"];
    sourceContentAsJSON = v5->_sourceContentAsJSON;
    v5->_sourceContentAsJSON = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentAsJSON"];
    targetContentAsJSON = v5->_targetContentAsJSON;
    v5->_targetContentAsJSON = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorsAsJSON"];
    errorsAsJSON = v5->_errorsAsJSON;
    v5->_errorsAsJSON = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"safariVersion"];
    safariVersion = v5->_safariVersion;
    v5->_safariVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
    webpageURL = v5->_webpageURL;
    v5->_webpageURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v18;

    v5->_category = [coderCopy decodeIntegerForKey:@"category"];
    v20 = v5;
  }

  return v5;
}

@end