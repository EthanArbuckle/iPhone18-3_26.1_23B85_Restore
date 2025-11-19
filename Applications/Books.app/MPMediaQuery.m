@interface MPMediaQuery
- (id)description;
@end

@implementation MPMediaQuery

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MPMediaQuery *)self collections];
  v6 = [NSString stringWithFormat:@"<%@(%p) %@>", v4, self, v5];

  return v6;
}

@end