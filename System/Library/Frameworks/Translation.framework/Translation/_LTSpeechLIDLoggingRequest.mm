@interface _LTSpeechLIDLoggingRequest
- (_LTSpeechLIDLoggingRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSpeechLIDLoggingRequest

- (void)encodeWithCoder:(id)a3
{
  conversationID = self->_conversationID;
  v5 = a3;
  [v5 encodeObject:conversationID forKey:@"conversationID"];
  [v5 encodeObject:self->_requestID forKey:@"requestID"];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
  [v5 encodeObject:self->_selectedLocale forKey:@"selectedLocale"];
  [v5 encodeObject:self->_targetLocale forKey:@"targetLocale"];
  [v5 encodeObject:self->_lidResult forKey:@"lidResult"];
}

- (_LTSpeechLIDLoggingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _LTSpeechLIDLoggingRequest;
  v5 = [(_LTSpeechLIDLoggingRequest *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedLocale"];
    selectedLocale = v5->_selectedLocale;
    v5->_selectedLocale = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetLocale"];
    targetLocale = v5->_targetLocale;
    v5->_targetLocale = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lidResult"];
    lidResult = v5->_lidResult;
    v5->_lidResult = v16;

    v18 = v5;
  }

  return v5;
}

@end