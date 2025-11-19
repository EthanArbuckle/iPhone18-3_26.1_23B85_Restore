@interface ARUICelebration
- (id)description;
- (unint64_t)hash;
@end

@implementation ARUICelebration

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(ARUICelebration *)self type];
  [v3 appendString:@"sparks" withName:@"type"];
  v4 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:self->_duration];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = +[ARUIHashBuilder builder];
  [v3 appendDouble:self->_duration];
  [v3 appendUnsignedInt:self->_type];
  v4 = [v3 hash];

  return v4;
}

@end