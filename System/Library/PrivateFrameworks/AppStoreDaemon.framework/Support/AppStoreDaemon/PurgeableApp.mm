@interface PurgeableApp
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PurgeableApp

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSNumber *)self->_diskUsage copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v5[4] = self->_order;
  v10 = [(NSArray *)self->_plugins copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_reason copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSNumber *)self->_storeItemID copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  return v5;
}

@end