@interface NSMapTable
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation NSMapTable

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  if (a3)
  {
    [(NSMapTable *)self setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMapTable *)self removeObjectForKey:a4];
  }
}

@end