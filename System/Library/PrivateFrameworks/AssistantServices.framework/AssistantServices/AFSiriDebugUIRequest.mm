@interface AFSiriDebugUIRequest
- (AFSiriDebugUIRequest)initWithCoder:(id)coder;
- (AFSiriDebugUIRequest)initWithMessage:(id)message makeAppFrontmost:(BOOL)frontmost;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSiriDebugUIRequest

- (AFSiriDebugUIRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AFSiriDebugUIRequest;
  v5 = [(AFSiriRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
    v7 = [v6 copy];
    message = v5->_message;
    v5->_message = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Frontmost"];
    v5->_frontmost = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AFSiriDebugUIRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_message forKey:{@"Message", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_frontmost];
  [coderCopy encodeObject:v5 forKey:@"Frontmost"];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

- (AFSiriDebugUIRequest)initWithMessage:(id)message makeAppFrontmost:(BOOL)frontmost
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = AFSiriDebugUIRequest;
  v7 = [(AFSiriRequest *)&v11 init];
  if (v7)
  {
    v8 = [messageCopy copy];
    message = v7->_message;
    v7->_message = v8;

    v7->_frontmost = frontmost;
  }

  return v7;
}

@end