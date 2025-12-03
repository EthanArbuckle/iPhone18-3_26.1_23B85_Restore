@interface NSEnumerator(MPFastForward)
- (id)nextObjectIdenticalTo:()MPFastForward;
@end

@implementation NSEnumerator(MPFastForward)

- (id)nextObjectIdenticalTo:()MPFastForward
{
  v4 = a3;
  nextObject = 0;
  do
  {
    v6 = nextObject;
    nextObject = [self nextObject];
  }

  while (nextObject && nextObject != v4);

  return nextObject;
}

@end