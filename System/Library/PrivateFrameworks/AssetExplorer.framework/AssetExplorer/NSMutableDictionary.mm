@interface NSMutableDictionary
- (void)ae_moveObjectFromKey:(void *)key toKey:;
@end

@implementation NSMutableDictionary

- (void)ae_moveObjectFromKey:(void *)key toKey:
{
  v7 = a2;
  keyCopy = key;
  if (self && v7 != keyCopy)
  {
    v6 = [self objectForKeyedSubscript:v7];
    if (v6)
    {
      [self setObject:v6 forKeyedSubscript:keyCopy];
      [self removeObjectForKey:v7];
    }
  }
}

@end