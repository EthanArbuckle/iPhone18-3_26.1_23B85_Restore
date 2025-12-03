@interface BGNonRepeatingSystemTask
- (id)description;
@end

@implementation BGNonRepeatingSystemTask

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(BGSystemTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGNonRepeatingSystemTask: %@>", identifier];

  return v4;
}

@end