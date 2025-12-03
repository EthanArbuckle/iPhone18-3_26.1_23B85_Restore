@interface CTActivationPolicyState
- (CTActivationPolicyState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTActivationPolicyState

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  carrierLock = [(CTActivationPolicyState *)self carrierLock];
  v5 = "CTActivationPolicyCarrierLockUnknown";
  if (carrierLock == 1)
  {
    v5 = "CTActivationPolicyCarrierUnlocked";
  }

  if (carrierLock == 2)
  {
    v5 = "CTActivationPolicyCarrierLocked";
  }

  [v3 appendFormat:@", carrierLock=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCarrierLock:{-[CTActivationPolicyState carrierLock](self, "carrierLock")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTActivationPolicyState carrierLock](self forKey:{"carrierLock"), @"carrier_lock"}];
}

- (CTActivationPolicyState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTActivationPolicyState;
  v5 = [(CTActivationPolicyState *)&v7 init];
  if (v5)
  {
    v5->_carrierLock = [coderCopy decodeIntegerForKey:@"carrier_lock"];
  }

  return v5;
}

@end