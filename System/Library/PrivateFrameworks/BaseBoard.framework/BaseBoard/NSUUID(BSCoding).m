@interface NSUUID(BSCoding)
- (id)initWithBSXPCCoder:()BSCoding;
- (void)encodeWithBSXPCCoder:()BSCoding;
@end

@implementation NSUUID(BSCoding)

- (void)encodeWithBSXPCCoder:()BSCoding
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    *uuid = 0;
    v7 = 0;
    [a1 getUUIDBytes:uuid];
    a1 = xpc_uuid_create(uuid);
  }

  [v4 encodeXPCObject:a1 forKey:{@"uuid", v4}];
}

- (id)initWithBSXPCCoder:()BSCoding
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9F20] forKey:@"uuid"];
  v5 = v4;
  if (v4)
  {
    v6 = [a1 initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
    a1 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

@end