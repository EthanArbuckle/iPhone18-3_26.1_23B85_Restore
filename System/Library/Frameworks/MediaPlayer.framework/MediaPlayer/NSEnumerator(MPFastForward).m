@interface NSEnumerator(MPFastForward)
- (id)nextObjectIdenticalTo:()MPFastForward;
@end

@implementation NSEnumerator(MPFastForward)

- (id)nextObjectIdenticalTo:()MPFastForward
{
  v4 = a3;
  v5 = 0;
  do
  {
    v6 = v5;
    v5 = [a1 nextObject];
  }

  while (v5 && v5 != v4);

  return v5;
}

@end