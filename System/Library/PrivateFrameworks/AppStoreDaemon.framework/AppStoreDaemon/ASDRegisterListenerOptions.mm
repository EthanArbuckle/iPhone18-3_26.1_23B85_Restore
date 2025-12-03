@interface ASDRegisterListenerOptions
- (ASDRegisterListenerOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDRegisterListenerOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = [(ASDRegisterListenerOptions *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  endpoint = [(ASDRegisterListenerOptions *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];
}

- (ASDRegisterListenerOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDRegisterListenerOptions;
  v5 = [(ASDRegisterListenerOptions *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
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