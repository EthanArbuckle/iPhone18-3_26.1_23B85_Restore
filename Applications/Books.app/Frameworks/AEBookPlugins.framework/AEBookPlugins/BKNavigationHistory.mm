@interface BKNavigationHistory
- (BOOL)isAtTopOfStack;
- (NSMutableArray)stack;
- (id)currentEntity;
- (id)description;
- (id)nextEntity;
- (id)previousEntity;
- (id)recursiveDescription;
- (void)_trim;
- (void)add:(id)add;
- (void)rewind;
- (void)skip;
- (void)truncateHistory;
@end

@implementation BKNavigationHistory

- (NSMutableArray)stack
{
  stack = self->_stack;
  if (!stack)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_stack;
    self->_stack = v4;

    stack = self->_stack;
  }

  return stack;
}

- (BOOL)isAtTopOfStack
{
  cursor = [(BKNavigationHistory *)self cursor];
  stack = [(BKNavigationHistory *)self stack];
  LOBYTE(cursor) = cursor == [stack count];

  return cursor;
}

- (void)_trim
{
  for (i = self; ; self = i)
  {
    cursor = [(BKNavigationHistory *)self cursor];
    stack = [(BKNavigationHistory *)i stack];
    v5 = [stack count];

    if (cursor >= v5)
    {
      break;
    }

    stack2 = [(BKNavigationHistory *)i stack];
    [stack2 removeLastObject];
  }
}

- (void)add:(id)add
{
  addCopy = add;
  if (![(BKNavigationHistory *)self isAtTopOfStack])
  {
    [(BKNavigationHistory *)self truncateHistory];
  }

  v4 = addCopy;
  if (addCopy)
  {
    stack = [(BKNavigationHistory *)self stack];
    [stack addObject:addCopy];

    stack2 = [(BKNavigationHistory *)self stack];
    -[BKNavigationHistory setCursor:](self, "setCursor:", [stack2 count]);

    v4 = addCopy;
  }
}

- (id)nextEntity
{
  cursor = [(BKNavigationHistory *)self cursor];
  stack = [(BKNavigationHistory *)self stack];
  v5 = [stack count];

  if (cursor >= v5)
  {
    v7 = 0;
  }

  else
  {
    stack2 = [(BKNavigationHistory *)self stack];
    v7 = [stack2 objectAtIndex:cursor];
  }

  return v7;
}

- (id)currentEntity
{
  isAtTopOfStack = [(BKNavigationHistory *)self isAtTopOfStack];
  v4 = [(BKNavigationHistory *)self cursor]- (isAtTopOfStack ^ 1);
  stack = [(BKNavigationHistory *)self stack];
  v6 = [stack count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    stack2 = [(BKNavigationHistory *)self stack];
    v8 = [stack2 objectAtIndex:v4];
  }

  return v8;
}

- (id)previousEntity
{
  isAtTopOfStack = [(BKNavigationHistory *)self isAtTopOfStack];
  cursor = [(BKNavigationHistory *)self cursor];
  v5 = -2;
  if (isAtTopOfStack)
  {
    v5 = -1;
  }

  v6 = cursor + v5;
  stack = [(BKNavigationHistory *)self stack];
  v8 = [stack count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    stack2 = [(BKNavigationHistory *)self stack];
    v10 = [stack2 objectAtIndex:v6];
  }

  return v10;
}

- (void)rewind
{
  v3 = [(BKNavigationHistory *)self cursor]- 1;

  [(BKNavigationHistory *)self setCursor:v3];
}

- (void)skip
{
  v3 = [(BKNavigationHistory *)self cursor]+ 1;

  [(BKNavigationHistory *)self setCursor:v3];
}

- (void)truncateHistory
{
  [(BKNavigationHistory *)self rewind];

  [(BKNavigationHistory *)self _trim];
}

- (id)description
{
  v3 = objc_opt_class();
  stack = [(BKNavigationHistory *)self stack];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p>(Element Count: %d Cursor: %d)", v3, self, [stack count], -[BKNavigationHistory cursor](self, "cursor"));;

  return v5;
}

- (id)recursiveDescription
{
  v3 = objc_opt_class();
  stack = [(BKNavigationHistory *)self stack];
  v5 = [stack count];
  cursor = [(BKNavigationHistory *)self cursor];
  stack2 = [(BKNavigationHistory *)self stack];
  v8 = [NSString stringWithFormat:@"<%@: %p>(Element Count: %d Cursor: %d) ; %@", v3, self, v5, cursor, stack2];;

  return v8;
}

@end