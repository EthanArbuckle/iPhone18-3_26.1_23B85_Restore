@interface VCMediaNegotiatorCommonConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VCMediaNegotiatorCommonConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSsrc:self->_ssrc];
  return v4;
}

@end