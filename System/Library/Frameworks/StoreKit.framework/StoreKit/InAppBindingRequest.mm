@interface InAppBindingRequest
- (InAppBindingRequest)initWithCoder:(id)a3;
- (InAppBindingRequest)initWithPinningID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation InAppBindingRequest

- (InAppBindingRequest)initWithPinningID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = InAppBindingRequest;
  v6 = [(InAppBindingRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pinningID, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(InAppBindingRequest *)self pinningID];
  [v4 encodeObject:v5 forKey:@"pinningId"];
}

- (InAppBindingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinningId"];

  v6 = [(InAppBindingRequest *)self initWithPinningID:v5];
  return v6;
}

@end