@interface NSSet
- (id)adpm_sortedKeyString;
@end

@implementation NSSet

- (id)adpm_sortedKeyString
{
  v2 = [(NSSet *)self allObjects];
  v3 = [v2 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  v4 = [v3 componentsJoinedByString:@":"];

  return v4;
}

@end