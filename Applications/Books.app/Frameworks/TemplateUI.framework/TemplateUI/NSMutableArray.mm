@interface NSMutableArray
+ (id)tui_stackWithObjectsFromArray:(id)array;
- (id)tui_pop;
- (void)tui_push:(id)tui_push;
- (void)tui_pushObjectsFromArray:(id)array;
@end

@implementation NSMutableArray

+ (id)tui_stackWithObjectsFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v6 = [NSMutableArray arrayWithArray:allObjects];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (void)tui_pushObjectsFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [(NSMutableArray *)self addObjectsFromArray:allObjects];
  }
}

- (void)tui_push:(id)tui_push
{
  if (tui_push)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (id)tui_pop
{
  lastObject = [(NSMutableArray *)self lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return lastObject;
}

@end