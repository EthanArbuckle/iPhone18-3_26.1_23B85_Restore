@interface THAnnotationUndoGroup
- (id)redoWithAnnotationHost:(id)a3 moc:(id)a4;
- (id)undoWithAnnotationHost:(id)a3 moc:(id)a4;
- (void)addAction:(id)a3;
- (void)dealloc;
@end

@implementation THAnnotationUndoGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationUndoGroup;
  [(THAnnotationUndoGroup *)&v3 dealloc];
}

- (void)addAction:(id)a3
{
  if (a3)
  {
    actions = self->_actions;
    if (!actions)
    {
      actions = objc_alloc_init(NSMutableArray);
      self->_actions = actions;
    }

    [(NSMutableArray *)actions addObject:a3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (id)undoWithAnnotationHost:(id)a3 moc:(id)a4
{
  v7 = objc_alloc_init(THAnnotationChangeList);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableArray *)self->_actions reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) undoWithChangeList:v7 annotationHost:a3 moc:a4];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)redoWithAnnotationHost:(id)a3 moc:(id)a4
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

        [*(*(&v14 + 1) + 8 * v12) redoWithChangeList:v7 annotationHost:a3 moc:a4];
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