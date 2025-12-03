@interface NSUUID(PKDrawingUUID)
- (id)AES128Key;
@end

@implementation NSUUID(PKDrawingUUID)

- (id)AES128Key
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];

  return v1;
}

@end