@interface NSMutableDictionary
- (id)extractObjectForKey:(id)a3;
@end

@implementation NSMutableDictionary

- (id)extractObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self objectForKey:v4];
  [(NSMutableDictionary *)self removeObjectForKey:v4];

  return v5;
}

@end