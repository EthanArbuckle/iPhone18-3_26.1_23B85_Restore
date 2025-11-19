@interface NSArray
- (id)originalElementforElement:(id)a3;
@end

@implementation NSArray

- (id)originalElementforElement:(id)a3
{
  v4 = [(NSArray *)self indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self objectAtIndex:v4];
  }

  return v5;
}

@end