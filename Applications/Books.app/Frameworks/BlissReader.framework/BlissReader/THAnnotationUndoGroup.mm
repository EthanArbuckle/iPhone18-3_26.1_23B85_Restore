@interface THAnnotationUndoGroup
- (id)redoWithAnnotationHost:(id)host moc:(id)moc;
- (id)undoWithAnnotationHost:(id)host moc:(id)moc;
- (void)addAction:(id)action;
- (void)dealloc;
@end

@implementation THAnnotationUndoGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationUndoGroup;
  [(THAnnotationUndoGroup *)&v3 dealloc];
}

- (void)addAction:(id)action
{
  if (action)
  {
    actions = self->_actions;
    if (!actions)
    {
      actions = objc_alloc_init(NSMutableArray);
      self->_actions = actions;
    }

    [(NSMutableArray *)actions addObject:action];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (id)undoWithAnnotationHost:(id)host moc:(id)moc
{
  v7 = objc_alloc_init(THAnnotationChangeList);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_actions reverseObjectEnumerator];
  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [*(*(&v14 + 1) + 8 * v12) undoWithChangeList:v7 annotationHost:host moc:moc];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)redoWithAnnotationHost:(id)host moc:(id)moc
{
  v7 = objc_alloc_init(THAnnotationChangeList);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actions = self->_actions;
  v9 = [(NSMutableArray *)actions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(actions);
        }

        [*(*(&v14 + 1) + 8 * v12) redoWithChangeList:v7 annotationHost:host moc:moc];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)actions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

@end