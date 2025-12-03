@interface THPageHintController
- (BOOL)hasFullHintForRelativePageIndex:(unint64_t)index;
- (NSArray)pageHints;
- (THPageHintController)init;
- (id)hintForRelativePageIndex:(unint64_t)index;
- (unint64_t)pageCount;
- (void)clearHintsOnRelativePageIndex:(unint64_t)index;
- (void)clearHintsStartingAtRelativePageIndex:(unint64_t)index;
- (void)dealloc;
- (void)removeAllHints;
- (void)setHint:(id)hint forRelativePageIndex:(unint64_t)index;
- (void)setPageHints:(id)hints;
@end

@implementation THPageHintController

- (THPageHintController)init
{
  v4.receiver = self;
  v4.super_class = THPageHintController;
  v2 = [(THPageHintController *)&v4 init];
  if (v2)
  {
    v2->_pageHints = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  self->_pageHints = 0;
  v3.receiver = self;
  v3.super_class = THPageHintController;
  [(THPageHintController *)&v3 dealloc];
}

- (BOOL)hasFullHintForRelativePageIndex:(unint64_t)index
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)self->_pageHints count]<= index)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [-[NSMutableArray objectAtIndex:](self->_pageHints objectAtIndex:{index), "isEqual:", +[NSNull null](NSNull, "null")}] ^ 1;
  }

  objc_sync_exit(self);
  return v5;
}

- (void)setHint:(id)hint forRelativePageIndex:(unint64_t)index
{
  objc_sync_enter(self);
  while ([(NSMutableArray *)self->_pageHints count]<= index)
  {
    [(NSMutableArray *)self->_pageHints addObject:+[NSNull null]];
  }

  [(NSMutableArray *)self->_pageHints replaceObjectAtIndex:index withObject:hint];

  objc_sync_exit(self);
}

- (void)clearHintsOnRelativePageIndex:(unint64_t)index
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)self->_pageHints count]> index)
  {
    [(NSMutableArray *)self->_pageHints replaceObjectAtIndex:index withObject:+[NSNull null]];
  }

  objc_sync_exit(self);
}

- (id)hintForRelativePageIndex:(unint64_t)index
{
  v5 = +[NSNull null];
  objc_sync_enter(self);
  if ([(NSMutableArray *)self->_pageHints count]> index)
  {
    v5 = [(NSMutableArray *)self->_pageHints objectAtIndex:index];
  }

  objc_sync_exit(self);
  return v5;
}

- (void)removeAllHints
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->_pageHints removeAllObjects];

  objc_sync_exit(self);
}

- (void)clearHintsStartingAtRelativePageIndex:(unint64_t)index
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->_pageHints removeObjectsInRange:index, [(NSMutableArray *)self->_pageHints count]- index];

  objc_sync_exit(self);
}

- (unint64_t)pageCount
{
  objc_sync_enter(self);
  v3 = [(NSMutableArray *)self->_pageHints count];
  objc_sync_exit(self);
  return v3;
}

- (NSArray)pageHints
{
  objc_sync_enter(self);
  v3 = [(NSMutableArray *)self->_pageHints copy];
  objc_sync_exit(self);
  return v3;
}

- (void)setPageHints:(id)hints
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->_pageHints removeAllObjects];
  [(NSMutableArray *)self->_pageHints addObjectsFromArray:hints];

  objc_sync_exit(self);
}

@end