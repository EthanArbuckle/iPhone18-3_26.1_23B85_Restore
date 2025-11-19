@interface NSLikePredicateOperator
- (id)symbol;
@end

@implementation NSLikePredicateOperator

- (id)symbol
{
  v2 = [(NSStringPredicateOperator *)self _modifierString];

  return [@"LIKE" stringByAppendingString:v2];
}

@end