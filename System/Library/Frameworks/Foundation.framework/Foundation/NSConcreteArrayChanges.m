@interface NSConcreteArrayChanges
- (NSConcreteArrayChanges)init;
- (NSConcreteArrayChanges)initWithCapacity:(unint64_t)a3;
- (NSConcreteArrayChanges)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateChanges:(unint64_t)a3 stop:(BOOL *)a4 usingBlock:(id)a5;
- (void)addChange:(id)a3;
- (void)applyChangesToArray:(id)a3;
- (void)dealloc;
- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateChangesUsingBlock:(id)a3;
@end

@implementation NSConcreteArrayChanges

- (NSConcreteArrayChanges)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSConcreteArrayChanges;
  v2 = [(NSConcreteArrayChanges *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v8 = 0;
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

- (NSConcreteArrayChanges)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSConcreteArrayChanges;
  v6 = [(NSConcreteArrayChanges *)&v12 init];
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

- (NSConcreteArrayChanges)initWithCapacity:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSConcreteArrayChanges;
  v3 = [(NSConcreteArrayChanges *)&v10 init];
  v4 = v3;
  if (v3)
  {
    v9 = 0;
    p_changes = &v3->_changes;
    v6 = objc_opt_class();
    *&p_changes->objects = 0u;
    *&v4->_changes.list.buffer = 0u;
    *&v4->_changes.list.capacity = 0u;
    *&v4->_changes.list.lastIndex = 0u;
    p_changes->objects = [[v6 alloc] initWithObjects:&v9 count:0];
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *&v4->_changes.list.changesIndex = vnegq_f64(v7);
    v4->_changes.list.buffer = 0;
    *&v4->_changes.list.availableIndex = xmmword_181406480;
    v4->_changes.list.count = 0;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSOrderedChangesRelease(&self->_changes);
  v3.receiver = self;
  v3.super_class = NSConcreteArrayChanges;
  [(NSConcreteArrayChanges *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(NSArrayChanges *)NSConcreteArrayChanges allocWithZone:a3];
  _NSOrderedChangesCopy(&self->_changes, &v4->_changes);
  return v4;
}

- (void)_enumerateChanges:(unint64_t)a3 stop:(BOOL *)a4 usingBlock:(id)a5
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__NSConcreteArrayChanges__enumerateChanges_stop_usingBlock___block_invoke;
  v5[3] = &unk_1E69F53B0;
  v5[4] = a5;
  _NSOrderedChangesEnumerateChanges(&self->_changes, a3, a4, v5);
}

void __60__NSConcreteArrayChanges__enumerateChanges_stop_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [NSArrayChange alloc];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  v12 = [(NSArrayChange *)v10 initWithType:a2 sourceIndex:v11 destinationIndex:a4 value:a5];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateChangesUsingBlock:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  [(NSConcreteArrayChanges *)self _enumerateChanges:62 stop:&v3 usingBlock:a3];
}

- (void)enumerateChanges:(unint64_t)a3 usingBlock:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  [(NSConcreteArrayChanges *)self _enumerateChanges:1 << a3 stop:&v4 usingBlock:a4];
}

- (void)addChange:(id)a3
{
  v5 = [a3 sourceIndex];
  v6 = [a3 destinationIndex];
  [(NSConcreteArrayChanges *)self willChangeValueForKey:@"changeCount"];
  v7 = [a3 changeType];
  if (v5 == v6)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _NSOrderedChangesAddChange(&self->_changes, v7, v5, v6, [a3 value]);

  [(NSConcreteArrayChanges *)self didChangeValueForKey:@"changeCount"];
}

- (void)applyChangesToArray:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___NSOrderedChangesApply_block_invoke;
  v3[3] = &unk_1E69FA9B8;
  v3[4] = a3;
  _NSOrderedChangesEnumerateChanges(&self->_changes, 62, &v4, v3);
}

@end