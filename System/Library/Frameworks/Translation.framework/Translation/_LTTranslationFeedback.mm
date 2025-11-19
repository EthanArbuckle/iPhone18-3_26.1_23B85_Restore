@interface _LTTranslationFeedback
- (_LTTranslationFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationFeedback

- (void)encodeWithCoder:(id)a3
{
  sourceContentAsJSON = self->_sourceContentAsJSON;
  v5 = a3;
  [v5 encodeObject:sourceContentAsJSON forKey:@"sourceContentAsJSON"];
  [v5 encodeObject:self->_targetContentAsJSON forKey:@"targetContentAsJSON"];
  [v5 encodeObject:self->_errorsAsJSON forKey:@"errorsAsJSON"];
  [v5 encodeObject:self->_safariVersion forKey:@"safariVersion"];
  [v5 encodeObject:self->_webpageURL forKey:@"webpageURL"];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
  [v5 encodeObject:self->_sessionID forKey:@"sessionID"];
  [v5 encodeInteger:self->_category forKey:@"category"];
}

- (_LTTranslationFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _LTTranslationFeedback;
  v5 = [(_LTTranslationFeedback *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceContentAsJSON"];
    sourceContentAsJSON = v5->_sourceContentAsJSON;
    v5->_sourceContentAsJSON = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentAsJSON"];
    targetContentAsJSON = v5->_targetContentAsJSON;
    v5->_targetContentAsJSON = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorsAsJSON"];
    errorsAsJSON = v5->_errorsAsJSON;
    v5->_errorsAsJSON = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"safariVersion"];
    safariVersion = v5->_safariVersion;
    v5->_safariVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
    webpageURL = v5->_webpageURL;
    v5->_webpageURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v18;

    v5->_category = [v4 decodeIntegerForKey:@"category"];
    v20 = v5;
  }

  return v5;
}

@end