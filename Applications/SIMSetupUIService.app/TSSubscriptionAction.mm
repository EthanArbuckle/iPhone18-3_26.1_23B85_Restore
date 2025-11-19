@interface TSSubscriptionAction
+ (id)subscriptionActionForSubscriptionSIMStatus:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TSSubscriptionAction

+ (id)subscriptionActionForSubscriptionSIMStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kCTSIMSupportSIMStatusReady])
  {
    v4 = off_10001C2D0;
LABEL_8:
    v5 = objc_alloc_init(*v4);
    goto LABEL_9;
  }

  if ([v3 isEqualToString:kCTSIMSupportSIMStatusPINLocked])
  {
    v4 = off_10001C2D8;
    goto LABEL_8;
  }

  if (([v3 isEqualToString:kCTSIMSupportSIMStatusPUKLocked] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", kCTSIMSupportSIMStatusPermanentlyLocked))
  {
    v4 = &off_10001C2E0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_carrierName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(TSSubscriptionAction *)self actionType];
  if (v4 > 4)
  {
    v5 = @"???";
  }

  else
  {
    v5 = *(&off_10001C838 + v4);
  }

  v6 = [(TSSubscriptionAction *)self actionSubtype];
  if (v6 > 3)
  {
    v7 = @"???";
  }

  else
  {
    v7 = *(&off_10001C860 + v6);
  }

  return [NSString stringWithFormat:@"<%@: %p type:%@, sub.type:%@, mdn:%@, carrier:%@>", v3, self, v5, v7, self->_phoneNumber, self->_carrierName];
}

@end