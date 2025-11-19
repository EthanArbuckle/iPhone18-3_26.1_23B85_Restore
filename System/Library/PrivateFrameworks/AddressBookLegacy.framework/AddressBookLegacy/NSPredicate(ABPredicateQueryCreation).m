@interface NSPredicate(ABPredicateQueryCreation)
- (uint64_t)ab_addCallbackContextToArray:()ABPredicateQueryCreation;
@end

@implementation NSPredicate(ABPredicateQueryCreation)

- (uint64_t)ab_addCallbackContextToArray:()ABPredicateQueryCreation
{
  [a3 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  v4 = [MEMORY[0x1E695DFB0] null];

  return [a3 addObject:v4];
}

@end