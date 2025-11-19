@interface UsedApp
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UsedApp

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = sub_1001EE7A0([UsedApp alloc], self->_bundleID);
  v6 = [(NSDate *)self->_lastExtensionLaunched copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSDate *)self->_lastLaunched copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  return v5;
}

- (id)description
{
  bundleID = self->_bundleID;
  usageWindowMatchType = self->_usageWindowMatchType;
  v5 = sub_1002525A8(self->_lastLaunched);
  v6 = sub_1002525A8(self->_lastExtensionLaunched);
  v7 = [NSString stringWithFormat:@"{ id: %@ matchType: %ld lastLaunched: %@ lasExtensionLaunch: %@ }", bundleID, usageWindowMatchType, v5, v6];

  return v7;
}

@end