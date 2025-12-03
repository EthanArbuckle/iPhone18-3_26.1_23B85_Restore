@interface CBCentral
- (NSUInteger)maximumUpdateValueLength;
- (id)description;
@end

@implementation CBCentral

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(CBPeer *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier = %@, MTU = %lu>", v4, self, uUIDString, -[CBCentral maximumUpdateValueLength](self, "maximumUpdateValueLength")];

  return v7;
}

- (NSUInteger)maximumUpdateValueLength
{
  mtuLength = [(CBPeer *)self mtuLength];
  if (mtuLength - 3 >= 0x200)
  {
    return 512;
  }

  else
  {
    return mtuLength - 3;
  }
}

@end