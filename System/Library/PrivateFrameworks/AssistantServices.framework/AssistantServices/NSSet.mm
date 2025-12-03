@interface NSSet
- (id)adpm_sortedKeyString;
@end

@implementation NSSet

- (id)adpm_sortedKeyString
{
  allObjects = [(NSSet *)self allObjects];
  v3 = [allObjects sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  v4 = [v3 componentsJoinedByString:@":"];

  return v4;
}

@end