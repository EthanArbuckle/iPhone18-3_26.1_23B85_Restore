@interface NSMapTable
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation NSMapTable

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (object)
  {
    [(NSMapTable *)self setObject:object forKey:subscript];
  }

  else
  {
    [(NSMapTable *)self removeObjectForKey:subscript];
  }
}

@end