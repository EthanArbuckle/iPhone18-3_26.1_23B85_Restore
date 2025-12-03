@interface _LTTranslationSensesLoggingRequest
- (_LTTranslationSensesLoggingRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationSensesLoggingRequest

- (void)encodeWithCoder:(id)coder
{
  conversationID = self->_conversationID;
  coderCopy = coder;
  [coderCopy encodeObject:conversationID forKey:@"conversationID"];
  [coderCopy encodeObject:self->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_senses forKey:@"senses"];
  [coderCopy encodeObject:self->_userInteractedSenses forKey:@"userInteractedSenses"];
}

- (_LTTranslationSensesLoggingRequest)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _LTTranslationSensesLoggingRequest;
  v5 = [(_LTTranslationSensesLoggingRequest *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v8;

    v10 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"senses"];
    senses = v5->_senses;
    v5->_senses = v13;

    v15 = [coderCopy decodeObjectOfClasses:v12 forKey:@"userInteractedSenses"];
    userInteractedSenses = v5->_userInteractedSenses;
    v5->_userInteractedSenses = v15;

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end