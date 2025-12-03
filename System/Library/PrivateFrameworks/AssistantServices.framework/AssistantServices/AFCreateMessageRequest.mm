@interface AFCreateMessageRequest
- (AFCreateMessageRequest)initWithCoder:(id)coder;
- (id)_initWithMessage:(id)message;
- (id)createResponseWithMessageIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCreateMessageRequest

- (AFCreateMessageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFCreateMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreateMessageRequestMessage"];
    message = v5->_message;
    v5->_message = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFCreateMessageRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_message forKey:{@"CreateMessageRequestMessage", v5.receiver, v5.super_class}];
}

- (id)createResponseWithMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[AFObjectCreatedSiriResponse alloc] _initWithRequest:self objectIdentifier:identifierCopy];

  return v5;
}

- (id)_initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = AFCreateMessageRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end