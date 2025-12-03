@interface NSSQLWhereIntermediate
- (NSSQLWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope;
@end

@implementation NSSQLWhereIntermediate

- (NSSQLWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope
{
  v6.receiver = self;
  v6.super_class = NSSQLWhereIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:scope];
  if (result)
  {
    result->_predicate = predicate;
  }

  return result;
}

@end