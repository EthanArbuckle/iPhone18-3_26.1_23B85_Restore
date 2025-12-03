@interface TSSubscriptionAction
+ (id)subscriptionActionForSubscriptionSIMStatus:(id)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSSubscriptionAction

+ (id)subscriptionActionForSubscriptionSIMStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusReady])
  {
    v4 = off_10001C2D0;
LABEL_8:
    v5 = objc_alloc_init(*v4);
    goto LABEL_9;
  }

  if ([statusCopy isEqualToString:kCTSIMSupportSIMStatusPINLocked])
  {
    v4 = off_10001C2D8;
    goto LABEL_8;
  }

  if (([statusCopy isEqualToString:kCTSIMSupportSIMStatusPUKLocked] & 1) != 0 || objc_msgSend(statusCopy, "isEqualToString:", kCTSIMSupportSIMStatusPermanentlyLocked))
  {
    v4 = &off_10001C2E0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_carrierName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  actionType = [(TSSubscriptionAction *)self actionType];
  if (actionType > 4)
  {
    v5 = @"???";
  }

  else
  {
    v5 = *(&off_10001C838 + actionType);
  }

  actionSubtype = [(TSSubscriptionAction *)self actionSubtype];
  if (actionSubtype > 3)
  {
    v7 = @"???";
  }

  else
  {
    v7 = *(&off_10001C860 + actionSubtype);
  }

  return [NSString stringWithFormat:@"<%@: %p type:%@, sub.type:%@, mdn:%@, carrier:%@>", v3, self, v5, v7, self->_phoneNumber, self->_carrierName];
}

@end