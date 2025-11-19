@interface NSCharacterSet
@end

@implementation NSCharacterSet

uint64_t __75__NSCharacterSet__HKXMLExtractorCharacterSets__hk_forwardSlashCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
  v1 = hk_forwardSlashCharacterSet_sharedForwardSlashSet;
  hk_forwardSlashCharacterSet_sharedForwardSlashSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __70__NSCharacterSet__HKXMLExtractorCharacterSets__hk_percentCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"%"];
  v1 = hk_percentCharacterSet_sharedPercentSet;
  hk_percentCharacterSet_sharedPercentSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __68__NSCharacterSet__HKXMLExtractorCharacterSets__hk_equalCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"="];
  v1 = hk_equalCharacterSet_sharedEqualSet;
  hk_equalCharacterSet_sharedEqualSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end