@interface NSLikePredicateOperator
- (id)symbol;
@end

@implementation NSLikePredicateOperator

- (id)symbol
{
  _modifierString = [(NSStringPredicateOperator *)self _modifierString];

  return [@"LIKE" stringByAppendingString:_modifierString];
}

@end