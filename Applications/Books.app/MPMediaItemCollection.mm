@interface MPMediaItemCollection
- (id)description;
@end

@implementation MPMediaItemCollection

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  items = [(MPMediaItemCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@(%p) %@>", v4, self, items];

  return v6;
}

@end