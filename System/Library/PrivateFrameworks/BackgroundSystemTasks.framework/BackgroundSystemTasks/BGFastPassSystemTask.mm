@interface BGFastPassSystemTask
- (id)description;
@end

@implementation BGFastPassSystemTask

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(BGSystemTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGFastPassSystemTask: %@>", identifier];

  return v4;
}

@end