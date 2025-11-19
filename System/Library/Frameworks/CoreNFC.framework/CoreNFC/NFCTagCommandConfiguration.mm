@interface NFCTagCommandConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NFCTagCommandConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setMaximumRetries:self->_maximumRetries];
  [v4 setRetryInterval:self->_retryInterval];
  return v4;
}

@end