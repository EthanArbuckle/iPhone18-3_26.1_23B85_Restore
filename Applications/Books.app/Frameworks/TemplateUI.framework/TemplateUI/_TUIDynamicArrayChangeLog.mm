@interface _TUIDynamicArrayChangeLog
- (NSString)changes;
- (_TUIDynamicArrayChangeLog)initWithGeneration:(id)generation initialCount:(unint64_t)count updater:(id)updater;
- (void)deleteItemAtIndex:(unint64_t)index;
- (void)insertItemAtIndex:(unint64_t)index;
- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)updateItemAtIndex:(unint64_t)index;
@end

@implementation _TUIDynamicArrayChangeLog

- (_TUIDynamicArrayChangeLog)initWithGeneration:(id)generation initialCount:(unint64_t)count updater:(id)updater
{
  generationCopy = generation;
  updaterCopy = updater;
  v16.receiver = self;
  v16.super_class = _TUIDynamicArrayChangeLog;
  v11 = [(_TUIDynamicArrayChangeLog *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generation, generation);
    v12->_initialCount = count;
    v12->_finalCount = count;
    v13 = objc_opt_new();
    changes = v12->_changes;
    v12->_changes = v13;

    v12->_updater = updaterCopy;
    [(NSMutableString *)v12->_changes appendFormat:@"S%lu;", v12->_initialCount];
  }

  return v12;
}

- (NSString)changes
{
  v2 = [(NSMutableString *)self->_changes copy];

  return v2;
}

- (void)insertItemAtIndex:(unint64_t)index
{
  [(NSMutableString *)self->_changes appendFormat:@"I%lu;", index];
  ++self->_finalCount;
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater insertItemAtIndex:index];
}

- (void)deleteItemAtIndex:(unint64_t)index
{
  [(NSMutableString *)self->_changes appendFormat:@"D%lu;", index];
  --self->_finalCount;
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater deleteItemAtIndex:index];
}

- (void)updateItemAtIndex:(unint64_t)index
{
  [(NSMutableString *)self->_changes appendFormat:@"U%lu;", index];
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater updateItemAtIndex:index];
}

- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  [(NSMutableString *)self->_changes appendFormat:@"U%lu->%lu;", index, toIndex];
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater moveItemFromIndex:index toIndex:toIndex];
}

@end