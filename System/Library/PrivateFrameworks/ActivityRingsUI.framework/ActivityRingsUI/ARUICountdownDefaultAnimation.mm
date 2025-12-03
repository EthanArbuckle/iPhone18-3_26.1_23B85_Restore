@interface ARUICountdownDefaultAnimation
- (id)description;
@end

@implementation ARUICountdownDefaultAnimation

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [objc_opt_class() identifier];
  v4 = [v2 stringWithFormat:@"<ARUICountdownDefaultAnimation: %@>", identifier];

  return v4;
}

@end