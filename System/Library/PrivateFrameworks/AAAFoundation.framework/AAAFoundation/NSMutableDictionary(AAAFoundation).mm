@interface NSMutableDictionary(AAAFoundation)
- (id)aaf_removeObjectForKey:()AAAFoundation;
@end

@implementation NSMutableDictionary(AAAFoundation)

- (id)aaf_removeObjectForKey:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [a1 objectForKey:v4];
    [a1 removeObjectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end