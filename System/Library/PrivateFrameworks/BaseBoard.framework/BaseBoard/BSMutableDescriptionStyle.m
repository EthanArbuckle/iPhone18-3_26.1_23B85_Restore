@interface BSMutableDescriptionStyle
- (id)copyWithZone:(_NSZone *)a3;
- (void)setClientInformation:(id)a3;
@end

@implementation BSMutableDescriptionStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BSDescriptionStyle alloc];

  return [(BSDescriptionStyle *)v4 _initWithCopyOf:?];
}

- (void)setClientInformation:(id)a3
{
  v4 = [a3 copy];
  clientInformation = self->super._clientInformation;
  self->super._clientInformation = v4;
}

@end