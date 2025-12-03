@interface NSArray(CTXPCLogging)
- (id)ct_descriptionWithShortDescriptions;
@end

@implementation NSArray(CTXPCLogging)

- (id)ct_descriptionWithShortDescriptions
{
  v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(\n");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__NSArray_CTXPCLogging__ct_descriptionWithShortDescriptions__block_invoke;
  v6[3] = &unk_1E6A445A8;
  v7 = v2;
  v3 = v2;
  [self enumerateObjectsUsingBlock:v6];
  [v3 appendString:@"\n"]);
  v4 = [v3 copy];

  return v4;
}

@end