@interface CTActivationPolicyState
- (CTActivationPolicyState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTActivationPolicyState

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTActivationPolicyState *)self carrierLock];
  v5 = "CTActivationPolicyCarrierLockUnknown";
  if (v4 == 1)
  {
    v5 = "CTActivationPolicyCarrierUnlocked";
  }

  if (v4 == 2)
  {
    v5 = "CTActivationPolicyCarrierLocked";
  }

  [v3 appendFormat:@", carrierLock=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCarrierLock:{-[CTActivationPolicyState carrierLock](self, "carrierLock")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTActivationPolicyState carrierLock](self forKey:{"carrierLock"), @"carrier_lock"}];
}

- (CTActivationPolicyState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTActivationPolicyState;
  v5 = [(CTActivationPolicyState *)&v7 init];
  if (v5)
  {
    v5->_carrierLock = [v4 decodeIntegerForKey:@"carrier_lock"];
  }

  return v5;
}

@end