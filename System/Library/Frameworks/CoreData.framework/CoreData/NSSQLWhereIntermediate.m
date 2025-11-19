@interface NSSQLWhereIntermediate
- (NSSQLWhereIntermediate)initWithPredicate:(id)a3 inScope:(id)a4;
@end

@implementation NSSQLWhereIntermediate

- (NSSQLWhereIntermediate)initWithPredicate:(id)a3 inScope:(id)a4
{
  v6.receiver = self;
  v6.super_class = NSSQLWhereIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:a4];
  if (result)
  {
    result->_predicate = a3;
  }

  return result;
}

@end