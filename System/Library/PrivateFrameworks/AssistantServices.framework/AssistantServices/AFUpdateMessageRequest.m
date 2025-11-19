@interface AFUpdateMessageRequest
- (AFUpdateMessageRequest)initWithCoder:(id)a3;
- (id)_initWithMessage:(id)a3;
- (id)createResponseWithMessageIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFUpdateMessageRequest

- (AFUpdateMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFUpdateMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateMessageRequestMessage"];
    message = v5->_message;
    v5->_message = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFUpdateMessageRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_message forKey:{@"UpdateMessageRequestMessage", v5.receiver, v5.super_class}];
}

- (id)createResponseWithMessageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[AFObjectUpdatedSiriResponse alloc] _initWithRequest:self objectIdentifier:v4];

  return v5;
}

- (id)_initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFUpdateMessageRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

@end