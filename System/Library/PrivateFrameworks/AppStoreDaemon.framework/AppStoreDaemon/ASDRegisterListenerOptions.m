@interface ASDRegisterListenerOptions
- (ASDRegisterListenerOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDRegisterListenerOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDRegisterListenerOptions *)self clientID];
  [v4 encodeObject:v5 forKey:@"clientID"];

  v6 = [(ASDRegisterListenerOptions *)self endpoint];
  [v4 encodeObject:v6 forKey:@"endpoint"];
}

- (ASDRegisterListenerOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDRegisterListenerOptions;
  v5 = [(ASDRegisterListenerOptions *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v8];
      endpoint = v5->_endpoint;
      v5->_endpoint = v9;
    }
  }

  return v5;
}

@end