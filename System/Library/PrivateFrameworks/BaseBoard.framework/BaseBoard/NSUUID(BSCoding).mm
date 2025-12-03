@interface NSUUID(BSCoding)
- (id)initWithBSXPCCoder:()BSCoding;
- (void)encodeWithBSXPCCoder:()BSCoding;
@end

@implementation NSUUID(BSCoding)

- (void)encodeWithBSXPCCoder:()BSCoding
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    *uuid = 0;
    v7 = 0;
    [self getUUIDBytes:uuid];
    self = xpc_uuid_create(uuid);
  }

  [v4 encodeXPCObject:self forKey:{@"uuid", v4}];
}

- (id)initWithBSXPCCoder:()BSCoding
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9F20] forKey:@"uuid"];
  v5 = v4;
  if (v4)
  {
    v6 = [self initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

@end