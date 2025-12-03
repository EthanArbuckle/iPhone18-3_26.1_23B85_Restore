@interface BGRepeatingSystemTask
- (id)description;
@end

@implementation BGRepeatingSystemTask

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(BGSystemTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGRepeatingSystemTask: %@>", identifier];

  return v4;
}

@end