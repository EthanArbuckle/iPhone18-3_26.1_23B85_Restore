@interface InAppBindingEligibilityRequest
- (InAppBindingEligibilityRequest)initWithCoder:(id)coder;
- (InAppBindingEligibilityRequest)initWithPinningID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InAppBindingEligibilityRequest

- (InAppBindingEligibilityRequest)initWithPinningID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = InAppBindingEligibilityRequest;
  v6 = [(InAppBindingEligibilityRequest *)&v9 init];
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
  pinningID = [(InAppBindingEligibilityRequest *)self pinningID];
  [coderCopy encodeObject:pinningID forKey:@"pinningId"];
}

- (InAppBindingEligibilityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinningId"];

  v6 = [(InAppBindingEligibilityRequest *)self initWithPinningID:v5];
  return v6;
}

@end