@interface NSCharacterSet(TextAttachments)
+ (id)textAttachmentCharacterSet;
@end

@implementation NSCharacterSet(TextAttachments)

+ (id)textAttachmentCharacterSet
{
  v3 = -4;
  v0 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v3 length:1];
  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v0];

  return v1;
}

@end