@interface BGRepeatingSystemTask
- (id)description;
@end

@implementation BGRepeatingSystemTask

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BGSystemTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGRepeatingSystemTask: %@>", v3];

  return v4;
}

@end