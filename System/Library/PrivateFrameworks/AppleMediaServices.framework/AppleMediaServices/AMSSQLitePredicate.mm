@interface AMSSQLitePredicate
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AMSSQLitePredicate

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end