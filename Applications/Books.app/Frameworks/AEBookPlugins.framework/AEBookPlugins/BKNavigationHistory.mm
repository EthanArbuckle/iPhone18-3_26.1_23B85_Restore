@interface BKNavigationHistory
- (BOOL)isAtTopOfStack;
- (NSMutableArray)stack;
- (id)currentEntity;
- (id)description;
- (id)nextEntity;
- (id)previousEntity;
- (id)recursiveDescription;
- (void)_trim;
- (void)add:(id)a3;
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
  v3 = [(BKNavigationHistory *)self cursor];
  v4 = [(BKNavigationHistory *)self stack];
  LOBYTE(v3) = v3 == [v4 count];

  return v3;
}

- (void)_trim
{
  for (i = self; ; self = i)
  {
    v3 = [(BKNavigationHistory *)self cursor];
    v4 = [(BKNavigationHistory *)i stack];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      break;
    }

    v6 = [(BKNavigationHistory *)i stack];
    [v6 removeLastObject];
  }
}

- (void)add:(id)a3
{
  v7 = a3;
  if (![(BKNavigationHistory *)self isAtTopOfStack])
  {
    [(BKNavigationHistory *)self truncateHistory];
  }

  v4 = v7;
  if (v7)
  {
    v5 = [(BKNavigationHistory *)self stack];
    [v5 addObject:v7];

    v6 = [(BKNavigationHistory *)self stack];
    -[BKNavigationHistory setCursor:](self, "setCursor:", [v6 count]);

    v4 = v7;
  }
}

- (id)nextEntity
{
  v3 = [(BKNavigationHistory *)self cursor];
  v4 = [(BKNavigationHistory *)self stack];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(BKNavigationHistory *)self stack];
    v7 = [v6 objectAtIndex:v3];
  }

  return v7;
}

- (id)currentEntity
{
  v3 = [(BKNavigationHistory *)self isAtTopOfStack];
  v4 = [(BKNavigationHistory *)self cursor]- (v3 ^ 1);
  v5 = [(BKNavigationHistory *)self stack];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(BKNavigationHistory *)self stack];
    v8 = [v7 objectAtIndex:v4];
  }

  return v8;
}

- (id)previousEntity
{
  v3 = [(BKNavigationHistory *)self isAtTopOfStack];
  v4 = [(BKNavigationHistory *)self cursor];
  v5 = -2;
  if (v3)
  {
    v5 = -1;
  }

  v6 = v4 + v5;
  v7 = [(BKNavigationHistory *)self stack];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(BKNavigationHistory *)self stack];
    v10 = [v9 objectAtIndex:v6];
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
  v4 = [(BKNavigationHistory *)self stack];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p>(Element Count: %d Cursor: %d)", v3, self, [v4 count], -[BKNavigationHistory cursor](self, "cursor"));;

  return v5;
}

- (id)recursiveDescription
{
  v3 = objc_opt_class();
  v4 = [(BKNavigationHistory *)self stack];
  v5 = [v4 count];
  v6 = [(BKNavigationHistory *)self cursor];
  v7 = [(BKNavigationHistory *)self stack];
  v8 = [NSString stringWithFormat:@"<%@: %p>(Element Count: %d Cursor: %d) ; %@", v3, self, v5, v6, v7];;

  return v8;
}

@end