@interface _TUIDynamicArrayChangeLog
- (NSString)changes;
- (_TUIDynamicArrayChangeLog)initWithGeneration:(id)a3 initialCount:(unint64_t)a4 updater:(id)a5;
- (void)deleteItemAtIndex:(unint64_t)a3;
- (void)insertItemAtIndex:(unint64_t)a3;
- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)updateItemAtIndex:(unint64_t)a3;
@end

@implementation _TUIDynamicArrayChangeLog

- (_TUIDynamicArrayChangeLog)initWithGeneration:(id)a3 initialCount:(unint64_t)a4 updater:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _TUIDynamicArrayChangeLog;
  v11 = [(_TUIDynamicArrayChangeLog *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generation, a3);
    v12->_initialCount = a4;
    v12->_finalCount = a4;
    v13 = objc_opt_new();
    changes = v12->_changes;
    v12->_changes = v13;

    v12->_updater = v10;
    [(NSMutableString *)v12->_changes appendFormat:@"S%lu;", v12->_initialCount];
  }

  return v12;
}

- (NSString)changes
{
  v2 = [(NSMutableString *)self->_changes copy];

  return v2;
}

- (void)insertItemAtIndex:(unint64_t)a3
{
  [(NSMutableString *)self->_changes appendFormat:@"I%lu;", a3];
  ++self->_finalCount;
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater insertItemAtIndex:a3];
}

- (void)deleteItemAtIndex:(unint64_t)a3
{
  [(NSMutableString *)self->_changes appendFormat:@"D%lu;", a3];
  --self->_finalCount;
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater deleteItemAtIndex:a3];
}

- (void)updateItemAtIndex:(unint64_t)a3
{
  [(NSMutableString *)self->_changes appendFormat:@"U%lu;", a3];
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater updateItemAtIndex:a3];
}

- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  [(NSMutableString *)self->_changes appendFormat:@"U%lu->%lu;", a3, a4];
  updater = self->_updater;

  [(TUIDynamicArrayUpdating *)updater moveItemFromIndex:a3 toIndex:a4];
}

@end