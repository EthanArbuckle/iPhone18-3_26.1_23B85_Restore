@interface NSMutableArray
+ (id)tui_stackWithObjectsFromArray:(id)a3;
- (id)tui_pop;
- (void)tui_push:(id)a3;
- (void)tui_pushObjectsFromArray:(id)a3;
@end

@implementation NSMutableArray

+ (id)tui_stackWithObjectsFromArray:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 reverseObjectEnumerator];
    v5 = [v4 allObjects];
    v6 = [NSMutableArray arrayWithArray:v5];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (void)tui_pushObjectsFromArray:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 reverseObjectEnumerator];
    v5 = [v4 allObjects];
    [(NSMutableArray *)self addObjectsFromArray:v5];
  }
}

- (void)tui_push:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (id)tui_pop
{
  v3 = [(NSMutableArray *)self lastObject];
  if (v3)
  {
    [(NSMutableArray *)self removeLastObject];
  }

  return v3;
}

@end