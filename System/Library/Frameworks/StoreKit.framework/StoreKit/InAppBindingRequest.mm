@interface InAppBindingRequest
- (InAppBindingRequest)initWithCoder:(id)coder;
- (InAppBindingRequest)initWithPinningID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InAppBindingRequest

- (InAppBindingRequest)initWithPinningID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = InAppBindingRequest;
  v6 = [(InAppBindingRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pinningID, d);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pinningID = [(InAppBindingRequest *)self pinningID];
  [coderCopy encodeObject:pinningID forKey:@"pinningId"];
}

- (InAppBindingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinningId"];

  v6 = [(InAppBindingRequest *)self initWithPinningID:v5];
  return v6;
}

@end