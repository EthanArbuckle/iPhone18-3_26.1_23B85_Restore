@interface AAFPlistSerializer
- (id)mediaTypes;
@end

@implementation AAFPlistSerializer

- (id)mediaTypes
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"application/x-plist";
  v5[1] = @"application/x-apple-plist";
  v5[2] = @"text/plist";
  v5[3] = @"application/xml";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end