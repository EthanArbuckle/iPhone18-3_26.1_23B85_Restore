@interface AFContextResponse
- (AFContextResponse)initWithCoder:(id)a3;
- (id)_initWithRequest:(id)a3 context:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFContextResponse

- (AFContextResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFContextResponse;
  v5 = [(AFSiriResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GetContextResponseContext"];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFContextResponse;
  v4 = a3;
  [(AFSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_context forKey:{@"GetContextResponseContext", v5.receiver, v5.super_class}];
}

- (id)_initWithRequest:(id)a3 context:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AFContextResponse;
  v8 = [(AFSiriResponse *)&v11 _initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, a4);
  }

  return v9;
}

@end