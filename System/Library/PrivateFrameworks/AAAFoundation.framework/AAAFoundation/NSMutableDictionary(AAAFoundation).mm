@interface NSMutableDictionary(AAAFoundation)
- (id)aaf_removeObjectForKey:()AAAFoundation;
@end

@implementation NSMutableDictionary(AAAFoundation)

- (id)aaf_removeObjectForKey:()AAAFoundation
{
  v4 = a3;
  if ([self count])
  {
    v5 = [self objectForKey:v4];
    [self removeObjectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end