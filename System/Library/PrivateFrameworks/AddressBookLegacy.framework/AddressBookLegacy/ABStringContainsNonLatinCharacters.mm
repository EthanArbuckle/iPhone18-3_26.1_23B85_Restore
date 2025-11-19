@interface ABStringContainsNonLatinCharacters
@end

@implementation ABStringContainsNonLatinCharacters

void *___ABStringContainsNonLatinCharacters_block_invoke()
{
  result = ABGetCharacterSetWithPattern(@"[[:Latin:][:Common:][:Inherited:]]");
  _ABStringContainsNonLatinCharacters___latinSet = result;
  return result;
}

@end