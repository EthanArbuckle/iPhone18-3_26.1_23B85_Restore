@interface BSMutableDescriptionStyle
- (id)copyWithZone:(_NSZone *)zone;
- (void)setClientInformation:(id)information;
@end

@implementation BSMutableDescriptionStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BSDescriptionStyle alloc];

  return [(BSDescriptionStyle *)v4 _initWithCopyOf:?];
}

- (void)setClientInformation:(id)information
{
  v4 = [information copy];
  clientInformation = self->super._clientInformation;
  self->super._clientInformation = v4;
}

@end