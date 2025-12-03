@interface ACDManagedAccount
- (id)description;
@end

@implementation ACDManagedAccount

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(ACDManagedAccount *)self identifier];
  v4 = [v2 stringWithFormat:@"<ACDManagedAccount:%@>", identifier];

  return v4;
}

@end