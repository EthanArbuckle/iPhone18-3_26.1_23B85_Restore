@interface NEIKEv2NULLIdentifier
- (NEIKEv2NULLIdentifier)init;
@end

@implementation NEIKEv2NULLIdentifier

- (NEIKEv2NULLIdentifier)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  v4 = [(NEIKEv2Identifier *)self initWithIdentifierData:v3];

  return v4;
}

@end