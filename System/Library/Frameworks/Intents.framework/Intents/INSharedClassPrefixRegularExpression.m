@interface INSharedClassPrefixRegularExpression
@end

@implementation INSharedClassPrefixRegularExpression

uint64_t ___INSharedClassPrefixRegularExpression_block_invoke()
{
  _INSharedClassPrefixRegularExpression_regularExpression = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([a-zA-Z]+):" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

@end