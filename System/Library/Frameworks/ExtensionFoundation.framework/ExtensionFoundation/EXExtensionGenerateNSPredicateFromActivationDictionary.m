@interface EXExtensionGenerateNSPredicateFromActivationDictionary
@end

@implementation EXExtensionGenerateNSPredicateFromActivationDictionary

uint64_t ___EXExtensionGenerateNSPredicateFromActivationDictionary_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _EXExtensionGenerateNSPredicateFromActivationDictionary_predicateCache;
  _EXExtensionGenerateNSPredicateFromActivationDictionary_predicateCache = v0;

  v2 = _EXExtensionGenerateNSPredicateFromActivationDictionary_predicateCache;

  return [v2 setName:@"NSExtension predicate cache"];
}

@end