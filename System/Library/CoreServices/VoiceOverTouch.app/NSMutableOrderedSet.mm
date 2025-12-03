@interface NSMutableOrderedSet
- (void)addTVElement:(id)element;
- (void)addTVElements:(id)elements;
@end

@implementation NSMutableOrderedSet

- (void)addTVElement:(id)element
{
  if (element)
  {
    [(NSMutableOrderedSet *)self addObject:?];
  }
}

- (void)addTVElements:(id)elements
{
  if (elements)
  {
    [(NSMutableOrderedSet *)self addObjectsFromArray:?];
  }
}

@end