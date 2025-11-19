@interface NSMutableDictionary
- (void)addObject:(id)a3 toSetForKey:(id)a4;
@end

@implementation NSMutableDictionary

- (void)addObject:(id)a3 toSetForKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    v7 = [(NSMutableDictionary *)self objectForKey:v6];
    if (!v7)
    {
      v7 = [[NSMutableSet alloc] initWithCapacity:0];
      [(NSMutableDictionary *)self setObject:v7 forKeyedSubscript:v6];
    }

    [v7 addObject:v8];
  }
}

@end