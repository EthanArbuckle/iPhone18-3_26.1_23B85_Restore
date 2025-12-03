@interface AVCustomMediaSelectionOption
- (id)description;
@end

@implementation AVCustomMediaSelectionOption

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  avkit_displayName = [(AVMediaSelectionOption *)self avkit_displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p, AVKit, title = %@>", v5, self, avkit_displayName];

  return v7;
}

@end