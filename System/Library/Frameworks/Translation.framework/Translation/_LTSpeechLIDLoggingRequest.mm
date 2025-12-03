@interface _LTSpeechLIDLoggingRequest
- (_LTSpeechLIDLoggingRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSpeechLIDLoggingRequest

- (void)encodeWithCoder:(id)coder
{
  conversationID = self->_conversationID;
  coderCopy = coder;
  [coderCopy encodeObject:conversationID forKey:@"conversationID"];
  [coderCopy encodeObject:self->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeObject:self->_selectedLocale forKey:@"selectedLocale"];
  [coderCopy encodeObject:self->_targetLocale forKey:@"targetLocale"];
  [coderCopy encodeObject:self->_lidResult forKey:@"lidResult"];
}

- (_LTSpeechLIDLoggingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _LTSpeechLIDLoggingRequest;
  v5 = [(_LTSpeechLIDLoggingRequest *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedLocale"];
    selectedLocale = v5->_selectedLocale;
    v5->_selectedLocale = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetLocale"];
    targetLocale = v5->_targetLocale;
    v5->_targetLocale = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lidResult"];
    lidResult = v5->_lidResult;
    v5->_lidResult = v16;

    v18 = v5;
  }

  return v5;
}

@end