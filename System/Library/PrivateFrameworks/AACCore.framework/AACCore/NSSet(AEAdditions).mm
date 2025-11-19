@interface NSSet(AEAdditions)
- (id)ae_removing:()AEAdditions;
@end

@implementation NSSet(AEAdditions)

- (id)ae_removing:()AEAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObject:v4];

  v6 = [v5 copy];

  return v6;
}

@end