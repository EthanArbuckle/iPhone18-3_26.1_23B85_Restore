@interface NSCachedFetchRequestThunk
- (id)initForConnection:(id)a3;
- (void)dealloc;
@end

@implementation NSCachedFetchRequestThunk

void __40__NSCachedFetchRequestThunk_clearCaches__block_invoke(uint64_t a1)
{
  [(NSSQLiteStatement *)*(a1 + 32) clearCaches:?];
  [(NSSQLiteStatement *)*(a1 + 40) clearCaches:?];

  v2 = *(a1 + 48);
}

- (void)dealloc
{
  if (self)
  {
    limitedStatement = self->_limitedStatement;
    unlimitedStatement = self->_unlimitedStatement;
    self->_limitedStatement = 0;
    self->_unlimitedStatement = 0;
    connection = self->_connection;
    if (connection)
    {
      WeakRetained = objc_loadWeakRetained(connection + 1);
      v7 = WeakRetained;
      if (WeakRetained && limitedStatement | unlimitedStatement)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __40__NSCachedFetchRequestThunk_clearCaches__block_invoke;
        v9[3] = &unk_1E6EC19D8;
        v9[4] = limitedStatement;
        v9[5] = unlimitedStatement;
        v9[6] = WeakRetained;
        [(NSSQLiteConnection *)WeakRetained _performBlock:v9];
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_8:

  self->_connection = 0;
  v8.receiver = self;
  v8.super_class = NSCachedFetchRequestThunk;
  [(NSCachedFetchRequestThunk *)&v8 dealloc];
}

- (id)initForConnection:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSCachedFetchRequestThunk;
  v4 = [(NSCachedFetchRequestThunk *)&v6 init];
  if (v4)
  {
    v4->_connection = [[_PFWeakReference alloc] initWithObject:a3];
  }

  return v4;
}

@end