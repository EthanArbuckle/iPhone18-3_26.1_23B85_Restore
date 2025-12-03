@interface NSMutableArray
- (void)addTVElement:(id)element;
- (void)addTVElements:(id)elements;
@end

@implementation NSMutableArray

- (void)addTVElement:(id)element
{
  if (element)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)addTVElements:(id)elements
{
  if (elements)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

@end