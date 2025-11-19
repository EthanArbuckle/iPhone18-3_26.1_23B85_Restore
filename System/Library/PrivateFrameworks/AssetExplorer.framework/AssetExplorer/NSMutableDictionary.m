@interface NSMutableDictionary
- (void)ae_moveObjectFromKey:(void *)a3 toKey:;
@end

@implementation NSMutableDictionary

- (void)ae_moveObjectFromKey:(void *)a3 toKey:
{
  v7 = a2;
  v5 = a3;
  if (a1 && v7 != v5)
  {
    v6 = [a1 objectForKeyedSubscript:v7];
    if (v6)
    {
      [a1 setObject:v6 forKeyedSubscript:v5];
      [a1 removeObjectForKey:v7];
    }
  }
}

@end