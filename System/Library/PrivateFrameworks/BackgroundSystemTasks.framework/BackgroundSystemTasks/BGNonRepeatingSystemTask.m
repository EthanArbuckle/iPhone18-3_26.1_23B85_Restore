@interface BGNonRepeatingSystemTask
- (id)description;
@end

@implementation BGNonRepeatingSystemTask

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BGSystemTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGNonRepeatingSystemTask: %@>", v3];

  return v4;
}

@end