@interface NSConcreteOrderedSetChanges
- (NSConcreteOrderedSetChanges)init;
- (NSConcreteOrderedSetChanges)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateChanges:(unint64_t)a3 stop:(BOOL *)a4 usingBlock:(id)a5;
- (void)addChange:(id)a3;
- (void)dealloc;
- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateChangesUsingBlock:(id)a3;
@end

@implementation NSConcreteOrderedSetChanges

- (NSConcreteOrderedSetChanges)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSConcreteOrderedSetChanges;
  v2 = [(NSConcreteOrderedSetChanges *)&v9 init];
  v3 = v2;
  v8 = 0;
  if (v2)
  {
    p_changes = &v2->_changes;
    v5 = objc_opt_class();
    *&p_changes->objects = 0u;
    *&v3->_changes.list.buffer = 0u;
    *&v3->_changes.list.capacity = 0u;
    *&v3->_changes.list.lastIndex = 0u;
    p_changes->objects = [[v5 alloc] initWithObjects:&v8 count:0];
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    *&v3->_changes.list.changesIndex = vnegq_f64(v6);
    v3->_changes.list.buffer = 0;
    *&v3->_changes.list.availableIndex = xmmword_181406480;
    v3->_changes.list.count = 0;
  }

  return v3;
}

- (NSConcreteOrderedSetChanges)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSConcreteOrderedSetChanges;
  v6 = [(NSConcreteOrderedSetChanges *)&v12 init];
  v7 = v6;
  if (v6)
  {
    p_changes = &v6->_changes;
    v9 = objc_opt_class();
    *&p_changes->objects = 0u;
    *&v7->_changes.list.buffer = 0u;
    *&v7->_changes.list.capacity = 0u;
    *&v7->_changes.list.lastIndex = 0u;
    p_changes->objects = [[v9 alloc] initWithObjects:a3 count:a4];
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v7->_changes.list.changesIndex = vnegq_f64(v10);
    v7->_changes.list.buffer = 0;
    *&v7->_changes.list.availableIndex = xmmword_181406480;
    v7->_changes.list.count = 0;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSOrderedChangesRelease(&self->_changes);
  v3.receiver = self;
  v3.super_class = NSConcreteOrderedSetChanges;
  [(NSConcreteOrderedSetChanges *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(NSOrderedSetChanges *)NSConcreteOrderedSetChanges allocWithZone:a3];
  _NSOrderedChangesCopy(&self->_changes, &v4->_changes);
  return v4;
}

- (void)_enumerateChanges:(unint64_t)a3 stop:(BOOL *)a4 usingBlock:(id)a5
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__NSConcreteOrderedSetChanges__enumerateChanges_stop_usingBlock___block_invoke;
  v5[3] = &unk_1E69F53B0;
  v5[4] = a5;
  _NSOrderedChangesEnumerateChanges(&self->_changes, a3, a4, v5);
}

void __65__NSConcreteOrderedSetChanges__enumerateChanges_stop_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [NSOrderedSetChange alloc];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  v12 = [(NSOrderedSetChange *)v10 initWithType:a2 sourceIndex:v11 destinationIndex:a4 value:a5];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateChangesUsingBlock:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  [(NSConcreteOrderedSetChanges *)self _enumerateChanges:62 stop:&v3 usingBlock:a3];
}

- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  [(NSConcreteOrderedSetChanges *)self _enumerateChanges:1 << a3 stop:&v4 usingBlock:a4];
}

- (void)addChange:(id)a3
{
  v5 = [a3 sourceIndex];
  v6 = [a3 destinationIndex];
  [(NSConcreteOrderedSetChanges *)self willChangeValueForKey:@"changeCount"];
  v7 = [a3 changeType];
  if (v5 == v6)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _NSOrderedChangesAddChange(&self->_changes, v7, v5, v6, [a3 value]);

  [(NSConcreteOrderedSetChanges *)self didChangeValueForKey:@"changeCount"];
}

@end