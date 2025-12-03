@interface SKPaymentDiscount
- (SKPaymentDiscount)initWithIdentifier:(NSString *)identifier keyIdentifier:(NSString *)keyIdentifier nonce:(NSUUID *)nonce signature:(NSString *)signature timestamp:(NSNumber *)timestamp;
@end

@implementation SKPaymentDiscount

- (SKPaymentDiscount)initWithIdentifier:(NSString *)identifier keyIdentifier:(NSString *)keyIdentifier nonce:(NSUUID *)nonce signature:(NSString *)signature timestamp:(NSNumber *)timestamp
{
  v12 = identifier;
  v13 = keyIdentifier;
  v14 = nonce;
  v15 = signature;
  v16 = timestamp;
  v17 = v16;
  if (v12 && v13 && v14 && v15 && v16)
  {
    v38.receiver = self;
    v38.super_class = SKPaymentDiscount;
    v18 = [(SKPaymentDiscount *)&v38 init];
    if (v18)
    {
      v19 = objc_alloc_init(SKPaymentDiscountInternal);
      internal = v18->_internal;
      v18->_internal = v19;

      v21 = [(NSString *)v12 copy];
      v22 = v18->_internal;
      v23 = v22[1];
      v22[1] = v21;

      v24 = [(NSString *)v13 copy];
      v25 = v18->_internal;
      v26 = v25[2];
      v25[2] = v24;

      v27 = [(NSUUID *)v14 copy];
      v28 = v18->_internal;
      v29 = v28[3];
      v28[3] = v27;

      v30 = [(NSString *)v15 copy];
      v31 = v18->_internal;
      v32 = v31[4];
      v31[4] = v30;

      v33 = [(NSNumber *)v17 copy];
      v34 = v18->_internal;
      v35 = v34[5];
      v34[5] = v33;
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_FoundNilParame.isa);
    selfCopy = 0;
  }

  return selfCopy;
}

@end