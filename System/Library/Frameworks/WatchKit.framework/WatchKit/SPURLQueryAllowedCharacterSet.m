@interface SPURLQueryAllowedCharacterSet
@end

@implementation SPURLQueryAllowedCharacterSet

uint64_t __spUtils_SPURLQueryAllowedCharacterSet_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = spUtils_SPURLQueryAllowedCharacterSet__spURLQueryAllowedCharacterSet;
  spUtils_SPURLQueryAllowedCharacterSet__spURLQueryAllowedCharacterSet = v0;

  v2 = spUtils_SPURLQueryAllowedCharacterSet__spURLQueryAllowedCharacterSet;
  v3 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = spUtils_SPURLQueryAllowedCharacterSet__spURLQueryAllowedCharacterSet;

  return [v4 removeCharactersInString:@"="];
}

@end