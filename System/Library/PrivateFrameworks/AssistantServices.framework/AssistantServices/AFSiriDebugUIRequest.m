@interface AFSiriDebugUIRequest
- (AFSiriDebugUIRequest)initWithCoder:(id)a3;
- (AFSiriDebugUIRequest)initWithMessage:(id)a3 makeAppFrontmost:(BOOL)a4;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriDebugUIRequest

- (AFSiriDebugUIRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AFSiriDebugUIRequest;
  v5 = [(AFSiriRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
    v7 = [v6 copy];
    message = v5->_message;
    v5->_message = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Frontmost"];
    v5->_frontmost = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AFSiriDebugUIRequest;
  v4 = a3;
  [(AFSiriRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_message forKey:{@"Message", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_frontmost];
  [v4 encodeObject:v5 forKey:@"Frontmost"];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

- (AFSiriDebugUIRequest)initWithMessage:(id)a3 makeAppFrontmost:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AFSiriDebugUIRequest;
  v7 = [(AFSiriRequest *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    message = v7->_message;
    v7->_message = v8;

    v7->_frontmost = a4;
  }

  return v7;
}

@end