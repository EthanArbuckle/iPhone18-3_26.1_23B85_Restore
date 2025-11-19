@interface NSMultiReadUniWriteLock
- (BOOL)tryLockForWriting;
- (NSMultiReadUniWriteLock)init;
- (id)description;
- (void)dealloc;
- (void)lock;
- (void)lockForReading;
- (void)lockForWriting;
- (void)setName:(id)a3;
- (void)unlock;
@end

@implementation NSMultiReadUniWriteLock

- (void)lockForWriting
{
  IndexedIvars = object_getIndexedIvars(self);
  pthread_rwlock_wrlock(IndexedIvars);
  IndexedIvars[1].__sig = pthread_self();
}

- (void)unlock
{
  IndexedIvars = object_getIndexedIvars(self);
  sig = IndexedIvars[1].__sig;
  v4 = pthread_self();
  if (pthread_equal(sig, v4))
  {
    IndexedIvars[1].__sig = 0;
  }

  pthread_rwlock_unlock(IndexedIvars);
}

- (void)lockForReading
{
  IndexedIvars = object_getIndexedIvars(self);

  pthread_rwlock_rdlock(IndexedIvars);
}

- (NSMultiReadUniWriteLock)init
{
  v2 = self;
  v6 = *MEMORY[0x1E69E9840];
  IndexedIvars = object_getIndexedIvars(self);
  if (pthread_rwlock_init(IndexedIvars, 0))
  {
    v5.receiver = v2;
    v5.super_class = NSMultiReadUniWriteLock;
    [(NSMultiReadUniWriteLock *)&v5 dealloc];
    return 0;
  }

  else
  {
    IndexedIvars[1].__sig = 0;
    *IndexedIvars[1].__opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  IndexedIvars = object_getIndexedIvars(self);
  pthread_rwlock_destroy(IndexedIvars);

  v4.receiver = self;
  v4.super_class = NSMultiReadUniWriteLock;
  [(NSMultiReadUniWriteLock *)&v4 dealloc];
}

- (BOOL)tryLockForWriting
{
  IndexedIvars = object_getIndexedIvars(self);
  v3 = pthread_rwlock_trywrlock(IndexedIvars);
  if (!v3)
  {
    IndexedIvars[1].__sig = pthread_self();
  }

  return v3 == 0;
}

- (void)lock
{
  IndexedIvars = object_getIndexedIvars(self);
  pthread_rwlock_wrlock(IndexedIvars);
  IndexedIvars[1].__sig = pthread_self();
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  IndexedIvars = object_getIndexedIvars(self);
  v11.receiver = self;
  v11.super_class = NSMultiReadUniWriteLock;
  v4 = [(NSMultiReadUniWriteLock *)&v11 description];
  v5 = pthread_equal(0, *(IndexedIvars + 25));
  v6 = "'";
  v7 = *(IndexedIvars + 26);
  if (!v7)
  {
    v6 = "";
  }

  v8 = @"nil";
  if (v7)
  {
    v8 = *(IndexedIvars + 26);
  }

  v9 = "NO";
  if (!v5)
  {
    v9 = "YES";
  }

  return [NSString stringWithFormat:@"%@{locked for writing = %s, writer thread = %p, name = %s%@%s}", v4, v9, *(IndexedIvars + 25), v6, v8, v6];
}

- (void)setName:(id)a3
{
  IndexedIvars = object_getIndexedIvars(self);
  v5 = IndexedIvars[26];
  if (v5 != a3)
  {
    v6 = IndexedIvars;

    v6[26] = [a3 copy];
  }
}

@end