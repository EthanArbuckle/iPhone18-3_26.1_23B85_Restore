@interface VCMediaNegotiatorCommonConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VCMediaNegotiatorCommonConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSsrc:self->_ssrc];
  return v4;
}

@end