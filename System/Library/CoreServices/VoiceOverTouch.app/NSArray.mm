@interface NSArray
- (id)originalElementforElement:(id)element;
@end

@implementation NSArray

- (id)originalElementforElement:(id)element
{
  v4 = [(NSArray *)self indexOfObject:element];
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