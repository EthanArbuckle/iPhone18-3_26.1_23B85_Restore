@interface AFInitiateCallRequest
- (AFInitiateCallRequest)initWithCoder:(id)coder;
- (id)_initWithCall:(id)call;
- (id)createResponse;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFInitiateCallRequest

- (AFInitiateCallRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFInitiateCallRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Call"];
    call = v5->_call;
    v5->_call = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFInitiateCallRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_call forKey:{@"Call", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

- (id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  call = self->_call;
  v8 = @"call";
  v9[0] = call;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [(AFSiriRequest *)self _descriptionWithProperties:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_initWithCall:(id)call
{
  callCopy = call;
  v9.receiver = self;
  v9.super_class = AFInitiateCallRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_call, call);
  }

  return v7;
}

@end