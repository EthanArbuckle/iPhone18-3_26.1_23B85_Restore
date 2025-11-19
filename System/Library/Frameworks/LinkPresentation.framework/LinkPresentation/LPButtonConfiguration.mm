@interface LPButtonConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPButtonConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = LPButtonConfiguration;
  v4 = [(LPButtonConfiguration *)&v8 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 35, self->_lp_indicatorColor);
    v6 = v5;
  }

  return v5;
}

@end