@interface _TUIPagedScrollableProxy
- (TUIPagedScrollableAction)action;
- (_NSRange)currentPageIndices;
- (_TUIPagedScrollableProxy)init;
- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)index;
- (void)updateWithPageIndices:(_NSRange)indices pageCount:(unint64_t)count;
@end

@implementation _TUIPagedScrollableProxy

- (_TUIPagedScrollableProxy)init
{
  v6.receiver = self;
  v6.super_class = _TUIPagedScrollableProxy;
  v2 = [(_TUIPagedScrollableProxy *)&v6 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)updateWithPageIndices:(_NSRange)indices pageCount:(unint64_t)count
{
  v5 = self->_currentPageIndices.location == indices.location && self->_currentPageIndices.length == indices.length;
  if (!v5 || self->_pageCount != count)
  {
    self->_currentPageIndices = indices;
    self->_pageCount = count;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) pagedScrollableDidChange:{self, v11}];
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained pagedScrollableActionChangeToPageIndex:index];
}

- (_NSRange)currentPageIndices
{
  length = self->_currentPageIndices.length;
  location = self->_currentPageIndices.location;
  result.length = length;
  result.location = location;
  return result;
}

- (TUIPagedScrollableAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

@end